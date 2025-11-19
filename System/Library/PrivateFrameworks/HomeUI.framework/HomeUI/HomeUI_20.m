id sub_20D09ECA4(void *a1, uint64_t a2)
{
  v5 = sub_20D5638C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v13 = [Strong dashboardNavigator];
  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v26 = type metadata accessor for DashboardFilterBarController();
    v32.receiver = v2;
    v32.super_class = v26;
    v27 = objc_msgSendSuper2(&v32, sel__performTapActionForItem_tappedArea_, a1, a2);

    return v27;
  }

  v15 = v14;
  v16 = a1;
  v17 = [v2 itemManager];
  v18 = [v17 indexPathForItem_];

  if (v18)
  {
    sub_20D563878();

    (*(v6 + 32))(v11, v8, v5);
    result = [v2 collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = [result indexPathsForSelectedItems];

    if (v21)
    {
      v22 = sub_20D567A78();

      v23 = sub_20D09B7D8(v11, v22);

      if (v23)
      {
        v24 = [v15 home];
        v25 = [v13 showHome_];

        swift_unknownObjectRelease();
        (*(v6 + 8))(v11, v5);
        return v25;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  v28 = [v15 accessoryTypeGroup];
  v29 = [v15 home];
  v30 = [v13 showAccessoryTypeGroup:v28 forHome:v29 animated:1];
  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_20D09F0B0()
{
  v1 = [v0 itemManager];
  v2 = [v1 home];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 hf_currentUserIsAdministrator];

  if (!v3)
  {
    return 0;
  }

  if ([v0 isEditing])
  {
    return 1;
  }

  return [objc_opt_self() isAMac];
}

id sub_20D09F340()
{
  v1 = OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___heightConstraint];
LABEL_5:
    v9 = v2;
    return v3;
  }

  result = [v0 collectionView];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    v7 = [v6 constraintEqualToConstant_];
    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_20D09F408()
{
  v1 = OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___blurGroupingEffectView;
  v2 = *(v0 + OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___blurGroupingEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___blurGroupingEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for BlurGroupingEffectView()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_20D09F4A0()
{
  v1 = v0;
  v2 = [v0 itemManager];
  v3 = [v2 allItems];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v4 = sub_20D567D08();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_20D568768();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  if (!v5)
  {
    return result;
  }

  v7 = OBJC_IVAR___HUDashboardFilterBarController_layoutConstraints;
  if (*&v1[OBJC_IVAR___HUDashboardFilterBarController_layoutConstraints])
  {
    v8 = objc_opt_self();
    sub_20CECF940(0, &qword_28111FEC0);
    sub_20D5663C8();
    v9 = sub_20D567A58();

    [v8 deactivateConstraints_];
  }

  v51 = MEMORY[0x277D84F90];
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = result;
  v11 = [result superview];

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BECD0;
    result = [v1 collectionView];
    if (!result)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v13 = result;
    v14 = [result widthAnchor];

    v15 = [v11 widthAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(inited + 32) = v16;
    result = [v1 collectionView];
    if (!result)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v17 = result;
    v18 = [result bottomAnchor];

    v19 = [v11 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(inited + 40) = v20;
    result = [v1 collectionView];
    if (!result)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = [result leadingAnchor];

    v23 = [v11 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(inited + 48) = v24;
    sub_20CF6BECC(inited);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_20D5BC4C0;
  v26 = sub_20D09F408();
  v27 = [v26 topAnchor];

  result = [v1 view];
  if (!result)
  {
    goto LABEL_25;
  }

  v28 = result;
  v29 = [result topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v25 + 32) = v30;
  v31 = OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___blurGroupingEffectView;
  v32 = [*&v1[OBJC_IVAR___HUDashboardFilterBarController____lazy_storage___blurGroupingEffectView] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = result;
  v34 = [result bottomAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v25 + 40) = v35;
  v36 = [*&v1[v31] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = result;
  v38 = [result leadingAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v25 + 48) = v39;
  v40 = [*&v1[v31] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = result;
  v42 = [result trailingAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v25 + 56) = v43;
  sub_20CF6BECC(v25);
  sub_20D09D97C();
  v44 = OBJC_IVAR___HUDashboardFilterBarController_preferredHeight;
  v45 = *&v1[OBJC_IVAR___HUDashboardFilterBarController_preferredHeight];
  *&v1[OBJC_IVAR___HUDashboardFilterBarController_preferredHeight] = v46;
  if (v46 != v45)
  {
    v47 = sub_20D09F340();
    [v47 setConstant_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong dashboardFilterBarController:v1 didUpdatePreferredHeight:*&v1[v44]];
      swift_unknownObjectRelease();
    }
  }

  sub_20D09F340();
  MEMORY[0x20F31CEE0]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v49 = objc_opt_self();
  sub_20CECF940(0, &qword_28111FEC0);
  v50 = sub_20D567A58();
  [v49 activateConstraints_];

  *&v1[v7] = v51;
}

id DashboardFilterBarController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id DashboardFilterBarController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id DashboardFilterBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardFilterBarController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D09FDB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();

    if (v10)
    {
      v11 = [v10 dashboardNavigator];
      swift_unknownObjectRelease();
      if (v11)
      {
        v12 = [a3 accessoryTypeGroup];
        v13 = [a3 home];
        v14 = [v11 showAccessoryTypeGroup:v12 forHome:v13 animated:1];
        swift_unknownObjectRelease();
      }
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_20D09FF2C(a4, a5, a3);
  }
}

void sub_20D09FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v6 = sub_20D5677F8();
  [v5 na:v6 safeSetObject:*MEMORY[0x277D134F0] forKey:?];

  v7 = v3 + OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics;
  swift_beginAccess();
  if (*(v7 + 8))
  {
    sub_20D5663C8();
    v8 = sub_20D5677F8();
  }

  else
  {
    v8 = 0;
  }

  [v5 na:v8 safeSetObject:*MEMORY[0x277D134F8] forKey:?];
  swift_unknownObjectRelease();
  [v5 na:v3 safeSetObject:*MEMORY[0x277D13588] forKey:?];
  [v5 na:a3 safeSetObject:*MEMORY[0x277D13538] forKey:?];
  v5;
  sub_20D567748();
  __break(1u);
}

void sub_20D0A0104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D17E48]) init];
  v10 = [a4 accessoryTypeGroup];
  v11 = [a4 home];
  v12 = [v9 recommendationsForAccessoryTypeGroup:v10 inHome:v11 options:4];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a5;
  v16[4] = sub_20D0A365C;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_20CF48BDC;
  v16[3] = &block_descriptor_51_1;
  v14 = _Block_copy(v16);

  v15 = [v12 addCompletionBlock_];
  _Block_release(v14);
}

uint64_t sub_20D0A029C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v33 = 0;
    sub_20CECF940(0, &qword_27C820CA8);
    sub_20D567A68();
  }

  v4 = sub_20D0A2844(MEMORY[0x277D84F90]);

  if (v4 >> 62)
  {
LABEL_27:
    v5 = sub_20D568768();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      v6 = v4;
      v33 = MEMORY[0x277D84F90];
      v4 = &v33;
      result = sub_20D5688F8();
      if (v5 < 0)
      {
        __break(1u);
        return result;
      }

      v29 = a3;
      v32 = v6 & 0xC000000000000001;
      sub_20CECF940(0, &unk_28111FB00);
      v8 = objc_opt_self();
      v9 = v6;
      v10 = 0;
      v30 = v6 & 0xFFFFFFFFFFFFFF8;
      v31 = v8;
      v11 = v6;
      do
      {
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v32)
        {
          v15 = MEMORY[0x20F31DD20](v10, v9);
        }

        else
        {
          if (v10 >= *(v30 + 16))
          {
            goto LABEL_26;
          }

          v15 = *(v9 + 8 * v10 + 32);
        }

        v16 = v15;
        v17 = [v15 name];
        if (v17)
        {
          v18 = v17;
          sub_20D567838();
        }

        if ([v16 iconDescriptor])
        {
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19 && (v20 = v19, ([v19 isSystemImage] & 1) != 0))
          {
            v21 = [v20 imageIdentifier];
            sub_20D567838();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v12 = sub_20D5677F8();

        a3 = [v31 systemImageNamed_];

        v13 = swift_allocObject();
        *(v13 + 16) = v16;
        v24 = 0;
        v25 = 0;
        v27 = sub_20D0A3668;
        v28 = v13;
        v26 = 0;
        sub_20D568438();
        v4 = &v33;
        sub_20D5688C8();
        sub_20D568908();
        sub_20D568918();
        sub_20D5688D8();
        ++v10;
        v9 = v11;
      }

      while (v14 != v5);

      v22 = v33;
      a3 = v29;
      if (v33 >> 62)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  v22 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_29:
    sub_20CECF940(0, &unk_28111FFC0);
    sub_20D5663C8();
    v23 = sub_20D568A78();

    goto LABEL_22;
  }

LABEL_21:
  sub_20D5663C8();
  sub_20D568C08();
  sub_20CECF940(0, &unk_28111FFC0);
  v23 = v22;
LABEL_22:

  a3(v23);
}

uint64_t sub_20D0A06B0(uint64_t a1, uint64_t a2, char **a3)
{
  if (a1)
  {
    sub_20CECF940(0, &qword_27C81DFD0);
    sub_20D567A68();
  }

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_20;
  }

  v5 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v30 = MEMORY[0x277D84F90];
      result = sub_20D5688F8();
      if (v5 < 0)
      {
        break;
      }

      v27 = a3;
      sub_20CECF940(0, &unk_28111FB00);
      v7 = 0;
      v28 = objc_opt_self();
      a3 = &selRef__updateStatusTextNotifyingDelegate_;
      v29 = v5;
      while (1)
      {
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F31DD20](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v15 = *(v4 + 8 * v7 + 32);
        }

        v16 = v15;
        v17 = [v15 actionSet];
        v18 = [v17 name];

        sub_20D567838();
        v19 = [v16 actionSet];
        v20 = [v19 hf_iconDescriptor];

        LODWORD(v19) = [v20 isSystemImage];
        if (v19)
        {
          v8 = [v16 actionSet];
          v9 = [v8 hf_iconDescriptor];

          v10 = [v9 imageIdentifier];
          sub_20D567838();
        }

        v11 = sub_20D5677F8();

        v12 = [v28 systemImageNamed_];

        v13 = swift_allocObject();
        *(v13 + 16) = v16;
        v22 = 0;
        v23 = 0;
        v25 = sub_20D0A3614;
        v26 = v13;
        v24 = 0;
        sub_20D568438();
        sub_20D5688C8();
        sub_20D568908();
        sub_20D568918();
        sub_20D5688D8();
        ++v7;
        if (v14 == v29)
        {

          v21 = v30;
          a3 = v27;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v5 = sub_20D568768();
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v21 = MEMORY[0x277D84F90];
LABEL_22:
    swift_beginAccess();
    a3[2] = v21;

    return sub_20D568158();
  }

  return result;
}

id sub_20D0A0A60(void *a1)
{
  v1 = [a1 filteredToAccessoriesShownInStatus];

  return v1;
}

id sub_20D0A0A94()
{
  v1 = v0;
  if (qword_281120928 != -1)
  {
    swift_once();
  }

  v2 = sub_20D565988();
  __swift_project_value_buffer(v2, qword_281120930);
  v3 = sub_20D565968();
  v4 = sub_20D567EC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v3, v4, "[DashboardFilterBarController-handleTraitChanges]", v5, 2u);
    MEMORY[0x20F31FC70](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR___HUDashboardFilterBarController__layoutOptions];
  *&v1[OBJC_IVAR___HUDashboardFilterBarController__layoutOptions] = 0;

  v7 = [v1 itemManager];
  v8 = [v1 itemManager];
  v9 = [v8 allDisplayedItems];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v10 = sub_20D567D08();

  sub_20CF81C08(v10);

  v11 = sub_20D567A58();

  [v7 reloadUIRepresentationForItems:v11 withAnimation:1];

  return sub_20D09F4A0();
}

void *sub_20D0A0CD0()
{
  v1 = [v0 containedAccessoryRepresentables];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
  v2 = sub_20D567A78();

  v25 = v0;
  v26 = v2;
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v4 = 0;
    v27 = v3;
LABEL_4:
    if ((v26 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v4 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v26 + 32 + 8 * v4);
      swift_unknownObjectRetain();
      v6 = __OFADD__(v4++, 1);
      if (!v6)
      {
        goto LABEL_7;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      swift_unknownObjectRelease();
      sub_20CEC80DC();

      v22 = v25;
      v23 = v25;
      return v22;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v3 = sub_20D568768();
    if (!v3)
    {
      goto LABEL_34;
    }
  }

  v5 = MEMORY[0x20F31DD20](v4, v26);
  v6 = __OFADD__(v4++, 1);
  if (v6)
  {
    goto LABEL_29;
  }

LABEL_7:
  v7 = [objc_opt_self() accessoryLikeObjectsForAccessoryRepresentable_];
  sub_20CECF940(0, &unk_27C81BF40);
  sub_20CEF7F74(&qword_27C81ECE0, &unk_27C81BF40);
  v8 = sub_20D567D08();

  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v13 = v33;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);
    sub_20D5663C8();
    v12 = 0;
    v9 = v8;
  }

  v17 = (v11 + 64) >> 6;
  while (v9 < 0)
  {
    if (!sub_20D568798())
    {
      goto LABEL_25;
    }

    swift_dynamicCast();
    v20 = v28;
    if (!v28)
    {
      goto LABEL_25;
    }

LABEL_23:
    v21 = [v20 hf_isVisibleInHomeStatus];

    if (v21)
    {
      goto LABEL_30;
    }
  }

  v18 = v12;
  v19 = v13;
  if (!v13)
  {
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_25;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_19:
  v13 = (v19 - 1) & v19;
  v20 = *(*(v9 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_25:
  swift_unknownObjectRelease();
  sub_20CEC80DC();

  if (v4 != v27)
  {
    goto LABEL_4;
  }

LABEL_34:

  return 0;
}

id sub_20D0A1050(void *a1)
{
  v1 = a1;
  v2 = sub_20D0A0CD0();

  return v2;
}

id sub_20D0A1094()
{
  v1 = v0;
  v2 = [v0 containedAccessoryRepresentables];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
  v3 = sub_20D567A78();

  v4 = 0;
  v5 = sub_20D09BEE8(v3);

  v6 = sub_20CEF3510(v5);

  v7 = sub_20D0A18A8(v6);
  v8 = sub_20D09C36C(v7);

  v23 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v21 = v4;
    v22 = v1;
    v10 = 0;
    v4 = 0x277CD1000uLL;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F31DD20](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v1 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_20D5688C8();
        sub_20D568908();
        sub_20D568918();
        sub_20D5688D8();
      }

      else
      {
      }

      ++v10;
      if (v1 == i)
      {
        v1 = v22;
        v13 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  v14 = sub_20CEF3540(v13);

  v15 = sub_20D0A1398(v14, &unk_27C81D480, 0x277CD1760, &unk_27C81BF30);

  v16 = v1;
  v17 = sub_20D0A315C(v15, v16);

  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*(v17 + 16))
    {
      goto LABEL_20;
    }

LABEL_22:

    return 0;
  }

  if (!sub_20D568768())
  {
    goto LABEL_22;
  }

LABEL_20:
  v18 = [v16 copyForCreatingNewAction];
  sub_20D09AF54(v17, &qword_27C81D130, 0x277CD1BD8, &unk_27C820670);

  v19 = sub_20D567CD8();

  [v18 setMediaProfiles_];

  return v18;
}

uint64_t sub_20D0A1398(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    v5 = ~(v4 >> 1) & 0x4000000000000000 | v4;
    sub_20D5663C8();
  }

  else
  {
    sub_20CECF940(0, a2);
    sub_20CEF7F74(a4, a2);
    sub_20D5663C8();
    v8 = sub_20D5686F8();
    return ~(v8 >> 1) & 0x4000000000000000 | v8;
  }

  return v5;
}

id sub_20D0A1440(void *a1)
{
  v1 = a1;
  v2 = sub_20D0A1094();

  return v2;
}

id sub_20D0A1484(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_20CECF940(0, &unk_28111FFC0);
  v2 = sub_20D567A78();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_20D0A1514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820718);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27C820CB0;
  }

  else
  {
    v2 = &qword_27C81AF80;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t sub_20D0A158C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20D0A1610(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_20D5683E8();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_20D5683F8();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_20D0A1768(uint64_t a1, unint64_t *a2)
{
  v5 = *v2;
  v6 = sub_20D5683E8();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = v6 & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    sub_20CECF940(0, a2);
    while (1)
    {
      v14 = *(*(v5 + 48) + 8 * v9);
      v15 = sub_20D5683F8();

      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v5 + 48);
    v18 = *(v17 + 8 * v9);
    *(v17 + 8 * v9) = a1;
  }

  else
  {
LABEL_5:
    v16 = *(v5 + 16);
    if (v16 >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v9) = a1;
      *(v5 + 16) = v16 + 1;
    }
  }
}

uint64_t sub_20D0A18A8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20D0A1AA0(a1);
  }

  v1 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  sub_20D568718();
  if (sub_20D568798())
  {
    sub_20CECF940(0, &unk_27C81BF40);
    do
    {
      swift_dynamicCast();
      if ([v13 hf_isVisibleInHomeStatus])
      {
        v2 = *(v1 + 16);
        if (*(v1 + 24) <= v2)
        {
          sub_20D0C0A8C(v2 + 1);
        }

        v1 = v14;
        result = sub_20D5683E8();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      else
      {
      }
    }

    while (sub_20D568798());
  }

  return v1;
}

uint64_t sub_20D0A1AA0(uint64_t a1)
{
  v2 = a1;
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = v4;
    v22 = v1;
    v20 = &v20;
    MEMORY[0x28223BE20](a1);
    v6 = &v20 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v4 = v13 | (v8 << 6);
      if ([*(*(v2 + 48) + 8 * v4) hf_isVisibleInHomeStatus])
      {
        *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_20D0C1368(v6, v21, v7, v2);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_20D0C1368(v6, v21, v7, v2);
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

  v18 = swift_slowAlloc();
  v19 = sub_20D0A1EAC(v18, v4, v2);

  MEMORY[0x20F31FC70](v18, -1, -1);
  return v19;
}

unint64_t *sub_20D0A1CE0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) hf_isVisibleInHomeStatus];
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_20D0C1368(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_20D0A1E14(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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
    sub_20D0A2AF8(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

unint64_t *sub_20D0A1EAC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_20D0A1CE0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_20D0A1F24()
{
  v1 = OBJC_IVAR___HUDashboardFilterBarController__layoutOptions;
  result = *&v0[OBJC_IVAR___HUDashboardFilterBarController__layoutOptions];
  if (!result)
  {
    v3 = objc_opt_self();
    v4 = [v3 isAMac];
    if ([v3 useMacIdiom])
    {
      v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_opt_self() defaultOptionsForViewSize:v4 columnStyle:v5 overrideSizeSubclass:{0.0, 0.0}];
    [v6 setStatusHidden_];
    [v6 setEditing_];
    v7 = [v0 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    [v6 setContentSizeCategory_];
    v9 = *&v0[v1];
    *&v0[v1] = v6;

    result = *&v0[v1];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_20D0A2080()
{
  swift_getObjectType();
  v32.is_nil = 0;
  NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(v0, v32);
  v2 = v1;
  [v1 setSectionLeadingMargin_];
  [v2 setSectionTrailingMargin_];
  v3 = objc_opt_self();
  v4 = [v3 estimatedDimension_];
  v5 = [v3 fractionalHeightDimension_];
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

  v8 = [objc_opt_self() itemWithLayoutSize_];
  v9 = [v3 estimatedDimension_];
  v10 = [v2 filterCategoryCellOptions];
  [v10 cellHeight];
  v12 = v11;

  v13 = [v3 estimatedDimension_];
  v14 = [v6 sizeWithWidthDimension:v9 heightDimension:v13];

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20D5BA040;
  *(v16 + 32) = v8;
  sub_20CECF940(0, &qword_28111FE40);
  v17 = v8;
  v18 = sub_20D567A58();

  v19 = [v15 horizontalGroupWithLayoutSize:v14 subitems:v18];

  v20 = [objc_opt_self() sectionWithGroup_];
  v21 = [v2 filterCategoryCellOptions];
  [v21 cellSpacing];
  v23 = v22;

  [v20 setInterGroupSpacing_];
  [v20 setOrthogonalScrollingBehavior_];
  [v2 sectionTopMargin];
  v25 = v24;
  [v2 sectionLeadingMargin];
  v27 = v26;
  [v2 sectionBottomMargin];
  v29 = v28;
  [v2 sectionTrailingMargin];
  [v20 setContentInsets_];

  return v20;
}

id sub_20D0A23FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v3 isEditing] & 1) == 0)
  {
    v10 = [v3 itemManager];
    v11 = sub_20D563868();
    v12 = [v10 displayedItemAtIndexPath_];

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
        v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
        v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        (*(v7 + 32))(v18 + v16, v9, v6);
        *(v18 + v17) = v14;
        *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
        v19 = objc_opt_self();
        aBlock[4] = sub_20D0A353C;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20D0A1484;
        aBlock[3] = &block_descriptor_43;
        v20 = _Block_copy(aBlock);
        v21 = a1;

        v22 = [v19 configurationWithIdentifier:0 previewProvider:0 actionProvider:v20];

        _Block_release(v20);
        return v22;
      }
    }
  }

  return 0;
}

uint64_t sub_20D0A2844(unint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_22:
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_20D568768();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v14 = result;
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F31DD20](i, a1);
      }

      else
      {
        if (i >= *(v15 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      aBlock[4] = sub_20D0A0A60;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CFF02FC;
      aBlock[3] = &block_descriptor_57_0;
      v8 = _Block_copy(aBlock);
      v9 = [v7 copyWithActionFilter_];
      _Block_release(v8);
      v10 = [v9 actions];
      sub_20CECF940(0, &qword_27C81AE50);
      sub_20CEF7F74(&qword_27C8217F0, &qword_27C81AE50);
      v11 = sub_20D567D08();

      if ((v11 & 0xC000000000000001) == 0)
      {
        break;
      }

      v12 = sub_20D568768();

      if (v12)
      {
        goto LABEL_16;
      }

LABEL_13:

      if (v3 == v2)
      {
        return v14;
      }
    }

    v13 = *(v11 + 16);

    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    MEMORY[0x20F31CEE0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
    result = v17;
  }

  while (v3 != v2);
  return result;
}

void sub_20D0A2AF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v25 = v10 | (v4 << 6);
    v13 = *(*(a3 + 48) + 8 * v25);
    v14 = [a4 mediaProfiles];
    v15 = sub_20D567D08();

    v28[0] = v13;
    sub_20CECF940(0, &qword_27C81D130);
    sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
    v30 = v13;
    sub_20D5687F8();
    if (*(v15 + 16) && (v16 = sub_20D5687D8(), v17 = -1 << *(v15 + 32), v18 = v16 & ~v17, ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (1)
      {
        sub_20CEF9064(*(v15 + 48) + 40 * v18, v28);
        v20 = MEMORY[0x20F31DC90](v28, v29);
        sub_20CEF90C0(v28);
        if (v20)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_20CEF90C0(v29);

      *(a1 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_22:

        sub_20D0C1354(a1, a2, v24, a3);
        return;
      }
    }

    else
    {
LABEL_5:

      sub_20CEF90C0(v29);
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
      goto LABEL_22;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20D0A2D94(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v38 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    MEMORY[0x28223BE20](v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v35 = 0;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = v11 < 64 ? ~(-1 << v11) : -1;
    v13 = v12 & *(v4 + 56);
    v3 = (v11 + 63) >> 6;
    v37 = v4;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v17 = v14 | (v7 << 6);
      v18 = *(v4 + 48);
      v36 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = [v38 mediaProfiles];
      v21 = sub_20D567D08();

      v40[0] = v19;
      sub_20CECF940(0, &qword_27C81D130);
      v8 = sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
      v39 = v19;
      sub_20D5687F8();
      if (*(v21 + 16) && (v22 = sub_20D5687D8(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          sub_20CEF9064(*(v21 + 48) + 40 * v24, v40);
          v8 = MEMORY[0x20F31DC90](v40, v41);
          sub_20CEF90C0(v40);
          if (v8)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_20CEF90C0(v41);

        v4 = v37;
        *&v34[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_23:
          v27 = sub_20D0C1354(v34, v32, v35, v4);

          return v27;
        }
      }

      else
      {
LABEL_6:

        sub_20CEF90C0(v41);

        v4 = v37;
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v3)
      {
        goto LABEL_23;
      }

      v16 = *(v10 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v38;
  v27 = sub_20D0A1E14(v29, v7, v4, v30);

  MEMORY[0x20F31FC70](v29, -1, -1);

  return v27;
}

uint64_t sub_20D0A315C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20D0A2D94(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v31 = MEMORY[0x277D84FA0];
  v27 = a2;
  sub_20D568718();
  v3 = sub_20D568798();
  if (v3)
  {
    v4 = v3;
    sub_20CECF940(0, &qword_27C81D130);
    v5 = v4;
    do
    {
      v29[0] = v5;
      swift_dynamicCast();
      v6 = v30;
      v7 = [v27 mediaProfiles];
      v8 = sub_20D567D08();

      v28[0] = v6;
      sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
      v9 = v6;
      sub_20D5687F8();
      if (*(v8 + 16) && (v10 = sub_20D5687D8(), v11 = -1 << *(v8 + 32), v12 = v10 & ~v11, ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          sub_20CEF9064(*(v8 + 48) + 40 * v12, v28);
          v14 = MEMORY[0x20F31DC90](v28, v29);
          sub_20CEF90C0(v28);
          if (v14)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_20CEF90C0(v29);
        v15 = v30;
        v16 = *(v2 + 16);
        if (*(v2 + 24) <= v16)
        {
          sub_20D0C0A64(v16 + 1);
        }

        v2 = v31;
        result = sub_20D5683E8();
        v18 = v2 + 56;
        v19 = -1 << *(v2 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v2 + 56 + 8 * (v20 >> 6))) != 0)
        {
          v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *(v18 + 8 * v21);
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        }

        *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v2 + 48) + 8 * v22) = v15;
        ++*(v2 + 16);
      }

      else
      {
LABEL_4:

        sub_20CEF90C0(v29);
      }

      v5 = sub_20D568798();
    }

    while (v5);
  }

  return v2;
}

unint64_t sub_20D0A3480()
{
  result = qword_27C820C60;
  if (!qword_27C820C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820C60);
  }

  return result;
}

unint64_t sub_20D0A34E4()
{
  result = qword_27C820C90;
  if (!qword_27C820C90)
  {
    sub_20D5638C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820C90);
  }

  return result;
}

uint64_t sub_20D0A353C(uint64_t a1)
{
  v3 = *(sub_20D5638C8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_20D09E248(a1, v8, v1 + v4, v6, v7);
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D0A3614()
{
  v1 = [*(v0 + 16) executeActionSet];
}

void sub_20D0A3668()
{
  v1 = [*(v0 + 16) executeActions];
}

uint64_t sub_20D0A36A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0A3708(uint64_t a1)
{
  v2 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D0A3784()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C838240);
  __swift_project_value_buffer(v0, qword_27C838240);
  return sub_20D565978();
}

uint64_t sub_20D0A380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a1;
  v179 = a2;
  v2 = sub_20D564598();
  MEMORY[0x28223BE20](v2 - 8);
  v160 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_20D5646C8();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_20D564628();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v161 = &v157 - v7;
  MEMORY[0x28223BE20](v8);
  v162 = &v157 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CB8);
  MEMORY[0x28223BE20](v10 - 8);
  v171 = &v157 - v11;
  v173 = sub_20D5644A8();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v166 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D5645B8();
  MEMORY[0x28223BE20](v13 - 8);
  v169 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CC0);
  MEMORY[0x28223BE20](v15 - 8);
  v178 = &v157 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CC8);
  MEMORY[0x28223BE20](v17 - 8);
  v181 = &v157 - v18;
  v19 = sub_20D564668();
  v183 = *(v19 - 8);
  v184 = v19;
  MEMORY[0x28223BE20](v19);
  v168 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v182 = &v157 - v22;
  v23 = sub_20D5640C8();
  MEMORY[0x28223BE20](v23 - 8);
  v177 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D5641B8();
  v192 = *(v25 - 8);
  v193 = v25;
  MEMORY[0x28223BE20](v25);
  v167 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v174 = &v157 - v28;
  MEMORY[0x28223BE20](v29);
  v180 = &v157 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  MEMORY[0x28223BE20](v31 - 8);
  v170 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v185 = &v157 - v34;
  MEMORY[0x28223BE20](v35);
  v191 = &v157 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2C0);
  MEMORY[0x28223BE20](v37 - 8);
  v186 = &v157 - v38;
  v39 = sub_20D5641F8();
  v187 = *(v39 - 8);
  v188 = v39;
  MEMORY[0x28223BE20](v39);
  v175 = &v157 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v176 = &v157 - v42;
  v43 = sub_20D563818();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v157 - v48;
  MEMORY[0x28223BE20](v50);
  v189 = &v157 - v51;
  MEMORY[0x28223BE20](v52);
  v190 = &v157 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v157 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v157 - v58;
  v60 = sub_20D563E88();
  v61 = *(v60 - 8);
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v157 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v64, v194, v60, v62);
  v65 = (*(v61 + 88))(v64, v60);
  if (v65 == *MEMORY[0x277D14E38])
  {
    (*(v61 + 96))(v64, v60);
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
    v67 = *(v44 + 32);
    v67(v59, v64, v43);
    v67(v56, &v64[v66], v43);
    sub_20D563F48();
    v68 = sub_20D563F18();
    v69 = sub_20D563EE8();

    v70 = v43;
    v71 = v44;
    v72 = v56;
    if (*(v69 + 16))
    {
      v73 = sub_20CEED7C0(v56);
      v75 = v192;
      v74 = v193;
      v76 = v187;
      if (v77)
      {
        (v192[2])(v191, *(v69 + 56) + v192[9] * v73, v193);
        v78 = 0;
      }

      else
      {
        v78 = 1;
      }
    }

    else
    {
      v78 = 1;
      v75 = v192;
      v74 = v193;
      v76 = v187;
    }

    v94 = v191;
    (v75[7])(v191, v78, 1, v74);
    if ((v75[6])(v94, 1, v74))
    {
      sub_20CEF928C(v94, &qword_27C81E180);
      v95 = v186;
      (*(v76 + 56))(v186, 1, 1, v188);
LABEL_33:
      v119 = &qword_27C81D2C0;
LABEL_34:
      sub_20CEF928C(v95, v119);
LABEL_35:
      v120 = sub_20D565478();
      sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
      swift_allocError();
      (*(*(v120 - 8) + 104))(v121, *MEMORY[0x277D14F48], v120);
      swift_willThrow();
      goto LABEL_43;
    }

    v96 = v180;
    (v75[2])(v180, v94, v74);
    sub_20CEF928C(v94, &qword_27C81E180);
    v97 = sub_20D564158();
    (v75[1])(v96, v74);
    v98 = v188;
    if (*(v97 + 16))
    {
      v99 = sub_20CEED7C0(v59);
      v95 = v186;
      if (v100)
      {
        (*(v76 + 16))(v186, *(v97 + 56) + *(v76 + 72) * v99, v98);
        v101 = 0;
      }

      else
      {
        v101 = 1;
      }
    }

    else
    {
      v101 = 1;
      v95 = v186;
    }

    (*(v76 + 56))(v95, v101, 1, v98);
    if ((*(v76 + 48))(v95, 1, v98) == 1)
    {
      goto LABEL_33;
    }

    v122 = *(v76 + 32);
    v194 = v72;
    v123 = v176;
    v122(v176, v95, v98);
    v124 = *(v76 + 16);
    v193 = v59;
    v124(v175, v123, v98);
    sub_20D0AABF0();
    sub_20D0AAEA0();
    sub_20D5640B8();
    sub_20D5656D8();
    (*(v76 + 8))(v123, v98);
    v125 = *(v71 + 8);
    v125(v194, v70);
    v126 = v193;
    return (v125)(v126, v70);
  }

  v194 = v43;
  if (v65 == *MEMORY[0x277D14E30])
  {
    (*(v61 + 96))(v64, v60);
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
    v71 = v44;
    v80 = *(v44 + 32);
    v70 = v194;
    v80(v190, v64, v194);
    v81 = v189;
    v80(v189, &v64[v79], v70);
    sub_20D563F48();
    v82 = sub_20D563F18();
    v83 = sub_20D563EE8();

    if (*(v83 + 16))
    {
      v84 = sub_20CEED7C0(v81);
      v86 = v192;
      v85 = v193;
      v88 = v182;
      v87 = v183;
      v89 = v181;
      if (v90)
      {
        (v192[2])(v185, *(v83 + 56) + v192[9] * v84, v193);
        v91 = 0;
      }

      else
      {
        v91 = 1;
      }
    }

    else
    {
      v91 = 1;
      v86 = v192;
      v85 = v193;
      v88 = v182;
      v87 = v183;
      v89 = v181;
    }

    v102 = v185;
    (v86[7])(v185, v91, 1, v85);
    if ((v86[6])(v102, 1, v85))
    {
      sub_20CEF928C(v102, &qword_27C81E180);
      (*(v87 + 56))(v89, 1, 1, v184);
LABEL_41:
      sub_20CEF928C(v89, &qword_27C820CC8);
      v128 = sub_20D565478();
      sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
      swift_allocError();
      (*(*(v128 - 8) + 104))(v129, *MEMORY[0x277D14F48], v128);
      swift_willThrow();
LABEL_42:
      v72 = v189;
      v59 = v190;
      goto LABEL_43;
    }

    v103 = v174;
    (v86[2])(v174, v102, v85);
    sub_20CEF928C(v102, &qword_27C81E180);
    v104 = sub_20D5641A8();
    (v86[1])(v103, v85);
    if (*(v104 + 16))
    {
      v105 = sub_20CEED7C0(v190);
      v106 = v184;
      v107 = v178;
      if (v108)
      {
        (*(v87 + 16))(v89, *(v104 + 56) + *(v87 + 72) * v105, v184);
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }
    }

    else
    {
      v109 = 1;
      v106 = v184;
      v107 = v178;
    }

    (*(v87 + 56))(v89, v109, 1, v106);
    if ((*(v87 + 48))(v89, 1, v106) == 1)
    {
      goto LABEL_41;
    }

    (*(v87 + 32))(v88, v89, v106);
    (*(v87 + 16))(v168, v88, v106);
    sub_20D0AABF0();
    sub_20D0AAEA0();
    sub_20D5645A8();
    sub_20D5656E8();
    v131 = sub_20D565738();
    v132 = *(v131 - 8);
    if ((*(v132 + 48))(v107, 1, v131) == 1)
    {
      sub_20CEF928C(v107, &qword_27C820CC0);
      v133 = sub_20D565478();
      sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
      swift_allocError();
      (*(*(v133 - 8) + 104))(v134, *MEMORY[0x277D14F48], v133);
      swift_willThrow();
      (*(v87 + 8))(v88, v106);
      goto LABEL_42;
    }

    (*(v87 + 8))(v88, v106);
    v135 = *(v71 + 8);
    v135(v189, v70);
    v135(v190, v70);
    return (*(v132 + 32))(v179, v107, v131);
  }

  else
  {
    if (v65 == *MEMORY[0x277D14E40] || v65 == *MEMORY[0x277D14E28])
    {
      (*(v61 + 96))(v64, v60);
      v72 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48)];
      v92 = sub_20D565478();
      sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
      swift_allocError();
      (*(*(v92 - 8) + 104))(v93, *MEMORY[0x277D14F48], v92);
      swift_willThrow();
      v59 = v64;
      v70 = v194;
      v71 = v44;
LABEL_43:
      v130 = *(v71 + 8);
      v130(v72, v70);
      return (v130)(v59, v70);
    }

    if (v65 == *MEMORY[0x277D14E20])
    {
      v59 = v49;
      v72 = v46;
      (*(v61 + 96))(v64, v60);
      v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
      v71 = v44;
      v111 = *(v44 + 32);
      v70 = v194;
      v111(v59, v64, v194);
      v111(v72, &v64[v110], v70);
      v191 = sub_20D563F48();
      v112 = sub_20D563F18();
      v113 = sub_20D563EE8();

      if (*(v113 + 16))
      {
        v114 = sub_20CEED7C0(v72);
        v115 = v172;
        v116 = v170;
        if (v117)
        {
          (v192[2])(v170, *(v113 + 56) + v192[9] * v114, v193);
          v118 = 0;
        }

        else
        {
          v118 = 1;
        }
      }

      else
      {
        v118 = 1;
        v115 = v172;
        v116 = v170;
      }

      v136 = v192;
      v137 = v118;
      v138 = v193;
      (v192[7])(v116, v137, 1, v193);
      if ((v136[6])(v116, 1, v138))
      {
        sub_20CEF928C(v116, &qword_27C81E180);
        v95 = v171;
        (*(v115 + 56))(v171, 1, 1, v173);
      }

      else
      {
        v139 = v167;
        (v136[2])(v167, v116, v138);
        sub_20CEF928C(v116, &qword_27C81E180);
        v140 = sub_20D564178();
        (v136[1])(v139, v138);
        if (*(v140 + 16))
        {
          v141 = sub_20CEED7C0(v59);
          v95 = v171;
          if (v142)
          {
            (*(v115 + 16))(v171, *(v140 + 56) + *(v115 + 72) * v141, v173);
            v143 = 0;
          }

          else
          {
            v143 = 1;
          }
        }

        else
        {
          v143 = 1;
          v95 = v171;
        }

        v144 = v173;
        (*(v115 + 56))(v95, v143, 1, v173);
        if ((*(v115 + 48))(v95, 1, v144) != 1)
        {
          v145 = v166;
          (*(v115 + 32))(v166, v95, v144);
          v146 = sub_20D564428();
          if (v147)
          {
            (*(v115 + 8))(v145, v144);
            goto LABEL_35;
          }

          v148 = v146;
          v149 = sub_20D563F18();
          v150 = v163;
          sub_20D563ED8();

          v151 = sub_20D564698();
          (*(v164 + 8))(v150, v165);
          if (!*(v151 + 16) || (v152 = sub_20CEEDC60(v148), (v153 & 1) == 0))
          {

            (*(v115 + 8))(v166, v144);
            goto LABEL_35;
          }

          v154 = v158;
          v155 = *(v151 + 56) + *(v158 + 72) * v152;
          v193 = *(v158 + 16);
          v156 = v159;
          (v193)(v161, v155, v159);

          (*(v154 + 32))(v162, v161, v156);
          v192 = sub_20D0AC8B4();
          (v193)(v157, v162, v156);
          sub_20D564588();
          sub_20D565678();
          (*(v154 + 8))(v162, v156);
          (*(v172 + 8))(v166, v173);
          v125 = *(v71 + 8);
          v125(v72, v70);
          v126 = v59;
          return (v125)(v126, v70);
        }
      }

      v119 = &qword_27C820CB8;
      goto LABEL_34;
    }

    result = sub_20D568BE8();
    __break(1u);
  }

  return result;
}

uint64_t sub_20D0A50E8(void (*a1)(char *, unint64_t, uint64_t))
{
  v229 = a1;
  v184 = sub_20D564598();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v182 = &v175 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_20D5646C8();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v175 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_20D564628();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v178 = &v175 - v5;
  MEMORY[0x28223BE20](v6);
  v185 = &v175 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CB8);
  MEMORY[0x28223BE20](v8 - 8);
  v200 = &v175 - v9;
  v199 = sub_20D5644A8();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v189 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_20D5645B8();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CC8);
  MEMORY[0x28223BE20](v12 - 8);
  v215 = &v175 - v13;
  v14 = sub_20D564668();
  v216 = *(v14 - 8);
  v217 = v14;
  MEMORY[0x28223BE20](v14);
  v192 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v193 = &v175 - v17;
  v209 = sub_20D5640C8();
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v207 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD8);
  MEMORY[0x28223BE20](v19 - 8);
  v213 = &v175 - v20;
  v205 = sub_20D564098();
  v203 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v191 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CE0);
  MEMORY[0x28223BE20](v22 - 8);
  v204 = &v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v206 = &v175 - v25;
  v26 = sub_20D5641B8();
  v224 = *(v26 - 8);
  v225 = v26;
  MEMORY[0x28223BE20](v26);
  v190 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v201 = &v175 - v29;
  MEMORY[0x28223BE20](v30);
  v211 = &v175 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  MEMORY[0x28223BE20](v32 - 8);
  v197 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v214 = &v175 - v35;
  MEMORY[0x28223BE20](v36);
  v223 = &v175 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2C0);
  MEMORY[0x28223BE20](v38 - 8);
  v219 = &v175 - v39;
  v40 = sub_20D5641F8();
  v221 = *(v40 - 8);
  v222 = v40;
  MEMORY[0x28223BE20](v40);
  v202 = &v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v212 = &v175 - v43;
  v44 = sub_20D563818();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v175 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v175 - v49;
  MEMORY[0x28223BE20](v51);
  v218 = &v175 - v52;
  MEMORY[0x28223BE20](v53);
  v220 = &v175 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v175 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v175 - v59;
  v61 = sub_20D563E88();
  v62 = *(v61 - 8);
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v175 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v65, v229, v61, v63);
  v66 = (*(v62 + 88))(v65, v61);
  if (v66 == *MEMORY[0x277D14E38])
  {
    (*(v62 + 96))(v65, v61);
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
    v68 = v45;
    v69 = *(v45 + 32);
    v69(v60, v65, v44);
    v69(v57, &v65[v67], v44);
    sub_20D563F48();
    v70 = sub_20D563F18();
    v71 = sub_20D563EE8();

    v72 = v44;
    v73 = v57;
    v74 = v60;
    if (*(v71 + 16))
    {
      v75 = sub_20CEED7C0(v57);
      v77 = v224;
      v76 = v225;
      v78 = v222;
      if (v79)
      {
        (*(v224 + 16))(v223, *(v71 + 56) + *(v224 + 72) * v75, v225);
        v80 = 0;
      }

      else
      {
        v80 = 1;
      }
    }

    else
    {
      v80 = 1;
      v77 = v224;
      v76 = v225;
      v78 = v222;
    }

    v96 = v223;
    (*(v77 + 56))(v223, v80, 1, v76);
    if ((*(v77 + 48))(v96, 1, v76))
    {
      sub_20CEF928C(v96, &qword_27C81E180);
      v97 = v219;
      (*(v221 + 56))(v219, 1, 1, v78);
LABEL_33:
      v123 = &qword_27C81D2C0;
LABEL_34:
      sub_20CEF928C(v97, v123);
LABEL_35:
      v124 = sub_20D565478();
      sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
      swift_allocError();
      (*(*(v124 - 8) + 104))(v125, *MEMORY[0x277D14F48], v124);
      swift_willThrow();
      goto LABEL_45;
    }

    v98 = v211;
    (*(v77 + 16))(v211, v96, v76);
    sub_20CEF928C(v96, &qword_27C81E180);
    v99 = sub_20D564158();
    (*(v77 + 8))(v98, v76);
    if (*(v99 + 16))
    {
      v100 = sub_20CEED7C0(v74);
      v101 = v213;
      v102 = v221;
      if (v103)
      {
        (*(v221 + 16))(v219, *(v99 + 56) + *(v221 + 72) * v100, v78);
        v104 = 0;
      }

      else
      {
        v104 = 1;
      }
    }

    else
    {
      v104 = 1;
      v101 = v213;
      v102 = v221;
    }

    v97 = v219;
    (*(v102 + 56))(v219, v104, 1, v78);
    if ((*(v102 + 48))(v97, 1, v78) == 1)
    {
      goto LABEL_33;
    }

    (*(v102 + 32))(v212, v97, v78);
    sub_20D5641D8();
    v126 = v203;
    v127 = v205;
    v128 = (*(v203 + 48))(v101, 1, v205);
    v177 = v74;
    v176 = v73;
    if (v128 == 1)
    {
      sub_20CEF928C(v101, &qword_27C820CD8);
      v129 = sub_20D564228();
      v130 = v204;
      (*(*(v129 - 8) + 56))(v204, 1, 1, v129);
      v131 = v210;
    }

    else
    {
      v132 = v191;
      (*(v126 + 32))(v191, v101, v127);
      v130 = v204;
      v133 = v126;
      v131 = v210;
      sub_20D0ACA24(v132, v204);
      (*(v133 + 8))(v132, v127);
    }

    v134 = v206;
    sub_20CF15584(v130, v206, &qword_27C820CE0);
    v135 = v221;
    v136 = v212;
    (*(v221 + 16))(v202, v212, v78);
    sub_20D0AABF0();
    sub_20D0AAEA0();
    v137 = v207;
    sub_20D5640B8();
    v227 = type metadata accessor for ActionSetDeviceDataModel();
    v228 = sub_20D0B3DB8(&qword_27C820CE8, type metadata accessor for ActionSetDeviceDataModel);
    v226 = v131;

    v138 = MEMORY[0x20F31ABB0](v137, v134, &v226);
    (*(v208 + 8))(v137, v209);
    sub_20CEF928C(v134, &qword_27C820CE0);
    (*(v135 + 8))(v136, v222);
    v139 = *(v68 + 8);
    v139(v176, v72);
LABEL_40:
    v139(v177, v72);
    sub_20CEF928C(&v226, &qword_27C820CF0);
    return v138;
  }

  v81 = v45;
  if (v66 == *MEMORY[0x277D14E30])
  {
    (*(v62 + 96))(v65, v61);
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
    v68 = v45;
    v83 = *(v45 + 32);
    v72 = v44;
    v83(v220, v65, v44);
    v84 = v218;
    v83(v218, &v65[v82], v44);
    sub_20D563F48();
    v85 = sub_20D563F18();
    v86 = sub_20D563EE8();

    if (*(v86 + 16))
    {
      v87 = sub_20CEED7C0(v84);
      v89 = v224;
      v88 = v225;
      v90 = v214;
      v91 = v215;
      if (v92)
      {
        (*(v224 + 16))(v214, *(v86 + 56) + *(v224 + 72) * v87, v225);
        v93 = 0;
      }

      else
      {
        v93 = 1;
      }
    }

    else
    {
      v93 = 1;
      v89 = v224;
      v88 = v225;
      v90 = v214;
      v91 = v215;
    }

    (*(v89 + 56))(v90, v93, 1, v88);
    if ((*(v89 + 48))(v90, 1, v88))
    {
      sub_20CEF928C(v90, &qword_27C81E180);
      (*(v216 + 56))(v91, 1, 1, v217);
    }

    else
    {
      v105 = v201;
      (*(v89 + 16))(v201, v90, v88);
      sub_20CEF928C(v90, &qword_27C81E180);
      v106 = sub_20D5641A8();
      (*(v89 + 8))(v105, v88);
      if (*(v106 + 16))
      {
        v107 = sub_20CEED7C0(v220);
        v109 = v216;
        v108 = v217;
        if (v110)
        {
          (*(v216 + 16))(v91, *(v106 + 56) + *(v216 + 72) * v107, v217);
          v111 = 0;
        }

        else
        {
          v111 = 1;
        }
      }

      else
      {
        v111 = 1;
        v109 = v216;
        v108 = v217;
      }

      (*(v109 + 56))(v91, v111, 1, v108);
      if ((*(v109 + 48))(v91, 1, v108) != 1)
      {
        v143 = v193;
        (*(v109 + 32))(v193, v91, v108);
        (*(v109 + 16))(v192, v143, v108);
        sub_20D0AABF0();
        sub_20D0AAEA0();
        v144 = v194;
        sub_20D5645A8();
        v138 = MEMORY[0x20F31ABD0](v144);
        (*(v195 + 8))(v144, v196);
        (*(v109 + 8))(v143, v108);
        v145 = *(v68 + 8);
        v145(v218, v72);
        v145(v220, v72);
        return v138;
      }
    }

    sub_20CEF928C(v91, &qword_27C820CC8);
    v140 = sub_20D565478();
    sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
    swift_allocError();
    (*(*(v140 - 8) + 104))(v141, *MEMORY[0x277D14F48], v140);
    swift_willThrow();
    v73 = v84;
    v74 = v220;
    goto LABEL_45;
  }

  if (v66 == *MEMORY[0x277D14E40] || v66 == *MEMORY[0x277D14E28])
  {
    (*(v62 + 96))(v65, v61);
    v73 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48)];
    v94 = sub_20D565478();
    sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
    swift_allocError();
    (*(*(v94 - 8) + 104))(v95, *MEMORY[0x277D14F48], v94);
    swift_willThrow();
    v74 = v65;
    v72 = v44;
    v68 = v81;
LABEL_45:
    v138 = *(v68 + 8);
    v138(v73, v72);
    v138(v74, v72);
    return v138;
  }

  if (v66 == *MEMORY[0x277D14E20])
  {
    v73 = v47;
    (*(v62 + 96))(v65, v61);
    v112 = v50;
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
    v68 = v81;
    v114 = *(v81 + 32);
    v115 = v112;
    v116 = v112;
    v72 = v44;
    v114(v116, v65, v44);
    v114(v73, &v65[v113], v44);
    v229 = sub_20D563F48();
    v117 = sub_20D563F18();
    v118 = sub_20D563EE8();

    if (*(v118 + 16))
    {
      v119 = sub_20CEED7C0(v73);
      v120 = v197;
      if (v121)
      {
        (*(v224 + 16))(v197, *(v118 + 56) + *(v224 + 72) * v119, v225);
        v122 = 0;
      }

      else
      {
        v122 = 1;
      }

      v74 = v115;
    }

    else
    {
      v122 = 1;
      v74 = v115;
      v120 = v197;
    }

    v146 = v224;
    v147 = v122;
    v148 = v225;
    (*(v224 + 56))(v120, v147, 1, v225);
    v149 = (*(v146 + 48))(v120, 1, v148);
    v150 = v198;
    if (v149)
    {
      sub_20CEF928C(v120, &qword_27C81E180);
      v97 = v200;
      (*(v150 + 56))(v200, 1, 1, v199);
    }

    else
    {
      v151 = v190;
      (*(v146 + 16))(v190, v120, v148);
      sub_20CEF928C(v120, &qword_27C81E180);
      v152 = sub_20D564178();
      (*(v146 + 8))(v151, v148);
      if (*(v152 + 16))
      {
        v153 = sub_20CEED7C0(v74);
        v154 = v199;
        if (v155)
        {
          (*(v150 + 16))(v200, *(v152 + 56) + *(v150 + 72) * v153, v199);
          v156 = 0;
        }

        else
        {
          v156 = 1;
        }
      }

      else
      {
        v156 = 1;
        v154 = v199;
      }

      v97 = v200;
      (*(v150 + 56))(v200, v156, 1, v154);
      if ((*(v150 + 48))(v97, 1, v154) != 1)
      {
        v157 = v97;
        v158 = v189;
        (*(v150 + 32))(v189, v157, v154);
        v159 = sub_20D564428();
        if (v160)
        {
          (*(v150 + 8))(v158, v154);
          goto LABEL_35;
        }

        v161 = v159;
        v162 = sub_20D563F18();
        v163 = v186;
        sub_20D563ED8();

        v164 = sub_20D564698();
        (*(v187 + 8))(v163, v188);
        if (!*(v164 + 16) || (v165 = sub_20CEEDC60(v161), (v166 & 1) == 0))
        {

          (*(v150 + 8))(v189, v199);
          goto LABEL_35;
        }

        v167 = v180;
        v168 = *(v164 + 56) + *(v180 + 72) * v165;
        v177 = v74;
        v229 = *(v180 + 16);
        v169 = v178;
        v170 = v181;
        v229(v178, v168, v181);

        v171 = v185;
        (*(v167 + 32))(v185, v169, v170);
        v172 = v171;
        v173 = v210;
        v225 = sub_20D0AC8B4();
        v229(v179, v172, v170);
        v174 = v182;
        sub_20D564588();
        v227 = type metadata accessor for ActionSetDeviceDataModel();
        v228 = sub_20D0B3DB8(&qword_27C820CE8, type metadata accessor for ActionSetDeviceDataModel);
        v226 = v173;

        v138 = sub_20D565718();
        (*(v183 + 8))(v174, v184);
        (*(v167 + 8))(v185, v170);
        (*(v198 + 8))(v189, v199);
        v139 = *(v68 + 8);
        v139(v73, v72);
        goto LABEL_40;
      }
    }

    v123 = &qword_27C820CB8;
    goto LABEL_34;
  }

  result = sub_20D568BE8();
  __break(1u);
  return result;
}

uint64_t sub_20D0A6CF4(uint64_t a1)
{
  v2 = sub_20D565198();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v83 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20D564598();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D5646C8();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20D564628();
  v89 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v76 - v9;
  MEMORY[0x28223BE20](v10);
  v88 = &v76 - v11;
  v12 = sub_20D5641B8();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CB8);
  MEMORY[0x28223BE20](v17 - 8);
  v100 = &v76 - v18;
  v19 = sub_20D5644A8();
  v97 = *(v19 - 8);
  v98 = v19;
  MEMORY[0x28223BE20](v19);
  v93 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D563818();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  v28 = sub_20D563E88();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, a1, v28, v30);
  if ((*(v29 + 88))(v32, v28) != *MEMORY[0x277D14E20])
  {
    (*(v29 + 8))(v32, v28);
    return MEMORY[0x277D84F90];
  }

  (*(v29 + 96))(v32, v28);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
  v77 = v22;
  v34 = *(v22 + 32);
  v34(v27, v32, v21);
  v34(v24, &v32[v33], v21);
  sub_20D563F48();
  v35 = sub_20D563F18();
  v36 = sub_20D563EE8();

  v37 = v21;
  if (*(v36 + 16))
  {
    v38 = sub_20CEED7C0(v24);
    v40 = v95;
    v39 = v96;
    if (v41)
    {
      (*(v95 + 16))(v16, *(v36 + 56) + *(v95 + 72) * v38, v96);
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = 1;
    v40 = v95;
    v39 = v96;
  }

  (*(v40 + 56))(v16, v42, 1, v39);
  if ((*(v40 + 48))(v16, 1, v39))
  {
    sub_20CEF928C(v16, &qword_27C81E180);
    v44 = v100;
    (*(v97 + 56))(v100, 1, 1, v98);
    v45 = v77;
LABEL_17:
    sub_20CEF928C(v44, &qword_27C820CB8);
LABEL_18:
    v53 = sub_20D565478();
    sub_20D0B3DB8(&qword_27C81FB50, MEMORY[0x277D14F50]);
    swift_allocError();
    (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D14F48], v53);
    swift_willThrow();
    v55 = *(v45 + 8);
    v55(v24, v37);
    return (v55)(v27, v37);
  }

  v46 = v94;
  (*(v40 + 16))(v94, v16, v39);
  sub_20CEF928C(v16, &qword_27C81E180);
  v47 = sub_20D564178();
  (*(v40 + 8))(v46, v39);
  v48 = v98;
  if (*(v47 + 16))
  {
    v49 = sub_20CEED7C0(v27);
    v50 = v97;
    if (v51)
    {
      (*(v97 + 16))(v100, *(v47 + 56) + *(v97 + 72) * v49, v48);
      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v45 = v77;
  }

  else
  {
    v52 = 1;
    v45 = v77;
    v50 = v97;
  }

  v44 = v100;
  (*(v50 + 56))(v100, v52, 1, v48);
  if ((*(v50 + 48))(v44, 1, v48) == 1)
  {
    goto LABEL_17;
  }

  v56 = v44;
  v57 = v93;
  (*(v50 + 32))(v93, v56, v48);
  v58 = sub_20D564428();
  if (v59)
  {
    (*(v50 + 8))(v57, v48);
    goto LABEL_18;
  }

  v60 = v58;
  v61 = sub_20D563F18();
  v62 = v90;
  sub_20D563ED8();

  v63 = sub_20D564698();
  (*(v91 + 8))(v62, v92);
  if (!*(v63 + 16) || (v64 = sub_20CEEDC60(v60), (v65 & 1) == 0))
  {

    (*(v50 + 8))(v93, v48);
    goto LABEL_18;
  }

  v66 = *(v63 + 56) + *(v89 + 72) * v64;
  v67 = v89;
  v100 = v27;
  v96 = *(v89 + 16);
  v68 = v78;
  v69 = v80;
  v96(v78, v66, v80);

  v70 = v88;
  (*(v67 + 32))(v88, v68, v69);
  v71 = v87;
  sub_20D0AC8B4();
  v96(v79, v70, v69);
  v72 = v81;
  sub_20D564588();
  sub_20D564F28();
  v99[3] = type metadata accessor for ActionSetDeviceDataModel();
  v99[4] = sub_20D0B3DB8(&qword_27C820CE8, type metadata accessor for ActionSetDeviceDataModel);
  v99[0] = v71;

  v73 = v83;
  sub_20D565188();
  __swift_destroy_boxed_opaque_existential_1(v99);
  v74 = sub_20D564ED8();
  (*(v85 + 8))(v73, v86);
  (*(v82 + 8))(v72, v84);
  (*(v89 + 8))(v88, v69);
  (*(v97 + 8))(v93, v98);
  v75 = *(v45 + 8);
  v75(v24, v37);
  v75(v100, v37);
  return v74;
}

uint64_t sub_20D0A78D0(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_20D564F18();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = sub_20D5650D8();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F528);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v6 = sub_20D565158();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F530);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = sub_20D565128();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CF8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v8 = sub_20D564028();
  v3[46] = v8;
  v3[47] = *(v8 - 8);
  v3[48] = swift_task_alloc();
  v9 = sub_20D565098();
  v3[49] = v9;
  v3[50] = *(v9 - 8);
  v3[51] = swift_task_alloc();
  v10 = sub_20D565688();
  v3[52] = v10;
  v3[53] = *(v10 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v11 = sub_20D5651D8();
  v3[59] = v11;
  v3[60] = *(v11 - 8);
  v3[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D00);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v12 = sub_20D5645C8();
  v3[64] = v12;
  v3[65] = *(v12 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v13 = sub_20D5656A8();
  v3[69] = v13;
  v3[70] = *(v13 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = sub_20D567C18();
  v3[81] = sub_20D567C08();
  v15 = sub_20D567BA8();
  v3[82] = v15;
  v3[83] = v14;

  return MEMORY[0x2822009F8](sub_20D0A7EE8, v15, v14);
}

uint64_t sub_20D0A7EE8()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_20D5656B8();
  v4 = *(v2 + 88);
  *(v0 + 672) = v4;
  *(v0 + 680) = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v5 = v4(v1, v3);
  v6 = *MEMORY[0x277D14FF0];
  *(v0 + 808) = *MEMORY[0x277D14FF0];
  if (v5 == v6)
  {
    v7 = *(v0 + 632);
    v8 = *(v0 + 560);
    v9 = *(v0 + 552);
    v10 = *(v0 + 544);
    v11 = *(v0 + 520);
    v12 = *(v0 + 512);

    (*(v8 + 96))(v7, v9);
    v13 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D18) + 48));
    (*(v11 + 32))(v10, v7, v12);
    sub_20D0B15EC(v0 + 80);
    sub_20CEF9178(v0 + 80, v0 + 144, &qword_27C81BF00);
    if (*(v0 + 168))
    {
      v14 = *(v0 + 544);
      v15 = *(v0 + 520);
      v16 = *(v0 + 512);
      sub_20CEC80B0((v0 + 144), (v0 + 112));
      sub_20D0B1DE8((v0 + 112), v14, v13);

      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
      sub_20CEF928C(v0 + 80, &qword_27C81BF00);
      (*(v15 + 8))(v14, v16);
      goto LABEL_46;
    }

    v42 = *(v0 + 544);
    v43 = *(v0 + 520);
    v44 = *(v0 + 512);

    v40 = &qword_27C81BF00;
    sub_20CEF928C(v0 + 80, &qword_27C81BF00);
    (*(v43 + 8))(v42, v44);
    v41 = v0 + 144;
LABEL_13:
    sub_20CEF928C(v41, v40);
    goto LABEL_46;
  }

  if (v5 == *MEMORY[0x277D15018])
  {
    v17 = *(v0 + 632);
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    (*(*(v0 + 560) + 96))(v17, *(v0 + 552));
    (*(v19 + 32))(v18, v17, v20);
    v21 = swift_task_alloc();
    *(v0 + 792) = v21;
    *v21 = v0;
    v21[1] = sub_20D0AA26C;
    v22 = *(v0 + 184);

    return sub_20D0B2780(v22);
  }

  if (v5 != *MEMORY[0x277D15010])
  {
    if (v5 == *MEMORY[0x277D14FE0])
    {
      v45 = *(v0 + 632);
      v46 = *(v0 + 560);
      v47 = *(v0 + 552);
      v48 = *(v0 + 456);
      v49 = *(v0 + 424);
      v190 = *(v0 + 416);
      v50 = *(v0 + 376);
      v51 = *(v0 + 384);
      v52 = *(v0 + 368);

      (*(v46 + 96))(v45, v47);
      v53 = *v45;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D28);
      (*(v50 + 32))(v51, v45 + *(v54 + 48), v52);
      sub_20D565698();
      v55 = (*(v49 + 88))(v48, v190);
      v56 = *(v0 + 456);
      v57 = *(v0 + 416);
      v58 = *(v0 + 424);
      if (v55 == *MEMORY[0x277D14FB0])
      {
        v60 = *(v0 + 352);
        v59 = *(v0 + 360);
        v61 = *(v0 + 328);
        v62 = *(v0 + 336);
        (*(v58 + 96))(*(v0 + 456), *(v0 + 416));
        v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D30) + 48);
        sub_20CF15584(v56, v59, &qword_27C820CF8);
        v64 = sub_20D565178();
        (*(*(v64 - 8) + 8))(v56 + v63, v64);
        sub_20CEF9178(v59, v60, &qword_27C820CF8);
        v65 = (*(v62 + 48))(v60, 1, v61);
        v67 = *(v0 + 376);
        v66 = *(v0 + 384);
        v69 = *(v0 + 360);
        v68 = *(v0 + 368);
        v70 = *(v0 + 352);
        if (v65 == 1)
        {

          sub_20CEF928C(v69, &qword_27C820CF8);
          (*(v67 + 8))(v66, v68);
          sub_20CEF928C(v70, &qword_27C820CF8);
        }

        else
        {
          v128 = *(v0 + 336);
          v129 = *(v0 + 344);
          v130 = *(v0 + 328);
          (*(v128 + 32))(v129, v70, v130);
          sub_20D0B0FC8(v129, v66, v53);

          (*(v128 + 8))(v129, v130);
          sub_20CEF928C(v69, &qword_27C820CF8);
          (*(v67 + 8))(v66, v68);
        }
      }

      else
      {
        (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

        (*(v58 + 8))(v56, v57);
      }

LABEL_46:
      type metadata accessor for ActionSetDeviceDataModel();
      sub_20D0B3DB8(&qword_27C820120, type metadata accessor for ActionSetDeviceDataModel);
      sub_20D566628();
      sub_20D566638();

      v169 = *(v0 + 8);

      return v169();
    }

    if (v5 == *MEMORY[0x277D14FF8])
    {
      v74 = *(v0 + 632);
      v75 = *(v0 + 608);
      v76 = *(v0 + 560);
      v77 = *(v0 + 552);
      v78 = *(v0 + 440);
      v79 = *(v0 + 424);
      v185 = *(v0 + 600);
      v191 = *(v0 + 416);
      v80 = *(v76 + 96);
      *(v0 + 712) = v80;
      *(v0 + 720) = (v76 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
      v80(v74, v77);
      *(v0 + 728) = *v74;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D10);
      v82 = swift_projectBox();
      v83 = *(v81 + 48);
      *(v0 + 736) = *(v82 + *(v81 + 64));
      v84 = *(v76 + 16);
      *(v0 + 744) = v84;
      *(v0 + 752) = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v84(v75, v82, v77);
      v84(v185, v82 + v83, v77);
      sub_20D565698();
      if ((*(v79 + 88))(v78, v191) != *MEMORY[0x277D14FD8])
      {
        v131 = *(v0 + 608);
        v132 = *(v0 + 600);
        v133 = *(v0 + 560);
        v134 = *(v0 + 552);
        v135 = *(v0 + 440);
        v136 = *(v0 + 416);
        v137 = *(v0 + 424);

        v138 = *(v133 + 8);
        v138(v132, v134);
        v138(v131, v134);
        (*(v137 + 8))(v135, v136);
        goto LABEL_45;
      }

      v85 = *(v0 + 440);
      v87 = *(v0 + 248);
      v86 = *(v0 + 256);
      v88 = *(v0 + 224);
      v89 = *(v0 + 232);
      (*(*(v0 + 424) + 96))(v85, *(v0 + 416));
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F548) + 48);
      sub_20CF15584(v85, v86, &qword_27C81F528);
      v91 = sub_20D565168();
      (*(*(v91 - 8) + 8))(v85 + v90, v91);
      sub_20CEF9178(v86, v87, &qword_27C81F528);
      if ((*(v89 + 48))(v87, 1, v88) != 1)
      {
        (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 248), *(v0 + 224));
        *(v0 + 760) = sub_20D567C08();
        v157 = sub_20D567BA8();

        return MEMORY[0x2822009F8](sub_20D0A97B4, v157, v156);
      }

      v92 = *(v0 + 608);
      v93 = *(v0 + 600);
      v94 = *(v0 + 560);
      v95 = *(v0 + 552);
      v97 = *(v0 + 248);
      v96 = *(v0 + 256);

      v98 = &qword_27C81F528;
    }

    else
    {
      if (v5 == *MEMORY[0x277D15008])
      {
        v103 = *(v0 + 632);
        v104 = *(v0 + 624);
        v105 = *(v0 + 560);
        v106 = *(v0 + 552);
        v107 = *(v0 + 448);
        v108 = *(v0 + 424);
        v183 = *(v0 + 616);
        v186 = *(v0 + 416);

        (*(v105 + 96))(v103, v106);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D20);
        v110 = swift_projectBox();
        v111 = *(v109 + 48);
        v112 = *(v105 + 16);
        v112(v104, v110, v106);
        v112(v183, v110 + v111, v106);
        sub_20D565698();
        if ((*(v108 + 88))(v107, v186) == *MEMORY[0x277D14FB8])
        {
          v113 = *(v0 + 448);
          v115 = *(v0 + 312);
          v114 = *(v0 + 320);
          v117 = *(v0 + 264);
          v116 = *(v0 + 272);
          (*(*(v0 + 424) + 96))(v113, *(v0 + 416));
          v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F560) + 48);
          sub_20CF15584(v113, v114, &qword_27C81F530);
          v119 = sub_20D5651E8();
          (*(*(v119 - 8) + 8))(v113 + v118, v119);
          sub_20CEF9178(v114, v115, &qword_27C81F530);
          v120 = (*(v116 + 48))(v115, 1, v117);
          v121 = *(v0 + 624);
          v122 = *(v0 + 616);
          v123 = *(v0 + 560);
          v124 = *(v0 + 552);
          v126 = *(v0 + 312);
          v125 = *(v0 + 320);
          if (v120 == 1)
          {
            sub_20CEF928C(*(v0 + 320), &qword_27C81F530);
            v127 = *(v123 + 8);
            v127(v122, v124);
            v127(v121, v124);
            sub_20CEF928C(v126, &qword_27C81F530);
          }

          else
          {
            v164 = *(v0 + 288);
            v188 = *(v0 + 616);
            v165 = *(v0 + 624);
            v167 = *(v0 + 264);
            v166 = *(v0 + 272);
            (*(v166 + 32))(v164, v126, v167);
            sub_20D0AE1EC(v164, v165, v188);
            (*(v166 + 8))(v164, v167);
            sub_20CEF928C(v125, &qword_27C81F530);
            v168 = *(v123 + 8);
            v168(v188, v124);
            v168(v165, v124);
          }
        }

        else
        {
          v158 = *(v0 + 624);
          v159 = *(v0 + 552);
          v160 = *(v0 + 448);
          v161 = *(v0 + 416);
          v162 = *(v0 + 424);
          v163 = *(*(v0 + 560) + 8);
          v163(*(v0 + 616), v159);
          v163(v158, v159);
          (*(v162 + 8))(v160, v161);
        }

        goto LABEL_45;
      }

      if (v5 != *MEMORY[0x277D15000])
      {
        if (v5 != *MEMORY[0x277D14FE8])
        {

          return sub_20D568BE8();
        }

LABEL_45:

        goto LABEL_46;
      }

      v139 = *(v0 + 632);
      v140 = *(v0 + 576);
      v141 = *(v0 + 560);
      v142 = *(v0 + 552);
      v143 = *(v0 + 424);
      v144 = *(v0 + 432);
      v187 = *(v0 + 568);
      v192 = *(v0 + 416);
      (*(v141 + 96))(v139, v142);
      *(v0 + 768) = *v139;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D08);
      v146 = swift_projectBox();
      v147 = *(v145 + 48);
      v148 = *(v141 + 16);
      v148(v140, v146, v142);
      v148(v187, v146 + v147, v142);
      sub_20D565698();
      if ((*(v143 + 88))(v144, v192) != *MEMORY[0x277D14FB8])
      {
        v170 = *(v0 + 576);
        v171 = *(v0 + 568);
        v172 = *(v0 + 560);
        v173 = *(v0 + 552);
        v175 = *(v0 + 424);
        v174 = *(v0 + 432);
        v176 = *(v0 + 416);

        v177 = *(v172 + 8);
        v177(v171, v173);
        v177(v170, v173);
        (*(v175 + 8))(v174, v176);
        goto LABEL_45;
      }

      v149 = *(v0 + 432);
      v151 = *(v0 + 296);
      v150 = *(v0 + 304);
      v152 = *(v0 + 264);
      v153 = *(v0 + 272);
      (*(*(v0 + 424) + 96))(v149, *(v0 + 416));
      v154 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F560) + 48);
      sub_20CF15584(v149, v150, &qword_27C81F530);
      v155 = sub_20D5651E8();
      (*(*(v155 - 8) + 8))(v149 + v154, v155);
      sub_20CEF9178(v150, v151, &qword_27C81F530);
      if ((*(v153 + 48))(v151, 1, v152) != 1)
      {
        (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 296), *(v0 + 264));
        v178 = swift_task_alloc();
        *(v0 + 776) = v178;
        *v178 = v0;
        v178[1] = sub_20D0A9E08;
        v179 = *(v0 + 576);
        v180 = *(v0 + 568);
        v181 = *(v0 + 280);

        return sub_20D0AE6DC(v181, v179, v180);
      }

      v92 = *(v0 + 576);
      v93 = *(v0 + 568);
      v94 = *(v0 + 560);
      v95 = *(v0 + 552);
      v97 = *(v0 + 296);
      v96 = *(v0 + 304);

      v98 = &qword_27C81F530;
    }

    sub_20CEF928C(v96, v98);
    v99 = *(v94 + 8);
    v99(v93, v95);
    v99(v92, v95);
    sub_20CEF928C(v97, v98);
    goto LABEL_45;
  }

  v24 = *(v0 + 632);
  v25 = *(v0 + 464);
  v26 = *(v0 + 416);
  v27 = *(v0 + 424);
  (*(*(v0 + 560) + 96))(v24, *(v0 + 552));
  v28 = *v24;
  *(v0 + 688) = v28;
  sub_20D565698();
  if ((*(v27 + 88))(v25, v26) != *MEMORY[0x277D14FC8])
  {
    v71 = *(v0 + 464);
    v72 = *(v0 + 416);
    v73 = *(v0 + 424);

    (*(v73 + 8))(v71, v72);
    goto LABEL_46;
  }

  v30 = *(v0 + 496);
  v29 = *(v0 + 504);
  v31 = *(v0 + 480);
  v32 = *(v0 + 464);
  v182 = *(v0 + 472);
  v184 = *(v0 + 488);
  v33 = *(v0 + 400);
  v189 = *(v0 + 392);
  (*(*(v0 + 424) + 96))(v32, *(v0 + 416));
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D38) + 48);
  sub_20CF15584(v32, v29, &qword_27C820D00);
  (*(v31 + 32))(v184, v32 + v34, v182);
  sub_20CEF9178(v29, v30, &qword_27C820D00);
  if ((*(v33 + 48))(v30, 1, v189) == 1)
  {
    v36 = *(v0 + 496);
    v35 = *(v0 + 504);
    v38 = *(v0 + 480);
    v37 = *(v0 + 488);
    v39 = *(v0 + 472);

    (*(v38 + 8))(v37, v39);
    v40 = &qword_27C820D00;
    sub_20CEF928C(v35, &qword_27C820D00);
    v41 = v36;
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 496), *(v0 + 392));
  v100 = swift_task_alloc();
  *(v0 + 696) = v100;
  *v100 = v0;
  v100[1] = sub_20D0A935C;
  v101 = *(v0 + 488);
  v102 = *(v0 + 408);

  return sub_20D0B05A8(v102, v101, v28);
}

uint64_t sub_20D0A935C()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_20D0AA690;
  }

  else
  {
    v5 = sub_20D0A94B4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D0A94B4()
{
  v1 = v0[63];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CEF928C(v1, &qword_27C820D00);
  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D0B3DB8(&qword_27C820120, type metadata accessor for ActionSetDeviceDataModel);
  sub_20D566628();
  sub_20D566638();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20D0A97B4()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 808);
  v3 = *(v0 + 672);
  v4 = *(v0 + 608);
  v5 = *(v0 + 592);
  v6 = *(v0 + 552);

  v1(v5, v4, v6);
  if (v3(v5, v6) == v2)
  {
    v37 = *(v0 + 744);
    v38 = *(v0 + 808);
    v36 = *(v0 + 672);
    v7 = *(v0 + 600);
    v8 = *(v0 + 592);
    v9 = *(v0 + 584);
    v10 = *(v0 + 552);
    v11 = *(v0 + 536);
    v12 = *(v0 + 520);
    v13 = *(v0 + 512);
    (*(v0 + 712))(v8, v10);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D18);
    v39 = *(v8 + *(v14 + 48));
    v15 = *(v12 + 32);
    v15(v11, v8, v13);
    v37(v9, v7, v10);
    if (v36(v9, v10) == v38)
    {
      v16 = *(v0 + 736);
      v17 = *(v0 + 584);
      v18 = *(v0 + 528);
      v19 = *(v0 + 512);
      (*(v0 + 712))(v17, *(v0 + 552));
      v20 = *(v17 + *(v14 + 48));
      v15(v18, v17, v19);
      v21 = sub_20D5650C8();
      if (sub_20D5650C8() == v16)
      {
      }

      else
      {
        v25 = *(v0 + 528);
        v26 = sub_20D5650C8();
        *(v0 + 40) = MEMORY[0x277D83B88];
        *(v0 + 16) = v26;
        sub_20D0B1DE8((v0 + 16), v25, v20);

        __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      }

      v27 = v21 != v16;
      v28 = *(v0 + 536);
      v29 = *(v0 + 528);
      v30 = *(v0 + 520);
      v31 = *(v0 + 512);
      *(v0 + 72) = MEMORY[0x277D839B0];
      *(v0 + 48) = v27;
      sub_20D0B1DE8((v0 + 48), v28, v39);

      v32 = *(v30 + 8);
      v32(v29, v31);
      v32(v28, v31);
      __swift_destroy_boxed_opaque_existential_1(v0 + 48);
    }

    else
    {
      v22 = *(v0 + 584);
      v23 = *(v0 + 560);
      v24 = *(v0 + 552);
      (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));

      (*(v23 + 8))(v22, v24);
    }
  }

  else
  {
    (*(*(v0 + 560) + 8))(*(v0 + 592), *(v0 + 552));
  }

  v33 = *(v0 + 664);
  v34 = *(v0 + 656);

  return MEMORY[0x2822009F8](sub_20D0A9AE0, v34, v33);
}

uint64_t sub_20D0A9AE0()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];

  (*(v7 + 8))(v6, v8);
  sub_20CEF928C(v5, &qword_27C81F528);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);

  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D0B3DB8(&qword_27C820120, type metadata accessor for ActionSetDeviceDataModel);
  sub_20D566628();
  sub_20D566638();

  v10 = v0[1];

  return v10();
}

uint64_t sub_20D0A9E08()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_20D0AA92C;
  }

  else
  {
    v5 = sub_20D0A9F44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D0A9F44()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];

  (*(v7 + 8))(v6, v8);
  sub_20CEF928C(v5, &qword_27C81F530);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);

  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D0B3DB8(&qword_27C820120, type metadata accessor for ActionSetDeviceDataModel);
  sub_20D566628();
  sub_20D566638();

  v10 = v0[1];

  return v10();
}

uint64_t sub_20D0AA26C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 800) = a1;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);

  return MEMORY[0x2822009F8](sub_20D0AA394, v4, v3);
}

uint64_t sub_20D0AA394()
{
  v1 = v0[100];

  if (v1)
  {
    v2 = v0[100];
    v4 = v0[26];
    v3 = v0[27];
    v5 = v0[25];
    sub_20D01D180(v0[22], v3, v2);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
  }

  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D0B3DB8(&qword_27C820120, type metadata accessor for ActionSetDeviceDataModel);
  sub_20D566628();
  sub_20D566638();

  v6 = v0[1];

  return v6();
}

uint64_t sub_20D0AA690()
{
  v1 = v0[63];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[49];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CEF928C(v1, &qword_27C820D00);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20D0AA92C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];

  (*(v7 + 8))(v6, v8);
  sub_20CEF928C(v5, &qword_27C81F530);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20D0AABF0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_20D565B38();
  v2 = sub_20CEF5234(MEMORY[0x277D84F90]);
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_28:

    return v2;
  }

LABEL_27:
  v3 = sub_20D568768();
  if (!v3)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = 0;
  v5 = &selRef_cameraContainsMotionServiceItem_;
  while (2)
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F31DD20](v6, v1);
      }

      else
      {
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_28;
      }
    }

    v10 = v9;
    v11 = [v9 v5[171]];
    v12 = [v10 targetValue];
    ObjectType = swift_getObjectType();
    *&v28 = v12;
    sub_20CEC80B0(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_20CEEDBC8(v11);
    v16 = v2[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      v20 = v15;
      if (v2[3] >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v14;
          sub_20CF9DF50();
          v14 = v25;
        }
      }

      else
      {
        sub_20CF9AC28(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_20CEEDBC8(v11);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_31;
        }
      }

      v5 = &selRef_cameraContainsMotionServiceItem_;
      if (v20)
      {
        v22 = (v2[7] + 32 * v14);
        __swift_destroy_boxed_opaque_existential_1(v22);
        sub_20CEC80B0(v27, v22);

        goto LABEL_23;
      }

      v2[(v14 >> 6) + 8] |= 1 << v14;
      *(v2[6] + 8 * v14) = v11;
      sub_20CEC80B0(v27, (v2[7] + 32 * v14));

      v23 = v2[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (!v18)
      {
        v2[2] = v24;
LABEL_23:
        if (v4 != v3)
        {
          continue;
        }

        goto LABEL_28;
      }
    }

    break;
  }

  __break(1u);
LABEL_31:
  sub_20CECF940(0, &unk_27C81AE40);
  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t sub_20D0AAEA0()
{
  v1 = sub_20D564518();
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v59 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - v4;
  v58 = sub_20D563818();
  v44 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  isUniquelyReferenced_nonNull_native = sub_20D565B28();
  v11 = sub_20CEF535C(MEMORY[0x277D84F90]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_27:
    v12 = sub_20D568768();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_28:

    return v11;
  }

  v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_28;
  }

LABEL_3:
  v13 = 0;
  v50 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v51 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v55 = (v44 + 16);
  v49 = *MEMORY[0x277D15F70];
  v54 = (v53 + 32);
  v47 = (v44 + 8);
  v48 = (v53 + 104);
  v43 = v53 + 40;
  v45 = v12;
  v46 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v51)
    {
      v16 = MEMORY[0x20F31DD20](v13, isUniquelyReferenced_nonNull_native);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v13 >= *(v50 + 16))
      {
        goto LABEL_24;
      }

      v16 = *(isUniquelyReferenced_nonNull_native + 8 * v13 + 32);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v56 = v17;
    v18 = v16;
    v19 = [v16 lightProfile];
    v20 = [v19 uniqueIdentifier];

    sub_20D5637E8();
    v57 = v18;
    LOBYTE(v19) = [v18 naturalLightEnabled];
    v21 = *v55;
    (*v55)(v6, v9, v58);
    v22 = v52;
    *v52 = v19;
    (*v48)(v22, v49, v1);
    v23 = *v54;
    v24 = v1;
    (*v54)(v59, v22, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v11;
    v26 = sub_20CEED7C0(v6);
    v27 = v11[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v11[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = v60;
      if (v25)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_20CF9E0D0();
      v11 = v60;
      if (v30)
      {
LABEL_4:
        v1 = v24;
        (*(v53 + 40))(v11[7] + *(v53 + 72) * v26, v59, v24);

        v14 = *v47;
        v15 = v58;
        (*v47)(v6, v58);
        v14(v9, v15);
        goto LABEL_5;
      }
    }

LABEL_16:
    v11[(v26 >> 6) + 8] |= 1 << v26;
    v33 = v44;
    v34 = v6;
    v35 = v9;
    v36 = v6;
    v6 = v58;
    v21((v11[6] + *(v44 + 72) * v26), v34, v58);
    v23(v11[7] + *(v53 + 72) * v26, v59, v24);

    isUniquelyReferenced_nonNull_native = *(v33 + 8);
    v37 = v36;
    v38 = v36;
    v9 = v35;
    v1 = v47;
    (isUniquelyReferenced_nonNull_native)(v38, v6);
    (isUniquelyReferenced_nonNull_native)(v9, v6);
    v39 = v11[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_26;
    }

    v11[2] = v41;
    v6 = v37;
    v1 = v24;
LABEL_5:
    ++v13;
    isUniquelyReferenced_nonNull_native = v46;
    if (v56 == v45)
    {
      goto LABEL_28;
    }
  }

  sub_20CF9AEA0(v29, isUniquelyReferenced_nonNull_native);
  v31 = sub_20CEED7C0(v6);
  if ((v30 & 1) == (v32 & 1))
  {
    v26 = v31;
    v11 = v60;
    if (v30)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t sub_20D0AB3FC()
{
  sub_20D563F48();
  v0 = sub_20D563F18();
  v1 = sub_20D563E78();

  return v1 & 1;
}

uint64_t sub_20D0AB444(int64_t a1)
{
  v2 = v1;
  v61 = sub_20D564058();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D564098();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D5642E8();
  MEMORY[0x28223BE20](v9 - 8);
  v54 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20D563818();
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v53 - v16;
  v58 = a1;
  MEMORY[0x20F319520](v15);
  v18 = *(v2 + 40);
  v59 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), v18);
  v19 = sub_20D565B78();
  v20 = [v19 uniqueIdentifier];

  sub_20D5637E8();
  LOBYTE(v19) = sub_20D5637D8();
  v21 = *(v11 + 8);
  v22 = v13;
  v23 = v60;
  v21(v22, v60);
  v21(v17, v23);
  if ((v19 & 1) == 0)
  {
    return sub_20CEF568C(MEMORY[0x277D84F90]);
  }

  __swift_project_boxed_opaque_existential_1((v59 + 16), *(v59 + 40));
  v24 = sub_20D565B78();
  sub_20D564088();
  v25 = sub_20D568DC8();
  v26 = [v24 hf:v25 accessoryWithMatterNodeID:?];

  if (!v26)
  {
    return sub_20CEF568C(MEMORY[0x277D84F90]);
  }

  (*(v56 + 16))(v55, v58, v57);
  v27 = v26;
  sub_20D5642C8();
  v28 = objc_allocWithZone(sub_20D565E38());
  v29 = sub_20D565E18();
  __swift_project_boxed_opaque_existential_1((v59 + 16), *(v59 + 40));
  v30 = sub_20D565BB8();
  sub_20CEC9698(v30);
  v32 = v31;

  if (!v32)
  {
    v38 = sub_20CEF568C(MEMORY[0x277D84F90]);

    return v38;
  }

  v54 = v29;
  v55 = v27;
  v64[0] = sub_20CEF568C(MEMORY[0x277D84F90]);
  v53[1] = v32;
  if ((v32 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AF00);
    sub_20CEF7F74(&qword_27C820DA0, &qword_27C81AF00);
    sub_20D567D58();
    v32 = v64[1];
    v33 = v64[2];
    v34 = v64[3];
    v35 = v64[4];
    v36 = v64[5];
  }

  else
  {
    v39 = -1 << *(v32 + 32);
    v33 = v32 + 56;
    v34 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v36 = v41 & *(v32 + 56);
    sub_20D5663C8();
    v35 = 0;
  }

  v53[0] = v34;
  v42 = (v34 + 64) >> 6;
  v60 = v4 + 16;
  v43 = (v4 + 8);
  v57 = v33;
  v58 = v42;
  v56 = v32;
  while (v32 < 0)
  {
    v48 = sub_20D568798();
    if (!v48 || (v62 = v48, sub_20CECF940(0, &qword_27C81AF00), swift_dynamicCast(), v47 = v63, v46 = v35, v59 = v36, !v63))
    {
LABEL_30:

      sub_20CEC80DC();

      return v64[0];
    }

LABEL_24:
    v49 = sub_20D5682B8();
    if (v49)
    {
      v50 = v49;
      v51 = *(v49 + 16);
      if (v51)
      {
        v52 = 0;
        while (v52 < *(v50 + 16))
        {
          v35 = v61;
          (*(v4 + 16))(v6, v50 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v52, v61);
          sub_20D0ABAEC(v6, v64);
          ++v52;
          (*v43)(v6, v35);
          if (v51 == v52)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_13:

      v32 = v56;
      v33 = v57;
    }

    v35 = v46;
    v42 = v58;
    v36 = v59;
  }

  v44 = v35;
  v45 = v36;
  v46 = v35;
  if (v36)
  {
LABEL_20:
    v59 = (v45 - 1) & v45;
    v47 = *(*(v32 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));
    if (!v47)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v42)
    {
      goto LABEL_30;
    }

    v45 = *(v33 + 8 * v46);
    ++v44;
    if (v45)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  __break(1u);

  result = (*v43)(v6, v35);
  __break(1u);
  return result;
}

uint64_t sub_20D0ABAEC(uint64_t a1, void *a2)
{
  v148 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820DA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v120 - v7;
  v139 = sub_20D563FC8();
  v9 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v152 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_20D563CF8();
  v11 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v131 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v146 = v120 - v14;
  MEMORY[0x28223BE20](v15);
  v124 = v120 - v16;
  v17 = sub_20D564868();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v150 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v145 = v120 - v21;
  MEMORY[0x28223BE20](v22);
  v123 = v120 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820DB0);
  MEMORY[0x28223BE20](v24 - 8);
  v136 = v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v135 = v120 - v27;
  v133 = a1;
  v28 = sub_20D564048();
  v29 = 0;
  v31 = v28 + 64;
  v30 = *(v28 + 64);
  v125 = v28;
  v32 = 1 << *(v28 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v149 = (v18 + 16);
  v142 = (v18 + 32);
  v143 = (v11 + 16);
  v151 = (v11 + 32);
  v140 = (v11 + 56);
  v120[2] = v9 + 16;
  v132 = (v11 + 48);
  v137 = v18;
  v36 = (v18 + 8);
  v37 = 0;
  v130 = v36;
  v120[1] = v11 + 40;
  v121 = v9;
  v127 = (v9 + 8);
  v141 = v11;
  v126 = (v11 + 8);
  v153 = v17;
  v129 = v28 + 64;
  v128 = v35;
  v122 = v5;
  v147 = v8;
  while (v34)
  {
    v144 = v37;
    v44 = v154;
    v45 = v29;
LABEL_17:
    v50 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v51 = v50 | (v45 << 6);
    v52 = v125;
    v53 = v137;
    v54 = v123;
    (*(v137 + 16))(v123, *(v125 + 48) + *(v137 + 72) * v51, v153);
    v55 = v141;
    v56 = v124;
    (*(v141 + 16))(v124, *(v52 + 56) + *(v141 + 72) * v51, v44);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820DB8);
    v58 = *(v57 + 48);
    v59 = *(v53 + 32);
    v48 = v136;
    v59(v136, v54, v153);
    (*(v55 + 32))(v48 + v58, v56, v44);
    (*(*(v57 - 8) + 56))(v48, 0, 1, v57);
    v49 = v135;
    v37 = v144;
LABEL_18:
    sub_20CF15584(v48, v49, &qword_27C820DB0);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820DB8);
    if ((*(*(v60 - 8) + 48))(v49, 1, v60) == 1)
    {

      return sub_20CEC8164(v37);
    }

    v61 = *(v60 + 48);
    v62 = v145;
    v63 = v153;
    (*v142)(v145, v49, v153);
    v64 = v49 + v61;
    v65 = v146;
    v66 = v154;
    v144 = *v151;
    (v144)(v146, v64, v154);
    v67 = v152;
    sub_20D564038();
    v134 = *v149;
    v134(v150, v62, v63);
    v68 = v147;
    (*v143)(v147, v65, v66);
    v69 = v66;
    v70 = *v140;
    (*v140)(v68, 0, 1, v69);
    sub_20CEC8164(v37);
    v71 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155 = *v71;
    v73 = v155;
    *v71 = 0x8000000000000000;
    v75 = sub_20CEEDCA4(v67);
    v76 = v73[2];
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_47;
    }

    v79 = v74;
    if (v73[3] >= v78)
    {
      v82 = v150;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CF9E4A4();
        v73 = v155;
      }
    }

    else
    {
      sub_20CF9B7F0(v78, isUniquelyReferenced_nonNull_native);
      v73 = v155;
      v80 = sub_20CEEDCA4(v152);
      v82 = v150;
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_51;
      }

      v75 = v80;
    }

    v84 = v147;
    v83 = v148;
    *v148 = v73;

    v85 = *v83;
    if ((v79 & 1) == 0)
    {
      v86 = sub_20CEF5874(MEMORY[0x277D84F90]);
      v85[(v75 >> 6) + 8] |= 1 << v75;
      (*(v121 + 16))(v85[6] + *(v121 + 72) * v75, v152, v139);
      *(v85[7] + 8 * v75) = v86;
      v87 = v85[2];
      v88 = __OFADD__(v87, 1);
      v89 = v87 + 1;
      if (v88)
      {
        goto LABEL_48;
      }

      v85[2] = v89;
    }

    v138 = v70;
    v90 = v85[7];
    v91 = v154;
    if ((*v132)(v84, 1, v154) != 1)
    {
      (v144)(v131, v84, v91);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v155 = *(v90 + 8 * v75);
      v101 = v155;
      *(v90 + 8 * v75) = 0x8000000000000000;
      v102 = sub_20CEEDD78(v82);
      v104 = v101[2];
      v105 = (v103 & 1) == 0;
      v88 = __OFADD__(v104, v105);
      v106 = v104 + v105;
      if (v88)
      {
        goto LABEL_49;
      }

      v107 = v103;
      if (v101[3] >= v106)
      {
        v109 = v153;
        if (v100)
        {
          goto LABEL_38;
        }

        v113 = v102;
        sub_20CF9E10C();
        v102 = v113;
        v110 = v155;
        if ((v107 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_39:
        (*(v141 + 40))(v110[7] + *(v141 + 72) * v102, v131, v154);
        v111 = *v130;
        (*v130)(v150, v109);
      }

      else
      {
        sub_20CF9B348(v106, v100);
        v102 = sub_20CEEDD78(v82);
        v109 = v153;
        if ((v107 & 1) != (v108 & 1))
        {
          goto LABEL_52;
        }

LABEL_38:
        v110 = v155;
        if (v107)
        {
          goto LABEL_39;
        }

LABEL_42:
        v110[(v102 >> 6) + 8] |= 1 << v102;
        v114 = v137;
        v115 = v102;
        v116 = v150;
        v134((v110[6] + *(v137 + 72) * v102), v150, v109);
        (v144)(v110[7] + *(v141 + 72) * v115, v131, v154);
        v111 = *(v114 + 8);
        v111(v116, v109);
        v117 = v110[2];
        v88 = __OFADD__(v117, 1);
        v118 = v117 + 1;
        if (v88)
        {
          goto LABEL_50;
        }

        v110[2] = v118;
      }

      *(v90 + 8 * v75) = v110;

      (*v127)(v152, v139);
      (*v126)(v146, v154);
      v111(v145, v109);
      goto LABEL_6;
    }

    sub_20CEF928C(v84, &qword_27C820DA8);
    v92 = sub_20CEEDD78(v82);
    if (v93)
    {
      v94 = v92;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v96 = *(v90 + 8 * v75);
      v155 = v96;
      *(v90 + 8 * v75) = 0x8000000000000000;
      if (!v95)
      {
        sub_20CF9E10C();
        v96 = v155;
      }

      v97 = *(v96 + 48) + *(v137 + 72) * v94;
      v134 = *(v137 + 8);
      v98 = v153;
      (v134)(v97, v153);
      v41 = v154;
      (v144)(v122, *(v96 + 56) + *(v141 + 72) * v94, v154);
      sub_20D08A37C(v94, v96);
      *(v90 + 8 * v75) = v96;

      v99 = v134;
      (v134)(v150, v98);
      (*v127)(v152, v139);
      (*(v141 + 8))(v146, v41);
      v99(v145, v98);

      v42 = 0;
    }

    else
    {
      v38 = *v130;
      v39 = v82;
      v40 = v153;
      (*v130)(v39, v153);
      (*v127)(v152, v139);
      v41 = v154;
      (*v126)(v146, v154);
      v38(v145, v40);
      v42 = 1;
    }

    v43 = v122;
    v138(v122, v42, 1, v41);
    sub_20CEF928C(v43, &qword_27C820DA8);
LABEL_6:
    v37 = sub_20D0AC884;
    v31 = v129;
    v35 = v128;
  }

  if (v35 <= v29 + 1)
  {
    v46 = v29 + 1;
  }

  else
  {
    v46 = v35;
  }

  v47 = v46 - 1;
  v49 = v135;
  v48 = v136;
  while (1)
  {
    v45 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v45 >= v35)
    {
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820DB8);
      (*(*(v112 - 8) + 56))(v48, 1, 1, v112);
      v34 = 0;
      v29 = v47;
      goto LABEL_18;
    }

    v34 = *(v31 + 8 * v45);
    ++v29;
    if (v34)
    {
      v144 = v37;
      v44 = v154;
      v29 = v45;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_20D568C68();
  __break(1u);
LABEL_52:
  result = sub_20D568C68();
  __break(1u);
  return result;
}

unint64_t sub_20D0AC884@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20CEF5874(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void *sub_20D0AC8B4()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563F48();
  v5 = sub_20D563F18();
  sub_20D564618();
  sub_20D564608();
  v6 = sub_20D563F38();

  (*(v2 + 8))(v4, v1);
  if (v6)
  {
    sub_20D567E38();
    if (v7)
    {
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v8 = sub_20D565BC8();

      if (v8)
      {
        return v8;
      }
    }
  }

  return sub_20CEF557C(MEMORY[0x277D84F90]);
}

uint64_t sub_20D0ACA24@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_20D5646C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20D564308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v22 = sub_20D0AB444(a1);
  sub_20D563F48();
  v17 = sub_20D563F18();
  sub_20D563ED8();

  sub_20D5646A8();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_20CEF928C(v9, &qword_27C820D40);
    v18 = 1;
    v19 = v23;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    v19 = v23;
    sub_20D564218();
    (*(v11 + 8))(v16, v10);
    v18 = 0;
  }

  v20 = sub_20D564228();
  return (*(*(v20 - 8) + 56))(v19, v18, 1, v20);
}

uint64_t ActionSetDeviceDataModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6HomeUI24ActionSetDeviceDataModel_id;
  v4 = sub_20D563818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20D0ACD98(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_20D5646C8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D40);
  v2[15] = swift_task_alloc();
  v4 = sub_20D564308();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = sub_20D564228();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = sub_20D564098();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D48);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D50);
  v2[30] = swift_task_alloc();
  v7 = sub_20D565328();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D58);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v8 = sub_20D5645C8();
  v2[36] = v8;
  v2[37] = *(v8 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D60);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D68);
  v2[42] = swift_task_alloc();
  v9 = sub_20D5652A8();
  v2[43] = v9;
  v2[44] = *(v9 - 8);
  v2[45] = swift_task_alloc();
  sub_20D567C18();
  v2[46] = sub_20D567C08();
  v11 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0AD258, v11, v10);
}

uint64_t sub_20D0AD258()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];

  sub_20D565248();
  v142 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(v0[42], &qword_27C820D68);
    v4 = v0;
    goto LABEL_39;
  }

  v5 = v0[37];
  v140 = v0[11];
  (*(v0[44] + 32))(v0[45], v0[42], v0[43]);
  result = sub_20D565298();
  v7 = 0;
  v8 = result + 64;
  v130 = result;
  v9 = -1;
  v10 = -1 << *(result + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(result + 64);
  v12 = (63 - v10) >> 6;
  v138 = (v5 + 32);
  v128 = v5;
  v132 = (v5 + 8);
  v134 = v12;
  v13 = v0;
  v136 = result + 64;
  while (2)
  {
    if (v11)
    {
      v16 = v7;
      goto LABEL_17;
    }

    if (v12 <= v7 + 1)
    {
      v17 = v7 + 1;
    }

    else
    {
      v17 = v12;
    }

    v18 = v17 - 1;
    do
    {
      v16 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v16 >= v12)
      {
        v40 = v13[40];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D78);
        (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
        v11 = 0;
        v7 = v18;
        goto LABEL_18;
      }

      v11 = *(v8 + 8 * v16);
      ++v7;
    }

    while (!v11);
    v7 = v16;
LABEL_17:
    v20 = v13[39];
    v19 = v13[40];
    v21 = v13[36];
    v22 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v23 = v22 | (v16 << 6);
    (*(v128 + 16))(v20, *(v130 + 48) + *(v128 + 72) * v23, v21);
    sub_20CED43FC(*(v130 + 56) + 32 * v23, (v13 + 2));
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D78);
    v25 = *(v24 + 48);
    (*(v128 + 32))(v19, v20, v21);
    sub_20CEC80B0(v13 + 1, (v19 + v25));
    (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
LABEL_18:
    v26 = v13[41];
    sub_20CF15584(v13[40], v26, &qword_27C820D60);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D78);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) != 1)
    {
      v28 = (v13[41] + *(v27 + 48));
      (*v138)(v13[38]);
      v29 = v28[3];
      v30 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v13[9] = v29;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 6);
      (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v30, v29);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v32 = sub_20D565278();
      v33 = sub_20D0B2090(v32);

      if (!(v33 >> 62))
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_21;
        }

LABEL_6:
        v14 = v13[38];
        v15 = v13[36];

        (*v132)(v14, v15);
        result = __swift_destroy_boxed_opaque_existential_1((v13 + 6));
        v12 = v134;
        v8 = v136;
        continue;
      }

      result = sub_20D568768();
      v34 = result;
      if (!result)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (v34 >= 1)
      {
        for (i = 0; i != v34; ++i)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x20F31DD20](i, v33);
          }

          else
          {
            v36 = *(v33 + 8 * i + 32);
          }

          v37 = v36;
          v38 = sub_20D5684E8();
          if (v38)
          {
            v39 = v38;
            __swift_project_boxed_opaque_existential_1(v140 + 2, v140[5]);
            v13 = v142;
            sub_20D0B1F1C(v142 + 6, v39);
          }
        }

        goto LABEL_6;
      }

LABEL_70:
      __break(1u);
      return result;
    }

    break;
  }

  v4 = v13;
  v42 = v13[35];

  sub_20D565288();
  v43 = sub_20D564518();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    (*(v4[44] + 8))(v4[45], v4[43]);
  }

  else
  {
    v45 = v4[34];
    sub_20CEF9178(v4[35], v45, &qword_27C820D58);
    v46 = (*(v44 + 88))(v45, v43);
    v48 = v4[44];
    v47 = v4[45];
    v49 = v4[43];
    if (v46 == *MEMORY[0x277D15F70])
    {
      v50 = v4[34];
      (*(v44 + 96))(v50, v43);
      v51 = *v50;
      v52 = sub_20D565278();
      v53 = v140[5];
      v54 = v140[6];
      __swift_project_boxed_opaque_existential_1(v140 + 2, v53);
      sub_20D0B315C(v51, v52, v53, v54);

      (*(v48 + 8))(v47, v49);
    }

    else
    {
      v55 = v46;
      v56 = *MEMORY[0x277D15F78];
      (*(v48 + 8))(v4[45], v4[43]);
      if (v55 != v56)
      {
        (*(v44 + 8))(v4[34], v43);
      }
    }
  }

  sub_20CEF928C(v4[35], &qword_27C820D58);
LABEL_39:
  v57 = v4[31];
  v58 = v4[32];
  v59 = v4[30];
  sub_20D565258();
  if ((*(v58 + 48))(v59, 1, v57) == 1)
  {
    sub_20CEF928C(v4[30], &qword_27C820D50);
    v60 = v4;
    goto LABEL_65;
  }

  v61 = v4[25];
  v62 = v4[21];
  v63 = v4[17];
  v64 = v4[13];
  v65 = v4[11];
  (*(v4[32] + 32))(v4[33], v4[30], v4[31]);
  v121 = v65;
  __swift_project_boxed_opaque_existential_1(v65 + 2, v65[5]);
  v133 = sub_20D565B78();
  result = sub_20D565318();
  v66 = 0;
  v123 = result + 64;
  v129 = result;
  v67 = -1;
  v68 = -1 << *(result + 32);
  if (-v68 < 64)
  {
    v67 = ~(-1 << -v68);
  }

  v69 = v67 & *(result + 64);
  v70 = (63 - v68) >> 6;
  v141 = (v61 + 32);
  v124 = (v63 + 48);
  v125 = (v64 + 8);
  v119 = (v63 + 16);
  v120 = (v63 + 32);
  v117 = (v62 + 32);
  v118 = (v63 + 8);
  v126 = v61;
  v127 = v70;
  v131 = (v61 + 8);
  v116 = (v62 + 8);
LABEL_44:
  v71 = v66;
  if (!v69)
  {
LABEL_47:
    if (v70 <= v71 + 1)
    {
      v72 = v71 + 1;
    }

    else
    {
      v72 = v70;
    }

    v73 = v72 - 1;
    while (1)
    {
      v74 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_69;
      }

      if (v74 >= v70)
      {
        break;
      }

      v69 = *(v123 + 8 * v74);
      ++v71;
      if (v69)
      {
        goto LABEL_57;
      }
    }

    v75 = v142;
    v76 = v142[28];
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D70);
    (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
    v69 = 0;
    goto LABEL_58;
  }

  while (1)
  {
    v74 = v71;
LABEL_57:
    v75 = v142;
    v78 = v142[27];
    v79 = v142[28];
    v80 = v142[24];
    v81 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v82 = v81 | (v74 << 6);
    (*(v126 + 16))(v78, *(v129 + 48) + *(v126 + 72) * v82, v80);
    v83 = *(*(v129 + 56) + 8 * v82);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D70);
    v85 = *(v84 + 48);
    (*(v126 + 32))(v79, v78, v80);
    *(v79 + v85) = v83;
    (*(*(v84 - 8) + 56))(v79, 0, 1, v84);
    sub_20D5663C8();
    v73 = v74;
    v70 = v127;
LABEL_58:
    v86 = v75[29];
    sub_20CF15584(v75[28], v86, &qword_27C820D48);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D70);
    if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
    {
      break;
    }

    v88 = *(v75[29] + *(v87 + 48));
    (*v141)(v75[26]);
    sub_20D564088();
    v89 = sub_20D568DC8();
    v90 = [v133 hf:v89 accessoryWithMatterNodeID:?];

    v91 = v75[26];
    if (v90)
    {
      v135 = v90;
      v137 = v88;
      v139 = v73;
      v93 = v75[15];
      v92 = v75[16];
      v94 = v75[14];
      v95 = v75[12];
      sub_20D0AB444(v91);
      sub_20D563F48();
      v96 = sub_20D563F18();
      sub_20D563ED8();

      sub_20D5646A8();
      (*v125)(v94, v95);
      v97 = (*v124)(v93, 1, v92);
      v98 = v75[26];
      v99 = v75[24];
      if (v97 != 1)
      {
        v101 = v75[22];
        v122 = v75[23];
        v103 = v75[19];
        v102 = v75[20];
        v115 = v102;
        v104 = v75[18];
        v105 = v75[16];
        (*v120)(v103, v75[15], v105);
        (*v119)(v104, v103, v105);
        sub_20D564218();
        (*v118)(v103, v105);
        (*v117)(v122, v101, v102);
        v106 = v121[5];
        v114 = v121[6];
        __swift_project_boxed_opaque_existential_1(v121 + 2, v106);
        v107 = swift_task_alloc();
        *(v107 + 16) = v122;
        sub_20CF3EE8C(sub_20D0B3E00, v107, v137);
        v70 = v127;

        v108 = sub_20D567A98();

        v109 = sub_20D564068();
        sub_20D01E4F4(v108, v135, v109, v106, v114);

        (*v131)(v98, v99);
        result = (*v116)(v122, v115);
        v66 = v139;
        goto LABEL_44;
      }

      v100 = v75[15];

      sub_20CEF928C(v100, &qword_27C820D40);
      result = (*v131)(v98, v99);
      v71 = v73;
      if (!v69)
      {
        goto LABEL_47;
      }
    }

    else
    {
      (*v131)(v91, v75[24]);

      v71 = v73;
      if (!v69)
      {
        goto LABEL_47;
      }
    }
  }

  v111 = v75[32];
  v110 = v75[33];
  v112 = v75[31];

  (*(v111 + 8))(v110, v112);
  v60 = v75;
LABEL_65:
  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D0B3DB8(&qword_27C820120, type metadata accessor for ActionSetDeviceDataModel);
  sub_20D566628();
  sub_20D566638();

  v113 = v60[1];

  return v113();
}

uint64_t sub_20D0AE120(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_20D564228();
  v6[3] = v3;
  v6[4] = MEMORY[0x277D15B18];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, a2, v3);
  sub_20D564768();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_20D0AE1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v46 = a1;
  v4 = sub_20D5642F8();
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20D5656A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v52 = sub_20D5645C8();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = v7[2];
  v17(v11, a2, v6, v14);
  v18 = v7[11];
  v19 = v18(v11, v6);
  if (v19 != *MEMORY[0x277D14FF0])
  {
    v36 = v7[1];
    v37 = v11;
    return v36(v37, v6);
  }

  v20 = v19;
  v21 = v7[12];
  v42 = v7 + 12;
  v43 = v4;
  v41 = v21;
  v21(v11, v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D18);
  v44 = *&v11[*(v39 + 48)];
  v40 = *(v50 + 32);
  v40(v16, v11, v52);
  v22 = v51;
  (v17)(v51, v49, v6);
  if (v18(v22, v6) != v20)
  {
    (*(v50 + 8))(v16, v52);

    v36 = v7[1];
    v37 = v51;
    return v36(v37, v6);
  }

  v23 = v44;
  v49 = v16;
  v24 = v51;
  v41(v51, v6);
  v25 = *&v24[*(v39 + 48)];
  v26 = v45;
  v27 = v52;
  v40(v45, v24, v52);
  v28 = v47;
  sub_20D565148();
  v29 = v48;
  v30 = v43;
  if ((*(v48 + 88))(v28, v43) == *MEMORY[0x277D15BB8])
  {
    (*(v29 + 96))(v28, v30);
    v31 = *v28;
    v32 = *v28 > 0.0;
    v54 = MEMORY[0x277D839F8];
    *v53 = v31;
    sub_20D0B1DE8(v53, v26, v25);

    __swift_destroy_boxed_opaque_existential_1(v53);
    v54 = MEMORY[0x277D839B0];
    LOBYTE(v53[0]) = v32;
    v33 = v49;
    sub_20D0B1DE8(v53, v49, v23);

    v34 = *(v50 + 8);
    v34(v26, v27);
    v34(v33, v27);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {

    v38 = *(v50 + 8);
    v38(v26, v27);
    v38(v49, v27);
    return (*(v29 + 8))(v28, v30);
  }
}

uint64_t sub_20D0AE6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_20D5642F8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_20D5656A8();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = sub_20D5645C8();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_20D567C18();
  v4[25] = sub_20D567C08();
  v9 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0AE8A4, v9, v8);
}

uint64_t sub_20D0AE8A4()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[12];

  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = *(v3 + 88);
  v7 = v6(v1, v2);
  if (v7 == *MEMORY[0x277D14FF0])
  {
    v8 = v7;
    v9 = v0[22];
    v41 = v0[21];
    v43 = v0[24];
    v10 = v0[20];
    v44 = v0[19];
    v11 = v0[17];
    v39 = *(v0[18] + 96);
    v40 = v0[11];
    v39(v10, v11);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D18);
    v45 = *(v10 + *(v38 + 48));
    v12 = v41;
    v42 = *(v9 + 32);
    v42(v43, v10, v12);
    v5(v44, v40, v11);
    v13 = v6(v44, v11);
    v14 = v0[21];
    v15 = v0[19];
    if (v13 == v8)
    {
      v16 = v0[23];
      v17 = v0[16];
      v19 = v0[14];
      v18 = v0[15];
      v39(v0[19], v0[17]);
      v20 = *(v15 + *(v38 + 48));
      v42(v16, v15, v14);
      sub_20D565148();
      v21 = (*(v18 + 88))(v17, v19);
      v23 = v0[23];
      v22 = v0[24];
      v24 = v0[21];
      v25 = v0[22];
      v26 = v0[15];
      v27 = v0[16];
      v28 = v0[14];
      if (v21 == *MEMORY[0x277D15BB0])
      {
        (*(v26 + 96))(v0[16], v0[14]);
        v30 = *v27;
        v29 = v27[1];
        v31 = MEMORY[0x277D839F8];
        v0[5] = MEMORY[0x277D839F8];
        v0[2] = v29;
        sub_20D0B1DE8(v0 + 2, v22, v45);

        __swift_destroy_boxed_opaque_existential_1((v0 + 2));
        v0[9] = v31;
        v0[6] = v30;
        sub_20D0B1DE8(v0 + 6, v23, v20);

        v32 = *(v25 + 8);
        v32(v23, v24);
        v32(v22, v24);
        __swift_destroy_boxed_opaque_existential_1((v0 + 6));
      }

      else
      {

        v35 = *(v25 + 8);
        v35(v23, v24);
        v35(v22, v24);
        (*(v26 + 8))(v27, v28);
      }
    }

    else
    {
      v34 = v0[17];
      v33 = v0[18];
      (*(v0[22] + 8))(v0[24], v0[21]);

      (*(v33 + 8))(v15, v34);
    }
  }

  else
  {
    (*(v0[18] + 8))(v0[20], v0[17]);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_20D0AEC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D68);
  v4[6] = swift_task_alloc();
  v5 = sub_20D565268();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D50);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_20D565328();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD8);
  v4[17] = swift_task_alloc();
  v7 = sub_20D564098();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_20D5641F8();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = sub_20D563818();
  v4[24] = v9;
  v4[25] = *(v9 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  v4[27] = swift_task_alloc();
  v10 = sub_20D563DB8();
  v4[28] = v10;
  v4[29] = *(v10 - 8);
  v4[30] = swift_task_alloc();
  sub_20D567C18();
  v4[31] = sub_20D567C08();
  v12 = sub_20D567BA8();
  v4[32] = v12;
  v4[33] = v11;

  return MEMORY[0x2822009F8](sub_20D0AF02C, v12, v11);
}

uint64_t sub_20D0AF02C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v2 + 104))(v1, *MEMORY[0x277D15258], v3);
  sub_20D0B3DB8(&qword_2811209A0, MEMORY[0x277D15260]);
  v4 = sub_20D563978();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {

    goto LABEL_27;
  }

  v5 = v0[5];
  sub_20D563F48();
  v6 = sub_20D563F18();
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v7 = sub_20D565B78();
  v8 = [v7 uniqueIdentifier];

  sub_20D5637E8();
  v9 = sub_20D563EE8();

  if (!*(v9 + 16))
  {
    v20 = v0[26];
    v11 = v0[27];
    v21 = v0[24];
    v22 = v0[25];

    (*(v22 + 8))(v20, v21);
LABEL_8:
    v23 = sub_20D5641B8();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    goto LABEL_9;
  }

  v10 = sub_20CEED7C0(v0[26]);
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[24];
  v14 = v0[25];
  if ((v15 & 1) == 0)
  {

    (*(v14 + 8))(v12, v13);
    goto LABEL_8;
  }

  v16 = v10;
  v17 = *(v9 + 56);
  v18 = sub_20D5641B8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, v17 + *(v19 + 72) * v16, v18);
  (*(v14 + 8))(v12, v13);

  (*(v19 + 56))(v11, 0, 1, v18);
LABEL_9:
  v24 = v0[27];
  v25 = v0[4];
  v26 = swift_task_alloc();
  *(v26 + 16) = v24;
  v27 = sub_20CF3EFE8(sub_20D0B4264, v26, v25);

  v28 = v27[2];
  if (v28)
  {
    v29 = v0[22];
    v30 = v0[19];
    v32 = *(v29 + 16);
    v29 += 16;
    v31 = v32;
    v33 = v0[13];
    v34 = v27 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v75 = (v29 - 8);
    v35 = (v30 + 48);
    v70 = (v33 + 48);
    v71 = (v30 + 32);
    v65 = (v33 + 16);
    v66 = v33;
    v68 = (v30 + 8);
    v69 = (v33 + 32);
    v73 = MEMORY[0x277D84F90];
    v74 = *(v29 + 56);
    v72 = v32;
    v64 = (v30 + 48);
    do
    {
      v36 = v0[23];
      v37 = v0[21];
      v39 = v0[17];
      v38 = v0[18];
      v31(v36, v34, v37);
      sub_20D5641D8();
      (*v75)(v36, v37);
      if ((*v35)(v39, 1, v38) == 1)
      {
        sub_20CEF928C(v0[17], &qword_27C820CD8);
      }

      else
      {
        v41 = v0[11];
        v40 = v0[12];
        (*v71)(v0[20], v0[17], v0[18]);
        sub_20D565468();
        if ((*v70)(v41, 1, v40) == 1)
        {
          v42 = v0[11];
          (*v68)(v0[20], v0[18]);
          sub_20CEF928C(v42, &qword_27C820D50);
          v31 = v72;
        }

        else
        {
          v43 = v0[15];
          v44 = v0[16];
          v45 = v0[12];
          v67 = *v69;
          (*v69)(v44, v0[11], v45);
          (*v65)(v43, v44, v45);
          v46 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_20CEE8F10(0, v73[2] + 1, 1, v73);
          }

          v48 = v46[2];
          v47 = v46[3];
          v73 = v46;
          if (v48 >= v47 >> 1)
          {
            v73 = sub_20CEE8F10(v47 > 1, v48 + 1, 1, v46);
          }

          v49 = v0[20];
          v50 = v0[18];
          v51 = v0[15];
          v52 = v0[12];
          (*(v66 + 8))(v0[16], v52);
          (*v68)(v49, v50);
          v73[2] = v48 + 1;
          v67(v73 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v48, v51, v52);
          v31 = v72;
          v35 = v64;
        }
      }

      v34 += v74;
      --v28;
    }

    while (v28);

    if (v73[2])
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_22:
      v54 = v0[13];
      v53 = v0[14];
      v55 = v0[12];
      v56 = v0[10];
      v57 = v0[6];
      sub_20D565308();

      v58 = sub_20D5652A8();
      (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
      (*(v54 + 16))(v56, v53, v55);
      (*(v54 + 56))(v56, 0, 1, v55);
      sub_20D565238();
      v59 = swift_task_alloc();
      v0[34] = v59;
      *v59 = v0;
      v59[1] = sub_20D0AF8A0;
      v60 = v0[9];

      return sub_20D0ACD98(v60);
    }
  }

  v62 = v0[27];

  sub_20CEF928C(v62, &qword_27C81E180);
LABEL_27:

  v63 = v0[1];

  return v63(0);
}

uint64_t sub_20D0AF8A0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_20D0AFB50;
  }

  else
  {
    v5 = sub_20D0AF9DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D0AF9DC()
{
  v1 = v0[27];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CEF928C(v1, &qword_27C81E180);

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_20D0AFB50()
{
  v1 = v0[27];
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CEF928C(v1, &qword_27C81E180);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_20D0AFCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  sub_20CEF9178(a2, v20 - v7, &qword_27C81E180);
  v9 = sub_20D5641B8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20CEF928C(v8, &qword_27C81E180);
  }

  else
  {
    v11 = sub_20D564158();
    (*(v10 + 8))(v8, v9);
    if (*(v11 + 16))
    {
      v12 = sub_20CEED7C0(a1);
      if (v13)
      {
        v14 = v12;
        v15 = *(v11 + 56);
        v16 = sub_20D5641F8();
        v17 = *(v16 - 8);
        (*(v17 + 16))(a3, v15 + *(v17 + 72) * v14, v16);

        return (*(v17 + 56))(a3, 0, 1, v16);
      }
    }
  }

  v19 = sub_20D5641F8();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

void sub_20D0AFF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D5645C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D5642B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_20D5651A8() & 1) != 0 && (sub_20D5651B8())
  {
    (*(v11 + 16))(v13, a1, v10);
    v14 = (*(v11 + 88))(v13, v10);
    if (v14 == *MEMORY[0x277D15B40])
    {
      if (sub_20D5651A8())
      {
        v15 = sub_20D5642A8();
        if ((v17 & 1) == 0)
        {
          sub_20D0B03FC(*&v15, v16, v3, a3);
        }
      }

      else if (sub_20D5651B8())
      {
        v26 = sub_20D564298();
        if ((v26 & 0x10000) == 0)
        {
          v31 = MEMORY[0x277D84C58];
          LOWORD(v30[0]) = v26;
          (*(v7 + 104))(v9, *MEMORY[0x277D16168], v6);
          sub_20D0B1DE8(v30, v9, a3);
          (*(v7 + 8))(v9, v6);
          __swift_destroy_boxed_opaque_existential_1(v30);
        }
      }

LABEL_33:
      (*(v11 + 8))(v13, v10);
      return;
    }

    if (v14 == *MEMORY[0x277D15B38])
    {
      (*(v11 + 96))(v13, v10);
      sub_20D0B03FC(*v13, v13[1], v3, a3);
      return;
    }

    if (v14 != *MEMORY[0x277D15B28])
    {
      if (v14 != *MEMORY[0x277D15B30])
      {
        sub_20D568BE8();
        __break(1u);
        return;
      }

      goto LABEL_33;
    }

    (*(v11 + 96))(v13, v10);
    v27 = *v13;
    v31 = MEMORY[0x277D84C58];
    LOWORD(v30[0]) = v27;
LABEL_31:
    (*(v7 + 104))(v9, *MEMORY[0x277D16168], v6);
    sub_20D0B1DE8(v30, v9, a3);
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return;
  }

  if ((sub_20D5651A8() & 1) != 0 && (sub_20D5651B8() & 1) == 0)
  {
    v23 = sub_20D5642A8();
    if ((v25 & 1) == 0)
    {

      sub_20D0B03FC(*&v23, v24, v3, a3);
    }
  }

  else
  {
    if (sub_20D5651A8() & 1) == 0 && (sub_20D5651B8())
    {
      v18 = sub_20D564298();
      if ((v18 & 0x10000) != 0)
      {
        return;
      }

      v31 = MEMORY[0x277D84C58];
      LOWORD(v30[0]) = v18;
      goto LABEL_31;
    }

    if (qword_27C81A2B0 != -1)
    {
      swift_once();
    }

    v19 = sub_20D565988();
    __swift_project_value_buffer(v19, qword_27C838240);
    v29 = sub_20D565968();
    v20 = sub_20D567EA8();
    if (os_log_type_enabled(v29, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20CEB6000, v29, v20, "Accessory does not support any Color attributes!", v21, 2u);
      MEMORY[0x20F31FC70](v21, -1, -1);
    }

    v22 = v29;
  }
}

uint64_t sub_20D0B03FC(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20D5645C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D839F8];
  v16 = MEMORY[0x277D839F8];
  v15[0] = a1 * 360.0;
  v12 = *(v8 + 104);
  v12(v10, *MEMORY[0x277D162D8], v7);
  sub_20D0B1DE8(v15, v10, a4);
  v13 = *(v8 + 8);
  v13(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v15);
  v16 = v11;
  v15[0] = a2 * 100.0;
  v12(v10, *MEMORY[0x277D160B8], v7);
  sub_20D0B1DE8(v15, v10, a4);
  v13(v10, v7);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_20D0B05A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_20D5645C8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820DC0);
  v4[17] = swift_task_alloc();
  v6 = sub_20D5642B8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_20D567C18();
  v4[22] = sub_20D567C08();
  v8 = sub_20D567BA8();
  v4[23] = v8;
  v4[24] = v7;

  return MEMORY[0x2822009F8](sub_20D0B0740, v8, v7);
}

uint64_t sub_20D0B0740()
{
  v1 = *(v0 + 18);
  v2 = *(v0 + 19);
  v3 = *(v0 + 17);
  sub_20D565088();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 17);

    sub_20CEF928C(v4, &unk_27C820DC0);
    v5 = COERCE_DOUBLE(sub_20D565078());
    if ((v6 & 1) == 0)
    {
      v8 = *(v0 + 15);
      v7 = *(v0 + 16);
      v9 = *(v0 + 14);
      v10 = *(v0 + 12);
      v11 = v5;
      *(v0 + 5) = MEMORY[0x277D839F8];
      v0[2] = v5 * 100.0;
      v12 = *(v8 + 104);
      v12(v7, *MEMORY[0x277D160A8], v9);
      sub_20D0B1DE8(v0 + 2, v7, v10);
      v13 = *(v8 + 8);
      v13(v7, v9);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      *(v0 + 9) = MEMORY[0x277D839B0];
      *(v0 + 48) = v11 > 0.0;
      v12(v7, *MEMORY[0x277D160B0], v9);
      sub_20D0B1DE8(v0 + 6, v7, v10);
      v13(v7, v9);
      __swift_destroy_boxed_opaque_existential_1((v0 + 6));
    }

    v14 = *(v0 + 1);

    return v14();
  }

  else
  {
    (*(*(v0 + 19) + 32))(*(v0 + 21), *(v0 + 17), *(v0 + 18));
    v16 = swift_task_alloc();
    *(v0 + 25) = v16;
    *v16 = v0;
    v16[1] = sub_20D0B09D0;
    v17 = *(v0 + 21);
    v18 = *(v0 + 12);
    v19 = *(v0 + 11);

    return sub_20D0AEC64(v17, v19, v18);
  }
}

uint64_t sub_20D0B09D0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);
  if (v1)
  {
    v7 = sub_20D0B0F10;
  }

  else
  {
    v7 = sub_20D0B0B18;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20D0B0B18()
{
  v32 = v0;

  if (sub_20D5651C8())
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    (*(v3 + 16))(v1, *(v0 + 168), v2);
    v4 = (*(v3 + 88))(v1, v2);
    v5 = MEMORY[0x277D15B30];
    (*(v3 + 8))(v1, v2);
    if (qword_27C81A2B0 != -1)
    {
      swift_once();
    }

    v6 = *v5;
    v7 = sub_20D565988();
    __swift_project_value_buffer(v7, qword_27C838240);
    sub_20D5663C8();
    v8 = sub_20D565968();
    v9 = sub_20D567EC8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 67240450;
      *(v10 + 4) = v4 == v6;
      *(v10 + 8) = 2082;
      sub_20D563818();
      sub_20D0B3DB8(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
      v12 = sub_20D567D18();
      v14 = sub_20CEE913C(v12, v13, &v31);

      *(v10 + 10) = v14;
      _os_log_impl(&dword_20CEB6000, v8, v9, "ActionSet setting adaptive light (%{BOOL,public}d) for services %{public}s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F31FC70](v11, -1, -1);
      MEMORY[0x20F31FC70](v10, -1, -1);
    }

    v15 = v4 == v6;
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = v16[5];
    v19 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v18);
    sub_20D0B315C(v15, v17, v18, v19);
  }

  if ((*(v0 + 216) & 1) == 0)
  {
    sub_20D0AFF1C(*(v0 + 168), *(v0 + 88), *(v0 + 96));
  }

  (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
  v20 = COERCE_DOUBLE(sub_20D565078());
  if ((v21 & 1) == 0)
  {
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);
    v25 = *(v0 + 96);
    v26 = v20;
    *(v0 + 40) = MEMORY[0x277D839F8];
    *(v0 + 16) = v20 * 100.0;
    v27 = *(v23 + 104);
    v27(v22, *MEMORY[0x277D160A8], v24);
    sub_20D0B1DE8((v0 + 16), v22, v25);
    v28 = *(v23 + 8);
    v28(v22, v24);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    *(v0 + 72) = MEMORY[0x277D839B0];
    *(v0 + 48) = v26 > 0.0;
    v27(v22, *MEMORY[0x277D160B0], v24);
    sub_20D0B1DE8((v0 + 48), v22, v25);
    v28(v22, v24);
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_20D0B0F10()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20D0B0FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v40 = sub_20D5650E8();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D564028();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D5645C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_20D565108();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = a1;
  sub_20D565118();
  result = (*(v17 + 88))(v19, v16);
  if (result == *MEMORY[0x277D14EE0])
  {
    (*(v17 + 96))(v19, v16);
    v3 = *v19;
    v21 = *MEMORY[0x277D161B0];
    v36 = *(v10 + 104);
    v36(v15, v21, v9);
    v22 = v41;
    (*(v41 + 104))(v8, *MEMORY[0x277D15698], v6);
    sub_20D0B3DB8(&qword_27C81FF38, MEMORY[0x277D158E0]);
    sub_20D5679E8();
    sub_20D5679E8();
    if (v46[0] == v44 && v46[1] == v45)
    {
      (*(v22 + 8))(v8, v6);
    }

    else
    {
      v29 = sub_20D568BF8();
      v30 = v22;
      v31 = v29;
      (*(v30 + 8))(v8, v6);

      if ((v31 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v32 = v37;
    sub_20D5650F8();
    v33 = (*(v38 + 88))(v32, v40);
    if (v33 != *MEMORY[0x277D14EB0])
    {
      if (v33 == *MEMORY[0x277D14EC0])
      {
        v34 = MEMORY[0x277D16170];
LABEL_15:
        (*(v10 + 8))(v15, v9);
        v36(v15, *v34, v9);
        goto LABEL_17;
      }

LABEL_13:
      if (v33 != *MEMORY[0x277D14EC8])
      {
        if (v33 != *MEMORY[0x277D14EB8])
        {
          result = sub_20D568BE8();
          __break(1u);
          return result;
        }

        goto LABEL_17;
      }

      v34 = MEMORY[0x277D16180];
      goto LABEL_15;
    }

LABEL_17:
    v47 = MEMORY[0x277D839F8];
    v46[0] = v3;
    sub_20D0B1DE8(v46, v15, v43);
    (*(v10 + 8))(v15, v9);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  if (result != *MEMORY[0x277D14ED8])
  {
    if (result == *MEMORY[0x277D14ED0])
    {
      return result;
    }

    v33 = sub_20D568BE8();
    __break(1u);
    goto LABEL_13;
  }

  (*(v17 + 96))(v19, v16);
  v23 = *v19;
  v24 = v19[1];
  v25 = MEMORY[0x277D839F8];
  v47 = MEMORY[0x277D839F8];
  v46[0] = v23;
  v26 = *(v10 + 104);
  v26(v12, *MEMORY[0x277D16180], v9);
  v27 = v43;
  sub_20D0B1DE8(v46, v12, v43);
  v28 = *(v10 + 8);
  v28(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v47 = v25;
  v46[0] = v24;
  v26(v12, *MEMORY[0x277D16170], v9);
  sub_20D0B1DE8(v46, v12, v27);
  v28(v12, v9);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_20D0B15EC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_20D5642F8();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F528);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F538);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = sub_20D565688();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565698();
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == *MEMORY[0x277D14FD0])
  {
    (*(v22 + 96))(v24, v21);
    sub_20CF15584(v24, v20, &qword_27C81F538);
    sub_20CEF9178(v20, v17, &qword_27C81F538);
    v26 = sub_20D5650B8();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v17, 1, v26) == 1)
    {
      sub_20CEF928C(v20, &qword_27C81F538);
      sub_20CEF928C(v17, &qword_27C81F538);
      v28 = v54;
      *v54 = 0u;
      *(v28 + 16) = 0u;
    }

    else
    {
      v32 = sub_20D5650A8();
      v33 = v54;
      *(v54 + 24) = MEMORY[0x277D839B0];
      *v33 = v32 & 1;
      sub_20CEF928C(v20, &qword_27C81F538);
      (*(v27 + 8))(v17, v26);
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F550) + 48);
    v35 = sub_20D565138();
    return (*(*(v35 - 8) + 8))(&v24[v34], v35);
  }

  if (v25 == *MEMORY[0x277D14FB8])
  {
    (*(v22 + 96))(v24, v21);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F560) + 48);
    sub_20CF15584(v24, v8, &qword_27C81F530);
    sub_20CEF9178(v8, v5, &qword_27C81F530);
    v30 = sub_20D565158();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v5, 1, v30) == 1)
    {
      sub_20CEF928C(v5, &qword_27C81F530);
      sub_20CEF928C(v8, &qword_27C81F530);
    }

    else
    {
      v40 = v51;
      sub_20D565148();
      (*(v31 + 8))(v5, v30);
      v42 = v52;
      v41 = v53;
      if ((*(v52 + 88))(v40, v53) == *MEMORY[0x277D15BB8])
      {
        (*(v42 + 96))(v40, v41);
        v43 = *v40;
        v44 = v54;
        *(v54 + 24) = MEMORY[0x277D839F8];
        *v44 = v43;
        sub_20CEF928C(v8, &qword_27C81F530);
        v45 = sub_20D5651E8();
        v46 = v45;
        return (*(*(v45 - 8) + 8))(&v24[v29], v46);
      }

      sub_20CEF928C(v8, &qword_27C81F530);
      (*(v42 + 8))(v40, v41);
    }

    v45 = sub_20D5651E8();
    v46 = v45;
    v50 = v54;
    *v54 = 0u;
    *(v50 + 16) = 0u;
    return (*(*(v45 - 8) + 8))(&v24[v29], v46);
  }

  if (v25 == *MEMORY[0x277D14FD8])
  {
    (*(v22 + 96))(v24, v21);
    sub_20CF15584(v24, v14, &qword_27C81F528);
    sub_20CEF9178(v14, v11, &qword_27C81F528);
    v37 = sub_20D5650D8();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v11, 1, v37) == 1)
    {
      sub_20CEF928C(v14, &qword_27C81F528);
      sub_20CEF928C(v11, &qword_27C81F528);
      v39 = v54;
      *v54 = 0u;
      *(v39 + 16) = 0u;
    }

    else
    {
      v48 = sub_20D5650C8();
      v49 = v54;
      *(v54 + 24) = MEMORY[0x277D83B88];
      *v49 = v48;
      sub_20CEF928C(v14, &qword_27C81F528);
      (*(v38 + 8))(v11, v37);
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F548) + 48);
    v35 = sub_20D565168();
    return (*(*(v35 - 8) + 8))(&v24[v34], v35);
  }

  v47 = v54;
  *v54 = 0u;
  *(v47 + 16) = 0u;
  return (*(v22 + 8))(v24, v21);
}

unint64_t sub_20D0B1DE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D0B2090(a3);
  v5 = result;
  if (result >> 62)
  {
    result = sub_20D568768();
    v6 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F31DD20](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    v10 = sub_20D5684E8();
    if (v10)
    {
      v11 = v10;
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      sub_20D0B1F1C(a1, v11);

      v9 = v11;
    }
  }

LABEL_12:
}

uint64_t sub_20D0B1F1C(void *a1, uint64_t a2)
{
  v4 = sub_20D5645C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D567F58();
  v8 = sub_20D0B38A8(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_20D565B78();
    v11 = [objc_allocWithZone(MEMORY[0x277D14568]) initWithHome:v10 characteristic:a2];

    [v11 setTargetValue_];
    sub_20D565B68();

    swift_unknownObjectRelease();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20D0B2090(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  v60 = sub_20D5641B8();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - v5;
  v7 = sub_20D563818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v56 = sub_20D563F48();
  v16 = sub_20D563F18();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v17 = sub_20D565B78();
  v18 = [v17 uniqueIdentifier];

  sub_20D5637E8();
  v19 = sub_20D563EE8();

  if (*(v19 + 16) && (v20 = sub_20CEED7C0(v15), (v21 & 1) != 0))
  {
    v22 = v58;
    v23 = v60;
    (*(v58 + 16))(v6, *(v19 + 56) + *(v58 + 72) * v20, v60);
    v59 = *(v8 + 8);
    v59(v15, v7);

    v24 = 0;
  }

  else
  {

    v59 = *(v8 + 8);
    v59(v15, v7);
    v24 = 1;
    v23 = v60;
    v22 = v58;
  }

  (*(v22 + 56))(v6, v24, 1, v23);
  v25 = (*(v22 + 48))(v6, 1, v23);
  v60 = v8;
  if (v25)
  {
    sub_20CEF928C(v6, &qword_27C81E180);
LABEL_7:
    v58 = v7;
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    v26 = sub_20D565B78();
    v55 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    v27 = v61 + 56;
    v28 = 1 << *(v61 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v61 + 56);
    v31 = (v28 + 63) >> 6;
    v56 = v8 + 8;
    v57 = (v8 + 16);
    result = sub_20D5663C8();
    v33 = 0;
    while (v30)
    {
      v34 = v60;
LABEL_17:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = v58;
      (*(v34 + 16))(v10, *(v61 + 48) + *(v34 + 72) * (v36 | (v33 << 6)), v58);
      v38 = sub_20D5637C8();
      v39 = [v26 hf:v38 serviceWithIdentifier:?];

      result = (v59)(v10, v37);
      if (v39)
      {
        MEMORY[0x20F31CEE0](result);
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        result = sub_20D567B08();
        v55 = v62;
      }
    }

    v34 = v60;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v31)
      {

        return v55;
      }

      v30 = *(v27 + 8 * v35);
      ++v33;
      if (v30)
      {
        v33 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v40 = v55;
  (*(v22 + 16))(v55, v6, v23);
  sub_20CEF928C(v6, &qword_27C81E180);
  v41 = sub_20D564158();
  (*(v22 + 8))(v40, v23);
  v42 = *(v41 + 16);

  if (!v42)
  {
    goto LABEL_7;
  }

  v55 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v43 = v61 + 56;
  v44 = 1 << *(v61 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v61 + 56);
  v47 = (v44 + 63) >> 6;
  v58 = v8 + 16;
  result = sub_20D5663C8();
  v48 = 0;
  v49 = v57;
  if (!v46)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_26:
    while (1)
    {
      v50 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      (*(v60 + 16))(v49, *(v61 + 48) + *(v60 + 72) * (v50 | (v48 << 6)), v7);
      v51 = sub_20D563F18();
      v52 = sub_20D5637C8();
      v53 = [v51 serviceFor_];

      result = (v59)(v49, v7);
      if (v53)
      {
        break;
      }

      if (!v46)
      {
        goto LABEL_28;
      }
    }

    MEMORY[0x20F31CEE0](result);
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    result = sub_20D567B08();
    v55 = v62;
  }

  while (v46);
LABEL_28:
  while (1)
  {
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v54 >= v47)
    {

      return v55;
    }

    v46 = *(v43 + 8 * v54);
    ++v48;
    if (v46)
    {
      v48 = v54;
      goto LABEL_26;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_20D0B2780(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20D5641B8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CB8);
  v2[8] = swift_task_alloc();
  v4 = sub_20D5644A8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_20D563E88();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_20D563818();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_20D567C18();
  v2[19] = sub_20D567C08();
  v8 = sub_20D567BA8();
  v2[20] = v8;
  v2[21] = v7;

  return MEMORY[0x2822009F8](sub_20D0B2A04, v8, v7);
}

uint64_t sub_20D0B2A04()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[2], v3);
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x277D14E20])
  {
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[12];

    (*(v21 + 8))(v20, v22);
LABEL_17:

    v41 = v0[1];

    return v41(0);
  }

  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[3];
  (*(v0[13] + 96))(v7, v0[12]);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820CD0) + 48);
  (*(v6 + 32))(v4, v7, v5);
  v10 = *(v6 + 8);
  v0[22] = v10;
  v0[23] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7 + v9, v5);
  sub_20D563F48();
  v11 = sub_20D563F18();
  __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v12 = sub_20D565B78();
  v13 = [v12 uniqueIdentifier];

  sub_20D5637E8();
  v14 = sub_20D563EE8();

  v15 = v0[17];
  if (*(v14 + 16))
  {
    v16 = sub_20CEED7C0(v0[17]);
    v15 = v0[17];
    v17 = v0[15];
    if (v18)
    {
      (*(v0[5] + 16))(v0[7], *(v14 + 56) + *(v0[5] + 72) * v16, v0[4]);
      v10(v15, v17);

      v19 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v0[15];
  }

  v10(v15, v17);
  v19 = 1;
LABEL_8:
  v23 = v0[7];
  v24 = v0[4];
  v25 = v0[5];
  (*(v25 + 56))(v23, v19, 1, v24);
  if ((*(v25 + 48))(v23, 1, v24))
  {
    v26 = v0[9];
    v27 = v0[10];
    v29 = v0[7];
    v28 = v0[8];
    v10(v0[18], v0[15]);

    sub_20CEF928C(v29, &qword_27C81E180);
    (*(v27 + 56))(v28, 1, 1, v26);
LABEL_16:
    sub_20CEF928C(v0[8], &qword_27C820CB8);
    goto LABEL_17;
  }

  v30 = v0[6];
  v31 = v0[7];
  v32 = v0[4];
  v33 = v0[5];
  (*(v33 + 16))(v30, v31, v32);
  sub_20CEF928C(v31, &qword_27C81E180);
  v34 = sub_20D564178();
  (*(v33 + 8))(v30, v32);
  if (*(v34 + 16) && (v35 = sub_20CEED7C0(v0[18]), (v36 & 1) != 0))
  {
    (*(v0[10] + 16))(v0[8], *(v34 + 56) + *(v0[10] + 72) * v35, v0[9]);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v0[9];
  v39 = v0[10];
  v40 = v0[8];

  (*(v39 + 56))(v40, v37, 1, v38);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    v10(v0[18], v0[15]);

    goto LABEL_16;
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v43 = swift_task_alloc();
  v0[24] = v43;
  *v43 = v0;
  v43[1] = sub_20D0B2F38;

  return MEMORY[0x28216FAE8]();
}

uint64_t sub_20D0B2F38(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_20D0B3060, v4, v3);
}

uint64_t sub_20D0B3060()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v7 = v0[25];

  v8 = v0[1];

  return v8(v7);
}

void sub_20D0B315C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v38 = a3;
  v37 = a1;
  v36 = sub_20D563818();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedDispatcher];
  v10 = [v9 home];

  v40 = v10;
  if (!v10)
  {
    return;
  }

  v41 = MEMORY[0x277D84F90];
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = (v6 + 8);
  v35 = v6 + 16;
  sub_20D5663C8();
  v16 = 0;
  v32 = a2;
  v33 = v6;
  if (v14)
  {
    while (1)
    {
LABEL_9:
      (*(v6 + 16))(v8, *(a2 + 48) + *(v6 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v36);
      sub_20D563F48();
      v18 = sub_20D563F18();
      v19 = sub_20D5637C8();
      v20 = [v18 serviceFor_];

      if (v20)
      {
        v21 = [v20 hf_lightProfiles];
        sub_20CECF940(0, &qword_27C81D4A0);
        sub_20CEF7F74(&qword_27C81D4A8, &qword_27C81D4A0);
        v4 = sub_20D567D08();
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
        if (MEMORY[0x277D84F90] >> 62)
        {
          v23 = sub_20D568768();
          v6 = v33;
          if (v23)
          {
            sub_20CEF8EE4(v22);
            v4 = v24;
          }

          else
          {
            v4 = MEMORY[0x277D84FA0];
          }

          goto LABEL_14;
        }

        v4 = MEMORY[0x277D84FA0];
      }

      v6 = v33;
LABEL_14:
      a2 = v32;
      v14 &= v14 - 1;
      (*v34)(v8, v36);
      sub_20CF6C2A8(v4);
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  v4 = v41;
  if (!(v41 >> 62))
  {
    v25 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_21;
    }

LABEL_29:

    return;
  }

LABEL_28:
  v25 = sub_20D568768();
  if (!v25)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v25 >= 1)
  {
    v26 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x20F31DD20](v26, v4);
      }

      else
      {
        v27 = *(v4 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v29 = objc_allocWithZone(MEMORY[0x277D14880]);
      v30 = [v29 initWithHome_];
      [v30 setLightProfile_];
      [v30 setNaturalLightEnabled_];
      sub_20D565B68();
    }

    while (v25 != v26);
    goto LABEL_29;
  }

  __break(1u);
}

uint64_t ActionSetDeviceDataModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC6HomeUI24ActionSetDeviceDataModel_id;
  v2 = sub_20D563818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ActionSetDeviceDataModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC6HomeUI24ActionSetDeviceDataModel_id;
  v2 = sub_20D563818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_20D0B3660@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionSetDeviceDataModel();
  result = sub_20D566628();
  *a1 = result;
  return result;
}

uint64_t sub_20D0B36D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CEF5FFC;

  return sub_20D0A78D0(a1, a2);
}

uint64_t sub_20D0B3794@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6HomeUI24ActionSetDeviceDataModel_id;
  v5 = sub_20D563818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20D0B3810(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF934C;

  return sub_20D0ACD98(a1);
}

id sub_20D0B38A8(void *a1)
{
  sub_20CECF940(0, &qword_27C81AEC0);
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v17 = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
  sub_20D5684F8();
  sub_20CEF928C(&v16, &qword_27C820D98);
  if (v15)
  {
    sub_20CEC80B0(&v14, &v16);
  }

  else
  {
    v5 = a1[3];
    v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
    v17 = v5;
    v7 = __swift_allocate_boxed_opaque_existential_1(&v16);
    (*(*(v5 - 8) + 16))(v7, v6, v5);
  }

  sub_20CED43FC(&v16, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  if (swift_dynamicCast())
  {
    sub_20CED43FC(&v16, v12);
    swift_dynamicCast();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_10:
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v16);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    sub_20CED43FC(&v16, v12);
    swift_dynamicCast();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    sub_20CED43FC(&v16, v12);
    swift_dynamicCast();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    goto LABEL_10;
  }

  sub_20CEC80B0(&v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820D90);
  if (swift_dynamicCast())
  {
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v9;
}

id sub_20D0B3BD0(void *a1, void *a2)
{
  v5 = [v2 initWithHome_];
  [v5 setCharacteristic_];

  return v5;
}

uint64_t ActionSetDeviceDataModel.fetchAdditionalSettings(for:)()
{
  sub_20D567C18();
  *(v0 + 16) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0B3D08, v2, v1);
}

uint64_t sub_20D0B3D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for ActionSetDeviceDataModel()
{
  result = qword_27C820D80;
  if (!qword_27C820D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D0B3DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0B3E78()
{
  result = sub_20D563818();
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

uint64_t dispatch thunk of ActionSetDeviceDataModel.set(control:for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CEF5FFC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ActionSetDeviceDataModel.perform(writeSpec:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CEF934C;

  return v6(a1);
}

id NoInternetOnPhoneBannerItem.__allocating_init(home:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHome_];

  return v3;
}

id NoInternetOnPhoneBannerItem.init(home:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NoInternetOnPhoneBannerItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithHome_, a1);

  return v3;
}

id NoInternetOnPhoneBannerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoInternetOnPhoneBannerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20D0B4420()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D14858]) init];
  v2 = [v0 home];
  v3 = [v2 hf_hasResident];

  if (v3)
  {
    v4 = *MEMORY[0x277D13F60];
    v5 = sub_20D5677F8();
    v6 = HULocalizedString(v5);

    if (!v6)
    {
      sub_20D567838();
      v6 = sub_20D5677F8();
    }

    [v1 setObject:v6 forKeyedSubscript:v4];

    v7 = *MEMORY[0x277D13E20];
    v8 = sub_20D5677F8();
    v9 = HULocalizedString(v8);

    sub_20D567838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20D5BC410;
    v11 = [objc_opt_self() networkSSID];
    v12 = sub_20D567838();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_20CED4498();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_20D567848();

    v15 = sub_20D5677F8();

    [v1 setObject:v15 forKeyedSubscript:v7];

    v16 = objc_opt_self();
    v17 = [v16 configurationWithScale_];
    v18 = [v16 configurationPreferringMulticolor];
    v19 = [v17 configurationByApplyingConfiguration_];

    v20 = objc_allocWithZone(MEMORY[0x277D14B78]);
    v21 = sub_20D5677F8();
    v22 = [v20 initWithSystemImageName:v21 configuration:v19];

    v23 = *MEMORY[0x277D13E88];
    v24 = [objc_allocWithZone(MEMORY[0x277D14728]) initWithSymbolIconConfiguration_];
    [v1 setObject:v24 forKeyedSubscript:v23];

    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    [v1 setObject:v25 forKeyedSubscript:@"bannerItemCategory"];

    v26 = *MEMORY[0x277D13FB8];
    v27 = sub_20D567B98();
    [v1 setObject:v27 forKeyedSubscript:v26];

    [v1 setObject:0 forKeyedSubscript:*MEMORY[0x277D13DE8]];
  }

  else
  {
    v28 = *MEMORY[0x277D13FB8];
    v22 = sub_20D567B98();
    [v1 setObject:v22 forKeyedSubscript:v28];
  }

  v29 = [objc_opt_self() futureWithResult_];
  return v29;
}

uint64_t sub_20D0B4974(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D0B49CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id UtilityOnboardingLocationSelection.init(home:context:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate] = 0;
  v6 = &v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationAddress];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_connectAccountButton] = 0;
  *&v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_home] = a1;
  *&v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_onboardingContext] = a2;
  swift_getKeyPath();
  v37[0] = a2;
  sub_20D0B8DF4(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v8 = a1;
  v9 = a2;
  sub_20D563908();

  v10 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__serviceLocations;
  swift_beginAccess();
  v36 = v9;
  v11 = *&v9[v10];
  *&v3[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocations] = v11;
  v12 = type metadata accessor for AddressSelectionItemManager();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC6HomeUI27AddressSelectionItemManager_serviceLocations] = v11;
  v40.receiver = v13;
  v40.super_class = v12;
  swift_bridgeObjectRetain_n();
  v14 = objc_msgSendSuper2(&v40, sel_initWithDelegate_sourceItem_, 0, 0);
  v15 = type metadata accessor for AddressSelectionTableViewController();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC6HomeUI35AddressSelectionTableViewController_delegate];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v39.receiver = v16;
  v39.super_class = v15;
  v35 = v14;
  v18 = objc_msgSendSuper2(&v39, sel_initWithItemManager_tableViewStyle_, v14, 2);
  v19 = sub_20D5677F8();
  v20 = HULocalizedString(v19);

  if (!v20)
  {
    sub_20D567838();
    v20 = sub_20D5677F8();
  }

  v21 = sub_20D5677F8();
  v22 = HULocalizedString(v21);

  sub_20D567838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20D5BC410;
  v24 = [v8 name];
  v25 = v8;
  v26 = sub_20D567838();
  v28 = v27;

  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_20CED4498();
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  sub_20D567808();

  v29 = sub_20D5677F8();

  v30 = type metadata accessor for UtilityOnboardingLocationSelection();
  v38.receiver = v3;
  v38.super_class = v30;
  v31 = objc_msgSendSuper2(&v38, sel_initWithTitle_detailText_icon_contentLayout_itemTableViewController_, v20, v29, 0, 3, v18);

  v37[3] = v30;
  v37[4] = &off_2823D7F60;
  v32 = v31;

  v37[0] = v32;
  v33 = OBJC_IVAR____TtC6HomeUI35AddressSelectionTableViewController_delegate;
  swift_beginAccess();
  sub_20D0B4F1C(v37, v18 + v33);
  swift_endAccess();

  return v32;
}

uint64_t sub_20D0B4F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20D0B4FD0()
{
  v1 = v0;
  v2 = type metadata accessor for UtilityOnboardingLocationSelection();
  v34.receiver = v0;
  v34.super_class = v2;
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v3 = [v0 headerView];
  v4 = [v3 subviews];

  if (!v4)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v4 = sub_20D567A58();
  }

  v5 = objc_opt_self();
  v6 = sub_20D567738();

  [v5 setAccessibilityIDForViews:v4 withIDDictionary:v6];

  v7 = *&v0[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_onboardingContext];
  v8 = [v1 headerView];
  sub_20CEE70AC(v8);

  v9 = [v1 navigationItem];
  [v9 setHidesBackButton_];

  v10 = sub_20D5677F8();
  v11 = HULocalizedString(v10);

  sub_20D567838();
  v33 = v2;
  v32[0] = v1;
  v12 = v1;
  v13 = sub_20D5677F8();

  v14 = v33;
  if (v33)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_20D568BD8();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v22 = [v21 initWithTitle:v13 style:2 target:v20 action:{sel_cancelButtonTapped_, v32[0]}];

  swift_unknownObjectRelease();
  v23 = [v12 navigationItem];
  [v23 setLeftBarButtonItem_];

  v24 = [objc_opt_self() boldButton];
  v25 = *&v12[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_connectAccountButton];
  *&v12[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_connectAccountButton] = v24;
  v26 = v24;

  if (v26)
  {
    [v26 addTarget:v12 action:sel_goToConnectedScreen_ forControlEvents:64];
    v27 = sub_20D5677F8();
    v28 = HULocalizedString(v27);

    if (!v28)
    {
      sub_20D567838();
      v28 = sub_20D5677F8();
    }

    [v26 setTitle:v28 forState:0];

    v29 = v26;
    v30 = sub_20D5677F8();
    [v29 setAccessibilityIdentifier_];

    v31 = [v12 buttonTray];
    [v31 addButton_];
  }
}

uint64_t sub_20D0B55C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v9 = qword_27C838280;
  sub_20D565998();
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5D92F0, &v26);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s Connect Account button selected", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v14 = *&v1[OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_connectAccountButton];
  if (v14)
  {
    [v14 setEnabled_];
  }

  v15 = [v1 navigationItem];
  [v15 setHidesBackButton_];

  v16 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v17 = [v1 navigationItem];
  v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v17 setRightBarButtonItem_];

  [v16 startAnimating];
  v19 = sub_20D567C58();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_20D567C18();
  v20 = v1;
  v21 = sub_20D567C08();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  sub_20CF18960(0, 0, v4, &unk_20D5C8578, v22);
}

uint64_t sub_20D0B5974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_20D565988();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = sub_20D567C18();
  v4[28] = sub_20D567C08();
  v7 = sub_20D567BA8();
  v4[29] = v7;
  v4[30] = v6;

  return MEMORY[0x2822009F8](sub_20D0B5A84, v7, v6);
}

uint64_t sub_20D0B5A84()
{
  v1 = v0[21];
  v2 = MEMORY[0x277D84F98];
  v0[18] = 13;
  v0[19] = v2;
  v3 = v1 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationID;
  v4 = *(v1 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationID);
  v0[31] = v4;
  v5 = *(v3 + 8);
  v0[32] = v5;
  if (v5 && (v6 = (v1 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationAddress), v7 = *(v1 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationAddress + 8), (v0[33] = v7) != 0))
  {
    v8 = *v6;
    v9 = *(v1 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_onboardingContext);
    v0[34] = v9;
    sub_20D5663C8();
    sub_20D5663C8();
    v9;
    v10 = swift_task_alloc();
    v0[35] = v10;
    *v10 = v0;
    v10[1] = sub_20D0B5BF4;

    return sub_20CEE4BDC(v4, v5, v8, v7);
  }

  else
  {
    v0[37] = 0;

    return MEMORY[0x2822009F8](sub_20D0B648C, 0, 0);
  }
}

uint64_t sub_20D0B5BF4(char a1)
{
  v4 = *v2;
  *(v4 + 288) = v1;

  if (v1)
  {

    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_20D0B6654;
  }

  else
  {
    *(v4 + 312) = a1 & 1;
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_20D0B5D70;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D0B5D70()
{
  v63 = v0;
  v1 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
  if (*(v0 + 312) == 1)
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v2 = qword_27C838280;
    sub_20D565998();
    sub_20D5663C8();
    v3 = sub_20D565968();
    v4 = sub_20D567EC8();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 256);
    if (v5)
    {
      v7 = *(v0 + 248);
      v8 = *(v0 + 208);
      v9 = *(v0 + 176);
      v10 = *(v0 + 184);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5D92F0, v62);
      *(v11 + 12) = 2080;
      v13 = sub_20CEE913C(v7, v6, v62);

      *(v11 + 14) = v13;
      _os_log_impl(&dword_20CEB6000, v3, v4, "%s Created subscription. SERVICELOCATION_ID: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v12, -1, -1);
      MEMORY[0x20F31FC70](v11, -1, -1);

      (*(v10 + 8))(v8, v9);
    }

    else
    {
      v26 = *(v0 + 208);
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);

      (*(v28 + 8))(v26, v27);
    }

    v29 = sub_20D564B68();
    *(v0 + 40) = v29;
    *(v0 + 48) = sub_20D0B8DF4(&qword_27C81BEB0, MEMORY[0x277D073A0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v29);
    LOBYTE(v29) = sub_20D563968();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v31 = 17;
    if (v29)
    {
      v31 = 10;
    }

    *(v0 + 144) = v31;
    v32 = *(v0 + 288);
  }

  else
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v14 = &iCloudQuotaLibraryCore_frameworkLibrary;
    v15 = qword_27C838280;
    sub_20D565998();
    sub_20D5663C8();
    v16 = sub_20D565968();
    v17 = sub_20D567EA8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 256);
    if (v18)
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 184);
      v60 = *(v0 + 176);
      v61 = *(v0 + 200);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v62[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5D92F0, v62);
      *(v22 + 12) = 2080;
      v24 = sub_20CEE913C(v20, v19, v62);

      *(v22 + 14) = v24;
      v1 = &OBJC_IVAR___HUQuickControlPresentationCoordinator__touchGestureRecognizer;
      _os_log_impl(&dword_20CEB6000, v16, v17, "%s Creating subscription failed. SERVICELOCATION_ID: %s", v22, 0x16u);
      swift_arrayDestroy();
      v25 = v23;
      v14 = &iCloudQuotaLibraryCore_frameworkLibrary;
      MEMORY[0x20F31FC70](v25, -1, -1);
      MEMORY[0x20F31FC70](v22, -1, -1);

      (*(v21 + 8))(v61, v60);
    }

    else
    {
      v33 = *(v0 + 200);
      v34 = *(v0 + 176);
      v35 = *(v0 + 184);

      (*(v35 + 8))(v33, v34);
    }

    sub_20CEF5CA0();
    v36 = swift_allocError();
    *v37 = 15;
    swift_willThrow();
    if (*(v1 + 91) != -1)
    {
      swift_once();
    }

    v38 = v14[80];
    sub_20D565998();
    v39 = v36;
    v40 = sub_20D565968();
    v41 = sub_20D567EA8();

    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    v45 = *(v0 + 176);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v46 = 136315394;
      *(v46 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5D92F0, v62);
      *(v46 + 12) = 2112;
      v49 = v36;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v50;
      *v47 = v50;
      _os_log_impl(&dword_20CEB6000, v40, v41, "%s Error creating subscription: %@", v46, 0x16u);
      sub_20CEF928C(v47, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F31FC70](v48, -1, -1);
      MEMORY[0x20F31FC70](v46, -1, -1);
    }

    (*(v44 + 8))(v43, v45);
    v51 = sub_20D567838();
    v53 = v52;
    swift_getErrorValue();
    v54 = *(v0 + 120);
    v55 = *(v0 + 128);
    *(v0 + 80) = v55;
    v56 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v55 - 8) + 16))(v56, v54, v55);
    sub_20CEC80B0((v0 + 56), (v0 + 88));
    v57 = *(v0 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v57;
    sub_20CEEF74C((v0 + 88), v51, v53, isUniquelyReferenced_nonNull_native);

    v32 = 0;
    *(v0 + 152) = v62[0];
  }

  *(v0 + 296) = v32;

  return MEMORY[0x2822009F8](sub_20D0B648C, 0, 0);
}

uint64_t sub_20D0B648C()
{
  *(v0 + 304) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0B6518, v2, v1);
}

void sub_20D0B6518()
{
  v1 = v0[37];
  v2 = v0[21];

  sub_20D0B6924((v0 + 19), v0 + 18, v2);
  if (v1)
  {
  }

  else
  {
    v3 = v0[29];
    v4 = v0[30];

    MEMORY[0x2822009F8](sub_20D0B65C4, v3, v4);
  }
}

uint64_t sub_20D0B65C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0B6654()
{
  v25 = v0;
  v1 = *(v0 + 288);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C838280;
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 176);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000017, 0x800000020D5D92F0, &v24);
    *(v10 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Error creating subscription: %@", v10, 0x16u);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v15 = sub_20D567838();
  v17 = v16;
  swift_getErrorValue();
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  *(v0 + 80) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v18, v19);
  sub_20CEC80B0((v0 + 56), (v0 + 88));
  v21 = *(v0 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v21;
  sub_20CEEF74C((v0 + 88), v15, v17, isUniquelyReferenced_nonNull_native);

  *(v0 + 152) = v24;
  *(v0 + 296) = 0;

  return MEMORY[0x2822009F8](sub_20D0B648C, 0, 0);
}

uint64_t sub_20D0B6924(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_20D567838();
  v6 = *a2;
  v13[3] = MEMORY[0x277D83E88];
  v13[0] = v6;
  sub_20CED9A44(v13, v5, v7);
  v8 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  result = swift_beginAccess();
  v10 = *(a3 + v8);
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = sub_20D5663C8();
    sub_20CF27E80(v11);

    v12 = sub_20D567738();

    [v10 viewController:a3 didFinishWithConfigurationResults:v12];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D0B6A60()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v5 = qword_27C838280;
  sub_20D565998();
  v6 = v0;
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D22B0, v20);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%@:%s Tapped CANCEL", v9, 0x16u);
    sub_20CEF928C(v10, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  result = swift_beginAccess();
  v15 = *&v6[v13];
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v19[0] = sub_20D567838();
    v19[1] = v17;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 16;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v18 = sub_20D567738();

    [v15 viewController:v6 didFinishWithConfigurationResults:v18];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D0B6DCC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

id UtilityOnboardingLocationSelection.__allocating_init(title:detailText:icon:contentLayout:itemTableViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v13 = sub_20D5677F8();

  if (a4)
  {
    v14 = sub_20D5677F8();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(v8) initWithTitle:v13 detailText:v14 icon:a5 contentLayout:a6 itemTableViewController:a7];

  return v15;
}

void sub_20D0B729C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20D565988();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D5638C8();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v14 = [a1 indexPathsForVisibleRows];
  if (v14)
  {
    v54 = v8;
    v15 = v14;
    v16 = sub_20D567A78();

    v17 = *(v16 + 16);
    if (v17)
    {
      v50 = a2;
      v51 = v3;
      v18 = v10 + 16;
      v55 = *(v10 + 16);
      v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v49 = v16;
      v20 = v16 + v19;
      v21 = *(v10 + 72);
      v22 = (v18 - 8);
      v55(v13, v16 + v19, v9);
      while (1)
      {
        v23 = sub_20D563868();
        (*v22)(v13, v9);
        v24 = [v56 cellForRowAtIndexPath_];

        if (v24)
        {
          [v24 setAccessoryType_];
        }

        v20 += v21;
        if (!--v17)
        {
          break;
        }

        v55(v13, v20, v9);
      }

      v3 = v51;
      v8 = v54;
    }

    else
    {

      v8 = v54;
    }
  }

  v25 = sub_20D563868();
  v26 = [v56 cellForRowAtIndexPath_];

  if (v26)
  {
    [v26 setAccessoryType_];
  }

  v27 = [v3 itemManager];
  v28 = sub_20D563868();
  v29 = [v27 displayedItemAtIndexPath_];

  if (v29)
  {
    v30 = [v29 latestResults];
    if (v30)
    {
      v31 = v30;
      v32 = sub_20D567758();

      v33 = sub_20D567838();
      if (*(v32 + 16))
      {
        v35 = sub_20CEED668(v33, v34);
        v37 = v36;

        if (v37)
        {
          sub_20CED43FC(*(v32 + 56) + 32 * v35, v60);

          if (qword_27C81A2D8 != -1)
          {
            swift_once();
          }

          v38 = qword_27C838280;
          sub_20D565998();
          sub_20CED43FC(v60, v59);
          v39 = sub_20D565968();
          v40 = sub_20D567EC8();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = v8;
            v43 = swift_slowAlloc();
            v58 = v43;
            *v41 = 136315394;
            *(v41 + 4) = sub_20CEE913C(0xD00000000000001CLL, 0x800000020D5D92A0, &v58);
            *(v41 + 12) = 2080;
            sub_20CED43FC(v59, v57);
            v44 = sub_20D567858();
            v46 = v45;
            __swift_destroy_boxed_opaque_existential_1(v59);
            v47 = sub_20CEE913C(v44, v46, &v58);

            *(v41 + 14) = v47;
            _os_log_impl(&dword_20CEB6000, v39, v40, "%s selected item %s", v41, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F31FC70](v43, -1, -1);
            MEMORY[0x20F31FC70](v41, -1, -1);

            (*(v52 + 8))(v42, v53);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v59);
            (*(v52 + 8))(v8, v53);
          }

          __swift_destroy_boxed_opaque_existential_1(v60);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v48 = OBJC_IVAR____TtC6HomeUI35AddressSelectionTableViewController_delegate;
    swift_beginAccess();
    sub_20D0B8CD0(v3 + v48, v60);
    if (v61)
    {
      sub_20CECF7A0(v60, v59);
      sub_20CEF928C(v60, &unk_27C820E20);
      __swift_project_boxed_opaque_existential_1(v59, v59[3]);
      sub_20D0B7C44(v29);

      __swift_destroy_boxed_opaque_existential_1(v59);
    }

    else
    {

      sub_20CEF928C(v60, &unk_27C820E20);
    }
  }
}

id sub_20D0B7AF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20D0B7C44(void *a1)
{
  v2 = v1;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27C838280;
  sub_20D565998();
  v9 = a1;
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000027, 0x800000020D5D92C0, v40);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s didSelectItem: %@", v12, 0x16u);
    sub_20CEF928C(v13, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = [v9 latestResults];
  if (result)
  {
    v17 = result;
    v18 = sub_20D567758();

    v19 = sub_20D567838();
    if (*(v18 + 16))
    {
      v21 = sub_20CEED668(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
      }

      sub_20CED43FC(*(v18 + 56) + 32 * v21, v40);

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v25 = v38;
      v24 = v39;
      v26 = [v9 latestResults];
      if (!v26)
      {
      }

      v27 = v26;
      v28 = sub_20D567758();

      v29 = sub_20D567838();
      if (*(v28 + 16))
      {
        v31 = sub_20CEED668(v29, v30);
        v33 = v32;

        if (v33)
        {
          sub_20CED43FC(*(v28 + 56) + 32 * v31, v40);

          if (swift_dynamicCast())
          {
            v34 = v38;
            v35 = v39;
            v36 = (v2 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationID);
            *v36 = v25;
            v36[1] = v24;

            v37 = (v2 + OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_serviceLocationAddress);
            *v37 = v34;
            v37[1] = v35;
          }
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_20D0B804C(void *a1)
{
  v2 = sub_20D566258();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  MEMORY[0x20F31D3F0](v4);
  MEMORY[0x20F31D7A0](v11, *MEMORY[0x277D13F60]);
  if (v12)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_20CEF928C(v11, &qword_27C81BF00);
  }

  sub_20D566248();
  v12 = v2;
  v13 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  MEMORY[0x20F31D3E0](v11);
  v8 = [objc_opt_self() tertiarySystemFillColor];
  [a1 setBackgroundColor_];

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20D0B821C()
{
  v112 = sub_20D5633F8();
  v1 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v3 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = MEMORY[0x277D84F90];
  v117[4] = MEMORY[0x277D84FA0];
  v4 = *(v0 + OBJC_IVAR____TtC6HomeUI27AddressSelectionItemManager_serviceLocations);
  v5 = *(v4 + 16);
  v102 = v4;
  sub_20D5663C8();
  v97 = v5;
  if (!v5)
  {
LABEL_101:

    v86 = objc_allocWithZone(MEMORY[0x277D14B40]);
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF99B4();
    v87 = sub_20D567CD8();

    v88 = [v86 initWithItems_];

    v6 = v88;
    MEMORY[0x20F31CEE0]();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_107;
    }

    goto LABEL_102;
  }

  v6 = 0;
  v98 = v102 + 32;
  v7 = (v1 + 8);
  v96 = *MEMORY[0x277D13F60];
  v95 = *MEMORY[0x277D14130];
  v93 = "serviceLocationFetch()";
  v108 = v116;
  v94 = xmmword_20D5BC4B0;
  while (v6 < *(v102 + 16))
  {
    v11 = *(v98 + 8 * v6);
    if (!*(v11 + 16))
    {
      goto LABEL_101;
    }

    sub_20D5663C8();
    v12 = sub_20CEED668(0x73736572646461, 0xE700000000000000);
    if ((v13 & 1) == 0 || (sub_20CED43FC(*(v11 + 56) + 32 * v12, v117), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_101;
    }

    v14 = v113;
    if (v113[2] && (v15 = sub_20CEED668(0x4C73736572646461, 0xEC00000031656E69), (v16 & 1) != 0))
    {
      sub_20CED43FC(v14[7] + 32 * v15, v117);
      v17 = swift_dynamicCast();
      if (v17)
      {
        v18 = v113;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v114;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v20 = v14[2];
    v110 = v11;
    if (v20 && (v21 = sub_20CEED668(0x4C73736572646461, 0xEC00000032656E69), (v22 & 1) != 0))
    {
      sub_20CED43FC(v14[7] + 32 * v21, v117);
      v23 = swift_dynamicCast();
      v24 = v113;
      if (!v23)
      {
        v24 = 0;
      }

      v111 = v24;
      if (v23)
      {
        v25 = v114;
      }

      else
      {
        v25 = 0;
      }

      if (!v14[2])
      {
LABEL_36:
        v107 = 0;
        v30 = 0;
        if (!v14[2])
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v111 = 0;
      v25 = 0;
      if (!v14[2])
      {
        goto LABEL_36;
      }
    }

    v26 = sub_20CEED668(0x4C73736572646461, 0xEC00000033656E69);
    if ((v27 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_20CED43FC(v14[7] + 32 * v26, v117);
    v28 = swift_dynamicCast();
    v29 = v113;
    if (!v28)
    {
      v29 = 0;
    }

    v107 = v29;
    if (v28)
    {
      v30 = v114;
    }

    else
    {
      v30 = 0;
    }

    if (!v14[2])
    {
LABEL_45:
      v101 = 0;
      v105 = 0;
      if (!v14[2])
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

LABEL_37:
    v31 = sub_20CEED668(2037672291, 0xE400000000000000);
    if ((v32 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_20CED43FC(v14[7] + 32 * v31, v117);
    v33 = swift_dynamicCast();
    v34 = v113;
    if (!v33)
    {
      v34 = 0;
    }

    v101 = v34;
    if (v33)
    {
      v35 = v114;
    }

    else
    {
      v35 = 0;
    }

    v105 = v35;
    if (!v14[2])
    {
LABEL_54:
      v100 = 0;
      v104 = 0;
      if (!v14[2])
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    }

LABEL_46:
    v36 = sub_20CEED668(0x6574617473, 0xE500000000000000);
    if ((v37 & 1) == 0)
    {
      goto LABEL_54;
    }

    sub_20CED43FC(v14[7] + 32 * v36, v117);
    v38 = swift_dynamicCast();
    v39 = v113;
    if (!v38)
    {
      v39 = 0;
    }

    v100 = v39;
    if (v38)
    {
      v40 = v114;
    }

    else
    {
      v40 = 0;
    }

    v104 = v40;
    if (!v14[2])
    {
LABEL_62:

      v99 = 0;
      v103 = 0;
      goto LABEL_63;
    }

LABEL_55:
    v41 = sub_20CEED668(0x6F436C6174736F70, 0xEA00000000006564);
    if ((v42 & 1) == 0)
    {
      goto LABEL_62;
    }

    sub_20CED43FC(v14[7] + 32 * v41, v117);

    v43 = swift_dynamicCast();
    v44 = v113;
    if (!v43)
    {
      v44 = 0;
    }

    v99 = v44;
    if (v43)
    {
      v45 = v114;
    }

    else
    {
      v45 = 0;
    }

    v103 = v45;
LABEL_63:
    v106 = (v6 + 1);
    v109 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
    v46 = 0;
    if (v19)
    {
      v47 = v18;
    }

    else
    {
      v47 = 0;
    }

    if (v19)
    {
      v48 = v19;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v115 = v47;
    v116[0] = v48;
    v49 = v111;
    if (v25)
    {
      v50 = v25;
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
    }

    v116[1] = v49;
    v116[2] = v50;
    v51 = v107;
    if (v30)
    {
      v52 = v30;
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
    }

    v116[3] = v51;
    v116[4] = v52;
    v53 = MEMORY[0x277D84F90];
    do
    {
      v111 = v53;
      v54 = 3;
      if (v46 > 3)
      {
        v54 = v46;
      }

      v6 = -v54;
      v55 = &v108[2 * v46++];
      while (1)
      {
        if (v6 + v46 == 1)
        {
          __break(1u);
          goto LABEL_106;
        }

        v57 = *(v55 - 1);
        v56 = *v55;
        v117[0] = v57;
        v117[1] = v56;
        sub_20D5663C8();
        sub_20D5633B8();
        sub_20CEF44D8();
        v58 = sub_20D5685A8();
        v60 = v59;
        (*v7)(v3, v112);

        v61 = HIBYTE(v60) & 0xF;
        if ((v60 & 0x2000000000000000) == 0)
        {
          v61 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {
          break;
        }

        ++v46;
        v55 += 2;
        if (v46 == 4)
        {
          v53 = v111;
          goto LABEL_90;
        }
      }

      v53 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CEF0AC8(0, v53[2] + 1, 1);
        v53 = v113;
      }

      v64 = v53[2];
      v63 = v53[3];
      if (v64 >= v63 >> 1)
      {
        sub_20CEF0AC8((v63 > 1), v64 + 1, 1);
        v53 = v113;
      }

      v53[2] = v64 + 1;
      v65 = &v53[2 * v64];
      v65[4] = v57;
      v65[5] = v56;
    }

    while (v46 != 3);
LABEL_90:
    swift_arrayDestroy();
    v117[0] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
    sub_20CF76364();
    sub_20D5677D8();

    v66 = sub_20D5677F8();

    v67 = v109;
    [v109 setStreet_];

    if (v105)
    {
      v68 = sub_20D5677F8();
      [v67 setCity_];
    }

    v69 = v103;
    if (v104)
    {
      v70 = sub_20D5677F8();
      [v67 setState_];
    }

    if (v69)
    {
      v71 = sub_20D5677F8();
      [v67 setPostalCode_];
    }

    v72 = [objc_opt_self() stringFromPostalAddress:v67 style:0];
    v73 = sub_20D567838();
    v75 = v74;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA90);
    inited = swift_initStackObject();
    *(inited + 16) = v94;
    v77 = v96;
    *(inited + 32) = v96;
    *(inited + 40) = v73;
    *(inited + 48) = v75;
    v78 = v95;
    *(inited + 64) = MEMORY[0x277D837D0];
    *(inited + 72) = v78;
    *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF00);
    v79 = swift_allocObject();
    v80 = v79;
    *(inited + 80) = v79;
    v81 = v110;
    v6 = v106;
    if (*(v110 + 16))
    {
      v82 = v77;
      v83 = v78;
      v84 = sub_20CEED668(0xD000000000000011, v93 | 0x8000000000000000);
      if (v85)
      {
        sub_20CED43FC(*(v81 + 56) + 32 * v84, v80 + 16);
      }

      else
      {
        *(v80 + 16) = 0u;
        *(v80 + 32) = 0u;
      }
    }

    else
    {
      *(v79 + 16) = 0u;
      *(v79 + 32) = 0u;
      v8 = v77;
      v9 = v78;
    }

    sub_20CECF940(0, &qword_27C820E40);
    sub_20CEF452C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C2C8);
    swift_arrayDestroy();
    v10 = sub_20D567E48();
    sub_20CEEA1BC(v117, v10);

    if (v6 == v97)
    {
      goto LABEL_101;
    }
  }

LABEL_106:
  __break(1u);
LABEL_107:
  sub_20D567AB8();
LABEL_102:
  sub_20D567B08();
  v89 = v118;
  if (v118 >> 62)
  {
    sub_20D5663C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    v90 = sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    sub_20D568C08();

    v90 = v89;
  }

  return v90;
}

uint64_t sub_20D0B8CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0B8D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20D0B5974(a1, v4, v5, v6);
}

uint64_t sub_20D0B8DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0B8E3C(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;
  result = sub_20D5663C8();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          goto LABEL_30;
        }

        v4 = *(v1 + 8 * v9);
        ++v7;
        if (v4)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

LABEL_10:
    v10 = *(*(a1 + 48) + (__clz(__rbit64(v4)) | (v7 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v11 = swift_allocObject();
    if (v10)
    {
      *(v11 + 16) = xmmword_20D5BA040;
      v12 = (v11 + 32);
    }

    else
    {
      *(v11 + 16) = xmmword_20D5BECD0;
      *(v11 + 32) = sub_20D568568();
      *(v11 + 40) = sub_20D568568();
      v12 = (v11 + 48);
    }

    *v12 = sub_20D568568();
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_29;
    }

LABEL_15:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_20:
        sub_20D568768();
      }

LABEL_21:
      result = sub_20D568888();
      v8 = result;
      v17 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v4 &= v4 - 1;
    if (v13)
    {
      if ((*(v17 + 24) >> 1) - *(v17 + 16) < v13)
      {
        goto LABEL_32;
      }

      sub_20CECF940(0, &qword_28111FB20);
      swift_arrayInitWithCopy();

      if (v13 >= 1)
      {
        v18 = *(v17 + 16);
        v19 = __OFADD__(v18, v13);
        v20 = v18 + v13;
        if (v19)
        {
          goto LABEL_33;
        }

        *(v17 + 16) = v20;
      }
    }

    else
    {
    }
  }

  v21 = sub_20D568768();
  v16 = v21 + v13;
  if (!__OFADD__(v21, v13))
  {
    goto LABEL_15;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  return v8;
}

uint64_t ControlCenterModuleItemManager.applyAndReload(configuration:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v2[14] = swift_task_alloc();
  type metadata accessor for ControlCenterModuleConfiguration(0);
  v2[15] = swift_task_alloc();
  sub_20D567C18();
  v2[16] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v2[17] = v4;
  v2[18] = v3;

  return MEMORY[0x2822009F8](sub_20D0B91CC, v4, v3);
}

uint64_t sub_20D0B91CC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 88);
  v5 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_configuration;
  swift_beginAccess();
  sub_20D0C5DD4(v3 + v5, v2, type metadata accessor for ControlCenterModuleConfiguration);
  swift_beginAccess();
  sub_20D0B9BD8(v4, v3 + v5);
  swift_endAccess();
  sub_20D0C5DD4(v4, v1, type metadata accessor for ControlCenterModuleConfiguration.Content);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 112);

    sub_20D0C5D74(v7, type metadata accessor for ControlCenterModuleConfiguration.Content);
    sub_20D0C5D74(v6, type metadata accessor for ControlCenterModuleConfiguration);
LABEL_5:

    v10 = *(v0 + 8);

    return v10();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  sub_20D0C5D74(*(v0 + 112), type metadata accessor for ControlCenterModuleConfiguration.Content);
  if (_s6HomeUI32ControlCenterModuleConfigurationV2eeoiySbAC_ACtFZ_0(v8, v9))
  {
    sub_20D0C5D74(*(v0 + 120), type metadata accessor for ControlCenterModuleConfiguration);

    goto LABEL_5;
  }

  v12 = *(v0 + 96);
  v13 = OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_nonEmptyConfigurationFuture;
  if ([*(v12 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_nonEmptyConfigurationFuture) isFinished])
  {
    if ((_s6HomeUI32ControlCenterModuleConfigurationV7ContentO2eeoiySbAE_AEtFZ_0(*(v0 + 120), *(v0 + 88)) & 1) == 0)
    {
      [*(*(v0 + 96) + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider) setThawPredictionsForNextReload_];
    }

    v14 = ControlCenterModuleConfiguration.Content.isSameType(as:)(*(v0 + 88));
    v15 = *(v0 + 96);
    if (v14)
    {
      v16 = *(v15 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_recommendedItemProvider);
      if (v16)
      {
        v17 = v16;
        [v17 updateItemLimit_];

        v15 = *(v0 + 96);
      }

      v18 = *(v15 + OBJC_IVAR____TtC6HomeUI30ControlCenterModuleItemManager_customizedItemProvider);
      if (v18)
      {
        v19 = v18;
        v20 = sub_20D0B9DD0();
        v21 = &v19[qword_27C820498];
        swift_beginAccess();
        *v21 = v20;
        v21[8] = 0;
      }

      v22 = sub_20D5638E8();
      v23 = swift_task_alloc();
      *(v0 + 168) = v23;
      *v23 = v0;
      v24 = sub_20D0B97AC;
    }

    else
    {
      [*(v0 + 96) resetItemProvidersAndModules];
      v22 = sub_20D5638E8();
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v24 = sub_20D0B98D8;
    }
  }

  else
  {
    [*(v12 + v13) finishWithNoResult];
    v22 = sub_20D5638E8();
    v23 = swift_task_alloc();
    *(v0 + 152) = v23;
    *v23 = v0;
    v24 = sub_20D0B95F0;
  }

  v23[1] = v24;

  return MEMORY[0x28216DC20](v22);
}