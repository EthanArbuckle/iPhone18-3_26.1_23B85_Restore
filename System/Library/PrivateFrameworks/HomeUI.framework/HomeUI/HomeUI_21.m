uint64_t sub_20D0B95F0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20D0B9A04;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20D0B971C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D0B971C()
{
  v1 = *(v0 + 120);

  sub_20D0C5D74(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0B97AC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20D0B9AA0;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20D0C5E44;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D0B98D8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20D0B9B3C;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_20D0C5E44;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D0B9A04()
{
  v1 = *(v0 + 120);

  sub_20D0C5D74(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0B9AA0()
{
  v1 = *(v0 + 120);

  sub_20D0C5D74(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0B9B3C()
{
  v1 = *(v0 + 120);

  sub_20D0C5D74(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0B9BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall ControlCenterModuleItemManager.setOverrideTileLimit(_:reload:)(Swift::Int_optional _, Swift::Bool reload)
{
  v3 = &v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideTileLimit];
  v4 = v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideTileLimit + 8];
  if (_.is_nil)
  {
    if (v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideTileLimit + 8])
    {
      return;
    }

    goto LABEL_7;
  }

  if (*v3 != _.value)
  {
    v4 = 1;
  }

  if (v4)
  {
LABEL_7:
    *v3 = _.value;
    v3[8] = _.is_nil;
    if (reload)
    {
      v5 = *&v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider];
      if (v5)
      {
        v6 = v5;
        [v6 updateItemLimit_];
      }

      v7 = *&v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider];
      if (v7)
      {
        v8 = v7;
        v9 = sub_20D0B9DD0();
        v10 = &v8[qword_27C820498];
        swift_beginAccess();
        *v10 = v9;
        v10[8] = 0;
      }
    }
  }
}

uint64_t ControlCenterModuleItemManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  return sub_20D0C5DD4(v1 + v3, a1, type metadata accessor for ControlCenterModuleConfiguration);
}

unint64_t sub_20D0B9DD0()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  if (*(v0 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideTileLimit + 8) != 1)
  {
    return *(v0 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideTileLimit);
  }

  v7 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  sub_20D0C5DD4(v0 + v7, v6, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D0C5DD4(v0 + v7, v3, type metadata accessor for ControlCenterModuleConfiguration);
  v8 = *&v3[*(v1 + 20)];
  sub_20D0C5D74(v3, type metadata accessor for ControlCenterModuleConfiguration);
  v9 = v8 > 1;
  v10 = CCUINumberOfRowsForGridSizeClass();
  v11 = CCUINumberOfColumnsForGridSizeClass();
  sub_20D0C5D74(v6, type metadata accessor for ControlCenterModuleConfiguration);
  if ((v11 >> v9) * v10 <= 1)
  {
    return 1;
  }

  else
  {
    return (v11 >> v9) * v10;
  }
}

id sub_20D0B9F4C(uint64_t a1)
{
  v3 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_accessAllowedForCurrentLockState] = 1;
  v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_filtersItemsToAvailableSpace] = 1;
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideValueSource] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_lastFilterType] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager] = 0;
  v6 = &v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideTileLimit];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider] = 0;
  v7 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_lastBackgroundTime;
  v8 = sub_20D5637A8();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  sub_20D0C5DD4(a1, &v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration], type metadata accessor for ControlCenterModuleConfiguration);
  v9 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_nonEmptyConfigurationFuture] = v9;
  v10 = type metadata accessor for ControlCenterModuleItemManager();
  v14.receiver = v1;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, sel_initWithDelegate_sourceItem_, 0, 0);
  sub_20D0C5DD4(a1, v5, type metadata accessor for ControlCenterModuleConfiguration.Content);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20D0C5D74(v5, type metadata accessor for ControlCenterModuleConfiguration.Content);
  }

  else
  {
    v12 = v11;
    sub_20D0C5D74(v5, type metadata accessor for ControlCenterModuleConfiguration.Content);
    [*&v12[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_nonEmptyConfigurationFuture] finishWithNoResult];
  }

  sub_20D0C5D74(a1, type metadata accessor for ControlCenterModuleConfiguration);
  return v11;
}

uint64_t sub_20D0BA1B0@<X0>(char **a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v5);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v86 - v9;
  v11 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = v86 - v16;
  v18 = [v2 allDisplayedItems];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v19 = sub_20D567D08();

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = sub_20D568768();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  if (!v20)
  {
    v88 = v13;
    v89 = v10;
    v90 = v5;
    v26 = objc_opt_self();
    v27 = &selRef_setUnsupportedItemProvider_;
    v28 = [v26 sharedDispatcher];
    v29 = &selRef_home_didRemoveTrigger_;
    v30 = [v28 homeManager];

    if (!v30)
    {
      goto LABEL_10;
    }

    v31 = [v30 homes];

    sub_20CECF940(0, &qword_28111FB80);
    v32 = sub_20D567A78();

    if (v32 >> 62)
    {
LABEL_64:
      v33 = sub_20D568768();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v33)
    {
      v60 = MEMORY[0x277D18060];
    }

    else
    {
LABEL_10:
      v34 = [v26 v27[216]];
      v35 = [v34 v29[47]];

      if (v35)
      {
        v86[0] = v7;
        v36 = [v35 homes];

        sub_20CECF940(0, &qword_28111FB80);
        v26 = sub_20D567A78();

        v86[1] = ObjectType;
        v87 = a1;
        v7 = (v26 & 0xFFFFFFFFFFFFFF8);
        if (v26 >> 62)
        {
          v27 = sub_20D568768();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = 0;
        ObjectType = v26 & 0xC000000000000001;
        a1 = &selRef_hf_attributedLinkStringForString_linkString_linkURL_attributes_additionalLinkAttributes_;
        do
        {
          if (v27 == v37)
          {

            a1 = v87;
            v7 = v86[0];
            goto LABEL_23;
          }

          if (ObjectType)
          {
            v38 = MEMORY[0x20F31DD20](v37, v26);
          }

          else
          {
            if (v37 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v38 = *(v26 + 8 * v37 + 32);
          }

          v39 = v38;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v29 = [v38 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion];

          v37 = (v37 + 1);
        }

        while ((v29 & 1) == 0);

        a1 = v87;
        if (qword_281120950 != -1)
        {
          swift_once();
        }

        v61 = sub_20D565988();
        __swift_project_value_buffer(v61, qword_281120958);
        v62 = sub_20D565968();
        v63 = sub_20D567EA8();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v92[0] = v65;
          *v64 = 136315138;
          v66 = sub_20D568E18();
          v68 = sub_20CEE913C(v66, v67, v92);

          *(v64 + 4) = v68;
          _os_log_impl(&dword_20CEB6000, v62, v63, "%s: Displaying error for having home that requires to HH2", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x20F31FC70](v65, -1, -1);
          MEMORY[0x20F31FC70](v64, -1, -1);
        }

        v60 = MEMORY[0x277D18040];
        goto LABEL_41;
      }

LABEL_23:
      if ([*&v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_nonEmptyConfigurationFuture] isFinished])
      {
        v40 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
        swift_beginAccess();
        sub_20D0C5DD4(&v2[v40], v17, type metadata accessor for ControlCenterModuleConfiguration);
        v41 = v89;
        sub_20D0C5D0C(v17, v89, type metadata accessor for ControlCenterModuleConfiguration.Content);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_20D0C5D74(v41, type metadata accessor for ControlCenterModuleConfiguration.Content);
        if (EnumCaseMultiPayload == 3)
        {
          if (qword_281120950 != -1)
          {
            swift_once();
          }

          v43 = sub_20D565988();
          __swift_project_value_buffer(v43, qword_281120958);
          v44 = sub_20D565968();
          v45 = sub_20D567EA8();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v91 = v47;
            *v46 = 136315138;
            v48 = sub_20D568E18();
            v50 = sub_20CEE913C(v48, v49, &v91);

            *(v46 + 4) = v50;
            _os_log_impl(&dword_20CEB6000, v44, v45, "%s: Displaying error for empty configuration", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v47);
            MEMORY[0x20F31FC70](v47, -1, -1);
            MEMORY[0x20F31FC70](v46, -1, -1);
          }

          v51 = MEMORY[0x277D18048];
        }

        else
        {
          v72 = [v2 home];
          if (!v72)
          {
            v76 = *MEMORY[0x277D18060];
LABEL_58:
            v83 = sub_20D5666D8();
            v84 = *(v83 - 8);
            (*(v84 + 104))(a1, v76, v83);
            return (*(v84 + 56))(a1, 0, 1, v83);
          }

          v73 = v72;
          v74 = [v72 currentUser];
          v75 = [v73 hf:v74 shouldShowNoAccessOutsideOfScheduleForRestrictedGuest:?];

          if (v75)
          {

            v51 = MEMORY[0x277D18058];
          }

          else if ([v73 hf_isCurrentRestrictedGuestAwayFromHome])
          {

            v51 = MEMORY[0x277D18028];
          }

          else
          {
            v77 = [v73 accessories];
            sub_20CECF940(0, &qword_28111FFF0);
            v78 = sub_20D567A78();

            if (v78 >> 62)
            {
              v79 = sub_20D568768();
            }

            else
            {
              v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v79)
            {
              v80 = v88;
              sub_20D0C5DD4(&v2[v40], v88, type metadata accessor for ControlCenterModuleConfiguration);
              sub_20D0C5D0C(v80, v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

                v81 = sub_20D563818();
                (*(*(v81 - 8) + 8))(v7, v81);
                v82 = MEMORY[0x277D18048];
              }

              else
              {
                sub_20D0C5D74(v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
                v82 = MEMORY[0x277D18050];
              }

              v85 = *v82;
              v83 = sub_20D5666D8();
              v84 = *(v83 - 8);
              (*(v84 + 104))(a1, v85, v83);
              return (*(v84 + 56))(a1, 0, 1, v83);
            }

            v51 = MEMORY[0x277D18038];
          }
        }

        v76 = *v51;
        goto LABEL_58;
      }

      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v52 = sub_20D565988();
      __swift_project_value_buffer(v52, qword_281120958);
      v53 = sub_20D565968();
      v54 = sub_20D567EA8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v92[0] = v56;
        *v55 = 136315138;
        v57 = sub_20D568E18();
        v59 = sub_20CEE913C(v57, v58, v92);

        *(v55 + 4) = v59;
        _os_log_impl(&dword_20CEB6000, v53, v54, "%s: Displaying error for no configuration provided", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x20F31FC70](v56, -1, -1);
        MEMORY[0x20F31FC70](v55, -1, -1);
      }

      v60 = MEMORY[0x277D18048];
    }

LABEL_41:
    v69 = *v60;
    v70 = sub_20D5666D8();
    v90 = *(v70 - 8);
    (*(v90 + 104))(a1, v69, v70);
    v22 = *(v90 + 56);
    v24 = a1;
    v25 = 0;
    v23 = v70;
    goto LABEL_42;
  }

  v21 = sub_20D5666D8();
  v22 = *(*(v21 - 8) + 56);
  v23 = v21;
  v24 = a1;
  v25 = 1;
LABEL_42:

  return v22(v24, v25, 1, v23);
}

uint64_t sub_20D0BAD64(void *a1)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider);
    if (v4)
    {
      v5 = result;
      v6 = a1;
      v7 = [v4 itemConfidence_];
      if (v7)
      {
        v8 = v7;
        [v7 doubleValue];
        v10 = v9;

        return v10;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_20D0BAE9C(void *a1)
{
  v3 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ControlCenterModuleConfiguration(0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
  {
    v10 = [v1 _buildItemProvidersWithoutHome];
LABEL_3:
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    v12 = sub_20D567A78();

    return v12;
  }

  v83 = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider;
  v15 = *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider];
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider] = 0;

  v16 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider;
  v17 = *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider];
  *&v1[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider] = 0;

  v18 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  sub_20D0C5DD4(&v1[v18], v9, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D0C5D0C(v9, v5, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v40 = sub_20D565988();
      __swift_project_value_buffer(v40, qword_281120958);
      v41 = v1;
      v42 = sub_20D565968();
      v43 = sub_20D567EC8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&dword_20CEB6000, v42, v43, "%@: Building placeholder provider with no home", v44, 0xCu);
        sub_20CEF928C(v45, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v45, -1, -1);
        MEMORY[0x20F31FC70](v44, -1, -1);
      }
    }

    else
    {
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v65 = sub_20D565988();
      __swift_project_value_buffer(v65, qword_281120958);
      v41 = v1;
      v42 = sub_20D565968();
      v66 = sub_20D567EC8();

      if (os_log_type_enabled(v42, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        *(v67 + 4) = v41;
        *v68 = v41;
        v69 = v41;
        _os_log_impl(&dword_20CEB6000, v42, v66, "%@: Building empty provider with no home", v67, 0xCu);
        sub_20CEF928C(v68, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v68, -1, -1);
        MEMORY[0x20F31FC70](v67, -1, -1);
      }
    }

    v10 = [v41 _buildItemProvidersWithoutHome];
    goto LABEL_3;
  }

  v81 = v1;
  if (EnumCaseMultiPayload)
  {
    v47 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48));
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v48 = sub_20D565988();
    __swift_project_value_buffer(v48, qword_281120958);
    v49 = v1;
    sub_20D5663C8();
    v50 = a1;
    v51 = sub_20D565968();
    v52 = sub_20D567EC8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82[0] = v80;
      *v53 = 138412802;
      *(v53 + 4) = v49;
      *v54 = v49;
      *(v53 + 12) = 2080;
      v55 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
      v56 = v49;
      v57 = MEMORY[0x20F31CF30](v47, v55);
      v59 = sub_20CEE913C(v57, v58, v82);
      v79 = v47;
      v60 = v59;

      *(v53 + 14) = v60;
      *(v53 + 22) = 2112;
      *(v53 + 24) = v50;
      v54[1] = v50;
      v61 = v50;
      _os_log_impl(&dword_20CEB6000, v51, v52, "%@: Building customized provider for elements %s in home %@", v53, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v54, -1, -1);
      v62 = v80;
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x20F31FC70](v62, -1, -1);
      v63 = v53;
      v64 = v79;
      MEMORY[0x20F31FC70](v63, -1, -1);
    }

    else
    {

      v64 = v47;
    }

    v70 = sub_20D0B9DD0();
    v71 = objc_allocWithZone(type metadata accessor for CustomizedControlCenterModuleItemProvider(0));
    v72 = CustomizedControlCenterModuleItemProvider.init(home:elementIDs:itemLimit:)(v50, v64, v70, 0);
    v73 = *&v49[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideValueSource];
    v74 = qword_27C8204A8;
    swift_beginAccess();
    *&v72[v74] = v73;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v75 = *&v81[v14];
    *&v81[v14] = v72;
    v76 = v72;

    v77 = v76;
    MEMORY[0x20F31CEE0]();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();

    v12 = v83;
    v78 = sub_20D563818();
    (*(*(v78 - 8) + 8))(v5, v78);
  }

  else
  {
    v20 = *v5;
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v21 = sub_20D565988();
    __swift_project_value_buffer(v21, qword_281120958);
    v22 = v1;
    v23 = a1;
    sub_20D5663C8();
    v24 = sub_20D565968();
    v25 = sub_20D567EC8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82[0] = v80;
      *v26 = 138412802;
      *(v26 + 4) = v22;
      *v27 = v22;
      *(v26 + 12) = 2080;
      sub_20CF54474();
      v28 = v22;
      v29 = sub_20D567D18();
      v31 = sub_20CEE913C(v29, v30, v82);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2112;
      *(v26 + 24) = v23;
      v27[1] = v23;
      v32 = v23;
      _os_log_impl(&dword_20CEB6000, v24, v25, "%@: Building recommended provider for types %s in home %@", v26, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v27, -1, -1);
      v33 = v80;
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x20F31FC70](v33, -1, -1);
      MEMORY[0x20F31FC70](v26, -1, -1);
    }

    v34 = sub_20D0BCAAC(v20, v23);

    v35 = v34;
    v36 = [objc_allocWithZone(MEMORY[0x277D14958]) initWithHome:v23 predictionsManager:v35 itemLimit:sub_20D0B9DD0()];

    if (*&v22[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_overrideValueSource])
    {
      [v36 setValueSource_];
    }

    [v36 setFreezePredictions_];
    v37 = *&v81[v16];
    *&v81[v16] = v36;
    v38 = v36;

    v39 = v38;
    MEMORY[0x20F31CEE0]();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();

    return v83;
  }

  return v12;
}

double sub_20D0BB950(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_accessAllowedForCurrentLockState) == 1)
  {
    v3 = [v1 home];
    if (!v3 || (v4 = v3, v5 = [v3 hf_shouldBlockCurrentRestrictedGuestFromHome], v4, (v5 & 1) == 0))
    {
      v7 = objc_allocWithZone(MEMORY[0x277D14850]);
      v8 = sub_20D5677F8();
      v9 = [v7 initWithIdentifier_];

      v10 = [v1 allItems];
      sub_20CECF940(0, &qword_281120AC0);
      sub_20CEF99B4();
      v11 = sub_20D567D08();

      v12 = sub_20CF84068(a1, v11);
      v13 = v1;
      v16 = sub_20CF81C08(v12);
      sub_20D0C5804(&v16, v13);

      sub_20D0BC500(v16);

      v14 = sub_20D567A58();

      [v9 setItems_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v15 = swift_allocObject();
      *&result = 1;
      *(v15 + 16) = xmmword_20D5BA040;
      *(v15 + 32) = v9;
    }
  }

  return result;
}

uint64_t sub_20D0BBC18(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v3 = sub_20D567CD8();
  v41.receiver = v1;
  v41.super_class = type metadata accessor for ControlCenterModuleItemManager();
  v4 = objc_msgSendSuper2(&v41, sel__itemsToHideInSet_, v3);

  v5 = sub_20D567D08();
  v42 = v5;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v20 = *(a1 + 32);
    v21 = v20 & 0x3F;
    v37 = ((1 << v20) + 63) >> 6;
    v6 = (8 * v37);
    isStackAllocationSafe = sub_20D5663C8();
    if (v21 <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

  v6 = MEMORY[0x277D84FA0];
  v40 = MEMORY[0x277D84FA0];
  sub_20D5663C8();
  a1 = sub_20D568718();
  v7 = sub_20D568798();
  if (!v7)
  {
LABEL_21:

    goto LABEL_39;
  }

  while (1)
  {
    v38 = v7;
    swift_dynamicCast();
    v14 = v39;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

LABEL_7:
    v7 = sub_20D568798();
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  v15 = v6[2];
  if (v6[3] <= v15)
  {
    sub_20D0C0AA0(v15 + 1, &unk_27C820C70);
  }

  v6 = v40;
  v8 = sub_20D5683E8();
  v9 = v40 + 56;
  v10 = -1 << *(v40 + 32);
  v11 = v8 & ~v10;
  v12 = v11 >> 6;
  if (((-1 << v11) & ~*(v40 + 56 + 8 * (v11 >> 6))) != 0)
  {
    v13 = __clz(__rbit64((-1 << v11) & ~*(v40 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(v6[6] + 8 * v13) = v14;
    ++v6[2];
    goto LABEL_7;
  }

  v16 = 0;
  v17 = (63 - v10) >> 6;
  while (++v12 != v17 || (v16 & 1) == 0)
  {
    v18 = v12 == v17;
    if (v12 == v17)
    {
      v12 = 0;
    }

    v16 |= v18;
    v19 = *(v9 + 8 * v12);
    if (v19 != -1)
    {
      v13 = __clz(__rbit64(~v19)) + (v12 << 6);
      goto LABEL_6;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_41:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_23:
    v36 = &v36;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v23 = &v36 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v6);
    v6 = 0;
    v24 = 0;
    v25 = 1 << *(a1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(a1 + 56);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_33:
      v32 = v29 | (v24 << 6);
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          continue;
        }
      }

      *&v23[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
      v33 = __OFADD__(v6, 1);
      v6 = (v6 + 1);
      if (v33)
      {
        __break(1u);
LABEL_38:
        v6 = sub_20D0C137C(v23, v37, v6, a1, &unk_27C820C70);
        goto LABEL_39;
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        goto LABEL_38;
      }

      v31 = *(a1 + 56 + 8 * v24);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_33;
      }
    }
  }

  v35 = swift_slowAlloc();
  v6 = sub_20D0C1064(v35, v37, a1, sub_20D0BC0D4);
  MEMORY[0x20F31FC70](v35, -1, -1);
LABEL_39:
  sub_20D06FCF8(v6);
  return v42;
}

BOOL sub_20D0BC0D4()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

BOOL sub_20D0BC1FC(void *a1, void *a2)
{
  v5 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  sub_20D0C5DD4(v2 + v11, v10, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D0C5D0C(v10, v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

      v21 = *(v2 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider);
      if (v21)
      {
        v22 = v21;
        v13 = sub_20D06E008(a1, a2);

        v23 = sub_20D563818();
        (*(*(v23 - 8) + 8))(v7, v23);
        return v13;
      }

      v24 = sub_20D563818();
      (*(*(v24 - 8) + 8))(v7, v24);
    }

    else
    {
      sub_20D0C5D74(v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
      v15 = *(v2 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider);
      if (v15)
      {
        v25[2] = &unk_2824C0788;
        v16 = swift_dynamicCastObjCProtocolUnconditional();
        v17 = v15;
        v18 = [v17 itemPriority_];
        v25[1] = &unk_2824C0788;
        v19 = [v17 itemPriority_];
        v20 = [v18 compare_];

        return v20 == -1;
      }
    }
  }

  return 1;
}

unint64_t sub_20D0BC500(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_filtersItemsToAvailableSpace) == 1)
  {
    type metadata accessor for ControlCenterModuleLayoutManager();
    v7 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    swift_beginAccess();
    sub_20D0C5DD4(v1 + v7, v6, type metadata accessor for ControlCenterModuleConfiguration);
    static ControlCenterModuleLayoutManager.adaptiveTileLayout(items:configuration:cropLayoutToRows:)(a1, v6, 1, v18);
    sub_20D0C5D74(v6, type metadata accessor for ControlCenterModuleConfiguration);
    v20[2] = v18[2];
    v20[3] = v18[3];
    v21 = v19;
    v20[0] = v18[0];
    v20[1] = v18[1];
    *&v18[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
    {
      v9 = 0;
      v10 = a1 & 0xC000000000000001;
      v16 = a1 & 0xC000000000000001;
      v15 = i;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x20F31DD20](v9, a1);
        }

        else
        {
          if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v17 = v11;
        if (sub_20D0BC7C4(&v17, v20, v2))
        {
          sub_20D5688C8();
          sub_20D568908();
          sub_20D568918();
          sub_20D5688D8();
          i = v15;
          v10 = v16;
        }

        else
        {
        }

        ++v9;
        if (v13 == i)
        {
          a1 = *&v18[0];
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_20:
    sub_20CEF928C(v20, &qword_27C81C370);
  }

  else
  {
    sub_20D5663C8();
  }

  return a1;
}

uint64_t sub_20D0BC7C4(void **a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(*a2 + 16))
  {
    sub_20CEED6E0(v10);
    if (v11)
    {
      return 1;
    }
  }

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v13 = sub_20D565988();
  __swift_project_value_buffer(v13, qword_281120958);
  v14 = v10;
  v15 = a3;
  v16 = sub_20D565968();
  v17 = sub_20D567EC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v19 = 136315650;
    v21 = sub_20D568E18();
    v23 = sub_20CEE913C(v21, v22, &v34);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    *v20 = v14;
    *(v19 + 22) = 2080;
    v24 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    swift_beginAccess();
    sub_20D0C5DD4(v15 + v24, v9, type metadata accessor for ControlCenterModuleConfiguration);
    v25 = v14;
    v26 = ControlCenterModuleConfiguration.description.getter();
    v28 = v27;
    sub_20D0C5D74(v9, type metadata accessor for ControlCenterModuleConfiguration);
    v29 = sub_20CEE913C(v26, v28, &v34);

    *(v19 + 24) = v29;
    _os_log_impl(&dword_20CEB6000, v16, v17, "%s: Filtering out %@ because it wasn't going to be on screen in config %s", v19, 0x20u);
    sub_20CEF928C(v20, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v20, -1, -1);
    v30 = v32;
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v30, -1, -1);
    MEMORY[0x20F31FC70](v19, -1, -1);
  }

  return 0;
}

id sub_20D0BCAAC(uint64_t a1, void *a2)
{
  v3 = v2;
  v71 = a2;
  v5 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D563818();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v72 = sub_20D0B8E3C(a1);
  v15 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager;
  v16 = *(v3 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager);
  if (v16)
  {
    v69 = v5;
    v70 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager;
    v17 = v16;
    v18 = [v17 home];
    v15 = [v18 uniqueIdentifier];

    sub_20D5637E8();
    v19 = [v71 uniqueIdentifier];
    sub_20D5637E8();

    LOBYTE(v19) = sub_20D5637D8();
    v20 = *(v9 + 8);
    v20(v11, v8);
    v20(v14, v8);
    if (v19)
    {
      v21 = [v17 filterTypes];
      v22 = v17;
      if (!v21)
      {
LABEL_39:
        if (qword_281120950 != -1)
        {
          swift_once();
        }

        v53 = sub_20D565988();
        __swift_project_value_buffer(v53, qword_281120958);
        v54 = v71;
        v55 = sub_20D565968();
        v56 = sub_20D567EC8();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138412290;
          *(v57 + 4) = v54;
          *v58 = v54;
          v59 = v54;
          _os_log_impl(&dword_20CEB6000, v55, v56, "Reusing existing HFPredictionsManager and updating filter types for home %@", v57, 0xCu);
          sub_20CEF928C(v58, &unk_27C81BE60);
          MEMORY[0x20F31FC70](v58, -1, -1);
          MEMORY[0x20F31FC70](v57, -1, -1);
        }

        sub_20CECF940(0, &qword_28111FB20);
        v52 = sub_20D567A58();

        [v22 setFilterTypes_];
        goto LABEL_44;
      }

      v23 = v21;
      sub_20CECF940(0, &qword_28111FB20);
      v24 = sub_20D567A78();

      if (v24 >> 62)
      {
        v25 = sub_20D568768();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v72;
      v67 = v17;
      v27 = v72 & 0xFFFFFFFFFFFFFF8;
      if (v72 >> 62)
      {
        v7 = sub_20D568768();
      }

      else
      {
        v7 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = 0;
      v5 = 0;
      v69 = v24 & 0xFFFFFFFFFFFFFF8;
      v70 = v24 & 0xC000000000000001;
      v29 = v24;
      v68 = v24 + 32;
      v3 = v26 & 0xC000000000000001;
      while (1)
      {
        if (v5 == v25)
        {
          if (v7 == v28)
          {
            goto LABEL_45;
          }

          v15 = 0;
          v5 = v25;
        }

        else
        {
          if (v70)
          {
            v30 = MEMORY[0x20F31DD20](v5, v29);
          }

          else
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            if (v5 >= *(v69 + 16))
            {
              goto LABEL_54;
            }

            v30 = *(v68 + 8 * v5);
          }

          v15 = v30;
          if (__OFADD__(v5++, 1))
          {
            goto LABEL_53;
          }

          if (v7 == v28)
          {
            if (v30)
            {
LABEL_36:

LABEL_37:

LABEL_38:
              v22 = v67;
              goto LABEL_39;
            }

LABEL_45:

            goto LABEL_46;
          }
        }

        if (v3)
        {
          v32 = MEMORY[0x20F31DD20](v28, v26);
        }

        else
        {
          if (v28 >= *(v27 + 16))
          {
            goto LABEL_51;
          }

          v32 = *(v26 + 8 * v28 + 32);
        }

        v33 = v32;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (!v15)
        {

          if (v33)
          {

            goto LABEL_38;
          }

LABEL_46:

          v22 = v67;
          if (qword_281120950 != -1)
          {
            swift_once();
          }

          v61 = sub_20D565988();
          __swift_project_value_buffer(v61, qword_281120958);
          v62 = v71;
          v52 = sub_20D565968();
          v63 = sub_20D567EC8();

          if (os_log_type_enabled(v52, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *v64 = 138412290;
            *(v64 + 4) = v62;
            *v65 = v62;
            v66 = v62;
            _os_log_impl(&dword_20CEB6000, v52, v63, "Using existing HFPredictionsManager for home %@", v64, 0xCu);
            sub_20CEF928C(v65, &unk_27C81BE60);
            MEMORY[0x20F31FC70](v65, -1, -1);
            MEMORY[0x20F31FC70](v64, -1, -1);
          }

          goto LABEL_44;
        }

        if (!v32)
        {
          goto LABEL_36;
        }

        sub_20CECF940(0, &qword_28111FB10);
        v34 = sub_20D5683F8();

        ++v28;
        v26 = v72;
        if ((v34 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v5 = v69;
    v15 = v70;
  }

  if (qword_281120950 != -1)
  {
LABEL_55:
    swift_once();
  }

  v35 = sub_20D565988();
  __swift_project_value_buffer(v35, qword_281120958);
  v36 = v71;
  v37 = sub_20D565968();
  v38 = sub_20D567EC8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v5;
    v41 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v41 = v36;
    v42 = v36;
    _os_log_impl(&dword_20CEB6000, v37, v38, "Creating new HFPredictionsManager for home %@", v39, 0xCu);
    sub_20CEF928C(v41, &unk_27C81BE60);
    v43 = v41;
    v5 = v40;
    MEMORY[0x20F31FC70](v43, -1, -1);
    MEMORY[0x20F31FC70](v39, -1, -1);
  }

  v44 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  sub_20D0C5DD4(v3 + v44, v7, type metadata accessor for ControlCenterModuleConfiguration);
  v45 = *&v7[*(v5 + 20)];
  sub_20D0C5D74(v7, type metadata accessor for ControlCenterModuleConfiguration);
  v46 = v45 > 1;
  LODWORD(v45) = CCUINumberOfRowsForGridSizeClass();
  v47 = (CCUINumberOfColumnsForGridSizeClass() >> v46) * v45;
  v48 = [v36 userActionPredictionController];
  v49 = objc_allocWithZone(MEMORY[0x277D14960]);
  sub_20CECF940(0, &qword_28111FB20);
  v50 = sub_20D567A58();

  v51 = [v49 initWithHome:v36 predictionsController:v48 delegate:0 predictionLimit:v47 filterTypes:v50];

  [v51 setCachesRawPredictions_];
  [v51 prepopulateWithCache];
  v52 = *&v15[v3];
  *&v15[v3] = v51;
  v22 = v51;
LABEL_44:

  return v22;
}

id sub_20D0BD54C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_nonEmptyConfigurationFuture);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_20D0C58F0;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20D059C04;
  v7[3] = &block_descriptor_44;
  v3 = _Block_copy(v7);
  v4 = v1;

  v5 = [v4 flatMap_];
  _Block_release(v3);

  return v5;
}

id sub_20D0BD650()
{
  v0 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    swift_beginAccess();
    sub_20D0C5DD4(v4 + v5, v2, type metadata accessor for ControlCenterModuleConfiguration);
    v6 = sub_20D0BDB6C(v2);
    sub_20D0C5D74(v2, type metadata accessor for ControlCenterModuleConfiguration);
    v7 = [v6 asGeneric];
  }

  else
  {
    v4 = [objc_opt_self() hf:59 errorWithCode:?];
    v6 = sub_20D5635C8();
    v7 = [objc_opt_self() futureWithError_];
  }

  v8 = v7;

  return v8;
}

void sub_20D0BD80C(void *a1)
{
  v2 = v1;
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  sub_20D0C5DD4(v2 + v14, v13, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D0C5D0C(v13, v10, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

      (*(v5 + 32))(v7, v10, v4);
      v18 = sub_20D5637C8();
      v19 = [a1 hf:v18 homeWithIdentifier:?];

      [v2 setHome_];
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_20D0C5D74(v10, type metadata accessor for ControlCenterModuleConfiguration.Content);
      v16 = [objc_opt_self() sharedDispatcher];
      v17 = [v16 home];

      [v2 setHome_];
    }
  }

  else
  {
    [v2 setHome_];
  }
}

id sub_20D0BDB6C(uint64_t a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D0C5DD4(a1, v8, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return sub_20D0BDDA4();
    }

    v12 = [objc_opt_self() hf:59 errorWithCode:?];
    v13 = sub_20D5635C8();
    v14 = [objc_opt_self() futureWithError_];

    return v14;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20D0C5D74(v8, type metadata accessor for ControlCenterModuleConfiguration.Content);
      return sub_20D0BDDA4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_20D0BDF9C(v5);
    (*(v3 + 8))(v5, v2);
    return v11;
  }
}

id sub_20D0BDDA4()
{
  swift_getObjectType();
  v0 = [objc_opt_self() sharedDispatcher];
  v1 = [v0 homeFuture];

  if (!v1)
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v2 = sub_20D565988();
    __swift_project_value_buffer(v2, qword_281120958);
    v3 = sub_20D565968();
    v4 = sub_20D567EB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      v7 = sub_20D568E18();
      v9 = sub_20CEE913C(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20CEB6000, v3, v4, "%s: HFHomeKitDispatcher.homeFuture is nil!", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x20F31FC70](v6, -1, -1);
      MEMORY[0x20F31FC70](v5, -1, -1);
    }

    v10 = [objc_opt_self() hf:59 errorWithCode:?];
    v11 = sub_20D5635C8();
    v1 = [objc_opt_self() futureWithError_];
  }

  return v1;
}

id sub_20D0BDF9C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = [objc_opt_self() sharedDispatcher];
  v7 = [v6 allHomesFuture];

  if (v7)
  {
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    aBlock[4] = sub_20D0C5910;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20D059C04;
    aBlock[3] = &block_descriptor_10_1;
    v10 = _Block_copy(aBlock);

    v11 = [v7 flatMap_];

    _Block_release(v10);
    return v11;
  }

  else
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v13 = sub_20D565988();
    __swift_project_value_buffer(v13, qword_281120958);
    v14 = sub_20D565968();
    v15 = sub_20D567EB8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      v18 = sub_20D568E18();
      v20 = sub_20CEE913C(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20CEB6000, v14, v15, "%s: HFHomeKitDispatcher.allHomesFuture is nil!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F31FC70](v17, -1, -1);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    v21 = [objc_opt_self() hf:59 errorWithCode:?];
    v22 = sub_20D5635C8();
    v23 = [objc_opt_self() futureWithError_];

    return v23;
  }
}

id sub_20D0BE328(void *a1, uint64_t a2)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  sub_20CECF940(0, &qword_28111FB80);
  v8 = sub_20D567A68();
  v9 = v31;
  if (v31 && (MEMORY[0x28223BE20](v8), *(&v29 - 2) = a2, v10 = sub_20D0721E0(sub_20D0C5CEC, (&v29 - 4), v9), , v10))
  {
    v11 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v12 = sub_20D565988();
    __swift_project_value_buffer(v12, qword_281120958);
    (*(v5 + 16))(v7, a2, v4);
    v13 = a1;
    v14 = sub_20D565968();
    v15 = sub_20D567EB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v16 = 136315650;
      v18 = sub_20D568E18();
      v20 = sub_20CEE913C(v18, v19, &v31);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_20D0C5CA4(&qword_2811209D0, MEMORY[0x277CC95F0]);
      v21 = sub_20D568BB8();
      v23 = v22;
      (*(v5 + 8))(v7, v4);
      v24 = sub_20CEE913C(v21, v23, &v31);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2112;
      *(v16 + 24) = v13;
      *v17 = v13;
      v25 = v13;
      _os_log_impl(&dword_20CEB6000, v14, v15, "%s: configured with homeID %s which couldn't be found in homes: %@", v16, 0x20u);
      sub_20CEF928C(v17, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v17, -1, -1);
      v26 = v30;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v26, -1, -1);
      MEMORY[0x20F31FC70](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v27 = [objc_opt_self() hf:59 errorWithCode:?];
    v10 = sub_20D5635C8();
    v11 = [objc_opt_self() futureWithError_];
  }

  return v11;
}

uint64_t sub_20D0BE75C(id *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_20D5637E8();

  v8 = sub_20D5637D8();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

id sub_20D0BE868(uint64_t a1, void *a2)
{
  v4 = sub_20D5637A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  updated = type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent(0);
  v24 = swift_allocBox();
  v13 = v12;
  [a2 senderSelector];
  *v13 = sub_20D5638D8();
  *(v13 + 8) = v14;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  (*(v5 + 56))(v13 + *(updated + 24), 1, 1, v4);
  sub_20D563798();
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v15 = sub_20D567CD8();
  v16 = type metadata accessor for ControlCenterModuleItemManager();
  v26.receiver = v2;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, sel__updateResultsForItems_context_, v15, a2);

  (*(v5 + 16))(v7, v10, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  (*(v5 + 32))(v19 + v18, v7, v4);
  aBlock[4] = sub_20D0C59AC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF48BDC;
  aBlock[3] = &block_descriptor_16_0;
  v20 = _Block_copy(aBlock);

  v21 = [v17 addCompletionBlock_];
  _Block_release(v20);

  (*(v5 + 8))(v10, v4);

  return v17;
}

uint64_t sub_20D0BEB54()
{
  updated = type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent(0);
  MEMORY[0x28223BE20](updated);
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = swift_projectBox();
  sub_20D563758();
  v5 = fabs(v4) * 1000.0;
  swift_beginAccess();
  *(v3 + 16) = v5;
  *(v3 + 24) = 0;
  swift_beginAccess();
  sub_20D0C5DD4(v3, v2, type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent);
  sub_20D0C5CA4(&qword_27C81E688, type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent);
  sub_20D564268();
  return sub_20D0C5D74(v2, type metadata accessor for ControlCenterAnalytics.ItemUpdateEvent);
}

id sub_20D0BED58(uint64_t a1)
{
  v3 = sub_20D5637A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_lastBackgroundTime;
  swift_beginAccess();
  sub_20CFAF30C(v1 + v10, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_20CEF928C(v9, &unk_27C8207C0);
LABEL_4:
    v13 = type metadata accessor for ControlCenterModuleItemManager();
    v16.receiver = v1;
    v16.super_class = v13;
    return objc_msgSendSuper2(&v16, sel_executionEnvironmentWillEnterForeground_, a1);
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_20CEF928C(v9, &unk_27C8207C0);
  sub_20D563758();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  if (fabs(v12) > 1.0)
  {
    goto LABEL_4;
  }

  sub_20D5638E8();
  return sub_20D0BF124(v12, 1.0);
}

uint64_t sub_20D0BF124(double a1, double a2)
{
  if (qword_27C81A2E8 != -1)
  {
    swift_once();
  }

  v5 = qword_27C838288;
  v6 = sub_20D567EC8();
  result = os_log_type_enabled(v5, v6);
  if (result)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 138413058;
    *(v8 + 4) = v2;
    *v9 = v2;
    *(v8 + 12) = 2080;
    v11 = v2;
    v12 = sub_20D5638D8();
    v14 = sub_20CEE913C(v12, v13, &v15);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2048;
    *(v8 + 24) = a1;
    *(v8 + 32) = 2048;
    *(v8 + 34) = a2;
    _os_log_impl(&dword_20CEB6000, v5, v6, "%@ skipping update from %s, as time since background is %fs (> %f)", v8, 0x2Au);
    sub_20CEF928C(v9, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    return MEMORY[0x20F31FC70](v8, -1, -1);
  }

  return result;
}

void sub_20D0BF2C4(uint64_t a1, void *a2)
{
  [*&v2[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager] home_didRemoveAccessory_];
  v34 = v2;
  v3 = [v2 allDisplayedItems];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v4 = sub_20D567D08();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
    v8 = v43;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 56);
    sub_20D5663C8();
    v6 = v10;
    v7 = 0;
  }

  v13 = (v6 + 64) >> 6;
  v14 = &selRef__updateStatusTextNotifyingDelegate_;
  while (v4 < 0)
  {
    if (!sub_20D568798() || (swift_dynamicCast(), (v17 = v37) == 0))
    {
LABEL_29:
      sub_20CEC80DC();

      goto LABEL_32;
    }

LABEL_18:
    v18 = swift_dynamicCastObjCProtocolConditional();
    if (v18)
    {
      v35 = v17;
      v19 = [v18 v14[185]];
      swift_getObjectType();
      v20 = sub_20D5681F8();
      swift_unknownObjectRelease();
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = v4;
        v22 = v8;
        v23 = v5;
        v24 = a2;
        v25 = sub_20D5687A8();

        v5 = v23;
        v8 = v22;
        v4 = v21;
        v14 = &selRef__updateStatusTextNotifyingDelegate_;

        if (v25)
        {
          goto LABEL_31;
        }
      }

      else if (*(v20 + 16))
      {
        v32 = v8;
        sub_20CECF940(0, &qword_28111FFF0);
        v26 = sub_20D5683E8();
        v27 = -1 << *(v20 + 32);
        v28 = v26 & ~v27;
        if ((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (1)
          {
            v30 = *(*(v20 + 48) + 8 * v28);
            v31 = sub_20D5683F8();

            if (v31)
            {
              break;
            }

            v28 = (v28 + 1) & v29;
            if (((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_27;
            }
          }

LABEL_31:
          sub_20CEC80DC();

          [*&v34[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider] setThawPredictionsForNextReload_];
LABEL_32:
          v38.receiver = v34;
          v38.super_class = type metadata accessor for ControlCenterModuleItemManager();
          objc_msgSendSuper2(&v38, sel_home_didRemoveAccessory_, a1, a2);
          return;
        }

LABEL_27:

        v8 = v32;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
LABEL_14:
    v8 = (v16 - 1) & v16;
    v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_20D0BF808(uint64_t a1, void *a2, const char **a3)
{
  v5 = v3;
  v59 = sub_20D563818();
  v8 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v57 = v49 - v12;
  v13 = *&v5[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager];
  v51 = a3;
  v52 = a1;
  v14 = *a3;
  v60 = a2;
  [v13 v14];
  v50 = v5;
  v15 = [v5 allDisplayedItems];
  v16 = sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v17 = sub_20D567D08();

  v49[2] = v17;
  v53 = v16;
  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v18 = v66;
    v19 = v67;
    v20 = v68;
    v21 = v69;
    v22 = v70;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v19 = v17 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v17 + 56);
    sub_20D5663C8();
    v21 = 0;
    v18 = v17;
  }

  v49[1] = v20;
  v26 = (v20 + 64) >> 6;
  v56 = (v8 + 8);
  while (1)
  {
    v27 = v22;
    v28 = v21;
    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    v32 = sub_20D568798();
    if (!v32 || (v62 = v32, swift_dynamicCast(), (v31 = v63) == 0))
    {
LABEL_21:
      sub_20CEC80DC();

      v47 = v51;
      v46 = v52;
      v45 = v50;
      goto LABEL_22;
    }

LABEL_18:
    v64 = &unk_28251AC90;
    v33 = swift_dynamicCastObjCProtocolConditional();
    if (v33)
    {
      v54 = v27;
      v55 = v28;
      v34 = [v33 accessoryRepresentableObject];
      swift_getObjectType();
      v35 = sub_20D5681A8();
      swift_unknownObjectRelease();
      v36 = [v35 uniqueIdentifier];
      swift_unknownObjectRelease();
      v61 = v22;
      v37 = v57;
      sub_20D5637E8();

      v38 = [v60 uniqueIdentifier];
      v39 = v18;
      v40 = v58;
      sub_20D5637E8();

      LOBYTE(v38) = sub_20D5637D8();
      v41 = *v56;
      v42 = v40;
      v18 = v39;
      v43 = v59;
      (*v56)(v42, v59);
      v44 = v37;
      v22 = v61;
      v41(v44, v43);
      if (v38)
      {
        sub_20CEC80DC();

        v45 = v50;
        [*&v50[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider] setThawPredictionsForNextReload_];
        v47 = v51;
        v46 = v52;
LABEL_22:
        v48 = type metadata accessor for ControlCenterModuleItemManager();
        v65.receiver = v45;
        v65.super_class = v48;
        objc_msgSendSuper2(&v65, *v47, v46, v60);
        return;
      }
    }

    else
    {
    }
  }

  v29 = v21;
  v30 = v22;
  if (v22)
  {
LABEL_14:
    v22 = (v30 - 1) & v30;
    v31 = *(*(v18 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v31)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v21 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_21;
    }

    v30 = *(v19 + 8 * v21);
    ++v29;
    if (v30)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_20D0BFD08(uint64_t a1, void *a2)
{
  v3 = v2;
  v54 = sub_20D563818();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v52 = &v44 - v10;
  v11 = *&v3[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager];
  v47 = a1;
  v55 = a2;
  [v11 home:a1 didRemoveActionSet:{a2, v9}];
  v46 = v3;
  v12 = [v3 allDisplayedItems];
  v13 = sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v14 = sub_20D567D08();

  v45 = v14;
  v48 = v13;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v14 = v59;
    v15 = v60;
    v16 = v61;
    v17 = v62;
    v18 = v63;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);
    sub_20D5663C8();
    v17 = 0;
  }

  v44 = v16;
  v22 = (v16 + 64) >> 6;
  v51 = (v6 + 8);
  while (1)
  {
    v23 = v18;
    v24 = v17;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    v28 = sub_20D568798();
    if (!v28 || (v56 = v28, swift_dynamicCast(), (v27 = v57) == 0))
    {
LABEL_21:
      sub_20CEC80DC();

      v41 = v46;
      v42 = v47;
      goto LABEL_22;
    }

LABEL_18:
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v49 = v24;
      v50 = v23;
      v30 = [v29 actionSet];
      v31 = [v30 uniqueIdentifier];

      v32 = v18;
      v33 = v14;
      v34 = v52;
      sub_20D5637E8();

      v35 = [v55 uniqueIdentifier];
      v36 = v53;
      sub_20D5637E8();

      LOBYTE(v35) = sub_20D5637D8();
      v37 = *v51;
      v38 = v36;
      v39 = v54;
      (*v51)(v38, v54);
      v40 = v34;
      v14 = v33;
      v18 = v32;
      v37(v40, v39);
      if (v35)
      {
        sub_20CEC80DC();

        v41 = v46;
        [*&v46[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider] setThawPredictionsForNextReload_];
        v42 = v47;
LABEL_22:
        v43 = type metadata accessor for ControlCenterModuleItemManager();
        v58.receiver = v41;
        v58.super_class = v43;
        objc_msgSendSuper2(&v58, sel_home_didRemoveActionSet_, v42, v55);
        return;
      }
    }

    else
    {
    }
  }

  v25 = v17;
  v26 = v18;
  if (v18)
  {
LABEL_14:
    v18 = (v26 - 1) & v26;
    v27 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v27)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_21;
    }

    v26 = *(v15 + 8 * v17);
    ++v25;
    if (v26)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id ControlCenterModuleItemManager.__allocating_init(delegate:sourceItem:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithDelegate:a1 sourceItem:a2];
  swift_unknownObjectRelease();

  return v4;
}

id ControlCenterModuleItemManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlCenterModuleItemManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20D0C0370(uint64_t a1, uint64_t a2)
{
  sub_20D5683E8();
  result = sub_20D5686E8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_20D0C0444()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2E0);
  result = sub_20D568818();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20D568D48();
      sub_20D5678C8();
      result = sub_20D568D98();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20D0C06A4()
{
  v1 = v0;
  v35 = sub_20D563818();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C0F0);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_20D0C5CA4(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      result = sub_20D5677B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_20D0C0AA0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_20D5683E8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_20D0C0CC0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EA0);
  result = sub_20D568818();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_20D568D38();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_20D0C0EE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_20D0C137C(a1, a2, v20, a3, &unk_27C820C70);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_20D0C1064(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_20D0C0EE4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_20D0C1108(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820C50);
  result = sub_20D568838();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_20CEF9064(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_20D5687D8();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20D0C137C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D84FA0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_20D568838();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_20D5683E8();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20D0C1568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D5BA040;
  if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
  {
    sub_20CEF302C(MEMORY[0x277D84F90]);
  }

  v1 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v2 = sub_20D567CD8();

  v3 = [v1 initWithItems_];

  *(v0 + 32) = v3;
  return v0;
}

uint64_t sub_20D0C1668(void **a1, void **a2, char *a3, void **a4, uint64_t a5)
{
  v83 = a5;
  v85 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v85);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v13 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v76 - v16);
  v18 = a2 - a1;
  v19 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v19 = a2 - a1;
  }

  v20 = v19 >> 3;
  v88 = a2;
  v21 = a3 - a2;
  v22 = v21 / 8;
  if (v19 >> 3 < v21 / 8)
  {
    v23 = a4;
    if (a4 != a1 || &a1[v20] <= a4)
    {
      memmove(a4, a1, 8 * v20);
    }

    v87 = &a4[v20];
    v79 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider;
    v80 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider;
    v24 = v83;
    v84 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    swift_beginAccess();
    if (v18 < 8 || v88 >= a3)
    {
      v88 = a1;
      v25 = v87;
      goto LABEL_54;
    }

    v25 = v87;
    v81 = v17;
    v86 = a3;
    while (1)
    {
      v26 = *v88;
      v27 = *v23;
      sub_20D0C5DD4(v84 + v24, v17, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D0C5D0C(v17, v12, type metadata accessor for ControlCenterModuleConfiguration.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload)
      {
        v82 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);
        v39 = v26;
        v40 = v27;

        v41 = *&v79[v24];
        if (!v41)
        {
          v46 = sub_20D563818();
          (*(*(v46 - 8) + 8))(v12, v46);
          v23 = v82;
          v24 = v83;
          a3 = v86;
LABEL_22:

          v25 = v87;
          v17 = v81;
LABEL_23:
          v45 = v88++;
          if (a1 == v45)
          {
            goto LABEL_25;
          }

LABEL_24:
          *a1 = *v45;
          goto LABEL_25;
        }

        v42 = v41;
        v43 = sub_20D06E008(v39, v40);

        v44 = sub_20D563818();
        (*(*(v44 - 8) + 8))(v12, v44);

        v23 = v82;
        v24 = v83;
        a3 = v86;
        v25 = v87;
        if (v43)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = v26;
        v82 = v27;
        sub_20D0C5D74(v12, type metadata accessor for ControlCenterModuleConfiguration.Content);
        v30 = *(v24 + v80);
        if (!v30)
        {
          goto LABEL_22;
        }

        v90 = &unk_2824C0788;
        v78 = v29;
        v31 = swift_dynamicCastObjCProtocolUnconditional();
        v32 = v30;
        v33 = [v32 itemPriority_];
        v89 = &unk_2824C0788;
        v34 = v82;
        v35 = [v32 itemPriority_];
        v36 = v23;
        v37 = [v33 compare_];

        v24 = v83;
        v38 = v37 + 1 == 0;
        v23 = v36;
        v25 = v87;
        v17 = v81;
        if (v38)
        {
          goto LABEL_23;
        }
      }

      v45 = v23;
      v38 = a1 == v23++;
      if (!v38)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++a1;
      if (v23 >= v25 || v88 >= a3)
      {
        v88 = a1;
        goto LABEL_54;
      }
    }
  }

  if (a4 != v88 || &v88[v22] <= a4)
  {
    memmove(a4, v88, 8 * v22);
  }

  v25 = &a4[v22];
  v77 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider;
  v78 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider;
  v80 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  v23 = a4;
  v47 = v79;
  if (v21 >= 8 && v88 > a1)
  {
    v48 = v83;
    while (1)
    {
      v49 = v88 - 1;
      a3 -= 8;
      v50 = v25;
      v81 = v88 - 1;
      while (1)
      {
        v51 = *(v50 - 1);
        v84 = v50 - 1;
        v52 = *v49;
        v53 = v82;
        sub_20D0C5DD4(v48 + v80, v82, type metadata accessor for ControlCenterModuleConfiguration);
        sub_20D0C5D0C(v53, v47, type metadata accessor for ControlCenterModuleConfiguration.Content);
        v54 = swift_getEnumCaseMultiPayload();
        v86 = a3;
        v87 = v25;
        if (v54)
        {
          break;
        }

        v62 = v51;
        v63 = v52;
        v64 = v47;
        v65 = v63;
        sub_20D0C5D74(v64, type metadata accessor for ControlCenterModuleConfiguration.Content);
        v66 = *&v78[v48];
        if (!v66)
        {
          goto LABEL_46;
        }

        v92 = &unk_2824C0788;
        v67 = swift_dynamicCastObjCProtocolUnconditional();
        v68 = v66;
        v69 = [v68 itemPriority_];
        v91 = &unk_2824C0788;
        v70 = v23;
        v71 = [v68 itemPriority_];
        v72 = [v69 compare_];

        v23 = v70;
        v48 = v83;
        a3 = v86;
        v25 = v87;
        v47 = v79;
        if (v72 == -1)
        {
          goto LABEL_47;
        }

LABEL_43:
        v50 = v84;
        if (a3 + 8 != v25)
        {
          *a3 = *v84;
        }

        a3 -= 8;
        v25 = v50;
        v49 = v81;
        if (v50 <= v23)
        {
          v25 = v50;
          goto LABEL_54;
        }
      }

      if (v54 != 1)
      {
        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);
      v55 = v47;
      v56 = v51;
      v57 = v52;

      v58 = *(v48 + v77);
      if (v58)
      {
        break;
      }

      v73 = sub_20D563818();
      (*(*(v73 - 8) + 8))(v55, v73);
LABEL_46:

      a3 = v86;
      v25 = v87;
      v47 = v79;
LABEL_47:
      v74 = v81;
      if (a3 + 8 != v88)
      {
        *a3 = *v81;
      }

      if (v25 > v23)
      {
        v88 = v74;
        if (v74 > a1)
        {
          continue;
        }
      }

      v88 = v74;
      goto LABEL_54;
    }

    v59 = v58;
    v60 = sub_20D06E008(v56, v57);

    v61 = sub_20D563818();
    (*(*(v61 - 8) + 8))(v55, v61);

    a3 = v86;
    v25 = v87;
    v47 = v55;
    if (v60)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_54:
  if (v88 != v23 || v88 >= (v23 + ((v25 - v23 + (v25 - v23 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v88, v23, 8 * (v25 - v23));
  }

  return 1;
}

void sub_20D0C1F18(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_20D057C88(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_20D0C1668(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_20D0C20B8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v334 = a4;
  v335 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820568);
  MEMORY[0x28223BE20](v7 - 8);
  v330 = &v321 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v340 = &v321 - v10;
  MEMORY[0x28223BE20](v11);
  v324 = &v321 - v12;
  MEMORY[0x28223BE20](v13);
  v327 = &v321 - v14;
  v343 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v15 = *(v343 - 8);
  MEMORY[0x28223BE20](v343);
  v329 = &v321 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v337 = &v321 - v18;
  MEMORY[0x28223BE20](v19);
  v323 = &v321 - v20;
  MEMORY[0x28223BE20](v21);
  v325 = &v321 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EB0);
  MEMORY[0x28223BE20](v23 - 8);
  v338 = &v321 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v354 = &v321 - v26;
  MEMORY[0x28223BE20](v27);
  v326 = &v321 - v28;
  MEMORY[0x28223BE20](v29);
  v333 = &v321 - v30;
  v358 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v31 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v332 = &v321 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v348 = &v321 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v321 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v321 - v39;
  v41 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v321 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v341 = &v321 - v45;
  v46 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v46 - 8);
  v365 = &v321 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v345 = &v321 - v49;
  v380 = MEMORY[0x277D84F90];
  v352 = a3;
  v50 = a3[1];
  if (v50 >= 1)
  {
    v367 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    v360 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider;
    v359 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider;
    v356 = (v31 + 56);
    v339 = (v15 + 56);
    v331 = (v15 + 48);
    v351 = a5;
    v51 = MEMORY[0x277D84F90];
    v322 = v37;
    v52 = 0;
    v328 = v40;
    v363 = v41;
    v364 = v43;
    v53 = a5;
    v366 = a5;
    while (1)
    {
      v54 = v52++;
      v342 = v54;
      if (v52 >= v50)
      {
LABEL_82:
        v156 = v334;
        goto LABEL_83;
      }

      v355 = v51;
      v55 = *v352;
      v56 = *(*v352 + 8 * v54);
      v57 = *(*v352 + 8 * v52);
      v58 = v56;
      v59 = sub_20D0BC1FC(v57, v58);
      v53 = v366;
      v60 = v59;

      v54 = v342;
      swift_beginAccess();
      v52 = v54 + 2;
      if (v54 + 2 >= v50)
      {
        goto LABEL_74;
      }

      v61 = (v55 + 8 * v54 + 16);
      v62 = v341;
      LODWORD(v350) = v60;
      do
      {
        v64 = *(v61 - 1);
        v65 = *v61;
        v66 = v53 + v367;
        v67 = v345;
        sub_20D0C5DD4(v66, v345, type metadata accessor for ControlCenterModuleConfiguration);
        sub_20D0C5D0C(v67, v62, type metadata accessor for ControlCenterModuleConfiguration.Content);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if ((EnumCaseMultiPayload - 2) >= 2)
        {
          if (EnumCaseMultiPayload)
          {
            v357 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);
            v362 = v65;
            v361 = v64;

            v78 = *&v366[v359];
            if (v78)
            {
              v79 = qword_27C8204B8;
              v80 = *(*&v78[qword_27C8204B8] + 16);
              v81 = v78;
              if (!v80)
              {
                sub_20D06DBB8();
              }

              objc_opt_self();
              v82 = v362;
              v83 = swift_dynamicCastObjCClass();
              if (v83)
              {
                v84 = v83;
                v85 = v82;
                v86 = [v84 actionSet];
                v87 = [v86 hf_isValidObject];

                v82 = v362;
                if (v87)
                {
                  goto LABEL_22;
                }

LABEL_50:
                v132 = v333;
                (*v356)(v333, 1, 1, v358);
                sub_20CEF928C(v132, &unk_27C820EB0);

                v121 = 0;
                v43 = v364;
                v52 = v357;
LABEL_71:
                v155 = sub_20D563818();
                v62 = v341;
                (*(*(v155 - 8) + 8))(v341, v155);

                if ((v60 ^ v121))
                {
LABEL_72:
                  v54 = v342;
                  v53 = v366;
                  goto LABEL_74;
                }

                goto LABEL_11;
              }

              v371 = &unk_28251AC90;
              v92 = swift_dynamicCastObjCProtocolConditional();
              if (!v92)
              {
                goto LABEL_50;
              }

              v93 = v92;
              v94 = v82;
              [v93 accessoryRepresentableObject];
              swift_getObjectType();
              v95 = sub_20D5681A8();
              swift_unknownObjectRelease();
              if ([v95 respondsToSelector_])
              {
                v96 = [v95 hf_isValidObject];
                swift_unknownObjectRelease();

                v82 = v362;
                if ((v96 & 1) == 0)
                {
                  goto LABEL_50;
                }

LABEL_22:
                v88 = qword_27C8204B0;
                v89 = [*&v81[qword_27C8204B0] objectForKey_];
                v347 = v88;
                if (v89)
                {
                  v90 = v89;
                  v91 = v333;
                  sub_20D0C5DD4(v89 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, v333, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                  goto LABEL_31;
                }

                objc_opt_self();
                v97 = swift_dynamicCastObjCClass();
                if (v97)
                {
                  v98 = v97;
                  v99 = v82;
                  v100 = [v98 actionSet];
                  v101 = [v100 uniqueIdentifier];

                  v102 = v327;
                  sub_20D5637E8();

                  v103 = v343;
                  swift_storeEnumTagMultiPayload();
                  (*v339)(v102, 0, 1, v103);
LABEL_30:
                  v104 = v325;
                  sub_20D0C5D0C(v102, v325, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
                  v105 = v104;
                  v91 = v333;
                  sub_20D0C5D0C(v105, v333, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
                  *(v91 + *(v358 + 20)) = 0;
LABEL_31:
                  v349 = *v356;
                  v349(v91, 0, 1, v358);
                  v106 = v91;
                  v107 = v328;
                  sub_20D0C5D0C(v106, v328, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                  v108 = *&v78[v79];
                  v43 = v364;
                  if (*(v108 + 16))
                  {
                    sub_20D5663C8();
                    v109 = sub_20CEEDA04(v107);
                    if (v110)
                    {
                      v346 = *(*(v108 + 56) + 8 * v109);

                      objc_opt_self();
                      v111 = v361;
                      v112 = swift_dynamicCastObjCClass();
                      if (v112)
                      {
                        v113 = v112;
                        v114 = v111;
                        v115 = [v113 actionSet];
                        v116 = [v115 hf_isValidObject];

                        v107 = v328;
                        if (v116)
                        {
                          goto LABEL_35;
                        }

LABEL_68:
                        v121 = 1;
                        v154 = v326;
                        v349(v326, 1, 1, v358);
                        sub_20D0C5D74(v107, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                        sub_20CEF928C(v154, &unk_27C820EB0);

                        v43 = v364;
LABEL_69:
                        v52 = v357;
                        goto LABEL_70;
                      }

                      v369 = &unk_28251AC90;
                      v127 = swift_dynamicCastObjCProtocolConditional();
                      if (!v127)
                      {
                        goto LABEL_68;
                      }

                      v128 = v127;
                      v129 = v361;
                      [v128 accessoryRepresentableObject];
                      swift_getObjectType();
                      v130 = sub_20D5681A8();
                      swift_unknownObjectRelease();
                      if ([v130 respondsToSelector_])
                      {
                        v131 = [v130 hf_isValidObject];
                        swift_unknownObjectRelease();

                        v107 = v328;
                        if ((v131 & 1) == 0)
                        {
                          goto LABEL_68;
                        }

LABEL_35:
                        v117 = v361;
                        v118 = [*&v347[v81] objectForKey_];
                        if (v118)
                        {
                          v119 = v118;
                          v120 = v326;
                          sub_20D0C5DD4(v118 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, v326, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

LABEL_54:
                          v349(v120, 0, 1, v358);
                          v142 = v120;
                          v143 = v322;
                          sub_20D0C5D0C(v142, v322, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                          v144 = *&v78[v79];
                          v43 = v364;
                          v52 = v357;
                          if (*(v144 + 16))
                          {
                            sub_20D5663C8();
                            v145 = sub_20CEEDA04(v143);
                            if (v146)
                            {
                              v147 = *(*(v144 + 56) + 8 * v145);
                              sub_20D0C5D74(v143, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                              sub_20D0C5D74(v328, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                              v148 = v147 < v346;
                              v52 = v357;
                              v121 = !v148;
                              goto LABEL_70;
                            }
                          }

                          sub_20D0C5D74(v143, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                          sub_20D0C5D74(v328, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                          v121 = 1;
LABEL_70:
                          v82 = v362;
                          goto LABEL_71;
                        }

                        objc_opt_self();
                        v133 = swift_dynamicCastObjCClass();
                        if (v133)
                        {
                          v134 = v133;
                          v135 = v117;
                          v136 = [v134 actionSet];
                          v137 = [v136 uniqueIdentifier];

                          v138 = v324;
                          sub_20D5637E8();

                          v139 = v343;
                          swift_storeEnumTagMultiPayload();
                          (*v339)(v138, 0, 1, v139);
LABEL_53:
                          v140 = v323;
                          sub_20D0C5D0C(v138, v323, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
                          v141 = v140;
                          v120 = v326;
                          sub_20D0C5D0C(v141, v326, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
                          *(v120 + *(v358 + 20)) = 0;
                          goto LABEL_54;
                        }

                        v368 = &unk_28251AC90;
                        v149 = swift_dynamicCastObjCProtocolConditional();
                        if (v149)
                        {
                          v150 = v149;
                          v151 = v117;
                          v152 = [v150 accessoryRepresentableObject];
                          swift_getObjectType();
                          v153 = v324;
                          sub_20D070CD4(v324);

                          v138 = v153;
                          swift_unknownObjectRelease();
                          if ((*v331)(v153, 1, v343) != 1)
                          {
                            goto LABEL_53;
                          }
                        }

                        else
                        {
                          v138 = v324;
                          (*v339)(v324, 1, 1, v343);
                        }

                        sub_20CEF928C(v138, &qword_27C820568);
                      }

                      else
                      {

                        swift_unknownObjectRelease();
                      }

                      v107 = v328;
                      goto LABEL_68;
                    }
                  }

                  sub_20D0C5D74(v107, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                  v121 = 0;
                  goto LABEL_69;
                }

                v370 = &unk_28251AC90;
                v122 = swift_dynamicCastObjCProtocolConditional();
                if (v122)
                {
                  v123 = v122;
                  v124 = v82;
                  v125 = [v123 accessoryRepresentableObject];
                  swift_getObjectType();
                  v126 = v327;
                  sub_20D070CD4(v327);

                  v102 = v126;
                  swift_unknownObjectRelease();
                  if ((*v331)(v126, 1, v343) != 1)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  v102 = v327;
                  (*v339)(v327, 1, 1, v343);
                }

                sub_20CEF928C(v102, &qword_27C820568);
              }

              else
              {

                swift_unknownObjectRelease();
              }

              v82 = v362;
              goto LABEL_50;
            }

            v63 = sub_20D563818();
            (*(*(v63 - 8) + 8))(v62, v63);
            v52 = v357;
          }

          else
          {
            v69 = v65;
            v70 = v64;
            sub_20D0C5D74(v62, type metadata accessor for ControlCenterModuleConfiguration.Content);
            v71 = *&v366[v360];
            if (v71)
            {
              v373 = &unk_2824C0788;
              v72 = swift_dynamicCastObjCProtocolUnconditional();
              v73 = v71;
              v74 = [v73 itemPriority_];
              v372 = &unk_2824C0788;
              v75 = [v73 itemPriority_];
              v76 = [v74 compare_];

              v77 = v76 != -1;
              v60 = v350;
              v43 = v364;
              v62 = v341;
              if (((v350 ^ v77) & 1) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_11;
            }
          }

          v62 = v341;
          v60 = v350;
        }

        v43 = v364;
        if (!v60)
        {
          v156 = v334;
          v51 = v355;
          v54 = v342;
          v53 = v366;
          goto LABEL_83;
        }

LABEL_11:
        ++v52;
        ++v61;
        v53 = v366;
      }

      while (v50 != v52);
      v52 = v50;
      v54 = v342;
LABEL_74:
      v156 = v334;
      v51 = v355;
      if (v60)
      {
        if (v52 >= v54)
        {
          if (v54 < v52)
          {
            v157 = 8 * v52 - 8;
            v158 = 8 * v54;
            v159 = v52;
            v160 = v54;
            while (1)
            {
              if (v160 != --v159)
              {
                v161 = *v352;
                if (!*v352)
                {
                  goto LABEL_237;
                }

                v162 = *(v161 + v158);
                *(v161 + v158) = *(v161 + v157);
                *(v161 + v157) = v162;
              }

              ++v160;
              v157 -= 8;
              v158 += 8;
              if (v160 >= v159)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_234:
        __break(1u);
LABEL_235:
        v317 = v351;

        __break(1u);
LABEL_236:
        v318 = v351;

        __break(1u);
LABEL_237:
        v319 = v351;

        __break(1u);
LABEL_238:
        v320 = v351;

        __break(1u);
LABEL_239:

        __break(1u);
        return;
      }

LABEL_83:
      v163 = v352[1];
      if (v52 >= v163)
      {
        goto LABEL_156;
      }

      if (__OFSUB__(v52, v54))
      {
        goto LABEL_231;
      }

      if (v52 - v54 >= v156)
      {
        goto LABEL_156;
      }

      v164 = v54 + v156;
      if (__OFADD__(v54, v156))
      {
        goto LABEL_232;
      }

      if (v164 >= v163)
      {
        v164 = v352[1];
      }

      if (v164 < v54)
      {
LABEL_233:
        __break(1u);
        goto LABEL_234;
      }

      if (v52 == v164)
      {
        goto LABEL_156;
      }

      v355 = v51;
      v165 = *v352;
      v51 = *v352 + 8 * v52 - 8;
      v166 = (v54 - v52);
      v344 = v164;
      while (2)
      {
        swift_beginAccess();
        v357 = v52;
        v167 = *(v165 + 8 * v52);
        v349 = v166;
        v168 = v166;
        v350 = v51;
        while (2)
        {
          v169 = *v51;
          v170 = v365;
          sub_20D0C5DD4(v53 + v367, v365, type metadata accessor for ControlCenterModuleConfiguration);
          sub_20D0C5D0C(v170, v43, type metadata accessor for ControlCenterModuleConfiguration.Content);
          v171 = swift_getEnumCaseMultiPayload();
          if ((v171 - 2) < 2)
          {
            goto LABEL_136;
          }

          if (!v171)
          {
            v172 = v167;
            v173 = v169;
            sub_20D0C5D74(v43, type metadata accessor for ControlCenterModuleConfiguration.Content);
            v174 = *&v366[v360];
            if (v174)
            {
              v379 = &unk_2824C0788;
              v175 = swift_dynamicCastObjCProtocolUnconditional();
              v176 = v174;
              v177 = [v176 itemPriority_];
              v378 = &unk_2824C0788;
              v178 = [v176 itemPriority_];
              v179 = [v177 compare_];

              v43 = v364;
              v53 = v366;
              if (v179 != -1)
              {
                break;
              }

              goto LABEL_136;
            }

LABEL_107:

            v43 = v364;
            v53 = v366;
            goto LABEL_136;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);
          v180 = v167;
          v361 = v169;

          v181 = *&v366[v359];
          if (!v181)
          {
            v193 = sub_20D563818();
            (*(*(v193 - 8) + 8))(v43, v193);
            goto LABEL_107;
          }

          v182 = qword_27C8204B8;
          v183 = *(*&v181[qword_27C8204B8] + 16);
          v362 = v181;
          if (!v183)
          {
            sub_20D06DBB8();
          }

          objc_opt_self();
          v184 = swift_dynamicCastObjCClass();
          if (v184)
          {
            v185 = v184;
            v186 = v180;
            v187 = [v185 actionSet];
            v188 = [v187 hf_isValidObject];

            if (v188)
            {
              goto LABEL_104;
            }

            goto LABEL_133;
          }

          v377 = &unk_28251AC90;
          v194 = swift_dynamicCastObjCProtocolConditional();
          if (!v194)
          {
            goto LABEL_133;
          }

          v195 = v194;
          v196 = v180;
          [v195 accessoryRepresentableObject];
          swift_getObjectType();
          v197 = sub_20D5681A8();
          swift_unknownObjectRelease();
          if (([v197 respondsToSelector_] & 1) == 0)
          {

            swift_unknownObjectRelease();
            goto LABEL_133;
          }

          v198 = [v197 hf_isValidObject];
          swift_unknownObjectRelease();

          if ((v198 & 1) == 0)
          {
LABEL_133:
            v234 = v354;
            (*v356)(v354, 1, 1, v358);
            sub_20CEF928C(v234, &unk_27C820EB0);

            v223 = 0;
            goto LABEL_134;
          }

LABEL_104:
          v189 = qword_27C8204B0;
          v190 = [*(v362 + qword_27C8204B0) objectForKey_];
          v346 = v189;
          if (v190)
          {
            v191 = v190;
            v192 = v354;
            sub_20D0C5DD4(v190 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, v354, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

            goto LABEL_115;
          }

          objc_opt_self();
          v199 = swift_dynamicCastObjCClass();
          if (!v199)
          {
            v376 = &unk_28251AC90;
            v224 = swift_dynamicCastObjCProtocolConditional();
            if (v224)
            {
              v225 = v224;
              v226 = v180;
              v227 = [v225 accessoryRepresentableObject];
              swift_getObjectType();
              v228 = v340;
              sub_20D070CD4(v340);

              v204 = v228;
              swift_unknownObjectRelease();
              if ((*v331)(v228, 1, v343) != 1)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v204 = v340;
              (*v339)(v340, 1, 1, v343);
            }

            sub_20CEF928C(v204, &qword_27C820568);
            goto LABEL_133;
          }

          v200 = v199;
          v201 = v180;
          v202 = [v200 actionSet];
          v203 = [v202 uniqueIdentifier];

          v204 = v340;
          sub_20D5637E8();

          v205 = v343;
          swift_storeEnumTagMultiPayload();
          (*v339)(v204, 0, 1, v205);
LABEL_114:
          v206 = v337;
          sub_20D0C5D0C(v204, v337, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
          v207 = v206;
          v192 = v354;
          sub_20D0C5D0C(v207, v354, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
          *(v192 + *(v358 + 20)) = 0;
LABEL_115:
          v347 = *v356;
          (v347)(v192, 0, 1, v358);
          v208 = v192;
          v209 = v348;
          sub_20D0C5D0C(v208, v348, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
          v210 = *&v181[v182];
          v43 = v364;
          if (!*(v210 + 16))
          {
            goto LABEL_123;
          }

          sub_20D5663C8();
          v211 = sub_20CEEDA04(v209);
          if ((v212 & 1) == 0)
          {

LABEL_123:
            sub_20D0C5D74(v209, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

            v223 = 0;
            goto LABEL_135;
          }

          v336 = *(*(v210 + 56) + 8 * v211);

          objc_opt_self();
          v213 = v361;
          v214 = swift_dynamicCastObjCClass();
          if (!v214)
          {
            v375 = &unk_28251AC90;
            v229 = swift_dynamicCastObjCProtocolConditional();
            if (!v229)
            {
              goto LABEL_154;
            }

            v230 = v229;
            v231 = v361;
            [v230 accessoryRepresentableObject];
            swift_getObjectType();
            v232 = sub_20D5681A8();
            swift_unknownObjectRelease();
            if (([v232 respondsToSelector_] & 1) == 0)
            {

              swift_unknownObjectRelease();
              goto LABEL_154;
            }

            v233 = [v232 hf_isValidObject];
            swift_unknownObjectRelease();

            if ((v233 & 1) == 0)
            {
              goto LABEL_154;
            }

LABEL_119:
            v219 = v361;
            v220 = [*(v362 + v346) objectForKey_];
            if (v220)
            {
              v221 = v220;
              v222 = v338;
              sub_20D0C5DD4(v220 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, v338, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

              goto LABEL_143;
            }

            objc_opt_self();
            v238 = swift_dynamicCastObjCClass();
            if (v238)
            {
              v239 = v238;
              v240 = v219;
              v241 = [v239 actionSet];
              v242 = [v241 uniqueIdentifier];

              v243 = v330;
              sub_20D5637E8();

              v244 = v343;
              swift_storeEnumTagMultiPayload();
              (*v339)(v243, 0, 1, v244);
LABEL_142:
              v245 = v329;
              sub_20D0C5D0C(v243, v329, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
              v246 = v245;
              v222 = v338;
              sub_20D0C5D0C(v246, v338, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
              *(v222 + *(v358 + 20)) = 0;
LABEL_143:
              (v347)(v222, 0, 1, v358);
              v247 = v222;
              v248 = v332;
              sub_20D0C5D0C(v247, v332, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
              v249 = *&v181[v182];
              v43 = v364;
              if (*(v249 + 16))
              {
                sub_20D5663C8();
                v250 = sub_20CEEDA04(v248);
                if (v251)
                {
                  v252 = *(*(v249 + 56) + 8 * v250);
                  sub_20D0C5D74(v248, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                  sub_20D0C5D74(v348, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                  v223 = v252 >= v336;
                  goto LABEL_135;
                }
              }

              sub_20D0C5D74(v248, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
              sub_20D0C5D74(v348, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

              v223 = 1;
              goto LABEL_135;
            }

            v374 = &unk_28251AC90;
            v253 = swift_dynamicCastObjCProtocolConditional();
            if (v253)
            {
              v254 = v253;
              v255 = v219;
              v256 = [v254 accessoryRepresentableObject];
              swift_getObjectType();
              v257 = v330;
              sub_20D070CD4(v330);

              v243 = v257;
              swift_unknownObjectRelease();
              if ((*v331)(v257, 1, v343) != 1)
              {
                goto LABEL_142;
              }
            }

            else
            {
              v243 = v330;
              (*v339)(v330, 1, 1, v343);
            }

            sub_20CEF928C(v243, &qword_27C820568);
            goto LABEL_154;
          }

          v215 = v214;
          v216 = v213;
          v217 = [v215 actionSet];
          v218 = [v217 hf_isValidObject];

          if (v218)
          {
            goto LABEL_119;
          }

LABEL_154:
          v223 = 1;
          v258 = v338;
          (v347)(v338, 1, 1, v358);
          sub_20D0C5D74(v348, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
          sub_20CEF928C(v258, &unk_27C820EB0);

LABEL_134:
          v43 = v364;
LABEL_135:
          v235 = sub_20D563818();
          (*(*(v235 - 8) + 8))(v43, v235);

          v53 = v366;
          if (!v223)
          {
            break;
          }

LABEL_136:
          if (!v165)
          {
            goto LABEL_235;
          }

          v236 = *v51;
          v167 = *(v51 + 8);
          *v51 = v167;
          *(v51 + 8) = v236;
          v51 -= 8;
          if (!__CFADD__(v168++, 1))
          {
            continue;
          }

          break;
        }

        v52 = v357 + 1;
        v51 = v350 + 8;
        v166 = v349 - 1;
        if (v357 + 1 != v344)
        {
          continue;
        }

        break;
      }

      v52 = v344;
      v51 = v355;
      v54 = v342;
LABEL_156:
      if (v52 < v54)
      {
        goto LABEL_230;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_20CEE81E4(0, *(v51 + 16) + 1, 1, v51);
      }

      v260 = *(v51 + 16);
      v259 = *(v51 + 24);
      v261 = v260 + 1;
      if (v260 >= v259 >> 1)
      {
        v51 = sub_20CEE81E4((v259 > 1), v260 + 1, 1, v51);
      }

      *(v51 + 16) = v261;
      v262 = (v51 + 32);
      v263 = (v51 + 32 + 16 * v260);
      *v263 = v342;
      v263[1] = v52;
      v380 = v51;
      v362 = *v335;
      if (!v362)
      {
        goto LABEL_238;
      }

      if (v260)
      {
        v357 = v52;
        v361 = (v51 + 32);
        v355 = v51;
        while (1)
        {
          v264 = v261 - 1;
          if (v261 >= 4)
          {
            break;
          }

          if (v261 == 3)
          {
            v265 = *(v51 + 32);
            v266 = *(v51 + 40);
            v275 = __OFSUB__(v266, v265);
            v267 = v266 - v265;
            v268 = v275;
LABEL_177:
            if (v268)
            {
              goto LABEL_221;
            }

            v281 = (v51 + 16 * v261);
            v283 = *v281;
            v282 = v281[1];
            v284 = __OFSUB__(v282, v283);
            v285 = v282 - v283;
            v286 = v284;
            if (v284)
            {
              goto LABEL_224;
            }

            v287 = &v262[16 * v264];
            v289 = *v287;
            v288 = *(v287 + 1);
            v275 = __OFSUB__(v288, v289);
            v290 = v288 - v289;
            if (v275)
            {
              goto LABEL_227;
            }

            if (__OFADD__(v285, v290))
            {
              goto LABEL_228;
            }

            if (v285 + v290 >= v267)
            {
              if (v267 < v290)
              {
                v264 = v261 - 2;
              }

              goto LABEL_198;
            }

            goto LABEL_191;
          }

          v291 = (v51 + 16 * v261);
          v293 = *v291;
          v292 = v291[1];
          v275 = __OFSUB__(v292, v293);
          v285 = v292 - v293;
          v286 = v275;
LABEL_191:
          if (v286)
          {
            goto LABEL_223;
          }

          v294 = &v262[16 * v264];
          v296 = *v294;
          v295 = *(v294 + 1);
          v275 = __OFSUB__(v295, v296);
          v297 = v295 - v296;
          if (v275)
          {
            goto LABEL_226;
          }

          if (v297 < v285)
          {
            goto LABEL_3;
          }

LABEL_198:
          if (v264 - 1 >= v261)
          {
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
            goto LABEL_233;
          }

          v302 = *v352;
          if (!*v352)
          {
            goto LABEL_236;
          }

          v303 = &v262[16 * v264 - 16];
          v304 = *v303;
          v305 = v264;
          v306 = &v262[16 * v264];
          v51 = *(v306 + 1);
          v307 = (v302 + 8 * *v303);
          v308 = (v302 + 8 * *v306);
          v309 = (v302 + 8 * v51);
          v310 = v351;
          v311 = v353;
          sub_20D0C1668(v307, v308, v309, v362, v310);
          if (v311)
          {

            v380 = v355;
            v51 = v366;
            goto LABEL_212;
          }

          if (v51 < v304)
          {
            goto LABEL_216;
          }

          v353 = 0;
          v312 = *(v355 + 16);
          if (v305 > v312)
          {
            goto LABEL_217;
          }

          *v303 = v304;
          v303[1] = v51;
          if (v305 >= v312)
          {
            goto LABEL_218;
          }

          v261 = v312 - 1;
          memmove(v306, v306 + 16, 16 * (v312 - 1 - v305));
          v51 = v355;
          *(v355 + 16) = v312 - 1;
          v43 = v364;
          v52 = v357;
          v262 = v361;
          if (v312 <= 2)
          {
LABEL_3:
            v380 = v51;
            goto LABEL_4;
          }
        }

        v269 = &v262[16 * v261];
        v270 = *(v269 - 8);
        v271 = *(v269 - 7);
        v275 = __OFSUB__(v271, v270);
        v272 = v271 - v270;
        if (v275)
        {
          goto LABEL_219;
        }

        v274 = *(v269 - 6);
        v273 = *(v269 - 5);
        v275 = __OFSUB__(v273, v274);
        v267 = v273 - v274;
        v268 = v275;
        if (v275)
        {
          goto LABEL_220;
        }

        v276 = (v51 + 16 * v261);
        v278 = *v276;
        v277 = v276[1];
        v275 = __OFSUB__(v277, v278);
        v279 = v277 - v278;
        if (v275)
        {
          goto LABEL_222;
        }

        v275 = __OFADD__(v267, v279);
        v280 = v267 + v279;
        if (v275)
        {
          goto LABEL_225;
        }

        if (v280 >= v272)
        {
          v298 = &v262[16 * v264];
          v300 = *v298;
          v299 = *(v298 + 1);
          v275 = __OFSUB__(v299, v300);
          v301 = v299 - v300;
          if (v275)
          {
            goto LABEL_229;
          }

          if (v267 < v301)
          {
            v264 = v261 - 2;
          }

          goto LABEL_198;
        }

        goto LABEL_177;
      }

LABEL_4:
      v50 = v352[1];
      v53 = v366;
      if (v52 >= v50)
      {
        goto LABEL_209;
      }
    }
  }

  v313 = a5;
  v53 = a5;
LABEL_209:
  v51 = v53;
  v314 = *v335;
  if (!*v335)
  {
    goto LABEL_239;
  }

  v315 = v51;
  v316 = v353;
  sub_20D0C1F18(&v380, v314, v352, v315);
  if (v316)
  {

LABEL_212:
  }

  else
  {
  }
}

void sub_20D0C46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820568);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v126 - v13;
  v136 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v14 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v127 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v132 = &v126 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EB0);
  MEMORY[0x28223BE20](v18 - 8);
  v133 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v126 - v21;
  v146 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v22 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v130 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v140 = &v126 - v25;
  v155 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v155);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v28 - 8);
  v154 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v145 = (v22 + 56);
    v31 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    v134 = (v14 + 56);
    v129 = (v14 + 48);
    v147 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider;
    v148 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider;
    v32 = v30 + 8 * a3 - 8;
    v33 = a1 - a3;
    v149 = a5;
    v152 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    v153 = v30;
LABEL_5:
    swift_beginAccess();
    v143 = a3;
    v34 = *(v30 + 8 * a3);
    v141 = v33;
    v35 = v33;
    v142 = v32;
    while (1)
    {
      v36 = *v32;
      v37 = v154;
      sub_20D0C5DD4(a5 + v31, v154, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D0C5D0C(v37, v27, type metadata accessor for ControlCenterModuleConfiguration.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload)
      {
        break;
      }

      v39 = v34;
      v40 = v36;
      sub_20D0C5D74(v27, type metadata accessor for ControlCenterModuleConfiguration.Content);
      v41 = *(a5 + v148);
      if (!v41)
      {
        goto LABEL_19;
      }

      v161 = &unk_2824C0788;
      v42 = swift_dynamicCastObjCProtocolUnconditional();
      v43 = v41;
      v44 = [v43 itemPriority_];
      v160 = &unk_2824C0788;
      v45 = [v43 itemPriority_];
      v46 = [v44 compare_];

      a5 = v149;
      v31 = v152;
      v30 = v153;
      if (v46 != -1)
      {
        goto LABEL_4;
      }

LABEL_48:
      if (!v30)
      {
        __break(1u);
        return;
      }

      v103 = *v32;
      v34 = *(v32 + 8);
      *v32 = v34;
      *(v32 + 8) = v103;
      v32 -= 8;
      if (__CFADD__(v35++, 1))
      {
LABEL_4:
        a3 = v143 + 1;
        v32 = v142 + 8;
        v33 = v141 - 1;
        if (v143 + 1 == v137)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);
    v47 = v34;
    v150 = v36;

    v48 = *(a5 + v147);
    if (!v48)
    {
      v60 = sub_20D563818();
      (*(*(v60 - 8) + 8))(v27, v60);
LABEL_19:

      v31 = v152;
      v30 = v153;
      goto LABEL_48;
    }

    v49 = qword_27C8204B8;
    v50 = *(*&v48[qword_27C8204B8] + 16);
    v151 = v48;
    if (!v50)
    {
      sub_20D06DBB8();
    }

    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = v47;
      v54 = [v52 actionSet];
      v55 = [v54 hf_isValidObject];

      if (!v55)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v159 = &unk_28251AC90;
      v61 = swift_dynamicCastObjCProtocolConditional();
      if (!v61)
      {
        goto LABEL_45;
      }

      v62 = v61;
      v63 = v47;
      [v62 accessoryRepresentableObject];
      swift_getObjectType();
      v64 = sub_20D5681A8();
      swift_unknownObjectRelease();
      if (([v64 respondsToSelector_] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_45;
      }

      v65 = [v64 hf_isValidObject];
      swift_unknownObjectRelease();

      if ((v65 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v56 = qword_27C8204B0;
    v57 = [*&v151[qword_27C8204B0] objectForKey_];
    v138 = v56;
    if (v57)
    {
      v58 = v57;
      v59 = v144;
      sub_20D0C5DD4(v57 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, v144, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

      goto LABEL_27;
    }

    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    if (v66)
    {
      v67 = v66;
      v68 = v47;
      v69 = [v67 actionSet];
      v70 = [v69 uniqueIdentifier];

      v71 = v135;
      sub_20D5637E8();

      v72 = v71;
      v73 = v136;
      swift_storeEnumTagMultiPayload();
      (*v134)(v72, 0, 1, v73);
LABEL_26:
      v74 = v132;
      sub_20D0C5D0C(v72, v132, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v75 = v74;
      v59 = v144;
      sub_20D0C5D0C(v75, v144, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      *(v59 + *(v146 + 20)) = 0;
LABEL_27:
      v139 = *v145;
      v139(v59, 0, 1, v146);
      v76 = v59;
      v77 = v140;
      sub_20D0C5D0C(v76, v140, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
      v78 = *&v48[v49];
      a5 = v149;
      if (*(v78 + 16))
      {
        sub_20D5663C8();
        v79 = sub_20CEEDA04(v77);
        if (v80)
        {
          v131 = *(*(v78 + 56) + 8 * v79);

          objc_opt_self();
          v81 = v150;
          v82 = swift_dynamicCastObjCClass();
          if (v82)
          {
            v83 = v82;
            v84 = v81;
            v85 = [v83 actionSet];
            v86 = [v85 hf_isValidObject];

            if (v86)
            {
LABEL_31:
              v87 = v150;
              v88 = [*&v151[v138] objectForKey_];
              if (v88)
              {
                v89 = v88;
                v90 = v133;
                sub_20D0C5DD4(v88 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, v133, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                goto LABEL_55;
              }

              objc_opt_self();
              v105 = swift_dynamicCastObjCClass();
              if (v105)
              {
                v106 = v105;
                v107 = v87;
                v108 = [v106 actionSet];
                v109 = [v108 uniqueIdentifier];

                v110 = v128;
                sub_20D5637E8();

                v111 = v110;
                v112 = v136;
                swift_storeEnumTagMultiPayload();
                (*v134)(v111, 0, 1, v112);
LABEL_54:
                v113 = v127;
                sub_20D0C5D0C(v111, v127, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
                v114 = v113;
                v90 = v133;
                sub_20D0C5D0C(v114, v133, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
                *(v90 + *(v146 + 20)) = 0;
LABEL_55:
                v139(v90, 0, 1, v146);
                v115 = v90;
                v116 = v130;
                sub_20D0C5D0C(v115, v130, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                v117 = *&v48[v49];
                a5 = v149;
                if (*(v117 + 16))
                {
                  sub_20D5663C8();
                  v118 = sub_20CEEDA04(v116);
                  if (v119)
                  {
                    v120 = *(*(v117 + 56) + 8 * v118);
                    sub_20D0C5D74(v116, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                    sub_20D0C5D74(v140, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                    v91 = v120 >= v131;
                    goto LABEL_47;
                  }
                }

                sub_20D0C5D74(v116, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
                sub_20D0C5D74(v140, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

                v91 = 1;
LABEL_47:
                v102 = sub_20D563818();
                (*(*(v102 - 8) + 8))(v27, v102);

                v31 = v152;
                v30 = v153;
                if (!v91)
                {
                  goto LABEL_4;
                }

                goto LABEL_48;
              }

              v156 = &unk_28251AC90;
              v121 = swift_dynamicCastObjCProtocolConditional();
              if (v121)
              {
                v122 = v121;
                v123 = v87;
                v124 = [v122 accessoryRepresentableObject];
                swift_getObjectType();
                v111 = v128;
                sub_20D070CD4(v128);

                swift_unknownObjectRelease();
                if ((*v129)(v111, 1, v136) != 1)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v111 = v128;
                (*v134)(v128, 1, 1, v136);
              }

              sub_20CEF928C(v111, &qword_27C820568);
            }
          }

          else
          {
            v157 = &unk_28251AC90;
            v96 = swift_dynamicCastObjCProtocolConditional();
            if (v96)
            {
              v97 = v96;
              v98 = v150;
              [v97 accessoryRepresentableObject];
              swift_getObjectType();
              v99 = sub_20D5681A8();
              swift_unknownObjectRelease();
              if ([v99 respondsToSelector_])
              {
                v100 = [v99 hf_isValidObject];
                swift_unknownObjectRelease();

                if (v100)
                {
                  goto LABEL_31;
                }
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }
          }

          v91 = 1;
          v125 = v133;
          v139(v133, 1, 1, v146);
          sub_20D0C5D74(v140, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
          sub_20CEF928C(v125, &unk_27C820EB0);

          goto LABEL_46;
        }
      }

      sub_20D0C5D74(v77, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

      v91 = 0;
      goto LABEL_47;
    }

    v158 = &unk_28251AC90;
    v92 = swift_dynamicCastObjCProtocolConditional();
    if (v92)
    {
      v93 = v92;
      v94 = v47;
      v95 = [v93 accessoryRepresentableObject];
      swift_getObjectType();
      v72 = v135;
      sub_20D070CD4(v135);

      swift_unknownObjectRelease();
      if ((*v129)(v72, 1, v136) != 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v72 = v135;
      (*v134)(v135, 1, 1, v136);
    }

    sub_20CEF928C(v72, &qword_27C820568);
LABEL_45:
    v101 = v144;
    (*v145)(v144, 1, 1, v146);
    sub_20CEF928C(v101, &unk_27C820EB0);

    v91 = 0;
LABEL_46:
    a5 = v149;
    goto LABEL_47;
  }
}

void sub_20D0C56B0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_20D568BA8();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CECF940(0, &qword_281120AC0);
        v8 = sub_20D567AE8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_20D0C20B8(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_20D0C46A0(0, v3, 1, a1, v4);
  }
}

void sub_20D0C5804(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_20D059BE4(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_20D0C56B0(v8, v7);

  sub_20D5688D8();
}

uint64_t type metadata accessor for ControlCenterModuleItemManager()
{
  result = qword_281120420;
  if (!qword_281120420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20D0C5910(void *a1)
{
  v3 = *(sub_20D563818() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20D0BE328(a1, v4);
}

uint64_t sub_20D0C59AC()
{
  sub_20D5637A8();

  return sub_20D0BEB54();
}

void sub_20D0C5A38()
{
  type metadata accessor for ControlCenterModuleConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_20CEF7EF8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ControlCenterModuleItemManager.homeFuture(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x1D8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
}

uint64_t sub_20D0C5CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0C5D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D0C5D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D0C5DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_20D0C5EB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820EE8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v23 = [Strong itemManager];

    if (v23)
    {
      type metadata accessor for ControlCenterModuleItemManager();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
        v14 = v12;
        swift_beginAccess();
        sub_20D0475A4(v14 + v13, v6, type metadata accessor for ControlCenterModuleConfiguration);

        sub_20D0C99BC(v6, v9, type metadata accessor for ControlCenterModuleConfiguration);
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          v17 = [v15 kind];

          sub_20D0475A4(v9, v3, type metadata accessor for ControlCenterModuleConfiguration);
          v18 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
          *&v3[v18[5]] = v17;
          sub_20D563788();
          sub_20D568968();
          sub_20D0C9A24(v9, type metadata accessor for ControlCenterModuleConfiguration);
          *&v3[v18[8]] = 0;
          *&v3[v18[9]] = 0;
          v19 = &v3[v18[10]];
          *v19 = 0;
          v19[8] = 1;
          (*(*(v18 - 1) + 56))(v3, 0, 1, v18);
          v20 = OBJC_IVAR____TtC6HomeUI42ControlCenterModuleViewControllerAnalytics_analyticsAppearInterval;
          swift_beginAccess();
          sub_20CFBA29C(v3, v0 + v20, &qword_27C820EE8);
          swift_endAccess();
        }

        else
        {
          sub_20D0C9A24(v9, type metadata accessor for ControlCenterModuleConfiguration);
        }
      }

      else
      {
        v21 = v23;
      }
    }
  }
}

uint64_t sub_20D0C61C4()
{
  v1 = sub_20D565988();
  v19[0] = *(v1 - 8);
  v19[1] = v1;
  MEMORY[0x28223BE20](v1);
  v22 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820EE8);
  MEMORY[0x28223BE20](v6 - 8);
  v20 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC6HomeUI42ControlCenterModuleViewControllerAnalytics_analyticsAppearInterval;
  swift_beginAccess();
  v21 = v0;
  sub_20CEF9178(v0 + v15, v10, &qword_27C820EE8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_20CEF928C(v10, &qword_27C820EE8);
  }

  sub_20D0C99BC(v10, v14, type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval);
  sub_20D08008C(v14, v5);
  sub_20D0C9904(&qword_27C81E660, type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent);
  sub_20D564268();
  sub_20D0C9A24(v5, type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent);
  sub_20D0C9A24(v14, type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval);
  v17 = v20;
  (*(v12 + 56))(v20, 1, 1, v11);
  v18 = v21;
  swift_beginAccess();
  sub_20CFBA29C(v17, v18 + v15, &qword_27C820EE8);
  return swift_endAccess();
}

uint64_t sub_20D0C664C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_20D565988();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ControlCenterAnalytics.TileModuleConfigurationEditedEvent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v24 = [result kind];

    sub_20D0475A4(a1, v18, type metadata accessor for ControlCenterModuleConfiguration.Content);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 2) >= 2)
    {
      if (result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

        v21 = sub_20D563818();
        (*(*(v21 - 8) + 8))(v18, v21);
      }

      else
      {
        sub_20D0C9A24(v18, type metadata accessor for ControlCenterModuleConfiguration.Content);
      }

      sub_20D0475A4(v27, v15, type metadata accessor for ControlCenterModuleConfiguration.Content);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 2) >= 2)
      {
        if (result)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

          v22 = sub_20D563818();
          (*(*(v22 - 8) + 8))(v15, v22);
        }

        else
        {
          sub_20D0C9A24(v15, type metadata accessor for ControlCenterModuleConfiguration.Content);
        }

        result = _s6HomeUI32ControlCenterModuleConfigurationV7ContentO2eeoiySbAE_AEtFZ_0(v27, a1);
        if ((result & 1) == 0)
        {
          sub_20D0475A4(a1, v9, type metadata accessor for ControlCenterModuleConfiguration);
          sub_20D0475A4(v27, v6, type metadata accessor for ControlCenterModuleConfiguration);
          sub_20D080D00(v9, v6, v24, v12);
          sub_20D0C9904(&qword_27C820EE0, type metadata accessor for ControlCenterAnalytics.TileModuleConfigurationEditedEvent);
          sub_20D564268();
          return sub_20D0C9A24(v12, type metadata accessor for ControlCenterAnalytics.TileModuleConfigurationEditedEvent);
        }
      }
    }
  }

  return result;
}

void sub_20D0C6B88(void *a1, uint64_t a2, void *a3)
{
  v52 = a1;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v54 = [Strong itemManager];

  if (!v54)
  {
    return;
  }

  type metadata accessor for ControlCenterModuleItemManager();
  v20 = swift_dynamicCastClass();
  if (!v20 || (v49 = a3, v50 = v20, (v21 = swift_unknownObjectWeakLoadStrong()) == 0) || (v22 = v21, v51 = [v21 itemManager], v22, !v51))
  {
    v45 = v54;
LABEL_11:

    return;
  }

  v23 = swift_dynamicCastClass();
  if (!v23)
  {

    v45 = v51;
    goto LABEL_11;
  }

  v24 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  v25 = v23;
  swift_beginAccess();
  sub_20D0475A4(v25 + v24, v14, type metadata accessor for ControlCenterModuleConfiguration);

  sub_20D0C99BC(v14, v17, type metadata accessor for ControlCenterModuleConfiguration);
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {

    goto LABEL_16;
  }

  v27 = v26;
  v28 = [v26 kind];

  v29 = v50;
  v30 = [v50 home];
  if (v30)
  {
    v31 = v30;
    v51 = v28;
    v32 = *&v29[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_predictionManager];
    v33 = sub_20D567C58();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    sub_20D0475A4(v17, v11, type metadata accessor for ControlCenterModuleConfiguration);
    sub_20D567C18();
    v34 = v49;
    v48 = v32;
    v52 = v52;

    v54 = v54;
    v35 = v31;
    v46 = v3;
    v47 = v35;
    v36 = sub_20D567C08();
    v37 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v41[2] = v36;
    v41[3] = v42;
    v43 = v46;
    v41[4] = v52;
    v41[5] = v43;
    v41[6] = v50;
    sub_20D0C99BC(v11, v41 + v37, type metadata accessor for ControlCenterModuleConfiguration);
    v44 = v47;
    *(v41 + v38) = v47;
    *(v41 + v39) = v53;
    *(v41 + v40) = v49;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
    sub_20CF18960(0, 0, v7, &unk_20D5C86C8, v41);

LABEL_16:
    sub_20D0C9A24(v17, type metadata accessor for ControlCenterModuleConfiguration);
    return;
  }

  sub_20D0C9A24(v17, type metadata accessor for ControlCenterModuleConfiguration);
}

uint64_t sub_20D0C7060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v20;
  *(v8 + 208) = v19;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = sub_20D565988();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  v10 = sub_20D563E08();
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E570);
  *(v8 + 304) = swift_task_alloc();
  v11 = sub_20D564708();
  *(v8 + 312) = v11;
  *(v8 + 320) = *(v11 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v12 = sub_20D563E48();
  *(v8 + 344) = v12;
  *(v8 + 352) = *(v12 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = type metadata accessor for ControlCenterModuleConfiguration(0);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent(0);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v13 = sub_20D563818();
  *(v8 + 416) = v13;
  *(v8 + 424) = *(v13 - 8);
  *(v8 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  v14 = sub_20D5638C8();
  *(v8 + 464) = v14;
  *(v8 + 472) = *(v14 - 8);
  *(v8 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF08);
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  sub_20D567C18();
  *(v8 + 512) = sub_20D567C08();
  v16 = sub_20D567BA8();
  *(v8 + 520) = v16;
  *(v8 + 528) = v15;

  return MEMORY[0x2822009F8](sub_20D0C74D8, v16, v15);
}

uint64_t sub_20D0C74D8()
{
  v0[67] = sub_20CECF940(0, &unk_27C820EF0);
  v0[68] = sub_20D5680E8();
  v0[69] = sub_20D5680D8();
  v0[70] = sub_20D0C9904(&unk_27C81DF30, MEMORY[0x277D132F8]);
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0C75C0, v2, v1);
}

uint64_t sub_20D0C75C0()
{
  sub_20D5680B8();

  v1 = *(v0 + 528);
  v2 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_20D0C763C, v2, v1);
}

uint64_t sub_20D0C763C()
{
  v48 = v0;
  v1 = sub_20D0C5E54();
  v3 = v2;
  v4 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v0 + 496);
    sub_20CEF9178(*(v0 + 504), v5, &qword_27C81DF08);
    v6 = sub_20D563DE8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v0 + 496);
    if (v8 == 1)
    {
      sub_20CEF928C(*(v0 + 496), &qword_27C81DF08);
      v11 = 0;
    }

    else
    {
      v12 = sub_20D563DD8();
      (*(v7 + 8))(v9, v6);
      v11 = v12;
    }

    ControlCenterAnalytics.TileModuleAppearEvent.Interval.addInteraction(predictionScore:)(*(&v11 - 8));
  }

  (v1)(v0 + 88, 0);
  v13 = [*(v0 + 184) indexPathForItem_];
  if (v13)
  {
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = v13;
    sub_20D563878();

    v17 = [v15 displayedItemsInSection_];
    sub_20CECF940(0, &qword_281120AC0);
    v18 = sub_20D567A78();
    *(v0 + 568) = v18;

    type metadata accessor for ControlCenterModuleLayoutManager();
    static ControlCenterModuleLayoutManager.adaptiveTileLayout(items:configuration:cropLayoutToRows:)(v18, v14, 0, v46);
    v19 = v46[3];
    *(v0 + 48) = v46[2];
    *(v0 + 64) = v19;
    *(v0 + 80) = v47;
    v20 = v46[1];
    *(v0 + 16) = v46[0];
    *(v0 + 32) = v20;
    v21 = *(v0 + 16);
    if (*(v21 + 16))
    {
      v22 = sub_20CEED6E0(*(v0 + 168));
      if (v23)
      {
        v24 = (*(v21 + 56) + 32 * v22);
        *(v0 + 576) = *v24;
        *(v0 + 584) = v24[1];
        *(v0 + 592) = v24[2];
        *(v0 + 600) = v24[3];
        sub_20CEF928C(v0 + 16, &qword_27C81C370);
        *(v0 + 608) = sub_20D5680E8();
        v26 = sub_20D567BA8();

        return MEMORY[0x2822009F8](sub_20D0C7C58, v26, v25);
      }
    }

    v28 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 464);

    sub_20CEF928C(v0 + 16, &qword_27C81C370);
    sub_20D081AB4();
    v30 = swift_allocError();
    *v31 = 2;
    *(v31 + 8) = 2;
    swift_willThrow();
    (*(v28 + 8))(v27, v29);
  }

  else
  {

    sub_20D081AB4();
    v30 = swift_allocError();
    *v32 = 3;
    *(v32 + 8) = 2;
    swift_willThrow();
  }

  sub_20D565938();
  v33 = v30;
  v34 = sub_20D565968();
  v35 = sub_20D567EA8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v30;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_20CEB6000, v34, v35, "Failed to send tile interaciton event: %@", v36, 0xCu);
    sub_20CEF928C(v37, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v37, -1, -1);
    MEMORY[0x20F31FC70](v36, -1, -1);
  }

  v40 = *(v0 + 504);
  v42 = *(v0 + 240);
  v41 = *(v0 + 248);
  v43 = *(v0 + 232);

  (*(v42 + 8))(v41, v43);
  sub_20CEF928C(v40, &qword_27C81DF08);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_20D0C7C58()
{
  v0[77] = sub_20D5680C8();

  v1 = v0[66];
  v2 = v0[65];

  return MEMORY[0x2822009F8](sub_20D0C7CCC, v2, v1);
}

uint64_t sub_20D0C7CCC()
{
  v1 = v0[77];
  v2 = v0[25];

  v3 = [v2 uniqueIdentifier];
  sub_20D5637E8();

  if (*(v1 + 16))
  {
    v4 = sub_20CEED7C0(v0[54]);
    v5 = v0[57];
    v7 = v0[53];
    v6 = v0[54];
    v8 = v0[52];
    if (v9)
    {
      v10 = v4;
      v11 = *(v0[77] + 56);
      v12 = sub_20D5637A8();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v5, v11 + *(v13 + 72) * v10, v12);
      v149 = *(v7 + 8);
      v149(v6, v8);

      (*(v13 + 56))(v5, 0, 1, v12);
    }

    else
    {

      v149 = *(v7 + 8);
      v149(v6, v8);
      v19 = sub_20D5637A8();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    }
  }

  else
  {
    v14 = v0[57];
    v16 = v0[53];
    v15 = v0[54];
    v17 = v0[52];

    v149 = *(v16 + 8);
    v149(v15, v17);
    v18 = sub_20D5637A8();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  }

  v20 = v0[71];
  sub_20D0475A4(v0[24], v0[48], type metadata accessor for ControlCenterModuleConfiguration);
  if (v20 >> 62)
  {
    v21 = sub_20D568768();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v0[63];
  v23 = v0[61];
  v25 = v0[56];
  v24 = v0[57];

  sub_20CEF9178(v22, v23, &qword_27C81DF08);
  sub_20CEF9178(v24, v25, &unk_27C8207C0);
  result = sub_20D563898();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  v161 = v21;
  v165 = result;
  v27 = v0[49];
  v28 = v0[50];
  v29 = v27[10];
  v30 = sub_20D563E28();
  v184 = v29;
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  v31 = v27[23];
  v32 = sub_20D563DE8();
  v182 = v31;
  (*(*(v32 - 8) + 56))(v28 + v31, 1, 1, v32);
  v33 = v27[24];
  sub_20D563788();
  v34 = sub_20D5637A8();
  v177 = v33;
  v155 = *(*(v34 - 8) + 56);
  v158 = v34;
  (v155)(v28 + v33, 0, 1);
  *v28 = sub_20D0808FC();
  v28[1] = v35;
  v186 = v28;
  v175 = v27[5];
  sub_20D5682D8();
  MEMORY[0x20F31D7A0](*MEMORY[0x277D14068]);
  if (v0[18])
  {
    if (swift_dynamicCast())
    {
      v36 = v0[20];
      if (v36 >= 3)
      {
        v37 = MEMORY[0x277D15370];
      }

      else
      {
        v37 = qword_277DB6E58[v36];
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_20CEF928C((v0 + 15), &qword_27C81BF00);
  }

  v37 = MEMORY[0x277D15360];
LABEL_15:
  v39 = v0[49];
  v38 = v0[50];
  v40 = v0[45];
  v41 = v0[46];
  v42 = v0[43];
  v43 = v0[44];
  v44 = v0[26];
  v43[13](v40, *v37, v42);
  v43[4](v41, v40, v42);
  v170 = *(v39 + 24);
  v172 = v38;
  v43[2](v38 + v170, v41, v42);
  if (v44 > 3)
  {
    v45 = MEMORY[0x277D16660];
  }

  else
  {
    v45 = qword_277DB6E70[v44];
  }

  v47 = v0[49];
  v46 = v0[50];
  v49 = v0[41];
  v48 = v0[42];
  v51 = v0[39];
  v50 = v0[40];
  v52 = v0[38];
  v53 = v0[27];
  v179 = v0[28];
  v50[13](v49, *v45, v51);
  v50[4](v48, v49, v51);
  v54 = v47[7];
  v50[2](v46 + v54, v48, v51);
  objc_opt_self();
  *(v46 + v47[8]) = swift_dynamicCastObjCClass() != 0;
  v0[19] = &unk_28251AC90;
  v55 = 1;
  v168 = v46;
  *(v46 + v47[9]) = swift_dynamicCastObjCProtocolConditional() != 0;
  v56 = v53;
  sub_20D0809EC(v53, v52);
  sub_20CFBA29C(v52, v186 + v184, &qword_27C81E570);
  if (v179)
  {
    if (v179 != 1)
    {
      v180 = v54;
      v61 = v0[59];
      v162 = v0[58];
      v166 = v0[60];
      v150 = v0[56];
      v153 = v0[61];
      v156 = v0[48];
      v159 = v0[57];
      v146 = v0[46];
      v62 = v0[43];
      v63 = v0[44];
      v64 = v0[42];
      v66 = v0[39];
      v65 = v0[40];
      v67 = v0[28];
      sub_20D081AB4();
      v68 = swift_allocError();
      *v69 = v67;
      *(v69 + 8) = 1;
      swift_willThrow();
      v70 = *(v65 + 8);
      v70(v64, v66);
      v71 = v70;
      v72 = *(v63 + 8);
      v72(v146, v62);
      sub_20CEF928C(v150, &unk_27C8207C0);
      sub_20CEF928C(v153, &qword_27C81DF08);
      sub_20D0C9A24(v156, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20CEF928C(v159, &unk_27C8207C0);
      (*(v61 + 8))(v166, v162);
      goto LABEL_35;
    }

    v55 = 0;
  }

  v57 = v0[48];
  v58 = v0[37];
  *(v0[50] + *(v0[49] + 48)) = v55;
  sub_20D0475A4(v57, v58, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20D0C9A24(v0[37], type metadata accessor for ControlCenterModuleConfiguration.Content);
      v60 = 0;
      goto LABEL_26;
    }

    v180 = v54;
    v85 = v0[59];
    v163 = v0[58];
    v167 = v0[60];
    v147 = v0[56];
    v151 = v0[61];
    v154 = v0[48];
    v157 = v0[57];
    v144 = v0[46];
    v86 = v0[43];
    v87 = v0[44];
    v88 = v0[42];
    v90 = v0[39];
    v89 = v0[40];
    v160 = v0[37];
    sub_20D081AB4();
    v68 = swift_allocError();
    *v91 = 0;
    *(v91 + 8) = 2;
    swift_willThrow();
    v92 = *(v89 + 8);
    v92(v88, v90);
    v71 = v92;
    v72 = *(v87 + 8);
    v72(v144, v86);
    sub_20CEF928C(v147, &unk_27C8207C0);
    sub_20CEF928C(v151, &qword_27C81DF08);
    sub_20D0C9A24(v154, type metadata accessor for ControlCenterModuleConfiguration);
    sub_20CEF928C(v157, &unk_27C8207C0);
    (*(v85 + 8))(v167, v163);
    sub_20D0C9A24(v160, type metadata accessor for ControlCenterModuleConfiguration.Content);
LABEL_35:
    v93 = v0[43];
    v94 = v0[39];

    v95 = sub_20D563E18();
    (*(*(v95 - 8) + 8))(v186 + v175, v95);
    v72(v172 + v170, v93);
    v71(v168 + v180, v94);
    sub_20CEF928C(v186 + v184, &qword_27C81E570);
    sub_20CEF928C(v186 + v182, &qword_27C81DF08);
    sub_20CEF928C(v186 + v177, &unk_27C8207C0);
    sub_20D565938();
    v96 = v68;
    v97 = sub_20D565968();
    v98 = sub_20D567EA8();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      v101 = v68;
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v99 + 4) = v102;
      *v100 = v102;
      _os_log_impl(&dword_20CEB6000, v97, v98, "Failed to send tile interaciton event: %@", v99, 0xCu);
      sub_20CEF928C(v100, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v100, -1, -1);
      MEMORY[0x20F31FC70](v99, -1, -1);
    }

    v103 = v0[63];
    v105 = v0[30];
    v104 = v0[31];
    v106 = v0[29];

    (*(v105 + 8))(v104, v106);
    v107 = v103;
    goto LABEL_66;
  }

  v73 = v0[52];
  v74 = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

  v149(v74, v73);
  v60 = 1;
LABEL_26:
  v75 = v0[74];
  v77 = v0[49];
  v76 = v0[50];
  v79 = v0[47];
  v78 = v0[48];
  *(v76 + *(v77 + 44)) = v60;
  v80 = *(v78 + *(v79 + 20));
  v81 = CCUINumberOfRowsForGridSizeClass();
  v82 = CCUINumberOfColumnsForGridSizeClass();
  *(v76 + *(v77 + 52)) = v80;
  v83 = v0[75];
  if (v75 == 2)
  {
    if (v83 == 2)
    {
      v84 = 2;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v75 != 1)
  {
LABEL_41:
    v84 = 3;
    goto LABEL_42;
  }

  if (v83 == 2)
  {
    v84 = 1;
  }

  else
  {
    v84 = 3;
  }

  if (v83 == 1)
  {
    v84 = 0;
  }

LABEL_42:
  v108 = v0[61];
  v110 = v0[49];
  v109 = v0[50];
  v111 = v0[48];
  v112 = v0[36];
  *(v109 + *(v110 + 56)) = v84;
  sub_20D0475A4(v111, v112, type metadata accessor for ControlCenterModuleConfiguration.Content);
  v113 = swift_getEnumCaseMultiPayload() == 0;
  sub_20D0C9A24(v112, type metadata accessor for ControlCenterModuleConfiguration.Content);
  *(v109 + *(v110 + 60)) = v113;
  sub_20D0C994C(v108, v186 + v182);
  v114 = CCUINumberOfRowsForGridSizeClass();
  result = CCUINumberOfColumnsForGridSizeClass();
  if (!v83)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v115 = v0[74];
  if (!v115)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v185 = v161 & ~(v161 >> 63);
  v187 = (v114 / v115 * (result / v0[75])) & ~((v114 / v115 * (result / v0[75])) >> 63);
  v116 = [objc_opt_self() dateOfLastRecommendationUIOpened];
  v143 = v81;
  if (v116)
  {
    v117 = v116;
    sub_20D563778();

    v118 = 0;
  }

  else
  {
    v118 = 1;
  }

  v178 = v0[61];
  v119 = v0[55];
  v145 = v0[56];
  v121 = v0[49];
  v120 = v0[50];
  v181 = v0[48];
  v173 = v0[43];
  v174 = v0[46];
  v169 = v0[42];
  v171 = v0[44];
  v164 = v0[39];
  v122 = v0[33];
  v123 = v0[34];
  v148 = v0[32];
  v152 = v0[40];
  v183 = v0[28];
  v155(v119, v118, 1, v158);
  v176 = v120 + v121[21];
  sub_20CECF940(0, &qword_28111FB80);
  sub_20CECBDB8(&qword_27C81DF40, &qword_28111FB80);
  sub_20D563DF8();
  sub_20CEF928C(v119, &unk_27C8207C0);
  (*(v122 + 32))(v120 + v121[22], v123, v148);
  *(v120 + v121[20]) = v187;
  *(v120 + v121[19]) = v185;
  v124 = sub_20D563E58();
  (*(v152 + 8))(v169, v164);
  (*(v171 + 8))(v174, v173);
  sub_20CEF928C(v145, &unk_27C8207C0);
  sub_20CEF928C(v178, &qword_27C81DF08);
  result = sub_20D0C9A24(v181, type metadata accessor for ControlCenterModuleConfiguration);
  *v176 = v124 / v187;
  *(v176 + 8) = 0;
  *(v120 + v121[16]) = v124;
  *(v120 + v121[17]) = v165;
  if (v183 != 1)
  {
    v125 = v0[74];
    if (v125 != v143 || v0[75] != v82)
    {
      v127 = v0[72];
      v128 = 1;
      if (v143 > 4)
      {
        v128 = 2;
      }

      v129 = __OFADD__(v127, v125);
      v130 = v127 + v125;
      if (!v129)
      {
        v131 = v130 - 1;
        if (!__OFSUB__(v130, 1))
        {
          if (v127 >= v128)
          {
            v133 = ~v128 + v143;
            v134 = v133 < v131;
            if (v133 >= v131)
            {
              v126 = 4;
            }

            else
            {
              v126 = 6;
            }

            if (v134)
            {
              v132 = 5;
            }

            else
            {
              v132 = 3;
            }
          }

          else
          {
            v132 = 1;
            v126 = 2;
          }

          if (v0[73] < (v82 >> 1))
          {
            v126 = v132;
          }

          goto LABEL_65;
        }

LABEL_74:
        __break(1u);
        return result;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  v126 = 0;
LABEL_65:
  v135 = v0[63];
  v137 = v0[59];
  v136 = v0[60];
  v139 = v0[57];
  v138 = v0[58];
  v140 = v0[50];
  v141 = v0[51];
  *(v140 + *(v0[49] + 72)) = v126;
  sub_20D0C99BC(v140, v141, type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent);
  sub_20D0C9904(&qword_27C820F10, type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent);
  sub_20D564268();
  sub_20D0C9A24(v141, type metadata accessor for ControlCenterAnalytics.TileModuleTileInteractionEvent);
  sub_20CEF928C(v139, &unk_27C8207C0);
  (*(v137 + 8))(v136, v138);
  v107 = v135;
LABEL_66:
  sub_20CEF928C(v107, &qword_27C81DF08);

  v142 = v0[1];

  return v142();
}

void sub_20D0C8E34()
{
  v1 = sub_20D565988();
  v51 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v52 = [Strong itemManager];

    if (v52)
    {
      v49 = v13;
      type metadata accessor for ControlCenterModuleItemManager();
      v16 = swift_dynamicCastClass();
      if (v16 && (v48 = v16, (v17 = swift_unknownObjectWeakLoadStrong()) != 0) && (v18 = v17, v50 = [v17 itemManager], v18, v50))
      {
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v20 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
          v21 = v19;
          swift_beginAccess();
          sub_20D0475A4(v21 + v20, v10, type metadata accessor for ControlCenterModuleConfiguration);

          v22 = v49;
          sub_20D0C99BC(v10, v49, type metadata accessor for ControlCenterModuleConfiguration);
          v23 = swift_unknownObjectWeakLoadStrong();
          if (!v23)
          {
            goto LABEL_31;
          }

          v24 = v23;
          v25 = [v23 kind];

          sub_20D0475A4(v22, v4, type metadata accessor for ControlCenterModuleConfiguration.Content);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            v29 = v22;
          }

          else
          {
            if (EnumCaseMultiPayload)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

              v30 = sub_20D563818();
              (*(*(v30 - 8) + 8))(v4, v30);
            }

            else
            {
              sub_20D0C9A24(v4, type metadata accessor for ControlCenterModuleConfiguration.Content);
            }

            v31 = [v48 allDisplayedItems];
            sub_20CECF940(0, &qword_281120AC0);
            sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
            v32 = sub_20D567D08();

            if ((v32 & 0xC000000000000001) != 0)
            {
              v33 = sub_20D568768();
            }

            else
            {
              v33 = *(v32 + 16);
            }

            if (v33)
            {
              v22 = v49;
              sub_20D0475A4(v49, v7, type metadata accessor for ControlCenterModuleConfiguration);
              v34 = [v48 &selRef_areAnimationsEnabled + 4];
              v35 = sub_20D567D08();

              ControlCenterAnalytics.TileModuleExistsEvent.ItemMetrics.init(items:)(v35, v60);
              sub_20D07F9AC(v7, v25, v60, &v61);
              v36 = v61;
              v37 = v62;
              v38 = v63;
              v39 = v64;
              v40 = v65;
              v41 = v66;
              v42 = v67;
              v43 = v0 + OBJC_IVAR____TtC6HomeUI42ControlCenterModuleViewControllerAnalytics_lastTileModuleExistsEvent;
              if (*v43 == 2)
              {
                if (LOBYTE(v61) == 2)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                v44 = *(v43 + 48);
                v45 = *(v43 + 40);
                v55 = *v43;
                v46 = *(v43 + 24);
                v56 = *(v43 + 8);
                v57 = v46;
                v58 = v45;
                v59 = v44;
                if (LOBYTE(v61) != 2)
                {
                  v53[0] = v61;
                  v53[1] = v62;
                  v53[2] = v63;
                  v53[3] = v64;
                  v53[4] = v65;
                  v53[5] = v66;
                  v54 = v67;
                  if (_s6HomeUI22ControlCenterAnalyticsO21TileModuleExistsEventV2eeoiySbAE_AEtFZ_0(&v55, v53))
                  {
                    goto LABEL_31;
                  }
                }
              }

              *v43 = v36;
              *(v43 + 8) = v37;
              *(v43 + 16) = v38;
              *(v43 + 24) = v39;
              *(v43 + 32) = v40;
              *(v43 + 40) = v41;
              *(v43 + 48) = v42;
              v55 = v36;
              *&v56 = v37;
              *(&v56 + 1) = v38;
              *&v57 = v39;
              *(&v57 + 1) = v40;
              v58 = v41;
              v59 = v42;
              sub_20CFBA694();
              sub_20D564268();
LABEL_31:

              sub_20D0C9A24(v22, type metadata accessor for ControlCenterModuleConfiguration);
              return;
            }

            v29 = v49;
          }

          sub_20D0C9A24(v29, type metadata accessor for ControlCenterModuleConfiguration);

          return;
        }

        v27 = &v68;
      }

      else
      {
        v27 = &v69;
      }

      v28 = *(v27 - 32);
    }
  }
}

uint64_t sub_20D0C95C0()
{
  MEMORY[0x20F31FD50](v0 + 16);
  sub_20CEF928C(v0 + OBJC_IVAR____TtC6HomeUI42ControlCenterModuleViewControllerAnalytics_analyticsAppearInterval, &qword_27C820EE8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlCenterModuleViewControllerAnalytics()
{
  result = qword_2811201F8;
  if (!qword_2811201F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D0C9690()
{
  sub_20D0C9734();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20D0C9734()
{
  if (!qword_27C820ED8)
  {
    type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C820ED8);
    }
  }
}

uint64_t sub_20D0C978C(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlCenterModuleConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CEF5FFC;

  return sub_20D0C7060(a1, v12, v11, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_20D0C9904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0C994C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0C99BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D0C9A24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ControlCenterPreviewConfiguration.hash(into:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      v3 = *(v0 + 40);
      MEMORY[0x20F31E200](2);
      sub_20D568408();
      sub_20D568408();
      sub_20D5678C8();
      if (!v3)
      {
        goto LABEL_9;
      }

      sub_20D568D68();
      sub_20D5678C8();
    }

    else
    {
      MEMORY[0x20F31E200](3);
    }
  }

  else
  {
    if (!*(v0 + 48))
    {
      MEMORY[0x20F31E200](0);
      sub_20D568408();
LABEL_9:
      sub_20D568D68();
      goto LABEL_10;
    }

    MEMORY[0x20F31E200](1);
    sub_20D5678C8();
  }

LABEL_10:
  MEMORY[0x20F31E200](v2);
  return MEMORY[0x20F31E200](v1);
}

uint64_t ControlCenterPreviewConfiguration.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_20D568D48();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x20F31E200](2);
      sub_20D568408();
      sub_20D568408();
      sub_20D5678C8();
      if (!v1)
      {
        goto LABEL_9;
      }

      sub_20D568D68();
      sub_20D5678C8();
    }

    else
    {
      MEMORY[0x20F31E200](3);
    }
  }

  else
  {
    if (!v2)
    {
      MEMORY[0x20F31E200](0);
      sub_20D568408();
LABEL_9:
      sub_20D568D68();
      goto LABEL_10;
    }

    MEMORY[0x20F31E200](1);
    sub_20D5678C8();
  }

LABEL_10:
  MEMORY[0x20F31E200](v4);
  MEMORY[0x20F31E200](v3);
  return sub_20D568D98();
}

uint64_t sub_20D0C9D14()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_20D568D48();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x20F31E200](2);
      sub_20D568408();
      sub_20D568408();
      sub_20D5678C8();
      if (!v1)
      {
        goto LABEL_9;
      }

      sub_20D568D68();
      sub_20D5678C8();
    }

    else
    {
      MEMORY[0x20F31E200](3);
    }
  }

  else
  {
    if (!v2)
    {
      MEMORY[0x20F31E200](0);
      sub_20D568408();
LABEL_9:
      sub_20D568D68();
      goto LABEL_10;
    }

    MEMORY[0x20F31E200](1);
    sub_20D5678C8();
  }

LABEL_10:
  MEMORY[0x20F31E200](v4);
  MEMORY[0x20F31E200](v3);
  return sub_20D568D98();
}

uint64_t static HUControlCenterModulePreview.preview(package:size:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = HFHomeBundle();
  v7 = [v6 preferredLocalizations];

  v8 = sub_20D567A78();
  if (*(v8 + 16))
  {
    sub_20D5663C8();

    v9 = objc_opt_self();
    v10 = sub_20D5677F8();

    v11 = [v9 characterDirectionForLanguage_];

    v12 = v11 == 2;
  }

  else
  {

    v12 = 0;
  }

  v13 = [objc_allocWithZone(HUControlCenterModulePreview) init];
  v14 = &v13[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v20[0] = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v15 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 16];
  v16 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 32];
  v17 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 48];
  v21 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 64];
  v20[2] = v16;
  v20[3] = v17;
  v20[1] = v15;
  *v14 = a1;
  *(v14 + 1) = v12;
  v14[48] = 0;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 7) = a2;
  *(v14 + 8) = a3;
  v18 = a1;
  sub_20D0CA7A8(v20);
  return swift_dynamicCastUnknownClassUnconditional();
}

void __swiftcall HUControlCenterModulePreview.init()(HUControlCenterModulePreview *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t static HUControlCenterModulePreview.preview(systemIcon:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(HUControlCenterModulePreview) init];
  v9 = &v8[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v14[0] = *&v8[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v10 = *&v8[OBJC_IVAR___HUControlCenterModulePreview_configuration + 16];
  v11 = *&v8[OBJC_IVAR___HUControlCenterModulePreview_configuration + 32];
  v12 = *&v8[OBJC_IVAR___HUControlCenterModulePreview_configuration + 48];
  v15 = *&v8[OBJC_IVAR___HUControlCenterModulePreview_configuration + 64];
  v14[2] = v11;
  v14[3] = v12;
  v14[1] = v10;
  *v9 = a1;
  *(v9 + 1) = a2;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v9[48] = 1;
  *(v9 + 7) = a3;
  *(v9 + 8) = a4;
  sub_20D5663C8();
  sub_20D0CA7A8(v14);
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t static HUControlCenterModulePreview.preview(templateIcon:tint:title:subtitle:size:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = [objc_allocWithZone(HUControlCenterModulePreview) init];
  v17 = &v16[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v24[0] = *&v16[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v19 = *&v16[OBJC_IVAR___HUControlCenterModulePreview_configuration + 32];
  v18 = *&v16[OBJC_IVAR___HUControlCenterModulePreview_configuration + 48];
  v20 = *&v16[OBJC_IVAR___HUControlCenterModulePreview_configuration + 16];
  v25 = *&v16[OBJC_IVAR___HUControlCenterModulePreview_configuration + 64];
  v24[2] = v19;
  v24[3] = v18;
  v24[1] = v20;
  *v17 = a1;
  *(v17 + 1) = a2;
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a6;
  v17[48] = 2;
  *(v17 + 7) = a7;
  *(v17 + 8) = a8;
  sub_20D5663C8();
  v21 = a1;
  v22 = a2;
  sub_20D5663C8();
  sub_20D0CA7A8(v24);
  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t static HUControlCenterModulePreview.empty(size:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(HUControlCenterModulePreview) init];
  v5 = &v4[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v10[0] = *&v4[OBJC_IVAR___HUControlCenterModulePreview_configuration];
  v6 = *&v4[OBJC_IVAR___HUControlCenterModulePreview_configuration + 16];
  v7 = *&v4[OBJC_IVAR___HUControlCenterModulePreview_configuration + 32];
  v8 = *&v4[OBJC_IVAR___HUControlCenterModulePreview_configuration + 48];
  v11 = *&v4[OBJC_IVAR___HUControlCenterModulePreview_configuration + 64];
  v10[2] = v7;
  v10[3] = v8;
  v10[1] = v6;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = 0u;
  v5[48] = 3;
  *(v5 + 7) = a1;
  *(v5 + 8) = a2;
  sub_20D0CA7A8(v10);
  return swift_dynamicCastUnknownClassUnconditional();
}

id HUControlCenterModulePreview.init()()
{
  v1 = v0 + OBJC_IVAR___HUControlCenterModulePreview_configuration;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 255;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v3.super_class = HUControlCenterModulePreview;
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL _s6HomeUI33ControlCenterPreviewConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 48);
  v8 = a2[7];
  v9 = a2[8];
  if (*(a1 + 48) > 1u)
  {
    v12 = a2[2];
    v13 = a2[3];
    if (*(a1 + 48) != 2)
    {
      if (v7 != 3 || v5 | v6 | v12 | v13 | a2[4] | a2[5])
      {
        return 0;
      }

      return v3 == v8 && v4 == v9;
    }

    if (v7 != 2)
    {
      return 0;
    }

    v18 = a2[5];
    v19 = *(a1 + 64);
    v20 = *(a1 + 24);
    v21 = *(a1 + 16);
    v15 = *(a1 + 32);
    v16 = a2[4];
    v17 = *(a1 + 40);
    sub_20CECF940(0, &qword_28111FB10);
    if ((sub_20D5683F8() & 1) == 0 || (sub_20D5683F8() & 1) == 0)
    {
      return 0;
    }

    if ((v21 != v12 || v20 != v13) && (sub_20D568BF8() & 1) == 0)
    {
      return 0;
    }

    if (!v17)
    {
      v4 = v19;
      if (v18)
      {
        return 0;
      }

      return v3 == v8 && v4 == v9;
    }

    v4 = v19;
    if (!v18)
    {
      return 0;
    }

    if (v15 != v16 || v17 != v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(a1 + 48))
    {
      if (!*(a2 + 48))
      {
        sub_20CECF940(0, &qword_28111FB10);
        v10 = sub_20D5683F8();
        result = 0;
        if (v10 & 1) == 0 || ((v5 ^ v2))
        {
          return result;
        }

        return v3 == v8 && v4 == v9;
      }

      return 0;
    }

    if (v7 != 1)
    {
      return 0;
    }

    if (*a1 != v6 || v2 != v5)
    {
LABEL_22:
      if ((sub_20D568BF8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  return v3 == v8 && v4 == v9;
}

uint64_t sub_20D0CA7A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20D0CA814()
{
  result = qword_27C820F20;
  if (!qword_27C820F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820F20);
  }

  return result;
}

uint64_t sub_20D0CA868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 72))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_20D0CA8B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_20D0CA928(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_20CF8FAF8(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_20D0CA960(uint64_t a1)
{
  v2 = sub_20D5667B8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_20D5669F8();
}

uint64_t sub_20D0CAA28()
{
  v0 = sub_20D5645F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D5643A8();
  if (!v5)
  {
    return sub_20D564378();
  }

  v6 = v4;
  v7 = v5;
  sub_20D564378();
  sub_20D5663C8();
  sub_20D5645E8();
  v8 = sub_20D5645D8();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  if (v8 == v6 && v7 == v10)
  {
  }

  else if (sub_20D568BF8())
  {

    return v8;
  }

  else
  {
    v13[0] = v6;
    v13[1] = v7;
    MEMORY[0x20F31CDB0](32, 0xE100000000000000);
    MEMORY[0x20F31CDB0](v8, v10);

    return v13[0];
  }

  return v6;
}

void sub_20D0CAC10()
{
  sub_20D0D5C98(319, &qword_27C81D3D8, MEMORY[0x277D15CB0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20D563DA8();
    if (v1 <= 0x3F)
    {
      sub_20D0CACF8();
      if (v2 <= 0x3F)
      {
        sub_20CF0BE4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D0CACF8()
{
  if (!qword_27C820F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C180);
    v0 = sub_20D567518();
    if (!v1)
    {
      atomic_store(v0, &qword_27C820F38);
    }
  }
}

uint64_t sub_20D0CAD78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v62 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  MEMORY[0x28223BE20](v68);
  v67 = &v62 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F40);
  MEMORY[0x28223BE20](v80);
  v78 = &v62 - v6;
  v7 = type metadata accessor for HomeHubsSelectionListView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  MEMORY[0x28223BE20](v79);
  v81 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v62 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F50);
  MEMORY[0x28223BE20](v62);
  v18 = &v62 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F58);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v20 = &v62 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F60);
  MEMORY[0x28223BE20](v69);
  v75 = &v62 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F68);
  MEMORY[0x28223BE20](v76);
  v77 = &v62 - v22;
  v23 = sub_20D5643B8();
  v83 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D0CB6DC(v2, v25);
  v73 = v25;
  sub_20D0CBE4C(v25, v2, v18);
  v65 = v2 + *(v7 + 20);
  sub_20D563D28();
  sub_20D0D2EFC(v2, v10);
  v26 = *(v8 + 80);
  v27 = (v26 + 16) & ~v26;
  v84 = v27 + v9;
  v85 = v26;
  v28 = swift_allocObject();
  v66 = v27;
  sub_20D0D2F60(v10, v28 + v27);
  sub_20D0D2FDC();
  sub_20D0D308C();
  v70 = v20;
  sub_20D567268();

  sub_20CEF928C(v16, &qword_27C820F48);
  sub_20CEF928C(v18, &qword_27C820F50);
  v79 = v7;
  v29 = v67;
  sub_20D5674F8();
  v30 = *v2;
  v31 = v2;
  v86 = v2;
  v32 = v64;
  sub_20D06CE5C(sub_20D0D60F0, v30, v64);
  v33 = v83;
  v68 = *(v83 + 48);
  v34 = v68(v32, 1, v23);
  v63 = v23;
  if (v34 == 1)
  {
    sub_20CEF928C(v32, &qword_27C820F48);
    v35 = 1;
    v36 = v74;
  }

  else
  {
    v36 = v74;
    sub_20D564368();
    (*(v33 + 8))(v32, v23);
    v35 = 0;
  }

  v37 = sub_20D563818();
  (*(*(v37 - 8) + 56))(v36, v35, 1, v37);
  v38 = v2;
  v39 = v10;
  sub_20D0D2EFC(v38, v10);
  v40 = swift_allocObject();
  v41 = v66;
  sub_20D0D2F60(v10, v40 + v66);
  v42 = v78;
  sub_20CF15584(v29, v78, &qword_27C81D418);
  v43 = v80;
  sub_20CF15584(v36, v42 + *(v80 + 36), &qword_27C81C180);
  v44 = (v42 + *(v43 + 40));
  *v44 = sub_20D0D331C;
  v44[1] = v40;
  v45 = v42 + *(v43 + 44);
  v90 = 0;
  sub_20D567438();
  v46 = v88;
  *v45 = v87;
  *(v45 + 8) = v46;
  v47 = v75;
  (*(v71 + 32))(v75, v70, v72);
  sub_20CF15584(v42, &v47[*(v69 + 36)], &qword_27C820F40);
  v48 = v31 + *(v79 + 28);
  v49 = *v48;
  v50 = *(v48 + 8);
  v90 = v49;
  v91 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567468();
  v51 = v87;
  v52 = v88;
  LODWORD(v80) = v89;
  v53 = v81;
  sub_20D563D28();
  v54 = v63;
  v55 = v68(v53, 1, v63) == 1;
  sub_20CEF928C(v53, &qword_27C820F48);
  sub_20D0D2EFC(v31, v39);
  v56 = swift_allocObject();
  sub_20D0D2F60(v39, v56 + v41);
  v90 = 0;
  sub_20D567438();
  LOBYTE(v41) = v87;
  v57 = v88;
  v58 = v47;
  v59 = v77;
  sub_20CF15584(v58, v77, &qword_27C820F60);
  v60 = v59 + *(v76 + 36);
  *v60 = v51;
  *(v60 + 8) = v52;
  *(v60 + 16) = v80;
  *(v60 + 17) = v55;
  *(v60 + 24) = sub_20D0D33A8;
  *(v60 + 32) = v56;
  *(v60 + 40) = v41;
  *(v60 + 48) = v57;
  sub_20CF15584(v59, v82, &qword_27C820F68);
  return (*(v83 + 8))(v73, v54);
}

void sub_20D0CB6DC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_20D564388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9);
  v70 = &v48 - v10;
  v11 = sub_20D5643B8();
  MEMORY[0x28223BE20](v11);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v48 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v20 = MEMORY[0x28223BE20](v18);
  v49 = &v48 - v21;
  v22 = *a1;
  v53 = *(*a1 + 16);
  if (!v53)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v23 = 0;
  v66 = v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v65 = v19 + 16;
  v59 = *MEMORY[0x277D15C80];
  v63 = v19;
  v64 = (v4 + 104);
  v68 = v4 + 16;
  v69 = (v4 + 8);
  v57 = (v19 + 8);
  v58 = v22;
  v60 = v17;
  v61 = v11;
  v52 = v4;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v55 = *(v19 + 72);
    v67 = v23;
    v56 = *(v19 + 16);
    v56(v17, v66 + v55 * v23, v11, v20);
    v26 = sub_20D564398();
    v54 = *v64;
    v54(v70, v59, v3);
    if (*(v26 + 16))
    {
      sub_20D0D470C(&qword_27C81FC20, MEMORY[0x277D15C90]);
      v27 = sub_20D5677B8();
      v28 = -1 << *(v26 + 32);
      v29 = v27 & ~v28;
      if ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        break;
      }
    }

LABEL_3:
    v23 = v67 + 1;

    v24 = *v69;
    (*v69)(v70, v3);
    v25 = *v57;
    v17 = v60;
    v11 = v61;
    (*v57)(v60, v61);
    v19 = v63;
    v22 = v58;
    if (v23 == v53)
    {
      v53 = *(v58 + 16);
      if (!v53)
      {
        goto LABEL_28;
      }

      v38 = 0;
      v59 = *MEMORY[0x277D15C88];
      while (v38 < *(v22 + 16))
      {
        v60 = v38;
        (v56)(v51, v66 + v55 * v38, v11);
        v39 = sub_20D564398();
        v54(v62, v59, v3);
        if (*(v39 + 16))
        {
          sub_20D0D470C(&qword_27C81FC20, MEMORY[0x277D15C90]);
          v40 = sub_20D5677B8();
          v41 = -1 << *(v39 + 32);
          v42 = v40 & ~v41;
          v70 = (v39 + 56);
          if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v67 = ~v41;
            v43 = *(v52 + 72);
            v44 = *(v52 + 16);
            while (1)
            {
              v44(v8, *(v39 + 48) + v43 * v42, v3);
              sub_20D0D470C(&qword_27C81FC28, MEMORY[0x277D15C90]);
              v45 = sub_20D5677E8();
              v24(v8, v3);
              if (v45)
              {
                break;
              }

              v42 = (v42 + 1) & v67;
              if (((*&v70[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v24(v62, v3);
            v46 = *(v63 + 32);
            v47 = v48;
            v46(v48, v51, v11);
            v46(v50, v47, v11);
            return;
          }
        }

LABEL_15:
        v38 = v60 + 1;

        v24(v62, v3);
        v25(v51, v11);
        v22 = v58;
        if (v38 == v53)
        {
          if (!*(v58 + 16))
          {
            goto LABEL_28;
          }

          (v56)(v50, v66, v11);
          return;
        }
      }

      goto LABEL_27;
    }
  }

  v30 = ~v28;
  v31 = *(v52 + 72);
  v32 = *(v52 + 16);
  while (1)
  {
    v32(v8, *(v26 + 48) + v31 * v29, v3);
    sub_20D0D470C(&qword_27C81FC28, MEMORY[0x277D15C90]);
    v33 = sub_20D5677E8();
    v34 = *v69;
    (*v69)(v8, v3);
    if (v33)
    {
      break;
    }

    v29 = (v29 + 1) & v30;
    if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v34(v70, v3);
  v35 = *(v63 + 32);
  v36 = v49;
  v37 = v61;
  v35(v49, v60, v61);
  v35(v50, v36, v37);
}

uint64_t sub_20D0CBE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v102 = a3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F98);
  MEMORY[0x28223BE20](v92);
  v90 = v89 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FA0);
  v6 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v91 = v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = v89 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FB0);
  MEMORY[0x28223BE20](v94);
  v95 = v89 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FB8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FC8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v89 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FD0);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v111 = v89 - v24;
  v112 = a1;
  v25 = a2;
  v108 = *a2;
  v103 = v6;
  v26 = sub_20D5677F8();
  v27 = HFLocalizedString();

  v28 = sub_20D567838();
  v30 = v29;

  v113.i64[0] = v28;
  v113.i64[1] = v30;
  v31 = MEMORY[0x277D84F90];
  v114 = 0;
  v115 = MEMORY[0x277D84F90];
  v32 = sub_20D5677F8();
  v33 = HFLocalizedString();

  v34 = sub_20D567838();
  v36 = v35;

  v116 = v34;
  v117 = v36;
  LOBYTE(v118) = 0;
  v119 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FD8);
  sub_20D0D49BC();
  sub_20D567588();
  v107 = type metadata accessor for HomeHubsSelectionListView(0);
  v37 = v25 + v107[9];
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v116) = v38;
  v117 = v39;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  v40 = sub_20D567468();
  MEMORY[0x28223BE20](v40);
  sub_20D0D4B84();
  sub_20D567218();

  v41 = (*(v19 + 8))(v21, v18);
  if (*(v108 + 16) < 2uLL)
  {
    v56 = 1;
    v58 = v105;
    v57 = v106;
    v59 = v103;
    v54 = v110;
    v55 = v97;
    v53 = v96;
  }

  else
  {
    v89[1] = v89;
    MEMORY[0x28223BE20](v41);
    sub_20D0CDCF4(v25, &v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821060);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821068);
    v43 = sub_20D566B08();
    v44 = sub_20CF156D0(&qword_27C821070, &qword_27C821068);
    v45 = sub_20D0D470C(&qword_27C821078, MEMORY[0x277CDDDF0]);
    v116 = v42;
    v117 = v43;
    v118 = v44;
    v119 = v45;
    swift_getOpaqueTypeConformance2();
    sub_20D0D4EE4(&qword_27C821080, &qword_27C821060, &unk_20D5C8980, sub_20D0D4F60);
    v46 = v95;
    sub_20D5675A8();
    v47 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v113.i64[0] = sub_20D5672E8();
    *(v46 + *(v94 + 36)) = sub_20D5674C8();
    v48 = v25 + v107[8];
    v49 = *v48;
    v50 = *(v48 + 1);
    LOBYTE(v116) = v49;
    v117 = v50;
    v51 = sub_20D567468();
    MEMORY[0x28223BE20](v51);
    sub_20D0D50A0();
    v52 = v93;
    sub_20D567218();

    sub_20CEF928C(v46, &qword_27C820FB0);
    v53 = v96;
    v54 = v110;
    v55 = v97;
    (*(v96 + 32))(v110, v52, v97);
    v56 = 0;
    v58 = v105;
    v57 = v106;
    v59 = v103;
  }

  v60 = 1;
  (*(v53 + 56))(v54, v56, 1, v55);
  v61 = v107;
  v62 = v25 + v107[7];
  v63 = *v62;
  v64 = *(v62 + 1);
  v113.i8[0] = v63;
  v113.i64[1] = v64;
  v65 = sub_20D567448();
  if ((v116 & 1) == 0 && *(v108 + 16) >= 2uLL)
  {
    MEMORY[0x28223BE20](v65);
    v66 = sub_20D5677F8();
    v67 = HFLocalizedString();

    v68 = sub_20D567838();
    v70 = v69;

    v113.i64[0] = v68;
    v113.i64[1] = v70;
    v114 = 0;
    v115 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821010);
    sub_20D0D4C1C();
    v71 = v90;
    sub_20D567578();
    v72 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v113.i64[0] = sub_20D5672E8();
    *(v71 + *(v92 + 36)) = sub_20D5674C8();
    v73 = v25 + v61[10];
    v74 = *v73;
    v75 = *(v73 + 1);
    LOBYTE(v116) = v74;
    v117 = v75;
    v76 = sub_20D567468();
    MEMORY[0x28223BE20](v76);
    sub_20D0D4D8C();
    v77 = v91;
    v58 = v105;
    sub_20D567218();
    v57 = v106;
    v54 = v110;

    sub_20CEF928C(v71, &qword_27C820F98);
    (*(v59 + 32))(v57, v77, v58);
    v60 = 0;
  }

  (*(v59 + 56))(v57, v60, 1, v58);
  v78 = v99;
  v79 = v57;
  v80 = *(v99 + 16);
  v81 = v98;
  v82 = v100;
  v80(v98, v111, v100);
  v83 = v101;
  sub_20CEF9178(v54, v101, &qword_27C820FC0);
  v84 = v104;
  sub_20CEF9178(v57, v104, &qword_27C820FA8);
  v85 = v102;
  v80(v102, v81, v82);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821008);
  sub_20CEF9178(v83, &v85[*(v86 + 48)], &qword_27C820FC0);
  sub_20CEF9178(v84, &v85[*(v86 + 64)], &qword_27C820FA8);
  sub_20CEF928C(v79, &qword_27C820FA8);
  sub_20CEF928C(v110, &qword_27C820FC0);
  v87 = *(v78 + 8);
  v87(v111, v82);
  sub_20CEF928C(v84, &qword_27C820FA8);
  sub_20CEF928C(v83, &qword_27C820FC0);
  return (v87)(v81, v82);
}

uint64_t sub_20D0CCC48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for HomeHubsSelectionListView.ResidentInfoView(0) + 20);
  v5 = sub_20D5643B8();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210F8);
  swift_storeEnumTagMultiPayload();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FF0) + 36)) = 0;
  v6 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_20D5672E8();
  v7 = sub_20D5674C8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820FD8);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_20D0CCD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = type metadata accessor for HomeHubsSelectionListView(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_20D5677F8();
  v8 = HFLocalizedString();

  v17 = sub_20D567838();
  v9 = sub_20D5677F8();
  v10 = HFLocalizedString();

  sub_20D567838();
  v11 = sub_20D5677F8();
  v12 = HFLocalizedString();

  sub_20D567838();
  sub_20D0D2EFC(v19, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  sub_20D0D2F60(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_20D5672C8();

  v15 = sub_20D5672D8();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  return sub_20D567298();
}

uint64_t sub_20D0CD048(uint64_t *a1)
{
  v2 = type metadata accessor for HomeHubsSelectionListView(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_20D5643B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = *a1;
  v32 = a1;
  sub_20D06CE5C(sub_20D0D57DC, v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20CEF928C(v8, &qword_27C820F48);
  }

  v18 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v18;
  v28 = v3;
  v29 = *(v10 + 32);
  v29(v15, v8, v9);
  v19 = sub_20D567C58();
  v20 = v31;
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  (*(v10 + 16))(v12, v15, v9);
  sub_20D0D2EFC(a1, v18);
  sub_20D567C18();
  v21 = sub_20D567C08();
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = (v11 + *(v30 + 80) + v22) & ~*(v30 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  v29((v24 + v22), v12, v9);
  sub_20D0D2F60(v27, v24 + v23);
  sub_20CF18960(0, 0, v20, &unk_20D5C8A70, v24);

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_20D0CD40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  v5[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = sub_20D567C18();
  v5[7] = sub_20D567C08();
  v6 = swift_task_alloc();
  v5[8] = v6;
  *v6 = v5;
  v6[1] = sub_20D0CD540;

  return MEMORY[0x28216F830](0);
}

uint64_t sub_20D0CD540()
{
  *(*v1 + 72) = v0;

  v3 = sub_20D567BA8();
  if (v0)
  {
    v4 = sub_20D0CD714;
  }

  else
  {
    v4 = sub_20D0CD698;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20D0CD698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0CD714()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *v2;
  *(swift_task_alloc() + 16) = v2;
  sub_20D06CE5C(sub_20D0D60F0, v3, v1);

  v4 = sub_20D5643B8();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_20CEF928C(v0[3], &qword_27C820F48);
    v6 = 1;
  }

  else
  {
    v7 = v0[3];
    sub_20D564368();
    (*(v5 + 8))(v7, v4);
    v6 = 0;
  }

  v8 = v0[9];
  v10 = v0[4];
  v9 = v0[5];
  v11 = sub_20D563818();
  (*(*(v11 - 8) + 56))(v9, v6, 1, v11);
  type metadata accessor for HomeHubsSelectionListView(0);
  sub_20CEF9178(v9, v10, &qword_27C81C180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  sub_20D5674E8();

  sub_20CEF928C(v9, &qword_27C81C180);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D0CD94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_20D566B08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821068);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = (a1 + *(type metadata accessor for HomeHubsSelectionListView(0) + 28));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v16) = v12;
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567468();
  v16 = v19;
  v17 = v20;
  v18 = v21;
  sub_20D5675F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210D8);
  sub_20D567508();

  sub_20D5674B8();
  sub_20D566AF8();
  sub_20CF156D0(&qword_27C821070, &qword_27C821068);
  sub_20D0D470C(&qword_27C821078, MEMORY[0x277CDDDF0]);
  sub_20D567158();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20D0CDC1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D5677F8();
  v3 = HFLocalizedString();

  sub_20D567838();
  sub_20D566F98();
  v4 = sub_20D5670C8();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_20D0CDCF4@<X0>(uint64_t *a1@<X0>, int64x2_t *a2@<X8>)
{
  v83 = a2;
  v3 = sub_20D564328();
  v85 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = &v82 - v7;
  v8 = sub_20D5643B8();
  v93 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v95 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v82 - v11;
  v13 = a1 + *(type metadata accessor for HomeHubsSelectionListView(0) + 28);
  v14 = *v13;
  v15 = *(v13 + 8);
  v110.i8[0] = v14;
  v110.i64[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  result = sub_20D567448();
  if (v105 != 1)
  {
    v34 = 0uLL;
    v35 = -2;
    v36 = 0uLL;
LABEL_27:
    v81 = v83;
    *v83 = v34;
    v81[1] = v36;
    v81[2].i8[0] = v35;
    return result;
  }

  v17 = *a1;
  v18 = MEMORY[0x277D84F90];
  v92 = *(*a1 + 16);
  if (!v92)
  {
LABEL_18:
    v37 = *(v18 + 16);

    if (v37)
    {
      if (v37 == 1)
      {
        v38 = sub_20D5677F8();
        v39 = HFLocalizedString();

        v40 = sub_20D567838();
        v42 = v41;

        v105 = v40;
        v106 = v42;
        v107 = 0;
        v108 = MEMORY[0x277D84F90];
        v109 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210B0);
        sub_20D0D501C();
        result = sub_20D566D18();
      }

      else
      {
        v43 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
        [v43 setNumberStyle_];
        v44 = [v43 stringFromInteger_];
        if (v44)
        {
          v45 = v44;
          v46 = sub_20D567838();
          v48 = v47;

          sub_20D5663C8();
          v49 = sub_20D06B7EC(1);
          v51 = v50;
          v53 = v52;
          v55 = v54;

          v110.i64[0] = v49;
          v110.i64[1] = v51;
          v111.i64[0] = v53;
          v111.i64[1] = v55;
          sub_20D0D5678();
          v56 = sub_20D568588();
          v58 = v57;

          v59 = sub_20D0D55C8(1uLL, v46, v48);
          v61 = v60;
          v63 = v62;
          v65 = v64;

          v103 = v56;
          v104 = v58;
          v105 = v59;
          v106 = v61;
          v107 = v63;
          v108 = v65;
          sub_20CF6B9E8();
          sub_20D5678F8();

          v66 = v103;
          v67 = v104;
          v68 = sub_20D5677F8();
          v69 = HFLocalizedString();

          sub_20D567838();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_20D5BC410;
          *(v70 + 56) = MEMORY[0x277D837D0];
          *(v70 + 64) = sub_20CED4498();
          *(v70 + 32) = v66;
          *(v70 + 40) = v67;
          v71 = sub_20D567898();
          v73 = v72;

          v110.i64[0] = v71;
          v110.i64[1] = v73;
          sub_20CEF44D8();
          v74 = sub_20D5670E8();
          v76 = v75;
          v78 = v77;
          v80 = v79 & 1;
          sub_20CF14B58(v74, v75, v79 & 1);
          sub_20D5663C8();
        }

        else
        {

          v74 = 0;
          v76 = 0;
          v80 = 0;
          v78 = 0;
        }

        v105 = v74;
        v106 = v76;
        v107 = v80;
        v108 = v78;
        v109 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210B0);
        sub_20D0D501C();
        sub_20D566D18();
        result = sub_20D05AC0C(v74, v76, v80, v78);
      }

      v34 = v110;
      v36 = v111;
      v35 = v112;
    }

    else
    {
      v34 = vdupq_n_s64(0);
      v35 = -1;
      v36 = v34;
    }

    goto LABEL_27;
  }

  v19 = 0;
  v88 = v93 + 16;
  v87 = *MEMORY[0x277D15C60];
  v86 = (v85 + 104);
  v100 = v85 + 16;
  v101 = (v85 + 8);
  v84 = (v93 + 8);
  v94 = (v93 + 32);
  v91 = v8;
  v90 = v12;
  v89 = v17;
  while (v19 < *(v17 + 16))
  {
    v98 = v18;
    v97 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v20 = *(v93 + 72);
    v99 = v19;
    v96 = v20;
    (*(v93 + 16))(v12, v17 + v97 + v20 * v19, v8);
    v21 = sub_20D564348();
    (*v86)(v102, v87, v3);
    if (*(v21 + 16) && (sub_20D0D470C(&qword_27C81FC30, MEMORY[0x277D15C68]), v22 = sub_20D5677B8(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v25 = ~v23;
      v26 = *(v85 + 72);
      v27 = *(v85 + 16);
      while (1)
      {
        v27(v5, *(v21 + 48) + v26 * v24, v3);
        sub_20D0D470C(&qword_27C81FC38, MEMORY[0x277D15C68]);
        v28 = sub_20D5677E8();
        v29 = *v101;
        (*v101)(v5, v3);
        if (v28)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v29(v102, v3);
      v12 = v90;
      v8 = v91;
      result = (*v84)(v90, v91);
      v18 = v98;
    }

    else
    {
LABEL_12:

      (*v101)(v102, v3);
      v30 = *v94;
      v12 = v90;
      v8 = v91;
      (*v94)(v95, v90, v91);
      v18 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110.i64[0] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CEF0C14(0, *(v18 + 16) + 1, 1);
        v18 = v110.i64[0];
      }

      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_20CEF0C14(v32 > 1, v33 + 1, 1);
        v18 = v110.i64[0];
      }

      *(v18 + 16) = v33 + 1;
      result = v30((v18 + v97 + v33 * v96), v95, v8);
    }

    v19 = v99 + 1;
    v17 = v89;
    if (v99 + 1 == v92)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D0CE604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v2 = type metadata accessor for HomeHubsSelectionListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_20D5672D8();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_20D5677F8();
  v8 = HFLocalizedString();

  v9 = sub_20D567838();
  v22 = v10;
  v23 = v9;

  v11 = sub_20D5677F8();
  v12 = HFLocalizedString();

  sub_20D567838();
  v13 = sub_20D5677F8();
  v14 = HFLocalizedString();

  sub_20D567838();
  sub_20D0D2EFC(v21, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_20D0D2F60(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_20D5672C8();

  v17 = sub_20D5677F8();
  v18 = HFLocalizedString();

  sub_20D567838();
  sub_20D5672B8();

  return sub_20D5672A8();
}

uint64_t sub_20D0CE928(uint64_t a1)
{
  v2 = type metadata accessor for HomeHubsSelectionListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_20D567C58();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20D0D2EFC(a1, v5);
  sub_20D567C18();
  v10 = sub_20D567C08();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_20D0D2F60(v5, v12 + v11);
  sub_20CF18960(0, 0, v8, &unk_20D5C89B8, v12);
}

uint64_t sub_20D0CEAE0()
{
  v0[2] = sub_20D567C18();
  v0[3] = sub_20D567C08();
  type metadata accessor for HomeHubsSelectionListView(0);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D0CEBA0;

  return MEMORY[0x28216E668](1);
}

uint64_t sub_20D0CEBA0()
{
  *(*v1 + 40) = v0;

  v3 = sub_20D567BA8();
  if (v0)
  {
    v4 = sub_20D0CECFC;
  }

  else
  {
    v4 = sub_20D0940D0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20D0CECFC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D0CED68(void *a1)
{
  v2 = type metadata accessor for HomeHubsSelectionListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  sub_20D0D2EFC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20D0D2F60(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820058);
  sub_20D563818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821028);
  sub_20CF156D0(&qword_27C820060, &qword_27C820058);
  sub_20D0D4CA0();
  sub_20D0D470C(&qword_27C820068, MEMORY[0x277D15CB0]);
  return sub_20D567548();
}

uint64_t sub_20D0CEF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D564388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_20D566B38();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210E8);
  sub_20D0CF0C4(a1, a2, a3 + *(v10 + 44));
  v11 = sub_20D564398();
  (*(v7 + 104))(v9, *MEMORY[0x277D15C88], v6);
  LOBYTE(a1) = sub_20D048AB0(v9, v11);

  (*(v7 + 8))(v9, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821028);
  *(a3 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t sub_20D0CF0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v63 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D680);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v54 - v5;
  v6 = sub_20D563818();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for HomeHubsSelectionListView.ResidentInfoView(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210F0);
  MEMORY[0x28223BE20](v23 - 8);
  v62 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - v26;
  v28 = *(v20 + 20);
  v29 = sub_20D5643B8();
  (*(*(v29 - 8) + 16))(v22 + v28, a1, v29);
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210F8);
  swift_storeEnumTagMultiPayload();
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_20D568858();

  v64 = 0xD000000000000020;
  v65 = 0x800000020D5D9880;
  v30 = sub_20D0CAA28();
  MEMORY[0x20F31CDB0](v30);

  sub_20D0D470C(&qword_27C820FF8, type metadata accessor for HomeHubsSelectionListView.ResidentInfoView);
  v61 = v27;
  sub_20D567188();

  v31 = v22;
  v32 = v57;
  sub_20D0D5764(v31, type metadata accessor for HomeHubsSelectionListView.ResidentInfoView);
  v33 = v58;
  sub_20D564368();
  (*(v32 + 56))(v19, 0, 1, v33);
  type metadata accessor for HomeHubsSelectionListView(0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  MEMORY[0x20F31C980](v34);
  v35 = *(v9 + 56);
  sub_20CEF9178(v19, v11, &qword_27C81C180);
  sub_20CEF9178(v16, &v11[v35], &qword_27C81C180);
  v36 = *(v32 + 48);
  if (v36(v11, 1, v33) == 1)
  {
    sub_20CEF928C(v16, &qword_27C81C180);
    sub_20CEF928C(v19, &qword_27C81C180);
    if (v36(&v11[v35], 1, v33) == 1)
    {
      sub_20CEF928C(v11, &qword_27C81C180);
LABEL_9:
      sub_20D5673C8();
      v45 = v56;
      sub_20D566BB8();
      v46 = sub_20D566BD8();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      v37 = sub_20D5673F8();

      sub_20CEF928C(v45, &qword_27C81D680);
      v39 = sub_20D567058();
      KeyPath = swift_getKeyPath();
      v40 = sub_20D567358();

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_20CEF9178(v11, v60, &qword_27C81C180);
  if (v36(&v11[v35], 1, v33) == 1)
  {
    sub_20CEF928C(v16, &qword_27C81C180);
    sub_20CEF928C(v19, &qword_27C81C180);
    (*(v32 + 8))(v60, v33);
LABEL_6:
    sub_20CEF928C(v11, &qword_27C81D948);
    goto LABEL_7;
  }

  v41 = v55;
  (*(v32 + 32))(v55, &v11[v35], v33);
  sub_20D0D470C(qword_27C820680, MEMORY[0x277CC95F0]);
  v42 = v60;
  v43 = sub_20D5677E8();
  v44 = *(v32 + 8);
  v44(v41, v33);
  sub_20CEF928C(v16, &qword_27C81C180);
  sub_20CEF928C(v19, &qword_27C81C180);
  v44(v42, v33);
  sub_20CEF928C(v11, &qword_27C81C180);
  if (v43)
  {
    goto LABEL_9;
  }

LABEL_7:
  v37 = 0;
  KeyPath = 0;
  v39 = 0;
  v40 = 0;
LABEL_10:
  v48 = v61;
  v47 = v62;
  sub_20CEF9178(v61, v62, &qword_27C8210F0);
  v49 = v63;
  sub_20CEF9178(v47, v63, &qword_27C8210F0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821100);
  v51 = v49 + *(v50 + 48);
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = (v49 + *(v50 + 64));
  sub_20CF602A8(v37);
  sub_20CF6030C(v37);
  *v52 = v37;
  v52[1] = KeyPath;
  v52[2] = v39;
  v52[3] = v40;
  sub_20CEF928C(v48, &qword_27C8210F0);
  sub_20CF6030C(v37);
  return sub_20CEF928C(v47, &qword_27C8210F0);
}

uint64_t sub_20D0CF924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = type metadata accessor for HomeHubsSelectionListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_20D5677F8();
  v9 = HFLocalizedString();

  v18[1] = sub_20D567838();
  v10 = sub_20D5677F8();
  v11 = HFLocalizedString();

  sub_20D567838();
  v12 = sub_20D5677F8();
  v13 = HFLocalizedString();

  sub_20D567838();
  sub_20D0D2EFC(v19, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_20D0D2F60(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_20D5672C8();

  v16 = sub_20D5672D8();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  return sub_20D567298();
}

uint64_t sub_20D0CFBF4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  v11 = *a1;
  v18 = a1;
  sub_20D06CE5C(sub_20D0D60F0, v11, v4);
  v12 = sub_20D5643B8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_20CEF928C(v4, &qword_27C820F48);
    v14 = 1;
  }

  else
  {
    sub_20D564368();
    (*(v13 + 8))(v4, v12);
    v14 = 0;
  }

  v15 = sub_20D563818();
  (*(*(v15 - 8) + 56))(v10, v14, 1, v15);
  type metadata accessor for HomeHubsSelectionListView(0);
  sub_20CEF9178(v10, v7, &qword_27C81C180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  sub_20D5674E8();
  return sub_20CEF928C(v10, &qword_27C81C180);
}

uint64_t sub_20D0CFE58(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for HomeHubsSelectionListView(0);
  sub_20D563D28();
  v14 = sub_20D5643B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14) == 1;
  sub_20CEF928C(v12, &qword_27C820F48);
  v18 = a1 + *(v13 + 28);
  v19 = *v18;
  v20 = *(v18 + 1);
  v29 = v19;
  v30 = v20;
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567458();
  v21 = *a1;
  v27 = a1;
  sub_20D06CE5C(sub_20D0D60F0, v21, v9);
  if (v16(v9, 1, v14) == 1)
  {
    sub_20CEF928C(v9, &qword_27C820F48);
    v22 = 1;
  }

  else
  {
    sub_20D564368();
    (*(v15 + 8))(v9, v14);
    v22 = 0;
  }

  v23 = sub_20D563818();
  (*(*(v23 - 8) + 56))(v6, v22, 1, v23);
  sub_20CEF9178(v6, v26, &qword_27C81C180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  sub_20D5674E8();
  return sub_20CEF928C(v6, &qword_27C81C180);
}

uint64_t sub_20D0D0194(uint64_t *a1)
{
  v98 = sub_20D564458();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = &v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v93 - v6;
  v7 = sub_20D564328();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v93 - v12;
  v14 = sub_20D5643B8();
  v116 = *(v14 - 8);
  v117 = v14;
  MEMORY[0x28223BE20](v14);
  v104 = v15;
  v105 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v93 - v17;
  v112 = sub_20D563818();
  v18 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v21 - 8);
  v103 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = &v93 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v93 - v26;
  v114 = type metadata accessor for HomeHubsSelectionListView(0);
  v99 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v101 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v93 - v30;
  if (qword_27C81A1E0 != -1)
  {
    swift_once();
  }

  v111 = v18;
  v32 = sub_20D565988();
  __swift_project_value_buffer(v32, qword_27C81D330);
  sub_20D0D2EFC(a1, v31);
  v33 = sub_20D565968();
  v34 = sub_20D567EC8();
  v35 = os_log_type_enabled(v33, v34);
  v113 = a1;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v119 = v37;
    *v36 = 136315138;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
    MEMORY[0x20F31C980](v38);
    v40 = v111;
    v39 = v112;
    if ((*(v111 + 48))(v27, 1, v112))
    {
      sub_20CEF928C(v27, &qword_27C81C180);
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    else
    {
      (*(v40 + 16))(v20, v27, v39);
      sub_20CEF928C(v27, &qword_27C81C180);
      v41 = sub_20D5637B8();
      v42 = v44;
      (*(v40 + 8))(v20, v112);
    }

    sub_20D0D5764(v31, type metadata accessor for HomeHubsSelectionListView);
    v45 = sub_20CEE913C(v41, v42, &v119);

    *(v36 + 4) = v45;
    _os_log_impl(&dword_20CEB6000, v33, v34, "HomeHubsSelection selection onChange called, newValue %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F31FC70](v37, -1, -1);
    MEMORY[0x20F31FC70](v36, -1, -1);

    a1 = v113;
  }

  else
  {

    v43 = sub_20D0D5764(v31, type metadata accessor for HomeHubsSelectionListView);
  }

  v46 = *a1;
  MEMORY[0x28223BE20](v43);
  *(&v93 - 2) = a1;
  sub_20D06CE5C(sub_20D0D610C, v46, v13);
  v47 = v116;
  v48 = v117;
  v49 = *(v116 + 48);
  if (v49(v13, 1, v117) == 1)
  {
    return sub_20CEF928C(v13, &qword_27C820F48);
  }

  v94 = *(v47 + 32);
  v94(v115, v13, v48);
  v51 = sub_20D564348();
  v53 = v108;
  v52 = v109;
  v54 = v110;
  (*(v109 + 104))(v108, *MEMORY[0x277D15C60], v110);
  v55 = sub_20D048CC8(v53, v51);

  v56 = (*(v52 + 8))(v53, v54);
  if (v55)
  {
    v57 = sub_20D567C58();
    v58 = v107;
    (*(*(v57 - 8) + 56))(v107, 1, 1, v57);
    v59 = v116 + 16;
    v60 = v105;
    v61 = v117;
    (*(v116 + 16))(v105, v115, v117);
    v62 = v113;
    v63 = v101;
    sub_20D0D2EFC(v113, v101);
    sub_20D567C18();
    v64 = sub_20D567C08();
    v65 = (*(v59 + 64) + 32) & ~*(v59 + 64);
    v66 = (v104 + *(v99 + 80) + v65) & ~*(v99 + 80);
    v67 = swift_allocObject();
    v68 = MEMORY[0x277D85700];
    *(v67 + 16) = v64;
    *(v67 + 24) = v68;
    v94((v67 + v65), v60, v61);
    sub_20D0D2F60(v63, v67 + v66);
    sub_20CF18960(0, 0, v58, &unk_20D5C88F0, v67);

    v69 = sub_20D563D78();
    v70 = v115;
    if ((v69 & 1) == 0)
    {
      v71 = v95;
      sub_20D564358();
      v72 = v97;
      v73 = v96;
      v74 = v98;
      (*(v97 + 104))(v96, *MEMORY[0x277D15D18], v98);
      sub_20D0D470C(&qword_27C820F90, MEMORY[0x277D15D20]);
      v75 = sub_20D5677E8();
      v76 = *(v72 + 8);
      v76(v73, v74);
      v76(v71, v74);
      if ((v75 & 1) == 0)
      {
        v77 = v62 + *(v114 + 32);
        v78 = *v77;
        v79 = *(v77 + 8);
        LOBYTE(v119) = v78;
        v120 = v79;
        v118 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
        sub_20D567458();
      }
    }

    return (*(v116 + 8))(v70, v117);
  }

  else
  {
    MEMORY[0x28223BE20](v56);
    v80 = v113;
    *(&v93 - 2) = v113;
    v81 = v106;
    sub_20D06CE5C(sub_20D0D60F0, v46, v106);
    v82 = v117;
    if (v49(v81, 1, v117) == 1)
    {
      sub_20CEF928C(v81, &qword_27C820F48);
      v83 = 1;
      v85 = v115;
      v84 = v116;
      v87 = v111;
      v86 = v112;
      v88 = v102;
    }

    else
    {
      v88 = v102;
      sub_20D564368();
      v84 = v116;
      (*(v116 + 8))(v81, v82);
      v83 = 0;
      v85 = v115;
      v87 = v111;
      v86 = v112;
    }

    (*(v87 + 56))(v88, v83, 1, v86);
    v89 = v114;
    sub_20CEF9178(v88, v103, &qword_27C81C180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
    sub_20D5674E8();
    sub_20CEF928C(v88, &qword_27C81C180);
    v90 = v80 + *(v89 + 40);
    v91 = *v90;
    v92 = *(v90 + 8);
    LOBYTE(v119) = v91;
    v120 = v92;
    v118 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
    sub_20D567458();
    return (*(v84 + 8))(v85, v82);
  }
}

uint64_t sub_20D0D0DCC()
{
  v0 = sub_20D563818();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_20D564368();
  (*(v1 + 56))(v14, 0, 1, v0);
  type metadata accessor for HomeHubsSelectionListView(0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  MEMORY[0x20F31C980](v15);
  v16 = *(v4 + 56);
  sub_20CEF9178(v14, v6, &qword_27C81C180);
  sub_20CEF9178(v11, &v6[v16], &qword_27C81C180);
  v17 = v1;
  v18 = *(v1 + 48);
  if (v18(v6, 1, v0) != 1)
  {
    sub_20CEF9178(v6, v26, &qword_27C81C180);
    if (v18(&v6[v16], 1, v0) != 1)
    {
      v20 = v17;
      v21 = &v6[v16];
      v22 = v25;
      (*(v17 + 32))(v25, v21, v0);
      sub_20D0D470C(qword_27C820680, MEMORY[0x277CC95F0]);
      v19 = sub_20D5677E8();
      v23 = *(v20 + 8);
      v23(v22, v0);
      sub_20CEF928C(v11, &qword_27C81C180);
      sub_20CEF928C(v14, &qword_27C81C180);
      v23(v26, v0);
      sub_20CEF928C(v6, &qword_27C81C180);
      return v19 & 1;
    }

    sub_20CEF928C(v11, &qword_27C81C180);
    sub_20CEF928C(v14, &qword_27C81C180);
    (*(v17 + 8))(v26, v0);
    goto LABEL_6;
  }

  sub_20CEF928C(v11, &qword_27C81C180);
  sub_20CEF928C(v14, &qword_27C81C180);
  if (v18(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_20CEF928C(v6, &qword_27C81D948);
    v19 = 0;
    return v19 & 1;
  }

  sub_20CEF928C(v6, &qword_27C81C180);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_20D0D1238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v6 = sub_20D564458();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = sub_20D567C18();
  v5[18] = sub_20D567C08();
  v7 = swift_task_alloc();
  v5[19] = v7;
  *v7 = v5;
  v7[1] = sub_20D0D13D4;

  return MEMORY[0x28216F830](1);
}

uint64_t sub_20D0D13D4()
{
  *(*v1 + 160) = v0;

  v3 = sub_20D567BA8();
  if (v0)
  {
    v4 = sub_20D0D15C4;
  }

  else
  {
    v4 = sub_20D0D152C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20D0D152C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0D15C4()
{
  v1 = *(v0 + 160);

  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *v15;
    *(swift_task_alloc() + 16) = v15;
    sub_20D06CE5C(sub_20D0D60F0, v16, v14);

    v17 = sub_20D5643B8();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      sub_20CEF928C(*(v0 + 80), &qword_27C820F48);
      v19 = 1;
    }

    else
    {
      v20 = *(v0 + 80);
      sub_20D564368();
      (*(v18 + 8))(v20, v17);
      v19 = 0;
    }

    v21 = *(v0 + 160);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = sub_20D563818();
    (*(*(v24 - 8) + 56))(v22, v19, 1, v24);
    type metadata accessor for HomeHubsSelectionListView(0);
    sub_20CEF9178(v22, v23, &qword_27C81C180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
    sub_20D5674E8();

    sub_20CEF928C(v22, &qword_27C81C180);
    goto LABEL_10;
  }

  v3 = *(v0 + 40);
  *(v0 + 48) = v3;
  sub_20D0D470C(&qword_27C81B1B0, type metadata accessor for HMError);
  sub_20D563598();
  if (*(v0 + 56) != 2036 || (v5 = *(v0 + 120), v4 = *(v0 + 128), v6 = *(v0 + 104), v7 = *(v0 + 112), sub_20D564358(), (*(v7 + 104))(v5, *MEMORY[0x277D15D18], v6), v8 = MEMORY[0x20F3198F0](v4, v5), v9 = *(v7 + 8), v9(v5, v6), v9(v4, v6), (v8 & 1) == 0))
  {

    goto LABEL_6;
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 72);
  v12 = v11 + *(type metadata accessor for HomeHubsSelectionListView(0) + 36);
  v13 = *(v12 + 8);
  *(v0 + 16) = *v12;
  *(v0 + 24) = v13;
  *(v0 + 168) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567458();

LABEL_10:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20D0D19BC(unint64_t a1)
{
  v82 = sub_20D564388();
  v76 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v62 - v4;
  v5 = sub_20D5643B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v62 - v16;
  v17 = type metadata accessor for HomeHubsSelectionListView(0);
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v79 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v62 - v20);
  if (qword_27C81A1E0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v22 = sub_20D565988();
  __swift_project_value_buffer(v22, qword_27C81D330);
  v77 = a1;
  sub_20D0D2EFC(a1, v21);
  v23 = sub_20D565968();
  v24 = sub_20D567EC8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    v26 = v21 + *(v17 + 28);
    v27 = *v26;
    v28 = *(v26 + 1);
    v85 = v27;
    v86 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
    sub_20D567448();
    v29 = v84;
    sub_20D0D5764(v21, type metadata accessor for HomeHubsSelectionListView);
    *(v25 + 4) = v29;
    _os_log_impl(&dword_20CEB6000, v23, v24, "HomeHubsSelection isAutoMode onChange called, newValue %{BOOL}d", v25, 8u);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  else
  {
    sub_20D0D5764(v21, type metadata accessor for HomeHubsSelectionListView);
  }

  v30 = v77;
  v31 = v77 + *(v17 + 28);
  v32 = *v31;
  v33 = *(v31 + 8);
  v85 = v32;
  v86 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567448();
  if (v84 == 1)
  {
    v34 = sub_20D567C58();
    v35 = v80;
    (*(*(v34 - 8) + 56))(v80, 1, 1, v34);
    v36 = v30;
    v37 = v79;
    sub_20D0D2EFC(v36, v79);
    sub_20D567C18();
    v38 = sub_20D567C08();
    v39 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    *(v40 + 16) = v38;
    *(v40 + 24) = v41;
    sub_20D0D2F60(v37, v40 + v39);
    sub_20CF18960(0, 0, v35, &unk_20D5C88D8, v40);
  }

  else
  {
    v43 = *v30;
    v66 = *(*v30 + 16);
    if (v66)
    {
      a1 = 0;
      v70 = v43 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v69 = v6 + 16;
      v68 = *MEMORY[0x277D15C80];
      v67 = (v76 + 104);
      v79 = v76 + 16;
      v44 = (v76 + 8);
      v71 = (v6 + 8);
      v72 = v17;
      v74 = v6;
      v75 = v5;
      v73 = v8;
      v63 = v43;
      while (1)
      {
        if (a1 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v45 = *(v6 + 72);
        v78 = a1;
        (*(v6 + 16))(v8, v70 + v45 * a1, v5);
        v46 = sub_20D564398();
        (*v67)(v83, v68, v82);
        if (*(v46 + 16))
        {
          sub_20D0D470C(&qword_27C81FC20, MEMORY[0x277D15C90]);
          v47 = sub_20D5677B8();
          v48 = -1 << *(v46 + 32);
          v49 = v47 & ~v48;
          v80 = (v46 + 56);
          if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            break;
          }
        }

LABEL_9:
        a1 = v78 + 1;

        (*v44)(v83, v82);
        v8 = v73;
        v5 = v75;
        (*v71)(v73, v75);
        v6 = v74;
        v17 = v72;
        v43 = v63;
        if (a1 == v66)
        {
          v60 = 1;
          goto LABEL_19;
        }
      }

      v50 = ~v48;
      v51 = *(v76 + 72);
      v21 = *(v76 + 16);
      while (1)
      {
        v53 = v81;
        v52 = v82;
        v21(v81, *(v46 + 48) + v51 * v49, v82);
        sub_20D0D470C(&qword_27C81FC28, MEMORY[0x277D15C90]);
        v54 = sub_20D5677E8();
        v55 = *v44;
        (*v44)(v53, v52);
        if (v54)
        {
          break;
        }

        v49 = (v49 + 1) & v50;
        if (((*&v80[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v55(v83, v82);
      v56 = v74 + 32;
      v57 = v62;
      v58 = v75;
      (*(v74 + 32))(v62, v73, v75);
      v59 = v64;
      sub_20D564368();
      (*(v56 - 24))(v57, v58);
      v60 = 0;
    }

    else
    {
      v60 = 1;
LABEL_19:
      v59 = v64;
    }

    v61 = sub_20D563818();
    (*(*(v61 - 8) + 56))(v59, v60, 1, v61);
    sub_20CEF9178(v59, v65, &qword_27C81C180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
    sub_20D5674E8();
    return sub_20CEF928C(v59, &qword_27C81C180);
  }
}

uint64_t sub_20D0D22C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  v4[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v4[6] = sub_20D567C18();
  v4[7] = sub_20D567C08();
  v4[8] = type metadata accessor for HomeHubsSelectionListView(0);
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_20D0D2404;

  return MEMORY[0x28216E650]();
}

uint64_t sub_20D0D2404()
{
  *(*v1 + 80) = v0;

  v3 = sub_20D567BA8();
  if (v0)
  {
    v4 = sub_20D0D255C;
  }

  else
  {
    v4 = sub_20D0D60EC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20D0D255C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *v2;
  *(swift_task_alloc() + 16) = v2;
  sub_20D06CE5C(sub_20D0D4844, v3, v1);

  v4 = sub_20D5643B8();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_20CEF928C(v0[3], &qword_27C820F48);
    v6 = 1;
  }

  else
  {
    v7 = v0[3];
    sub_20D564368();
    (*(v5 + 8))(v7, v4);
    v6 = 0;
  }

  v8 = v0[10];
  v10 = v0[4];
  v9 = v0[5];
  v11 = sub_20D563818();
  (*(*(v11 - 8) + 56))(v9, v6, 1, v11);
  sub_20CEF9178(v9, v10, &qword_27C81C180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  sub_20D5674E8();

  sub_20CEF928C(v9, &qword_27C81C180);

  v12 = v0[1];

  return v12();
}