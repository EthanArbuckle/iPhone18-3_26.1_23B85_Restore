char *FBKSDonation.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v77 = a8;
  v76 = a7;
  v75 = a4;
  v69 = a2;
  v81 = a12;
  v80 = a11;
  v79 = a10;
  v78 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - v23;
  v25 = objc_allocWithZone(v13);
  v26 = a1[1];
  v71 = *a1;
  v70 = v26;
  v74 = a5;
  sub_1B00E77A4(a5, v24);
  v27 = type metadata accessor for FBKSInteraction.Content(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v24, 0, 1, v27);
  v73 = a6;
  sub_1B00E77A4(a6, v22);
  v72 = v22;
  v28(v22, 0, 1, v27);
  v29 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v29 = 0;
  v29[1] = 0;
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v31 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v32 = *(*(v31 - 8) + 56);
  v33 = &v25[v30];
  v34 = a3;
  v32(v33, 1, 1, v31);
  v32(&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v31);
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v28(&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent], 1, 1, v27);
  v28(&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v27);
  v35 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v36 = 0;
  v36[1] = 0;
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v38 = sub_1B014CB1C();
  (*(*(v38 - 8) + 56))(&v25[v37], 1, 1, v38);
  v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v39 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v40 = v70;
  *v39 = v71;
  v39[1] = v40;
  v41 = type metadata accessor for FBKSInteraction(0);
  v82.receiver = v25;
  v82.super_class = v41;
  v42 = objc_msgSendSuper2(&v82, sel_init);
  v43 = v42;
  if (a3)
  {
    v44 = v42;
    v45 = v69;
  }

  else
  {
    v46 = objc_opt_self();
    v47 = v43;
    v48 = [v46 mainBundle];
    v49 = [v48 bundleIdentifier];

    if (v49)
    {
      v45 = sub_1B014CC1C();
      v34 = v50;
    }

    else
    {
      v45 = 0;
      v34 = 0;
    }
  }

  sub_1B00E7808(v73);
  sub_1B00E7808(v74);
  v51 = &v43[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  v52 = *&v43[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  *v51 = v45;
  v51[1] = v34;

  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v54 = *&v43[v53];
  *&v43[v53] = v75;

  v55 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v24, &v43[v55], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v56 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v72, &v43[v56], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v57 = &v43[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v58 = *(v57 + 1);
  v59 = v77;
  *v57 = v76;
  *(v57 + 1) = v59;

  v60 = &v43[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v61 = *(v60 + 1);
  v62 = v79;
  *v60 = v78;
  *(v60 + 1) = v62;

  v63 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v64 = *&v43[v63];
  *&v43[v63] = v80;

  v65 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v43[v65] = v81 & 1;

  v66 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v67 = *&v43[v66];
  *&v43[v66] = MEMORY[0x1E69E7CC0];

  return v43;
}

char *FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v75 = a8;
  v74 = a7;
  v73 = a4;
  v67 = a2;
  v79 = a12;
  v78 = a11;
  v77 = a10;
  v76 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v24 = a1[1];
  v69 = *a1;
  v68 = v24;
  v72 = a5;
  sub_1B00E77A4(a5, &v67 - v22);
  v25 = type metadata accessor for FBKSInteraction.Content(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v23, 0, 1, v25);
  v71 = a6;
  sub_1B00E77A4(a6, v21);
  v70 = v21;
  v26(v21, 0, 1, v25);
  v27 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v27 = 0;
  v27[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v29 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v30 = *(*(v29 - 8) + 56);
  v31 = &v12[v28];
  v32 = a3;
  v30(v31, 1, 1, v29);
  v30(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v29);
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v26(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent], 1, 1, v25);
  v26(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v25);
  v33 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v34 = 0;
  v34[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v35 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v36 = sub_1B014CB1C();
  (*(*(v36 - 8) + 56))(&v12[v35], 1, 1, v36);
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v37 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v38 = v68;
  *v37 = v69;
  v37[1] = v38;
  v39 = type metadata accessor for FBKSInteraction(0);
  v80.receiver = v12;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, sel_init);
  v41 = v40;
  if (a3)
  {
    v42 = v40;
    v43 = v67;
  }

  else
  {
    v44 = objc_opt_self();
    v45 = v41;
    v46 = [v44 mainBundle];
    v47 = [v46 bundleIdentifier];

    if (v47)
    {
      v43 = sub_1B014CC1C();
      v32 = v48;
    }

    else
    {
      v43 = 0;
      v32 = 0;
    }
  }

  sub_1B00E7808(v71);
  sub_1B00E7808(v72);
  v49 = &v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  v50 = *&v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  *v49 = v43;
  v49[1] = v32;

  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v52 = *&v41[v51];
  *&v41[v51] = v73;

  v53 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(v23, &v41[v53], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v54 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v70, &v41[v54], &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v55 = &v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v56 = *(v55 + 1);
  v57 = v75;
  *v55 = v74;
  *(v55 + 1) = v57;

  v58 = &v41[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v59 = *(v58 + 1);
  v60 = v77;
  *v58 = v76;
  *(v58 + 1) = v60;

  v61 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v62 = *&v41[v61];
  *&v41[v61] = v78;

  v63 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v41[v63] = v79 & 1;

  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v65 = *&v41[v64];
  *&v41[v64] = MEMORY[0x1E69E7CC0];

  return v41;
}

char *FBKSDonation.__allocating_init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v88 = a8;
  v90 = a7;
  v87 = a4;
  v79 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  v25 = objc_allocWithZone(v13);
  v26 = a1[1];
  v81 = *a1;
  v80 = v26;
  v27 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(a5, 1, v27) == 1 && v29(a6, 1, v27) == 1 && !*(v90 + 16))
  {
    v89 = a6;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v30 = sub_1B014CB5C();
    __swift_project_value_buffer(v30, qword_1EDAE7828);
    v31 = sub_1B014CB3C();
    v32 = sub_1B014CF5C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B00C4000, v31, v32, "No AnnotatedContent passed into FBKSDonation initializer", v33, 2u);
      MEMORY[0x1B271F750](v33, -1, -1);
    }

    a6 = v89;
  }

  v86 = a13;
  v85 = a12;
  v84 = a11;
  v83 = a10;
  v82 = a9;
  v89 = a5;
  sub_1B00DE660(a5, v24, &qword_1EB6C3D68, &unk_1B0151240);
  v34 = a6;
  sub_1B00DE660(a6, v22, &qword_1EB6C3D68, &unk_1B0151240);
  v35 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v35 = 0;
  v35[1] = 0;
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v36 = *(v28 + 56);
  v36(&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent], 1, 1, v27);
  v36(&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v27);
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v38 = type metadata accessor for FBKSInteraction.Content(0);
  v39 = *(*(v38 - 8) + 56);
  v39(&v25[v37], 1, 1, v38);
  v39(&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v38);
  v40 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v41 = 0;
  v41[1] = 0;
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v42 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v43 = sub_1B014CB1C();
  (*(*(v43 - 8) + 56))(&v25[v42], 1, 1, v43);
  v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v44 = &v25[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v45 = v80;
  *v44 = v81;
  v44[1] = v45;
  v46 = type metadata accessor for FBKSInteraction(0);
  v91.receiver = v25;
  v91.super_class = v46;
  v47 = objc_msgSendSuper2(&v91, sel_init);
  v48 = v47;
  if (a3)
  {
    v49 = &v47[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v50 = *&v47[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v49 = v79;
    *(v49 + 1) = a3;
    v51 = v47;
  }

  else
  {
    v52 = objc_opt_self();
    v53 = v48;
    v54 = [v52 mainBundle];
    v55 = [v54 bundleIdentifier];

    if (v55)
    {
      v56 = sub_1B014CC1C();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v59 = &v53[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v60 = *&v53[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v59 = v56;
    v59[1] = v58;
  }

  v61 = v89;

  v62 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v63 = *&v48[v62];
  *&v48[v62] = v87;

  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v24, &v48[v64], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v65 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v22, &v48[v65], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v66 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v67 = *&v48[v66];
  *&v48[v66] = v90;

  v68 = &v48[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v69 = *(v68 + 1);
  v70 = v82;
  *v68 = v88;
  *(v68 + 1) = v70;

  v71 = &v48[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v72 = *(v71 + 1);
  v73 = v84;
  *v71 = v83;
  *(v71 + 1) = v73;

  v74 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v75 = *&v48[v74];
  *&v48[v74] = v85;

  v76 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v48[v76] = v86 & 1;

  sub_1B00DE9C0(v61, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE9C0(v34, &qword_1EB6C3D68, &unk_1B0151240);
  return v48;
}

char *FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v14 = v13;
  v90 = a8;
  v92 = a7;
  v89 = a4;
  v81 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v80 - v24;
  v26 = a1[1];
  v83 = *a1;
  v82 = v26;
  v27 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(a5, 1, v27) == 1 && v29(a6, 1, v27) == 1 && !*(v92 + 16))
  {
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v30 = sub_1B014CB5C();
    __swift_project_value_buffer(v30, qword_1EDAE7828);
    v31 = sub_1B014CB3C();
    v32 = sub_1B014CF5C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = v32;
      v35 = v33;
      _os_log_impl(&dword_1B00C4000, v31, v34, "No AnnotatedContent passed into FBKSDonation initializer", v33, 2u);
      MEMORY[0x1B271F750](v35, -1, -1);
    }
  }

  v88 = a13;
  v87 = a12;
  v86 = a11;
  v85 = a10;
  v84 = a9;
  v91 = a5;
  sub_1B00DE660(a5, v25, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE660(a6, v23, &qword_1EB6C3D68, &unk_1B0151240);
  v36 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v36 = 0;
  v36[1] = 0;
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v37 = *(v28 + 56);
  v37(&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent], 1, 1, v27);
  v37(&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v27);
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v38 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v39 = type metadata accessor for FBKSInteraction.Content(0);
  v40 = *(*(v39 - 8) + 56);
  v40(&v14[v38], 1, 1, v39);
  v40(&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v39);
  v41 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v41 = 0;
  v41[1] = 0;
  v42 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v42 = 0;
  v42[1] = 0;
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v44 = sub_1B014CB1C();
  (*(*(v44 - 8) + 56))(&v14[v43], 1, 1, v44);
  v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v45 = &v14[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  v46 = v82;
  *v45 = v83;
  v45[1] = v46;
  v47 = type metadata accessor for FBKSInteraction(0);
  v93.receiver = v14;
  v93.super_class = v47;
  v48 = objc_msgSendSuper2(&v93, sel_init);
  v49 = v48;
  if (a3)
  {
    v50 = &v48[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v51 = *&v48[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v50 = v81;
    *(v50 + 1) = a3;
    v52 = v48;
    v53 = a6;
    v54 = v91;
  }

  else
  {
    v55 = objc_opt_self();
    v56 = v49;
    v57 = [v55 mainBundle];
    v58 = [v57 bundleIdentifier];

    if (v58)
    {
      v59 = sub_1B014CC1C();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v53 = a6;
    v62 = &v56[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
    v63 = *&v56[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
    *v62 = v59;
    v62[1] = v61;
    v54 = v91;
  }

  v64 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v65 = *&v49[v64];
  *&v49[v64] = v89;

  v66 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v25, &v49[v66], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v67 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(v23, &v49[v67], &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v69 = *&v49[v68];
  *&v49[v68] = v92;

  v70 = &v49[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v71 = *(v70 + 1);
  v72 = v84;
  *v70 = v90;
  *(v70 + 1) = v72;

  v73 = &v49[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v74 = *(v73 + 1);
  v75 = v86;
  *v73 = v85;
  *(v73 + 1) = v75;

  v76 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v77 = *&v49[v76];
  *&v49[v76] = v87;

  v78 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v49[v78] = v88 & 1;

  sub_1B00DE9C0(v54, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE9C0(v53, &qword_1EB6C3D68, &unk_1B0151240);
  return v49;
}

void *FBKSDonation.__allocating_init(from:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B00E7864(a1, v6);
  v4 = FBKSInteraction.init(from:)(v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *FBKSDonation.init(from:)(uint64_t *a1)
{
  sub_1B00E7864(a1, v4);
  v2 = FBKSInteraction.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_1B00E2DA4(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = v49 - v8;
  v9 = sub_1B014CB1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v49 - v15);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v17 = sub_1B014CB5C();
  __swift_project_value_buffer(v17, qword_1EDAE7828);
  v18 = sub_1B014CB3C();
  v19 = sub_1B014CF6C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49[0] = a1;
    v49[1] = v13;
    v21 = v20;
    v22 = a2;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v21 = 136446210;
    *(v21 + 4) = sub_1B00E6C2C(0x5F286574616E6F64, 0xEA0000000000293ALL, aBlock);
    _os_log_impl(&dword_1B00C4000, v18, v19, "%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    a2 = v22;
    v3 = v2;
    MEMORY[0x1B271F750](v24, -1, -1);
    v25 = v21;
    a1 = v49[0];
    MEMORY[0x1B271F750](v25, -1, -1);
  }

  v53 = &type metadata for FeedbackFeatureFlags;
  v54 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v26 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v26 & 1) == 0)
  {
    sub_1B00DC9DC();
    v35 = swift_allocError();
    *v36 = 0;
LABEL_15:
    *v16 = v35;
    swift_storeEnumTagMultiPayload();
    a1(v16);
    return sub_1B00DE9C0(v16, &qword_1EB6C3C30, &qword_1B014F3F0);
  }

  if (qword_1EDAE7008 != -1)
  {
    swift_once();
  }

  if ((byte_1EDAE7010 & 1) == 0)
  {
    v37 = sub_1B014CB3C();
    v38 = sub_1B014CF2C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B00C4000, v37, v38, "Donation is not supported on FCS", v39, 2u);
      MEMORY[0x1B271F750](v39, -1, -1);
    }

    sub_1B00E78C8();
    v35 = swift_allocError();
    *v40 = 1;
    goto LABEL_15;
  }

  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  v28 = v51;
  sub_1B00DE660(v3 + v27, v51, &qword_1EB6C3B98, &qword_1B014F360);
  if ((*(v10 + 48))(v28, 1, v9) == 1)
  {
    sub_1B00DE9C0(v28, &qword_1EB6C3B98, &qword_1B014F360);
    v29 = sub_1B014C88C();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_1B014C87C();
    aBlock[0] = v3;
    type metadata accessor for FBKSDonation();
    sub_1B00E8900(&qword_1EDAE7000, type metadata accessor for FBKSDonation);
    v32 = sub_1B014C86C();
    v34 = v33;

    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v43 = swift_allocObject();
    *(v43 + 16) = a1;
    *(v43 + 24) = a2;

    v44 = sub_1B00FA9AC(sub_1B00E7968, v43);

    if (v44)
    {
      v45 = sub_1B014CA7C();
      v46 = swift_allocObject();
      v46[2] = a1;
      v46[3] = a2;
      v46[4] = v3;
      v54 = sub_1B00E7970;
      v55 = v46;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DA300;
      v53 = &block_descriptor_1;
      v47 = _Block_copy(aBlock);

      v48 = v3;

      [v44 donateWithDonationJSON:v45 completion:v47];
      _Block_release(v47);
      swift_unknownObjectRelease();
    }

    return sub_1B00D2024(v32, v34);
  }

  else
  {
    v42 = v50;
    (*(v10 + 32))(v50, v28, v9);
    (*(v10 + 16))(v16, v42, v9);
    swift_storeEnumTagMultiPayload();
    a1(v16);
    sub_1B00DE9C0(v16, &qword_1EB6C3C30, &qword_1B014F3F0);
    return (*(v10 + 8))(v42, v9);
  }
}

uint64_t sub_1B00E34F4(void *a1, void (*a2)(uint64_t *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - v6);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v8 = sub_1B014CB5C();
  __swift_project_value_buffer(v8, qword_1EDAE7828);
  v9 = a1;
  v10 = sub_1B014CB3C();
  v11 = sub_1B014CF4C();

  v12 = os_log_type_enabled(v10, v11);
  v25 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = a1;
    v27 = v24;
    *v13 = 136315138;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v15 = sub_1B014CC6C();
    v17 = sub_1B00E6C2C(v15, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B00C4000, v10, v11, "Failed to connect to centralized feedback daemon: %s", v13, 0xCu);
    v18 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B271F750](v18, -1, -1);
    MEMORY[0x1B271F750](v13, -1, -1);
  }

  if (a1)
  {
    v19 = v25;
    *v7 = v25;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
  }

  else
  {
    sub_1B00E78C8();
    v21 = swift_allocError();
    *v22 = 0;
    *v7 = v21;
    swift_storeEnumTagMultiPayload();
  }

  a2(v7);
  return sub_1B00DE9C0(v7, &qword_1EB6C3C30, &qword_1B014F3F0);
}

uint64_t sub_1B00E376C(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - v17;
  v19 = sub_1B014CB1C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    v24 = a2;
    a3(v11);
  }

  else
  {
    v31[1] = a4;
    v32 = a3;
    sub_1B00DE660(v34, v18, &qword_1EB6C3B98, &qword_1B014F360);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v23, v18, v19);
      v28 = *(v20 + 16);
      v28(v16, v23, v19);
      (*(v20 + 56))(v16, 0, 1, v19);
      v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
      v30 = v33;
      swift_beginAccess();
      sub_1B00DE71C(v16, v30 + v29, &qword_1EB6C3B98, &qword_1B014F360);
      swift_endAccess();
      v28(v11, v23, v19);
      swift_storeEnumTagMultiPayload();
      v32(v11);
      sub_1B00DE9C0(v11, &qword_1EB6C3C30, &qword_1B014F3F0);
      return (*(v20 + 8))(v23, v19);
    }

    sub_1B00DE9C0(v18, &qword_1EB6C3B98, &qword_1B014F360);
    sub_1B00E78C8();
    v25 = swift_allocError();
    *v26 = 0;
    *v11 = v25;
    swift_storeEnumTagMultiPayload();
    v32(v11);
  }

  return sub_1B00DE9C0(v11, &qword_1EB6C3C30, &qword_1B014F3F0);
}

uint64_t sub_1B00E3AF8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E3B18, 0, 0);
}

uint64_t sub_1B00E3B18()
{
  v21 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x29286574616E6F64, 0xE800000000000000, &v20);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    if (qword_1EDAE7008 != -1)
    {
      swift_once();
    }

    if (byte_1EDAE7010)
    {
      v7 = v0[8];
      sub_1B010291C();
      v8 = swift_task_alloc();
      v0[9] = v8;
      *(v8 + 16) = v7;
      v9 = *(MEMORY[0x1E69E8920] + 4);
      v10 = swift_task_alloc();
      v0[10] = v10;
      v11 = sub_1B014CB1C();
      *v10 = v0;
      v10[1] = sub_1B00DA708;
      v12 = v0[7];

      return MEMORY[0x1EEE6DE38](v12, 0, 0, 0x29286574616E6F64, 0xE800000000000000, sub_1B00E7994, v8, v11);
    }

    v15 = sub_1B014CB3C();
    v16 = sub_1B014CF2C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B00C4000, v15, v16, "Donation is not supported on FCS", v17, 2u);
      MEMORY[0x1B271F750](v17, -1, -1);
    }

    sub_1B00E78C8();
    swift_allocError();
    v14 = 1;
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    v14 = 0;
  }

  *v13 = v14;
  swift_willThrow();
  v18 = v0[1];

  return v18();
}

uint64_t sub_1B00E3E8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1B00E2DA4(sub_1B00E8984, v8);
}

uint64_t sub_1B00E3FD4(uint64_t a1)
{
  v2 = sub_1B014CB1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v15 - v12);
  sub_1B00DE660(a1, v15 - v12, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15[1] = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    return sub_1B014CE7C();
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0);
    sub_1B014CE8C();
    return (*(v3 + 8))(v9, v2);
  }
}

void sub_1B00E41E0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B00E6C2C(0x6164696C61766E69, 0xEE00293A5F286574, aBlock);
    _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B271F750](v10, -1, -1);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  v26 = &type metadata for FeedbackFeatureFlags;
  v27 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v11 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v11)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;

    v13 = sub_1B00FA9AC(sub_1B00E799C, v12);

    if (v13)
    {
      v14 = sub_1B014C88C();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      sub_1B014C87C();
      aBlock[0] = v3;
      type metadata accessor for FBKSDonation();
      sub_1B00E8900(&qword_1EDAE7000, type metadata accessor for FBKSDonation);
      v17 = sub_1B014C86C();
      v19 = v18;

      v22 = sub_1B014CA7C();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      *(v23 + 24) = a2;
      v27 = sub_1B00E79A4;
      v28 = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B00DFB7C;
      v26 = &block_descriptor_20;
      v24 = _Block_copy(aBlock);

      [v13 invalidateDonationWithDonationJSON:v22 completion:v24];
      _Block_release(v24);
      swift_unknownObjectRelease();

      sub_1B00D2024(v17, v19);
      return;
    }

    sub_1B00E78C8();
  }

  else
  {
    sub_1B00DC9DC();
  }

  v20 = swift_allocError();
  *v21 = 0;
  a1();
}

void sub_1B00E45D8(void *a1, void (*a2)(void *))
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
    sub_1B00E78C8();
    v15 = swift_allocError();
    *v16 = 0;
    (a2)(v15, v16);
  }
}

uint64_t sub_1B00E47D8()
{
  v16 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x6164696C61766E69, 0xEC00000029286574, &v15);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    v7 = v0[7];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v7;
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1B00E4A7C;
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v10, 0, 0, 0x6164696C61766E69, 0xEC00000029286574, sub_1B00E79CC, v8, v11);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1B00E4A7C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1B00E4BB0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1B00E4B98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B00E4BB0()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B00E4C14(uint64_t a1)
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
  sub_1B00E41E0(sub_1B00E8980, v8);
}

uint64_t sub_1B00E4D5C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    return sub_1B014CE7C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    return sub_1B014CE8C();
  }
}

void sub_1B00E4DD4(void *a1, void (*a2)(void *, uint64_t))
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
    a2(a1, 1);
  }

  else
  {
    sub_1B00E78C8();
    v15 = swift_allocError();
    *v16 = 0;
    a2(v15, 1);
  }
}

uint64_t static FBKSDonation.fetchMultiple(count:fromLatest:)(int a1, char a2)
{
  *(v3 + 64) = v2;
  *(v3 + 100) = a2;
  *(v3 + 96) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E4FE4, 0, 0);
}

uint64_t sub_1B00E4FE4()
{
  v18 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000020, 0x80000001B015C2F0, &v17);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 100);
    v9 = *(v0 + 96);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 28) = v8;
    v11 = *(MEMORY[0x1E69E8920] + 4);
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D78, &qword_1B014FE48);
    *v12 = v0;
    v12[1] = sub_1B00E529C;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD000000000000020, 0x80000001B015C2F0, sub_1B00E7CE0, v10, v13);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B00E529C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B00DA844;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1B00E8C4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B00E53B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D98, &qword_1B014FFA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest10completionys6UInt32V_Sbys6ResultOySayACGs5Error_pGctFZ_0(a3, a4, sub_1B00E8C38, v13);
}

void sub_1B00E5510(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v26 = a3;
    a4(a3, 1);
    v6 = v26;

LABEL_4:

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B00E78C8();
    v7 = swift_allocError();
    *v8 = 0;
    a4(v7, 1);
    v6 = v7;

    goto LABEL_4;
  }

  v11 = sub_1B014C82C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B00DE8A4(a1, a2);
  sub_1B014C81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D78, &qword_1B014FE48);
  sub_1B00E8A94(&qword_1EB6C3DA8, &qword_1EB6C3D78, &qword_1B014FE48);
  v27 = a2;
  sub_1B014C80C();

  v14 = v28;
  if (qword_1EDAE7070 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = sub_1B014CB5C();
    __swift_project_value_buffer(v15, qword_1EDAE7828);

    v16 = sub_1B014CB3C();
    v17 = sub_1B014CF3C();
    v18 = v14 >> 62;
    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = v18 ? sub_1B014D09C() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v19 + 4) = v20;

      _os_log_impl(&dword_1B00C4000, v16, v17, "Fetched %ld donations:", v19, 0xCu);
      MEMORY[0x1B271F750](v19, -1, -1);
    }

    else
    {
    }

    if (v18)
    {
      break;
    }

    v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_29;
    }

LABEL_17:
    v22 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B271EB20](v22, v14);
      }

      else
      {
        if (v22 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v23 = *(v14 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v28 = v23;
      sub_1B00E58C8(&v28);

      ++v22;
      if (v25 == v21)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v21 = sub_1B014D09C();
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_29:
  a4(v14, 0);
  sub_1B00DE9AC(a1, v27);
}

void sub_1B00E58C8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_1B014CB1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE660(v14 + v15, v5, &qword_1EB6C3B98, &qword_1B014F360);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B00DE9C0(v5, &qword_1EB6C3B98, &qword_1B014F360);
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v16 = sub_1B014CB5C();
    __swift_project_value_buffer(v16, qword_1EDAE7828);
    v17 = sub_1B014CB3C();
    v18 = sub_1B014CF4C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B00C4000, v17, v18, "Fetched donation is missing evaluationID", v19, 2u);
      MEMORY[0x1B271F750](v19, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v20 = sub_1B014CB5C();
    __swift_project_value_buffer(v20, qword_1EDAE7828);
    (*(v7 + 16))(v11, v13, v6);
    v21 = sub_1B014CB3C();
    v22 = sub_1B014CF3C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v23;
      v34 = swift_slowAlloc();
      v35 = v34;
      *v23 = 136315138;
      sub_1B00E8900(&qword_1EB6C3B90, MEMORY[0x1E69695A8]);
      v24 = sub_1B014D22C();
      v26 = v25;
      v27 = *(v7 + 8);
      v27(v11, v6);
      v28 = sub_1B00E6C2C(v24, v26, &v35);

      v29 = v33;
      *(v33 + 1) = v28;
      v30 = v29;
      _os_log_impl(&dword_1B00C4000, v21, v22, "Fetched donation ID: %s", v29, 0xCu);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1B271F750](v31, -1, -1);
      MEMORY[0x1B271F750](v30, -1, -1);

      v27(v13, v6);
    }

    else
    {

      v32 = *(v7 + 8);
      v32(v11, v6);
      v32(v13, v6);
    }
  }
}

void sub_1B00E5D34(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    v19 = a3;
    a4(a3, 1);
    v6 = v19;

LABEL_4:

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B00E78C8();
    v7 = swift_allocError();
    *v8 = 0;
    a4(v7, 1);
    v6 = v7;

    goto LABEL_4;
  }

  v11 = sub_1B014C82C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B00DE8A4(a1, a2);
  sub_1B014C81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D80, &qword_1B014FE60);
  sub_1B00E884C();
  v14 = a2;
  sub_1B014C80C();

  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v15 = sub_1B014CB5C();
  __swift_project_value_buffer(v15, qword_1EDAE7828);

  v16 = sub_1B014CB3C();
  v17 = sub_1B014CF3C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v20[2];

    _os_log_impl(&dword_1B00C4000, v16, v17, "Fetched %ld donations:", v18, 0xCu);
    MEMORY[0x1B271F750](v18, -1, -1);
  }

  else
  {
  }

  a4(v20, 0);
  sub_1B00DE9AC(a1, v14);
}

uint64_t static FBKSDonation.fetchMultiple(count:fromLatest:excludingEvaluationIDs:)(int a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 108) = a2;
  *(v4 + 104) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E6034, 0, 0);
}

uint64_t sub_1B00E6034()
{
  v19 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000037, 0x80000001B015C320, &v18);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 108);
    v10 = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    *(v11 + 28) = v9;
    *(v11 + 32) = v8;
    v12 = *(MEMORY[0x1E69E8920] + 4);
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D78, &qword_1B014FE48);
    *v13 = v0;
    v13[1] = sub_1B00D8FBC;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD000000000000037, 0x80000001B015C320, sub_1B00E8360, v11, v14);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B00E62FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D98, &qword_1B014FFA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest22excludingEvaluationIDs10completionys6UInt32V_SbSaySSGSgys6ResultOySayACGs5Error_pGctFZ_0(a3, a4, a5, sub_1B00E87A0, v15);
}

uint64_t static FBKSDonation.fetchMultipleIDs(count:fromLatest:excludingEvaluationIDs:)(int a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 108) = a2;
  *(v4 + 104) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00E6488, 0, 0);
}

uint64_t sub_1B00E6488()
{
  v19 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD00000000000003ALL, 0x80000001B015C360, &v18);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 108);
    v10 = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    *(v11 + 28) = v9;
    *(v11 + 32) = v8;
    v12 = *(MEMORY[0x1E69E8920] + 4);
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D80, &qword_1B014FE60);
    *v13 = v0;
    v13[1] = sub_1B00DF6B4;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD00000000000003ALL, 0x80000001B015C360, sub_1B00E8374, v11, v14);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B00E6750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D90, &qword_1B014FFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  _s15FeedbackService12FBKSDonationC16fetchMultipleIDs5count10fromLatest019excludingEvaluationF010completionys6UInt32V_SbSaySSGSgys6ResultOySay10Foundation4UUIDVGs5Error_pGctFZ_0(a3, a4, a5, sub_1B00E878C, v15);
}

uint64_t sub_1B00E68B4(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1B014CE7C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1B014CE8C();
  }
}

BOOL sub_1B00E6934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE660(v0 + v8, v7, &qword_1EB6C3D68, &unk_1B0151240);
  v9 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v10 = *(*(v9 - 8) + 48);
  v11 = 1;
  v12 = v10(v7, 1, v9);
  sub_1B00DE9C0(v7, &qword_1EB6C3D68, &unk_1B0151240);
  if (v12 == 1)
  {
    v13 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
    swift_beginAccess();
    sub_1B00DE660(v0 + v13, v5, &qword_1EB6C3D68, &unk_1B0151240);
    v11 = 1;
    v14 = v10(v5, 1, v9);
    sub_1B00DE9C0(v5, &qword_1EB6C3D68, &unk_1B0151240);
    if (v14 == 1)
    {
      v15 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
      swift_beginAccess();
      return *(*(v0 + v15) + 16) != 0;
    }
  }

  return v11;
}

id FBKSDonation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSDonation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B00E6B5C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B00E6BD0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B00E6C2C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1B00E6C2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B00E6CF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B00D20D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B00E6CF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B00E6E04(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B014D06C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B00E6E04(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B00E6E50(a1, a2);
  sub_1B00E6F80(&unk_1F25D57E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B00E6E50(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B012E478(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B014D06C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B014CD2C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B012E478(v10, 0);
        result = sub_1B014D00C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B00E6F80(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B00E706C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B00E706C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DD0, &unk_1B0158CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1B00E7160(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void _s15FeedbackService12FBKSDonationC9presented12evaluationID10completiony10Foundation4UUIDV_ys5Error_pSgctFZ_0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
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
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0xD000000000000023, 0x80000001B015C4A0, v18);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v19 = &type metadata for FeedbackFeatureFlags;
  v20 = sub_1B00DC988();
  LOBYTE(v18[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v10)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_1B00FA9AC(sub_1B00E8B9C, v11);

    if (v12)
    {
      v13 = sub_1B014CAEC();
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v20 = sub_1B00E8C48;
      v21 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B00DFB7C;
      v19 = &block_descriptor_110;
      v15 = _Block_copy(v18);

      [v12 presentedDonationWithEvaluationID:v13 completion:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a2();
  }
}

void _s15FeedbackService12FBKSDonationC5fetch12evaluationID10completiony10Foundation4UUIDV_ys6ResultOyACSgs5Error_pGctFZ_0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
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
    v18[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0xD00000000000001FLL, 0x80000001B015C230, v18);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v19 = &type metadata for FeedbackFeatureFlags;
  v20 = sub_1B00DC988();
  LOBYTE(v18[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if (v10)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = sub_1B00FA9AC(sub_1B00E8C44, v11);

    if (v12)
    {
      v13 = sub_1B014CAEC();
      v14 = swift_allocObject();
      *(v14 + 16) = a2;
      *(v14 + 24) = a3;
      v20 = sub_1B00E8A8C;
      v21 = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B0145D1C;
      v19 = &block_descriptor_98;
      v15 = _Block_copy(v18);

      [v12 fetchDonationWithDonationID:v13 completion:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a2(v16, 1);
  }
}

uint64_t sub_1B00E77A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00E7808(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B00E7864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B00E78C8()
{
  result = qword_1EB6C3D70;
  if (!qword_1EB6C3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D70);
  }

  return result;
}

uint64_t type metadata accessor for FBKSDonation()
{
  result = qword_1EDAE7418;
  if (!qword_1EDAE7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00E79A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest10completionys6UInt32V_Sbys6ResultOySayACGs5Error_pGctFZ_0(uint64_t a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v8 = sub_1B014CB5C();
  __swift_project_value_buffer(v8, qword_1EDAE7828);
  v9 = sub_1B014CB3C();
  v10 = sub_1B014CF6C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B00E6C2C(0xD00000000000002BLL, 0x80000001B015C470, v20);
    _os_log_impl(&dword_1B00C4000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B271F750](v12, -1, -1);
    MEMORY[0x1B271F750](v11, -1, -1);
  }

  v21 = &type metadata for FeedbackFeatureFlags;
  v22 = sub_1B00DC988();
  LOBYTE(v20[0]) = 0;
  v13 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v20);
  if (v13)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    v15 = sub_1B00FA9AC(sub_1B00E8948, v14);

    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      v22 = sub_1B00E8964;
      v23 = v16;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = sub_1B0145D1C;
      v21 = &block_descriptor_80;
      v17 = _Block_copy(v20);

      [v15 fetchDonationsWithCount:a1 fromLatest:a2 & 1 completion:v17];
      swift_unknownObjectRelease();
      _Block_release(v17);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v18 = swift_allocError();
    *v19 = 0;
    a3(v18, 1);
  }
}

void _s15FeedbackService12FBKSDonationC13fetchMultiple5count10fromLatest22excludingEvaluationIDs10completionys6UInt32V_SbSaySSGSgys6ResultOySayACGs5Error_pGctFZ_0(uint64_t a1, char a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v10 = sub_1B014CB5C();
  __swift_project_value_buffer(v10, qword_1EDAE7828);
  v11 = sub_1B014CB3C();
  v12 = sub_1B014CF6C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B00E6C2C(0xD000000000000042, 0x80000001B015C420, v22);
    _os_log_impl(&dword_1B00C4000, v11, v12, "%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B271F750](v14, -1, -1);
    MEMORY[0x1B271F750](v13, -1, -1);
  }

  v23 = &type metadata for FeedbackFeatureFlags;
  v24 = sub_1B00DC988();
  LOBYTE(v22[0]) = 0;
  v15 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v15)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v17 = sub_1B00FA9AC(sub_1B00E8C44, v16);

    if (v17)
    {
      if (a3)
      {
        a3 = sub_1B014CE0C();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      v24 = sub_1B00E8C40;
      v25 = v18;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1B0145D1C;
      v23 = &block_descriptor_68;
      v19 = _Block_copy(v22);

      [v17 fetchDonationsWithCount:a1 fromLatest:a2 & 1 excludingEvaluationIDs:a3 completion:v19];
      swift_unknownObjectRelease();
      _Block_release(v19);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v20 = swift_allocError();
    *v21 = 0;
    a4(v20, 1);
  }
}

void _s15FeedbackService12FBKSDonationC16fetchMultipleIDs5count10fromLatest019excludingEvaluationF010completionys6UInt32V_SbSaySSGSgys6ResultOySay10Foundation4UUIDVGs5Error_pGctFZ_0(uint64_t a1, char a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v10 = sub_1B014CB5C();
  __swift_project_value_buffer(v10, qword_1EDAE7828);
  v11 = sub_1B014CB3C();
  v12 = sub_1B014CF6C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B00E6C2C(0xD000000000000045, 0x80000001B015C3D0, v22);
    _os_log_impl(&dword_1B00C4000, v11, v12, "%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B271F750](v14, -1, -1);
    MEMORY[0x1B271F750](v13, -1, -1);
  }

  v23 = &type metadata for FeedbackFeatureFlags;
  v24 = sub_1B00DC988();
  LOBYTE(v22[0]) = 0;
  v15 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v15)
  {
    if (qword_1EDAE7100 != -1)
    {
      swift_once();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v17 = sub_1B00FA9AC(sub_1B00E8C44, v16);

    if (v17)
    {
      if (a3)
      {
        a3 = sub_1B014CE0C();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      v24 = sub_1B00E8844;
      v25 = v18;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1B0145D1C;
      v23 = &block_descriptor_59;
      v19 = _Block_copy(v22);

      [v17 fetchDonationIDsWithCount:a1 fromLatest:a2 & 1 excludingEvaluationIDs:a3 completion:v19];
      swift_unknownObjectRelease();
      _Block_release(v19);
    }
  }

  else
  {
    sub_1B00DC9DC();
    v20 = swift_allocError();
    *v21 = 0;
    a4(v20, 1);
  }
}

unint64_t sub_1B00E838C()
{
  result = qword_1EB6C3D88;
  if (!qword_1EB6C3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3D88);
  }

  return result;
}

uint64_t dispatch thunk of FBKSDonation.donate()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2F0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B00E8C18;

  return v8(a1);
}

uint64_t dispatch thunk of FBKSDonation.invalidate()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x300);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B00DCFAC;

  return v6();
}

unint64_t sub_1B00E884C()
{
  result = qword_1EB6C3DA0;
  if (!qword_1EB6C3DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C3D80, &qword_1B014FE60);
    sub_1B00E8900(&qword_1EDAE6EA8, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DA0);
  }

  return result;
}

uint64_t sub_1B00E8900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B00E8984(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D28, &unk_1B014FDF0) - 8) + 80);

  return sub_1B00E3FD4(a1);
}

uint64_t sub_1B00E8A00(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DC0, &qword_1B014FFB0) - 8) + 80);

  return sub_1B00DF91C(a1, a2 & 1);
}

uint64_t sub_1B00E8A94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1B00E8900(&qword_1EB6C3DB0, type metadata accessor for FBKSDonation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B00E8BA4()
{
  result = qword_1EB6C3DD8;
  if (!qword_1EB6C3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DD8);
  }

  return result;
}

uint64_t FormItem.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FormItem.platform.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FormItem.signature.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t FormItem.formIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t FormItem.isSurvey.getter()
{
  if (*(v0 + 80) == 0x796576727553 && *(v0 + 88) == 0xE600000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1B014D25C();
  }
}

uint64_t sub_1B00E8D6C()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1B014CCAC();
}

uint64_t sub_1B00E8E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B00E9FF8();
  *a2 = result;
  return result;
}

void sub_1B00E8EA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 7627124;
  v7 = 0xE800000000000000;
  if (v2 != 5)
  {
    v6 = 0x656C6F526D726F66;
    v5 = 0xE800000000000000;
  }

  v8 = 0x6D726F6674616C70;
  if (v2 != 3)
  {
    v8 = 0x727574616E676973;
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000074616570;
  v10 = 0x6552646C756F6873;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B00E8F6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 7627124;
  if (v1 != 5)
  {
    v3 = 0x656C6F526D726F66;
  }

  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0x727574616E676973;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6552646C756F6873;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B00E9034@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B00E9FF8();
  *a1 = result;
  return result;
}

uint64_t sub_1B00E9068(uint64_t a1)
{
  v2 = sub_1B00E973C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00E90A4(uint64_t a1)
{
  v2 = sub_1B00E973C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00E90E0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = sub_1B014C7EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1B014D24C();
  *&v27[0] = 0;
  v12 = [v10 dataWithJSONObject:v11 options:1 error:v27];
  swift_unknownObjectRelease();
  v13 = *&v27[0];
  if (v12)
  {
    v14 = sub_1B014CA8C();
    v16 = v15;

    v17 = sub_1B014C82C();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1B014C81C();
    (*(v6 + 104))(v9, *MEMORY[0x1E6967EF8], v5);
    sub_1B014C7FC();
    sub_1B00EA044();
    sub_1B014C80C();

    result = sub_1B00D2024(v14, v16);
    if (!v2)
    {
      v21 = v27[3];
      a2[2] = v27[2];
      a2[3] = v21;
      v22 = v27[5];
      a2[4] = v27[4];
      a2[5] = v22;
      v23 = v27[1];
      *a2 = v27[0];
      a2[1] = v23;
    }
  }

  else
  {
    v24 = v13;
    sub_1B014C9CC();

    result = swift_willThrow();
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FormItem.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[8];
  v8 = v0[9];
  sub_1B014D01C();
  MEMORY[0x1B271E7F0](v3, v4);
  MEMORY[0x1B271E7F0](0x209380E220, 0xA500000000000000);
  v9 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v9);

  MEMORY[0x1B271E7F0](0x746E656469207C20, 0xEF203A7265696669);
  MEMORY[0x1B271E7F0](v7, v8);
  MEMORY[0x1B271E7F0](0x726F6674616C7020, 0xEB00000000203A6DLL);
  MEMORY[0x1B271E7F0](v5, v6);
  MEMORY[0x1B271E7F0](0x7374616570657220, 0xEA0000000000203ALL);
  if (v2)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B271E7F0](v10, v11);

  return 0;
}

uint64_t FormItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DE0, &qword_1B014FFB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v18 = *(v1 + 8);
  v9 = v1[2];
  v17[8] = v1[3];
  v17[9] = v9;
  v10 = v1[4];
  v17[6] = v1[5];
  v17[7] = v10;
  v11 = v1[7];
  v17[3] = v1[6];
  v17[4] = v11;
  v12 = v1[9];
  v17[1] = v1[8];
  v17[2] = v12;
  v13 = v1[11];
  v17[5] = v1[10];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00E973C();
  sub_1B014D35C();
  v26 = 0;
  v15 = v19;
  sub_1B014D20C();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = v13;
  v25 = 1;
  sub_1B014D1EC();
  v24 = 2;
  sub_1B014D1DC();
  v23 = 3;
  sub_1B014D1DC();
  v22 = 4;
  sub_1B014D1DC();
  v21 = 5;
  sub_1B014D1DC();
  v20 = 6;
  sub_1B014D1DC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B00E973C()
{
  result = qword_1EB6C3DE8;
  if (!qword_1EB6C3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DE8);
  }

  return result;
}

uint64_t FormItem.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DF0, &qword_1B014FFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00E973C();
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v44) = 0;
  v11 = sub_1B014D16C();
  LOBYTE(v44) = 1;
  v12 = sub_1B014D14C();
  LOBYTE(v44) = 2;
  v35 = sub_1B014D13C();
  v37 = v13;
  LOBYTE(v44) = 3;
  v14 = sub_1B014D13C();
  v36 = v15;
  v32 = v14;
  LOBYTE(v44) = 4;
  v34 = 0;
  v31 = sub_1B014D13C();
  v33 = v16;
  LOBYTE(v44) = 5;
  v30 = sub_1B014D13C();
  v34 = v17;
  v57 = 6;
  v29 = sub_1B014D13C();
  v19 = v18;
  v20 = v12 & 1;
  v56 = v20;
  (*(v6 + 8))(v9, v5);
  *&v38 = v11;
  BYTE8(v38) = v20;
  *&v39 = v35;
  v21 = v37;
  *(&v39 + 1) = v37;
  *&v40 = v32;
  v22 = v36;
  *(&v40 + 1) = v36;
  *&v41 = v31;
  v23 = v33;
  *(&v41 + 1) = v33;
  *&v42 = v30;
  v24 = v29;
  *(&v42 + 1) = v34;
  *&v43 = v29;
  *(&v43 + 1) = v19;
  v25 = v41;
  a2[2] = v40;
  a2[3] = v25;
  v26 = v43;
  a2[4] = v42;
  a2[5] = v26;
  v27 = v39;
  *a2 = v38;
  a2[1] = v27;
  sub_1B00E9C38(&v38, &v44);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v44 = v11;
  v45 = v56;
  v46 = v35;
  v47 = v21;
  v48 = v32;
  v49 = v22;
  v50 = v31;
  v51 = v23;
  v52 = v30;
  v53 = v34;
  v54 = v24;
  v55 = v19;
  return sub_1B00E9C70(&v44);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B00E9CF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B00E9D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B00E9EF4()
{
  result = qword_1EB6C3DF8;
  if (!qword_1EB6C3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3DF8);
  }

  return result;
}

unint64_t sub_1B00E9F4C()
{
  result = qword_1EB6C3E00;
  if (!qword_1EB6C3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E00);
  }

  return result;
}

unint64_t sub_1B00E9FA4()
{
  result = qword_1EB6C3E08;
  if (!qword_1EB6C3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E08);
  }

  return result;
}

uint64_t sub_1B00E9FF8()
{
  v0 = sub_1B014D0DC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B00EA044()
{
  result = qword_1EB6C3E10;
  if (!qword_1EB6C3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E10);
  }

  return result;
}

uint64_t sub_1B00EA0D4(char a1, uint64_t *a2)
{
  v3 = *a2;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  result = swift_beginAccess();
  *(v2 + v3) = v4;
  return result;
}

uint64_t sub_1B00EA140(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v5 = *a4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  result = swift_beginAccess();
  *(a1 + v5) = v6;
  return result;
}

uint64_t FBKSLaunchConfiguration.asJSON.getter()
{
  v0 = sub_1B014C88C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C87C();
  type metadata accessor for FBKSLaunchConfiguration();
  sub_1B00EA658(&qword_1EB6C3E18);
  v3 = sub_1B014C86C();

  return v3;
}

uint64_t _s15FeedbackService23FBKSLaunchConfigurationC8fromJSON4dataACSg10Foundation4DataV_tFZ_0()
{
  v0 = sub_1B014C82C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C81C();
  type metadata accessor for FBKSLaunchConfiguration();
  sub_1B00EA658(&qword_1EB6C3E20);
  sub_1B014C80C();

  return v4;
}

uint64_t sub_1B00EA658(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSLaunchConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B00EA6D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B014CB4C();
}

void static FBKSAdmin.reportFailureToLaunchForm(formIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1B00EA8E8(a3);
  v7 = sub_1B00CF9D0(sub_1B00EBA30, v6);

  if (v7)
  {
    v8 = sub_1B014CC0C();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_1B00EAB08;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1B00DFB7C;
    v11[3] = &block_descriptor_2;
    v10 = _Block_copy(v11);
    sub_1B00EA8E8(a3);

    [v7 reportFailureToLaunchFormWithFormIdentifier:v8 completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t sub_1B00EA8E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1B00EA8F8(void *a1, void (*a2)(void *))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = qword_1EB6C3A60;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EB6C5248);
  v7 = v5;
  v8 = sub_1B014CB3C();
  v9 = sub_1B014CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B00E6C2C(0xD000000000000035, 0x80000001B015C5B0, &v18);
    *(v10 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1B014CC1C();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v11, -1, -1);
    MEMORY[0x1B271F750](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static FBKSAdmin.didFinishSubmission(formIdentifier:feedbackId:isSurvey:error:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, id a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;
  sub_1B00EA8E8(a6);
  v13 = sub_1B00CF9D0(sub_1B00EAD0C, v12);

  if (v13)
  {
    v14 = sub_1B014CC0C();
    if (a5)
    {
      v15 = a5;
      a5 = _s15FeedbackService9FBKSErrorV14xpcSafeNSError5errorSo0F0Cs5Error_p_tFZ_0();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = a6;
    *(v16 + 24) = a7;
    v18[4] = sub_1B00EAF38;
    v18[5] = v16;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1B00DFB7C;
    v18[3] = &block_descriptor_12_0;
    v17 = _Block_copy(v18);
    sub_1B00EA8E8(a6);

    [v13 didFinishSubmissionWithFormIdentifier:v14 feedbackId:a3 isSurvey:a4 & 1 error:a5 completion:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }
}

void sub_1B00EAD28(void *a1, void (*a2)(void *))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = qword_1EB6C3A60;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EB6C5248);
  v7 = v5;
  v8 = sub_1B014CB3C();
  v9 = sub_1B014CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B00E6C2C(0xD000000000000049, 0x80000001B015C560, &v18);
    *(v10 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1B014CC1C();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v11, -1, -1);
    MEMORY[0x1B271F750](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

void static FBKSAdmin.clearCachedUserSession(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1B00EA8E8(a1);
  v5 = sub_1B00CF9D0(sub_1B00EBA30, v4);

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v8[4] = sub_1B00EB9F0;
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1B00DFB7C;
    v8[3] = &block_descriptor_21;
    v7 = _Block_copy(v8);
    sub_1B00EA8E8(a1);

    [v5 clearCachedUserSessionWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

void sub_1B00EB0C0(void *a1, void (*a2)(void *))
{
  if (qword_1EB6C3A60 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C5248);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a2)
  {
    a2(a1);
  }
}

void sub_1B00EB258(void *a1, void (*a2)(void *))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = qword_1EB6C3A60;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EB6C5248);
  v7 = v5;
  v8 = sub_1B014CB3C();
  v9 = sub_1B014CF4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B00E6C2C(0xD000000000000023, 0x80000001B015C530, &v18);
    *(v10 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1B014CC1C();
    v16 = v15;

    v17 = sub_1B00E6C2C(v14, v16, &v18);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v11, -1, -1);
    MEMORY[0x1B271F750](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

uint64_t static FBKSAdmin.resetDaemon()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  if (qword_1EB6C3A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1B00CFA00(sub_1B00EB9F8, v0);

  if (v2)
  {
    v7[4] = sub_1B00EBA00;
    v7[5] = v0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B00DFB7C;
    v7[3] = &block_descriptor_27;
    v3 = _Block_copy(v7);

    [v2 resetDaemonWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v3);
  }

  swift_beginAccess();
  v4 = *v1;
  if (*v1)
  {
    v5 = *v1;
    swift_willThrow();
    v4;
  }
}

void sub_1B00EB600(void *a1, uint64_t a2)
{
  if (qword_1EB6C3A60 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EB6C5248);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  swift_beginAccess();
  v14 = *(a2 + 16);
  *(a2 + 16) = a1;
  v15 = v5;
}

void sub_1B00EB7A4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = qword_1EB6C3A60;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1B014CB5C();
    __swift_project_value_buffer(v6, qword_1EB6C5248);
    v7 = v5;
    v8 = sub_1B014CB3C();
    v9 = sub_1B014CF4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_1B00E6C2C(0x6561447465736572, 0xED000029286E6F6DLL, v19);
      *(v10 + 12) = 2080;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_1B014CC1C();
      v16 = v15;

      v17 = sub_1B00E6C2C(v14, v16, v19);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1B00C4000, v8, v9, "[%{public}s] failed with: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v11, -1, -1);
      MEMORY[0x1B271F750](v10, -1, -1);
    }

    swift_beginAccess();
    v18 = *(a2 + 16);
    *(a2 + 16) = a1;
  }
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t JSONCodable.encode()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B014C88C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B014C87C();
  v6 = *(a2 + 16);
  v7 = sub_1B014C86C();

  return v7;
}

uint64_t static JSONCodable.decode(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B014C82C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1B014C81C();
  v8 = *(a4 + 8);
  sub_1B014C80C();
}

uint64_t sub_1B00EBBE0()
{
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v0[16];
  v9 = v0[17];
  v1 = sub_1B014C88C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00EC108();
  v4 = sub_1B014C86C();

  return v4;
}

uint64_t sub_1B00EBC8C()
{
  v0 = sub_1B014C82C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C81C();
  sub_1B00EC0B4();
  sub_1B014C80C();
}

uint64_t sub_1B00EBD2C()
{
  v0 = sub_1B014C88C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00EC070(&qword_1EB6C3E40);
  v3 = sub_1B014C86C();

  return v3;
}

uint64_t sub_1B00EBDD0()
{
  v0 = sub_1B014C82C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C81C();
  sub_1B00EC070(&qword_1EB6C3E38);
  sub_1B014C80C();
}

uint64_t sub_1B00EBE8C()
{
  v6 = *v0;
  v7 = *(v0 + 8);
  v1 = sub_1B014C88C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00EC01C();
  v4 = sub_1B014C86C();

  return v4;
}

uint64_t sub_1B00EBF28()
{
  v0 = sub_1B014C82C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C81C();
  sub_1B00EBFC8();
  sub_1B014C80C();
}

unint64_t sub_1B00EBFC8()
{
  result = qword_1EB6C3E28;
  if (!qword_1EB6C3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E28);
  }

  return result;
}

unint64_t sub_1B00EC01C()
{
  result = qword_1EB6C3E30;
  if (!qword_1EB6C3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E30);
  }

  return result;
}

uint64_t sub_1B00EC070(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B00EC0B4()
{
  result = qword_1EB6C3E48;
  if (!qword_1EB6C3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E48);
  }

  return result;
}

unint64_t sub_1B00EC108()
{
  result = qword_1EB6C3E50;
  if (!qword_1EB6C3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E50);
  }

  return result;
}

uint64_t sub_1B00EC15C()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3E58);
  __swift_project_value_buffer(v0, qword_1EB6C3E58);
  return sub_1B014CB4C();
}

uint64_t static FBKSExtendedAttributes.write(key:value:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B014CC5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B014CC4C();
  v13 = sub_1B014CC2C();
  v15 = v14;
  result = (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v17[-6] = a5;
    v17[-5] = a1;
    v17[-4] = a2;
    v17[-3] = v13;
    v17[-2] = v15;
    sub_1B00ED104(sub_1B00EC618, &v17[-8], v13, v15);
    return sub_1B00DE9AC(v13, v15);
  }

  return result;
}

void sub_1B00EC358(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a1)
  {
    sub_1B014CA2C();
    v11 = v10;
    v12 = a7 >> 62;
    if ((a7 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        goto LABEL_13;
      }

      v17 = *(a6 + 16);
      v16 = *(a6 + 24);
      v13 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
LABEL_13:
        v18 = sub_1B014CC7C();

        v19 = sub_1B014CC7C();
        v20 = setxattr((v18 + 32), (v19 + 32), a1, v13, 0, 0);

        if (!v20)
        {
          return;
        }

        v11 = *MEMORY[0x1E696A798];
        v21 = MEMORY[0x1B271E670]();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B014F1E0;
        v23 = *MEMORY[0x1E696A578];
        *(inited + 32) = sub_1B014CC1C();
        *(inited + 40) = v24;
        v25 = MEMORY[0x1B271E670]();
        if (strerror(v25))
        {
          v26 = sub_1B014CD0C();
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v26;
          *(inited + 56) = v27;
          sub_1B011BEB4(inited);
          swift_setDeallocating();
          sub_1B00EDC14(inited + 32);
          v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v29 = sub_1B014CB9C();

          [v28 initWithDomain:v11 code:v21 userInfo:v29];

          goto LABEL_16;
        }

LABEL_19:

        __break(1u);
        return;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(a7);
      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(a6), a6))
    {
      __break(1u);
      goto LABEL_19;
    }

    v13 = HIDWORD(a6) - a6;
    goto LABEL_13;
  }

  sub_1B014D01C();

  sub_1B014CA4C();
  sub_1B00EDBBC();
  v14 = sub_1B014D22C();
  MEMORY[0x1B271E7F0](v14);

  sub_1B00EDAD0();
  swift_allocError();
  *v15 = 0xD00000000000001DLL;
  v15[1] = 0x80000001B015C6B0;
LABEL_16:
  swift_willThrow();
}

uint64_t sub_1B00EC654@<X0>(void *a1@<X0>, size_t a2@<X5>, ssize_t *a3@<X8>)
{
  sub_1B014CA2C();
  v6 = sub_1B014CC7C();

  v7 = sub_1B014CC7C();
  v8 = getxattr((v6 + 32), (v7 + 32), a1, a2, 0, 0);

  *a3 = v8;
  return result;
}

uint64_t static FBKSExtendedAttributes.tryReading(keys:url:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = (a1 + 40);
  v7 = *(a1 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {
      return 0;
    }

    v8 = *(v6 - 1);
    v9 = *v6;

    v10 = sub_1B00ED6FC(v8, v9, a2);
    if (v4)
    {
      break;
    }

    v3 = v10;
    v12 = v11;
    v6 += 2;

    if (v12)
    {
      return v3;
    }
  }

  return v3;
}

uint64_t *static FBKSExtendedAttributes.listKeys(domain:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v6 = sub_1B014CC5C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B014CA2C();
  v8 = sub_1B014CC7C();

  v9 = listxattr((v8 + 32), 0, 0, 1);

  if (v9 >= 1)
  {
    v10 = 0xD000000000000026;
    v59 = sub_1B00ED65C(v9);
    v60 = v11;
    MEMORY[0x1EEE9AC00](v59);
    *(&v52 - 2) = a3;
    *(&v52 - 1) = v9;
    v12 = &v59;
    if (sub_1B00ED23C(sub_1B00EDAB4) == -1)
    {
      v36 = " string from keysBuffer";
    }

    else
    {
      v13 = v59;
      v12 = v60;
      sub_1B014CC4C();
      v14 = sub_1B014CC3C();
      if (v15)
      {
        v55 = v13;
        v56 = v12;
        v58[0] = 0;
        v58[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v14);
        *(&v52 - 2) = v58;
        v18 = sub_1B00ECD44(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B00EDB24, (&v52 - 4), v16, v17, &v52);
        v19 = *(v18 + 16);
        v57 = v3;
        if (v19)
        {
          v58[0] = MEMORY[0x1E69E7CC0];
          sub_1B00D16F8(0, v19, 0);
          v20 = v58[0];
          v54 = v18;
          v21 = (v18 + 56);
          do
          {
            v23 = *(v21 - 3);
            v22 = *(v21 - 2);
            v24 = *(v21 - 1);
            v25 = *v21;

            v26 = MEMORY[0x1B271E780](v23, v22, v24, v25);
            v28 = v27;

            v58[0] = v20;
            v30 = *(v20 + 16);
            v29 = *(v20 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_1B00D16F8((v29 > 1), v30 + 1, 1);
              v20 = v58[0];
            }

            *(v20 + 16) = v30 + 1;
            v31 = v20 + 16 * v30;
            *(v31 + 32) = v26;
            *(v31 + 40) = v28;
            v21 += 4;
            --v19;
          }

          while (v19);

          if (a2)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v20 = MEMORY[0x1E69E7CC0];
          if (a2)
          {
LABEL_16:
            v37 = *(v20 + 16);
            if (v37)
            {
              v38 = 0;
              v39 = v20 + 40;
              v53 = v37 - 1;
              v12 = MEMORY[0x1E69E7CC0];
              v54 = v20 + 40;
              do
              {
                v40 = (v39 + 16 * v38);
                v41 = v38;
                while (1)
                {
                  if (v41 >= *(v20 + 16))
                  {
                    __break(1u);
                    goto LABEL_37;
                  }

                  v43 = *(v40 - 1);
                  v42 = *v40;
                  v38 = v41 + 1;

                  if (sub_1B014CD7C())
                  {
                    break;
                  }

                  v40 += 2;
                  ++v41;
                  if (v37 == v38)
                  {
                    goto LABEL_34;
                  }
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v58[0] = v12;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1B00D16F8(0, v12[2] + 1, 1);
                  v12 = v58[0];
                }

                v46 = v12[2];
                v45 = v12[3];
                v47 = v46 + 1;
                if (v46 >= v45 >> 1)
                {
                  v52 = v46 + 1;
                  sub_1B00D16F8((v45 > 1), v46 + 1, 1);
                  v47 = v52;
                  v12 = v58[0];
                }

                v12[2] = v47;
                v48 = &v12[2 * v46];
                v48[4] = v43;
                v48[5] = v42;
                v39 = v54;
              }

              while (v53 != v41);
            }

            else
            {
              v12 = MEMORY[0x1E69E7CC0];
            }

LABEL_34:

            sub_1B00D2024(v55, v56);
            return v12;
          }
        }

        sub_1B00D2024(v55, v56);
        return v20;
      }

      v36 = "entifier:completion:)";
      v10 = 0xD000000000000027;
    }

    v49 = v36 | 0x8000000000000000;
    sub_1B00EDAD0();
    swift_allocError();
    *v50 = v10;
    v50[1] = v49;
    swift_willThrow();
    sub_1B00D2024(v59, v60);
    return v12;
  }

  if (qword_1EB6C3A68 != -1)
  {
LABEL_37:
    swift_once();
  }

  v32 = sub_1B014CB5C();
  __swift_project_value_buffer(v32, qword_1EB6C3E58);
  v33 = sub_1B014CB3C();
  v34 = sub_1B014CF6C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1B00C4000, v33, v34, "No extended attributes returned", v35, 2u);
    MEMORY[0x1B271F750](v35, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B00ECCC4@<X0>(char *a1@<X0>, size_t a2@<X3>, ssize_t *a3@<X8>)
{
  sub_1B014CA2C();
  v6 = sub_1B014CC7C();

  v7 = listxattr((v6 + 32), a1, a2, 1);

  *a3 = v7;
  return result;
}

unint64_t sub_1B00ECD44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B014CDAC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B00D13E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B00D13E8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B014CD8C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B014CCCC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B014CCCC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B014CDAC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B00D13E8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B014CDAC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B00D13E8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B00D13E8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B014CCCC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B00ED104(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_1B0143A48(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B00ED23C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1B00D2024(v6, v5);
      *&v21 = v6;
      WORD4(v21) = v5;
      BYTE10(v21) = BYTE2(v5);
      BYTE11(v21) = BYTE3(v5);
      BYTE12(v21) = BYTE4(v5);
      BYTE13(v21) = BYTE5(v5);
      BYTE14(v21) = BYTE6(v5);
      result = a1(&v20, &v21, &v21 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *v3 = v21;
      v3[1] = v9;
      goto LABEL_19;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B00D2024(v6, v5);
    *v3 = xmmword_1B0150250;
    sub_1B00D2024(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1B014C95C() && __OFSUB__(v6, sub_1B014C98C()))
      {
LABEL_22:
        __break(1u);
      }

      v13 = sub_1B014C99C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1B014C94C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1B00ED5AC(v6, v6 >> 32, a1);

      *v3 = v6;
      v3[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        result = v17;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_1B00D2024(v6, v5);
    *&v21 = v6;
    *(&v21 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B0150250;
    sub_1B00D2024(0, 0xC000000000000000);
    sub_1B014CA5C();
    v10 = *(&v21 + 1);
    result = sub_1B00ED5AC(*(v21 + 16), *(v21 + 24), a1);
    *v3 = v21;
    v3[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    result = a1(&v20, &v21, &v21);
    if (!v2)
    {
      result = v20;
    }
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1B00ED5AC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B014C95C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B014C98C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B014C97C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1B00ED65C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1B014C99C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1B014C96C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B014CA6C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B00ED6FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1B014CC5C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B014CA2C();
  v8 = sub_1B014CC7C();

  v9 = sub_1B014CC7C();
  v10 = getxattr((v8 + 32), (v9 + 32), 0, 0, 0, 0);

  if (v10 == -1)
  {
    if (MEMORY[0x1B271E670](v11) == 93)
    {
      if (qword_1EB6C3A68 != -1)
      {
        swift_once();
      }

      v16 = sub_1B014CB5C();
      __swift_project_value_buffer(v16, qword_1EB6C3E58);

      v17 = sub_1B014CB3C();
      v18 = sub_1B014CF6C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1B00E6C2C(a1, a2, &v27);
        _os_log_impl(&dword_1B00C4000, v17, v18, "No extended attribute not set with key %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B271F750](v20, -1, -1);
        MEMORY[0x1B271F750](v19, -1, -1);
      }

      return 0;
    }

    else
    {
      sub_1B014D01C();

      v26[3] = MEMORY[0x1B271E670](v22);
      v23 = sub_1B014D22C();
      MEMORY[0x1B271E7F0](v23);

      MEMORY[0x1B271E7F0](93, 0xE100000000000000);
      v15 = 0xD000000000000028;
      sub_1B00EDAD0();
      swift_allocError();
      *v24 = 0xD000000000000028;
      v24[1] = 0x80000001B015C680;
      swift_willThrow();
    }
  }

  else
  {
    v27 = sub_1B00ED65C(v10);
    v28 = v12;
    MEMORY[0x1EEE9AC00](v27);
    *&v26[-8] = a3;
    *&v26[-6] = a1;
    *&v26[-4] = a2;
    *&v26[-2] = v10;
    if (sub_1B00ED23C(sub_1B00EDB9C) == -1)
    {
      v15 = 0x80000001B015C650;
      sub_1B00EDAD0();
      swift_allocError();
      *v21 = 0xD000000000000021;
      v21[1] = 0x80000001B015C650;
      swift_willThrow();
      sub_1B00D2024(v27, v28);
    }

    else
    {
      v13 = v27;
      v14 = v28;
      sub_1B014CC4C();
      v15 = sub_1B014CC3C();
      sub_1B00D2024(v13, v14);
    }
  }

  return v15;
}

unint64_t sub_1B00EDAD0()
{
  result = qword_1EB6C3E70;
  if (!qword_1EB6C3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E70);
  }

  return result;
}

uint64_t sub_1B00EDB24(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B014D25C() & 1;
  }
}

uint64_t sub_1B00EDB9C@<X0>(void *a1@<X0>, ssize_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1B00EC654(a1, v2[5], a2);
}

unint64_t sub_1B00EDBBC()
{
  result = qword_1EB6C3E78;
  if (!qword_1EB6C3E78)
  {
    sub_1B014CA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3E78);
  }

  return result;
}

uint64_t sub_1B00EDC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E88, &unk_1B0150310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B00EDC7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B00EDCC0()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3E90);
  __swift_project_value_buffer(v0, qword_1EB6C3E90);
  return sub_1B014CB4C();
}

id sub_1B00EDD40()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonConnection()) init];
  qword_1EB6C3EA8 = result;
  return result;
}

id static DaemonConnection.shared.getter()
{
  if (qword_1EB6C3A78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB6C3EA8;

  return v1;
}

id sub_1B00EDE18()
{
  v1 = OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_1B00EDE88(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B00EDE88(uint64_t a1)
{
  if (qword_1EB6C3A70 != -1)
  {
    swift_once();
  }

  v2 = sub_1B014CB5C();
  __swift_project_value_buffer(v2, qword_1EB6C3E90);
  v3 = sub_1B014CB3C();
  v4 = sub_1B014CF6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = sub_1B00CF694();
    v9 = sub_1B00E6C2C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B00C4000, v3, v4, "%s: Setting up connection to daemon", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B271F750](v6, -1, -1);
    MEMORY[0x1B271F750](v5, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v11 = sub_1B014CC0C();
  v12 = [v10 initWithMachServiceName:v11 options:0];

  v13 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonInterface()) init];
  [v12 setRemoteObjectInterface_];

  [v12 setExportedObject_];
  v21 = sub_1B00EE1AC;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B00EDC7C;
  v20 = &block_descriptor_3;
  v14 = _Block_copy(&v17);
  [v12 setInterruptionHandler_];
  _Block_release(v14);
  v21 = sub_1B00EE308;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B00EDC7C;
  v20 = &block_descriptor_8;
  v15 = _Block_copy(&v17);
  [v12 setInvalidationHandler_];
  _Block_release(v15);
  [v12 resume];
  return v12;
}

id FeedbackDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B00EE1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C7B0;
  sub_1B014D2EC();

  if (qword_1EB6C3A70 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3E90);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon interrupted from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

void sub_1B00EE308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B014F1E0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000034;
  *(v0 + 40) = 0x80000001B015C770;
  sub_1B014D2EC();

  if (qword_1EB6C3A70 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EB6C3E90);
  oslog = sub_1B014CB3C();
  v2 = sub_1B014CF6C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B00C4000, oslog, v2, "Connection to daemon invalidated from client service", v3, 2u);
    MEMORY[0x1B271F750](v3, -1, -1);
  }
}

uint64_t sub_1B00EE464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B00EDE18();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  aBlock[4] = sub_1B00EEA38;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00FA1A0;
  aBlock[3] = &block_descriptor_13;
  v6 = _Block_copy(aBlock);

  v7 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  sub_1B014CFFC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3EC8, qword_1B01503A0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t FeedbackDaemonInterface.init()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FeedbackDaemonInterface();
  [objc_msgSendSuper2(&v6 init)];
  sub_1B00D0014(0, &qword_1EB6C3AE8, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3AF0, &qword_1B014F200);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B014F1F0;
  v2 = sub_1B00D0014(0, &qword_1EB6C3AF8, 0x1E696ABC0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B00, &qword_1B014F208);
  *(v1 + 32) = v2;
  v3 = sub_1B00D0014(0, &qword_1EB6C3B08, 0x1E695DF20);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B10, &qword_1B014F210);
  *(v1 + 64) = v3;
  v4 = sub_1B00D0014(0, &qword_1EB6C3B18, 0x1E696AEC0);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B20, qword_1B014F218);
  *(v1 + 96) = v4;
  MEMORY[0x1B271EA70](v1);
  result = sub_1B014CECC();
  __break(1u);
  __break(1u);
  return result;
}

id sub_1B00EE9D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00EEA50()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EB6C3ED0);
  __swift_project_value_buffer(v0, qword_1EB6C3ED0);
  return sub_1B014CB4C();
}

void sub_1B00EEAC0()
{
  type metadata accessor for SeedPortal();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 120) = [objc_allocWithZone(FBKSHTTPClient) init];
  v1 = [objc_allocWithZone(FBKSHTTPClient) init];
  v2 = [objc_allocWithZone(FBKSSeedPortalAPI) initClient_];

  *(v0 + 112) = v2;
  qword_1EB6C3EE8 = v0;
}

uint64_t static SeedPortal.shared.getter()
{
  if (qword_1EB6C3A88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B00EEBB8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B00EEBD8, v1, 0);
}

uint64_t sub_1B00EEBD8()
{
  v1 = v0[3];
  v2 = sub_1B00EEE10();
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = type metadata accessor for User();
  *v4 = v0;
  v4[1] = sub_1B00EECC4;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE6DE38](v6, v1, v2, 0xD000000000000016, 0x80000001B015C7F0, sub_1B00EF12C, v7, v5);
}

uint64_t sub_1B00EECC4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1B00EEDF8, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

unint64_t sub_1B00EEE10()
{
  result = qword_1EB6C3EF0;
  if (!qword_1EB6C3EF0)
  {
    type metadata accessor for SeedPortal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3EF0);
  }

  return result;
}

void sub_1B00EEE88(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v19 = *(a2 + 112);
  v16 = *(v5 + 16);
  v16(&v14 - v7, a1, v4);
  v9 = *(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v15 = *(v5 + 32);
  v15(v10 + ((v9 + 24) & ~v9), v8, v4);
  v24 = sub_1B00F0F20;
  v25 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1B00EF134;
  v23 = &block_descriptor_38;
  v18 = _Block_copy(&aBlock);

  v16(v8, v17, v4);
  v11 = swift_allocObject();
  v15(v11 + ((v9 + 16) & ~v9), v8, v4);
  v24 = sub_1B00F1044;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1B00FA1A0;
  v23 = &block_descriptor_44;
  v12 = _Block_copy(&aBlock);

  v13 = v18;
  [v19 seedPortalLoginAsUnauthenticatedUserWithSuccessHandler:v18 error:v12];
  _Block_release(v12);
  _Block_release(v13);
}

void sub_1B00EF134(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B00EF19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B00EF1C0, v3, 0);
}

uint64_t sub_1B00EF1C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1B00EEE10();
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = type metadata accessor for User();
  *v7 = v0;
  v7[1] = sub_1B00EF2D4;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE38](v9, v1, v4, 0xD00000000000001CLL, 0x80000001B015C810, sub_1B00EF6D8, v5, v8);
}

uint64_t sub_1B00EF2D4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B00F1048, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

void sub_1B00EF410(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v20 = *(a2 + 112);
  v19 = sub_1B014CC0C();
  v16 = *(v5 + 16);
  v16(v8, a1, v4);
  v9 = *(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v15 = *(v5 + 32);
  v15(v10 + ((v9 + 24) & ~v9), v8, v4);
  v25 = sub_1B00F0D14;
  v26 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B00EF134;
  v24 = &block_descriptor_26;
  v18 = _Block_copy(&aBlock);

  v16(v8, v17, v4);
  v11 = swift_allocObject();
  v15(v11 + ((v9 + 16) & ~v9), v8, v4);
  v25 = sub_1B00F0D1C;
  v26 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B00FA1A0;
  v24 = &block_descriptor_32;
  v12 = _Block_copy(&aBlock);

  v13 = v19;
  v14 = v18;
  [v20 seedPortalLoginWithDeviceToken:v19 success:v18 error:v12];
  _Block_release(v12);
  _Block_release(v14);
}

void sub_1B00EF6D8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1B00EF410(a1, v1[2]);
}

uint64_t sub_1B00EF6E4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v43 = a4;
  v44 = a3;
  v6 = type metadata accessor for User();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F20, &qword_1B0150480);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = sub_1B014CADC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 participantID];
  if (v24)
  {
    v25 = v24;
    v45 = 0;
    v46 = 1;
    sub_1B014CEEC();

    if ((v46 & 1) == 0)
    {
      v26 = v45;
      v27 = [*(a2 + 112) seedPortalSession];
      if (v27)
      {
        v41 = v26;
        v28 = v27;
        v29 = [v27 expiresDate];

        if (v29)
        {
          sub_1B014CABC();

          (*(v20 + 56))(v16, 0, 1, v19);
        }

        else
        {
          (*(v20 + 56))(v16, 1, 1, v19);
        }

        sub_1B00F0D20(v16, v18);
        v30 = (*(v20 + 48))(v18, 1, v19);
        v31 = v41;
        if (v30 != 1)
        {
          (*(v20 + 32))(v23, v18, v19);
          v40 = &v11[*(v6 + 24)];
          sub_1B014CACC();
          (*(v20 + 16))(&v11[*(v6 + 28)], v23, v19);
          *v11 = v31;
          v11[8] = v43;
          sub_1B00F0D90(v11, v42);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
          sub_1B014CE8C();
          sub_1B00F0DF4(v11);
          return (*(v20 + 8))(v23, v19);
        }
      }

      else
      {
        (*(v20 + 56))(v18, 1, 1, v19);
      }

      sub_1B00DE9C0(v18, &qword_1EB6C3F20, &qword_1B0150480);
    }
  }

  if (qword_1EB6C3A80 != -1)
  {
    swift_once();
  }

  v32 = sub_1B014CB5C();
  __swift_project_value_buffer(v32, qword_1EB6C3ED0);
  v33 = a1;
  v34 = sub_1B014CB3C();
  v35 = sub_1B014CF6C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&dword_1B00C4000, v34, v35, "No participant id in loginInfo %@", v36, 0xCu);
    sub_1B00DE9C0(v37, &qword_1EB6C3F28, &qword_1B0150488);
    MEMORY[0x1B271F750](v37, -1, -1);
    MEMORY[0x1B271F750](v36, -1, -1);
  }

  v45 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.FeedbackService" code:-1001 userInfo:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  return sub_1B014CE7C();
}

uint64_t sub_1B00EFBF0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  return sub_1B014CE7C();
}

uint64_t sub_1B00EFC60()
{
  v1 = *(v0 + 16);
  sub_1B00EEE10();
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1B00EFD48;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B00EFD48()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B00EFE58, v2, 0);
}

void sub_1B00EFE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F10, &qword_1B0150470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1B00F0CA8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00EDC7C;
  aBlock[3] = &block_descriptor_20_0;
  v12 = _Block_copy(aBlock);

  [v9 logOutServerSideWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_1B00F0028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B00F004C, v3, 0);
}

uint64_t sub_1B00F004C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1B00EEE10();
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3EF8, &qword_1B01503C8);
  *v7 = v0;
  v7[1] = sub_1B00F016C;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE38](v9, v1, v4, 0xD00000000000001ALL, 0x80000001B015C850, sub_1B00F04E0, v5, v8);
}

uint64_t sub_1B00F016C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B00F02A8, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B00F02A8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_1B00F030C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  v10 = sub_1B014CC0C();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_1B00F0C04;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B00F060C;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  [v9 loadFormItemWithFormTat:v10 withCompletion:v13];
  _Block_release(v13);
}

void sub_1B00F04E0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1B00F030C(a1, v1[2]);
}

uint64_t sub_1B00F04EC(uint64_t a1, id a2)
{
  if (a2)
  {
    *&v6[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
    return sub_1B014CE7C();
  }

  else
  {
    if (a1)
    {
      v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F08, &qword_1B0150468);
      v5[0] = a1;

      sub_1B00E90E0(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
    }

    else
    {
      memset(v6, 0, sizeof(v6));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460);
    }

    return sub_1B014CE8C();
  }
}

uint64_t sub_1B00F060C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1B014CBAC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t SeedPortal.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of SeedPortal.unauthenticatedLogin()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B00E8C18;

  return v8(a1);
}

uint64_t dispatch thunk of SeedPortal.loginWithDeviceToken(token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B00E8C18;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of SeedPortal.logOutServerSide()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B00DCFAC;

  return v6();
}

uint64_t dispatch thunk of SeedPortal.fetchFormItem(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B00DCFAC;

  return v12(a1, a2, a3);
}

uint64_t sub_1B00F0C04(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F00, &qword_1B0150460) - 8) + 80);

  return sub_1B00F04EC(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00F0CA8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F10, &qword_1B0150470) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B014CE8C();
}

uint64_t sub_1B00F0D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F20, &qword_1B0150480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00F0D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for User();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B00F0DF4(uint64_t a1)
{
  v2 = type metadata accessor for User();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F18, &qword_1B0150478);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id FBKSStrings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSStrings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSStrings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FBKSStrings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSStrings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FBKSFeedbackCount.asJSON.getter()
{
  swift_getObjectType();
  v0 = sub_1B014C88C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00F18E4(&qword_1EB6C3F30);
  v3 = sub_1B014C86C();

  return v3;
}

uint64_t _s15FeedbackService17FBKSFeedbackCountC8fromJSON4dataACSg10Foundation4DataV_tFZ_0()
{
  v0 = sub_1B014C82C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B014C81C();
  type metadata accessor for FBKSFeedbackCount();
  sub_1B00F18E4(&qword_1EB6C3F38);
  sub_1B014C80C();

  return v4;
}

uint64_t sub_1B00F18E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSFeedbackCount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *FBKSRemoteEvaluationRequest.init(action:interaction:showFeedbackForm:associateWithAppleAccount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4;
  return result;
}

unint64_t sub_1B00F1964()
{
  v1 = 0x6E6F69746361;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x7463617265746E69;
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

uint64_t sub_1B00F19EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B00F4138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B00F1A14(uint64_t a1)
{
  v2 = sub_1B00F1CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F1A50(uint64_t a1)
{
  v2 = sub_1B00F1CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteEvaluationRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F40, &qword_1B0150510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = *(v1 + 1);
  v10 = v1[16];
  v13[2] = v1[17];
  v13[3] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F1CC4();
  sub_1B014D35C();
  v20 = v9;
  v19 = 0;
  sub_1B00DCAC0();
  sub_1B014D21C();
  if (!v2)
  {
    v15 = v14;
    v18 = 1;
    type metadata accessor for FBKSInteraction(0);
    sub_1B00F3660(&qword_1EDAE6B20, type metadata accessor for FBKSInteraction);
    sub_1B014D21C();
    v17 = 2;
    sub_1B014D1EC();
    v16 = 3;
    sub_1B014D1BC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B00F1CC4()
{
  result = qword_1EB6C3F48;
  if (!qword_1EB6C3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3F48);
  }

  return result;
}

void FBKSRemoteEvaluationRequest.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F50, &qword_1B0150518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F1CC4();
  sub_1B014D34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v20 = 0;
    sub_1B00DCBAC();
    sub_1B014D17C();
    v11 = v21;
    type metadata accessor for FBKSInteraction(0);
    v19 = 1;
    sub_1B00F3660(&qword_1EB6C3BF0, type metadata accessor for FBKSInteraction);
    sub_1B014D17C();
    v12 = v16;
    v18 = 2;
    HIDWORD(v15) = sub_1B014D14C();
    v17 = 3;
    v13 = sub_1B014D11C();
    HIDWORD(v15) = BYTE4(v15) & 1;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = BYTE4(v15);
    *(a2 + 17) = v13;
    v14 = v12;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_1B00F2018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B00F209C(uint64_t a1)
{
  v2 = sub_1B00F2370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F20D8(uint64_t a1)
{
  v2 = sub_1B00F2370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F2120(uint64_t a1)
{
  v2 = sub_1B00F23C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F215C(uint64_t a1)
{
  v2 = sub_1B00F23C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteEvaluationError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F58, &qword_1B0150520);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F60, &qword_1B0150528);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2370();
  sub_1B014D35C();
  sub_1B00F23C4();
  sub_1B014D19C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1B00F2370()
{
  result = qword_1EB6C3F68;
  if (!qword_1EB6C3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3F68);
  }

  return result;
}

unint64_t sub_1B00F23C4()
{
  result = qword_1EB6C3F70;
  if (!qword_1EB6C3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3F70);
  }

  return result;
}

uint64_t FBKSRemoteEvaluationError.hashValue.getter()
{
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](0);
  return sub_1B014D33C();
}

uint64_t FBKSRemoteEvaluationError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F78, &qword_1B0150530);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F80, &unk_1B0150538);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2370();
  sub_1B014D34C();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1B014D18C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_1B00D4A3C() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1B014D05C();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
    *v19 = &type metadata for FBKSRemoteEvaluationError;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  sub_1B00F23C4();
  sub_1B014D0EC();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1B00F27E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F58, &qword_1B0150520);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F60, &qword_1B0150528);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2370();
  sub_1B014D35C();
  sub_1B00F23C4();
  sub_1B014D19C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B00F29C0()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B00F29F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B00F2AD0(uint64_t a1)
{
  v2 = sub_1B00F2F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F2B0C(uint64_t a1)
{
  v2 = sub_1B00F2F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F2B48(uint64_t a1)
{
  v2 = sub_1B00F2FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F2B84(uint64_t a1)
{
  v2 = sub_1B00F2FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F2BC0(uint64_t a1)
{
  v2 = sub_1B00F3070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F2BFC(uint64_t a1)
{
  v2 = sub_1B00F3070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteEvaluationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F88, &qword_1B0150548);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F90, &qword_1B0150550);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F98, &qword_1B0150558);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F2F74();
  sub_1B014D35C();
  if (v15 < 0)
  {
    v29 = 1;
    sub_1B00F2FC8();
    v18 = v22;
    sub_1B014D19C();
    sub_1B00F301C();
    v19 = v24;
    sub_1B014D21C();
    (*(v23 + 8))(v18, v19);
  }

  else
  {
    v28 = 0;
    sub_1B00F3070();
    sub_1B014D19C();
    v27 = v15;
    type metadata accessor for FBKSEvaluation(0);
    sub_1B00F3660(&qword_1EB6C3C38, type metadata accessor for FBKSEvaluation);
    v17 = v26;
    sub_1B014D21C();
    (*(v25 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1B00F2F74()
{
  result = qword_1EB6C3FA0;
  if (!qword_1EB6C3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FA0);
  }

  return result;
}

unint64_t sub_1B00F2FC8()
{
  result = qword_1EB6C3FA8;
  if (!qword_1EB6C3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FA8);
  }

  return result;
}

unint64_t sub_1B00F301C()
{
  result = qword_1EB6C3FB0;
  if (!qword_1EB6C3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FB0);
  }

  return result;
}

unint64_t sub_1B00F3070()
{
  result = qword_1EB6C3FB8;
  if (!qword_1EB6C3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FB8);
  }

  return result;
}

uint64_t FBKSRemoteEvaluationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3FC0, &qword_1B0150560);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3FC8, &qword_1B0150568);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3FD0, &qword_1B0150570);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B00F2F74();
  v19 = v40;
  sub_1B014D34C();
  if (!v19)
  {
    v35 = v8;
    v20 = v39;
    v40 = v13;
    v21 = sub_1B014D18C();
    v22 = (2 * *(v21 + 16)) | 1;
    v42 = v21;
    v43 = v21 + 32;
    v44 = 0;
    v45 = v22;
    v23 = sub_1B00DEA8C();
    v24 = v12;
    if (v23 == 2 || v44 != v45 >> 1)
    {
      v27 = sub_1B014D05C();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0) + 48);
      *v29 = &type metadata for FBKSRemoteEvaluationResponse;
      sub_1B014D0FC();
      sub_1B014D04C();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v40 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else if (v23)
    {
      LOBYTE(v46) = 1;
      sub_1B00F2FC8();
      sub_1B014D0EC();
      v25 = v40;
      sub_1B00F360C();
      v26 = v36;
      sub_1B014D17C();
      (*(v37 + 8))(v7, v26);
      (*(v25 + 8))(v16, v24);
      swift_unknownObjectRelease();
      *v20 = 0x8000000000000000;
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_1B00F3070();
      sub_1B014D0EC();
      v32 = v40;
      type metadata accessor for FBKSEvaluation(0);
      sub_1B00F3660(&qword_1EB6C3D50, type metadata accessor for FBKSEvaluation);
      v33 = v35;
      sub_1B014D17C();
      (*(v38 + 8))(v11, v33);
      (*(v32 + 8))(v16, v24);
      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v41);
}

unint64_t sub_1B00F360C()
{
  result = qword_1EB6C3FD8;
  if (!qword_1EB6C3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FD8);
  }

  return result;
}

uint64_t sub_1B00F3660(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B00F3774(uint64_t a1)
{
  *(a1 + 8) = sub_1B00EC0B4();
  result = sub_1B00EC108();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B00F37A8()
{
  result = qword_1EB6C3FE0;
  if (!qword_1EB6C3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FE0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B00F3810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1B00F3858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B00F38D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B00F392C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSRemoteEvaluationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSRemoteEvaluationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B00F3B64()
{
  result = qword_1EB6C3FE8;
  if (!qword_1EB6C3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FE8);
  }

  return result;
}

unint64_t sub_1B00F3BBC()
{
  result = qword_1EB6C3FF0;
  if (!qword_1EB6C3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FF0);
  }

  return result;
}

unint64_t sub_1B00F3C14()
{
  result = qword_1EB6C3FF8;
  if (!qword_1EB6C3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C3FF8);
  }

  return result;
}

unint64_t sub_1B00F3C6C()
{
  result = qword_1EB6C4000;
  if (!qword_1EB6C4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4000);
  }

  return result;
}

unint64_t sub_1B00F3CC4()
{
  result = qword_1EB6C4008;
  if (!qword_1EB6C4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4008);
  }

  return result;
}

unint64_t sub_1B00F3D1C()
{
  result = qword_1EB6C4010;
  if (!qword_1EB6C4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4010);
  }

  return result;
}

unint64_t sub_1B00F3D74()
{
  result = qword_1EB6C4018;
  if (!qword_1EB6C4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4018);
  }

  return result;
}

unint64_t sub_1B00F3DCC()
{
  result = qword_1EB6C4020;
  if (!qword_1EB6C4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4020);
  }

  return result;
}

unint64_t sub_1B00F3E24()
{
  result = qword_1EB6C4028;
  if (!qword_1EB6C4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4028);
  }

  return result;
}

unint64_t sub_1B00F3E7C()
{
  result = qword_1EB6C4030;
  if (!qword_1EB6C4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4030);
  }

  return result;
}

unint64_t sub_1B00F3ED4()
{
  result = qword_1EB6C4038;
  if (!qword_1EB6C4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4038);
  }

  return result;
}

unint64_t sub_1B00F3F2C()
{
  result = qword_1EB6C4040;
  if (!qword_1EB6C4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4040);
  }

  return result;
}

unint64_t sub_1B00F3F84()
{
  result = qword_1EB6C4048;
  if (!qword_1EB6C4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4048);
  }

  return result;
}

unint64_t sub_1B00F3FDC()
{
  result = qword_1EB6C4050;
  if (!qword_1EB6C4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4050);
  }

  return result;
}

unint64_t sub_1B00F4034()
{
  result = qword_1EB6C4058;
  if (!qword_1EB6C4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4058);
  }

  return result;
}

unint64_t sub_1B00F408C()
{
  result = qword_1EB6C4060;
  if (!qword_1EB6C4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4060);
  }

  return result;
}

unint64_t sub_1B00F40E4()
{
  result = qword_1EB6C4068;
  if (!qword_1EB6C4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4068);
  }

  return result;
}

uint64_t sub_1B00F4138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015CCD0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015CCF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

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

uint64_t sub_1B00F42A8()
{
  sub_1B014CCAC();
}

uint64_t sub_1B00F4400()
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00F4528()
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00F4694()
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B00F47A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 7627124;
  v7 = 0xE800000000000000;
  if (a1 != 5)
  {
    v6 = 0x656C6F526D726F66;
    v5 = 0xE800000000000000;
  }

  v8 = 0x6D726F6674616C70;
  if (a1 != 3)
  {
    v8 = 0x727574616E676973;
    v7 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6552646C756F6873;
  v10 = 0xEC00000074616570;
  if (a1 != 1)
  {
    v9 = 1701667182;
    v10 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xEC00000074616570;
        if (v11 != 0x6552646C756F6873)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v11 != 1701667182)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE300000000000000;
      if (v11 != 7627124)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656C6F526D726F66)
      {
LABEL_38:
        v14 = sub_1B014D25C();
        goto LABEL_39;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6D726F6674616C70)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE900000000000065;
    if (v11 != 0x727574616E676973)
    {
      goto LABEL_38;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_1B00F49C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C79;
  if (a1 > 3u)
  {
    v3 = 0x80000001B015B930;
    v4 = 0xD000000000000019;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
      v3 = 0x80000001B015B950;
    }

    v5 = 0x80000001B015B8F0;
    v6 = 0x6F72507370696B73;
    if (a1 == 4)
    {
      v6 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xEB0000000074706DLL;
    }

    v7 = a1 <= 5u;
  }

  else
  {
    v3 = 0x80000001B015B8A0;
    v4 = 0xD000000000000016;
    if (a1 != 2)
    {
      v4 = 0xD000000000000024;
      v3 = 0x80000001B015B8C0;
    }

    v5 = 0x80000001B015B880;
    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0x745374706D6F7270;
      v5 = 0xEB00000000656C79;
    }

    v7 = a1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001B015B880;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_43;
        }
      }

      else if (v8 != 0x745374706D6F7270)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001B015B8A0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v10 = "localizedAlertViewProceedButtonTitle";
LABEL_38:
    v2 = (v10 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000024)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v2 = 0xEB0000000074706DLL;
      if (v8 != 0x6F72507370696B73)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v10 = "localizedAlertViewDeclineButtonTitle";
    goto LABEL_38;
  }

  if (a2 == 6)
  {
    v2 = 0x80000001B015B930;
    if (v8 != 0xD000000000000019)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0x80000001B015B950;
    if (v8 != 0xD000000000000011)
    {
LABEL_43:
      v11 = sub_1B014D25C();
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_43;
  }

  v11 = 1;
LABEL_44:

  return v11 & 1;
}

uint64_t sub_1B00F4C30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E79616C70736964;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7470697263736564;
    }

    else
    {
      v5 = 0x4E79616C70736964;
    }

    if (v4)
    {
      v6 = 0xEB000000006E6F69;
    }

    else
    {
      v6 = 0xEB00000000656D61;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x70756F7267;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E6F697469646461;
    }

    else
    {
      v5 = 0x657079546E6F6369;
    }

    if (v4 == 3)
    {
      v6 = 0xEE006F666E496C61;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  v9 = 0x6E6F697469646461;
  v10 = 0xEE006F666E496C61;
  if (a2 != 3)
  {
    v9 = 0x657079546E6F6369;
    v10 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x7470697263736564;
    v2 = 0xEB000000006E6F69;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B014D25C();
  }

  return v13 & 1;
}

uint64_t sub_1B00F4DD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x752073626D756854;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1885956947;
  v7 = 0x2064696C61766E49;
  v8 = 0xEC00000061746164;
  if (a1 != 4)
  {
    v7 = 0x20746E65746E6F43;
    v8 = 0xEF646574656C6564;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x642073626D756854;
  v10 = 0xEB000000006E776FLL;
  if (a1 != 1)
  {
    v9 = 0x632074726F706552;
    v10 = 0xEE006E7265636E6FLL;
  }

  if (!a1)
  {
    v9 = 0x752073626D756854;
    v10 = 0xE900000000000070;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1885956947)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC00000061746164;
      if (v11 != 0x2064696C61766E49)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF646574656C6564;
      if (v11 != 0x20746E65746E6F43)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB000000006E776FLL;
        if (v11 != 0x642073626D756854)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x632074726F706552;
      v2 = 0xEE006E7265636E6FLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1B014D25C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t FBKSPromptStyle.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B00F501C()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t sub_1B00F5090()
{
  v1 = *v0;
  sub_1B014D2FC();
  MEMORY[0x1B271EE00](v1);
  return sub_1B014D33C();
}

uint64_t *sub_1B00F50D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B00F51F8()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5290(uint64_t a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B00F54FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_1B014CC0C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B00F5590(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1B00F55F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1B014CC1C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1B00F5678(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B00F56D4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1B00F57C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B00F749C();
  *a2 = result;
  return result;
}

void sub_1B00F57F4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001B015B930;
    v9 = 0xD000000000000011;
    if (v2 == 6)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000001B015B950;
    }

    v10 = 0xD000000000000024;
    v11 = 0x80000001B015B8F0;
    if (v2 != 4)
    {
      v10 = 0x6F72507370696B73;
      v11 = 0xEB0000000074706DLL;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000656C79;
    v4 = 0x745374706D6F7270;
    v5 = 0x80000001B015B8A0;
    v6 = 0xD000000000000016;
    if (v2 != 2)
    {
      v6 = 0xD000000000000024;
      v5 = 0x80000001B015B8C0;
    }

    if (*v1)
    {
      v4 = 0xD000000000000014;
      v3 = 0x80000001B015B880;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_1B00F5920()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 == 6)
    {
      v5 = 0xD000000000000019;
    }

    v6 = 0xD000000000000024;
    if (v1 != 4)
    {
      v6 = 0x6F72507370696B73;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x745374706D6F7270;
    v3 = 0xD000000000000016;
    if (v1 != 2)
    {
      v3 = 0xD000000000000024;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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
}

uint64_t sub_1B00F5A44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B00F749C();
  *a1 = result;
  return result;
}

uint64_t sub_1B00F5A78(uint64_t a1)
{
  v2 = sub_1B00F6390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00F5AB4(uint64_t a1)
{
  v2 = sub_1B00F6390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B00F5AF0()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5B34(char a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B00F5BE4()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5C28(char a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B00F5CD8()
{
  v1 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B00F5D1C(char a1)
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FBKSLaunchConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSLaunchConfiguration.init()()
{
  *&v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle] = 2;
  v1 = &v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptTitle];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptMessage];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewProceedButtonTitle];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewDeclineButtonTitle];
  *v4 = 0;
  v4[1] = 0;
  v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt] = 2;
  v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert] = 2;
  v0[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately] = 2;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FBKSLaunchConfiguration();
  return objc_msgSendSuper2(&v6, sel_init);
}

id FBKSLaunchConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSLaunchConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B00F5FA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C40B0, &qword_1B0150EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00F6390();
  sub_1B014D35C();
  v11 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  swift_beginAccess();
  v33 = *(v3 + v11);
  v32 = 0;
  sub_1B00F63E4();
  sub_1B014D21C();
  if (!v2)
  {
    v13 = (v3 + OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptTitle);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v32 = 1;

    sub_1B014D1AC();

    v16 = (v3 + OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptMessage);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v31[96] = 2;

    sub_1B014D1AC();

    v19 = (v3 + OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewProceedButtonTitle);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    v31[72] = 3;

    sub_1B014D1AC();

    v22 = (v3 + OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewDeclineButtonTitle);
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];
    v31[48] = 4;

    sub_1B014D1AC();

    v25 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
    swift_beginAccess();
    v26 = *(v3 + v25);
    v31[24] = 5;
    sub_1B014D1BC();
    v27 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
    swift_beginAccess();
    v28 = *(v3 + v27);
    v31[0] = 6;
    sub_1B014D1BC();
    v29 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
    swift_beginAccess();
    v30 = *(v3 + v29);
    v34 = 7;
    sub_1B014D1BC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B00F6390()
{
  result = qword_1EB6C40B8;
  if (!qword_1EB6C40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40B8);
  }

  return result;
}

unint64_t sub_1B00F63E4()
{
  result = qword_1EB6C40C0;
  if (!qword_1EB6C40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40C0);
  }

  return result;
}

_BYTE *FBKSLaunchConfiguration.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C40C8, &qword_1B0150EA8);
  v63 = *(v64 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v6 = &v60 - v5;
  v7 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  *&v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle] = 2;
  v8 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptTitle];
  *v8 = 0;
  v8[1] = 0;
  v68 = v8;
  v9 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedPromptMessage];
  *v9 = 0;
  v9[1] = 0;
  v67 = v9;
  v10 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewProceedButtonTitle];
  *v10 = 0;
  v10[1] = 0;
  v70 = v10;
  v11 = &v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_localizedAlertViewDeclineButtonTitle];
  *v11 = 0;
  v11[1] = 0;
  v69 = v11;
  v12 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt;
  v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_skipsPrompt] = 2;
  v13 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert;
  v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_alwaysLaunchInRemoteAlert] = 2;
  v14 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately;
  v2[OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_notifyImmediately] = 2;
  v16 = a1[3];
  v15 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B00F6390();
  v65 = v6;
  v17 = v66;
  sub_1B014D34C();
  if (v17)
  {
    v20 = v68;
    v21 = v67;
    v22 = v70;
    v23 = v69;
    __swift_destroy_boxed_opaque_existential_0(v80);
    v24 = v20[1];

    v25 = v21[1];

    v26 = v22[1];

    v27 = v23[1];

    type metadata accessor for FBKSLaunchConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v66 = v12;
    v62 = v13;
    v61 = v14;
    v18 = v63;
    v79 = 0;
    sub_1B00F6A58();
    v19 = v64;
    sub_1B014D17C();
    v29 = v78;
    swift_beginAccess();
    *&v2[v7] = v29;
    LOBYTE(v78) = 1;
    v30 = v19;
    v31 = sub_1B014D10C();
    v32 = v68;
    v33 = v67;
    v34 = v31;
    v36 = v35;
    swift_beginAccess();
    v37 = v32[1];
    *v32 = v34;
    v32[1] = v36;

    v77 = 2;
    v38 = v18;
    v39 = sub_1B014D10C();
    v41 = v40;
    swift_beginAccess();
    v42 = v33[1];
    *v33 = v39;
    v33[1] = v41;

    v76 = 3;
    v43 = sub_1B014D10C();
    v44 = v70;
    v45 = v69;
    v46 = v43;
    v60 = v47;
    swift_beginAccess();
    v48 = v44[1];
    v49 = v60;
    *v44 = v46;
    v44[1] = v49;

    v75 = 4;
    v50 = sub_1B014D10C();
    v60 = v51;
    swift_beginAccess();
    v52 = v45[1];
    v53 = v60;
    *v45 = v50;
    v45[1] = v53;

    v74 = 5;
    v54 = sub_1B014D11C();
    v55 = v66;
    LODWORD(v60) = v54;
    swift_beginAccess();
    v2[v55] = v60;
    v73 = 6;
    v56 = sub_1B014D11C();
    v57 = v62;
    LODWORD(v66) = v56;
    swift_beginAccess();
    v2[v57] = v66;
    v72 = 7;
    LOBYTE(v57) = sub_1B014D11C();
    v58 = v61;
    swift_beginAccess();
    v2[v58] = v57;
    v59 = type metadata accessor for FBKSLaunchConfiguration();
    v71.receiver = v2;
    v71.super_class = v59;
    v2 = objc_msgSendSuper2(&v71, sel_init);
    (*(v38 + 8))(v65, v30);
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  return v2;
}

unint64_t sub_1B00F6A58()
{
  result = qword_1EB6C40D0;
  if (!qword_1EB6C40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40D0);
  }

  return result;
}

unint64_t sub_1B00F6AB0()
{
  result = qword_1EB6C40D8;
  if (!qword_1EB6C40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40D8);
  }

  return result;
}

_BYTE *sub_1B00F6B04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration());
  result = FBKSLaunchConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_14Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_15Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for FBKSLaunchConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSLaunchConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B00F7398()
{
  result = qword_1EB6C40E0;
  if (!qword_1EB6C40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40E0);
  }

  return result;
}

unint64_t sub_1B00F73F0()
{
  result = qword_1EB6C40E8;
  if (!qword_1EB6C40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40E8);
  }

  return result;
}

unint64_t sub_1B00F7448()
{
  result = qword_1EB6C40F0;
  if (!qword_1EB6C40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40F0);
  }

  return result;
}

uint64_t sub_1B00F749C()
{
  v0 = sub_1B014D0DC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B00F74E8()
{
  result = qword_1EB6C40F8;
  if (!qword_1EB6C40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C40F8);
  }

  return result;
}

uint64_t static ReportAConcernObjCBridge.evaluate(interaction:action:showFeedbackForm:associateWithAppleAccount:sceneID:presentingBundleId:completion:)(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v28 = a7;
  v26 = a4;
  v27 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v26 - v19;
  type metadata accessor for FBKSInteraction(0);
  v21 = sub_1B00F76D4(a1);
  v22 = sub_1B014CEAC();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v11;
  *(v23 + 40) = a2;
  *(v23 + 48) = v21;
  *(v23 + 56) = a5;
  v24 = v28;
  *(v23 + 64) = a6;
  *(v23 + 72) = v24;
  *(v23 + 80) = a8;
  LOBYTE(v24) = v27;
  *(v23 + 88) = v26;
  *(v23 + 89) = v24;
  *(v23 + 96) = a9;
  *(v23 + 104) = a10;

  sub_1B00F8B5C(0, 0, v20, &unk_1B01511C0, v23);
}

char *sub_1B00F76D4(void *a1)
{
  v2 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  *&v120 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v118 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v117 = &v110 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v110 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v110 - v15;
  v17 = [a1 originalAnnotatedContent];
  if (v17)
  {
    v18 = v17;
    sub_1B00F926C(v18, v16);

    v19 = *(v3 + 56);
    v19(v16, 0, 1, v2);
  }

  else
  {
    v19 = *(v3 + 56);
    v19(v16, 1, 1, v2);
  }

  v20 = [a1 generatedAnnotatedContent];
  if (v20)
  {
    v21 = v20;
    sub_1B00F926C(v21, v14);

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v111 = v3 + 56;
  v19(v14, v22, 1, v2);
  v116 = a1;
  v23 = [a1 extraContent];
  v24 = MEMORY[0x1E69E7CC0];
  v115 = v14;
  v114 = v16;
  v113 = v2;
  v112 = v19;
  if (v23)
  {
    v25 = v23;
    sub_1B00FA08C();
    v26 = sub_1B014CE1C();

    v27 = v26;
    if (v26 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v27 = v37)
    {
      v119 = v3;
      v29 = 0;
      v30 = v27 & 0xC000000000000001;
      v31 = v27 & 0xFFFFFFFFFFFFFF8;
      v32 = i;
      while (1)
      {
        if (v30)
        {
          v33 = v27;
          v27 = MEMORY[0x1B271EB20](v29);
        }

        else
        {
          if (v29 >= *(v31 + 16))
          {
            goto LABEL_23;
          }

          v33 = v27;
          v27 = *(v27 + 8 * v29 + 32);
        }

        v34 = v27;
        v35 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        sub_1B00F926C(v27, v120);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1B00D14F4(0, v24[2] + 1, 1, v24);
        }

        v3 = v24[2];
        v36 = v24[3];
        if (v3 >= v36 >> 1)
        {
          v24 = sub_1B00D14F4(v36 > 1, v3 + 1, 1, v24);
        }

        v24[2] = v3 + 1;
        sub_1B00FA138(v120, v24 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v3, type metadata accessor for FBKSInteraction.AnnotatedContent);
        ++v29;
        v27 = v33;
        if (v35 == v32)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v37 = v27;
      i = sub_1B014D09C();
    }

LABEL_25:

    v14 = v115;
    v16 = v114;
  }

  v38 = [v116 prefillQuestions];
  if (v38)
  {
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B80, qword_1B0151250);
    v40 = sub_1B014CBAC();
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_1B00F9BDC(v40);

  if (!v41)
  {
    v41 = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
  v42 = swift_allocObject();
  v120 = xmmword_1B014F1E0;
  *(v42 + 16) = xmmword_1B014F1E0;
  v43 = v116;
  v44 = [v116 featureDomain];
  v45 = sub_1B014CC1C();
  v47 = v46;

  *(v42 + 32) = v45;
  *(v42 + 40) = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = v41;
  sub_1B01184A8(v42, 0, 3uLL, isUniquelyReferenced_nonNull_native);
  v49 = v121;
  v50 = swift_allocObject();
  *(v50 + 16) = v120;
  v51 = [v43 feedbackTitle];
  v52 = sub_1B014CC1C();
  v54 = v53;

  *(v50 + 32) = v52;
  *(v50 + 40) = v54;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v121 = v49;
  v56 = v50;
  v57 = v43;
  sub_1B01184A8(v56, 0, 0, v55);
  v58 = v121;
  v59 = [v43 attributionBundleId];
  *&v120 = v58;
  if (v59)
  {
    v60 = v59;
    v61 = sub_1B014CC1C();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  sub_1B00DE660(v16, v117, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE660(v14, v118, &qword_1EB6C3D68, &unk_1B0151240);
  v64 = [v57 modelVersion];
  v111 = v61;
  if (v64)
  {
    v65 = v64;
    v119 = sub_1B014CC1C();
    v116 = v66;
  }

  else
  {
    v119 = 0;
    v116 = 0;
  }

  v67 = type metadata accessor for FBKSInteraction(0);
  v68 = objc_allocWithZone(v67);
  v69 = &v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v69 = 0;
  v69[1] = 0;
  *&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v70 = v113;
  v71 = v112;
  v112(&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent], 1, 1, v113);
  v71(&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v70);
  *&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v72 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v73 = type metadata accessor for FBKSInteraction.Content(0);
  v74 = *(*(v73 - 8) + 56);
  v74(&v68[v72], 1, 1, v73);
  v74(&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v73);
  v75 = &v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v75 = 0;
  v75[1] = 0;
  v76 = &v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v76 = 0;
  v76[1] = 0;
  *&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v77 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v78 = sub_1B014CB1C();
  (*(*(v78 - 8) + 56))(&v68[v77], 1, 1, v78);
  v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  *&v68[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain] = xmmword_1B01511A0;
  v122.receiver = v68;
  v122.super_class = v67;
  v79 = objc_msgSendSuper2(&v122, sel_init);
  v80 = v79;
  if (v63)
  {
    v81 = v63;
    v82 = v79;
    v83 = v115;
    v84 = v114;
    v85 = v119;
    v86 = v116;
    v87 = v111;
  }

  else
  {
    v88 = objc_opt_self();
    v89 = v80;
    v90 = [v88 mainBundle];
    v91 = [v90 bundleIdentifier];

    v83 = v115;
    v84 = v114;
    if (v91)
    {
      v92 = v115;
      v87 = sub_1B014CC1C();
      v81 = v93;

      v83 = v92;
    }

    else
    {
      v87 = 0;
      v81 = 0;
    }

    v85 = v119;
    v86 = v116;
  }

  sub_1B00DE9C0(v83, &qword_1EB6C3D68, &unk_1B0151240);
  sub_1B00DE9C0(v84, &qword_1EB6C3D68, &unk_1B0151240);
  v94 = &v80[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  v95 = *&v80[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  *v94 = v87;
  v94[1] = v81;

  v96 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v97 = *&v80[v96];
  *&v80[v96] = v120;

  v98 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00FA01C(v117, &v80[v98]);
  swift_endAccess();
  v99 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00FA01C(v118, &v80[v99]);
  swift_endAccess();
  v100 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  v101 = *&v80[v100];
  *&v80[v100] = v24;

  v102 = &v80[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  swift_beginAccess();
  v103 = v102[1];
  *v102 = v85;
  v102[1] = v86;

  v104 = &v80[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  swift_beginAccess();
  v105 = *(v104 + 1);
  *v104 = 0;
  *(v104 + 1) = 0;

  v106 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  v107 = *&v80[v106];
  *&v80[v106] = 0;

  v108 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  v80[v108] = 0;

  return v80;
}

uint64_t sub_1B00F8238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = v13;
  *(v6 + 48) = v14;
  *(v6 + 90) = v12;
  *(v6 + 89) = v11;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  v7 = type metadata accessor for FBKSEvaluation.Subject(0);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B00F82EC, 0, 0);
}

uint64_t sub_1B00F82EC()
{
  v18 = v0;
  v1 = *(v0 + 16);
  sub_1B00F88B4(*(v0 + 24), v17);
  v2 = *(v0 + 56);
  v3 = *(v0 + 89);
  v4 = *(v0 + 32);
  v5 = v17[0];
  **(v0 + 64) = v4;
  swift_storeEnumTagMultiPayload();
  v6 = qword_1EDAE7070;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_1B014CB5C();
  __swift_project_value_buffer(v8, qword_1EDAE7828);
  v9 = sub_1B014CB3C();
  v10 = sub_1B014CF6C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B00E6C2C(0xD000000000000053, 0x80000001B015CE00, v17);
    _os_log_impl(&dword_1B00C4000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B271F750](v12, -1, -1);
    MEMORY[0x1B271F750](v11, -1, -1);
  }

  *(v0 + 88) = v5;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_1B00F8554;
  v14 = *(v0 + 64);
  v15 = *(v0 + 90);

  return sub_1B00FBB5C((v0 + 88), v15, v3);
}

uint64_t sub_1B00F8554()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B00F86F8;
  }

  else
  {
    v3 = sub_1B00F8668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B00F8668()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 40))(0);
  sub_1B00FA0D8(v1, type metadata accessor for FBKSEvaluation.Subject);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B00F86F8()
{
  sub_1B00FA0D8(v0[8], type metadata accessor for FBKSEvaluation.Subject);
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v3(v1);

  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B00F87A8(uint64_t a1)
{
  v19 = *(v1 + 16);
  v16 = *(v1 + 32);
  v17 = *(v1 + 24);
  v4 = *(v1 + 56);
  v14 = *(v1 + 48);
  v15 = *(v1 + 40);
  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 89);
  v11 = *(v1 + 96);
  v10 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B00E8C18;

  return sub_1B00F8238(a1, v19, v17, v16, v15, v14);
}

uint64_t sub_1B00F88B4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
    goto LABEL_7;
  }

  if (result == 1)
  {
    v2 = 1;
LABEL_7:
    *a2 = v2;
    return result;
  }

  if (result)
  {
    v3 = result;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v4 = sub_1B014CB5C();
    __swift_project_value_buffer(v4, qword_1EDAE7828);
    v5 = sub_1B014CB3C();
    v6 = sub_1B014CF4C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1B00C4000, v5, v6, "Unknown FBKSEvaluationAction: %ld", v7, 0xCu);
      MEMORY[0x1B271F750](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B014F1E0;
    v9 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1B014CC1C();
    *(inited + 40) = v10;
    sub_1B014D01C();

    v11 = sub_1B014D22C();
    MEMORY[0x1B271E7F0](v11);

    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x80000001B015CE60;
    sub_1B011BEB4(inited);
    swift_setDeallocating();
    sub_1B00DE9C0(inited + 32, &qword_1EB6C3E88, &unk_1B0150310);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B014CC0C();
    v14 = sub_1B014CB9C();

    [v12 initWithDomain:v13 code:1001 userInfo:v14];

    return swift_willThrow();
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B00F8B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B00DE660(a3, v27 - v11, &qword_1EB6C4100, &qword_1B01511B0);
  v13 = sub_1B014CEAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B00DE9C0(v12, &qword_1EB6C4100, &qword_1B01511B0);
  }

  else
  {
    sub_1B014CE9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B014CE6C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B014CC7C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1B00DE9C0(a3, &qword_1EB6C4100, &qword_1B01511B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B00DE9C0(a3, &qword_1EB6C4100, &qword_1B01511B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void static ReportAConcernObjCBridge.presented(interaction:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  type metadata accessor for FBKSInteraction(0);
  v6 = sub_1B00F76D4(a1);
  sub_1B0101878(a2, a3);
}

id ReportAConcernObjCBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReportAConcernObjCBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportAConcernObjCBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReportAConcernObjCBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportAConcernObjCBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

int *sub_1B00F926C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v57 - v9);
  v11 = [a1 payload];
  v12 = sub_1B014CA8C();
  v14 = v13;

  *v10 = v12;
  v10[1] = v14;
  swift_storeEnumTagMultiPayload();
  v15 = [a1 iconType];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1B014CC1C();
    v19 = v18;

    static FBKSInteraction.AnnotatedContent.IconType.withString(value:)(v17, v19, v63);

    v21 = v63[0];
    v20 = v63[1];
  }

  else
  {
    v21 = 0;
    v20 = 38;
  }

  v62 = v20;
  sub_1B00E77A4(v10, v8);
  v22 = [a1 displayName];
  v23 = sub_1B014CC1C();
  v25 = v24;

  v26 = [a1 _description];
  v27 = sub_1B014CC1C();
  v60 = v28;
  v61 = v27;

  v29 = [a1 fileName];
  v30 = sub_1B014CC1C();
  v32 = v31;

  v33 = [a1 additionalInfo];
  v34 = sub_1B014CBAC();

  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    v59 = v21;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v36 = sub_1B014CB5C();
    __swift_project_value_buffer(v36, qword_1EDAE7828);
    v37 = sub_1B014CB3C();
    v38 = sub_1B014CF5C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v58 = v34;
      v40 = v39;
      *v39 = 0;
      _os_log_impl(&dword_1B00C4000, v37, v38, "AnnotatedContent filename cannot be empty. It must have a name including the file extension.", v39, 2u);
      v41 = v40;
      v34 = v58;
      MEMORY[0x1B271F750](v41, -1, -1);
    }

    v21 = v59;
  }

  v42 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v42 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    v59 = v21;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v43 = sub_1B014CB5C();
    __swift_project_value_buffer(v43, qword_1EDAE7828);
    v44 = sub_1B014CB3C();
    v45 = sub_1B014CF5C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v58 = v34;
      v47 = v46;
      *v46 = 0;
      _os_log_impl(&dword_1B00C4000, v44, v45, "AnnotatedContent display name cannot be empty. It must be a localized user friendly string", v46, 2u);
      v48 = v47;
      v34 = v58;
      MEMORY[0x1B271F750](v48, -1, -1);
    }

    v21 = v59;
  }

  sub_1B00FA0D8(v10, type metadata accessor for FBKSInteraction.Content);
  sub_1B00FA138(v8, a2, type metadata accessor for FBKSInteraction.Content);
  result = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v50 = (a2 + result[5]);
  *v50 = v23;
  v50[1] = v25;
  v51 = (a2 + result[6]);
  v52 = v60;
  *v51 = v61;
  v51[1] = v52;
  v53 = (a2 + result[7]);
  *v53 = v30;
  v53[1] = v32;
  v54 = (a2 + result[8]);
  *v54 = 0;
  v54[1] = 0;
  *(a2 + result[10]) = v34;
  v55 = (a2 + result[9]);
  v56 = v62;
  *v55 = v21;
  v55[1] = v56;
  return result;
}

uint64_t sub_1B00F96E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00F97D8;

  return v7(a1);
}

uint64_t sub_1B00F97D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B00F98D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B00F9960(uint64_t a1)
{
  v19 = *(v1 + 16);
  v16 = *(v1 + 32);
  v17 = *(v1 + 24);
  v4 = *(v1 + 56);
  v14 = *(v1 + 48);
  v15 = *(v1 + 40);
  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 89);
  v11 = *(v1 + 96);
  v10 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B00DCFAC;

  return sub_1B00F8238(a1, v19, v17, v16, v15, v14);
}