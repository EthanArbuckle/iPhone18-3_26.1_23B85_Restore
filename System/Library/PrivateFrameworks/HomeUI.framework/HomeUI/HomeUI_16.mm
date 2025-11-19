uint64_t sub_20D036050()
{
  v3 = (*MEMORY[0x277D18148] + MEMORY[0x277D18148]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20D036100;

  return v3();
}

uint64_t sub_20D036100(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20D036370(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_20D0363E8, 0, 0);
}

uint64_t sub_20D0363E8()
{
  v3 = (*MEMORY[0x277D18148] + MEMORY[0x277D18148]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_20CF1D594;

  return v3();
}

uint64_t HUTAFSection.header.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI12HUTAFSection_header);
  sub_20D5663C8();
  return v1;
}

uint64_t HUTAFField.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI10HUTAFField_label);
  sub_20D5663C8();
  return v1;
}

uint64_t HUTAFField.formKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey);
  sub_20D5663C8();
  return v1;
}

id HUTAFField.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_20D0368A8()
{
  sub_20D5663C8();
  v0 = sub_20D5677F8();

  return v0;
}

uint64_t UtilitySubscriptionInformationHelper.subscriptionID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI36UtilitySubscriptionInformationHelper_subscriptionID);
  sub_20D5663C8();
  return v1;
}

id UtilitySubscriptionInformationHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilitySubscriptionInformationHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t AddressMatchTypeHelper.init(rawValue:)(unint64_t result, char a2)
{
  if (a2 & 1 | (result > 2))
  {
    return 0;
  }

  return result;
}

uint64_t sub_20D036C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D036C74(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20D568BF8() & 1;
  }
}

unint64_t sub_20D036D18()
{
  result = qword_27C81F888;
  if (!qword_27C81F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F888);
  }

  return result;
}

uint64_t sub_20D036E24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF5FFC;

  return sub_20D036370(v2, v3);
}

char *sub_20D036ED0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HUUtilityConfigurationHelper_quickLookupFields;
  v5 = sub_20CEF5CF4(&unk_2823CE270);
  swift_arrayDestroy();
  *&v2[v4] = v5;
  *&v2[OBJC_IVAR___HUUtilityConfigurationHelper_config] = a1;
  v6 = a1;
  v7 = sub_20D035680();
  v8 = v7;
  *&v2[OBJC_IVAR___HUUtilityConfigurationHelper_fields] = v7;
  v29 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    sub_20D5663C8();
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v11 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F31DD20](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (*(v12 + OBJC_IVAR____TtC6HomeUI10HUTAFField_required))
      {
        sub_20D5688C8();
        sub_20D568908();
        sub_20D568918();
        sub_20D5688D8();
      }

      else
      {
      }

      ++v11;
      if (v13 == i)
      {
        v14 = v29;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_16:

  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_32:

    v18 = MEMORY[0x277D84F90];
LABEL_33:
    v26 = sub_20CEF30B0(v18);

    *&v2[OBJC_IVAR___HUUtilityConfigurationHelper_requiredFields] = v26;
    v28.receiver = v2;
    v28.super_class = ObjectType;
    return objc_msgSendSuper2(&v28, sel_init);
  }

  v15 = sub_20D568768();
  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_19:
  v29 = v10;
  result = sub_20CEF0AC8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v29;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x20F31DD20](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = *&v19[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
      v22 = *&v19[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8];
      sub_20D5663C8();

      v29 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20CEF0AC8((v23 > 1), v24 + 1, 1);
        v18 = v29;
      }

      ++v17;
      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
    }

    while (v15 != v17);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

double sub_20D0371D8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D04755C(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_20D0372A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D04755C(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_20D0373C8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t HUControlCenterModuleViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t HUControlCenterModuleViewController.allowsCharacteristicNotifications.getter()
{
  v1 = OBJC_IVAR___HUControlCenterModuleViewController_allowsCharacteristicNotifications;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HUControlCenterModuleViewController.allowsCharacteristicNotifications.setter(char a1)
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_allowsCharacteristicNotifications;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_20D0376DC()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager;
  v5 = *(v0 + OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager);
  }

  else
  {
    sub_20D037838(v3);
    v7 = type metadata accessor for ControlCenterModuleLayoutManager();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_disableLayoutRowCropping] = 0;
    sub_20D0475A4(v3, &v8[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config], type metadata accessor for ControlCenterModuleConfiguration);
    v14.receiver = v8;
    v14.super_class = v7;
    v9 = objc_msgSendSuper2(&v14, sel_init);
    sub_20D047228(v3, type metadata accessor for ControlCenterModuleConfiguration);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v10 = *(v0 + v4);
    *(v0 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

void sub_20D037838(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 itemManager];
  type metadata accessor for ControlCenterModuleItemManager();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
    v6 = v4;
    swift_beginAccess();
    sub_20D0475A4(v6 + v5, a1, type metadata accessor for ControlCenterModuleConfiguration);
  }

  else
  {

    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v7 = sub_20D565988();
    __swift_project_value_buffer(v7, qword_281120958);
    v8 = v1;
    v9 = sub_20D565968();
    v10 = sub_20D567EB8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v11 = 136315394;
      v14 = sub_20D568E18();
      v16 = sub_20CEE913C(v14, v15, v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = [v8 itemManager];
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&dword_20CEB6000, v9, v10, "%s: Failed to unwrap item manager to ControlCenterModuleItemManager: %@", v11, 0x16u);
      sub_20CEF928C(v12, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x20F31FC70](v13, -1, -1);
      MEMORY[0x20F31FC70](v11, -1, -1);
    }

    type metadata accessor for ControlCenterModuleConfiguration.Content(0);
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for ControlCenterModuleConfiguration(0);
    *(a1 + *(v18 + 24)) = 3;
    *(a1 + *(v18 + 20)) = 0;
  }
}

uint64_t HUControlCenterModuleViewController.accessAllowedForCurrentLockState.getter()
{
  v1 = OBJC_IVAR___HUControlCenterModuleViewController_accessAllowedForCurrentLockState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HUControlCenterModuleViewController.accessAllowedForCurrentLockState.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___HUControlCenterModuleViewController_accessAllowedForCurrentLockState;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v7 = [v1 itemManager];
    type metadata accessor for ControlCenterModuleItemManager();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v1[v4];
      v10 = v8[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_accessAllowedForCurrentLockState];
      v8[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_accessAllowedForCurrentLockState] = v9;
      if (v9 != v10)
      {
        [v8 recalculateVisibilityAndSortAllItems];
      }
    }

    v11 = sub_20D03A49C();
    v12 = v1[OBJC_IVAR___HUControlCenterModuleViewController_moduleState];
    v1[OBJC_IVAR___HUControlCenterModuleViewController_moduleState] = v11;
    sub_20D039660(v12);
    sub_20D03A96C();
    return sub_20D03ABD8();
  }

  return result;
}

uint64_t sub_20D037C88()
{
  if ([v0 kind] == 1)
  {
    return 0;
  }

  result = [v0 gridSizeClass];
  if (!result)
  {
    return result;
  }

  if ([v0 gridSizeClass] == 2)
  {
    return 0;
  }

  if ([v0 gridSizeClass] != 4)
  {
    return 1;
  }

  v2 = sub_20D037D28();
  v5 = v4 != 2;
  if (v2 != 2)
  {
    v5 = 1;
  }

  return (v3 & 1) != 0 || v5;
}

id sub_20D037D28()
{
  v1 = v0;
  v2 = sub_20D5638C8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v8 = result;
    MEMORY[0x20F318D30](0, 0);
    v9 = sub_20D563868();
    (*(v3 + 8))(v6, v2);
    v10 = [v8 cellForItemAtIndexPath_];

    if (v10)
    {
      type metadata accessor for TileCell();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = sub_20D046460(v11);

        return v12;
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HUControlCenterModuleViewController.init(delegate:of:itemManager:with:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    v7 = sub_20D567A58();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1 ofKind:a2 itemManager:a3 withPreviews:v7];
  swift_unknownObjectRelease();

  return v8;
}

id HUControlCenterModuleViewController.init(delegate:of:itemManager:with:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___HUControlCenterModuleViewController_allowsCharacteristicNotifications] = 0;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_showTilePrefixes] = 1;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_cellInsetsLayoutMarginsFromSafeArea] = 1;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_cellBackgroundDisplayStyle] = 1;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_expandedModuleKind] = 1;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_isExpanded] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController] = 0;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode] = 0;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_accessAllowedForCurrentLockState] = 1;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_updatesUIOnEditingChanged] = 1;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_notificationsDisabled] = 2;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_moduleState] = 0;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_insetContent] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_backgroundView] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_supplementalView] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius] = 0;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics] = 0;
  v4[OBJC_IVAR___HUControlCenterModuleViewController_reloadsForGridSizeClassChanges] = 1;
  type metadata accessor for ControlCenterModuleItemManager();
  v8 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass] = *(v8 + *(type metadata accessor for ControlCenterModuleConfiguration(0) + 20));
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_kind] = a2;
  if (a4)
  {
    if (a4 >> 62)
    {
LABEL_23:
      v9 = sub_20D568768();
      if (v9)
      {
LABEL_4:
        v10 = 0;
        v11 = MEMORY[0x277D84F90];
        do
        {
          v42 = v11;
          v12 = v10;
          while (1)
          {
            if ((a4 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x20F31DD20](v12, a4);
            }

            else
            {
              if (v12 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v13 = *(a4 + 8 * v12 + 32);
            }

            v14 = v13;
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            aBlock = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration];
            v16 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 32];
            v15 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 48];
            v17 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 16];
            v52 = *&v13[OBJC_IVAR___HUControlCenterModulePreview_configuration + 64];
            v50 = v16;
            v51 = v15;
            v49 = v17;
            sub_20CEF9178(&aBlock, &v43, &unk_27C81F978);

            if (v51 != 0xFF)
            {
              break;
            }

            ++v12;
            if (v10 == v9)
            {
              v11 = v42;
              goto LABEL_25;
            }
          }

          v18 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_20CEE88C4(0, *(v42 + 2) + 1, 1, v42);
          }

          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          v21 = v18;
          if (v20 >= v19 >> 1)
          {
            v21 = sub_20CEE88C4((v19 > 1), v20 + 1, 1, v18);
          }

          v47 = v52;
          v45 = v50;
          v46 = v51;
          v22 = aBlock;
          v43 = aBlock;
          v44 = v49;
          *(v21 + 2) = v20 + 1;
          v11 = v21;
          v23 = &v21[72 * v20];
          *(v23 + 2) = v22;
          v24 = v44;
          v25 = v45;
          v26 = v46;
          *(v23 + 12) = v47;
          *(v23 + 4) = v25;
          *(v23 + 5) = v26;
          *(v23 + 3) = v24;
        }

        while (v10 != v9);
        goto LABEL_25;
      }
    }

    else
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_4;
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_25:

    goto LABEL_26;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_26:
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_previewRegistry] = v11;
  type metadata accessor for ControlCenterModuleViewControllerAnalytics();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC6HomeUI42ControlCenterModuleViewControllerAnalytics_analyticsAppearInterval;
  v29 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = v27 + OBJC_IVAR____TtC6HomeUI42ControlCenterModuleViewControllerAnalytics_lastTileModuleExistsEvent;
  *v30 = 2;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 33) = 0u;
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_analyticsController] = v27;
  type metadata accessor for GalleryPreviewViewModel();
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0;
  *(v31 + 72) = 3;
  *(v31 + 88) = 0;
  *(v31 + 96) = 0;
  *(v31 + 80) = 0;
  sub_20D563938();
  *&v4[OBJC_IVAR___HUControlCenterModuleViewController_galleryPreviewViewModel] = v31;
  v53.receiver = v4;
  v53.super_class = HUControlCenterModuleViewController;
  v32 = objc_msgSendSuper2(&v53, sel_initUsingCompositionalLayoutWithItemManager_, a3);
  [a3 setDelegate_];
  swift_unknownObjectWeakAssign();
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 sharedDispatcher];
  [v35 addHomeManagerObserver_];

  v36 = [v34 itemManager];
  v37 = [v36 firstFastUpdateFuture];

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *&v50 = sub_20D03AFF8;
  *(&v50 + 1) = v38;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_20CF13714;
  *(&v49 + 1) = &block_descriptor_31;
  v39 = _Block_copy(&aBlock);

  v40 = [v37 addSuccessBlock_];
  _Block_release(v39);

  swift_unknownObjectRelease();
  return v34;
}

void sub_20D0385D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_20D03A49C();
    v3 = v1[OBJC_IVAR___HUControlCenterModuleViewController_moduleState];
    v1[OBJC_IVAR___HUControlCenterModuleViewController_moduleState] = v2;
    sub_20D039660(v3);
    sub_20D03A96C();
    sub_20D03ABD8();
  }
}

id HUControlCenterModuleViewController.init(delegate:of:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    v5 = sub_20D567A58();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1 ofKind:a2 withPreviews:v5];
  swift_unknownObjectRelease();

  return v6;
}

uint64_t HUControlCenterModuleViewController.init(delegate:of:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20D0465E4(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

Swift::Void __swiftcall HUControlCenterModuleViewController.viewDidLoad()()
{
  v10.super_class = HUControlCenterModuleViewController;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 setScrollEnabled_];

  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  [v6 _setSafeAreaInsetsFrozen_];

  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 setClipsToBounds_];

    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Void __swiftcall HUControlCenterModuleViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v47 = a1;
  v2 = sub_20D5637A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v10 = sub_20D565988();
  __swift_project_value_buffer(v10, qword_281120958);
  v11 = v1;
  v12 = sub_20D565968();
  v13 = sub_20D567EC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v44[1] = v6;
    v15 = v14;
    v44[0] = swift_slowAlloc();
    v48 = v44[0];
    *v15 = 136315138;
    v16 = [v11 debugDescription];
    v17 = v5;
    v18 = v3;
    v19 = v2;
    v20 = sub_20D567838();
    v22 = v21;

    v23 = v20;
    v2 = v19;
    v3 = v18;
    v5 = v17;
    v24 = sub_20CEE913C(v23, v22, &v48);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_20CEB6000, v12, v13, "%s: viewWillAppear", v15, 0xCu);
    v25 = v44[0];
    __swift_destroy_boxed_opaque_existential_1(v44[0]);
    MEMORY[0x20F31FC70](v25, -1, -1);
    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  [v11 setAllowsCharacteristicNotifications_];
  v49.receiver = v11;
  v49.super_class = HUControlCenterModuleViewController;
  v26 = v47;
  objc_msgSendSuper2(&v49, sel_viewWillAppear_, v47);
  v27 = [v11 view];
  if (v27)
  {
    v28 = v27;
    if (v11[OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode])
    {
      v29 = 0;
    }

    else
    {
      v29 = [v11 isEditing] ^ 1;
    }

    [v28 setUserInteractionEnabled_];

    v30 = v11[OBJC_IVAR___HUControlCenterModuleViewController_notificationsDisabled];
    if (v30 == 2 || (v30 & 1) != 0)
    {
      v11[OBJC_IVAR___HUControlCenterModuleViewController_notificationsDisabled] = 0;
      v31 = [v11 itemManager];
      type metadata accessor for ControlCenterModuleItemManager();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = *(v32 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider);
        [v33 setThawPredictionsForNextReload_];
      }

      v34 = [v11 delegate];
      if (v34)
      {
        [v34 controlCenterModuleViewController:v11 moduleWillAppear:v26];
        swift_unknownObjectRelease();
      }

      v35 = [v11 itemManager];
      v36 = [v35 home];

      if (v36)
      {
        v37 = [v11 delegate];
        if (v37)
        {
          [v37 controlCenterModuleViewController:v11 didStartDisplayingHome:v36];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    v38 = v45;
    sub_20D037838(v45);
    v39 = v38;
    v40 = v46;
    sub_20D04775C(v39, v46, type metadata accessor for ControlCenterModuleConfiguration.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20D047228(v40, type metadata accessor for ControlCenterModuleConfiguration.Content);
    if (!EnumCaseMultiPayload)
    {
      v42 = objc_opt_self();
      sub_20D563788();
      v43 = sub_20D563718();
      (*(v3 + 8))(v5, v2);
      [v42 setDateOfLastRecommendationUIOpened_];
    }

    sub_20D0C5EB4();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HUControlCenterModuleViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v3 = sub_20D565988();
  __swift_project_value_buffer(v3, qword_281120958);
  v4 = v1;
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v4 debugDescription];
    v10 = sub_20D567838();
    v12 = v11;

    v13 = sub_20CEE913C(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_20CEB6000, v5, v6, "%s: viewIsAppearing", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  v19.receiver = v4;
  v19.super_class = HUControlCenterModuleViewController;
  objc_msgSendSuper2(&v19, sel_viewIsAppearing_, a1);
  v14 = sub_20D03A49C();
  v15 = *(v4 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState);
  *(v4 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState) = v14;
  sub_20D039660(v15);
  sub_20D03A96C();
  sub_20D03ABD8();
  v16 = [v4 delegate];
  if (v16)
  {
    v17 = [v16 contentModuleContext];
    swift_unknownObjectRelease();
    [v17 invalidateContainerViewsForPlatterTreatment];
  }
}

Swift::Void __swiftcall HUControlCenterModuleViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v3 = sub_20D565988();
  __swift_project_value_buffer(v3, qword_281120958);
  v4 = v1;
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v4 debugDescription];
    v10 = sub_20D567838();
    v12 = v11;

    v13 = sub_20CEE913C(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_20CEB6000, v5, v6, "%s: viewDidDisappear", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  [v4 setAllowsCharacteristicNotifications_];
  v19.receiver = v4;
  v19.super_class = HUControlCenterModuleViewController;
  objc_msgSendSuper2(&v19, sel_viewDidDisappear_, a1);
  if ((*(v4 + OBJC_IVAR___HUControlCenterModuleViewController_isExpanded) & 1) == 0)
  {
    *(v4 + OBJC_IVAR___HUControlCenterModuleViewController_notificationsDisabled) = 1;
    v14 = [v4 delegate];
    if (v14)
    {
      [v14 controlCenterModuleViewController:v4 moduleDidDisappear:a1];
      swift_unknownObjectRelease();
    }

    v15 = [v4 itemManager];
    v16 = [v15 home];

    if (v16)
    {

      v17 = [v4 delegate];
      if (v17)
      {
        [v17 controlCenterModuleViewController:v4 didStartDisplayingHome:0];
        swift_unknownObjectRelease();
      }
    }

    sub_20D0C8E34();
    sub_20D0C61C4();
    if (qword_281120650 != -1)
    {
      swift_once();
    }

    sub_20D05AEFC();
  }
}

void sub_20D039660(char a1)
{
  v2 = *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState);
  if (a1)
  {
    if (a1 == 1)
    {
      if (*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState))
      {
        if (v2 != 1)
        {
          v3 = 0;
          goto LABEL_17;
        }

        if (*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_errorViewController))
        {
          goto LABEL_20;
        }

LABEL_12:
        v3 = 1;
LABEL_17:
        sub_20D039B5C(v3);
        goto LABEL_20;
      }

      sub_20D039B5C(0);
    }

    else if (*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState))
    {
      if (v2 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (!*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState))
  {
    if (*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController))
    {
      goto LABEL_20;
    }

LABEL_15:
    v4 = 1;
    goto LABEL_19;
  }

  if (v2 == 1)
  {
    sub_20D039724(0);
    goto LABEL_12;
  }

  v4 = 0;
LABEL_19:
  sub_20D039724(v4);
LABEL_20:

  sub_20D03B390();
}

void sub_20D039724(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB98);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  if (a1)
  {
    v6 = [v2 contentMetrics];
    v7 = type metadata accessor for GalleryPreviewViewModel();
    v8 = sub_20D04755C(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
    sub_20D5667D8();
    v9 = sub_20D047800();
    sub_20D567148();

    v31 = v7;
    v32 = v9;
    v33 = v8;
    swift_getOpaqueTypeConformance2();
    v10 = sub_20D5674C8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FBA8);
    v12 = objc_allocWithZone(v11);
    v30 = v10;
    v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FBB0));
    v14 = sub_20D5668C8();
    *&v12[qword_27C81E940] = v14;
    v15 = v14;
    sub_20D5668E8();

    v12[qword_27C81E948] = 0;
    v29.receiver = v12;
    v29.super_class = v11;
    v16 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
    v17 = [v16 view];
    if (v17)
    {
      v18 = v17;
      v19 = *&v2[OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController];
      *&v2[OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController] = v16;
      v20 = v16;

      sub_20D03A96C();
      [v2 addChildViewController_];
      [v2 setSupplementalView_];
      [v20 didMoveToParentViewController_];
    }

    else
    {
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v25 = sub_20D565988();
      __swift_project_value_buffer(v25, qword_281120958);
      v26 = sub_20D565968();
      v27 = sub_20D567EA8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_20CEB6000, v26, v27, "Failed to build ItemPlaceholderView", v28, 2u);
        MEMORY[0x20F31FC70](v28, -1, -1);
      }
    }
  }

  else
  {
    [v2 setSupplementalView_];
    v21 = OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController;
    v22 = *&v2[OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController];
    if (v22)
    {
      [v22 didMoveToParentViewController_];
      v22 = *&v2[v21];
      if (v22)
      {
        v23 = [v22 view];
        if (!v23)
        {
          __break(1u);
          return;
        }

        v24 = v23;
        [v23 removeFromSuperview];

        v22 = *&v2[v21];
        if (v22)
        {
          [v22 removeFromParentViewController];
          v22 = *&v2[v21];
        }
      }
    }

    *&v2[v21] = 0;
  }
}

void sub_20D039B5C(char a1)
{
  v2 = v1;
  v4 = sub_20D5666A8();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v74 - v8;
  v9 = sub_20D5666C8();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v77 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v74 - v17);
  v19 = sub_20D5666D8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  *&v28 = MEMORY[0x28223BE20](v26).n128_u64[0];
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v29 = &v74 - v27;
  sub_20D03A750(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20CEF928C(v18, &qword_27C81FB90);
LABEL_4:
    v30 = [v2 supplementalView];
    if (v30)
    {
      v31 = v30;
      v32 = [v2 delegate];
      if (v32)
      {
        v33 = [v32 contentModuleContext];
        swift_unknownObjectRelease();
        [v33 invalidateContainerViewsForPlatterTreatment];
      }
    }

    [v2 setSupplementalView_];
    v34 = OBJC_IVAR___HUControlCenterModuleViewController_errorViewController;
    v35 = *&v2[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController];
    if (!v35)
    {
      goto LABEL_13;
    }

    [v35 didMoveToParentViewController_];
    v36 = *&v2[v34];
    if (!v36)
    {
      goto LABEL_13;
    }

    v37 = [v36 view];
    if (v37)
    {
      v38 = v37;
      [v37 removeFromSuperview];

      v39 = *&v2[v34];
      if (v39)
      {
        [v39 removeFromParentViewController];
        v40 = *&v2[v34];
LABEL_14:
        *&v2[v34] = 0;

        return;
      }

LABEL_13:
      v40 = 0;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_41;
  }

  v41 = v19;
  (*(v20 + 32))(v29, v18, v19);
  v42 = OBJC_IVAR___HUControlCenterModuleViewController_errorViewController;
  v43 = *&v2[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController];
  v76 = v41;
  if (v43)
  {
    v75 = v20;
    v44 = v43;
    v45 = [v44 parentViewController];
    if (v45)
    {

      v46 = [v44 view];
      v47 = v44;

      if (!v46)
      {
LABEL_41:
        __break(1u);
        return;
      }

      v48 = [v46 superview];

      v41 = v76;
      if (v48)
      {

        (*(v75 + 16))(v25, v29, v41);
        sub_20D567348();
        [v2 gridSizeClass];
        if (CCUINumberOfRowsForGridSizeClass() < 2)
        {
          [v2 gridSizeClass];
          if (CCUINumberOfColumnsForGridSizeClass() <= 1)
          {
            v72 = MEMORY[0x277D18018];
          }

          else
          {
            v72 = MEMORY[0x277D18010];
          }

          (*(v80 + 104))(v78, *v72, v81);
        }

        else
        {
          (*(v80 + 104))(v78, *MEMORY[0x277D18020], v81);
        }

        v73 = v77;
        sub_20D5666B8();
        sub_20D5667F8();
        sub_20D5668D8();

        (*(v82 + 8))(v73, v83);
        (*(v75 + 8))(v29, v76);

        return;
      }
    }

    else
    {
      v47 = v44;
    }

    v20 = v75;
  }

  v49 = *(v20 + 16);
  v78 = v29;
  v49(v22, v29, v41);
  sub_20D567348();
  (*(v80 + 104))(v6, *MEMORY[0x277D18020], v81);
  v50 = v79;
  sub_20D5666B8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FBB8);
  v52 = objc_allocWithZone(v51);
  v54 = v82;
  v53 = v83;
  (*(v82 + 16))(v11, v50, v83);
  v55 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FBC0));
  v56 = sub_20D5668C8();
  *&v52[qword_27C81E940] = v56;
  v57 = v56;
  sub_20D5668E8();

  v52[qword_27C81E948] = 1;
  v84.receiver = v52;
  v84.super_class = v51;
  v58 = objc_msgSendSuper2(&v84, sel_initWithNibName_bundle_, 0, 0);
  (*(v54 + 8))(v50, v53);
  v59 = [v58 view];
  if (v59)
  {
    v60 = v59;
    [v2 addChildViewController_];
    [v2 setSupplementalView_];
    [v58 didMoveToParentViewController_];
    v61 = *&v2[v42];
    *&v2[v42] = v58;
    v62 = v58;

    v63 = [v2 delegate];
    if (v63)
    {
      v64 = [v63 contentModuleContext];
      swift_unknownObjectRelease();
      v65 = v78;
      if (v64)
      {
        [v64 invalidateContainerViewsForPlatterTreatment];

        (*(v20 + 8))(v65, v76);
      }

      else
      {
        (*(v20 + 8))(v78, v76);
      }
    }

    else
    {

      (*(v20 + 8))(v78, v76);
    }
  }

  else
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v66 = sub_20D565988();
    __swift_project_value_buffer(v66, qword_281120958);
    v67 = sub_20D565968();
    v68 = sub_20D567EA8();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v78;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_20CEB6000, v67, v68, "Failed to build HomeDataErrorView", v71, 2u);
      MEMORY[0x20F31FC70](v71, -1, -1);
    }

    else
    {
    }

    (*(v20 + 8))(v70, v76);
  }
}

uint64_t sub_20D03A49C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v23 - v2);
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FBC8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v23 - v13;
  v15 = *(v8 + 56);
  v16 = [v0 contentRenderingMode];
  sub_20D037838(v6);
  sub_20D04775C(v6, &v14[v15], type metadata accessor for ControlCenterModuleConfiguration.Content);
  sub_20D03A750(v3);
  v17 = sub_20D5666D8();
  v18 = (*(*(v17 - 8) + 48))(v3, 1, v17);
  sub_20CEF928C(v3, &qword_27C81FB90);
  v19 = *(v8 + 56);
  v20 = *(v8 + 72);
  *v10 = v16;
  sub_20D04775C(&v14[v15], v10 + v19, type metadata accessor for ControlCenterModuleConfiguration.Content);
  *(v10 + v20) = v18 != 1;
  if (v16 == 1)
  {
    goto LABEL_4;
  }

  type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    if (!v16)
    {
LABEL_9:
      sub_20D047228(v10 + v19, type metadata accessor for ControlCenterModuleConfiguration.Content);
      return 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_4:
      sub_20D047228(v10 + v19, type metadata accessor for ControlCenterModuleConfiguration.Content);
      return 0;
    }

    if (!v16 && v18 != 1)
    {
      goto LABEL_9;
    }
  }

  sub_20CEF928C(v10, &qword_27C81FBC8);
  return 2;
}

void sub_20D03A750(char **a1@<X8>)
{
  if ([v1 accessAllowedForCurrentLockState])
  {
    v11 = [v1 itemManager];
    type metadata accessor for ControlCenterModuleItemManager();
    if (swift_dynamicCastClass())
    {
      sub_20D0BA1B0(a1);

      return;
    }

    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v4 = sub_20D565988();
    __swift_project_value_buffer(v4, qword_281120958);
    v5 = sub_20D565968();
    v6 = sub_20D567EA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CEB6000, v5, v6, "Missing ControlCenterModuleItemManager", v7, 2u);
      MEMORY[0x20F31FC70](v7, -1, -1);
    }

    v3 = MEMORY[0x277D18060];
  }

  else
  {
    v3 = MEMORY[0x277D18030];
  }

  v8 = *v3;
  v9 = sub_20D5666D8();
  v12 = *(v9 - 8);
  v12[13](a1, v8, v9);
  v10 = v12[7];

  (v10)(a1, 0, 1, v9);
}

void sub_20D03A96C()
{
  if (*&v0[OBJC_IVAR___HUControlCenterModuleViewController_placeholderViewController])
  {
    v1 = *&v0[OBJC_IVAR___HUControlCenterModuleViewController_galleryPreviewViewModel];
    sub_20D03C00C(v11);
    sub_20CF8CDE0(v11);
    if (*(v1 + 80) != [v0 gridSizeClass])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_20D04755C(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
      sub_20D5638F8();
    }

    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;

      if (*(v1 + 88) == v6 && *(v1 + 96) == v8)
      {
        *(v1 + 88) = v6;
        *(v1 + 96) = v8;
      }

      else
      {
        v10 = swift_getKeyPath();
        MEMORY[0x28223BE20](v10);
        sub_20D04755C(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
        sub_20D5638F8();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20D03ABD8()
{
  v1 = v0;
  v2 = sub_20D5666A8();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D5666C8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = sub_20D5666D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_20D03A750(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_20CEF928C(v10, &qword_27C81FB90);
  }

  (*(v12 + 32))(v17, v10, v11);
  v19 = *&v0[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController];
  if (v19)
  {
    (*(v12 + 16))(v14, v17, v11);
    v20 = v19;
    [v1 gridSizeClass];
    if (CCUINumberOfRowsForGridSizeClass() < 2)
    {
      [v1 gridSizeClass];
      if (CCUINumberOfColumnsForGridSizeClass() <= 1)
      {
        v21 = MEMORY[0x277D18018];
      }

      else
      {
        v21 = MEMORY[0x277D18010];
      }

      (*(v25 + 104))(v4, *v21, v2);
    }

    else
    {
      (*(v25 + 104))(v4, *MEMORY[0x277D18020], v2);
    }

    sub_20D5666B8();
    sub_20D5667F8();
    sub_20D5668D8();

    (*(v26 + 8))(v7, v27);
  }

  v22 = [v1 delegate];
  if (v22)
  {
    v23 = [v22 contentModuleContext];
    swift_unknownObjectRelease();
    [v23 invalidateContainerViewsForPlatterTreatment];
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D03B018(char a1)
{
  v2 = v1[OBJC_IVAR___HUControlCenterModuleViewController_insetContent];
  v1[OBJC_IVAR___HUControlCenterModuleViewController_insetContent] = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  v3 = [v1 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 collectionViewLayout];

  [v5 invalidateLayout];
  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutIfNeeded];

  v8 = [v1 itemManager];
  v9 = [v1 itemManager];
  v10 = [v9 allDisplayedItems];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v11 = sub_20D567D08();

  sub_20CF81C08(v11);

  v12 = sub_20D567A58();

  [v8 reconfigureUIRepresentationForItems:v12 withAnimation:1];
}

void sub_20D03B1DC(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  if (a1)
  {
    v4 = objc_opt_self();
    v8[4] = sub_20D0478B0;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_20CFFFE8C;
    v8[3] = &block_descriptor_161;
    v5 = _Block_copy(v8);
    v6 = v1;

    [v4 animateWithDuration:v5 animations:0.2];

    _Block_release(v5);
  }

  else
  {
    v7 = [v1 isEditing] && (sub_20D037C88() & 1) != 0;
    sub_20D03B018(v7);
  }
}

void sub_20D03B390()
{
  if (!v0[OBJC_IVAR___HUControlCenterModuleViewController_moduleState] || v0[OBJC_IVAR___HUControlCenterModuleViewController_moduleState] == 2 && (sub_20D037C88() & 1) != 0 && [v0 isEditing])
  {
    v1 = OBJC_IVAR___HUControlCenterModuleViewController_backgroundView;
    v2 = *&v0[OBJC_IVAR___HUControlCenterModuleViewController_backgroundView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR___HUControlCenterModuleViewController_backgroundView];
    }

    else
    {
      v5 = [objc_opt_self() controlCenterModuleBackgroundMaterial];
      v6 = *&v0[v1];
      *&v0[v1] = v5;
      v7 = v5;

      if (!v7)
      {
        if (qword_281120950 == -1)
        {
LABEL_20:
          v24 = sub_20D565988();
          __swift_project_value_buffer(v24, qword_281120958);
          oslog = sub_20D565968();
          v25 = sub_20D567EB8();
          if (os_log_type_enabled(oslog, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_20CEB6000, oslog, v25, "controlCenterModuleBackgroundMaterial returned nil", v26, 2u);
            MEMORY[0x20F31FC70](v26, -1, -1);
          }

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_20;
      }

      v3 = v7;
      v2 = 0;
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v0;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_20D0476EC;
    *(v10 + 24) = v9;
    v32 = sub_20CF14D00;
    v33 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_20D03B848;
    v31 = &block_descriptor_126;
    v11 = _Block_copy(&aBlock);
    v12 = v2;
    v13 = v3;
    v14 = v0;

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v16 = [v13 superview];
      if (v16)
      {

        v17 = 0;
LABEL_17:
        [v13 setAlpha_];

        sub_20CEC8164(v17);
        return;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      *(v18 + 24) = v14;
      v19 = swift_allocObject();
      v17 = sub_20D047708;
      *(v19 + 16) = sub_20D047708;
      *(v19 + 24) = v18;
      v32 = sub_20D047880;
      v33 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_20D03B848;
      v31 = &block_descriptor_136;
      v20 = _Block_copy(&aBlock);
      v21 = v13;
      v22 = v14;

      [v8 performWithoutAnimation_];
      _Block_release(v20);
      v23 = swift_isEscapingClosureAtFileLocation();

      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v4 = *&v0[OBJC_IVAR___HUControlCenterModuleViewController_backgroundView];
  if (v4)
  {

    [v4 setAlpha_];
  }
}

void sub_20D03B870(void *a1, void *a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [a2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 insertSubview:a1 atIndex:0];

  [a1 setAlpha_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20D5BC4C0;
  v7 = [a1 leadingAnchor];
  v8 = [a2 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [a1 trailingAnchor];
  v13 = [a2 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [a1 topAnchor];
  v18 = [a2 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [a1 bottomAnchor];
  v23 = [a2 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 bottomAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_20CECF940(0, &qword_28111FEC0);
  v28 = sub_20D567A58();

  [v25 activateConstraints_];
}

void sub_20D03BC30(void *a1)
{
  [a1 removeFromSuperview];
  v2 = OBJC_IVAR___HUControlCenterModuleViewController_supplementalView;
  v3 = *&v1[OBJC_IVAR___HUControlCenterModuleViewController_supplementalView];
  if (v3)
  {
    v4 = v3;
    if ([v1 gridSizeClass])
    {
      [v1 compactContinuousCornerRadius];
    }

    else
    {
      v5 = MEMORY[0x20F31E320]() * 0.33;
    }

    [v4 _setContinuousCornerRadius_];
    v6 = [v1 view];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v4 setFrame_];
    v16 = [v1 view];
    if (!v16)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v17 = v16;
    [v16 addSubview_];
  }

  v18 = [v1 collectionView];
  if (!v18)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 setHidden_];
}

void sub_20D03BDCC(char a1)
{
  v3 = [v1 supplementalView];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    if (a1)
    {
      v6 = objc_opt_self();
      aBlock[4] = sub_20D047884;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CFFFE8C;
      aBlock[3] = &block_descriptor_142;
      v7 = _Block_copy(aBlock);
      v8 = v1;
      v9 = v4;

      [v6 animateWithDuration:v7 animations:0.2];

      _Block_release(v7);
    }

    else
    {
      v10 = v1;
      v12 = v4;
      if ([v10 gridSizeClass])
      {
        [v10 compactContinuousCornerRadius];
      }

      else
      {
        v11 = MEMORY[0x20F31E320]() * 0.33;
      }

      [v12 _setContinuousCornerRadius_];
    }
  }
}

id sub_20D03BF94(void *a1, id a2)
{
  if ([a2 gridSizeClass])
  {
    [a2 compactContinuousCornerRadius];
  }

  else
  {
    v4 = MEMORY[0x20F31E320]() * 0.33;
  }

  return [a1 _setContinuousCornerRadius_];
}

void sub_20D03C00C(uint64_t a1@<X8>)
{
  v2 = 1701670760;
  v3 = *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_previewRegistry);
  if (*(v3 + 16))
  {
    v15 = a1;
    v16 = *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_previewRegistry);
    v4 = 0;
    v5 = v3 + 48;
    while (v4 < *(v3 + 16))
    {
      v2 = *(v5 - 16);
      v6 = *v5;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
      v10 = *(v5 + 32);
      v19 = *(v5 + 40);
      v20 = *(v5 + 48);
      v21 = *(v5 - 8);
      sub_20CF8FC20(v2, v21, *v5, v7, v8, v9, v10);
      [v18 gridSizeClass];
      v11 = CCUINumberOfRowsForGridSizeClass();
      v12 = CCUINumberOfColumnsForGridSizeClass();
      if (v19 == v11 && v20 == v12)
      {
        a1 = v15;
        v14 = v21;
        goto LABEL_12;
      }

      ++v4;
      sub_20CF8FAF8(v2, v21, v6, v7, v8, v9, v10);
      v5 += 72;
      v3 = v16;
      if (v17 == v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 1;
        v14 = 0xE400000000000000;
        a1 = v15;
        v2 = 1701670760;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v14 = 0xE400000000000000;
LABEL_12:
    *a1 = v2;
    *(a1 + 8) = v14;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
  }
}

uint64_t HUControlCenterModuleViewController.cellClass(for:indexPath:)(void *a1, uint64_t a2)
{
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = &unk_28251AC90;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return type metadata accessor for ControlCenterAccessoryTileCell();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return type metadata accessor for SceneTileCell();
  }

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v10 = sub_20D565988();
  __swift_project_value_buffer(v10, qword_281120958);
  (*(v6 + 16))(v8, a2, v5);
  v11 = v2;
  v12 = a1;
  v13 = sub_20D565968();
  v14 = sub_20D567EB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27[0] = v26;
    *v15 = 138412802;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v12;
    *(v15 + 22) = 2080;
    sub_20D04755C(&qword_27C81F988, MEMORY[0x277CC9AF8]);
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = sub_20D568BB8();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = sub_20CEE913C(v20, v22, v27);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_20CEB6000, v19, v14, "%@: unsupported item %@ at indexPath %s", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v16, -1, -1);
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F31FC70](v24, -1, -1);
    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return sub_20CECF940(0, &qword_28111FEA0);
}

Swift::Void __swiftcall HUControlCenterModuleViewController.configureCell(_:for:)(UICollectionViewCell *_, HFItem *a2)
{
  v3 = v2;
  v42.super_class = HUControlCenterModuleViewController;
  [(UICollectionViewCell *)&v42 configureCell:_ forItem:a2];
  type metadata accessor for TileCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    *(v6 + OBJC_IVAR___HUTileCell_dynamicGridSizeCalculator + 8) = &off_2823D5D98;
    swift_unknownObjectWeakAssign();
    v8 = OBJC_IVAR___HUTileCell_appContext;
    swift_beginAccess();
    v9 = v7[v8];
    v7[v8] = 2;
    v10 = _;
    if (v9 != 2)
    {
      [v7 setNeedsUpdateConfiguration];
    }

    v11 = v3[OBJC_IVAR___HUControlCenterModuleViewController_showTilePrefixes];
    v12 = OBJC_IVAR___HUTileCell_showPrefixLabel;
    swift_beginAccess();
    v13 = v7[v12];
    v7[v12] = v11;
    if (v11 != v13)
    {
      [v7 setNeedsUpdateConfiguration];
    }

    v14 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories;
    swift_beginAccess();
    v7[v14] = 1;
    v15 = *&v3[OBJC_IVAR___HUControlCenterModuleViewController_cellBackgroundDisplayStyle];
    v16 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
    swift_beginAccess();
    v17 = *&v7[v16];
    *&v7[v16] = v15;
    if (v15 != v17)
    {
      [v7 setNeedsUpdateConfiguration];
    }

    v18 = OBJC_IVAR___HUControlCenterModuleViewController_insetContent;
    v19 = v3[OBJC_IVAR___HUControlCenterModuleViewController_insetContent];
    v20 = OBJC_IVAR___HUTileCell_materialStyle;
    v21 = swift_beginAccess();
    *&v7[v20] = v19;
    if (v19 == 1)
    {
      v22 = MEMORY[0x20F31E320](v21);
      v23 = 0.0;
      if (v3[v18] == 1)
      {
        v24 = [v3 traitCollection];
        [v24 displayScale];

        MEMORY[0x20F31E320]();
        UIRoundToScale();
        v23 = v25 + v25;
      }

      [v3 gridSizeClass];
      v26 = (v22 - v23 / CCUINumberOfRowsForGridSizeClass()) / v22;
    }

    else
    {
      v26 = 1.0;
    }

    sub_20D002390(*&v26, 0);
  }

  type metadata accessor for AccessoryTileCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = swift_dynamicCastObjCProtocolConditional();
    if (v29)
    {
      v30 = v29;
      v31 = _;
      v32 = a2;
      v33 = [v3 itemSupportsToggleInteraction_];
      (*((*MEMORY[0x277D85000] & *v28) + 0x138))(v33);
    }
  }

  type metadata accessor for SceneTileCell();
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable;
    v36 = v34;
    swift_beginAccess();
    *(v36 + v35) = 0;
  }

  v37 = [(UICollectionViewCell *)_ contentView];
  [(UIView *)v37 setInsetsLayoutMarginsFromSafeArea:v3[OBJC_IVAR___HUControlCenterModuleViewController_cellInsetsLayoutMarginsFromSafeArea]];

  v38 = [v3 collectionView];
  if (v38)
  {
    v39 = v38;
  }

  else if (!*&v3[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController])
  {
    return;
  }

  v40 = [v3 delegate];
  if (v40)
  {
    v41 = [v40 contentModuleContext];
    swift_unknownObjectRelease();
    [v41 invalidateContainerViewsForPlatterTreatment];
  }
}

void HUControlCenterModuleViewController.performBatchCollectionViewUpdates(for:reloadOnly:)(uint64_t a1, char a2)
{
  v8.super_class = HUControlCenterModuleViewController;
  objc_msgSendSuper2(&v8, sel_performBatchCollectionViewUpdatesForUpdateRequest_reloadOnly_, a1, a2 & 1);
  if ((a2 & 1) == 0)
  {
    v4 = [v2 collectionView];
    if (v4)
    {
      v5 = v4;
    }

    else if (!*&v2[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController])
    {
      return;
    }

    v6 = [v2 delegate];
    if (v6)
    {
      v7 = [v6 contentModuleContext];
      swift_unknownObjectRelease();
      [v7 invalidateContainerViewsForPlatterTreatment];
    }
  }
}

Swift::Void __swiftcall HUControlCenterModuleViewController.itemManagerDidUpdate(_:)(HFItemManager *a1)
{
  v22.super_class = HUControlCenterModuleViewController;
  [(HFItemManager *)&v22 itemManagerDidUpdate:a1];
  v3 = sub_20D03A49C();
  v4 = v1[OBJC_IVAR___HUControlCenterModuleViewController_moduleState];
  v1[OBJC_IVAR___HUControlCenterModuleViewController_moduleState] = v3;
  sub_20D039660(v4);
  sub_20D03A96C();
  sub_20D03ABD8();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  v21[4] = sub_20D046A00;
  v21[5] = v5;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_20CFFFE8C;
  v21[3] = &block_descriptor_6;
  v7 = _Block_copy(v21);
  v8 = v1;

  [v6 animateWithDuration:v7 animations:0.2];

  _Block_release(v7);
  v9 = v8[OBJC_IVAR___HUControlCenterModuleViewController_notificationsDisabled];
  if (v9 == 2 || (v9 & 1) == 0)
  {
    v10 = [v8 delegate];
    if (v10)
    {
      v11 = v10;
      v12 = [(HFItemManager *)a1 home];
      [v11 controlCenterModuleViewController:v8 didStartDisplayingHome:v12];

      swift_unknownObjectRelease();
    }
  }

  v13 = [v8 delegate];
  if (v13)
  {
    v14 = v13;
    v15 = [(HFItemManager *)a1 allDisplayedItems];
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF99B4();
    sub_20D567D08();

    v16 = sub_20D567CD8();

    [v14 controlCenterModuleViewController:v8 didChangeDisplayedItems:v16];

    swift_unknownObjectRelease();
  }

  v17 = [v8 collectionView];
  if (v17)
  {
    v18 = v17;
  }

  else if (!*&v8[OBJC_IVAR___HUControlCenterModuleViewController_errorViewController])
  {
    return;
  }

  v19 = [v8 delegate];
  if (v19)
  {
    v20 = [v19 contentModuleContext];
    swift_unknownObjectRelease();
    [v20 invalidateContainerViewsForPlatterTreatment];
  }
}

uint64_t HUControlCenterModuleViewController.layoutSection(forSection:layoutEnvironment:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D0376DC();
  sub_20D037838(v7);
  v9 = OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config;
  swift_beginAccess();
  sub_20D046A08(v7, v8 + v9);
  swift_endAccess();

  v10 = OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager;
  v11 = *&v2[OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager];
  LOBYTE(v8) = v2[OBJC_IVAR___HUControlCenterModuleViewController_showTilePrefixes];
  v12 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  swift_beginAccess();
  *(v11 + v12) = v8;
  v13 = [v2 itemManager];
  v14 = [v13 displayedSectionIdentifierForSectionIndex_];

  if (!v14)
  {
    v23 = *&v2[v10];
    v28 = xmmword_20D5C0F70;
    v29 = 2;
    v24 = v23;
    sub_20CEFA3C8(0, 0xE000000000000000, &v28, a2);
    v22 = v25;
LABEL_6:

    return v22;
  }

  v15 = sub_20D567838();
  v17 = v16;

  v18 = [v2 kind];
  v19 = *&v2[v10];
  if (!v18)
  {
    v28 = xmmword_20D5BA030;
    v29 = 2;
    v24 = v19;
    sub_20CEFA3C8(v15, v17, &v28, a2);
    v22 = v26;

    goto LABEL_6;
  }

  *&v28 = 0xD000000000000017;
  *(&v28 + 1) = 0x800000020D5D0880;
  v29 = 1;
  v20 = v19;
  sub_20CEFA3C8(v15, v17, &v28, a2);
  v22 = v21;

  sub_20CEFF424(v28, *(&v28 + 1), v29);
  return v22;
}

uint64_t HUControlCenterModuleViewController.displayedItems(inSection:)()
{
  v1 = [v0 itemManager];
  v2 = [v0 itemManager];
  v3 = sub_20D5677F8();
  v4 = [v2 sectionIndexForDisplayedSectionIdentifier_];

  v5 = [v1 displayedItemsInSection_];
  sub_20CECF940(0, &qword_281120AC0);
  v6 = sub_20D567A78();

  return v6;
}

CGSize __swiftcall HUControlCenterModuleViewController.overrideContentSize()()
{
  v1 = [v0 view];
  if (v1)
  {
    v4 = v1;
    [v1 bounds];
    v6 = v5;
    v8 = v7;

    if ([v0 isEditing] && objc_msgSend(v0, sel_kind) != 1)
    {
      v9 = MEMORY[0x20F31E320]();
      [v0 gridSizeClass];
      v10 = CCUINumberOfColumnsForGridSizeClass();
      CCUILayoutGutter();
      v12 = v11;
      [v0 gridSizeClass];
      v13 = CCUINumberOfColumnsForGridSizeClass();
      v14 = MEMORY[0x20F31E320]();
      [v0 gridSizeClass];
      v15 = CCUINumberOfRowsForGridSizeClass();
      CCUILayoutGutter();
      v17 = v16;
      [v0 gridSizeClass];
      v18 = CCUINumberOfRowsForGridSizeClass();
      v19 = v12 * (v13 - 1);
      if (v19 <= 0.0)
      {
        v19 = 0.0;
      }

      v6 = v9 * v10 + v19;
      v20 = v17 * (v18 - 1);
      if (v20 <= 0.0)
      {
        v20 = 0.0;
      }

      v8 = v14 * v15 + v20;
    }

    v2 = v6;
    v3 = v8;
  }

  else
  {
    __break(1u);
  }

  result.height = v3;
  result.width = v2;
  return result;
}

void __swiftcall HUControlCenterModuleViewController.transform(_:)(HUGridLayoutOptions *__return_ptr retstr, HUGridLayoutOptions *a2)
{
  v2 = sub_20D046A6C(a2);

  v3 = v2;
}

Swift::Bool __swiftcall HUControlCenterModuleViewController.presentationCoordinator(_:shouldBeginPresentationWith:)(HUQuickControlPresentationCoordinator *_, HUQuickControlPresentationContext *shouldBeginPresentationWith)
{
  v5 = [(HUQuickControlPresentationContext *)shouldBeginPresentationWith item];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();

  if (v6)
  {
    return 0;
  }

  v36 = _;
  v8 = [v2 itemManager];
  v35 = shouldBeginPresentationWith;
  v9 = [(HUQuickControlPresentationContext *)shouldBeginPresentationWith item];
  sub_20CECF940(0, &unk_27C81A3F0);
  v10 = [v8 childItemsForItem:v9 ofClass:swift_getObjCClassFromMetadata()];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v11 = sub_20D567D08();

  v12 = v2;
  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    result = sub_20D567D58();
    v11 = v40;
    v13 = v41;
    v14 = v42;
    v15 = v43;
    v16 = v44;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v13 = v11 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);
    result = sub_20D5663C8();
    v15 = 0;
  }

  v34 = v14;
  while (v11 < 0)
  {
    v23 = sub_20D568798();
    if (!v23 || (v38 = v23, swift_dynamicCast(), (v22 = aBlock[0]) == 0))
    {
LABEL_23:
      sub_20CEC80DC();

LABEL_24:
      v39.receiver = v12;
      v39.super_class = HUControlCenterModuleViewController;
      return [(HUQuickControlPresentationCoordinator *)&v39 presentationCoordinator:v36 shouldBeginPresentationWithContext:v35, v34];
    }

LABEL_19:
    v24 = [v12 requiresUnlockToPerformActionForItem_];

    if (v24)
    {
      sub_20CEC80DC();

      v25 = [v12 delegate];
      if (!v25 || (v26 = [v25 isDeviceUnlockedForControlCenterModuleViewController_], swift_unknownObjectRelease(), (v26 & 1) == 0))
      {
        v27 = sub_20D03DC50();
        [(HUQuickControlPresentationContext *)v35 copy];
        sub_20D568628();
        swift_unknownObjectRelease();
        sub_20CECF940(0, &unk_27C81F990);
        swift_dynamicCast();
        v28 = v38;
        v29 = swift_allocObject();
        *(v29 + 16) = v36;
        *(v29 + 24) = v28;
        aBlock[4] = sub_20D046C94;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20D0478B8;
        aBlock[3] = &block_descriptor_12;
        v30 = _Block_copy(aBlock);
        v31 = v36;
        v32 = v28;

        v33 = [v27 addSuccessBlock_];

        _Block_release(v30);
        return 0;
      }

      goto LABEL_24;
    }
  }

  v20 = v15;
  v21 = v16;
  if (v16)
  {
LABEL_15:
    v16 = (v21 - 1) & v21;
    v22 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= ((v14 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v21 = *(v13 + 8 * v15);
    ++v20;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_20D03DC50()
{
  v1 = [v0 delegate];
  if (v1 && (v2 = [v1 contentModuleContext], swift_unknownObjectRelease(), v2))
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v8[4] = sub_20D047734;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_20D000F04;
    v8[3] = &block_descriptor_154;
    v5 = _Block_copy(v8);
    v6 = v3;

    [v2 requestAuthenticationWithCompletionHandler_];
    _Block_release(v5);
  }

  else
  {
    v2 = [objc_opt_self() futureWithNoResult];
    v6 = [v2 asGeneric];
  }

  return v6;
}

Swift::Bool __swiftcall HUControlCenterModuleViewController.presentationCoordinator(_:shouldBeginLongPressPresentationWith:)(HUQuickControlPresentationCoordinator *_, HUQuickControlPresentationContext *shouldBeginLongPressPresentationWith)
{
  v2 = [(HUQuickControlPresentationContext *)shouldBeginLongPressPresentationWith item];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass() == 0;

  return v3;
}

void __swiftcall HUControlCenterModuleViewController.presentationCoordinator(_:contextForPresentationAt:)(HUQuickControlPresentationContext *__return_ptr retstr, HUQuickControlPresentationCoordinator *_, CGPoint contextForPresentationAt)
{
  y = contextForPresentationAt.y;
  x = contextForPresentationAt.x;
  v7 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v3;
  v26.super_class = HUControlCenterModuleViewController;
  v13 = [(HUQuickControlPresentationContext *)&v26 presentationCoordinator:_ contextForPresentationAtPoint:x, y];
  sub_20D037838(v12);
  sub_20D04775C(v12, v9, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20D047228(v9, type metadata accessor for ControlCenterModuleConfiguration.Content);
  if (!EnumCaseMultiPayload)
  {
    v15 = [v3 itemManager];
    type metadata accessor for ControlCenterModuleItemManager();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = [v13 item];
      v25[1] = &unk_2824C0788;
      v19 = swift_dynamicCastObjCProtocolConditional();
      if (v19 && (v20 = *(v17 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider)) != 0)
      {
        v21 = v19;
        v22 = v18;
        v23 = [v20 itemConfidence_];
        if (v23)
        {
          v24 = v23;
          [v23 doubleValue];

          [v13 setIsItemDisplayedByPrediction_];
          return;
        }
      }

      else
      {
      }
    }
  }
}

id HUControlCenterModuleViewController.prepareToPerformToggleAction(for:sourceItem:)(void *a1, void *a2)
{
  v5 = [objc_opt_self() futureWithNoResult];
  v6 = [v5 asGeneric];

  if ([v2 requiresUnlockToPerformActionForItem_])
  {
    v7 = [v2 delegate];
    if (!v7 || (v8 = [v7 isDeviceUnlockedForControlCenterModuleViewController_], swift_unknownObjectRelease(), (v8 & 1) == 0))
    {
      v9 = sub_20D03DC50();

      v6 = v9;
    }
  }

  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = a1;
  v10[4] = a2;
  v17[4] = sub_20D046CD4;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_20D02C760;
  v17[3] = &block_descriptor_18_0;
  v11 = _Block_copy(v17);
  v12 = v2;
  v13 = a1;
  v14 = a2;

  v15 = [v6 flatMap_];
  _Block_release(v11);

  return v15;
}

void HUControlCenterModuleViewController.presentationCoordinatorSendTileInteractionEvent(of:with:presentationCoordinator:)(uint64_t a1, id a2)
{
  v4 = [a2 item];
  v5 = [a2 tappedArea];
  sub_20D0C6B88(v4, a1, v5);
}

uint64_t sub_20D03E560(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D03E608, 0, 0);
}

uint64_t sub_20D03E608()
{
  v0[13] = OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode;
  v0[14] = sub_20D567C18();
  v0[15] = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D03E6AC, v2, v1);
}

uint64_t sub_20D03E6AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);

  *(v0 + 224) = *(v2 + v1);

  return MEMORY[0x2822009F8](sub_20D03E724, 0, 0);
}

uint64_t sub_20D03E724()
{
  if (*(v0 + 224))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 128) = sub_20D567C08();
    v4 = sub_20D567BA8();

    return MEMORY[0x2822009F8](sub_20D03E808, v4, v3);
  }
}

uint64_t sub_20D03E808()
{
  v1 = v0[9];

  v2 = [v1 itemManager];
  v0[17] = v2;
  type metadata accessor for ControlCenterModuleItemManager();
  v3 = swift_dynamicCastClass();
  v0[18] = v3;
  if (v3)
  {

    return MEMORY[0x2822009F8](sub_20D03E904, 0, 0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20D03E904()
{
  v18 = v0;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = sub_20D565988();
  __swift_project_value_buffer(v3, qword_281120958);
  sub_20D0475A4(v2, v1, type metadata accessor for ControlCenterModuleConfiguration);
  v4 = sub_20D565968();
  v5 = sub_20D567EC8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = ControlCenterModuleConfiguration.description.getter();
    v12 = v11;
    sub_20D047228(v7, type metadata accessor for ControlCenterModuleConfiguration);
    v13 = sub_20CEE913C(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20CEB6000, v4, v5, "onIntentResolved called with intent %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  else
  {

    sub_20D047228(v7, type metadata accessor for ControlCenterModuleConfiguration);
  }

  v0[19] = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  v0[20] = sub_20D567C08();
  v15 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D03EB3C, v15, v14);
}

uint64_t sub_20D03EB3C()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[11];

  swift_beginAccess();
  sub_20D0475A4(v2 + v1, v3, type metadata accessor for ControlCenterModuleConfiguration);

  return MEMORY[0x2822009F8](sub_20D03EBE8, 0, 0);
}

uint64_t sub_20D03EBE8()
{
  *(v0 + 168) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D03EC74, v2, v1);
}

uint64_t sub_20D03EC74()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = sub_20D0376DC();
  sub_20D0475A4(v2, v1, type metadata accessor for ControlCenterModuleConfiguration);
  v4 = OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config;
  swift_beginAccess();
  sub_20D046A08(v1, v3 + v4);
  swift_endAccess();

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_20D03ED88;
  v6 = v0[8];

  return ControlCenterModuleItemManager.applyAndReload(configuration:)(v6);
}

uint64_t sub_20D03ED88()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20D03F278;
  }

  else
  {
    v2 = sub_20D03EE9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D03EE9C()
{
  *(v0 + 192) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D03EF28, v2, v1);
}

uint64_t sub_20D03EF28()
{
  v1 = *(v0 + 72);

  v2 = sub_20D03A49C();
  v3 = *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState);
  *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_moduleState) = v2;
  sub_20D039660(v3);
  sub_20D03A96C();
  sub_20D03ABD8();

  return MEMORY[0x2822009F8](sub_20D03EFB8, 0, 0);
}

uint64_t sub_20D03EFB8()
{
  v0[25] = *(v0[9] + OBJC_IVAR___HUControlCenterModuleViewController_analyticsController);
  v0[26] = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D03F058, v2, v1);
}

uint64_t sub_20D03F058()
{

  sub_20D0C8E34();

  return MEMORY[0x2822009F8](sub_20D03F0C4, 0, 0);
}

uint64_t sub_20D03F0C4()
{
  *(v0 + 216) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D03F150, v2, v1);
}

uint64_t sub_20D03F150()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  sub_20D0C664C(v1, v2);

  return MEMORY[0x2822009F8](sub_20D03F1D8, 0, 0);
}

uint64_t sub_20D03F1D8()
{
  v1 = *(v0 + 88);

  sub_20D047228(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D03F278()
{
  v1 = *(v0 + 88);

  sub_20D047228(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

id HUControlCenterModuleViewController.defaultConfigurationIntent.getter()
{
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v1 = sub_20D565988();
  __swift_project_value_buffer(v1, qword_281120958);
  v2 = v0;
  v3 = sub_20D565968();
  v4 = sub_20D567EC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode);

    _os_log_impl(&dword_20CEB6000, v3, v4, "defaultConfigurationIntent: %{BOOL,public}d", v5, 8u);
    MEMORY[0x20F31FC70](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  if (*(&v2->isa + OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode) != 1)
  {
    v6 = [v2 kind];
    if (v6 == 1)
    {
      sub_20CECF940(0, &unk_27C81F9A0);
      return sub_20D5683A8();
    }

    if (!v6)
    {
      sub_20CECF940(0, &unk_27C81F9A0);
      return sub_20D568398();
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277CD3D30]);

  return [v8 init];
}

void sub_20D03F580(char a1)
{
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v12[4] = sub_20D047710;
    v12[5] = v4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_20CFFFE8C;
    v12[3] = &block_descriptor_148;
    v5 = _Block_copy(v12);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:0.2];
    _Block_release(v5);
  }

  else
  {
    sub_20D03B390();
  }

  sub_20D03B1DC(a1 & 1);
  sub_20D03BDCC(a1 & 1);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 layer];

    v10 = [v1 isEditing];
    v11 = 0.0;
    if (v10)
    {
      if ([v1 gridSizeClass])
      {
        [v1 compactContinuousCornerRadius];
      }

      else
      {
        v11 = MEMORY[0x20F31E320]() * 0.33;
      }
    }

    [v9 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HUControlCenterModuleViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v31.super_class = HUControlCenterModuleViewController;
  objc_msgSendSuper2(&v31, sel_setEditing_animated_, _, animated);
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v5 = v4;
  if (*(v2 + OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v2 isEditing] ^ 1;
  }

  [v5 setUserInteractionEnabled_];

  if (*(v2 + OBJC_IVAR___HUControlCenterModuleViewController_updatesUIOnEditingChanged) == 1)
  {
    sub_20D03B390();
    v7 = [v2 isEditing] && (sub_20D037C88() & 1) != 0;
    sub_20D03B018(v7);
    v8 = [v2 supplementalView];
    if (v8)
    {
      v9 = v8;
      if ([v2 gridSizeClass])
      {
        [v2 compactContinuousCornerRadius];
      }

      else
      {
        v10 = MEMORY[0x20F31E320]() * 0.33;
      }

      [v9 _setContinuousCornerRadius_];
    }

    v11 = [v2 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 layer];

      v14 = [v2 isEditing];
      v15 = 0.0;
      if (v14)
      {
        if ([v2 gridSizeClass])
        {
          [v2 compactContinuousCornerRadius];
        }

        else
        {
          v15 = MEMORY[0x20F31E320]() * 0.33;
        }
      }

      [v13 setCornerRadius_];

      v16 = [v2 view];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 layer];

        [v18 setMasksToBounds_];
        if (_)
        {
          v19 = CCUINumberOfRowsForGridSizeClass();
          v20 = CCUINumberOfColumnsForGridSizeClass();
          v21 = [v2 itemManager];
          type metadata accessor for ControlCenterModuleItemManager();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            *(v22 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_filtersItemsToAvailableSpace) = 0;
          }

          v23 = sub_20D0376DC();
          v23[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_disableLayoutRowCropping] = 1;

          v24 = [v2 itemManager];
          if (!swift_dynamicCastClass())
          {
            goto LABEL_31;
          }

          v25.value = (v20 >> 1) * v19;
          v25.is_nil = 0;
        }

        else
        {
          v26 = [v2 itemManager];
          type metadata accessor for ControlCenterModuleItemManager();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            v28 = v27;
            v29 = [v2 kind] == 0;
            *(v28 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_filtersItemsToAvailableSpace) = v29;
          }

          v30 = sub_20D0376DC();
          v30[OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_disableLayoutRowCropping] = 0;

          v24 = [v2 itemManager];
          if (!swift_dynamicCastClass())
          {
            goto LABEL_31;
          }

          v25.value = 0;
          v25.is_nil = 1;
        }

        ControlCenterModuleItemManager.setOverrideTileLimit(_:reload:)(v25, 1);
LABEL_31:

        return;
      }

LABEL_35:
      __break(1u);
      return;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

Swift::Void __swiftcall HUControlCenterModuleViewController.setConfigurationIntent(_:)(INIntent a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v5 = sub_20D565988();
  __swift_project_value_buffer(v5, qword_281120958);
  v6 = a1.super.isa;
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v7, v8, "Setting configuration intent: %@", v9, 0xCu);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  sub_20D567C38();
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20D567C18();
  v14 = v6;

  v15 = sub_20D567C08();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;

  sub_20CF18960(0, 0, v4, &unk_20D5C5430, v16);
}

uint64_t sub_20D03FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB68);
  v5[24] = swift_task_alloc();
  v6 = sub_20D564AE8();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB70);
  v5[29] = swift_task_alloc();
  v7 = sub_20D564AC8();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  sub_20D567C18();
  v5[34] = sub_20D567C08();
  v9 = sub_20D567BA8();
  v5[35] = v9;
  v5[36] = v8;

  return MEMORY[0x2822009F8](sub_20D040004, v9, v8);
}

uint64_t sub_20D040004()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v2 = v0[21];
    v3 = sub_20D565988();
    v0[38] = __swift_project_value_buffer(v3, qword_281120958);
    v4 = v2;
    v5 = sub_20D565968();
    v6 = sub_20D567EC8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[21];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_20CEB6000, v5, v6, "Building AppIntent from INIntent: %@", v8, 0xCu);
      sub_20CEF928C(v9, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v9, -1, -1);
      MEMORY[0x20F31FC70](v8, -1, -1);
    }

    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_20D04028C;
    v12 = v0[21];

    return MEMORY[0x282172828](v0 + 2, v12);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_20D04028C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_20D040DE4;
  }

  else
  {
    v5 = sub_20D0403C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D0403C8()
{
  v1 = v0[31];
  sub_20CECF7A0((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81FB78);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[33];
    v5 = v0[30];
    v6 = v0[31];
    v7 = v0[29];
    v3(v7, 0, 1, v5);
    (*(v6 + 32))(v4, v7, v5);
    v8 = sub_20D565968();
    v9 = sub_20D567EC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20CEB6000, v8, v9, "Unwrapping HomeXLModuleConfigurationIntent", v10, 2u);
      MEMORY[0x20F31FC70](v10, -1, -1);
    }

    v11 = v0[37];
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[30];
    v15 = v0[31];
    v16 = v0[23];

    (*(v15 + 16))(v13, v12, v14);
    sub_20CF5753C(v13, [v11 gridSizeClass], v16);
    v17 = swift_task_alloc();
    v0[41] = v17;
    *v17 = v0;
    v17[1] = sub_20D040920;
    v18 = v0[23];
LABEL_9:

    return sub_20D03E560(v18);
  }

  v19 = v0[29];
  v3(v19, 1, 1, v0[30]);
  sub_20CEF928C(v19, &qword_27C81FB70);
  sub_20CECF7A0((v0 + 2), (v0 + 12));
  v20 = swift_dynamicCast();
  v21 = v0[25];
  v22 = v0[26];
  v23 = v0[24];
  if (v20)
  {
    v24 = v0[28];
    (*(v22 + 56))(v0[24], 0, 1, v0[25]);
    (*(v22 + 32))(v24, v23, v21);
    v25 = sub_20D565968();
    v26 = sub_20D567EC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20CEB6000, v25, v26, "Unwrapping HomeSingleTileConfigurationIntent", v27, 2u);
      MEMORY[0x20F31FC70](v27, -1, -1);
    }

    v28 = v0[37];
    v30 = v0[27];
    v29 = v0[28];
    v31 = v0[25];
    v32 = v0[26];
    v33 = v0[22];

    (*(v32 + 16))(v30, v29, v31);
    sub_20CF587F8(v30, [v28 gridSizeClass], v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = sub_20D040B80;
    v18 = v0[22];
    goto LABEL_9;
  }

  v36 = v0[21];

  (*(v22 + 56))(v23, 1, 1, v21);
  sub_20CEF928C(v23, &qword_27C81FB68);
  v37 = v36;
  v38 = sub_20D565968();
  v39 = sub_20D567EA8();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[37];
  if (v40)
  {
    v42 = v0[21];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v42;
    *v44 = v42;
    v45 = v42;
    _os_log_impl(&dword_20CEB6000, v38, v39, "INIntent->AppIntent failed to match class: %@", v43, 0xCu);
    sub_20CEF928C(v44, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v44, -1, -1);
    MEMORY[0x20F31FC70](v43, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v46 = v0[1];

  return v46();
}

uint64_t sub_20D040920()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  *(*v1 + 336) = v0;

  sub_20D047228(v3, type metadata accessor for ControlCenterModuleConfiguration);
  v4 = *(v2 + 288);
  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_20D040FAC;
  }

  else
  {
    v6 = sub_20D040A8C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20D040A8C()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_20D040B80()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  *(*v1 + 352) = v0;

  sub_20D047228(v3, type metadata accessor for ControlCenterModuleConfiguration);
  v4 = *(v2 + 288);
  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_20D041198;
  }

  else
  {
    v6 = sub_20D040CEC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20D040CEC()
{
  v1 = v0[37];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_20D040DE4()
{

  v1 = v0[40];
  v2 = v1;
  v3 = sub_20D565968();
  v4 = sub_20D567EA8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[37];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CEB6000, v3, v4, "Failed to parse INIntent: %@", v7, 0xCu);
    sub_20CEF928C(v8, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_20D040FAC()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[42];
  v5 = v4;
  v6 = sub_20D565968();
  v7 = sub_20D567EA8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20CEB6000, v6, v7, "Failed to parse INIntent: %@", v10, 0xCu);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_20D041198()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[44];
  v5 = v4;
  v6 = sub_20D565968();
  v7 = sub_20D567EA8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20CEB6000, v6, v7, "Failed to parse INIntent: %@", v10, 0xCu);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

double HUControlCenterModuleViewController.preferredExpandedContentHeight.getter()
{
  CCUIScreenBounds();
  CGRectGetWidth(v3);
  CCUIScreenBounds();
  CGRectGetHeight(v4);
  CGSizeMake(v0);
  return v1;
}

uint64_t HUControlCenterModuleViewController.preferredExpandedContentWidth.getter()
{
  CCUIScreenBounds();
  CGRectGetWidth(v3);
  CCUIScreenBounds();
  CGRectGetHeight(v4);

  return CGSizeMake(v0);
}

_OWORD *HUControlCenterModuleViewController.containerViewsForPlatterTreatment.getter()
{
  v1 = v0;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v2 = sub_20D565988();
  __swift_project_value_buffer(v2, qword_281120958);
  v3 = sub_20D565968();
  v4 = sub_20D567EC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, v4, "Control Center called for containerViewsForPlatterTreatment", v5, 2u);
    MEMORY[0x20F31FC70](v5, -1, -1);
  }

  v6 = [v1 supplementalView];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    result = swift_allocObject();
    result[1] = xmmword_20D5BA040;
    *(result + 4) = v7;
  }

  else
  {
    result = [v1 collectionView];
    if (result)
    {
      v9 = result;
      v10 = [result visibleCells];

      sub_20CECF940(0, &qword_28111FEA0);
      sub_20D567A78();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F9B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB10);
      swift_dynamicCast();
      return v11;
    }
  }

  return result;
}

Swift::Void __swiftcall HUControlCenterModuleViewController.willTransition(toExpandedContentMode:)(Swift::Bool toExpandedContentMode)
{
  v2 = OBJC_IVAR___HUControlCenterModuleViewController_isExpanded;
  if (!toExpandedContentMode && *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_isExpanded) == 1 && (*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_expandedModuleKind) & 1) == 0)
  {
    v3 = OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController;
    v4 = *(v1 + OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController);
    if (v4)
    {
      v5 = toExpandedContentMode;
      if ((v4[qword_27C81FC40] & 1) == 0)
      {
        v4[qword_27C81FC40] = 1;
        v6 = v4;
        sub_20D565358();

        v4 = *(v1 + v3);
      }
    }

    else
    {
      v5 = toExpandedContentMode;
    }

    *(v1 + v3) = 0;

    v2 = OBJC_IVAR___HUControlCenterModuleViewController_isExpanded;
    toExpandedContentMode = v5;
  }

  *(v1 + v2) = toExpandedContentMode;
}

Swift::Bool __swiftcall HUControlCenterModuleViewController.interpretsLocationAsContent(_:in:)(CGPoint _, UIView *in)
{
  v3 = v2;
  y = _.y;
  x = _.x;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v25 - v9;
  v11 = [v3 itemManager];
  v12 = [v11 allDisplayedItems];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v13 = sub_20D567D08();

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_20D568768();
  }

  else
  {
    v14 = *(v13 + 16);
  }

  if (v14)
  {
    v15 = [v3 collectionView];
    if (v15 && (v16 = v15, sub_20CECF940(0, &qword_28111FB70), v17 = in, v18 = sub_20D5683F8(), v17, v16, (v18 & 1) != 0))
    {
      v19 = [v3 collectionView];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 indexPathForItemAtPoint_];

        if (v21)
        {
          sub_20D563878();

          v22 = sub_20D5638C8();
          (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
        }

        else
        {
          v23 = sub_20D5638C8();
          (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
        }

        sub_20CEF928C(v10, &qword_27C81D5C0);
        LOBYTE(v19) = v21 != 0;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      LOBYTE(v19) = 1;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

void HUControlCenterModuleViewController.dismissPresentedContent(animated:completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v5 = OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController;
  v6 = *(v3 + OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController);
  if (v6)
  {
    if (*(v6 + qword_27C81FC40) == 1)
    {
      if (!a2)
      {
        goto LABEL_10;
      }

      a2(v6);
    }

    else
    {
      *(v6 + qword_27C81FC40) = 1;
      if (a2)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = a2;
        *(v9 + 24) = a3;
        v10 = sub_20CF14D00;
      }

      else
      {
        v10 = CGSizeMake;
        v9 = 0;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      v6;
      sub_20CEC81F4(a2);
      sub_20D565358();
    }
  }

LABEL_10:
  v12 = *(v4 + v5);
  *(v4 + v5) = 0;
}

Swift::Bool __swiftcall HUControlCenterModuleViewController.canDismissPresentedContent()()
{
  if (*&v0[OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController])
  {
    goto LABEL_4;
  }

  v1 = [v0 presentedViewController];
  if (v1)
  {

LABEL_4:
    LOBYTE(v1) = 1;
  }

  return v1;
}

double HUControlCenterModuleViewController.compactContinuousCornerRadius.getter()
{
  v1 = OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void HUControlCenterModuleViewController.compactContinuousCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_20D041FF8(v4);
}

void sub_20D041FF8(double a1)
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  if (*&v1[v3] != a1)
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v4 = sub_20D565988();
    __swift_project_value_buffer(v4, qword_281120958);
    v5 = v1;
    v6 = v1;
    v7 = sub_20D565968();
    v8 = sub_20D567EC8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *&v5[v3];
      _os_log_impl(&dword_20CEB6000, v7, v8, "Setting compactContinuousCornerRadius to %f", v9, 0xCu);
      MEMORY[0x20F31FC70](v9, -1, -1);
    }

    v10 = *&v6[OBJC_IVAR___HUControlCenterModuleViewController_backgroundView];
    if (v10)
    {
      v11 = v10;
      if ([v6 gridSizeClass])
      {
        [v6 compactContinuousCornerRadius];
      }

      else
      {
        v12 = MEMORY[0x20F31E320]() * 0.33;
      }

      [v11 _setContinuousCornerRadius_];
    }

    v13 = [v6 supplementalView];
    if (v13)
    {
      v14 = v13;
      if ([v6 gridSizeClass])
      {
        [v6 compactContinuousCornerRadius];
      }

      else
      {
        v15 = MEMORY[0x20F31E320]() * 0.33;
      }

      [v14 _setContinuousCornerRadius_];
    }

    v16 = *&v6[OBJC_IVAR___HUControlCenterModuleViewController_galleryPreviewViewModel];
    if ([v6 gridSizeClass])
    {
      [v6 compactContinuousCornerRadius];
      v18 = v17;
    }

    else
    {
      v18 = MEMORY[0x20F31E320]() * 0.33;
    }

    if (*(v16 + 16) == v18)
    {
      *(v16 + 16) = v18;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_20D04755C(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
      sub_20D5638F8();
    }

    sub_20D03F580(1);
  }
}

void *HUControlCenterModuleViewController.contentMetrics.getter()
{
  v1 = OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void HUControlCenterModuleViewController.contentMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_contentMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void HUControlCenterModuleViewController.contentRenderingMode.setter(uint64_t a1)
{
  v2 = v1;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v4 = sub_20D565988();
  __swift_project_value_buffer(v4, qword_281120958);
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    if (a1 == 1)
    {
      v9 = 0x77656976657250;
    }

    else
    {
      v9 = 1702259020;
    }

    if (a1 == 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_20CEE913C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20CEB6000, v5, v6, "Setting contentRenderingMode to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F31FC70](v8, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  v12 = OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode;
  v2[OBJC_IVAR___HUControlCenterModuleViewController_isPreviewMode] = a1 == 1;
  v13 = [v2 view];
  if (v13)
  {
    v15 = v13;
    if (v2[v12])
    {
      v14 = 0;
    }

    else
    {
      v14 = [v2 isEditing] ^ 1;
      v13 = v15;
    }

    [v13 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t HUControlCenterModuleViewController.gridSizeClass.getter()
{
  v1 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

id HUControlCenterModuleViewController.gridSizeClass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_20D04283C();
}

id sub_20D04283C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v24[-v3];
  result = [v0 reloadsForGridSizeClassChanges];
  if (result)
  {
    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v6 = sub_20D565988();
    __swift_project_value_buffer(v6, qword_281120958);
    v7 = v0;
    v8 = sub_20D565968();
    v9 = sub_20D567EC8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25[0] = v11;
      *v10 = 136315138;
      swift_beginAccess();
      v12 = NSStringFromCCUIGridSizeClass();
      v13 = sub_20D567838();
      v15 = v14;

      v16 = sub_20CEE913C(v13, v15, v25);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_20CEB6000, v8, v9, "Did set grid size class %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F31FC70](v11, -1, -1);
      MEMORY[0x20F31FC70](v10, -1, -1);
    }

    v17 = OBJC_IVAR___HUControlCenterModuleViewController_gridSizeClass;
    swift_beginAccess();
    v18 = *&v7[v17];
    v19 = sub_20D567C58();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20D567C18();

    v21 = sub_20D567C08();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v18;
    v22[5] = v20;

    sub_20CF18960(0, 0, v4, &unk_20D5C5540, v22);
  }

  return result;
}

uint64_t sub_20D042B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_20D567C18();
  v5[7] = sub_20D567C08();
  v7 = sub_20D567BA8();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_20D042BC8, v7, v6);
}

uint64_t sub_20D042BC8()
{
  v17 = v0;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v1 = sub_20D565988();
  v0[10] = __swift_project_value_buffer(v1, qword_281120958);
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = NSStringFromCCUIGridSizeClass();
    v7 = sub_20D567838();
    v9 = v8;

    v10 = sub_20CEE913C(v7, v9, &v16);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_20CEB6000, v2, v3, "Applying gridSizeClass to item manager %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x20F31FC70](v5, -1, -1);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_20D042E18;
    v13 = v0[5];

    return sub_20D04318C(v13);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_20D042E18()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_20D042F94;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_20D042F34;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D042F34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D042F94()
{
  v21 = v0;
  v1 = v0[13];
  v2 = v0[11];

  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = NSStringFromCCUIGridSizeClass();
    v12 = sub_20D567838();
    v14 = v13;

    v15 = sub_20CEE913C(v12, v14, &v20);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v9 = v17;
    _os_log_impl(&dword_20CEB6000, v4, v5, "Item manager failed to apply gridSizeClass %s with error %@", v8, 0x16u);
    sub_20CEF928C(v9, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_20D04318C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D528);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for ControlCenterModuleConfiguration(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_20D567C18();
  v2[16] = sub_20D567C08();
  v5 = sub_20D567BA8();
  v2[17] = v5;
  v2[18] = v4;

  return MEMORY[0x2822009F8](sub_20D04330C, v5, v4);
}

uint64_t sub_20D04330C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  sub_20D037838(v0[14]);
  (*(v4 + 56))(v1, 1, 1, v3);
  sub_20CEF9178(v1, v2, &qword_27C81D528);
  v5 = *(v4 + 48);
  if (v5(v2, 1, v3) == 1)
  {
    v6 = v0[10];
    v7 = v0[7];
    sub_20D0475A4(v0[14], v0[9], type metadata accessor for ControlCenterModuleConfiguration.Content);
    if (v5(v6, 1, v7) != 1)
    {
      sub_20CEF928C(v0[10], &qword_27C81D528);
    }
  }

  else
  {
    sub_20D04775C(v0[10], v0[9], type metadata accessor for ControlCenterModuleConfiguration.Content);
  }

  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[5];
  sub_20D047228(v0[14], type metadata accessor for ControlCenterModuleConfiguration);
  *(v8 + *(v10 + 24)) = 3;
  sub_20D04775C(v12, v8, type metadata accessor for ControlCenterModuleConfiguration.Content);
  *(v8 + *(v10 + 20)) = v13;
  sub_20CEF928C(v11, &qword_27C81D528);
  sub_20D037838(v9);
  v14 = _s6HomeUI32ControlCenterModuleConfigurationV2eeoiySbAC_ACtFZ_0(v8, v9);
  sub_20D047228(v9, type metadata accessor for ControlCenterModuleConfiguration);
  if (v14)
  {
    sub_20D047228(v0[15], type metadata accessor for ControlCenterModuleConfiguration);

LABEL_12:

    v24 = v0[1];

    return v24();
  }

  v15 = v0[15];
  v16 = v0[13];
  v17 = v0[6];
  v18 = sub_20D0376DC();
  sub_20D0475A4(v15, v16, type metadata accessor for ControlCenterModuleConfiguration);
  v19 = OBJC_IVAR____TtC6HomeUI32ControlCenterModuleLayoutManager_config;
  swift_beginAccess();
  sub_20D046A08(v16, v18 + v19);
  swift_endAccess();

  sub_20D03F580(1);
  v20 = [v17 itemManager];
  v0[19] = v20;
  type metadata accessor for ControlCenterModuleItemManager();
  if (!swift_dynamicCastClass())
  {

    sub_20D047228(v0[15], type metadata accessor for ControlCenterModuleConfiguration);
    goto LABEL_12;
  }

  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_20D0436D4;
  v22 = v0[15];

  return ControlCenterModuleItemManager.applyAndReload(configuration:)(v22);
}

uint64_t sub_20D0436D4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 168) = v0;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_20D0438F4;
  }

  else
  {
    v6 = sub_20D043828;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20D043828()
{

  sub_20D047228(*(v0 + 120), type metadata accessor for ControlCenterModuleConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0438F4()
{
  v1 = *(v0 + 120);

  sub_20D047228(v1, type metadata accessor for ControlCenterModuleConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t HUControlCenterModuleViewController.apply(gridSizeClass:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_20D567C18();
  v2[4] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_20D043A58, v4, v3);
}

uint64_t sub_20D043A58()
{
  v1 = v0[2];
  v2 = v0[3];
  [v2 setReloadsForGridSizeClassChanges_];
  [v2 setGridSizeClass_];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_20D043B18;
  v4 = v0[2];

  return sub_20D04318C(v4);
}

uint64_t sub_20D043B18()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_20D043CCC;
  }

  else
  {
    v5 = sub_20D043C54;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D043C54()
{
  v1 = *(v0 + 24);

  [v1 setReloadsForGridSizeClassChanges_];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D043CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D043EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_20D567C18();
  v3[6] = sub_20D567C08();
  v5 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D043F54, v5, v4);
}

uint64_t sub_20D043F54()
{
  v1 = v0[3];
  v2 = v0[4];

  v0[7] = _Block_copy(v1);
  v3 = v2;
  v0[8] = sub_20D567C08();
  v5 = sub_20D567BA8();
  v0[9] = v5;
  v0[10] = v4;

  return MEMORY[0x2822009F8](sub_20D044000, v5, v4);
}

uint64_t sub_20D044000()
{
  v1 = v0[4];
  v2 = v0[2];
  [v1 setReloadsForGridSizeClassChanges_];
  [v1 setGridSizeClass_];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_20D0440C8;
  v4 = v0[2];

  return sub_20D04318C(v4);
}

uint64_t sub_20D0440C8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_20D0442A4;
  }

  else
  {
    v5 = sub_20D044204;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D044204()
{
  v1 = v0[7];
  v2 = v0[4];

  [v2 setReloadsForGridSizeClassChanges_];

  if (v1)
  {
    v3 = v0[7];
    v3[2](v3, 0);
    _Block_release(v3);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_20D0442A4()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[12];
  if (v1)
  {
    v4 = v0[7];
    v5 = sub_20D5635C8();

    (v4)[2](v4, v5);
    _Block_release(v4);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

id HUControlCenterModuleViewController.presentAccessoryControls(for:)(void *a1)
{
  v3 = [v1 unwrappedItemForAccessoryControls_];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = v4;
    v5[4] = a1;
    v6 = v1;
    v7 = v4;
    v8 = a1;
    v9 = sub_20D5659C8();

    return v9;
  }

  else
  {
    v11 = [objc_opt_self() futureWithNoResult];
    v12 = [v11 asGeneric];

    return v12;
  }
}

uint64_t sub_20D044468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  sub_20D567C18();
  v3[22] = sub_20D567C08();
  v5 = sub_20D567BA8();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x2822009F8](sub_20D044504, v5, v4);
}

uint64_t sub_20D044504()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20D044634;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F830);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D0373C8;
  v0[13] = &block_descriptor_100;
  v0[14] = v4;
  [v3 accessoryControlViewControllerFor:v2 tileItem:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D044634()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_20D04473C, v2, v1);
}

uint64_t sub_20D04473C()
{
  v1 = *(v0 + 144);
  *(v0 + 200) = v1;
  if (v1)
  {
    [*(v0 + 152) configureWithAccessoryControlViewController_];
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_20D0448E8;

    return HUControllableItemCollectionViewController.present(viewController:)(v2);
  }

  else
  {

    v5 = sub_20D565478();
    sub_20D04755C(&qword_27C81FB50, MEMORY[0x277D14F50]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D14F48], v5);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_20D0448E8()
{
  v1 = *v0;
  v2 = *(*v0 + 200);

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20D044A28, v4, v3);
}

uint64_t sub_20D044A28()
{
  v1 = *(v0 + 200);

  v2 = v1;
  sub_20D044AA8(v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 200);

  return v3(v4);
}

void sub_20D044AA8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v2[OBJC_IVAR___HUControlCenterModuleViewController_expandedModuleKind] = 0;
  _s40AccessoryControlsContainerViewControllerCMa();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = a1;
  }

  v6 = *&v2[OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController];
  *&v2[OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController] = v4;

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v7 = sub_20D565988();
  __swift_project_value_buffer(v7, qword_281120958);
  v8 = sub_20D565968();
  v9 = sub_20D567EC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_20D568E18();
    v14 = sub_20CEE913C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20CEB6000, v8, v9, "%s: requesting expanded module for accessory controls", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  v15 = [v2 delegate];
  if (v15)
  {
    v16 = [v15 contentModuleContext];
    swift_unknownObjectRelease();
    [v16 requestExpandModule];
  }
}

uint64_t HUControlCenterModuleViewController.accessoryControlViewController(for:tileItem:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  v5 = swift_task_alloc();
  v3[8] = v5;
  v6 = sub_20D563E88();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_20D567C18();
  v3[14] = sub_20D567C08();
  type metadata accessor for DataModelAccessoryControlViewController(0);
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_20D044EA0;

  return static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(v5, a1);
}

uint64_t sub_20D044EA0()
{

  v1 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D044FDC, v1, v0);
}

uint64_t sub_20D044FDC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(v0[8], &qword_27C81F6D0);
    v4 = 0;
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[6];
    v19 = v0[5];
    (*(v8 + 32))(v5, v0[8], v7);
    type metadata accessor for ItemCollectionViewControlsTransitionHelper();
    v10 = swift_allocObject();
    v11 = v10 + qword_27C81D6C0;
    *(v10 + qword_27C81D6C0 + 8) = 0;
    swift_unknownObjectWeakInit();
    v12 = v10 + qword_27C81D6D0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 1;
    v13 = qword_27C81D6D8;
    v14 = sub_20D5655D8();
    (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
    swift_beginAccess();
    *(v11 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
    swift_unknownObjectWeakAssign();
    *(v10 + qword_27C81D6C8) = v9;
    v15 = v9;
    v16 = sub_20D565658();
    (*(v8 + 16))(v6, v5, v7);
    objc_allocWithZone(_s40AccessoryControlsContainerViewControllerCMa());
    v4 = sub_20D04C44C(v6, v19, v16);
    (*(v8 + 8))(v5, v7);
  }

  v17 = v0[1];

  return v17(v4);
}

uint64_t sub_20D0453D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_20D567C18();
  v4[6] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D045474, v6, v5);
}

uint64_t sub_20D045474()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20D02ABCC;
  v10 = v0[2];
  v9 = v0[3];

  return HUControlCenterModuleViewController.accessoryControlViewController(for:tileItem:)(v10, v9);
}

Swift::Void __swiftcall HUControlCenterModuleViewController.willDismiss(viewController:)(UIViewController *viewController)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v13 - v6;
  v13.receiver = v1;
  v13.super_class = HUControlCenterModuleViewController;
  [(UIViewController *)&v13 willDismissWithViewController:viewController, v5];
  v8 = sub_20D567C58();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20D567C18();

  v10 = sub_20D567C08();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = ObjectType;

  sub_20CF18960(0, 0, v7, &unk_20D5C5488, v11);
}

uint64_t sub_20D0456CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_20D567C18();
  v5[10] = sub_20D567C08();
  v7 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D045764, v7, v6);
}

uint64_t sub_20D045764()
{
  v18 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController];
    *&Strong[OBJC_IVAR___HUControlCenterModuleViewController_presentedAccessoryControlsViewController] = 0;
  }

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v3 = sub_20D565988();
  __swift_project_value_buffer(v3, qword_281120958);
  v4 = sub_20D565968();
  v5 = sub_20D567EC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_20D568E18();
    v10 = sub_20CEE913C(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s: requesting dismiss module for accessory controls", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F31FC70](v7, -1, -1);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 delegate];

    if (v13)
    {
      v14 = [v13 contentModuleContext];
      swift_unknownObjectRelease();
      [v14 dismissModule];
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void HUControlCenterModuleViewController.viewWillTransition(to:with:)(void *a1)
{
  v15.super_class = HUControlCenterModuleViewController;
  objc_msgSendSuper2(&v15, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1);
  if ((*(v1 + OBJC_IVAR___HUControlCenterModuleViewController_expandedModuleKind) & 1) == 0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v13 = sub_20D046FC8;
    v14 = v3;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_20D0478B8;
    v12 = &block_descriptor_53;
    v4 = _Block_copy(&v9);
    v5 = v1;

    [a1 animateAlongsideTransition:v4 completion:0];
    _Block_release(v4);
  }

  if ([v1 isEditing])
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v13 = sub_20D046FC0;
    v14 = v6;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_20D0478B8;
    v12 = &block_descriptor_47_0;
    v7 = _Block_copy(&v9);
    v8 = v1;

    [a1 animateAlongsideTransition:v7 completion:0];
    _Block_release(v7);
  }
}

void sub_20D045BE0(int a1, id a2)
{
  v3 = [a2 view];
  if (v3)
  {
    v4 = 1.0;
    if (*(a2 + OBJC_IVAR___HUControlCenterModuleViewController_isExpanded))
    {
      v4 = 0.0;
    }

    v5 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20D045C68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_20D045CC8(uint64_t a1, void *a2)
{
  sub_20D03B390();
  v3 = [a2 isEditing] && (sub_20D037C88() & 1) != 0;
  sub_20D03B018(v3);
  v4 = [a2 supplementalView];
  if (v4)
  {
    v5 = v4;
    if ([a2 gridSizeClass])
    {
      [a2 compactContinuousCornerRadius];
    }

    else
    {
      v6 = MEMORY[0x20F31E320]() * 0.33;
    }

    [v5 _setContinuousCornerRadius_];
  }

  v7 = [a2 view];
  if (v7)
  {
    v8 = v7;
    v11 = [v7 layer];

    v9 = [a2 isEditing];
    v10 = 0.0;
    if (v9)
    {
      if ([a2 gridSizeClass])
      {
        [a2 compactContinuousCornerRadius];
      }

      else
      {
        v10 = MEMORY[0x20F31E320]() * 0.33;
      }
    }

    [v11 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t HUControlCenterModuleViewController.debugDescription.getter()
{
  swift_getObjectType();
  v1 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  v4 = sub_20D568E18();
  MEMORY[0x20F31CDB0](v4);

  MEMORY[0x20F31CDB0](58, 0xE100000000000000);
  v10 = v0;
  sub_20D5689B8();
  MEMORY[0x20F31CDB0](45, 0xE100000000000000);
  sub_20D037838(v3);
  v5 = ControlCenterModuleConfiguration.briefDescription.getter();
  v7 = v6;
  sub_20D047228(v3, type metadata accessor for ControlCenterModuleConfiguration);
  MEMORY[0x20F31CDB0](v5, v7);

  return v11;
}

id sub_20D0460C4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_20D5677F8();

  return v5;
}

uint64_t HUControlCenterModuleViewController.fullDescription.getter()
{
  swift_getObjectType();
  v1 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  v4 = sub_20D568E18();
  MEMORY[0x20F31CDB0](v4);

  MEMORY[0x20F31CDB0](58, 0xE100000000000000);
  v13 = v0;
  sub_20D5689B8();
  MEMORY[0x20F31CDB0](45, 0xE100000000000000);
  sub_20D037838(v3);
  v13 = 4023163;
  v14 = 0xE300000000000000;
  v5 = ControlCenterModuleConfiguration.Content.expandedDescription.getter();
  MEMORY[0x20F31CDB0](v5);

  MEMORY[0x20F31CDB0](0x3D657A69732CLL, 0xE600000000000000);
  v6 = NSStringFromCCUIGridSizeClass();
  v7 = sub_20D567838();
  v9 = v8;

  MEMORY[0x20F31CDB0](v7, v9);

  MEMORY[0x20F31CDB0](125, 0xE100000000000000);
  v10 = v13;
  v11 = v14;
  sub_20D047228(v3, type metadata accessor for ControlCenterModuleConfiguration);
  MEMORY[0x20F31CDB0](v10, v11);

  return v15;
}

id HUControlCenterModuleViewController.init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithItemManager:a1 collectionViewLayout:a2];

  return v4;
}

id HUControlCenterModuleViewController.init(usingCompositionalLayoutWith:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initUsingCompositionalLayoutWithItemManager_];

  return v2;
}

id sub_20D046460(void *a1)
{
  v2 = v1;
  if ([v1 kind] == 1)
  {
    [v1 gridSizeClass];
    v4 = CCUINumberOfRowsForGridSizeClass();
    CCUINumberOfColumnsForGridSizeClass();
    return v4;
  }

  v5 = sub_20D0376DC();
  result = [a1 bounds];
  v9 = *(*&v2[OBJC_IVAR___HUControlCenterModuleViewController____lazy_storage___layoutManager] + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = [v2 traitCollection];
    v4 = sub_20CEFD994(v12, v13, v10, v11);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t CCUIContentRenderingMode.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x77656976657250;
  }

  else
  {
    return 1702259020;
  }
}

uint64_t sub_20D0465B0()
{
  if (*v0 == 1)
  {
    return 0x77656976657250;
  }

  else
  {
    return 1702259020;
  }
}

uint64_t sub_20D0465E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v42);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v16 = sub_20D565988();
  __swift_project_value_buffer(v16, qword_281120958);
  swift_unknownObjectRetain();
  v17 = sub_20D565968();
  v18 = sub_20D567EC8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = a2;
    v39 = v21;
    v43 = a1;
    v44[0] = v21;
    *v20 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FB88);
    v22 = sub_20D567868();
    v24 = a3;
    v25 = v15;
    v26 = a1;
    v27 = v4;
    v28 = sub_20CEE913C(v22, v23, v44);

    *(v20 + 4) = v28;
    v4 = v27;
    a1 = v26;
    v15 = v25;
    a3 = v24;
    _os_log_impl(&dword_20CEB6000, v17, v18, "ControlCenterModuleViewController init with delegate: %s", v20, 0xCu);
    v29 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    a2 = v41;
    MEMORY[0x20F31FC70](v29, -1, -1);
    v30 = v20;
    v9 = v40;
    MEMORY[0x20F31FC70](v30, -1, -1);
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      sub_20D568858();
      MEMORY[0x20F31CDB0](0xD000000000000026, 0x800000020D5D6350);
      v43 = a2;
      type metadata accessor for HUControlCenterModuleKind(0);
      sub_20D5689B8();
      result = sub_20D568A58();
      __break(1u);
      return result;
    }

    v31 = 2;
  }

  else
  {
    v31 = 4;
  }

  type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  swift_storeEnumTagMultiPayload();
  v32 = v42;
  v12[*(v42 + 24)] = 3;
  *&v12[*(v32 + 20)] = v31;
  sub_20D04775C(v12, v15, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D0475A4(v15, v9, type metadata accessor for ControlCenterModuleConfiguration);
  v33 = objc_allocWithZone(type metadata accessor for ControlCenterModuleItemManager());
  v34 = sub_20D0B9F4C(v9);
  v34[OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_filtersItemsToAvailableSpace] = a2 == 0;
  if (a3)
  {
    type metadata accessor for HUControlCenterModulePreview(0);
    v35 = sub_20D567A58();
  }

  else
  {
    v35 = 0;
  }

  v36 = [v4 initWithDelegate:a1 ofKind:a2 itemManager:v34 withPreviews:v35];

  sub_20D047228(v15, type metadata accessor for ControlCenterModuleConfiguration);
  return v36;
}

uint64_t sub_20D046A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_20D046A6C(void *a1)
{
  v3 = OBJC_IVAR___HUControlCenterModuleViewController_insetContent;
  if (v1[OBJC_IVAR___HUControlCenterModuleViewController_insetContent] != 1)
  {
    v6 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v13 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    goto LABEL_10;
  }

  v4 = [v1 traitCollection];
  [v4 displayScale];

  MEMORY[0x20F31E320]();
  UIRoundToScale();
  v6 = v5;
  v7 = 0.0;
  if (v1[v3] != 1)
  {
    v9 = 0.0;
    goto LABEL_9;
  }

  v8 = [v1 traitCollection];
  [v8 displayScale];

  MEMORY[0x20F31E320]();
  UIRoundToScale();
  if (v1[v3] != 1)
  {
LABEL_9:
    v13 = 0.0;
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v1 traitCollection];
  [v11 displayScale];

  MEMORY[0x20F31E320]();
  UIRoundToScale();
  v13 = v12;
  if (v1[v3] == 1)
  {
    v14 = [v1 traitCollection];
    [v14 displayScale];

    MEMORY[0x20F31E320]();
    UIRoundToScale();
    v7 = v15;
  }

  v9 = v10;
LABEL_10:
  [a1 setSectionLeadingMargin_];
  [a1 setSectionBottomMargin_];
  [a1 setSectionTrailingMargin_];
  [a1 setSectionTopMargin_];
  return a1;
}

void sub_20D046C94()
{
  v1 = [*(v0 + 16) presentQuickControlWithContext:*(v0 + 24) animated:1];
}

id sub_20D046CD4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v5.receiver = *(v0 + 16);
  v5.super_class = HUControlCenterModuleViewController;
  v3 = objc_msgSendSuper2(&v5, sel_prepareToPerformToggleActionForItem_sourceItem_, v1, v2);

  return v3;
}

uint64_t sub_20D046D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20D03FDF4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_14Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D046E58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF7788;

  return sub_20D044468(v2, v3, v4);
}

uint64_t sub_20D046F00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20D0456CC(a1, v4, v5, v7, v6);
}

void sub_20D046FD0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v4 = sub_20D565988();
  __swift_project_value_buffer(v4, qword_281120958);
  v5 = a1;
  v6 = sub_20D565968();
  v7 = sub_20D567E88();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    v11 = sub_20D568E18();
    v13 = sub_20CEE913C(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    v14 = v5;
    _os_log_impl(&dword_20CEB6000, v6, v7, "%s: HFHomeKitDispatcher.homeManagerDidChangeHome: %@", v8, 0x16u);
    sub_20CEF928C(v9, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  v18 = [v2 itemManager];
  type metadata accessor for ControlCenterModuleItemManager();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = [v15 reloadAndUpdateAllItemsFromSenderSelector_];

    v17 = v16;
  }

  else
  {
    v17 = v18;
  }
}

uint64_t sub_20D047228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D0472F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20CEF934C;

  return sub_20D0453D8(v2, v3, v5, v4);
}

uint64_t sub_20D0473B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF934C;

  return sub_20D043EB4(v2, v3, v4);
}

uint64_t sub_20D047464(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20D11C0E0(a1, v4, v5, v6);
}

uint64_t sub_20D04755C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0475A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D04760C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20D042B30(a1, v4, v5, v7, v6);
}

id sub_20D047734(char a1)
{
  v2 = &selRef_finishWithNoResult;
  if ((a1 & 1) == 0)
  {
    v2 = &selRef_cancel;
  }

  return [*(v1 + 16) *v2];
}

uint64_t sub_20D04775C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D047800()
{
  result = qword_27C81FBA0;
  if (!qword_27C81FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FBA0);
  }

  return result;
}

id sub_20D0478F0(double a1, double a2)
{
  v4 = floor((a1 - a2) * 0.5);
  v5 = objc_opt_self();
  v6 = [v5 absoluteDimension_];
  v7 = [v5 fractionalHeightDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  v10 = objc_opt_self();
  v11 = [v10 itemWithLayoutSize_];
  v12 = [v10 itemWithLayoutSize_];
  v13 = [v5 absoluteDimension_];
  v14 = [v5 fractionalHeightDimension_];
  v15 = [v8 sizeWithWidthDimension:v13 heightDimension:v14];

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20D5C27F0;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  sub_20D048848();
  v18 = v11;
  v19 = v12;
  v20 = sub_20D567A58();

  v21 = [v16 horizontalGroupWithLayoutSize:v15 subitems:v20];

  v22 = [objc_opt_self() fixedSpacing_];
  [v21 setInterItemSpacing_];

  return v21;
}

id sub_20D047B74(double a1, double a2, double a3)
{
  v5 = floor((a2 - a3) * 0.5);
  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension_];
  v8 = [v6 absoluteDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v7 heightDimension:v8];

  v11 = objc_opt_self();
  v12 = [v11 itemWithLayoutSize_];
  v13 = [v11 itemWithLayoutSize_];
  v14 = [v6 absoluteDimension_];
  v15 = [v6 fractionalHeightDimension_];
  v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20D5C27F0;
  *(v18 + 32) = v12;
  *(v18 + 40) = v13;
  sub_20D048848();
  v19 = v12;
  v20 = v13;
  v21 = sub_20D567A58();

  v22 = [v17 verticalGroupWithLayoutSize:v16 subitems:v21];

  v23 = [objc_opt_self() fixedSpacing_];
  [v22 setInterItemSpacing_];

  return v22;
}

id sub_20D047DF4(double a1, double a2, double a3)
{
  v6 = floor((a1 - a3) * 0.5);
  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension_];
  v9 = [v7 fractionalHeightDimension_];
  v10 = objc_opt_self();
  v11 = [v10 sizeWithWidthDimension:v8 heightDimension:v9];

  v12 = objc_opt_self();
  v34 = v11;
  v37 = [v12 itemWithLayoutSize_];
  v13 = [v7 fractionalWidthDimension_];
  v14 = [v7 &selRef:floor((a2 - a3) * 0.5) addToParentViewController:? + 1];
  v15 = [v10 &selRef:v13 setValveEditorItemModuleController:v14 + 6];

  v16 = [v12 itemWithLayoutSize_];
  v17 = [v12 itemWithLayoutSize_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20D5C27F0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  sub_20D048848();
  v36 = v16;
  v35 = v17;
  v20 = sub_20D567A58();

  v21 = [v18 verticalGroupWithLayoutSize:v11 subitems:v20];

  v22 = objc_opt_self();
  v23 = [v22 fixedSpacing_];
  [v21 setInterItemSpacing_];

  v24 = [v7 absoluteDimension_];
  v25 = [v7 fractionalHeightDimension_];
  v26 = [v10 sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20D5C27F0;
  *(v27 + 32) = v37;
  *(v27 + 40) = v21;
  v28 = v37;
  v29 = v21;
  v30 = sub_20D567A58();

  v31 = [v18 horizontalGroupWithLayoutSize:v26 subitems:v30];

  v32 = [v22 fixedSpacing_];
  [v31 setInterItemSpacing_];

  return v31;
}

id sub_20D048200(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    if ((a1 - 1) < 3)
    {
      v3 = *(&off_277DB6B30 + a1 - 1);
      goto LABEL_13;
    }

    v4 = 1;
  }

  else
  {
    switch(a1)
    {
      case 1:
        v3 = &unk_2823CE700;
        goto LABEL_13;
      case 4:
        v3 = &unk_2823CE750;
        goto LABEL_13;
      case 2:
        v3 = &unk_2823CE728;
        goto LABEL_13;
    }

    v4 = 0;
  }

  v3 = sub_20D10FA74(a1, v4);
LABEL_13:
  v5 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v6 = *(a2 + 24);
  v7 = *(v3 + 2);
  v8 = (v7 - 1);
  v9 = v6 * v8;
  if (v7)
  {
    v46 = v6 * v8;
    v11 = *a2;
    v10 = *(a2 + 8);
    v12 = (v3 + 32);
    v13 = v6 * 0.5;
    v14 = 0.0;
    while (1)
    {
      v16 = *v12++;
      v15 = v16;
      v17 = v16 >> 5;
      if (v16 >> 5 > 2)
      {
        if (v17 == 3)
        {
          v18 = 1.0;
          v19 = v6 * 0.0;
          if (v15)
          {
            v20 = v6 + *(a2 + 16) + v6 + *(a2 + 16) + round(v13 + *(a2 + 16) * 0.667);
            v14 = v14 + v20;
LABEL_39:
            v21 = sub_20D047DF4(v20, v10, v6);
LABEL_41:
            v35 = v21;
            goto LABEL_42;
          }
        }

        else
        {
          if (v17 != 4)
          {
LABEL_24:
            v20 = *(a2 + 16) + v6 + *(a2 + 16) + v6 + *(a2 + 16);
            goto LABEL_33;
          }

          v18 = 0.5;
          v19 = v6;
          if (v15)
          {
            v20 = round(v13 + *(a2 + 16) * 1.34);
LABEL_27:
            v14 = v14 + v20;
            goto LABEL_38;
          }
        }
      }

      else if (v17)
      {
        if (v17 == 1)
        {
          v18 = 1.0;
          v19 = v6 * 0.0;
          if (v15)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v18 = 0.5;
          v19 = v6;
          if (v15)
          {
            v20 = *(a2 + 16);
            v14 = v14 + v20;
            goto LABEL_40;
          }
        }
      }

      else
      {
        v18 = 1.0;
        v19 = v6 * 0.0;
        if (v15)
        {
          v20 = *(a2 + 16) + v6 + *(a2 + 16);
          goto LABEL_27;
        }
      }

      v20 = floor(v18 * (v11 - v19));
LABEL_33:
      v14 = v14 + v20;
      if (v17 > 2)
      {
        if (v17 != 4)
        {
          goto LABEL_39;
        }
      }

      else if (v17)
      {
        if (v17 == 1)
        {
          v21 = sub_20D0478F0(v20, v6);
          goto LABEL_41;
        }

LABEL_40:
        v21 = sub_20D047B74(v20, v10, v6);
        goto LABEL_41;
      }

LABEL_38:
      v22 = objc_opt_self();
      v23 = [v22 fractionalWidthDimension_];
      v24 = [v22 fractionalHeightDimension_];
      v25 = objc_opt_self();
      v26 = [v25 sizeWithWidthDimension:v23 heightDimension:v24];

      v27 = [objc_opt_self() itemWithLayoutSize_];
      v28 = [v22 absoluteDimension_];
      v29 = [v22 fractionalHeightDimension_];
      v30 = [v25 sizeWithWidthDimension:v28 heightDimension:v29];

      v31 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_20D5BA040;
      *(v32 + 32) = v27;
      sub_20D048848();
      v33 = v27;
      v34 = sub_20D567A58();

      v35 = [v31 horizontalGroupWithLayoutSize:v30 subitems:v34];

LABEL_42:
      v36 = v35;
      MEMORY[0x20F31CEE0]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();

      if (!--v7)
      {
        v5 = v47;
        v9 = v46;
        goto LABEL_47;
      }
    }
  }

  v14 = 0.0;
LABEL_47:

  v37 = objc_opt_self();
  v38 = [v37 estimatedDimension_];
  v39 = [v37 absoluteDimension_];
  v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

  if (v5 >> 62)
  {
    sub_20D048848();
    sub_20D5663C8();
    sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    sub_20D568C08();
    sub_20D048848();
  }

  v41 = objc_opt_self();
  sub_20D048848();
  v42 = sub_20D567A58();

  v43 = [v41 horizontalGroupWithLayoutSize:v40 subitems:v42];

  v44 = [objc_opt_self() fixedSpacing_];
  [v43 setInterItemSpacing_];

  return v43;
}

unint64_t sub_20D048848()
{
  result = qword_28111FE40;
  if (!qword_28111FE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FE40);
  }

  return result;
}

uint64_t sub_20D048894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_20D568D48();
  sub_20D5678C8();
  v6 = sub_20D568D98();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20D568BF8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_20D0489A0(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_20D5687A8();
  }

  else if (*(a2 + 16) && (sub_20CECF940(0, a3), v6 = sub_20D5683E8(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_20D5683F8();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_20D048AB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D564388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20D04C0BC(&qword_27C81FC20, MEMORY[0x277D15C90]), v7 = sub_20D5677B8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20D04C0BC(&qword_27C81FC28, MEMORY[0x277D15C90]);
      v15 = sub_20D5677E8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20D048CC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D564328();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20D04C0BC(&qword_27C81FC30, MEMORY[0x277D15C68]), v7 = sub_20D5677B8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20D04C0BC(&qword_27C81FC38, MEMORY[0x277D15C68]);
      v15 = sub_20D5677E8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20D048EE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_20D5663C8();
}

uint64_t sub_20D048F90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_20D049048(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_20D0490A8()
{
  v1 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20D0490FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AccessoryEventItemSelectionController.__allocating_init(triggerBuilder:flow:stepIdentifier:eventBuilderItem:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow;
  *&v8[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow] = 0;
  v10 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier;
  *&v8[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier] = 0;
  v8[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting] = 0;
  *&v8[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems] = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  v12 = [objc_opt_self() futureWithNoResult];
  v13 = [v12 asGeneric];

  *&v8[v11] = v13;
  *&v8[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder] = a1;
  v14 = *&v8[v9];
  *&v8[v9] = a2;
  v15 = a1;
  v16 = a2;

  v17 = *&v8[v10];
  *&v8[v10] = a3;
  v18 = a3;

  *&v8[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem] = a4;
  v22.receiver = v8;
  v22.super_class = v4;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  return v19;
}

id AccessoryEventItemSelectionController.init(triggerBuilder:flow:stepIdentifier:eventBuilderItem:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow;
  *&v4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow] = 0;
  v10 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier;
  *&v4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier] = 0;
  v4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting] = 0;
  *&v4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems] = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  v12 = [objc_opt_self() futureWithNoResult];
  v13 = [v12 asGeneric];

  *&v4[v11] = v13;
  *&v4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder] = a1;
  v14 = *&v4[v9];
  *&v4[v9] = a2;
  v15 = a1;
  v16 = a2;

  v17 = *&v4[v10];
  *&v4[v10] = a3;
  v18 = a3;

  *&v4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem] = a4;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for AccessoryEventItemSelectionController();
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

uint64_t sub_20D04947C(void *a1)
{
  v18 = &unk_28251AC90;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = v3;
  v5 = a1;
  v6 = v1;
  v7 = sub_20D049FE0(v4);
  v8 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  swift_beginAccess();
  v9 = *&v6[v8];
  *&v6[v8] = v7;

  swift_beginAccess();
  v10 = v6;
  v11 = sub_20D5663C8();
  v12 = sub_20D04BBEC(v11, v10);

  swift_beginAccess();
  sub_20D04A71C(v12);
  v13 = v5;
  sub_20CEEA1BC(&v16, v13);
  v14 = v16;
  swift_endAccess();

  v17 = v12;
  sub_20CEEA1BC(&v16, v13);

  return v17;
}

void *sub_20D0495E0(void *a1)
{
  v2 = v1;
  sub_20D049794(a1);
  if ((v4 & 1) == 0 || *(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_allowsDeselecting) != 1)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = *(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem);
  sub_20CECF940(0, &unk_27C81AE40);
  sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
  v6 = v5;
  v7 = MEMORY[0x277D84FA0];
  v8 = sub_20D567CD8();
  v9 = [v6 setCharacteristics:v8 triggerValue:0];

  result = *(v2 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow);
  if (!result)
  {
    goto LABEL_6;
  }

  if (*(v2 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier))
  {
    if (![result shouldSaveEventBuildersToTriggerBuilderForStep_])
    {
LABEL_7:
      v11 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems;
      swift_beginAccess();
      v13 = *(v2 + v11);
      sub_20D5663C8();
      sub_20CEEA1BC(&v12, a1);

      *(v2 + v11) = v7;

      return v13;
    }

LABEL_6:
    [*(v2 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder) applyEventBuilderDiff_];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_20D049794(void *a1)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v5 latestResults];
    if (v6)
    {
      v7 = v6;
      v8 = sub_20D567758();

      v9 = sub_20D567838();
      if (*(v8 + 16))
      {
        v11 = v1;
        v12 = sub_20CEED668(v9, v10);
        v14 = v13;

        if (v14)
        {
          sub_20CED43FC(*(v8 + 56) + 32 * v12, v48);

          sub_20CECF940(0, &unk_27C81AE40);
          v1 = v11;
          if (swift_dynamicCast())
          {
            v15 = [*(v11 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem) characteristics];
            sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
            v16 = sub_20D567D08();

            sub_20D0489A0(v47, v16, &unk_27C81AE40);
LABEL_39:

            return;
          }
        }

        else
        {

          v1 = v11;
        }
      }

      else
      {
      }
    }

    v42 = v5;
    v17 = [*(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem) characteristics];
    sub_20CECF940(0, &unk_27C81AE40);
    sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
    v18 = sub_20D567D08();

    if ((v18 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_20D568718();
      sub_20D567D58();
      v18 = v48[0];
      v19 = v48[1];
      v20 = v48[2];
      v21 = v48[3];
      v22 = v48[4];
    }

    else
    {
      v23 = -1 << *(v18 + 32);
      v19 = v18 + 56;
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

      v22 = v25 & *(v18 + 56);
      sub_20D5663C8();
      v21 = 0;
    }

    v26 = (v20 + 64) >> 6;
    v43 = v4;
    v44 = v18;
    v45 = v19;
    v27 = v21;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    if (sub_20D568798())
    {
      swift_dynamicCast();
      v33 = v47;
      v32 = v27;
      for (i = v22; v33; v33 = *(*(v18 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31))))))
      {
        v34 = [v4 accessoryRepresentableObject];
        swift_getObjectType();
        v35 = sub_20D568218();
        swift_unknownObjectRelease();
        if ((v35 & 0xC000000000000001) != 0)
        {
          v28 = v33;
          v29 = sub_20D5687A8();

          v22 = i;
          if (v29)
          {
            break;
          }

          v27 = v32;
          if (v18 < 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (*(v35 + 16))
          {
            v36 = sub_20D5683E8();
            v37 = -1 << *(v35 + 32);
            v38 = v36 & ~v37;
            if ((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
            {
              v39 = ~v37;
              while (1)
              {
                v40 = *(*(v35 + 48) + 8 * v38);
                v41 = sub_20D5683F8();

                if (v41)
                {
                  break;
                }

                v38 = (v38 + 1) & v39;
                if (((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                {
                  goto LABEL_34;
                }
              }

              break;
            }
          }

LABEL_34:

          v4 = v43;
          v18 = v44;
          v19 = v45;
          v22 = i;
          v27 = v32;
          if (v44 < 0)
          {
            goto LABEL_26;
          }
        }

LABEL_20:
        v30 = v27;
        v31 = v22;
        v32 = v27;
        if (!v22)
        {
          while (1)
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v32 >= v26)
            {
              goto LABEL_38;
            }

            v31 = *(v19 + 8 * v32);
            ++v30;
            if (v31)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          return;
        }

LABEL_24:
        i = (v31 - 1) & v31;
      }
    }

LABEL_38:

    sub_20CEC80DC();
    goto LABEL_39;
  }
}

void sub_20D049CE8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_20D5663C8();
  *(v2 + v4) = sub_20CF84068(a1, v5);

  v25[3] = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    a1 = v25[7];
    v6 = v25[8];
    v7 = v25[9];
    v8 = v25[10];
    v9 = v25[11];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = (a1 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(a1 + 56));
    sub_20D5663C8();
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  while (a1 < 0)
  {
    v19 = sub_20D568798();
    if (!v19 || (v24 = v19, sub_20CECF940(0, &qword_281120AC0), swift_dynamicCast(), v18 = v25[0], v16 = v8, v17 = v9, !v25[0]))
    {
LABEL_25:
      sub_20CEC80DC();
      return;
    }

LABEL_19:
    sub_20D049794(v18);
    if (v20)
    {
      swift_beginAccess();
      v21 = sub_20CEEA1BC(&v24, v18);
      v22 = v24;
      swift_endAccess();

      if ((v21 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      swift_beginAccess();
      v23 = sub_20CEEECF8(v18);
      swift_endAccess();
      if (!v23)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    sub_20CEEA1BC(v25, v18);

LABEL_9:
    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_25;
    }

    v15 = v6[v16];
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_20D049FE0(void *a1)
{
  v3 = sub_20D04AEDC(a1);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = [objc_opt_self() hf_sensingCharacteristicTypes];
    v8 = sub_20D567D08();

    LOBYTE(v7) = sub_20D048894(v5, v6, v8);

    if (v7)
    {
      v9 = sub_20D04A954(a1, v5, v6, v1);
    }

    else
    {
      v9 = sub_20D04AD80(a1, v5, v6);
    }

    v11 = v9;
  }

  else
  {
    v10 = [objc_opt_self() futureWithNoResult];
    v11 = [v10 asGeneric];
  }

  return v11;
}

id sub_20D04A0F0(void *a1)
{
  v6[3] = sub_20CECF940(0, &qword_27C81FC18);
  v6[0] = a1;
  v2 = a1;
  sub_20D04A228(v6);
  sub_20CFE69A4(v6);
  v3 = [objc_opt_self() futureWithNoResult];
  v4 = [v3 asGeneric];

  return v4;
}

id sub_20D04A1B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_20D04A228(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_eventBuilderItem);
  sub_20CECF940(0, &unk_27C81AE40);
  sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
  v4 = v3;
  v5 = sub_20D567CD8();
  sub_20CFB2168(a1, v16);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_20D568BD8();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v4 setCharacteristics:v5 triggerValue:v12];

  swift_unknownObjectRelease();
  v14 = *(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_flow);
  if (!v14)
  {
    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_stepIdentifier))
  {
    if (![v14 shouldSaveEventBuildersToTriggerBuilderForStep_])
    {
LABEL_8:

      return;
    }

LABEL_7:
    v15 = *(v1 + OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder);
    [v15 applyEventBuilderDiff_];

    goto LABEL_8;
  }

  __break(1u);
}

id AccessoryEventItemSelectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessoryEventItemSelectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryEventItemSelectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *sub_20D04A5E0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_20D04B838(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_20D04A678(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20D5663C8();
    v10 = sub_20D04B10C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void sub_20D04A71C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_20D568768())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_20D5663C8();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_20CEC80DC();
      return;
    }

    while (1)
    {
      v16 = sub_20CEEECF8(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_20D568798())
      {
        sub_20CECF940(0, &qword_281120AC0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_20D04A954(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = [a1 accessoryRepresentableObject];
  swift_getObjectType();
  v8 = sub_20D568218();
  swift_unknownObjectRelease();
  sub_20D5663C8();
  v9 = sub_20D04B5BC(v8, a2, a3);

  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*(v9 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    v29 = [objc_opt_self() futureWithNoResult];
    v14 = [v29 asGeneric];

    return v14;
  }

  if (!sub_20D568768())
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = objc_opt_self();
  v11 = sub_20D5677F8();
  v12 = [v10 hf:v11 abnormalValueForSensorCharacteristicType:?];

  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20CED43FC(v36, &aBlock);
  sub_20D04A228(&aBlock);
  sub_20CFE69A4(&aBlock);
  v13 = [objc_opt_self() futureWithNoResult];
  v14 = [v13 asGeneric];

  v15 = [v10 hf_continuousValueRangeCharacteristicTypes];
  v16 = sub_20D567D08();

  v17 = sub_20D048894(a2, a3, v16);

  if (v17)
  {
    v18 = objc_opt_self();
    sub_20CECF940(0, &unk_27C81AE40);
    sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
    v19 = sub_20D567CD8();
    v20 = [*&a4[OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_triggerBuilder] home];
    v21 = [v18 getThresholdRangeValueForCharacteristics:v19 inHome:v20];

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = v9;
    v34 = sub_20D04C09C;
    v35 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_20D04A1A4;
    v33 = &block_descriptor_32;
    v23 = _Block_copy(&aBlock);
    v24 = a4;

    v25 = [v21 flatMap_];
    _Block_release(v23);
    v34 = sub_20CFF029C;
    v35 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_20D04A1AC;
    v33 = &block_descriptor_25_0;
    v26 = _Block_copy(&aBlock);
    v27 = [v25 recover_];
    _Block_release(v26);

    __swift_destroy_boxed_opaque_existential_1(v36);
    return v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v36);

  return v14;
}

id sub_20D04AD80(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 accessoryRepresentableObject];
  swift_getObjectType();
  v6 = sub_20D568218();
  swift_unknownObjectRelease();
  sub_20D5663C8();
  v7 = sub_20D04B5BC(v6, a2, a3);

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v8 = [objc_opt_self() futureWithNoResult];
    v9 = [v8 asGeneric];
    goto LABEL_6;
  }

  if (!sub_20D568768())
  {
    goto LABEL_5;
  }

LABEL_3:
  memset(v12, 0, 32);
  sub_20D04A228(v12);

  sub_20CFE69A4(v12);
  v8 = [objc_opt_self() futureWithNoResult];
  v9 = [v8 asGeneric];
LABEL_6:
  v10 = v9;

  return v10;
}

uint64_t sub_20D04AEDC(void *a1)
{
  v2 = [a1 latestResults];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_20D567758();

  v5 = sub_20D567838();
  if (!*(v4 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_20CEED668(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_20CED43FC(*(v4 + 56) + 32 * v7, v17);

  sub_20CECF940(0, &unk_27C81AE40);
  if (swift_dynamicCast())
  {
    v10 = [v16 characteristicType];
    v11 = sub_20D567838();

    goto LABEL_10;
  }

LABEL_8:
  v12 = objc_opt_self();
  v13 = [a1 accessoryRepresentableObject];
  swift_getObjectType();
  sub_20D5681D8();
  swift_unknownObjectRelease();
  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
  v14 = sub_20D567CD8();

  v10 = [v12 characteristicTypeWithOptionsForServices_];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_20D567838();
LABEL_10:

  return v11;
}

uint64_t sub_20D04B10C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v24 = result;
  v25 = 0;
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
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = [v15 characteristicType];
    v17 = sub_20D567838();
    v19 = v18;

    if (v17 == a4 && v19 == a5)
    {

LABEL_18:
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_21:

        return sub_20D0C132C(v24, v23, v25, a3);
      }
    }

    else
    {
      v21 = sub_20D568BF8();

      if (v21)
      {
        goto LABEL_18;
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
      goto LABEL_21;
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
  return result;
}

uint64_t sub_20D04B2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v6 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = sub_20D5663C8();
  if (v8 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v32 = v9;
    v33 = v4;
    v31[1] = v31;
    MEMORY[0x28223BE20](v11);
    v34 = v31 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v10);
    v35 = 0;
    v36 = a3;
    v10 = 0;
    v9 = v6 + 56;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
LABEL_12:
      v4 = v6;
      v19 = v16 | (v10 << 6);
      v20 = *(*(v6 + 48) + 8 * v19);
      v21 = [v20 characteristicType];
      v22 = sub_20D567838();
      v24 = v23;

      a3 = v36;
      if (v22 == v37 && v24 == v36)
      {

        v6 = v4;
        v14 = v38;
LABEL_19:
        *&v34[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_22:
          v28 = sub_20D0C132C(v34, v32, v35, v6);

          return v28;
        }
      }

      else
      {
        v26 = sub_20D568BF8();

        v6 = v4;
        v14 = v38;
        if (v26)
        {
          goto LABEL_19;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_22;
      }

      v18 = *(v9 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();
  sub_20D5663C8();
  v28 = sub_20D04A678(v30, v9, v6, v37, a3);

  MEMORY[0x20F31FC70](v30, -1, -1);

  return v28;
}

uint64_t sub_20D04B5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20D04B2C0(a1, a2, a3);
  }

  v5 = MEMORY[0x277D84FA0];
  v24 = MEMORY[0x277D84FA0];
  sub_20D5663C8();
  sub_20D568718();
  if (sub_20D568798())
  {
    sub_20CECF940(0, &unk_27C81AE40);
    while (1)
    {
      swift_dynamicCast();
      v12 = [v23 characteristicType];
      v13 = sub_20D567838();
      v15 = v14;

      if (v13 == a2 && v15 == a3)
      {
        break;
      }

      v17 = sub_20D568BF8();

      if (v17)
      {
        goto LABEL_15;
      }

LABEL_7:
      if (!sub_20D568798())
      {
        goto LABEL_25;
      }
    }

LABEL_15:
    v18 = *(v5 + 16);
    if (*(v5 + 24) <= v18)
    {
      sub_20D0C0408(v18 + 1);
    }

    v5 = v24;
    result = sub_20D5683E8();
    v7 = v24 + 56;
    v8 = -1 << *(v24 + 32);
    v9 = result & ~v8;
    v10 = v9 >> 6;
    if (((-1 << v9) & ~*(v24 + 56 + 8 * (v9 >> 6))) != 0)
    {
      v11 = __clz(__rbit64((-1 << v9) & ~*(v24 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = 0;
      v20 = (63 - v8) >> 6;
      do
      {
        if (++v10 == v20 && (v19 & 1) != 0)
        {
          __break(1u);
          return result;
        }

        v21 = v10 == v20;
        if (v10 == v20)
        {
          v10 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v10);
      }

      while (v22 == -1);
      v11 = __clz(__rbit64(~v22)) + (v10 << 6);
    }

    *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v24 + 48) + 8 * v11) = v23;
    ++*(v24 + 16);
    goto LABEL_7;
  }

LABEL_25:

  return v5;
}

void sub_20D04B838(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    sub_20D049794(v14);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        sub_20D0C10F4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20D04B984(uint64_t a1, void *a2)
{
  v3 = v2;
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v7;
    v27 = v3;
    v25 = &v25;
    MEMORY[0x28223BE20](v9);
    v28 = &v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v8);
    v29 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v3 = (v12 + 63) >> 6;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v17 = v14 | (v11 << 6);
      v7 = *(*(a1 + 48) + 8 * v17);
      sub_20D049794(v7);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_20D0C10F4(v28, v26, v29, a1);

          return v21;
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v10;
  v21 = sub_20D04A5E0(v23, v7, a1, v24);

  MEMORY[0x20F31FC70](v23, -1, -1);

  return v21;
}

uint64_t sub_20D04BBEC(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20D04B984(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v3 = a2;
  sub_20D568718();
  if (sub_20D568798())
  {
    sub_20CECF940(0, &qword_281120AC0);
    do
    {
      swift_dynamicCast();
      sub_20D049794(v16);
      if (v4)
      {
      }

      else
      {
        v5 = *(v2 + 16);
        if (*(v2 + 24) <= v5)
        {
          sub_20D0C041C(v5 + 1);
        }

        v2 = v17;
        result = sub_20D5683E8();
        v7 = v17 + 56;
        v8 = -1 << *(v17 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v10 == v13;
            if (v10 == v13)
            {
              v10 = 0;
            }

            v12 |= v14;
            v15 = *(v7 + 8 * v10);
          }

          while (v15 == -1);
          v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v17 + 48) + 8 * v11) = v16;
        ++*(v17 + 16);
      }
    }

    while (sub_20D568798());
  }

  return v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D04C0BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s40AccessoryControlsContainerViewControllerCMa()
{
  result = qword_27C81FC48;
  if (!qword_27C81FC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D04C1A4()
{
  v1 = v0;
  v2 = sub_20D564FB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20D564F98();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20D565068();
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [v1 traitCollection];
  sub_20CED05D4(v11, v10);

  v12 = sub_20D565418();
  result = (*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for HomeUIAccessoryControlViewController + 48))(v12);
  if (result)
  {
    sub_20D564F58();
    v14 = sub_20D5653F8();
    sub_20D565008();
    v14(v16, 0);
    (*(v3 + 104))(v5, *MEMORY[0x277D14E98], v2);
    v15 = sub_20D5653F8();
    sub_20D565058();
    return v15(v16, 0);
  }

  return result;
}

uint64_t sub_20D04C44C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_20D563E88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27C81FC40) = 0;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (v11 = [objc_opt_self() mainScreen], objc_msgSend(v11, sel_bounds), v13 = v12, v15 = v14, v17 = v16, v19 = v18, v11, v24.origin.x = v13, v24.origin.y = v15, v24.size.width = v17, v24.size.height = v19, Width = CGRectGetWidth(v24), v25.origin.x = v13, v25.origin.y = v15, v25.size.width = v17, v25.size.height = v19, CGRectGetHeight(v25) < Width) && (HUIsPhoneIdiom() & 1) != 0)
  {
    (*(v8 + 8))(a1, v7);

    _s40AccessoryControlsContainerViewControllerCMa();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v8 + 16))(v10, a1, v7);
    v21 = DataModelAccessoryControlViewController.init(identifier:item:tileHelper:)(v10, a2, a3);
    (*(v8 + 8))(a1, v7);
  }

  return v21;
}

void sub_20D04C660(uint64_t a1)
{
  *(a1 + qword_27C81FC40) = 0;
  sub_20D568A58();
  __break(1u);
}

uint64_t sub_20D04C6C8(void *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_20D04CD24;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  v8 = sub_20D565368();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v6;
  aBlocka[4] = sub_20D04CCC8;
  aBlocka[5] = v9;
  aBlocka[0] = MEMORY[0x277D85DD0];
  aBlocka[1] = 1107296256;
  aBlocka[2] = sub_20CFFFE8C;
  aBlocka[3] = &block_descriptor_33;
  v10 = _Block_copy(aBlocka);

  sub_20CEC81F4(v5);

  v12.receiver = v7;
  v12.super_class = _s40AccessoryControlsContainerViewControllerCMa();
  objc_msgSendSuper2(&v12, sel_dismissViewControllerAnimated_completion_, 0, v10);

  sub_20CEC8164(v5);
  _Block_release(v10);
}

void sub_20D04C840(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + qword_27C81FC40))
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    *(v3 + qword_27C81FC40) = 1;
    if (a2)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a2;
      *(v6 + 24) = a3;
      v7 = sub_20CFC4144;
    }

    else
    {
      v7 = CGSizeMake;
      v6 = 0;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    sub_20CEC81F4(a2);
    sub_20D565358();
  }
}

void sub_20D04C96C(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_20CF79684;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  sub_20D04C840(a3, v6, v7);
  sub_20CEC8164(v6);
}

void sub_20D04CA28(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = _s40AccessoryControlsContainerViewControllerCMa();
  swift_unknownObjectRetain();
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_viewWillTransitionToSize_withTransitionCoordinator_, a5, a2, a3);
  sub_20D04CAB8();
  swift_unknownObjectRelease();
}

uint64_t sub_20D04CAB8()
{
  v0 = sub_20D564F68();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D04C1A4();
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  if (CGRectGetHeight(v21) < Width && (HUIsPhoneIdiom() & 1) != 0)
  {
    v14 = MEMORY[0x277D14E78];
  }

  else
  {
    v14 = MEMORY[0x277D14E80];
  }

  (*(v1 + 104))(v3, *v14, v0);
  v15 = sub_20D5653F8();
  v16 = sub_20D564FF8();
  sub_20D564F78();
  v16(v18, 0);
  return v15(v19, 0);
}

id sub_20D04CC88()
{
  v2.receiver = v0;
  v2.super_class = _s40AccessoryControlsContainerViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D04CCC8()
{
  v1 = *(v0 + 24);
  result = sub_20D565628();
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSo38HUAccessorySceneListContentItemManagerC6HomeUIE12matterAction_8involvesSbSo015HMMatterCommandJ0C_So013HFServiceLikeE0_ptFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  MEMORY[0x28223BE20](v38);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  sub_20D565D18();
  if (swift_dynamicCastClass())
  {
    v35 = v7;
    v36 = v12;
    v37 = a2;
    swift_unknownObjectRetain();
    v19 = [a1 representedAccessory];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 uniqueIdentifier];

      sub_20D5637E8();
      v22 = *(v5 + 56);
      v22(v18, 0, 1, v4);
    }

    else
    {
      v22 = *(v5 + 56);
      v22(v18, 1, 1, v4);
    }

    v24 = sub_20D565CC8();
    v25 = sub_20D565E28();

    v26 = [v25 uniqueIdentifier];
    sub_20D5637E8();

    v22(v15, 0, 1, v4);
    v27 = *(v38 + 48);
    sub_20CF073C8(v18, v9);
    sub_20CF073C8(v15, &v9[v27]);
    v28 = *(v5 + 48);
    if (v28(v9, 1, v4) == 1)
    {
      swift_unknownObjectRelease();
      sub_20CEF928C(v15, &qword_27C81C180);
      sub_20CEF928C(v18, &qword_27C81C180);
      if (v28(&v9[v27], 1, v4) == 1)
      {
        sub_20CEF928C(v9, &qword_27C81C180);
        v23 = 1;
        return v23 & 1;
      }
    }

    else
    {
      v29 = v36;
      sub_20CF073C8(v9, v36);
      if (v28(&v9[v27], 1, v4) != 1)
      {
        v30 = &v9[v27];
        v31 = v35;
        (*(v5 + 32))(v35, v30, v4);
        sub_20CF72C88();
        v32 = v29;
        v23 = sub_20D5677E8();
        swift_unknownObjectRelease();
        v33 = *(v5 + 8);
        v33(v31, v4);
        sub_20CEF928C(v15, &qword_27C81C180);
        sub_20CEF928C(v18, &qword_27C81C180);
        v33(v32, v4);
        sub_20CEF928C(v9, &qword_27C81C180);
        return v23 & 1;
      }

      swift_unknownObjectRelease();
      sub_20CEF928C(v15, &qword_27C81C180);
      sub_20CEF928C(v18, &qword_27C81C180);
      (*(v5 + 8))(v29, v4);
    }

    sub_20CEF928C(v9, &qword_27C81D948);
    v23 = 0;
    return v23 & 1;
  }

  v23 = 0;
  return v23 & 1;
}

Swift::Void __swiftcall HUSoftwareUpdateStandaloneViewController.refreshDataModel(for:)(HMHome a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20D567C58();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20D567C18();
  v6 = a1.super.isa;
  v7 = sub_20D567C08();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_20CF18F74(0, 0, v4, &unk_20D5C5768, v8);
}

uint64_t sub_20D04D3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_20D567C18();
  v4[4] = sub_20D567C08();
  v6 = sub_20D567BA8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_20D04D438, v6, v5);
}

uint64_t sub_20D04D438()
{
  sub_20D563F48();
  v0[7] = sub_20D563F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E188);
  sub_20CFADDD8();
  v1 = sub_20D567DA8();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_20D04D524;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x28216E9A0](v3, v4, 0, v1);
}

uint64_t sub_20D04D524()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_20CFB3074, v4, v3);
}

uint64_t sub_20D04D680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D04D3A0(a1, v4, v5, v6);
}

uint64_t sub_20D04D864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20D04D3A0(a1, v4, v5, v6);
}

uint64_t sub_20D04D918()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C81FC58);
  __swift_project_value_buffer(v0, qword_27C81FC58);
  return sub_20D565978();
}

uint64_t sub_20D04D9C4()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_281120908);
  __swift_project_value_buffer(v0, qword_281120908);
  return sub_20D565978();
}

uint64_t sub_20D04DA64()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C81FC70);
  __swift_project_value_buffer(v0, qword_27C81FC70);
  return sub_20D565978();
}

uint64_t sub_20D04DB10()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C81FC88);
  __swift_project_value_buffer(v0, qword_27C81FC88);
  return sub_20D565978();
}

uint64_t sub_20D04DBBC()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_281120930);
  __swift_project_value_buffer(v0, qword_281120930);
  return sub_20D565978();
}

uint64_t sub_20D04DC68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_20D565988();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *sub_20D04DD00()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  v2 = v1;
  return v1;
}

id sub_20D04DDB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  *a2 = v4;

  return v4;
}

void sub_20D04DE70(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper;
  v5 = *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_20CECF940(0, &qword_27C81FF80);
  v6 = v5;
  v7 = a1;
  v8 = sub_20D5683F8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_20D04E008()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish);
  sub_20CEC81F4(v1);
  return v1;
}

uint64_t sub_20D04E0C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish);
  v5 = *(v3 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20D056ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20CEC81F4(v4);
}

uint64_t sub_20D04E1C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_20CFC42B8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_20CEC81F4(v1);
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D5638F8();
  sub_20CEC8164(v4);
}

uint64_t sub_20D04E31C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v3 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedAutomationsViewCoordinator;
  swift_beginAccess();
  return sub_20CECF7A0(v5 + v3, a1);
}

uint64_t sub_20D04E3E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedAutomationsViewCoordinator;
  swift_beginAccess();
  return sub_20CECF7A0(v3 + v4, a2);
}

uint64_t sub_20D04E4AC(uint64_t a1)
{
  sub_20CECF7A0(a1, v2);
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D5638F8();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_20D04E58C(uint64_t a1, uint64_t a2)
{
  sub_20CECF7A0(a2, v5);
  v3 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedAutomationsViewCoordinator;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(a1 + v3);
  sub_20CF02B6C(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_20D04E60C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v3 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__linkedApplicationViewCoordinator;
  swift_beginAccess();
  return sub_20D056B34(v5 + v3, a1);
}

uint64_t sub_20D04E6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  v4 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__linkedApplicationViewCoordinator;
  swift_beginAccess();
  return sub_20D056B34(v3 + v4, a2);
}

uint64_t sub_20D04E79C(uint64_t a1)
{
  sub_20D056B34(a1, v2);
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D5638F8();

  return sub_20CEF928C(v2, &qword_27C81FE18);
}

uint64_t sub_20D04E88C(uint64_t a1, uint64_t a2)
{
  sub_20D056B34(a2, v5);
  v3 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__linkedApplicationViewCoordinator;
  swift_beginAccess();
  sub_20D056BC0(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_20D04E940()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  return *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet);
}

uint64_t sub_20D04E9E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  *a2 = *(v3 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet);
  return result;
}

uint64_t sub_20D04EA98(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
    sub_20D5638F8();
  }

  return result;
}

uint64_t sub_20D04EC00(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  return *(v2 + *a2);
}

uint64_t sub_20D04ECA0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  sub_20D563908();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_20D04ED7C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
    sub_20D5638F8();
  }

  return result;
}

char *sub_20D04EE74(void *a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalHelper] = 0;
  v7 = &v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__removalAlertAccessoryName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__linkedApplicationViewCoordinator];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__ecosystemCount] = 0;
  v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__canAddKeyToWallet] = 0;
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__existingSceneCount] = 0;
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedSceneCount] = 0;
  sub_20D563938();
  v54 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item;
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item] = a1;
  v10 = OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home;
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home] = a2;
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_accessory] = a3;
  v11 = objc_allocWithZone(HUServiceDetailsItemManager);
  v57 = a3;
  v12 = a1;
  v13 = a2;
  v14 = [v11 initWithServiceItem:v12 delegate:0];
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_itemManager] = v14;
  [v14 setHome_];
  v15 = type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator(0);
  v16 = [objc_allocWithZone(v15) init];
  v17 = objc_allocWithZone(type metadata accessor for AccessoryDetailsSuggestedAutomationsViewController());
  v18 = v12;
  v19 = v13;
  v20 = v16;
  v56 = v18;
  v21 = sub_20D057CEC(v18, v19, v20, v17);
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_suggestedAutomationsViewController] = v21;
  v22 = &v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_suggestedAutomationsViewRepresentable];
  *v22 = v21;
  v22[1] = v20;
  v23 = &v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedAutomationsViewCoordinator];
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__suggestedAutomationsViewCoordinator + 24] = v15;
  v23[4] = sub_20D056AEC(&qword_27C81FF88, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  *v23 = v20;
  v24 = type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator(0);
  v25 = objc_allocWithZone(v24);
  v55 = v20;
  v26 = v21;
  v27 = [v25 init];
  v28 = *&v3[v54];
  v29 = *&v3[v10];
  v30 = objc_allocWithZone(type metadata accessor for AccessoryDetailsLinkedApplicationViewController());
  v31 = v28;
  v32 = v27;
  v33 = v29;
  v34 = sub_20D0584F4(v31, v32, v33, v30);

  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_linkedApplicationViewController] = v34;
  v35 = &v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_linkedApplicationViewRepresentable];
  if (v34)
  {
    *v35 = v34;
    v35[1] = v32;
    v36 = v32;
  }

  else
  {
    *v35 = 0;
    v35[1] = 0;
  }

  v37 = sub_20D056AEC(&unk_27C81FF90, type metadata accessor for AccessoryDetailsHelper.LinkedApplicationViewRepresentable.Coordinator);
  v38 = v34;
  v39 = v32;
  sub_20CEF928C(v9, &qword_27C81FE18);
  *v9 = v39;
  *(v9 + 24) = v24;
  *(v9 + 32) = v37;
  v40 = [objc_opt_self() homeAppSuggestionVendor];
  *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_roomSuggestionVendor] = v40;
  v59.receiver = v3;
  v59.super_class = type metadata accessor for AccessoryDetailsHelper(0);
  v41 = objc_msgSendSuper2(&v59, sel_init);
  v42 = *&v41[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_itemManager];
  v43 = v41;
  v44 = [v42 connectedServicesItemModule];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 connectedServicesItemProvider];

    v47 = [v46 asGeneric];
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v49 = [v48 connectedEcosystemsFuture];
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_20D0596FC;
      aBlock[5] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CF48BDC;
      aBlock[3] = &block_descriptor_284;
      v51 = _Block_copy(aBlock);

      v52 = [v49 addCompletionBlock_];
      _Block_release(v51);

      v47 = v49;
    }
  }

  sub_20D0532F4();
  sub_20D05039C();

  return v43;
}

void sub_20D04F39C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if (!a1 || (v4 = [a1 allKeys], v5 = sub_20D567A78(), v4, v6 = sub_20CFAFD98(v5), , !v6))
  {

    v6 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_22:
    v7 = sub_20D568768();
    if (v7)
    {
LABEL_7:
      v21 = v3;
      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x20F31DD20](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v3 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v11 = [v9 vendor];
        v12 = [v11 isSystemCommissionerVendor];

        if (v12 && ([v3 owned] & 1) != 0)
        {
        }

        else
        {
          sub_20D5688C8();
          sub_20D568908();
          sub_20D568918();
          sub_20D5688D8();
        }

        ++v8;
      }

      while (v10 != v7);
      v13 = v22;
      v3 = v21;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v13 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_30:
    v14 = sub_20D568768();
    goto LABEL_26;
  }

LABEL_24:
  if ((v13 & 0x4000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v14 = *(v13 + 16);
LABEL_26:

  if (*&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__ecosystemCount] != v14)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
    sub_20D5638F8();
  }

  v16 = *&v3[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item];
  v17 = objc_allocWithZone(HUMatterAccessoryRemovalHelper);
  sub_20CECF940(0, &unk_27C81E340);
  v18 = v16;
  v19 = sub_20D567A58();

  v20 = [v17 initWithItem:v18 connectedEcosystems:v19];

  sub_20D04DE70(v20);
}

void sub_20D04F718()
{
  v1 = *&v0[OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_accessory];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedDispatcher];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = v3;
    v9[4] = sub_20D0595EC;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20D045C68;
    v9[3] = &block_descriptor_277;
    v6 = _Block_copy(v9);
    v7 = v3;
    v8 = v0;

    [v4 dispatchHomeObserverMessage:v6 sender:0];
    _Block_release(v6);
  }
}

id sub_20D04F95C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D149D8]) initWithHome_];
  v6 = [objc_allocWithZone(HUEditRoomViewController) initWithRoomBuilder:v5 presentationDelegate:a3 addRoomDelegate:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FFE8);
  sub_20D566ED8();
  sub_20CECF7A0(v21, v18);
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = sub_20D563628();

  v10 = v19;
  v11 = v20;
  __swift_mutable_project_boxed_opaque_existential_0(v18, v19);
  (*(v11 + 16))(v9, v10, v11);
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = a3;
  v13 = v8;
  swift_unknownObjectRetain();
  v14 = sub_20D563628();

  v15 = v19;
  v16 = v20;
  __swift_mutable_project_boxed_opaque_existential_0(v18, v19);
  (*(v16 + 40))(v14, v15, v16);

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v6;
}

void sub_20D04FBA8(void *a1)
{
  v2 = [a1 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationItem];

    v5 = [a1 navigationItem];
    v6 = [v5 title];

    [v4 setTitle_];
  }

  v7 = [a1 parentViewController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationItem];

    v10 = [a1 navigationItem];
    v11 = [v10 rightBarButtonItem];

    [v9 setRightBarButtonItem_];
  }

  v12 = [a1 parentViewController];
  if (v12)
  {
    v13 = v12;
    v16 = [v12 navigationItem];

    v14 = [a1 navigationItem];
    v15 = [v14 leftBarButtonItem];

    [v16 setLeftBarButtonItem_];
  }
}

uint64_t sub_20D04FD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059964();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D04FDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059964();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D04FE60()
{
  sub_20D059964();
  sub_20D566E88();
  __break(1u);
}

uint64_t sub_20D04FE88()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_roomSuggestionVendor) roomSuggestions];
  sub_20CECF940(0, &unk_27C81D490);
  sub_20CEF7F74(&unk_27C81FF70, &unk_27C81D490);
  v2 = sub_20D567D08();

  sub_20CF81C34(v2);

  v18 = sub_20CF85628(v3);
  sub_20D057028(&v18);

  v4 = v18;
  if ((v18 & 0x8000000000000000) == 0 && (v18 & 0x4000000000000000) == 0)
  {
    v5 = *(v18 + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_20D568768();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v18 = MEMORY[0x277D84F90];
  sub_20CEF0AC8(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v18;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F31DD20](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 name];
      v11 = sub_20D567838();
      v13 = v12;

      v18 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20CEF0AC8((v14 > 1), v15 + 1, 1);
        v7 = v18;
      }

      ++v6;
      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v5 != v6);

    return v7;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_20D0500A8(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(HUAccessoryDiagnosticsViewController) initWithSourceItem_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FFF0);
  sub_20D566ED8();
  sub_20CECF7A0(v16, v13);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  v5 = sub_20D563628();

  v6 = v14;
  v7 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v7 + 16))(v5, v6, v7);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v4;
  v8 = v4;
  v9 = sub_20D563628();

  v10 = v14;
  v11 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v11 + 40))(v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v3;
}

uint64_t sub_20D0502AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059910();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D050310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D059910();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D050374()
{
  sub_20D059910();
  sub_20D566E88();
  __break(1u);
}

void sub_20D05039C()
{
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_item);
  v3 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home);
  v4 = [v1 computeNumberOfItemsToDisplayForContentSource:0 serviceLikeItem:v2 home:v3];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_20D059544;
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20D059C04;
  v15 = &block_descriptor_267;
  v6 = _Block_copy(&v12);

  v7 = [v4 flatMap_];
  _Block_release(v6);

  v8 = [v1 computeNumberOfItemsToDisplayForContentSource:1 serviceLikeItem:v2 home:v3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_20D059584;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_20D059C04;
  v15 = &block_descriptor_271;
  v10 = _Block_copy(&v12);

  v11 = [v8 flatMap_];
  _Block_release(v10);
}

id sub_20D0505C8(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + *a3) == [a1 integerValue])
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
      sub_20D5638F8();
    }
  }

  v8 = [objc_opt_self() futureWithNoResult];
  v9 = [v8 asGeneric];

  return v9;
}

uint64_t sub_20D05075C()
{
  if (![*(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_home) hf_userCanCreateTrigger] || (v1 = *(*(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_suggestedAutomationsViewController) + OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_triggerModuleController)) != 0 && objc_msgSend(v1, sel_triggerModuleShouldHideAddAutomationButton))
  {

    return sub_20D5674C8();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_suggestedAutomationsViewRepresentable + 8);
    v6 = *(v0 + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper_suggestedAutomationsViewRepresentable);
    sub_20D056990();
    v4 = v6;
    v5 = v3;
    return sub_20D5674C8();
  }
}

double sub_20D050840()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight);
}

double sub_20D0508E8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  result = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight);
  *a2 = result;
  return result;
}

void sub_20D050998(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight) == a1)
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
    sub_20D5638F8();
  }
}

uint64_t sub_20D050AB8()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView);
}

uint64_t sub_20D050B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  *a2 = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView);
  return result;
}

uint64_t sub_20D050C10(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
    sub_20D5638F8();
  }

  return result;
}

void *sub_20D050D28()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__parentChangeObservation);
  v2 = v1;
  return v1;
}

id sub_20D050DD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__parentChangeObservation);
  *a2 = v4;

  return v4;
}

void sub_20D050EC0(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_20D563548();
  v7 = v6;
  v8 = a1;
  v9 = sub_20D5683F8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

void *sub_20D051044()
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  v1 = *(v0 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__navigationItemTitleObservation);
  v2 = v1;
  return v1;
}

id sub_20D0510F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  v4 = *(v3 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__navigationItemTitleObservation);
  *a2 = v4;

  return v4;
}

uint64_t sub_20D051284(double a1)
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  v4 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight);
  if (v4 > a1)
  {
    a1 = *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight);
  }

  if (v4 == a1)
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D5638F8();
  }

  return result;
}

uint64_t sub_20D0513E0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
    sub_20D5638F8();
  }

  return result;
}

double sub_20D051534()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__viewHeight);
}

uint64_t sub_20D051600()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE08, type metadata accessor for AccessoryDetailsHelper.SuggestedAutomationsViewRepresentable.Coordinator);
  sub_20D563908();

  return *(v1 + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelper37SuggestedAutomationsViewRepresentable11Coordinator__shouldShowView);
}

uint64_t sub_20D05171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D058FAC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D051780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D058FAC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20D0517E4()
{
  sub_20D058FAC();
  sub_20D566E88();
  __break(1u);
}

id sub_20D05180C(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(HUAccessorySceneListViewController) initWithServiceLikeItem_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81FFF8);
  sub_20D566ED8();
  sub_20CECF7A0(v16, v13);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;
  v4 = a2;
  v5 = sub_20D563628();

  v6 = v14;
  v7 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v7 + 16))(v5, v6, v7);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v4;
  v8 = v4;
  v9 = sub_20D563628();

  v10 = v14;
  v11 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v11 + 40))(v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v3;
}

uint64_t sub_20D051A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D0598BC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20D051A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D0598BC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}