uint64_t sub_1B01152B0()
{
  sub_1B014D2FC();
  FBKSInteraction.Content.hash(into:)(v1);
  return sub_1B014D33C();
}

uint64_t sub_1B01152F4()
{
  sub_1B014D2FC();
  FBKSInteraction.Content.hash(into:)(v1);
  return sub_1B014D33C();
}

uint64_t sub_1B0115330@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B0100B40(v4, v5);
}

uint64_t sub_1B0115388(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1B0100B40(v2, v3);
  return sub_1B0100A3C(v5, v6);
}

uint64_t sub_1B0115424@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*result + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  v4 = *v3;
  v5 = v3[1];
  if (v5)
  {
    v6 = v3[1];

    result = sub_1B01154BC();
    if ((result & 1) == 0)
    {

      v5 = 0xEB00000000797472;
      v4 = 0x6170206472696854;
    }
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B01154BC()
{

  v0 = sub_1B014CD1C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1B014CD1C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1B014D25C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1B014CD1C();
      v3 = v5;
    }

    while (v5);
  }

  sub_1B014CD1C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1B0115618(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v18 - v13;
  sub_1B00DE660(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_1B00DE71C(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1B01156F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1B0115758(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

unint64_t sub_1B0115864()
{
  v1 = (v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v4 = *v1;
  v5 = v1[1];
  v2 = FBKSInteraction.FeatureDomain.description.getter();
  sub_1B0100B40(v4, v5);
  sub_1B0100A3C(v4, v5);
  return v2;
}

char *FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v14 = v13;
  v17 = objc_allocWithZone(v13);
  v18 = *a1;
  v19 = a1[1];
  v20 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v20 = 0;
  v20[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v21 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v22 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v23 = *(*(v22 - 8) + 56);
  v23(&v17[v21], 1, 1, v22);
  v23(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v22);
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v25 = type metadata accessor for FBKSInteraction.Content(0);
  v26 = *(*(v25 - 8) + 56);
  v26(&v17[v24], 1, 1, v25);
  v26(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v25);
  v27 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v28 = 0;
  v28[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v30 = sub_1B014CB1C();
  (*(*(v30 - 8) + 56))(&v17[v29], 1, 1, v30);
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v31 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v31 = v18;
  v31[1] = v19;
  v65.receiver = v17;
  v65.super_class = v14;
  v32 = objc_msgSendSuper2(&v65, sel_init);
  v33 = v32;
  if (a3)
  {
    v34 = &v32[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v35 = *&v32[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v34 = a2;
    *(v34 + 1) = a3;
    v36 = v32;
  }

  else
  {
    v37 = objc_opt_self();
    v38 = v33;
    v39 = [v37 mainBundle];
    v40 = [v39 bundleIdentifier];

    if (v40)
    {
      v41 = sub_1B014CC1C();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = &v38[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v45 = *&v38[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v44 = v41;
    v44[1] = v43;
  }

  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v47 = *&v33[v46];
  *&v33[v46] = a4;

  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, &v33[v48], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, &v33[v49], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v50 = &v33[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v51 = *(v50 + 1);
  *v50 = a7;
  *(v50 + 1) = a8;

  v52 = &v33[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v53 = *(v52 + 1);
  *v52 = a9;
  *(v52 + 1) = a10;

  v54 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v55 = *&v33[v54];
  *&v33[v54] = a11;

  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v33[v56] = a12 & 1;
  v57 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(a13, &v33[v57], &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  return v33;
}

char *FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  v16 = objc_allocWithZone(v12);
  v17 = *a1;
  v18 = a1[1];
  v19 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v19 = 0;
  v19[1] = 0;
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v20 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v21 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v22 = *(*(v21 - 8) + 56);
  v22(&v16[v20], 1, 1, v21);
  v22(&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v21);
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v24 = type metadata accessor for FBKSInteraction.Content(0);
  v25 = *(*(v24 - 8) + 56);
  v25(&v16[v23], 1, 1, v24);
  v25(&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v24);
  v26 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v27 = 0;
  v27[1] = 0;
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v29 = sub_1B014CB1C();
  (*(*(v29 - 8) + 56))(&v16[v28], 1, 1, v29);
  v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v30 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v30 = v17;
  v30[1] = v18;
  v63.receiver = v16;
  v63.super_class = v13;
  v31 = objc_msgSendSuper2(&v63, sel_init);
  v32 = v31;
  if (a3)
  {
    v33 = &v31[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v34 = *&v31[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v33 = a2;
    *(v33 + 1) = a3;
    v35 = v31;
  }

  else
  {
    v36 = objc_opt_self();
    v37 = v32;
    v38 = [v36 mainBundle];
    v39 = [v38 bundleIdentifier];

    if (v39)
    {
      v40 = sub_1B014CC1C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = &v37[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v44 = *&v37[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v43 = v40;
    v43[1] = v42;
  }

  v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v46 = *&v32[v45];
  *&v32[v45] = a4;

  v47 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, &v32[v47], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, &v32[v48], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v49 = &v32[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v50 = *(v49 + 1);
  *v49 = a7;
  *(v49 + 1) = a8;

  v51 = &v32[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v52 = *(v51 + 1);
  *v51 = a9;
  *(v51 + 1) = a10;

  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v54 = *&v32[v53];
  *&v32[v53] = a11;

  v55 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v32[v55] = a12 & 1;

  return v32;
}

void sub_1B0116230(void *a1, void (*a2)(void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1);
  }

  else
  {
    sub_1B00E8BA4();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    (a2)(v15, v16);
  }
}

uint64_t sub_1B0116410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1B0101878(sub_1B012491C, v8);
}

void sub_1B0116558(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  sub_1B00DE660(a1, &v20 - v11, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = *v12;
    a3(v13, 1);
  }

  else
  {
    v15 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
    swift_beginAccess();
    if (*(a2 + v15) == 1)
    {
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v16 = sub_1B014CB5C();
      __swift_project_value_buffer(v16, qword_1EDAE7828);
      v17 = sub_1B014CB3C();
      v18 = sub_1B014CF6C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1B00C4000, v17, v18, "Resetting sentPresented after successful evaluation", v19, 2u);
        MEMORY[0x1B271F750](v19, -1, -1);
      }

      *(a2 + v15) = 0;
    }

    a3(a5, 0);
    sub_1B00DE9C0(v12, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

uint64_t sub_1B0116774(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  v20 = a3;
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  (*(v12 + 16))(v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  sub_1B0102174(&v20, v19, sub_1B0124890, v17);
}

uint64_t sub_1B01168EC(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);
    return sub_1B014CE8C();
  }
}

id FBKSInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B0116A00(char a1)
{
  result = 0x4465727574616566;
  switch(a1)
  {
    case 1:
      result = 0x49656C646E75625FLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x6E6F436172747865;
      break;
    case 6:
      result = 0x6C616E696769726FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7265566C65646F6DLL;
      break;
    case 9:
      result = 0x74736F6E67616964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x7250686769487369;
      break;
    case 12:
      result = 0x7461756C6176655FLL;
      break;
    case 13:
      result = 0x73657250746E6573;
      break;
    case 14:
      result = 0x6176457473726966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0116C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0124124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0116C3C(uint64_t a1)
{
  v2 = sub_1B01009E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0116C78(uint64_t a1)
{
  v2 = sub_1B01009E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FBKSInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSInteraction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B0116E94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 728))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FBKSInteraction.EvaluationResponse.description.getter()
{
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      return 0x632074726F706552;
    }

    else if (*(v0 + 16) | *v0 | *(v0 + 8))
    {
      return 0x657373696D736944;
    }

    else
    {
      return 0x6E776F6E6B6E55;
    }
  }

  else if (*(v0 + 24))
  {
    return 0x642073626D756854;
  }

  else
  {
    return 0x752073626D756854;
  }
}

uint64_t sub_1B0116FB8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x705573626D756874;
  v4 = 0x6F4473626D756874;
  if (v1 != 3)
  {
    v4 = 0x6F4374726F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657373696D736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0117068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0124618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B011709C(uint64_t a1)
{
  v2 = sub_1B011CA64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01170D8(uint64_t a1)
{
  v2 = sub_1B011CA64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0117114(uint64_t a1)
{
  v2 = sub_1B011CBB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0117150(uint64_t a1)
{
  v2 = sub_1B011CBB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B011718C(uint64_t a1)
{
  v2 = sub_1B011CAB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01171C8(uint64_t a1)
{
  v2 = sub_1B011CAB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0117204(uint64_t a1)
{
  v2 = sub_1B011CB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0117240(uint64_t a1)
{
  v2 = sub_1B011CB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B011727C(uint64_t a1)
{
  v2 = sub_1B011CB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01172B8(uint64_t a1)
{
  v2 = sub_1B011CB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01172F4(uint64_t a1)
{
  v2 = sub_1B011CC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0117330(uint64_t a1)
{
  v2 = sub_1B011CC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.EvaluationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47A0, &qword_1B0151A50);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47A8, &qword_1B0151A58);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47B0, &qword_1B0151A60);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47B8, &qword_1B0151A68);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47C0, &qword_1B0151A70);
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47C8, &qword_1B0151A78);
  v49 = *(v20 - 8);
  v50 = v20;
  v21 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = *v1;
  v46 = v1[1];
  v47 = v24;
  v48 = v1[2];
  v25 = *(v1 + 24);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011CA64();
  sub_1B014D35C();
  if (v25 <= 1)
  {
    if (v25)
    {
      LOBYTE(v51) = 3;
      sub_1B011CB0C();
      v27 = v40;
      v28 = v50;
      sub_1B014D19C();
      v51 = v47;
      v52 = v46;
      v53 = v48;
      sub_1B00DCB14();
      v29 = v42;
      sub_1B014D1CC();
      v30 = v41;
    }

    else
    {
      LOBYTE(v51) = 2;
      sub_1B011CB60();
      v27 = v37;
      v28 = v50;
      sub_1B014D19C();
      v51 = v47;
      v52 = v46;
      v53 = v48;
      sub_1B00DCB14();
      v29 = v39;
      sub_1B014D1CC();
      v30 = v38;
    }

    goto LABEL_7;
  }

  if (v25 == 2)
  {
    LOBYTE(v51) = 4;
    sub_1B011CAB8();
    v27 = v43;
    v28 = v50;
    sub_1B014D19C();
    v51 = v47;
    v52 = v46;
    v53 = v48;
    sub_1B00DCB14();
    v29 = v45;
    sub_1B014D1CC();
    v30 = v44;
LABEL_7:
    (*(v30 + 8))(v27, v29);
    return (*(v49 + 8))(v23, v28);
  }

  if (!(v48 | v46 | v47))
  {
    LOBYTE(v51) = 0;
    sub_1B011CC08();
    v32 = v50;
    sub_1B014D19C();
    (*(v34 + 8))(v19, v16);
    return (*(v49 + 8))(v23, v32);
  }

  LOBYTE(v51) = 1;
  sub_1B011CBB4();
  v28 = v50;
  sub_1B014D19C();
  (*(v35 + 8))(v15, v36);
  return (*(v49 + 8))(v23, v28);
}

uint64_t FBKSInteraction.EvaluationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4800, &qword_1B0151A80);
  v58 = *(v54 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v62 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4808, &qword_1B0151A88);
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v50 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4810, &qword_1B0151A90);
  v55 = *(v51 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v61 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4818, &qword_1B0151A98);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4820, &qword_1B0151AA0);
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4828, &qword_1B0151AA8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B011CA64();
  v26 = v70;
  sub_1B014D34C();
  if (v26)
  {
    goto LABEL_14;
  }

  v27 = v18;
  v70 = v15;
  v29 = v61;
  v28 = v62;
  v30 = sub_1B014D18C();
  v31 = (2 * *(v30 + 16)) | 1;
  v66 = v30;
  v67 = v30 + 32;
  v68 = 0;
  v69 = v31;
  v32 = sub_1B00D4B04();
  if (v32 == 5 || v68 != v69 >> 1)
  {
    v36 = sub_1B014D05C();
    swift_allocError();
    v37 = v23;
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
    *v39 = &type metadata for FBKSInteraction.EvaluationResponse;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v36 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v20 + 8))(v37, v19);
    swift_unknownObjectRelease();
LABEL_14:
    v49 = v63;
    return __swift_destroy_boxed_opaque_existential_0(v49);
  }

  if (v32 <= 1u)
  {
    if (v32)
    {
      LOBYTE(v64) = 1;
      sub_1B011CBB4();
      sub_1B014D0EC();
      (*(v52 + 8))(v14, v53);
      (*(v20 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v47 = 0;
      v46 = xmmword_1B01515C0;
    }

    else
    {
      LOBYTE(v64) = 0;
      sub_1B011CC08();
      sub_1B014D0EC();
      (*(v50 + 8))(v27, v70);
      (*(v20 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v47 = 0;
      v46 = 0uLL;
    }

    v48 = 3;
    v49 = v63;
    v33 = v60;
  }

  else if (v32 == 2)
  {
    LOBYTE(v64) = 2;
    sub_1B011CB60();
    sub_1B014D0EC();
    v41 = v60;
    sub_1B00DCC00();
    v42 = v51;
    sub_1B014D12C();
    (*(v55 + 8))(v29, v42);
    (*(v20 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v48 = 0;
    v46 = v64;
    v47 = v65;
    v49 = v63;
    v33 = v41;
  }

  else
  {
    v33 = v60;
    if (v32 == 3)
    {
      LOBYTE(v64) = 3;
      sub_1B011CB0C();
      v34 = v59;
      sub_1B014D0EC();
      sub_1B00DCC00();
      v35 = v56;
      sub_1B014D12C();
      (*(v57 + 8))(v34, v35);
      (*(v20 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v46 = v64;
      v47 = v65;
      v48 = 1;
      v49 = v63;
    }

    else
    {
      LOBYTE(v64) = 4;
      sub_1B011CAB8();
      sub_1B014D0EC();
      v43 = v33;
      sub_1B00DCC00();
      v44 = v54;
      sub_1B014D12C();
      (*(v58 + 8))(v28, v44);
      (*(v20 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v46 = v64;
      v47 = v65;
      v48 = 2;
      v49 = v63;
      v33 = v43;
    }
  }

  *v33 = v46;
  *(v33 + 16) = v47;
  *(v33 + 24) = v48;
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_1B0118234()
{
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      return 0x632074726F706552;
    }

    else if (*(v0 + 16) | *v0 | *(v0 + 8))
    {
      return 0x657373696D736944;
    }

    else
    {
      return 0x6E776F6E6B6E55;
    }
  }

  else if (*(v0 + 24))
  {
    return 0x642073626D756854;
  }

  else
  {
    return 0x752073626D756854;
  }
}

void static FBKSInteraction.userResponse(id:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
}

void *sub_1B011833C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1B0118364(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B013E0D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B013F300();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B013E840(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B013E0D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_1B014D28C();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1B013F0DC(v11, a2, a3, a1, v22);
}

uint64_t sub_1B01184A8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B013E148(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B013F46C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B013EAE4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B013E148(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B014D28C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1B013F0DC(v11, a2, a3, a1, v22);

    return sub_1B00D1FFC(a2, a3);
  }
}

_OWORD *sub_1B01185F4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B013E0D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B013F5DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B013EE24(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B013E0D0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B014D28C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1B00D20C0(a1, v23);
  }

  else
  {
    sub_1B013F124(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1B0118744@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B014C95C();
    if (v10)
    {
      v11 = sub_1B014C98C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B014C97C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B014C95C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B014C98C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B014C97C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0118974(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B0119718(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B00D2024(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1B0118744(v14, a3, a4, &v13);
  v10 = v4;
  sub_1B00D2024(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1B0118B04(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v28 = v9;
    if (!v6)
    {
      break;
    }

LABEL_13:
    v16 = __clz(__rbit64(v6)) | (v10 << 6);
    v17 = (*(a2 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(a2 + 56) + 24 * v16;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);

    sub_1B00DE580(v21, v22, v23);
    if (!v18)
    {
LABEL_28:

      return MEMORY[0x1B271EE00](v28);
    }

    v24 = *(a1 + 48);
    v29[2] = *(a1 + 32);
    v29[3] = v24;
    v30 = *(a1 + 64);
    v25 = *(a1 + 16);
    v29[0] = *a1;
    v29[1] = v25;
    sub_1B014CCAC();

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        MEMORY[0x1B271EE00](3);
        sub_1B014CCAC();
        v11 = v21;
        v12 = v22;
        v13 = 3;
      }

      else if (v23 == 4)
      {
        MEMORY[0x1B271EE00](4);
        sub_1B0118D5C(v29, v21);
        v11 = v21;
        v12 = v22;
        v13 = 4;
      }

      else
      {
        MEMORY[0x1B271EE00](5);
        sub_1B0118B04(v29, v21);
        v11 = v21;
        v12 = v22;
        v13 = 5;
      }

      sub_1B00DE5AC(v11, v12, v13);
      goto LABEL_6;
    }

    if (!v23)
    {
      MEMORY[0x1B271EE00](0);
      sub_1B014D31C();
LABEL_6:
      v14 = v28;
      goto LABEL_7;
    }

    v14 = v28;
    if (v23 == 1)
    {
      MEMORY[0x1B271EE00](1);
      MEMORY[0x1B271EE00](v21);
    }

    else
    {
      MEMORY[0x1B271EE00](2);
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = v21;
      }

      else
      {
        v26 = 0;
      }

      MEMORY[0x1B271EE20](v26);
    }

LABEL_7:
    v6 &= v6 - 1;
    result = sub_1B014D33C();
    v9 = result ^ v14;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v7)
    {
      goto LABEL_28;
    }

    v6 = *(v3 + 8 * v15);
    ++v10;
    if (v6)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0118D5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B271EE00](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v10 = *(v6 - 2);
      v11 = *v6;
      if (v11 > 2)
      {
        v12 = *(v6 - 1);
        if (v11 == 3)
        {
          MEMORY[0x1B271EE00](3);

          sub_1B014CCAC();
          v7 = v10;
          v8 = v12;
          v9 = 3;
        }

        else if (v11 == 4)
        {
          MEMORY[0x1B271EE00](4);

          sub_1B0118D5C(a1, v10);
          v7 = v10;
          v8 = v12;
          v9 = 4;
        }

        else
        {
          MEMORY[0x1B271EE00](5);

          sub_1B0118B04(a1, v10);
          v7 = v10;
          v8 = v12;
          v9 = 5;
        }

        result = sub_1B00DE5AC(v7, v8, v9);
      }

      else if (*v6)
      {
        if (v11 == 1)
        {
          MEMORY[0x1B271EE00](1);
          result = MEMORY[0x1B271EE00](v10);
        }

        else
        {
          MEMORY[0x1B271EE00](2);
          if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v13 = v10;
          }

          else
          {
            v13 = 0;
          }

          result = MEMORY[0x1B271EE20](v13);
        }
      }

      else
      {
        MEMORY[0x1B271EE00](0);
        result = sub_1B014D31C();
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s15FeedbackService15FBKSInteractionC13FeatureDomainO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_82;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_75;
      }

      v8 = 1;
      sub_1B0100A3C(*a1, 1uLL);
      sub_1B0100A3C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_82;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_82;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_82;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_82;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_82;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_82;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_82;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_82;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_82;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_82;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_82;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_82;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_82;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_82;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_82;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_82;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_82;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_82;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_82;
    case 0x15uLL:
      if (v5 != 21)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x15uLL);
      v6 = v4;
      v7 = 21;
      goto LABEL_82;
    case 0x16uLL:
      if (v5 != 22)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x16uLL);
      v6 = v4;
      v7 = 22;
      goto LABEL_82;
    case 0x17uLL:
      if (v5 != 23)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x17uLL);
      v6 = v4;
      v7 = 23;
      goto LABEL_82;
    case 0x18uLL:
      if (v5 != 24)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x18uLL);
      v6 = v4;
      v7 = 24;
      goto LABEL_82;
    case 0x19uLL:
      if (v5 != 25)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x19uLL);
      v6 = v4;
      v7 = 25;
      goto LABEL_82;
    case 0x1AuLL:
      if (v5 != 26)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1AuLL);
      v6 = v4;
      v7 = 26;
      goto LABEL_82;
    case 0x1BuLL:
      if (v5 != 27)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1BuLL);
      v6 = v4;
      v7 = 27;
      goto LABEL_82;
    case 0x1CuLL:
      if (v5 != 28)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1CuLL);
      v6 = v4;
      v7 = 28;
      goto LABEL_82;
    case 0x1DuLL:
      if (v5 != 29)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1DuLL);
      v6 = v4;
      v7 = 29;
      goto LABEL_82;
    case 0x1EuLL:
      if (v5 != 30)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1EuLL);
      v6 = v4;
      v7 = 30;
      goto LABEL_82;
    case 0x1FuLL:
      if (v5 != 31)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1FuLL);
      v6 = v4;
      v7 = 31;
      goto LABEL_82;
    case 0x20uLL:
      if (v5 != 32)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x20uLL);
      v6 = v4;
      v7 = 32;
      goto LABEL_82;
    case 0x21uLL:
      if (v5 != 33)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x21uLL);
      v6 = v4;
      v7 = 33;
      goto LABEL_82;
    case 0x22uLL:
      if (v5 != 34)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x22uLL);
      v6 = v4;
      v7 = 34;
      goto LABEL_82;
    case 0x23uLL:
      if (v5 != 35)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x23uLL);
      v6 = v4;
      v7 = 35;
      goto LABEL_82;
    default:
      if (v5 >= 0x24)
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1B014D25C();
          sub_1B0100B40(v4, v5);
          sub_1B0100B40(v2, v3);
          sub_1B0100A3C(v2, v3);
          sub_1B0100A3C(v4, v5);
          return v11 & 1;
        }

        sub_1B0100B40(v9, v3);
        sub_1B0100B40(v2, v3);
        sub_1B0100A3C(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_82:
        sub_1B0100A3C(v6, v7);
        return 1;
      }

      else
      {
LABEL_75:
        sub_1B0100B40(*a2, *(a2 + 8));
        sub_1B0100B40(v2, v3);
        sub_1B0100A3C(v2, v3);
        sub_1B0100A3C(v4, v5);
        return 0;
      }
  }
}

uint64_t _s15FeedbackService15FBKSInteractionC15StructuredValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v13 = *(a1 + 8);
      if (v7 == 3)
      {
        if (v2 == v5 && v3 == v6)
        {
          sub_1B00DE580(v2, v3, 3);
          sub_1B00DE580(v2, v3, 3);
          sub_1B00DE5AC(v2, v3, 3);
          sub_1B00DE5AC(v2, v3, 3);
          v8 = 1;
          return v8 & 1;
        }

        v9 = sub_1B014D25C();
        sub_1B00DE580(v5, v6, 3);
        sub_1B00DE580(v2, v3, 3);
        sub_1B00DE5AC(v2, v3, 3);
        v10 = v5;
        v11 = v6;
        v12 = 3;
LABEL_23:
        sub_1B00DE5AC(v10, v11, v12);
        return v9 & 1;
      }
    }

    else
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          sub_1B00DE580(*a2, *(a2 + 8), 4);
          sub_1B00DE580(v2, v3, 4);
          v9 = sub_1B010C968(v2, v5);
          sub_1B00DE5AC(v2, v3, 4);
          v10 = v5;
          v11 = v6;
          v12 = 4;
          goto LABEL_23;
        }
      }

      else if (v7 == 5)
      {
        sub_1B00DE580(*a2, *(a2 + 8), 5);
        sub_1B00DE580(v2, v3, 5);
        v9 = sub_1B00D5754(v2, v5);
        sub_1B00DE5AC(v2, v3, 5);
        v10 = v5;
        v11 = v6;
        v12 = 5;
        goto LABEL_23;
      }

      v17 = *a1;
    }

    goto LABEL_26;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1B00DE5AC(*a1, v3, 0);
      sub_1B00DE5AC(v5, v6, 0);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_26;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      v15 = *a2;
      sub_1B00DE5AC(*a1, v3, 2);
      sub_1B00DE5AC(v5, v6, 2);
      if (*&v2 == *&v5)
      {
        v8 = 1;
        return v8 & 1;
      }

LABEL_27:
      v8 = 0;
      return v8 & 1;
    }

LABEL_26:
    sub_1B00DE580(v5, v6, v7);
    sub_1B00DE5AC(v2, v3, v4);
    sub_1B00DE5AC(v5, v6, v7);
    goto LABEL_27;
  }

  if (v7 != 1)
  {
    goto LABEL_26;
  }

  sub_1B00DE5AC(*a1, v3, 1);
  sub_1B00DE5AC(v5, v6, 1);
  v8 = v2 == v5;
  return v8 & 1;
}

uint64_t sub_1B0119718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B014C95C();
  v11 = result;
  if (result)
  {
    result = sub_1B014C98C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B014C97C();
  sub_1B0118744(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B01197D0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B00DE8A4(a3, a4);
          return sub_1B0118974(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s15FeedbackService15FBKSInteractionC7ContentO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v146 = a1;
  v147 = a2;
  v2 = sub_1B014CA4C();
  v143 = *(v2 - 8);
  v144 = v2;
  v3 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for FBKSInteraction.Content(0);
  v5 = *(*(v145 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v145);
  v142 = (&v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v141 = (&v131 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v140 = (&v131 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v139 = (&v131 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v138 = &v131 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v137 = &v131 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v131 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v135 = (&v131 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v134 = (&v131 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v133 = (&v131 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v132 = (&v131 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v131 - v29);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = (&v131 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = (&v131 - v35);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v131 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v131 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = (&v131 - v44);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v131 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49E8, &unk_1B0156520);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v131 - v51;
  v53 = &v131 + *(v50 + 56) - v51;
  sub_1B011A8C4(v146, &v131 - v51, type metadata accessor for FBKSInteraction.Content);
  v54 = v147;
  v147 = v53;
  sub_1B011A8C4(v54, v53, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B011A8C4(v52, v45, type metadata accessor for FBKSInteraction.Content);
      v107 = *v45;
      v106 = v45[1];
      v109 = v45[2];
      v108 = v45[3];
      v110 = v147;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B00D2024(v109, v108);
        goto LABEL_24;
      }

      v76 = v52;
      v111 = v110[2];
      v112 = v110[3];
      if (v107 == *v110 && v106 == v110[1])
      {
        v113 = v110[1];

LABEL_65:
        v62 = sub_1B01197D0(v109, v108, v111, v112);
        sub_1B00D2024(v111, v112);
        sub_1B00D2024(v109, v108);
        goto LABEL_66;
      }

      v128 = v110[1];
      v129 = sub_1B014D25C();

      if (v129)
      {
        goto LABEL_65;
      }

      sub_1B00D2024(v111, v112);
      sub_1B00D2024(v109, v108);
      sub_1B011A92C(v76, type metadata accessor for FBKSInteraction.Content);
      goto LABEL_57;
    case 2u:
      sub_1B011A8C4(v52, v42, type metadata accessor for FBKSInteraction.Content);
      v65 = *v42;
      v64 = v42[1];
      v66 = v147;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 3u:
      sub_1B011A8C4(v52, v39, type metadata accessor for FBKSInteraction.Content);
      v57 = *v39;
      v58 = v39[1];
      v59 = v147;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 4u:
      sub_1B011A8C4(v52, v36, type metadata accessor for FBKSInteraction.Content);
      v57 = *v36;
      v58 = v36[1];
      v59 = v147;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 5u:
      sub_1B011A8C4(v52, v33, type metadata accessor for FBKSInteraction.Content);
      v57 = *v33;
      v58 = v33[1];
      v59 = v147;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 6u:
      sub_1B011A8C4(v52, v30, type metadata accessor for FBKSInteraction.Content);
      v57 = *v30;
      v58 = v30[1];
      v59 = v147;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 7u:
      v95 = v132;
      sub_1B011A8C4(v52, v132, type metadata accessor for FBKSInteraction.Content);
      v97 = *v95;
      v96 = v95[1];
      v99 = v95[2];
      v98 = v95[3];
      v100 = v147;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_53;
      }

      v101 = v52;
      v103 = *v100;
      v102 = v100[1];
      v105 = v100[2];
      v104 = v100[3];
      if ((sub_1B01197D0(v97, v96, v103, v102) & 1) == 0)
      {
        goto LABEL_61;
      }

      if (v99 != v105 || v98 != v104)
      {
        goto LABEL_68;
      }

      goto LABEL_52;
    case 8u:
      v117 = v133;
      sub_1B011A8C4(v52, v133, type metadata accessor for FBKSInteraction.Content);
      v97 = *v117;
      v96 = v117[1];
      v119 = v117[2];
      v118 = v117[3];
      v120 = v147;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_53:

        sub_1B00D2024(v97, v96);
        goto LABEL_56;
      }

      v101 = v52;
      v103 = *v120;
      v102 = v120[1];
      v122 = v120[2];
      v121 = v120[3];
      if ((sub_1B01197D0(v97, v96, v103, v102) & 1) == 0)
      {
LABEL_61:

        sub_1B00D2024(v103, v102);
        sub_1B00D2024(v97, v96);
        goto LABEL_62;
      }

      if (v119 == v122 && v118 == v121)
      {
LABEL_52:
        sub_1B00D2024(v103, v102);
        sub_1B00D2024(v97, v96);

        goto LABEL_69;
      }

LABEL_68:
      v130 = sub_1B014D25C();
      sub_1B00D2024(v103, v102);
      sub_1B00D2024(v97, v96);

      if ((v130 & 1) == 0)
      {
LABEL_62:
        sub_1B011A92C(v101, type metadata accessor for FBKSInteraction.Content);
        goto LABEL_57;
      }

LABEL_69:
      v70 = v101;
LABEL_13:
      sub_1B011A92C(v70, type metadata accessor for FBKSInteraction.Content);
      v62 = 1;
      return v62 & 1;
    case 9u:
      v93 = v134;
      sub_1B011A8C4(v52, v134, type metadata accessor for FBKSInteraction.Content);
      v57 = *v93;
      v58 = v93[1];
      v59 = v147;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 0xAu:
      v116 = v135;
      sub_1B011A8C4(v52, v135, type metadata accessor for FBKSInteraction.Content);
      v65 = *v116;
      v64 = v116[1];
      v66 = v147;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 0xBu:
      v71 = v136;
      sub_1B011A8C4(v52, v136, type metadata accessor for FBKSInteraction.Content);
      v73 = *v71;
      v72 = *(v71 + 8);
      v74 = *(v71 + 16);
      v75 = v147;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1B00DE5AC(v73, v72, v74);
        goto LABEL_56;
      }

      v76 = v52;
      v77 = *v75;
      v78 = v75[1];
      v79 = *(v75 + 16);
      v151 = v73;
      v152 = v72;
      v153 = v74;
      v148 = v77;
      v149 = v78;
      v150 = v79;
      v62 = _s15FeedbackService15FBKSInteractionC15StructuredValueO2eeoiySbAE_AEtFZ_0(&v151, &v148);
      sub_1B00DE5AC(v77, v78, v79);
      sub_1B00DE5AC(v73, v72, v74);
LABEL_66:
      sub_1B011A92C(v76, type metadata accessor for FBKSInteraction.Content);
      return v62 & 1;
    case 0xCu:
      v146 = v52;
      v80 = v137;
      sub_1B011A8C4(v52, v137, type metadata accessor for FBKSInteraction.Content);
      v82 = *v80;
      v81 = *(v80 + 8);
      v84 = *(v80 + 16);
      v83 = *(v80 + 24);
      v85 = *(v80 + 32);
      v86 = v147;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_19;
      }

      goto LABEL_43;
    case 0xDu:
      v146 = v52;
      v115 = v138;
      sub_1B011A8C4(v52, v138, type metadata accessor for FBKSInteraction.Content);
      v82 = *v115;
      v81 = *(v115 + 8);
      v84 = *(v115 + 16);
      v83 = *(v115 + 24);
      v85 = *(v115 + 32);
      v86 = v147;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_43:
        sub_1B00DE5AC(v84, v83, v85);
        sub_1B00D2024(v82, v81);
        v52 = v146;
        goto LABEL_56;
      }

LABEL_19:
      v87 = *v86;
      v88 = v86[1];
      v89 = v86[2];
      v90 = v86[3];
      v91 = *(v86 + 32);
      if (sub_1B01197D0(v82, v81, v87, v88))
      {
        v151 = v84;
        v152 = v83;
        v153 = v85;
        v148 = v89;
        v149 = v90;
        v150 = v91;
        v92 = _s15FeedbackService15FBKSInteractionC15StructuredValueO2eeoiySbAE_AEtFZ_0(&v151, &v148);
        LODWORD(v147) = v91;
        v62 = v92;
        sub_1B00D2024(v87, v88);
        sub_1B00D2024(v82, v81);
        sub_1B00DE5AC(v89, v90, v147);
        sub_1B00DE5AC(v84, v83, v85);
        sub_1B011A92C(v146, type metadata accessor for FBKSInteraction.Content);
        return v62 & 1;
      }

      sub_1B00DE5AC(v89, v90, v91);
      sub_1B00DE5AC(v84, v83, v85);
      sub_1B00D2024(v87, v88);
      sub_1B00D2024(v82, v81);
      sub_1B011A92C(v146, type metadata accessor for FBKSInteraction.Content);
      goto LABEL_57;
    case 0xEu:
      v63 = v139;
      sub_1B011A8C4(v52, v139, type metadata accessor for FBKSInteraction.Content);
      v65 = *v63;
      v64 = v63[1];
      v66 = v147;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    case 0xFu:
      v94 = v140;
      sub_1B011A8C4(v52, v140, type metadata accessor for FBKSInteraction.Content);
      v65 = *v94;
      v64 = v94[1];
      v66 = v147;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 0x10u:
      v56 = v141;
      sub_1B011A8C4(v52, v141, type metadata accessor for FBKSInteraction.Content);
      v57 = *v56;
      v58 = v56[1];
      v59 = v147;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
LABEL_5:
        v60 = *v59;
        v61 = v59[1];
        v62 = sub_1B01197D0(v57, v58, *v59, v61);
        sub_1B00D2024(v60, v61);
        sub_1B00D2024(v57, v58);
        goto LABEL_6;
      }

LABEL_17:
      sub_1B00D2024(v57, v58);
      goto LABEL_56;
    case 0x11u:
      v114 = v142;
      sub_1B011A8C4(v52, v142, type metadata accessor for FBKSInteraction.Content);
      v65 = *v114;
      v64 = v114[1];
      v66 = v147;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_24:

LABEL_56:
        sub_1B00DE9C0(v52, &qword_1EB6C49E8, &unk_1B0156520);
        goto LABEL_57;
      }

LABEL_8:
      v67 = *v66;
      v68 = v66[1];
      if (v65 == v67 && v64 == v68)
      {
      }

      else
      {
        v69 = sub_1B014D25C();

        if ((v69 & 1) == 0)
        {
          sub_1B011A92C(v52, type metadata accessor for FBKSInteraction.Content);
LABEL_57:
          v62 = 0;
          return v62 & 1;
        }
      }

      v70 = v52;
      goto LABEL_13;
    default:
      sub_1B011A8C4(v52, v47, type metadata accessor for FBKSInteraction.Content);
      v55 = v147;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v143 + 8))(v47, v144);
        goto LABEL_56;
      }

      v125 = v143;
      v124 = v144;
      v126 = v131;
      (*(v143 + 32))(v131, v55, v144);
      v62 = sub_1B014CA0C();
      v127 = *(v125 + 8);
      v127(v126, v124);
      v127(v47, v124);
LABEL_6:
      sub_1B011A92C(v52, type metadata accessor for FBKSInteraction.Content);
      return v62 & 1;
  }
}

unint64_t sub_1B011A788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49E0, &qword_1B0156518);
    v3 = sub_1B014D0CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B013E0D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B011A8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B011A92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B011A98C()
{
  result = qword_1EDAE71B0;
  if (!qword_1EDAE71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71B0);
  }

  return result;
}

uint64_t sub_1B011A9E0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C41A8, &qword_1B01515E0);
    sub_1B0100AA4(a2, type metadata accessor for FBKSInteraction.AnnotatedContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B011AA7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C41B0, &qword_1B01515E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B011AAEC()
{
  result = qword_1EDAE7600;
  if (!qword_1EDAE7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7600);
  }

  return result;
}

unint64_t sub_1B011AB40()
{
  result = qword_1EB6C42F0;
  if (!qword_1EB6C42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C42F0);
  }

  return result;
}

unint64_t sub_1B011AB94()
{
  result = qword_1EB6C42F8;
  if (!qword_1EB6C42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C42F8);
  }

  return result;
}

unint64_t sub_1B011ABE8()
{
  result = qword_1EB6C4300;
  if (!qword_1EB6C4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4300);
  }

  return result;
}

unint64_t sub_1B011AC3C()
{
  result = qword_1EB6C4308;
  if (!qword_1EB6C4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4308);
  }

  return result;
}

unint64_t sub_1B011AC90()
{
  result = qword_1EB6C4310;
  if (!qword_1EB6C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4310);
  }

  return result;
}

unint64_t sub_1B011ACE4()
{
  result = qword_1EB6C4318;
  if (!qword_1EB6C4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4318);
  }

  return result;
}

unint64_t sub_1B011AD38()
{
  result = qword_1EB6C4320;
  if (!qword_1EB6C4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4320);
  }

  return result;
}

unint64_t sub_1B011AD8C()
{
  result = qword_1EB6C4328;
  if (!qword_1EB6C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4328);
  }

  return result;
}

unint64_t sub_1B011ADE0()
{
  result = qword_1EB6C4330;
  if (!qword_1EB6C4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4330);
  }

  return result;
}

unint64_t sub_1B011AE34()
{
  result = qword_1EB6C4338;
  if (!qword_1EB6C4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4338);
  }

  return result;
}

unint64_t sub_1B011AE88()
{
  result = qword_1EB6C4340;
  if (!qword_1EB6C4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4340);
  }

  return result;
}

unint64_t sub_1B011AEDC()
{
  result = qword_1EB6C4348;
  if (!qword_1EB6C4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4348);
  }

  return result;
}

unint64_t sub_1B011AF30()
{
  result = qword_1EB6C4350;
  if (!qword_1EB6C4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4350);
  }

  return result;
}

unint64_t sub_1B011AF84()
{
  result = qword_1EB6C4358;
  if (!qword_1EB6C4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4358);
  }

  return result;
}

unint64_t sub_1B011AFD8()
{
  result = qword_1EB6C4360;
  if (!qword_1EB6C4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4360);
  }

  return result;
}

unint64_t sub_1B011B02C()
{
  result = qword_1EB6C4368;
  if (!qword_1EB6C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4368);
  }

  return result;
}

unint64_t sub_1B011B080()
{
  result = qword_1EB6C4370;
  if (!qword_1EB6C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4370);
  }

  return result;
}

unint64_t sub_1B011B0D4()
{
  result = qword_1EB6C4378;
  if (!qword_1EB6C4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4378);
  }

  return result;
}

unint64_t sub_1B011B128()
{
  result = qword_1EB6C4380;
  if (!qword_1EB6C4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4380);
  }

  return result;
}

unint64_t sub_1B011B17C()
{
  result = qword_1EB6C4388;
  if (!qword_1EB6C4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4388);
  }

  return result;
}

unint64_t sub_1B011B1D0()
{
  result = qword_1EB6C4390;
  if (!qword_1EB6C4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4390);
  }

  return result;
}

unint64_t sub_1B011B224()
{
  result = qword_1EB6C4398;
  if (!qword_1EB6C4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4398);
  }

  return result;
}

unint64_t sub_1B011B278()
{
  result = qword_1EB6C43A0;
  if (!qword_1EB6C43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43A0);
  }

  return result;
}

unint64_t sub_1B011B2CC()
{
  result = qword_1EB6C43A8;
  if (!qword_1EB6C43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43A8);
  }

  return result;
}

unint64_t sub_1B011B320()
{
  result = qword_1EB6C43B0;
  if (!qword_1EB6C43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43B0);
  }

  return result;
}

unint64_t sub_1B011B374()
{
  result = qword_1EB6C43B8;
  if (!qword_1EB6C43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43B8);
  }

  return result;
}

unint64_t sub_1B011B3C8()
{
  result = qword_1EDAE6F38;
  if (!qword_1EDAE6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F38);
  }

  return result;
}

unint64_t sub_1B011B41C()
{
  result = qword_1EB6C43C0;
  if (!qword_1EB6C43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43C0);
  }

  return result;
}

unint64_t sub_1B011B470()
{
  result = qword_1EDAE6DE8;
  if (!qword_1EDAE6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DE8);
  }

  return result;
}

unint64_t sub_1B011B4C4()
{
  result = qword_1EDAE6DF8;
  if (!qword_1EDAE6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DF8);
  }

  return result;
}

unint64_t sub_1B011B518()
{
  result = qword_1EB6C43C8;
  if (!qword_1EB6C43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43C8);
  }

  return result;
}

unint64_t sub_1B011B56C()
{
  result = qword_1EDAE6E08[0];
  if (!qword_1EDAE6E08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAE6E08);
  }

  return result;
}

unint64_t sub_1B011B5C0()
{
  result = qword_1EB6C43D0;
  if (!qword_1EB6C43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43D0);
  }

  return result;
}

unint64_t sub_1B011B614()
{
  result = qword_1EB6C43D8;
  if (!qword_1EB6C43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43D8);
  }

  return result;
}

unint64_t sub_1B011B668()
{
  result = qword_1EB6C43E0;
  if (!qword_1EB6C43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43E0);
  }

  return result;
}

unint64_t sub_1B011B6BC()
{
  result = qword_1EDAE6E00;
  if (!qword_1EDAE6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6E00);
  }

  return result;
}

unint64_t sub_1B011B710()
{
  result = qword_1EDAE6DF0;
  if (!qword_1EDAE6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DF0);
  }

  return result;
}

unint64_t sub_1B011B764()
{
  result = qword_1EB6C4530;
  if (!qword_1EB6C4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4530);
  }

  return result;
}

unint64_t sub_1B011B7B8()
{
  result = qword_1EDAE7120;
  if (!qword_1EDAE7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7120);
  }

  return result;
}

void sub_1B011B80C(_BYTE *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v5 = sub_1B014CB5C();
  __swift_project_value_buffer(v5, qword_1EDAE7828);
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0x65746E6573657270, 0xED0000293A5F2864, aBlock);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v37 = &type metadata for FeedbackFeatureFlags;
  v38 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v10 & 1) == 0)
  {
    sub_1B00DC9DC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = sub_1B014C9BC();
    (a2)[2](a2, v17);

LABEL_11:

    return;
  }

  v11 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  if (a1[v11])
  {
    v12 = sub_1B014CB3C();
    v13 = sub_1B014CF6C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B00C4000, v12, v13, "Ignoring .presented(), sentPresented already set", v14, 2u);
      MEMORY[0x1B271F750](v14, -1, -1);
    }

    a2[2](a2, 0);
    goto LABEL_11;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    v20 = 0x3E6C696E3CLL;
    v22 = 0xE500000000000000;
    goto LABEL_17;
  }

  v20 = sub_1B014CC1C();
  v22 = v21;

  if (v20 != 0xD00000000000001ALL || 0x80000001B015C960 != v22)
  {
LABEL_17:
    if (sub_1B014D25C())
    {
      v23 = 0;
    }

    else if (v20 == 0xD000000000000025 && 0x80000001B015C910 == v22)
    {
      v23 = 0;
      v20 = 0xD000000000000025;
    }

    else
    {
      v23 = sub_1B014D25C() ^ 1;
    }

    goto LABEL_23;
  }

  v23 = 0;
  v20 = 0xD00000000000001ALL;
LABEL_23:

  v24 = sub_1B014CB3C();
  v25 = sub_1B014CF3C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315394;
    v28 = sub_1B00E6C2C(v20, v22, aBlock);

    *(v26 + 4) = v28;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v23 & 1;
    _os_log_impl(&dword_1B00C4000, v24, v25, "Presented interaction from %s. Is presented inline: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B271F750](v27, -1, -1);
    MEMORY[0x1B271F750](v26, -1, -1);
  }

  else
  {
  }

  FBKSInteraction.CAPayload(_:)();
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B00F9900;
  *(v29 + 24) = v4;

  v30 = sub_1B00FA9AC(sub_1B01249B8, v29);

  if (v30)
  {
    sub_1B00DC12C();
    v31 = sub_1B014CB9C();

    _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(a1);
    v32 = sub_1B014CC0C();

    v33 = swift_allocObject();
    v33[2] = a1;
    v33[3] = sub_1B00F9900;
    v33[4] = v4;
    v38 = sub_1B01249A8;
    v39 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B00DFB7C;
    v37 = &block_descriptor_335;
    v34 = _Block_copy(aBlock);

    v35 = a1;

    [v30 presentedInteractionWithAnalyticsPayload:v31 featureDomainEventName:v32 completion:v34];
    swift_unknownObjectRelease();
    _Block_release(v34);
  }

  else
  {
  }
}

unint64_t sub_1B011BEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4540, &qword_1B0151898);
    v3 = sub_1B014D0CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B00DE660(v4, &v13, &qword_1EB6C3E88, &unk_1B0150310);
      v5 = v13;
      v6 = v14;
      result = sub_1B013E0D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B00D20C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B011BFE4()
{
  result = qword_1EDAE71A8;
  if (!qword_1EDAE71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71A8);
  }

  return result;
}

unint64_t sub_1B011C038()
{
  result = qword_1EDAE7138;
  if (!qword_1EDAE7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7138);
  }

  return result;
}

unint64_t sub_1B011C08C()
{
  result = qword_1EDAE6F30;
  if (!qword_1EDAE6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F30);
  }

  return result;
}

unint64_t sub_1B011C0E0()
{
  result = qword_1EDAE7150;
  if (!qword_1EDAE7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7150);
  }

  return result;
}

unint64_t sub_1B011C134()
{
  result = qword_1EB6C4590;
  if (!qword_1EB6C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4590);
  }

  return result;
}

unint64_t sub_1B011C188()
{
  result = qword_1EB6C4598;
  if (!qword_1EB6C4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4598);
  }

  return result;
}

unint64_t sub_1B011C1DC()
{
  result = qword_1EB6C45A0;
  if (!qword_1EB6C45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C45A0);
  }

  return result;
}

uint64_t sub_1B011C230(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C4580, &qword_1B01518D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B011C2B4()
{
  result = qword_1EDAE6DD0;
  if (!qword_1EDAE6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DD0);
  }

  return result;
}

uint64_t sub_1B011C308(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C4588, &qword_1B01518E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B011C380()
{
  result = qword_1EDAE7368[0];
  if (!qword_1EDAE7368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAE7368);
  }

  return result;
}

unint64_t sub_1B011C3D4()
{
  result = qword_1EB6C4678;
  if (!qword_1EB6C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4678);
  }

  return result;
}

unint64_t sub_1B011C428()
{
  result = qword_1EB6C4680;
  if (!qword_1EB6C4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4680);
  }

  return result;
}

unint64_t sub_1B011C47C()
{
  result = qword_1EDAE7018;
  if (!qword_1EDAE7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7018);
  }

  return result;
}

unint64_t sub_1B011C4D0()
{
  result = qword_1EB6C4688;
  if (!qword_1EB6C4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4688);
  }

  return result;
}

unint64_t sub_1B011C524()
{
  result = qword_1EB6C4690;
  if (!qword_1EB6C4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4690);
  }

  return result;
}

unint64_t sub_1B011C578()
{
  result = qword_1EB6C4698;
  if (!qword_1EB6C4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4698);
  }

  return result;
}

unint64_t sub_1B011C5CC()
{
  result = qword_1EB6C46A0;
  if (!qword_1EB6C46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46A0);
  }

  return result;
}

unint64_t sub_1B011C620()
{
  result = qword_1EDAE7110;
  if (!qword_1EDAE7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7110);
  }

  return result;
}

unint64_t sub_1B011C674()
{
  result = qword_1EB6C46A8;
  if (!qword_1EB6C46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46A8);
  }

  return result;
}

unint64_t sub_1B011C6C8()
{
  result = qword_1EB6C46B0;
  if (!qword_1EB6C46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46B0);
  }

  return result;
}

unint64_t sub_1B011C71C()
{
  result = qword_1EB6C46B8;
  if (!qword_1EB6C46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46B8);
  }

  return result;
}

unint64_t sub_1B011C770()
{
  result = qword_1EB6C46C0;
  if (!qword_1EB6C46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46C0);
  }

  return result;
}

unint64_t sub_1B011C7C4()
{
  result = qword_1EB6C46C8;
  if (!qword_1EB6C46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46C8);
  }

  return result;
}

unint64_t sub_1B011C818()
{
  result = qword_1EB6C46D0;
  if (!qword_1EB6C46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46D0);
  }

  return result;
}

unint64_t sub_1B011C86C()
{
  result = qword_1EB6C46D8;
  if (!qword_1EB6C46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46D8);
  }

  return result;
}

unint64_t sub_1B011C8C0()
{
  result = qword_1EDAE6F68;
  if (!qword_1EDAE6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F68);
  }

  return result;
}

unint64_t sub_1B011C914()
{
  result = qword_1EDAE6B30;
  if (!qword_1EDAE6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B30);
  }

  return result;
}

unint64_t sub_1B011C968()
{
  result = qword_1EB6C46E0;
  if (!qword_1EB6C46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46E0);
  }

  return result;
}

unint64_t sub_1B011C9BC()
{
  result = qword_1EB6C46E8;
  if (!qword_1EB6C46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46E8);
  }

  return result;
}

unint64_t sub_1B011CA10()
{
  result = qword_1EDAE6AE8;
  if (!qword_1EDAE6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6AE8);
  }

  return result;
}

unint64_t sub_1B011CA64()
{
  result = qword_1EB6C47D0;
  if (!qword_1EB6C47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47D0);
  }

  return result;
}

unint64_t sub_1B011CAB8()
{
  result = qword_1EB6C47D8;
  if (!qword_1EB6C47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47D8);
  }

  return result;
}

unint64_t sub_1B011CB0C()
{
  result = qword_1EB6C47E0;
  if (!qword_1EB6C47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47E0);
  }

  return result;
}

unint64_t sub_1B011CB60()
{
  result = qword_1EB6C47E8;
  if (!qword_1EB6C47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47E8);
  }

  return result;
}

unint64_t sub_1B011CBB4()
{
  result = qword_1EB6C47F0;
  if (!qword_1EB6C47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47F0);
  }

  return result;
}

unint64_t sub_1B011CC08()
{
  result = qword_1EB6C47F8;
  if (!qword_1EB6C47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47F8);
  }

  return result;
}

unint64_t sub_1B011CC90()
{
  result = qword_1EDAE6DE0;
  if (!qword_1EDAE6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DE0);
  }

  return result;
}

unint64_t sub_1B011CCE8()
{
  result = qword_1EB6C4840;
  if (!qword_1EB6C4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4840);
  }

  return result;
}

uint64_t sub_1B011CDB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t keypath_get_22Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1B00DE660(v8 + v9, a5, a3, a4);
}

uint64_t keypath_get_20Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1B011CED8()
{
  sub_1B011E02C(319, qword_1EDAE7778, type metadata accessor for FBKSInteraction.AnnotatedContent);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B011E02C(319, qword_1EDAE76E0, type metadata accessor for FBKSInteraction.Content);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B011E02C(319, &qword_1EDAE77E0, MEMORY[0x1E69695A8]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of FBKSInteraction.presented()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x298);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B00DCFAC;

  return v6();
}

uint64_t dispatch thunk of FBKSInteraction.evaluate(action:formResponse:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2A8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B011DE7C;

  return v10(a1, a2);
}

uint64_t sub_1B011DE7C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1B011E02C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B014CFBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B011E080(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B011E0D0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B011E134(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDB && *(a1 + 16))
  {
    return (*a1 + 2147483612);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 35;
  if (v4 >= 0x25)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B011E18C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483612;
    if (a3 >= 0x7FFFFFDC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 35;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B011E20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B011E254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1B011E2B0()
{
  sub_1B011E420();
  if (v0 <= 0x3F)
  {
    sub_1B011E468(319, &qword_1EDAE7650);
    if (v1 <= 0x3F)
    {
      sub_1B011E468(319, &qword_1EDAE77F8);
      if (v2 <= 0x3F)
      {
        sub_1B011E468(319, &qword_1EDAE77E8);
        if (v3 <= 0x3F)
        {
          sub_1B011E468(319, &qword_1EDAE7800);
          if (v4 <= 0x3F)
          {
            sub_1B011E468(319, &qword_1EDAE77F0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B011E420()
{
  if (!qword_1EDAE7808)
  {
    v0 = sub_1B014CA4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAE7808);
    }
  }
}

void sub_1B011E468(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15FeedbackService15FBKSInteractionC18EvaluationResponseO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B011E4F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B011E538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B011E580(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FBKSInteraction.EvaluationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.EvaluationResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSInteraction.Content.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.Content.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B011EA38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B011EA80(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FBKSInteraction.FeatureDomain.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.FeatureDomain.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSInteraction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B011EFC4()
{
  result = qword_1EB6C4860;
  if (!qword_1EB6C4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4860);
  }

  return result;
}

unint64_t sub_1B011F01C()
{
  result = qword_1EB6C4868;
  if (!qword_1EB6C4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4868);
  }

  return result;
}

unint64_t sub_1B011F074()
{
  result = qword_1EB6C4870;
  if (!qword_1EB6C4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4870);
  }

  return result;
}

unint64_t sub_1B011F0CC()
{
  result = qword_1EB6C4878;
  if (!qword_1EB6C4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4878);
  }

  return result;
}

unint64_t sub_1B011F124()
{
  result = qword_1EB6C4880;
  if (!qword_1EB6C4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4880);
  }

  return result;
}

unint64_t sub_1B011F17C()
{
  result = qword_1EB6C4888;
  if (!qword_1EB6C4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4888);
  }

  return result;
}

unint64_t sub_1B011F1D4()
{
  result = qword_1EB6C4890;
  if (!qword_1EB6C4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4890);
  }

  return result;
}

unint64_t sub_1B011F22C()
{
  result = qword_1EB6C4898;
  if (!qword_1EB6C4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4898);
  }

  return result;
}

unint64_t sub_1B011F284()
{
  result = qword_1EB6C48A0;
  if (!qword_1EB6C48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48A0);
  }

  return result;
}

unint64_t sub_1B011F2DC()
{
  result = qword_1EB6C48A8;
  if (!qword_1EB6C48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48A8);
  }

  return result;
}

unint64_t sub_1B011F334()
{
  result = qword_1EB6C48B0;
  if (!qword_1EB6C48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48B0);
  }

  return result;
}

unint64_t sub_1B011F38C()
{
  result = qword_1EB6C48B8;
  if (!qword_1EB6C48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48B8);
  }

  return result;
}

unint64_t sub_1B011F3E4()
{
  result = qword_1EB6C48C0;
  if (!qword_1EB6C48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48C0);
  }

  return result;
}

unint64_t sub_1B011F43C()
{
  result = qword_1EB6C48C8;
  if (!qword_1EB6C48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48C8);
  }

  return result;
}

unint64_t sub_1B011F494()
{
  result = qword_1EB6C48D0;
  if (!qword_1EB6C48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48D0);
  }

  return result;
}

unint64_t sub_1B011F4EC()
{
  result = qword_1EB6C48D8;
  if (!qword_1EB6C48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48D8);
  }

  return result;
}

unint64_t sub_1B011F544()
{
  result = qword_1EB6C48E0;
  if (!qword_1EB6C48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48E0);
  }

  return result;
}

unint64_t sub_1B011F59C()
{
  result = qword_1EB6C48E8;
  if (!qword_1EB6C48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48E8);
  }

  return result;
}

unint64_t sub_1B011F5F4()
{
  result = qword_1EB6C48F0;
  if (!qword_1EB6C48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48F0);
  }

  return result;
}

unint64_t sub_1B011F64C()
{
  result = qword_1EB6C48F8;
  if (!qword_1EB6C48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48F8);
  }

  return result;
}

unint64_t sub_1B011F6A4()
{
  result = qword_1EB6C4900;
  if (!qword_1EB6C4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4900);
  }

  return result;
}

unint64_t sub_1B011F6FC()
{
  result = qword_1EB6C4908;
  if (!qword_1EB6C4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4908);
  }

  return result;
}

unint64_t sub_1B011F754()
{
  result = qword_1EB6C4910;
  if (!qword_1EB6C4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4910);
  }

  return result;
}

unint64_t sub_1B011F7AC()
{
  result = qword_1EB6C4918;
  if (!qword_1EB6C4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4918);
  }

  return result;
}

unint64_t sub_1B011F804()
{
  result = qword_1EB6C4920;
  if (!qword_1EB6C4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4920);
  }

  return result;
}

unint64_t sub_1B011F85C()
{
  result = qword_1EB6C4928;
  if (!qword_1EB6C4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4928);
  }

  return result;
}

unint64_t sub_1B011F8B4()
{
  result = qword_1EB6C4930;
  if (!qword_1EB6C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4930);
  }

  return result;
}

unint64_t sub_1B011F90C()
{
  result = qword_1EB6C4938;
  if (!qword_1EB6C4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4938);
  }

  return result;
}

unint64_t sub_1B011F964()
{
  result = qword_1EB6C4940;
  if (!qword_1EB6C4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4940);
  }

  return result;
}

unint64_t sub_1B011F9BC()
{
  result = qword_1EB6C4948;
  if (!qword_1EB6C4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4948);
  }

  return result;
}

unint64_t sub_1B011FA14()
{
  result = qword_1EB6C4950;
  if (!qword_1EB6C4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4950);
  }

  return result;
}

unint64_t sub_1B011FA6C()
{
  result = qword_1EB6C4958;
  if (!qword_1EB6C4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4958);
  }

  return result;
}

unint64_t sub_1B011FAC4()
{
  result = qword_1EB6C4960;
  if (!qword_1EB6C4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4960);
  }

  return result;
}

unint64_t sub_1B011FB1C()
{
  result = qword_1EB6C4968;
  if (!qword_1EB6C4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4968);
  }

  return result;
}

unint64_t sub_1B011FB74()
{
  result = qword_1EB6C4970;
  if (!qword_1EB6C4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4970);
  }

  return result;
}

unint64_t sub_1B011FBCC()
{
  result = qword_1EB6C4978;
  if (!qword_1EB6C4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4978);
  }

  return result;
}

unint64_t sub_1B011FC24()
{
  result = qword_1EB6C4980;
  if (!qword_1EB6C4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4980);
  }

  return result;
}

unint64_t sub_1B011FC7C()
{
  result = qword_1EB6C4988;
  if (!qword_1EB6C4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4988);
  }

  return result;
}

unint64_t sub_1B011FCD4()
{
  result = qword_1EB6C4990;
  if (!qword_1EB6C4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4990);
  }

  return result;
}

unint64_t sub_1B011FD2C()
{
  result = qword_1EB6C4998;
  if (!qword_1EB6C4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4998);
  }

  return result;
}

unint64_t sub_1B011FD84()
{
  result = qword_1EB6C49A0;
  if (!qword_1EB6C49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49A0);
  }

  return result;
}

unint64_t sub_1B011FDDC()
{
  result = qword_1EB6C49A8;
  if (!qword_1EB6C49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49A8);
  }

  return result;
}

unint64_t sub_1B011FE34()
{
  result = qword_1EB6C49B0;
  if (!qword_1EB6C49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49B0);
  }

  return result;
}

unint64_t sub_1B011FE8C()
{
  result = qword_1EB6C49B8;
  if (!qword_1EB6C49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49B8);
  }

  return result;
}

unint64_t sub_1B011FEE4()
{
  result = qword_1EB6C49C0;
  if (!qword_1EB6C49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49C0);
  }

  return result;
}

unint64_t sub_1B011FF3C()
{
  result = qword_1EDAE7348;
  if (!qword_1EDAE7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7348);
  }

  return result;
}

unint64_t sub_1B011FF94()
{
  result = qword_1EDAE7350;
  if (!qword_1EDAE7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7350);
  }

  return result;
}

unint64_t sub_1B011FFEC()
{
  result = qword_1EDAE72D8;
  if (!qword_1EDAE72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72D8);
  }

  return result;
}

unint64_t sub_1B0120044()
{
  result = qword_1EDAE72E0;
  if (!qword_1EDAE72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72E0);
  }

  return result;
}

unint64_t sub_1B012009C()
{
  result = qword_1EDAE7328;
  if (!qword_1EDAE7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7328);
  }

  return result;
}

unint64_t sub_1B01200F4()
{
  result = qword_1EDAE7330;
  if (!qword_1EDAE7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7330);
  }

  return result;
}

unint64_t sub_1B012014C()
{
  result = qword_1EDAE72F8;
  if (!qword_1EDAE72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72F8);
  }

  return result;
}

unint64_t sub_1B01201A4()
{
  result = qword_1EDAE7300;
  if (!qword_1EDAE7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7300);
  }

  return result;
}

unint64_t sub_1B01201FC()
{
  result = qword_1EDAE7318;
  if (!qword_1EDAE7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7318);
  }

  return result;
}

unint64_t sub_1B0120254()
{
  result = qword_1EDAE7320;
  if (!qword_1EDAE7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7320);
  }

  return result;
}

unint64_t sub_1B01202AC()
{
  result = qword_1EDAE7278;
  if (!qword_1EDAE7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7278);
  }

  return result;
}

unint64_t sub_1B0120304()
{
  result = qword_1EDAE7280;
  if (!qword_1EDAE7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7280);
  }

  return result;
}

unint64_t sub_1B012035C()
{
  result = qword_1EDAE72C8;
  if (!qword_1EDAE72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72C8);
  }

  return result;
}

unint64_t sub_1B01203B4()
{
  result = qword_1EDAE72D0;
  if (!qword_1EDAE72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72D0);
  }

  return result;
}

unint64_t sub_1B012040C()
{
  result = qword_1EDAE72B8;
  if (!qword_1EDAE72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72B8);
  }

  return result;
}

unint64_t sub_1B0120464()
{
  result = qword_1EDAE72C0;
  if (!qword_1EDAE72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72C0);
  }

  return result;
}

unint64_t sub_1B01204BC()
{
  result = qword_1EDAE72A8;
  if (!qword_1EDAE72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72A8);
  }

  return result;
}

unint64_t sub_1B0120514()
{
  result = qword_1EDAE72B0;
  if (!qword_1EDAE72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72B0);
  }

  return result;
}

unint64_t sub_1B012056C()
{
  result = qword_1EDAE72E8;
  if (!qword_1EDAE72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72E8);
  }

  return result;
}

unint64_t sub_1B01205C4()
{
  result = qword_1EDAE72F0;
  if (!qword_1EDAE72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72F0);
  }

  return result;
}

unint64_t sub_1B012061C()
{
  result = qword_1EDAE7298;
  if (!qword_1EDAE7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7298);
  }

  return result;
}

unint64_t sub_1B0120674()
{
  result = qword_1EDAE72A0;
  if (!qword_1EDAE72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72A0);
  }

  return result;
}

unint64_t sub_1B01206CC()
{
  result = qword_1EDAE7288;
  if (!qword_1EDAE7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7288);
  }

  return result;
}

unint64_t sub_1B0120724()
{
  result = qword_1EDAE7290;
  if (!qword_1EDAE7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7290);
  }

  return result;
}

unint64_t sub_1B012077C()
{
  result = qword_1EDAE7248;
  if (!qword_1EDAE7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7248);
  }

  return result;
}

unint64_t sub_1B01207D4()
{
  result = qword_1EDAE7250;
  if (!qword_1EDAE7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7250);
  }

  return result;
}

unint64_t sub_1B012082C()
{
  result = qword_1EDAE7238;
  if (!qword_1EDAE7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7238);
  }

  return result;
}

unint64_t sub_1B0120884()
{
  result = qword_1EDAE7240;
  if (!qword_1EDAE7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7240);
  }

  return result;
}

unint64_t sub_1B01208DC()
{
  result = qword_1EDAE7258;
  if (!qword_1EDAE7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7258);
  }

  return result;
}

unint64_t sub_1B0120934()
{
  result = qword_1EDAE7260;
  if (!qword_1EDAE7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7260);
  }

  return result;
}

unint64_t sub_1B012098C()
{
  result = qword_1EDAE7268;
  if (!qword_1EDAE7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7268);
  }

  return result;
}

unint64_t sub_1B01209E4()
{
  result = qword_1EDAE7270;
  if (!qword_1EDAE7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7270);
  }

  return result;
}

unint64_t sub_1B0120A3C()
{
  result = qword_1EDAE7308;
  if (!qword_1EDAE7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7308);
  }

  return result;
}

unint64_t sub_1B0120A94()
{
  result = qword_1EDAE7310;
  if (!qword_1EDAE7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7310);
  }

  return result;
}

unint64_t sub_1B0120AEC()
{
  result = qword_1EDAE7338;
  if (!qword_1EDAE7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7338);
  }

  return result;
}

unint64_t sub_1B0120B44()
{
  result = qword_1EDAE7340;
  if (!qword_1EDAE7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7340);
  }

  return result;
}

unint64_t sub_1B0120B9C()
{
  result = qword_1EDAE7358;
  if (!qword_1EDAE7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7358);
  }

  return result;
}

unint64_t sub_1B0120BF4()
{
  result = qword_1EDAE7360;
  if (!qword_1EDAE7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7360);
  }

  return result;
}

unint64_t sub_1B0120C4C()
{
  result = qword_1EDAE7188;
  if (!qword_1EDAE7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7188);
  }

  return result;
}

unint64_t sub_1B0120CA4()
{
  result = qword_1EDAE7190;
  if (!qword_1EDAE7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7190);
  }

  return result;
}

unint64_t sub_1B0120CFC()
{
  result = qword_1EDAE7140;
  if (!qword_1EDAE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7140);
  }

  return result;
}

unint64_t sub_1B0120D54()
{
  result = qword_1EDAE7148;
  if (!qword_1EDAE7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7148);
  }

  return result;
}

unint64_t sub_1B0120DAC()
{
  result = qword_1EDAE7168;
  if (!qword_1EDAE7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7168);
  }

  return result;
}

unint64_t sub_1B0120E04()
{
  result = qword_1EDAE7170;
  if (!qword_1EDAE7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7170);
  }

  return result;
}

unint64_t sub_1B0120E5C()
{
  result = qword_1EDAE7160;
  if (!qword_1EDAE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7160);
  }

  return result;
}

unint64_t sub_1B0120EB4()
{
  result = qword_1EDAE7158;
  if (!qword_1EDAE7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7158);
  }

  return result;
}

unint64_t sub_1B0120F0C()
{
  result = qword_1EDAE7178;
  if (!qword_1EDAE7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7178);
  }

  return result;
}

unint64_t sub_1B0120F64()
{
  result = qword_1EDAE7180;
  if (!qword_1EDAE7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7180);
  }

  return result;
}

unint64_t sub_1B0120FBC()
{
  result = qword_1EDAE7128;
  if (!qword_1EDAE7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7128);
  }

  return result;
}

unint64_t sub_1B0121014()
{
  result = qword_1EDAE7130;
  if (!qword_1EDAE7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7130);
  }

  return result;
}

unint64_t sub_1B012106C()
{
  result = qword_1EDAE7198;
  if (!qword_1EDAE7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7198);
  }

  return result;
}

unint64_t sub_1B01210C4()
{
  result = qword_1EDAE71A0;
  if (!qword_1EDAE71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71A0);
  }

  return result;
}

unint64_t sub_1B012111C()
{
  result = qword_1EDAE7500;
  if (!qword_1EDAE7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7500);
  }

  return result;
}

unint64_t sub_1B0121174()
{
  result = qword_1EDAE7508;
  if (!qword_1EDAE7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7508);
  }

  return result;
}

unint64_t sub_1B01211CC()
{
  result = qword_1EDAE7520;
  if (!qword_1EDAE7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7520);
  }

  return result;
}

unint64_t sub_1B0121224()
{
  result = qword_1EDAE7528;
  if (!qword_1EDAE7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7528);
  }

  return result;
}

unint64_t sub_1B012127C()
{
  result = qword_1EDAE75A0;
  if (!qword_1EDAE75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75A0);
  }

  return result;
}

unint64_t sub_1B01212D4()
{
  result = qword_1EDAE75A8;
  if (!qword_1EDAE75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75A8);
  }

  return result;
}

unint64_t sub_1B012132C()
{
  result = qword_1EDAE74E0;
  if (!qword_1EDAE74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74E0);
  }

  return result;
}

unint64_t sub_1B0121384()
{
  result = qword_1EDAE74E8;
  if (!qword_1EDAE74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74E8);
  }

  return result;
}

unint64_t sub_1B01213DC()
{
  result = qword_1EDAE7580;
  if (!qword_1EDAE7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7580);
  }

  return result;
}

unint64_t sub_1B0121434()
{
  result = qword_1EDAE7588;
  if (!qword_1EDAE7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7588);
  }

  return result;
}

unint64_t sub_1B012148C()
{
  result = qword_1EDAE7550;
  if (!qword_1EDAE7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7550);
  }

  return result;
}

unint64_t sub_1B01214E4()
{
  result = qword_1EDAE7558;
  if (!qword_1EDAE7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7558);
  }

  return result;
}

unint64_t sub_1B012153C()
{
  result = qword_1EDAE7560;
  if (!qword_1EDAE7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7560);
  }

  return result;
}

unint64_t sub_1B0121594()
{
  result = qword_1EDAE7568;
  if (!qword_1EDAE7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7568);
  }

  return result;
}

unint64_t sub_1B01215EC()
{
  result = qword_1EDAE7510;
  if (!qword_1EDAE7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7510);
  }

  return result;
}

unint64_t sub_1B0121644()
{
  result = qword_1EDAE7518;
  if (!qword_1EDAE7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7518);
  }

  return result;
}

unint64_t sub_1B012169C()
{
  result = qword_1EDAE74D0;
  if (!qword_1EDAE74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74D0);
  }

  return result;
}

unint64_t sub_1B01216F4()
{
  result = qword_1EDAE74D8;
  if (!qword_1EDAE74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74D8);
  }

  return result;
}

unint64_t sub_1B012174C()
{
  result = qword_1EDAE7530;
  if (!qword_1EDAE7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7530);
  }

  return result;
}

unint64_t sub_1B01217A4()
{
  result = qword_1EDAE7538;
  if (!qword_1EDAE7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7538);
  }

  return result;
}

unint64_t sub_1B01217FC()
{
  result = qword_1EDAE7490;
  if (!qword_1EDAE7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7490);
  }

  return result;
}

unint64_t sub_1B0121854()
{
  result = qword_1EDAE7498;
  if (!qword_1EDAE7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7498);
  }

  return result;
}

unint64_t sub_1B01218AC()
{
  result = qword_1EDAE7460;
  if (!qword_1EDAE7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7460);
  }

  return result;
}

unint64_t sub_1B0121904()
{
  result = qword_1EDAE7468;
  if (!qword_1EDAE7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7468);
  }

  return result;
}

unint64_t sub_1B012195C()
{
  result = qword_1EDAE7480;
  if (!qword_1EDAE7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7480);
  }

  return result;
}

unint64_t sub_1B01219B4()
{
  result = qword_1EDAE7488;
  if (!qword_1EDAE7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7488);
  }

  return result;
}

unint64_t sub_1B0121A0C()
{
  result = qword_1EDAE7470;
  if (!qword_1EDAE7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7470);
  }

  return result;
}

unint64_t sub_1B0121A64()
{
  result = qword_1EDAE7478;
  if (!qword_1EDAE7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7478);
  }

  return result;
}

unint64_t sub_1B0121ABC()
{
  result = qword_1EDAE75B0;
  if (!qword_1EDAE75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75B0);
  }

  return result;
}

unint64_t sub_1B0121B14()
{
  result = qword_1EDAE75B8;
  if (!qword_1EDAE75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75B8);
  }

  return result;
}

unint64_t sub_1B0121B6C()
{
  result = qword_1EDAE7590;
  if (!qword_1EDAE7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7590);
  }

  return result;
}

unint64_t sub_1B0121BC4()
{
  result = qword_1EDAE7598;
  if (!qword_1EDAE7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7598);
  }

  return result;
}

unint64_t sub_1B0121C1C()
{
  result = qword_1EDAE7540;
  if (!qword_1EDAE7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7540);
  }

  return result;
}

unint64_t sub_1B0121C74()
{
  result = qword_1EDAE7548;
  if (!qword_1EDAE7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7548);
  }

  return result;
}

unint64_t sub_1B0121CCC()
{
  result = qword_1EDAE74C0;
  if (!qword_1EDAE74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74C0);
  }

  return result;
}

unint64_t sub_1B0121D24()
{
  result = qword_1EDAE74C8;
  if (!qword_1EDAE74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74C8);
  }

  return result;
}

unint64_t sub_1B0121D7C()
{
  result = qword_1EDAE74F0;
  if (!qword_1EDAE74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74F0);
  }

  return result;
}

unint64_t sub_1B0121DD4()
{
  result = qword_1EDAE74F8;
  if (!qword_1EDAE74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74F8);
  }

  return result;
}

unint64_t sub_1B0121E2C()
{
  result = qword_1EDAE74A0;
  if (!qword_1EDAE74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74A0);
  }

  return result;
}

unint64_t sub_1B0121E84()
{
  result = qword_1EDAE74A8;
  if (!qword_1EDAE74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74A8);
  }

  return result;
}

unint64_t sub_1B0121EDC()
{
  result = qword_1EDAE75D0;
  if (!qword_1EDAE75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75D0);
  }

  return result;
}

unint64_t sub_1B0121F34()
{
  result = qword_1EDAE75D8;
  if (!qword_1EDAE75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75D8);
  }

  return result;
}

unint64_t sub_1B0121F8C()
{
  result = qword_1EDAE74B0;
  if (!qword_1EDAE74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74B0);
  }

  return result;
}

unint64_t sub_1B0121FE4()
{
  result = qword_1EDAE74B8;
  if (!qword_1EDAE74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74B8);
  }

  return result;
}

unint64_t sub_1B012203C()
{
  result = qword_1EDAE7570;
  if (!qword_1EDAE7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7570);
  }

  return result;
}

unint64_t sub_1B0122094()
{
  result = qword_1EDAE7578;
  if (!qword_1EDAE7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7578);
  }

  return result;
}

unint64_t sub_1B01220EC()
{
  result = qword_1EDAE71B8;
  if (!qword_1EDAE71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71B8);
  }

  return result;
}

unint64_t sub_1B0122144()
{
  result = qword_1EDAE71C0;
  if (!qword_1EDAE71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71C0);
  }

  return result;
}

unint64_t sub_1B012219C()
{
  result = qword_1EDAE71C8;
  if (!qword_1EDAE71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71C8);
  }

  return result;
}

unint64_t sub_1B01221F4()
{
  result = qword_1EDAE71D0;
  if (!qword_1EDAE71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71D0);
  }

  return result;
}

unint64_t sub_1B012224C()
{
  result = qword_1EDAE71E8;
  if (!qword_1EDAE71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71E8);
  }

  return result;
}

unint64_t sub_1B01222A4()
{
  result = qword_1EDAE71F0;
  if (!qword_1EDAE71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71F0);
  }

  return result;
}

unint64_t sub_1B01222FC()
{
  result = qword_1EDAE71D8;
  if (!qword_1EDAE71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71D8);
  }

  return result;
}

unint64_t sub_1B0122354()
{
  result = qword_1EDAE71E0;
  if (!qword_1EDAE71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71E0);
  }

  return result;
}

unint64_t sub_1B01223AC()
{
  result = qword_1EDAE6FA0;
  if (!qword_1EDAE6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FA0);
  }

  return result;
}

unint64_t sub_1B0122404()
{
  result = qword_1EDAE6FA8;
  if (!qword_1EDAE6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FA8);
  }

  return result;
}

unint64_t sub_1B012245C()
{
  result = qword_1EDAE6FE0;
  if (!qword_1EDAE6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FE0);
  }

  return result;
}

unint64_t sub_1B01224B4()
{
  result = qword_1EDAE6FE8;
  if (!qword_1EDAE6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FE8);
  }

  return result;
}

unint64_t sub_1B012250C()
{
  result = qword_1EDAE6FF0;
  if (!qword_1EDAE6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FF0);
  }

  return result;
}

unint64_t sub_1B0122564()
{
  result = qword_1EDAE6FF8;
  if (!qword_1EDAE6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FF8);
  }

  return result;
}

unint64_t sub_1B01225BC()
{
  result = qword_1EDAE6FD0;
  if (!qword_1EDAE6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FD0);
  }

  return result;
}

unint64_t sub_1B0122614()
{
  result = qword_1EDAE6FD8;
  if (!qword_1EDAE6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FD8);
  }

  return result;
}

unint64_t sub_1B012266C()
{
  result = qword_1EDAE6FC0;
  if (!qword_1EDAE6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FC0);
  }

  return result;
}

unint64_t sub_1B01226C4()
{
  result = qword_1EDAE6FC8;
  if (!qword_1EDAE6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FC8);
  }

  return result;
}

unint64_t sub_1B012271C()
{
  result = qword_1EDAE6F90;
  if (!qword_1EDAE6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F90);
  }

  return result;
}

unint64_t sub_1B0122774()
{
  result = qword_1EDAE6F98;
  if (!qword_1EDAE6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F98);
  }

  return result;
}

unint64_t sub_1B01227CC()
{
  result = qword_1EB6C49C8;
  if (!qword_1EB6C49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49C8);
  }

  return result;
}

unint64_t sub_1B0122824()
{
  result = qword_1EB6C49D0;
  if (!qword_1EB6C49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49D0);
  }

  return result;
}

unint64_t sub_1B012287C()
{
  result = qword_1EDAE6FB0;
  if (!qword_1EDAE6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FB0);
  }

  return result;
}

unint64_t sub_1B01228D4()
{
  result = qword_1EDAE6FB8;
  if (!qword_1EDAE6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FB8);
  }

  return result;
}

unint64_t sub_1B012292C()
{
  result = qword_1EDAE75C0;
  if (!qword_1EDAE75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75C0);
  }

  return result;
}

unint64_t sub_1B0122984()
{
  result = qword_1EDAE75C8;
  if (!qword_1EDAE75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75C8);
  }

  return result;
}

unint64_t sub_1B01229DC()
{
  result = qword_1EDAE75E0;
  if (!qword_1EDAE75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75E0);
  }

  return result;
}

unint64_t sub_1B0122A34()
{
  result = qword_1EDAE75E8;
  if (!qword_1EDAE75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75E8);
  }

  return result;
}

unint64_t sub_1B0122A8C()
{
  result = qword_1EDAE75F0;
  if (!qword_1EDAE75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75F0);
  }

  return result;
}

unint64_t sub_1B0122AE4()
{
  result = qword_1EDAE75F8;
  if (!qword_1EDAE75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75F8);
  }

  return result;
}

unint64_t sub_1B0122B3C()
{
  result = qword_1EDAE7608;
  if (!qword_1EDAE7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7608);
  }

  return result;
}

unint64_t sub_1B0122B94()
{
  result = qword_1EDAE7610;
  if (!qword_1EDAE7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7610);
  }

  return result;
}

unint64_t sub_1B0122BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49D8, &qword_1B0156510);
    v3 = sub_1B014D0CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1B00D1FFC(v5, v6);

      result = sub_1B013E148(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0122CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A08, &unk_1B0156548);
    v3 = sub_1B014D0CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B013E0D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B0122E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65476567616D69 && a2 == 0xEF6E6F6974617265;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x724379726F6D656DLL && a2 == 0xEE006E6F69746165 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74697277646E6168 && a2 == 0xEB00000000676E69 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73416D6574737973 && a2 == 0xEF746E6174736973 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7845656369766564 && a2 == 0xEC00000074726570 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54676E6974697277 && a2 == 0xEC000000736C6F6FLL || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7065527472616D73 && a2 == 0xEC0000007365696CLL || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6547696A6F6D65 && a2 == 0xEF6E6F6974617265 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D610 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x686769486C69616DLL && a2 == 0xEE0073746867696CLL || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B015D630 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B015D650 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B015D670 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015D690 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x706150636967616DLL && a2 == 0xEA00000000007265 || (sub_1B014D25C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7373417466697773 && a2 == 0xEB00000000747369 || (sub_1B014D25C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6C43736F746F6870 && a2 == 0xED000070756E6165 || (sub_1B014D25C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D6B0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6874695769726973 && a2 == 0xEF54504774616843 || (sub_1B014D25C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B015D6D0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x41515069726973 && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B015D6F0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6553736F746F6870 && a2 == 0xEC00000068637261 || (sub_1B014D25C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B015D710 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D730 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4D4C4C6B7361 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x7463417472616D73 && a2 == 0xEC000000736E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x61684365646F6378 && a2 == 0xE900000000000074 || (sub_1B014D25C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B015D750 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B015D770 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6D756E4570696B73 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x7261726F706D6574 && a2 == 0xE900000000000079 || (sub_1B014D25C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 1953719668 && a2 == 0xE400000000000000)
  {

    return 36;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

uint64_t sub_1B0123980(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656765746E69 && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B0123B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C69665FLL && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74697277646E6168 && a2 == 0xEB00000000676E69 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x686374656B73 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7865546567616D69 && a2 == 0xE900000000000074 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6554686374656B73 && a2 == 0xEA00000000007478 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F43656372756F73 && a2 == 0xEA00000000006564 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7274536567616D69 && a2 == 0xEF64657275746375 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D790 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (sub_1B014D25C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761 || (sub_1B014D25C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 1819112552 && a2 == 0xE400000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1B0124124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4465727574616566 && a2 == 0xED00006E69616D6FLL;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C646E75625FLL && a2 == 0xE900000000000044 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D470 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B015D490 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015D4B0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F436172747865 && a2 == 0xEC000000746E6574 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEF746E65746E6F43 || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D4F0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369 || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D520 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7250686769487369 && a2 == 0xEE00797469726F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461756C6176655FLL && a2 == 0xED000044496E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x73657250746E6573 && a2 == 0xED00006465746E65 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6176457473726966 && a2 == 0xEF6E6F697461756CLL)
  {

    return 14;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1B0124618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x705573626D756874 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4473626D756874 && a2 == 0xEA00000000006E77 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4374726F706572 && a2 == 0xED00006E7265636ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B0124820(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  *(v3 + v6) = 1;
  return v4(a1);
}

uint64_t sub_1B0124890(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558) - 8) + 80);

  return sub_1B01168EC(a1, a2 & 1);
}

uint64_t sub_1B012491C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810) - 8) + 80);

  return sub_1B00E4D5C(a1);
}

unint64_t static FBKSInteraction.AnnotatedContent.IconType.withString(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0x7373654D6C69616DLL;
  v7 = a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761;
  if (v7 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  result = 0x657268546C69616DLL;
  if (a1 == 0x657268546C69616DLL && a2 == 0xEA00000000006461 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156780;
LABEL_11:
    *a3 = v8;
    return result;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D7E0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156770;
    goto LABEL_11;
  }

  result = 0x654D656C676E6973;
  if (a1 == 0x654D656C676E6973 && a2 == 0xED00006567617373 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156760;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000010 && 0x80000001B015D800 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156750;
    goto LABEL_11;
  }

  if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156740;
    goto LABEL_11;
  }

  result = 0x6574746972776572;
  if (a1 == 0x6574746972776572 && a2 == 0xE90000000000006ELL || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156730;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015D820 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156720;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D840 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156710;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B015D860 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156700;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000017 && 0x80000001B015D880 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01566F0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x80000001B015D8A0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01566E0;
    goto LABEL_11;
  }

  if (a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01566D0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B015D8C0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01566C0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x80000001B015D8E0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01566B0;
    goto LABEL_11;
  }

  result = 0xD000000000000019;
  if (a1 == 0xD000000000000019 && 0x80000001B015D900 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01566A0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D920 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156690;
    goto LABEL_11;
  }

  result = 0x6172546F69647561;
  if (a1 == 0x6172546F69647561 && a2 == 0xEF7470697263736ELL || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156680;
    goto LABEL_11;
  }

  result = 0xD000000000000016;
  if (a1 == 0xD000000000000016 && 0x80000001B015D940 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156670;
    goto LABEL_11;
  }

  result = 0x6552697269536564;
  if (a1 == 0x6552697269536564 && a2 == 0xED00007473657571 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156660;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015D960 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156650;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x80000001B015D980 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156640;
    goto LABEL_11;
  }

  result = 0x7571655269726973;
  if (a1 == 0x7571655269726973 && a2 == 0xEB00000000747365 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156630;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000010 && 0x80000001B015D9A0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156620;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D9C0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156610;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015D9E0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156600;
    goto LABEL_11;
  }

  result = 0x7265646C6F66;
  if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01565F0;
    goto LABEL_11;
  }

  result = 0x74736F6E67616964;
  if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01511A0;
    goto LABEL_11;
  }

  result = 0x756F537466697773;
  if (a1 == 0x756F537466697773 && a2 == 0xEF656C6946656372 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01565E0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x80000001B015DA00 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01565D0;
    goto LABEL_11;
  }

  result = 0x6C6F467466697773;
  if (a1 == 0x6C6F467466697773 && a2 == 0xEB00000000726564 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01565C0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B015DA20 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01565B0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015DA40 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B01565A0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015DA60 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156590;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000017 && 0x80000001B015DA80 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156580;
    goto LABEL_11;
  }

  if (a1 == 0xD00000000000001ALL && 0x80000001B015DAA0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156570;
    goto LABEL_11;
  }

  if (a1 == 0xD00000000000001ALL && 0x80000001B015DAC0 == a2 || (result = sub_1B014D25C(), (result & 1) != 0))
  {
    v8 = xmmword_1B0156560;
    goto LABEL_11;
  }

  *a3 = a1;
  a3[1] = a2;
}

int *FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a11;
  v19 = a11[1];
  v20 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v20 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v42 = a1;
    v44 = a11[1];
    v21 = *a11;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v22 = sub_1B014CB5C();
    __swift_project_value_buffer(v22, qword_1EDAE7828);
    v23 = sub_1B014CB3C();
    v24 = sub_1B014CF5C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = a8;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B00C4000, v23, v24, "AnnotatedContent filename cannot be empty. It must have a name including the file extension.", v26, 2u);
      v27 = v26;
      a8 = v25;
      MEMORY[0x1B271F750](v27, -1, -1);
    }

    v18 = v21;
    a1 = v42;
    v19 = v44;
  }

  v28 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v28 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v43 = a1;
    v45 = v19;
    v41 = v18;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v29 = sub_1B014CB5C();
    __swift_project_value_buffer(v29, qword_1EDAE7828);
    v30 = sub_1B014CB3C();
    v31 = sub_1B014CF5C();
    if (os_log_type_enabled(v30, v31))
    {
      v40 = a8;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B00C4000, v30, v31, "AnnotatedContent display name cannot be empty. It must be a localized user friendly string", v32, 2u);
      v33 = v32;
      a8 = v40;
      MEMORY[0x1B271F750](v33, -1, -1);
    }

    v18 = v41;
    a1 = v43;
    v19 = v45;
  }

  sub_1B0130234(a1, a9, type metadata accessor for FBKSInteraction.Content);
  result = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v35 = (a9 + result[5]);
  *v35 = a2;
  v35[1] = a3;
  v36 = (a9 + result[6]);
  *v36 = a4;
  v36[1] = a5;
  v37 = (a9 + result[7]);
  *v37 = a6;
  v37[1] = a7;
  v38 = (a9 + result[8]);
  *v38 = a8;
  v38[1] = a10;
  *(a9 + result[10]) = a12;
  v39 = (a9 + result[9]);
  *v39 = v18;
  v39[1] = v19;
  return result;
}

uint64_t type metadata accessor for FBKSInteraction.AnnotatedContent()
{
  result = qword_1EDAE77C0;
  if (!qword_1EDAE77C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t FBKSInteraction.AnnotatedContent.IconType.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x7373654D6C69616DLL;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
    case 0xFuLL:
    case 0x13uLL:
    case 0x20uLL:
      v3 = 0xD000000000000012;
      break;
    case 2uLL:
      v3 = 0x657268546C69616DLL;
      break;
    case 3uLL:
      v3 = 0xD000000000000011;
      break;
    case 4uLL:
      v3 = 0x654D656C676E6973;
      break;
    case 5uLL:
    case 0xBuLL:
    case 0x1BuLL:
      v3 = 0xD000000000000014;
      break;
    case 6uLL:
    case 0x16uLL:
      v3 = 0xD000000000000010;
      break;
    case 7uLL:
    case 0x1DuLL:
      v3 = 0xD000000000000017;
      break;
    case 8uLL:
    case 0xAuLL:
      v3 = 0x6163696669746F6ELL;
      break;
    case 9uLL:
    case 0x14uLL:
      v3 = 0xD000000000000013;
      break;
    case 0xCuLL:
    case 0x19uLL:
      v3 = 0xD000000000000018;
      break;
    case 0xDuLL:
      v3 = 0xD000000000000019;
      break;
    case 0xEuLL:
      v3 = 0xD000000000000011;
      break;
    case 0x10uLL:
      v3 = 0x6172546F69647561;
      break;
    case 0x11uLL:
      v3 = 0xD000000000000016;
      break;
    case 0x12uLL:
      v3 = 0x6552697269536564;
      break;
    case 0x15uLL:
      v3 = 0x7571655269726973;
      break;
    case 0x17uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x18uLL:
      v3 = 0x756F537466697773;
      break;
    case 0x1AuLL:
      v3 = 0x6C6F467466697773;
      break;
    case 0x1CuLL:
      v3 = 0xD000000000000011;
      break;
    case 0x1EuLL:
    case 0x1FuLL:
      v3 = 0xD00000000000001ALL;
      break;
    case 0x21uLL:
      v3 = 0x7265646C6F66;
      break;
    case 0x22uLL:
      v3 = 0x74736F6E67616964;
      break;
    case 0x23uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x24uLL:
      v3 = 0x6574746972776572;
      break;
    case 0x25uLL:
      v3 = 1954047348;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1B012E464(v1, v2);
  return v3;
}

unint64_t sub_1B0125BE4(char a1)
{
  result = 0x7373654D6C69616DLL;
  switch(a1)
  {
    case 1:
    case 15:
    case 19:
    case 32:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x657268546C69616DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x654D656C676E6973;
      break;
    case 5:
    case 11:
    case 27:
      result = 0xD000000000000014;
      break;
    case 6:
    case 22:
      result = 0xD000000000000010;
      break;
    case 7:
    case 29:
      result = 0xD000000000000017;
      break;
    case 8:
    case 10:
      result = 0x6163696669746F6ELL;
      break;
    case 9:
    case 20:
      result = 0xD000000000000013;
      break;
    case 12:
    case 25:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6172546F69647561;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x6552697269536564;
      break;
    case 21:
      result = 0x7571655269726973;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x756F537466697773;
      break;
    case 26:
      result = 0x6C6F467466697773;
      break;
    case 28:
      result = 0xD000000000000011;
      break;
    case 30:
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 33:
      result = 0x7265646C6F66;
      break;
    case 34:
      result = 0x74736F6E67616964;
      break;
    case 35:
      result = 0x7261726F706D6574;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x6574746972776572;
      break;
    case 38:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0125FCC(uint64_t a1)
{
  v2 = sub_1B012FC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126008(uint64_t a1)
{
  v2 = sub_1B012FC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126044(uint64_t a1)
{
  v2 = sub_1B012FC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126080(uint64_t a1)
{
  v2 = sub_1B012FC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01260C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0130784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B01260F8(uint64_t a1)
{
  v2 = sub_1B012F4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126134(uint64_t a1)
{
  v2 = sub_1B012F4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126170(uint64_t a1)
{
  v2 = sub_1B012FBC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01261AC(uint64_t a1)
{
  v2 = sub_1B012FBC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01261E8(uint64_t a1)
{
  v2 = sub_1B012FB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126224(uint64_t a1)
{
  v2 = sub_1B012FB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126260(uint64_t a1)
{
  v2 = sub_1B012FB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012629C(uint64_t a1)
{
  v2 = sub_1B012FB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01262D8(uint64_t a1)
{
  v2 = sub_1B012F684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126314(uint64_t a1)
{
  v2 = sub_1B012F684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126350(uint64_t a1)
{
  v2 = sub_1B012F6D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012638C(uint64_t a1)
{
  v2 = sub_1B012F6D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01263C8(uint64_t a1)
{
  v2 = sub_1B012F8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126404(uint64_t a1)
{
  v2 = sub_1B012F8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126440(uint64_t a1)
{
  v2 = sub_1B012F978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012647C(uint64_t a1)
{
  v2 = sub_1B012F978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01264B8(uint64_t a1)
{
  v2 = sub_1B012F72C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01264F4(uint64_t a1)
{
  v2 = sub_1B012F72C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126530(uint64_t a1)
{
  v2 = sub_1B01301AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012656C(uint64_t a1)
{
  v2 = sub_1B01301AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01265A8(uint64_t a1)
{
  v2 = sub_1B0130158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01265E4(uint64_t a1)
{
  v2 = sub_1B0130158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126620(uint64_t a1)
{
  v2 = sub_1B0130104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012665C(uint64_t a1)
{
  v2 = sub_1B0130104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126698(uint64_t a1)
{
  v2 = sub_1B01300B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01266D4(uint64_t a1)
{
  v2 = sub_1B01300B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126710(uint64_t a1)
{
  v2 = sub_1B012FCC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012674C(uint64_t a1)
{
  v2 = sub_1B012FCC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126788(uint64_t a1)
{
  v2 = sub_1B012FD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01267C4(uint64_t a1)
{
  v2 = sub_1B012FD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126800(uint64_t a1)
{
  v2 = sub_1B012FFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012683C(uint64_t a1)
{
  v2 = sub_1B012FFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126878(uint64_t a1)
{
  v2 = sub_1B012FF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01268B4(uint64_t a1)
{
  v2 = sub_1B012FF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01268F0(uint64_t a1)
{
  v2 = sub_1B012FF0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012692C(uint64_t a1)
{
  v2 = sub_1B012FF0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126968(uint64_t a1)
{
  v2 = sub_1B012FEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01269A4(uint64_t a1)
{
  v2 = sub_1B012FEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01269E0(uint64_t a1)
{
  v2 = sub_1B012FE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126A1C(uint64_t a1)
{
  v2 = sub_1B012FE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126A58(uint64_t a1)
{
  v2 = sub_1B012FE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126A94(uint64_t a1)
{
  v2 = sub_1B012FE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126AD0(uint64_t a1)
{
  v2 = sub_1B012F588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126B0C(uint64_t a1)
{
  v2 = sub_1B012F588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126B48(uint64_t a1)
{
  v2 = sub_1B013005C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126B84(uint64_t a1)
{
  v2 = sub_1B013005C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126BC0(uint64_t a1)
{
  v2 = sub_1B0130008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126BFC(uint64_t a1)
{
  v2 = sub_1B0130008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126C38(uint64_t a1)
{
  v2 = sub_1B012FAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126C74(uint64_t a1)
{
  v2 = sub_1B012FAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126CB0(uint64_t a1)
{
  v2 = sub_1B012FA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126CEC(uint64_t a1)
{
  v2 = sub_1B012FA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126D28(uint64_t a1)
{
  v2 = sub_1B012FA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126D64(uint64_t a1)
{
  v2 = sub_1B012FA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126DA0(uint64_t a1)
{
  v2 = sub_1B012F780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126DDC(uint64_t a1)
{
  v2 = sub_1B012F780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126E18(uint64_t a1)
{
  v2 = sub_1B012F87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126E54(uint64_t a1)
{
  v2 = sub_1B012F87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126E90(uint64_t a1)
{
  v2 = sub_1B012F828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126ECC(uint64_t a1)
{
  v2 = sub_1B012F828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126F08(uint64_t a1)
{
  v2 = sub_1B012F7D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126F44(uint64_t a1)
{
  v2 = sub_1B012F7D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126F80(uint64_t a1)
{
  v2 = sub_1B012F924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126FBC(uint64_t a1)
{
  v2 = sub_1B012F924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126FF8(uint64_t a1)
{
  v2 = sub_1B012F9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0127034(uint64_t a1)
{
  v2 = sub_1B012F9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B012708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001B015DB80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B014D25C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B0127120(uint64_t a1)
{
  v2 = sub_1B012F630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012715C(uint64_t a1)
{
  v2 = sub_1B012F630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127198(uint64_t a1)
{
  v2 = sub_1B012F534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01271D4(uint64_t a1)
{
  v2 = sub_1B012F534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127210(uint64_t a1)
{
  v2 = sub_1B012F5DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012724C(uint64_t a1)
{
  v2 = sub_1B012F5DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127288(uint64_t a1)
{
  v2 = sub_1B012FD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01272C4(uint64_t a1)
{
  v2 = sub_1B012FD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127300(uint64_t a1)
{
  v2 = sub_1B012FDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012733C(uint64_t a1)
{
  v2 = sub_1B012FDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.AnnotatedContent.IconType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A18, &qword_1B0156790);
  v258 = *(v4 - 8);
  v259 = v4;
  v5 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v257 = &v145 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A20, &qword_1B0156798);
  v255 = *(v7 - 8);
  v256 = v7;
  v8 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v254 = &v145 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A28, &qword_1B01567A0);
  v252 = *(v10 - 8);
  v253 = v10;
  v11 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v251 = &v145 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A30, &qword_1B01567A8);
  v249 = *(v13 - 8);
  v250 = v13;
  v14 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v248 = &v145 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A38, &qword_1B01567B0);
  v246 = *(v16 - 8);
  v247 = v16;
  v17 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v245 = &v145 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A40, &qword_1B01567B8);
  v243 = *(v19 - 8);
  v244 = v19;
  v20 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v242 = &v145 - v21;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A48, &qword_1B01567C0);
  v240 = *(v241 - 8);
  v22 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v145 - v23;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A50, &qword_1B01567C8);
  v237 = *(v238 - 8);
  v24 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v236 = &v145 - v25;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A58, &qword_1B01567D0);
  v234 = *(v235 - 8);
  v26 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v233 = &v145 - v27;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A60, &qword_1B01567D8);
  v231 = *(v232 - 8);
  v28 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v230 = &v145 - v29;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A68, &qword_1B01567E0);
  v228 = *(v229 - 8);
  v30 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v227 = &v145 - v31;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A70, &qword_1B01567E8);
  v225 = *(v226 - 8);
  v32 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v224 = &v145 - v33;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A78, &qword_1B01567F0);
  v222 = *(v223 - 8);
  v34 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v221 = &v145 - v35;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A80, &qword_1B01567F8);
  v219 = *(v220 - 8);
  v36 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v145 - v37;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A88, &qword_1B0156800);
  v216 = *(v217 - 8);
  v38 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v145 - v39;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A90, &qword_1B0156808);
  v213 = *(v214 - 8);
  v40 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v212 = &v145 - v41;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A98, &qword_1B0156810);
  v210 = *(v211 - 8);
  v42 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v145 - v43;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AA0, &qword_1B0156818);
  v207 = *(v208 - 8);
  v44 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v206 = &v145 - v45;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AA8, &qword_1B0156820);
  v204 = *(v205 - 8);
  v46 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v203 = &v145 - v47;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AB0, &qword_1B0156828);
  v201 = *(v202 - 8);
  v48 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v200 = &v145 - v49;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AB8, &qword_1B0156830);
  v198 = *(v199 - 8);
  v50 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v145 - v51;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AC0, &qword_1B0156838);
  v195 = *(v196 - 8);
  v52 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v145 - v53;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AC8, &qword_1B0156840);
  v192 = *(v193 - 8);
  v54 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v145 - v55;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AD0, &qword_1B0156848);
  v189 = *(v190 - 8);
  v56 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v145 - v57;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AD8, &qword_1B0156850);
  v186 = *(v187 - 8);
  v58 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v145 - v59;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AE0, &qword_1B0156858);
  v183 = *(v184 - 8);
  v60 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v145 - v61;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AE8, &qword_1B0156860);
  v180 = *(v181 - 8);
  v62 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v145 - v63;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AF0, &qword_1B0156868);
  v177 = *(v178 - 8);
  v64 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v145 - v65;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AF8, &qword_1B0156870);
  v174 = *(v175 - 8);
  v66 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v145 - v67;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B00, &qword_1B0156878);
  v171 = *(v172 - 8);
  v68 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v145 - v69;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B08, &qword_1B0156880);
  v168 = *(v169 - 8);
  v70 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v145 - v71;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B10, &qword_1B0156888);
  v165 = *(v166 - 8);
  v72 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v145 - v73;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B18, &qword_1B0156890);
  v162 = *(v163 - 8);
  v74 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v145 - v75;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B20, &qword_1B0156898);
  v159 = *(v160 - 8);
  v76 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v145 - v77;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B28, &qword_1B01568A0);
  v156 = *(v157 - 8);
  v78 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v145 - v79;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B30, &qword_1B01568A8);
  v153 = *(v154 - 8);
  v80 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v145 - v81;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B38, &qword_1B01568B0);
  v150 = *(v151 - 8);
  v82 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v145 - v83;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B40, &qword_1B01568B8);
  v147 = *(v148 - 8);
  v84 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v86 = &v145 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B48, &qword_1B01568C0);
  v146 = *(v87 - 8);
  v88 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v145 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B50, &qword_1B01568C8);
  v92 = *(v91 - 8);
  v261 = v91;
  v262 = v92;
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v145 - v94;
  v97 = *v2;
  v96 = v2[1];
  v98 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B012F4E0();
  v260 = v95;
  sub_1B014D35C();
  switch(v96)
  {
    case 0:
      v264 = 0;
      sub_1B01301AC();
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      (*(v146 + 8))(v90, v87);
      goto LABEL_43;
    case 1:
      v264 = 1;
      sub_1B0130158();
      v120 = v260;
      v121 = v261;
      sub_1B014D19C();
      (*(v147 + 8))(v86, v148);
      return (*(v262 + 8))(v120, v121);
    case 2:
      v264 = 2;
      sub_1B0130104();
      v116 = v149;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v150 + 8);
      v106 = v116;
      v107 = &v183;
      goto LABEL_42;
    case 3:
      v264 = 3;
      sub_1B01300B0();
      v118 = v152;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v153 + 8);
      v106 = v118;
      v107 = &v186;
      goto LABEL_42;
    case 4:
      v264 = 4;
      sub_1B013005C();
      v111 = v155;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v156 + 8);
      v106 = v111;
      v107 = &v189;
      goto LABEL_42;
    case 5:
      v264 = 5;
      sub_1B0130008();
      v126 = v158;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v159 + 8);
      v106 = v126;
      v107 = &v192;
      goto LABEL_42;
    case 6:
      v264 = 6;
      sub_1B012FFB4();
      v129 = v161;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v162 + 8);
      v106 = v129;
      v107 = &v195;
      goto LABEL_42;
    case 7:
      v264 = 7;
      sub_1B012FF60();
      v119 = v164;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v165 + 8);
      v106 = v119;
      v107 = &v198;
      goto LABEL_42;
    case 8:
      v264 = 8;
      sub_1B012FF0C();
      v132 = v167;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v168 + 8);
      v106 = v132;
      v107 = &v201;
      goto LABEL_42;
    case 9:
      v264 = 9;
      sub_1B012FEB8();
      v113 = v170;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v171 + 8);
      v106 = v113;
      v107 = &v204;
      goto LABEL_42;
    case 10:
      v264 = 10;
      sub_1B012FE64();
      v131 = v173;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v174 + 8);
      v106 = v131;
      v107 = &v207;
      goto LABEL_42;
    case 11:
      v264 = 11;
      sub_1B012FE10();
      v110 = v176;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v177 + 8);
      v106 = v110;
      v107 = &v210;
      goto LABEL_42;
    case 12:
      v264 = 12;
      sub_1B012FDBC();
      v112 = v179;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v180 + 8);
      v106 = v112;
      v107 = &v213;
      goto LABEL_42;
    case 13:
      v264 = 13;
      sub_1B012FD68();
      v128 = v182;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v183 + 8);
      v106 = v128;
      v107 = &v216;
      goto LABEL_42;
    case 14:
      v264 = 14;
      sub_1B012FD14();
      v109 = v185;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v186 + 8);
      v106 = v109;
      v107 = &v219;
      goto LABEL_42;
    case 15:
      v264 = 15;
      sub_1B012FCC0();
      v117 = v188;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v189 + 8);
      v106 = v117;
      v107 = &v222;
      goto LABEL_42;
    case 16:
      v264 = 16;
      sub_1B012FC6C();
      v108 = v191;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v192 + 8);
      v106 = v108;
      v107 = &v225;
      goto LABEL_42;
    case 17:
      v264 = 17;
      sub_1B012FC18();
      v124 = v194;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v195 + 8);
      v106 = v124;
      v107 = &v228;
      goto LABEL_42;
    case 18:
      v264 = 18;
      sub_1B012FBC4();
      v130 = v197;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v198 + 8);
      v106 = v130;
      v107 = &v231;
      goto LABEL_42;
    case 19:
      v264 = 19;
      sub_1B012FB70();
      v136 = v200;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v201 + 8);
      v106 = v136;
      v107 = &v234;
      goto LABEL_42;
    case 20:
      v264 = 20;
      sub_1B012FB1C();
      v125 = v203;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v204 + 8);
      v106 = v125;
      v107 = &v237;
      goto LABEL_42;
    case 21:
      v264 = 21;
      sub_1B012FAC8();
      v127 = v206;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v207 + 8);
      v106 = v127;
      v107 = &v240;
      goto LABEL_42;
    case 22:
      v264 = 22;
      sub_1B012FA74();
      v135 = v209;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v210 + 8);
      v106 = v135;
      v107 = &v243;
      goto LABEL_42;
    case 23:
      v264 = 23;
      sub_1B012FA20();
      v137 = v212;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v213 + 8);
      v106 = v137;
      v107 = &v246;
      goto LABEL_42;
    case 24:
      v264 = 24;
      sub_1B012F9CC();
      v115 = v215;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v216 + 8);
      v106 = v115;
      v107 = &v249;
      goto LABEL_42;
    case 25:
      v264 = 25;
      sub_1B012F978();
      v114 = v218;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v219 + 8);
      v106 = v114;
      v107 = &v252;
      goto LABEL_42;
    case 26:
      v264 = 26;
      sub_1B012F924();
      v144 = v221;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v222 + 8);
      v106 = v144;
      v107 = &v255;
      goto LABEL_42;
    case 27:
      v264 = 27;
      sub_1B012F8D0();
      v104 = v224;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v225 + 8);
      v106 = v104;
      v107 = &v258;
      goto LABEL_42;
    case 28:
      v264 = 28;
      sub_1B012F87C();
      v138 = v227;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v228 + 8);
      v106 = v138;
      v107 = &v261;
      goto LABEL_42;
    case 29:
      v264 = 29;
      sub_1B012F828();
      v139 = v230;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v231 + 8);
      v106 = v139;
      v107 = &v263;
      goto LABEL_42;
    case 30:
      v264 = 30;
      sub_1B012F7D4();
      v133 = v233;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v234 + 8);
      v106 = v133;
      v107 = &v265;
      goto LABEL_42;
    case 31:
      v264 = 31;
      sub_1B012F780();
      v123 = v236;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v237 + 8);
      v106 = v123;
      v107 = &v266;
      goto LABEL_42;
    case 32:
      v264 = 32;
      sub_1B012F72C();
      v134 = v239;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v105 = *(v240 + 8);
      v106 = v134;
      v107 = &v267;
LABEL_42:
      v105(v106, *(v107 - 32));
      goto LABEL_43;
    case 33:
      v264 = 33;
      sub_1B012F6D8();
      v101 = v242;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v103 = v243;
      v102 = v244;
      goto LABEL_11;
    case 34:
      v264 = 34;
      sub_1B012F684();
      v101 = v245;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v103 = v246;
      v102 = v247;
      goto LABEL_11;
    case 35:
      v264 = 36;
      sub_1B012F5DC();
      v101 = v251;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v103 = v252;
      v102 = v253;
      goto LABEL_11;
    case 36:
      v264 = 37;
      sub_1B012F588();
      v101 = v254;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v103 = v255;
      v102 = v256;
      goto LABEL_11;
    case 37:
      v264 = 38;
      sub_1B012F534();
      v101 = v257;
      v100 = v260;
      v99 = v261;
      sub_1B014D19C();
      v103 = v258;
      v102 = v259;
LABEL_11:
      (*(v103 + 8))(v101, v102);
LABEL_43:
      result = (*(v262 + 8))(v100, v99);
      break;
    default:
      v264 = 35;
      sub_1B012F630();
      v140 = v248;
      v142 = v260;
      v141 = v261;
      sub_1B014D19C();
      v143 = v250;
      sub_1B014D1DC();
      (*(v249 + 8))(v140, v143);
      result = (*(v262 + 8))(v142, v141);
      break;
  }

  return result;
}