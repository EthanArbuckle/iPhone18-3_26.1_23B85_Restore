id StateOfMindView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StateOfMindView()
{
  result = type metadata singleton initialization cache for StateOfMindView;
  if (!type metadata singleton initialization cache for StateOfMindView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EvergreenSuggestionViewModel.isFullWidth.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28EvergreenSuggestionViewModel_isFullWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EvergreenSuggestionViewModel.isFullWidth.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28EvergreenSuggestionViewModel_isFullWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EvergreenSuggestionViewModel.__allocating_init(suggestion:client:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v21 = OBJC_IVAR____TtC9MomentsUI10Suggestion_assets;
  v22 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  if (v22)
  {
    if (v22 >> 62)
    {
      v83 = OBJC_IVAR____TtC9MomentsUI10Suggestion_assets;
      v59 = __CocoaSet.count.getter();
      v21 = v83;
      if (v59 >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v83 = v21;
      v84 = a2;
      v80 = v6;
      v82 = v2;
      v23 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
      if (v23)
      {
        v24 = *((*MEMORY[0x277D85000] & *v23) + 0x58);
        v25 = v23;
        v26 = v24();
        v77 = v27;
        v78 = v26;
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      v28 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle);
      if (v28)
      {
        v29 = *((*MEMORY[0x277D85000] & *v28) + 0x58);
        v30 = v28;
        v31 = v29();
        v75 = v32;
        v76 = v31;
      }

      else
      {
        v75 = 0;
        v76 = 0;
      }

      v79 = v11;
      v81 = v8;
      v33 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
      if (v33)
      {
        v34 = OBJC_IVAR____TtC9MomentsUI9DateRange_startDate;
        v35 = type metadata accessor for Date();
        v36 = *(v35 - 8);
        v37 = v36;
        v74 = v5;
        v38 = *(v36 + 16);
        v38(v20, v33 + v34, v35);
        v39 = *(v37 + 56);
        v39(v20, 0, 1, v35);
        v38(v18, v33 + OBJC_IVAR____TtC9MomentsUI9DateRange_endDate, v35);
        v5 = v74;
        v39(v18, 0, 1, v35);
      }

      else
      {
        v40 = type metadata accessor for Date();
        v41 = *(*(v40 - 8) + 56);
        v41(v20, 1, 1, v40);
        v41(v18, 1, 1, v40);
      }

      v42 = v80;
      (*(v80 + 16))(v14, a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v5);
      (*(v42 + 56))(v14, 0, 1, v5);
      v43 = *(a1 + v83);
      v86 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType);
      v85 = *(a1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType);
      v44 = *((*MEMORY[0x277D85000] & *a1) + 0xA8);

      v46 = v44(v45);
      v47 = v84;
      v48 = v79;
      outlined init with copy of Client(v84, v79);
      v49 = v81;
      UUID.init()();
      v50 = (*(v82 + 328))(v49, v78, v77, v76, v75, v20, v18, v14, v43, &v86, &v85, v46, 0, v48);
      v51 = *(*v50 + 184);

      v51(v52);
      v53 = (*(*v50 + 192))(v14);
      v54 = (*(*v50 + 208))(v53);
      v55 = (*(*v50 + 216))(v54);
      v56 = (*(*v50 + 232))(v55);
      v57 = (*(*v50 + 240))(v56);
      v58 = (*(*v50 + 256))(v57);
      (*(*v50 + 264))(v58);

      outlined destroy of Client(v47);
      return v50;
    }
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static CommonLogger.viewModel);
  v61 = a1;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v84 = a2;
    v65 = v64;
    v66 = swift_slowAlloc();
    v87 = v66;
    *v65 = 136315138;
    (*(v6 + 16))(v8, v61 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v5);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*(v6 + 8))(v8, v5);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v87);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_21607C000, v62, v63, "[MosaicSuggestionViewModel] dropping suggestions, no assets, id=%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x21CE94770](v66, -1, -1);
    MEMORY[0x21CE94770](v65, -1, -1);

    v71 = v84;
  }

  else
  {

    v71 = a2;
  }

  outlined destroy of Client(v71);
  return 0;
}

uint64_t EvergreenSuggestionViewModel.__allocating_init(databaseID:title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v73 = a8;
  v74 = a7;
  v63 = a5;
  v62 = a4;
  v59 = a3;
  v58 = a2;
  v75 = a1;
  v72 = a14;
  v61 = a9;
  v15 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v76 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v23;
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v57 = &v56 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v31 = *a11;
  v68 = *a10;
  v69 = v31;
  *(v30 + OBJC_IVAR____TtC9MomentsUI28EvergreenSuggestionViewModel_isFullWidth) = 1;
  v32 = *(v27 + 16);
  v32(v29, v75, v26);
  v66 = a6;
  outlined init with copy of DateInterval?(a6, v25, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v74, v23, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v73, v76, &_s10Foundation4UUIDVSgMd);
  v70 = v17;
  outlined init with copy of Client(v72, v17);
  UUID.init()();
  v33 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v60 = v27;
  (*(v27 + 56))(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v26);
  v34 = (v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v35 = 0;
  v35[1] = 0;
  v65 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v64 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v67 = v29;
  v32((v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID), v29, v26);
  swift_beginAccess();
  v36 = v59;
  *v34 = v58;
  v34[1] = v36;
  swift_beginAccess();
  v37 = v63;
  *v35 = v62;
  v35[1] = v37;
  v38 = v61;
  v39 = v71;
  v40 = v57;
  outlined init with copy of DateInterval?(v57, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v39, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  v41 = v76;
  outlined assign with copy of UUID?(v76, v30 + v33);
  swift_endAccess();
  if (v38)
  {
    v42 = v60;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v66;

    v77[0] = specialized Array._copyToContiguousArray()(v47);
    specialized MutableCollection<>.sort(by:)(v77);

    outlined destroy of Client(v43);
    outlined destroy of UTType?(v44, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v45, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v46, &_s10Foundation4DateVSgMd);
    v48 = *(v42 + 8);
    v48(v75, v26);
    outlined destroy of UTType?(v76, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v71, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
    v48(v67, v26);
    v49 = v77[0];
  }

  else
  {
    outlined destroy of Client(v72);
    outlined destroy of UTType?(v73, &_s10Foundation4UUIDVSgMd);
    v50 = v39;
    outlined destroy of UTType?(v74, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v66, &_s10Foundation4DateVSgMd);
    v51 = *(v60 + 8);
    v51(v75, v26);
    outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v50, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v40, &_s10Foundation4DateVSgMd);
    v51(v67, v26);
    v49 = 0;
  }

  v52 = v64;
  swift_beginAccess();
  *(v30 + v52) = v49;
  v53 = v69;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v68;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v53;
  v54 = v65;
  swift_beginAccess();
  *(v30 + v54) = a12;
  outlined init with take of Client(v70, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a13;
  return v30;
}

uint64_t EvergreenSuggestionViewModel.init(databaseID:title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v68 = a8;
  v69 = a7;
  v56 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v70 = a1;
  v67 = a14;
  v58 = a9;
  v16 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v66 = &v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v24;
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v52 = &v52 - v25;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v29) = *a11;
  v62 = *a10;
  v63 = v29;
  *(v14 + OBJC_IVAR____TtC9MomentsUI28EvergreenSuggestionViewModel_isFullWidth) = 1;
  v31 = *(v28 + 16);
  v31(v30, v70, v27);
  v61 = a6;
  outlined init with copy of DateInterval?(a6, v26, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v69, v24, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v68, v66, &_s10Foundation4UUIDVSgMd);
  v64 = v18;
  outlined init with copy of Client(v67, v18);
  UUID.init()();
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v60 = v28;
  (*(v28 + 56))(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v27);
  v33 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v34 = 0;
  v34[1] = 0;
  v59 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v57 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v31((v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID), v30, v27);
  swift_beginAccess();
  v35 = v54;
  *v33 = v53;
  v33[1] = v35;
  swift_beginAccess();
  v36 = v56;
  *v34 = v55;
  v34[1] = v36;
  v37 = v65;
  v38 = v66;
  v39 = v52;
  outlined init with copy of DateInterval?(v52, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v37, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(v38, v14 + v32);
  swift_endAccess();
  if (v58)
  {
    v40 = v67;
    v56 = v30;
    v41 = v68;
    v42 = v69;
    v43 = v58;

    v71[0] = specialized Array._copyToContiguousArray()(v43);
    specialized MutableCollection<>.sort(by:)(v71);

    outlined destroy of Client(v40);
    outlined destroy of UTType?(v41, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v42, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v61, &_s10Foundation4DateVSgMd);
    v44 = *(v60 + 8);
    v44(v70, v27);
    outlined destroy of UTType?(v38, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v65, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v39, &_s10Foundation4DateVSgMd);
    v44(v56, v27);
    v45 = v71[0];
  }

  else
  {
    outlined destroy of Client(v67);
    outlined destroy of UTType?(v68, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v69, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v61, &_s10Foundation4DateVSgMd);
    v46 = *(v60 + 8);
    v46(v70, v27);
    outlined destroy of UTType?(v38, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v37, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v39, &_s10Foundation4DateVSgMd);
    v46(v30, v27);
    v45 = 0;
  }

  v47 = v57;
  swift_beginAccess();
  *(v14 + v47) = v45;

  v48 = v63;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v62;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v48;
  v49 = v59;
  swift_beginAccess();
  v50 = *(v14 + v49);
  *(v14 + v49) = a12;

  outlined init with take of Client(v64, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a13;
  return v14;
}

uint64_t EvergreenSuggestionViewModel.__deallocating_deinit()
{
  SuggestionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EvergreenSuggestionViewModel()
{
  result = type metadata singleton initialization cache for EvergreenSuggestionViewModel;
  if (!type metadata singleton initialization cache for EvergreenSuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SuggestionSheetPresenterOptions.fractionalPresentation.getter()
{
  v1 = OBJC_IVAR___SuggestionSheetPresenterOptions_fractionalPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionSheetPresenterOptions.fractionalPresentation.setter(double a1)
{
  v3 = OBJC_IVAR___SuggestionSheetPresenterOptions_fractionalPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SuggestionSheetPresenterOptions.presentFullScreen.getter()
{
  v1 = OBJC_IVAR___SuggestionSheetPresenterOptions_presentFullScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionSheetPresenterOptions.presentFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR___SuggestionSheetPresenterOptions_presentFullScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SuggestionSheetPresenterOptions.selectedSuggestionID.getter()
{
  v1 = (v0 + OBJC_IVAR___SuggestionSheetPresenterOptions_selectedSuggestionID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SuggestionSheetPresenterOptions.selectedSuggestionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_selectedSuggestionID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SuggestionSheetPresenterOptions.presentationIsAnimated.getter()
{
  v1 = OBJC_IVAR___SuggestionSheetPresenterOptions_presentationIsAnimated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionSheetPresenterOptions.presentationIsAnimated.setter(char a1)
{
  v3 = OBJC_IVAR___SuggestionSheetPresenterOptions_presentationIsAnimated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SuggestionSheetPresenterOptions.allowEvergreen.getter()
{
  v1 = OBJC_IVAR___SuggestionSheetPresenterOptions_allowEvergreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionSheetPresenterOptions.allowEvergreen.setter(char a1)
{
  v3 = OBJC_IVAR___SuggestionSheetPresenterOptions_allowEvergreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SuggestionSheetPresenterOptions.onboardingOnlyPresentation.getter()
{
  v1 = OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionSheetPresenterOptions.onboardingOnlyPresentation.setter(char a1)
{
  v3 = OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SuggestionSheetPresenterOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SuggestionSheetPresenterOptions.init()()
{
  *&v0[OBJC_IVAR___SuggestionSheetPresenterOptions_fractionalPresentation] = 0x3FE0000000000000;
  v0[OBJC_IVAR___SuggestionSheetPresenterOptions_presentFullScreen] = 0;
  *&v0[OBJC_IVAR___SuggestionSheetPresenterOptions_selectedSuggestionID] = xmmword_21658F9D0;
  v0[OBJC_IVAR___SuggestionSheetPresenterOptions_presentationIsAnimated] = 0;
  v0[OBJC_IVAR___SuggestionSheetPresenterOptions_allowEvergreen] = 1;
  v0[OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSheetPresenterOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657645776F6C6C61;
  if (a1 != 3)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (a1 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000019;
  if (a1)
  {
    v2 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SuggestionSheetPresenterOptions.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionSheetPresenterOptions.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SuggestionSheetPresenterOptions.CodingKeys()
{
  SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionSheetPresenterOptions.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionSheetPresenterOptions.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SuggestionSheetPresenterOptions.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionSheetPresenterOptions.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionSheetPresenterOptions.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SuggestionSheetPresenterOptions.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SuggestionSheetPresenterOptions_fractionalPresentation;
  *(v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_fractionalPresentation) = 0x3FE0000000000000;
  v5 = OBJC_IVAR___SuggestionSheetPresenterOptions_presentFullScreen;
  *(v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_presentFullScreen) = 0;
  *(v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_selectedSuggestionID) = xmmword_21658F9D0;
  *(v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_presentationIsAnimated) = 0;
  v6 = OBJC_IVAR___SuggestionSheetPresenterOptions_allowEvergreen;
  *(v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_allowEvergreen) = 1;
  *(v2 + OBJC_IVAR___SuggestionSheetPresenterOptions_onboardingOnlyPresentation) = 0;
  v7 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216575400);
  v8 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  *(v2 + v5) = v8;
  v9 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165753E0);
  [a1 decodeDoubleForKey_];
  v11 = v10;

  swift_beginAccess();
  *(v2 + v4) = v11;
  v12 = MEMORY[0x21CE91FC0](0x657645776F6C6C61, 0xEE006E6565726772);
  v13 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  *(v2 + v6) = v13;
  type metadata accessor for NSString();
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v14)
  {
    v17 = 0;
    v15 = v14;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for SuggestionSheetPresenterOptions();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall SuggestionSheetPresenterOptions.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  v5 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216575400);
  [(objc_class *)with.super.isa encodeBool:v4 & 1 forKey:v5];

  v6 = (*((*v3 & *v1) + 0x80))();
  v7 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x80000002165753E0);
  [(objc_class *)with.super.isa encodeDouble:v7 forKey:v6];

  v8 = (*((*v3 & *v1) + 0xB0))();
  if (v9)
  {
    v10 = MEMORY[0x21CE91FC0](v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x8000000216575420);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = (*((*v3 & *v1) + 0xE0))();
  v13 = MEMORY[0x21CE91FC0](0x657645776F6C6C61, 0xEE006E6565726772);
  [(objc_class *)with.super.isa encodeBool:v12 & 1 forKey:v13];

  v14 = (*((*v3 & *v1) + 0xF8))();
  v15 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216575450);
  [(objc_class *)with.super.isa encodeBool:v14 & 1 forKey:v15];
}

uint64_t SuggestionSheetPresenterOptions.debugDescription.getter()
{
  _StringGuts.grow(_:)(156);
  v1 = MEMORY[0x21CE92100](0xD000000000000038, 0x8000000216579850);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v1);
  Double.write<A>(to:)();
  v3 = MEMORY[0x21CE92100](0xD000000000000014, 0x8000000216579890);
  v4 = (*((*v2 & *v0) + 0x98))(v3);
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x21CE92100](v6, v7);

  v8 = MEMORY[0x21CE92100](0xD000000000000017, 0x80000002165798B0);
  v9 = (*((*v2 & *v0) + 0xB0))(v8);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x21CE92100](v9, v11);

  v12 = MEMORY[0x21CE92100](0xD000000000000011, 0x80000002165798D0);
  v13 = (*((*v2 & *v0) + 0xE0))(v12);
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x21CE92100](v15, v16);

  v17 = MEMORY[0x21CE92100](0xD00000000000001ELL, 0x80000002165798F0);
  v18 = (*((*v2 & *v0) + 0xF8))(v17);
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x21CE92100](v20, v21);

  return 0;
}

id SuggestionSheetPresenterOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSheetPresenterOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized SuggestionSheetPresenterOptions.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionSheetPresenterOptions.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetPresenterOptions.CodingKeys and conformance SuggestionSheetPresenterOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetPresenterOptions.CodingKeys and conformance SuggestionSheetPresenterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuggestionSheetPresenterOptions.CodingKeys and conformance SuggestionSheetPresenterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetPresenterOptions.CodingKeys and conformance SuggestionSheetPresenterOptions.CodingKeys);
  }

  return result;
}

uint64_t NotificationEventData.reporterId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotificationEventData.suggestionId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall NotificationEventData.init(reporterId:eventType:suggestionId:goodnessScore:promptType:interfaceType:smartTimerSource:scheduledDeliverySetting:)(MomentsUI::NotificationEventData *__return_ptr retstr, Swift::String reporterId, MomentsUI::NotificationActivityTrigger_optional eventType, Swift::String_optional suggestionId, Swift::Double_optional goodnessScore, MomentsUI::NotificationPromptType_optional promptType, MomentsUI::InterfaceType_optional interfaceType, MomentsUI::SmartNotificationTimerSource_optional smartTimerSource, MomentsUI::NotificationScheduledDeliverySetting_optional scheduledDeliverySetting)
{
  v9 = *eventType.value;
  v10 = *interfaceType.value;
  v11 = *smartTimerSource.value;
  v12 = *v14;
  v13 = *v15;
  retstr->reporterId = reporterId;
  retstr->eventType.value = v9;
  retstr->suggestionId = suggestionId;
  retstr->goodnessScore.value = *&goodnessScore.is_nil;
  retstr->goodnessScore.is_nil = promptType.value & 1;
  retstr->promptType.value = v10;
  retstr->interfaceType.value = v11;
  retstr->smartTimerSource.value = v12;
  retstr->scheduledDeliverySetting.value = v13;
}

uint64_t RealTimeCheckData.reporterId.getter()
{
  v1 = *v0;

  return v1;
}

MomentsUI::RealTimeCheckData __swiftcall RealTimeCheckData.init(reporterId:realTimeCheckRejected:locationEnabled:isTraveling:isPlaceEligible:noVisit:isInVisit:isInWorkoutHealthKit:isInWorkoutMotion:isUsingPrimaryJournalApp:isAtHome:)(MomentsUI::RealTimeCheckData reporterId, Swift::Bool realTimeCheckRejected, Swift::Bool locationEnabled, Swift::Bool_optional isTraveling, Swift::Bool_optional isPlaceEligible, Swift::Bool_optional noVisit, Swift::Bool_optional isInVisit, Swift::Bool isInWorkoutHealthKit, Swift::Bool isInWorkoutMotion, Swift::Bool isUsingPrimaryJournalApp, Swift::Bool_optional isAtHome)
{
  *v11 = reporterId.reporterId;
  *(v11 + 16) = realTimeCheckRejected;
  *(v11 + 17) = locationEnabled;
  *(v11 + 18) = isTraveling;
  *(v11 + 19) = isPlaceEligible;
  *(v11 + 20) = noVisit;
  *(v11 + 21) = isInVisit;
  *(v11 + 22) = isInWorkoutHealthKit;
  *(v11 + 23) = isInWorkoutMotion;
  *(v11 + 24) = isUsingPrimaryJournalApp;
  *(v11 + 25) = isAtHome;
  reporterId.isUsingPrimaryJournalApp = locationEnabled;
  reporterId.realTimeCheckRejected = realTimeCheckRejected;
  return reporterId;
}

void one-time initialization function for shared()
{
  type metadata accessor for NotificationBiomeManager();
  v0 = swift_allocObject();
  v1 = [BiomeLibrary() Moments];
  swift_unknownObjectRelease();
  v2 = [v1 Events];
  swift_unknownObjectRelease();
  v3 = [v2 Notifications];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  *(v0 + 16) = v4;
  static NotificationBiomeManager.shared = v0;
}

{
  type metadata accessor for DefaultsManager();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  DefaultsManager.setupTrial()();
  static DefaultsManager.shared = v0;
}

uint64_t NotificationBiomeManager.__allocating_init(biomeSource:)(id a1)
{
  result = swift_allocObject();
  if (!a1)
  {
    v3 = result;
    v4 = [BiomeLibrary() Moments];
    swift_unknownObjectRelease();
    v5 = [v4 Events];
    swift_unknownObjectRelease();
    v6 = [v5 Notifications];
    swift_unknownObjectRelease();
    a1 = [v6 source];

    result = v3;
  }

  *(result + 16) = a1;
  return result;
}

uint64_t static NotificationBiomeManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t NotificationBiomeManager.init(biomeSource:)(id a1)
{
  if (!a1)
  {
    v2 = [BiomeLibrary() Moments];
    swift_unknownObjectRelease();
    v3 = [v2 Events];
    swift_unknownObjectRelease();
    v4 = [v3 Notifications];
    swift_unknownObjectRelease();
    v5 = [v4 source];

    a1 = v5;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t NotificationBiomeManager.donateEvent(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](NotificationBiomeManager.donateEvent(_:), 0, 0);
}

uint64_t NotificationBiomeManager.donateEvent(_:)()
{
  v30 = v0;
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[4];
    v5 = v0[2];
    v6 = v1;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v8 = v7;
    v9 = *(v2 + 8);
    v9(v3, v4);
    [v6 sendEvent:v5 timestamp:v8];
    if (one-time initialization token for NotificationBiome != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.NotificationBiome);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[6];
      v14 = v0[4];
      v28 = v6;
      v15 = swift_slowAlloc();
      v27 = v9;
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      Date.init()();
      lazy protocol witness table accessor for type Date and conformance Date();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v27(v13, v14);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_21607C000, v11, v12, "Notification event donated successfully at %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CE94770](v16, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    else
    {
    }

    v25 = v0[1];
  }

  else
  {
    if (one-time initialization token for NotificationBiome != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static CommonLogger.NotificationBiome);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "Biome source not available for donation", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    lazy protocol witness table accessor for type BiomeError and conformance BiomeError();
    swift_allocError();
    swift_willThrow();

    v25 = v0[1];
  }

  return v25();
}

uint64_t NotificationBiomeManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int BiomeError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](0);
  return Hasher._finalize()();
}

id specialized static NotificationBiomeManager.generateNotificationBiomeEvent(engagementEvent:realTimeCheckEvent:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v128 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v119 = &v106 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v126 = (&v106 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v125 = (&v106 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v106 - v14);
  MEMORY[0x28223BE20](v13);
  v117 = v15;
  v118 = &v106 - v16;
  v17 = *(a1 + 8);
  v18 = *(a1 + 32);
  v116 = *(a1 + 24);
  v127 = v18;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48) | (*(a1 + 52) << 32);
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  if (v17)
  {
    v109 = *a1;
    v24 = dword_21658FCF4[*(a1 + 16)];
    HIDWORD(v114) = dword_21658FD30[v20 >> 8];
    v115 = v24;
    if (BYTE2(v20) == 18)
    {
      HIDWORD(v113) = 0;
    }

    else
    {
      v130 = BYTE2(v20);
      HIDWORD(v113) = InterfaceType.asBiomeInterfaceType.getter();
    }

    LODWORD(v114) = dword_21658FD50[SBYTE3(v20)];

    if (BYTE4(v20) > 1u)
    {
      if (BYTE4(v20) != 2)
      {
        LODWORD(v113) = 0;
        goto LABEL_18;
      }

      v27 = 3;
    }

    else if (BYTE4(v20))
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    LODWORD(v113) = v27;
LABEL_18:
    isa = v17;
    goto LABEL_19;
  }

  v25 = *a2;
  if (!v21)
  {
    v25 = 0x6E776F6E6B6E75;
  }

  v109 = v25;
  v26 = 0xE700000000000000;
  if (v21)
  {
    v26 = v21;
  }

  isa = v26;

  v113 = 0;
  v114 = 0;
  v115 = 0;
LABEL_19:
  if (v21)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v111 = v28;
    v30 = [v29 initWithBool_];
    v31 = v30;
    if ((v22 & 0xFF0000) == 0x20000)
    {
      v32 = v30;
      v33 = 0;
    }

    else
    {
      v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v38 = v31;
      v33 = [v37 initWithBool_];
    }

    v112 = v31;
    v107 = v17;
    if ((v22 & 0xFF000000) == 0x2000000)
    {
      v39 = v33;
      v129 = 0;
    }

    else
    {
      v40 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v41 = v33;
      v129 = [v40 initWithBool_];
    }

    v42 = v23;
    v43 = v23 >> 8;
    v110 = v33;
    if ((v22 & 0xFF0000000000) == 0x20000000000)
    {
      v44 = v129;
      v45 = 0;
      v46 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }

    else
    {
      v47 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v48 = v129;
      v46 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      v45 = [v47 initWithBool_];
    }

    v49 = HIBYTE(v22) & 1;
    v50 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v124 = v45;
    v51 = [v50 v46[242]];
    v52 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v123 = v51;
    v53 = [v52 v46[242]];
    v54 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v122 = v53;
    v55 = [v54 v46[242]];
    v56 = v55;
    v121 = v55;
    if (v43 == 2)
    {
      v57 = v55;
      v58 = 0;
    }

    else
    {
      v59 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v60 = v56;
      v58 = [v59 v46[242]];
    }

    v34 = v118;
    v35 = v119;
    v36 = v117;
    v17 = v107;
    v120 = v58;
  }

  else
  {
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v129 = 0;
    v110 = 0;
    v112 = 0;
    v111 = 0;
    v34 = v118;
    v35 = v119;
    v36 = v117;
  }

  Date.init()();
  v61 = type metadata accessor for Date();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v63(v34, 0, 1, v61);
  v63(v36, 1, 1, v61);
  v63(v125, 1, 1, v61);
  v63(v126, 1, 1, v61);
  v63(v35, 1, 1, v61);
  v64 = v128;
  Date.init()();
  v63(v64, 0, 1, v61);
  if (v17)
  {
    if (v20)
    {

      v119 = 0;
    }

    else
    {
      v65 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v119 = [v65 initWithDouble_];
    }
  }

  else
  {
    v119 = 0;
    v116 = 0;
    v127 = 0;
  }

  v66 = [objc_opt_self() currentDevice];
  v67 = [v66 userInterfaceIdiom];

  if (v67 > 5)
  {
    v68 = 0;
  }

  else
  {
    v68 = dword_21658FD18[v67];
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v70 = result;
    v71 = [result isDiagnosticSubmissionAllowed];

    v118 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v109 = MEMORY[0x21CE91FC0](v109, isa);

    v72 = *(v62 + 48);
    if (v72(v34, 1, v61) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v34, v61);
    }

    v73 = v125;
    type metadata accessor for BMMomentsNotificationsPrediction();
    v125 = Array._bridgeToObjectiveC()().super.isa;
    v74 = 0;
    if (v72(v36, 1, v61) != 1)
    {
      v74 = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v36, v61);
    }

    v75 = v72(v73, 1, v61);
    v117 = v74;
    if (v75 == 1)
    {
      v107 = 0;
    }

    else
    {
      v107 = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v73, v61);
    }

    v76 = v126;
    if (v72(v126, 1, v61) == 1)
    {
      v126 = 0;
    }

    else
    {
      v126 = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v76, v61);
    }

    if (v72(v35, 1, v61) == 1)
    {
      v77 = 0;
    }

    else
    {
      v77 = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v35, v61);
    }

    v78 = v128;
    if (v72(v128, 1, v61) == 1)
    {
      v79 = 0;
      v80 = v127;
      if (v127)
      {
LABEL_59:
        v81 = MEMORY[0x21CE91FC0](v116, v80);

LABEL_62:
        v128 = v81;
        v82 = objc_allocWithZone(MEMORY[0x277CF1368]);
        HIDWORD(v105) = v113;
        LODWORD(v105) = 0;
        LODWORD(v104) = v68;
        LODWORD(v103) = HIDWORD(v113);
        v102 = v81;
        LODWORD(v101) = HIDWORD(v114);
        v100 = v79;
        LODWORD(v99) = v115;
        v83 = v110;
        v84 = v112;
        v85 = v126;
        LODWORD(v98) = v114;
        v86 = v107;
        v116 = v79;
        v87 = v117;
        v88 = v109;
        v89 = isa;
        v90 = v111;
        v91 = v125;
        v127 = [v82 initWithReporterIdentification:v109 reporterWritingDate:isa isSignificantLocationEnabled:v111 isSystemNotificationsEnabled:0 isAppNotificationsEnabled:0 predictionTuple:v125 maxAvailabilityProbability:0 maxAvailabilityProbabilityDate:v117 proposedFireDate:v107 proposedFireDateSource:v98 realTimeCheckHandlerRetryDate:v126 realTimeCheckHandlerFailure:0 realTimeCheckHandlerErrorDescription:0 realTimeCheckHandlerErrorCode:0 realTimeAlarmErrorDomain:0 fireAlarmDate:v77 fireTimerAlarmErrorDescription:0 fireTimerAlarmErrorCode:0 fireTimerAlarmErrorDomain:0 realTimeCheckRejected:v112 realTimeCheckIsTraveling:v110 realTimeCheckIsPlaceEligible:v129 realTimeCheckIsInVisit:v124 realTimeCheckIsInWorkoutHealthKit:v123 realTimeCheckIsInWorkoutMotion:v122 realTimeCheckIsJournaling:v121 realTimeCheckIsAtHome:v120 eventType:v99 eventTime:v100 AttemptSuccessful:0 contentType:v101 suggestionIdentifier:v102 bundleInterfaceType:v103 bundleGoodnessScore:v119 deviceId:0 deviceType:v104 isDevicePrimary:0 journalingAppFirstParty:0 schedulingState:v105 scheduleDeliverySetting:0 isOnDefaultSchedule:v118 isDNUGated:?];

        v92 = v129;
        v93 = v124;

        v94 = v123;
        v95 = v122;

        v96 = v121;
        v97 = v120;

        return v127;
      }
    }

    else
    {
      v79 = Date._bridgeToObjectiveC()().super.isa;
      (*(v62 + 8))(v78, v61);
      v80 = v127;
      if (v127)
      {
        goto LABEL_59;
      }
    }

    v81 = 0;
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type BiomeError and conformance BiomeError()
{
  result = lazy protocol witness table cache variable for type BiomeError and conformance BiomeError;
  if (!lazy protocol witness table cache variable for type BiomeError and conformance BiomeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeError and conformance BiomeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BiomeError and conformance BiomeError;
  if (!lazy protocol witness table cache variable for type BiomeError and conformance BiomeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeError and conformance BiomeError);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NotificationEventData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t storeEnumTagSinglePayload for NotificationEventData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RealTimeCheckData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t storeEnumTagSinglePayload for RealTimeCheckData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for BMMomentsNotificationsPrediction()
{
  result = lazy cache variable for type metadata for BMMomentsNotificationsPrediction;
  if (!lazy cache variable for type metadata for BMMomentsNotificationsPrediction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BMMomentsNotificationsPrediction);
  }

  return result;
}

uint64_t static PhotosUtilities.phAsset(from:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](static PhotosUtilities.phAsset(from:), 0, 0);
}

uint64_t static PhotosUtilities.phAsset(from:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7PHAssetCSgMd);
  *v4 = v0;
  v4[1] = static PhotosUtilities.phAsset(from:);

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2874657373416870, 0xEE00293A6D6F7266, partial apply for closure #1 in static PhotosUtilities.phAsset(from:), v3, v5);
}

{

  return MEMORY[0x2822009F8](static PhotosUtilities.phAsset(from:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t PHAsset.closestExactImage(type:viewport:assetClass:)(uint64_t a1, _BYTE *a2, _BYTE *a3, double a4, double a5)
{
  *(v6 + 160) = v5;
  *(v6 + 144) = a4;
  *(v6 + 152) = a5;
  *(v6 + 136) = a1;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 + 64);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v6 + 224) = v10;
  v11 = *(v10 - 8);
  *(v6 + 232) = v11;
  *(v6 + 240) = *(v11 + 64);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 360) = *a2;
  *(v6 + 361) = *a3;

  return MEMORY[0x2822009F8](PHAsset.closestExactImage(type:viewport:assetClass:), 0, 0);
}

uint64_t PHAsset.closestExactImage(type:viewport:assetClass:)()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = PHAsset.closestAndSmallestResource(viewport:stillFrame:)(*(v0 + 144), 1);
  *(v0 + 288) = v4;
  v5 = PHAsset.closestAndSmallestResource(viewport:stillFrame:)(__PAIR128__(v2, v3), 0);
  *(v0 + 296) = v5;
  if (v1 > 1)
  {
    if (v5)
    {
      v6 = v5;
      v9 = swift_task_alloc();
      *(v0 + 352) = v9;
      *v9 = v0;
      v9[1] = PHAsset.closestExactImage(type:viewport:assetClass:);
      v8 = *(v0 + 184);
      goto LABEL_6;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 160);
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static CommonLogger.viewModel);
    v30 = v28;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    if (v31)
    {
      v32 = *(v0 + 160);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136315138;
      v33 = [v32 localIdentifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v40);

      *(v20 + 4) = v37;
      v27 = "[closestExactImage] failed to locate video resource for video, localID=%s";
      goto LABEL_17;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
      v7 = swift_task_alloc();
      *(v0 + 304) = v7;
      *v7 = v0;
      v7[1] = PHAsset.closestExactImage(type:viewport:assetClass:);
      v8 = *(v0 + 216);
LABEL_6:

      return PHAsset.closestExactResourceURL(resource:)(v8, v6);
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 160);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static CommonLogger.viewModel);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    if (v16)
    {
      v19 = *(v0 + 160);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136315138;
      v22 = [v19 localIdentifier];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v40);

      *(v20 + 4) = v26;
      v27 = "[closestExactImage] failed to locate still resource, localID=%s";
LABEL_17:
      _os_log_impl(&dword_21607C000, v14, v15, v27, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);
    }
  }

  v38 = *(v0 + 136);
  *(v38 + 32) = 0;
  *v38 = 0u;
  *(v38 + 16) = 0u;

  v39 = *(v0 + 8);

  return v39();
}

{

  return MEMORY[0x2822009F8](PHAsset.closestExactImage(type:viewport:assetClass:), 0, 0);
}

{
  v112 = v0;
  v111[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v3 + 48);
  *(v0 + 312) = v5;
  *(v0 + 320) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v4, 1, v2);

  if (v6 == 1)
  {
    outlined destroy of UTType?(*(v0 + 216), &_s10Foundation3URLVSgMd);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 160);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.viewModel);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    if (v12)
    {
      v15 = *(v0 + 160);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v111[0] = v17;
      *v16 = 136315138;
      v18 = [v15 localIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v111);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_21607C000, v10, v11, "[closestExactImage] failed to locate still resource, localID=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CE94770](v17, -1, -1);
      MEMORY[0x21CE94770](v16, -1, -1);
    }

    v23 = *(v0 + 136);
    *(v23 + 32) = 0;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    goto LABEL_18;
  }

  v24 = *(v0 + 360);
  v25 = *(v0 + 280);
  v26 = *(v0 + 224);
  v27 = *(v0 + 232);
  v28 = *(v0 + 216);
  v29 = *(v27 + 32);
  *(v0 + 328) = v29;
  *(v0 + 336) = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v25, v28, v26);
  v30 = *(v0 + 296);
  if (v24 != 1)
  {
    v99 = *(v0 + 361);
    v105 = *(v0 + 280);
    v107 = *(v0 + 288);
    v109 = *(v0 + 264);
    v35 = *(v0 + 232);
    v91 = *(v0 + 256);
    v36 = *(v0 + 224);
    v37 = *(v0 + 200);
    v93 = *(v0 + 192);
    v95 = *(v0 + 168);
    v101 = *(v0 + 136);
    v103 = *(v0 + 296);
    v90 = *(v35 + 16);
    v90();
    v38 = *(v35 + 56);
    v38(v37, 1, 1, v36);
    v98 = type metadata accessor for Image();
    v39 = objc_allocWithZone(v98);
    UUID.init()();
    v38(&v39[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v36);
    v38(&v39[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v36);
    v40 = v36;
    (v90)(v91, v109, v36);
    v41 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v42 = swift_allocObject();
    v29(v42 + v41, v91, v40);
    v43 = v37;
    outlined init with copy of URL?(v37, v93);
    v44 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v45 = swift_allocObject();
    outlined init with take of URL?(v93, v45 + v44);
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
    *(v46 + 24) = v42;
    v47 = &v39[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v47 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out URL);
    v47[1] = v46;
    v48 = &v39[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v48 = partial apply for closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
    v48[1] = v45;
    v49 = swift_allocObject();
    *(v49 + 16) = partial apply for closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
    *(v49 + 24) = v42;
    v50 = &v39[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v50 = partial apply for closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
    v50[1] = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
    *(v51 + 24) = v45;
    v52 = &v39[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v52 = partial apply for closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
    v52[1] = v51;
    v39[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
    v39[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v99;
    *(v0 + 64) = v39;
    *(v0 + 72) = v98;

    v53 = objc_msgSendSuper2((v0 + 64), sel_init);
    outlined destroy of UTType?(v43, &_s10Foundation3URLVSgMd);
    v54 = *(v35 + 8);
    v54(v109, v40);
    v101[3] = v98;
    v101[4] = lazy protocol witness table accessor for type Video and conformance Video(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);

    *v101 = v53;
    v54(v105, v40);
LABEL_18:

    v89 = *(v0 + 8);

    return v89();
  }

  if (!v30)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 160);
    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static CommonLogger.viewModel);
    v57 = v55;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 160);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v111[0] = v62;
      *v61 = 136315138;
      v63 = [v60 localIdentifier];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v111);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_21607C000, v58, v59, "[closestExactImage] failed to locate video resource for live photo, localID=%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x21CE94770](v62, -1, -1);
      MEMORY[0x21CE94770](v61, -1, -1);
    }

    v97 = *(v0 + 328);
    v110 = *(v0 + 296);
    v102 = *(v0 + 361);
    v106 = *(v0 + 280);
    v108 = *(v0 + 288);
    v69 = *(v0 + 256);
    v68 = *(v0 + 264);
    v70 = *(v0 + 232);
    v71 = *(v0 + 224);
    v72 = *(v0 + 200);
    v92 = v72;
    v94 = *(v0 + 192);
    v96 = *(v0 + 168);
    v104 = *(v0 + 136);
    v73 = *(v70 + 16);
    v73(v68);
    v74 = *(v70 + 56);
    v74(v72, 1, 1, v71);
    v100 = type metadata accessor for Image();
    v75 = objc_allocWithZone(v100);
    UUID.init()();
    v74(&v75[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v71);
    v74(&v75[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v71);
    (v73)(v69, v68, v71);
    v76 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v77 = swift_allocObject();
    v97(v77 + v76, v69, v71);
    outlined init with copy of URL?(v92, v94);
    v78 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v79 = swift_allocObject();
    outlined init with take of URL?(v94, v79 + v78);
    v80 = swift_allocObject();
    *(v80 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    *(v80 + 24) = v77;
    v81 = &v75[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v81 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
    v81[1] = v80;
    v82 = &v75[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v82 = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    v82[1] = v79;
    v83 = swift_allocObject();
    *(v83 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    *(v83 + 24) = v77;
    v84 = &v75[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v84 = closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    v84[1] = v83;
    v85 = swift_allocObject();
    *(v85 + 16) = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    *(v85 + 24) = v79;
    v86 = &v75[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v86 = closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    v86[1] = v85;
    v75[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
    v75[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v102;
    *(v0 + 80) = v75;
    *(v0 + 88) = v100;

    v87 = objc_msgSendSuper2((v0 + 80), sel_init);
    outlined destroy of UTType?(v92, &_s10Foundation3URLVSgMd);
    v88 = *(v70 + 8);
    v88(v68, v71);
    v104[3] = v100;
    v104[4] = lazy protocol witness table accessor for type Video and conformance Video(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);

    *v104 = v87;
    v88(v106, v71);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = swift_task_alloc();
  *(v0 + 344) = v32;
  *v32 = v0;
  v32[1] = PHAsset.closestExactImage(type:viewport:assetClass:);
  v33 = *(v0 + 208);

  return PHAsset.closestExactResourceURL(resource:)(v33, v31);
}

{

  return MEMORY[0x2822009F8](PHAsset.closestExactImage(type:viewport:assetClass:), 0, 0);
}

{
  v154 = v0;
  v153[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 296);
  v2 = (*(v0 + 312))(*(v0 + 208), 1, *(v0 + 224));

  if (v2 == 1)
  {
    outlined destroy of UTType?(*(v0 + 208), &_s10Foundation3URLVSgMd);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 160);
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static CommonLogger.viewModel);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 160);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v153[0] = v10;
      *v9 = 136315138;
      v11 = [v8 localIdentifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v153);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_21607C000, v6, v7, "[closestExactImage] failed to locate video resource for live photo, localID=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CE94770](v10, -1, -1);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    v131 = *(v0 + 328);
    v150 = *(v0 + 296);
    v140 = *(v0 + 361);
    v146 = *(v0 + 280);
    v148 = *(v0 + 288);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 232);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);
    v124 = v20;
    v125 = *(v0 + 192);
    v128 = *(v0 + 168);
    v143 = *(v0 + 136);
    v21 = *(v18 + 16);
    v21(v16);
    v22 = *(v18 + 56);
    v22(v20, 1, 1, v19);
    v137 = type metadata accessor for Image();
    v23 = objc_allocWithZone(v137);
    UUID.init()();
    v22(&v23[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v19);
    v22(&v23[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v19);
    (v21)(v17, v16, v19);
    v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v25 = swift_allocObject();
    v131(v25 + v24, v17, v19);
    outlined init with copy of URL?(v124, v125);
    v26 = (*(v128 + 80) + 16) & ~*(v128 + 80);
    v27 = swift_allocObject();
    outlined init with take of URL?(v125, v27 + v26);
    v28 = swift_allocObject();
    *(v28 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    *(v28 + 24) = v25;
    v29 = &v23[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v29 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
    v29[1] = v28;
    v30 = &v23[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v30 = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    v30[1] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    *(v31 + 24) = v25;
    v32 = &v23[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v32 = closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    v32[1] = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    *(v33 + 24) = v27;
    v34 = &v23[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v34 = closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
    v34[1] = v33;
    v23[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
    v23[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v140;
    *(v0 + 80) = v23;
    *(v0 + 88) = v137;

    v35 = objc_msgSendSuper2((v0 + 80), sel_init);
    outlined destroy of UTType?(v124, &_s10Foundation3URLVSgMd);
    v36 = *(v18 + 8);
    v36(v16, v19);
    v143[3] = v137;
    v143[4] = lazy protocol witness table accessor for type Video and conformance Video(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);

    *v143 = v35;
    v36(v146, v19);
  }

  else
  {
    v37 = *(v0 + 272);
    v38 = *(v0 + 280);
    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    (*(v0 + 328))(v37, *(v0 + 208), v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    v41 = *(v40 + 72);
    v42 = *(v40 + 80);
    v149 = ~v42;
    v151 = v42;
    v43 = (v42 + 32) & ~v42;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_21658CA60;
    v45 = v44 + v43;
    v46 = *(v40 + 16);
    v46(v45, v38, v39);
    v147 = v46;
    v46(v45 + v41, v37, v39);
    *(v0 + 128) = 0;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [objc_opt_self() livePhotoWithResourceFileURLs:isa error:v0 + 128];

    v49 = *(v0 + 128);
    v50 = one-time initialization token for viewModel;
    if (v49)
    {
      v51 = v49;
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static CommonLogger.viewModel);
      v53 = v51;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v49;
        v58 = v53;
        _os_log_impl(&dword_21607C000, v54, v55, "[closestExactImage] failed to create PHLivePhoto, falling back to still, error=%@", v56, 0xCu);
        outlined destroy of UTType?(v57, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v57, -1, -1);
        MEMORY[0x21CE94770](v56, -1, -1);
      }

      v123 = *(v0 + 328);
      v138 = *(v0 + 288);
      v141 = *(v0 + 296);
      v129 = *(v0 + 361);
      v59 = *(v0 + 280);
      v135 = v59;
      v144 = *(v0 + 272);
      v60 = *(v0 + 256);
      v61 = *(v0 + 264);
      v62 = *(v0 + 232);
      v117 = v61;
      v126 = v62;
      v63 = *(v0 + 224);
      v64 = *(v0 + 200);
      v119 = *(v0 + 192);
      v121 = *(v0 + 168);
      v132 = *(v0 + 136);

      v147(v61, v59, v63);
      v65 = *(v62 + 56);
      v65(v64, 1, 1, v63);
      v66 = type metadata accessor for Image();
      v67 = objc_allocWithZone(v66);
      UUID.init()();
      v65(&v67[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v63);
      v65(&v67[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v63);
      v147(v60, v61, v63);
      v68 = swift_allocObject();
      v123(v68 + ((v151 + 16) & v149), v60, v63);
      outlined init with copy of URL?(v64, v119);
      v69 = (*(v121 + 80) + 16) & ~*(v121 + 80);
      v70 = swift_allocObject();
      outlined init with take of URL?(v119, v70 + v69);
      v71 = swift_allocObject();
      *(v71 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      *(v71 + 24) = v68;
      v72 = &v67[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
      *v72 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
      v72[1] = v71;
      v73 = &v67[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
      *v73 = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      v73[1] = v70;
      v74 = swift_allocObject();
      *(v74 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      *(v74 + 24) = v68;
      v75 = &v67[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
      *v75 = closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      v75[1] = v74;
      v76 = swift_allocObject();
      *(v76 + 16) = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      *(v76 + 24) = v70;
      v77 = &v67[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
      *v77 = closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      v77[1] = v76;
      v67[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
      v67[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v129;
      *(v0 + 112) = v67;
      *(v0 + 120) = v66;

      v78 = objc_msgSendSuper2((v0 + 112), sel_init);
      outlined destroy of UTType?(v64, &_s10Foundation3URLVSgMd);
      v79 = *(v126 + 8);
      v79(v117, v63);
      v132[3] = v66;
      v132[4] = lazy protocol witness table accessor for type Video and conformance Video(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);

      *v132 = v78;
      v79(v144, v63);
      v79(v135, v63);
    }

    else
    {
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v80 = *(v0 + 160);
      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, static CommonLogger.viewModel);
      v82 = v80;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = *(v0 + 160);
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v153[0] = v87;
        *v86 = 136315138;
        v88 = [v85 localIdentifier];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v153);

        *(v86 + 4) = v92;
        _os_log_impl(&dword_21607C000, v83, v84, "[closestExactImage] sucessfully created PHLivePhoto, localID=%s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x21CE94770](v87, -1, -1);
        MEMORY[0x21CE94770](v86, -1, -1);
      }

      v122 = *(v0 + 328);
      v142 = *(v0 + 288);
      v145 = *(v0 + 296);
      v130 = *(v0 + 361);
      v93 = *(v0 + 256);
      v94 = *(v0 + 264);
      v95 = *(v0 + 232);
      v133 = v95;
      v134 = *(v0 + 272);
      v96 = *(v0 + 224);
      v97 = *(v0 + 200);
      v118 = *(v0 + 192);
      v120 = *(v0 + 168);
      v136 = *(v0 + 136);
      v139 = *(v0 + 280);
      (v147)(v94);
      v98 = *(v95 + 56);
      v98(v97, 1, 1, v96);
      v127 = type metadata accessor for Image();
      v99 = objc_allocWithZone(v127);
      UUID.init()();
      v98(&v99[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v96);
      v98(&v99[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v96);
      v147(v93, v94, v96);
      v100 = swift_allocObject();
      v122(v100 + ((v151 + 16) & v149), v93, v96);
      outlined init with copy of URL?(v97, v118);
      v101 = (*(v120 + 80) + 16) & ~*(v120 + 80);
      v102 = swift_allocObject();
      outlined init with take of URL?(v118, v102 + v101);
      v103 = swift_allocObject();
      *(v103 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      *(v103 + 24) = v100;
      v104 = &v99[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
      *v104 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
      v104[1] = v103;
      v105 = &v99[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
      *v105 = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      v105[1] = v102;
      v106 = swift_allocObject();
      *(v106 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      *(v106 + 24) = v100;
      v107 = &v99[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
      *v107 = closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      v107[1] = v106;
      v108 = swift_allocObject();
      *(v108 + 16) = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      *(v108 + 24) = v102;
      v109 = &v99[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
      *v109 = closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
      v109[1] = v108;
      v99[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
      v99[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v130;
      *(v0 + 96) = v99;
      *(v0 + 104) = v127;

      v152 = objc_msgSendSuper2((v0 + 96), sel_init);
      outlined destroy of UTType?(v97, &_s10Foundation3URLVSgMd);
      v110 = *(v133 + 8);
      v110(v94, v96);
      v147(v94, v134, v96);
      LOBYTE(v153[0]) = v130;
      v111 = objc_allocWithZone(type metadata accessor for Video());
      v112 = Video.init(url:assetClass:)(v94, v153);
      v113 = type metadata accessor for PairedPhotoVideo();
      v114 = swift_allocObject();
      *(v114 + 24) = 0;
      *(v114 + 16) = 0;
      swift_beginAccess();
      *(v114 + 16) = v152;
      swift_beginAccess();
      *(v114 + 24) = v112;
      v136[3] = v113;
      v136[4] = lazy protocol witness table accessor for type Video and conformance Video(&lazy protocol witness table cache variable for type PairedPhotoVideo and conformance PairedPhotoVideo, type metadata accessor for PairedPhotoVideo);

      *v136 = v114;
      v110(v134, v96);
      v110(v139, v96);
    }
  }

  v115 = *(v0 + 8);

  return v115();
}

{

  return MEMORY[0x2822009F8](PHAsset.closestExactImage(type:viewport:assetClass:), 0, 0);
}

{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.viewModel);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    if (v9)
    {
      v12 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v47[0] = v14;
      *v13 = 136315138;
      v15 = [v12 localIdentifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v47);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_21607C000, v7, v8, "[closestExactImage] failed to locate video resource for video, localID=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v20 = *(v0 + 136);
    *(v20 + 32) = 0;
    *v20 = 0u;
    *(v20 + 16) = 0u;
  }

  else
  {
    (*(v2 + 32))(*(v0 + 248), v3, v1);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 160);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static CommonLogger.viewModel);
    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 160);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47[0] = v28;
      *v27 = 136315138;
      v29 = [v26 localIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v47);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_21607C000, v24, v25, "[closestExactImage] sucessfully found matching video, localID=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CE94770](v28, -1, -1);
      MEMORY[0x21CE94770](v27, -1, -1);
    }

    v34 = *(v0 + 288);
    v35 = *(v0 + 296);
    v36 = *(v0 + 361);
    v37 = *(v0 + 264);
    v38 = *(v0 + 248);
    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    v41 = *(v0 + 136);
    (*(v40 + 16))(v37, v38, v39);
    LOBYTE(v47[0]) = v36;
    v42 = type metadata accessor for Video();
    v43 = objc_allocWithZone(v42);
    v44 = Video.init(url:assetClass:)(v37, v47);
    v41[3] = v42;
    v41[4] = lazy protocol witness table accessor for type Video and conformance Video(&lazy protocol witness table cache variable for type Video and conformance Video, type metadata accessor for Video);

    *v41 = v44;
    (*(v40 + 8))(v38, v39);
  }

  v45 = *(v0 + 8);

  return v45();
}

Swift::Int PhotosUtilities.AssetSuperType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in static PhotosUtilities.phAsset(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7PHAssetCSgs5NeverOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in static PhotosUtilities.phAsset(from:), v15);
}

uint64_t closure #1 in closure #1 in static PhotosUtilities.phAsset(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in static PhotosUtilities.phAsset(from:), 0, 0);
}

uint64_t closure #1 in closure #1 in static PhotosUtilities.phAsset(from:)()
{
  v24 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
  [v3 setIncludeGuestAssets_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21658CA50;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v4 fetchAssetsWithLocalIdentifiers:isa options:v3];

  if ([v7 count] < 1)
  {
    goto LABEL_11;
  }

  v8 = [v7 fetchedObjects];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for PHAsset);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

LABEL_11:
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static CommonLogger.viewModel);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[3];
      v18 = v0[4];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v23);
      _os_log_impl(&dword_21607C000, v16, v17, "[MutablePhotoViewModel] Cannot fetch PHAsset for local ID %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);
    }

    v0[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7PHAssetCSgs5NeverOGMd);
    CheckedContinuation.resume(returning:)();
    goto LABEL_16;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x21CE93180](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v0[2] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7PHAssetCSgs5NeverOGMd);
  CheckedContinuation.resume(returning:)();

  v3 = v14;
LABEL_16:

  v22 = v0[1];

  return v22();
}

uint64_t static PhotosUtilities.assetType(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](static PhotosUtilities.assetType(from:), 0, 0);
}

uint64_t static PhotosUtilities.assetType(from:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7PHAssetCSgMd);
  *v4 = v0;
  v4[1] = static PhotosUtilities.assetType(from:);

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x2874657373416870, 0xEE00293A6D6F7266, closure #1 in static PhotosUtilities.phAsset(from:)partial apply, v3, v5);
}

{

  return MEMORY[0x2822009F8](static PhotosUtilities.assetType(from:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_14:
    v3 = 3;
    goto LABEL_15;
  }

  v2 = [*(v0 + 16) mediaType];
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = [v1 isLivePhoto];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [v1 duration];
  v5 = v4;
  v6 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if ((v7 & 1) == 0)
  {
    if (v5 >= v6)
    {
      goto LABEL_7;
    }

LABEL_19:

    v3 = 2;
    goto LABEL_15;
  }

  if (v5 < 300.0)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.viewModel);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    [v9 duration];
    *(v12 + 4) = v13;
    *(v12 + 12) = 2048;
    v14 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v15)
    {
      v14 = 300.0;
    }

    *(v12 + 14) = v14;
    _os_log_impl(&dword_21607C000, v10, v11, "[MutableVideoViewModel] (Force stillPhoto) video length exceeded, duration=%f, threshold=%f", v12, 0x16u);
    MEMORY[0x21CE94770](v12, -1, -1);

    v3 = 0;
  }

  else
  {

    v3 = 0;
  }

LABEL_15:
  **(v0 + 24) = v3;
  v16 = *(v0 + 8);

  return v16();
}

id closure #1 in static PHAsset.eligibleResources(resources:viewport:stillFrame:)(id *a1, int a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v27[-v16];
  v18 = *a1;
  result = [*a1 pixelWidth];
  v20 = a3 * 3.0;
  if (COERCE__INT64(fabs(a3 * 3.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = a2;
  if (result >= v20)
  {
    result = [v18 pixelHeight];
    v22 = a4 * 3.0;
    if (COERCE__INT64(fabs(a4 * 3.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v22 > -9.22337204e18)
      {
        if (v22 < 9.22337204e18)
        {
          v21 = result >= v22;
          goto LABEL_10;
        }

LABEL_22:
        __break(1u);
        return result;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = 0;
LABEL_10:
  v23 = [v18 uniformTypeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UTType.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of UTType?(v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v24 = (v12 + 8);
    if (v28)
    {
      static UTType.image.getter();
    }

    else
    {
      static UTType.audiovisualContent.getter();
    }

    v25 = UTType.conforms(to:)();
    v26 = *v24;
    (*v24)(v15, v11);
    v26(v17, v11);
    return (v21 & v25);
  }

  return v21;
}

PHAssetResource_optional __swiftcall PHAsset.closestAndSmallestResource(viewport:stillFrame:)(CGSize viewport, Swift::Bool stillFrame)
{
  height = viewport.height;
  width = viewport.width;
  v43 = v2;
  v6 = [objc_opt_self() assetResourcesForAsset:v2 includeDerivatives:1];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for PHAssetResource);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = 0;
  v48 = 0xE000000000000000;
  v42 = stillFrame;
  v8 = specialized static PHAsset.eligibleResources(resources:viewport:stillFrame:)(v7, stillFrame, width, height);

  v9 = v8;
  v45 = v8 >> 62;
  if (v8 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    v9 = v8;
    v10 = v20;
    v11 = v8;
    if (!v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v8;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = 0;
  v13 = v9 & 0xC000000000000001;
  do
  {
    if (v13)
    {
      v14 = MEMORY[0x21CE93180](v12);
    }

    else
    {
      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    ++v12;
    v46[0] = 123;
    v46[1] = 0xE100000000000000;
    v16 = [v14 uniformTypeIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    MEMORY[0x21CE92100](v17, v19);

    MEMORY[0x21CE92100](125, 0xE100000000000000);
    MEMORY[0x21CE92100](123, 0xE100000000000000);

    v9 = v11;
  }

  while (v10 != v12);
LABEL_10:
  v21 = v9;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static CommonLogger.viewModel);
  v23 = v48;

  v24 = v43;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v44 = v47;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46[0] = v28;
    *v27 = 67109890;
    *(v27 + 4) = v42;
    *(v27 + 8) = 2048;
    v29 = v11;
    if (v45)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 10) = v30;

    *(v27 + 18) = 2080;
    v32 = [v24 localIdentifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v46);

    *(v27 + 20) = v36;
    *(v27 + 28) = 2080;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v23, v46);

    *(v27 + 30) = v37;
    _os_log_impl(&dword_21607C000, v25, v26, "[closestExactImage] found eligible resources, stillFrame=%{BOOL}d, count=%ld, localID=%s, eligibleTypesString=%s", v27, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v28, -1, -1);
    MEMORY[0x21CE94770](v27, -1, -1);

    if (!v45)
    {
LABEL_20:
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_21;
      }

LABEL_17:

LABEL_31:
      v41 = 0;
      goto LABEL_34;
    }
  }

  else
  {

    v29 = v21;
    if (!v45)
    {
      goto LABEL_20;
    }
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_17;
  }

LABEL_21:

  v46[0] = specialized Array._copyToContiguousArray()(v38);
  v11 = 0;
  specialized MutableCollection<>.sort(by:)(v46);

  v8 = v46[0];
  if (v46[0] < 0 || (v46[0] & 0x4000000000000000) != 0)
  {
LABEL_29:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if (!*(v46[0] + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

LABEL_24:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x21CE93180](0, v8);
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);

      __break(1u);
      goto LABEL_34;
    }

    v39 = *(v8 + 32);
  }

  v40 = v39;

  v41 = v40;
LABEL_34:
  result.value.super.isa = v41;
  result.is_nil = v31;
  return result;
}

uint64_t PHAsset.closestExactResourceURL(resource:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](PHAsset.closestExactResourceURL(resource:), 0, 0);
}

uint64_t PHAsset.closestExactResourceURL(resource:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_opt_self() defaultManager];
  v0[5] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9808]) init];
  v0[6] = v4;
  [v4 setNetworkAccessAllowed_];
  [v4 setDownloadIntent_];
  [v4 setDownloadPriority_];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *v6 = v0;
  v6[1] = PHAsset.closestExactResourceURL(resource:);
  v8 = v0[2];

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000022, 0x8000000216579A80, partial apply for closure #1 in PHAsset.closestExactResourceURL(resource:), v5, v7);
}

{

  return MEMORY[0x2822009F8](PHAsset.closestExactResourceURL(resource:), 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in PHAsset.closestExactResourceURL(resource:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = a2;
  v26 = a4;
  v24 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5NeverOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a5;
  v15[4] = v11;
  v31 = partial apply for closure #1 in closure #1 in PHAsset.closestExactResourceURL(resource:);
  v32 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  v30 = &block_descriptor_4;
  v16 = _Block_copy(&aBlock);
  v23 = a3;
  v17 = a5;

  (*(v8 + 16))(v10, v24, v7);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v11;
  (*(v8 + 32))(v19 + v18, v10, v7);
  v31 = partial apply for closure #2 in closure #1 in PHAsset.closestExactResourceURL(resource:);
  v32 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v30 = &block_descriptor_97;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  [v25 requestFileURLForAssetResource:v23 options:v26 urlReceivedHandler:v16 completionHandler:v20];
  _Block_release(v20);
  _Block_release(v16);
}

uint64_t closure #1 in closure #1 in PHAsset.closestExactResourceURL(resource:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = swift_projectBox();
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static CommonLogger.viewModel);
  v43 = *(v10 + 16);
  v43(v12, a1, v9);
  v14 = a2;
  v15 = a3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v8;
    v19 = v18;
    v40 = swift_slowAlloc();
    v45[0] = v40;
    *v19 = 136316418;
    v39 = v17;
    v20 = URL.path(percentEncoded:)(1);
    v41 = a1;
    (*(v10 + 8))(v12, v9);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20._countAndFlagsBits, v20._object, v45);

    *(v19 + 4) = v21;
    *(v19 + 12) = 1024;
    LODWORD(v21) = [v14 isLocallyAvailable];

    *(v19 + 14) = v21;
    *(v19 + 18) = 2048;
    v22 = [v14 pixelWidth];

    *(v19 + 20) = v22;
    *(v19 + 28) = 2048;
    v23 = [v14 pixelHeight];

    *(v19 + 30) = v23;
    *(v19 + 38) = 2080;
    v24 = [v15 localIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v45);

    *(v19 + 40) = v28;
    *(v19 + 48) = 2080;
    a1 = v41;
    v29 = [v14 uniformTypeIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v45);

    *(v19 + 50) = v33;
    _os_log_impl(&dword_21607C000, v16, v39, "[closestExactImage] (requestFileURL) received URL=%s, isLocallyAvailable=%{BOOL}d, size={%ldx%ld}, localID=%s, type=%s", v19, 0x3Au);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v34, -1, -1);
    v35 = v19;
    v8 = v42;
    MEMORY[0x21CE94770](v35, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v43(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v36 = v44;
  swift_beginAccess();
  return outlined assign with take of URL?(v8, v36);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in closure #1 in PHAsset.closestExactResourceURL(resource:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_2811A6000;
  if (a1)
  {
    v17 = a1;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static CommonLogger.viewModel);
    v19 = a1;
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v54 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v58[0] = v25;
      *v24 = 136315394;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v58);
      v55 = v9;
      v29 = v12;
      v30 = v28;

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v31 = [v20 localIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v58);
      v12 = v29;
      v9 = v55;

      *(v24 + 14) = v35;
      _os_log_impl(&dword_21607C000, v21, v22, "[closestExactImage] (requestFileURL) failed to fetch resource from photos, %s, localID=%s", v24, 0x16u);
      swift_arrayDestroy();
      v36 = v25;
      v16 = &unk_2811A6000;
      MEMORY[0x21CE94770](v36, -1, -1);
      v37 = v24;
      a2 = v54;
      MEMORY[0x21CE94770](v37, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v38 = swift_projectBox();
    swift_beginAccess();
    outlined init with copy of URL?(v38, v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v15, v11, v12);
      (*(v13 + 16))(v9, v15, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5NeverOGMd);
      CheckedContinuation.resume(returning:)();
      return (*(v13 + 8))(v15, v12);
    }

    outlined destroy of UTType?(v11, &_s10Foundation3URLVSgMd);
  }

  if (v16[180] != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static CommonLogger.viewModel);
  v40 = a2;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v12;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = 136315138;
    v46 = [v40 localIdentifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v57);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_21607C000, v41, v42, "[closestExactImage] (requestFileURL) failed to construct UIImage from fetched resource, localID=%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x21CE94770](v45, -1, -1);
    v51 = v44;
    v12 = v43;
    MEMORY[0x21CE94770](v51, -1, -1);
  }

  (*(v13 + 56))(v9, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

void __swiftcall PHAsset.squareCropRect(viewport:)(__C::CGRect_optional *__return_ptr retstr, CGSize viewport)
{
  if (viewport.width > viewport.height)
  {
    width = viewport.width;
  }

  else
  {
    width = viewport.height;
  }

  [objc_opt_self() preferredContentsRectForAsset:v2 targetSize:{width, width}];
  retstr->value.origin.x = v5;
  retstr->value.origin.y = v6;
  retstr->value.size.width = v7;
  retstr->value.size.height = v8;
  retstr->is_nil = 0;
}

void __swiftcall PHAsset.landscapeCropRect(viewport:)(__C::CGRect_optional *__return_ptr retstr, CGSize viewport)
{
  if (viewport.width > viewport.height)
  {
    width = viewport.width;
  }

  else
  {
    width = viewport.height;
  }

  [objc_opt_self() preferredContentsRectForAsset:v2 targetSize:{width + width, width}];
  retstr->value.origin.x = v5;
  retstr->value.origin.y = v6;
  retstr->value.size.width = v7;
  retstr->value.size.height = v8;
  retstr->is_nil = 0;
}

void __swiftcall PHAsset.portraitCropRect(viewport:)(__C::CGRect_optional *__return_ptr retstr, CGSize viewport)
{
  if (viewport.width > viewport.height)
  {
    width = viewport.width;
  }

  else
  {
    width = viewport.height;
  }

  [objc_opt_self() preferredContentsRectForAsset:v2 targetSize:{width, width + width}];
  retstr->value.origin.x = v5;
  retstr->value.origin.y = v6;
  retstr->value.size.width = v7;
  retstr->value.size.height = v8;
  retstr->is_nil = 0;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@out URL)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t lazy protocol witness table accessor for type Video and conformance Video(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)(v4, a1);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)(v4, a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out URL)@<X0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))();
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for PHAssetResource);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, void ***a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_92:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v97 = *(v6 + 2);
      if (v97 >= 2)
      {
        while (*a3)
        {
          v98 = *&v6[16 * v97];
          v99 = *&v6[16 * v97 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[v98], &(*a3)[*&v6[16 * v97 + 16]], &(*a3)[v99], v9);
          if (v114)
          {
            goto LABEL_102;
          }

          if (v99 < v98)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          }

          if (v97 - 2 >= *(v6 + 2))
          {
            goto LABEL_122;
          }

          v100 = &v6[16 * v97];
          *v100 = v98;
          *(v100 + 1) = v99;
          specialized Array.remove(at:)(v97 - 1);
          v97 = *(v6 + 2);
          if (v97 <= 1)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_134;
      }

LABEL_102:

      return;
    }

LABEL_130:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_94;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  while (1)
  {
    v9 = v5++;
    v112 = v6;
    if (v5 < v4)
    {
      v106 = v4;
      v10 = v9;
      v9 = *a3;
      v102 = v10;
      v11 = (*a3)[v10];
      v12 = (*a3)[v5];
      v13 = v11;
      v14 = [v12 v7[257]];
      v15 = [v12 v8[258]];
      v110 = v14 * v15;
      if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
      {
        goto LABEL_124;
      }

      v16 = [v13 v7[257]];
      v17 = [v13 v8[258]];

      v108 = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        goto LABEL_125;
      }

      v18 = (v102 + 2);
      v19 = v102;
      v9 += 8 * v102 + 16;
      while (1)
      {
        v5 = v106;
        v7 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (v106 == v18)
        {
          break;
        }

        v20 = *(v9 - 8);
        v21 = *v9;
        v22 = v20;
        v23 = [v21 pixelWidth];
        v6 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        v24 = [v21 pixelHeight];
        v25 = v23 * v24;
        if ((v23 * v24) >> 64 != (v23 * v24) >> 63)
        {
          goto LABEL_105;
        }

        v26 = [v22 pixelWidth];
        v27 = [v22 pixelHeight];

        if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
        {
          goto LABEL_106;
        }

        ++v18;
        v9 += 8;
        v6 = v112;
        if (v110 < v108 == v25 >= v26 * v27)
        {
          v5 = (v18 - 1);
          v7 = &selRef_setDeliversTouchesForGesturesToSuperview_;
          break;
        }
      }

      v9 = v102;
      if (v110 < v108)
      {
        if (v5 < v102)
        {
          goto LABEL_129;
        }

        if (v102 < v5)
        {
          v28 = 8 * v5 - 8;
          v29 = v5;
          v30 = v102;
          do
          {
            if (v30 != --v29)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v31 = v32[v19];
              v32[v19] = *(v32 + v28);
              *(v32 + v28) = v31;
            }

            v30 = (v30 + 1);
            v28 -= 8;
            ++v19;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v5 < v33)
    {
      if (__OFSUB__(v5, v9))
      {
        goto LABEL_126;
      }

      if (v5 - v9 < a4)
      {
        v34 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_127;
        }

        if (v34 >= v33)
        {
          v34 = a3[1];
        }

        if (v34 < v9)
        {
          goto LABEL_128;
        }

        if (v5 != v34)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v5 < v9)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v52 = *(v6 + 2);
    v51 = *(v6 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v6);
    }

    *(v6 + 2) = v53;
    v54 = &v6[16 * v52];
    *(v54 + 4) = v9;
    *(v54 + 5) = v5;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v6 + 4);
          v58 = *(v6 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_61:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v6[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v6[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v83 = &v6[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_75:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v6[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_82:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          goto LABEL_107;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v95 = *&v6[16 * v94 + 32];
        v9 = *&v6[16 * v56 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[v95], &(*a3)[*&v6[16 * v56 + 32]], &(*a3)[v9], v55);
        if (v114)
        {
          goto LABEL_102;
        }

        if (v9 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        }

        if (v94 >= *(v6 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v6[16 * v94];
        *(v96 + 4) = v95;
        *(v96 + 5) = v9;
        specialized Array.remove(at:)(v56);
        v53 = *(v6 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v6[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v6[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v6[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v4 = a3[1];
    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v5 >= v4)
    {
      goto LABEL_92;
    }
  }

  v35 = *a3;
  v36 = &(*a3)[v5 - 1];
  v103 = v9;
  v37 = (v9 - v5);
  v105 = v34;
LABEL_32:
  v109 = v36;
  v111 = v5;
  v38 = v37;
  v39 = v35[v5];
  v107 = v38;
  v40 = v38;
  while (1)
  {
    v41 = *v36;
    v42 = v39;
    v43 = v41;
    v44 = [v42 v7[257]];
    v6 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v45 = [v42 pixelHeight];
    v9 = v44 * v45;
    if ((v44 * v45) >> 64 != (v44 * v45) >> 63)
    {
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
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
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v46 = [v43 v7[257]];
    v47 = [v43 pixelHeight];

    v48 = v46 * v47;
    if ((v46 * v47) >> 64 != (v46 * v47) >> 63)
    {
      goto LABEL_104;
    }

    v7 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v9 >= v48)
    {
LABEL_31:
      v5 = v111 + 1;
      v36 = v109 + 8;
      v37 = v107 - 1;
      if ((v111 + 1) == v105)
      {
        v5 = v105;
        v6 = v112;
        v9 = v103;
        goto LABEL_41;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v49 = *v36;
    v39 = *(v36 + 8);
    *v36 = v39;
    *(v36 + 8) = v49;
    v36 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

void specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = a2 - __dst;
  v6 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v6 = a2 - __dst;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 < v9 >> 3)
  {
    v11 = a2;
    v12 = __src;
    v13 = __dst;
    if (__src != __dst || &__dst[v7] <= __src)
    {
      memmove(__src, __dst, 8 * v7);
    }

    v14 = &v12[v7];
    if (v5 >= 8 && v11 < v4)
    {
      v15 = v11;
      v16 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      v42 = v14;
      while (1)
      {
        v44 = v15;
        v17 = *v12;
        v18 = *v15;
        v19 = v12;
        v20 = v17;
        v21 = [v18 v16[257]];
        v22 = [v18 pixelHeight];
        v23 = v21 * v22;
        if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
        {
          goto LABEL_46;
        }

        v24 = [v20 v16[257]];
        v25 = [v20 pixelHeight];

        if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
        {
          goto LABEL_47;
        }

        if (v23 >= v24 * v25)
        {
          break;
        }

        v26 = v44;
        v15 = v44 + 1;
        v12 = v19;
        if (v13 != v44)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v13;
        v14 = v42;
        if (v12 < v42)
        {
          v16 = &selRef_setDeliversTouchesForGesturesToSuperview_;
          if (v15 < v4)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v26 = v19;
      v12 = v19 + 1;
      v15 = v44;
      if (v13 == v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v13 = *v26;
      goto LABEL_19;
    }

LABEL_21:
    a2 = v13;
    goto LABEL_41;
  }

  if (__src != a2 || &a2[v10] <= __src)
  {
    v27 = a2;
    v28 = __src;
    memmove(__src, a2, 8 * v10);
    __src = v28;
    a2 = v27;
  }

  v43 = __src;
  v14 = &__src[v10];
  if (v8 < 8)
  {
    v12 = __src;
    goto LABEL_41;
  }

  v12 = __src;
  if (a2 <= __dst)
  {
LABEL_41:
    if (a2 != v12 || a2 >= (v12 + ((v14 - v12 + (v14 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v12, 8 * ((v14 - v12) / 8));
    }

    return;
  }

LABEL_27:
  v45 = a2;
  v29 = a2 - 1;
  --v4;
  v30 = v14;
  v41 = a2 - 1;
  while (1)
  {
    v31 = *--v30;
    v32 = *v29;
    v33 = v31;
    v34 = v32;
    v35 = [v33 pixelWidth];
    v36 = [v33 pixelHeight];
    v37 = v35 * v36;
    if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
    {
      break;
    }

    v38 = [v34 pixelWidth];
    v39 = [v34 pixelHeight];

    if ((v38 * v39) >> 64 != (v38 * v39) >> 63)
    {
      goto LABEL_48;
    }

    if (v37 < v38 * v39)
    {
      v12 = v43;
      if (v4 + 1 != v45)
      {
        *v4 = *v41;
      }

      if (v14 <= v43 || (a2 = v41, v41 <= __dst))
      {
        a2 = v41;
        goto LABEL_41;
      }

      goto LABEL_27;
    }

    v12 = v43;
    if (v4 + 1 != v14)
    {
      *v4 = *v30;
    }

    --v4;
    v14 = v30;
    v29 = v41;
    if (v30 <= v43)
    {
      v14 = v30;
      a2 = v45;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t specialized static PHAsset.eligibleResources(resources:viewport:stillFrame:)(unint64_t a1, char a2, double a3, double a4)
{
  v16 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CE93180](v9, a1);
      }

      else
      {
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_15;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v15 = v11;
      if (closure #1 in static PHAsset.eligibleResources(resources:viewport:stillFrame:)(&v15, a2 & 1, a3, a4))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v9;
      if (v13 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized static PhotosUtilities.cloudIdentifier(from:)(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() sharedPhotoLibrary];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21658CA50;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = PHPhotoLibrary.cloudIdentifierMappings(forLocalIdentifiers:)();

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) == 0))
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static CommonLogger.viewModel);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
      _os_log_impl(&dword_21607C000, v23, v24, "[MutablePhotoViewModel] Cannot locate cloud ID for local ID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x21CE94770](v26, -1, -1);
      MEMORY[0x21CE94770](v25, -1, -1);
    }

    return 0;
  }

  v9 = *(v6 + 56) + 16 * v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  outlined copy of Result<CKRecord, Error>(*v9);

  v12 = one-time initialization token for viewModel;
  if (v11)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static CommonLogger.viewModel);

    outlined copy of Result<CKRecord, Error>(v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = v19;
      outlined consume of Result<CKRecord, Error>(v10);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v38);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_21607C000, v14, v15, "[MutablePhotoViewModel] Failed to retrieve cloud ID for local ID=%s, %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v17, -1, -1);
      MEMORY[0x21CE94770](v16, -1, -1);
    }

    else
    {

      outlined consume of Result<CKRecord, Error>(v10);
    }

    outlined consume of Result<CKRecord, Error>(v10);
    return 0;
  }

  v28 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static CommonLogger.viewModel);

  outlined copy of Result<CKRecord, Error>(v10);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  outlined consume of Result<CKRecord, Error>(v10);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v32 = 136315394;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v28;
    *v33 = v10;
    v35 = v28;
    _os_log_impl(&dword_21607C000, v30, v31, "[MutablePhotoViewModel] Map local ID=%s to cloud ID %@", v32, 0x16u);
    outlined destroy of UTType?(v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x21CE94770](v34, -1, -1);
    MEMORY[0x21CE94770](v32, -1, -1);
  }

  v36 = [v28 stringValue];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined consume of Result<CKRecord, Error>(v10);
  outlined consume of Result<CKRecord, Error>(v10);
  return v37;
}

unint64_t lazy protocol witness table accessor for type PhotosUtilities.AssetSuperType and conformance PhotosUtilities.AssetSuperType()
{
  result = lazy protocol witness table cache variable for type PhotosUtilities.AssetSuperType and conformance PhotosUtilities.AssetSuperType;
  if (!lazy protocol witness table cache variable for type PhotosUtilities.AssetSuperType and conformance PhotosUtilities.AssetSuperType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotosUtilities.AssetSuperType and conformance PhotosUtilities.AssetSuperType);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #1 in PHAsset.closestExactResourceURL(resource:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5NeverOGMd) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #2 in closure #1 in PHAsset.closestExactResourceURL(resource:)(a1, v4, v5, v6);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static PhotosUtilities.phAsset(from:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7PHAssetCSgs5NeverOGMd) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in static PhotosUtilities.phAsset(from:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t Interstitial.Asset.metadata.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Interstitial.AssetMetadata?(v1, *(v0 + 16));
  return v1;
}

uint64_t outlined copy of Interstitial.AssetMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double Interstitial.Asset.init(viewModel:view:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  specialized Interstitial.Asset.init(viewModel:view:)(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v4;
  result = *&v7;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  return result;
}

Swift::Void __swiftcall Interstitial.Asset.resetMetadata()()
{
  v1 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(*(v0 + 40));
  v3 = v2;
  v5 = v4;
  v7 = v6;
  outlined consume of Interstitial.AssetMetadata?(*(v0 + 8), *(v0 + 16));
  *(v0 + 8) = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = v7;
}

uint64_t Interstitial.Item.id.getter()
{
  if (v0[6] < 0)
  {
    return UUID.uuidString.getter();
  }

  v1 = *v0;

  return v1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance Interstitial.Item@<X0>(uint64_t *a1@<X8>)
{
  if (v1[6] < 0)
  {
    v3 = UUID.uuidString.getter();
    result = v5;
  }

  else
  {
    v3 = *v1;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t InterstitialCollectionViewController.presenter.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter);
  a1[1] = v2;
}

void *InterstitialCollectionViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InterstitialCollectionViewController.collectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t InterstitialCollectionViewController.sections.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x277D85000] & *v1) + 0xF8))(v4);
}

uint64_t (*InterstitialCollectionViewController.sections.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return InterstitialCollectionViewController.sections.modify;
}

uint64_t InterstitialCollectionViewController.sections.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0xF8))(result);
  }

  return result;
}

uint64_t InterstitialCollectionViewController.selectionTracking.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InterstitialCollectionViewController.selectionTracking.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

id InterstitialCollectionViewController.__allocating_init(presenter:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = *a1;
  v4 = a1[1];
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter];
  *v6 = v5;
  *(v6 + 1) = v4;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id InterstitialCollectionViewController.init(presenter:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *&v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter];
  *v4 = v2;
  *(v4 + 1) = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InterstitialCollectionViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

id InterstitialCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InterstitialCollectionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InterstitialCollectionViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for InterstitialCollectionViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  InterstitialCollectionViewController.configureCollectionView()();
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource);
  *(v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource) = v2;

  (*((*v1 & *v0) + 0xF8))();
}

Swift::Void __swiftcall InterstitialCollectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InterstitialCollectionViewController();
  v24.receiver = v1;
  v24.super_class = v7;
  v8 = objc_msgSendSuper2(&v24, sel_viewWillAppear_, a1);
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v8);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 indexPathsForVisibleItems];

    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *((*v9 & *v1) + 0x100);
      v22 = v13;
      v23 = v15;
      v18 = *(v4 + 16);
      v16 = v4 + 16;
      v17 = v18;
      v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v20 = *(v16 + 56);
      v21 = (v16 - 8);
      do
      {
        v17(v6, v19, v3);
        v23(v6);
        (*v21)(v6, v3);
        v19 += v20;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }
}

void InterstitialCollectionViewController.configureCollectionView()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();
  v4 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v3 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v5 = (*((*v2 & *v1) + 0x80))(v4);
  v6 = *((*v2 & *v1) + 0x78);
  v7 = (v6)(v5);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = v6();
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = v6();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  [v13 addSubview_];

  v16 = v6();
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v19 = (v6)(v18);
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  [v19 setAllowsSelection_];

  v21 = v6();
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  [v21 setPrefetchDataSource_];

  v23 = v6();
  if (!v23)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v24 = v23;
  [v23 setDelegate_];
}

Swift::Void __swiftcall InterstitialCollectionViewController.reloadData()()
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVySiSSGMd);
  v40 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v2 = &v40 - v1;
  v3 = NSDiffableDataSourceSnapshot.init()();
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  v41 = v0;
  v5 = v4(v3);
  v6 = *(v5 + 16);
  v43 = v2;
  if (v6)
  {
    rawValue = MEMORY[0x277D84F90];
    v7 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v7;
    v9._rawValue = rawValue;
    v10 = rawValue[2];
    v11 = 32;
    do
    {
      v12 = *(v8 + v11);
      rawValue = v9._rawValue;
      v13 = *(v9._rawValue + 3);
      if (v10 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v10 + 1, 1);
        v8 = v7;
        v9._rawValue = rawValue;
      }

      *(v9._rawValue + 2) = v10 + 1;
      *(v9._rawValue + v10 + 4) = v12;
      v11 += 16;
      ++v10;
      --v6;
    }

    while (v6);

    v2 = v43;
  }

  else
  {

    v9._rawValue = MEMORY[0x277D84F90];
  }

  NSDiffableDataSourceSnapshot.appendSections(_:)(v9);

  v15 = v4(v14);
  v16 = v15;
  v45 = *(v15 + 16);
  if (v45)
  {
    v17 = 0;
    v44 = v15 + 32;
    v18 = MEMORY[0x277D84F90];
    v42 = v15;
    while (v17 < *(v16 + 16))
    {
      v19 = (v44 + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v21 + 16);
      if (v22)
      {
        v47 = *v19;
        v49 = v17;
        rawValue = v18;
        swift_bridgeObjectRetain_n();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v23 = rawValue;
        v48 = v21;
        v24 = (v21 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v27 = v24[5];
          if (v27 < 0)
          {
            v28 = v24[4];
            v51 = v24[3];
            v30 = v24[1];
            v29 = v24[2];
            v50 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
            outlined copy of Interstitial.AssetMetadata?(v26, v30);
            v31 = v28;
            v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
            v33 = UUID.uuidString.getter();
            v50 = v34;
            outlined consume of Interstitial.Item(v25, v26, v30, v29, v51, v28, v27);
            v25 = v33;
            v26 = v50;
          }

          else
          {
          }

          rawValue = v23;
          v36 = v23[2];
          v35 = v23[3];
          if (v36 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
            v23 = rawValue;
          }

          v24 += 7;
          v23[2] = v36 + 1;
          v37 = &v23[2 * v36];
          v37[4] = v25;
          v37[5] = v26;
          --v22;
        }

        while (v22);

        v16 = v42;
        v2 = v43;
        v18 = MEMORY[0x277D84F90];
        v17 = v49;
        v20 = v47;
      }

      else
      {
      }

      ++v17;
      rawValue = v20;
      v53 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      if (v17 == v45)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    v38 = *(v41 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource);
    if (v38)
    {
      v39 = v38;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    }

    (*(v40 + 8))(v2, v46);
  }
}

void InterstitialCollectionViewController.asset(at:)(void *a1@<X8>)
{
  v3 = IndexPath.section.getter();
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= *(v4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v4 + 16 * v3 + 40);

  v6 = IndexPath.item.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 >= *(v5 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v7 = (v5 + 56 * v6);
  v9 = v7[4];
  v8 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  v12 = v7[8];
  v13 = v7[9];
  v14 = v7[10];
  outlined copy of Interstitial.Item(v9, v8, v10, v11, v12, v13, v14);

  if (v14 < 0)
  {
    v16 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    v15 = v9;
  }

  else
  {
    outlined consume of Interstitial.Item(v9, v8, v10, v11, v12, v13, v14);
    v15 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16 = 0;
  }

  *a1 = v15;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v12;
  a1[5] = v13;
  a1[6] = v16;
}

id InterstitialCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InterstitialCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterstitialCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:), 0, 0);
}

uint64_t closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)()
{
  v1 = *(*(v0 + 24) + 40);
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1A8);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:);

    return v6();
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

uint64_t @objc InterstitialCollectionViewController.collectionView(_:prefetchItemsAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for IndexPath();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

uint64_t InterstitialCollectionViewController.isSelected(asset:)(uint64_t a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xC0))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(*(a1 + 40) + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v5);
    swift_unknownObjectRelease();
    return v7 & 1;
  }

  return result;
}

uint64_t InterstitialCollectionViewController.isSelected(assetAt:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x110))(v8);
  v3 = v9;
  if (v9)
  {
    if ((*((*v1 & *v0) + 0xC0))(v2))
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      LOBYTE(v5) = (*(v5 + 24))(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v5);
      outlined destroy of UTType?(v8, &_s9MomentsUI12InterstitialV5AssetVSgMd);
      swift_unknownObjectRelease();
      return v5 & 1;
    }

    outlined destroy of UTType?(v8, &_s9MomentsUI12InterstitialV5AssetVSgMd);
  }

  return 0;
}

void *InterstitialCollectionViewController.toggleSelectionForAsset(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v38, a1);
  v10 = v39;
  if (v39)
  {
    if (((*((*v8 & *v39) + 0x150))(result) & 1) == 0)
    {
      return outlined destroy of UTType?(v38, &_s9MomentsUI12InterstitialV5AssetVSgMd);
    }

    v37 = v5;
    v11 = *((*v8 & *v1) + 0xC0);
    if (v11() && (v13 = v12, v14 = swift_getObjectType(), v15 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, LOBYTE(v13) = (*(v13 + 24))(v10 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v14, v13), v16 = swift_unknownObjectRelease(), (v13 & 1) != 0))
    {
      v17 = (v11)(v16);
      if (!v17)
      {
        goto LABEL_10;
      }

      v19 = v18;
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(v1, v10 + v15, ObjectType, v19);
    }

    else
    {
      v17 = v11();
      if (!v17)
      {
        goto LABEL_10;
      }

      v22 = v21;
      v23 = swift_getObjectType();
      (*(v22 + 8))(v1, v10 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v23, v22);
    }

    v17 = swift_unknownObjectRelease();
LABEL_10:
    if ((v11)(v17))
    {
      v25 = v24;
      v26 = swift_getObjectType();
      v27 = (*(v25 + 32))(v10 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v26, v25);
      swift_unknownObjectRelease();
      if (v27)
      {
        IndexPath.section.getter();
        v28 = IndexPath.section.getter();
        v29 = MEMORY[0x277D85000];
        result = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();
        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v30 = v37;
          if (v28 < result[2])
          {
            v31 = result[2 * v28 + 5];

            v32 = *(v31 + 16);

            if (v32)
            {
              v33 = 0;
              v34 = *((*v29 & *v2) + 0x100);
              v35 = (v30 + 8);
              do
              {
                v36 = v33 + 1;
                MEMORY[0x21CE90B80]();
                v34(v7);
                (*v35)(v7, v4);
                v33 = v36;
              }

              while (v32 != v36);
            }

            return outlined destroy of UTType?(v38, &_s9MomentsUI12InterstitialV5AssetVSgMd);
          }
        }

        __break(1u);
        return result;
      }
    }

    (*((*MEMORY[0x277D85000] & *v1) + 0x100))(a1);
    return outlined destroy of UTType?(v38, &_s9MomentsUI12InterstitialV5AssetVSgMd);
  }

  return result;
}

void *InterstitialCollectionViewController.deselectAsset(at:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v9);
  v5 = v10;
  if (v10)
  {
    if ((*((*v3 & *v1) + 0xC0))(result))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v1, v5 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    (*((*v3 & *v1) + 0x100))(a1);
    return outlined destroy of UTType?(v9, &_s9MomentsUI12InterstitialV5AssetVSgMd);
  }

  return result;
}

void *InterstitialCollectionViewController.selectAsset(at:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v9);
  v5 = v10;
  if (v10)
  {
    if ((*((*v3 & *v1) + 0xC0))(result))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, v5 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    (*((*v3 & *v1) + 0x100))(a1);
    return outlined destroy of UTType?(v9, &_s9MomentsUI12InterstitialV5AssetVSgMd);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void specialized Interstitial.Asset.init(viewModel:view:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = specialized AssetType.init(_:)(v5);
  if (v6 == 20)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = v6;
    v12 = v5;
    v8 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v12);
    v9 = v15;
    v10 = v16;
    v11 = v17;
    v19 = v14;
    v13 = a2;
    outlined copy of Interstitial.AssetMetadata?(v8, v15);
    v18 = v12;
    v5 = a2;
    outlined consume of Interstitial.AssetMetadata?(v8, v9);
    a2 = v18;
    v7 = v19;
  }

  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v11;
  a3[5] = v12;
  a3[6] = v13;
}

uint64_t outlined consume of Interstitial.AssetMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void outlined consume of Interstitial.Item(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a7 < 0)
  {
    v8 = (a7 & 0x7FFFFFFFFFFFFFFFLL);
    outlined consume of Interstitial.AssetMetadata?(a2, a3);
  }

  else
  {
  }
}

id outlined copy of Interstitial.Item(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a7 < 0)
  {
    v11 = (a7 & 0x7FFFFFFFFFFFFFFFLL);
    outlined copy of Interstitial.AssetMetadata?(a2, a3);
    v10 = a6;

    return v11;
  }

  else
  {
  }
}

void specialized InterstitialCollectionViewController.collectionView(_:prefetchItemsAt:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v36 - v5;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *((*MEMORY[0x277D85000] & *v40) + 0x110);
    v38 = (*MEMORY[0x277D85000] & *v40) + 272;
    v39 = v7;
    v8 = *(type metadata accessor for IndexPath() - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v37 = *(v8 + 72);
    do
    {
      v39(&v52, v9);
      v21 = v52;
      v19 = v53;
      v18 = v54;
      v17 = v55;
      v20 = v56;
      v23 = v57;
      v22 = v58;
      if (v57)
      {
        v41 = v56;
        v42 = v53;
        v43 = v54;
        v44 = v55;
        v46 = v52;
        v24 = type metadata accessor for TaskPriority();
        v25 = *(v24 - 8);
        v26 = v47;
        (*(v25 + 56))(v47, 1, 1, v24);
        v27 = swift_allocObject();
        v45 = v22;
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = v27;
        *(v28 + 40) = 9;
        v29 = v36;
        outlined init with copy of DateInterval?(v26, v36, &_sScPSgMd);
        v30 = (*(v25 + 48))(v29, 1, v24);

        if (v30 == 1)
        {
          outlined destroy of UTType?(v29, &_sScPSgMd);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v25 + 8))(v29, v24);
        }

        v31 = *(v28 + 16);
        swift_unknownObjectRetain();

        if (v31)
        {
          swift_getObjectType();
          v32 = dispatch thunk of Actor.unownedExecutor.getter();
          v34 = v33;
          swift_unknownObjectRelease();
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v35 = swift_allocObject();
        *(v35 + 16) = &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:);
        *(v35 + 24) = v28;
        if (v34 | v32)
        {
          v48 = 0;
          v49 = 0;
          v50 = v32;
          v51 = v34;
        }

        swift_task_create();
        outlined destroy of UTType?(v47, &_sScPSgMd);

        v10 = specialized Interstitial.AssetMetadata.init(assetViewModel:)(v23);
        v12 = v11;
        v14 = v13;
        v16 = v15;
        outlined consume of Interstitial.AssetMetadata?(v42, v43);
        v17 = v14;
        v18 = v12;
        v19 = v10;
        v20 = v16;
        v22 = v45;
        v21 = v46;
      }

      outlined consume of Interstitial.Asset?(v21, v19, v18, v17, v20, v23, v22);
      v9 += v37;
      --v6;
    }

    while (v6);
  }
}

uint64_t specialized InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *((*MEMORY[0x277D85000] & *v26) + 0x110);
    v24 = (*MEMORY[0x277D85000] & *v26) + 272;
    v25 = v10;
    v11 = *(type metadata accessor for IndexPath() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    do
    {
      v25(v32, v12);
      v13 = type metadata accessor for TaskPriority();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v8, 1, 1, v13);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      v16 = v32[1];
      *(v15 + 32) = v32[0];
      *(v15 + 48) = v16;
      *(v15 + 64) = v32[2];
      *(v15 + 80) = v33;
      outlined init with copy of DateInterval?(v8, v5, &_sScPSgMd);
      if ((*(v14 + 48))(v5, 1, v13) == 1)
      {
        outlined init with copy of DateInterval?(v32, v31, &_s9MomentsUI12InterstitialV5AssetVSgMd);

        outlined destroy of UTType?(v5, &_sScPSgMd);
      }

      else
      {
        outlined init with copy of DateInterval?(v32, v31, &_s9MomentsUI12InterstitialV5AssetVSgMd);

        TaskPriority.rawValue.getter();
        (*(v14 + 8))(v5, v13);
      }

      v17 = *(v15 + 16);
      swift_unknownObjectRetain();

      if (v17)
      {
        swift_getObjectType();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &async function pointer to partial apply for closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:);
      *(v21 + 24) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      if (v20 | v18)
      {
        v27 = 0;
        v28 = 0;
        v29 = v18;
        v30 = v20;
      }

      swift_task_create();
      outlined destroy of UTType?(v32, &_s9MomentsUI12InterstitialV5AssetVSgMd);
      outlined destroy of UTType?(v8, &_sScPSgMd);

      v12 += v23;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MomentsUI12InterstitialV13AssetMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interstitial.Asset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Interstitial.Asset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interstitial.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 56))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 48) >> 50) >> 13) | (2 * ((*(a1 + 48) >> 50) & 0x1C00 | ((*(a1 + 48) & 7) << 7) | (*(a1 + 40) >> 57) & 0x78 | *(a1 + 40) & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Interstitial.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 48) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Interstitial.Item(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 40) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t partial apply for closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in InterstitialCollectionViewController.collectionView(_:cancelPrefetchingForItemsAt:)(a1, v4, v5, v1 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in AssetView.performViewModelUpdate(style:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in AssetView.performViewModelUpdate(style:)(a1, v4, v5, v6, v7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void outlined consume of Interstitial.Asset?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a6)
  {
    outlined consume of Interstitial.AssetMetadata?(a2, a3);
  }
}

id MapPOIAnnotationView.image.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView) image];

  return v1;
}

void MapPOIAnnotationView.image.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView);
  [v2 setImage_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTintColor_];

  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
  [v4 setImage_];
  [v4 setContentMode_];
}

void (*MapPOIAnnotationView.image.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = [v3 image];
  return MapPOIAnnotationView.image.modify;
}

void MapPOIAnnotationView.image.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (a2)
  {
    v8 = *a1;
    [v2 setImage_];
    v4 = [objc_opt_self() whiteColor];
    [v2 setTintColor_];

    v5 = *(v3 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    [v5 setImage_];
    [v5 setContentMode_];
  }

  else
  {
    v8 = *a1;
    [*(a1 + 16) setImage_];
    v6 = [objc_opt_self() whiteColor];
    [v2 setTintColor_];

    v7 = *(v3 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    [v7 setImage_];
    [v7 setContentMode_];
  }
}

uint64_t MapPOIAnnotationView.shouldScalePinArt.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_shouldScalePinArt;
  swift_beginAccess();
  return *(v0 + v1);
}

id MapPOIAnnotationView.shouldScalePinArt.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_shouldScalePinArt;
  swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    *&v1[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconResizingRatio] = 0x3FE999999999999ALL;
    *&v1[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconUpwardsShiftPercentage] = 0x3FB3333333333333;
  }

  else
  {
    *&v1[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconResizingRatio] = 0x3FE199999999999ALL;
    *&v1[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconUpwardsShiftPercentage] = 0x3FB999999999999ALL;
    [*&v1[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView] setImage_];
  }

  return [v1 setNeedsLayout];
}

void (*MapPOIAnnotationView.shouldScalePinArt.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_shouldScalePinArt;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MapPOIAnnotationView.shouldScalePinArt.modify;
}

void MapPOIAnnotationView.shouldScalePinArt.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    if (*(v4 + *(v3 + 32)) == 1)
    {
      *(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconResizingRatio) = 0x3FE999999999999ALL;
      *(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconUpwardsShiftPercentage) = 0x3FB3333333333333;
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconResizingRatio) = 0x3FE199999999999ALL;
      *(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconUpwardsShiftPercentage) = 0x3FB999999999999ALL;
      [*(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView) setImage_];
    }

    [*(v3 + 24) setNeedsLayout];
  }

  free(v3);
}

id MapPOIAnnotationView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MapPOIAnnotationView.init()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v0[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconResizingRatio] = 0;
  *&v0[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconUpwardsShiftPercentage] = 0;
  v0[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_shouldScalePinArt] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MapPOIAnnotationView();
  v4 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];
  [v4 addSubview_];
  v5 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView;
  [v4 addSubview_];
  [*&v4[v5] setContentMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21658CA50;
  v7 = type metadata accessor for UITraitUserInterfaceStyle();
  v8 = MEMORY[0x277D74BF0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  MEMORY[0x21CE92C30](v6, sel_handleTraitChange);

  swift_unknownObjectRelease();

  return v4;
}

Swift::Void __swiftcall MapPOIAnnotationView.layoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MapPOIAnnotationView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView];
  [v0 bounds];
  [v1 setFrame_];
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v3 = Height + 3;
  if (Height >= 0)
  {
    v3 = Height;
  }

  [*&v0[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView] setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView];
  [v4 setFrame_];
  v5 = [objc_opt_self() configurationWithPointSize_];
  v6 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x8000000216579C30);
  v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    [v0 bounds];
    v9 = CGRectGetWidth(v17) * 0.9;
    [v0 bounds];
    v10 = CGRectGetWidth(v18) * 0.05;
    [v0 bounds];
    [v8 setFrame_];
    v11 = [v7 CGImage];
    [v8 setContents_];

    v12 = [v1 layer];
    [v12 setMask_];

    v13 = [v1 layer];
    [v13 setMasksToBounds_];

    v14 = [objc_opt_self() whiteColor];
    [v4 setTintColor_];

    [v0 handleTraitChange];
    v5 = v8;
  }
}

id MapPOIAnnotationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MapPOIAnnotationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MapPOIAnnotationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapPOIAnnotationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall MapPOIAnnotationView.setFillColor(_:)(UIColor_optional a1)
{
  if (a1.value.super.isa)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    v3 = a1.value.super.isa;
    v4 = [v2 layer];
    v5 = [(objc_class *)v3 CGColor];
    [v4 setBackgroundColor_];

    v6 = [*(v1 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
    v7 = [(objc_class *)v3 CGColor];
    [v6 setBackgroundColor_];
  }
}

Swift::Void __swiftcall MapPOIAnnotationView.updatePinShadow()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = [v0 layer];
  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if (v2 != 1)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  v7 = [v6 CGColor];

  [v3 setShadowColor_];
  v8 = [v0 layer];
  LODWORD(v9) = 1039516303;
  [v8 setShadowOpacity_];

  v10 = [v0 layer];
  [v10 setShadowOffset_];

  v11 = [v0 layer];
  [v11 setShadowRadius_];
}

void specialized MapPOIAnnotationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconResizingRatio) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_poiIconUpwardsShiftPercentage) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_shouldScalePinArt) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *RouteMapRenderingService.init(routeLocations:)(unint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC9MomentsUI24RouteMapRenderingService_routeLocations] = a1;
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_13:
    v17 = [objc_opt_self() polylineWithCoordinates:v5 + 32 count:v4];

    v19.receiver = v2;
    v19.super_class = type metadata accessor for RouteMapRenderingService();
    v18 = objc_msgSendSuper2(&v19, sel_initWithOverlay_, v17);

    return v18;
  }

  v20 = MEMORY[0x277D84F90];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CE93180](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 coordinate];
      v11 = v10;
      v13 = v12;

      v20 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v5 = v20;
      }

      ++v7;
      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

CGPoint __swiftcall RouteMapRenderingService.offsetPoint(_:from:)(MKMapPoint _, MKMapPoint from)
{
  v2 = _.x - from.x;
  v3 = _.y - from.y;
  result.y = v3;
  result.x = v2;
  return result;
}

Swift::Bool __swiftcall RouteMapRenderingService.canDrawLine(from:to:within:)(MKMapPoint from, MKMapPoint to, MKMapRect within)
{
  height = within.size.height;
  width = within.size.width;
  y = within.origin.y;
  x = within.origin.x;
  v9.origin.x = fmin(from.x, to.x);
  v9.origin.y = fmin(from.y, to.y);
  v9.size.width = vabdd_f64(from.x, to.x);
  v9.size.height = vabdd_f64(from.y, to.y);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return MKMapRectIntersectsRect(v8, v9);
}

id static RouteMapRenderingService.SpeedColor.averageColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
}

uint64_t RouteMapRenderingService.draw(_:zoomScale:in:)(uint64_t a1, double a2, double a3, double a4, double a5, MKZoomScale a6)
{
  [objc_msgSend(v6 overlay)];
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
  v13 = MKRoadWidthAtZoomScale(a6) * 0.666666667;
  [v6 applyStrokePropertiesToContext:a1 atZoomScale:a6];
  v16 = v6;
  v17 = v10;
  v18 = v12;
  return (*((*MEMORY[0x277D85000] & *v6) + 0x78))(a1, partial apply for closure #1 in RouteMapRenderingService.draw(_:zoomScale:in:), &v15, v13);
}

void RouteMapRenderingService.draw(lineWidth:in:pointFromMapPoint:)(CGContext *a1, double (*a2)(double, double), uint64_t a3, CGFloat a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  v57 = v4;
  v13 = *(v4 + OBJC_IVAR____TtC9MomentsUI24RouteMapRenderingService_routeLocations);
  v14 = v13 >> 62;
  v58 = v13;
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v62 = v58 & 0xC000000000000001;
    if ((v58 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CE93180](0);
    }

    else
    {
      if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v15 = *(v58 + 32);
    }

    v16 = v15;
    v17 = [v15 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v19 = v18;
    v20 = *(v10 + 8);
    v56 = v10 + 8;
    v63 = v20;
    v20(v12, v9);
    v21 = v58;
    if (v14)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v16;
    if (!v22)
    {
LABEL_21:

      return;
    }

    if (v22 >= 1)
    {
      v54 = a1;
      v23 = 0;
      v24 = *((*MEMORY[0x277D85000] & *v57) + 0x68);
      v59 = (*MEMORY[0x277D85000] & *v57) + 104;
      v60 = v24;
      v53 = a4 + a4;
      v52 = xmmword_21658CA60;
      v55 = a2;
      v61 = v22;
      do
      {
        if (v62)
        {
          v33 = MEMORY[0x21CE93180](v23, v21);
        }

        else
        {
          v33 = *(v21 + 8 * v23 + 32);
        }

        v34 = v33;
        [v64 coordinate];
        v35 = MKMapPointForCoordinate(v66);
        [v34 coordinate];
        v36 = MKMapPointForCoordinate(v67);
        v37 = a2(v35.x, v35.y);
        v39 = v38;
        v40 = a2(v36.x, v36.y);
        v42 = v41;
        if (v60(a4, v37, v39, v40, v41))
        {
          v43 = a3;
          v44 = [v34 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          Date.timeIntervalSinceReferenceDate.getter();
          v46 = v45;
          v47 = v9;
          v63(v12, v9);
          v48 = v46 - v19;
          [v34 speed];
          v50 = v49;
          Mutable = CGPathCreateMutable();
          transform.b = 0.0;
          transform.c = 0.0;
          transform.a = 1.0;
          transform.d = 1.0;
          transform.tx = 0.0;
          transform.ty = 0.0;
          CGMutablePathRef.move(to:transform:)(__PAIR128__(*&v39, *&v37), &transform);
          CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v42, *&v40), &transform);
          if (v48 > 5.0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
            v25 = swift_allocObject();
            *(v25 + 16) = v52;
            *(v25 + 32) = 0;
            *(v25 + 40) = v53;
            v26 = CGPathRef.copy(dashingWithPhase:lengths:transform:)();

            v27 = v54;
            CGContextAddPath(v54, v26);
            CGContextSetLineWidth(v27, a4);
            CGContextSetLineCap(v27, kCGLineCapRound);
            v28 = [objc_opt_self() grayColor];
            v29 = [v28 CGColor];

            CGContextSetStrokeColorWithColor(v27, v29);
            v30 = kCGPathStroke;
          }

          else
          {
            v26 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
            v27 = v54;
            CGContextAddPath(v54, v26);
            v29 = RouteMapRenderingService.relativeColor(for:)(v50);
            CGContextSetFillColorWithColor(v27, v29);
            v30 = kCGPathFill;
          }

          CGContextDrawPath(v27, v30);
          v64 = v34;
          a3 = v43;
          a2 = v55;
          v9 = v47;
          v21 = v58;
        }

        ++v23;
        v31 = [v34 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v19 = v32;

        v63(v12, v9);
      }

      while (v61 != v23);
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    return;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_3;
  }
}

char *RouteMapRenderingService.relativeColor(for:)(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI24RouteMapRenderingService_routeLocations);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_12;
  }

  v43 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v43;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CE93180](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 speed];
      v11 = v10;

      v13 = *(v43 + 16);
      v12 = *(v43 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      *(v43 + 16) = v13 + 1;
      *(v43 + 8 * v13 + 32) = v11;
    }

    while (v4 != v7);
LABEL_12:
    v14 = COERCE_DOUBLE(specialized Sequence<>.min()(v5));
    v16 = 0.0;
    if (v15)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v14;
    }

    v18 = *(v5 + 16);
    if (v18)
    {
      v19 = v18;
      if (v18 <= 3)
      {
        v20 = 0;
LABEL_21:
        v26 = v18 - v20;
        v27 = (v5 + 8 * v20 + 32);
        do
        {
          v28 = *v27++;
          v16 = v16 + v28 / v19;
          --v26;
        }

        while (v26);
        goto LABEL_23;
      }

      v20 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = vdupq_lane_s64(*&v19, 0);
      v22 = (v5 + 48);
      v23 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v24 = vdivq_f64(v22[-1], v21);
        v25 = vdivq_f64(*v22, v21);
        v16 = v16 + v24.f64[0] + v24.f64[1] + v25.f64[0] + v25.f64[1];
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v18 != v20)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v29 = specialized Sequence<>.max()(v5);
    v31 = v30;

    if (v31)
    {
      v32 = 0.0;
      if (v16 * 0.9 >= a1)
      {
LABEL_25:
        if (a1 < 0.0 || v16 == 0.0)
        {
LABEL_37:
          v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
LABEL_40:
          v41 = v39;
          v42 = [v39 CGColor];

          return v42;
        }

LABEL_35:
        v34 = (a1 - v17) / (v32 - v17);
        if (v34 >= 0.5)
        {
          v40 = v34 + -0.5 + v34 + -0.5;
          v36 = round(v40 * -179.0 + 255.0);
          v37 = round(v40 * 13.0 + 204.0);
          v38 = v40 * 100.0 + 0.0;
        }

        else
        {
          v35 = v34 + v34;
          v36 = round(v35 * 0.0 + 255.0);
          v37 = round(v35 * 145.0 + 59.0);
          v38 = 48.0 - v35 * 48.0;
        }

        v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v36 / 255.0 green:v37 / 255.0 blue:round(v38) / 255.0 alpha:0.85];
        goto LABEL_40;
      }
    }

    else
    {
      v32 = *&v29;
      if (v16 * 0.9 >= a1)
      {
        goto LABEL_25;
      }
    }

    if (a1 < 0.0)
    {
      goto LABEL_37;
    }

    if (v16 == 0.0 || v16 * 1.1 > a1)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

id RouteMapRenderingService.__allocating_init(overlay:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithOverlay_];
  swift_unknownObjectRelease();
  return v2;
}

id RouteMapRenderingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RouteMapRenderingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id closure #1 in variable initialization expression of SectionDateHeaderView.dateLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontSizeToFitWidth_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withWeight(_:)(*MEMORY[0x277D74418]).super.isa;

  [v0 setFont_];
  return v0;
}

uint64_t key path setter for SectionDateHeaderView.date : SectionDateHeaderView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x68))(v6);
}

uint64_t SectionDateHeaderView.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_date;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t SectionDateHeaderView.date.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_date;
  swift_beginAccess();
  outlined assign with copy of Date?(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v4);
  return outlined destroy of Date?(a1);
}

uint64_t outlined assign with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*SectionDateHeaderView.date.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SectionDateHeaderView.date.modify;
}

uint64_t SectionDateHeaderView.date.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x78))(result);
  }

  return result;
}

id SectionDateHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SectionDateHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SectionDateHeaderView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel;
  *(v0 + v1) = closure #1 in variable initialization expression of SectionDateHeaderView.dateLabel();
  v2 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_date;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SectionDateHeaderView.setUpDate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Date?(v4);
    [*(v0 + OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel) setText_];
    return;
  }

  v10 = *(v6 + 32);
  v38 = v5;
  v10(v9, v4, v5);
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  v11 = static MomentDateFormatter.fullDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromDate_];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v43 = v14;
  v44 = v16;
  v41 = 8236;
  v42 = 0xE200000000000000;
  v39 = 32;
  v40 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v20 = *(v1 + OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel);
  v21 = MEMORY[0x21CE91FC0](v17, v19);
  [v20 setText_];

  v43 = v17;
  v44 = v19;
  if (one-time initialization token for dayNameFormatter != -1)
  {
    swift_once();
  }

  v22 = static MomentDateFormatter.dayNameFormatter;
  v23 = Date._bridgeToObjectiveC()().super.isa;
  v24 = [v22 stringFromDate_];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v41 = v25;
  v42 = v27;
  LOBYTE(v25) = StringProtocol.contains<A>(_:)();

  if (v25)
  {

    v28 = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v22 stringFromDate_];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = v30;
LABEL_11:
    v36 = v32;
    UILabel.styleDateWithWeekday(weekday:)(*&v33);

    (*(v6 + 8))(v9, v38);
    return;
  }

  v43 = v17;
  v44 = v19;
  v41 = 32;
  v42 = 0xE100000000000000;
  v34 = StringProtocol.components<A>(separatedBy:)();

  if (v34[2])
  {
    v35 = v34[4];
    v32 = v34[5];

    v33 = v35;
    goto LABEL_11;
  }

  (*(v6 + 8))(v9, v38);
}

id SectionDateHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionDateHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized SectionDateHeaderView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel;
  *&v0[v1] = closure #1 in variable initialization expression of SectionDateHeaderView.dateLabel();
  v2 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_date;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v29.receiver = v0;
  v29.super_class = type metadata accessor for SectionDateHeaderView();
  v8 = objc_msgSendSuper2(&v29, sel_initWithFrame_, v4, v5, v6, v7);
  v9 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel;
  v10 = *&v8[OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel];
  v11 = v8;
  [v11 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_216590220;
  v13 = [*&v8[v9] topAnchor];
  v14 = [v11 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:20.0];

  *(v12 + 32) = v15;
  v16 = [*&v8[v9] bottomAnchor];
  v17 = [v11 bottomAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [*&v8[v9] leadingAnchor];
  v20 = [v11 leadingAnchor];

  v21 = [v11 traitCollection];
  [v21 horizontalSizeClass];

  v22 = objc_opt_self();
  v23 = [v19 constraintEqualToAnchor:v20 constant:12.0];

  *(v12 + 48) = v23;
  v24 = [*&v8[v9] trailingAnchor];
  v25 = [v11 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25 constant:-10.0];
  *(v12 + 56) = v26;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints_];

  return v11;
}

uint64_t type metadata accessor for SectionDateHeaderView()
{
  result = type metadata singleton initialization cache for SectionDateHeaderView;
  if (!type metadata singleton initialization cache for SectionDateHeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SectionDateHeaderView()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

void one-time initialization function for Bag()
{
  v0 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x800000021657A020);
  v1 = MEMORY[0x21CE91FC0](49, 0xE100000000000000);
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  static Constants.Bag = v2;
}

uint64_t MediaCoverArtQueryInput.trackIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MediaCoverArtQueryInput.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t *MediaFirstPartyFetchServiceProviders.sharedSongProvider.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedSongProvider != -1)
  {
    swift_once();
  }

  return &static MediaFirstPartyFetchServiceProviders.sharedSongProvider;
}

uint64_t one-time initialization function for sharedSongProvider(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = swift_allocObject();
  result = MediaFirstPartyFetchService.init()();
  *a3 = v4;
  return result;
}

uint64_t *MediaFirstPartyFetchServiceProviders.sharedPodcastProvider.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedPodcastProvider != -1)
  {
    swift_once();
  }

  return &static MediaFirstPartyFetchServiceProviders.sharedPodcastProvider;
}

uint64_t static MediaFirstPartyFetchServiceProviders.sharedSongProvider.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t QueuableRequest.queryInput.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t QueuableRequest.queryInput.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t key path setter for QueuableRequest.callback : QueuableRequest(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Image?) -> (@out ());
  *(a2 + 40) = v5;
  return result;
}

uint64_t QueuableRequest.callback.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t QueuableRequest.callback.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t QueuableRequest.init(queryInput:callback:numberOfRetries:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t MediaFirstPartyFetchServiceActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  *(v0 + 120) = v1;
  return v0;
}

uint64_t MediaFirstPartyFetchService.__allocating_init()()
{
  v0 = swift_allocObject();
  MediaFirstPartyFetchService.init()();
  return v0;
}

uint64_t MediaFirstPartyFetchService.init()()
{
  v1 = v0;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + 16) = 0;
  v7 = type metadata accessor for OS_dispatch_queue();
  v13[0] = "rView";
  v13[1] = v7;
  static DispatchQoS.utility.getter();
  v15 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v14);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = MEMORY[0x277D84FA0];
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  type metadata accessor for MediaFirstPartyFetchServiceActor();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 112) = MEMORY[0x277D84F90];
  *(v10 + 120) = v11;
  *(v1 + 40) = v10;
  return v1;
}

uint64_t MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static CommonLogger.services);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a6;
    v21 = v20;
    v22 = a3;
    v23 = swift_slowAlloc();
    v35 = v23;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a2, &v35);
    _os_log_impl(&dword_21607C000, v18, v19, "[MediaFirstPartyFetchService] fetchAssetWithPossibleBatching, trackID=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v24 = v23;
    a3 = v22;
    MEMORY[0x21CE94770](v24, -1, -1);
    v25 = v21;
    a6 = v33;
    MEMORY[0x21CE94770](v25, -1, -1);
  }

  v26 = *(v8 + 16);
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  if (v26)
  {
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v34;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = a4;
    v28[8] = v8;
    v28[9] = a6;
    v28[10] = a7;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v28);
  }

  else
  {
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v34;
    v29[4] = v8;
    v29[5] = v30;
    v29[6] = a2;
    v29[7] = a3;
    v29[8] = a4;
    v29[9] = a6;
    v29[10] = a7;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v29);
  }
}

uint64_t closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v12;
  v8[14] = v13;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v8[15] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), 0, 0);
}

uint64_t closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)()
{
  v1 = *(*(v0 + 64) + 40);
  *(v0 + 152) = v1;
  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v1, 0);
}

{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 152);
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = &v2[56 * v5];
  v12 = *(v0 + 96);
  *(v2 + 2) = v5 + 1;
  *(v11 + 4) = v10;
  *(v11 + 5) = v9;
  *(v11 + 6) = v8;
  *(v11 + 56) = v12;
  *(v11 + 9) = v7;
  *(v11 + 10) = 0;
  *(v1 + 112) = v2;
  swift_endAccess();

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v6, 0);
}

{
  *(v0 + 160) = *(*(v0 + 152) + 112);

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), 0, 0);
}

{
  v0[21] = *(v0[20] + 16);

  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:);
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  *(v0 + 192) = *(*(v0 + 152) + 112);

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), 0, 0);
}

{
  v1 = v0[21];
  v2 = *(v0[24] + 16);

  if (v1 == v2)
  {
    if (one-time initialization token for services != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static CommonLogger.services);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[MediaFirstPartyFetchService] Met quiescent criteria", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    v7 = v0[8];

    if (*(v7 + 16) == 1)
    {
      v8 = v0[19];

      return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v8, 0);
    }

    v9 = v0[15];
    v10 = v0[8];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in MediaFirstPartyFetchService.fireBatchOperation(), v12);
  }

  v13 = v0[1];

  return v13();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 152);
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v2);
  swift_endAccess();

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v1, 0);
}

{
  *(*(v0 + 152) + 112) = MEMORY[0x277D84F90];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

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

      outlined destroy of TaskPriority?(a3);

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

  outlined destroy of TaskPriority?(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), 0, 0);
}

uint64_t closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)()
{
  v11 = v0;
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.services);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v10);
    _os_log_impl(&dword_21607C000, v2, v3, "[MediaFirstPartyFetchService] stale request, trackID=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v8 = *(v0[9] + 40);
  v0[12] = v8;

  return MEMORY[0x2822009F8](closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:), v8, 0);
}

{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 120) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 120) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  *(v2 + 2) = v5 + 1;
  v12 = &v2[56 * v5];
  *(v12 + 4) = v10;
  *(v12 + 5) = v11;
  *(v12 + 6) = v8;
  *(v12 + 7) = v9;
  *(v12 + 8) = v6;
  *(v12 + 9) = v7;
  *(v12 + 10) = 0;
  *(v1 + 120) = v2;
  swift_endAccess();
  v14 = v0[1];

  return v14();
}

uint64_t MediaFirstPartyFetchService.handleStaleRequests()()
{
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v18 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v16 = *(v0 + 24);
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in MediaFirstPartyFetchService.handleStaleRequests();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_82;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v14 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x21CE929F0](v11, v4, v2, v13);
  _Block_release(v13);
  (*(v22 + 8))(v2, v14);
  (*(v19 + 8))(v4, v21);
  v17(v11, v18);
}

uint64_t closure #1 in MediaFirstPartyFetchService.handleStaleRequests()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MediaFirstPartyFetchService._handleStaleRequests(), v6);
  }

  return result;
}

uint64_t closure #1 in MediaFirstPartyFetchService._handleStaleRequests()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService._handleStaleRequests(), 0, 0);
}

uint64_t closure #1 in MediaFirstPartyFetchService._handleStaleRequests()()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService._handleStaleRequests(), v1, 0);
}

{
  MediaFirstPartyFetchServiceActor.handleStaleRequests()();

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService._handleStaleRequests(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  *(v1 + 16) = 0;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &closure #1 in MediaFirstPartyFetchService.fireBatchOperation()partial apply, v4);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in MediaFirstPartyFetchService.fireBatchOperation()()
{
  v1 = *(*(v0 + 112) + 40);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fireBatchOperation(), v1, 0);
}

{
  v1 = *(v0 + 120);
  swift_beginAccess();
  *(v0 + 128) = *(v1 + 112);

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fireBatchOperation(), v1, 0);
}

{
  v1 = *(v0 + 120);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in MediaFirstPartyFetchService.fireBatchOperation(), 0, 0);
}

{
  v45 = v0;
  v1 = v0[16];
  if (*(v1 + 16))
  {
    if (one-time initialization token for services != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static CommonLogger.services);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[17];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = *(v1 + 16);

      *(v7 + 12) = 2048;
      v8 = *(v6 + 16);

      *(v7 + 14) = v8;

      _os_log_impl(&dword_21607C000, v3, v4, "[MediaFirstPartyFetchService] Starting batch operation activeCount=%ld staleCount=%ld", v7, 0x16u);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    *(v0[14] + 16) = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v43 = MEMORY[0x277D84FA0];
    v17 = *(v1 + 16);
    if (v17)
    {
      v18 = (v0[16] + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        specialized Set._Variant.insert(_:)(&v44, v19, v20);

        v18 += 7;
        --v17;
      }

      while (v17);
    }

    v21 = (*(*v0[14] + 176))();
    if (one-time initialization token for Bag != -1)
    {
      swift_once();
    }

    v22 = static Constants.Bag;
    v23 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v24 = v22;
    v25 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x80000002165767B0);
    v26 = MEMORY[0x21CE91FC0](49, 0xE100000000000000);
    v27 = [v23 initWithType:v21 clientIdentifier:v25 clientVersion:v26 bag:v24];

    v28 = *(v43 + 16);
    v42 = v16;
    if (v28)
    {
      v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v28, 0);
      v30 = specialized Sequence._copySequenceContents(initializing:)(&v44, v29 + 4, v28, v43);
      outlined consume of [String : DBAssetData].Iterator._Variant();
      if (v30 == v28)
      {
LABEL_20:
        v31 = v0[16];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 setItemIdentifiers_];

        v33 = [v27 perform];
        v34 = swift_allocObject();
        swift_weakInit();
        v0[6] = partial apply for closure #1 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation();
        v0[7] = v34;
        v35 = MEMORY[0x277D85DD0];
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        v0[5] = &block_descriptor_5;
        v36 = _Block_copy(v0 + 2);

        [v33 addErrorBlock_];
        _Block_release(v36);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = swift_allocObject();
        v38[2] = v37;
        v38[3] = v42;
        v38[4] = v31;
        v0[6] = partial apply for closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation();
        v0[7] = v38;
        v0[2] = v35;
        v0[3] = 1107296256;
        v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed AMSMediaResult) -> ();
        v0[5] = &block_descriptor_74;
        v39 = _Block_copy(v0 + 2);

        [v33 addSuccessBlock_];
        _Block_release(v39);

        goto LABEL_23;
      }

      __break(1u);
    }

    goto LABEL_20;
  }

  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static CommonLogger.services);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  if (v12)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = *(v13 + 16);

    *(v14 + 4) = v15;

    _os_log_impl(&dword_21607C000, v10, v11, "[MediaFirstPartyFetchService] No active requets to fire, staleCount=%ld", v14, 0xCu);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

LABEL_23:
  v40 = v0[1];

  return v40();
}

uint64_t closure #1 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(void *a1)
{
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.services);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21607C000, v4, v5, "[MediaFirstPartyFetchService] AMSMedia promise error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MediaFirstPartyFetchService.handleStaleRequests()();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(a1, a2);
}

{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v146 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v131 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v148 = &v131 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v131 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v131 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v131 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v24 = &unk_2811A6000;
  if (!Strong)
  {
    goto LABEL_49;
  }

  v25 = Strong;
  v26 = [a1 responseDictionary];
  if (!v26)
  {

    goto LABEL_49;
  }

  v144 = a3;
  v27 = v26;
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v150 = 1635017060;
  v151 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v28 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v149), (v30 & 1) == 0))
  {

    outlined destroy of AnyHashable(v149);
LABEL_47:
    v24 = &unk_2811A6000;
LABEL_49:
    if (v24[189] != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static CommonLogger.services);
    v78 = a1;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v149[0] = v82;
      *v81 = 136315138;
      v83 = [v78 debugDescription];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v149);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_21607C000, v79, v80, "[MediaFirstPartyFetchService] Did not decode AMS result struct correctly result=%s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x21CE94770](v82, -1, -1);
      MEMORY[0x21CE94770](v81, -1, -1);
    }

    return;
  }

  outlined init with copy of Any(*(v28 + 56) + 32 * v29, &v152);
  outlined destroy of AnyHashable(v149);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_47;
  }

  v142 = v10;
  v143 = v9;
  v135 = v25;
  v134 = v8;
  v32 = v150;
  v33 = *(v150 + 16);
  v34 = &type_layout_string_So22UIViewAnimationOptionsV;
  if (v33)
  {
    v35 = 0;
    v36 = v150 + 32;
    v137 = (v142 + 16);
    v136 = (v142 + 8);
    *&v31 = 136315138;
    v133 = v31;
    v145 = (v150 + 32);
    while (1)
    {
      v37 = *(v36 + 8 * v35);
      v150 = 0x7475626972747461;
      v151 = 0xEA00000000007365;

      AnyHashable.init<A>(_:)();
      if (*(v37 + 16))
      {
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
        if (v39)
        {
          break;
        }
      }

      outlined destroy of AnyHashable(v149);
LABEL_9:
      if (++v35 == v33)
      {

        v89 = v144;
        v34 = &type_layout_string_So22UIViewAnimationOptionsV;
        goto LABEL_57;
      }
    }

    outlined init with copy of Any(*(v37 + 56) + 32 * v38, &v152);
    outlined destroy of AnyHashable(v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
    if (swift_dynamicCast())
    {
      v40 = v150;
      v150 = 25705;
      v151 = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v37 + 16))
      {
        goto LABEL_27;
      }

      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
      if ((v42 & 1) == 0)
      {
        goto LABEL_27;
      }

      outlined init with copy of Any(*(v37 + 56) + 32 * v41, &v152);
      outlined destroy of AnyHashable(v149);

      if (swift_dynamicCast())
      {
        v138 = v40;
        v139 = v32;
        v43 = *(v135 + 32);
        v44 = *(v43 + 16);
        v141 = v151;
        v140 = v150;
        if (v44)
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v45 = Hasher._finalize()();
          v46 = -1 << *(v43 + 32);
          v47 = v45 & ~v46;
          if ((*(v43 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (1)
            {
              v49 = (*(v43 + 48) + 16 * v47);
              v50 = *v49 == v140 && v49[1] == v141;
              if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v43 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            v51 = 0x408F400000000000;
          }

          else
          {
LABEL_25:
            v51 = 0x4079000000000000;
          }

          v52 = *&v51;
        }

        else
        {
          v52 = 400.0;
        }

        v53 = v138;
        v150 = 0x6B726F77747261;
        v151 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        v32 = v139;
        if (v53[2].isa)
        {
          v54 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
          if (v55)
          {
            outlined init with copy of Any(v53[7].isa + 32 * v54, &v152);
            outlined destroy of AnyHashable(v149);

            if (swift_dynamicCast())
            {
              v56 = objc_allocWithZone(MEMORY[0x277CEE548]);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v58 = [v56 initWithDictionary_];

              v59 = [v58 URLWithSize_];
              if (v59)
              {
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v60 = v144;
                swift_beginAccess();
                v61 = v143;
                v138 = *v137;
                (v138)(v20, v22, v143);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v152 = *(v60 + 16);
                *(v60 + 16) = 0x8000000000000000;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v140, v141, isUniquelyReferenced_nonNull_native);

                *(v60 + 16) = v152;
                swift_endAccess();
                if (one-time initialization token for services != -1)
                {
                  swift_once();
                }

                v63 = type metadata accessor for Logger();
                __swift_project_value_buffer(v63, static CommonLogger.services);
                (v138)(v17, v22, v61);
                v64 = Logger.logObject.getter();
                v65 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v64, v65))
                {
                  v66 = swift_slowAlloc();
                  v132 = v66;
                  v140 = swift_slowAlloc();
                  v149[0] = v140;
                  *v66 = v133;
                  v138 = v64;
                  v67 = URL.debugDescription.getter();
                  v69 = v68;
                  v141 = *v136;
                  v141(v17, v61);
                  v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v149);

                  v71 = v132;
                  *(v132 + 1) = v70;
                  v72 = v65;
                  v73 = v138;
                  v74 = v71;
                  _os_log_impl(&dword_21607C000, v138, v72, "[MediaFirstPartyFetchService] Obtained %s", v71, 0xCu);
                  v75 = v140;
                  __swift_destroy_boxed_opaque_existential_1(v140);
                  MEMORY[0x21CE94770](v75, -1, -1);
                  MEMORY[0x21CE94770](v74, -1, -1);

                  v141(v22, v61);
                }

                else
                {

                  v76 = *v136;
                  (*v136)(v17, v61);
                  v76(v22, v61);
                }
              }

              else
              {
              }

              v32 = v139;
              goto LABEL_28;
            }

            goto LABEL_42;
          }
        }

LABEL_27:

        outlined destroy of AnyHashable(v149);
LABEL_28:
        v36 = v145;
        goto LABEL_9;
      }
    }

LABEL_42:

    goto LABEL_28;
  }

  v89 = v144;
LABEL_57:
  v90 = *(v146 + 2);
  if (v90)
  {
    v145 = 0;
    v141 = (v142 + 16);
    v140 = v142 + 32;
    v139 = (v142 + 8);
    v91 = v146 + 72;
    *&v88 = v34[335];
    v133 = v88;
    do
    {
      v92 = *(v91 - 5);
      v93 = *(v91 - 4);
      v94 = *(v91 - 1);
      swift_beginAccess();
      v95 = *(v89 + 16);
      v96 = *(v95 + 16);
      swift_bridgeObjectRetain_n();

      if (v96 && (v97 = specialized __RawDictionaryStorage.find<A>(_:)(v92, v93), (v98 & 1) != 0))
      {
        v146 = v94;
        v99 = v89;
        v100 = v142;
        v101 = *(v95 + 56) + *(v142 + 72) * v97;
        v102 = v147;
        v103 = v143;
        (*(v142 + 16))(v147, v101, v143);
        v104 = v102;
        v105 = v148;
        (*(v100 + 32))(v148, v104, v103);
        swift_endAccess();
        v106 = v145;
        v107 = Data.init(contentsOf:options:)();
        if (!v106)
        {
          v138 = v108;
          v137 = v107;
          v145 = 0;
          if (one-time initialization token for services != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          __swift_project_value_buffer(v109, static CommonLogger.services);

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v149[0] = v113;
            *v112 = v133;
            v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v149);

            *(v112 + 4) = v114;
            _os_log_impl(&dword_21607C000, v110, v111, "[MediaFirstPartyFetchService] Downloading artworkURL for trackID=%s", v112, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v113);
            MEMORY[0x21CE94770](v113, -1, -1);
            MEMORY[0x21CE94770](v112, -1, -1);
          }

          else
          {
          }

          v136 = type metadata accessor for Image();
          v115 = objc_allocWithZone(MEMORY[0x277D755B8]);
          v116 = v137;
          v117 = v138;
          outlined copy of Data._Representation(v137, v138);
          v118 = Data._bridgeToObjectiveC()().super.isa;
          v119 = [v115 initWithData_];

          outlined consume of Data._Representation(v116, v117);
          type metadata accessor for DBAssetModel();
          PartyView = type metadata accessor for MediaFirstPartyView();
          static DBAssetModel.subscript.getter(PartyView, v149);
          LOBYTE(v152) = v149[0];
          v121 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v119, 0, &v152);
          (v146)();

          outlined consume of Data._Representation(v116, v117);
          (*v139)(v148, v143);
          v89 = v144;
          goto LABEL_61;
        }

        (*v139)(v105, v103);
        v145 = 0;
        v89 = v99;
        v146(0);
      }

      else
      {
        swift_endAccess();

        v94(0);
      }

LABEL_61:
      v91 += 56;
      --v90;
    }

    while (v90);
  }

  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v122 = type metadata accessor for Logger();
  __swift_project_value_buffer(v122, static CommonLogger.services);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  v125 = os_log_type_enabled(v123, v124);
  v126 = v134;
  v127 = v135;
  if (v125)
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_21607C000, v123, v124, "[MediaFirstPartyFetchService] Finished executing all active requests", v128, 2u);
    MEMORY[0x21CE94770](v128, -1, -1);
  }

  v129 = type metadata accessor for TaskPriority();
  (*(*(v129 - 8) + 56))(v126, 1, 1, v129);
  v130 = swift_allocObject();
  v130[2] = 0;
  v130[3] = 0;
  v130[4] = v127;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v126, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation(), v130);

  MediaFirstPartyFetchService.handleStaleRequests()();
}

uint64_t closure #1 in closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation()()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation(), v1, 0);
}

{
  v1 = *(v0 + 48);
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x277D84F90];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MediaFirstPartyFetchService.deinit()
{

  return v0;
}

uint64_t MediaFirstPartyFetchService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t key path setter for MediaFirstPartyFetchServiceActor.activeRequests : MediaFirstPartyFetchServiceActor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t MediaFirstPartyFetchServiceActor.activeRequests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t key path setter for MediaFirstPartyFetchServiceActor.staleRequests : MediaFirstPartyFetchServiceActor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

uint64_t MediaFirstPartyFetchServiceActor.staleRequests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t MediaFirstPartyFetchServiceActor.appendActiveNewRequest(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 112) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = *a1;
  v14 = a1[1];
  v15 = v7;
  *(v3 + 2) = v6 + 1;
  v8 = &v3[56 * v6];
  v9 = *(a1 + 6);
  v11 = a1[1];
  v10 = a1[2];
  *(v8 + 2) = *a1;
  *(v8 + 3) = v11;
  *(v8 + 4) = v10;
  *(v8 + 10) = v9;
  *(v1 + 112) = v3;
  swift_endAccess();
  outlined init with copy of String(&v15, v13);
  outlined init with copy of String(&v14, v13);
}

uint64_t MediaFirstPartyFetchServiceActor.appendStaleNewRequest(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 120) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 120) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = *a1;
  v14 = a1[1];
  v15 = v7;
  *(v3 + 2) = v6 + 1;
  v8 = &v3[56 * v6];
  v9 = *(a1 + 6);
  v11 = a1[1];
  v10 = a1[2];
  *(v8 + 2) = *a1;
  *(v8 + 3) = v11;
  *(v8 + 4) = v10;
  *(v8 + 10) = v9;
  *(v1 + 120) = v3;
  swift_endAccess();
  outlined init with copy of String(&v15, v13);
  outlined init with copy of String(&v14, v13);
}

Swift::Void __swiftcall MediaFirstPartyFetchServiceActor.clearActiveRequests()()
{
  swift_beginAccess();
  *(v0 + 112) = MEMORY[0x277D84F90];
}

Swift::Void __swiftcall MediaFirstPartyFetchServiceActor.clearStaleRequests()()
{
  swift_beginAccess();
  *(v0 + 120) = MEMORY[0x277D84F90];
}

Swift::Void __swiftcall MediaFirstPartyFetchServiceActor.appendActiveRequestsToStale()()
{
  swift_beginAccess();
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v0);
  swift_endAccess();
}

Swift::Void __swiftcall MediaFirstPartyFetchServiceActor.handleStaleRequests()()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v22 = v0;

    v4 = (v2 + 80);
    do
    {
      v5 = *(v4 - 5);
      v7 = *(v4 - 3);
      v6 = *(v4 - 2);
      v9 = *(v4 - 1);
      v8 = *v4;
      if (*v4 > 2)
      {

        v6(0);
      }

      else
      {
        v26 = *(v4 - 2);
        v27 = *(v4 - 6);
        v25 = *(v4 - 4);
        v10 = one-time initialization token for services;

        if (v10 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static CommonLogger.services);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v24 = v8;
          v14 = swift_slowAlloc();
          v23 = v1;
          v15 = swift_slowAlloc();
          v28 = v15;
          *v14 = 136315394;

          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v5, &v28);

          *(v14 + 4) = v16;
          *(v14 + 12) = 2048;

          *(v14 + 14) = v24;

          _os_log_impl(&dword_21607C000, v12, v13, "[MediaFirstPartyFetchService] Queueing trackId=%s, numRetries=%ld", v14, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v15);
          v17 = v15;
          v1 = v23;
          MEMORY[0x21CE94770](v17, -1, -1);
          v18 = v14;
          v8 = v24;
          MEMORY[0x21CE94770](v18, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
        }

        v20 = *(v1 + 2);
        v19 = *(v1 + 3);
        if (v20 >= v19 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v1);
        }

        *(v1 + 2) = v20 + 1;
        v21 = &v1[56 * v20];
        *(v21 + 4) = v27;
        *(v21 + 5) = v5;
        *(v21 + 6) = v25;
        *(v21 + 7) = v7;
        *(v21 + 8) = v26;
        *(v21 + 9) = v9;
        *(v21 + 10) = v8 + 1;
      }

      v4 += 7;
      --v3;
    }

    while (v3);

    v0 = v22;
  }

  else
  {
  }

  *(v0 + 112) = v1;

  *(v0 + 120) = MEMORY[0x277D84F90];
}

uint64_t MediaFirstPartyFetchServiceActor.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaFirstPartyFetchServiceActor.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t MediaFirstPartyFetchServiceActor.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  *(v0 + 120) = v1;
  return v0;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in MediaFirstPartyFetchService.fetchAssetWithPossibleBatching(queryInput:viewport:completion:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t getEnumTagSinglePayload for MediaCoverArtQueryInput(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MediaCoverArtQueryInput(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for QueuableRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for QueuableRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MediaFirstPartyFetchServiceActor.appendActiveNewRequest(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(*v1 + 152);
  v7 = *a1;
  v8 = v2;
  v9 = *(a1 + 24);
  v10 = v3;
  v11 = v4;
  return v5(&v7);
}

uint64_t dispatch thunk of MediaFirstPartyFetchServiceActor.appendStaleNewRequest(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(*v1 + 160);
  v7 = *a1;
  v8 = v2;
  v9 = *(a1 + 24);
  v10 = v3;
  v11 = v4;
  return v5(&v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Image?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #2 in closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaFirstPartyFetchService._handleStaleRequests()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MediaFirstPartyFetchService._handleStaleRequests()(a1, v4, v5, v6);
}

uint64_t closure #1 in MediaFirstPartyFetchService.fireBatchOperation()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MediaFirstPartyFetchService.fireBatchOperation()(a1, v4, v5, v6);
}

uint64_t static MediaFirstPartyCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MediaFirstPartyCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *MediaFirstPartyCollectionViewCell.mediaFirstPartyView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI33MediaFirstPartyCollectionViewCell_mediaFirstPartyView);
  v2 = v1;
  return v1;
}

id MediaFirstPartyCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MediaFirstPartyCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MediaFirstPartyCollectionViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI33MediaFirstPartyCollectionViewCell_mediaFirstPartyView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMediaFirstPartyViewModel.empty;
  v4 = 1;
  v3 = objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  *(v0 + v1) = MediaFirstPartyView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MediaFirstPartyCollectionViewCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[MediaFirstPartyCollectionViewCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI33MediaFirstPartyCollectionViewCell_mediaFirstPartyView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x268))();
  }
}

id MediaFirstPartyCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaFirstPartyCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MediaFirstPartyCollectionViewCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI33MediaFirstPartyCollectionViewCell_mediaFirstPartyView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMediaFirstPartyViewModel.empty;
  v12 = 1;
  v3 = objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  v4 = MediaFirstPartyView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for MediaFirstPartyCollectionViewCell()
{
  result = type metadata singleton initialization cache for MediaFirstPartyCollectionViewCell;
  if (!type metadata singleton initialization cache for MediaFirstPartyCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *InterstitialCollectionViewCell.assetView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InterstitialCollectionViewCell.assetView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  InterstitialCollectionViewCell.assetView.didset(v4);
}

void (*InterstitialCollectionViewCell.assetView.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return InterstitialCollectionViewCell.assetView.modify;
}

void InterstitialCollectionViewCell.assetView.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    InterstitialCollectionViewCell.assetView.didset(v8);

    v8 = *v5;
  }

  else
  {
    InterstitialCollectionViewCell.assetView.didset(v8);
  }

  free(v3);
}

void one-time initialization function for shadowColor()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  static Constants.shadowColor = v1;
}

void InterstitialCollectionViewCell.assetView.didset(void *a1)
{
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.interstitial);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27[0] = v26;
    *v8 = 138412802;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v10 = OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView;
    swift_beginAccess();
    v11 = *(v5 + v10);
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI9AssetViewCSgMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v27);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    v16 = v4;
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v27);

    *(v8 + 24) = v19;
    _os_log_impl(&dword_21607C000, v6, v7, "Set new asset view for cell=%@: asset view=%s, old asset view=%s", v8, 0x20u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x21CE94770](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v26, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  v20 = OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView;
  swift_beginAccess();
  v21 = *(v5 + v20);
  if (v21)
  {
    v22 = *((*MEMORY[0x277D85000] & *v5) + 0x70);
    v23 = v21;
    v22();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21607C000, v23, v24, "InterstitialCollectionViewCell cannot be set up: ssset view is nil", v25, 2u);
      MEMORY[0x21CE94770](v25, -1, -1);
    }
  }
}

id InterstitialCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InterstitialCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for InterstitialCollectionViewCell();
  v9 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemBackgroundColor];
  [v11 setBackgroundColor_];

  v13 = [v11 layer];
  if (one-time initialization token for shadowColor != -1)
  {
    swift_once();
  }

  [v13 setShadowColor_];

  v14 = [v11 layer];
  LODWORD(v15) = 1036831949;
  [v14 setShadowOpacity_];

  v16 = [v11 layer];
  [v16 setShadowOffset_];

  v17 = [v11 layer];
  [v17 setShadowRadius_];

  v18 = [v11 layer];
  [v18 setCornerCurve_];

  v19 = [v11 layer];
  [v19 setCornerRadius_];

  v20 = [v11 layer];
  [v20 setShadowPathIsBounds_];

  return v11;
}

id InterstitialCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InterstitialCollectionViewCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30InterstitialCollectionViewCell_assetView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InterstitialCollectionViewCell.prepareForReuse()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for InterstitialCollectionViewCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v1 = [v0 subviews];
  type metadata accessor for UIView();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CE93180](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      [v5 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

id InterstitialCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterstitialCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static VideoCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static VideoCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *VideoCollectionViewCell.videoView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23VideoCollectionViewCell_videoView);
  v2 = v1;
  return v1;
}

id VideoCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VideoCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void VideoCollectionViewCell.init(coder:)()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v0 = static MutableVideoViewModel.empty;
  v1 = objc_allocWithZone(type metadata accessor for VideoView());
  v2 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  v3 = objc_allocWithZone(type metadata accessor for VideoStaticView());
  v4 = v0;
  *&v1[v2] = [v3 init];
  v5 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  v6 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v7 = static VideoView.Constants.accessibilityString;
  v8 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v9 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v10 = v4;
  *&v1[v8] = [v9 init];
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 3;
  v30.receiver = v1;
  v30.super_class = type metadata accessor for AssetView();
  v13 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = *((*MEMORY[0x277D85000] & *v13) + 0xE8);
  v15 = v13;
  v14();
  AssetView.setFallBackView()();
  [v15 setIsAccessibilityElement_];
  v16 = [v15 accessibilityTraits];
  if ((v6 & ~v16) != 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  v18 = OBJC_IVAR____TtC9MomentsUI23VideoCollectionViewCell_videoView;
  [v15 setAccessibilityTraits_];
  v19 = MEMORY[0x21CE91FC0](v7, *(&v7 + 1));
  [v15 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21658CA50;
  v21 = type metadata accessor for UITraitUserInterfaceStyle();
  v22 = MEMORY[0x277D74BF0];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = v15;
  MEMORY[0x21CE92C30](v20, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v23 handleTraitChange];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  [v23 setClipsToBounds_];
  v24 = *&v23[OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView];
  v25 = v23;
  [v25 addSubview_];
  [v25 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v26 = *&v25[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v27 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v28 = [objc_opt_self() systemImageNamed_];

  [v26 setImage_];
  *(v29 + v18) = v13;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall VideoCollectionViewCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[PhotoCollectionViewCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI23VideoCollectionViewCell_videoView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x120))();
  }
}

id VideoCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized VideoCollectionViewCell.init(frame:)()
{
  v1 = v0;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableVideoViewModel.empty;
  v3 = objc_allocWithZone(type metadata accessor for VideoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  v5 = objc_allocWithZone(type metadata accessor for VideoStaticView());
  v6 = v2;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  v8 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v9 = static VideoView.Constants.accessibilityString;
  v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v11 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v12 = v6;
  *&v3[v10] = [v11 init];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 3;
  v38.receiver = v3;
  v38.super_class = type metadata accessor for AssetView();
  v15 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = MEMORY[0x277D85000];
  v17 = *((*MEMORY[0x277D85000] & *v15) + 0xE8);
  v18 = v15;
  v17();
  AssetView.setFallBackView()();
  [v18 setIsAccessibilityElement_];
  v19 = [v18 accessibilityTraits];
  if ((v8 & ~v19) != 0)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  v21 = OBJC_IVAR____TtC9MomentsUI23VideoCollectionViewCell_videoView;
  [v18 setAccessibilityTraits_];
  v22 = MEMORY[0x21CE91FC0](v9, *(&v9 + 1));
  [v18 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21658CA50;
  v24 = type metadata accessor for UITraitUserInterfaceStyle();
  v25 = MEMORY[0x277D74BF0];
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  v26 = v18;
  MEMORY[0x21CE92C30](v23, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v26 handleTraitChange];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  [v26 setClipsToBounds_];
  v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView];
  v28 = v26;
  [v28 addSubview_];
  [v28 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v29 = *&v28[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v30 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v31 = [objc_opt_self() systemImageNamed_];

  [v29 setImage_];
  *(v1 + v21) = v15;
  v32 = v28;
  v33 = CollectionViewAssetCell.init(assetView:)(v32);
  v34 = *((*v16 & *v33) + 0x90);
  v35 = v33;
  v36 = v34();
  [v36 addSubview_];

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  return v35;
}