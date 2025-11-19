Swift::Void __swiftcall AudioPlayer.stop()()
{
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 pause];
    v3 = *(v0 + v1);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = [v4 sharedSessionForMode_];
      [v6 removeInterestForPlayer_];
    }
  }

  sub_1D7C8F1D8(0);
}

uint64_t sub_1D7C8EB48(char a1)
{
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D3093C();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1D79D6AE0();
  *(v2 + 64) = v4;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA70DE90](v5, v6);

  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xE000000000000000;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();

    sub_1D7D28EAC();
  }

  return result;
}

Swift::Void __swiftcall AudioPlayer.incrementPlaybackRate()()
{
  swift_beginAccess();

  sub_1D7D28EDC();
  sub_1D7AEA8FC();
  sub_1D7D28F1C();
}

uint64_t sub_1D7C8EED4()
{
  sub_1D79A5E24();
}

id sub_1D7C8EF74()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  sub_1D7C8F444(v0 + v2, &v12);
  if (*(&v13 + 1))
  {
    sub_1D7A51B58(&v12, &v14);
    v3 = *(v0 + *((*v1 & *v0) + 0xA8));
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v4 = v3;
      [v4 removeTimeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v14);
      v5 = *((*v1 & *v0) + 0x88);
      v6 = *(v0 + v5);
      *(v0 + v5) = 0;

      v12 = 0u;
      v13 = 0u;
      swift_beginAccess();
      sub_1D7C8F348(&v12, v0 + v2);
      swift_endAccess();
    }

    else
    {
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C4C();
      sub_1D7D29AAC();
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }
  }

  else
  {
    sub_1D79F0014(&v12);
  }

  sub_1D7C8B2F0();
  v7 = *((*v1 & *v0) + 0x78);
  v8 = *(v0 + v7);
  *(v0 + v7) = 0;

  v9 = *((*v1 & *v0) + 0x80);
  v10 = *(v0 + v9);
  *(v0 + v9) = 0;

  result = *(v0 + *((*v1 & *v0) + 0xA8));
  if (result)
  {
    return [result replaceCurrentItemWithPlayerItem_];
  }

  return result;
}

void sub_1D7C8F1D8(void *a1)
{
  sub_1D7C8EF74();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1D7C8B7A4();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7C8F348(uint64_t a1, uint64_t a2)
{
  sub_1D79A0170(0, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7C8F3EC()
{
  result = qword_1EC9E7C20;
  if (!qword_1EC9E7C20)
  {
    type metadata accessor for TimeControlStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7C20);
  }

  return result;
}

uint64_t sub_1D7C8F444(uint64_t a1, uint64_t a2)
{
  sub_1D79A0170(0, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7C8F4D0()
{
  result = qword_1EC9E7C28;
  if (!qword_1EC9E7C28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E7C28);
  }

  return result;
}

void sub_1D7C8F558(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v44 = a3;
  v7 = sub_1D7D2ACCC();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D7D2F47C();
  v11 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PDFReplicaViewerColorPalette();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a2;
  v19 = *(a2 + 8);
  v45 = v4;
  v21 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v22 = *(*v21 + 40);
  v23 = *(*v21 + 48);
  __swift_project_boxed_opaque_existential_1((*v21 + 16), v22);
  (*(v23 + 24))(v22, v23);
  v24 = v18[1];
  sub_1D79E1268(v18, type metadata accessor for PDFReplicaViewerColorPalette);
  v25 = [objc_allocWithZone(MEMORY[0x1E69B70E0]) initWithTextColor_];

  [*&a1[qword_1EE0C0538] setStyler_];
  v26 = [objc_msgSend(v20 sourceChannel)];
  swift_unknownObjectRelease();
  v43 = sub_1D7D3034C();
  v28 = v27;

  v29 = swift_allocObject();
  v30 = v46;
  v29[2] = v44;
  v29[3] = v30;
  v29[4] = v20;
  v29[5] = v19;
  swift_unknownObjectRetain();
  v31 = v20;

  v32 = v47;
  (*(v11 + 104))(v14, *MEMORY[0x1E69B62C0], v47);
  v33 = [v31 sourceChannel];
  v34 = v45 + 56;
  sub_1D7D2ACBC();
  v50 = v14;
  v51 = v10;
  v52 = v33;
  v53 = 0x7FEFFFFFFFFFFFFFLL;
  v54 = v34;
  sub_1D7C54BEC();
  swift_allocObject();
  sub_1D7D2946C();
  swift_unknownObjectRelease();
  (*(v48 + 8))(v10, v49);
  (*(v11 + 8))(v14, v32);
  sub_1D7992EFC(0, &qword_1EE0BEFF0);
  v35 = sub_1D7D30E1C();
  v36 = swift_allocObject();
  v37 = v43;
  v36[2] = a1;
  v36[3] = v37;
  v36[4] = v28;
  v38 = a1;

  sub_1D7D293AC();

  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v37;
  v39[4] = v28;
  v40 = v38;
  v41 = sub_1D7D2934C();
  sub_1D7D293DC();
}

uint64_t sub_1D7C8FA54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for PDFReplicaViewerRoute();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a3 sourceChannel];
  __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  sub_1D7CF0CE4(v9);
  swift_unknownObjectRelease();
  return sub_1D79E1268(v9, type metadata accessor for PDFReplicaViewerRoute);
}

void sub_1D7C8FB48(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v7[0] = a3;
  v7[1] = a4;
  v8 = v4;
  v5 = v4;

  v9.title._countAndFlagsBits = v7;
  TitleView.apply(model:)(v9);
  v6 = v8;
}

uint64_t sub_1D7C8FBB4(uint64_t a1, void *a2)
{
  v4 = sub_1D7D2ACCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D7D2F47C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];

  (*(v10 + 104))(v13, *MEMORY[0x1E69B62C0], v9);
  v14 = [a2 sourceChannel];
  sub_1D7D2ACBC();
  v18 = v13;
  v19 = v8;
  v20 = v14;
  v21 = 0x7FEFFFFFFFFFFFFFLL;
  v22 = a1 + 56;
  sub_1D7C54BEC();
  swift_allocObject();
  v15 = sub_1D7D2946C();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v15;
}

uint64_t sub_1D7C8FDF0@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  v7 = sub_1D7D3034C();
  v9 = v8;

  *a3 = v5;
  a3[1] = v7;
  a3[2] = v9;
  v10 = *MEMORY[0x1E69D7D78];
  v11 = sub_1D7D2AF2C();
  return (*(*(v11 - 8) + 104))(a3, v10, v11);
}

uint64_t sub_1D7C8FED8@<X0>(id a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = [objc_msgSend(a1 sourceChannel)];
  swift_unknownObjectRelease();
  v4 = sub_1D7D3034C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  v7 = *MEMORY[0x1E69D7D70];
  v8 = sub_1D7D2AF2C();
  return (*(*(v8 - 8) + 104))(a2, v7, v8);
}

uint64_t InterstitialAdModule.createViewController(for:tracker:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v5 = sub_1D7D2CADC();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v53 = &v50 - v10;
  sub_1D799A5AC();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v14 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - v17;
  sub_1D7999AF4();
  v51 = *(v19 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v22 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v50 - v25;
  v27 = type metadata accessor for InterstitialAdModel();
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v56 = sub_1D7D28A1C();
  }

  else
  {
    v56 = 0;
  }

  sub_1D7C90A2C(v57, v30, type metadata accessor for InterstitialAdModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D7B87CE0(v30, v26, sub_1D7999AF4);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_1D7C90970(0);
    sub_1D7C90A2C(v26, v22, sub_1D7999AF4);
    v38 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v39 = (v20 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    sub_1D7B87CE0(v22, v40 + v38, sub_1D7999AF4);
    *(v40 + v39) = v56;

    v34 = sub_1D7D28CFC();

    if (v34)
    {
      sub_1D7C90C70(v26, sub_1D7999AF4);

      v36 = &unk_1EE0BC648;
      v37 = sub_1D7C90970;
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7B87CE0(v30, v18, sub_1D799A5AC);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_1D7C907D8(0);
    sub_1D7C90A2C(v18, v14, sub_1D799A5AC);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = swift_allocObject();
    sub_1D7B87CE0(v14, v33 + v32, sub_1D799A5AC);
    *(v33 + ((v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;

    v34 = sub_1D7D28CFC();

    if (v34)
    {
      sub_1D7C90C70(v18, sub_1D799A5AC);

      v36 = &unk_1EC9E7C40;
      v37 = sub_1D7C907D8;
LABEL_10:
      v41 = v37;
LABEL_13:
      sub_1D7C90CD0(v36, v41);
      return v34;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v43 = v53;
  v42 = v54;
  v44 = v55;
  (*(v54 + 32))(v53, v30, v55);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_1D7C90720();
  result = sub_1D7D28D2C();
  if (v58)
  {
    (*(v42 + 16))(v50, v43, v44);
    sub_1D7C90780();
    v45 = sub_1D7D2D32C();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D7D3B4D0;
    (*(v46 + 104))(v48 + v47, *MEMORY[0x1E69B42F8], v45);
    v49 = objc_allocWithZone(sub_1D7D2D33C());
    v34 = sub_1D7D2D31C();

    (*(v42 + 8))(v43, v44);
    v36 = &unk_1EC9E7C38;
    v41 = MEMORY[0x1E69B4300];
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1D7C90720()
{
  result = qword_1EE0CBE60;
  if (!qword_1EE0CBE60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBE60);
  }

  return result;
}

void sub_1D7C90780()
{
  if (!qword_1EC9E7C30)
  {
    sub_1D7D2D32C();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7C30);
    }
  }
}

void sub_1D7C907F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2D3CC();
    v7 = sub_1D7C90CD0(&qword_1EE0CBD80, MEMORY[0x1E69B4358]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7C90894(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BAC();
}

void sub_1D7C90990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2D39C();
    v7 = sub_1D7C90CD0(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7C90A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_11(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2 + v6;

  v9 = v4[11];
  v10 = a2(0);
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1D7C90BCC(void *a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return sub_1D7C90894(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t sub_1D7C90C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C90CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InterstitialAdModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 AsyncRecipeViewerRecipeTask.init(asyncRecipe:task:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = a2;
  return result;
}

uint64_t AsyncRecipeViewerRecipeTask.asyncRecipe.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D7B39238(v7, &v6);
}

uint64_t _s12NewsArticles017AsyncRecipeViewerD4TaskV2eeoiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v23[0] = *a1;
  v23[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v23[2] = a1[2];
  v23[3] = v3;
  v6 = a2[1];
  v24[0] = *a2;
  v24[1] = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  v24[2] = a2[2];
  v24[3] = v7;
  v19 = v5;
  v20 = v4;
  v10 = a1[3];
  v21 = a1[2];
  v22 = v10;
  v15 = v9;
  v16 = v8;
  v11 = a2[3];
  v17 = a2[2];
  v18 = v11;
  v12 = _s12NewsArticles017AsyncRecipeViewerD0V2eeoiySbAC_ACtFZ_0(&v19, &v15);
  v25[0] = v15;
  v25[1] = v16;
  v25[2] = v17;
  v25[3] = v18;
  sub_1D7B39238(v23, v26);
  sub_1D7B39238(v24, v26);
  sub_1D7B39294(v25);
  v26[0] = v19;
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  sub_1D7B39294(v26);
  if (v12)
  {
    sub_1D79A9404();
    sub_1D79AC5C4();
    v13 = sub_1D7D308CC();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D7C90F68(uint64_t a1)
{
  v3 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 160), *(v1 + 184));
  if (sub_1D7D2F95C())
  {
    sub_1D7C92878(a1, v6, type metadata accessor for ArticleViewerPage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) >= 3)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D799A6BC();
        sub_1D79DA510(*&v6[*(v13 + 48)], *&v6[*(v13 + 48) + 8], *&v6[*(v13 + 48) + 16]);
      }

      sub_1D7C928E0(v6, v10, type metadata accessor for ArticleViewerArticlePage);
      swift_unknownObjectRetain();
      sub_1D7AACF9C(v10, type metadata accessor for ArticleViewerArticlePage);
      v14 = FCNarrativeTrackForSubscription();
      swift_unknownObjectRelease();
      if (v14)
      {

        return 1;
      }
    }

    else
    {
      sub_1D7AACF9C(v6, type metadata accessor for ArticleViewerPage);
    }
  }

  return 0;
}

char *sub_1D7C9114C(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for BottomPaletteFeatureContext();
  v71 = *(v70 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70, v4);
  sub_1D7C92060(0, &unk_1EE0C0210, MEMORY[0x1E69B6A88], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v66 - v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v72 = *(a2 + 16);
    v11 = FCNarrativeTrackForSubscription();
    v75 = a2;
    v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v3;
    v68 = v8;
    if (v11)
    {
      v12 = v11;
      [v11 duration];
      v14 = v13;
    }

    else
    {
      v14 = -1.0;
    }

    sub_1D799CC84((v10 + 15), v79);
    v18 = v10[7];
    v19 = v10[25];
    sub_1D799CC84((v10 + 26), v78);
    sub_1D799CC84(v79, v77);
    sub_1D799CC84(v78, v76);
    v20 = objc_allocWithZone(type metadata accessor for AudioButton());
    v21 = v18;
    swift_unknownObjectRetain();
    v22 = sub_1D7CDA814(v77, v21, v19, v76);
    v23 = v72;
    sub_1D7CD7C80(v72, v14);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v79);
    objc_allocWithZone(type metadata accessor for ArticleNavigationBarMessageContainer());
    v67 = v22;
    v24 = ArticleNavigationBarMessageContainer.init(defaultView:)(v67);
    v25 = v10[25];
    v26 = v10[7];
    v27 = v10[42];
    type metadata accessor for AudioArticleMessageUpdater();
    v28 = swift_allocObject();
    v28[6] = 0;
    v28[7] = 0;
    v28[2] = v24;
    v28[3] = v25;
    v28[4] = v23;
    v28[5] = v26;
    v28[8] = v27;
    v29 = v24;
    swift_unknownObjectRetain_n();
    v30 = v26;
    v31 = v29;
    v32 = v30;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v33 = [v32 value];
    if (v33)
    {
      v34 = v33;
      v66 = v25;
      v35 = v31;
      v37 = *&v33[OBJC_IVAR___NAPlayableArticleInfo_articleId];
      v36 = *&v33[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];

      v28[6] = v37;
      v28[7] = v36;
      v31 = v35;
    }

    v69 = v31;
    sub_1D7BDF054();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10[41] = v28;

    v38 = v10[5];
    v39 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v38);
    v40 = v75;
    v41 = v68;
    sub_1D7C3BB44(v68);
    v42 = v67;
    (*(v39 + 8))(v31, v67, v72, v41, v38, v39);
    sub_1D7BC6138(v41);
    v72 = type metadata accessor for BottomPaletteFeatureContext;
    v43 = v74;
    sub_1D7C92878(v40, v74, type metadata accessor for BottomPaletteFeatureContext);
    v44 = *(v71 + 80);
    v70 = ((v44 + 24) & ~v44) + v73;
    v71 = (v44 + 24) & ~v44;
    v45 = swift_allocObject();
    *(v45 + 16) = v10;
    v68 = type metadata accessor for BottomPaletteFeatureContext;
    sub_1D7C928E0(v43, v45 + ((v44 + 24) & ~v44), type metadata accessor for BottomPaletteFeatureContext);
    v46 = v10[34];
    v47 = v10[35];
    __swift_project_boxed_opaque_existential_1(v10 + 31, v46);
    v48 = *(v47 + 8);

    v48(v42, v46, v47);
    v49 = v42;
    v67 = sub_1D7D2A85C();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = v74;
    sub_1D7C92878(v75, v74, v72);
    v53 = (v44 + 32) & ~v44;
    v54 = (v73 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v51;
    *(v55 + 24) = v50;
    v56 = v55 + v53;
    v57 = v68;
    sub_1D7C928E0(v52, v56, v68);
    v58 = (v55 + v54);
    *v58 = sub_1D7C926BC;
    v58[1] = v45;

    v59 = v67;

    v60 = sub_1D7D2A86C();

    v61 = swift_allocObject();
    swift_weakInit();

    v62 = v74;
    sub_1D7C92878(v75, v74, v72);
    v63 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v61;
    sub_1D7C928E0(v62, v64 + v71, v57);
    v65 = (v64 + v63);
    *v65 = sub_1D7C926BC;
    v65[1] = v45;

    return v69;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v16 = objc_allocWithZone(type metadata accessor for ArticleNavigationBarMessageContainer());
    return ArticleNavigationBarMessageContainer.init(defaultView:)(v15);
  }
}

void sub_1D7C918C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      v19[1] = a1;
      sub_1D7D319FC();
      __break(1u);
      return;
    }

    __swift_project_boxed_opaque_existential_1((a2 + 288), *(a2 + 312));
    v14 = type metadata accessor for BottomPaletteFeatureContext();
    sub_1D7C92878(a3 + *(v14 + 20), v9, type metadata accessor for ArticleViewerPage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_8;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      sub_1D799A6BC();
      sub_1D79DA510(*&v9[*(v16 + 48)], *&v9[*(v16 + 48) + 8], *&v9[*(v16 + 48) + 16]);
LABEL_8:
      sub_1D7C928E0(v9, v13, type metadata accessor for ArticleViewerArticlePage);
      sub_1D7A74B48(v13);
      v17 = type metadata accessor for ArticleViewerArticlePage;
      v18 = v13;
LABEL_10:
      sub_1D7AACF9C(v18, v17);
      return;
    }

    v17 = type metadata accessor for ArticleViewerPage;
    v18 = v9;
    goto LABEL_10;
  }
}

void sub_1D7C91AB0(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      sub_1D799CC84(v10 + 248, v28);
      v11 = v9;

      v12 = v29;
      v13 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v14 = a3[1];
      v31[0] = *a3;
      v31[1] = v14;
      v15 = a3[3];
      v17 = *a3;
      v16 = a3[1];
      v31[2] = a3[2];
      v31[3] = v15;
      v24 = v17;
      v25 = v16;
      v18 = a3[3];
      v26 = a3[2];
      v27 = v18;
      v19 = *(v13 + 16);
      sub_1D79F5B54(v31, &v32);
      v20 = v19(&v24, a4, a5, v12, v13);
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v35 = v27;
      sub_1D7A0AD5C(&v32);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      v21 = v9;
      v20 = 0;
    }

    [v9 setMenu_];

    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      sub_1D799CC84(v22 + 288, &v32);

      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v23 = type metadata accessor for BottomPaletteFeatureContext();
      sub_1D7A74810(a3 + *(v23 + 20));

      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
    }
  }
}

uint64_t sub_1D7C91C94(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D799CC84(result + 248, v20);

    v8 = v21;
    v9 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v10 = a2[1];
    v23[0] = *a2;
    v23[1] = v10;
    v11 = a2[3];
    v13 = *a2;
    v12 = a2[1];
    v23[2] = a2[2];
    v23[3] = v11;
    v16 = v13;
    v17 = v12;
    v14 = a2[3];
    v18 = a2[2];
    v19 = v14;
    v15 = *(v9 + 24);
    sub_1D79F5B54(v23, v24);
    v15(&v16, a3, a4, v8, v9);
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    sub_1D7A0AD5C(v24);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t sub_1D7C91DA4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);

  return v0;
}

uint64_t sub_1D7C91E1C()
{
  sub_1D7C91DA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C91E9C(uint64_t *a1)
{
  v2 = type metadata accessor for BottomPaletteFeatureContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1D7C92878(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BottomPaletteFeatureContext);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  sub_1D7C928E0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for BottomPaletteFeatureContext);
  v9 = *a1;

  return v9;
}

char *sub_1D7C91FFC()
{
  v1 = *(type metadata accessor for BottomPaletteFeatureContext() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D7C9114C(v2, v3);
}

void sub_1D7C92060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_3Tm_3()
{
  v1 = type metadata accessor for BottomPaletteFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
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
            sub_1D7C92060(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
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
        sub_1D7C92060(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
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

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1D7C926BC(uint64_t a1)
{
  v3 = *(type metadata accessor for BottomPaletteFeatureContext() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1D7C918C4(a1, v4, v5);
}

void sub_1D7C92730()
{
  v1 = *(type metadata accessor for BottomPaletteFeatureContext() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1D7C91AB0(v3, v4, (v0 + v2), v6, v7);
}

uint64_t sub_1D7C927D4()
{
  v1 = *(type metadata accessor for BottomPaletteFeatureContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1D7C91C94(v3, (v0 + v2), v5, v6);
}

uint64_t sub_1D7C92878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C928E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void Article.init(headline:feedItemIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [a1 identifier];
  v9 = sub_1D7D3034C();
  v11 = v10;

  if (!a3)
  {
    v12 = [swift_unknownObjectRetain() identifier];
    a2 = sub_1D7D3034C();
    a3 = v13;

    swift_unknownObjectRelease();
  }

  *a4 = v9;
  a4[1] = v11;
  a4[2] = a1;
  a4[3] = 0;
  a4[4] = 0;
  a4[5] = 0;
  a4[6] = a2;
  a4[7] = a3;
}

uint64_t Article.init(identifier:headline:metadata:pluginIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = a1;
  a7[7] = a2;
}

void Article.init(headline:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7D3034C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = a1;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  v8 = [swift_unknownObjectRetain() identifier];
  v9 = sub_1D7D3034C();
  v11 = v10;
  swift_unknownObjectRelease();

  a2[6] = v9;
  a2[7] = v11;
}

uint64_t Article.init(identifier:headline:metadata:parentIdentifier:pluginIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v14 = result;
  if (!a6)
  {

    a5 = v14;
    a6 = a2;
  }

  *a9 = v14;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a7;
  a9[5] = a8;
  a9[6] = a5;
  a9[7] = a6;
  return result;
}

uint64_t Article.init(asyncArticle:headline:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  *a3 = v6;
  a3[1] = v5;
  a3[2] = a2;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v8 = a1[4];
  v7 = a1[5];

  result = sub_1D7BA2DC8(a1);
  a3[6] = v8;
  a3[7] = v7;
  return result;
}

uint64_t Article.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Article.pluginIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Article.feedItemIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Article.init(article:pluginModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);

  *(a2 + 24) = v3;
  *(a2 + 32) = sub_1D7D29CEC();
  *(a2 + 40) = v4;
  v5 = sub_1D7D29CEC();
  v7 = v6;

  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  return result;
}

uint64_t _s12NewsArticles7ArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v6 && (v2 == v7 && v3 == v6 || (sub_1D7D3197C() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1D7D3197C();
}

uint64_t sub_1D7C92DB8()
{
  v0 = sub_1D7D294DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReportConcernViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E7C50);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E7C58);
  sub_1D7D291EC();
  type metadata accessor for ReportConcernRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E7C60);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E7C68);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E7C70);
  sub_1D7D291EC();

  type metadata accessor for ReportConcernBlueprintModifierFactory();
  sub_1D7D291DC();

  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  sub_1D7D291DC();

  sub_1D7C96038();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7C968AC();
  sub_1D7D291DC();

  sub_1D7C96144();
  sub_1D7D291DC();

  sub_1D7C9651C();
  sub_1D7D291DC();

  type metadata accessor for ReportConcernBlueprintLayoutBuilder();
  sub_1D7D291DC();

  sub_1D7C96998();
  sub_1D7D291DC();

  sub_1D7992EFC(0, &unk_1EC9E7D38);
  sub_1D7D291DC();

  sub_1D7C96210();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0BFCE0);
  sub_1D7D291EC();
  sub_1D7D2BA3C();
  sub_1D7D28ABC();

  sub_1D7C96378();
  sub_1D7D291DC();

  sub_1D7C96694();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7C96BF8(0, &qword_1EC9E7CF0, MEMORY[0x1E69D8408]);
  sub_1D7D291DC();

  type metadata accessor for ReportConcernBlueprintViewCellProvider();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for ReportConcernBlueprintViewHeaderProvider();
  sub_1D7D291DC();

  sub_1D7C96BF8(0, &qword_1EC9E7D48, MEMORY[0x1E69D81A8]);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2A81C();
  sub_1D7D291DC();

  sub_1D7C96AEC();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2B4CC();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E7D60);
  sub_1D7D291EC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6BF0], v0);
  sub_1D7D28AAC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D7C936B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7C50);
  result = sub_1D7D28D2C();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7C60);
  result = sub_1D7D28D2C();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96998();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for ReportConcernStyler();
    v21 = &off_1F52AAD08;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for ReportConcernViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D7C96D40(*v16, v3, v4, v5, v12);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C93974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for ReportConcernStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52AAD08;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C93A28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v8)
  {
    v5 = type metadata accessor for ReportConcernRouter();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D799D69C(v9, v6 + 24);
    result = sub_1D799D69C(&v7, v6 + 64);
    a2[3] = v5;
    a2[4] = &off_1F52AB728;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7C93B04(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReportConcernViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7C93B84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7C68);
  result = sub_1D7D28D2C();
  v5 = v29;
  if (v29)
  {
    v6 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E7C58);
    result = sub_1D7D28D2C();
    if (v28)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for ReportConcernRouter();
      v26[3] = v13;
      v26[4] = &off_1F52AB728;
      v26[0] = v12;
      type metadata accessor for ReportConcernEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v25[3] = v13;
      v25[4] = &off_1F52AB728;
      v25[0] = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799CC84(v25, (v14 + 6));
      ObjectType = swift_getObjectType();
      v22 = *(v6 + 16);
      swift_unknownObjectRetain();

      v22(v23, &off_1F529F190, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      *a2 = v14;
      a2[1] = &off_1F529F1A0;
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

uint64_t sub_1D7C93E7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7C70);
  result = sub_1D7D28D2C();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96038();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernBlueprintModifierFactory();
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    sub_1D7C970E4();
    v7 = swift_allocObject();
    v7[3] = 0;
    result = swift_unknownObjectWeakInit();
    v7[6] = v8;
    v7[7] = v9;
    v7[4] = v5;
    v7[5] = v6;
    *a2 = v7;
    a2[1] = &off_1F52A83D0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C93FBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799621C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CD1D0);
    result = sub_1D7D28D2C();
    if (v22)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v7 = MEMORY[0x1EEE9AC00](v6, v6);
      v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for UserConcernConfigManager();
      v20[3] = v12;
      v20[4] = &off_1F529CB10;
      v20[0] = v11;
      type metadata accessor for ReportConcernDataManager();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
      v15 = MEMORY[0x1EEE9AC00](v14, v14);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = sub_1D7C96E64(v5, *v17, v13);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v21);
      *a2 = v19;
      a2[1] = &off_1F52B1148;
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

uint64_t sub_1D7C9422C()
{
  type metadata accessor for ReportConcernBlueprintModifierFactory();

  return swift_allocObject();
}

uint64_t sub_1D7C94260()
{
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  swift_allocObject();
  return sub_1D7D2A74C();
}

uint64_t sub_1D7C942B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7C96144();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7C96038();
      swift_allocObject();
      return sub_1D7D2A6DC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C943B8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D8438];
  sub_1D7C96CBC(0, &qword_1EC9E7DA0, MEMORY[0x1E69D8438]);
  swift_allocObject();
  sub_1D7D2BB8C();
  sub_1D7C96CBC(0, &qword_1EC9E7DA8, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D7C96650(&qword_1EC9E7DB0, &qword_1EC9E7DA0, v3);
  sub_1D7D2B6BC();
  sub_1D7D2A6FC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7C968AC();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_allocObject();
    sub_1D7C96608(&unk_1EC9E7DB8, sub_1D7C968AC);
    sub_1D7D2B6BC();
    sub_1D7D2A6FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C94570(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C9651C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernBlueprintLayoutBuilder();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C968AC();
    swift_allocObject();
    return sub_1D7D2BC6C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C946BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96210();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BFC70);
    result = sub_1D7D28D2C();
    if (v3)
    {
      sub_1D7C96144();
      swift_allocObject();
      return sub_1D7D2A95C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C947BC()
{
  sub_1D7C9651C();
  swift_allocObject();
  return sub_1D7D2B27C();
}

uint64_t sub_1D7C947F4()
{
  v0 = sub_1D7D2F1CC();
  swift_allocObject();
  v1 = sub_1D7D2F1BC();
  v5 = v0;
  v6 = MEMORY[0x1E69B6180];
  *&v4 = v1;
  type metadata accessor for ReportConcernBlueprintLayoutBuilder();
  v2 = swift_allocObject();
  sub_1D799D69C(&v4, v2 + 16);
  return v2;
}

uint64_t sub_1D7C94870(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96210();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFC70);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96BF8(0, &qword_1EC9E7D48, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A81C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96608(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7C96998();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B35C();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1D7C94BB4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D88C8]);

  return [v0 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_1D7C94C00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96378();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96694();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96BF8(0, &qword_1EC9E7CF0, MEMORY[0x1E69D8408]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96210();
    swift_allocObject();
    return sub_1D7D2AEFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7C94D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96210();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2BA3C();
    swift_allocObject();
    result = sub_1D7D2BA2C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C94E48()
{
  v0 = sub_1D7D2B00C();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7DB8], v2);
  return sub_1D7D2BA1C();
}

uint64_t sub_1D7C94F18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C9651C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernBlueprintViewCellProvider();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96378();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B80C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C95034(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C9651C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernBlueprintViewHeaderProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96BF8(0, &qword_1EC9E7D48, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96608(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7C96694();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B6FC();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7C95294(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D2A81C();
  sub_1D7D28CDC();
  sub_1D7D2B70C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7C96AEC();
  if (sub_1D7D28D1C())
  {
    sub_1D7C96608(&unk_1EC9E7D90, sub_1D7C96AEC);
  }

  return sub_1D7D2B71C();
}

uint64_t sub_1D7C953A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96BF8(0, &qword_1EC9E7CF0, MEMORY[0x1E69D8408]);
    return sub_1D7D2BA5C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C95450(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7D88);
  sub_1D799CC84(a1, v7);
  v2 = swift_allocObject();
  sub_1D799D69C(v7, v2 + 16);
  sub_1D7D28D0C();

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    type metadata accessor for ReportConcernBlueprintViewCellProvider();
    v6 = swift_allocObject();
    v6[3] = 0;
    swift_unknownObjectWeakInit();
    v6[4] = v4;
    v6[5] = v5;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C95560(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EC9E7D60);
  result = sub_1D7D28CEC();
  if (v5)
  {
    sub_1D7D28BFC();
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7C95648(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReportConcernViewController();
  v4 = sub_1D7D28D1C();
  v3 = &off_1F52A2520;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7C956DC()
{
  type metadata accessor for ReportConcernBlueprintViewHeaderProvider();

  return swift_allocObject();
}

uint64_t sub_1D7C95710(void *a1)
{
  v2 = sub_1D7D2BD2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D7D2BD4C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D7C96BF8(0, &qword_1EC9E7D80, MEMORY[0x1E69D81A0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x1E69D8198], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D7D2BD3C();
    v17[1] = v16;
    sub_1D7C96BF8(0, &qword_1EC9E7D48, MEMORY[0x1E69D81A8]);
    swift_allocObject();
    return sub_1D7D2B68C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C959B8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7C9651C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96608(&qword_1EC9E7D78, sub_1D7C9651C);
    return sub_1D7D2B65C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C95A78(void *a1)
{
  sub_1D7B355BC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4E0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96AEC();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = sub_1D7C96608(&qword_1EC9E7D70, sub_1D7C96AEC);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2B4CC();
    result = sub_1D7D28CDC();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D7D2A81C();
      swift_allocObject();
      return sub_1D7D2A80C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C95BBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96210();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96CBC(0, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7C96608(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7C96AEC();
    swift_allocObject();
    return sub_1D7D2BCCC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7C95D84(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7C96998();
  if (sub_1D7D28D1C())
  {
    sub_1D7C96608(&qword_1EC9E7D68, sub_1D7C96998);
  }

  return sub_1D7D2BCDC();
}

uint64_t sub_1D7C95E30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C96210();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2B4CC();
    swift_allocObject();
    return sub_1D7D2B4BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C95EB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = sub_1D7D2ACEC();
    v5 = objc_allocWithZone(v4);
    result = sub_1D7D2ACDC();
    v6 = MEMORY[0x1E69D7C78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C95F78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = sub_1D7D2ACEC();
    v5 = objc_allocWithZone(v4);
    result = sub_1D7D2ACDC();
    v6 = MEMORY[0x1E69D7C78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7C96038()
{
  if (!qword_1EC9E7C80)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7C96CBC(255, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
    sub_1D7C96144();
    sub_1D7C96650(&qword_1EC9E7CC0, &qword_1EC9E7C78, v0);
    sub_1D7C96608(&qword_1EC9E7D18, sub_1D7C96144);
    v1 = sub_1D7D2A73C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7C80);
    }
  }
}

void sub_1D7C96144()
{
  if (!qword_1EC9E7C88)
  {
    sub_1D7C96210();
    sub_1D7A26D5C();
    sub_1D7A26E88();
    sub_1D7C96608(&qword_1EC9E7D10, sub_1D7C96210);
    v0 = sub_1D7D2A96C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7C88);
    }
  }
}

void sub_1D7C96210()
{
  if (!qword_1EC9E7C90)
  {
    sub_1D7992EFC(255, &qword_1EC9E7C98);
    sub_1D7C96378();
    sub_1D7C96694();
    sub_1D7C96BF8(255, &qword_1EC9E7CF0, MEMORY[0x1E69D8408]);
    type metadata accessor for ReportConcernViewController();
    sub_1D7C96608(&qword_1EC9E7CF8, sub_1D7C96378);
    sub_1D7C96608(&qword_1EC9E7D00, sub_1D7C96694);
    sub_1D7C96838();
    v0 = sub_1D7D2AF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7C90);
    }
  }
}

void sub_1D7C96378()
{
  if (!qword_1EC9E7CA0)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7C96CBC(255, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
    sub_1D7C9651C();
    type metadata accessor for ReportConcernBlueprintViewCellProvider();
    type metadata accessor for ReportConcernViewController();
    sub_1D7C96650(&qword_1EC9E7CC0, &qword_1EC9E7C78, v0);
    sub_1D7C96608(&qword_1EC9E7CC8, sub_1D7C9651C);
    sub_1D7C96608(&qword_1EC9E7CD0, type metadata accessor for ReportConcernBlueprintViewCellProvider);
    sub_1D7C96608(&qword_1EC9E7CD8, type metadata accessor for ReportConcernViewController);
    v1 = sub_1D7D2B82C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7CA0);
    }
  }
}

void sub_1D7C9651C()
{
  if (!qword_1EC9E7CA8)
  {
    type metadata accessor for ReportConcernLayoutSectionDescriptor();
    type metadata accessor for ReportConcernLayoutModel();
    sub_1D7C96608(&unk_1EC9E7CB0, type metadata accessor for ReportConcernLayoutSectionDescriptor);
    sub_1D7C96608(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel);
    v0 = sub_1D7D2B28C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7CA8);
    }
  }
}

uint64_t sub_1D7C96608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7C96650(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D7C96CBC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7C96694()
{
  if (!qword_1EC9E7CE0)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7C96CBC(255, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
    sub_1D7C9651C();
    type metadata accessor for ReportConcernBlueprintViewHeaderProvider();
    type metadata accessor for ReportConcernViewController();
    sub_1D7C96650(&qword_1EC9E7CC0, &qword_1EC9E7C78, v0);
    sub_1D7C96608(&qword_1EC9E7CC8, sub_1D7C9651C);
    sub_1D7C96608(&qword_1EC9E7CE8, type metadata accessor for ReportConcernBlueprintViewHeaderProvider);
    sub_1D7C96608(&qword_1EC9E7CD8, type metadata accessor for ReportConcernViewController);
    v1 = sub_1D7D2B72C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7CE0);
    }
  }
}

unint64_t sub_1D7C96838()
{
  result = qword_1EC9E7D08;
  if (!qword_1EC9E7D08)
  {
    sub_1D7C96BF8(255, &qword_1EC9E7CF0, MEMORY[0x1E69D8408]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7D08);
  }

  return result;
}

void sub_1D7C968AC()
{
  if (!qword_1EC9E7D20)
  {
    sub_1D7C9651C();
    type metadata accessor for ReportConcernBlueprintLayoutBuilder();
    sub_1D7C96608(&qword_1EC9E7CC8, sub_1D7C9651C);
    sub_1D7C96608(&qword_1EC9E7D28, type metadata accessor for ReportConcernBlueprintLayoutBuilder);
    v0 = sub_1D7D2BC7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7D20);
    }
  }
}

void sub_1D7C96998()
{
  if (!qword_1EC9E7D30)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7C96CBC(255, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
    sub_1D7C96210();
    type metadata accessor for ReportConcernViewController();
    sub_1D7C96650(&qword_1EC9E7CC0, &qword_1EC9E7C78, v0);
    sub_1D7C96608(&qword_1EC9E7D10, sub_1D7C96210);
    sub_1D7C96608(&qword_1EC9E7CD8, type metadata accessor for ReportConcernViewController);
    v1 = sub_1D7D2B37C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7D30);
    }
  }
}

void sub_1D7C96AEC()
{
  if (!qword_1EC9E7D50)
  {
    sub_1D7C96210();
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7C96CBC(255, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
    sub_1D7C96608(&qword_1EC9E7D10, sub_1D7C96210);
    sub_1D7C96650(&qword_1EC9E7D58, &qword_1EC9E7C78, v0);
    v1 = sub_1D7D2BCEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7D50);
    }
  }
}

void sub_1D7C96BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69D7A68];
    sub_1D7C96CBC(255, &qword_1EC9E7C78, MEMORY[0x1E69D7A68]);
    v8 = v7;
    v9 = sub_1D7C96650(&qword_1EC9E7CC0, &qword_1EC9E7C78, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D7C96CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernSectionDescriptor;
    v8[1] = &type metadata for ReportConcernModel;
    v8[2] = sub_1D7A26D5C();
    v8[3] = sub_1D7A26E88();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

char *sub_1D7C96D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = type metadata accessor for ReportConcernStyler();
  v19[4] = &off_1F52AAD08;
  v19[0] = a1;
  sub_1D799CC84(v19, &a5[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_eventHandler] + 24) = &off_1F52A2528;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC12NewsArticles27ReportConcernViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_1D7D2B34C();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_1D7C96E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D28C2C();
  MEMORY[0x1EEE9AC00](v6, v7);
  v12[3] = type metadata accessor for UserConcernConfigManager();
  v12[4] = &off_1F529CB10;
  v12[0] = a2;
  *(a3 + 16) = a1;
  sub_1D799CC84(v12, a3 + 24);
  sub_1D799CC84(v12, v11);
  v8 = swift_allocObject();
  sub_1D799D69C(v11, v8 + 16);
  *&v11[0] = MEMORY[0x1E69E7CC0];
  sub_1D7C96608(&qword_1EE0C04D0, MEMORY[0x1E69D6420]);
  sub_1D7C97080(0, &qword_1EE0BF2E8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D79A40C8();
  swift_unknownObjectRetain();
  sub_1D7D313AC();
  sub_1D7C97080(0, &unk_1EC9E7DC8, sub_1D79EAE24, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v9 = sub_1D7D292AC();
  __swift_destroy_boxed_opaque_existential_1(v12);
  *(a3 + 64) = v9;
  return a3;
}

void sub_1D7C97080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7C970E4()
{
  if (!qword_1EC9E7DD8)
  {
    type metadata accessor for ReportConcernBlueprintModifierFactory();
    sub_1D7C96608(&unk_1EC9E7DE0, type metadata accessor for ReportConcernBlueprintModifierFactory);
    v0 = type metadata accessor for ReportConcernInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7DD8);
    }
  }
}

BOOL sub_1D7C97178(uint64_t a1)
{
  v3 = sub_1D7D295CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D29A6C();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C98574(a1, v15, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v60 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    v56 = v8;
    v57 = v4;
    v58 = v3;
    if (EnumCaseMultiPayload)
    {
      v27 = *(v15 + 1);
      v64 = *v15;
      v28 = *(v15 + 2);
      v29 = *(v15 + 3);
      v65 = v27;
      v66 = v28;
      v30 = *(v15 + 4);
      v31 = *(v15 + 5);
      v67 = v29;
      v68 = v30;
      v69 = v31;
      v26 = v27;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7A1EF80(&v64);
      goto LABEL_10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7AACF9C(v15, type metadata accessor for ArticleViewerPage);
      return 0;
    }

    v58 = v3;
    v57 = v4;
    v56 = v8;
    if (EnumCaseMultiPayload == 3)
    {
      v21 = *(v15 + 9);
      v72 = *(v15 + 8);
      v73 = v21;
      v74 = *(v15 + 20);
      v22 = *(v15 + 5);
      v68 = *(v15 + 4);
      v69 = v22;
      v23 = *(v15 + 7);
      v70 = *(v15 + 6);
      v71 = v23;
      v24 = *(v15 + 1);
      v64 = *v15;
      v25 = *(v15 + 2);
      v67 = *(v15 + 3);
      v65 = v24;
      v66 = v25;
      v26 = *(&v70 + 1);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D79F949C(&v64);
      goto LABEL_10;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v15[*(v32 + 48)], *&v15[*(v32 + 48) + 8], *&v15[*(v32 + 48) + 16]);
  }

  sub_1D7C98688(v15, v19, type metadata accessor for ArticleViewerArticlePage);
  v26 = *(v19 + 2);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D7AACF9C(v19, type metadata accessor for ArticleViewerArticlePage);
LABEL_10:

  swift_unknownObjectRelease();

  v33 = sub_1D7CC1CDC();
  v36 = (v35 & 0xF000000000000007) != 0xF000000000000007;
  if ((v35 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1D7A1ECE4(v33, v34, v35);
  }

  if (![v26 isDraft])
  {
    v37 = [v26 sourceChannel];
    if (!v37)
    {
LABEL_18:
      swift_unknownObjectRelease();
      return 0;
    }

    v38 = v37;
    if ([v37 allowsRecipes] & 1) == 0 || (v55[1] = v38, __swift_project_boxed_opaque_existential_1((v60 + 120), *(v60 + 144)), v39 = v57, v40 = v58, (*(v57 + 104))(v7, *MEMORY[0x1E69B6A78], v58), swift_unknownObjectRetain(), sub_1D7D2956C(), swift_unknownObjectRelease(), (*(v39 + 8))(v7, v40), v41 = sub_1D7D29A5C(), (*(v59 + 8))(v11, v56), (v41))
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v43 = [v26 sourceChannel];
    if (!v43)
    {
      goto LABEL_25;
    }

    v44 = [v43 identifier];
    swift_unknownObjectRelease();
    if (!v44)
    {
      sub_1D7D3034C();
      v44 = sub_1D7D3031C();
    }

    v45 = v60;
    v46 = [objc_msgSend(*(v60 + 96) bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v47 = [v46 containsTagID_];

    if (v47)
    {
LABEL_25:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v36;
    }

    v48 = [*(v45 + 104) bundleSubscription];
    if (objc_getAssociatedObject(v48, v48 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v62 = 0u;
    }

    v65 = v63;
    v64 = v62;
    v49 = MEMORY[0x1E69E7CA0];
    if (*(&v63 + 1))
    {
      sub_1D7992EFC(0, &qword_1EE0BECA0);
      if (swift_dynamicCast())
      {
        v50 = v61;
        v51 = [v61 integerValue];
        if (v51 == -1)
        {

          goto LABEL_25;
        }

        v52 = v51;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D7C98768(&v64, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    }

    v50 = 0;
    v52 = 0;
LABEL_35:
    if (objc_getAssociatedObject(v48, ~v52))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v62 = 0u;
    }

    v65 = v63;
    v64 = v62;
    if (*(&v63 + 1))
    {
      sub_1D7992EFC(0, &qword_1EE0BECA0);
      if (swift_dynamicCast())
      {
        v53 = v61;
        v54 = [v53 integerValue];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v54 ^ v52))
        {
          return v36;
        }

        return 0;
      }
    }

    else
    {
      sub_1D7C98768(&v64, &qword_1EE0BE7A0, v49 + 8);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v52)
    {
      return v36;
    }

    return 0;
  }

  swift_unknownObjectRelease();
  return v36;
}

char *sub_1D7C979F0(uint64_t a1)
{
  sub_1D7C985DC(0, &unk_1EC9E7DF0, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - v5;
  v7 = type metadata accessor for ToolbarFeatureContext();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = a1;
  sub_1D7C98574(a1, v17, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = v17[1];
      v47 = v6;
      v21 = v17[5];
      v45 = v20;
      v46 = v21;
      v22 = v17[9];
      v23 = v17[10];
      v24 = v17[11];
      sub_1D7A1EF2C(v22, v23, v24);

      swift_unknownObjectRelease();

      v6 = v47;
      swift_unknownObjectRelease();

      sub_1D7A1ECE4(v22, v23, v24);
      goto LABEL_8;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      sub_1D7AACF9C(v17, type metadata accessor for ArticleViewerPage);
      return 0;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*(v17 + *(v25 + 48)), *(v17 + *(v25 + 48) + 8), *(v17 + *(v25 + 48) + 16));
  }

  sub_1D7C98688(v17, v13, type metadata accessor for ArticleViewerArticlePage);
  v26 = &v13[*(v10 + 40)];
  v22 = *v26;
  v23 = v26[1];
  v24 = v26[2];
  sub_1D7A1EF2C(*v26, v23, v24);
  sub_1D7AACF9C(v13, type metadata accessor for ArticleViewerArticlePage);
LABEL_8:
  if ((~v24 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v46 = *__swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v27 = [objc_allocWithZone(type metadata accessor for RecipeArticleChromeButton()) init];
  v47 = v6;
  v28 = v27;
  v29 = objc_allocWithZone(type metadata accessor for RecipeArticleChromeBarButton());
  v30 = sub_1D7D0DC08(v28);
  v31 = OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_button;
  [*&v30[OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_button] setTintAdjustmentMode_];
  v32 = v30;

  v33 = sub_1D7D3031C();

  v45 = v32;
  [v32 setIdentifier_];

  v34 = *&v30[v31];
  v44 = sub_1D7992EFC(0, &qword_1EE0BAF70);
  sub_1D7C98574(v49, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarFeatureContext);
  v35 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v36 = swift_allocObject();
  v36[2] = v22;
  v36[3] = v23;
  v36[4] = v24;
  sub_1D7C98688(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for ToolbarFeatureContext);
  v37 = v34;
  sub_1D7A1EF2C(v22, v23, v24);
  v38 = sub_1D7D311EC();
  [v37 addAction:v38 forControlEvents:64];

  v39 = __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
  v40 = *&v30[v31];
  __swift_project_boxed_opaque_existential_1((*v39 + 16), *(*v39 + 40));
  v41 = v40;
  v42 = v47;
  sub_1D7CB903C(v47);
  v43 = sub_1D7D312AC();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_1D7D312BC();
  sub_1D7CB970C(v41);

  sub_1D7A1ECE4(v22, v23, v24);
  return v45;
}

uint64_t sub_1D7C97FB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C98028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D7C979F0(a1);
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_button];
    v8 = sub_1D7C981E4(a1, v7, v2);

    sub_1D7C987D8(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7D3B4D0;
    *(result + 32) = v6;
    *(result + 40) = v8;
    *a2 = result;
    a2[1] = 0;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];

    return ToolbarFeatureState.init(items:contentInset:)(v10, a2, 0.0);
  }

  return result;
}

uint64_t sub_1D7C98118(uint64_t *a1, uint64_t a2)
{
  result = sub_1D7C979F0(a2);
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_button);
    v8 = sub_1D7C981E4(a2, v7, v2);

    sub_1D7C987D8(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7D3B4D0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;

    *a1 = v9;
  }

  return result;
}

uint64_t sub_1D7C981E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D7D29EAC();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7D2C93C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  ArticleViewerPage.article.getter(&v13);
  if (!*(&v13 + 1))
  {
    return 0;
  }

  v8 = v14;
  swift_unknownObjectRetain();
  sub_1D7C98768(&v13, &qword_1EE0C0600, &type metadata for Article);
  v9 = [v8 sourceChannel];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_1D7D2C8FC();
  sub_1D7D2C91C();
  v10 = MEMORY[0x1E69D7660];
  sub_1D7C985DC(0, &unk_1EC9E24A0, MEMORY[0x1E69D7660], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7D3C680;
  sub_1D7D29E9C();
  sub_1D7D29E7C();
  sub_1D7D29E8C();
  sub_1D7C98640(&unk_1EC9E6E40, MEMORY[0x1E69D7660]);
  sub_1D7C985DC(0, &unk_1EC9E24B0, v10, MEMORY[0x1E69E62F8]);
  sub_1D7C984EC();
  sub_1D7D313AC();
  sub_1D7D29EBC();
  swift_allocObject();
  swift_unknownObjectRetain();
  result = sub_1D7D29E5C();
  if (*(a3 + 112))
  {
    v12 = result;

    sub_1D7D2A65C();

    return v12;
  }

  return result;
}

unint64_t sub_1D7C984EC()
{
  result = qword_1EC9E6E50;
  if (!qword_1EC9E6E50)
  {
    sub_1D7C985DC(255, &unk_1EC9E24B0, MEMORY[0x1E69D7660], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6E50);
  }

  return result;
}

uint64_t sub_1D7C98574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7C985DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C98640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7C98688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7C986F0(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolbarFeatureContext() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1D7CCF9F8(a1, v4, v5, v6, v7);
}

uint64_t sub_1D7C98768(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7C987D8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7C987D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7C98828(_BYTE *a1)
{
  v3 = sub_1D7D2C93C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32[1] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C994B8(0, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v32 - v12;
  v14 = type metadata accessor for ArticleViewerMoreFeatureContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = (v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v32 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v32 - v25;
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (*a1)
  {
    sub_1D7C99290(v1 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_nextContext, v9);
    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      sub_1D7C99324(v9);
    }

    else
    {
      sub_1D7C993B0(v9, v18);
      swift_getObjectType();
      if (qword_1EE0C0140 != -1)
      {
        swift_once();
      }

      sub_1D7D2A61C();
      v31 = sub_1D7D2AAFC();
      if ([v18[2] sourceChannel] && v31)
      {
        sub_1D7D2C90C();
        swift_unknownObjectRetain();
        sub_1D7D2C92C();
        swift_unknownObjectRelease();
        sub_1D7D29EBC();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_1D7D29E6C();
        sub_1D7D2A65C();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_1D7C99414(v18);
    }
  }

  else
  {
    sub_1D7C99290(v1 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_nextContext, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1D7C99324(v13);
LABEL_6:
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        if (qword_1EE0C0140 != -1)
        {
          swift_once();
        }

        v33 = qword_1EE0C0148;
        sub_1D7D2A61C();
        sub_1D7C99470(&qword_1EC9E1968, MEMORY[0x1E69D79E0]);

        sub_1D7D2AB1C();

        swift_unknownObjectRelease();
      }

      return;
    }

    sub_1D7C993B0(v13, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_1D7BBC0F0(v26, v22);
    v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    sub_1D7C993B0(v22, v29 + v28);
    sub_1D7D2C04C();
    swift_allocObject();
    v30 = sub_1D7D2A60C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      if (qword_1EE0C0140 != -1)
      {
        swift_once();
      }

      v32[2] = v30;
      v33 = qword_1EE0C0148;
      sub_1D7D2A61C();
      sub_1D7C99470(&qword_1EC9E1968, MEMORY[0x1E69D79E0]);

      sub_1D7D2AB0C();

      swift_unknownObjectRelease();
    }

    sub_1D7C99414(v26);
  }
}

uint64_t sub_1D7C98E84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_getObjectType();
  if (qword_1EE0C0140 != -1)
  {
    swift_once();
  }

  sub_1D7D2A61C();
  sub_1D7D2AAFC();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_sharingActivityProviderFactory), *(v1 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_sharingActivityProviderFactory + 24));
  sub_1D7D3000C();
  swift_getObjectType();
  v2 = sub_1D7D2B7CC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D7C98FC8()
{
  sub_1D7C99324(v0 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_nextContext);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_sceneProvider);
  swift_unknownObjectRelease();
  sub_1D79C92AC(v0 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_toolbarItemProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles37MacMoreArticleViewerFeatureTransition_sharingActivityProviderFactory);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MacMoreArticleViewerFeatureTransition()
{
  result = qword_1EC9E7E38;
  if (!qword_1EC9E7E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C990D0()
{
  sub_1D7C994B8(319, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7C991E0()
{
  if (qword_1EE0C0140 != -1)
  {
    swift_once();
  }

  return sub_1D7D29D8C();
}

uint64_t sub_1D7C99238(uint64_t a1)
{
  result = sub_1D7C99470(&qword_1EC9E7E50, type metadata accessor for MacMoreArticleViewerFeatureTransition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7C99290(uint64_t a1, uint64_t a2)
{
  sub_1D7C994B8(0, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C99324(uint64_t a1)
{
  sub_1D7C994B8(0, qword_1EE0C3C00, type metadata accessor for ArticleViewerMoreFeatureContext, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7C993B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerMoreFeatureContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C99414(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerMoreFeatureContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7C99470(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7C994B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C9951C()
{
  type metadata accessor for ArticleViewerMoreFeatureContext();

  return sub_1D7C98E84();
}

uint64_t type metadata accessor for TitleViewArticleViewerFeatureViewModel()
{
  result = qword_1EE0CB088;
  if (!qword_1EE0CB088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C995F4()
{
  sub_1D799621C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TitleView();
    if (v1 <= 0x3F)
    {
      sub_1D7C9973C();
      if (v2 <= 0x3F)
      {
        sub_1D7C997A0(319, &qword_1EE0BEF38, type metadata accessor for UIUserInterfaceStyle);
        if (v3 <= 0x3F)
        {
          sub_1D7C997A0(319, &unk_1EE0C0210, MEMORY[0x1E69B6A88]);
          if (v4 <= 0x3F)
          {
            sub_1D7C997A0(319, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D7C9973C()
{
  result = qword_1EE0C2680;
  if (!qword_1EE0C2680)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C2680);
  }

  return result;
}

void sub_1D7C997A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C997F4(uint64_t a1, uint64_t a2)
{
  if ((sub_1D7D2DB0C() & 1) != 0 && (*(a2 + 153) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
    if (sub_1D7D2F95C())
    {
      ArticleViewerPage.article.getter(&v7);
      if (*(&v7 + 1))
      {
        v4 = v8;
        swift_unknownObjectRetain();
        sub_1D7C9B348(&v7, &qword_1EE0C0600, &type metadata for Article);
        if ([v4 respondsToSelector_])
        {
          v5 = [v4 hasAudioTrack];
          swift_unknownObjectRelease();
          if (v5)
          {
            return 1;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

double sub_1D7C998E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v72 = a3;
  sub_1D7C9B278(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v15 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C9B2AC(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v66 - v25;
  sub_1D7C9B42C(0, &qword_1EE0C1B10, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v28 = *(v27 + 28);
  v75 = a1;
  v70 = v28;
  sub_1D7C9B2E0(a1 + v28, v26, sub_1D7C9B2AC);
  v29 = type metadata accessor for ArticleViewerAudioFeatureContext();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v26, 1, v29) == 1)
  {
    sub_1D7C9B490(v26, sub_1D7C9B2AC);
    v31 = 0;
  }

  else
  {
    sub_1D7C9B2E0(v26, v18, type metadata accessor for ArticleViewerArticlePage);
    sub_1D7C9B490(v26, type metadata accessor for ArticleViewerAudioFeatureContext);
    v31 = *(v18 + 2);
    swift_unknownObjectRetain();
    sub_1D7C9B490(v18, type metadata accessor for ArticleViewerArticlePage);
  }

  *(v74 + 16) = v31;
  swift_unknownObjectRelease();
  sub_1D7C9B2E0(v75, v14, sub_1D7C9B278);
  sub_1D7BD6B70(0);
  v33 = v32;
  v34 = *(*(v32 - 8) + 48);
  if (v34(v14, 1, v32) == 1)
  {
    sub_1D7C9B490(v14, sub_1D7C9B278);
    v35 = *(v73 + 176);
LABEL_9:
    v68 = v35 == 0;
    goto LABEL_10;
  }

  sub_1D79DA880(&v14[*(v33 + 28)], v77);
  sub_1D7C9B490(v14, sub_1D7BD6B70);
  v36 = v86;
  v37 = v86;
  sub_1D79DA8DC(v77);
  v35 = *(v73 + 176);
  if (!v36)
  {
    goto LABEL_9;
  }

  if (v35)
  {
    type metadata accessor for PlayableArticleInfo();
    v38 = v35;
    v68 = sub_1D7D311DC();
  }

  else
  {

    v68 = 0;
  }

LABEL_10:
  v39 = off_1EE0C7F08;
  v69 = qword_1EE0C7F00;
  sub_1D7C9B2E0(v75, v10, sub_1D7C9B278);
  v40 = 1;
  v41 = v34(v10, 1, v33);
  v42 = sub_1D7C9B278;
  if (v41 != 1)
  {
    sub_1D7C9B2E0(v10, v22, type metadata accessor for ArticleViewerAudioFeatureContext);
    v40 = 0;
    v42 = sub_1D7BD6B70;
  }

  v43 = v42;

  sub_1D7C9B490(v10, v43);
  (*(v30 + 56))(v22, v40, 1, v29);
  v44 = v71;
  sub_1D7C9B2E0(v75, v71, sub_1D7C9B278);
  v45 = v34(v44, 1, v33);
  v67 = v39;
  if (v45 == 1)
  {
    sub_1D7C9B490(v44, sub_1D7C9B278);
    memset(v77, 0, sizeof(v77));
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  else
  {
    sub_1D79DA880(v44 + *(v33 + 28), v77);
    sub_1D7C9B490(v44, sub_1D7BD6B70);
  }

  v46 = v74;
  v47 = sub_1D7C9A070(v22, v77);
  v49 = v48;
  v51 = v50;
  sub_1D7C9B348(v77, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D7C9B490(v22, sub_1D7C9B2AC);
  v52 = v73;
  sub_1D79DA880(v73, v77);
  v53 = sub_1D7C9A070(v75 + v70, v77);
  v55 = v54;
  v57 = v56;
  sub_1D7C9B348(v77, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D79DA880(v52, v77);
  v58 = *(v46 + 48);
  v59 = v72;
  *(v72 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v59 + 32) = &off_1F52A4FC8;
  v60 = swift_allocObject();
  *v59 = v60;
  v61 = v67;
  *(v60 + 16) = v69;
  *(v60 + 24) = v61;
  v62 = v47;
  *(v60 + 32) = v47;
  *(v60 + 40) = v49;
  *(v60 + 48) = v51;
  *(v60 + 56) = v53;
  *(v60 + 64) = v55;
  *(v60 + 72) = v57;
  v63 = v78;
  sub_1D7A1EE44(v62);
  sub_1D7A1EE44(v53);
  *(v60 + 96) = sub_1D7C550C4(v63);
  *(v60 + 104) = v58;
  v64 = *&v85;

  BarButtonOrder.init(for:)(&v76, v64);
  sub_1D7A1EE84(v53);
  sub_1D7A1EE84(v62);
  sub_1D79DA8DC(v77);
  result = *&v76;
  *(v60 + 80) = v76;
  *(v59 + 40) = 0;
  return result;
}

uint64_t sub_1D7C9A070(uint64_t a1, uint64_t a2)
{
  sub_1D7C9B2AC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerAudioFeatureContext();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C9B2E0(a1, v7, sub_1D7C9B2AC);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1D7C9B3B8(v7, v12);
    sub_1D7AEC678(a2, v33);
    if (v33[6])
    {
      v14 = v34;
      v15 = v34;
      sub_1D79DA8DC(v33);
      if (v14)
      {
        v17 = *&v15[OBJC_IVAR___NAPlayableArticleInfo_articleId];
        v16 = *&v15[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];
        v18 = *(v12 + 2);

        v19 = v15;
        v20 = [v18 identifier];
        v21 = sub_1D7D3034C();
        v23 = v22;

        if (v16)
        {
          if (v17 == v21 && v16 == v23)
          {

LABEL_17:
            v27 = v19[OBJC_IVAR___NAPlayableArticleInfo_paused];

            v26 = v27 ^ 1;
            goto LABEL_18;
          }

          v25 = sub_1D7D3197C();

          if (v25)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v26 = 0;
LABEL_18:
        sub_1D7C9A3BC(v26 & 1, v33);
        v28 = v33[0];
        v29 = v33[1];
        v13 = *(v12 + 2);
        sub_1D79996A8(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D7D3B4D0;
        *(v30 + 32) = v28;
        *(v30 + 40) = v29;
        swift_unknownObjectRetain();
        sub_1D7C9B490(v12, type metadata accessor for ArticleViewerAudioFeatureContext);
        return v13;
      }
    }

    else
    {
      sub_1D7C9B348(v33, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
    }

    v26 = 0;
    goto LABEL_18;
  }

  sub_1D7C9B490(v7, sub_1D7C9B2AC);
  return 0;
}

void sub_1D7C9A3BC(char a1@<W0>, void *a2@<X8>)
{
  type metadata accessor for AudioArticleBarButtonItem();
  if (a1)
  {
    if (qword_1EC9DFF50 != -1)
    {
      swift_once();
    }

    v4 = qword_1EC9E91E8;
    sub_1D7BA9A5C();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = v4;
    sub_1D7D311EC();
    v7 = sub_1D7D30C9C();

    v8 = sub_1D7D3031C();

    [v7 setIdentifier_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = v7;
    v12 = [v10 bundleForClass_];
    v21 = 0x80000001D7D7D930;
  }

  else
  {
    if (qword_1EE0BB4A8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE0BB4B0;
    sub_1D7BA9A5C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = v13;
    sub_1D7D311EC();
    v16 = sub_1D7D30C9C();

    v17 = sub_1D7D3031C();

    [v16 setIdentifier_];

    type metadata accessor for Localized();
    v18 = swift_getObjCClassFromMetadata();
    v19 = objc_opt_self();
    v11 = v16;
    v12 = [v19 bundleForClass_];
    v21 = 0x80000001D7D7D9A0;
  }

  sub_1D7D2811C();

  v20 = sub_1D7D3031C();

  [v11 setAccessibilityLabel_];

  *a2 = v11;
  a2[1] = 0;
}

void *sub_1D7C9A7A0()
{
  v0 = sub_1D7D2B49C();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v30 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D7D2EEEC();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2F1AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2F68C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BDF968(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result[2];
    if (v22)
    {
      v23 = result[4];
      v26[3] = result[3];
      v26[4] = v23;
      v26[0] = result;
      v26[2] = swift_getObjectType();
      swift_unknownObjectRetain();
      v26[1] = sub_1D7D2C3FC();
      *&v34 = v22;
      (*(v13 + 104))(v16, *MEMORY[0x1E69B63A0], v12);
      (*(v8 + 104))(v11, *MEMORY[0x1E69B6178], v7);
      (*(v27 + 104))(v6, *MEMORY[0x1E69B6050], v3);
      v31 = 0u;
      v32 = 0u;
      sub_1D799621C();
      swift_unknownObjectRetain();
      sub_1D7D2F4AC();
      sub_1D79961C4();
      (*(*(v24 - 8) + 56))(v20, 0, 1, v24);
      (*(v28 + 104))(v30, *MEMORY[0x1E69D7FA8], v29);
      v25 = *(v26[0] + 40);
      *(&v32 + 1) = sub_1D7D28A3C();
      v33 = sub_1D7A108E4();
      *&v31 = v25;
      v34 = 0u;
      v35 = 0u;
      v36 = 1;
      sub_1D7D2B10C();
      swift_allocObject();

      sub_1D7D2B0EC();
      sub_1D7D2A78C();
      sub_1D7C9B490(v20, sub_1D7BDF968);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void *sub_1D7C9ACB0()
{
  v0 = sub_1D7D2B49C();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v31 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D7D2EEEC();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2F1AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2F68C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C9B4F0();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (result[2])
    {
      v22 = result[4];
      v27[2] = result[3];
      v27[3] = v22;
      v23 = result;
      v27[1] = swift_getObjectType();
      swift_unknownObjectRetain();
      v27[0] = sub_1D7D2C3CC();
      (*(v13 + 104))(v16, *MEMORY[0x1E69B63A0], v12);
      (*(v8 + 104))(v11, *MEMORY[0x1E69B6178], v7);
      (*(v28 + 104))(v6, *MEMORY[0x1E69B6050], v3);
      v33 = 0u;
      v34 = 0u;
      v24 = MEMORY[0x1E69E7CA8];
      sub_1D7D2F4AC();
      sub_1D79996A8(0, &qword_1EE0BF660, v24 + 8, MEMORY[0x1E69B62F0]);
      (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
      (*(v29 + 104))(v31, *MEMORY[0x1E69D7FA8], v30);
      v26 = v23[5];
      *(&v34 + 1) = sub_1D7D28A3C();
      v35 = sub_1D7A108E4();
      *&v33 = v26;
      v36 = 0u;
      v37 = 0u;
      v38 = 1;
      sub_1D7D2B10C();
      swift_allocObject();

      sub_1D7D2B0EC();
      sub_1D7D2A78C();
      sub_1D7C9B490(v20, sub_1D7C9B4F0);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D7C9B1C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C9B2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C9B348(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D79996A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C9B3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerAudioFeatureContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7C9B42C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C9B490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7C9B4F0()
{
  if (!qword_1EE0BF658)
  {
    sub_1D79996A8(255, &qword_1EE0BF660, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69B62F0]);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF658);
    }
  }
}

uint64_t AudioArticleBarButtonItem.barButtonItemIdentifier.getter()
{
  v0 = qword_1EE0C7F00;

  return v0;
}

id AudioArticleBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioArticleBarButtonItem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AudioArticleBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AudioArticleBarButtonItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AudioArticleBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7C9B834()
{
  v0 = qword_1EE0C7F00;

  return v0;
}

uint64_t sub_1D7C9B890()
{
  sub_1D7C9B8EC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C9B8EC(uint64_t a1)
{
  sub_1D7A03BE8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AdSettingsFactory.createSettings()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B7098]) initWithDebugAdvertisementSettings_];
  swift_unknownObjectRelease();
  return v0;
}

id sub_1D7C9B9B4()
{
  v0 = sub_1D7D284DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2852C();
  v5 = sub_1D7D2860C();

  if ((v5 & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_1D7D3031C();
    v8 = [v6 BOOLForKey_];

    if (!v8)
    {
      return 0;
    }
  }

  v9 = sub_1D7C9BCB0();
  sub_1D7D2852C();
  sub_1D7D2851C();

  sub_1D7C9BEF8();
  sub_1D7D285AC();

  v21 = v22 & ~(v22 >> 63);
  sub_1D7D2852C();
  sub_1D7D284EC();

  sub_1D7D285AC();

  sub_1D7D284CC();
  (*(v1 + 8))(v4, v0);
  v10 = v9;
  sub_1D7D2852C();
  sub_1D7D284FC();

  sub_1D7D285AC();

  v11 = sub_1D7D3031C();

  SXConvertibleValueMakeFromString(v11);
  v13 = v12;
  v15 = v14;

  v16 = objc_allocWithZone(MEMORY[0x1E69CE040]);
  v17 = sub_1D7D3031C();

  v18 = [v16 initWithFrequency:v21 bannerType:v17 layout:v10 distanceFromMedia:{v13, v15}];

  return v18;
}

id sub_1D7C9BCB0()
{
  v0 = sub_1D7D27FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2852C();
  sub_1D7D2850C();

  sub_1D7C9BEF8();
  sub_1D7D285AC();

  sub_1D7D27FDC();
  sub_1D79EF194();
  v5 = sub_1D7D3134C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = sub_1D7D3031C();

    SXConvertibleValueMakeFromString(v9);
    v11 = v10;
    v13 = v12;

    return [objc_allocWithZone(MEMORY[0x1E69CE038]) initWithMargin_];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1D7C9BEF8()
{
  result = qword_1EC9E7E58;
  if (!qword_1EC9E7E58)
  {
    type metadata accessor for AdSettingsFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7E58);
  }

  return result;
}

double SXConvertibleValueMakeFromString(void *a1)
{
  v1 = a1;
  [v1 floatValue];
  v3 = v2;
  v4 = v1;
  v5 = v4;
  if (v1 && ([v4 hasSuffix:@"pt"] & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"vh") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"vw") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"vmin") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"vmax") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"gut") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"dg") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"cw") & 1) == 0 && (objc_msgSend(v5, "hasSuffix:", @"dm") & 1) == 0)
  {
    [v5 hasSuffix:@"pw"];
  }

  return v3;
}

uint64_t static AudioNowPlayingPlaybackState.== infix(_:_:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v67 = *(a3 - 8);
  v68 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v65 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v62[-v8];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v62[-v11];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v62[-v15];
  v66 = v17;
  v18 = type metadata accessor for AudioNowPlayingPlaybackState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v20);
  v23 = &v62[-v22];
  v25 = &v62[*(v24 + 56) - v22];
  v26 = *(v18 - 8);
  v27 = *(v26 + 16);
  v27(&v62[-v22], a1, v18, v21);
  (v27)(v25, v68, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v68 = v16;
    v65 = v12;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v29);
    strcpy(&v62[-48], "item time playbackRate waiting ");
    v69 = a3;
    v70 = MEMORY[0x1E69E63B0];
    v71 = &type metadata for AudioPlaybackRate;
    v72 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v45 = TupleTypeMetadata[16];
    v46 = v23[v45];
    v47 = TupleTypeMetadata[20];
    v48 = v23[v47];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    v63 = v46;
    LODWORD(v64) = v48;
    v49 = TupleTypeMetadata[12];
    v50 = *&v23[v49];
    v51 = *&v25[v49];
    v52 = v25[v45];
    v53 = v25[v47];
    v54 = v67;
    v55 = v68;
    v56 = *(v67 + 32);
    v56(v68, v23, a3);
    v57 = v65;
    v56(v65, v25, a3);
    v58 = sub_1D7D3030C();
    v59 = *(v54 + 8);
    v59(v57, a3);
    v59(v55, a3);
    result = 0;
    if ((v58 & 1) == 0 || v50 != v51)
    {
      return result;
    }

    if (v52 > 2)
    {
      if (v52 == 3)
      {
        v60 = v63 == 3;
      }

      else if (v52 == 4)
      {
        v60 = v63 == 4;
      }

      else
      {
        v60 = v63 == 5;
      }
    }

    else
    {
      if (!v52)
      {
        v61 = v64;
        if (v63)
        {
          return 0;
        }

        return v61 ^ v53 ^ 1u;
      }

      if (v52 == 1)
      {
        v60 = v63 == 1;
      }

      else
      {
        v60 = v63 == 2;
      }
    }

    v61 = v64;
    if (!v60)
    {
      return 0;
    }

    return v61 ^ v53 ^ 1u;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return 1;
    }

    goto LABEL_11;
  }

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v31 = *(TupleTypeMetadata3 + 64);
  v32 = v23[v31];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    (*(v67 + 8))(v23, a3);
LABEL_11:
    (*(v26 + 8))(v25, v18);
    return 0;
  }

  v33 = *(TupleTypeMetadata3 + 48);
  v34 = *&v23[v33];
  v35 = *&v25[v33];
  v36 = v25[v31];
  v37 = v67;
  v38 = *(v67 + 32);
  v39 = v64;
  v38(v64, v23, a3);
  v40 = v65;
  v38(v65, v25, a3);
  v41 = sub_1D7D3030C();
  v42 = *(v37 + 8);
  v42(v40, a3);
  v42(v39, a3);
  result = 0;
  if ((v41 & 1) != 0 && v34 == v35)
  {
    return dbl_1D7D5DF50[v32] == dbl_1D7D5DF50[v36];
  }

  return result;
}

uint64_t type metadata accessor for ReportConcernLayoutModel()
{
  result = qword_1EC9E7E60;
  if (!qword_1EC9E7E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C9C680()
{
  sub_1D7A2AED8();
  if (v0 <= 0x3F)
  {
    sub_1D7A9B828();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

double sub_1D7C9C6F4()
{
  v1 = v0;
  v2 = sub_1D7D2B15C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2F3FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReportConcernLayoutModel();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C9C9B4(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7A9B828();
    (*(v3 + 32))(v6, &v15[*(v16 + 48)], v2);
    sub_1D7D2B13C();
    Height = v17;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D7A2AED8();
    v20 = *(v19 + 48);
    (*(v8 + 32))(v11, &v15[*(v19 + 64)], v7);
    sub_1D7D2F3EC();
    Height = CGRectGetHeight(v24);
    (*(v8 + 8))(v11, v7);
    v21 = sub_1D7D2F44C();
    (*(*(v21 - 8) + 8))(&v15[v20], v21);
  }

  return Height;
}

uint64_t sub_1D7C9C9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcernLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C9CA94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D7C9CADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D7C9CB50@<D0>(uint64_t a1@<X8>)
{
  sub_1D79ED47C();
  sub_1D7C9CC20();
  v3 = v1;
  if (swift_dynamicCast())
  {
    sub_1D799D69C(v7, a1);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D7C9CC84(v7);
    v5 = [v3 parentViewController];
    if (v5)
    {
      v6 = v5;
      sub_1D7C9CB50();
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

unint64_t sub_1D7C9CC20()
{
  result = qword_1EC9E4528;
  if (!qword_1EC9E4528)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E4528);
  }

  return result;
}

uint64_t sub_1D7C9CC84(uint64_t a1)
{
  sub_1D7C9CCE0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C9CCE0()
{
  if (!qword_1EC9E4520)
  {
    sub_1D7C9CC20();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4520);
    }
  }
}

uint64_t sub_1D7C9CD84()
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

uint64_t sub_1D7C9CE48()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 136));
  sub_1D7B0CAE4();
  v3 = v2[17];
  swift_beginAccess();
  v4 = v2[18];
  v5 = v2[19];
  v6 = v2[20];
  v7 = v2[21];
  v9 = v2[22];
  v8 = v2[23];
  v10 = v2[24];
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v9;
  v16[5] = v8;
  v16[6] = v10;
  v11 = *(v1 + 88);
  v12 = *(v11 + 40);
  v13 = *(v1 + 80);
  swift_unknownObjectRetain();

  v14 = v12(v3, v16, v13, v11);
  swift_unknownObjectRelease();

  v16[0] = v14;
  sub_1D7BFB4DC();
  sub_1D7C9D8A8(&qword_1EC9E7EF8, sub_1D7BFB4DC);
  sub_1D7D2A70C();
}

void sub_1D7C9D044(__int128 *a1)
{
  v1 = a1[1];
  v6 = *a1;
  v7 = v1;
  v8 = a1[2];
  sub_1D7D294BC();
  v2 = swift_allocObject();
  v3 = v7;
  v2[1] = v6;
  v2[2] = v3;
  v2[3] = v8;
  sub_1D7C45254(&v6, v5);
  v4 = sub_1D7D2934C();
  sub_1D7D293CC();
}

uint64_t sub_1D7C9D168(uint64_t *a1, uint64_t *a2, char *a3)
{
  v41 = a3;
  v35 = *a2;
  v5 = sub_1D7D2B49C();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C9D7F4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2EEFC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2FD7C();
  v36 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v25 = a1[4];
  v24 = a1[5];
  v26 = a1[6];
  v42[0] = v20;
  v42[1] = v21;
  v42[2] = v22;
  v43 = v23;
  v44 = v25;
  v45 = v24;
  v46 = v26;
  swift_unknownObjectRetain();

  sub_1D7CB514C(v42, v15);

  sub_1D7D2FD6C();
  v37 = a2[6];
  swift_getObjectType();
  sub_1D7D2C54C();
  v27 = *(v36 + 16);
  v41 = v19;
  v28 = v19;
  v29 = v36;
  v27(v11, v28, v16);
  (*(v29 + 56))(v11, 0, 1, v16);
  (*(v39 + 104))(v38, *MEMORY[0x1E69D7FB8], v40);
  v30 = a2[4];
  v43 = sub_1D7D28A3C();
  v44 = sub_1D7C9D8A8(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  v42[0] = v30;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  sub_1D7D2B0EC();
  v31 = v50;
  sub_1D7D2A78C();
  if (v31)
  {

    sub_1D7C9D84C(v11);
  }

  else
  {
    sub_1D7C9D84C(v11);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    type metadata accessor for ReportConcernDetailInteractor();
    sub_1D7A3F0F8(v33);
    swift_unknownObjectRelease();
  }

  return (*(v29 + 8))(v41, v16);
}

uint64_t *sub_1D7C9D5F4()
{
  v1 = *v0;
  sub_1D79C92AC((v0 + 2));

  swift_unknownObjectRelease();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_1D7C9D6C4()
{
  sub_1D7C9D5F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C9D740()
{
  v0 = off_1F52A4E70;
  type metadata accessor for ReportConcernDetailDataManager();
  return v0();
}

void sub_1D7C9D7F4()
{
  if (!qword_1EC9E7EF0)
  {
    sub_1D7D2FD7C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7EF0);
    }
  }
}

uint64_t sub_1D7C9D84C(uint64_t a1)
{
  sub_1D7C9D7F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7C9D8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7C9D8F0()
{
  sub_1D7998FAC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v42 - v4;
  v6 = *v0;
  if ((*(v0 + 72) & 1) == 0)
  {
    sub_1D79EB1FC();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7D3C670;
    v19 = v6();
    v20 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];

    result = v18;
    *(v18 + 32) = v20;
    return result;
  }

  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v42 = *(v0 + 64);
  v13 = (v6)(v3);
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D7998FAC(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7D3B4E0;
  v51.value = 0;
  *&v51.timescale = 0xE000000000000000;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = [v15 URL];
    sub_1D7D281EC();

    v17 = sub_1D7D2824C();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  }

  else
  {
    v22 = sub_1D7D2824C();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  }

  v23 = sub_1D7D303AC();
  MEMORY[0x1DA70DE90](v23);

  value = v51.value;
  v25 = *&v51.timescale;
  v26 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1D79D6AE0();
  *(v14 + 64) = v27;
  *(v14 + 32) = value;
  *(v14 + 40) = v25;
  v51.value = v8;
  *&v51.timescale = v7;
  v51.epoch = v9;
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v55 = v42;
  sub_1D7C6DC9C();
  v28 = sub_1D7D3190C();
  *(v14 + 96) = v26;
  *(v14 + 104) = v27;
  *(v14 + 72) = v28;
  *(v14 + 80) = v29;
  sub_1D7D29AAC();

  v30 = objc_allocWithZone(MEMORY[0x1E69880B0]);
  v31 = v13;
  v32 = [v30 initWithAsset_];
  CMTimeMakeWithSeconds(&v51, v7, 1000000000);
  [v32 setForwardPlaybackEndTime_];

  v33 = objc_allocWithZone(MEMORY[0x1E69880B0]);
  v34 = v31;
  v35 = [v33 initWithAsset_];
  CMTimeMakeWithSeconds(&v51, *&v9, 1000000000);
  v36 = *MEMORY[0x1E6960CC0];
  v37 = *(MEMORY[0x1E6960CC0] + 8);
  v38 = *(MEMORY[0x1E6960CC0] + 12);
  v50 = *(MEMORY[0x1E6960CC0] + 16);
  v46 = v50;
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  [v35 seekToTime:&v51 toleranceBefore:&v47 toleranceAfter:&v43 completionHandler:0];

  v39 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
  sub_1D79EB1FC();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7D3D410;
  if (v12)
  {
    if (v12 != 1)
    {
      *(v40 + 32) = v32;
      *(v40 + 40) = v35;
      *(v40 + 48) = v39;
      goto LABEL_14;
    }

    *(v40 + 32) = v32;
    *(v40 + 40) = v39;
  }

  else
  {
    *(v40 + 32) = v39;
    *(v40 + 40) = v32;
  }

  *(v40 + 48) = v35;
LABEL_14:
  v41 = v40;

  return v41;
}

id static AudioTrackKind.uniform(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *a2 = sub_1D7C9DE58;
  *(a2 + 8) = v3;
  *(a2 + 72) = 0;

  return a1;
}

uint64_t static AudioTrackKind.composite(baseAsset:transform:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *(a2 + 6);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *a3 = sub_1D7C9E058;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  *(a3 + 64) = v9;
  *(a3 + 72) = 1;
  v11 = a1;
  v12 = v6;
}

uint64_t AudioTrackKind.displayDuration.getter()
{
  if ((*(v0 + 72) & 1) != 0 && (v1 = *(v0 + 64), (v2 = *(v1 + 16)) != 0))
  {
    return *(v1 + 8 * v2 + 24);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D7C9DF90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7C9DFCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7C9E01C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t InterstitialAdViewController.identifier.getter()
{
  v0 = sub_1D7C9FF18();

  return v0;
}

id sub_1D7C9E094()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    sub_1D7D2D0FC();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D7C9E128()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  sub_1D7D3109C();

  v4 = [v1 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setNeedsLayout];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutIfNeeded];
}

Swift::Void __swiftcall InterstitialAdViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + *((*v3 & *v1) + 0x78));
    swift_getObjectType();
    [v6 addSubview_];

    sub_1D7D284BC();
    v8 = sub_1D7D2860C();

    if ((v8 & 1) == 0)
    {
      sub_1D7D28C5C();
      if (sub_1D7D28C4C())
      {
        v12 = sub_1D7D2D07C();
        v13 = sub_1D7D2C1CC();

        v14 = sub_1D7D2D07C();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        v16[2] = *(v4 + 80);
        v16[3] = *(v4 + 88);
        v16[4] = v15;
        v17 = sub_1D7D2C1BC();
      }

      goto LABEL_7;
    }

    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D7C9E094();
      [v10 addSubview_];

LABEL_7:
      v18 = [v1 traitCollection];
      sub_1D7CA0024();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7C9E490()
{
  sub_1D7CA0244();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7D2B49C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7FC0], v4);
    v11 = type metadata accessor for Tracker();
    v12 = swift_allocObject();
    v15[5] = v11;
    v15[6] = sub_1D7CA029C();
    v15[2] = v12;
    v13 = [v10 view];
    v16 = 0u;
    v17 = 0u;
    v18 = 1;
    sub_1D7D2B10C();
    swift_allocObject();
    sub_1D7D2B0EC();
    swift_getObjectType();
    sub_1D7D2C2CC();

    sub_1D7D2D49C();

    v14 = sub_1D7D2CADC();
    (*(*(v14 - 8) + 56))(v3, 0, 1, v14);

    sub_1D7D2A78C();
    sub_1D7CA02F4(v3, sub_1D7CA0244);
  }

  return result;
}

void sub_1D7C9E808(void *a1)
{
  v1 = a1;
  InterstitialAdViewController.viewDidLoad()();
}

Swift::Void __swiftcall InterstitialAdViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  type metadata accessor for InterstitialAdModel.InterstitialAd();
  sub_1D7D2D12C();
  sub_1D7D2D2DC();
  sub_1D7D2D29C();
}

void sub_1D7C9E940(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  InterstitialAdViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall InterstitialAdViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  sub_1D7CA0024();
}

void sub_1D7C9EA00(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  InterstitialAdViewController.traitCollectionDidChange(_:)(v9);
}

Swift::Void __swiftcall InterstitialAdViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v122 = sub_1D7D2D47C();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122, v6);
  v123 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D7D2D46C();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v8);
  v126 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1D7D2CADC();
  v117 = *(v118 - 8);
  v11 = MEMORY[0x1EEE9AC00](v118, v10);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133.receiver = v0;
  v133.super_class = ObjectType;
  objc_msgSendSuper2(&v133, sel_viewWillLayoutSubviews, v11);
  swift_getWitnessTable();
  sub_1D7D2B9DC();
  v128 = v14;
  v16 = v15;
  v17 = (v0 + *((*v4 & *v0) + 0xB8));
  v18 = *v17;
  if (*(v17 + 8))
  {
    v18 = v13;
  }

  v125 = v18;
  v19 = *((v5 & v3) + 0x50);
  v20 = *((v5 & v3) + 0x58);
  type metadata accessor for InterstitialAdModel.InterstitialAd();
  v21 = sub_1D7D2D12C();
  v129 = v19;
  v130 = v21;
  v131 = v20;
  v132 = MEMORY[0x1E69B4280];
  sub_1D7D2D2DC();
  sub_1D7D2D2CC();
  v23 = v22;
  v24 = [v1 view];
  if (!v24)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v134.origin.x = v27;
  v134.origin.y = v29;
  v134.size.width = v31;
  v134.size.height = v33;
  Width = CGRectGetWidth(v134);
  sub_1D7D30B4C();
  v36 = Width - v35;
  v37 = *(v1 + *((*v4 & *v1) + 0x78));
  sub_1D7D2B9DC();
  v39 = v38;
  v127 = v16;
  if (v23 == v36)
  {
    sub_1D7D2D2CC();
    v41 = v40;
    sub_1D7D2D2CC();
    v43 = v42;
    v44 = v126;
    v45 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
  }

  else
  {
    v116 = v38;
    v45 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
    v46 = [v1 view];
    if (!v46)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v47 = v46;
    [v46 &selRef_initWithFrame_];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v135.origin.x = v49;
    v135.origin.y = v51;
    v135.size.width = v53;
    v135.size.height = v55;
    v56 = CGRectGetWidth(v135);
    sub_1D7D30B4C();
    v58 = v57;
    v59 = [v1 view];
    v44 = v126;
    if (!v59)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v60 = v59;
    v41 = v56 - v58;
    [v59 &selRef_initWithFrame_];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v136.origin.x = v62;
    v136.origin.y = v64;
    v136.size.width = v66;
    v136.size.height = v68;
    Height = CGRectGetHeight(v136);
    sub_1D7D2B9DC();
    v43 = Height - v70;
    v39 = v116;
  }

  v71 = v125;
  [v37 setFrame_];
  sub_1D7D2B9DC();
  v73 = v72;
  v74 = [v1 v45[167]];
  if (!v74)
  {
    goto LABEL_17;
  }

  v75 = v74;
  [v74 &selRef_initWithFrame_];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v137.origin.x = v77;
  v137.origin.y = v79;
  v137.size.width = v81;
  v137.size.height = v83;
  v84 = CGRectGetWidth(v137);
  sub_1D7D30B4C();
  v86 = v85;
  v87 = [v1 v45[167]];
  if (!v87)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v88 = v87;
  v89 = v84 - v86;
  [v87 &selRef_initWithFrame_];
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;

  v138.origin.x = v91;
  v138.origin.y = v93;
  v138.size.width = v95;
  v138.size.height = v97;
  v98 = CGRectGetHeight(v138);
  sub_1D7D2B9DC();
  [v37 setFrame_];
  sub_1D7D284BC();
  v100 = sub_1D7D2860C();

  if ((v100 & 1) == 0)
  {
    return;
  }

  v101 = MEMORY[0x1E69E7D40];
  v102 = v124;
  sub_1D7D2D49C();
  [v37 frame];
  v103 = [v1 traitCollection];
  [v103 displayScale];

  v104 = [v1 v45[167]];
  if (!v104)
  {
    goto LABEL_19;
  }

  v105 = v104;
  v106 = v45;
  [v104 layoutMargins];

  sub_1D7D2D45C();
  v107 = (v1 + *((*v101 & *v1) + 0xB0));
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  v108 = v123;
  sub_1D7D2D48C();
  v109 = (v1 + *((*v101 & *v1) + 0xA8));
  __swift_project_boxed_opaque_existential_1(v109, v109[3]);
  v110 = sub_1D7C9E094();
  sub_1D7D2D44C();

  v111 = [v1 v106 + 2808];
  if (!v111)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v112 = v111;
  v113 = [v111 safeAreaLayoutGuide];

  [v113 layoutFrame];
  v114 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  [*(v1 + v114) frame];
  CGRectGetHeight(v139);
  v115 = *(v1 + v114);
  [v115 frame];
  sub_1D7D30FDC();
  [v115 setFrame_];

  (*(v121 + 8))(v108, v122);
  (*(v119 + 8))(v44, v120);
  (*(v117 + 8))(v102, v118);
}

void sub_1D7C9F388(void *a1)
{
  v1 = a1;
  InterstitialAdViewController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall InterstitialAdViewController.viewSafeAreaInsetsDidChange()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewSafeAreaInsetsDidChange);
  swift_getWitnessTable();
  sub_1D7D2B9DC();
  v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0));
  if ((v5[4] & 1) == 0 && (v5[1] != v2 || v5[3] != v4))
  {
    v7 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
    *v7 = 0;
    v7[8] = 1;
    v8 = v1;
    v9 = v3;
    v10 = v2;
    v11 = v4;
    sub_1D7C9E128();
    v4 = v11;
    v2 = v10;
    v3 = v9;
    v1 = v8;
  }

  *v5 = v1;
  v5[1] = v2;
  *(v5 + 2) = v3;
  v5[3] = v4;
  *(v5 + 32) = 0;
}

void sub_1D7C9F4FC(void *a1)
{
  v1 = a1;
  InterstitialAdViewController.viewSafeAreaInsetsDidChange()();
}

id InterstitialAdViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void sub_1D7C9F5F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1D7CA00C8();
}

id InterstitialAdViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7C9F6A0(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = type metadata accessor for InterstitialAdModel.InterstitialAd();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x80)]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA8)]);
  v5 = &a1[*((*v2 & *a1) + 0xB0)];

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D7C9F8CC()
{
  v0 = sub_1D7C9FF18();

  return v0;
}

uint64_t InterstitialAdViewController.didStartViewSession(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = type metadata accessor for InterstitialAdSession();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2A3DC();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = *(v2 + *((*v5 & *v2) + 0x78));
  swift_getObjectType();
  v28[5] = v13;
  v14 = sub_1D7D2D08C();
  v16 = v15;
  v17 = *((v6 & v4) + 0x50);
  v18 = *((v6 & v4) + 0x58);
  type metadata accessor for InterstitialAdModel.InterstitialAd();
  v19 = sub_1D7D2D12C();
  v28[1] = v17;
  v28[2] = v19;
  v28[3] = v18;
  v28[4] = MEMORY[0x1E69B4280];
  sub_1D7D2D2DC();
  v20 = sub_1D7D2D2BC();
  v21 = &v11[*(v8 + 28)];
  *v21 = v14;
  v21[1] = v16;
  v22 = &v11[*(v8 + 32)];
  *v22 = v20;
  v22[1] = v23;
  v24 = *(v2 + *((*v5 & *v2) + 0x88));
  v25 = v24[14];
  v26 = v24[15];
  __swift_project_boxed_opaque_existential_1(v24 + 11, v25);
  (*(v26 + 8))(v11, v25, v26);
  return sub_1D7CA02F4(v11, type metadata accessor for InterstitialAdSession);
}

uint64_t InterstitialAdViewController.didResignViewSession(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88));
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t InterstitialAdViewController.didEndViewSession(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = type metadata accessor for InterstitialAdSession();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2A3DC();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = *(v2 + *((*v5 & *v2) + 0x78));
  swift_getObjectType();
  v28[5] = v13;
  v14 = sub_1D7D2D08C();
  v16 = v15;
  v17 = *((v6 & v4) + 0x50);
  v18 = *((v6 & v4) + 0x58);
  type metadata accessor for InterstitialAdModel.InterstitialAd();
  v19 = sub_1D7D2D12C();
  v28[1] = v17;
  v28[2] = v19;
  v28[3] = v18;
  v28[4] = MEMORY[0x1E69B4280];
  sub_1D7D2D2DC();
  v20 = sub_1D7D2D2BC();
  v21 = &v11[*(v8 + 28)];
  *v21 = v14;
  v21[1] = v16;
  v22 = &v11[*(v8 + 32)];
  *v22 = v20;
  v22[1] = v23;
  v24 = *(v2 + *((*v5 & *v2) + 0x88));
  v25 = v24[14];
  v26 = v24[15];
  __swift_project_boxed_opaque_existential_1(v24 + 11, v25);
  (*(v26 + 24))(v11, v25, v26);
  return sub_1D7CA02F4(v11, type metadata accessor for InterstitialAdSession);
}

void InterstitialAdViewController.parallax(changedVisibilityFactor:scrollDirection:isPrimary:)()
{
  swift_getObjectType();
  swift_getWitnessTable();
  v1 = sub_1D7D2B9EC();
  v2 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  *v2 = v1;
  v2[8] = v3 & 1;

  sub_1D7C9E128();
}

void sub_1D7C9FF48()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0)) = 0;
  v2 = v0 + *((*v1 & *v0) + 0xB8);
  *v2 = 0;
  v2[8] = 1;
  v3 = v0 + *((*v1 & *v0) + 0xC0);
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7CA0024()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7CA0114()
{
  result = type metadata accessor for InterstitialAdModel.InterstitialAd();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1D7CA0244()
{
  if (!qword_1EC9E7F00)
  {
    sub_1D7D2CADC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7F00);
    }
  }
}

unint64_t sub_1D7CA029C()
{
  result = qword_1EC9E7F08;
  if (!qword_1EC9E7F08)
  {
    type metadata accessor for Tracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7F08);
  }

  return result;
}

uint64_t sub_1D7CA02F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableOfContentsSubscriptionChangedBlueprintModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D7CA0404(uint64_t a1, void (*a2)(char *), uint64_t a3, int a4)
{
  LODWORD(v149) = a4;
  v111 = a3;
  v112 = a2;
  v135 = type metadata accessor for TableOfContentsHeaderViewModel();
  MEMORY[0x1EEE9AC00](v135, v5);
  v134 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TableOfContentsModel();
  MEMORY[0x1EEE9AC00](v7, v8);
  v133 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v102 - v12;
  sub_1D79ECB58();
  v15 = v14;
  v144 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v148 = &v102 - v21;
  sub_1D79ECBEC();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v118 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79ECCB8(0);
  v26 = v25;
  v121 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v146 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v117 = &v102 - v31;
  v110 = sub_1D7D2A68C();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v32);
  v108 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CA1470(0, &qword_1EC9E1C68, MEMORY[0x1E69D7ED8]);
  v107 = v34;
  v106 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v105 = &v102 - v36;
  sub_1D79ECD98();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v102 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B790();
  v41 = v40;
  v104 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v103 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D7CA1428(&qword_1EC9E2748, sub_1D7A2B790);
  v45 = sub_1D7D30A2C();
  v122 = v41;
  if (v45)
  {
    v156 = MEMORY[0x1E69E7CC0];
    v120 = v45;
    sub_1D7A5C848(0, v45 & ~(v45 >> 63), 0);
    v124 = v156;
    v119 = v44;
    result = sub_1D7D309EC();
    if ((v120 & 0x8000000000000000) == 0)
    {
      v47 = 0;
      v116 = (v121 + 16);
      v143 = (v144 + 16);
      v127 = 0x80000001D7D688B0;
      v126 = v149 & 1;
      v125 = (v144 + 8);
      v147 = (v144 + 32);
      v114 = (v121 + 8);
      v113 = v121 + 32;
      v115 = a1;
      v132 = v7;
      v131 = v13;
      v130 = v15;
      v129 = v26;
      v128 = v18;
      while (1)
      {
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          break;
        }

        v123 = v49;
        v50 = sub_1D7D30AAC();
        v51 = v146;
        (*v116)(v146);
        v50(v155, 0);
        sub_1D7D2A43C();
        v151 = v153;
        v152 = v154;
        v52 = sub_1D7CA1428(&qword_1EC9E7F18, sub_1D79ECCB8);
        v53 = sub_1D7D30A2C();
        if (v53)
        {
          v54 = v53;
          v150 = MEMORY[0x1E69E7CC0];
          sub_1D7A5BE8C(0, v53 & ~(v53 >> 63), 0);
          v149 = v150;
          result = sub_1D7D309EC();
          if (v54 < 0)
          {
            goto LABEL_23;
          }

          v145 = v52;
          do
          {
            v55 = sub_1D7D30AAC();
            (*v143)(v18);
            v55(v155, 0);
            sub_1D7D29EEC();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1D7AF84C4(v13, type metadata accessor for TableOfContentsModel);
              (*v147)(v148, v18, v15);
            }

            else
            {
              v56 = v134;
              sub_1D7AF8524(v13, v134);
              v57 = *(v56 + 1);
              v142 = *v56;
              v137 = v57;
              v58 = *(v56 + 3);
              v141 = *(v56 + 2);
              v136 = v58;
              v59 = v135;
              v60 = *(v135 + 24);
              v61 = sub_1D7D2EEBC();
              v62 = v133;
              (*(*(v61 - 8) + 16))(&v133[v60], &v56[v60], v61);
              v63 = v59[9];
              v64 = &v56[v59[8]];
              v65 = *(v64 + 1);
              v139 = *v64;
              v66 = *&v56[v63 + 8];
              v140 = *&v56[v63];
              v138 = (v62 + v59[11]);
              type metadata accessor for Localized();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v68 = objc_opt_self();

              v69 = v136;

              v70 = [v68 bundleForClass_];
              sub_1D7D2811C();

              v71 = sub_1D7D303CC();
              v73 = v72;

              v74 = v138;
              *v138 = v71;
              v74[1] = v73;
              v18 = v128;
              v75 = v137;
              *v62 = v142;
              v62[1] = v75;
              v62[2] = v141;
              v62[3] = v69;
              v76 = (v62 + v59[7]);
              v77 = v139;
              *v76 = v139;
              v76[1] = v65;
              v78 = (v62 + v59[8]);
              *v78 = v77;
              v78[1] = v65;
              v79 = (v62 + v59[9]);
              *v79 = v140;
              v79[1] = v66;
              v80 = v59[10];
              v26 = v129;
              *(v62 + v80) = v126;
              swift_storeEnumTagMultiPayload();
              sub_1D7CA1428(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);

              v13 = v131;
              sub_1D7D29EDC();
              v81 = v56;
              v15 = v130;
              sub_1D7AF84C4(v81, type metadata accessor for TableOfContentsHeaderViewModel);
              (*v125)(v18, v15);
            }

            v82 = v149;
            v150 = v149;
            v84 = *(v149 + 16);
            v83 = *(v149 + 24);
            if (v84 >= v83 >> 1)
            {
              sub_1D7A5BE8C(v83 > 1, v84 + 1, 1);
              v82 = v150;
            }

            *(v82 + 16) = v84 + 1;
            v85 = (*(v144 + 80) + 32) & ~*(v144 + 80);
            v149 = v82;
            (*(v144 + 32))(v82 + v85 + *(v144 + 72) * v84, v148, v15);
            v51 = v146;
            sub_1D7D30A6C();
            --v54;
          }

          while (v54);
          v86 = v149;
        }

        else
        {
          v86 = MEMORY[0x1E69E7CC0];
        }

        v87 = sub_1D7CA1428(&qword_1EC9E1C78, sub_1D79ECB58);
        v88 = sub_1D7CA1428(&qword_1EC9E1C80, sub_1D79ECB58);
        MEMORY[0x1DA706A80](v86, v15, v87, v88);
        sub_1D79ECABC();
        sub_1D7CA1428(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
        v89 = v117;
        sub_1D7D2A42C();
        (*v114)(v51, v26);
        v90 = v124;
        v156 = v124;
        v92 = *(v124 + 16);
        v91 = *(v124 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_1D7A5C848(v91 > 1, v92 + 1, 1);
          v90 = v156;
        }

        *(v90 + 16) = v92 + 1;
        v93 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v124 = v90;
        (*(v121 + 32))(v90 + v93 + *(v121 + 72) * v92, v89, v26);
        result = sub_1D7D30A6C();
        v47 = v123;
        if (v123 == v120)
        {
          v94 = v124;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v95 = sub_1D7CA1428(&qword_1EC9E1C90, sub_1D79ECCB8);
    v96 = sub_1D7CA1428(&qword_1EC9E1C98, sub_1D79ECCB8);
    MEMORY[0x1DA706A80](v94, v26, v95, v96);
    sub_1D79ECABC();
    sub_1D7CA1428(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
    v97 = v103;
    sub_1D7D2C7FC();
    v98 = v109;
    v99 = v108;
    v100 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x1E69D7A40], v110);
    sub_1D7CA1530();
    v101 = v105;
    sub_1D7D2B2BC();
    (*(v98 + 8))(v99, v100);
    v112(v101);
    (*(v106 + 8))(v101, v107);
    return (*(v104 + 8))(v97, v122);
  }

  return result;
}

uint64_t sub_1D7CA134C(uint64_t a1)
{
  v2 = sub_1D7A09B80();

  return MEMORY[0x1EEE46F70](a1, v2);
}

unint64_t sub_1D7CA138C()
{
  result = qword_1EC9E7F10;
  if (!qword_1EC9E7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7F10);
  }

  return result;
}

uint64_t sub_1D7CA1428(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7CA1470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TableOfContentsSectionDescriptor;
    v8[1] = type metadata accessor for TableOfContentsModel();
    v8[2] = sub_1D79ECABC();
    v8[3] = sub_1D7CA1428(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7CA1530()
{
  result = qword_1EC9E7F20;
  if (!qword_1EC9E7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7F20);
  }

  return result;
}

uint64_t ReportConcernDetailAssembly.load(in:)()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCFA0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D7CA1744@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ReportConcernDetailModule();
    v7 = objc_allocWithZone(v6);
    sub_1D799CC84(v10, &v7[OBJC_IVAR___ReportConcernDetailModule_resolver]);
    *&v7[OBJC_IVAR___ReportConcernDetailModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &protocol witness table for ReportConcernDetailModule;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA181C()
{
  v0 = sub_1D7D294DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReportConcernDetailViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E7F90);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E7F98);
  sub_1D7D291EC();
  type metadata accessor for ReportConcernDetailRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E7FA0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E7FA8);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EC9E7FB0);
  sub_1D7D291EC();

  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  sub_1D7D291DC();

  type metadata accessor for ReportConcernDetailBlueprintModifierFactory();
  sub_1D7D291DC();

  sub_1D7CA4FFC();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CA5870();
  sub_1D7D291DC();

  sub_1D7CA5108();
  sub_1D7D291DC();

  sub_1D7CA54E0();
  sub_1D7D291DC();

  type metadata accessor for ReportConcernDetailBlueprintLayoutBuilder();
  sub_1D7D291DC();

  sub_1D7CA595C();
  sub_1D7D291DC();

  sub_1D7992EFC(0, &unk_1EC9E7D38);
  sub_1D7D291DC();

  sub_1D7CA51D4();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0BFCE0);
  sub_1D7D291EC();

  sub_1D7CA533C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CA5658();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CA5BBC(0, &qword_1EC9E8030, MEMORY[0x1E69D8408]);
  sub_1D7D291DC();

  type metadata accessor for ReportConcernDetailBlueprintViewCellProvider();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for ReportConcernDetailBlueprintViewHeaderProvider();
  sub_1D7D291DC();

  sub_1D7CA5BBC(0, &qword_1EC9E8078, MEMORY[0x1E69D81A8]);
  sub_1D7D291DC();

  sub_1D7D2A81C();
  sub_1D7D291DC();

  sub_1D7CA5AB0();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2B4CC();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D798C468(0, &qword_1EE0BFCC0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E7D60);
  sub_1D7D291EC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6BF0], v0);
  sub_1D7D28AAC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D7CA2150(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7F90);
  result = sub_1D7D28D2C();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7FA0);
  result = sub_1D7D28D2C();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA595C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for ReportConcernDetailStyler();
    v21 = &off_1F52B0D28;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for ReportConcernDetailViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D7CA5DA0(*v16, v3, v4, v5, v12);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA2410@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for ReportConcernDetailStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52B0D28;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA24C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BFFE0);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for ReportConcernDetailRouter();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D799D69C(v10, v7 + 24);
      *(v7 + 64) = v5;
      result = sub_1D799D69C(&v8, v7 + 72);
      a2[3] = v6;
      a2[4] = &off_1F52A5C10;
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

void sub_1D7CA25E4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReportConcernDetailViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7CA2664@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7FA8);
  result = sub_1D7D28D2C();
  v5 = v29;
  if (v29)
  {
    v6 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E7F98);
    result = sub_1D7D28D2C();
    if (v28)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for ReportConcernDetailRouter();
      v26[3] = v13;
      v26[4] = &off_1F52A5C10;
      v26[0] = v12;
      type metadata accessor for ReportConcernDetailEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v25[3] = v13;
      v25[4] = &off_1F52A5C10;
      v25[0] = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799CC84(v25, (v14 + 6));
      ObjectType = swift_getObjectType();
      v22 = *(v6 + 16);
      swift_unknownObjectRetain();

      v22(v23, &off_1F529F330, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      *a2 = v14;
      a2[1] = &off_1F529F340;
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

uint64_t sub_1D7CA295C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E7FB0);
  result = sub_1D7D28D2C();
  v5 = v15;
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA4FFC();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernDetailBlueprintModifierFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CDD90);
  result = sub_1D7D28D2C();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v9 = result;
    sub_1D7CA5D0C();
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[9] = v5;
    v10[10] = v6;
    v10[7] = v7;
    v10[8] = v8;
    result = sub_1D799D69C(&v13, (v10 + 11));
    v10[5] = v11;
    v10[6] = v12;
    v10[4] = v9;
    *a2 = v10;
    a2[1] = &off_1F52B0E08;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA2B9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799621C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D7D28D2C();
  if (!v59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v46 = v58;
  v47 = v60;
  v44 = v61;
  v45 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CDD90);
  result = sub_1D7D28D2C();
  if (!v57)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CED70);
  result = sub_1D7D28D2C();
  if (!v55)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = v64;
  v40 = v63;
  v41 = v59;
  v42 = v5;
  v43 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (v53)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v38[1] = v38;
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v38[0] = v38;
    v12 = MEMORY[0x1EEE9AC00](v11, v11);
    v14 = (v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = *v9;
    v17 = *v14;
    v18 = type metadata accessor for ReportConcernService();
    v51[3] = v18;
    v51[4] = &off_1F52AD888;
    v51[0] = v16;
    v19 = type metadata accessor for HistoryService();
    v49 = v19;
    v50 = &off_1F52A2428;
    v48[0] = v17;
    type metadata accessor for ReportConcernDetailDataManager();
    v20 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v51, v18);
    v22 = MEMORY[0x1EEE9AC00](v21, v21);
    v24 = (v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v27 = MEMORY[0x1EEE9AC00](v26, v26);
    v29 = (v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = *v24;
    v32 = *v29;
    v20[5] = v18;
    v20[6] = &off_1F52AD888;
    v20[7] = v32;
    v20[2] = v31;
    v20[10] = v19;
    v20[11] = &off_1F52A2428;
    v33 = v46;
    v20[17] = v42;
    v20[18] = v33;
    v34 = v47;
    v20[19] = v41;
    v20[20] = v34;
    v35 = v45;
    v20[21] = v44;
    v20[22] = v35;
    v36 = v39;
    v20[23] = v40;
    v20[24] = v36;
    sub_1D799D69C(&v52, (v20 + 12));
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v54);
    result = __swift_destroy_boxed_opaque_existential_1(v56);
    v37 = v43;
    *v43 = v20;
    v37[1] = &off_1F52A4E58;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA30D8()
{
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  swift_allocObject();
  return sub_1D7D2A74C();
}

uint64_t sub_1D7CA312C()
{
  type metadata accessor for ReportConcernDetailBlueprintModifierFactory();

  return swift_allocObject();
}

uint64_t sub_1D7CA3160(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7CA5108();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7CA4FFC();
      swift_allocObject();
      return sub_1D7D2A6DC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CA325C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D8438];
  sub_1D7CA5C88(0, &qword_1EC9E80D8, MEMORY[0x1E69D8438]);
  swift_allocObject();
  sub_1D7D2BB8C();
  sub_1D7CA5C88(0, &qword_1EC9E80E0, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D7CA5614(&qword_1EC9E80E8, &qword_1EC9E80D8, v3);
  sub_1D7D2B6BC();
  sub_1D7D2A6FC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CA5870();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_allocObject();
    sub_1D7CA55CC(&qword_1EC9E80F0, sub_1D7CA5870);
    sub_1D7D2B6BC();
    sub_1D7D2A6FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA3414(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA54E0();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernDetailBlueprintLayoutBuilder();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CA5870();
    swift_allocObject();
    return sub_1D7D2BC6C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA3558(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA51D4();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BFC70);
    result = sub_1D7D28D2C();
    if (v3)
    {
      sub_1D7CA5108();
      swift_allocObject();
      return sub_1D7D2A95C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CA3658()
{
  sub_1D7CA54E0();
  swift_allocObject();
  return sub_1D7D2B27C();
}

uint64_t sub_1D7CA3690(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E80D0);
  result = sub_1D7D28D2C();
  if (v4)
  {
    type metadata accessor for ReportConcernDetailBlueprintLayoutBuilder();
    v2 = swift_allocObject();
    sub_1D799D69C(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA3730(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA51D4();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFC70);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5BBC(0, &qword_1EC9E8078, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A81C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CA55CC(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7CA595C();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B35C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA3A68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA533C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5658();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5BBC(0, &qword_1EC9E8030, MEMORY[0x1E69D8408]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CA51D4();
    swift_allocObject();
    return sub_1D7D2AEFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA3BF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA51D4();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2BA3C();
    swift_allocObject();
    result = sub_1D7D2BA2C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA3CA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA54E0();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernDetailBlueprintViewCellProvider();
  sub_1D799CC84(a1, v8);
  v4 = swift_allocObject();
  sub_1D799D69C(v8, v4 + 16);
  v5 = sub_1D7D28CFC();

  if (v5)
  {
    *&v8[0] = v3;
    sub_1D7CA533C();
    v7 = objc_allocWithZone(v6);
    return sub_1D7D2B80C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA3E28(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = result;
    sub_1D7992EFC(0, &qword_1EE0BF110);
    sub_1D7D3040C();
    sub_1D7D28BDC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA3F28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EE0BFCC0);
  result = sub_1D7D28CEC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_1D7D2C07C();
    sub_1D7D2B81C();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA3FFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA54E0();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ReportConcernDetailBlueprintViewHeaderProvider();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5BBC(0, &qword_1EC9E8078, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1D7CA55CC(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFE00);
  result = sub_1D7D28D2C();
  if (v5)
  {
    sub_1D7CA5658();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B6EC();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D7CA42BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D2A81C();
  sub_1D7D28CDC();
  sub_1D7D2B70C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CA5AB0();
  if (sub_1D7D28D1C())
  {
    sub_1D7CA55CC(&unk_1EC9E80C0, sub_1D7CA5AB0);
  }

  return sub_1D7D2B71C();
}

uint64_t sub_1D7CA43C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CA5BBC(0, &qword_1EC9E8030, MEMORY[0x1E69D8408]);
    return sub_1D7D2BA5C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA4470(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7D88);
  sub_1D799CC84(a1, v7);
  v2 = swift_allocObject();
  sub_1D799D69C(v7, v2 + 16);
  sub_1D7D28D0C();

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    type metadata accessor for ReportConcernDetailBlueprintViewCellProvider();
    v6 = swift_allocObject();
    v6[3] = 0;
    swift_unknownObjectWeakInit();
    v6[4] = v4;
    v6[5] = v5;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA4580(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EC9E7D60);
  result = sub_1D7D28CEC();
  if (v5)
  {
    sub_1D7D28BFC();
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CA4660(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReportConcernDetailViewController();
  v4 = sub_1D7D28D1C();
  v3 = &off_1F529E370;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7CA46F4()
{
  type metadata accessor for ReportConcernDetailBlueprintViewHeaderProvider();

  return swift_allocObject();
}

uint64_t sub_1D7CA4728(void *a1)
{
  v2 = sub_1D7D2BD2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D7D2BD4C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D7CA5BBC(0, &unk_1EC9E80B0, MEMORY[0x1E69D81A0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x1E69D8198], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D7D2BD3C();
    v17[1] = v16;
    sub_1D7CA5BBC(0, &qword_1EC9E8078, MEMORY[0x1E69D81A8]);
    swift_allocObject();
    return sub_1D7D2B68C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA49D0(void *a1)
{
  sub_1D7B355BC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4E0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5AB0();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = sub_1D7CA55CC(&qword_1EC9E80A8, sub_1D7CA5AB0);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2B4CC();
    result = sub_1D7D28CDC();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D7D2A81C();
      swift_allocObject();
      return sub_1D7D2A80C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CA4B0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA5C88(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7CA51D4();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7CA5AB0();
      swift_allocObject();
      return sub_1D7D2B73C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CA4C44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA51D4();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2B4CC();
    swift_allocObject();
    return sub_1D7D2B4BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA4D00(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CA595C();
  v7 = sub_1D7D28D1C();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7CA55CC(a3, sub_1D7CA595C);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_1D7CA4DB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CA595C();
  v4 = v3;
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_1D7CA55CC(&qword_1EC9E8090, sub_1D7CA595C);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA4E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = sub_1D7D2ACEC();
    v5 = objc_allocWithZone(v4);
    result = sub_1D7D2ACDC();
    v6 = MEMORY[0x1E69D7C78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CA4F14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EC9E7D38);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = sub_1D7D2ACEC();
    v5 = objc_allocWithZone(v4);
    result = sub_1D7D2ACDC();
    v6 = MEMORY[0x1E69D7C78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CA4FFC()
{
  if (!qword_1EC9E7FC0)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7CA5C88(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    sub_1D7CA5108();
    sub_1D7CA5614(&qword_1EC9E8000, &qword_1EC9E22C0, v0);
    sub_1D7CA55CC(&qword_1EC9E8058, sub_1D7CA5108);
    v1 = sub_1D7D2A73C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7FC0);
    }
  }
}

void sub_1D7CA5108()
{
  if (!qword_1EC9E7FC8)
  {
    sub_1D7CA51D4();
    sub_1D7A133E8();
    sub_1D7A13440();
    sub_1D7CA55CC(&qword_1EC9E8050, sub_1D7CA51D4);
    v0 = sub_1D7D2A96C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7FC8);
    }
  }
}

void sub_1D7CA51D4()
{
  if (!qword_1EC9E7FD0)
  {
    sub_1D7992EFC(255, &qword_1EC9E7C98);
    sub_1D7CA533C();
    sub_1D7CA5658();
    sub_1D7CA5BBC(255, &qword_1EC9E8030, MEMORY[0x1E69D8408]);
    type metadata accessor for ReportConcernDetailViewController();
    sub_1D7CA55CC(&qword_1EC9E8038, sub_1D7CA533C);
    sub_1D7CA55CC(&qword_1EC9E8040, sub_1D7CA5658);
    sub_1D7CA57FC();
    v0 = sub_1D7D2AF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7FD0);
    }
  }
}

void sub_1D7CA533C()
{
  if (!qword_1EC9E7FE0)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7CA5C88(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    sub_1D7CA54E0();
    type metadata accessor for ReportConcernDetailBlueprintViewCellProvider();
    type metadata accessor for ReportConcernDetailViewController();
    sub_1D7CA5614(&qword_1EC9E8000, &qword_1EC9E22C0, v0);
    sub_1D7CA55CC(&qword_1EC9E8008, sub_1D7CA54E0);
    sub_1D7CA55CC(&qword_1EC9E8010, type metadata accessor for ReportConcernDetailBlueprintViewCellProvider);
    sub_1D7CA55CC(&qword_1EC9E8018, type metadata accessor for ReportConcernDetailViewController);
    v1 = sub_1D7D2B82C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7FE0);
    }
  }
}

void sub_1D7CA54E0()
{
  if (!qword_1EC9E7FE8)
  {
    type metadata accessor for ReportConcernDetailLayoutSectionDescriptor();
    type metadata accessor for ReportConcernDetailLayoutModel();
    sub_1D7CA55CC(&unk_1EC9E7FF0, type metadata accessor for ReportConcernDetailLayoutSectionDescriptor);
    sub_1D7CA55CC(&unk_1EC9E26C0, type metadata accessor for ReportConcernDetailLayoutModel);
    v0 = sub_1D7D2B28C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7FE8);
    }
  }
}

uint64_t sub_1D7CA55CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7CA5614(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D7CA5C88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7CA5658()
{
  if (!qword_1EC9E8020)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7CA5C88(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    sub_1D7CA54E0();
    type metadata accessor for ReportConcernDetailBlueprintViewHeaderProvider();
    type metadata accessor for ReportConcernDetailViewController();
    sub_1D7CA5614(&qword_1EC9E8000, &qword_1EC9E22C0, v0);
    sub_1D7CA55CC(&qword_1EC9E8008, sub_1D7CA54E0);
    sub_1D7CA55CC(&qword_1EC9E8028, type metadata accessor for ReportConcernDetailBlueprintViewHeaderProvider);
    sub_1D7CA55CC(&qword_1EC9E8018, type metadata accessor for ReportConcernDetailViewController);
    v1 = sub_1D7D2B72C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8020);
    }
  }
}

unint64_t sub_1D7CA57FC()
{
  result = qword_1EC9E8048;
  if (!qword_1EC9E8048)
  {
    sub_1D7CA5BBC(255, &qword_1EC9E8030, MEMORY[0x1E69D8408]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8048);
  }

  return result;
}

void sub_1D7CA5870()
{
  if (!qword_1EC9E8060)
  {
    sub_1D7CA54E0();
    type metadata accessor for ReportConcernDetailBlueprintLayoutBuilder();
    sub_1D7CA55CC(&qword_1EC9E8008, sub_1D7CA54E0);
    sub_1D7CA55CC(&qword_1EC9E8068, type metadata accessor for ReportConcernDetailBlueprintLayoutBuilder);
    v0 = sub_1D7D2BC7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8060);
    }
  }
}

void sub_1D7CA595C()
{
  if (!qword_1EC9E8070)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7CA5C88(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    sub_1D7CA51D4();
    type metadata accessor for ReportConcernDetailViewController();
    sub_1D7CA5614(&qword_1EC9E8000, &qword_1EC9E22C0, v0);
    sub_1D7CA55CC(&qword_1EC9E8050, sub_1D7CA51D4);
    sub_1D7CA55CC(&qword_1EC9E8018, type metadata accessor for ReportConcernDetailViewController);
    v1 = sub_1D7D2B37C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8070);
    }
  }
}

void sub_1D7CA5AB0()
{
  if (!qword_1EC9E8080)
  {
    v0 = MEMORY[0x1E69D7A68];
    sub_1D7CA5C88(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    sub_1D7CA51D4();
    sub_1D7CA5614(&qword_1EC9E8088, &qword_1EC9E22C0, v0);
    sub_1D7CA55CC(&qword_1EC9E8050, sub_1D7CA51D4);
    v1 = sub_1D7D2B74C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8080);
    }
  }
}

void sub_1D7CA5BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69D7A68];
    sub_1D7CA5C88(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    v8 = v7;
    v9 = sub_1D7CA5614(&qword_1EC9E8000, &qword_1EC9E22C0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D7CA5C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernDetailSectionDescriptor;
    v8[1] = &type metadata for ReportConcernDetailModel;
    v8[2] = sub_1D7A133E8();
    v8[3] = sub_1D7A13440();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7CA5D0C()
{
  if (!qword_1EC9E80F8)
  {
    type metadata accessor for ReportConcernDetailBlueprintModifierFactory();
    sub_1D7CA55CC(&qword_1EC9E8100, type metadata accessor for ReportConcernDetailBlueprintModifierFactory);
    v0 = type metadata accessor for ReportConcernDetailInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E80F8);
    }
  }
}

char *sub_1D7CA5DA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v21[3] = type metadata accessor for ReportConcernDetailStyler();
  v21[4] = &off_1F52B0D28;
  v21[0] = a1;
  v11 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_selectedItemIndexPath;
  v12 = sub_1D7D283FC();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *&a5[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController____lazy_storage___sendButton] = 0;
  sub_1D799CC84(v21, &a5[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_styler]);
  v13 = &a5[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_eventHandler];
  *v13 = a2;
  *(v13 + 1) = a3;
  *&a5[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_blueprintViewController] = a4;
  v20.receiver = a5;
  v20.super_class = ObjectType;
  swift_unknownObjectRetain();
  v14 = a4;
  v15 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  *(*&v15[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_eventHandler] + 24) = &off_1F529E380;
  swift_unknownObjectWeakAssign();
  v16 = *&v15[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_blueprintViewController];
  v17 = v15;
  v18 = v16;
  sub_1D7D2B34C();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

uint64_t sub_1D7CA5F3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = off_1F529CB18;
  type metadata accessor for UserConcernConfigManager();
  result = v3();
  *a2 = result;
  return result;
}

void sub_1D7CA5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_1D7D294BC();
  sub_1D7AE6C50();
  v9 = sub_1D7D30E1C();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7CA6200;
  *(v10 + 24) = v8;
  sub_1D7D293AC();

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1D7D2934C();
  sub_1D7D293DC();
}

uint64_t sub_1D7CA6138()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CA61A4()
{
  sub_1D79EAE24();
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7CA6208()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = off_1F529CB18;
  type metadata accessor for UserConcernConfigManager();
  return v1();
}

id sub_1D7CA6324(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ToolbarIssueCoverViewLayoutAttributes();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolbarIssueCover();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 48);
  v26[2] = *(a3 + 32);
  v26[3] = v17;
  v26[4] = *(a3 + 64);
  v27 = *(a3 + 80);
  v18 = *(a3 + 16);
  v26[0] = *a3;
  v26[1] = v18;
  sub_1D7D3111C();
  *&v16[*(v13 + 28)] = a1;
  v16[*(v13 + 32)] = a2 & 1;
  v19 = objc_allocWithZone(type metadata accessor for ToolbarIssueCoverButton());
  v20 = a1;
  v21 = [v19 init];
  [v21 setIsAccessibilityElement_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v24 = sub_1D7D3031C();

  [v21 setAccessibilityHint_];

  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_1D7C0FB00(v16, v11);
  sub_1D7BD7810(v16, v21, v11);
  sub_1D7CA65E8(v11, type metadata accessor for ToolbarIssueCoverViewLayoutAttributes);
  sub_1D7CA65E8(v16, type metadata accessor for ToolbarIssueCover);
  return v21;
}

uint64_t sub_1D7CA65E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7CA6698(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7CA6704(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D7CA7194;
}

uint64_t sub_1D7CA67AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_accessoryPresentationMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1D7CA685C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_accessoryPresentationMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1D7CA6914(void *a1)
{
  v2 = v1;
  v4 = sub_1D7D2B4AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate];
  *&v2[OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_accessoryPresentationMode;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D8018], v4);
  sub_1D7CA713C();
  swift_allocObject();
  *&v2[v10] = sub_1D7D28ECC();
  if (a1)
  {
    v11 = type metadata accessor for ArticleMessageLabel();
    v16.receiver = v2;
    v16.super_class = v11;
    v12 = a1;
    v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v13 setTextAlignment_];
    v14 = v13;
    [v14 setNumberOfLines_];
    [v14 setClipsToBounds_];

    [v14 setAttributedText_];
  }

  else
  {
    sub_1D79C92AC(v9);

    type metadata accessor for ArticleMessageLabel();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

id ArticleMessageLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ArticleMessageLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleMessageLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7CA6E24(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7CA6E94(uint64_t *a1))(uint64_t, char)
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
  v6 = OBJC_IVAR____TtC12NewsArticles19ArticleMessageLabel_delegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D7AF9F74;
}

void sub_1D7CA713C()
{
  if (!qword_1EE0BB458)
  {
    sub_1D7D2B4AC();
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB458);
    }
  }
}

uint64_t ArticleViewerBlueprintRouteModel.__allocating_init(article:articleBlueprintProvider:referringURL:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = sub_1D7CA80B0(a1, v13, a3, a4, a5, v5, v11, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t ArticleViewerBlueprintRouteModel.__allocating_init(routeModel:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1D7CA81CC(a1);

  return v2;
}

uint64_t ArticleViewerBlueprintRouteModel.shownArticle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle;
  swift_beginAccess();
  return sub_1D79A88CC(v1 + v3, a1, type metadata accessor for ArticleViewerBlueprintRouteArticle);
}

uint64_t ArticleViewerBlueprintRouteModel.init(article:articleBlueprintProvider:referringURL:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1D7CA7F74(a1, v16, a3, a4, a5, v5, v11, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v18;
}

uint64_t ArticleViewerBlueprintRouteModel.init(routeModel:)(uint64_t a1)
{
  v1 = sub_1D7CA81CC(a1);

  return v1;
}

uint64_t ArticleViewerBlueprintRouteModel.provider(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D7D28B7C();
    return sub_1D799CC84(v3 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider, a3);
  }

  else
  {
    v6 = v3 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider;

    return sub_1D799CC84(v6, a3);
  }
}

uint64_t sub_1D7CA7580(uint64_t a1, uint64_t a2)
{
  v76 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v4);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v67 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v67 - v13;
  v15 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v73 = (v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v72 = (v67 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v75 = v67 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (v67 - v26);
  v28 = (a1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  v29 = *(a1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider + 24);
  v30 = *(a1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider), v29);
  (*(v30 + 8))(v29, v30);
  sub_1D7D28EDC();

  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v32 = *v27;
        v33 = v28[3];
        v34 = v28[4];
        __swift_project_boxed_opaque_existential_1(v28, v33);
        v35 = (*(v34 + 8))(v33, v34);
        v36 = *(v32 + 16);
        if (v36)
        {
          v73 = v35;
          v71 = v15;
          v77 = MEMORY[0x1E69E7CC0];
          sub_1D79A8814(0, v36, 0);
          v37 = v77;
          v38 = *(v74 + 80);
          v70 = v32;
          v75 = (v38 + 32) & ~v38;
          v39 = v32 + v75;
          v40 = *(v74 + 72);
          do
          {
            sub_1D79A88CC(v39, v14, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
            sub_1D79A88CC(v14, v10, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
            sub_1D79A89C0(v14, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
            *&v10[*(v76 + 20)] = a2;
            v77 = v37;
            v41 = *(v37 + 16);
            v42 = *(v37 + 24);

            if (v41 >= v42 >> 1)
            {
              sub_1D79A8814(v42 > 1, v41 + 1, 1);
              v37 = v77;
            }

            *(v37 + 16) = v41 + 1;
            sub_1D79A8C28(v10, v37 + v75 + v41 * v40, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
            v39 += v40;
            --v36;
          }

          while (v36);
        }

        else
        {

          v37 = MEMORY[0x1E69E7CC0];
        }

        v63 = v72;
        *v72 = v37;
        swift_storeEnumTagMultiPayload();
        sub_1D7CA83E4();
        sub_1D7D28F1C();
      }

      else
      {
        v49 = *v27;
        v48 = v27[1];
        v50 = v27[3];
        v72 = v27[2];
        v69 = v27[4];
        v70 = v50;
        v51 = v28[3];
        v52 = v28[4];
        __swift_project_boxed_opaque_existential_1(v28, v51);
        v53 = v51;
        v54 = v49;
        v55 = (*(v52 + 8))(v53, v52);
        v56 = *(v49 + 16);
        if (v56)
        {
          v67[1] = v55;
          v68 = v48;
          v71 = v15;
          v77 = MEMORY[0x1E69E7CC0];
          sub_1D79A8814(0, v56, 0);
          v57 = v77;
          v58 = *(v74 + 80);
          v67[0] = v54;
          v75 = (v58 + 32) & ~v58;
          v59 = v54 + v75;
          v60 = *(v74 + 72);
          do
          {
            sub_1D79A88CC(v59, v14, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
            sub_1D79A88CC(v14, v6, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
            sub_1D79A89C0(v14, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
            *&v6[*(v76 + 20)] = a2;
            v77 = v57;
            v61 = *(v57 + 16);
            v62 = *(v57 + 24);

            if (v61 >= v62 >> 1)
            {
              sub_1D79A8814(v62 > 1, v61 + 1, 1);
              v57 = v77;
            }

            *(v57 + 16) = v61 + 1;
            sub_1D79A8C28(v6, v57 + v75 + v61 * v60, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
            v59 += v60;
            --v56;
          }

          while (v56);

          v48 = v68;
        }

        else
        {

          v57 = MEMORY[0x1E69E7CC0];
        }

        v64 = v72;
        v63 = v73;
        *v73 = v57;
        v63[1] = v48;
        v66 = v69;
        v65 = v70;
        v63[2] = v64;
        v63[3] = v65;
        v63[4] = v66;
        swift_storeEnumTagMultiPayload();
        sub_1D7A03D20(v48, v64, v65);
        sub_1D7CA83E4();
        sub_1D7D28F1C();

        sub_1D79DA510(v48, v64, v65);
      }

      v43 = type metadata accessor for ArticleViewerBlueprint;
      v44 = v63;
    }

    else
    {
      sub_1D79A8C28(v27, v14, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      v45 = v28[3];
      v46 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v45);
      (*(v46 + 8))(v45, v46);
      v47 = v75;
      sub_1D79A88CC(v14, v75, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
      *(v47 + *(v76 + 20)) = a2;
      swift_storeEnumTagMultiPayload();
      sub_1D7CA83E4();

      sub_1D7D28F1C();

      sub_1D79A89C0(v47, type metadata accessor for ArticleViewerBlueprint);
      v43 = type metadata accessor for ArticleViewerBlueprint.ArticleItem;
      v44 = v14;
    }

    return sub_1D79A89C0(v44, v43);
  }

  if (result == 3 || result == 4)
  {
    v43 = type metadata accessor for ArticleViewerBlueprint;
    v44 = v27;
    return sub_1D79A89C0(v44, v43);
  }

  return result;
}

uint64_t ArticleViewerBlueprintRouteModel.deinit()
{
  sub_1D79A89C0(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79A8AB4(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  sub_1D79A89C0(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D7B09318(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver);
  return v0;
}

uint64_t ArticleViewerBlueprintRouteModel.__deallocating_deinit()
{
  sub_1D79A89C0(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79A8AB4(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  sub_1D79A89C0(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D7B09318(v0 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver);

  return swift_deallocClassInstance();
}

uint64_t ArticleViewerBlueprintRouteModel.didShow(article:tracker:contextBuilder:previewing:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v9, v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[1];
  v21 = *a1;
  v22 = v12;
  v14 = a1[3];
  v23 = a1[2];
  v13 = v23;
  v24 = v14;
  *v11 = v21;
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle;
  swift_beginAccess();
  sub_1D79F5B54(&v21, v20);
  sub_1D7CA8338(v11, v4 + v15);
  swift_endAccess();
  v16 = v4 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v20[0] = v21;
    v20[1] = v22;
    v20[2] = v23;
    v20[3] = v24;
    (*(v18 + 8))(v20, a2, a3, a4 & 1, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7CA7F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a7;
  v18 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  *(a6 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D79A88CC(a1, a6 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(&v16, a6 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(a3, a6 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(a6 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = a5;
  swift_unknownObjectWeakAssign();
  sub_1D79A8C28(a1, a6 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  return a6;
}

uint64_t sub_1D7CA80B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a2, a7);
  return sub_1D7CA7F74(a1, v17, a3, a4, a5, v18, a7, a8);
}

uint64_t sub_1D7CA81CC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article);
  v4 = *(a1 + 32);
  v15[0] = *(a1 + 16);
  v15[1] = v4;
  v6 = *(a1 + 64);
  v16 = *(a1 + 48);
  v5 = v16;
  v17 = v6;
  *v3 = v15[0];
  v3[1] = v4;
  v3[2] = v5;
  v3[3] = v6;
  type metadata accessor for ArticleViewerBlueprintRouteArticle();
  swift_storeEnumTagMultiPayload();
  sub_1D799CC84(a1 + 80, v1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  v7 = OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL;
  v8 = sub_1D7D2824C();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  swift_unknownObjectWeakLoadStrong();
  *(v1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = *(a1 + 192);
  swift_unknownObjectWeakAssign();
  sub_1D79F5B54(v15, v18);
  swift_unknownObjectRelease();
  v9 = (v1 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle);
  v10 = *(a1 + 32);
  v18[0] = *(a1 + 16);
  v18[1] = v10;
  v12 = *(a1 + 64);
  v19 = *(a1 + 48);
  v11 = v19;
  v20 = v12;
  *v9 = v18[0];
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  swift_storeEnumTagMultiPayload();
  sub_1D79F5B54(v18, &v14);
  return v1;
}

uint64_t sub_1D7CA8338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7CA83E4()
{
  result = qword_1EE0C7510[0];
  if (!qword_1EE0C7510[0])
  {
    type metadata accessor for ArticleViewerBlueprint(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C7510);
  }

  return result;
}

uint64_t AudioMediaServicesResetHandler.__allocating_init<A>(player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1D79A608C(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t AudioMediaServicesResetHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D7CA8738()
{
  result = qword_1EC9E8118;
  if (!qword_1EC9E8118)
  {
    sub_1D7D2802C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8118);
  }

  return result;
}

id static UIButton.rightArrowButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  if (qword_1EE0C06C0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C06C8[0];
  v3 = [qword_1EE0C06C8[0] imageByApplyingSymbolConfiguration_];
  v4 = v3;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  return v8;
}

id static UIButton.leftArrowButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  if (qword_1EE0C0628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C0630;
  v3 = [qword_1EE0C0630 imageByApplyingSymbolConfiguration_];
  v4 = v3;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  return v8;
}

id static UIButton.shareButton(tintColor:buttonBackgroundColor:)(void *a1, void *a2)
{
  sub_1D7D29DAC();
  v4 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D79EB1FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D41F60;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1D79F85FC();
  v8 = v6;
  v9 = a1;
  v10 = a2;
  v11 = sub_1D7D3062C();

  v12 = [v5 configurationWithPaletteColors_];

  v13 = [v8 configurationByApplyingConfiguration_];
  v14 = qword_1EC9E0060;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC9E92D8;
  v17 = [qword_1EC9E92D8 imageByApplyingSymbolConfiguration_];

  v18 = v17;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v17;
  [v4 setImage:v18 forState:0];

  v20 = v4;
  [v20 setShowsLargeContentViewer_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v23 = sub_1D7D3031C();

  [v20 setLargeContentTitle_];

  return v20;
}

id static UIButton.moreActionsButton.getter()
{
  sub_1D7D29DAC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  if (qword_1EE0C06A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C06B0;
  v3 = [qword_1EE0C06B0 imageByApplyingSymbolConfiguration_];
  v4 = v3;
  if (!v3)
  {
    v4 = v2;
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  v11 = v8;
  [v11 setShowsLargeContentViewer_];
  v12 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v13 = sub_1D7D3031C();

  [v11 setLargeContentTitle_];

  return v11;
}

id static UIButton.likeButton(selected:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v3 = [objc_opt_self() buttonWithType_];
  v4 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  sub_1D7D301EC();
  if (a1)
  {
    v5 = sub_1D7D301AC();
  }

  else
  {
    v5 = sub_1D7D3016C();
  }

  v6 = v5;
  v7 = [v5 imageByApplyingSymbolConfiguration_];
  v8 = v7;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v7;
  [v3 setImage:v8 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v3;
  v13 = [v11 bundleForClass_];
  sub_1D7D2811C();

  v14 = sub_1D7D3031C();

  [v12 setAccessibilityLabel_];

  return v12;
}

id static UIButton.dislikeButton.getter()
{
  v0 = [objc_opt_self() buttonWithType_];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  sub_1D7D301EC();
  v2 = sub_1D7D3015C();
  v3 = [v2 imageByApplyingSymbolConfiguration_];

  v4 = v3;
  if (!v3)
  {
    v4 = sub_1D7D3015C();
  }

  v5 = v3;
  [v0 setImage:v4 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v0;
  v9 = [v7 bundleForClass_];
  sub_1D7D2811C();

  v10 = sub_1D7D3031C();

  [v8 setAccessibilityLabel_];

  return v8;
}

id _sSo8UIButtonC12NewsArticlesE15textSizerButton9tintColor016buttonBackgroundH05TeaUI06ActionF0CSo7UIColorC_AKtFZ_0(void *a1, void *a2)
{
  sub_1D7D29DAC();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D79EB1FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D41F60;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1D79F85FC();
  v8 = v6;
  v9 = a1;
  v10 = a2;
  v11 = sub_1D7D3062C();

  v12 = [v5 configurationWithPaletteColors_];

  v13 = [v8 configurationByApplyingConfiguration_];
  v14 = qword_1EC9E0050;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC9E92C8;
  v17 = [qword_1EC9E92C8 imageByApplyingSymbolConfiguration_];

  v18 = v17;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v17;
  [v4 setImage:v18 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v4;
  v23 = [v21 bundleForClass_];
  sub_1D7D2811C();

  v24 = sub_1D7D3031C();

  [v22 setAccessibilityLabel_];

  v25 = v22;
  [v25 setShowsLargeContentViewer_];
  v26 = [v25 accessibilityLabel];

  [v25 setLargeContentTitle_];
  return v25;
}

id _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0()
{
  sub_1D7D29DAC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
  if (qword_1EE0C0650 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0C0658;
  v3 = [qword_1EE0C0658 imageByApplyingSymbolConfiguration_];
  if (!v3)
  {
    v3 = v2;
  }

  [v0 setImage:v3 forState:0];

  return v0;
}

id _sSo8UIButtonC12NewsArticlesE20moreCircleFillButton9tintColor016buttonBackgroundI05TeaUI06ActionG0CSo7UIColorC_AKtFZ_0(void *a1, void *a2)
{
  sub_1D7D29DAC();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithPointSize:5 weight:3 scale:22.0];
  sub_1D79EB1FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D41F60;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1D79F85FC();
  v8 = v6;
  v9 = a1;
  v10 = a2;
  v11 = sub_1D7D3062C();

  v12 = [v5 configurationWithPaletteColors_];

  v13 = [v8 configurationByApplyingConfiguration_];
  v14 = qword_1EC9E0040;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC9E92C0;
  v17 = [qword_1EC9E92C0 imageByApplyingSymbolConfiguration_];

  v18 = v17;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v17;
  [v4 setImage:v18 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v4;
  v23 = [v21 bundleForClass_];
  sub_1D7D2811C();

  v24 = sub_1D7D3031C();

  [v22 setAccessibilityLabel_];

  v25 = v22;
  [v25 setShowsLargeContentViewer_];
  v26 = [v21 bundleForClass_];
  sub_1D7D2811C();

  v27 = sub_1D7D3031C();

  [v25 setLargeContentTitle_];

  return v25;
}

double sub_1D7CA9CF8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D7D2E3FC();
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfRecipeFeedContentConfig();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  sub_1D7CAA094(a1, v13, type metadata accessor for EndOfRecipeFeedContentConfig);
  v14 = type metadata accessor for EndOfRecipeFeedServiceConfig();
  v15 = *(v2 + v14[6]);
  v16 = *(v6 + 16);
  v17 = v25;
  v16(v9, v2 + v14[7], v25);
  sub_1D799CC84(v2 + v14[9], &a2[v14[9]]);
  v18 = v23;
  *a2 = v23;
  sub_1D7CAA094(v13, &a2[v14[5]], type metadata accessor for EndOfRecipeFeedContentConfig);
  *&a2[v14[6]] = v15;
  v16(&a2[v14[7]], v9, v17);
  v19 = v18;
  v20 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v24 + 8))(v9, v17);
  sub_1D7CAA0FC(v13);
  result = v20;
  *&a2[v14[8]] = v20;
  return result;
}

id sub_1D7CA9EFC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1D7CA9F54@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B5E98];
  v3 = sub_1D7D2EB7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7CAA094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CAA0FC(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeFeedContentConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D7CAA158(void *a1)
{
  v31 = a1;
  v2 = sub_1D7D2836C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  sub_1D799CC84((v1 + 3), v34);
  v8 = v1[13];
  sub_1D799CC84((v1 + 8), v33);
  v9 = v1[14];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v16 = type metadata accessor for ArticleBannerAdFactory();
  v32[3] = v16;
  v32[4] = &off_1F52B4328;
  v32[0] = v15;
  type metadata accessor for ArticleBannerAdRequester();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v32, v16);
  v19 = MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (&v32[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  v17[6] = v16;
  v17[7] = &off_1F52B4328;
  v17[3] = v23;
  type metadata accessor for ArticleBannerAdPlacementFactory();
  v24 = swift_allocObject();

  swift_unknownObjectRetain();
  sub_1D7D2835C();
  v25 = sub_1D7D2834C();
  v27 = v26;
  (*(v3 + 8))(v6, v2);
  *(v24 + 16) = v25;
  *(v24 + 24) = v27;
  v17[16] = v24;
  v17[2] = v7;
  v17[13] = v8;
  sub_1D799D69C(v33, (v17 + 8));
  v28 = v31;
  v17[14] = v9;
  v17[15] = v28;
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v17;
}

uint64_t sub_1D7CAA448()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFReplicaViewerRoute()
{
  result = qword_1EC9E8140;
  if (!qword_1EC9E8140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7CAA510()
{
  sub_1D7CAA598();
  if (v0 <= 0x3F)
  {
    sub_1D7CAA60C();
    if (v1 <= 0x3F)
    {
      sub_1D7A8CA84();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D7CAA598()
{
  if (!qword_1EC9E8150)
  {
    sub_1D7D2F09C();
    sub_1D7AA16D0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E8150);
    }
  }
}

void sub_1D7CAA60C()
{
  if (!qword_1EC9E8160)
  {
    sub_1D7992238();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8160);
    }
  }
}

NewsArticles::ArticleViewerToolbarFeatureRegistrations __swiftcall ArticleViewerToolbarFeatureRegistrations.init()()
{
  v1 = v0;
  result.providers._rawValue = sub_1D7A51764(MEMORY[0x1E69E7CC0]);
  v1->providers._rawValue = result.providers._rawValue;
  return result;
}

uint64_t ArticleViewerToolbarFeatureRegistrations.register(provider:for:)(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();

  return sub_1D7CAD654(a1, a3, v3, ObjectType, a2);
}

uint64_t ToolbarSlot.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CAA780(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v233 = a2;
  v224 = a4;
  v239 = type metadata accessor for ToolbarFeatureContext();
  MEMORY[0x1EEE9AC00](v239, v6);
  v240 = &v223[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7AEC644(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v223[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v223[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v223[-v18];
  v20 = type metadata accessor for ArticleViewerPage(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v225 = &v223[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v223[-v26];
  sub_1D7CADA3C(a1, v19, sub_1D7AEC644);
  v28 = *(v21 + 48);
  if (v28(v19, 1, v20) == 1)
  {
    sub_1D7CADAAC(v19, sub_1D7AEC644);
    v29 = v234;
    p_info = (&OBJC_METACLASS____TtC12NewsArticles35AudioArticleViewerFeatureDescriptor + 32);
  }

  else
  {
    sub_1D7C4F400(v19, v27);
    sub_1D7C4F400(v27, v15);
    (*(v21 + 56))(v15, 0, 1, v20);
    v31 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_currentPage;
    v29 = v234;
    swift_beginAccess();
    sub_1D7B98D9C(v15, v29 + v31);
    swift_endAccess();
    p_info = &OBJC_METACLASS____TtC12NewsArticles35AudioArticleViewerFeatureDescriptor.info;
  }

  v32 = p_info[205];
  swift_beginAccess();
  sub_1D7CADA3C(v32 + v29, v11, sub_1D7AEC644);
  if (v28(v11, 1, v20) == 1)
  {
    sub_1D7CADAAC(v11, sub_1D7AEC644);
    v33 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots;
    swift_beginAccess();
    v34 = *(*(v29 + v33) + 16);

    sub_1D7CABDD4(v35);
LABEL_105:

    return v34 != 0;
  }

  else
  {
    v36 = v225;
    sub_1D7C4F400(v11, v225);
    v37 = v240;
    sub_1D7CADA3C(v36, v240, type metadata accessor for ArticleViewerPage);
    v258 = *(a3 + 88);
    v259 = *(a3 + 104);
    v260 = *(a3 + 120);
    v261 = *(a3 + 136);
    v256 = *(a3 + 56);
    v257 = *(a3 + 72);
    LOBYTE(v36) = *(a3 + 152);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v239;
    v40 = &v37[*(v239 + 20)];
    v41 = v259;
    *(v40 + 2) = v258;
    *(v40 + 3) = v41;
    *(v40 + 4) = v260;
    *(v40 + 10) = v261;
    v42 = v257;
    *v40 = v256;
    *(v40 + 1) = v42;
    v37[*(v39 + 24)] = v36;
    v43 = &v37[*(v39 + 28)];
    *v43 = sub_1D7CADAA4;
    v43[1] = v38;
    v235 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_providers;
    sub_1D7A66F20(&v256, &v250);
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC8];
    v232 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v237 = v44;
      v47 = *(&unk_1F529B028 + v44 + 32);
      v48 = v235;
      swift_beginAccess();
      v49 = *(v29 + v48);
      v50 = *(v49 + 16);
      v238 = v45;
      LODWORD(v236) = v47;
      if (v50 && (v51 = sub_1D7A5B954(v47), (v52 & 1) != 0))
      {
        v53 = *(*(v49 + 56) + 8 * v51);
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      swift_endAccess();
      v239 = *(v53 + 16);
      if (v239)
      {
        break;
      }

LABEL_7:

      v45 = v238;
LABEL_8:
      v44 = v237 + 1;
      v46 = v233;
      v29 = v234;
      if (v237 == 2)
      {
        v62 = 0;
        v249 = MEMORY[0x1E69E7CC8];
        v247 = MEMORY[0x1E69E7CC0];
        v248 = MEMORY[0x1E69E7CC0];
        v229 = OBJC_IVAR____TtC12NewsArticles34ArticleViewerToolbarFeatureManager_slots;
        v238 = v45;
        do
        {
          LODWORD(v63) = byte_1F529B050[v62 + 32];
          if (*(v45 + 16) && (v64 = sub_1D7A5B954(byte_1F529B050[v62 + 32]), (v65 & 1) != 0))
          {
            v66 = (*(v45 + 56) + 16 * v64);
            v67 = *v66;
            v236 = v66[1];
            swift_unknownObjectRetain();
          }

          else
          {
            v67 = 0;
            v236 = 0;
          }

          v68 = v229;
          swift_beginAccess();
          v69 = *(v29 + v68);
          v70 = *(v69 + 16);
          LODWORD(v237) = v63;
          if (v70 && (v71 = sub_1D7A5B954(v63), (v72 & 1) != 0))
          {
            v73 = (*(v69 + 56) + 32 * v71);
            v75 = *v73;
            v74 = v73[1];
            v63 = v67;
            v76 = v62;
            v77 = v45;
            v78 = v29;
            v79 = v46;
            v81 = v73[2];
            v80 = v73[3];

            v235 = v81;
            v46 = v79;
            v29 = v78;
            v45 = v77;
            v62 = v76;
            v67 = v63;
            LOBYTE(v63) = v237;
            swift_unknownObjectRetain();
          }

          else
          {
            v75 = 0;
            v74 = 0;
            v235 = 0;
            v80 = 0;
          }

          swift_endAccess();
          if (v67)
          {
            if (v75)
            {
              ObjectType = swift_getObjectType();
              v83 = v235;
              v84 = swift_getObjectType();
              v85 = v84;
              v239 = v74;
              v231 = v75;
              v227 = ObjectType;
              if (v67 == v83)
              {
                v228 = v84;
                v230 = v62;
                v86 = swift_allocObject();
                *(v86 + 16) = 0;
                v245 = v75;
                v246 = v74;
                v87 = v236;
                v232 = *(v236 + 40);

                v226 = v86;
                (v232)(&v245, v240, sub_1D7CADB74, v86, ObjectType, v87);
                swift_beginAccess();
                v88 = v245;
                if (*(v86 + 16) == 1)
                {

                  v243 = v75;
                  v244 = v74;
                  v89 = *(v80 + 8);

                  v90 = v228;
                  v228 = v80;
                  v89(v242, v90, v80);
                  v241[0] = v242[0];
                  swift_beginAccess();
                  sub_1D7CABF08(&v243, v241);
                  swift_endAccess();

                  (*(v87 + 32))(&v250, v240, v227, v87);
                  v91 = v250;
                  v92 = v251;
                  swift_beginAccess();

                  v93 = v67;
                  swift_unknownObjectRetain();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v95 = v249;
                  v243 = v249;
                  v96 = sub_1D7A5B954(v237);
                  v98 = *(v95 + 16);
                  v99 = (v97 & 1) == 0;
                  v100 = __OFADD__(v98, v99);
                  v101 = v98 + v99;
                  if (v100)
                  {
                    goto LABEL_110;
                  }

                  v102 = v97;
                  if (*(v95 + 24) >= v101)
                  {
                    v46 = v233;
                    v29 = v234;
                    v45 = v238;
                    v62 = v230;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v201 = v96;
                      sub_1D7B98174();
                      v96 = v201;
                      v45 = v238;
                    }
                  }

                  else
                  {
                    sub_1D7B936A0(v101, isUniquelyReferenced_nonNull_native);
                    v96 = sub_1D7A5B954(v237);
                    v46 = v233;
                    v29 = v234;
                    v45 = v238;
                    v62 = v230;
                    if ((v102 & 1) != (v103 & 1))
                    {
                      goto LABEL_115;
                    }
                  }

                  v185 = v93;
                  v232 = v243;
                  v186 = v237;
                  v187 = v236;
                  if (v102)
                  {
                    v188 = (*(v243 + 56) + 32 * v96);
                    *v188 = v91;
                    v188[1] = v92;
                    v188[2] = v185;
                    v188[3] = v187;
                    swift_unknownObjectRelease();

                    v189 = v232;
                  }

                  else
                  {
                    *(v243 + 8 * (v96 >> 6) + 64) |= 1 << v96;
                    v189 = v232;
                    *(*(v232 + 48) + v96) = v186;
                    v193 = (*(v189 + 56) + 32 * v96);
                    *v193 = v91;
                    v193[1] = v92;
                    v193[2] = v185;
                    v193[3] = v187;
                    v194 = *(v189 + 16);
                    v100 = __OFADD__(v194, 1);
                    v195 = v194 + 1;
                    if (v100)
                    {
                      goto LABEL_114;
                    }

                    *(v189 + 16) = v195;
                  }

                  v249 = v189;
                  swift_endAccess();
                  v243 = v91;
                  v244 = v92;
                  (*(v187 + 8))(v242, v227, v187);
                  v241[0] = v242[0];
                  swift_beginAccess();
                  sub_1D7CABF08(&v243, v241);
                  swift_endAccess();
                  swift_unknownObjectRelease();
                  sub_1D7CADB34(v231);
                }

                else
                {
                  v164 = v246;
                  swift_beginAccess();
                  swift_unknownObjectRetain();
                  v165 = swift_isUniquelyReferenced_nonNull_native();
                  v166 = v249;
                  v243 = v249;
                  v167 = sub_1D7A5B954(v237);
                  v169 = *(v166 + 16);
                  v170 = (v168 & 1) == 0;
                  v100 = __OFADD__(v169, v170);
                  v171 = v169 + v170;
                  v46 = v233;
                  v29 = v234;
                  if (v100)
                  {
                    goto LABEL_111;
                  }

                  v172 = v168;
                  v235 = v88;
                  if (*(v166 + 24) >= v171)
                  {
                    v45 = v238;
                    v62 = v230;
                    if ((v165 & 1) == 0)
                    {
                      v202 = v167;
                      sub_1D7B98174();
                      v167 = v202;
                      v45 = v238;
                    }
                  }

                  else
                  {
                    sub_1D7B936A0(v171, v165);
                    v167 = sub_1D7A5B954(v237);
                    v45 = v238;
                    v62 = v230;
                    if ((v172 & 1) != (v173 & 1))
                    {
                      goto LABEL_115;
                    }
                  }

                  v232 = v243;
                  if (v172)
                  {
                    v190 = (*(v243 + 56) + 32 * v167);
                    v191 = v236;
                    *v190 = v235;
                    v190[1] = v164;
                    v190[2] = v67;
                    v190[3] = v191;
                    swift_unknownObjectRelease();

                    v192 = v232;
                  }

                  else
                  {
                    *(v243 + 8 * (v167 >> 6) + 64) |= 1 << v167;
                    v192 = v232;
                    *(*(v232 + 48) + v167) = v237;
                    v196 = (*(v192 + 56) + 32 * v167);
                    v197 = v236;
                    *v196 = v235;
                    v196[1] = v164;
                    v196[2] = v67;
                    v196[3] = v197;
                    v198 = *(v192 + 16);
                    v100 = __OFADD__(v198, 1);
                    v199 = v198 + 1;
                    if (v100)
                    {
                      goto LABEL_113;
                    }

                    *(v192 + 16) = v199;
                  }

                  v249 = v192;
                  swift_endAccess();
                  sub_1D7CADB34(v231);

                  swift_unknownObjectRelease();
                }
              }

              else
              {
                v245 = v75;
                v246 = v74;
                v131 = *(v80 + 8);

                v228 = v80;
                v131(&v243, v85, v80);
                LOBYTE(v242[0]) = v243;
                swift_beginAccess();
                sub_1D7CABF08(&v245, v242);
                swift_endAccess();

                v132 = v227;
                (*(v236 + 32))(&v250, v240);
                v133 = v250;
                v134 = v251;
                swift_beginAccess();
                v135 = v67;
                swift_unknownObjectRetain();

                v136 = swift_isUniquelyReferenced_nonNull_native();
                v137 = v249;
                v245 = v249;
                v139 = sub_1D7A5B954(v237);
                v140 = *(v137 + 16);
                v141 = (v138 & 1) == 0;
                v142 = v140 + v141;
                if (__OFADD__(v140, v141))
                {
                  goto LABEL_108;
                }

                v143 = v138;
                if (*(v137 + 24) >= v142)
                {
                  v45 = v238;
                  if ((v136 & 1) == 0)
                  {
                    sub_1D7B98174();
                  }

                  v144 = v237;
                }

                else
                {
                  sub_1D7B936A0(v142, v136);
                  v144 = v237;
                  v145 = sub_1D7A5B954(v237);
                  v45 = v238;
                  if ((v143 & 1) != (v146 & 1))
                  {
                    goto LABEL_115;
                  }

                  v139 = v145;
                }

                v232 = v245;
                if (v143)
                {
                  v174 = (*(v245 + 56) + 32 * v139);
                  *v174 = v133;
                  v174[1] = v134;
                  v175 = v236;
                  v174[2] = v135;
                  v174[3] = v175;
                  swift_unknownObjectRelease();

                  v176 = v232;
                }

                else
                {
                  *(v245 + 8 * (v139 >> 6) + 64) |= 1 << v139;
                  v176 = v232;
                  *(*(v232 + 48) + v139) = v144;
                  v177 = (*(v176 + 56) + 32 * v139);
                  *v177 = v133;
                  v177[1] = v134;
                  v175 = v236;
                  v177[2] = v135;
                  v177[3] = v175;
                  v178 = *(v176 + 16);
                  v100 = __OFADD__(v178, 1);
                  v179 = v178 + 1;
                  if (v100)
                  {
                    goto LABEL_112;
                  }

                  *(v176 + 16) = v179;
                }

                v249 = v176;
                swift_endAccess();
                v245 = v133;
                v246 = v134;
                (*(v175 + 8))(&v243, v132, v175);
                LOBYTE(v242[0]) = v243;
                swift_beginAccess();
                sub_1D7CABF08(&v245, v242);
                swift_endAccess();
                swift_unknownObjectRelease();
                sub_1D7CADB34(v231);

                v46 = v233;
                v29 = v234;
              }
            }

            else
            {
              v117 = swift_getObjectType();
              (*(v236 + 32))(&v250, v240, v117);
              v118 = v63;
              v119 = v250;
              v120 = v251;
              swift_beginAccess();
              v239 = v67;
              swift_unknownObjectRetain();

              v121 = swift_isUniquelyReferenced_nonNull_native();
              v122 = v249;
              v245 = v249;
              v123 = v118;
              v124 = sub_1D7A5B954(v118);
              v126 = *(v122 + 16);
              v127 = (v125 & 1) == 0;
              v100 = __OFADD__(v126, v127);
              v128 = v126 + v127;
              if (v100)
              {
                goto LABEL_107;
              }

              v129 = v125;
              if (*(v122 + 24) >= v128)
              {
                if ((v121 & 1) == 0)
                {
                  v200 = v124;
                  sub_1D7B98174();
                  v124 = v200;
                }
              }

              else
              {
                sub_1D7B936A0(v128, v121);
                v124 = sub_1D7A5B954(v123);
                if ((v129 & 1) != (v130 & 1))
                {
                  goto LABEL_115;
                }
              }

              v147 = v239;
              v232 = v245;
              if (v129)
              {
                v148 = (*(v245 + 56) + 32 * v124);
                *v148 = v119;
                v148[1] = v120;
                v149 = v236;
                v148[2] = v147;
                v148[3] = v149;
                swift_unknownObjectRelease();

                v150 = v232;
              }

              else
              {
                *(v245 + 8 * (v124 >> 6) + 64) |= 1 << v124;
                v150 = v232;
                *(*(v232 + 48) + v124) = v123;
                v151 = (*(v150 + 56) + 32 * v124);
                *v151 = v119;
                v151[1] = v120;
                v149 = v236;
                v151[2] = v147;
                v151[3] = v149;
                v152 = *(v150 + 16);
                v100 = __OFADD__(v152, 1);
                v153 = v152 + 1;
                if (v100)
                {
                  goto LABEL_109;
                }

                *(v150 + 16) = v153;
              }

              v249 = v150;
              swift_endAccess();
              (*(v149 + 8))(&v243, v117, v149);
              v154 = v243;
              swift_beginAccess();
              v155 = *(v119 + 16);
              if (v155)
              {
                v230 = v62;
                v245 = MEMORY[0x1E69E7CC0];
                sub_1D7A5C778(0, v155, 0);
                v156 = v245;
                v237 = v119;
                v157 = (v119 + 40);
                do
                {
                  v158 = *(v157 - 1);
                  v159 = *v157;
                  v245 = v156;
                  v161 = *(v156 + 16);
                  v160 = *(v156 + 24);
                  v162 = v158;

                  if (v161 >= v160 >> 1)
                  {
                    sub_1D7A5C778((v160 > 1), v161 + 1, 1);
                    v156 = v245;
                  }

                  v157 += 2;
                  *(v156 + 16) = v161 + 1;
                  v163 = v156 + 32 * v161;
                  *(v163 + 32) = v162;
                  *(v163 + 40) = v159;
                  *(v163 + 48) = v154;
                  *(v163 + 56) = v120;
                  --v155;
                }

                while (v155);
                v46 = v233;
                v29 = v234;
                v62 = v230;
              }

              else
              {
                v156 = MEMORY[0x1E69E7CC0];
              }

              sub_1D79E315C(v156);
              swift_endAccess();

              swift_unknownObjectRelease();
              v45 = v238;
            }
          }

          else if (v75)
          {
            v239 = v74;
            v230 = v62;
            v104 = swift_getObjectType();
            v105 = v75;
            v106 = *(v80 + 8);

            v106(&v243, v104, v80);
            v107 = v243;
            swift_beginAccess();
            v108 = *(v105 + 16);
            v231 = v105;
            if (v108)
            {
              v228 = v80;
              v245 = MEMORY[0x1E69E7CC0];
              sub_1D7A5C778(0, v108, 0);
              v109 = v245;
              v110 = (v105 + 40);
              do
              {
                v111 = *(v110 - 1);
                v112 = *v110;
                v245 = v109;
                v114 = *(v109 + 16);
                v113 = *(v109 + 24);
                v115 = v111;

                if (v114 >= v113 >> 1)
                {
                  sub_1D7A5C778((v113 > 1), v114 + 1, 1);
                  v109 = v245;
                }

                v110 += 2;
                *(v109 + 16) = v114 + 1;
                v116 = v109 + 32 * v114;
                *(v116 + 32) = v115;
                *(v116 + 40) = v112;
                *(v116 + 48) = v107;
                *(v116 + 56) = v239;
                --v108;
              }

              while (v108);
              v46 = v233;
              v29 = v234;
            }

            else
            {
              v109 = MEMORY[0x1E69E7CC0];
            }

            sub_1D79E315C(v109);
            swift_endAccess();

            swift_beginAccess();
            v180 = sub_1D7A5B954(v237);
            v45 = v238;
            v62 = v230;
            if (v181)
            {
              v182 = v180;
              v183 = swift_isUniquelyReferenced_nonNull_native();
              v184 = v249;
              v245 = v249;
              if (!v183)
              {
                sub_1D7B98174();
                v184 = v245;
              }

              swift_unknownObjectRelease();

              sub_1D7B95504(v182, v184);
              v232 = v184;
              v249 = v184;
            }

            swift_endAccess();
            sub_1D7CADB34(v231);
          }

          ++v62;
        }

        while (v62 != 3);
        v203 = v229;
        swift_beginAccess();
        *(v29 + v203) = v232;

        if (v224)
        {
          v204 = v256;
          v205 = v257;
          swift_beginAccess();
          v206 = v248;
          swift_beginAccess();
          v207 = v247;
          v262.origin = v204;
          v262.size = v205;
          Height = CGRectGetHeight(v262);
          v209 = swift_allocObject();
          *(v209 + 2) = v29;
          *(v209 + 3) = v46;
          *(v209 + 4) = v206;
          v209[5] = Height;
          if (*(v207 + 16))
          {
            v210 = objc_opt_self();

            v211 = v46;

            [v210 begin];
            [v210 setAnimationDuration_];
            v212 = objc_allocWithZone(MEMORY[0x1E69793D0]);
            LODWORD(v213) = 1036831949;
            LODWORD(v214) = 0.25;
            LODWORD(v215) = 0.75;
            LODWORD(v216) = 1.0;
            v217 = [v212 initWithControlPoints__:v214 :{v213, v215, v216}];
            [v210 setAnimationTimingFunction_];

            v254 = sub_1D7CADB0C;
            v255 = v209;
            v250 = MEMORY[0x1E69E9820];
            v251 = 1107296256;
            v252 = sub_1D79FE25C;
            v253 = &block_descriptor_39;
            v218 = _Block_copy(&v250);

            [v210 setCompletionBlock_];
            _Block_release(v218);
            sub_1D7CACFE8(v207);
            [v210 commit];
          }

          else
          {

            v219 = v46;

            sub_1D7CACB4C(Height, v220, v219, v206);
          }
        }

        else
        {
          sub_1D7CAC018(v46);
        }

        v221 = v240;
        v34 = *(v232 + 16);
        sub_1D7CABDD4(v232);
        sub_1D7CADAAC(v221, type metadata accessor for ToolbarFeatureContext);
        sub_1D7CADAAC(v225, type metadata accessor for ArticleViewerPage);

        goto LABEL_105;
      }
    }

    v54 = 0;
    v55 = (v53 + 40);
    while (v54 < *(v53 + 16))
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      v58 = swift_getObjectType();
      v59 = *(v57 + 24);
      swift_unknownObjectRetain();
      if (v59(v240, v58, v57))
      {

        v60 = v238;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v250 = v60;
        sub_1D7B963F0(v56, v57, v236, v61);
        v45 = v250;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      ++v54;
      v55 += 2;
      if (v239 == v54)
      {
        goto LABEL_7;
      }
    }

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
    result = sub_1D7D31A2C();
    __break(1u);
  }

  return result;
}