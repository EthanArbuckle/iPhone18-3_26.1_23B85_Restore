uint64_t sub_216C98B74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter;
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter))
  {
    v4 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter);
  }

  else
  {
    v10[3] = type metadata accessor for SearchLandingPageIntent();
    v10[4] = sub_216C9D090(&qword_280E377C8, type metadata accessor for SearchLandingPageIntent);
    __swift_allocate_boxed_opaque_existential_1(v10);
    type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v4 = sub_216CDFAE0(v10, a1, 0, 0);
    sub_2166997CC(v10, &qword_27CAB6AB8);
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t sub_216C98C74(uint64_t a1, uint64_t a2)
{
  v5 = sub_216C99318();
  v6 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate;
  *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate) = 1;
  sub_21700DF14();
  sub_216C993F8();
  v7 = (v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
  *v7 = a1;
  v7[1] = a2;
  sub_21700DF14();

  *(v2 + v6) = 0;
  return v5;
}

void sub_216C98D10()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v57 = v2;
  v56 = v3;
  v61 = v4;
  v62 = v5;
  v59 = v6;
  v58 = v7;
  v9 = v8;
  v11 = v10;
  v60 = *v0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v54 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v53 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v52 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  sub_217005914();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  if (v9)
  {
    v21 = v9;
  }

  else
  {
    sub_216C99A14();
    v11 = v22;
    v21 = v23;
  }

  sub_21700DF14();
  sub_216C99870(v70);
  if (v71 == 1)
  {
    v25 = v70[0];
    v24 = v70[1];

    if (v25 == v11 && v24 == v21)
    {

LABEL_24:
      OUTLINED_FUNCTION_26();

      return;
    }

    v27 = sub_21700F7D4();

    if (v27)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_216C1C864(v70);
  }

  *&v67 = v11;
  *(&v67 + 1) = v21;
  sub_2170058F4();
  sub_2167B2E14();
  v28 = sub_21700F1A4();
  v30 = v29;
  v31 = OUTLINED_FUNCTION_45_0();
  v32(v31);

  v33 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v33 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v34 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = &unk_280E73000;
    v36 = v61;
    if (v61)
    {
      if (v61 == 1)
      {
        v37 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph);
        v38 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
        v39 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);

        sub_216C9C468(v11, v21, v37, v38, v39);
      }

      v40 = type metadata accessor for AddRecentSearchTermAction();
      *(&v68 + 1) = v40;
      v69 = sub_216C9D090(qword_280E35CE0, type metadata accessor for AddRecentSearchTermAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
      sub_21700DF14();
      sub_21700D234();
      v42 = (boxed_opaque_existential_1 + *(v40 + 20));
      *v42 = v11;
      v42[1] = v21;
    }

    else
    {
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
    }

    v44 = v62;
    sub_216681B64(&v67, &v63, &qword_27CAB6DB0);
    if (v64)
    {
      sub_2166A0F18(&v63, v65);
      if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph))
      {
        type metadata accessor for ObjectGraph();

        sub_21700E094();
        v45 = v54;
        v46 = v53;
        v47 = v55;
        (*(v54 + 104))(v53, *MEMORY[0x277D21E18], v55);
        sub_21700D5E4();

        v48 = v46;
        v44 = v62;
        v49 = v47;
        v36 = v61;
        (*(v45 + 8))(v48, v49);
        v35 = &unk_280E73000;
        (*(v52 + 8))(v19, v15);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v65);
    }

    else
    {
      sub_2166997CC(&v63, &qword_27CAB6DB0);
    }

    v50 = *(v1 + v35[412]);

    sub_216C9B5F0(v11, v21, v36, v50, v56, v57);

    if (v58)
    {
      sub_216C03C2C(0);
    }

    v65[0] = v11;
    v65[1] = v21;
    v65[2] = v59;
    v65[3] = v44;
    v66 = 1;
    sub_21700DF14();
    sub_216C9A934(v65);
    sub_2166997CC(&v67, &qword_27CAB6DB0);
  }

  else
  {
LABEL_22:
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C99318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C9938C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C99318();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216C993F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DF4();
  sub_216C9A198(v1, v2);
}

uint64_t sub_216C994D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216C99550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C994D8();
  *a1 = v3;
  return result;
}

uint64_t sub_216C995C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DF4();
  return sub_216C9A5D8();
}

id sub_216C99690()
{
  v1 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
    [v5 _setUseGlass_];
    v6 = objc_allocWithZone(type metadata accessor for UIKitSearchScopeBar.ContainerView());
    v7 = sub_21694E6DC(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_216C99738(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) = a1;
  return sub_216C9ACC8(v2);
}

uint64_t sub_216C99750(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass;
  swift_beginAccess();
  sub_216681B64(v1 + v6, v5, &qword_27CAB8600);
  swift_beginAccess();
  sub_216C9D010(a1, v1 + v6);
  swift_endAccess();
  sub_216C9B148(v5);
  sub_2166997CC(a1, &qword_27CAB8600);
  return sub_2166997CC(v5, &qword_27CAB8600);
}

void sub_216C99858(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused) = a1;
  sub_216C9B47C(v2);
}

double sub_216C99870@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_216C998F4(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v7 == 1)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_216C99B1C();
      MEMORY[0x28223BE20](v6);
      sub_217006954();
    }
  }

  return result;
}

void sub_216C99A14()
{
  OUTLINED_FUNCTION_49();
  v0 = sub_216C9AC30();
  if (v0)
  {
    v1 = v0;
    v2 = 0;
    v3 = *(v0 + 16);
    for (i = (v0 + 56); ; i += 4)
    {
      if (v3 == v2)
      {

        goto LABEL_12;
      }

      if (v2 >= *(v1 + 16))
      {
        break;
      }

      v6 = *(i - 1);
      v5 = *i;
      sub_21700DF14();
      sub_21700DF14();
      if (v6 == sub_216C99318() && v5 == v7)
      {

LABEL_14:

        goto LABEL_15;
      }

      v9 = sub_21700F7D4();

      if (v9)
      {
        goto LABEL_14;
      }

      ++v2;
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_216C99318();
LABEL_15:
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216C99B1C()
{
  v1 = v0;
  v2 = sub_21700B8B4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse;
  if (*(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse))
  {
    v10 = *(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse);
  }

  else
  {
    sub_216C99318();
    sub_216C9AA30();

    v10 = sub_217006944();
    (*(v4 + 8))(v8, v2);
    *(v1 + v9) = v10;
  }

  return v10;
}

uint64_t SearchScope.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_216B27C18();
  sub_21700CCD4();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v7 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  result = (*(v8 + 8))(a1);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t SearchScope.id.getter()
{
  if (*v0)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

void sub_216C99E24()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8070);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8068);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__searchText;
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_217007DA4();
  (*(v15 + 32))(v1 + v19, v18, v13);
  if (qword_280E42D18 != -1)
  {
    swift_once();
  }

  v20 = sub_216F0FE50();
  if (*(v20 + 16))
  {
    v21 = *(v20 + 32);
  }

  else
  {
    v21 = 1;
  }

  v22 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__scope;
  LOBYTE(v34) = v21;
  sub_217007DA4();
  (*(v9 + 32))(v1 + v22, v12, v7);
  v23 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__state;
  v34 = 0u;
  v35 = 0u;
  v36 = 2;
  sub_217007DA4();
  (*(v3 + 32))(v1 + v23, v6, v33);
  v24 = (v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
  sub_21700DC34();
  v25 = sub_21700DC24();
  v26 = MEMORY[0x277D221C0];
  *v24 = v25;
  v24[1] = v26;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph) = 0;
  v27 = (v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) = 0;
  sub_2170098A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C9A198(uint64_t a1, uint64_t a2)
{
  if (sub_216C99318() != a1 || v4 != a2)
  {
    v6 = sub_21700F7D4();

    if (v6 & 1) != 0 || (*(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate))
    {
      return result;
    }

    v8 = sub_216C99318();
    v9 = (v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
    *v9 = v8;
    v9[1] = v10;

    sub_216C99318();
    sub_216C9A25C();
  }
}

void sub_216C9A25C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_217005914();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v34 = v5;
  v35 = v3;
  sub_2170058D4();
  sub_2167B2E14();
  v13 = sub_21700F1A4();
  v15 = v14;
  (*(v8 + 8))(v12, v6);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph);
    if (v17)
    {

      v18 = OUTLINED_FUNCTION_45_0();
      sub_216C9B5F0(v18, v19, 0, v17, 0, 0xE000000000000000);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_217007DE4();

      if (v33)
      {
        v20 = sub_216C99318();
        sub_216C998F4(v20, v21);

        OUTLINED_FUNCTION_6_104();
      }

      else
      {
        type metadata accessor for JSIntentDispatcher();
        sub_21700D4B4();
        if (v34)
        {

          v27 = OUTLINED_FUNCTION_45_0();
          v34 = v5;
          v35 = v3;
          v36 = sub_216C9C2F4(v27, v28, v17);
          v37 = 0;
          v38 = 0;
          sub_21700DF14();

          sub_216C9A934(&v34);

LABEL_21:

          goto LABEL_22;
        }

        if (qword_27CAB6018 != -1)
        {
          OUTLINED_FUNCTION_2_154();
        }

        v29 = sub_217007CA4();
        __swift_project_value_buffer(v29, qword_27CAC8030);
        v30 = sub_217007C84();
        v31 = sub_21700ED84();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_43();
          *v32 = 0;
          _os_log_impl(&dword_216679000, v30, v31, "App not bootstrapped yet.  Falling back to results state", v32, 2u);
          OUTLINED_FUNCTION_6();
        }

        OUTLINED_FUNCTION_6_104();
      }

      sub_216C9A934(&v34);
      goto LABEL_21;
    }

    if (qword_27CAB6018 != -1)
    {
      OUTLINED_FUNCTION_2_154();
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_27CAC8030);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    if (os_log_type_enabled(v23, v24))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_50_0(&dword_216679000, v25, v26, "Could not update search text due to nil objectGraph");
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    sub_216C9ACE8();
  }

LABEL_22:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C9A5D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  result = sub_21688D1E4();
  if ((result & 1) == 0)
  {
    v1 = sub_216C99318();
    v3 = v2;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_216C99318();
      sub_216C9A25C();
    }
  }

  return result;
}

uint64_t sub_216C9A698(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_216C9CF00(a1, &v31);
  sub_216C99870(&v31);
  v9 = v31;
  v8 = v32;
  v10 = v35;
  if (*(a1 + 32))
  {
    v11 = v33;
    v12 = v34;
    sub_216C9CF38(v4, v3, v6, v5, v7);
    v13 = v9;
    v14 = v8;
    v15 = v11;
    v16 = v12;
    v17 = v10;
    return sub_216C9CF38(v13, v14, v15, v16, v17);
  }

  if (!v35)
  {
    v26 = v33;
    v27 = v34;
    sub_216C9CF38(v4, v3, v6, v5, v7);
    v13 = v9;
    v14 = v8;
    v15 = v26;
    v16 = v27;
    v17 = 0;
    return sub_216C9CF38(v13, v14, v15, v16, v17);
  }

  if (v35 == 1)
  {
    v19 = v33;
    v20 = v34;
    sub_216C9CF38(v4, v3, v6, v5, v7);
    v21 = v9;
    v22 = v8;
    v23 = v19;
    v24 = v20;
    v25 = 1;
  }

  else
  {
    v28 = v34;
    v29 = v33;
    if (v33 | v32 | v31 | v34)
    {
      sub_216C9CF38(v4, v3, v6, v5, v7);
      v21 = 1;
    }

    else
    {
      sub_216C9CF38(v4, v3, v6, v5, v7);
      v21 = v9;
    }

    v22 = v8;
    v23 = v29;
    v24 = v28;
    v25 = 2;
  }

  sub_216C9CF38(v21, v22, v23, v24, v25);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter) = 0;

  v30 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask;
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask))
  {
    type metadata accessor for JSSearchPage();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    sub_21700EB04();
  }

  *(v1 + v30) = 0;
}

double sub_216C9A8A0@<D0>(uint64_t a1@<X8>)
{
  sub_216C99870(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_216C9A8E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_216C9CF00(v4, v3);
  return sub_216C9A934(v4);
}

uint64_t sub_216C9A934(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = *(a1 + 16);
  v5 = *a1;
  v6 = v2;
  v7 = *(a1 + 32);

  sub_216C9CF00(a1, v4);
  sub_217007DF4();
  sub_216C9A698(v8);
  sub_216C1C864(v8);
  return sub_216C1C864(a1);
}

uint64_t sub_216C9AA30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8060);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21705BDD0;
  v1 = sub_21700C384();
  v2 = MEMORY[0x277CD83F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_21700C1E4();
  v4 = MEMORY[0x277CD8298];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21700C084();
  v6 = MEMORY[0x277CD81F0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_21700C714();
  v8 = sub_216C9D090(&qword_280E2A388, MEMORY[0x277D2B358]);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = sub_21700BA44();
  v10 = MEMORY[0x277CD7E18];
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = sub_2170072A4();
  v12 = sub_216C9D090(&qword_280E4A400, MEMORY[0x277D2AD30]);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = sub_2170073D4();
  v14 = sub_216C9D090(&qword_280E4A3F8, MEMORY[0x277D2ADE8]);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = sub_217006B84();
  v16 = sub_216C9D090(&qword_280E4A428, MEMORY[0x277D2A7C8]);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  sub_21700DF14();
  sub_21700B894();
  sub_21700B884();
  sub_21700B874();
  return sub_21700B8A4();
}

uint64_t sub_216C9AC30()
{
  sub_216C9AC78();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;

  return v2;
}

uint64_t sub_216C9AC78()
{
  sub_216C99870(&v1);
  if (!v2)
  {
    return v1;
  }

  sub_216C1C864(&v1);
  return 0;
}

uint64_t sub_216C9ACC8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) != (result & 1))
  {
    return sub_216C9ACE8();
  }

  return result;
}

uint64_t sub_216C9ACE8()
{
  v1 = v0;
  v2 = sub_2170098A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass;
  swift_beginAccess();
  (*(v3 + 104))(v14, *MEMORY[0x277CE0560], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v16 = *(v6 + 56);
  v17 = v1 + v15;
  v18 = v1;
  sub_216681B64(v17, v8, &qword_27CAB8600);
  sub_216681B64(v14, &v8[v16], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_2166997CC(v14, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v2) == 1)
    {
      sub_2166997CC(v8, &qword_27CAB8600);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_216681B64(v8, v11, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v2) == 1)
  {
    sub_2166997CC(v14, &qword_27CAB8600);
    (*(v3 + 8))(v11, v2);
LABEL_6:
    sub_2166997CC(v8, &qword_27CAB8708);
    goto LABEL_7;
  }

  v24 = v31;
  (*(v3 + 32))(v31, &v8[v16], v2);
  sub_216C9D090(&qword_280E2A858, MEMORY[0x277CE0570]);
  v25 = sub_21700E494();
  v26 = *(v3 + 8);
  v26(v24, v2);
  sub_2166997CC(v14, &qword_27CAB8600);
  v26(v11, v2);
  sub_2166997CC(v8, &qword_27CAB8600);
  if (v25)
  {
LABEL_13:
    v27 = sub_216C99318();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      goto LABEL_16;
    }

    return result;
  }

LABEL_7:
  if ((*(v18 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) & 1) == 0)
  {
LABEL_16:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_17;
  }

  v19 = sub_216C99318();
  v21 = v20;

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v32 = 1uLL;
    v33 = 0uLL;
LABEL_17:
    v34 = 2;
    return sub_216C9A934(&v32);
  }

  return result;
}

uint64_t sub_216C9B148(uint64_t a1)
{
  v3 = sub_2170098A4();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_216681B64(a1, v12, &qword_27CAB8600);
  sub_216681B64(v1 + v13, &v12[v14], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
    {
      return sub_2166997CC(v12, &qword_27CAB8600);
    }

    goto LABEL_6;
  }

  sub_216681B64(v12, v8, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
  {
    (*(v19 + 8))(v8, v3);
LABEL_6:
    sub_2166997CC(v12, &qword_27CAB8708);
    return sub_216C9ACE8();
  }

  v16 = v19;
  (*(v19 + 32))(v5, &v12[v14], v3);
  sub_216C9D090(&qword_280E2A858, MEMORY[0x277CE0570]);
  v17 = sub_21700E494();
  v18 = *(v16 + 8);
  v18(v5, v3);
  v18(v8, v3);
  result = sub_2166997CC(v12, &qword_27CAB8600);
  if ((v17 & 1) == 0)
  {
    return sub_216C9ACE8();
  }

  return result;
}

void sub_216C9B47C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_217005914();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused);
  if (v8 != v3)
  {
    v9 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate;
    *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate) = 1;
    v10 = *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText + 8);
    if (v8)
    {
      sub_21700DF14();
    }

    else
    {
      v11[0] = *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
      v11[1] = v10;
      sub_21700DF14();
      sub_2170058F4();
      sub_2167B2E14();
      sub_21700F1A4();
      (*(v5 + 8))(v7, v4);
    }

    sub_216C993F8();
    *(v2 + v9) = 0;
  }
}

void sub_216C9B5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v65 = a3;
  v66 = a1;
  v67 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - v8;
  v9 = sub_21700CFB4();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - v12;
  v14 = sub_21700DA84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - v22;
  v24 = sub_21700D574();
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v62 = v15;
    v74 = v25;

    sub_21700D4B4();
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
    {
      sub_2166997CC(v23, &unk_27CABFB50);
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v28 = sub_217007CA4();
      __swift_project_value_buffer(v28, qword_27CAC8030);
      v29 = sub_217007C84();
      v30 = sub_21700ED84();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_216679000, v29, v30, "Search event was dropped because the pipeline is not present in the object graph", v31, 2u);
        MEMORY[0x21CEA1440](v31, -1, -1);
      }

      return;
    }

    (v74[4].isa)(v27, v23, v24);
    sub_21700D4B4();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_2166997CC(v13, &qword_27CABB9C0);
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v36 = sub_217007CA4();
      __swift_project_value_buffer(v36, qword_27CAC8030);
      v37 = sub_217007C84();
      v38 = sub_21700ED84();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_216679000, v37, v38, "Search event was dropped because the metrics fields context was not present in the object graph", v39, 2u);
        MEMORY[0x21CEA1440](v39, -1, -1);
      }

      else
      {
      }

      goto LABEL_39;
    }

    (*(v62 + 32))(v20, v13, v14);
    type metadata accessor for MusicPageMetricsProvider();
    sub_21700D4B4();
    v40 = v77;
    if (!v77)
    {
LABEL_24:
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v43 = sub_217007CA4();
      __swift_project_value_buffer(v43, qword_27CAC8030);
      v44 = sub_217007C84();
      v45 = sub_21700ED84();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_216679000, v44, v45, "Search event was dropped because no page fields are not present in the object graph", v46, 2u);
        MEMORY[0x21CEA1440](v46, -1, -1);
      }

      (*(v62 + 8))(v20, v14);
      goto LABEL_39;
    }

    v41 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    v42 = sub_21700D194();
    if (__swift_getEnumTagSinglePayload(v40 + v41, 1, v42))
    {
      swift_endAccess();
LABEL_23:

      goto LABEL_24;
    }

    v47 = sub_21700D0F4();
    swift_endAccess();
    if (!v47)
    {
      goto LABEL_23;
    }

    v61 = v40;
    v78 = MEMORY[0x277D837D0];
    *&v77 = 0x686372616553;
    *(&v77 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v77, &v76);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v47;
    sub_2166EF9D4();
    v60 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    if (v65)
    {
      if (v65 == 1)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_217013D90;
        *(inited + 32) = 0x6449746567726174;
        *(inited + 40) = 0xE800000000000000;
        *(inited + 48) = 0x686372616553;
        *(inited + 56) = 0xE600000000000000;
        v49 = MEMORY[0x277D837D0];
        *(inited + 72) = MEMORY[0x277D837D0];
        strcpy((inited + 80), "actionContext");
        *(inited + 120) = v49;
        *(inited + 94) = -4864;
        *(inited + 96) = 0x6472616F6279656BLL;
        *(inited + 104) = 0xE800000000000000;
        sub_21700E384();
        if (qword_280E46040 == -1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_217013D90;
        *(v52 + 32) = 0x6449746567726174;
        *(v52 + 40) = 0xE800000000000000;
        *(v52 + 48) = 49;
        *(v52 + 56) = 0xE100000000000000;
        *(v52 + 72) = MEMORY[0x277D837D0];
        strcpy((v52 + 80), "actionDetails");
        *(v52 + 94) = -4864;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830);
        v53 = swift_initStackObject();
        *(v53 + 16) = xmmword_217013DA0;
        strcpy((v53 + 32), "searchPrefix");
        *(v53 + 45) = 0;
        *(v53 + 46) = -5120;
        *(v53 + 48) = v63;
        *(v53 + 56) = v64;
        sub_21700DF14();
        v54 = sub_21700E384();
        *(v52 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890);
        *(v52 + 96) = v54;
        sub_21700E384();
        if (qword_280E46040 == -1)
        {
LABEL_38:
          v55 = sub_21700CF84();
          __swift_project_value_buffer(v55, qword_280E73DB0);
          sub_21700CF64();

          *&v77 = v60;
          v56 = v68;
          sub_21700DA44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
          sub_21700DA24();
          (*(v69 + 8))(v56, v70);

          v57 = v73;
          sub_21700D564();

          v58 = *(v62 + 8);
          v58(v17, v14);
          (*(v71 + 8))(v57, v72);
          v58(v20, v14);
LABEL_39:
          (v74[1].isa)(v27, v24);
          return;
        }
      }
    }

    else
    {
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_217013D90;
      *(v50 + 32) = 0x6449746567726174;
      *(v50 + 40) = 0xE800000000000000;
      *(v50 + 48) = 0x686372616553;
      *(v50 + 56) = 0xE600000000000000;
      v51 = MEMORY[0x277D837D0];
      *(v50 + 72) = MEMORY[0x277D837D0];
      strcpy((v50 + 80), "actionContext");
      *(v50 + 120) = v51;
      *(v50 + 94) = -4864;
      *(v50 + 96) = 0x6472616F6279656BLL;
      *(v50 + 104) = 0xE800000000000000;
      sub_21700E384();
      if (qword_280E46040 == -1)
      {
        goto LABEL_38;
      }
    }

    swift_once();
    goto LABEL_38;
  }

  if (qword_27CAB6018 != -1)
  {
    swift_once();
  }

  v32 = sub_217007CA4();
  __swift_project_value_buffer(v32, qword_27CAC8030);
  v74 = sub_217007C84();
  v33 = sub_21700ED84();
  if (os_log_type_enabled(v74, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_216679000, v74, v33, "Search event was dropped because no object graph is present", v34, 2u);
    MEMORY[0x21CEA1440](v34, -1, -1);
  }

  v35 = v74;
}

uint64_t sub_216C9C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask;
  if (*(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask))
  {
    type metadata accessor for JSSearchPage();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    sub_21700EB04();
  }

  v16[3] = &type metadata for SearchSuggestionsPageIntent;
  v16[4] = sub_216C9CEAC();
  v16[0] = a1;
  v16[1] = a2;
  v9 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter;
  v10 = *(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter);
  if (v10)
  {
    sub_21700DF14();

    sub_216D5DE68();
    v12 = v11;
    sub_2166997CC(v16, &qword_27CAC8058);
    *(v4 + v8) = v12;
  }

  else
  {
    v13 = *(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
    v14 = *(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
    sub_21700DF14();
    v10 = sub_216CE0698(v16, a3, v13, v14);
    sub_2166997CC(v16, &qword_27CAC8058);
    *(v4 + v9) = v10;
  }

  return v10;
}

void sub_216C9C468(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v9 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_21700D574();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v39 = a4;
    v40 = a5;
    type metadata accessor for MusicPageMetricsProvider();

    sub_21700D4B4();
    v19 = v44;
    if (!v44)
    {
LABEL_6:
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v22 = sub_217007CA4();
      __swift_project_value_buffer(v22, qword_27CAC8030);
      v23 = sub_217007C84();
      v24 = sub_21700ED84();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_216679000, v23, v24, "Unable to report click event because no page fields were found", v25, 2u);
        MEMORY[0x21CEA1440](v25, -1, -1);
      }

LABEL_10:

      return;
    }

    v20 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    v21 = sub_21700D194();
    if (__swift_getEnumTagSinglePayload(v19 + v20, 1, v21))
    {
      swift_endAccess();
LABEL_5:

      goto LABEL_6;
    }

    v30 = sub_21700D0F4();
    swift_endAccess();
    if (!v30)
    {
      goto LABEL_5;
    }

    v38 = v30;
    sub_21700D4B4();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {

      sub_2166997CC(v14, &unk_27CABFB50);
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v31 = sub_217007CA4();
      __swift_project_value_buffer(v31, qword_27CAC8030);
      v23 = sub_217007C84();
      v32 = sub_21700ED84();
      if (os_log_type_enabled(v23, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_216679000, v23, v32, "Unable to report click event because no metrics pipeline was found", v33, 2u);
        MEMORY[0x21CEA1440](v33, -1, -1);
      }

      goto LABEL_10;
    }

    (*(v16 + 32))(v18, v14, v15);
    v34 = v9[9];
    v35 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v11[v34], 1, 1, v35);
    *v11 = 0x686372616573;
    *(v11 + 1) = 0xE600000000000000;
    *(v11 + 8) = 6402;
    *(v11 + 24) = xmmword_217029BA0;
    *(v11 + 5) = 0;
    v11[v9[11]] = 0;
    *&v11[v9[10]] = 0;
    v45 = MEMORY[0x277D837D0];
    *&v44 = a1;
    *(&v44 + 1) = v41;
    sub_2166EF9C4(&v44, &v43);
    sub_21700DF14();
    v36 = v38;
    swift_isUniquelyReferenced_nonNull_native();
    v42 = v36;
    sub_2166EF9D4();
    sub_216C949EC(v11, v42, v18, v39, v40, 0x686372616553, 0xE600000000000000);

    sub_216C9CFB4(v11);
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    if (qword_27CAB6018 != -1)
    {
      swift_once();
    }

    v26 = sub_217007CA4();
    __swift_project_value_buffer(v26, qword_27CAC8030);
    v41 = sub_217007C84();
    v27 = sub_21700ED84();
    if (os_log_type_enabled(v41, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_216679000, v41, v27, "Unable to report click event because no object graph was found", v28, 2u);
      MEMORY[0x21CEA1440](v28, -1, -1);
    }

    v29 = v41;
  }
}

uint64_t sub_216C9CA58()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC8030);
  __swift_project_value_buffer(v0, qword_27CAC8030);
  return sub_217007C94();
}

uint64_t sub_216C9CAD8(uint64_t a1)
{
  v2 = sub_21700B8B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return sub_216C9AA30();
}

uint64_t sub_216C9CB54()
{
  v1 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__searchText;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__scope;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8068);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8070);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  swift_unknownObjectRelease();

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass, &qword_27CAB8600);

  return v0;
}

uint64_t sub_216C9CCD8()
{
  sub_216C9CB54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216C9CD30(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_216C9CD48()
{
  result = qword_27CAC8048;
  if (!qword_27CAC8048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_7MusicUI19SearchPagePresenterC5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

unint64_t sub_216C9CEAC()
{
  result = qword_27CAC8050;
  if (!qword_27CAC8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8050);
  }

  return result;
}

uint64_t sub_216C9CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_216C9CFB4(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.ClickFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C9D010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C9D090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C9D0E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216C9D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v8[14] = type metadata accessor for AddRecentSearchMusicItemAction();
  v8[15] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  v8[16] = OUTLINED_FUNCTION_80();
  v9 = sub_2170067A4();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  v8[20] = OUTLINED_FUNCTION_80();
  v10 = sub_217006924();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[24] = sub_21700EA24();
  v12 = sub_21700E9B4();
  v8[25] = v12;
  v8[26] = v11;

  return MEMORY[0x2822009F8](sub_216C9D304, v12, v11);
}

uint64_t sub_216C9D304()
{
  v2 = v0[20];
  v1 = v0[21];
  type metadata accessor for AddRecentSearchAction();
  sub_216C6C5E8(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[20];

    sub_21669987C(v3, &unk_27CABF9C0);
    if (qword_27CAB6020 != -1)
    {
      OUTLINED_FUNCTION_0_218();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_27CAC8078);
    v5 = sub_217007C84();
    v6 = sub_21700ED84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      OUTLINED_FUNCTION_121(&dword_216679000, v8, v9, "Unable to add recent search item. Unable to construct typed identifier from content descriptor");
      MEMORY[0x21CEA1440](v7, -1, -1);
    }

    v10 = v0[8];

LABEL_13:
    v23 = *MEMORY[0x277D21CA8];
    v24 = sub_21700D2A4();
    (*(*(v24 - 8) + 104))(v10, v23, v24);

    OUTLINED_FUNCTION_3();

    return v25();
  }

  v12 = v0[16];
  v11 = v0[17];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v13 = v0[16];

    sub_21669987C(v13, &qword_27CAB7088);
    if (qword_27CAB6020 != -1)
    {
      OUTLINED_FUNCTION_0_218();
    }

    v14 = sub_217007CA4();
    __swift_project_value_buffer(v14, qword_27CAC8078);
    v15 = sub_217007C84();
    v16 = sub_21700ED84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_121(&dword_216679000, v18, v19, "Unable to add recent search item. Unable to find music item");
      MEMORY[0x21CEA1440](v17, -1, -1);
    }

    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[21];
    v10 = v0[8];

    (*(v21 + 8))(v20, v22);
    goto LABEL_13;
  }

  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[17];
  v31 = v0[14];
  v30 = v0[15];
  (*(v28 + 32))(v27, v0[16], v29);
  (*(v28 + 16))(v30 + *(v31 + 20), v27, v29);
  sub_21700D234();
  v0[5] = v31;
  v0[6] = sub_216C9DCE0(&qword_280E47F78, type metadata accessor for AddRecentSearchMusicItemAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_216C9DD28(v30, boxed_opaque_existential_1);
  v33 = swift_task_alloc();
  v0[27] = v33;
  type metadata accessor for AddRecentSearchActionImplementation();
  swift_getWitnessTable();
  *v33 = v0;
  v33[1] = sub_216C9D768;

  return sub_216B6DB60();
}

uint64_t sub_216C9D768()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_216C9D974;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_216C9D884;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216C9D884()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[15];

  sub_216C9DD8C(v7);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216C9D974()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];

  sub_216C9DD8C(v7);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216C9DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_216C9D134(a1, a2, a3, v12, a5, v13, v15, v16);
}

uint64_t sub_216C9DB34(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C9DB70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C9DBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216C9DC60()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC8078);
  __swift_project_value_buffer(v0, qword_27CAC8078);
  return sub_217007C94();
}

uint64_t sub_216C9DCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C9DD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddRecentSearchMusicItemAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C9DD8C(uint64_t a1)
{
  v2 = type metadata accessor for AddRecentSearchMusicItemAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C9DDE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216C9DE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216C9DEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v74 = v62 - v5;
  v73 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v70 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v67 = v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8090);
  OUTLINED_FUNCTION_1();
  v68 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v65 = v62 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8098);
  OUTLINED_FUNCTION_1();
  v71 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v69 = v62 - v14;
  v15 = sub_21700D704();
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v66 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  v63 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = v62 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v62 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC80A0);
  OUTLINED_FUNCTION_1();
  v64 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = v62 - v28;
  v30 = v1[1];
  v32 = v1[2];
  v31 = v1[3];
  v84 = *v1;
  v85 = v30;
  v86 = v32;
  v87 = v31;
  v33 = v1[5];
  v88 = v1[4];
  v34 = type metadata accessor for ObjectGraph();
  v35 = sub_216C9E94C();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v78 = v33;
  v79 = v29;
  v36 = v34;
  sub_21700A1E4();

  v37 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D837D0];
  sub_21700E384();
  sub_21700D6F4();
  sub_216C5570C(v37);
  sub_21700D124();
  v39 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v39);
  sub_21700DC34();
  v62[1] = sub_21700DC24();
  v40 = v2[9];
  v41 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v40);
  v42 = (*(v41 + 8))(v40, v41);
  v44 = v43;
  v66 = v25;
  v45 = v25;
  v46 = v77;
  sub_216681B64(v45, v77, &qword_27CAB8DF8);
  if (__swift_getEnumTagSinglePayload(v46, 1, v39))
  {
  }

  else
  {
    v47 = sub_21700D0E4();
    if (*v48)
    {
      v83 = v38;
      v81 = v42;
      v82 = v44;
      sub_2166EF928();
    }

    else
    {
    }

    v47(&v84, 0);
  }

  v84 = &type metadata for AlertPresentationDestinationView.ContentView;
  v85 = v36;
  v86 = v35;
  OUTLINED_FUNCTION_1_187();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v65;
  v51 = v80;
  sub_21700A224();
  v52 = v63;
  sub_216681B64(v46, v63, &qword_27CAB8DF8);
  v53 = v67;
  v54 = v73;
  sub_21700D444();
  v55 = v74;
  sub_217007584();
  v56 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
  v84 = v51;
  v85 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_155();
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v69;
  v59 = v72;
  sub_21700A194();
  sub_21669987C(v55, &qword_27CAC1E28);
  (*(v70 + 8))(v53, v54);
  sub_21669987C(v52, &qword_27CAB8DF8);
  (*(v68 + 8))(v50, v59);
  sub_21700D844();
  sub_21700D444();
  v84 = v59;
  v85 = v57;
  OUTLINED_FUNCTION_1_119();
  swift_getOpaqueTypeConformance2();
  v60 = v75;
  sub_21700A1F4();

  (*(v71 + 8))(v58, v60);
  sub_21669987C(v66, &qword_27CAB8DF8);
  (*(v64 + 8))(v79, v80);
  return sub_21669987C(v77, &qword_27CAB8DF8);
}

uint64_t sub_216C9E618()
{
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F70);
  sub_2166D9530(&qword_27CAC80B0, &qword_27CAB6BA0);
  sub_2166D9530(&qword_27CAC80B8, &qword_27CAC1F70);
  sub_216C9E9CC();
  return sub_21700B164();
}

uint64_t sub_216C9E740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s6ActionVMa();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_216681B64(a1 + 32, a2, &qword_27CAB6DB0);
  v8 = *(v5 + 28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F70);
  sub_216681B64(a1 + v8, a2 + v9[11], &qword_27CAB70A8);
  sub_2168D29EC(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_21681622C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = v9[12];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v9[13];
  result = swift_getKeyPath();
  *v13 = result;
  v13[40] = 0;
  a2[5] = sub_216C9EA24;
  a2[6] = v11;
  a2[7] = 0;
  a2[8] = 0;
  return result;
}

uint64_t sub_216C9E8F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v4;
  return sub_21700DF14();
}

unint64_t sub_216C9E94C()
{
  result = qword_27CAC80A8;
  if (!qword_27CAC80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80A8);
  }

  return result;
}

unint64_t sub_216C9E9CC()
{
  result = qword_27CAC80C0;
  if (!qword_27CAC80C0)
  {
    _s6ActionVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80C0);
  }

  return result;
}

uint64_t sub_216C9EA24@<X0>(void *a1@<X8>)
{
  v3 = _s6ActionVMa();
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216C9E8F4(v5, a1);
}

unint64_t sub_216C9EA90()
{
  result = qword_27CAC80C8;
  if (!qword_27CAC80C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC80D0);
    sub_2166D9530(&qword_27CAC80B8, &qword_27CAC1F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackLockup.LayoutStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >> 2 >= 0xFFF)
  {
    if (a2 + 49156 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 49156 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 49157;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v5 >= 0x3FFB)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for TrackLockup.LayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
          *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C9ED00(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 13;
  v4 = v1 & 1 | (2 * ((v1 >> 8) & 1)) | 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_216C9ED38(_WORD *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0x101 | (a2 << 13);
  }

  else
  {
    v2 = (a2 << 7) & 0x100 | a2 & 1 | 0x8000;
  }

  *result = v2;
  return result;
}

void sub_216C9ED88()
{
  OUTLINED_FUNCTION_22_3();
  v89 = v0;
  v91 = v2;
  v4 = v3;
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v90 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v79 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  sub_21700CDB4();
  if (v24)
  {
    v25 = v24;
    v26 = v5;
    v27 = v90;
    OUTLINED_FUNCTION_27_46();
    if (v29 == 0x617254666C656873 && v25 == v28)
    {

      v32 = v4;
      v33 = v27;
    }

    else
    {
      v31 = sub_21700F7D4();

      v32 = v4;
      v33 = v27;
      if ((v31 & 1) == 0)
      {
        sub_21700E2E4();
        OUTLINED_FUNCTION_0_219();
        sub_2166D3D30(v34, v35);
        v36 = OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_35_34(v36, v37);
        v38 = MEMORY[0x277D84F90];
        *v39 = &type metadata for TrackLockup.LayoutStyle;
        v39[1] = v38;
        OUTLINED_FUNCTION_50();
        (*(v40 + 104))();
LABEL_18:
        swift_willThrow();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v56 + 8))(v91);
        (*(v33 + 8))(v32, v26);
        goto LABEL_19;
      }
    }

    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v48 + 8))(v91);
    (*(v33 + 8))(v32, v26);
  }

  else
  {
    v83 = v19;
    v84 = v1;
    v81 = v16;
    v82 = v13;
    v80 = v10;
    v87 = v4;
    sub_21700CE04();
    v41 = sub_21700CDB4();
    v43 = v42;
    v33 = v90;
    v44 = *(v90 + 8);
    v88 = v5;
    v85 = v44;
    v86 = v90 + 8;
    v44(v23, v5);
    if (!v43)
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_219();
      sub_2166D3D30(v49, v50);
      v51 = OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_35_34(v51, v52);
      v53 = MEMORY[0x277D84F90];
      *v54 = 1684957547;
      v54[1] = 0xE400000000000000;
      v54[2] = &type metadata for TrackLockup.LayoutStyle;
      v54[3] = v53;
      OUTLINED_FUNCTION_50();
      (*(v55 + 104))();
      v32 = v87;
      v26 = v88;
      goto LABEL_18;
    }

    v45 = v41 == 0x73694C73676E6F73 && v43 == 0xE900000000000074;
    if (!v45 && (OUTLINED_FUNCTION_14_69() & 1) == 0)
    {
      OUTLINED_FUNCTION_27_46();
      v58 = v41 == 0x6172546D75626C61 && v43 == v57;
      if (v58 || (OUTLINED_FUNCTION_14_69() & 1) != 0)
      {

        OUTLINED_FUNCTION_26_43();
        v59 = v83;
        sub_21700CE04();
        sub_21700CD44();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v60 + 8))(v91);
        OUTLINED_FUNCTION_19_50();
        v41();
        (v41)(v59, v59);
        goto LABEL_19;
      }

      v61 = v41 == 0xD000000000000011 && 0x800000021708D860 == v43;
      v32 = v87;
      if (v61 || (OUTLINED_FUNCTION_28_38(), (OUTLINED_FUNCTION_14_69() & 1) != 0))
      {

        OUTLINED_FUNCTION_26_43();
        v62 = v81;
        sub_21700CE04();
        sub_21700CD44();
        v63 = v62;
        v64 = v88;
        v65 = v85;
        v85(v63, v88);
        OUTLINED_FUNCTION_25_45();
        v66 = v82;
        sub_21700CE04();
        sub_21700CD44();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v67 + 8))(v91);
        v65(v32, v64);
        v65(v66, v64);
        goto LABEL_19;
      }

      if (v41 == 0x6361725464697267 && v43 == 0xED00007473694C6BLL)
      {

        v70 = v80;
      }

      else
      {
        v69 = OUTLINED_FUNCTION_14_69();

        v70 = v80;
        if ((v69 & 1) == 0)
        {
          sub_21700E2E4();
          OUTLINED_FUNCTION_0_219();
          sub_2166D3D30(v71, v72);
          v73 = OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_35_34(v73, v74);
          v75 = MEMORY[0x277D84F90];
          *v76 = &type metadata for TrackLockup.LayoutStyle;
          v76[1] = v75;
          OUTLINED_FUNCTION_50();
          (*(v77 + 104))();
          v26 = v88;
          goto LABEL_18;
        }
      }

      sub_21700CE04();
      sub_21700CD44();
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v78 + 8))(v91);
      OUTLINED_FUNCTION_19_50();
      v41();
      (v41)(v70, v70);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_25_45();
    v46 = v84;
    sub_21700CE04();
    sub_21700CD44();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v47 + 8))(v91);
    OUTLINED_FUNCTION_19_50();
    v41();
    (v41)(v46, v46);
  }

LABEL_19:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C9F530(unsigned __int16 a1, unsigned __int16 a2)
{
  switch(a1 >> 13)
  {
    case 1:
      if ((a2 & 0xE000) == 0x2000)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 2:
      if ((a2 & 0xE000) != 0x4000)
      {
        goto LABEL_13;
      }

      if ((a2 ^ a1))
      {
        v2 = 0;
      }

      else
      {
        v2 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
      }

      break;
    case 3:
      if ((a2 & 0xE000) == 0x6000)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 4:
      if (a2 != 0x8000)
      {
        goto LABEL_13;
      }

      v2 = 1;
      break;
    default:
      if (a2 < 0x2000u)
      {
LABEL_11:
        v2 = a2 ^ a1 ^ 1;
      }

      else
      {
LABEL_13:
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

void sub_216C9F5E0(_WORD *a1@<X8>)
{
  sub_216C9ED88();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_216C9F60C()
{
  OUTLINED_FUNCTION_22_3();
  v137 = v0;
  v152 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  v13 = v129 - v12;
  v147 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v24);
  v26 = v129 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_28_38();
  sub_21700CE04();
  v138 = v9;
  v27 = v9 + 16;
  v28 = *(v9 + 16);
  v29 = v4;
  v145 = v27;
  v146 = v7;
  v144 = v28;
  (v28)(v13, v152, v7);
  v136 = v13;
  sub_21700D734();
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v35 = *(v15 + 8);
  v33 = v15 + 8;
  v34 = v35;
  v36 = v1;
  v37 = v147;
  (v35)(v36, v147);
  if (v32)
  {
    v38 = type metadata accessor for TrackLockup();
    *&v150 = v30;
    *(&v150 + 1) = v32;
    v130 = v32;
    sub_21700F364();
    sub_21700CE04();
    v143 = v38;
    sub_21700D2E4();
    v39 = OUTLINED_FUNCTION_31_7();
    v34(v39);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    sub_21700D2E4();
    v40 = OUTLINED_FUNCTION_31_7();
    v34(v40);
    v140 = v29;
    if (v149)
    {
      v41 = v152;
      sub_2166A0F18(&v148, &v150);
      v42 = v34;
    }

    else
    {
      sub_21700CE04();
      v41 = v152;
      sub_21700D2E4();
      v51 = OUTLINED_FUNCTION_31_7();
      v34(v51);
      v42 = v34;
      if (v149)
      {
        sub_2166997CC(&v148, &qword_27CAB6DB0);
      }
    }

    v52 = v143;
    OUTLINED_FUNCTION_22_53(v143[19]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    sub_21700D2E4();
    v53 = OUTLINED_FUNCTION_31_7();
    v42(v53);
    v141 = v42;
    v142 = v33;
    if (v149)
    {
      sub_2166A0F18(&v148, &v150);
    }

    else
    {
      sub_21700CE04();
      sub_21700D2E4();
      v54 = OUTLINED_FUNCTION_31_7();
      v42(v54);
      if (v149)
      {
        sub_2166997CC(&v148, &qword_27CAB6DB0);
      }
    }

    v134 = (v6 + v52[7]);
    OUTLINED_FUNCTION_22_53(v52[20]);
    v55 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_8_59();
    OUTLINED_FUNCTION_28_38();
    sub_21700CE04();
    v56 = v144;
    (v144)(v136, v41, v146);
    sub_2166D3D30(qword_280E40390, type metadata accessor for ContentDescriptor);
    v139 = v6;
    OUTLINED_FUNCTION_3_6();
    v129[0] = v57;
    v129[1] = v55;
    sub_21700D734();
    type metadata accessor for Artwork();
    v58 = v140;
    sub_21700CE04();
    v59 = OUTLINED_FUNCTION_21_57();
    v56(v59);
    sub_2166D3D30(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_3_6();
    sub_21700D734();
    v60 = v58;
    sub_21700CE04();
    v61 = sub_21700CDB4();
    v63 = v62;
    v64 = v147;
    v65 = v141;
    (v141)(v26, v147);
    v66 = v134;
    *v134 = v61;
    v66[1] = v63;
    v129[2] = v63;
    sub_21700CE04();
    sub_21700CDB4();
    v67 = OUTLINED_FUNCTION_0_100();
    v65(v67, v64);
    v68 = v143;
    v69 = v139;
    v70 = (v139 + v143[8]);
    *v70 = v26;
    v70[1] = v60;
    OUTLINED_FUNCTION_16_50();
    sub_21700CE04();
    v71 = OUTLINED_FUNCTION_21_57();
    v72 = v144;
    v144(v71);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    *(v69 + v68[9]) = v73;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v74 = OUTLINED_FUNCTION_21_57();
    v72(v74);
    sub_216CA1668();
    OUTLINED_FUNCTION_3_6();
    sub_21700D734();
    v75 = v151;
    v76 = v69 + v68[10];
    *v76 = v150;
    *(v76 + 16) = v75;
    OUTLINED_FUNCTION_16_50();
    v77 = v140;
    sub_21700CE04();
    v78 = OUTLINED_FUNCTION_21_57();
    v72(v78);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    v79 = v68;
    *(v69 + v68[11]) = v80;
    v81 = v77;
    sub_21700CE04();
    v82 = sub_21700CD24();
    LOBYTE(v60) = v83;
    v84 = v147;
    v85 = v141;
    (v141)(v26, v147);
    v86 = v69 + v79[12];
    *v86 = v82;
    *(v86 + 8) = v60 & 1;
    sub_21700CE04();
    v87 = sub_21700CD94();
    LOBYTE(v60) = v88;
    v85(v26, v84);
    v89 = v139;
    v90 = v139 + v79[13];
    *v90 = v87;
    *(v90 + 8) = v60 & 1;
    OUTLINED_FUNCTION_67_1();
    sub_21700CE04();
    v91 = v146;
    (v144)(v135, v152, v146);
    v92 = v137;
    sub_216C9ED88();
    v137 = v92;
    if (!v92)
    {
      *(v89 + v143[14]) = v93;
      sub_21700CE04();
      sub_21700D2E4();
      v95 = v147;
      v97 = v141;
      v96 = v142;
      (v141)(v26, v147);
      v98 = v97;
      v99 = v131;
      OUTLINED_FUNCTION_28_38();
      v100 = v81;
      sub_21700CE04();
      v101 = sub_21700CD44();
      v98(v99, v95);
      v102 = v98;
      v103 = v143;
      v104 = v139;
      *(v139 + v143[15]) = v101 & 1;
      OUTLINED_FUNCTION_11_0();
      v105 = v132;
      sub_21700CE04();
      v106 = sub_21700CD44();
      v107 = v105;
      v108 = v147;
      v102(v107, v147);
      *(v104 + v103[16]) = v106 & 1;
      v109 = v96;
      v110 = v133;
      sub_21700CE04();
      v111 = sub_21700CD44();
      v112 = v108;
      v113 = v141;
      (v141)(v110, v108);
      v114 = v143;
      v115 = v139;
      *(v139 + v143[17]) = v111 & 1;
      sub_21700CE04();
      sub_21700CDB4();
      v116 = OUTLINED_FUNCTION_0_100();
      v113(v116, v108);
      v117 = (v115 + v114[18]);
      *v117 = v26;
      v117[1] = v109;
      OUTLINED_FUNCTION_67_1();
      v118 = v100;
      sub_21700CE04();
      sub_21700CD44();
      v119 = OUTLINED_FUNCTION_20_58();
      (v113)(v119);
      *(v115 + v114[21]) = v109 & 1;
      OUTLINED_FUNCTION_67_1();
      sub_21700CE04();
      sub_21700CD44();
      v120 = OUTLINED_FUNCTION_20_58();
      (v113)(v120);
      *(v115 + v114[22]) = v109 & 1;
      sub_21700CE04();
      sub_21700CDB4();
      v121 = OUTLINED_FUNCTION_0_100();
      v113(v121, v112);
      v122 = (v115 + v114[24]);
      *v122 = v26;
      v122[1] = v109;
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_67_1();
      sub_21700CE04();
      sub_21700CD44();
      v123 = OUTLINED_FUNCTION_20_58();
      (v113)(v123);
      *(v115 + v114[25]) = v109 & 1;
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_59();
      sub_21700CE04();
      (v144)(v136, v152, v146);
      sub_21700D734();
      OUTLINED_FUNCTION_8_59();
      sub_21700CE04();
      OUTLINED_FUNCTION_31_7();
      sub_21700D2E4();
      v124 = v147;
      v113(v26, v147);
      sub_21700CE04();
      v125 = sub_21700CDB4();
      v127 = v126;
      (*(v138 + 8))(v152, v146);
      v113(v118, v124);
      v113(v26, v124);
      v128 = (v115 + v143[28]);
      *v128 = v125;
      v128[1] = v127;
      goto LABEL_17;
    }

    (*(v138 + 8))(v152, v91);
    (v141)(v81, v147);
    v6 = v89;
    v32 = v130;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_219();
    sub_2166D3D30(v43, v44);
    OUTLINED_FUNCTION_42_0();
    v45 = swift_allocError();
    v46 = v37;
    v48 = v47;
    v49 = type metadata accessor for TrackLockup();
    *v48 = 25705;
    v48[1] = 0xE200000000000000;
    v48[2] = v49;
    OUTLINED_FUNCTION_50();
    (*(v50 + 104))(v48);
    v137 = v45;
    swift_willThrow();
    (*(v138 + 8))(v152, v146);
    (v34)(v29, v46);
  }

  sub_2166997CC(v6, &qword_27CAB6D58);
  if (v32)
  {
    v94 = type metadata accessor for TrackLockup();
    sub_216788110(v6 + v94[5]);
    OUTLINED_FUNCTION_24_37(v94[6]);

    sub_216B3AEC8(*(v6 + v94[10]));

    OUTLINED_FUNCTION_24_37(v94[19]);
    OUTLINED_FUNCTION_24_37(v94[20]);
    sub_2166997CC(v6 + v94[29], &qword_27CAB6D60);
    sub_2166997CC(v6 + v94[30], &qword_27CAB6A00);
  }

  else
  {
  }

LABEL_17:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216CA0624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021708D880 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_216CA06F0(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_216CA0728(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8108);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216CA1730();
  sub_21700F974();
  v10[15] = 0;
  sub_21700F724();
  if (!v1)
  {
    v10[14] = 1;
    sub_21700F744();
  }

  return (*(v5 + 8))(v8, v3);
}

double sub_216CA0898(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC80F8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216CA1730();
  sub_21700F964();
  if (!v1)
  {
    sub_21700F664();
    sub_21700F684();
    v2 = v6;
    v7 = OUTLINED_FUNCTION_13_54();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_216CA0A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216CA0624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216CA0A7C(uint64_t a1)
{
  v2 = sub_216CA1730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216CA0AB8(uint64_t a1)
{
  v2 = sub_216CA1730();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216CA0AF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_216CA0898(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

void sub_216CA0B44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_216E29C48(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }
}

void sub_216CA0B74()
{
  OUTLINED_FUNCTION_22_3();
  v29 = v0;
  v32 = v1;
  v3 = v2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v31 = v3;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v16 = v15;
  v30 = *(v10 + 8);
  v30(v14, v8);
  if (v16)
  {
    v17 = v31;
    sub_21700CE04();
    v18 = OUTLINED_FUNCTION_21_57();
    v19(v18);
    sub_216CA16BC();
    v20 = v29;
    sub_21700E924();
    if (!v20)
    {
      (*(v6 + 8))(v32, v4);
      v30(v17, v8);
      goto LABEL_7;
    }

    v21 = v32;
  }

  else
  {
    v21 = v32;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_219();
    sub_2166D3D30(v22, v23);
    v24 = swift_allocError();
    OUTLINED_FUNCTION_35_34(v24, v25);
    *v26 = 0x6F74617261706573;
    v26[1] = 0xE900000000000072;
    v26[2] = &type metadata for PrioritizedTextList;
    OUTLINED_FUNCTION_50();
    (*(v27 + 104))();
    swift_willThrow();
    v17 = v31;
  }

  (*(v6 + 8))(v21, v4);
  v30(v17, v8);
LABEL_7:
  OUTLINED_FUNCTION_21_4();
}

void sub_216CA0EA0(void *a1@<X8>)
{
  sub_216CA0B74();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_216CA15B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216CA1614(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216CA1668()
{
  result = qword_27CAC80E8;
  if (!qword_27CAC80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80E8);
  }

  return result;
}

unint64_t sub_216CA16BC()
{
  result = qword_27CAC80F0;
  if (!qword_27CAC80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80F0);
  }

  return result;
}

unint64_t sub_216CA1730()
{
  result = qword_27CAC8100;
  if (!qword_27CAC8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrioritizedTextList.Item.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216CA1864()
{
  result = qword_27CAC8110;
  if (!qword_27CAC8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8110);
  }

  return result;
}

unint64_t sub_216CA18BC()
{
  result = qword_27CAC8118;
  if (!qword_27CAC8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8118);
  }

  return result;
}

unint64_t sub_216CA1914()
{
  result = qword_27CAC8120;
  if (!qword_27CAC8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8120);
  }

  return result;
}

uint64_t type metadata accessor for SongContextMenu()
{
  result = qword_280E41F30;
  if (!qword_280E41F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216CA19E0()
{
  sub_21700C084();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v1 <= 0x3F)
    {
      sub_2167B83B4();
      if (v2 <= 0x3F)
      {
        sub_2167B84AC();
        if (v3 <= 0x3F)
        {
          sub_2167EE974();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216CA1CB4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2166BF3C8(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEA0220](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_216CA1DA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_21700DF14();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_216CA1E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  v5 = a2 + v4[9];
  *v5 = sub_216CA2144();
  *(v5 + 8) = v6;
  OUTLINED_FUNCTION_6_105();
  *v5 = sub_216CA2190();
  *(v5 + 8) = v7;
  OUTLINED_FUNCTION_6_105();
  *v5 = sub_216CA21DC();
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  OUTLINED_FUNCTION_6_105();
  *v5 = sub_216CA21DC();
  *(v5 + 8) = v10;
  *(v5 + 16) = v11;
  sub_21695E9B8();
  sub_21695E9B8();
  sub_21695E9B8();
  v12 = (a2 + v4[16]);
  v13 = sub_216CA222C();
  *v12 = v14;
  v12[1] = v13;
  OUTLINED_FUNCTION_6_105();
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  *v12 = sub_217008CF4();
  v12[1] = v15;
  v16 = (a2 + v4[18]);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  *v16 = sub_217008CF4();
  v16[1] = v17;
  v18 = (a2 + v4[19]);
  type metadata accessor for SocialGraphController();
  sub_216CA96F4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  *v18 = sub_217008CF4();
  v18[1] = v19;
  v20 = a2 + v4[20];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  v21 = a2 + v4[21];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a2 + v4[22];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a2 + v4[23];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  sub_217007C94();
  return sub_216CA920C(a1, a2);
}

uint64_t sub_216CA2144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30);
  sub_21700AEA4();
  return v1;
}

uint64_t sub_216CA2190()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA360);
  sub_21700AEA4();
  return v1;
}

uint64_t sub_216CA21DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  sub_21700AEA4();
  return v1;
}

uint64_t sub_216CA226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v35[1] = v6;
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8178);
  MEMORY[0x28223BE20](v44);
  v9 = v35 - v8;
  sub_216CA267C(v2, a1, v35 - v8);
  v10 = (v2 + *(a1 + 44));
  v11 = *v10;
  v41 = v10[1];
  v42 = v11;
  v40 = v10[2];
  *&v48 = v11;
  *(&v48 + 1) = v41;
  v49 = v40;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180);
  sub_21700AED4();
  v36 = v45;
  v12 = v46;
  v13 = v47;
  v37 = v2;
  v14 = sub_216CA2AC8(a1);
  *&v48 = 0;
  sub_21700AEA4();
  v15 = v45;
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8188) + 36)];
  *v16 = v36;
  *(v16 + 2) = v12;
  *(v16 + 3) = v13;
  v16[32] = v14;
  *(v16 + 40) = v15;
  v17 = sub_217009C94();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8190) + 36)];
  v38 = v9;
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  *&v36 = *(v5 + 16);
  (v36)(v7, v3, a1);
  v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v28 = swift_allocObject();
  v29 = *(a1 + 24);
  v35[0] = *(a1 + 16);
  *(v28 + 16) = v35[0];
  *(v28 + 24) = v29;
  v30 = *(v5 + 32);
  v30(v28 + v27, v7, a1);
  v31 = &v9[*(v44 + 36)];
  *v31 = sub_216CA8280;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  *&v45 = v42;
  *(&v45 + 1) = v41;
  v46 = v40;
  sub_21700AEB4();
  v45 = v48;
  (v36)(v7, v37, a1);
  v32 = swift_allocObject();
  *(v32 + 16) = v35[0];
  *(v32 + 24) = v29;
  v30(v32 + v27, v7, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
  sub_216CA8390();
  sub_216CA86F8();
  OUTLINED_FUNCTION_10_4();
  v33 = v38;
  sub_21700AB04();

  return sub_216697664(v33, &qword_27CAC8178);
}

uint64_t sub_216CA267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v33 = a1;
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC81E8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8200);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = sub_2170090F4();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC81C8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  if (sub_216CA5F3C(a2))
  {
    v30 = v8;
    *v16 = sub_2170091A4();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8210);
    sub_216CA6098(v3, v33, *(a2 + 16), *(a2 + 24), &v16[*(v17 + 44)]);
    v18 = v3 + *(a2 + 80);
    v20 = *v18;
    v19 = *(v18 + 16);
    LOBYTE(v18) = *(v18 + 32);
    v32 = v20;
    v33 = v19;
    if ((v18 & 1) == 0)
    {
      v21 = v20;

      sub_21700ED94();
      v22 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v21, *(&v32 + 1), v33, *(&v33 + 1), 0);
      (*(v31 + 8))(v13, v11);
      v32 = v35;
      v33 = v36;
    }

    v23 = sub_217009C84();
    v24 = &v16[*(v14 + 36)];
    *v24 = v23;
    v25 = v32;
    *(v24 + 24) = v33;
    *(v24 + 8) = v25;
    v24[40] = 0;
    v26 = &qword_27CAC81C8;
    sub_216683A80(v16, v10, &qword_27CAC81C8);
    swift_storeEnumTagMultiPayload();
    sub_216CA85EC();
    sub_2166D9530(&qword_27CAC81E0, &qword_27CAC81E8);
    sub_217009554();
    v27 = v16;
  }

  else
  {
    *v7 = sub_2170093B4();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8208);
    sub_216CA6C68(v3, v33, &v7[*(v28 + 44)]);
    v26 = &qword_27CAC81E8;
    sub_216683A80(v7, v10, &qword_27CAC81E8);
    swift_storeEnumTagMultiPayload();
    sub_216CA85EC();
    sub_2166D9530(&qword_27CAC81E0, &qword_27CAC81E8);
    sub_217009554();
    v27 = v7;
  }

  return sub_216697664(v27, v26);
}

BOOL sub_216CA2AC8(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 92);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_21700ED94();
    v10 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = *&v12[1];
  }

  return v9 <= 592.0;
}

uint64_t sub_216CA2C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v60 - v7;
  v8 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  v73 = *(v8 - 1);
  v71 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v72 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B8);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v60 - v11;
  v12 = type metadata accessor for SocialProfileDetailHeaderLockup();
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - v15;
  v63 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v63);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = sub_216CA35B8(v8);
  v24 = a1 + v8[9];
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v78) = v25;
  *(&v78 + 1) = v26;
  LOBYTE(v76) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEC4();
  v74 = a2;
  v75 = a3;
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  sub_217008CB4();
  sub_216A3FFDC();

  v27 = type metadata accessor for ToolbarConfiguration(0);
  LODWORD(a2) = __swift_getEnumTagSinglePayload(v22, 1, v27);
  sub_216697664(v22, &qword_27CAB7930);
  if (a2 == 1)
  {
    v28 = v64;
    sub_216CA8C8C(a1, v64);
    sub_216B151C4(v28, v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v63) == 1)
    {
      sub_216697664(v16, &qword_27CABEEE8);
    }

    else
    {
      v29 = v16;
      v30 = v62;
      sub_216CA920C(v29, v62);
      sub_217008CB4();
      v31 = v61;
      sub_216CA8C8C(v30, v61);
      v32 = (v31 + *(type metadata accessor for SocialProfilePageToolbarContentProvider(0) + 20));
      v33 = *(type metadata accessor for ToolbarProperties(0) + 24);
      v34 = *MEMORY[0x277CDDDC0];
      v35 = sub_217009124();
      (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
      *v32 = 0u;
      *(v32 + 1) = 0u;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v27);
      sub_216A3FFF0();

      sub_216CA8774(v30, type metadata accessor for SocialProfileDescriptor);
    }
  }

  if (sub_216CA3690(v8))
  {
    if (*(a1 + v8[18]))
    {
      v37 = v72;
      v36 = v73;
      (*(v73 + 16))(v72, a1, v8);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = swift_allocObject();
      v40 = v75;
      *(v39 + 16) = v74;
      *(v39 + 24) = v40;
      (*(v36 + 32))(v39 + v38, v37, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0);
      sub_2166D9530(&qword_280E2A2D8, &qword_27CABA4C0);

      sub_21700D1D4();
      v41 = v65;
      sub_21700D1F4();

      __swift_destroy_boxed_opaque_existential_1Tm(&v78);
      v43 = v66;
      v42 = v67;
LABEL_10:
      (*(v43 + 8))(v41, v42);
      v49 = sub_216CA39E0(v8);
      v50 = a1 + v8[11];
      v51 = *(v50 + 16);
      v78 = *v50;
      v79 = v51;
      v76 = v49;
      v77 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180);
      sub_21700AEC4();
      v53 = sub_216CA3B48(v8);
      v54 = a1 + v8[12];
      v55 = *(v54 + 16);
      v78 = *v54;
      v79 = v55;
      v76 = v53;
      v77 = v56;
      return sub_21700AEC4();
    }

    type metadata accessor for UserSocialProfileCoordinator();
    v58 = &unk_280E31C00;
    v59 = type metadata accessor for UserSocialProfileCoordinator;
  }

  else
  {
    if (*(a1 + v8[19]))
    {
      v45 = v72;
      v44 = v73;
      (*(v73 + 16))(v72, a1, v8);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = swift_allocObject();
      v48 = v75;
      *(v47 + 16) = v74;
      *(v47 + 24) = v48;
      (*(v44 + 32))(v47 + v46, v45, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790);
      sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790);

      sub_21700D1D4();
      v41 = v68;
      sub_21700D1F4();

      __swift_destroy_boxed_opaque_existential_1Tm(&v78);
      v43 = v69;
      v42 = v70;
      goto LABEL_10;
    }

    type metadata accessor for SocialGraphController();
    v58 = &qword_280E39AC8;
    v59 = type metadata accessor for SocialGraphController;
  }

  sub_216CA96F4(v58, v59);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216CA35B8(uint64_t a1)
{
  sub_216CA39A0();
  if (!v3)
  {
    return 6;
  }

  if (*(v1 + *(a1 + 76)))
  {

    v4 = sub_216F0706C();

    return v4;
  }

  else
  {
    type metadata accessor for SocialGraphController();
    sub_216CA96F4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216CA3690(uint64_t a1)
{
  v1 = sub_216CA35B8(a1);
  if (v1 == 6)
  {
    return 0;
  }

  if (sub_216F07FB4(v1) == 1718379891 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_21700F7D4();

    return v5 & 1;
  }
}

uint64_t sub_216CA371C(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = [*a1 name]) != 0)
  {
    v5 = v4;
    v6 = sub_21700E514();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a2 + *(type metadata accessor for SocialProfileDetailHeaderLockupView() + 44));
  v15 = *v9;
  v16 = *(v9 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180);
  sub_21700AEC4();
  if (!v3)
  {
    goto LABEL_9;
  }

  v10 = [v3 handle];
  if (!v10)
  {
    v3 = 0;
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v11 = v10;
  v3 = sub_21700E514();
  v13 = v12;

LABEL_10:
  sub_216F073C4(v3, v13);

  return sub_21700AEC4();
}

uint64_t sub_216CA3888(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  result = sub_216CA39A0();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = *(v1 + 16);
    v8 = (v1 + 40);
    v9 = v7 + 1;
    while (--v9)
    {
      if (v5 != *(v8 - 1) || v6 != *v8)
      {
        v8 += 2;
        if ((sub_21700F7D4() & 1) == 0)
        {
          continue;
        }
      }

      sub_216CA35B8(v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
      return sub_21700AEC4();
    }
  }

  return result;
}

uint64_t sub_216CA39A0()
{
  v1 = *(v0 + *(type metadata accessor for SocialProfileDetailHeaderLockup() + 24) + 24);
  sub_21700DF14();
  return v1;
}

uint64_t sub_216CA39E0(uint64_t a1)
{
  if ((sub_216CA3690(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + *(a1 + 72));
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v5 = *(v4 + 16);
    v6 = v3;
    os_unfair_lock_lock(v5);
    v7 = *&v6[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v8 = *(v4 + 16);
    v9 = v7;
    os_unfair_lock_unlock(v8);

    if (v7)
    {
      v10 = [v9 name];

      if (v10)
      {
        v11 = sub_21700E514();

        return v11;
      }
    }

LABEL_6:
    v12 = (v1 + *(type metadata accessor for SocialProfileDetailHeaderLockup() + 28));
    if (v12[1])
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    sub_21700DF14();
    return v11;
  }

  type metadata accessor for UserSocialProfileCoordinator();
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216CA3B48(uint64_t a1)
{
  if ((sub_216CA3690(a1) & 1) == 0)
  {
    v14 = (v1 + *(type metadata accessor for SocialProfileDetailHeaderLockup() + 32));
    v15 = v14[1];
    if (!v15)
    {
      return 0;
    }

    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      return 0;
    }

    MEMORY[0x21CE9F490]();
    return 64;
  }

  v3 = *(v1 + *(a1 + 72));
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v5 = *(v4 + 16);
    v6 = v3;
    os_unfair_lock_lock(v5);
    v7 = *&v6[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v8 = *(v4 + 16);
    v9 = v7;
    os_unfair_lock_unlock(v8);

    if (v7 && (v10 = [v9 handle], v9, v10))
    {
      v11 = sub_21700E514();
      v13 = v12;
    }

    else
    {
      v19 = (v1 + *(type metadata accessor for SocialProfileDetailHeaderLockup() + 32));
      v11 = *v19;
      v13 = v19[1];
      sub_21700DF14();
    }

    v18 = sub_216F073C4(v11, v13);

    return v18;
  }

  type metadata accessor for UserSocialProfileCoordinator();
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216CA3D18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v129 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v12 - 8);
  v145 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v14 - 8);
  v150 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v149 = &v129 - v17;
  v154 = sub_217005EF4();
  v143 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v139 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v140 = &v129 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v129 - v24;
  MEMORY[0x28223BE20](v26);
  v156 = &v129 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v28 - 8);
  v148 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v129 - v31;
  MEMORY[0x28223BE20](v33);
  v157 = &v129 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v129 - v36;
  v153 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v153);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v129 - v40;
  v42 = a2[1];
  v142 = *a2;
  v155 = v42;
  v43 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  result = sub_216CA3690(v43);
  if (result)
  {
    v152 = v37;
    v141 = v41;
    v151 = v43;
    v45 = *(a3 + *(v43 + 72));
    if (!v45)
    {
      type metadata accessor for UserSocialProfileCoordinator();
      sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
      result = sub_217008CD4();
      __break(1u);
      return result;
    }

    v46 = type metadata accessor for SocialProfileDetailHeaderLockup();
    v47 = v157;
    sub_216CA8C8C(a3 + v46[6], v157);
    v147 = type metadata accessor for ContentDescriptor();
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v147);
    v48 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
    swift_beginAccess();
    sub_216683A80(&v45[v48], v25, &qword_27CAB6D60);
    v49 = type metadata accessor for Artwork();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v49);
    v134 = v11;
    v138 = a5;
    v137 = a4;
    v132 = v49;
    if (EnumTagSinglePayload == 1)
    {
      v51 = a3;
      sub_216683A80(a3 + v46[11], v156, &qword_27CAB6D60);
      v52 = __swift_getEnumTagSinglePayload(v25, 1, v49);
      v53 = v45;
      if (v52 != 1)
      {
        sub_216697664(v25, &qword_27CAB6D60);
      }
    }

    else
    {
      v51 = a3;
      v54 = v49;
      v55 = v156;
      sub_216CA920C(v25, v156);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
      v56 = v45;
    }

    v57 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock;
    v58 = *&v45[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v59 = *(v58 + 16);
    v60 = v45;
    os_unfair_lock_lock(v59);
    v61 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile;
    v62 = *&v60[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v63 = *(v58 + 16);
    v64 = v62;
    os_unfair_lock_unlock(v63);

    v135 = v51;
    if (v62 && (v65 = [v64 handle], v64, v65))
    {
      v133 = sub_21700E514();
      v67 = v66;
    }

    else
    {
      v68 = (v51 + v46[8]);
      v69 = v68[1];
      v133 = *v68;
      v67 = v69;
      sub_21700DF14();
    }

    v70 = *&v45[v57];
    v71 = *(v70 + 16);
    sub_21700DF14();
    v72 = v60;
    os_unfair_lock_lock(v71);
    v73 = *&v60[v61];
    v74 = *(v70 + 16);
    v75 = v73;
    os_unfair_lock_unlock(v74);

    if (v73)
    {
      v76 = [v75 isPrivate];
    }

    else
    {
      v76 = *(v135 + v46[9]);
    }

    v77 = v141;
    v78 = v152;
    v79 = v154;
    v136 = v72;
    v80 = v72[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
    v81 = v157;
    sub_216683A80(v157, v32, &qword_27CAB6A00);
    if (__swift_getEnumTagSinglePayload(v32, 1, v147) == 1)
    {

      sub_216697664(v156, &qword_27CAB6D60);
      sub_216697664(v81, &qword_27CAB6A00);
      sub_216697664(v32, &qword_27CAB6A00);
      v82 = 1;
      v83 = v153;
      goto LABEL_32;
    }

    v131 = v76;
    v84 = *(v32 + 3);
    v85 = *(v32 + 4);
    sub_21700DF14();
    sub_216CA8774(v32, type metadata accessor for ContentDescriptor);
    if (!v85)
    {

      sub_216697664(v156, &qword_27CAB6D60);
      sub_216697664(v81, &qword_27CAB6A00);
      v82 = 1;
      v78 = v152;
      v83 = v153;
      goto LABEL_32;
    }

    v129 = v84;
    v130 = v80;
    v86 = v148;
    sub_216683A80(v81, v148, &qword_27CAB6A00);
    v87 = v147;
    v88 = __swift_getEnumTagSinglePayload(v86, 1, v147);
    v83 = v153;
    if (v88 == 1)
    {
      sub_216697664(v86, &qword_27CAB6A00);
      v89 = v149;
      __swift_storeEnumTagSinglePayload(v149, 1, 1, v79);
      v90 = v150;
    }

    else
    {
      v91 = v86 + *(v87 + 24);
      v89 = v149;
      sub_216683A80(v91, v149, &qword_27CABA820);
      sub_216CA8774(v86, type metadata accessor for ContentDescriptor);
      v92 = __swift_getEnumTagSinglePayload(v89, 1, v79);
      v90 = v150;
      if (v92 != 1)
      {
        v96 = v79;
        v97 = *(v143 + 32);
        v98 = v140;
        v97(v140, v89, v96);
        v99 = v146;
        v100 = (v146 + v83[8]);
        v101 = v98;
        v77 = v141;
        goto LABEL_28;
      }
    }

    sub_216697664(v89, &qword_27CABA820);
    if (!v67)
    {

      sub_216697664(v156, &qword_27CAB6D60);
      v94 = &qword_27CAB6A00;
      v95 = v81;
      goto LABEL_25;
    }

    v158 = 0;
    v159 = 0xE000000000000000;
    sub_21700DF14();
    sub_21700F3B4();

    v158 = 0xD000000000000020;
    v159 = 0x8000000217087320;
    MEMORY[0x21CE9F490](v133, v67);

    sub_217005ED4();
    v93 = v154;

    if (__swift_getEnumTagSinglePayload(v90, 1, v93) == 1)
    {

      sub_216697664(v156, &qword_27CAB6D60);
      sub_216697664(v81, &qword_27CAB6A00);
      v94 = &qword_27CABA820;
      v95 = v90;
LABEL_25:
      sub_216697664(v95, v94);
      v82 = 1;
      v78 = v152;
LABEL_32:
      __swift_storeEnumTagSinglePayload(v78, v82, 1, v83);
      v121 = __swift_getEnumTagSinglePayload(v78, 1, v83);
      v122 = v136;
      if (v121 == 1)
      {

        return sub_216697664(v78, &qword_27CABEEE8);
      }

      else
      {
        sub_216CA920C(v78, v77);
        type metadata accessor for CatalogPagePresenter();
        swift_getWitnessTable();
        sub_217008CB4();
        v123 = v134;
        sub_216CA8C8C(v77, v134);
        v124 = (v123 + *(type metadata accessor for SocialProfilePageToolbarContentProvider(0) + 20));
        v125 = *(type metadata accessor for ToolbarProperties(0) + 24);
        v126 = *MEMORY[0x277CDDDC0];
        v127 = sub_217009124();
        (*(*(v127 - 8) + 104))(&v124[v125], v126, v127);
        v128 = type metadata accessor for ToolbarConfiguration(0);
        *v124 = 0u;
        *(v124 + 1) = 0u;
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v123, 0, 1, v128);
        sub_216A3FFF0();

        return sub_216CA8774(v77, type metadata accessor for SocialProfileDescriptor);
      }
    }

    v96 = v93;
    v97 = *(v143 + 32);
    v102 = v139;
    v97(v139, v90, v96);
    v99 = v146;
    v100 = (v146 + v83[8]);
    v101 = v102;
LABEL_28:
    v97(v100, v101, v96);
    v103 = sub_21700BA64();
    v105 = v104;
    sub_216697664(v157, &qword_27CAB6A00);
    v106 = (v99 + v83[5]);
    *v106 = v103;
    v106[1] = v105;
    v107 = v144;
    sub_2167C5834(v156, v144, &qword_27CAB6D60);
    v108 = __swift_getEnumTagSinglePayload(v107, 1, v132);
    v109 = v130;
    if (v108 == 1)
    {
      sub_216697664(v107, &qword_27CAB6D60);
      v110 = sub_21700C4B4();
      v111 = v145;
      v112 = v145;
      v113 = 1;
    }

    else
    {
      v114 = sub_21700C4B4();
      v111 = v145;
      (*(*(v114 - 8) + 16))(v145, v107, v114);
      sub_216CA8774(v107, type metadata accessor for Artwork);
      v112 = v111;
      v113 = 0;
      v110 = v114;
    }

    __swift_storeEnumTagSinglePayload(v112, v113, 1, v110);
    v78 = v152;
    v115 = v131;
    v116 = v111;
    v117 = v146;
    sub_2167C5834(v116, v146, &qword_27CABF770);
    v118 = (v117 + v83[6]);
    *v118 = v133;
    v118[1] = v67;
    v119 = (v117 + v83[7]);
    v120 = v155;
    *v119 = v142;
    v119[1] = v120;
    *(v117 + v83[10]) = v115;
    *(v117 + v83[9]) = v109;
    sub_216CA920C(v117, v78);
    v82 = 0;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_216CA4BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21700B3B4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8348);
  return sub_216CA4C40(a1, a2 + *(v5 + 44));
}

uint64_t sub_216CA4C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8350);
  MEMORY[0x28223BE20](v4);
  v6 = (&v41 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8358);
  MEMORY[0x28223BE20](v7);
  v9 = (&v41 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8360);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for SocialProfileDetailHeaderLockup();
  if (*(a1 + *(v16 + 36)) == 1)
  {
    v42 = v9;
    v47 = v15;
    v48 = v7;
    v45 = v4;
    v46 = v6;
    v49 = a2;
    v44 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v17 = sub_21700ADB4();
    if (qword_27CAB6060 != -1)
    {
      swift_once();
    }

    v18 = qword_27CAC8168;
    v19 = swift_getKeyPath();

    v20 = sub_21700ACA4();
    v21 = swift_getKeyPath();
    v52 = v17;
    v53 = v19;
    v54 = v18;
    v55 = v21;
    v56 = v20;
    v22 = sub_216983738(218);
    v41 = v17;
    v50 = v22;
    v51 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CF8);
    sub_216A66034();
    sub_2167B2E14();
    v24 = v47;
    sub_21700A6B4();

    sub_216683A80(v24, v12, &qword_27CAC8360);
    v25 = v42;
    v26 = v44;
    *v42 = KeyPath;
    *(v25 + 8) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8388);
    sub_216683A80(v12, v25 + *(v27 + 48), &qword_27CAC8360);
    swift_retain_n();
    swift_retain_n();
    sub_216697664(v12, &qword_27CAC8360);

    sub_216683A80(v25, v46, &qword_27CAC8358);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8370);
    sub_2166D9530(&qword_27CAC8378, &qword_27CAC8358);
    sub_2166D9530(&qword_27CAC8380, &qword_27CAC8370);
    v28 = v49;
    sub_217009554();

    sub_216697664(v25, &qword_27CAC8358);
    sub_216697664(v47, &qword_27CAC8360);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8368);
    v30 = v28;
    return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  }

  if (*(a1 + *(v16 + 40)) == 1)
  {
    v48 = v7;
    v49 = a2;
    v31 = sub_21700ACF4();
    v32 = swift_getKeyPath();
    v33 = sub_21700ADB4();
    if (qword_27CAB6068 != -1)
    {
      swift_once();
    }

    v34 = qword_27CAC8170;
    v35 = swift_getKeyPath();
    v47 = v35;

    v36 = sub_21700ACE4();
    v37 = swift_getKeyPath();

    swift_retain_n();
    swift_retain_n();

    v46 = v36;

    *v6 = v32;
    v6[1] = v31;
    v6[2] = v33;
    v6[3] = v35;
    v6[4] = v34;
    v6[5] = v37;
    v6[6] = v36;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8370);
    sub_2166D9530(&qword_27CAC8378, &qword_27CAC8358);
    sub_2166D9530(&qword_27CAC8380, &qword_27CAC8370);
    v38 = v49;
    sub_217009554();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8368);
    v30 = v38;
    return __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8368);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v40);
}

uint64_t sub_216CA532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = sub_216CA39A0();
  v27 = v9;
  v28 = v8;
  v26 = *(v3 + *(type metadata accessor for SocialProfileDetailHeaderLockup() + 36));
  v10 = (v3 + *(a2 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  v32 = v11;
  v33 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AED4();
  v14 = v29;
  v13 = v30;
  v15 = v31;
  (*(v6 + 16))(&v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a2 + 16);
  (*(v6 + 32))(v17 + v16, &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  *(a3 + 64) = sub_217008CF4();
  *(a3 + 72) = v18;
  type metadata accessor for SocialGraphController();
  sub_216CA96F4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  *(a3 + 80) = sub_217008CF4();
  *(a3 + 88) = v19;
  *(a3 + 96) = swift_getKeyPath();
  *(a3 + 136) = 0;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8298) + 60);
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  sub_217007C94();
  v21 = v27;
  *a3 = v28;
  *(a3 + 8) = v21;
  *(a3 + 16) = v26;
  *(a3 + 24) = sub_216CA8FA0;
  *(a3 + 32) = v17;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
  *(a3 + 56) = v15;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82A0);
  v24 = a3 + *(result + 36);
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  return result;
}

uint64_t sub_216CA5654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v53 = a6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v54 = &v45 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508);
  MEMORY[0x28223BE20](v46);
  v10 = &v45 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82A8);
  MEMORY[0x28223BE20](v48);
  v12 = &v45 - v11;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  if (a2)
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = 0;
  }

  v15 = qword_27CAB6048;
  sub_21700DF14();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27CAC8148;
  KeyPath = swift_getKeyPath();
  v56 = v13;
  v57 = a2;
  v58 = 0;
  v59 = v14;
  v60 = KeyPath;
  v61 = v16;
  v18 = qword_27CAB6050;

  if (v18 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v13, a2, 0, v14);

  v19 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  v20 = v50;
  v21 = v50 + *(v19 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v56) = v22;
  v57 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (v55 == 6)
  {
    goto LABEL_15;
  }

  if (v55 == 2)
  {
    v24 = sub_21700AD34();
    goto LABEL_17;
  }

  if (v55)
  {
LABEL_15:
    v24 = sub_21700ACF4();
  }

  else
  {
    v24 = sub_21700AC54();
  }

LABEL_17:
  v25 = v24;
  v26 = swift_getKeyPath();
  (*(v47 + 32))(v10, v54, v49);
  v27 = &v10[*(v46 + 36)];
  *v27 = v26;
  v27[1] = v25;
  LOBYTE(v26) = sub_217009C74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_217007F24();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2167C5834(v10, v12, &qword_27CAC1508);
  v36 = &v12[*(v48 + 36)];
  *v36 = v26;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_21700B3B4();
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82B0);
  v41 = v53;
  v42 = v53 + *(v40 + 36);
  sub_216CA5AAC(v20, v42);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5780) + 36));
  *v43 = v37;
  v43[1] = v39;
  return sub_2167C5834(v12, v41, &qword_27CAC82A8);
}

double sub_216CA5AAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216CA5B58(a1);
  v3 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  sub_216CA5EDC(v3);
  sub_21700B3B4();
  sub_2170083C4();
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57A8) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_216CA5B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57B8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-v9];
  v11 = (a1 + *(type metadata accessor for SocialProfileDetailHeaderLockupView() + 36));
  v12 = *v11;
  v13 = *(v11 + 1);
  v21 = v12;
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (v20 == 6)
  {
    v14 = *MEMORY[0x277CE0118];
    v15 = sub_217009294();
    (*(*(v15 - 8) + 104))(v10, v14, v15);
    *&v10[*(v8 + 52)] = sub_21700AC54();
    *&v10[*(v8 + 56)] = 256;
    sub_216683A80(v10, v7, &qword_27CAB8780);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC57C8, &qword_27CAC57B8);
    sub_2166D9530(&qword_27CAB8778, &qword_27CAB8780);
    sub_217009554();
    v16 = v10;
    v17 = &qword_27CAB8780;
  }

  else
  {
    sub_216C5A424(v20, v4);
    sub_216683A80(v4, v7, &qword_27CAC57B8);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC57C8, &qword_27CAC57B8);
    sub_2166D9530(&qword_27CAB8778, &qword_27CAB8780);
    sub_217009554();
    v16 = v4;
    v17 = &qword_27CAC57B8;
  }

  return sub_216697664(v16, v17);
}

double sub_216CA5EDC(uint64_t a1)
{
  sub_216CA5F3C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  return v2;
}

uint64_t sub_216CA5F3C(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return (0xF8u >> v8) & 1;
}

uint64_t sub_216CA6098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8220);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v29 - v20);
  v22 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  sub_216CA632C(a2, v22, v21);
  v23 = sub_217009C84();
  v24 = v21 + *(v16 + 44);
  *v24 = v23;
  *(v24 + 8) = xmmword_21705C970;
  *(v24 + 24) = xmmword_21705C980;
  v24[40] = 0;
  *v14 = sub_2170093C4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8228);
  sub_216CA6464(a1, a2, a3, a4, &v14[*(v25 + 44)]);
  sub_216683A80(v21, v18, &qword_27CAC8220);
  sub_216683A80(v14, v11, &qword_27CAC8218);
  v26 = v30;
  sub_216683A80(v18, v30, &qword_27CAC8220);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8230);
  sub_216683A80(v11, v26 + *(v27 + 48), &qword_27CAC8218);
  sub_216697664(v14, &qword_27CAC8218);
  sub_216697664(v21, &qword_27CAC8220);
  sub_216697664(v11, &qword_27CAC8218);
  return sub_216697664(v18, &qword_27CAC8220);
}

double sub_216CA632C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27CAB6058 != -1)
  {
    swift_once();
  }

  *a3 = xmmword_27CAC8158;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82C8);
  sub_216CA76A4(a1, v3, *(a2 + 16), *(a2 + 24), a3 + *(v7 + 44));
  sub_2166D9530(&qword_27CAC82D8, &qword_27CAC82D0);
  sub_21700B3B4();
  sub_2170083C4();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82E0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_216CA6464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v50 = a2;
  v41 = a1;
  v52 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8238) - 8;
  MEMORY[0x28223BE20](v49);
  v51 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v37 - v7;
  v8 = sub_217009314();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2170099D4();
  v11 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8240);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8248);
  MEMORY[0x28223BE20](v18 - 8);
  v45 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v38 = &v37 - v21;
  sub_216CA74D4(v54);
  KeyPath = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v56[7], __src, 0x70uLL);
  memcpy(v53, v54, 0xA0uLL);
  v53[20] = KeyPath;
  LOBYTE(v53[21]) = 0;
  memcpy(&v53[21] + 1, v56, 0x77uLL);
  sub_2170099B4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8250);
  v24 = sub_216CA8DAC();
  sub_21700A784();
  (*(v11 + 8))(v13, v42);
  memcpy(v55, v53, sizeof(v55));
  sub_216697664(v55, &qword_27CAC8250);
  sub_217009304();
  v53[0] = v23;
  v53[1] = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v38;
  v26 = v43;
  sub_21700A504();
  (*(v46 + 8))(v10, v47);
  (*(v44 + 8))(v17, v26);
  v27 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  v28 = v48;
  sub_216CA532C(v50, v27, v48);
  v29 = sub_217009C84();
  v30 = v28 + *(v49 + 44);
  *v30 = v29;
  *(v30 + 8) = xmmword_21705C990;
  *(v30 + 24) = xmmword_21705C990;
  *(v30 + 40) = 0;
  v31 = v45;
  sub_216683A80(v25, v45, &qword_27CAC8248);
  v32 = v51;
  sub_216683A80(v28, v51, &qword_27CAC8238);
  v33 = v52;
  sub_216683A80(v31, v52, &qword_27CAC8248);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8290);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_216683A80(v32, v33 + *(v34 + 64), &qword_27CAC8238);
  sub_216697664(v28, &qword_27CAC8238);
  sub_216697664(v25, &qword_27CAC8248);
  sub_216697664(v32, &qword_27CAC8238);
  return sub_216697664(v31, &qword_27CAC8248);
}

uint64_t sub_216CA6A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_27CAB6028;
  sub_21700DF14();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27CAC8128;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = qword_27CAB6030;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
  v12 = qword_27CAC8130;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a3 = v13;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = 2;
  *(a3 + 64) = 0;
  *(a3 + 66) = 1;
  *(a3 + 72) = v12;
}

uint64_t sub_216CA6B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_27CAB6038;
  sub_21700DF14();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27CAC8138;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = qword_27CAB6040;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
  v12 = qword_27CAC8140;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a3 = v13;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = v12;
}

uint64_t sub_216CA6C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8238);
  MEMORY[0x28223BE20](v70);
  v74 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - v7;
  v8 = sub_217009314();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2170099D4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2170090F4();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8390);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8398);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8220);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v65 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v55 - v24);
  v26 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  v71 = a2;
  sub_216CA632C(a2, v26, v25);
  v27 = sub_217009C84();
  v28 = *(v21 + 44);
  v62 = v25;
  v29 = v25 + v28;
  *v29 = v27;
  *(v29 + 8) = xmmword_21705C970;
  *(v29 + 24) = xmmword_217025720;
  v29[40] = 0;
  sub_216CA74D4(v81);
  KeyPath = swift_getKeyPath();
  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v82[7], __src, 0x70uLL);
  v31 = *(v26 + 80);
  v72 = a1;
  v32 = (a1 + v31);
  v34 = *v32;
  v33 = v32[1];
  LODWORD(v32) = *(v32 + 32);
  v75 = v34;
  v76 = v33;
  if (v32 == 1)
  {
    v79 = v34;
    v80 = v33;
  }

  else
  {
    v35 = v34;

    sub_21700ED94();
    v36 = sub_217009C34();
    sub_217007BC4();

    v37 = v55;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v35, *(&v75 + 1), v76, *(&v76 + 1), 0);
    (*(v56 + 8))(v37, v57);
    v75 = v79;
    v76 = v80;
  }

  v38 = sub_217009C84();
  v82[120] = 0;
  memcpy(v77, v81, 0xA0uLL);
  v77[20] = KeyPath;
  LOBYTE(v77[21]) = 1;
  memcpy(&v77[21] + 1, v82, 0x77uLL);
  LOBYTE(v77[36]) = v38;
  *&v77[37] = v75;
  *&v77[39] = v76;
  LOBYTE(v77[41]) = 0;
  sub_2170099B4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83A0);
  v40 = sub_216CA9180();
  sub_21700A784();
  (*(v58 + 8))(v11, v60);
  memcpy(v78, v77, 0x149uLL);
  sub_216697664(v78, &qword_27CAC83A0);
  v41 = v66;
  sub_217009304();
  v77[0] = v39;
  v77[1] = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v63;
  v43 = v61;
  sub_21700A504();
  (*(v68 + 8))(v41, v69);
  (*(v59 + 8))(v15, v43);
  v44 = v64;
  sub_216CA532C(v71, v26, v64);
  v45 = sub_217009C84();
  v46 = v44 + *(v70 + 36);
  *v46 = v45;
  *(v46 + 8) = xmmword_21705C990;
  *(v46 + 24) = xmmword_21705C990;
  *(v46 + 40) = 0;
  v47 = v62;
  v48 = v65;
  sub_216683A80(v62, v65, &qword_27CAC8220);
  v49 = v67;
  sub_216683A80(v42, v67, &qword_27CAC8398);
  v50 = v74;
  sub_216683A80(v44, v74, &qword_27CAC8238);
  v51 = v44;
  v52 = v73;
  sub_216683A80(v48, v73, &qword_27CAC8220);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83B0);
  sub_216683A80(v49, v52 + *(v53 + 48), &qword_27CAC8398);
  sub_216683A80(v50, v52 + *(v53 + 64), &qword_27CAC8238);
  sub_216697664(v51, &qword_27CAC8238);
  sub_216697664(v42, &qword_27CAC8398);
  sub_216697664(v47, &qword_27CAC8220);
  sub_216697664(v50, &qword_27CAC8238);
  sub_216697664(v49, &qword_27CAC8398);
  return sub_216697664(v48, &qword_27CAC8220);
}

uint64_t sub_216CA74D4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  OUTLINED_FUNCTION_3_145(*(v2 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180);
  sub_21700AEB4();
  sub_216CA6A08(v9[0], v9[1], __src);

  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_3_145(*(v2 + 48));
  sub_21700AEB4();
  sub_216CA6B3C(v9[0], v9[1], __src);

  memcpy(v5, __src, sizeof(v5));
  memcpy(v7, __dst, sizeof(v7));
  memcpy(v4, __dst, 0x50uLL);
  memcpy(v8, v5, sizeof(v8));
  memcpy(&v4[80], v5, 0x50uLL);
  memcpy(a1, v4, 0xA0uLL);
  memcpy(v9, v5, sizeof(v9));
  sub_216683A80(v7, __src, &qword_27CAC82B8);
  sub_216683A80(v8, __src, &qword_27CAC82C0);
  sub_216697664(v9, &qword_27CAC82C0);
  memcpy(__src, __dst, sizeof(__src));
  return sub_216697664(__src, &qword_27CAC82B8);
}

uint64_t sub_216CA76A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a3;
  v100 = a4;
  v101 = a2;
  v104 = a5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82E8);
  MEMORY[0x28223BE20](v102);
  v105 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = (&v82 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v82 - v10;
  v11 = sub_21700C444();
  v95 = *(v11 - 8);
  *&v96 = v11;
  MEMORY[0x28223BE20](v11);
  v93 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v82 - v20;
  v92 = sub_217007474();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v82 - v27;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82F0);
  MEMORY[0x28223BE20](v83);
  v85 = &v82 - v28;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82F8);
  MEMORY[0x28223BE20](v88);
  v30 = &v82 - v29;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8300);
  MEMORY[0x28223BE20](v94);
  v98 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v90 = &v82 - v33;
  MEMORY[0x28223BE20](v34);
  v97 = &v82 - v35;
  v82 = type metadata accessor for SocialProfileDetailHeaderLockup();
  v36 = *(v82 + 44);
  v37 = a1;
  sub_216683A80(a1 + v36, v18, &qword_27CAB6D60);
  v38 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v18, 1, v38) == 1)
  {
    sub_216697664(v18, &qword_27CAB6D60);
    v39 = sub_21700C4B4();
    v40 = v21;
    v41 = 1;
  }

  else
  {
    v42 = sub_21700C4B4();
    (*(*(v42 - 8) + 16))(v21, v18, v42);
    sub_216CA8774(v18, type metadata accessor for Artwork);
    v40 = v21;
    v41 = 0;
    v39 = v42;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  sub_217007434();
  v43 = v37;
  sub_216683A80(v37 + v36, v15, &qword_27CAB6D60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v38);
  v45 = v96;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v15, &qword_27CAB6D60);
    v46 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v45);
    v47 = v93;
    sub_21700C404();
    v48 = __swift_getEnumTagSinglePayload(v46, 1, v45);
    v49 = v95;
    if (v48 != 1)
    {
      sub_216697664(v46, &qword_27CAB7530);
    }
  }

  else
  {
    v50 = *(v38 + 20);
    v49 = v95;
    v51 = v91;
    (*(v95 + 16))(v91, &v15[v50], v96);
    sub_216CA8774(v15, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v45);
    v47 = v93;
    (*(v49 + 32))(v93, v51, v45);
  }

  sub_2170073E4();
  (*(v49 + 8))(v47, v45);
  v52 = *(v89 + 8);
  v53 = v92;
  v52(v23, v92);
  v54 = (v37 + *(v82 + 28));
  v56 = *v54;
  v55 = v54[1];
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v55;
  sub_2167C505C();
  sub_21700DF14();
  v58 = v84;
  sub_2170073F4();

  v52(v26, v53);
  v59 = sub_21700ACF4();
  LOBYTE(v56) = sub_217009C84();
  v60 = v85;
  (*(v86 + 32))(v85, v58, v87);
  v61 = v60 + *(v83 + 36);
  *v61 = v59;
  *(v61 + 8) = v56;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v62 = qword_280E73AA0;
  v63 = byte_280E73AA8;
  v64 = qword_280E73AB0;
  sub_2167C5834(v60, v30, &qword_27CAC82F0);
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8308) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v66 = &v30[*(v88 + 36)];
  *v66 = v62;
  v66[8] = v63;
  *(v66 + 2) = v64;
  *(v66 + 3) = KeyPath;
  v66[32] = 0;

  sub_21700ACC4();
  v67 = sub_21700AD04();

  v68 = v90;
  sub_2167C5834(v30, v90, &qword_27CAC82F8);
  v69 = v68 + *(v94 + 36);
  *v69 = v67;
  v96 = xmmword_217029750;
  *(v69 + 8) = xmmword_217029750;
  *(v69 + 24) = 0x4024000000000000;
  v70 = v97;
  sub_2167C5834(v68, v97, &qword_27CAC8300);
  type metadata accessor for SocialProfileDetailHeaderLockupView();
  v71 = v103;
  sub_216CA4BF0(v43, v103);
  sub_2166D9530(&qword_27CAC8318, &qword_27CAC8310);
  sub_21700B3B4();
  sub_2170083C4();
  v72 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8320) + 36));
  v73 = v107;
  *v72 = v106;
  v72[1] = v73;
  v72[2] = v108;
  LOBYTE(v67) = sub_217009C84();
  v74 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8328) + 36);
  *v74 = v67;
  *(v74 + 1) = 0x4059000000000000;
  *(v74 + 2) = 0;
  *(v74 + 3) = 0;
  *(v74 + 4) = 0;
  v74[40] = 0;
  sub_21700ACC4();
  v75 = sub_21700AD04();

  sub_216CA903C();
  v76 = v71 + *(v102 + 36);
  *v76 = v75;
  *(v76 + 8) = v96;
  *(v76 + 3) = 0x4034000000000000;
  v77 = v98;
  sub_216683A80(v70, v98, &qword_27CAC8300);
  v78 = v105;
  sub_216683A80(v71, v105, &qword_27CAC82E8);
  v79 = v104;
  sub_216683A80(v77, v104, &qword_27CAC8300);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8340);
  sub_216683A80(v78, v79 + *(v80 + 48), &qword_27CAC82E8);
  sub_216697664(v71, &qword_27CAC82E8);
  sub_216697664(v70, &qword_27CAC8300);
  sub_216697664(v78, &qword_27CAC82E8);
  return sub_216697664(v77, &qword_27CAC8300);
}

uint64_t sub_216CA8280()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_236();

  return sub_216CA2C30(v0 + v4, v1, v2);
}

uint64_t sub_216CA82FC(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_236();

  return sub_216CA3D18(a1, a2, v2 + v8, v5, v6);
}

unint64_t sub_216CA8390()
{
  result = qword_27CAC8198;
  if (!qword_27CAC8198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8178);
    sub_216CA841C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8198);
  }

  return result;
}

unint64_t sub_216CA841C()
{
  result = qword_27CAC81A0;
  if (!qword_27CAC81A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8190);
    sub_216CA84A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81A0);
  }

  return result;
}

unint64_t sub_216CA84A8()
{
  result = qword_27CAC81A8;
  if (!qword_27CAC81A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8188);
    sub_216CA8534();
    sub_216CA86A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81A8);
  }

  return result;
}

unint64_t sub_216CA8534()
{
  result = qword_27CAC81B0;
  if (!qword_27CAC81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC81B8);
    sub_216CA85EC();
    sub_2166D9530(&qword_27CAC81E0, &qword_27CAC81E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81B0);
  }

  return result;
}

unint64_t sub_216CA85EC()
{
  result = qword_27CAC81C0;
  if (!qword_27CAC81C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC81C8);
    sub_2166D9530(&qword_27CAC81D0, &qword_27CAC81D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81C0);
  }

  return result;
}

unint64_t sub_216CA86A4()
{
  result = qword_27CAC81F0;
  if (!qword_27CAC81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81F0);
  }

  return result;
}

unint64_t sub_216CA86F8()
{
  result = qword_27CAC81F8;
  if (!qword_27CAC81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81F8);
  }

  return result;
}

uint64_t sub_216CA8774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216CA87CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21700B3B4();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83B8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83C0) + 36));
  *v9 = sub_216CA88FC;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = v7;
  v10 = swift_allocObject();
  v11 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = *(v2 + 48);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83C8) + 36));
  *v12 = sub_216CA9794;
  v12[1] = v10;
  return sub_216CA979C(v2, v14);
}

uint64_t sub_216CA88FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2170096B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170098E4();
  sub_217008454();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  MinY = CGRectGetMinY(v17);
  result = sub_21700ACD4();
  *a1 = result;
  *(a1 + 1) = MinY;
  return result;
}

double sub_216CA8AC0(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4 + *a1;
  *a1 = result;
  return result;
}

uint64_t sub_216CA8B14()
{
  sub_217009D34();
  v0 = sub_217009D64();

  qword_27CAC8128 = v0;
  return result;
}

uint64_t sub_216CA8B50()
{
  result = sub_21700AD14();
  qword_27CAC8130 = result;
  return result;
}

uint64_t sub_216CA8B70()
{
  result = sub_217009D54();
  qword_27CAC8138 = result;
  return result;
}

uint64_t sub_216CA8B90()
{
  result = sub_21700AD34();
  qword_27CAC8140 = result;
  return result;
}

uint64_t sub_216CA8BB0()
{
  result = sub_217009D54();
  qword_27CAC8148 = result;
  return result;
}

uint64_t sub_216CA8BD0()
{
  result = sub_217009DE4();
  qword_27CAC8150 = v1;
  return result;
}

uint64_t sub_216CA8BF0()
{
  result = sub_21700B384();
  *&xmmword_27CAC8158 = result;
  *(&xmmword_27CAC8158 + 1) = v1;
  return result;
}

uint64_t sub_216CA8C14()
{
  result = sub_217009EA4();
  qword_27CAC8168 = result;
  return result;
}

uint64_t sub_216CA8C34()
{
  v0 = sub_21700B304();
  sub_217009EA4();
  if (v0)
  {
    sub_217009D94();
  }

  else
  {
    sub_217009DA4();
  }

  v1 = sub_217009E34();

  qword_27CAC8170 = v1;
  return result;
}

uint64_t sub_216CA8C8C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216CA8D14(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_236();

  return a2(a1, v2 + v7, v4, v5);
}

unint64_t sub_216CA8DAC()
{
  result = qword_27CAC8258;
  if (!qword_27CAC8258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8250);
    sub_216CA8E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8258);
  }

  return result;
}

unint64_t sub_216CA8E38()
{
  result = qword_27CAC8260;
  if (!qword_27CAC8260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8268);
    sub_216CA8EF0();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8260);
  }

  return result;
}

unint64_t sub_216CA8EF0()
{
  result = qword_27CAC8270;
  if (!qword_27CAC8270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8278);
    sub_2166D9530(&qword_27CAC8280, &qword_27CAC8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8270);
  }

  return result;
}

uint64_t sub_216CA8FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_236();

  return sub_216CA5654(a1, a2, v3 + v10, v7, v8, a3);
}

unint64_t sub_216CA903C()
{
  result = qword_27CAC8330;
  if (!qword_27CAC8330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8328);
    sub_216CA90C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8330);
  }

  return result;
}

unint64_t sub_216CA90C8()
{
  result = qword_27CAC8338;
  if (!qword_27CAC8338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8320);
    sub_2166D9530(&qword_27CAC8318, &qword_27CAC8310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8338);
  }

  return result;
}

unint64_t sub_216CA9180()
{
  result = qword_27CAC83A8;
  if (!qword_27CAC83A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC83A0);
    sub_216CA8DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC83A8);
  }

  return result;
}

uint64_t sub_216CA920C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216CA9264(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216CA92A4(uint64_t result, int a2, int a3)
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

void sub_216CA9300()
{
  type metadata accessor for SocialProfileDetailHeaderLockup();
  if (v0 <= 0x3F)
  {
    sub_216CA9608(319, &qword_280E2A5C0, &qword_27CAC0B30);
    if (v1 <= 0x3F)
    {
      sub_216CA9608(319, &qword_280E2A5A0, &qword_27CABA360);
      if (v2 <= 0x3F)
      {
        sub_216CA9608(319, &qword_280E2A598, &qword_27CABAA40);
        if (v3 <= 0x3F)
        {
          sub_2167D1C30();
          if (v4 <= 0x3F)
          {
            sub_216CA965C(319, &qword_280E2A5B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CatalogPagePresenter();
              swift_getWitnessTable();
              sub_217008D04();
              if (v6 <= 0x3F)
              {
                sub_216A949B4();
                if (v7 <= 0x3F)
                {
                  sub_216AF7568();
                  if (v8 <= 0x3F)
                  {
                    sub_216CA965C(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_216CA965C(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        sub_216CA965C(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                        if (v11 <= 0x3F)
                        {
                          sub_216CA965C(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
                          if (v12 <= 0x3F)
                          {
                            sub_217007CA4();
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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

void sub_216CA9608(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_21700AEE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216CA965C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_216CA96F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216CA973C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216CA97E4()
{
  result = qword_27CAC83D8;
  if (!qword_27CAC83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC83C8);
    sub_216CA989C();
    sub_2166D9530(&qword_27CAC8400, &qword_27CAC8408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC83D8);
  }

  return result;
}

unint64_t sub_216CA989C()
{
  result = qword_27CAC83E0;
  if (!qword_27CAC83E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC83C0);
    sub_2166D9530(&qword_27CAC83E8, &qword_27CAC83B8);
    sub_2166D9530(&qword_27CAC83F0, &qword_27CAC83F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC83E0);
  }

  return result;
}

uint64_t sub_216CA9B20(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_216CA9B50()
{

  return v0;
}

uint64_t sub_216CA9B78()
{
  v0 = sub_216CA9B50();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_216CA9BCC()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216CA9C58()
{
  sub_21700F8F4();
  sub_216B1E4E4();
  return sub_21700F944();
}

uint64_t sub_216CA9CA4()
{

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

_BYTE *storeEnumTagSinglePayload for EditableFormCoordinator.ValidationRule(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216CA9DF0()
{
  result = qword_27CAC8430;
  if (!qword_27CAC8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8430);
  }

  return result;
}

unint64_t sub_216CA9E48()
{
  result = qword_27CAC8438;
  if (!qword_27CAC8438)
  {
    type metadata accessor for EditingFormRegistrar();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8438);
  }

  return result;
}

uint64_t sub_216CA9EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8448);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_21705D1E0;
  v12[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450);
  sub_21700EA94();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_216CA9FD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v32 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8458);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8468);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  v36 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8440);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v2);
  sub_21700EAD4();
  sub_216CAAE84(v21, v19);
  result = __swift_getEnumTagSinglePayload(v19, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v35;
    (*(*(v22 - 8) + 32))(v35 + OBJC_IVAR____TtC7MusicUI10AsyncQueue_streamContinuation, v19, v22);
    v25 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v25);
    v27 = v32;
    v26 = v33;
    (*(v9 + 16))(v32, v15, v33);
    v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v9 + 32))(v29 + v28, v27, v26);
    sub_21677BBA0();
    v31 = v30;
    (*(v9 + 8))(v15, v26);
    *(v24 + 16) = v31;
    sub_216CAAFF0(v21);
    return v24;
  }

  return result;
}

uint64_t sub_216CAA3CC(uint64_t a1, uint64_t a2)
{
  sub_216CAAFF0(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_216CAA46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC8470);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CAA538, 0, 0);
}

uint64_t sub_216CAA538()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460);
  sub_21700EAB4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_188(v1);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0);
}

uint64_t sub_216CAA5E8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216CAA6D8, 0, 0);
}

uint64_t sub_216CAA6D8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_216CAA824;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_216CAA824()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v4 = *(v1 + 72);
  v5 = *v0;
  *v3 = *v0;

  sub_21667E91C(v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  OUTLINED_FUNCTION_1_188();

  return MEMORY[0x2822003E8](v2 + 16, 0, 0);
}

uint64_t sub_216CAA9A8()
{

  sub_21700EB04();

  v1 = OBJC_IVAR____TtC7MusicUI10AsyncQueue_streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_216CAAA50()
{
  sub_216CAA9A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AsyncQueue()
{
  result = qword_280E45D18;
  if (!qword_280E45D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216CAAAFC()
{
  sub_216CAAB9C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216CAAB9C()
{
  if (!qword_280E29DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8440);
    v0 = sub_21700EAA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29DC8);
    }
  }
}

uint64_t sub_216CAAC00(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_216CAACE8;

  return v5();
}

uint64_t sub_216CAACE8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216CAADD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216CAACE8;

  return sub_216CAAC00(a1, v4);
}

uint64_t sub_216CAAE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216CAAEF4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_216CAB058;

  return sub_216CAA46C(a1, v6, v7, v1 + v5);
}

uint64_t sub_216CAAFF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216CAB05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a2;
  v6[5] = a4;
  v6[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = sub_21700F164();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(AssociatedTypeWitness - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_21700EA34();
  v6[15] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216CAB1E0, v10, v9);
}

uint64_t sub_216CAB1E0()
{
  v27 = v0;
  v1 = v0[4];

  v2 = qword_21705D3C8[*(v1 + *(type metadata accessor for SelectTabAction() + 20))];
  v3 = v0[11];
  v4 = v0[8];
  v26[0] = 0;
  v26[1] = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v26, v4, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    type metadata accessor for SelectTabActionImplementation.SelectTabError();
    OUTLINED_FUNCTION_0_220();
    OUTLINED_FUNCTION_3_0();
    *v6 = 0;
    swift_willThrow();
  }

  else
  {
    v7 = v0[14];
    v8 = v0[7];
    v9 = v0[6];
    (*(v0[12] + 32))(v7, v0[11], v0[8]);
    v0[2] = (*(v8 + 24))(v9, v8);
    v10 = swift_task_alloc();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v7;
    sub_21700E984();
    swift_getWitnessTable();
    v11 = sub_21700E7B4();

    v12 = v0[14];
    if (v11)
    {
      v14 = v0[12];
      v13 = v0[13];
      v16 = v0[7];
      v15 = v0[8];
      v17 = v0[6];
      v18 = v0[3];
      (*(v14 + 16))(v13, v0[14], v15);
      (*(v16 + 64))(v13, v17, v16);
      v19 = *MEMORY[0x277D21CA8];
      v20 = sub_21700D2A4();
      (*(*(v20 - 8) + 104))(v18, v19, v20);
      (*(v14 + 8))(v12, v15);

      v21 = v0[1];
      goto LABEL_7;
    }

    v22 = v0[12];
    v23 = v0[8];
    type metadata accessor for SelectTabActionImplementation.SelectTabError();
    OUTLINED_FUNCTION_0_220();
    OUTLINED_FUNCTION_3_0();
    *v24 = 1;
    swift_willThrow();
    (*(v22 + 8))(v12, v23);
  }

  v21 = v0[1];
LABEL_7:

  return v21();
}

uint64_t sub_216CAB540()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  swift_checkMetadataState();
  sub_21700F3C4();
  sub_21700F3C4();
  swift_getAssociatedConformanceWitness();
  v7 = sub_21700E494();
  v8 = *(v1 + 8);
  v8(v3, AssociatedTypeWitness);
  v8(v6, AssociatedTypeWitness);
  return v7 & 1;
}

uint64_t sub_216CAB728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_2166DFAC0;

  return sub_216CAB05C(a1, a2, v10, v9, v12, v13);
}

uint64_t sub_216CAB7E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216CAB820()
{
  result = qword_280E42060[0];
  if (!qword_280E42060[0])
  {
    type metadata accessor for SelectTabAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E42060);
  }

  return result;
}

uint64_t sub_216CAB878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

_BYTE *sub_216CAB920(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_216CABA78(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for RadioPageIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D40);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216CABC78(uint64_t a1)
{
  result = sub_2166CE984(&qword_280E42100, type metadata accessor for RadioPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216CABD70(uint64_t *a1)
{
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v41 = v2;
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v34 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v40 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  started = type metadata accessor for StartSocialOnboardingAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v23 = v43[0];
  if (*(v43[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded))
  {
    sub_216CAF6A8(*v37, v37[1], *(v37 + 16), v18, v19, v20, v21, v22, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v44, v45, v46, v47, v48, v49, v50, v51);
    v44 = sub_21700D7C4();
    v45 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v43);

    sub_21700D7B4();
    sub_21700D2A4();
    v24 = sub_21700E1B4();
  }

  else
  {
    sub_21700E094();
    sub_21700D234();
    v11[*(started + 20)] = 0;
    v36 = v7;
    v37 = v23;
    v25 = v38;
    sub_21700E094();
    v44 = started;
    v45 = sub_216CAC520(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    v35 = type metadata accessor for StartSocialOnboardingAction;
    sub_216ACBD28(v11, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
    v27 = v14;
    v28 = *(v14 + 16);
    v29 = v39;
    v28(v39, v17, v12);
    v31 = v41;
    v30 = v42;
    (*(v41 + 104))(v29, *MEMORY[0x277D21E10], v42);
    v32 = v36;
    v24 = sub_21700D5E4();

    (*(v31 + 8))(v29, v30);
    (*(v40 + 8))(v32, v25);
    sub_216ACBD88(v11, v35);
    (*(v27 + 8))(v17, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v24;
}

uint64_t sub_216CAC1C4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for NoticeAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if (!*a1)
  {
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00);
    __swift_storeEnumTagSinglePayload(v8, 4, 11, v13);
    sub_21700D234();
    v22[3] = v6;
    v22[4] = sub_216CAC520(&qword_27CAB8E08, type metadata accessor for NoticeAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_216ACBD28(v8, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
    v15 = v20;
    (*(v20 + 104))(v5, *MEMORY[0x277D21E18], v3);
    sub_21700D5E4();

    (*(v15 + 8))(v5, v3);
    sub_216ACBD88(v8, type metadata accessor for NoticeAction);
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_21700D2A4();
  return (*(*(v17 - 8) + 104))(v21, v16, v17);
}

uint64_t sub_216CAC520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216CAC568(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs);
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = v10;
  sub_21700DF14();
  v6 = sub_216CA1DA8(sub_216AF7E78, v9, v5);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    OUTLINED_FUNCTION_53();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_217013DA0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    v10[0] = v8;
    sub_21700DF14();
    sub_21700CC34();
  }

  return result;
}

uint64_t sub_216CAC650()
{
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v2 = v0;
  v3 = OUTLINED_FUNCTION_47();
  os_unfair_lock_lock(v3);
  v4 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v5 = *(v1 + 16);
  v6 = v4;
  os_unfair_lock_unlock(v5);

  if (!v4)
  {
    return 0;
  }

  v7 = [v6 identifiers];

  return sub_216CB5CB4(v7);
}

uint64_t sub_216CAC6EC()
{
  OUTLINED_FUNCTION_48_24();
  v2 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v3 = *(v2 + 16);
  v4 = v0;
  os_unfair_lock_lock(v3);
  v5 = v4[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state];
  os_unfair_lock_unlock(*(v2 + 16));

  if (sub_2166C1BB8(v5) == v1 && v6 == 0xE800000000000000)
  {

    goto LABEL_8;
  }

  v8 = sub_21700F7D4();

  if (v8)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8538);
    v9 = sub_21700E244();
    v10 = *(v2 + 16);
    v11 = v4;

    os_unfair_lock_lock(v10);
    v12 = OUTLINED_FUNCTION_8();
    sub_216CAFC3C(v12);
    os_unfair_lock_unlock(*(v2 + 16));

    return v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8538);
  return sub_21700E1F4();
}

uint64_t sub_216CAC834()
{
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v2 = v0;
  v3 = OUTLINED_FUNCTION_47();
  os_unfair_lock_lock(v3);
  v4 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v5 = *(v1 + 16);
  v6 = v4;
  os_unfair_lock_unlock(v5);

  if (v4)
  {
    v7 = sub_216A72AB8(v6);
    if (v8)
    {
      return v7;
    }
  }

  v9 = sub_216CB45C8();

  return v9;
}

uint64_t sub_216CAC8D0()
{
  OUTLINED_FUNCTION_54_22();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4B4();
  if (!v2)
  {
    return 1;
  }

  sub_2166C0578(&v2);

  if (!v3)
  {
    return 1;
  }

  v0 = *(&v2 + 1) == 0;
  sub_216697664(&v2, &qword_27CAC5980);
  return v0;
}

void sub_216CAC960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_12_78();
  v30 = OUTLINED_FUNCTION_41_29();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v31 = sub_216F0706C();
  sub_216F07FB4(v31);
  OUTLINED_FUNCTION_34_33();
  v33 = v33 && v32 == 0xE700000000000000;
  if (v33)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_42();
  sub_21700F7D4();
  OUTLINED_FUNCTION_41_2();

  if (v26)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
    v34 = sub_21700E244();
    OUTLINED_FUNCTION_109();
    sub_216F079D4();
    type metadata accessor for JSIntentDispatcher();
    v35 = *(v27 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    OUTLINED_FUNCTION_3_146();
    sub_21700E094();
    v36 = OUTLINED_FUNCTION_109();
    sub_216ECDD9C(v36, v37, v35);
    OUTLINED_FUNCTION_8_97();
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_6_106(v38);
    *(v39 + 49) = v31;
    *(v39 + 56) = v30;
    OUTLINED_FUNCTION_8_97();
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_49_27(v40);
    *(v41 + 48) = v34;
    *(v41 + 56) = v30;
    sub_216685F4C(0, &qword_280E29CD0);
    OUTLINED_FUNCTION_10_87();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_28_39();
    OUTLINED_FUNCTION_25_46();
    swift_retain_n();
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    OUTLINED_FUNCTION_44_26();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
  LOBYTE(a10) = v31;
  sub_21700E1F4();
  OUTLINED_FUNCTION_43_29();
LABEL_9:
  OUTLINED_FUNCTION_28_4();
}

void sub_216CACB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v31;
  a26 = v32;
  OUTLINED_FUNCTION_12_78();
  v33 = OUTLINED_FUNCTION_41_29();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v34 = sub_216F0706C();
  sub_216F07FB4(v34);
  OUTLINED_FUNCTION_34_33();
  v36 = v36 && v35 == 0xE700000000000000;
  if (v36)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_42();
  sub_21700F7D4();
  OUTLINED_FUNCTION_41_2();

  if (v27)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
    LOBYTE(a10) = v34;
    sub_21700E1F4();
    OUTLINED_FUNCTION_43_29();
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
  v37 = sub_21700E244();
  OUTLINED_FUNCTION_109();
  sub_216F079D4();
  type metadata accessor for JSIntentDispatcher();
  v38 = *(v30 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
  sub_21700D4D4();
  OUTLINED_FUNCTION_3_146();
  sub_21700E094();
  v39 = OUTLINED_FUNCTION_109();
  sub_216ECDF38(v39, v40, v38);
  OUTLINED_FUNCTION_8_97();
  v41 = swift_allocObject();
  *(v41 + 16) = v29;
  *(v41 + 24) = v28;
  *(v41 + 32) = v26;
  *(v41 + 40) = v37;
  *(v41 + 48) = 3;
  *(v41 + 49) = v34;
  *(v41 + 56) = v33;
  OUTLINED_FUNCTION_8_97();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_35_35(v42);
  sub_216685F4C(0, &qword_280E29CD0);
  OUTLINED_FUNCTION_10_87();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_28_39();
  OUTLINED_FUNCTION_25_46();
  swift_retain_n();
  sub_21700EE84();
  OUTLINED_FUNCTION_14_70();
  OUTLINED_FUNCTION_44_26();
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&a10);
LABEL_9:
  OUTLINED_FUNCTION_28_4();
}

uint64_t sub_216CACD74()
{
  *(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = MEMORY[0x277D84F90];

  return sub_21700CC34();
}

uint64_t sub_216CACDBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
  v1 = sub_21700E244();
  if (sub_216CB3C04())
  {
    OUTLINED_FUNCTION_65_0();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = v1;
    sub_216685F4C(0, &qword_280E29CD0);
    OUTLINED_FUNCTION_47();
    swift_retain_n();
    v3 = v0;
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_216CB3CA8(0, 0, v1);
  }

  return v1;
}

void sub_216CACEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  ObjectType = swift_getObjectType();
  v36 = sub_216CB040C();
  OUTLINED_FUNCTION_45_0();
  if (sub_216F07A90())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
    v37 = sub_21700E244();
    type metadata accessor for JSIntentDispatcher();
    v38 = *(v26 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    OUTLINED_FUNCTION_3_146();
    sub_21700E094();
    v39 = v34 & 1;
    v40 = OUTLINED_FUNCTION_45_0();
    sub_216ECE008(v40, v41, v34 & 1, v38);
    if (v34)
    {
      v42 = sub_21700F7D4();
    }

    else
    {
      v42 = 1;
    }

    OUTLINED_FUNCTION_5_46();
    v53 = swift_allocObject();
    *(v53 + 16) = v39;
    *(v53 + 24) = v32;
    *(v53 + 32) = v30;
    *(v53 + 40) = v36;
    *(v53 + 48) = v37;
    v54 = v42 & 1;
    *(v53 + 56) = v54;
    *(v53 + 64) = ObjectType;
    OUTLINED_FUNCTION_5_46();
    v55 = swift_allocObject();
    *(v55 + 16) = v39;
    *(v55 + 24) = v32;
    *(v55 + 32) = v30;
    *(v55 + 40) = v36;
    *(v55 + 48) = v54;
    *(v55 + 56) = v37;
    *(v55 + 64) = ObjectType;
    sub_216685F4C(0, &qword_280E29CD0);
    OUTLINED_FUNCTION_25_46();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_28_39();
    swift_retain_n();
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  }

  else
  {
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v43 = sub_217007CA4();
    __swift_project_value_buffer(v43, qword_280E73BC0);
    sub_21700DF14();
    v44 = sub_217007C84();
    v45 = sub_21700ED84();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v46 = 136446466;
      if (v34)
      {
        v47 = 0x656E696C636564;
      }

      else
      {
        v47 = 0x747065636361;
      }

      if (v34)
      {
        v48 = 0xE700000000000000;
      }

      else
      {
        v48 = 0xE600000000000000;
      }

      v49 = sub_2166A85FC(v47, v48, &a10);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2082;
      v50 = OUTLINED_FUNCTION_45_0();
      *(v46 + 14) = sub_2166A85FC(v50, v51, v52);
      _os_log_impl(&dword_216679000, v44, v45, "Requested to perform %{public}s follow request response on invalid user: %{public}s.)", v46, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
    LOBYTE(a10) = 1;
    sub_21700E1F4();
  }

  OUTLINED_FUNCTION_28_4();
}

uint64_t sub_216CAD29C()
{
  v0 = sub_216CB040C();
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

void sub_216CAD318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_38_6();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_47_18();
  ObjectType = swift_getObjectType();
  v31 = sub_216CB040C();
  v32 = 0;
  v33 = *(v28 + 16);
  v34 = v28 + 40;
  v35 = MEMORY[0x277D84F90];
LABEL_2:
  v36 = (v34 + 16 * v32);
  while (v33 != v32)
  {
    if (v32 >= v33)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      OUTLINED_FUNCTION_0_221();
      swift_once();
      goto LABEL_16;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_21;
    }

    v38 = *(v36 - 1);
    v37 = *v36;
    sub_21700DF14();
    if (sub_216F07A90())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a12 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2166F4258();
        v35 = a12;
      }

      v40 = *(v35 + 16);
      if (v40 >= *(v35 + 24) >> 1)
      {
        sub_2166F4258();
        v35 = a12;
      }

      *(v35 + 16) = v40 + 1;
      v41 = v35 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      ++v32;
      goto LABEL_2;
    }

    ++v32;
    v36 += 2;
  }

  if (*(v35 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
    v42 = sub_21700E244();
    type metadata accessor for JSIntentDispatcher();
    sub_21700D4D4();
    sub_21700E094();

    sub_216ECE0C0();

    OUTLINED_FUNCTION_53();
    v43 = swift_allocObject();
    v43[2] = v35;
    v43[3] = v31;
    v43[4] = v42;
    v43[5] = ObjectType;
    OUTLINED_FUNCTION_181();
    v44 = swift_allocObject();
    v44[2] = v35;
    v44[3] = v42;
    v44[4] = ObjectType;
    sub_216685F4C(0, &qword_280E29CD0);
    OUTLINED_FUNCTION_52_16();
    swift_retain_n();

    v45 = sub_21700EE84();
    a15 = ObjectType;
    a16 = MEMORY[0x277D225C0];
    a12 = v45;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a12);
    goto LABEL_19;
  }

  if (qword_280E31C10 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v46 = sub_217007CA4();
  __swift_project_value_buffer(v46, qword_280E73BC0);
  v47 = sub_217007C84();
  sub_21700ED84();
  v48 = OUTLINED_FUNCTION_22_6();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_1_157();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_2_13(&dword_216679000, v50, v51, "Requested to perform approve all follow requests with no valid users");
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
  LOBYTE(a12) = 1;
  sub_21700E1F4();

LABEL_19:
  OUTLINED_FUNCTION_37_8();
}

void sub_216CAD67C()
{
  OUTLINED_FUNCTION_13_73();
  OUTLINED_FUNCTION_12_78();
  swift_getObjectType();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v0 = sub_216F0706C();
  if (sub_216F07FB4(v0) != 0x6F6C6C6F46746F6ELL || v1 != 0xEC000000676E6977)
  {
    sub_21700F7D4();
    OUTLINED_FUNCTION_41_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
  sub_21700E1F4();
  OUTLINED_FUNCTION_43_29();
  OUTLINED_FUNCTION_28_4();
}

uint64_t sub_216CAD8A0()
{
  ObjectType = swift_getObjectType();
  v3 = *&v1[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
  sub_21700DF14();
  sub_21700E244();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  OUTLINED_FUNCTION_3_146();
  sub_21700E094();
  sub_21700DF14();
  sub_216ECE184();

  OUTLINED_FUNCTION_53();
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v3;
  v4[5] = ObjectType;
  OUTLINED_FUNCTION_181();
  v5 = swift_allocObject();
  v5[2] = v0;
  v5[3] = v1;
  v5[4] = ObjectType;
  sub_216685F4C(0, &qword_280E29CD0);
  OUTLINED_FUNCTION_47();
  swift_retain_n();
  v6 = v1;
  sub_21700EE84();
  OUTLINED_FUNCTION_14_70();
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v0;
}

void sub_216CADA4C()
{
  OUTLINED_FUNCTION_49();
  v76 = v1;
  v77 = v2;
  v92 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v78 = v70 - v4;
  sub_217005844();
  OUTLINED_FUNCTION_1();
  v80 = v6;
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v79 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v70 - v10;
  v12 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v82 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90);
  OUTLINED_FUNCTION_1();
  v85 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v84 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8568);
  v83 = sub_21700E244();
  v25 = *(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
  v26 = sub_21700D4D4();
  v73 = v25;
  v72 = v26;
  sub_21700E094();
  v27 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  if (!v87)
  {
    goto LABEL_4;
  }

  sub_217005ED4();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_216697664(v11, &qword_27CABA820);
LABEL_4:
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v28 = sub_217007CA4();
    __swift_project_value_buffer(v28, qword_280E73BC0);
    v29 = sub_217007C84();
    v30 = sub_21700ED84();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_1_157();
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_216679000, v29, v30, "Error attempting to perform social profile photo update, 'directUploaderRichPostImage' bag key was not available", v31, 2u);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    sub_2169CAE18();
    v32 = swift_allocError();
    *v33 = 4;
    sub_21700E214();
    v34 = OUTLINED_FUNCTION_30_42();
    v36 = v20;
    goto LABEL_9;
  }

  v71 = v20;
  v75 = v19;
  v39 = v82;
  (*(v82 + 32))(v75, v11, v12);
  v40 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v41 = [v40 UUIDString];

  sub_21700E514();
  sub_216CB360C();

  v42 = *(v39 + 16);
  v70[1] = v12;
  v42(v16, v75, v12);
  v43 = v79;
  sub_2170057E4();
  sub_217005784();
  sub_217005834();
  sub_217005834();

  v44 = OUTLINED_FUNCTION_38();
  sub_21677A404(v44, v45);
  OUTLINED_FUNCTION_38();
  sub_217005824();
  v46 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v46 setAnisetteType_];
  [v46 setMescalType_];
  [v46 setRequestEncoding_];
  [v46 setDialogOptions_];
  v47 = [objc_opt_self() currentProcess];
  [v46 setClientInfo_];

  [v46 setDisableResponseDecoding_];
  sub_21700E294();
  sub_21700E284();
  v48 = v78;
  MEMORY[0x21CE9F090]();

  v49 = sub_21700E264();
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_216697664(v48, &qword_27CABACC0);
    v50 = 0;
  }

  else
  {
    v50 = sub_21700E254();
    (*(*(v49 - 8) + 8))(v48, v49);
  }

  [v46 setAccount_];

  v51 = sub_2170057B4();
  v86 = 0;
  v52 = [v46 requestByEncodingRequest:v51 parameters:0 error:&v86];

  v53 = v86;
  if (v52)
  {
    sub_216685F4C(0, &qword_280E29D78);
    v54 = v53;
    sub_21700E094();
    v78 = v86;
    v55 = [v86 dataTaskPromiseWithRequest_];
    OUTLINED_FUNCTION_65_0();
    v56 = swift_allocObject();
    v57 = ObjectType;
    *(v56 + 16) = v83;
    *(v56 + 24) = v57;
    v90 = sub_216CB5E84;
    v91 = v56;
    v86 = MEMORY[0x277D85DD0];
    v87 = 1107296256;
    v88 = sub_2169F82C0;
    v89 = &block_descriptor_24_0;
    v58 = _Block_copy(&v86);

    [v55 addFinishBlock_];
    _Block_release(v58);

    (*(v80 + 8))(v43, v81);
    v59 = OUTLINED_FUNCTION_36_36();
    v60(v59);
    v61 = OUTLINED_FUNCTION_30_42();
    v62(v61, v71);
    v63 = OUTLINED_FUNCTION_47_29();
    v64(v63);
    goto LABEL_10;
  }

  v65 = v86;
  v66 = sub_217005D34();

  swift_willThrow();
  sub_2169CAE18();
  v32 = swift_allocError();
  *v67 = 4;
  sub_21700E214();

  (*(v80 + 8))(v43, v81);
  v68 = OUTLINED_FUNCTION_36_36();
  v69(v68);
  v34 = OUTLINED_FUNCTION_30_42();
  v36 = v71;
LABEL_9:
  v35(v34, v36);
  v37 = OUTLINED_FUNCTION_47_29();
  v38(v37);

LABEL_10:
  OUTLINED_FUNCTION_26();
}

void sub_216CAE468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v29;
  a26 = v30;
  v31 = v27;
  OUTLINED_FUNCTION_47_18();
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
  sub_21700E244();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  sub_21700E094();
  v33 = a9;
  sub_216ECDFE8();
  v34 = v31[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
  v35 = *&v31[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v36 = v31;
  OUTLINED_FUNCTION_10_87();
  sub_21700DF14();
  sub_216E11EFC(v35, v33, v28, v34, ObjectType);
  OUTLINED_FUNCTION_181();
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = v26;
  v37[4] = ObjectType;
  OUTLINED_FUNCTION_68_1();
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  *(v38 + 24) = v28;
  *(v38 + 32) = v34;
  *(v38 + 40) = v26;
  *(v38 + 48) = ObjectType;
  v39 = sub_216685F4C(0, &qword_280E29CD0);
  v40 = v33;
  OUTLINED_FUNCTION_47();
  swift_retain_n();
  v41 = v33;
  sub_21700DF14();
  v42 = sub_21700EE84();
  a12 = v39;
  a13 = MEMORY[0x277D225C0];
  a9 = v42;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&a9);
  OUTLINED_FUNCTION_28_4();
}

void sub_216CAE644()
{
  OUTLINED_FUNCTION_49();
  swift_getObjectType();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest;
  swift_beginAccess();
  if (!*(*&v1[v6] + 16))
  {
LABEL_47:
    OUTLINED_FUNCTION_26();
    return;
  }

  v62 = v0;
  v7 = sub_216CB040C();
  OUTLINED_FUNCTION_143();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = sub_21700E384();
  OUTLINED_FUNCTION_143();
  v65 = swift_allocObject();
  *(v65 + 16) = v9;
  v63 = v1;
  v10 = *&v1[v6];
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  sub_21700DF14();
  v16 = 0;
  v68 = v10 + 56;
  v69 = v7;
  v66 = v10;
  v67 = v15;
  if (v14)
  {
    while (1)
    {
LABEL_9:
      v18 = (*(v10 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v18;
      v20 = v18[1];
      sub_21700DF14();
      v21 = sub_216F0706C();
      type metadata accessor for SocialGraphController();

      v22 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      v71 = v19;
      if (v22)
      {
        break;
      }

      v36 = 0;
LABEL_24:
      v14 &= v14 - 1;
      switch(v21)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          v70 = v36;
          sub_21700F7D4();
          OUTLINED_FUNCTION_41_2();

          if (v36)
          {

            break;
          }

          v64 = v21;
          if (v36)
          {
            [v36 isPrivate];
          }

          sub_216F079D4();
          v37 = *(v65 + 16);
          sub_21700DF14();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v65 + 16) = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21693776C();
            v37 = v54;
            *(v65 + 16) = v54;
          }

          v39 = *(v37 + 16);
          if (v39 >= *(v37 + 24) >> 1)
          {
            sub_21693776C();
            v37 = v55;
          }

          *(v37 + 16) = v39 + 1;
          v40 = v37 + 16 * v39;
          *(v40 + 32) = v71;
          *(v40 + 40) = v20;
          *(v65 + 16) = v37;
          v41 = *(v8 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v72[0] = v41;
          v42 = v8;
          *(v8 + 16) = 0x8000000000000000;
          v43 = sub_2166AF66C(v71, v20);
          if (__OFADD__(*(v41 + 16), (v44 & 1) == 0))
          {
            goto LABEL_49;
          }

          v45 = v43;
          v46 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118);
          if (sub_21700F554())
          {
            v47 = sub_2166AF66C(v71, v20);
            v10 = v66;
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_51;
            }

            v45 = v47;
          }

          else
          {
            v10 = v66;
          }

          v49 = v72[0];
          if (v46)
          {
            *(*(v72[0] + 56) + v45) = v64;
          }

          else
          {
            *(v72[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v50 = (v49[6] + 16 * v45);
            *v50 = v71;
            v50[1] = v20;
            *(v49[7] + v45) = v64;
            v51 = v49[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_50;
            }

            v49[2] = v53;
          }

          v8 = v42;
          *(v42 + 16) = v49;

          v7 = v69;
          break;
        default:

          break;
      }

      v15 = v67;
      v11 = v68;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v23 = v8;
    v24 = v21;
    sub_217005EF4();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    *v5 = 18;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = v19;
    *(v5 + 32) = v20;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0;
    *(v5 + 112) = 1;
    sub_21700DF14();
    v29 = sub_216F08658();
    if (v20 && (v30 = ContentDescriptor.toMPIdentifierSet.getter()) != 0)
    {
      v31 = v30;
      v32 = [objc_opt_self() sharedServerObjectDatabase];
      v33 = [v32 modelObjectMatchingIdentifierSet:v31 propertySet:v29];

      if (v33)
      {
        v34 = [v33 innermostModelObject];

        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v10 = v66;
          v21 = v24;
          v36 = v35;
LABEL_23:
          sub_216CB5FB0();
          v8 = v23;
          v7 = v69;
          goto LABEL_24;
        }
      }

      else
      {
      }

      v36 = 0;
      v10 = v66;
    }

    else
    {

      v36 = 0;
    }

    v21 = v24;
    goto LABEL_23;
  }

LABEL_5:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      type metadata accessor for JSIntentDispatcher();
      sub_21700D4D4();
      OUTLINED_FUNCTION_8();
      sub_21700E094();
      sub_21700DF14();
      sub_216ECE1A4();

      OUTLINED_FUNCTION_68_1();
      v56 = swift_allocObject();
      v56[2] = v65;
      v56[3] = v7;
      v56[4] = v63;
      v56[5] = v8;
      v56[6] = v62;
      OUTLINED_FUNCTION_68_1();
      v57 = swift_allocObject();
      v57[2] = v65;
      v57[3] = v8;
      v57[4] = v7;
      v57[5] = v63;
      v57[6] = v62;
      v58 = sub_216685F4C(0, &qword_280E29CD0);
      swift_retain_n();
      swift_retain_n();
      v59 = v63;
      swift_retain_n();
      v60 = v59;
      v61 = sub_21700EE84();
      v72[3] = v58;
      v72[4] = MEMORY[0x277D225C0];
      v72[0] = v61;
      sub_21700E1C4();

      __swift_destroy_boxed_opaque_existential_1Tm(v72);

      goto LABEL_47;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_21700F824();
  __break(1u);
}

void sub_216CAEE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_12_78();
  ObjectType = swift_getObjectType();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v30 = sub_216F0706C();
  sub_216F07FB4(v30);
  OUTLINED_FUNCTION_34_33();
  v32 = v32 && v31 == 0xE900000000000064;
  if (v32)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
    v33 = sub_21700E244();
    OUTLINED_FUNCTION_109();
    sub_216F079D4();
    type metadata accessor for JSIntentDispatcher();
    v34 = *(v26 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    OUTLINED_FUNCTION_3_146();
    sub_21700E094();
    v35 = OUTLINED_FUNCTION_109();
    sub_216ECE1C4(v35, v36, v34);
    OUTLINED_FUNCTION_8_97();
    v37 = swift_allocObject();
    v38 = OUTLINED_FUNCTION_6_106(v37);
    *(v38 + 49) = v30;
    *(v38 + 56) = ObjectType;
    OUTLINED_FUNCTION_8_97();
    v39 = swift_allocObject();
    v40 = OUTLINED_FUNCTION_49_27(v39);
    *(v40 + 48) = v33;
    *(v40 + 56) = ObjectType;
    sub_216685F4C(0, &qword_280E29CD0);
    OUTLINED_FUNCTION_10_87();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_28_39();
    OUTLINED_FUNCTION_25_46();
    swift_retain_n();
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    OUTLINED_FUNCTION_44_26();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  }

  else
  {
    OUTLINED_FUNCTION_42();
    sub_21700F7D4();
    OUTLINED_FUNCTION_41_2();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
    LOBYTE(a10) = v30;
    sub_21700E1F4();
    OUTLINED_FUNCTION_43_29();
  }

  OUTLINED_FUNCTION_28_4();
}

uint64_t sub_216CAF05C()
{
  OUTLINED_FUNCTION_54_22();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4B4();
  if (!v8)
  {
    goto LABEL_6;
  }

  sub_2166C0578(&v8);
  if (v9)
  {
    v0 = v10;
    sub_216697664(&v8, &qword_27CAC5980);
    if (v0 != 2 && (v0 & 1) == 0)
    {
      v3 = sub_2166EFC70();
      if (sub_2166C0DB4(v3) == 0x6269726373627573 && v4 == 0xEA00000000006465)
      {
      }

      else
      {
        v6 = OUTLINED_FUNCTION_40_28();

        if ((v6 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_2166B90EC();
      v1 = v7;

      return v1 & 1;
    }
  }

LABEL_5:

LABEL_6:
  v1 = 0;
  return v1 & 1;
}

uint64_t sub_216CAF178()
{
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v2 = *(v1 + 16);
  v3 = v0;
  os_unfair_lock_lock(v2);
  v4 = *&v3[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v5 = *(v1 + 16);
  v6 = v4;
  os_unfair_lock_unlock(v5);

  if (v4 && (sub_2167DEA8C(v6), v7))
  {
    sub_21700F3B4();

    v8 = OUTLINED_FUNCTION_45_0();
    MEMORY[0x21CE9F490](v8);

    sub_217005ED4();
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_38_2();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_216CAF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_216CB040C();
  OUTLINED_FUNCTION_98();
  v29 = sub_216F0706C();

  switch(v29)
  {
    case 1:
      v47 = OUTLINED_FUNCTION_98();

      sub_216CAF6A8(v47, v48, a3, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
      break;
    case 2:
      v31 = OUTLINED_FUNCTION_98();

      sub_216CAEE38(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
      break;
    case 3:
      v39 = OUTLINED_FUNCTION_98();

      sub_216CAC960(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
      break;
    case 4:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
      sub_2169CAE18();
      swift_allocError();
      *v30 = 4;
      sub_21700E1E4();
      break;
    default:
      OUTLINED_FUNCTION_98();

      sub_216CAD67C();
      break;
  }
}

uint64_t sub_216CAF434()
{
  OUTLINED_FUNCTION_54_22();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4B4();
  if (v6)
  {
    OUTLINED_FUNCTION_23_46();
    v2 = sub_2166EFC70();
    if (sub_2166C0DB4(v2) == v0 && v3 == v1)
    {

      LOBYTE(v0) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_40_28();
      OUTLINED_FUNCTION_41_2();
    }
  }

  else
  {
    LOBYTE(v0) = 0;
  }

  return v0 & 1;
}

void sub_216CAF4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v33 = v32;
  ObjectType = swift_getObjectType();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v35 = sub_216F07CEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560);
  if (v35)
  {
    LOBYTE(a10) = 1;
    sub_21700E1F4();
    OUTLINED_FUNCTION_43_29();
  }

  else
  {
    v36 = sub_21700E244();
    type metadata accessor for JSIntentDispatcher();
    v37 = *(v27 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    OUTLINED_FUNCTION_3_146();
    sub_21700E094();
    v38 = OUTLINED_FUNCTION_109();
    sub_216ECE34C(v38, v39, v37);
    OUTLINED_FUNCTION_68_1();
    v40 = swift_allocObject();
    v40[2] = v33;
    v40[3] = v31;
    v40[4] = v26;
    v40[5] = v36;
    v40[6] = ObjectType;
    OUTLINED_FUNCTION_53();
    v41 = swift_allocObject();
    v41[2] = v33;
    v41[3] = v31;
    v41[4] = v36;
    v41[5] = ObjectType;
    sub_216685F4C(0, &qword_280E29CD0);
    OUTLINED_FUNCTION_10_87();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_25_46();
    swift_retain_n();

    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  }

  OUTLINED_FUNCTION_28_4();
}

void sub_216CAF6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_38_6();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  ObjectType = swift_getObjectType();
  v36 = sub_216CB040C();
  v37 = sub_216F0706C();
  v38 = type metadata accessor for SocialGraphController();
  sub_216F08658();
  v39 = OUTLINED_FUNCTION_52_16();
  v40 = sub_216F07870(v39, v33);

  if (sub_216F07FB4(v37) == 0x6E69776F6C6C6F66 && v41 == 0xE900000000000067)
  {
  }

  else
  {
    v43 = sub_21700F7D4();

    if ((v43 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
      v44 = sub_21700E244();
      if (v40)
      {
        if (([v40 isPrivate] & 1) == 0)
        {
LABEL_14:
          v45 = 0;
          goto LABEL_15;
        }
      }

      else if (v31 == 2 || (v31 & 1) == 0)
      {
        goto LABEL_14;
      }

      v45 = 2;
LABEL_15:
      sub_216F079D4();
      type metadata accessor for JSIntentDispatcher();
      sub_21700D4D4();
      sub_21700E094();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
      OUTLINED_FUNCTION_53();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_217013DA0;
      *(v46 + 32) = v35;
      *(v46 + 40) = v33;
      sub_21700DF14();
      sub_216ECE1A4();

      OUTLINED_FUNCTION_8_97();
      v47 = swift_allocObject();
      *(v47 + 16) = v35;
      *(v47 + 24) = v33;
      *(v47 + 32) = v36;
      *(v47 + 40) = v44;
      *(v47 + 48) = v45;
      *(v47 + 49) = v37;
      *(v47 + 56) = ObjectType;
      OUTLINED_FUNCTION_8_97();
      v48 = swift_allocObject();
      *(v48 + 16) = v35;
      *(v48 + 24) = v33;
      *(v48 + 32) = v36;
      *(v48 + 40) = v37;
      *(v48 + 48) = v44;
      *(v48 + 56) = ObjectType;
      sub_216685F4C(0, &qword_280E29CD0);
      OUTLINED_FUNCTION_10_87();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_28_39();
      swift_retain_n();
      v49 = sub_21700EE84();
      a15 = ObjectType;
      a16 = MEMORY[0x277D225C0];
      a12 = v49;
      sub_21700E1C4();

      __swift_destroy_boxed_opaque_existential_1Tm(&a12);
      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570);
  LOBYTE(a12) = v37;
  sub_21700E1F4();

LABEL_16:
  OUTLINED_FUNCTION_37_8();
}

uint64_t (*sub_216CAF9D4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_216CB5EB4;
}

uint64_t sub_216CAFA38()
{
  sub_2166B8854(1);
}

uint64_t (*sub_216CAFA70(void *a1))(__n128 *a1)
{
  v1 = sub_216CAF9D4(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_216CB5EAC;
}

char *sub_216CAFAC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2166B8854(1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_cachedFallbackFullname];
    *v3 = 0;
    *(v3 + 1) = 0;
  }

  return result;
}

uint64_t sub_216CAFB74()
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216CAFBE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216CAFB74();
  *a1 = result;
  return result;
}

uint64_t sub_216CAFC10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2166C1BB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216CAFC3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingStatePromises;
  swift_beginAccess();

  MEMORY[0x21CE9F610](v3);
  sub_2166C0198(*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_21700E8C4();
  return swift_endAccess();
}

uint64_t sub_216CAFCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_21700DFD4();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UserSocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CB5D24(a1, v10);
  sub_216CAFF7C(v10);
  sub_216CB040C();
  sub_216F07590(a1);

  type metadata accessor for SocialContactsCoordinator();
  sub_21700E294();
  sub_21700E284();
  v11 = sub_216890548();
  v13 = v12;

  v14 = sub_2169F9148(v11, v13);

  if (v14)
  {
    sub_2169F8EE8();
  }

  sub_21700E284();
  sub_216890548();
  v16 = v15;

  if (v16)
  {
    if (v10[*(v8 + 28)] == 1 && v10[*(v8 + 36)] == 1)
    {
      sub_21700D4D4();
      sub_21700E094();
      sub_2169F3E74();

      (*(v19 + 8))(v7, v5);
    }

    else
    {
    }
  }

  v21 = *(a2 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state);
  sub_21700E224();
  return sub_216CB5FB0();
}

void sub_216CAFF7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserSocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8550);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8540);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  type metadata accessor for SocialGraphController();
  v16 = sub_216F08658();
  v38 = sub_216F07F34(a1, v16);

  v17 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userSocialProfileDescriptor;
  swift_beginAccess();
  v39 = a1;
  v18 = a1;
  v19 = v2;
  sub_216CB5D24(v18, v15);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v4);
  v20 = *(v7 + 56);
  sub_2168282D4(&v2[v17], v9, &qword_27CAC8540);
  sub_2168282D4(v15, &v9[v20], &qword_27CAC8540);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    sub_216697664(v15, &qword_27CAC8540);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v9[v20], 1, v4);
    v22 = v38;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v9, &qword_27CAC8540);
      goto LABEL_12;
    }

LABEL_6:
    v23 = sub_216697664(v9, &qword_27CAC8550);
    goto LABEL_7;
  }

  sub_2168282D4(v9, v13, &qword_27CAC8540);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v4) == 1)
  {
    sub_216697664(v15, &qword_27CAC8540);
    sub_216CB5FB0();
    v22 = v38;
    goto LABEL_6;
  }

  v26 = v37;
  sub_216CB5DA8(&v9[v20], v37, type metadata accessor for UserSocialProfileDescriptor);
  v27 = sub_216983010(v13, v26);
  sub_216CB5FB0();
  sub_216697664(v15, &qword_27CAC8540);
  sub_216CB5FB0();
  v23 = sub_216697664(v9, &qword_27CAC8540);
  v22 = v38;
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  v28 = *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v29 = *(v28 + 16);
  v30 = v19;
  os_unfair_lock_lock(v29);
  v31 = *&v30[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v32 = *(v28 + 16);
  v33 = v31;
  os_unfair_lock_unlock(v32);

  if (v22)
  {
    if (v31)
    {
      sub_216685F4C(0, &qword_27CAC4688);
      v34 = v22;
      v35 = sub_21700F104();

      v24 = v35 ^ 1;
      goto LABEL_8;
    }

LABEL_7:
    v24 = 1;
    goto LABEL_8;
  }

  if (v31)
  {

    goto LABEL_7;
  }

  v24 = 0;
LABEL_8:
  MEMORY[0x28223BE20](v23);
  v25 = v39;
  *(&v36 - 4) = v19;
  *(&v36 - 3) = v25;
  *(&v36 - 2) = v22;
  sub_216AB3DDC(sub_216CB5D88);
  if (v24)
  {
    sub_216CB52BC();
  }
}

uint64_t sub_216CB040C()
{
  type metadata accessor for SocialGraphController();
  sub_21700D4D4();
  sub_21700E094();
  return v1;
}

uint64_t sub_216CB046C(void *a1, char *a2)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73BC0);
  v5 = a1;
  v6 = sub_217007C84();
  v7 = sub_21700ED84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_216679000, v6, v7, "Error fetching user social profile: '%{public}@'", v8, 0xCu);
    sub_216697664(v9, &qword_27CABF880);
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  v12 = *&a2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v13 = *(v12 + 16);
  v14 = a2;
  os_unfair_lock_lock(v13);
  sub_216CB0624(v14);
  os_unfair_lock_unlock(*(v12 + 16));

  return sub_21700E224();
}

uint64_t sub_216CB0624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8540);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_216CB0794(0);
  sub_216CB07EC(0);
  sub_216CB0804(0);
  sub_216CB0834(0);
  sub_216CB0864(0);
  v8 = type metadata accessor for Artwork();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_216CB0894(v7);
  v9 = type metadata accessor for UserSocialProfileDescriptor(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userSocialProfileDescriptor;
  swift_beginAccess();
  sub_216CB5BA4(v4, a1 + v10);
  swift_endAccess();
  return sub_2166C1D2C(2);
}

void sub_216CB0794(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile);
  *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile) = a1;
  v3 = a1;

  sub_216CB4764();
}

void sub_216CB07EC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded);
  *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) = a1;
  sub_216CB4864(v2);
}

uint64_t sub_216CB0894(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  v5 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
  swift_beginAccess();
  sub_2168282D4(v1 + v5, v2, &qword_27CAB6D60);
  swift_beginAccess();
  sub_216CB5C14(a1, v1 + v5);
  swift_endAccess();
  sub_216CB49DC(v2);
  sub_216697664(a1, &qword_27CAB6D60);
  return sub_216697664(v2, &qword_27CAB6D60);
}

void sub_216CB0994(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);
  sub_21700DF14();
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_2166A85FC(a2, a3, &v21);
    *(v14 + 12) = 2050;
    *(v14 + 14) = qword_21705D7A0[v9];
    _os_log_impl(&dword_216679000, v11, v12, "User requested to follow social profile: %{public}s, response: '%{public}ld'", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    v16 = v14;
    a6 = v13;
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  if (v9 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_217013DA0;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    v21 = v17;
    sub_21700DF14();
    sub_21700CC34();

    LOBYTE(v21) = a6;
    sub_21700E224();
  }

  else
  {
    sub_216F079D4();
    v18 = sub_2169CA578(v9);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      sub_2169CAE18();
      v19 = swift_allocError();
      *v20 = 0;
    }

    sub_21700E214();
  }
}

void sub_216CB0C28(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);
  sub_21700DF14();
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_2166A85FC(a2, a3, &v21);
    *(v14 + 12) = 2050;
    *(v14 + 14) = qword_21705D7A0[v9];
    _os_log_impl(&dword_216679000, v11, v12, "User requested to unfollow social profile: %{public}s, response: '%{public}ld'", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    v16 = v14;
    a6 = v13;
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  if (v9 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_217013DA0;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    v21 = v17;
    sub_21700DF14();
    sub_21700CC34();

    LOBYTE(v21) = a6;
    sub_21700E224();
  }

  else
  {
    sub_216F079D4();
    v18 = sub_2169CA578(v9);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      sub_2169CAE18();
      v19 = swift_allocError();
      *v20 = 0;
    }

    sub_21700E214();
  }
}

void sub_216CB0EBC(char *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E73BC0);
  sub_21700DF14();
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136446722;
    if (a2)
    {
      v17 = 0x656E696C636564;
    }

    else
    {
      v17 = 0x747065636361;
    }

    if (a2)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE600000000000000;
    }

    v19 = a7;
    v20 = sub_2166A85FC(v17, v18, &v24);

    *(v15 + 4) = v20;
    a7 = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_2166A85FC(a3, a4, &v24);
    *(v15 + 22) = 2050;
    *(v15 + 24) = qword_21705D7A0[v11];
    _os_log_impl(&dword_216679000, v13, v14, "User responded (with: %{public}s to follow request from social profile: %{public}s, response: '%{public}ld'", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v15, -1, -1);
  }

  if (v11 == 1)
  {
    sub_216F07A9C(0, a3, a4, 1);
    v25 = 1;
    sub_21700E224();
  }

  else
  {
    sub_216F07A9C(a7 & 1, a3, a4, 0);
    v21 = sub_2169CA578(v11);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      sub_2169CAE18();
      v22 = swift_allocError();
      *v23 = 0;
    }

    sub_21700E214();
  }
}

uint64_t sub_216CB1178(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73BC0);
  sub_21700DF14();
  v12 = a1;
  v13 = sub_217007C84();
  v14 = sub_21700ED84();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136446722;
    if (a2)
    {
      v17 = 0x656E696C636564;
    }

    else
    {
      v17 = 0x747065636361;
    }

    if (a2)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE600000000000000;
    }

    v19 = sub_2166A85FC(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_2166A85FC(a3, a4, &v24);
    *(v15 + 22) = 2082;
    swift_getErrorValue();
    v20 = sub_21700F884();
    v22 = sub_2166A85FC(v20, v21, &v24);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_216679000, v13, v14, "Error attempting to perform %{public}s to follow request from social profile: %{public}s, error: '%{public}s'", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v16, -1, -1);
    MEMORY[0x21CEA1440](v15, -1, -1);
  }

  sub_216F07A9C(a6 & 1, a3, a4, 0);
  return sub_21700E214();
}

void sub_216CB13C8(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73BC0);
  sub_21700DF14();
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = MEMORY[0x21CE9F660](a2, MEMORY[0x277D837D0]);
    v11 = sub_2166A85FC(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2050;
    *(v7 + 14) = qword_21705D7A0[v3];
    _os_log_impl(&dword_216679000, v5, v6, "User approved all follow requests for social profile: %{public}s, response: '%{public}ld'", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  if (v3 == 1)
  {
    sub_216F07C18(0, a2, 1);
    v16 = 1;
    sub_21700E224();
  }

  else
  {
    v12 = sub_2169CA578(v3);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      sub_2169CAE18();
      v13 = swift_allocError();
      *v14 = 0;
    }

    sub_21700E214();
  }
}

uint64_t sub_216CB15FC(void *a1, uint64_t a2)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73BC0);
  sub_21700DF14();
  v5 = a1;
  v6 = sub_217007C84();
  v7 = sub_21700ED84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    v10 = MEMORY[0x21CE9F660](a2, MEMORY[0x277D837D0]);
    v12 = sub_2166A85FC(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v13 = sub_21700F884();
    v15 = sub_2166A85FC(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_216679000, v6, v7, "Error attempting to perform approve all follow requests for social profiles: %{public}s, error: '%{public}s'", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  return sub_21700E214();
}

void sub_216CB17D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);
  sub_21700DF14();
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_2166A85FC(a2, a3, &v21);
    *(v14 + 12) = 2050;
    *(v14 + 14) = qword_21705D7A0[v9];
    _os_log_impl(&dword_216679000, v11, v12, "User requested to block social profile: %{public}s, response: '%{public}ld'", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    v16 = v14;
    a6 = v13;
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  if (v9 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_217013DA0;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    v21 = v17;
    sub_21700DF14();
    sub_21700CC34();

    LOBYTE(v21) = a6;
    sub_21700E224();
  }

  else
  {
    sub_216F079D4();
    v18 = sub_2169CA578(v9);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      sub_2169CAE18();
      v19 = swift_allocError();
      *v20 = 0;
    }

    sub_21700E214();
  }
}

void sub_216CB1A68(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);
  sub_21700DF14();
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_2166A85FC(a2, a3, &v21);
    *(v14 + 12) = 2050;
    *(v14 + 14) = qword_21705D7A0[v9];
    _os_log_impl(&dword_216679000, v11, v12, "User requested to unblock social profile: %{public}s, response: '%{public}ld'", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    v16 = v14;
    a6 = v13;
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  if (v9 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_217013DA0;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    v21 = v17;
    sub_21700DF14();
    sub_21700CC34();

    LOBYTE(v21) = a6;
    sub_21700E224();
  }

  else
  {
    sub_216F079D4();
    v18 = sub_2169CA578(v9);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      sub_2169CAE18();
      v19 = swift_allocError();
      *v20 = 0;
    }

    sub_21700E214();
  }
}

void sub_216CB1CFC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73BC0);
  sub_21700DF14();
  v7 = a1;
  oslog = sub_217007C84();
  v8 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2166A85FC(a2, a3, &v16);
    *(v9 + 12) = 2082;
    if (a1)
    {
      swift_getErrorValue();
      v11 = sub_21700F884();
      v13 = v12;
    }

    else
    {
      v13 = 0xE800000000000000;
      v11 = 0x726F727265206F6ELL;
    }

    v14 = sub_2166A85FC(v11, v13, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_216679000, oslog, v8, "Error attempting to remove folower for social profile: %{public}s, error: '%{public}s'", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  else
  {
  }
}

void sub_216CB1F04(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73BC0);
  sub_21700DF14();
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2166A85FC(a2, a3, &v15);
    *(v9 + 12) = 2050;
    *(v9 + 14) = qword_21705D7A0[v5];
    _os_log_impl(&dword_216679000, v7, v8, "User requested to block social profile: %{public}s, response: '%{public}ld'", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  if (v5 == 1)
  {
    sub_216F07DD0();
    v16 = 1;
    sub_21700E224();
  }

  else
  {
    v11 = sub_2169CA578(v5);
    sub_216CB1CFC(v11, a2, a3);

    v12 = sub_2169CA578(v5);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      sub_2169CAE18();
      v13 = swift_allocError();
      *v14 = 0;
    }

    sub_21700E214();
  }
}