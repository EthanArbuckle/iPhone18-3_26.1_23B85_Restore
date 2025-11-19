uint64_t sub_1D26742D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v22 - v2 + 64;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5 + 64;
  v7 = type metadata accessor for SceneConditioningImage();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD298(v6, v0 + v8, &qword_1EC6DA2C8);
  swift_endAccess();
  v9 = type metadata accessor for SketchConditioningImage();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD298(v3, v0 + v10, &qword_1EC6DA200);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v12 = *(v0 + v11);
  *(v0 + v11) = 0;

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD298(v22, v0 + v13, &qword_1EC6D9A58);
  swift_endAccess();
  v14 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
  *v14 = 0;
  v14[1] = 0;

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v16 = MEMORY[0x1E69E7CC0];
  *(v0 + v15) = MEMORY[0x1E69E7CC0];

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  swift_beginAccess();
  *(v0 + v17) = v16;

  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  *(v0 + v18) = v16;

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
  swift_beginAccess();
  *(v0 + v19) = v16;

  *(v0 + v17) = v16;

  *(v0 + v19) = v16;

  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 0;
  return result;
}

uint64_t sub_1D26745FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Prompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26784A4(a1, v7, type metadata accessor for Prompt);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D27CC840(0, v9[2] + 1, 1, v9);
    *(v2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1D27CC840(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for Prompt);
  *(v2 + v8) = v9;
  v13 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v13);
  *(&v18 - 2) = a1;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  swift_beginAccess();
  v15 = sub_1D268223C(sub_1D267850C, (&v18 - 4));
  v16 = *(*(v2 + v14) + 16);
  if (v16 < v15)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1D278CD34(v15, v16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D2674838(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for SketchConditioningImage();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PlaygroundImage();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1D2878568();
  v3[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2674954, v5, v4);
}

uint64_t sub_1D2674954()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    *(*(v0 + 56) + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  }

  v4 = *(v0 + 40);
  *(v1 + v2) = v4;

  v5 = [v4 baseImage];
  if (v5)
  {
    v6 = v5;
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 72);
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    v10 = (v8 + v9[9]);
    *v10 = 0u;
    v10[1] = 0u;
    *(v8 + v9[10]) = xmmword_1D28809A0;
    v11 = v9[11];
    v12 = sub_1D2873AA8();
    (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
    *v8 = v6;
    *(v8 + 8) = 3;
    *(v8 + 24) = 1;
    *(v8 + 16) = 0;
    *(v8 + v9[12]) = 0;
    sub_1D2871808();
    sub_1D2678580(v8, v7, type metadata accessor for PlaygroundImage);
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_1D2674CE0;
    v14 = *(v0 + 104);
    v15 = *(v0 + 56);

    return _ConditioningImageFactory.assignConditioningImage(from:to:)(v14, v15);
  }

  else
  {

    v17 = [*(v0 + 40) sketchImage];
    if (v17)
    {
      v18 = v17;
      v20 = *(v0 + 80);
      v19 = *(v0 + 88);
      v21 = *(v0 + 64);
      v22 = *(v0 + 72);
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      v23 = (v20 + v22[9]);
      *v23 = 0u;
      v23[1] = 0u;
      *(v20 + v22[10]) = xmmword_1D28809A0;
      v24 = v22[11];
      v25 = sub_1D2873AA8();
      (*(*(v25 - 8) + 56))(v20 + v24, 1, 1, v25);
      *v20 = v18;
      *(v20 + 8) = 3;
      *(v20 + 24) = 1;
      *(v20 + 16) = 0;
      *(v20 + v22[12]) = 1;
      sub_1D2871808();
      sub_1D2678580(v20, v19, type metadata accessor for PlaygroundImage);
      sub_1D26784A4(v19, v21, type metadata accessor for PlaygroundImage);
      sub_1D26762D8(v21);
      sub_1D2678444(v21, type metadata accessor for SketchConditioningImage);
      sub_1D2678444(v19, type metadata accessor for PlaygroundImage);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1D2674CE0()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D2674E00, v3, v2);
}

uint64_t sub_1D2674E00()
{
  v1 = *(v0 + 104);

  sub_1D2678444(v1, type metadata accessor for PlaygroundImage);
  v2 = [*(v0 + 40) sketchImage];
  if (v2)
  {
    v3 = v2;
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    v8 = (v5 + v7[9]);
    *v8 = 0u;
    v8[1] = 0u;
    *(v5 + v7[10]) = xmmword_1D28809A0;
    v9 = v7[11];
    v10 = sub_1D2873AA8();
    (*(*(v10 - 8) + 56))(v5 + v9, 1, 1, v10);
    *v5 = v3;
    *(v5 + 8) = 3;
    *(v5 + 24) = 1;
    *(v5 + 16) = 0;
    *(v5 + v7[12]) = 1;
    sub_1D2871808();
    sub_1D2678580(v5, v4, type metadata accessor for PlaygroundImage);
    sub_1D26784A4(v4, v6, type metadata accessor for PlaygroundImage);
    sub_1D26762D8(v6);
    sub_1D2678444(v6, type metadata accessor for SketchConditioningImage);
    sub_1D2678444(v4, type metadata accessor for PlaygroundImage);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D267502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D23C3FAC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1D22BD238(v13, &qword_1EC6E1900);
}

Swift::Void __swiftcall CreationContext.add(text:)(Swift::String text)
{
  v59 = text;
  v51 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v51);
  v1 = sub_1D2871318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v58 = sub_1D2871798();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v53 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v53);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v54 = &v50 - v19;
  (*(v2 + 56))(v14, 1, 1, v1, v18);
  v56 = v8;
  sub_1D2871778();
  v55 = v14;
  sub_1D22BD1D0(v14, v11, &unk_1EC6E1D40);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_1D22BD238(v11, &unk_1EC6E1D40);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = v59._countAndFlagsBits;
    object = v59._object;
    *(v16 + 3) = sub_1D24B63AC(qword_1ED8B0010, v59._countAndFlagsBits, v59._object);
    v16[32] = v22 & 1;
    v23 = sub_1D27E1420(countAndFlagsBits, object);
    v25 = v24;
    goto LABEL_9;
  }

  (*(v2 + 32))(v6, v11, v1);
  v26 = v6;
  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v27 = qword_1ED8B0010;
  sub_1D28712B8();
  sub_1D2436AE8();
  aBlock = sub_1D28782D8();
  v61 = v28;
  v68[0] = 12369903;
  v68[1] = 0xA300000000000000;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1D22BD06C();
  v29 = sub_1D2878FA8();
  v31 = v30;

  v32 = sub_1D24B63AC(v27, v29, v31);
  LODWORD(v51) = v33;

  v68[0] = v32;
  sub_1D2436B40();
  (*(v2 + 16))(v52, v26, v1);
  v34 = sub_1D2878AE8();
  v52 = *MEMORY[0x1E69DB5F0];
  v35 = [v34 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v68;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D2436B8C;
  *(v37 + 24) = v36;
  v64 = sub_1D2677778;
  v65 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D267502C;
  v63 = &block_descriptor_34;
  v38 = _Block_copy(&aBlock);
  sub_1D2870F78();

  [v34 enumerateAttribute:v52 inRange:0 options:v35 usingBlock:{0, v38}];

  _Block_release(v38);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    v39 = v68[0];

    *(v16 + 3) = v39;
    v16[32] = v51 & 1;
    v40 = sub_1D27E0DA0();
    v23 = sub_1D27E1420(v40, v41);
    v25 = v42;

    (*(v2 + 8))(v26, v1);
LABEL_9:
    v43 = MEMORY[0x1E69E7CC0];
    *(v16 + 1) = v23;
    *(v16 + 2) = v25;
    *(v16 + 5) = v43;
    v44 = v53;
    v45 = v57;
    v46 = v56;
    v47 = v58;
    (*(v57 + 16))(&v16[*(v53 + 36)], v56, v58);
    v16[*(v44 + 40)] = 0;
    sub_1D2879838();
    sub_1D2877F38();
    v48 = sub_1D2879818();
    (*(v45 + 8))(v46, v47);
    sub_1D22BD238(v55, &unk_1EC6E1D40);
    *v16 = v48;
    v49 = v54;
    sub_1D2678580(v16, v54, type metadata accessor for Prompt);
    sub_1D26745FC(v49);
    sub_1D2678444(v49, type metadata accessor for Prompt);
    return;
  }

  __break(1u);
}

uint64_t CreationContext.init(defaultStyle:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  v4 = type metadata accessor for SceneConditioningImage();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  v6 = type metadata accessor for SketchConditioningImage();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe) = 0;
  v7 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts) = v10;
  v11 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts) = v10;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts) = v10;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 0;
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  v13 = sub_1D2872008();
  (*(*(v13 - 8) + 32))(v1 + v12, a1, v13);
  return v1;
}

uint64_t sub_1D2675A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  if (*(*(v0 + v4) + 16))
  {
    v5 = 1;
  }

  else
  {
    v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
    swift_beginAccess();
    v5 = *(*(v0 + v6) + 16) != 0;
  }

  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v7, v3, &qword_1EC6DA200);
  v8 = type metadata accessor for SketchConditioningImage();
  v9 = (*(*(v8 - 8) + 48))(v3, 1, v8) != 1;
  sub_1D22BD238(v3, &qword_1EC6DA200);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D2878C08();
  }

  else
  {
    v13 = v9 && !v5;
  }

  return v13 & 1;
}

uint64_t sub_1D2675C1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Prompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v9 = (v1 + v8);
  v10 = sub_1D268223C(sub_1D2678620, v16);
  v11 = *(*(v2 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_1D278CD34(v10, v11);
    swift_endAccess();
    sub_1D26784A4(a1, v7, type metadata accessor for Prompt);
    a1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
    swift_beginAccess();
    v9 = *(v2 + a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + a1) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_1D27CC840(0, v9[2] + 1, 1, v9);
  *(v2 + a1) = v9;
LABEL_3:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1D27CC840(v13 > 1, v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for Prompt);
  *(v2 + a1) = v9;
  return swift_endAccess();
}

uint64_t sub_1D2675E30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D2675E88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedPrompt();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26784A4(a1, v7, type metadata accessor for CuratedPrompt);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D27CCA98(0, v9[2] + 1, 1, v9);
    *(v2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1D27CCA98(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for CuratedPrompt);
  *(v2 + v8) = v9;
  v13 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v13);
  *(&v18 - 2) = a1;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
  swift_beginAccess();
  v15 = sub_1D2682594(sub_1D2677A5C, (&v18 - 4));
  v16 = *(*(v2 + v14) + 16);
  if (v16 < v15)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1D278CC2C(v15, v16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D26760C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedPrompt();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v9 = (v1 + v8);
  v10 = sub_1D2682594(sub_1D2678604, v16);
  v11 = *(*(v2 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_1D278CC2C(v10, v11);
    swift_endAccess();
    sub_1D26784A4(a1, v7, type metadata accessor for CuratedPrompt);
    a1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
    swift_beginAccess();
    v9 = *(v2 + a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + a1) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_1D27CCA98(0, v9[2] + 1, 1, v9);
  *(v2 + a1) = v9;
LABEL_3:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1D27CCA98(v13 > 1, v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for CuratedPrompt);
  *(v2 + a1) = v9;
  return swift_endAccess();
}

uint64_t sub_1D26762D8(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for SketchConditioningImage();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v29 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v17, v16, &qword_1EC6DA200);
  v33 = *(v3 + 48);
  v18 = v33(v16, 1, v2);
  v19 = v16;
  v20 = v3;
  sub_1D22BD238(v19, &qword_1EC6DA200);
  if (v18 != 1)
  {
    sub_1D26784A4(v36, v14, type metadata accessor for SketchConditioningImage);
    v30 = v3;
    (*(v3 + 56))(v14, 0, 1, v2);
    v21 = *(v34 + 48);
    v34 = v17;
    sub_1D22BD1D0(v1 + v17, v6, &qword_1EC6DA200);
    sub_1D22BD1D0(v14, &v6[v21], &qword_1EC6DA200);
    v22 = v33;
    if (v33(v6, 1, v2) == 1)
    {
      sub_1D22BD238(v14, &qword_1EC6DA200);
      v23 = v22(&v6[v21], 1, v2);
      v20 = v30;
      if (v23 == 1)
      {
        sub_1D22BD238(v6, &qword_1EC6DA200);
        v17 = v34;
        goto LABEL_9;
      }
    }

    else
    {
      v24 = v32;
      sub_1D22BD1D0(v6, v32, &qword_1EC6DA200);
      if (v22(&v6[v21], 1, v2) != 1)
      {
        v27 = v31;
        sub_1D2678580(&v6[v21], v31, type metadata accessor for SketchConditioningImage);
        type metadata accessor for PlaygroundImage();
        v28 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        sub_1D2678444(v27, type metadata accessor for SketchConditioningImage);
        sub_1D22BD238(v14, &qword_1EC6DA200);
        sub_1D2678444(v24, type metadata accessor for SketchConditioningImage);
        sub_1D22BD238(v6, &qword_1EC6DA200);
        v20 = v30;
        v17 = v34;
        if (v28)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      sub_1D22BD238(v14, &qword_1EC6DA200);
      sub_1D2678444(v24, type metadata accessor for SketchConditioningImage);
      v20 = v30;
    }

    sub_1D22BD238(v6, &qword_1EC6DF7B0);
    v17 = v34;
LABEL_8:
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  }

LABEL_9:
  v25 = v35;
  sub_1D26784A4(v36, v35, type metadata accessor for SketchConditioningImage);
  (*(v20 + 56))(v25, 0, 1, v2);
  swift_beginAccess();
  sub_1D22BD298(v25, v1 + v17, &qword_1EC6DA200);
  return swift_endAccess();
}

uint64_t sub_1D26767F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-v2];
  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5)
  {
    [v5 setSketchImage_];
  }

  v6 = type metadata accessor for SketchConditioningImage();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD298(v3, v0 + v7, &qword_1EC6DA200);
  return swift_endAccess();
}

uint64_t sub_1D2676930(uint64_t a1)
{
  v2 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for SceneConditioningImage();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v44 = v5;
  v47 = v20;
  if (v22)
  {
    [v22 baseImageRatio];
    sub_1D27FCA74(v20, v23);
    v20[*(v15 + 20)] = *(a1 + *(v15 + 20));
  }

  else
  {
    sub_1D26784A4(a1, v20, type metadata accessor for SceneConditioningImage);
  }

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v24, v14, &qword_1EC6DA2C8);
  v25 = *(v16 + 48);
  v26 = v25(v14, 1, v15);
  sub_1D22BD238(v14, &qword_1EC6DA2C8);
  if (v26 != 1)
  {
    v27 = v45;
    sub_1D26784A4(v47, v45, type metadata accessor for SceneConditioningImage);
    v40 = v16;
    (*(v16 + 56))(v27, 0, 1, v15);
    v28 = v44;
    v29 = *(v43 + 48);
    sub_1D22BD1D0(v2 + v24, v44, &qword_1EC6DA2C8);
    sub_1D22BD1D0(v27, v28 + v29, &qword_1EC6DA2C8);
    if (v25(v28, 1, v15) == 1)
    {
      sub_1D22BD238(v27, &qword_1EC6DA2C8);
      if (v25((v28 + v29), 1, v15) == 1)
      {
LABEL_7:
        sub_1D22BD238(v28, &qword_1EC6DA2C8);
LABEL_18:
        v16 = v40;
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v30 = v42;
    sub_1D22BD1D0(v28, v42, &qword_1EC6DA2C8);
    if (v25((v28 + v29), 1, v15) == 1)
    {
      sub_1D22BD238(v45, &qword_1EC6DA2C8);
      sub_1D2678444(v30, type metadata accessor for SceneConditioningImage);
LABEL_10:
      v31 = &qword_1EC6DF7B8;
LABEL_17:
      sub_1D22BD238(v28, v31);
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
      goto LABEL_18;
    }

    v32 = v41;
    sub_1D2678580(v28 + v29, v41, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage();
    v33 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v45, &qword_1EC6DA2C8);
    if (v33)
    {
      v34 = *(v15 + 20);
      v35 = *(v30 + v34);
      v36 = *(v32 + v34);
      sub_1D2678444(v32, type metadata accessor for SceneConditioningImage);
      if (v35 == 2)
      {
        if (v36 == 2)
        {
LABEL_22:
          sub_1D2678444(v30, type metadata accessor for SceneConditioningImage);
          goto LABEL_7;
        }
      }

      else if (v36 != 2 && ((v36 ^ v35) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D2678444(v32, type metadata accessor for SceneConditioningImage);
    }

    sub_1D2678444(v30, type metadata accessor for SceneConditioningImage);
    v31 = &qword_1EC6DA2C8;
    goto LABEL_17;
  }

LABEL_19:
  v37 = v46;
  sub_1D2678580(v47, v46, type metadata accessor for SceneConditioningImage);
  (*(v16 + 56))(v37, 0, 1, v15);
  swift_beginAccess();
  sub_1D22BD298(v37, v2 + v24, &qword_1EC6DA2C8);
  return swift_endAccess();
}

uint64_t sub_1D2676F44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-v5];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v7, v6, &qword_1EC6DA2C8);
  v8 = type metadata accessor for SceneConditioningImage();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  sub_1D22BD238(v6, &qword_1EC6DA2C8);
  if (v10 != 1)
  {
    goto LABEL_5;
  }

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12)
  {
    v13 = [v12 baseImage];
    if (v13)
    {

LABEL_5:
      *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
    }
  }

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15)
  {
    [v15 setBaseImage_];
  }

  (*(v9 + 56))(v4, 1, 1, v8);
  swift_beginAccess();
  sub_1D22BD298(v4, v0 + v7, &qword_1EC6DA2C8);
  return swift_endAccess();
}

uint64_t sub_1D2677178()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v4, &v13, &qword_1EC6D9A58);
  v5 = *(&v14 + 1);
  sub_1D22BD238(&v13, &qword_1EC6D9A58);
  if (v5)
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  }

  sub_1D22BD1D0(v0 + v4, &v13, &qword_1EC6D9A58);
  if (*(&v14 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    v6 = type metadata accessor for PersonConditioningImage();
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v3, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_1D22BD238(&v13, &qword_1EC6D9A58);
    v6 = type metadata accessor for PersonConditioningImage();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  }

  type metadata accessor for PersonConditioningImage();
  v8 = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_1D22BD238(v3, &qword_1EC6D9A40);
  if (!v8)
  {
    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v10 = *(v0 + v9);
    if (v10)
    {
      [v10 setBaseImage_];
    }
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  swift_beginAccess();
  sub_1D22BD298(&v13, v0 + v4, &qword_1EC6D9A58);
  return swift_endAccess();
}

uint64_t sub_1D2677418(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = sub_1D2871F98();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v9 == sub_1D2871F98() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1D2879618();

    if ((v14 & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
    }
  }

  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  return swift_endAccess();
}

uint64_t CreationContext.deinit()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage, &qword_1EC6DA2C8);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage, &qword_1EC6DA200);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson, &qword_1EC6D9A58);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone, &unk_1EC6E33C0);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CreationContext.__deallocating_deinit()
{
  CreationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t type metadata accessor for CreationContext()
{
  result = qword_1ED8A40C8;
  if (!qword_1ED8A40C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D267780C()
{
  sub_1D2677A08(319, qword_1ED8A6870, type metadata accessor for SceneConditioningImage);
  if (v0 <= 0x3F)
  {
    sub_1D2677A08(319, &qword_1ED8A6748, type metadata accessor for SketchConditioningImage);
    if (v1 <= 0x3F)
    {
      sub_1D2677A08(319, &qword_1ED8A6E30, type metadata accessor for ImageGenerationPerson.SkinTone);
      if (v2 <= 0x3F)
      {
        sub_1D2872008();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D2677A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2677A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v61 - v11;
  v68 = type metadata accessor for PhotosPersonAsset();
  v66 = *(v68 - 8);
  v12 = MEMORY[0x1EEE9AC00](v68);
  v62 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v63 = (&v61 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - v21;
  v23 = type metadata accessor for PersonConditioningImage();
  v71 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v61 - v30;
  v74[3] = a3;
  v74[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v69 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession;
  v32 = &unk_1ED8B0000;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession))
  {
    goto LABEL_17;
  }

  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(a2 + v33, v72, &qword_1EC6D9A58);
  v34 = v73;
  v32 = &unk_1ED8B0000;
  sub_1D22BD238(v72, &qword_1EC6D9A58);
  if (!v34)
  {
    goto LABEL_17;
  }

  sub_1D22BD1D0(a2 + v33, v72, &qword_1EC6D9A58);
  v35 = v71;
  v36 = (v71 + 56);
  if (!v73)
  {
    sub_1D22BD238(v72, &qword_1EC6D9A58);
    (*v36)(v20, 1, 1, v23);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v37 = swift_dynamicCast();
  v61 = *(v35 + 56);
  v61(v20, v37 ^ 1u, 1, v23);
  if ((*(v35 + 48))(v20, 1, v23) == 1)
  {
    goto LABEL_9;
  }

  sub_1D2678580(v20, v29, type metadata accessor for PersonConditioningImage);
  sub_1D22D7044(v74, v72);
  v20 = v65;
  if (!swift_dynamicCast())
  {
    sub_1D2678444(v29, type metadata accessor for PersonConditioningImage);
    v61(v20, 1, 1, v23);
LABEL_9:
    sub_1D22BD238(v20, &qword_1EC6D9A40);
    sub_1D22BD1D0(a2 + v33, v72, &qword_1EC6D9A58);
    v41 = v66;
    v42 = (v66 + 56);
    v43 = v67;
    v44 = v68;
    if (v73)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v45 = swift_dynamicCast();
      v46 = *(v41 + 56);
      v46(v43, v45 ^ 1u, 1, v44);
      if ((*(v41 + 48))(v43, 1, v44) != 1)
      {
        v47 = v63;
        sub_1D2678580(v43, v63, type metadata accessor for PhotosPersonAsset);
        sub_1D22D7044(v74, v72);
        v48 = v64;
        if (!swift_dynamicCast())
        {
          sub_1D2678444(v47, type metadata accessor for PhotosPersonAsset);
          v50 = 1;
          v46(v48, 1, 1, v44);
          sub_1D22BD238(v48, &unk_1EC6DDDC0);
          goto LABEL_16;
        }

        v46(v48, 0, 1, v44);
        v49 = v62;
        sub_1D2678580(v48, v62, type metadata accessor for PhotosPersonAsset);
        v38 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v47, v49);
        sub_1D2678444(v49, type metadata accessor for PhotosPersonAsset);
        v39 = v47;
        v40 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D22BD238(v72, &qword_1EC6D9A58);
      (*v42)(v43, 1, 1, v44);
    }

    sub_1D22BD238(v43, &unk_1EC6DDDC0);
    v50 = 1;
    goto LABEL_16;
  }

  v61(v20, 0, 1, v23);
  sub_1D2678580(v20, v26, type metadata accessor for PersonConditioningImage);
  v38 = sub_1D26B94BC(v29, v26);
  sub_1D2678444(v26, type metadata accessor for PersonConditioningImage);
  v39 = v29;
  v40 = type metadata accessor for PersonConditioningImage;
LABEL_13:
  sub_1D2678444(v39, v40);
  v50 = v38 ^ 1;
LABEL_16:
  *(a2 + v69) = v50 & 1;
  v32 = &unk_1ED8B0000;
LABEL_17:
  sub_1D22D7044(v74, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v51 = swift_dynamicCast();
  v52 = *(v71 + 56);
  if (v51)
  {
    v52(v22, 0, 1, v23);
    v53 = v22;
    v54 = v70;
    sub_1D2678580(v53, v70, type metadata accessor for PersonConditioningImage);
    v55 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v56 = *(a2 + v55);
    if (v56)
    {
      swift_endAccess();
      v57 = v56;
      v58 = sub_1D262AD28();
      [v57 setBaseImage_];

      sub_1D2678444(v54, type metadata accessor for PersonConditioningImage);
    }

    else
    {
      sub_1D2678444(v54, type metadata accessor for PersonConditioningImage);
      swift_endAccess();
    }
  }

  else
  {
    v52(v22, 1, 1, v23);
    sub_1D22BD238(v22, &qword_1EC6D9A40);
  }

  sub_1D22D7044(v74, v72);
  v59 = v32[61];
  swift_beginAccess();
  sub_1D22BD298(v72, a2 + v59, &qword_1EC6D9A58);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_1D26783EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D2678444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D26784A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2678528(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 8) == *(v2 + 8) && *(a1 + 16) == *(v2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D2678580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D267863C(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = result + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v20 = result;
    v21 = a2;
    while (v6 < *(v3 + 16))
    {
      sub_1D22D7044(v7, v25);
      v9 = sub_1D268154C(v25, v5);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_0(v25);

        goto LABEL_15;
      }

      if (v9)
      {
        sub_1D227268C(v25, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8528(0, *(v8 + 16) + 1, 1);
          v8 = v26;
        }

        v11 = v4;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D23D8528((v12 > 1), v13 + 1, 1);
        }

        v14 = v23;
        v15 = v24;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
        MEMORY[0x1EEE9AC00](v16);
        v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_1D2564390(v13, v18, &v26, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_0(v22);
        v8 = v26;
        v4 = v11;
        v3 = v20;
        v5 = v21;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v25);
      }

      ++v6;
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1D267885C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38A1C30](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      sub_1D2870F78();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1D2879368();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1D2678970(void (*a1)(void *), uint64_t a2)
{
  v4 = v2;
  v24[5] = a2;
  v23 = a1;
  v5 = sub_1D2871908();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7F8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1D22BD1D0(v4, v10, &qword_1EC6DF7F0);
  v14 = sub_1D2871988();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, v10, v14);
  sub_1D26875E8(&unk_1ED8A6C50, MEMORY[0x1E6969B50]);
  sub_1D2878868();
  (*(v15 + 8))(v10, v14);
  v16 = (v22 + 8);
  do
  {
    sub_1D2878818();
    sub_1D26875E8(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
    v17 = sub_1D2877F98();
    (*v16)(v7, v5);
    if (v17)
    {
      break;
    }

    sub_1D26875E8(&qword_1EC6D8BC0, MEMORY[0x1E6969B50]);
    sub_1D2877F58();
    v18 = sub_1D28788B8();
    v20 = *v19;
    v18(v24, 0);
    v24[0] = v20;
    v23(v24);
  }

  while (!v3);
  return sub_1D22BD238(v13, &qword_1EC6DF7F8);
}

uint64_t sub_1D2678CF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[0] = a1;
  v24[1] = a2;
  v26 = sub_1D2871908();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  (*(v9 + 16))(v11, v4, v8, v13);
  v16 = MEMORY[0x1E6969B50];
  sub_1D26875E8(&qword_1ED8A6C60, MEMORY[0x1E6969B50]);
  sub_1D2878318();
  sub_1D26875E8(&unk_1ED8A6C50, v16);
  v17 = (v5 + 8);
  do
  {
    sub_1D2878868();
    sub_1D26875E8(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
    v18 = v26;
    v19 = sub_1D2877F98();
    (*v17)(v7, v18);
    if (v19)
    {
      break;
    }

    v20 = sub_1D28788B8();
    v22 = *v21;
    v20(v25, 0);
    sub_1D2878878();
    v25[0] = v22;
    (v24[0])(v25);
  }

  while (!v3);
  return sub_1D22BD238(v15, &unk_1EC6E1920);
}

uint64_t sub_1D267901C(uint64_t a1)
{
  v2 = type metadata accessor for Prompt(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D8528(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for Prompt);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D8528((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for Prompt);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for Prompt);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D2679220(uint64_t a1)
{
  v2 = type metadata accessor for CuratedPrompt();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D8528(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for CuratedPrompt);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D8528((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for CuratedPrompt);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D2679424(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonAsset();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D85A8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for PhotosPersonAsset);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D85A8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for PhotosPersonAsset;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for PhotosPersonAsset);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D26795F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D23D85E8(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1D22D7044(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D85E8((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D227268C(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D267972C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D23D8528(0, v1, 0);
    v4 = a1 + 32;
    v2 = v19;
    do
    {
      sub_1D22D7044(v4, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      swift_dynamicCast();
      v19 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D8528((v5 > 1), v6 + 1, 1);
      }

      v7 = v17;
      v8 = v18;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x1EEE9AC00](v9);
      v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v12 + 16))(v11);
      sub_1D2564390(v6, v11, &v19, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v2 = v19;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D2679904(uint64_t a1)
{
  v2 = sub_1D2872A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D23D86AC(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D23D86AC((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for GeneratedImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_1D227268C(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1D2679AD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D86AC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D38A1C30](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D23D86AC((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_1D2872E18();
        v15 = &protocol witness table for GenerativePlayground.PreviewRepresentation;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D227268C(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        sub_1D2870F78();
        if (v11 >= v12 >> 1)
        {
          sub_1D23D86AC((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_1D2872E18();
        v15 = &protocol witness table for GenerativePlayground.PreviewRepresentation;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1D227268C(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2679C88(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D23D870C(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D23D870C((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D23C3FAC(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D2679E34(uint64_t a1)
{
  v2 = type metadata accessor for CharacterAsset();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D88D8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for CharacterAsset);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D88D8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_1F4DCE510;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for CharacterAsset);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D267A004(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D23D870C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1D2564D70(v4, v8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D870C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D23C3FAC(&v9, (v2 + 32 * v6 + 32));
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1D267A118(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D2879368();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D870C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1D38A1C30](i, a1);
        sub_1D22BCFD0(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D23D870C((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1D23C3FAC(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1D22BCFD0(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D23D870C((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1D23C3FAC(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D267A318(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D23D8AE0(0, v1, 0);
    v4 = a1 + 40;
    v2 = v12;
    do
    {
      v5 = *(v4 - 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABB0);
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D23D8AE0((v6 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D267A454(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1D23D81B8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0, a1);
    result = sub_1D2878088();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1D2878088();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D267A600@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v448 = a2;
  v462 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v409 = &v395 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v417 = &v395 - v8;
  v9 = type metadata accessor for SketchConditioningImage();
  v418 = *(v9 - 8);
  v419 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v402 = &v395 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v410 = &v395 - v12;
  v415 = sub_1D2873CB8();
  v412 = *(v415 - 8);
  MEMORY[0x1EEE9AC00](v415);
  v428 = &v395 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v424 = &v395 - v15;
  v16 = type metadata accessor for PhotosPersonImage();
  v422 = *(v16 - 8);
  v423 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v452 = (&v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v438 = &v395 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v433 = &v395 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v440 = &v395 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v416 = &v395 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v430 = &v395 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v404 = &v395 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v420 = &v395 - v31;
  v32 = type metadata accessor for SceneConditioningImage();
  v435 = *(v32 - 8);
  v436 = v32;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v408 = &v395 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v427 = &v395 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v406 = &v395 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v461 = &v395 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v421 = &v395 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v405 = &v395 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v459 = &v395 - v45;
  v460 = type metadata accessor for PhotosPersonAsset();
  v442 = *(v460 - 8);
  v46 = MEMORY[0x1EEE9AC00](v460);
  v411 = &v395 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v441 = (&v395 - v49);
  MEMORY[0x1EEE9AC00](v48);
  v458 = (&v395 - v50);
  v465 = type metadata accessor for Prompt(0);
  v443 = *(v465 - 8);
  v51 = MEMORY[0x1EEE9AC00](v465);
  v407 = &v395 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v401 = &v395 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v444 = &v395 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  *&v445 = &v395 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v434 = &v395 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v454 = &v395 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v464 = &v395 - v63;
  v439 = type metadata accessor for CharacterAsset();
  v437 = *(v439 - 8);
  v64 = MEMORY[0x1EEE9AC00](v439);
  v425 = &v395 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v426 = &v395 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v413 = &v395 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7C0);
  v70 = MEMORY[0x1EEE9AC00](v69 - 8);
  v429 = &v395 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v432 = &v395 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v447 = &v395 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  v76 = MEMORY[0x1EEE9AC00](v75 - 8);
  v414 = &v395 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v450 = &v395 - v78;
  v455 = type metadata accessor for CuratedPrompt();
  v467 = *(v455 - 8);
  v79 = MEMORY[0x1EEE9AC00](v455);
  v403 = &v395 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v466 = &v395 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v431 = &v395 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v446 = (&v395 - v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v87 = MEMORY[0x1EEE9AC00](v86 - 8);
  v89 = &v395 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v449 = &v395 - v90;
  *&v453 = sub_1D2872008();
  v456 = *(v453 - 8);
  v91 = MEMORY[0x1EEE9AC00](v453);
  v93 = &v395 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v91);
  v96 = &v395 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v395 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v102 = &v395 - v101;
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v395 - v103;
  v105 = *(v3 + 32);
  v451 = a1;
  v468 = a1;
  sub_1D2870F68();
  sub_1D274B7E8(sub_1D2682164, v105, &v489);

  if (*(&v490 + 1))
  {
    sub_1D227268C(&v489, &v492);
    sub_1D267FBA8(&v492);
    result = __swift_destroy_boxed_opaque_existential_0(&v492);
    v107 = v462;
    *(v462 + 32) = 0;
    *v107 = 0u;
    v107[1] = 0u;
    return result;
  }

  v399 = v99;
  v400 = v102;
  v396 = v89;
  v397 = v93;
  v398 = v96;
  v463 = 0;
  v457 = v3;
  sub_1D22BD238(&v489, &unk_1EC6E1D30);
  v108 = v451;
  sub_1D22D7044(v451, &v492);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v109 = v449;
  v110 = v453;
  v111 = swift_dynamicCast();
  v112 = v456;
  v113 = v456[7];
  v395 = v113;
  if (v111)
  {
    v113(v109, 0, 1, v110);
    (v112[4])(v104, v109, v110);
    sub_1D267FD74();
    (v112[1])(v104, v110);
  }

  else
  {
    v113(v109, 1, 1, v110);
    sub_1D22BD238(v109, &qword_1EC6D9A30);
  }

  v114 = v452;
  v115 = v455;
  v116 = v400;
  v117 = v450;
  v497 = 0u;
  memset(v498, 0, 25);
  v496 = 0u;
  sub_1D22D7044(v108, &v492);
  v118 = swift_dynamicCast();
  v119 = v467;
  v120 = *(v467 + 56);
  if (v118)
  {
    v120(v117, 0, 1, v115);
    v121 = v446;
    sub_1D2687494(v117, v446, type metadata accessor for CuratedPrompt);
    v122 = *(v457 + 40);
    v123 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v128 = v456;
    v124 = v456[2];
    v465 = v122;
    v124(v116, v122 + v123, v110);
    v125 = v399;
    sub_1D2871FC8();
    LOBYTE(v123) = MEMORY[0x1D389AA00](v116, v125);
    v126 = *(v128 + 8);
    v126(v125, v110);
    v126(v116, v110);
    v127 = v462;
    LOBYTE(v128) = v448;
    if (v123)
    {
      sub_1D23C75E0();
      v129 = v447;
      sub_1D2437F60(v121, v447);
    }

    else
    {
      v177 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
      v129 = v447;
      (*(*(v177 - 8) + 56))(v447, 1, 1, v177);
    }

    if (*(v121[6] + 65) != 1)
    {
      v197 = v128;
      v198 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
      v199 = v465;
      swift_beginAccess();
      v200 = *(v199 + v198);
      v201 = *(v200 + 16);
      sub_1D2870F68();
      if (v201)
      {
        v202 = 0;
        v203 = v466;
        while (1)
        {
          if (v202 >= *(v200 + 16))
          {
            __break(1u);
            goto LABEL_206;
          }

          sub_1D26874FC(v200 + ((*(v467 + 80) + 32) & ~*(v467 + 80)) + *(v467 + 72) * v202, v203, type metadata accessor for CuratedPrompt);
          if (*(*(v203 + 48) + 65) != 1)
          {
            break;
          }

          ++v202;
          sub_1D2687564(v203, type metadata accessor for CuratedPrompt);
          if (v201 == v202)
          {
            goto LABEL_59;
          }
        }

        v251 = v431;
        sub_1D2687494(v203, v431, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v251);
        *(&v493 + 1) = v455;
        *&v494[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v492);
        sub_1D26874FC(v251, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
        *(v494 + 8) = xmmword_1D28830D0;
        BYTE8(v494[1]) = 6;
        sub_1D26821CC(&v492, &v496);
        v253 = v432;
        sub_1D22BD1D0(v129, v432, &qword_1EC6DF7C0);
        v254 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
        if ((*(*(v254 - 8) + 48))(v253, 1, v254) == 1)
        {
          sub_1D22BD238(v253, &qword_1EC6DF7C0);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v294 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization;
            v295 = v253;
          }

          else
          {
            v335 = v413;
            sub_1D2687494(v253, v413, type metadata accessor for CharacterAsset);
            sub_1D284580C(v335, v465);
            v294 = type metadata accessor for CharacterAsset;
            v295 = v335;
          }

          sub_1D2687564(v295, v294);
        }

        sub_1D2675E88(v121);
        sub_1D2687564(v251, type metadata accessor for CuratedPrompt);
        sub_1D22BD238(v129, &qword_1EC6DF7C0);
        sub_1D2687564(v121, type metadata accessor for CuratedPrompt);
      }

      else
      {
LABEL_59:

        *(&v490 + 1) = v455;
        *&v491[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
        v204 = __swift_allocate_boxed_opaque_existential_1(&v489);
        sub_1D26874FC(v121, v204, type metadata accessor for CuratedPrompt);
        sub_1D267FF1C(&v489, v129, &v492);
        sub_1D22BD238(v129, &qword_1EC6DF7C0);
        sub_1D2687564(v121, type metadata accessor for CuratedPrompt);
        __swift_destroy_boxed_opaque_existential_0(&v489);
        sub_1D26821CC(&v492, &v496);
      }

      LOBYTE(v128) = v197;
      v127 = v462;
      goto LABEL_151;
    }

    *(&v490 + 1) = v115;
    *&v491[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
    v178 = __swift_allocate_boxed_opaque_existential_1(&v489);
    sub_1D26874FC(v121, v178, type metadata accessor for CuratedPrompt);
    sub_1D267FF1C(&v489, v129, &v492);
    sub_1D22BD238(v129, &qword_1EC6DF7C0);
    sub_1D2687564(v121, type metadata accessor for CuratedPrompt);
    __swift_destroy_boxed_opaque_existential_0(&v489);
    v179 = &v492;
    goto LABEL_48;
  }

  v120(v117, 1, 1, v115);
  sub_1D22BD238(v117, &qword_1EC6DA210);
  sub_1D22D7044(v108, &v492);
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if (swift_dynamicCast())
  {
    sub_1D227268C(&v489, &v473);
    v130 = v457;
    v131 = *(v457 + 40);
    v132 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
    swift_beginAccess();
    *&v453 = v132;
    v133 = *(v131 + v132);
    v134 = *(v133 + 16);
    v135 = v442;
    v136 = v461;
    if (!v134)
    {
LABEL_61:
      sub_1D22BD1D0(&v496, &v492, &qword_1EC6DF7C8);
      v205 = *(&v493 + 1);
      sub_1D22BD238(&v492, &qword_1EC6DF7C8);
      v127 = v462;
      LOBYTE(v128) = v448;
      if (!v205)
      {
        v206 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
        swift_beginAccess();
        sub_1D22BD1D0(v131 + v206, &v492, &qword_1EC6D9A58);
        if (*(&v493 + 1))
        {
          sub_1D227268C(&v492, &v489);
          v207 = *(&v490 + 1);
          v208 = *&v491[0];
          v209 = __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));
          *(&v493 + 1) = v207;
          *&v494[0] = *(v208 + 8);
          v210 = __swift_allocate_boxed_opaque_existential_1(&v492);
          (*(*(v207 - 8) + 16))(v210, v209, v207);
          *(v494 + 8) = xmmword_1D2883050;
          BYTE8(v494[1]) = 6;
          sub_1D26821CC(&v492, &v496);
          __swift_destroy_boxed_opaque_existential_0(&v489);
        }

        else
        {
          sub_1D22BD238(&v492, &qword_1EC6D9A58);
          v296 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
          swift_beginAccess();
          v297 = v420;
          sub_1D22BD1D0(v131 + v296, v420, &qword_1EC6DA2C8);
          v298 = v436;
          if ((*(v435 + 48))(v297, 1, v436) == 1)
          {
            sub_1D22BD238(v297, &qword_1EC6DA2C8);
          }

          else
          {
            sub_1D2687494(v297, v136, type metadata accessor for SceneConditioningImage);
            *(&v493 + 1) = v298;
            *&v494[0] = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage);
            v338 = __swift_allocate_boxed_opaque_existential_1(&v492);
            sub_1D26874FC(v136, v338, type metadata accessor for SceneConditioningImage);
            *(v494 + 8) = xmmword_1D28830A0;
            BYTE8(v494[1]) = 6;
            sub_1D26821CC(&v492, &v496);
            sub_1D2676F44();
            sub_1D2687564(v136, type metadata accessor for SceneConditioningImage);
          }
        }
      }

      v339 = v475;
      v340 = v476;
      v341 = __swift_project_boxed_opaque_existential_1(&v473, v475);
      sub_1D2682EFC(v341, v130, v339, v340);
      __swift_destroy_boxed_opaque_existential_0(&v473);
      goto LABEL_151;
    }

    v137 = v443;
    v450 = ((*(v443 + 80) + 32) & ~*(v443 + 80));
    v138 = &v450[v133];
    v451 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
    v456 = v133;
    sub_1D2870F68();
    v139 = v138;
    v128 = 0;
    v467 = *(v137 + 72);
    v446 = (v135 + 56);
    v455 = v134 - 1;
    v445 = xmmword_1D2883080;
    v140 = v460;
    v114 = v459;
    v127 = v458;
    v141 = v464;
    v452 = v131;
    while (1)
    {
      v466 = v139;
      sub_1D26874FC(v139, v141, type metadata accessor for Prompt);
      sub_1D2680C6C(v141, &v489);
      v493 = v490;
      v492 = v489;
      v494[0] = v491[0];
      v494[1] = v491[1];
      v142 = *(&v490 + 1);
      v472 = v490;
      v469 = v491[0];
      v470 = v491[1];
      v471 = v489;
      if (*(&v490 + 1))
      {
        sub_1D22D7044(&v473, v495);
        if (swift_dynamicCast())
        {
          (*v446)(v114, 0, 1, v140);
          sub_1D2687494(v114, v127, type metadata accessor for PhotosPersonAsset);
          v484 = v471;
          v486[0] = v469;
          v486[1] = v470;
          v143 = *v127;
          v144 = v127[1];
          v145 = v127[2];
          v488[1] = v127[3];
          v146 = v127[1];
          v147 = v127[2];
          v148 = *v127;
          v487[0] = v143;
          v487[1] = v146;
          v488[0] = v145;
          *&v485 = v472;
          *(&v485 + 1) = v142;
          v481 = v148;
          v482 = v144;
          v149 = v127[3];
          v483[0] = v147;
          v483[1] = v149;
          sub_1D22D63B0(v487, &v477);
          v150 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v484, &v481);
          v489 = v481;
          v490 = v482;
          v491[0] = v483[0];
          v491[1] = v483[1];
          sub_1D22D640C(&v489);
          v151 = sub_1D2687564(v127, type metadata accessor for PhotosPersonAsset);
          if (v150)
          {
            sub_1D2687564(v141, type metadata accessor for Prompt);
            sub_1D22BD238(&v492, &qword_1EC6DF7A8);
            goto LABEL_42;
          }

          v449 = v128;
        }

        else
        {
          v449 = v128;
          (*v446)(v114, 1, 1, v140);
          v151 = sub_1D22BD238(v114, &unk_1EC6DDDC0);
        }

        MEMORY[0x1EEE9AC00](v151);
        *(&v395 - 2) = v141;
        v152 = v453;
        swift_beginAccess();
        v153 = v463;
        v154 = sub_1D268223C(sub_1D2687630, (&v395 - 4));
        v463 = v153;
        if (v153)
        {
          goto LABEL_216;
        }

        v155 = v154;
        v156 = *(v131 + v152);
        v157 = *(v156 + 16);
        v158 = v157 - v154;
        if (v157 < v154)
        {
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
          goto LABEL_212;
        }

        if (v154 < 0)
        {
          goto LABEL_207;
        }

        v159 = v154 - v157;
        v160 = v154;
        if (__OFADD__(v157, v154 - v157))
        {
          goto LABEL_208;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v131 + v152) = v156;
        if (!isUniquelyReferenced_nonNull_native || v160 > *(v156 + 24) >> 1)
        {
          if (v157 <= v160)
          {
            v162 = v157 - v158;
          }

          else
          {
            v162 = v157;
          }

          v156 = sub_1D27CC840(isUniquelyReferenced_nonNull_native, v162, 1, v156);
          *(v131 + v152) = v156;
        }

        v163 = &v450[v156];
        v164 = v155 * v467;
        v165 = &v450[v156 + v155 * v467];
        swift_arrayDestroy();
        if (v157 != v155)
        {
          if (v164 < v157 * v467 || v165 >= &v163[v157 * v467 + (*(v156 + 16) - v157) * v467])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v164 != v157 * v467)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v166 = *(v156 + 16);
          v167 = __OFADD__(v166, v159);
          v168 = v166 + v159;
          if (v167)
          {
            goto LABEL_209;
          }

          *(v156 + 16) = v168;
        }

        v169 = v452;
        *(v452 + v453) = v156;
        swift_endAccess();
        v170 = v454;
        sub_1D26874FC(v464, v454, type metadata accessor for Prompt);
        v171 = v451;
        swift_beginAccess();
        v172 = *&v169[v171];
        v173 = swift_isUniquelyReferenced_nonNull_native();
        *&v169[v171] = v172;
        if ((v173 & 1) == 0)
        {
          v172 = sub_1D27CC840(0, *(v172 + 16) + 1, 1, v172);
          *(v452 + v451) = v172;
        }

        v130 = v457;
        v136 = v461;
        v114 = v459;
        v127 = v458;
        v128 = v449;
        v175 = *(v172 + 16);
        v174 = *(v172 + 24);
        if (v175 >= v174 >> 1)
        {
          v172 = sub_1D27CC840(v174 > 1, v175 + 1, 1, v172);
        }

        *(v172 + 16) = v175 + 1;
        sub_1D2687494(v170, &v450[v172 + v175 * v467], type metadata accessor for Prompt);
        v131 = v452;
        *(v452 + v451) = v172;
        swift_endAccess();
        *(&v490 + 1) = v465;
        *&v491[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
        v176 = __swift_allocate_boxed_opaque_existential_1(&v489);
        v141 = v464;
        sub_1D2687494(v464, v176, type metadata accessor for Prompt);
        sub_1D22BD238(&v492, &qword_1EC6DF7A8);
        *(v491 + 8) = v445;
        BYTE8(v491[1]) = 6;
        sub_1D26821CC(&v489, &v496);
        v140 = v460;
      }

      else
      {
        sub_1D2687564(v141, type metadata accessor for Prompt);
      }

LABEL_42:
      if (v455 == v128)
      {

        goto LABEL_61;
      }

      ++v128;
      v139 = v466 + v467;
      if (v128 >= v456[2])
      {
        __break(1u);
        goto LABEL_177;
      }
    }
  }

  *&v491[0] = 0;
  v490 = 0u;
  v489 = 0u;
  sub_1D22BD238(&v489, &qword_1EC6D9A58);
  sub_1D22D7044(v108, &v492);
  v180 = v396;
  if (swift_dynamicCast())
  {
    v395(v180, 0, 1, v110);
    v181 = v456;
    v182 = v398;
    (v456[4])(v398, v180, v110);
    v183 = *(v457 + 40);
    v184 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v185 = v181[2];
    v186 = v183 + v184;
    v187 = v397;
    v185(v397, v186, v110);
    *(&v493 + 1) = v110;
    *&v494[0] = sub_1D26875E8(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
    v188 = __swift_allocate_boxed_opaque_existential_1(&v492);
    v185(v188, v187, v110);
    *(v494 + 8) = xmmword_1D287CB60;
    BYTE8(v494[1]) = 6;
    sub_1D26821CC(&v492, &v496);
    sub_1D2677418(v182);
    if ((sub_1D2871E68() & 1) == 0)
    {
      sub_1D2676F44();
    }

    v467 = v183;
    v189 = v400;
    sub_1D2871FC8();
    v190 = MEMORY[0x1D389AA00](v182, v189);
    v193 = v181[1];
    v192 = v181 + 1;
    v191 = v193;
    v193(v189, v110);
    v194 = v462;
    v195 = v440;
    if (v190)
    {
      sub_1D2871FC8();
      sub_1D26875E8(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
      v196 = sub_1D2877F98();
      v191(v189, v110);
      LODWORD(v466) = v196 ^ 1;
    }

    else
    {
      LODWORD(v466) = 0;
    }

    sub_1D2871FC8();
    sub_1D26875E8(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
    v255 = sub_1D2877F98();
    v191(v189, v110);
    v456 = v192;
    if (v255)
    {
      v256 = 0;
    }

    else
    {
      sub_1D2871FC8();
      v256 = MEMORY[0x1D389AA00](v397, v189);
      v191(v189, v110);
    }

    v127 = v194;
    v279 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    v280 = v467;
    swift_beginAccess();
    sub_1D22BD1D0(v280 + v279, &v492, &qword_1EC6D9A58);
    v281 = v439;
    if (*(&v493 + 1))
    {
      v282 = swift_dynamicCast();
      v283 = v191;
      v284 = v437;
      (*(v437 + 56))(v195, v282 ^ 1u, 1, v281);
      v285 = (*(v284 + 48))(v195, 1, v281);
      v191 = v283;
      if (v285 != 1)
      {
        v286 = v195;
        v287 = v426;
        sub_1D2687494(v286, v426, type metadata accessor for CharacterAsset);
        if (v466)
        {
          v288 = v425;
          sub_1D26874FC(v287, v425, type metadata accessor for PlaygroundImage);
          sub_1D22BD1D0(v287 + v281[5], v288 + v281[5], &unk_1EC6DE5A0);
          sub_1D26874FC(v287 + v281[6], v288 + v281[6], type metadata accessor for CharacterRecipe);
          *(v288 + v281[7]) = 1;
          sub_1D284580C(v288, v280);
          sub_1D2687564(v288, type metadata accessor for CharacterAsset);
          sub_1D2687564(v287, type metadata accessor for CharacterAsset);
          v289 = v453;
          v283(v397, v453);
          v290 = v398;
        }

        else
        {
          v336 = v398;
          v337 = v425;
          if (v256)
          {
            sub_1D26874FC(v287, v425, type metadata accessor for PlaygroundImage);
            sub_1D22BD1D0(v287 + v281[5], v337 + v281[5], &unk_1EC6DE5A0);
            sub_1D26874FC(v287 + v281[6], v337 + v281[6], type metadata accessor for CharacterRecipe);
            *(v337 + v281[7]) = 0;
            sub_1D284580C(v337, v280);
            sub_1D2687564(v337, type metadata accessor for CharacterAsset);
          }

          sub_1D2687564(v287, type metadata accessor for CharacterAsset);
          v289 = v453;
          v191(v397, v453);
          v290 = v336;
        }

LABEL_131:
        v191(v290, v289);
        LOBYTE(v128) = v448;
        goto LABEL_151;
      }
    }

    else
    {
      sub_1D22BD238(&v492, &qword_1EC6D9A58);
      (*(v437 + 56))(v195, 1, 1, v281);
    }

    sub_1D22BD238(v195, &unk_1EC6DDDA0);
    sub_1D22BD1D0(v280 + v279, &v492, &qword_1EC6D9A58);
    if (*(&v493 + 1))
    {
      v291 = type metadata accessor for PersonConditioningImage();
      v292 = v433;
      v293 = swift_dynamicCast();
      (*(*(v291 - 8) + 56))(v292, v293 ^ 1u, 1, v291);
    }

    else
    {
      sub_1D22BD238(&v492, &qword_1EC6D9A58);
      v291 = type metadata accessor for PersonConditioningImage();
      v292 = v433;
      (*(*(v291 - 8) + 56))(v433, 1, 1, v291);
    }

    v299 = v398;
    type metadata accessor for PersonConditioningImage();
    v300 = (*(*(v291 - 8) + 48))(v292, 1, v291);
    sub_1D22BD238(v292, &qword_1EC6D9A40);
    if (v300)
    {
      v301 = v397;
    }

    else
    {
      v302 = v397;
      if (v466)
      {
        sub_1D2677178();
      }

      v301 = v302;
    }

    v289 = v453;
    v191(v301, v453);
    v290 = v299;
    goto LABEL_131;
  }

  v395(v180, 1, 1, v110);
  sub_1D22BD238(v180, &qword_1EC6D9A30);
  sub_1D22D7044(v108, v495);
  v211 = v438;
  v212 = v465;
  if (!swift_dynamicCast())
  {
    v257 = v108;
    (*(v443 + 56))(v211, 1, 1, v212);
    sub_1D22BD238(v211, &unk_1EC6E1D20);
    sub_1D22D7044(v108, &v492);
    v258 = v430;
    v259 = v436;
    v260 = swift_dynamicCast();
    v261 = *(v435 + 56);
    v127 = v462;
    v262 = v457;
    LOBYTE(v128) = v448;
    if (v260)
    {
      v263 = v435;
      v261(v258, 0, 1, v259);
      v264 = v427;
      sub_1D2687494(v258, v427, type metadata accessor for SceneConditioningImage);
      v265 = *(v262 + 40);
      v266 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
      swift_beginAccess();
      v267 = v416;
      sub_1D22BD1D0(v265 + v266, v416, &qword_1EC6DA2C8);
      if ((*(v263 + 48))(v267, 1, v259) == 1)
      {
        sub_1D22BD238(v267, &qword_1EC6DA2C8);
        v268 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
        swift_beginAccess();
        v269 = *(v265 + v268);
        v270 = *(v269 + 16);
        sub_1D2870F68();
        v271 = v407;
        if (v270)
        {
          v272 = 0;
          while (1)
          {
            if (v272 >= *(v269 + 16))
            {
              goto LABEL_214;
            }

            sub_1D26874FC(v269 + ((*(v443 + 80) + 32) & ~*(v443 + 80)) + *(v443 + 72) * v272, v271, type metadata accessor for Prompt);
            sub_1D2680C6C(v271, &v492);
            if (*(&v493 + 1))
            {
              break;
            }

            ++v272;
            sub_1D2687564(v271, type metadata accessor for Prompt);
            if (v270 == v272)
            {
              goto LABEL_110;
            }
          }

          sub_1D22BD238(&v492, &qword_1EC6DF7A8);
          v362 = v401;
          sub_1D2687494(v271, v401, type metadata accessor for Prompt);
          sub_1D2675C1C(v362);
          sub_1D2677178();
          v363 = sub_1D23C6DDC();
          sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

          *(&v490 + 1) = v465;
          *&v491[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
          v364 = __swift_allocate_boxed_opaque_existential_1(&v489);
          sub_1D2687494(v362, v364, type metadata accessor for Prompt);
          *(v491 + 8) = xmmword_1D28830A0;
          BYTE8(v491[1]) = 6;
          sub_1D26821CC(&v489, &v496);
        }

        else
        {
LABEL_110:

          v273 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
          swift_beginAccess();
          sub_1D22BD1D0(v265 + v273, &v492, &qword_1EC6D9A58);
          if (*(&v493 + 1))
          {
            sub_1D227268C(&v492, &v489);
            sub_1D2677178();
            v274 = sub_1D23C6DDC();
            sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

            v275 = *(&v490 + 1);
            v276 = *&v491[0];
            v277 = __swift_project_boxed_opaque_existential_1(&v489, *(&v490 + 1));
            *(&v493 + 1) = v275;
            *&v494[0] = *(v276 + 8);
            v278 = __swift_allocate_boxed_opaque_existential_1(&v492);
            (*(*(v275 - 8) + 16))(v278, v277, v275);
            *(v494 + 8) = xmmword_1D28830A0;
            BYTE8(v494[1]) = 6;
            sub_1D26821CC(&v492, &v496);
            __swift_destroy_boxed_opaque_existential_0(&v489);
          }

          else
          {
            sub_1D22BD238(&v492, &qword_1EC6D9A58);
          }
        }

        v264 = v427;
      }

      else
      {
        v344 = v408;
        sub_1D2687494(v267, v408, type metadata accessor for SceneConditioningImage);
        *(&v493 + 1) = v259;
        *&v494[0] = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage);
        v345 = __swift_allocate_boxed_opaque_existential_1(&v492);
        sub_1D2687494(v344, v345, type metadata accessor for SceneConditioningImage);
        *(v494 + 8) = xmmword_1D2883090;
        BYTE8(v494[1]) = 6;
        sub_1D26821CC(&v492, &v496);
      }

      sub_1D2676930(v264);
      sub_1D2687564(v264, type metadata accessor for SceneConditioningImage);
LABEL_151:
      sub_1D267F6F0();
      sub_1D267E8EC();
      sub_1D22BD1D0(&v496, &v489, &qword_1EC6DF7C8);
      if (*(&v490 + 1))
      {
        v492 = v489;
        v493 = v490;
        v494[0] = v491[0];
        *(v494 + 9) = *(v491 + 9);
        if (v128)
        {
          sub_1D2681364(&v492, *(&v494[0] + 1), *&v494[1], SBYTE8(v494[1]));
        }

        v342 = &unk_1EC6DF7D0;
        v343 = &v492;
      }

      else
      {
        v342 = &qword_1EC6DF7C8;
        v343 = &v489;
      }

      sub_1D22BD238(v343, v342);
      if (*(&v497 + 1))
      {
        sub_1D22D7044(&v496, v127);
      }

      else
      {
        *(v127 + 4) = 0;
        *v127 = 0u;
        v127[1] = 0u;
      }

      return sub_1D22BD238(&v496, &qword_1EC6DF7C8);
    }

    v261(v258, 1, 1, v259);
    sub_1D22BD238(v258, &qword_1EC6DA2C8);
    sub_1D22D7044(v257, &v492);
    v303 = v417;
    v304 = v419;
    v305 = swift_dynamicCast();
    v306 = v418;
    v307 = *(v418 + 56);
    if (v305)
    {
      v307(v303, 0, 1, v304);
      v308 = v410;
      sub_1D2687494(v303, v410, type metadata accessor for SketchConditioningImage);
      v309 = *(v262 + 40);
      v310 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v311 = v409;
      sub_1D22BD1D0(v309 + v310, v409, &qword_1EC6DA200);
      if ((*(v306 + 48))(v311, 1, v304) == 1)
      {
        sub_1D22BD238(v311, &qword_1EC6DA200);
      }

      else
      {
        v353 = v311;
        v354 = v402;
        sub_1D2687494(v353, v402, type metadata accessor for SketchConditioningImage);
        *(&v493 + 1) = v304;
        *&v494[0] = sub_1D26875E8(&qword_1EC6DF7D8, type metadata accessor for SketchConditioningImage);
        v355 = __swift_allocate_boxed_opaque_existential_1(&v492);
        sub_1D2687494(v354, v355, type metadata accessor for SketchConditioningImage);
        *(v494 + 8) = xmmword_1D2883090;
        BYTE8(v494[1]) = 6;
        sub_1D26821CC(&v492, &v496);
      }

      sub_1D26762D8(v308);
      sub_1D2687564(v308, type metadata accessor for SketchConditioningImage);
      goto LABEL_151;
    }

    v307(v303, 1, 1, v304);
    v346 = &qword_1EC6DA200;
    v347 = v303;
LABEL_204:
    sub_1D22BD238(v347, v346);
    goto LABEL_151;
  }

  v213 = v443;
  (*(v443 + 56))(v211, 0, 1, v212);
  v214 = v434;
  sub_1D2687494(v211, v434, type metadata accessor for Prompt);
  v130 = v457;
  sub_1D2680C6C(v214, &v489);
  v493 = v490;
  v492 = v489;
  v494[0] = v491[0];
  v494[1] = v491[1];
  v127 = v462;
  LOBYTE(v128) = v448;
  if (!*(&v490 + 1))
  {
    v330 = v414;
    sub_1D2681054(v214, v414);
    v331 = v455;
    if ((*(v119 + 48))(v330, 1, v455) == 1)
    {
      sub_1D22BD238(v330, &qword_1EC6DA210);
      *(&v485 + 1) = v212;
      *&v486[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
      v332 = __swift_allocate_boxed_opaque_existential_1(&v484);
      sub_1D26874FC(v214, v332, type metadata accessor for Prompt);
      v333 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
      v334 = v429;
      (*(*(v333 - 8) + 56))(v429, 1, 1, v333);
      sub_1D267FF1C(&v484, v334, v487);
      sub_1D22BD238(v334, &qword_1EC6DF7C0);
    }

    else
    {
      v348 = v330;
      v349 = v403;
      sub_1D2687494(v348, v403, type metadata accessor for CuratedPrompt);
      *(&v485 + 1) = v331;
      *&v486[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
      v350 = __swift_allocate_boxed_opaque_existential_1(&v484);
      sub_1D26874FC(v349, v350, type metadata accessor for CuratedPrompt);
      v351 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
      v352 = v429;
      (*(*(v351 - 8) + 56))(v429, 1, 1, v351);
      sub_1D267FF1C(&v484, v352, v487);
      sub_1D22BD238(v352, &qword_1EC6DF7C0);
      sub_1D2687564(v349, type metadata accessor for CuratedPrompt);
    }

    sub_1D2687564(v214, type metadata accessor for Prompt);
    __swift_destroy_boxed_opaque_existential_0(&v484);
    v179 = v487;
LABEL_48:
    sub_1D26821CC(v179, &v496);
    goto LABEL_151;
  }

  v215 = *(v130 + 40);
  v216 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v464 = v215;
  v461 = v216;
  v217 = *(v215 + v216);
  v218 = *(v217 + 16);
  v131 = v441;
  if (!v218)
  {
LABEL_136:
    sub_1D22BD1D0(&v496, v487, &qword_1EC6DF7C8);
    v312 = *(&v487[1] + 1);
    sub_1D22BD238(v487, &qword_1EC6DF7C8);
    v136 = v424;
    if (v312)
    {
      goto LABEL_178;
    }

    v313 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    v314 = v464;
    swift_beginAccess();
    sub_1D22BD1D0(v314 + v313, v487, &qword_1EC6D9A58);
    if (*(&v487[1] + 1))
    {
      v315 = v405;
      v316 = v460;
      v317 = swift_dynamicCast();
      v318 = v442;
      (*(v442 + 56))(v315, v317 ^ 1u, 1, v316);
      v319 = v316;
      v320 = v315;
      v321 = (*(v318 + 48))(v315, 1, v319);
      v322 = v436;
      v323 = v406;
      if (v321 != 1)
      {
        sub_1D2687494(v320, v131, type metadata accessor for PhotosPersonAsset);
        v324 = v131[1];
        v484 = *v131;
        v485 = v324;
        v325 = v131[3];
        v327 = *v131;
        v326 = v131[1];
        v486[0] = v131[2];
        v486[1] = v325;
        v481 = v327;
        v482 = v326;
        v328 = v131[3];
        v483[0] = v131[2];
        v483[1] = v328;
        v477 = v492;
        v478 = v493;
        v479 = v494[0];
        v480 = v494[1];
        sub_1D22D63B0(&v484, &v473);
        v329 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v481, &v477);
        v487[0] = v481;
        v487[1] = v482;
        v488[0] = v483[0];
        v488[1] = v483[1];
        sub_1D22D640C(v487);
        if (!v329)
        {
LABEL_177:
          *(&v482 + 1) = v460;
          *&v483[0] = sub_1D26875E8(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
          v365 = __swift_allocate_boxed_opaque_existential_1(&v481);
          sub_1D2687494(v131, v365, type metadata accessor for PhotosPersonAsset);
          *(v483 + 8) = xmmword_1D2883050;
          BYTE8(v483[1]) = 6;
          sub_1D26821CC(&v481, &v496);
          goto LABEL_178;
        }

        sub_1D2687564(v131, type metadata accessor for PhotosPersonAsset);
LABEL_169:
        v356 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
        v357 = v464;
        swift_beginAccess();
        v358 = v357 + v356;
        v359 = v404;
        sub_1D22BD1D0(v358, v404, &qword_1EC6DA2C8);
        if ((*(v435 + 48))(v359, 1, v322) == 1)
        {
          sub_1D22BD238(v359, &qword_1EC6DA2C8);
          sub_1D23C7044();
          v360 = sub_1D27ED8C8();

          if ((v360 & 1) == 0)
          {
            sub_1D22BD238(&v496, &qword_1EC6DF7C8);
            sub_1D22D7044(v451, &v496);
            *(v498 + 8) = xmmword_1D28838E0;
            BYTE8(v498[1]) = 6;
          }
        }

        else
        {
          sub_1D2687494(v359, v323, type metadata accessor for SceneConditioningImage);
          *(&v487[1] + 1) = v322;
          *&v488[0] = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage);
          v361 = __swift_allocate_boxed_opaque_existential_1(v487);
          sub_1D26874FC(v323, v361, type metadata accessor for SceneConditioningImage);
          *(v488 + 8) = xmmword_1D28830A0;
          BYTE8(v488[1]) = 6;
          sub_1D26821CC(v487, &v496);
          sub_1D2676F44();
          sub_1D2687564(v323, type metadata accessor for SceneConditioningImage);
        }

LABEL_178:
        v366 = sub_1D23C6DDC();
        v487[0] = v492;
        v487[1] = v493;
        v488[0] = v494[0];
        v488[1] = v494[1];
        sub_1D255AEC8(v487, v136);
        if ((*(v422 + 48))(v136, 1, v423) == 1)
        {
          sub_1D22BD238(v136, &qword_1EC6DDD60);
          v367 = v442;
          v368 = v421;
          v369 = v460;
          (*(v442 + 56))(v421, 1, 1, v460);
        }

        else
        {
          sub_1D2687494(v136, v114, type metadata accessor for PhotosPersonImage);
          v369 = v460;
          v370 = v114;
          v368 = v421;
          sub_1D2687494(v370, &v421[*(v460 + 20)], type metadata accessor for PhotosPersonImage);
          v371 = v494[1];
          *(v368 + 2) = v494[0];
          *(v368 + 3) = v371;
          v372 = v493;
          *v368 = v492;
          *(v368 + 1) = v372;
          v368[*(v369 + 24)] = 1;
          v368[*(v369 + 28)] = 0;
          v367 = v442;
          (*(v442 + 56))(v368, 0, 1, v369);
          sub_1D22D63B0(&v492, v487);
        }

        v373 = v465;
        v374 = v428;

        if ((*(v367 + 48))(v368, 1, v369) == 1)
        {
          sub_1D22BD238(v368, &unk_1EC6DDDC0);
          sub_1D2872658();
          sub_1D22BD1D0(&v489, v487, &qword_1EC6DF7A8);
          v375 = v374;
          v376 = sub_1D2873CA8();
          v377 = sub_1D2878A18();
          sub_1D22BD238(&v489, &qword_1EC6DF7A8);
          if (os_log_type_enabled(v376, v377))
          {
            v378 = swift_slowAlloc();
            v379 = swift_slowAlloc();
            *&v484 = v379;
            *v378 = 136315138;
            v380 = *(&v493 + 1);
            v128 = v493;
            v381 = v415;
            if (*&v494[0])
            {
              *&v487[0] = *&v494[0];
              *(v487 + 8) = *(v494 + 8);
              v382 = sub_1D24FBD9C();
              if (v383)
              {
                v384 = v382;
              }

              else
              {
                v384 = 0;
              }

              if (v383)
              {
                v385 = v383;
              }

              else
              {
                v385 = 0xE000000000000000;
              }

              *&v487[0] = v128;
              *(&v487[0] + 1) = v380;
              sub_1D2870F68();
              MEMORY[0x1D38A0C50](v384, v385);
              v381 = v415;

              v380 = *(&v487[0] + 1);
              v128 = *&v487[0];
            }

            else
            {
              sub_1D2870F68();
            }

            v387 = sub_1D23D7C84(v128, v380, &v484);

            *(v378 + 4) = v387;
            _os_log_impl(&dword_1D226E000, v376, v377, "Cache miss when looking for asset matching person with id: %s", v378, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v379);
            MEMORY[0x1D38A3520](v379, -1, -1);
            MEMORY[0x1D38A3520](v378, -1, -1);

            (*(v412 + 8))(v428, v381);
            v127 = v462;
            LOBYTE(v128) = v448;
          }

          else
          {

            (*(v412 + 8))(v375, v415);
          }

          v373 = v465;
        }

        else
        {
          v386 = v411;
          sub_1D2687494(v368, v411, type metadata accessor for PhotosPersonAsset);
          sub_1D26828EC(v386, v130);
          sub_1D2687564(v386, type metadata accessor for PhotosPersonAsset);
        }

        v388 = v434;
        v389 = *(v434 + 40);
        v390 = v429;
        if (*(v389 + 16) == 1 && ((v391 = *(type metadata accessor for IdentifiedEntity(0) - 8), v392 = (v389 + ((*(v391 + 80) + 32) & ~*(v391 + 80))), *(v388 + 8) == *v392) && *(v388 + 16) == v392[1] || (sub_1D2879618() & 1) != 0))
        {
          sub_1D2687564(v388, type metadata accessor for Prompt);
          v346 = &qword_1EC6DF7A8;
          v347 = &v489;
        }

        else
        {
          *(&v482 + 1) = v373;
          *&v483[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
          v393 = __swift_allocate_boxed_opaque_existential_1(&v481);
          sub_1D26874FC(v388, v393, type metadata accessor for Prompt);
          v394 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
          (*(*(v394 - 8) + 56))(v390, 1, 1, v394);
          sub_1D267FF1C(&v481, v390, &v484);
          sub_1D22BD238(&v489, &qword_1EC6DF7A8);
          sub_1D22BD238(v390, &qword_1EC6DF7C0);
          sub_1D2687564(v388, type metadata accessor for Prompt);
          __swift_destroy_boxed_opaque_existential_0(&v481);
          if (*(&v485 + 1))
          {
            v487[0] = v484;
            v487[1] = v485;
            v488[0] = v486[0];
            *(v488 + 9) = *(v486 + 9);
            sub_1D22BD238(&v496, &qword_1EC6DF7C8);
            v496 = v487[0];
            v497 = v487[1];
            v498[0] = v488[0];
            *(v498 + 9) = *(v488 + 9);
            goto LABEL_151;
          }

          v346 = &qword_1EC6DF7C8;
          v347 = &v484;
        }

        goto LABEL_204;
      }
    }

    else
    {
      sub_1D22BD238(v487, &qword_1EC6D9A58);
      v320 = v405;
      (*(v442 + 56))(v405, 1, 1, v460);
      v322 = v436;
      v323 = v406;
    }

    sub_1D22BD238(v320, &unk_1EC6DDDC0);
    goto LABEL_169;
  }

  v458 = ((*(v213 + 80) + 32) & ~*(v213 + 80));
  v219 = v458 + v217;
  v459 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  sub_1D2870F68();
  v220 = v213;
  v221 = 0;
  v222 = *(v220 + 72);
  v466 = v218 - 1;
  v453 = xmmword_1D2883080;
  v223 = v445;
  v454 = v217;
  v467 = v222;
  while (1)
  {
    sub_1D26874FC(v219, v223, type metadata accessor for Prompt);
    sub_1D2680C6C(v223, &v484);
    v487[0] = v484;
    v487[1] = v485;
    v488[0] = v486[0];
    v488[1] = v486[1];
    v473 = v484;
    v474 = v485;
    v477 = v486[0];
    v478 = v486[1];
    if (!*(&v485 + 1))
    {
      sub_1D2687564(v223, type metadata accessor for Prompt);
      goto LABEL_95;
    }

    v484 = v473;
    *&v485 = v474;
    v486[0] = v477;
    v486[1] = v478;
    v481 = v492;
    v482 = v493;
    v483[0] = v494[0];
    v483[1] = v494[1];
    v224 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v484, &v481);
    if (v224)
    {
      sub_1D2687564(v223, type metadata accessor for Prompt);
      sub_1D22BD238(v487, &qword_1EC6DF7A8);
      goto LABEL_95;
    }

    MEMORY[0x1EEE9AC00](v224);
    *(&v395 - 2) = v223;
    v225 = v464;
    v226 = v461;
    swift_beginAccess();
    v227 = v463;
    v228 = sub_1D268223C(sub_1D2436A68, (&v395 - 4));
    v463 = v227;
    if (v227)
    {
      goto LABEL_217;
    }

    v229 = v228;
    v230 = *&v226[v225];
    v231 = *(v230 + 16);
    v232 = v231 - v228;
    if (v231 < v228)
    {
      goto LABEL_211;
    }

    v456 = &v395;
    if (v228 < 0)
    {
      break;
    }

    v455 = v228 - v231;
    v233 = v228;
    if (__OFADD__(v231, v228 - v231))
    {
      goto LABEL_213;
    }

    v234 = swift_isUniquelyReferenced_nonNull_native();
    *&v226[v225] = v230;
    if (!v234 || v233 > *(v230 + 24) >> 1)
    {
      if (v231 <= v233)
      {
        v235 = v231 - v232;
      }

      else
      {
        v235 = v231;
      }

      v230 = sub_1D27CC840(v234, v235, 1, v230);
      *&v226[v225] = v230;
    }

    v236 = v458 + v230;
    v237 = v229 * v467;
    v238 = v458 + v230 + v229 * v467;
    swift_arrayDestroy();
    v239 = v231 == v229;
    v131 = v441;
    if (!v239)
    {
      if (v237 < v231 * v467 || v238 >= &v236[v231 * v467 + (*(v230 + 16) - v231) * v467])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v237 != v231 * v467)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v240 = *(v230 + 16);
      v167 = __OFADD__(v240, v455);
      v241 = v240 + v455;
      if (v167)
      {
        goto LABEL_215;
      }

      *(v230 + 16) = v241;
    }

    v242 = v464;
    *&v461[v464] = v230;
    swift_endAccess();
    sub_1D26874FC(v445, v444, type metadata accessor for Prompt);
    v243 = v459;
    swift_beginAccess();
    v244 = *&v243[v242];
    v245 = swift_isUniquelyReferenced_nonNull_native();
    *&v243[v242] = v244;
    if ((v245 & 1) == 0)
    {
      v244 = sub_1D27CC840(0, *(v244 + 16) + 1, 1, v244);
      *&v459[v242] = v244;
    }

    v127 = v462;
    v130 = v457;
    LOBYTE(v128) = v448;
    v246 = v467;
    v248 = *(v244 + 16);
    v247 = *(v244 + 24);
    if (v248 >= v247 >> 1)
    {
      v250 = sub_1D27CC840(v247 > 1, v248 + 1, 1, v244);
      v246 = v467;
      v244 = v250;
    }

    *(v244 + 16) = v248 + 1;
    sub_1D2687494(v444, v458 + v244 + v248 * v246, type metadata accessor for Prompt);
    *&v459[v464] = v244;
    swift_endAccess();
    *(&v485 + 1) = v465;
    *&v486[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
    v249 = __swift_allocate_boxed_opaque_existential_1(&v484);
    v223 = v445;
    sub_1D2687494(v445, v249, type metadata accessor for Prompt);
    sub_1D22BD238(v487, &qword_1EC6DF7A8);
    *(v486 + 8) = v453;
    BYTE8(v486[1]) = 6;
    sub_1D26821CC(&v484, &v496);
    v217 = v454;
LABEL_95:
    if (v466 == v221)
    {

      v114 = v452;
      goto LABEL_136;
    }

    ++v221;
    v219 += v467;
    if (v221 >= *(v217 + 16))
    {
      goto LABEL_210;
    }
  }

LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  swift_endAccess();
  __break(1u);
LABEL_217:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1D267E554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for PhotosPersonImage();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v17 - v10);
  sub_1D2680C6C(a1, &v18);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  v12 = sub_1D23C6DDC();
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  sub_1D255AEC8(v17, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6DDD60);
    v13 = type metadata accessor for PhotosPersonAsset();
    (*(*(v13 - 1) + 56))(v11, 1, 1, v13);
  }

  else
  {
    sub_1D2687494(v4, v8, type metadata accessor for PhotosPersonImage);
    v13 = type metadata accessor for PhotosPersonAsset();
    sub_1D2687494(v8, v11 + v13[5], type metadata accessor for PhotosPersonImage);
    v14 = v25;
    v11[2] = v24;
    v11[3] = v14;
    v15 = v23;
    *v11 = v22;
    v11[1] = v15;
    *(v11 + v13[6]) = 1;
    *(v11 + v13[7]) = 0;
    (*(*(v13 - 1) + 56))(v11, 0, 1, v13);
    sub_1D22D63B0(&v22, v17);
  }

  type metadata accessor for PhotosPersonAsset();
  if ((*(*(v13 - 1) + 48))(v11, 1, v13) == 1)
  {
    sub_1D22BD238(&v18, &qword_1EC6DF7A8);
    sub_1D22BD238(v11, &unk_1EC6DDDC0);
    return 0;
  }

  sub_1D22BD238(v11, &unk_1EC6DDDC0);
  sub_1D2870F68();
  sub_1D22BD238(&v18, &qword_1EC6DF7A8);
  return 1;
}

uint64_t sub_1D267E8EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v79 - v2;
  v4 = type metadata accessor for SceneConditioningImage();
  v85 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v87 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v79 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = v79 - v10;
  v89 = type metadata accessor for SketchConditioningImage();
  v81 = *(v89 - 8);
  v11 = MEMORY[0x1EEE9AC00](v89);
  v84 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = v79 - v13;
  v92 = sub_1D2872008();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v0;
  v15 = *(v0 + 40);
  swift_beginAccess();
  v16 = sub_1D2870F68();
  v17 = sub_1D267901C(v16);

  swift_beginAccess();
  v18 = sub_1D2870F68();
  v19 = sub_1D2679220(v18);

  *&v98 = v17;
  sub_1D274DE40(v19);
  v20 = v98;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(&v15[v21], &v95, &qword_1EC6D9A58);
  v88 = v4;
  v86 = v3;
  if (v96)
  {
    v80 = v8;
    sub_1D227268C(&v95, &v98);
    v22 = v99;
    v79[0] = v100;
    v23 = __swift_project_boxed_opaque_existential_1(&v98, v99);
    v79[1] = v79;
    v24 = *(v22 - 1);
    v25 = *(v24 + 64);
    MEMORY[0x1EEE9AC00](v23);
    v26 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *(v24 + 16);
    (v27)(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }

    goto LABEL_55;
  }

  sub_1D22BD238(&v95, &qword_1EC6D9A58);
  while (1)
  {
    v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v34 = *(v91 + 16);
    v34(v90, &v15[v33], v92);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      if (v36 >= v35 >> 1)
      {
        v20 = sub_1D27CCA74((v35 > 1), v36 + 1, 1, v20);
      }

      v25 = v92;
      v99 = v92;
      v100 = sub_1D26875E8(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
      v38 = v90;
      v34(boxed_opaque_existential_1, v90, v25);
      *(v20 + 16) = v36 + 1;
      sub_1D227268C(&v98, v20 + 40 * v36 + 32);
      (*(v91 + 8))(v38, v25);
      v101 = v20;
      v39 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v40 = &v15[v39];
      v41 = v82;
      sub_1D22BD1D0(v40, v82, &qword_1EC6DA200);
      if ((*(v81 + 48))(v41, 1, v89) == 1)
      {
        sub_1D22BD238(v41, &qword_1EC6DA200);
        v42 = v85;
        v43 = v86;
      }

      else
      {
        v44 = v41;
        v45 = v83;
        sub_1D2687494(v44, v83, type metadata accessor for SketchConditioningImage);
        sub_1D26874FC(v45, v84, type metadata accessor for SketchConditioningImage);
        v47 = *(v20 + 16);
        v46 = *(v20 + 24);
        v42 = v85;
        v43 = v86;
        if (v47 >= v46 >> 1)
        {
          v20 = sub_1D27CCA74((v46 > 1), v47 + 1, 1, v20);
        }

        sub_1D2687564(v83, type metadata accessor for SketchConditioningImage);
        v99 = v89;
        v100 = sub_1D26875E8(&qword_1EC6DF7D8, type metadata accessor for SketchConditioningImage);
        v48 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v49 = v84;
        sub_1D26874FC(v84, v48, type metadata accessor for SketchConditioningImage);
        *(v20 + 16) = v47 + 1;
        sub_1D227268C(&v98, v20 + 40 * v47 + 32);
        sub_1D2687564(v49, type metadata accessor for SketchConditioningImage);
        v101 = v20;
        v4 = v88;
      }

      v50 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
      swift_beginAccess();
      sub_1D22BD1D0(&v15[v50], v43, &qword_1EC6DA2C8);
      v51 = *(v42 + 48);
      v34 = (v42 + 48);
      if (v51(v43, 1, v4) == 1)
      {
        sub_1D22BD238(v43, &qword_1EC6DA2C8);
      }

      else
      {
        sub_1D2687494(v43, v8, type metadata accessor for SceneConditioningImage);
        sub_1D26874FC(v8, v87, type metadata accessor for SceneConditioningImage);
        v53 = *(v20 + 16);
        v52 = *(v20 + 24);
        if (v53 >= v52 >> 1)
        {
          v20 = sub_1D27CCA74((v52 > 1), v53 + 1, 1, v20);
        }

        sub_1D2687564(v8, type metadata accessor for SceneConditioningImage);
        v99 = v4;
        v100 = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage);
        v54 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v55 = v87;
        sub_1D26874FC(v87, v54, type metadata accessor for SceneConditioningImage);
        *(v20 + 16) = v53 + 1;
        sub_1D227268C(&v98, v20 + 40 * v53 + 32);
        sub_1D2687564(v55, type metadata accessor for SceneConditioningImage);
        v101 = v20;
      }

      v92 = *(v20 + 16);
      if (!v92)
      {
        break;
      }

      v56 = 0;
      v91 = v20 + 32;
      v4 = MEMORY[0x1E69E7CC0];
      while (v56 < *(v20 + 16))
      {
        v34 = v20;
        v64 = v56 + 1;
        sub_1D22D7044(v91 + 40 * v56, &v98);
        v65 = *(v93 + 32);
        v66 = *(v65 + 16);
        sub_1D2870F68();
        v67 = v65 + 32;
        v20 = -v66;
        v68 = -1;
        while (v20 + v68 != -1)
        {
          if (++v68 >= *(v65 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v25 = v67 + 40;
          sub_1D22D7044(v67, &v95);
          v8 = v96;
          v15 = v97;
          __swift_project_boxed_opaque_existential_1(&v95, v96);
          v69 = (*(v15 + 7))(&v98, v8, v15);
          __swift_destroy_boxed_opaque_existential_0(&v95);
          v67 = v25;
          if (v69)
          {

            __swift_destroy_boxed_opaque_existential_0(&v98);
            goto LABEL_25;
          }
        }

        sub_1D227268C(&v98, &v95);
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v4;
        if ((v70 & 1) == 0)
        {
          sub_1D23D8528(0, *(v4 + 16) + 1, 1);
          v4 = v94;
        }

        v58 = *(v4 + 16);
        v57 = *(v4 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1D23D8528((v57 > 1), v58 + 1, 1);
        }

        v59 = v96;
        v60 = v97;
        v61 = __swift_mutable_project_boxed_opaque_existential_1(&v95, v96);
        MEMORY[0x1EEE9AC00](v61);
        v8 = v79 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v63 + 16))(v8);
        sub_1D2564390(v58, v8, &v94, v59, v60);
        __swift_destroy_boxed_opaque_existential_0(&v95);
        v4 = v94;
LABEL_25:
        v56 = v64;
        v20 = v34;
        if (v64 == v92)
        {
          goto LABEL_35;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      v20 = sub_1D27CCA74(0, *(v20 + 16) + 1, 1, v20);
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v71 = v93;
    v72 = sub_1D2870F68();
    v27 = sub_1D267863C(v72, &v101);
    *&v98 = *(v71 + 32);
    sub_1D2870F68();
    v73 = sub_1D2870F78();
    v22 = &v98;
    sub_1D274DE40(v73);
    sub_1D2870F68();
    v24 = sub_1D26871E4(&v98, v27);

    v15 = v98;
    v26 = *(v98 + 16);
    if (v24 > v26)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v24 < 0)
    {
      goto LABEL_53;
    }

    if (!__OFADD__(v26, v24 - v26))
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    isUniquelyReferenced_nonNull_native = sub_1D27CCA74(0, *(v20 + 16) + 1, 1, v20);
    v20 = isUniquelyReferenced_nonNull_native;
    v101 = isUniquelyReferenced_nonNull_native;
LABEL_3:
    v30 = *(v20 + 16);
    v29 = *(v20 + 24);
    if (v30 >= v29 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D27CCA74((v29 > 1), v30 + 1, 1, v20);
      v31 = isUniquelyReferenced_nonNull_native;
      v101 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v31 = v20;
    }

    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v32 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v27)(v32, v26, v22);
    sub_1D254D5D8(v30, v32, &v101, v22, *(v79[0] + 8));
    (*(v24 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_0(&v98);
    v20 = v31;
    v4 = v88;
    v8 = v80;
  }

  v74 = swift_isUniquelyReferenced_nonNull_native();
  if (!v74 || v24 > *(v15 + 3) >> 1)
  {
    if (v26 <= v24)
    {
      v75 = v24;
    }

    else
    {
      v75 = v26;
    }

    v15 = sub_1D27CCA74(v74, v75, 1, v15);
    *&v98 = v15;
  }

  sub_1D278C84C(v24, v26, 0);
  *(v93 + 32) = v15;

  v76 = *(v4 + 16);

  if (v76)
  {

    goto LABEL_47;
  }

  v77 = *(v27 + 16);

  if (v77)
  {
LABEL_47:
    sub_1D267F94C();
  }
}

uint64_t sub_1D267F6F0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    sub_1D2681C00();
    swift_beginAccess();
    v1 = *(v0 + 48);
    if (v1 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1D2870F68();
    if (v5)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38A1C30](v4, v1);
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v5 = sub_1D2879368();
            goto LABEL_4;
          }

          v6 = *(v1 + 8 * v4 + 32);
          sub_1D2870F78();
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v2 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v2 + 16))(ObjectType, v2);
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v7 != v5);
    }
  }

  else
  {
LABEL_15:
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D28789F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Skipping context update", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D267F94C()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    sub_1D2681C00();
    swift_beginAccess();
    v1 = *(v0 + 48);
    if (v1 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1D2870F68();
    if (v5)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38A1C30](v4, v1);
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v5 = sub_1D2879368();
            goto LABEL_4;
          }

          v6 = *(v1 + 8 * v4 + 32);
          sub_1D2870F78();
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v2 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v2 + 8))(ObjectType, v2);
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v7 != v5);
    }
  }

  else
  {
LABEL_15:
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D28789F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Skipping active representations update", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D267FBA8(uint64_t a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24) == 1)
  {
    sub_1D2681C00();
    v7 = swift_beginAccess();
    v8 = *(v1 + 48);
    MEMORY[0x1EEE9AC00](v7);
    *(&v13 - 2) = a1;
    sub_1D2870F68();
    sub_1D267885C(sub_1D2687410, (&v13 - 4), v8);
  }

  else
  {
    sub_1D2872658();
    v10 = sub_1D2873CA8();
    v11 = sub_1D28789F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "Skipping duplicate representation update", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D267FD74()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D2871FC8();
  sub_1D26875E8(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v6 = sub_1D2877F98();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 32);
    v9 = *(v8 + 16);
    sub_1D2870F68();
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      while (v10 < *(v8 + 16))
      {
        sub_1D22D7044(v11, v13);
        sub_1D268163C(v13, v1);
        ++v10;
        __swift_destroy_boxed_opaque_existential_0(v13);
        v11 += 40;
        if (v9 == v10)
        {
        }
      }

      __break(1u);

      result = __swift_destroy_boxed_opaque_existential_0(v13);
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D267FF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v93 = a2;
  v98 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v84 - v8;
  v90 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7C0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - v13;
  v14 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v84 - v17;
  v97 = type metadata accessor for Prompt(0);
  v96 = *(v97 - 8);
  v18 = MEMORY[0x1EEE9AC00](v97);
  v92 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - v22;
  v24 = type metadata accessor for CuratedPrompt();
  v100 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v95 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v84 - v30;
  *(a3 + 41) = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v32 = *(v3 + 40);
  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v34 = sub_1D2870F68();
  v35 = sub_1D2679220(v34);

  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v101 = v32;
  v37 = sub_1D2870F68();
  v38 = sub_1D267901C(v37);

  *&v102 = v35;
  v39 = v38;
  v40 = v98;
  sub_1D274DE40(v39);
  v41 = *(v102 + 16);

  if (v41 != 6)
  {
    goto LABEL_13;
  }

  sub_1D22D7044(v40, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  if (swift_dynamicCast())
  {
    sub_1D2687564(v31, type metadata accessor for CuratedPrompt);
    v42 = v101;
    goto LABEL_5;
  }

  v42 = v101;
  if (!*(*(v101 + v36) + 16))
  {
LABEL_5:
    v43 = *(v42 + v33);
    v44 = *(v43 + 16);
    if (v44)
    {
      sub_1D26874FC(v43 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * (v44 - 1), v29, type metadata accessor for CuratedPrompt);
      sub_1D26760C4(v29);
      *(&v103 + 1) = v24;
      *v104 = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
      v46 = type metadata accessor for CuratedPrompt;
      v47 = v29;
LABEL_12:
      sub_1D2687494(v47, boxed_opaque_existential_1, v46);
      sub_1D22BD238(a3, &qword_1EC6DF7C8);
      *&v104[8] = xmmword_1D2883070;
      v104[24] = 6;
      v51 = v103;
      *a3 = v102;
      a3[1] = v51;
      a3[2] = *v104;
      *(a3 + 41) = *&v104[9];
      goto LABEL_13;
    }
  }

  sub_1D22D7044(v40, &v102);
  if (swift_dynamicCast())
  {
    sub_1D2687564(v23, type metadata accessor for Prompt);
  }

  else if (*(*(v42 + v33) + 16))
  {
    goto LABEL_13;
  }

  v48 = *(v101 + v36);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v86;
    sub_1D26874FC(v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * (v49 - 1), v86, type metadata accessor for Prompt);
    sub_1D2675C1C(v50);
    *(&v103 + 1) = v97;
    *v104 = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
    v46 = type metadata accessor for Prompt;
    v47 = v50;
    goto LABEL_12;
  }

LABEL_13:
  sub_1D22D7044(v40, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v52 = v99;
  v53 = swift_dynamicCast();
  v54 = *(v100 + 56);
  if (v53)
  {
    v54(v52, 0, 1, v24);
    v55 = v95;
    sub_1D2687494(v52, v95, type metadata accessor for CuratedPrompt);
    v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    v57 = v101;
    swift_beginAccess();
    sub_1D22BD1D0(v57 + v56, &v102, &qword_1EC6D9A58);
    v58 = *(&v103 + 1);
    sub_1D22BD238(&v102, &qword_1EC6D9A58);
    if (!v58)
    {
      v59 = v93;
      v60 = v88;
      sub_1D22BD1D0(v93, v88, &qword_1EC6DF7C0);
      v61 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
      v62 = *(*(v61 - 8) + 48);
      if (v62(v60, 1, v61) == 1)
      {
        sub_1D22BD238(v60, &qword_1EC6DF7C0);
        goto LABEL_25;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D2687564(v60, type metadata accessor for GenericCharacterManager.AutomaticPersonalization);
LABEL_25:
        v77 = v59;
        v78 = v87;
        sub_1D22BD1D0(v77, v87, &qword_1EC6DF7C0);
        if (v62(v78, 1, v61) == 1)
        {
          sub_1D22BD238(v78, &qword_1EC6DF7C0);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v79 = v84;
            sub_1D2687494(v78, v84, type metadata accessor for ImageGenerationPerson.SkinTone);
            v80 = v79;
            v81 = v91;
            sub_1D2687494(v80, v91, type metadata accessor for ImageGenerationPerson.SkinTone);
            (*(v89 + 56))(v81, 0, 1, v90);
LABEL_32:
            v83 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
            swift_beginAccess();
            sub_1D262963C(v81, v57 + v83);
            swift_endAccess();
            sub_1D22BD238(v81, &unk_1EC6E33C0);
            goto LABEL_33;
          }

          sub_1D2687564(v78, type metadata accessor for GenericCharacterManager.AutomaticPersonalization);
        }

        v81 = v91;
        (*(v89 + 56))(v91, 1, 1, v90);
        goto LABEL_32;
      }

      v82 = v85;
      sub_1D2687494(v60, v85, type metadata accessor for CharacterAsset);
      sub_1D284580C(v82, v57);
      sub_1D2687564(v82, type metadata accessor for CharacterAsset);
    }

LABEL_33:
    sub_1D2675E88(v55);
    v74 = type metadata accessor for CuratedPrompt;
    v75 = v55;
    return sub_1D2687564(v75, v74);
  }

  v54(v52, 1, 1, v24);
  sub_1D22BD238(v52, &qword_1EC6DA210);
  sub_1D22D7044(v40, &v102);
  v63 = v94;
  v64 = v97;
  v65 = swift_dynamicCast();
  v66 = *(v96 + 56);
  v67 = v101;
  if ((v65 & 1) == 0)
  {
    v66(v63, 1, 1, v64);
    return sub_1D22BD238(v63, &unk_1EC6E1D20);
  }

  v66(v63, 0, 1, v64);
  v68 = v92;
  sub_1D2687494(v63, v92, type metadata accessor for Prompt);
  v69 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v67 + v69, &v102, &qword_1EC6D9A58);
  v70 = *(&v103 + 1);
  sub_1D22BD238(&v102, &qword_1EC6D9A58);
  if (!v70)
  {
    v71 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization();
    if ((*(*(v71 - 8) + 48))(v93, 1, v71) == 1)
    {
      v72 = v91;
      (*(v89 + 56))(v91, 1, 1, v90);
      v73 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
      swift_beginAccess();
      sub_1D262963C(v72, v67 + v73);
      swift_endAccess();
      sub_1D22BD238(v72, &unk_1EC6E33C0);
    }
  }

  sub_1D26745FC(v68);
  v74 = type metadata accessor for Prompt;
  v75 = v68;
  return sub_1D2687564(v75, v74);
}

double sub_1D2680C6C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2871818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IdentifiedEntity(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = sub_1D279F58C(*(a1 + 40));
  if (*(v18 + 16))
  {
    sub_1D26874FC(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15, type metadata accessor for IdentifiedEntity);

    sub_1D2687494(v15, v17, type metadata accessor for IdentifiedEntity);
    sub_1D26874FC(&v17[*(v11 + 20)], v6, type metadata accessor for IdentifiedEntity.Kind);
    if ((*(v8 + 48))(v6, 2, v7))
    {
      sub_1D2687564(v17, type metadata accessor for IdentifiedEntity);
      v19 = type metadata accessor for IdentifiedEntity.Kind;
      v20 = v6;
    }

    else
    {
      v21 = v10;
      (*(v8 + 32))(v10, v6, v7);
      sub_1D23C6CA0();
      v22 = _SystemPhotoLibrary.photoLibrary.getter();

      if (v22)
      {
        v23 = sub_1D286641C(v10, v22);
        if (v23)
        {
          v24 = v23;
          v25 = [v23 localIdentifier];
          v26 = sub_1D28780A8();
          v34 = v27;
          v35 = v26;

          v28 = [v24 px_localizedName];
          v29 = sub_1D28780A8();
          v31 = v30;

          (*(v8 + 8))(v21, v7);
          sub_1D2687564(v17, type metadata accessor for IdentifiedEntity);
          sub_1D238D058(0);
          *a2 = v29;
          a2[1] = v31;
          v33 = v34;
          a2[2] = v35;
          a2[3] = v33;
          a2[4] = 0;
          a2[5] = 0;
          a2[6] = 0;
          a2[7] = v24;
          return result;
        }
      }

      (*(v8 + 8))(v10, v7);
      v19 = type metadata accessor for IdentifiedEntity;
      v20 = v17;
    }

    sub_1D2687564(v20, v19);
  }

  else
  {
  }

  result = 0.0;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_1D2681054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CuratedPrompt();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_1D23C7858() + 56);
  sub_1D2870F68();

  v25 = *(v11 + 16);
  if (v25)
  {
    v22 = v7;
    v23 = a2;
    v13 = 0;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v24 = v14;
    v16 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = v8;
    while (v13 < *(v11 + 16))
    {
      v8 = v17;
      sub_1D26874FC(v16 + *(v17 + 72) * v13, v10, type metadata accessor for CuratedPrompt);
      v28 = v24;
      v29 = v15;
      v18 = *(v10 + 3);
      v26 = *(v10 + 2);
      v27 = v18;
      v19 = sub_1D28718F8();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      sub_1D22BD06C();
      sub_1D2870F68();
      sub_1D2870F68();
      v20 = sub_1D2878FE8();
      sub_1D22BD238(v6, &qword_1EC6E1D90);

      if (!v20)
      {

        a2 = v23;
        sub_1D2687494(v10, v23, type metadata accessor for CuratedPrompt);
        v21 = 0;
        v7 = v22;
        goto LABEL_9;
      }

      ++v13;
      result = sub_1D2687564(v10, type metadata accessor for CuratedPrompt);
      v17 = v8;
      if (v25 == v13)
      {

        v21 = 1;
        v7 = v22;
        a2 = v23;
        return (*(v17 + 56))(a2, v21, 1, v7);
      }
    }

    __break(1u);
  }

  else
  {

    v21 = 1;
LABEL_9:
    v17 = v8;
    return (*(v17 + 56))(a2, v21, 1, v7);
  }

  return result;
}

uint64_t sub_1D2681364(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 24) == 1)
  {
    sub_1D2681C00();
    v13 = swift_beginAccess();
    v14 = *(v4 + 48);
    MEMORY[0x1EEE9AC00](v13);
    *(&v19 - 4) = a1;
    *(&v19 - 3) = a2;
    *(&v19 - 2) = a3;
    *(&v19 - 8) = a4;
    sub_1D2870F68();
    sub_1D267885C(sub_1D26875C4, (&v19 - 6), v14);
  }

  else
  {
    sub_1D2872658();
    v16 = sub_1D2873CA8();
    v17 = sub_1D28789F8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D226E000, v16, v17, "Skipping replace representaiton update", v18, 2u);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    return (*(v10 + 8))(v12, v9);
  }
}

BOOL sub_1D268154C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = *a2 + 32;
  sub_1D2870F68();
  result = v5;
  v7 = -1;
  while (1)
  {
    v8 = v7 - v4;
    if (v7 - v4 == -1)
    {
LABEL_5:

      return v8 == -1;
    }

    if (++v7 >= *(v3 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_1D22D7044(result, v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = (*(v11 + 56))(a1, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v13);
    result = v9;
    if (v12)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268163C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for ImageGenerationPerson.SkinTone();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for CharacterAsset();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for CuratedPrompt();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    sub_1D2687494(v14, v18, type metadata accessor for CuratedPrompt);
    if (v18[*(v15 + 92) + 48] != 255)
    {
      sub_1D2683500(v18, v36);
    }

    sub_1D2687564(v18, type metadata accessor for CuratedPrompt);
  }

  else
  {
    v20(v14, 1, 1, v15);
    sub_1D22BD238(v14, &qword_1EC6DA210);
  }

  sub_1D22D7044(a1, v39);
  v21 = swift_dynamicCast();
  v22 = *(v10 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v8, 1, 1, v9);
    return sub_1D22BD238(v8, &unk_1EC6DDDA0);
  }

  v22(v8, 0, 1, v9);
  v23 = v8;
  v24 = v33;
  sub_1D2687494(v23, v33, type metadata accessor for CharacterAsset);
  v25 = v35;
  sub_1D26874FC(v24 + *(v9 + 24), v35, type metadata accessor for CharacterRecipe);
  v26 = *(v32 + 20);
  v27 = *MEMORY[0x1E69E0170];
  v28 = sub_1D28737A8();
  v29 = v34;
  (*(*(v28 - 8) + 104))(v34, v27, v28);
  sub_1D26875E8(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v39[0] == v37 && v39[1] == v38)
  {
    sub_1D2687564(v29, type metadata accessor for ImageGenerationPerson.SkinTone);

    sub_1D2687564(v25 + v26, type metadata accessor for ImageGenerationPerson.SkinTone);
LABEL_12:
    sub_1D26848F0(v24, v36);
    return sub_1D2687564(v24, type metadata accessor for CharacterAsset);
  }

  v31 = sub_1D2879618();
  sub_1D2687564(v29, type metadata accessor for ImageGenerationPerson.SkinTone);

  sub_1D2687564(v25 + v26, type metadata accessor for ImageGenerationPerson.SkinTone);
  if (v31)
  {
    goto LABEL_12;
  }

  return sub_1D2687564(v24, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D2681C00()
{
  result = swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_67;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v4)
      {
        result = sub_1D2879368();
        v6 = result;
      }

      else
      {
        v6 = *(v3 + 16);
      }

      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D38A1C30](v6, v2);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_58;
      }

      sub_1D2870F78();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      goto LABEL_59;
    }
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    if (v4)
    {
      result = sub_1D2879368();
      if (v9 != result)
      {
LABEL_24:
        v3 = v6 + 5;
        do
        {
          v11 = v3 - 4;
          v4 = v2 & 0xC000000000000001;
          if ((v2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1D38A1C30](v3 - 4, v2);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            sub_1D2870F78();
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (v12)
          {
            result = swift_unknownObjectRelease();
            if (v11 != v6)
            {
              if (v4)
              {
                v13 = MEMORY[0x1D38A1C30](v6, v2);
                v14 = MEMORY[0x1D38A1C30](v3 - 4, v2);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_70;
                }

                v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v15)
                {
                  goto LABEL_71;
                }

                if (v11 >= v15)
                {
                  goto LABEL_72;
                }

                v13 = *(v2 + 8 * v6 + 32);
                v14 = *(v2 + 8 * v3);
                sub_1D2870F78();
                sub_1D2870F78();
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v0 + 48) = v2;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1D278F320(v2);
                *(v0 + 48) = v2;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_64;
              }

              v4 = v2 & 0xFFFFFFFFFFFFFF8;
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v14;

              *(v0 + 48) = v2;
              if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1D278F320(v2);
                *(v0 + 48) = v2;
                v4 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  result = sub_1D2879368();
                  v5 = result;
                  goto LABEL_3;
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_57;
              }

              if (v11 >= *(v4 + 16))
              {
                goto LABEL_66;
              }

              *(v4 + 8 * v3) = v13;

              *(v0 + 48) = v2;
            }

            v8 = __OFADD__(v6++, 1);
            if (v8)
            {
              goto LABEL_63;
            }
          }

          v8 = __OFADD__(v11, 1);
          v17 = v3 - 3;
          if (v8)
          {
            goto LABEL_62;
          }

          if (v2 >> 62)
          {
            result = sub_1D2879368();
          }

          else
          {
            result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v3;
        }

        while (v17 != result);
      }
    }

    else
    {
      result = *(v3 + 16);
      if (v9 != result)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    if (v2 >> 62)
    {
      result = sub_1D2879368();
      v10 = result;
      if (result >= v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v6)
      {
LABEL_23:
        sub_1D278CA38(v6, v10);
        return swift_endAccess();
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2681F68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D2681FDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(a2, a3, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ImageConditioningRepresentationsManager.deinit()
{

  return v0;
}

uint64_t ImageConditioningRepresentationsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2682164(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 56))(v2, v3, v4) & 1;
}

uint64_t sub_1D26821CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D268223C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Prompt(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_1D25A60EC(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_1D26874FC(v23 + v24 * v19, v39, type metadata accessor for Prompt);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_1D2687564(v25, type metadata accessor for Prompt);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_1D26874FC(v23 + v24 * v43, v36, type metadata accessor for Prompt);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_1D26874FC(v23 + v42, v37, type metadata accessor for Prompt);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1D278BCA4(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_1D268742C(v37, v16 + v41 + v31, type metadata accessor for Prompt);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1D268742C(v36, v33 + v32, type metadata accessor for Prompt);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D2682594(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for CuratedPrompt();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_1D25A6118(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_1D26874FC(v23 + v24 * v19, v39, type metadata accessor for CuratedPrompt);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_1D2687564(v25, type metadata accessor for CuratedPrompt);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_1D26874FC(v23 + v24 * v43, v36, type metadata accessor for CuratedPrompt);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_1D26874FC(v23 + v42, v37, type metadata accessor for CuratedPrompt);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1D278BCF4(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_1D268742C(v37, v16 + v41 + v31, type metadata accessor for CuratedPrompt);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1D268742C(v36, v33 + v32, type metadata accessor for CuratedPrompt);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1D26828EC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PhotosPersonAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for CharacterAsset();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = v8;
  v43[4] = sub_1D26875E8(&qword_1EC6D9A60, type metadata accessor for PhotosPersonAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  sub_1D26874FC(a1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  sub_1D22D7044(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v15);
    sub_1D2687494(v14, v18, type metadata accessor for CharacterAsset);
    v22 = CharacterAsset.id.getter();
    v24 = v23;
    sub_1D2687564(v18, type metadata accessor for CharacterAsset);
LABEL_3:
    v25 = v41;
    v26 = sub_1D23C6DDC();
    sub_1D2612E14(v22, v24);

LABEL_15:
    sub_1D28462CC(boxed_opaque_existential_1, *(v25 + 40));
    __swift_destroy_boxed_opaque_existential_0(v43);
    return;
  }

  v21(v14, 1, 1, v15);
  sub_1D22BD238(v14, &unk_1EC6DDDA0);
  sub_1D22D7044(v43, v42);
  v27 = swift_dynamicCast();
  v28 = *(v9 + 56);
  if ((v27 & 1) == 0)
  {
    v28(v7, 1, 1, v8);
    v37 = &unk_1EC6DDDC0;
    v38 = v7;
LABEL_14:
    sub_1D22BD238(v38, v37);
    v25 = v41;
    goto LABEL_15;
  }

  v28(v7, 0, 1, v8);
  sub_1D2687494(v7, v11, type metadata accessor for PhotosPersonAsset);
  v29 = *(v11 + 7);
  if (!v29)
  {
    v39 = sub_1D2871818();
    v32 = v40;
    (*(*(v39 - 8) + 56))(v40, 1, 1, v39);
LABEL_13:
    sub_1D2687564(v11, type metadata accessor for PhotosPersonAsset);
    v37 = &qword_1EC6D8F70;
    v38 = v32;
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v30 localIdentifier];
  v32 = v40;
  if (!v31)
  {
    sub_1D28780A8();
    v31 = sub_1D2878068();
  }

  v33 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v33)
  {
    sub_1D28780A8();

    sub_1D28717A8();

    v34 = sub_1D2871818();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v32, 1, v34) != 1)
    {
      v22 = sub_1D28717B8();
      v24 = v36;
      sub_1D2687564(v11, type metadata accessor for PhotosPersonAsset);
      (*(v35 + 8))(v32, v34);
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1D2682EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for PhotosPersonAsset();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for CharacterAsset();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = a3;
  v49[4] = a4;
  v47 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1D22D7044(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v24(v17, 0, 1, v18);
    sub_1D2687494(v17, v21, type metadata accessor for CharacterAsset);
    v25 = CharacterAsset.id.getter();
    v27 = v26;
    sub_1D2687564(v21, type metadata accessor for CharacterAsset);
LABEL_3:
    v28 = v46;
    v29 = sub_1D23C6DDC();
    sub_1D2612E14(v25, v27);

LABEL_15:
    sub_1D2677A78(boxed_opaque_existential_1, *(v28 + 40), a3, v47);
    __swift_destroy_boxed_opaque_existential_0(v49);
    return;
  }

  v24(v17, 1, 1, v18);
  sub_1D22BD238(v17, &unk_1EC6DDDA0);
  sub_1D22D7044(v49, v48);
  v30 = swift_dynamicCast();
  v31 = *(v13 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v11, 1, 1, v12);
    v41 = &unk_1EC6DDDC0;
    v42 = v11;
LABEL_14:
    sub_1D22BD238(v42, v41);
    v28 = v46;
    goto LABEL_15;
  }

  v31(v11, 0, 1, v12);
  v32 = v44;
  sub_1D2687494(v11, v44, type metadata accessor for PhotosPersonAsset);
  v33 = *(v32 + 56);
  if (!v33)
  {
    v43 = sub_1D2871818();
    v36 = v45;
    (*(*(v43 - 8) + 56))(v45, 1, 1, v43);
LABEL_13:
    sub_1D2687564(v32, type metadata accessor for PhotosPersonAsset);
    v41 = &qword_1EC6D8F70;
    v42 = v36;
    goto LABEL_14;
  }

  v34 = v33;
  v35 = [v34 localIdentifier];
  v36 = v45;
  if (!v35)
  {
    sub_1D28780A8();
    v35 = sub_1D2878068();
  }

  v37 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v37)
  {
    sub_1D28780A8();

    sub_1D28717A8();

    v38 = sub_1D2871818();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v36, 1, v38) != 1)
    {
      v25 = sub_1D28717B8();
      v27 = v40;
      sub_1D2687564(v32, type metadata accessor for PhotosPersonAsset);
      (*(v39 + 8))(v36, v38);
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1D2683500(uint64_t a1, uint64_t a2)
{
  v139 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v114 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v126 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v114 - v9;
  v131 = type metadata accessor for SketchConditioningImage();
  v134 = *(v131 - 8);
  v10 = MEMORY[0x1EEE9AC00](v131);
  v114 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v114 - v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v114 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v123 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v114 - v19;
  v132 = type metadata accessor for SceneConditioningImage();
  v135 = *(v132 - 8);
  v20 = MEMORY[0x1EEE9AC00](v132);
  v122 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v115 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v114 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v138 = &v114 - v26;
  v27 = sub_1D2872008();
  v136 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Prompt(0);
  v30 = *(v137 - 8);
  v31 = MEMORY[0x1EEE9AC00](v137);
  v128 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v114 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v133 = &v114 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v127 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v114 - v40;
  v42 = type metadata accessor for CuratedPrompt();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v114 - v48;
  v143[3] = v47;
  v143[4] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v143);
  sub_1D26874FC(a1, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
  sub_1D22D7044(v143, v140);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v52 = swift_dynamicCast();
  v53 = *(v43 + 56);
  if (v52)
  {
    v53(v41, 0, 1, v42);
    sub_1D2687494(v41, v49, type metadata accessor for CuratedPrompt);
    sub_1D26760C4(v49);
    v54 = type metadata accessor for CuratedPrompt;
    v55 = v49;
LABEL_3:
    sub_1D2687564(v55, v54);
LABEL_13:
    sub_1D267F6F0();
    sub_1D267E8EC();
    return __swift_destroy_boxed_opaque_existential_0(v143);
  }

  v56 = v139;
  v53(v41, 1, 1, v42);
  sub_1D22BD238(v41, &qword_1EC6DA210);
  sub_1D22D7044(v143, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D22D7044(v143, v140);
    if (swift_dynamicCast())
    {
      (*(v136 + 8))(v29, v27);
      goto LABEL_13;
    }

    sub_1D22D7044(v143, v140);
    v64 = v138;
    v65 = v137;
    v66 = swift_dynamicCast();
    v67 = *(v30 + 56);
    if (v66)
    {
      v67(v64, 0, 1, v65);
      v68 = v128;
      sub_1D2687494(v64, v128, type metadata accessor for Prompt);
      v69 = v127;
      sub_1D2681054(v68, v127);
      if ((*(v43 + 48))(v69, 1, v42) == 1)
      {
        sub_1D22BD238(v69, &qword_1EC6DA210);
        sub_1D2675C1C(v68);
      }

      else
      {
        sub_1D2687494(v69, v46, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v46);
        sub_1D2687564(v46, type metadata accessor for CuratedPrompt);
      }

      sub_1D2680C6C(v68, v140);
      if (v141)
      {
        sub_1D22BD238(v140, &qword_1EC6DF7A8);
        sub_1D2677178();
        v88 = sub_1D23C6DDC();
        sub_1D2612BDC(MEMORY[0x1E69E7CC0]);
      }

      v54 = type metadata accessor for Prompt;
      v55 = v68;
      goto LABEL_3;
    }

    v67(v64, 1, 1, v65);
    sub_1D22BD238(v64, &unk_1EC6E1D20);
    sub_1D22D7044(v143, v140);
    v71 = v129;
    v138 = v51;
    v72 = v132;
    v73 = swift_dynamicCast();
    v74 = *(v135 + 56);
    v75 = v56;
    if ((v73 & 1) == 0)
    {
      v74(v71, 1, 1, v72);
      sub_1D22BD238(v71, &qword_1EC6DA2C8);
      v89 = v126;
      v86 = v131;
      v87 = v134;
      v90 = v125;
      goto LABEL_37;
    }

    v74(v71, 0, 1, v72);
    v76 = v71;
    v77 = v130;
    sub_1D2687494(v76, v130, type metadata accessor for SceneConditioningImage);
    v78 = v123;
    sub_1D26874FC(v77, v123, type metadata accessor for SceneConditioningImage);
    v74(v78, 0, 1, v72);
    v79 = *(v56 + 40);
    v80 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v81 = *(v120 + 48);
    v82 = v121;
    sub_1D22BD1D0(v78, v121, &qword_1EC6DA2C8);
    v83 = v135;
    sub_1D22BD1D0(v79 + v80, v82 + v81, &qword_1EC6DA2C8);
    v84 = *(v83 + 48);
    v85 = v84(v82, 1, v72);
    v86 = v131;
    v87 = v134;
    if (v85 == 1)
    {
      sub_1D22BD238(v78, &qword_1EC6DA2C8);
      if (v84(v82 + v81, 1, v72) == 1)
      {
LABEL_21:
        sub_1D22BD238(v82, &qword_1EC6DA2C8);
        sub_1D2676F44();
        v54 = type metadata accessor for SceneConditioningImage;
        v55 = v130;
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v91 = v117;
    sub_1D22BD1D0(v82, v117, &qword_1EC6DA2C8);
    if (v84(v82 + v81, 1, v72) == 1)
    {
      sub_1D22BD238(v123, &qword_1EC6DA2C8);
      sub_1D2687564(v91, type metadata accessor for SceneConditioningImage);
LABEL_29:
      sub_1D22BD238(v82, &qword_1EC6DF7B8);
      v90 = v125;
      v89 = v126;
LABEL_36:
      sub_1D2687564(v130, type metadata accessor for SceneConditioningImage);
LABEL_37:
      sub_1D22D7044(v143, v140);
      v98 = swift_dynamicCast();
      v99 = *(v87 + 56);
      if (!v98)
      {
        v99(v90, 1, 1, v86);
        sub_1D22BD238(v90, &qword_1EC6DA200);
        goto LABEL_46;
      }

      v99(v90, 0, 1, v86);
      v100 = v124;
      sub_1D2687494(v90, v124, type metadata accessor for SketchConditioningImage);
      sub_1D26874FC(v100, v89, type metadata accessor for SketchConditioningImage);
      v99(v89, 0, 1, v86);
      v101 = *(v75 + 40);
      v102 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v103 = *(v118 + 48);
      v104 = v119;
      sub_1D22BD1D0(v89, v119, &qword_1EC6DA200);
      v105 = v104 + v103;
      v106 = v104;
      v107 = v134;
      sub_1D22BD1D0(v101 + v102, v105, &qword_1EC6DA200);
      v108 = *(v107 + 48);
      if (v108(v106, 1, v86) == 1)
      {
        sub_1D22BD238(v89, &qword_1EC6DA200);
        if (v108(v106 + v103, 1, v86) == 1)
        {
          sub_1D22BD238(v106, &qword_1EC6DA200);
LABEL_49:
          sub_1D26767F4();
          v54 = type metadata accessor for SketchConditioningImage;
          v55 = v124;
          goto LABEL_3;
        }
      }

      else
      {
        v109 = v116;
        sub_1D22BD1D0(v106, v116, &qword_1EC6DA200);
        if (v108(v106 + v103, 1, v86) != 1)
        {
          v111 = v106 + v103;
          v112 = v114;
          sub_1D2687494(v111, v114, type metadata accessor for SketchConditioningImage);
          type metadata accessor for PlaygroundImage();
          v113 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          sub_1D2687564(v112, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v89, &qword_1EC6DA200);
          sub_1D2687564(v109, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v106, &qword_1EC6DA200);
          if (v113)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        sub_1D22BD238(v89, &qword_1EC6DA200);
        sub_1D2687564(v109, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22BD238(v106, &qword_1EC6DF7B0);
LABEL_45:
      sub_1D2687564(v124, type metadata accessor for SketchConditioningImage);
LABEL_46:
      sub_1D22D7044(v143, v140);
      v110 = v122;
      if (swift_dynamicCast())
      {
        sub_1D2687564(v110, type metadata accessor for SceneConditioningImage);
        sub_1D2676F44();
        sub_1D26767F4();
      }

      goto LABEL_13;
    }

    v92 = v82 + v81;
    v93 = v115;
    sub_1D2687494(v92, v115, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage();
    v94 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v123, &qword_1EC6DA2C8);
    v89 = v126;
    if (v94)
    {
      v95 = *(v72 + 20);
      v96 = *(v91 + v95);
      v97 = *(v93 + v95);
      sub_1D2687564(v93, type metadata accessor for SceneConditioningImage);
      v90 = v125;
      if (v96 == 2)
      {
        if (v97 == 2)
        {
LABEL_52:
          sub_1D2687564(v117, type metadata accessor for SceneConditioningImage);
          goto LABEL_21;
        }
      }

      else if (v97 != 2 && ((v97 ^ v96) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D2687564(v93, type metadata accessor for SceneConditioningImage);
      v90 = v125;
    }

    sub_1D2687564(v117, type metadata accessor for SceneConditioningImage);
    sub_1D22BD238(v82, &qword_1EC6DA2C8);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0(v142);
  v57 = *(v56 + 40);
  sub_1D2677178();
  v58 = sub_1D23C6DDC();
  sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

  v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v60 = *(v57 + v59);
  v61 = *(v60 + 16);
  result = sub_1D2870F68();
  if (!v61)
  {
LABEL_10:

    goto LABEL_13;
  }

  v63 = 0;
  while (v63 < *(v60 + 16))
  {
    sub_1D26874FC(v60 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v63, v35, type metadata accessor for Prompt);
    sub_1D2680C6C(v35, v140);
    if (v141)
    {

      sub_1D22BD238(v140, &qword_1EC6DF7A8);
      v70 = v133;
      sub_1D2687494(v35, v133, type metadata accessor for Prompt);
      sub_1D2675C1C(v70);
      v54 = type metadata accessor for Prompt;
      v55 = v70;
      goto LABEL_3;
    }

    ++v63;
    result = sub_1D2687564(v35, type metadata accessor for Prompt);
    if (v61 == v63)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D26848F0(uint64_t a1, uint64_t a2)
{
  v138 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v113 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v125 = &v113 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v113 - v9;
  v130 = type metadata accessor for SketchConditioningImage();
  v133 = *(v130 - 8);
  v10 = MEMORY[0x1EEE9AC00](v130);
  v113 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v113 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v122 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v113 - v19;
  v131 = type metadata accessor for SceneConditioningImage();
  v134 = *(v131 - 8);
  v20 = MEMORY[0x1EEE9AC00](v131);
  v121 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v114 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v113 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v137 = &v113 - v26;
  v27 = sub_1D2872008();
  v135 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Prompt(0);
  v30 = *(v136 - 8);
  v31 = MEMORY[0x1EEE9AC00](v136);
  v127 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v113 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v113 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v126 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v113 - v40;
  v42 = type metadata accessor for CuratedPrompt();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v113 - v47;
  v142[3] = type metadata accessor for CharacterAsset();
  v142[4] = sub_1D26875E8(&qword_1EC6D9A78, type metadata accessor for CharacterAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
  sub_1D26874FC(a1, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
  sub_1D22D7044(v142, v139);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v51 = swift_dynamicCast();
  v52 = *(v43 + 56);
  if (v51)
  {
    v52(v41, 0, 1, v42);
    sub_1D2687494(v41, v48, type metadata accessor for CuratedPrompt);
    sub_1D26760C4(v48);
    v53 = type metadata accessor for CuratedPrompt;
    v54 = v48;
LABEL_3:
    sub_1D2687564(v54, v53);
LABEL_13:
    sub_1D267F6F0();
    sub_1D267E8EC();
    return __swift_destroy_boxed_opaque_existential_0(v142);
  }

  v55 = v138;
  v52(v41, 1, 1, v42);
  sub_1D22BD238(v41, &qword_1EC6DA210);
  sub_1D22D7044(v142, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D22D7044(v142, v139);
    if (swift_dynamicCast())
    {
      (*(v135 + 8))(v29, v27);
      goto LABEL_13;
    }

    sub_1D22D7044(v142, v139);
    v63 = v137;
    v64 = v136;
    v65 = swift_dynamicCast();
    v66 = *(v30 + 56);
    if (v65)
    {
      v66(v63, 0, 1, v64);
      v67 = v127;
      sub_1D2687494(v63, v127, type metadata accessor for Prompt);
      v68 = v126;
      sub_1D2681054(v67, v126);
      if ((*(v43 + 48))(v68, 1, v42) == 1)
      {
        sub_1D22BD238(v68, &qword_1EC6DA210);
        sub_1D2675C1C(v67);
      }

      else
      {
        sub_1D2687494(v68, v46, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v46);
        sub_1D2687564(v46, type metadata accessor for CuratedPrompt);
      }

      sub_1D2680C6C(v67, v139);
      if (v140)
      {
        sub_1D22BD238(v139, &qword_1EC6DF7A8);
        sub_1D2677178();
        v87 = sub_1D23C6DDC();
        sub_1D2612BDC(MEMORY[0x1E69E7CC0]);
      }

      v53 = type metadata accessor for Prompt;
      v54 = v67;
      goto LABEL_3;
    }

    v66(v63, 1, 1, v64);
    sub_1D22BD238(v63, &unk_1EC6E1D20);
    sub_1D22D7044(v142, v139);
    v70 = v128;
    v137 = v50;
    v71 = v131;
    v72 = swift_dynamicCast();
    v73 = *(v134 + 56);
    v74 = v55;
    if ((v72 & 1) == 0)
    {
      v73(v70, 1, 1, v71);
      sub_1D22BD238(v70, &qword_1EC6DA2C8);
      v88 = v125;
      v85 = v130;
      v86 = v133;
      v89 = v124;
      goto LABEL_37;
    }

    v73(v70, 0, 1, v71);
    v75 = v70;
    v76 = v129;
    sub_1D2687494(v75, v129, type metadata accessor for SceneConditioningImage);
    v77 = v122;
    sub_1D26874FC(v76, v122, type metadata accessor for SceneConditioningImage);
    v73(v77, 0, 1, v71);
    v78 = *(v55 + 40);
    v79 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v80 = *(v119 + 48);
    v81 = v120;
    sub_1D22BD1D0(v77, v120, &qword_1EC6DA2C8);
    v82 = v134;
    sub_1D22BD1D0(v78 + v79, v81 + v80, &qword_1EC6DA2C8);
    v83 = *(v82 + 48);
    v84 = v83(v81, 1, v71);
    v85 = v130;
    v86 = v133;
    if (v84 == 1)
    {
      sub_1D22BD238(v77, &qword_1EC6DA2C8);
      if (v83(v81 + v80, 1, v71) == 1)
      {
LABEL_21:
        sub_1D22BD238(v81, &qword_1EC6DA2C8);
        sub_1D2676F44();
        v53 = type metadata accessor for SceneConditioningImage;
        v54 = v129;
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v90 = v116;
    sub_1D22BD1D0(v81, v116, &qword_1EC6DA2C8);
    if (v83(v81 + v80, 1, v71) == 1)
    {
      sub_1D22BD238(v122, &qword_1EC6DA2C8);
      sub_1D2687564(v90, type metadata accessor for SceneConditioningImage);
LABEL_29:
      sub_1D22BD238(v81, &qword_1EC6DF7B8);
      v89 = v124;
      v88 = v125;
LABEL_36:
      sub_1D2687564(v129, type metadata accessor for SceneConditioningImage);
LABEL_37:
      sub_1D22D7044(v142, v139);
      v97 = swift_dynamicCast();
      v98 = *(v86 + 56);
      if (!v97)
      {
        v98(v89, 1, 1, v85);
        sub_1D22BD238(v89, &qword_1EC6DA200);
        goto LABEL_46;
      }

      v98(v89, 0, 1, v85);
      v99 = v123;
      sub_1D2687494(v89, v123, type metadata accessor for SketchConditioningImage);
      sub_1D26874FC(v99, v88, type metadata accessor for SketchConditioningImage);
      v98(v88, 0, 1, v85);
      v100 = *(v74 + 40);
      v101 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v102 = *(v117 + 48);
      v103 = v118;
      sub_1D22BD1D0(v88, v118, &qword_1EC6DA200);
      v104 = v103 + v102;
      v105 = v103;
      v106 = v133;
      sub_1D22BD1D0(v100 + v101, v104, &qword_1EC6DA200);
      v107 = *(v106 + 48);
      if (v107(v105, 1, v85) == 1)
      {
        sub_1D22BD238(v88, &qword_1EC6DA200);
        if (v107(v105 + v102, 1, v85) == 1)
        {
          sub_1D22BD238(v105, &qword_1EC6DA200);
LABEL_49:
          sub_1D26767F4();
          v53 = type metadata accessor for SketchConditioningImage;
          v54 = v123;
          goto LABEL_3;
        }
      }

      else
      {
        v108 = v115;
        sub_1D22BD1D0(v105, v115, &qword_1EC6DA200);
        if (v107(v105 + v102, 1, v85) != 1)
        {
          v110 = v105 + v102;
          v111 = v113;
          sub_1D2687494(v110, v113, type metadata accessor for SketchConditioningImage);
          type metadata accessor for PlaygroundImage();
          v112 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          sub_1D2687564(v111, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v88, &qword_1EC6DA200);
          sub_1D2687564(v108, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v105, &qword_1EC6DA200);
          if (v112)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        sub_1D22BD238(v88, &qword_1EC6DA200);
        sub_1D2687564(v108, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22BD238(v105, &qword_1EC6DF7B0);
LABEL_45:
      sub_1D2687564(v123, type metadata accessor for SketchConditioningImage);
LABEL_46:
      sub_1D22D7044(v142, v139);
      v109 = v121;
      if (swift_dynamicCast())
      {
        sub_1D2687564(v109, type metadata accessor for SceneConditioningImage);
        sub_1D2676F44();
        sub_1D26767F4();
      }

      goto LABEL_13;
    }

    v91 = v81 + v80;
    v92 = v114;
    sub_1D2687494(v91, v114, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage();
    v93 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v122, &qword_1EC6DA2C8);
    v88 = v125;
    if (v93)
    {
      v94 = *(v71 + 20);
      v95 = *(v90 + v94);
      v96 = *(v92 + v94);
      sub_1D2687564(v92, type metadata accessor for SceneConditioningImage);
      v89 = v124;
      if (v95 == 2)
      {
        if (v96 == 2)
        {
LABEL_52:
          sub_1D2687564(v116, type metadata accessor for SceneConditioningImage);
          goto LABEL_21;
        }
      }

      else if (v96 != 2 && ((v96 ^ v95) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D2687564(v92, type metadata accessor for SceneConditioningImage);
      v89 = v124;
    }

    sub_1D2687564(v116, type metadata accessor for SceneConditioningImage);
    sub_1D22BD238(v81, &qword_1EC6DA2C8);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0(v141);
  v56 = *(v55 + 40);
  sub_1D2677178();
  v57 = sub_1D23C6DDC();
  sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v59 = *(v56 + v58);
  v60 = *(v59 + 16);
  result = sub_1D2870F68();
  if (!v60)
  {
LABEL_10:

    goto LABEL_13;
  }

  v62 = 0;
  while (v62 < *(v59 + 16))
  {
    sub_1D26874FC(v59 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v62, v35, type metadata accessor for Prompt);
    sub_1D2680C6C(v35, v139);
    if (v140)
    {

      sub_1D22BD238(v139, &qword_1EC6DF7A8);
      v69 = v132;
      sub_1D2687494(v35, v132, type metadata accessor for Prompt);
      sub_1D2675C1C(v69);
      v53 = type metadata accessor for Prompt;
      v54 = v69;
      goto LABEL_3;
    }

    ++v62;
    result = sub_1D2687564(v35, type metadata accessor for Prompt);
    if (v60 == v62)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2685CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v144 = a4;
  v145 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v118 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v120 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v132 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v118 - v12;
  v131 = type metadata accessor for SketchConditioningImage();
  v140 = *(v131 - 8);
  v13 = MEMORY[0x1EEE9AC00](v131);
  v118 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v118 - v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v118 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v121 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v128 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v118 - v22;
  v138 = type metadata accessor for SceneConditioningImage();
  v136 = *(v138 - 8);
  v23 = MEMORY[0x1EEE9AC00](v138);
  v127 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v119 = &v118 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v118 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v143 = &v118 - v29;
  v30 = sub_1D2872008();
  v141 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Prompt(0);
  v33 = *(v142 - 8);
  v34 = MEMORY[0x1EEE9AC00](v142);
  v134 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v118 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v139 = &v118 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v133 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v118 - v43;
  v45 = type metadata accessor for CuratedPrompt();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v124 = &v118 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v118 - v49;
  v149[3] = a3;
  v149[4] = v144;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v149);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1D22D7044(v149, v146);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v53 = swift_dynamicCast();
  v54 = *(v46 + 56);
  if (v53)
  {
    v54(v44, 0, 1, v45);
    sub_1D2687494(v44, v50, type metadata accessor for CuratedPrompt);
    sub_1D26760C4(v50);
    v55 = type metadata accessor for CuratedPrompt;
    v56 = v50;
LABEL_3:
    sub_1D2687564(v56, v55);
LABEL_13:
    sub_1D267F6F0();
    sub_1D267E8EC();
    return __swift_destroy_boxed_opaque_existential_0(v149);
  }

  v57 = v145;
  v54(v44, 1, 1, v45);
  sub_1D22BD238(v44, &qword_1EC6DA210);
  sub_1D22D7044(v149, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D22D7044(v149, v146);
    v65 = v57;
    if (swift_dynamicCast())
    {
      (*(v141 + 8))(v32, v30);
      goto LABEL_13;
    }

    sub_1D22D7044(v149, v146);
    v66 = v143;
    v67 = v142;
    v68 = swift_dynamicCast();
    v69 = *(v33 + 56);
    if (v68)
    {
      v69(v66, 0, 1, v67);
      v70 = v134;
      sub_1D2687494(v66, v134, type metadata accessor for Prompt);
      v71 = v133;
      sub_1D2681054(v70, v133);
      if ((*(v46 + 48))(v71, 1, v45) == 1)
      {
        sub_1D22BD238(v71, &qword_1EC6DA210);
        sub_1D2675C1C(v70);
      }

      else
      {
        v89 = v124;
        sub_1D2687494(v71, v124, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v89);
        sub_1D2687564(v89, type metadata accessor for CuratedPrompt);
      }

      sub_1D2680C6C(v70, v146);
      if (v147)
      {
        sub_1D22BD238(v146, &qword_1EC6DF7A8);
        sub_1D2677178();
        v90 = sub_1D23C6DDC();
        sub_1D2612BDC(MEMORY[0x1E69E7CC0]);
      }

      v55 = type metadata accessor for Prompt;
      v56 = v70;
      goto LABEL_3;
    }

    v69(v66, 1, 1, v67);
    sub_1D22BD238(v66, &unk_1EC6E1D20);
    sub_1D22D7044(v149, v146);
    v73 = v135;
    v144 = v52;
    v74 = v138;
    v75 = swift_dynamicCast();
    v76 = v136;
    v77 = *(v136 + 56);
    if ((v75 & 1) == 0)
    {
      v77(v73, 1, 1, v74);
      sub_1D22BD238(v73, &qword_1EC6DA2C8);
      v91 = v132;
      v92 = v131;
      v88 = v140;
      v93 = v130;
      goto LABEL_37;
    }

    v77(v73, 0, 1, v74);
    v78 = v73;
    v79 = v137;
    sub_1D2687494(v78, v137, type metadata accessor for SceneConditioningImage);
    v80 = v74;
    v81 = v128;
    sub_1D26874FC(v79, v128, type metadata accessor for SceneConditioningImage);
    v77(v81, 0, 1, v80);
    v82 = *(v65 + 40);
    v83 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v84 = *(v125 + 48);
    v85 = v126;
    sub_1D22BD1D0(v81, v126, &qword_1EC6DA2C8);
    sub_1D22BD1D0(v82 + v83, v85 + v84, &qword_1EC6DA2C8);
    v86 = *(v76 + 48);
    v87 = v86(v85, 1, v80);
    v88 = v140;
    if (v87 == 1)
    {
      sub_1D22BD238(v81, &qword_1EC6DA2C8);
      if (v86(v85 + v84, 1, v80) == 1)
      {
LABEL_21:
        sub_1D22BD238(v85, &qword_1EC6DA2C8);
        sub_1D2676F44();
        v55 = type metadata accessor for SceneConditioningImage;
        v56 = v137;
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v94 = v121;
    sub_1D22BD1D0(v85, v121, &qword_1EC6DA2C8);
    v95 = v80;
    if (v86(v85 + v84, 1, v80) == 1)
    {
      sub_1D22BD238(v128, &qword_1EC6DA2C8);
      sub_1D2687564(v94, type metadata accessor for SceneConditioningImage);
LABEL_29:
      sub_1D22BD238(v85, &qword_1EC6DF7B8);
      v93 = v130;
      v91 = v132;
      v92 = v131;
LABEL_36:
      sub_1D2687564(v137, type metadata accessor for SceneConditioningImage);
LABEL_37:
      sub_1D22D7044(v149, v146);
      v102 = swift_dynamicCast();
      v103 = *(v88 + 56);
      if (!v102)
      {
        v103(v93, 1, 1, v92);
        sub_1D22BD238(v93, &qword_1EC6DA200);
        goto LABEL_46;
      }

      v103(v93, 0, 1, v92);
      v104 = v129;
      sub_1D2687494(v93, v129, type metadata accessor for SketchConditioningImage);
      sub_1D26874FC(v104, v91, type metadata accessor for SketchConditioningImage);
      v103(v91, 0, 1, v92);
      v105 = *(v65 + 40);
      v106 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v107 = *(v122 + 48);
      v108 = v123;
      sub_1D22BD1D0(v91, v123, &qword_1EC6DA200);
      v109 = v108 + v107;
      v110 = v108;
      v111 = v140;
      sub_1D22BD1D0(v105 + v106, v109, &qword_1EC6DA200);
      v112 = *(v111 + 48);
      if (v112(v110, 1, v92) == 1)
      {
        sub_1D22BD238(v91, &qword_1EC6DA200);
        if (v112(v110 + v107, 1, v92) == 1)
        {
          sub_1D22BD238(v110, &qword_1EC6DA200);
LABEL_49:
          sub_1D26767F4();
          v55 = type metadata accessor for SketchConditioningImage;
          v56 = v129;
          goto LABEL_3;
        }
      }

      else
      {
        v113 = v120;
        sub_1D22BD1D0(v110, v120, &qword_1EC6DA200);
        if (v112(v110 + v107, 1, v92) != 1)
        {
          v115 = v110 + v107;
          v116 = v118;
          sub_1D2687494(v115, v118, type metadata accessor for SketchConditioningImage);
          type metadata accessor for PlaygroundImage();
          v117 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          sub_1D2687564(v116, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v91, &qword_1EC6DA200);
          sub_1D2687564(v113, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v110, &qword_1EC6DA200);
          if (v117)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        sub_1D22BD238(v91, &qword_1EC6DA200);
        sub_1D2687564(v113, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22BD238(v110, &qword_1EC6DF7B0);
LABEL_45:
      sub_1D2687564(v129, type metadata accessor for SketchConditioningImage);
LABEL_46:
      sub_1D22D7044(v149, v146);
      v114 = v127;
      if (swift_dynamicCast())
      {
        sub_1D2687564(v114, type metadata accessor for SceneConditioningImage);
        sub_1D2676F44();
        sub_1D26767F4();
      }

      goto LABEL_13;
    }

    v96 = v85 + v84;
    v97 = v119;
    sub_1D2687494(v96, v119, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage();
    v98 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v128, &qword_1EC6DA2C8);
    v91 = v132;
    v92 = v131;
    if (v98)
    {
      v99 = *(v95 + 20);
      v100 = *(v94 + v99);
      v101 = *(v97 + v99);
      sub_1D2687564(v97, type metadata accessor for SceneConditioningImage);
      v93 = v130;
      if (v100 == 2)
      {
        if (v101 == 2)
        {
LABEL_52:
          sub_1D2687564(v121, type metadata accessor for SceneConditioningImage);
          goto LABEL_21;
        }
      }

      else if (v101 != 2 && ((v101 ^ v100) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D2687564(v97, type metadata accessor for SceneConditioningImage);
      v93 = v130;
    }

    sub_1D2687564(v121, type metadata accessor for SceneConditioningImage);
    sub_1D22BD238(v85, &qword_1EC6DA2C8);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0(v148);
  v58 = *(v57 + 40);
  sub_1D2677178();
  v59 = sub_1D23C6DDC();
  sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

  v60 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v61 = *(v58 + v60);
  v62 = *(v61 + 16);
  result = sub_1D2870F68();
  if (!v62)
  {
LABEL_10:

    goto LABEL_13;
  }

  v64 = 0;
  while (v64 < *(v61 + 16))
  {
    sub_1D26874FC(v61 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v64, v38, type metadata accessor for Prompt);
    sub_1D2680C6C(v38, v146);
    if (v147)
    {

      sub_1D22BD238(v146, &qword_1EC6DF7A8);
      v72 = v139;
      sub_1D2687494(v38, v139, type metadata accessor for Prompt);
      sub_1D2675C1C(v72);
      v55 = type metadata accessor for Prompt;
      v56 = v72;
      goto LABEL_3;
    }

    ++v64;
    result = sub_1D2687564(v38, type metadata accessor for Prompt);
    if (v62 == v64)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D26870D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v14 = v4;
  v15 = a2;
  v13 = a2 + 32;
  do
  {
    v6 = v4 + 40 * v3;
    v7 = *(a2 + 16) + 1;
    while (--v7)
    {
      v8 = v5 + 40;
      sub_1D22D7044(v5, v16);
      v9 = v17;
      v10 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v11 = (*(v10 + 56))(v6, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v5 = v8;
      if (v11)
      {
        return v3;
      }
    }

    ++v3;
    v4 = v14;
    a2 = v15;
    v5 = v13;
  }

  while (v3 != v2);
  return 0;
}

uint64_t sub_1D26871E4(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_1D26870D4(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v21 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = v3;
    v23 = v3 + 32;
LABEL_9:
    while (1)
    {
      v11 = v5[2];
      if (v9 == v11)
      {
        return v8;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

      v28 = v5;
      v12 = v5 + 4;
      sub_1D22D7044(&v12[5 * v9], v27);
      v13 = *(v3 + 16) + 1;
      v14 = v23;
      while (--v13)
      {
        v15 = v14 + 40;
        sub_1D22D7044(v14, &v24);
        v16 = v25;
        v17 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, v25);
        v18 = (*(v17 + 56))(v27, v16, v17);
        __swift_destroy_boxed_opaque_existential_0(&v24);
        v14 = v15;
        if (v18)
        {
          result = __swift_destroy_boxed_opaque_existential_0(v27);
          v3 = v22;
          v5 = v28;
          v10 = __OFADD__(v9++, 1);
          if (v10)
          {
            goto LABEL_27;
          }

          goto LABEL_9;
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0(v27);
      if (v8 == v9)
      {
        v5 = v28;
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v19 = v28[2];
        if (v8 >= v19)
        {
          goto LABEL_30;
        }

        result = sub_1D22D7044(&v12[5 * v8], v27);
        if (v9 >= v19)
        {
          goto LABEL_31;
        }

        sub_1D22D7044(&v12[5 * v9], &v24);
        v5 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D278BCE0(v5);
        }

        v20 = v5 + 4;
        __swift_destroy_boxed_opaque_existential_0(&v5[5 * v8 + 4]);
        result = sub_1D227268C(&v24, &v5[5 * v8 + 4]);
        if (v9 >= v5[2])
        {
          goto LABEL_32;
        }

        __swift_destroy_boxed_opaque_existential_0(&v20[5 * v9]);
        result = sub_1D227268C(v27, &v20[5 * v9]);
        *v21 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      v3 = v22;
      if (v10)
      {
        goto LABEL_28;
      }

      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268742C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2687494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26874FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2687564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D26875E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D268764C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = sub_1D2878568();
  v2[11] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D26876E8, v4, v3);
}

uint64_t sub_1D26876E8()
{
  v1 = v0[9];
  [v1 setDeliveryMode_];
  type metadata accessor for Canceller();
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = inited;
  v4 = sub_1D2878558();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  *v5 = v0;
  v5[1] = sub_1D2687838;
  v7 = v0[8];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v7, &unk_1D289B498, v3, sub_1D268996C, inited, v4, v8, v6);
}

uint64_t sub_1D2687838()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D26879D8;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D268795C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D268795C()
{
  v1 = *(v0 + 112);
  swift_setDeallocating();
  sub_1D2508CC0(v1 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D26879D8()
{
  v1 = *(v0 + 112);

  swift_setDeallocating();
  sub_1D2508CC0(v1 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2687A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1D2878568();
  v3[6] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2687B0C, v5, v4);
}

uint64_t sub_1D2687B0C()
{
  if (sub_1D28786D8())
  {
    v1 = *(v0 + 16);

    v2 = type metadata accessor for PhotosPersonImage();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v11 = *(v0 + 24);
    v5 = sub_1D2878558();
    *(v0 + 72) = v5;
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *(v6 + 16) = v11;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
    *v7 = v0;
    v7[1] = sub_1D2687CC8;
    v9 = *(v0 + 16);
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v9, v5, v10, 0xD00000000000001DLL, 0x80000001D28BF7C0, sub_1D2689970, v6, v8);
  }
}

uint64_t sub_1D2687CC8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D2687E50;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D2687DEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2687DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2687E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2687EC8(uint64_t a1, void (*a2)(char *, uint64_t), os_unfair_lock_s *a3)
{
  v66 = a3;
  v71 = a2;
  v73 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v63 - v3;
  v74 = sub_1D2873CB8();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v63 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = *(v11 + 16);
  v20(v18, v73, v10);
  v70 = v15;
  v20(v15, v18, v10);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v11;
  v20(v72, v18, v10);
  v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  (*(v11 + 32))(v23 + v22, v18, v10);
  v73 = v19;
  swift_retain_n();
  sub_1D2872658();
  v24 = sub_1D2873CA8();
  v25 = sub_1D2878A08();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, aBlock);
    _os_log_impl(&dword_1D226E000, v24, v25, "%s: Status: Generating", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1D38A3520](v27, -1, -1);
    MEMORY[0x1D38A3520](v26, -1, -1);
  }

  v28 = *(v69 + 8);
  v28(v9, v74);
  v29 = objc_opt_self();
  v30 = [v29 sharedManager];
  v31 = swift_allocObject();
  v31[2] = sub_1D2689AD0;
  v31[3] = v23;
  v32 = v71;
  v31[4] = v71;
  aBlock[4] = sub_1D2689B50;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2689518;
  aBlock[3] = &block_descriptor_35;
  v33 = _Block_copy(aBlock);
  sub_1D2870F78();
  v34 = v32;

  v35 = [v30 requestFaceCropForOptions:v34 resultHandler:v33];
  _Block_release(v33);

  if (v35)
  {
    v36 = *(v21 + 8);
    v36(v70, v10);
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = sub_1D2689AD0;
    *(v37 + 32) = v23;
    sub_1D2870F78();
    v38 = v66;
    os_unfair_lock_lock(v66 + 4);
    if (v38[10]._os_unfair_lock_opaque)
    {
      v70 = v36;
      os_unfair_lock_unlock(v38 + 4);
      v39 = [v29 sharedManager];
      [v39 cancelRequestForRequestID_];

      v40 = v64;
      sub_1D2872658();
      v41 = sub_1D2873CA8();
      v42 = sub_1D2878A08();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v71 = v28;
        v45 = v44;
        aBlock[0] = v44;
        *v43 = 136315394;
        *(v43 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, aBlock);
        *(v43 + 12) = 1024;
        *(v43 + 14) = v35;
        _os_log_impl(&dword_1D226E000, v41, v42, "%s: Request Cancelled with id: %d", v43, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1D38A3520](v45, -1, -1);
        MEMORY[0x1D38A3520](v43, -1, -1);

        v71(v64, v74);
      }

      else
      {

        v28(v40, v74);
      }

      v59 = v73;
      v60 = type metadata accessor for PhotosPersonImage();
      v61 = v68;
      (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
      swift_storeEnumTagMultiPayload();
      v58 = v72;
      sub_1D2688844(v61, v59);
      sub_1D2689B80(v61);
      v36 = v70;
    }

    else
    {
      v56 = *&v38[6]._os_unfair_lock_opaque;
      v57 = *&v38[8]._os_unfair_lock_opaque;
      *&v38[6]._os_unfair_lock_opaque = sub_1D2689B74;
      *&v38[8]._os_unfair_lock_opaque = v37;
      sub_1D2870F78();
      sub_1D22D7900(v56, v57);
      os_unfair_lock_unlock(v38 + 4);
      v58 = v72;
    }

    v36(v58, v10);
  }

  else
  {
    v71 = v28;
    v46 = type metadata accessor for PhotosPersonImage();
    v47 = v68;
    (*(*(v46 - 8) + 56))(v68, 1, 1, v46);
    swift_storeEnumTagMultiPayload();
    v48 = v70;
    sub_1D2688844(v47, v73);
    sub_1D2689B80(v47);
    v49 = *(v21 + 8);
    v49(v48, v10);
    v50 = v65;
    sub_1D2872658();
    v51 = sub_1D2873CA8();
    v52 = sub_1D2878A08();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, aBlock);
      _os_log_impl(&dword_1D226E000, v51, v52, "%s: Invalid Request ID", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      v49(v72, v10);
      v55 = v65;
    }

    else
    {

      v49(v72, v10);

      v55 = v50;
    }

    v71(v55, v74);
  }
}

void sub_1D2688844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v10 - v8);
  __swp(a2 + 16, (a2 + 16));
  if (((a2 + 16) & 1) == 0)
  {
    sub_1D2689CA8(a1, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10[1] = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808);
      sub_1D2878508();
    }

    else
    {
      sub_1D2689D18(v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808);
      sub_1D2878518();
    }
  }
}

uint64_t sub_1D26889AC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v99 = a1;
  v98 = type metadata accessor for PhotosPersonImage();
  v93 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v88 - v11);
  v13 = sub_1D2873CB8();
  v14 = *(v13 - 8);
  v96 = v13;
  v97 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  v100 = sub_1D28780A8();
  v101 = v28;
  sub_1D28790D8();
  v29 = *(a2 + 16);
  v94 = v10;
  v95 = a4;
  if (v29 && (v30 = sub_1D25D0A38(v102), (v31 & 1) != 0))
  {
    sub_1D23C3EE4(*(a2 + 56) + 32 * v30, v103);
    sub_1D23ED134(v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    if (swift_dynamicCast())
    {
      v32 = v100;
      sub_1D2872658();
      v33 = v32;
      v34 = sub_1D2873CA8();
      v35 = sub_1D2878A18();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = a3;
        v38 = swift_slowAlloc();
        v102[0] = v38;
        *v36 = 136315138;
        swift_getErrorValue();
        v39 = sub_1D2879748();
        v41 = sub_1D23D7C84(v39, v40, v102);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1D226E000, v34, v35, "People Retrieval Error: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v42 = v38;
        a3 = v37;
        MEMORY[0x1D38A3520](v42, -1, -1);
        MEMORY[0x1D38A3520](v36, -1, -1);
      }

      (*(v97 + 8))(v27, v96);
      *v12 = v32;
      swift_storeEnumTagMultiPayload();
      v43 = v32;
      a3(v12);

      return sub_1D2689B80(v12);
    }
  }

  else
  {
    sub_1D23ED134(v102);
  }

  v103[0] = sub_1D28780A8();
  v103[1] = v44;
  sub_1D28790D8();
  if (!*(a2 + 16) || (v45 = sub_1D25D0A38(v102), (v46 & 1) == 0))
  {
    sub_1D23ED134(v102);
    goto LABEL_13;
  }

  sub_1D23C3EE4(*(a2 + 56) + 32 * v45, v103);
  sub_1D23ED134(v102);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v47 = 0;
    goto LABEL_14;
  }

  v47 = v100;
LABEL_14:
  v48 = [a5 person];
  if (!v48)
  {
    v48 = [a5 face];
    if (!v48)
    {
      if (v99)
      {
LABEL_21:
        if (v47)
        {
LABEL_22:
          sub_1D2872658();
          v57 = sub_1D2873CA8();
          v58 = sub_1D2878A08();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v102[0] = v60;
            *v59 = 136315138;
            *(v59 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
            _os_log_impl(&dword_1D226E000, v57, v58, "%s: Status: Generated Low Res Result", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v60);
            MEMORY[0x1D38A3520](v60, -1, -1);
            MEMORY[0x1D38A3520](v59, -1, -1);
          }

          (*(v97 + 8))(v19, v96);
LABEL_37:
          (*(v93 + 56))(v12, 1, 1, v98);
          swift_storeEnumTagMultiPayload();
          a3(v12);
          return sub_1D2689B80(v12);
        }

LABEL_34:
        sub_1D2872658();
        v84 = sub_1D2873CA8();
        v85 = sub_1D2878A08();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v102[0] = v87;
          *v86 = 136315138;
          *(v86 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
          _os_log_impl(&dword_1D226E000, v84, v85, "%s: Status: No image generated", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x1D38A3520](v87, -1, -1);
          MEMORY[0x1D38A3520](v86, -1, -1);
        }

        (*(v97 + 8))(v16, v96);
        goto LABEL_37;
      }

LABEL_33:

      if (v47)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  v49 = v48;
  v50 = [v48 localIdentifier];

  v51 = sub_1D28780A8();
  v53 = v52;

  if (!v99)
  {
    goto LABEL_33;
  }

  if (!v53)
  {
    goto LABEL_21;
  }

  v89 = v99;
  v54 = [a5 face];
  v55 = v54;
  v90 = a3;
  v88 = v22;
  if (v54)
  {
    v56 = [v54 vuObservationID];
  }

  else
  {
    v56 = 0;
  }

  v61 = v55 == 0;
  v62 = v92;
  v63 = v92 + *(v98 + 24);
  v64 = type metadata accessor for PlaygroundImage();
  v65 = (v63 + v64[9]);
  *v65 = 0u;
  v65[1] = 0u;
  *(v63 + v64[10]) = xmmword_1D28809A0;
  v66 = v64[11];
  v67 = sub_1D2873AA8();
  (*(*(v67 - 8) + 56))(v63 + v66, 1, 1, v67);
  *v63 = v99;
  *(v63 + 8) = 2;
  [v89 imageOrientation];
  *(v63 + 24) = sub_1D2878C88();
  *(v63 + 16) = 0;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  *(v63 + v64[12]) = 0;
  sub_1D2871808();
  *v62 = v51;
  *(v62 + 8) = v53;
  *(v62 + 16) = v56;
  *(v62 + 24) = v61;
  if (v47)
  {
    v68 = v91;
    sub_1D2872658();
    v69 = sub_1D2873CA8();
    v70 = sub_1D2878A08();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v90;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v102[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
      _os_log_impl(&dword_1D226E000, v69, v70, "%s: Status: Generated Low Res Result", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1D38A3520](v74, -1, -1);
      MEMORY[0x1D38A3520](v73, -1, -1);
    }

    (*(v97 + 8))(v68, v96);
    (*(v93 + 56))(v12, 1, 1, v98);
    swift_storeEnumTagMultiPayload();
    v72(v12);
    sub_1D2689B80(v12);
    return sub_1D2689C4C(v92);
  }

  else
  {
    v76 = v88;
    sub_1D2872658();
    v77 = sub_1D2873CA8();
    v78 = sub_1D2878A08();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v90;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
      _os_log_impl(&dword_1D226E000, v77, v78, "%s: Status: Generated High Res Image", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1D38A3520](v82, -1, -1);
      MEMORY[0x1D38A3520](v81, -1, -1);
    }

    (*(v97 + 8))(v76, v96);
    v83 = v92;
    sub_1D2689BE8(v92, v12);
    (*(v93 + 56))(v12, 0, 1, v98);
    swift_storeEnumTagMultiPayload();
    v80(v12);
    sub_1D2689B80(v12);
    return sub_1D2689C4C(v83);
  }
}

void sub_1D2689518(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1D2877E98();
  sub_1D2870F78();
  v5 = a2;
  v3(a2, v4);
}

uint64_t sub_1D26895BC(uint64_t a1, void (*a2)(char *))
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - v4;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedManager];
  [v10 cancelRequestForRequestID_];

  sub_1D2872658();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A08();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[1] = v3;
    v15 = v14;
    v20 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, &v20);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1;
    _os_log_impl(&dword_1D226E000, v11, v12, "%s: Request Cancelled with id: %d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = type metadata accessor for PhotosPersonImage();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  swift_storeEnumTagMultiPayload();
  v19(v5);
  return sub_1D2689B80(v5);
}

uint64_t sub_1D26898C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BC8FC;

  return sub_1D2687A6C(a1, v5, v4);
}

uint64_t sub_1D2689978(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v13 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v7, v2, v11);
  sub_1D2872728();
  (*(v8 + 8))(v10, v3);
  return sub_1D2878EF8();
}

void sub_1D2689AD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808);
  v3 = *(v1 + 16);

  sub_1D2688844(a1, v3);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2689B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2689BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2689C4C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2689CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2689D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CharacterAsset.id.getter()
{
  v1 = type metadata accessor for CharacterAsset();
  if (*(v0 + *(v1 + 24)) == 3)
  {
    v2 = 0xEB00000000646569;
    v3 = 0x6669636570736E75;
  }

  else
  {
    v3 = sub_1D2873768();
    v2 = v4;
  }

  type metadata accessor for CharacterRecipe();
  v5 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v7 = v6;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v5, v7);

  MEMORY[0x1D38A0C50](v3, v2);

  MEMORY[0x1D38A0C50](45, 0xE100000000000000);
  if (*(v0 + *(v1 + 28)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1D38A0C50](v8, v9);

  return 0;
}

uint64_t type metadata accessor for CharacterAsset()
{
  result = qword_1ED8A45D0;
  if (!qword_1ED8A45D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2689F24()
{
  v1 = 0x616D49696A6F6D65;
  v2 = 0x657069636572;
  if (*v0 != 2)
  {
    v2 = 0x6A6F6D4573657375;
  }

  if (*v0)
  {
    v1 = 0x756F726779616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2689FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D268BBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2689FEC(uint64_t a1)
{
  v2 = sub_1D268B684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D268A028(uint64_t a1)
{
  v2 = sub_1D268B684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacterAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF810);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D268B684();
  sub_1D2879888();
  v12 = 0;
  type metadata accessor for PlaygroundImage();
  sub_1D268B98C(&qword_1EC6DC208, type metadata accessor for PlaygroundImage);
  sub_1D2879598();
  if (!v1)
  {
    type metadata accessor for CharacterAsset();
    v11 = 1;
    sub_1D2879568();
    v10 = 2;
    type metadata accessor for CharacterRecipe();
    sub_1D268B98C(&qword_1EC6DF410, type metadata accessor for CharacterRecipe);
    sub_1D2879598();
    v9 = 3;
    sub_1D2879588();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CharacterAsset.hash(into:)()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D2871818();
  sub_1D268B98C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v8 = type metadata accessor for CharacterAsset();
  sub_1D247E07C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D268B748(v7, v4, type metadata accessor for PlaygroundImage);
    sub_1D28797F8();
    sub_1D2877F08();
    sub_1D268B7B0(v4, type metadata accessor for PlaygroundImage);
  }

  if (*(v0 + *(v8 + 24)) == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  type metadata accessor for CharacterRecipe();
  sub_1D28737A8();
  sub_1D268B98C(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  return sub_1D28797F8();
}

uint64_t CharacterAsset.hashValue.getter()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D268B98C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v8 = type metadata accessor for CharacterAsset();
  sub_1D247E07C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D268B748(v7, v4, type metadata accessor for PlaygroundImage);
    sub_1D28797F8();
    sub_1D2877F08();
    sub_1D268B7B0(v4, type metadata accessor for PlaygroundImage);
  }

  if (*(v0 + *(v8 + 24)) == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  type metadata accessor for CharacterRecipe();
  sub_1D28737A8();
  sub_1D268B98C(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  sub_1D28797F8();
  return sub_1D2879828();
}

uint64_t CharacterAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF820);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D268B684();
  v29 = v11;
  v15 = v30;
  sub_1D2879868();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = v12;
  v16 = v14;
  v34 = 0;
  sub_1D268B98C(&qword_1EC6DA878, type metadata accessor for PlaygroundImage);
  v17 = v26;
  v18 = v28;
  sub_1D2879528();
  sub_1D268B748(v17, v16, type metadata accessor for PlaygroundImage);
  v33 = 1;
  sub_1D28794D8();
  v19 = v30;
  sub_1D268B6D8(v6, v16 + *(v30 + 20));
  v32 = 2;
  sub_1D268B98C(&qword_1EC6DF400, type metadata accessor for CharacterRecipe);
  v20 = v24;
  sub_1D2879528();
  sub_1D268B748(v20, v16 + *(v19 + 24), type metadata accessor for CharacterRecipe);
  v31 = 3;
  v22 = sub_1D28794F8();
  (*(v27 + 8))(v29, v18);
  *(v16 + *(v19 + 28)) = v22 & 1;
  sub_1D268BD30(v16, v23, type metadata accessor for CharacterAsset);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D268B7B0(v16, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D268AE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D268B98C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  sub_1D247E07C(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D268B748(v10, v7, type metadata accessor for PlaygroundImage);
    sub_1D28797F8();
    sub_1D2877F08();
    sub_1D268B7B0(v7, type metadata accessor for PlaygroundImage);
  }

  if (*(v2 + *(a2 + 24)) == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  type metadata accessor for CharacterRecipe();
  sub_1D28737A8();
  sub_1D268B98C(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  sub_1D28797F8();
  return sub_1D2879828();
}

uint64_t sub_1D268B110@<X0>(uint64_t *a1@<X8>)
{
  result = CharacterAsset.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D268B138()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  type metadata accessor for CharacterAsset();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D268B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 28)) == 1)
  {
    sub_1D268BD30(v2, a2, type metadata accessor for PlaygroundImage);
    v4 = type metadata accessor for PlaygroundImage();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    v7 = v2 + *(a1 + 20);

    return sub_1D247E07C(v7, a2);
  }
}

uint64_t _s23ImagePlaygroundInternal14CharacterAssetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for CharacterAsset();
  v15 = v14[5];
  v16 = *(v11 + 48);
  sub_1D247E07C(a1 + v15, v13);
  sub_1D247E07C(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6DE5A0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D247E07C(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1D268B7B0(v10, type metadata accessor for PlaygroundImage);
LABEL_7:
    sub_1D22BD238(v13, &qword_1EC6D9AA0);
LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D268B748(&v13[v16], v7, type metadata accessor for PlaygroundImage);
  v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
  sub_1D268B7B0(v7, type metadata accessor for PlaygroundImage);
  sub_1D268B7B0(v10, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v13, &unk_1EC6DE5A0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_1D284E274((a1 + v14[6]), (a2 + v14[6])) & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = *(a1 + v14[7]) ^ *(a2 + v14[7]) ^ 1;
  return v19 & 1;
}

unint64_t sub_1D268B684()
{
  result = qword_1EC6DF818;
  if (!qword_1EC6DF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF818);
  }

  return result;
}

uint64_t sub_1D268B6D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D268B748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D268B7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D268B858(uint64_t a1)
{
  result = sub_1D268B98C(&qword_1EC6D9A78, type metadata accessor for CharacterAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D268B8B0(uint64_t a1)
{
  *(a1 + 8) = sub_1D268B98C(&qword_1EC6DF830, type metadata accessor for CharacterAsset);
  result = sub_1D268B98C(&qword_1EC6DF838, type metadata accessor for CharacterAsset);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D268B934(uint64_t a1)
{
  result = sub_1D268B98C(&qword_1EC6DF840, type metadata accessor for CharacterAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D268B98C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D268B9FC()
{
  type metadata accessor for PlaygroundImage();
  if (v0 <= 0x3F)
  {
    sub_1D22D0510();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CharacterRecipe();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D268BAB4()
{
  result = qword_1EC6DF848;
  if (!qword_1EC6DF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF848);
  }

  return result;
}

unint64_t sub_1D268BB0C()
{
  result = qword_1EC6DF850;
  if (!qword_1EC6DF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF850);
  }

  return result;
}

unint64_t sub_1D268BB64()
{
  result = qword_1EC6DF858;
  if (!qword_1EC6DF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF858);
  }

  return result;
}

uint64_t sub_1D268BBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D49696A6F6D65 && a2 == 0xEA00000000006567;
  if (v4 || (sub_1D2879618() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F726779616C70 && a2 == 0xEF6567616D49646ELL || (sub_1D2879618() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657069636572 && a2 == 0xE600000000000000 || (sub_1D2879618() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6A6F6D4573657375 && a2 == 0xEE00656C79745369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2879618();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D268BD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D268BD98@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  LOBYTE(v26) = *a1;
  v11 = type metadata accessor for CharacterRecipe();
  sub_1D264D23C(&a1[*(v11 + 20)], v10);
  v12 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  type metadata accessor for AppearanceViewModel();
  swift_allocObject();
  sub_1D286E0BC(&v26, v10);
  v14 = v13;
  sub_1D2870F78();
  sub_1D2877848();
  sub_1D2875208();
  v26 = xmmword_1D2898670;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF860);
  swift_allocObject();
  MEMORY[0x1D389D4C0](&v26);
  sub_1D2874A18();
  v15 = sub_1D28749F8();
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for PlaygroundImage();
    v18 = (a2 + v17[9]);
    *v18 = 0u;
    v18[1] = 0u;
    *(a2 + v17[10]) = xmmword_1D28809A0;
    v19 = v17[11];
    v20 = sub_1D2873AA8();
    (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 24) = 1;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + v17[12]) = 0;
    sub_1D2871808();

    return (*(*(v17 - 1) + 56))(a2, 0, 1, v17);
  }

  else
  {
    sub_1D2872708();
    v22 = sub_1D2873CA8();
    v23 = sub_1D2878A18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D226E000, v22, v23, "Can not render appearance", v24, 2u);
      MEMORY[0x1D38A3520](v24, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    v25 = type metadata accessor for PlaygroundImage();
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }
}

uint64_t PhotosPersonImage.id.getter()
{
  v1 = *v0;
  sub_1D2870F68();
  return v1;
}

uint64_t PhotosPersonImage.hash(into:)()
{
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PhotosPersonImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t PhotosPersonImage.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PhotosPersonImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D268C3DC()
{
  sub_1D28797D8();
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D268C4D0()
{
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t sub_1D268C5AC()
{
  sub_1D28797D8();
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t _s23ImagePlaygroundInternal012PhotosPersonA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  type metadata accessor for PhotosPersonImage();
  type metadata accessor for PlaygroundImage();

  return _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
}

uint64_t type metadata accessor for PhotosPersonImage()
{
  result = qword_1ED8A6A60;
  if (!qword_1ED8A6A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D268C7E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D268C854()
{
  sub_1D24B0F0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlaygroundImage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D268C8E8()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18DebugInfoViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugInfoViewModel()
{
  result = qword_1EC6D8760;
  if (!qword_1EC6D8760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D268C9E8()
{
  result = sub_1D2871A28();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D268CA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D25D0410(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_1D2870F68();
  return v6;
}

uint64_t sub_1D268CB24(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D268CBBC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268CBF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D27D3200(*(a1 + 16), 0);
  v4 = sub_1D260D9B4(&v6, (v3 + 32), v2, a1);
  sub_1D23EEDB0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D268CC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1D2873CB8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D268CD48, 0, 0);
}

uint64_t sub_1D268CD48()
{
  v19 = v0;
  sub_1D2872528();
  sub_1D2870F68();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  if (v3)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D23D7C84(v8, v7, &v18);
    _os_log_impl(&dword_1D226E000, v1, v2, "FetchSelectedFace: person identifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v11 = v0[6];
  v12 = v0[3];
  v13 = swift_task_alloc();
  v0[10] = v13;
  v14 = *(v0 + 2);
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = v14;
  v15 = swift_task_alloc();
  v0[11] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDB0);
  *v15 = v0;
  v15[1] = sub_1D268CF6C;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001D28BF980, sub_1D269591C, v13, v16);
}

uint64_t sub_1D268CF6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D268D084, 0, 0);
}

uint64_t sub_1D268D084()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D268D0EC()
{
  v0 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D2877B58();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D23D45A0(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  result = sub_1D2878AD8();
  qword_1EC6E3BA0 = result;
  return result;
}

uint64_t sub_1D268D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v29 = a7;
  v27 = a3;
  v28 = a6;
  v31 = a4;
  v32 = a5;
  v9 = sub_1D2877B48();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D2877B68();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF870);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  if (qword_1EC6D8A18 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC6E3BA0;
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 57) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v21 = v27;
  v20 = v28;
  *(v19 + 16) = a2;
  *(v19 + 24) = v21;
  v22 = v32;
  *(v19 + 32) = v31;
  *(v19 + 40) = v22;
  *(v19 + 48) = v20;
  *(v19 + 56) = v29 & 1;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = sub_1D2691D64;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_36;
  v23 = _Block_copy(aBlock);
  sub_1D2870F68();
  v24 = v22;
  sub_1D2877B58();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D23D45A0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v13, v11, v23);
  _Block_release(v23);
  (*(v34 + 8))(v11, v9);
  (*(v30 + 8))(v13, v33);
}

uint64_t sub_1D268D744(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t a5, char a6)
{
  sub_1D269515C(a2, a3, a4, a5, a6 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF870);
  return sub_1D2878518();
}

uint64_t sub_1D268D7D4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  sub_1D2691754(a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888);
  return sub_1D2878518();
}

uint64_t sub_1D268D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26[2] = a6;
  v27 = a3;
  v31 = a4;
  v32 = a5;
  v10 = sub_1D2877B48();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D2877B68();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  if (qword_1EC6D8A18 != -1)
  {
    swift_once();
  }

  v26[1] = qword_1EC6E3BA0;
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 2) = a2;
  *(v20 + 3) = v21;
  v22 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v22;
  (*(v16 + 32))(&v20[v19], v18, v15);
  aBlock[4] = v28;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);
  sub_1D2870F68();
  v24 = v22;
  sub_1D2877B58();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D23D45A0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v14, v12, v23);
  _Block_release(v23);
  (*(v34 + 8))(v12, v10);
  (*(v30 + 8))(v14, v33);
}

unint64_t sub_1D268DC04(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1D2692A30(a2, a3, a4, 5, 0);
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_1D2879368();
    result = v6;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888);
    return sub_1D2878518();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268DCF8(id *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  [*a1 centerX];
  v10 = v9;
  [v8 size];
  v12 = v10 - v11 * 0.5;
  [v8 centerY];
  v14 = v13;
  [v8 size];
  v16 = v14 - v15 * 0.5;
  [v8 size];
  v18 = v17;
  [v8 size];
  v20 = v19;
  v53.origin.x = v12;
  v53.origin.y = v16;
  v53.size.width = v18;
  v53.size.height = v20;
  if (CGRectGetMinX(v53) <= 0.0)
  {
    return 0;
  }

  v54.origin.x = v12;
  v54.origin.y = v16;
  v54.size.width = v18;
  v54.size.height = v20;
  if (CGRectGetMinY(v54) <= 0.0)
  {
    return 0;
  }

  v55.origin.x = v12;
  v55.origin.y = v16;
  v55.size.width = v18;
  v55.size.height = v20;
  if (CGRectGetMaxX(v55) >= 1.0)
  {
    return 0;
  }

  v56.origin.x = v12;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  if (CGRectGetMaxY(v56) >= 1.0)
  {
    return 0;
  }

  v21 = [v8 faceClusteringProperties];
  v22 = [v21 faceprint];

  if (v22)
  {
    v23 = [v22 faceprintData];

    if (v23)
    {
      v24 = sub_1D28716E8();
      v26 = v25;

      v27 = objc_allocWithZone(MEMORY[0x1E6984520]);
      sub_1D22D6CF8(v24, v26);
      v28 = sub_1D2692970();
      if (v1)
      {
        sub_1D22D6D60(v24, v26);
        sub_1D22D6D60(v24, v26);
        sub_1D2872528();
        v29 = v8;
        v30 = v1;
        v31 = sub_1D2873CA8();
        v32 = sub_1D2878A18();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v50 = v32;
          v34 = v33;
          v49 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v34 = 136315394;
          v35 = [v29 localIdentifier];
          v36 = sub_1D28780A8();
          v38 = v37;

          v39 = sub_1D23D7C84(v36, v38, &v52);

          *(v34 + 4) = v39;
          *(v34 + 12) = 2112;
          v40 = v1;
          v41 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 14) = v41;
          v42 = v49;
          *v49 = v41;
          _os_log_impl(&dword_1D226E000, v31, v50, "Failed to get faceprint for face: %s with error %@", v34, 0x16u);
          sub_1D22BD238(v42, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v42, -1, -1);
          v43 = v51;
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x1D38A3520](v43, -1, -1);
          MEMORY[0x1D38A3520](v34, -1, -1);
        }

        else
        {
        }

        (*(v4 + 8))(v7, v3);
        return 1;
      }

      v44 = v28;
      sub_1D22D6D60(v24, v26);
      v45 = [v44 faceprint];

      if (v45)
      {
        [v45 confidence];
        v47 = v46;
        sub_1D22D6D60(v24, v26);

        if (v47 < 0.8)
        {
          return 0;
        }
      }

      else
      {
        sub_1D22D6D60(v24, v26);
      }
    }
  }

  return 1;
}

uint64_t sub_1D268E1BC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2871798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [v2 creationDate];
  if (v15)
  {
    v16 = v15;
    sub_1D2871768();

    v17 = *(v5 + 32);
    v17(v14, v7, v4);
    (*(v5 + 56))(v14, 0, 1, v4);
    return (v17)(a1, v14, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v14, 1, 1, v4);
    v20 = [v2 importDate];
    if (v20)
    {
      v21 = v20;
      sub_1D2871768();

      v22 = *(v5 + 32);
      v22(v10, v7, v4);
      v19(v10, 0, 1, v4);
      v22(a1, v10, v4);
      result = (*(v5 + 48))(v14, 1, v4);
    }

    else
    {
      v19(v10, 1, 1, v4);
      sub_1D2871778();
      v23 = *(v5 + 48);
      if (v23(v10, 1, v4) != 1)
      {
        sub_1D22BD238(v10, &unk_1EC6DAE40);
      }

      result = (v23)(v14, 1, v4);
    }

    if (result != 1)
    {
      return sub_1D22BD238(v14, &unk_1EC6DAE40);
    }
  }

  return result;
}

void sub_1D268E4E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268E604(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v8;
      v11[3] = 2 * ((v12 - 32) / 40);
      if (v7 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(a7);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D268E700(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB90);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268E7F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268E8F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D268EA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABC0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABB8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}