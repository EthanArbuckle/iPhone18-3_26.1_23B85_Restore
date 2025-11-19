id DashboardContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFECCC8(void *a1, uint64_t a2)
{
  if ([*(a2 + OBJC_IVAR___HUDashboardContext_home) hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
  {
    return 1;
  }

  v4 = *(a2 + OBJC_IVAR___HUDashboardContext_type);
  v5 = *(a2 + OBJC_IVAR___HUDashboardContext_type + 8);
  if (*(a2 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    v6 = v5 != 1 && v4 == 0;
    if (v6 && ([a1 hf_effectiveIsFavorite] & 1) == 0 && (objc_msgSend(a1, sel_hf_effectiveShowInHomeDashboard) & 1) == 0)
    {
      return 1;
    }
  }

  else if (![a1 hf_isVisibleInHomeStatus])
  {
    return 1;
  }

  v7 = *(a2 + OBJC_IVAR___HUDashboardContext_room);
  if (!v7 || (v8 = v7, v9 = sub_20D568228(), v8, (v9 & 1) != 0))
  {
    if (v5 || (v10 = v4, v11 = sub_20D568198(), LODWORD(v10) = [v10 containsType_], sub_20CFEE3D0(v4, 0), v11, v10))
    {
      v12 = sub_20D5681A8();
      v13 = sub_20CFECE24(v12, a2);
      swift_unknownObjectRelease();
      return v13 & 1;
    }
  }

  return 1;
}

uint64_t sub_20CFECE24(uint64_t a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = [v3 hf_effectiveIsFavorite];
  }

  else
  {
    v4 = 2;
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = [v5 hf_effectiveShowInHomeDashboard];
  }

  else
  {
    v6 = 2;
  }

  if (*(a2 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    if (*(a2 + OBJC_IVAR___HUDashboardContext_type + 8) != 1)
    {
      v7 = *(a2 + OBJC_IVAR___HUDashboardContext_type) || v4 == 2;
      if (!v7 && (v4 & 1) == 0 && v6 != 2 && (v6 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8 && ![v8 hf_isVisibleInHomeStatus])
    {
      goto LABEL_38;
    }
  }

  v9 = *(a2 + OBJC_IVAR___HUDashboardContext_room);
  if (v9)
  {
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRetain();
      v12 = v9;
      v13 = [v11 hf_parentRoom];
      if (v13)
      {

        v14 = [v11 hf_parentRoom];
        if (!v14)
        {

          swift_unknownObjectRelease();
          goto LABEL_38;
        }

        v15 = v14;
        sub_20CECF940(0, &unk_27C81EFA0);
        v16 = sub_20D5683F8();

        swift_unknownObjectRelease();
        if ((v16 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v22 = [v25 accessory];
        if (v22)
        {
          v26 = v22;
          v27 = [v22 hf_isMediaAccessory];

          LOBYTE(v22) = v27 ^ 1;
        }
      }

      else
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          sub_20CFEC454(v22);
        }
      }

      return v22 & 1;
    }

    v24 = v23;
    if ([v23 hf_showAsAccessoryTile])
    {
      LOBYTE(v22) = [v24 hf_areAllServicesInGroups];
      return v22 & 1;
    }

LABEL_38:
    LOBYTE(v22) = 1;
    return v22 & 1;
  }

  v18 = [v17 accessory];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 hf_showAsAccessoryTile];

    if (v20)
    {
      v21 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
      swift_beginAccess();
      if (*(a2 + v21) != 1)
      {
        goto LABEL_38;
      }
    }
  }

  LOBYTE(v22) = 0;
  return v22 & 1;
}

uint64_t sub_20CFED15C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      sub_20CECF940(0, &qword_28111FB10);
      return sub_20D5683F8() & 1;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }

    return 1;
  }

  if (a4 != 1)
  {
    return 0;
  }

  v4 = sub_20D567838();
  v6 = v5;
  if (v4 == sub_20D567838() && v6 == v7)
  {

    return 1;
  }

  else
  {
    v9 = sub_20D568BF8();

    return v9 & 1;
  }
}

uint64_t sub_20CFED28C()
{
  v0 = sub_20D564208();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D563DB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D15248], v4);
  sub_20CFEE3E4(&qword_2811209A0, MEMORY[0x277D15260]);
  v8 = sub_20D563978();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D15B08], v0);
    sub_20CFEE3E4(&unk_281120980, MEMORY[0x277D15B10]);
    v9 = sub_20D563978();
    (*(v1 + 8))(v3, v0);
    if (v9)
    {
      return 0;
    }
  }

  v11 = objc_opt_self();
  if ([v11 isAVisionPro] & 1) != 0 || (objc_msgSend(v11, sel_isAMac))
  {
    return 1;
  }

  else
  {
    return [v11 isAnIPad];
  }
}

id sub_20CFED51C(void *a1, unsigned __int8 a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor] = 0;
  v7 = &v4[OBJC_IVAR___HUDashboardContext_overrideDashboardTitle];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v4[OBJC_IVAR___HUDashboardContext_type];
  *v8 = a1;
  v8[8] = a2;
  *&v4[OBJC_IVAR___HUDashboardContext_home] = a3;
  *&v4[OBJC_IVAR___HUDashboardContext_room] = a4;
  *&v4[OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle] = 0;
  *&v4[OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel] = 0;
  sub_20CFEE3BC(a1, a2);
  v9 = a4;
  v10 = a3;
  v11 = sub_20CFED28C();
  v12 = 2;
  if (v11)
  {
    v12 = 0;
  }

  *&v4[OBJC_IVAR___HUDashboardContext_backgroundStyle] = v12;
  *&v4[OBJC_IVAR___HUDashboardContext_cameraPresentationStyle] = 0;
  *&v4[OBJC_IVAR___HUDashboardContext_filterPresentationStyle] = 0;
  *&v4[OBJC_IVAR___HUDashboardContext_scenePresentationStyle] = 0;
  v4[OBJC_IVAR___HUDashboardContext_allowsAdding] = 0;
  v4[OBJC_IVAR___HUDashboardContext_allowsAnnounce] = 0;
  v4[OBJC_IVAR___HUDashboardContext_allowsEditing] = 0;
  v4[OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator] = 0;
  v4[OBJC_IVAR___HUDashboardContext_allowsHomeNavigation] = 1;
  v4[OBJC_IVAR___HUDashboardContext_includePredictedScenes] = 0;
  v4[OBJC_IVAR___HUDashboardContext_shouldDelayItemUpdatesForViewVisibility] = 0;
  v4[OBJC_IVAR___HUDashboardContext_shouldHideEmptySections] = 1;
  v4[OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService] = 1;
  v4[OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames] = 0;
  v4[OBJC_IVAR___HUDashboardContext_shouldHideForGuests] = 1;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for DashboardContext();
  return objc_msgSendSuper2(&v14, sel_init);
}

_BYTE *sub_20CFED69C(void *a1, void *a2)
{
  objc_allocWithZone(type metadata accessor for DashboardContext());
  v4 = a1;
  v5 = a2;
  v6 = sub_20CFED51C(1, 2u, v5, a1);

  v7 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
  swift_beginAccess();
  *&v6[v7] = 3;
  v8 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  v6[v8] = 0;
  v9 = 0;
  if (([objc_opt_self() isAMac] & 1) == 0)
  {
    v9 = [v5 hf_currentUserIsRestrictedGuest] ^ 1;
  }

  v10 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  v6[v10] = v9;
  v11 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
  swift_beginAccess();
  v6[v11] = 1;
  v12 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  v6[v12] = 1;
  v13 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
  swift_beginAccess();
  v6[v13] = 0;
  v14 = [v5 hf_currentUserIsRestrictedGuest] ^ 1;
  v15 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  *&v6[v15] = v14;
  if ([v5 hf_currentUserIsRestrictedGuest])
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  v17 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *&v6[v17] = v16;
  return v6;
}

_BYTE *sub_20CFED888(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for DashboardContext());
  v3 = a1;
  v4 = sub_20CFED51C(0, 2u, v3, 0);

  if ([v3 hf_shouldBlockCurrentUserFromHome])
  {
    v5 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
    swift_beginAccess();
    *&v4[v5] = 0;
  }

  else
  {
    if ([v3 hf_currentUserIsRestrictedGuest])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
    swift_beginAccess();
    *&v4[v7] = v6;
  }

  v8 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  v4[v8] = 0;
  v9 = OBJC_IVAR___HUDashboardContext_includePredictedScenes;
  swift_beginAccess();
  v4[v9] = 1;
  v10 = 0;
  if (([v3 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
  {
    if ([v3 hf_currentUserIsRestrictedGuest])
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }
  }

  v11 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *&v4[v11] = v10;
  v12 = OBJC_IVAR___HUDashboardContext_shouldDelayItemUpdatesForViewVisibility;
  swift_beginAccess();
  v4[v12] = 1;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 hostProcess];

  if (v14 == 3)
  {
    v15 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
    swift_beginAccess();
    v4[v15] = 0;
    v16 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
    swift_beginAccess();
    *&v4[v16] = 0;
  }

  else
  {
    if (sub_20CFED28C())
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    v18 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
    swift_beginAccess();
    *&v4[v18] = v17;
    v19 = objc_opt_self();
    if ([v19 isAMac])
    {
      v20 = 0;
    }

    else
    {
      v20 = [v3 hf_currentUserIsRestrictedGuest] ^ 1;
    }

    v21 = OBJC_IVAR___HUDashboardContext_allowsAdding;
    swift_beginAccess();
    v4[v21] = v20;
    v22 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
    swift_beginAccess();
    v4[v22] = 1;
    v23 = OBJC_IVAR___HUDashboardContext_allowsEditing;
    swift_beginAccess();
    v4[v23] = 1;
    v24 = [v3 hf_currentUserIsRestrictedGuest] ^ 1;
    v25 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
    swift_beginAccess();
    v4[v25] = v24;
    v26 = 0;
    if (([v3 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
    {
      v26 = [v3 hf_currentUserIsRestrictedGuest] ^ 1;
    }

    v27 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
    swift_beginAccess();
    *&v4[v27] = v26;
    v28 = 0;
    if (([v3 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
    {
      if ([v3 hf_currentUserIsRestrictedGuest])
      {
        v28 = 0;
      }

      else
      {
        v28 = 3;
      }
    }

    v29 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
    v30 = 1;
    swift_beginAccess();
    *&v4[v29] = v28;
    v31 = [v3 hf_currentUserIsRestrictedGuest];
    v32 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
    swift_beginAccess();
    v4[v32] = v31;
    if ([v3 hf_currentUserIsAdministrator])
    {
      if ([v19 supportsAccessorySetup])
      {
        v30 = [v3 hf_shouldBlockCurrentUserFromHome];
      }

      else
      {
        v30 = 1;
      }
    }

    v33 = OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService;
    swift_beginAccess();
    v4[v33] = v30;
  }

  return v4;
}

_BYTE *sub_20CFEDCCC(void *a1, void *a2, void *a3)
{
  objc_allocWithZone(type metadata accessor for DashboardContext());
  v6 = a3;
  v7 = a1;
  v8 = a2;
  v9 = sub_20CFED51C(a1, 0, v8, a3);

  v10 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
  swift_beginAccess();
  *&v9[v10] = 2;
  v11 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
  swift_beginAccess();
  *&v9[v11] = 1;
  v12 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
  swift_beginAccess();
  v9[v12] = 0;
  v13 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  *&v9[v13] = 0;
  v14 = [objc_opt_self() categoryType_];
  LODWORD(a1) = [v7 containsType_];

  if (a1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  *&v9[v16] = v15;
  v17 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
  swift_beginAccess();
  *&v9[v17] = 2;
  v18 = [v7 fullName];
  if (v18)
  {
    v19 = v18;
    v20 = sub_20D567838();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = &v9[OBJC_IVAR___HUDashboardContext_overrideDashboardTitle];
  swift_beginAccess();
  *v23 = v20;
  v23[1] = v22;

  v24 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *&v9[v24] = 2;
  return v9;
}

_BYTE *sub_20CFEDF0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for DashboardContext());
  v7 = @"camerasSection";
  v8 = a3;
  v9 = sub_20CFED51C(@"camerasSection", 1u, v8, 0);

  v10 = [objc_opt_self() isAMac] ^ 1;
  v11 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  v9[v11] = v10;
  v12 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  v9[v12] = 1;
  v13 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  *&v9[v13] = 1;
  v14 = [objc_opt_self() hf_keyColor];
  v15 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  v16 = *&v9[v15];
  *&v9[v15] = v14;

  v17 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  *&v9[v17] = 2;
  v18 = &v9[OBJC_IVAR___HUDashboardContext_overrideDashboardTitle];
  swift_beginAccess();
  *v18 = a1;
  v18[1] = a2;
  sub_20D5663C8();

  v19 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  v9[v19] = 1;
  return v9;
}

_BYTE *sub_20CFEE0F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for DashboardContext());
  v7 = @"scenesSection";
  v8 = a3;
  v9 = sub_20CFED51C(@"scenesSection", 1u, v8, 0);

  v10 = [objc_opt_self() isAMac] ^ 1;
  v11 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  v9[v11] = v10;
  v12 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  v9[v12] = 1;
  v13 = &v9[OBJC_IVAR___HUDashboardContext_overrideDashboardTitle];
  swift_beginAccess();
  *v13 = a1;
  v13[1] = a2;
  sub_20D5663C8();

  v14 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *&v9[v14] = 1;
  return v9;
}

_BYTE *sub_20CFEE244(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for DashboardContext());
  v7 = @"SpeakersAndTVsSection";
  v8 = a3;
  v9 = sub_20CFED51C(@"SpeakersAndTVsSection", 1u, v8, 0);

  v10 = [objc_opt_self() isAMac] ^ 1;
  v11 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  v9[v11] = v10;
  v12 = &v9[OBJC_IVAR___HUDashboardContext_overrideDashboardTitle];
  swift_beginAccess();
  *v12 = a1;
  v12[1] = a2;
  sub_20D5663C8();

  v13 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  *&v9[v13] = 2;
  v14 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  v9[v14] = 1;
  return v9;
}

id sub_20CFEE3BC(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_20CFEE3D0(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_20CFEE3E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CFEE430()
{
  result = qword_27C81F0E8;
  if (!qword_27C81F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F0E8);
  }

  return result;
}

unint64_t sub_20CFEE488()
{
  result = qword_27C81F0F0;
  if (!qword_27C81F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F0F0);
  }

  return result;
}

unint64_t sub_20CFEE4E0()
{
  result = qword_27C81F0F8;
  if (!qword_27C81F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F0F8);
  }

  return result;
}

unint64_t sub_20CFEE538()
{
  result = qword_27C81F100;
  if (!qword_27C81F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F100);
  }

  return result;
}

unint64_t sub_20CFEE590()
{
  result = qword_27C81F108;
  if (!qword_27C81F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F108);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6HomeUI16DashboardContextC0C4Type33_33DB57BB149E22BD47968319CE4D765ELLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_20CFEEED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20CFEEF20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20CFEEF64(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_20CFEEFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_configuration;
  swift_beginAccess();
  v4 = *v3;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = *(v3 + 24);
  sub_20CFEF16C(v4);

  return swift_unknownObjectRetain();
}

uint64_t sub_20CFEF02C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_configuration;
  swift_beginAccess();
  v8 = *v7;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  sub_20CFEF16C(v2);

  swift_unknownObjectRetain();
  sub_20CFEF9D4(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_20CFEF0E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_configuration;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = *(v3 + 24);
  sub_20CFEF16C(v4);

  return swift_unknownObjectRetain();
}

id sub_20CFEF16C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_20CFEF18C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_20CFEF204();
}

void sub_20CFEF204()
{
  v1 = *&v0[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_module];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController];
    swift_beginAccess();
    v3 = *v2;
    v4 = *(v2 + 1);
    v5 = &v1[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
    swift_beginAccess();
    *v5 = v3;
    *(v5 + 1) = v4;
    v6 = v1;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  v7 = [v0 itemManager];
  v8 = [v7 firstFullUpdateFuture];

  LODWORD(v7) = [v8 isFinished];
  if (v7)
  {
    v9 = [v0 itemManager];
  }
}

uint64_t sub_20CFEF3B0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_20CFEF204();
  return swift_unknownObjectRelease();
}

void (*sub_20CFEF430(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CFEF494;
}

void sub_20CFEF494(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_20CFEF204();
  }
}

id ShortcutsAccessoryPickerViewController.init(home:configuration:)(void *a1, __int128 *a2)
{
  v29 = a2[1];
  v34 = *a2;
  v28 = *(a2 + 4);
  v3 = &v2[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController];
  *v3 = 0;
  *(v3 + 1) = 0;
  v32 = OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleContext;
  v30 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v31 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v4 = objc_allocWithZone(v31);
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v6 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v8 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v9 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v10 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v11 = &v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v12 = 0;
  v12[1] = 0;
  swift_beginAccess();
  *&v4[v5] = 0;
  swift_beginAccess();
  *&v4[v6] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v4[v7] = 1;
  swift_beginAccess();
  v4[v8] = 1;
  swift_beginAccess();
  v4[v9] = 0;
  swift_beginAccess();
  *&v4[v10] = v30;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v13 = *v11;
  *v11 = 0;
  v11[1] = 0;
  sub_20CEC8164(v13);
  swift_beginAccess();
  v14 = *v12;
  *v12 = 0;
  v12[1] = 0;
  sub_20CEC8164(v14);
  v42.receiver = v4;
  v42.super_class = v31;
  *&v2[v32] = objc_msgSendSuper2(&v42, sel_init);
  *&v2[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_module] = 0;
  *&v2[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleController] = 0;
  *&v2[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_home] = a1;
  v15 = a1;
  if (*(&v34 + 1) == 1)
  {
    sub_20CFEF9D4(0);
    v16 = xmmword_20D5BD270;
    v17 = 0uLL;
    v18 = 2;
  }

  else
  {
    v16 = v29;
    v17 = v34;
    v18 = v28;
  }

  v19 = &v2[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_configuration];
  *v19 = v17;
  *(v19 + 1) = v16;
  *(v19 + 4) = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v41.receiver = v2;
  v41.super_class = type metadata accessor for ShortcutsAccessoryPickerViewController();
  v21 = objc_msgSendSuper2(&v41, sel_initUsingCompositionalLayoutWithItemManager_, v20);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_20CFEFB04;
  v40 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_20CF351D8;
  v38 = &block_descriptor_22;
  v23 = _Block_copy(&aBlock);
  v24 = v21;

  [v20 setHomeCreator_];
  _Block_release(v23);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = sub_20CFEFDC4;
  v40 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_20CF35658;
  v38 = &block_descriptor_4;
  v26 = _Block_copy(&aBlock);

  [v20 setItemModuleCreator_];
  _Block_release(v26);

  return v24;
}

void ShortcutsAccessoryPickerViewController.Configuration.init(accessoryPool:objectLevel:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 8) = xmmword_20D5C4080;
  *(a3 + 24) = 0;
  sub_20CFEF9D4(0);
  *a3 = v5;
  *(a3 + 32) = a2;
}

void sub_20CFEF9D4(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_20CFEFA08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_home);

    v3 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    v4 = [objc_opt_self() hf:59 errorWithCode:?];
    v2 = sub_20D5635C8();
    v3 = [objc_opt_self() futureWithError_];
  }

  return v3;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CFEFB24(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_20CFF0B90();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = v6;
  v8 = *(v6 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleContext);

  v9 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v10 = &v9[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v9[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = v8;
  swift_getObjectType();
  v11 = v8;
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = sub_20CF86924(v12, a2, 0, 0, v9);

  swift_unknownObjectRelease();
  v14 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v15 = *&v11[v14];
  v16 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v13[v16] = v15;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = (v17 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController);
    v19 = v17;
    swift_beginAccess();
    v20 = *v18;
    v21 = v18[1];
    swift_unknownObjectRetain();
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v23 = &v13[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v23 = v20;
  *(v23 + 1) = v21;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_module);
    *(v24 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_module) = v13;
    v26 = v24;
    v27 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20D5BA040;
  *(v22 + 32) = v13;

  return v22;
}

id ShortcutsAccessoryPickerViewController.__allocating_init(home:objcConfiguration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  HUShortcutsTriggerViewAccessoryPickerConfiguration.buildConfiguration()(&v9);
  v6 = objc_allocWithZone(type metadata accessor for ShortcutsAccessoryPickerViewController());
  v7 = ShortcutsAccessoryPickerViewController.init(home:configuration:)(a1, &v9);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id ShortcutsAccessoryPickerViewController.init(home:objcConfiguration:)(void *a1, void *a2)
{
  HUShortcutsTriggerViewAccessoryPickerConfiguration.buildConfiguration()(&v7);
  v4 = objc_allocWithZone(type metadata accessor for ShortcutsAccessoryPickerViewController());
  v5 = ShortcutsAccessoryPickerViewController.init(home:configuration:)(a1, &v7);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id HUShortcutsTriggerViewAccessoryPickerConfiguration.buildConfiguration()@<X0>(uint64_t *a1@<X8>)
{
  sub_20CFEF9D4(0);
  if ([v1 accessoryPool] != 1)
  {
    sub_20CFEF9D4(0);
    v4 = 0;
    goto LABEL_7;
  }

  if ([v1 customAccessoryContainer])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_20CFEF9D4(0);
      if (v4 == 1)
      {
        goto LABEL_10;
      }

LABEL_7:
      sub_20CFEF16C(v4);
      sub_20CFEF9D4(v4);
      sub_20CFEF9D4(1);
      v5 = 0;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  sub_20CFEF9D4(0);
LABEL_10:
  v4 = 1;
  sub_20CFEF9D4(1);
  sub_20CFEF9D4(1);
  v5 = [v1 customAccessoryContainer];
LABEL_11:
  v6 = [v1 filterBlock];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    type metadata accessor for ShortcutsAccessoryPickerViewController.Filter();
    inited = swift_allocObject();
    *(inited + 16) = sub_20CF87988;
    *(inited + 24) = v8;
  }

  else if ([v1 servicesOnly])
  {
    type metadata accessor for ShortcutsAccessoryPickerViewController.Filter();
    inited = swift_initStaticObject();
  }

  else
  {
    inited = 0;
  }

  v10 = [v1 sectionGroupingStyle];
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 == 2);
  }

  result = [v1 objectLevel];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v11;
  a1[3] = inited;
  a1[4] = result;
  return result;
}

id sub_20CFF0180()
{
  v1 = [v0 itemManager];
  v2 = [v1 reloadAndUpdateAllItemsFromSenderSelector_];

  v6[4] = sub_20CFF029C;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20CFF02FC;
  v6[3] = &block_descriptor_10;
  v3 = _Block_copy(v6);
  v4 = [v2 flatMap_];
  _Block_release(v3);

  return v4;
}

id sub_20CFF029C()
{
  v0 = [objc_opt_self() futureWithNoResult];
  v1 = [v0 asGeneric];

  return v1;
}

id sub_20CFF02FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_20CFF0364(void **a1)
{
  v2 = v1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  aBlock = *a1;
  v4 = aBlock;
  v27 = v3;
  v28 = v6;
  v29 = v5;
  v30 = v7;
  v8 = &v1[OBJC_IVAR___HUShortcutsAccessoryPickerViewController_configuration];
  swift_beginAccess();
  v32 = *v8;
  v33 = *(v8 + 8);
  v34 = *(v8 + 24);
  sub_20CFEF16C(v32);

  swift_unknownObjectRetain();
  v25 = sub_20CFF0830(&v32);
  sub_20CFEF9D4(v32);
  swift_unknownObjectRelease();

  v9 = *v8;
  *v8 = aBlock;
  *(v8 + 1) = v3;
  *(v8 + 2) = v6;
  *(v8 + 3) = v5;
  *(v8 + 4) = v7;
  sub_20CFEF16C(v4);

  swift_unknownObjectRetain();
  sub_20CFEF9D4(v9);
  swift_unknownObjectRelease();

  sub_20CFF0B90();
  v10 = [v2 itemManager];
  v11 = [v10 firstFastUpdateFuture];

  LODWORD(v10) = [v11 isFinished];
  if (!v10)
  {
LABEL_4:
    v16 = [objc_opt_self() futureWithNoResult];

    return v16;
  }

  v12 = [v2 itemManager];
  v13 = [v12 itemModules];

  sub_20CECF940(0, &qword_28111FFE0);
  v14 = sub_20D567A78();

  if (v14 >> 62)
  {
    v18 = sub_20D568768();

    if (v18)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      goto LABEL_4;
    }
  }

  if (v25 <= 1u)
  {
    if (v25)
    {
      v19 = [v2 itemManager];
      [v19 recalculateVisibilityAndSortAllItems];
    }

    goto LABEL_4;
  }

  v20 = [v2 itemManager];
  if (v25 == 2)
  {
    v21 = [v20 reloadAndUpdateAllItemsFromSenderSelector_];

    v30 = sub_20CFF029C;
    v31 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_20CFF02FC;
    v29 = &block_descriptor_16;
  }

  else
  {
    [v20 resetItemProvidersAndModules];

    v23 = [v2 itemManager];
    v21 = [v23 reloadAndUpdateAllItemsFromSenderSelector_];

    v30 = sub_20CFF029C;
    v31 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_20CFF02FC;
    v29 = &block_descriptor_13_0;
  }

  v22 = _Block_copy(&aBlock);
  v24 = [v21 flatMap_];
  _Block_release(v22);

  return v24;
}

uint64_t sub_20CFF0830(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (!*v1)
  {
    if (!v2)
    {
LABEL_6:
      v15 = *(a1 + 16);
      sub_20CFEF9D4(v6);
      sub_20CFEF9D4(v6);
      goto LABEL_10;
    }

LABEL_8:
    sub_20CFEF16C(*v1);
    sub_20CFEF16C(v2);
    sub_20CFEF9D4(v6);
    v11 = v2;
LABEL_17:
    sub_20CFEF9D4(v11);
    return 3;
  }

  if (v6 == 1)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v2 < 2)
  {
    goto LABEL_8;
  }

  v15 = *(a1 + 16);
  sub_20CECF940(0, &qword_28111FB10);
  sub_20CFEF16C(v6);
  sub_20CFEF16C(v6);
  sub_20CFEF16C(v2);
  sub_20CFEF16C(v6);
  sub_20CFEF16C(v2);
  v12 = sub_20D5683F8();
  sub_20CFEF9D4(v6);
  sub_20CFEF9D4(v2);
  sub_20CFEF9D4(v2);
  sub_20CFEF9D4(v6);
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v11 = v6;
    goto LABEL_17;
  }

LABEL_10:
  if (v10 != v5)
  {
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    sub_20CFEF9D4(v6);
    sub_20CFEF9D4(1);
    v14 = v15;
    goto LABEL_21;
  }

  sub_20CFEF9D4(1);
  sub_20CFEF9D4(1);
  if (!v7)
  {
    v14 = v15;
    if (v3)
    {
      return 3;
    }

LABEL_21:
    if (v9)
    {
      result = 2;
      if (!v4 || v9 != v4)
      {
        return result;
      }
    }

    else if (v4)
    {
      return 2;
    }

    return v8 != v14;
  }

  result = 3;
  v14 = v15;
  if (v3 && v7 == v3)
  {
    goto LABEL_21;
  }

  return result;
}

id sub_20CFF09FC()
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = type metadata accessor for AccessoryListModuleController();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v3[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v8.receiver = v3;
    v8.super_class = v2;
    v4 = objc_msgSendSuper2(&v8, sel_initWithModule_, v1);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleController);
    *(v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleController) = v4;
    v6 = v4;

    v1 = [v6 asGeneric];
  }

  return v1;
}

void sub_20CFF0B90()
{
  v1 = v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_configuration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleContext);
  if (*v1)
  {
    if (v2 == 1)
    {
      v4 = *(v1 + 8);
      v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
      swift_beginAccess();
      *&v3[v5] = v4;
      v6 = v3;
      swift_unknownObjectRetain();
    }

    else
    {
      v11 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
      swift_beginAccess();
      *&v3[v11] = v2;
      sub_20CFEF16C(v2);
    }
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_home);
    v8 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
    swift_beginAccess();
    *&v3[v8] = v7;
    v9 = v3;
    v10 = v7;
  }

  swift_unknownObjectRelease();
  v12 = OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleContext;
  v13 = *(v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_moduleContext);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  *&v13[v15] = v14;
  v16 = *(v1 + 32);
  v17 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  swift_beginAccess();
  *&v13[v17] = v16;
  v18 = *(v1 + 24);
  if (v18)
  {
    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = &v13[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v22 = *v21;
  *v21 = v20;
  v21[1] = v19;
  v23 = v13;
  sub_20CEC8164(v22);

  v24 = *(v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_module);
  if (v24)
  {
    v25 = *(v0 + v12);
    v26 = OBJC_IVAR___HUAccessoryRepresentableItemModule_context;
    v27 = *&v24[OBJC_IVAR___HUAccessoryRepresentableItemModule_context];
    *&v24[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = v25;
    v28 = v25;
    v29 = v24;

    sub_20CF7E81C();
    v30 = *&v24[v26];
    v31 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
    swift_beginAccess();
    v32 = *(v30 + v31);
    v33 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
    swift_beginAccess();
    *&v29[v33] = v32;
  }
}

void sub_20CFF0E34()
{
  v1 = _s26DefaultSelectionControllerCMa();
  v2 = objc_allocWithZone(v1);
  v3 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_selectedItems] = MEMORY[0x277D84FA0];
  v2[OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_allowsMultipleSelection] = 0;
  *&v2[OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services] = v3;
  v8.receiver = v2;
  v8.super_class = v1;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = sub_20CFF1724();
  v6 = (v0 + OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController);
  swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;
  v7 = v4;
  swift_unknownObjectRelease();
  sub_20CFEF204();
}

void sub_20CFF0F54()
{
  v1 = OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController;
  swift_beginAccess();
  if (*(v0 + v1) && (_s26DefaultSelectionControllerCMa(), swift_dynamicCastClass()))
  {
    sub_20D5663C8();
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20D568768())
    {
      sub_20CEF8560(MEMORY[0x277D84F90]);
    }
  }
}

uint64_t sub_20CFF1084(uint64_t a1)
{
  v3 = OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController;
  result = swift_beginAccess();
  if (*(v1 + v3))
  {
    _s26DefaultSelectionControllerCMa();
    result = swift_dynamicCastClass();
    if (result)
    {
      *(result + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services) = a1;
      swift_unknownObjectRetain();
      sub_20D5663C8();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id ShortcutsAccessoryPickerViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id ShortcutsAccessoryPickerViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id ShortcutsAccessoryPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShortcutsAccessoryPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ShortcutsAccessoryPickerViewController.Configuration.accessoryPool.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_20CFEF16C(v2);
}

void ShortcutsAccessoryPickerViewController.Configuration.accessoryPool.setter(void **a1)
{
  v2 = *a1;
  sub_20CFEF9D4(*v1);
  *v1 = v2;
}

uint64_t ShortcutsAccessoryPickerViewController.Configuration.customAccessoryContainer.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t ShortcutsAccessoryPickerViewController.Configuration.filter.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

BOOL sub_20CFF158C()
{
  swift_getObjectType();
  v0 = sub_20D5681D8();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v1 = sub_20D568768();
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return v1 != 0;
}

uint64_t ShortcutsAccessoryPickerViewController.Filter.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t static ShortcutsAccessoryPickerViewController.Filter.servicesOnly.getter()
{
  type metadata accessor for ShortcutsAccessoryPickerViewController.Filter();

  return swift_initStaticObject();
}

uint64_t ShortcutsAccessoryPickerViewController.Filter.block.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShortcutsAccessoryPickerViewController.Filter.init(block:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ShortcutsAccessoryPickerViewController.Filter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_20CFF1724()
{
  result = qword_27C81F148;
  if (!qword_27C81F148)
  {
    _s26DefaultSelectionControllerCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F148);
  }

  return result;
}

uint64_t _s6HomeUI38ShortcutsAccessoryPickerViewControllerC13ConfigurationV0D4PoolO2eeoiySbAG_AGtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_20CECF940(0, &qword_28111FB10);
      sub_20CFEF16C(v3);
      sub_20CFEF16C(v2);
      v4 = sub_20D5683F8();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_20CFEF16C(*a2);
    sub_20CFEF16C(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_20CFEF9D4(v2);
  sub_20CFEF9D4(v3);
  return v4 & 1;
}

uint64_t get_enum_tag_for_layout_string_6HomeUI38ShortcutsAccessoryPickerViewControllerC13ConfigurationV0D4PoolO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20CFF1A88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20CFF1AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20CFF1B5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CFF1BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_20CFF1C0C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_20CFF1C68()
{
  result = qword_27C81D290;
  if (!qword_27C81D290)
  {
    sub_20CECF940(255, &qword_27C81AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D290);
  }

  return result;
}

uint64_t sub_20CFF1D38()
{
  v1 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFF1DD0(char a1)
{
  v3 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CFF1F80()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CFF1FE0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUContainedSpeakersViewController_presentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

id sub_20CFF2078()
{
  v1 = [v0 itemManager];
  type metadata accessor for ContainedSpeakersItemManager();
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_mediaItem);

  return v2;
}

id ContainedSpeakersViewController.__allocating_init(mediaItem:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v4[OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal] = 0;
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for ContainedSpeakersItemManager());
  v5 = a1;
  v6 = sub_20CF8B04C(v5);
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithItemManager_tableViewStyle_, v6, 2);

  return v7;
}

id ContainedSpeakersViewController.init(mediaItem:)(void *a1)
{
  v2 = v1;
  v2[OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal] = 0;
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for ContainedSpeakersItemManager());
  v4 = a1;
  v5 = sub_20CF8B04C(v4);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ContainedSpeakersViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithItemManager_tableViewStyle_, v5, 2);

  return v6;
}

void sub_20CFF231C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ContainedSpeakersViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = [v0 itemManager];
  type metadata accessor for ContainedSpeakersItemManager();
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_mediaItem);

  v3 = [v2 mediaProfileContainer];
  v4 = [v3 hf_displayName];
  swift_unknownObjectRelease();
  if (!v4)
  {
    sub_20D567838();
    v4 = sub_20D5677F8();
  }

  [v0 setTitle_];
}

uint64_t sub_20CFF247C(void *a1)
{
  v2 = v1;
  v4 = [v1 itemManager];
  type metadata accessor for ContainedSpeakersItemManager();
  v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem);
  v6 = v5;

  if (v5)
  {
    sub_20CECF940(0, &qword_281120AC0);
    v7 = a1;
    v8 = sub_20D5683F8();

    if (v8)
    {
      return sub_20CECF940(0, &qword_27C81F168);
    }
  }

  v10 = sub_20D563868();
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ContainedSpeakersViewController();
  v11 = objc_msgSendSuper2(&v12, sel_cellClassForItem_indexPath_, a1, v10);

  if (v11)
  {
    return swift_getObjCClassMetadata();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CFF280C(void *a1)
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for AccessoryDetailInfoListModuleController();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate];
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 4) = 0;
    v18.receiver = v6;
    v18.super_class = v5;
    v8 = objc_msgSendSuper2(&v18, sel_initWithModule_, v4);
    v17[3] = type metadata accessor for ContainedSpeakersViewController();
    v17[4] = &protocol witness table for ContainedSpeakersViewController;
    v17[0] = v1;
    v9 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
    swift_beginAccess();
    v10 = v1;
    sub_20CFDFF48(v17, v8 + v9);
    swift_endAccess();
    v11 = [v8 asGeneric];

    return v11;
  }

  else
  {
    sub_20D568858();

    v13 = [a1 description];
    v14 = sub_20D567838();
    v16 = v15;

    MEMORY[0x20F31CDB0](v14, v16);

    result = sub_20D568A58();
    __break(1u);
  }

  return result;
}

id sub_20CFF2A1C(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 itemManager];
  v5 = [v4 itemSectionForSectionIndex_];

  if (v5)
  {
    v6 = [v5 headerTitle];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() prominentInsetGroupedHeaderConfiguration];
      [v8 setText_];

      [v8 directionalLayoutMargins];
      [v8 setDirectionalLayoutMargins_];
      [v8 directionalLayoutMargins];
      [v8 setDirectionalLayoutMargins_];

      return v8;
    }
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for ContainedSpeakersViewController();
  return objc_msgSendSuper2(&v10, sel_contentConfigurationForHeaderViewAtSectionIndex_, a1);
}

void sub_20CFF2C60(void *a1)
{
  v2 = v1;
  v4 = [v1 itemManager];
  type metadata accessor for ContainedSpeakersItemManager();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = sub_20D563868();
  v7 = [v5 displayedItemAtIndexPath_];

  v8 = sub_20D563868();
  [a1 deselectRowAtIndexPath:v8 animated:1];

  v14 = v7;
  v9 = [v2 itemManager];
  v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem);
  v11 = v10;

  if (v10)
  {
    if (v14)
    {
      sub_20CECF940(0, &qword_281120AC0);
      v12 = sub_20D5683F8();

      if (v12)
      {
        goto LABEL_8;
      }

LABEL_7:
      v13 = sub_20D563868();
      v15.receiver = v2;
      v15.super_class = type metadata accessor for ContainedSpeakersViewController();
      objc_msgSendSuper2(&v15, sel_tableView_didSelectRowAtIndexPath_, a1, v13);

      return;
    }

LABEL_6:

    goto LABEL_7;
  }

  v11 = v14;
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_8:
  sub_20CFF3110();
}

id sub_20CFF2F60(void *a1, char a2)
{
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = a1;
      if ([v6 requiresPresentingViewControllerDismissal])
      {
        v10 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
        swift_beginAccess();
        v2[v10] = 1;
        v11 = [v8 finishPresentation:v2 animated:a2 & 1];

        swift_unknownObjectRelease();
        return v11;
      }

      swift_unknownObjectRelease();
    }
  }

  v13 = [v2 hu:a2 & 1 dismissViewControllerAnimated:?];

  return v13;
}

void sub_20CFF3110()
{
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  sub_20D567838();
  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  sub_20D567838();
  v5 = sub_20D5677F8();
  v6 = HULocalizedString(v5);

  sub_20D567838();
  v7 = sub_20D5677F8();

  v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:0];

  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = v0;
  v11 = sub_20D5677F8();

  v17[4] = sub_20CFF3948;
  v17[5] = v9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_20CF13714;
  v17[3] = &block_descriptor_23;
  v12 = _Block_copy(v17);

  v13 = objc_opt_self();
  v14 = [v13 actionWithTitle:v11 style:2 handler:v12];
  _Block_release(v12);

  v15 = sub_20D5677F8();

  v16 = [v13 actionWithTitle:v15 style:1 handler:0];

  [v8 addAction_];
  [v8 addAction_];
  [v10 presentViewController:v8 animated:1 completion:0];
}

id sub_20CFF33F8()
{
  v1 = v0;
  v2 = [v0 itemManager];
  v3 = [v2 home];

  if (!v3)
  {
    return [objc_opt_self() futureWithNoResult];
  }

  v4 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  swift_beginAccess();
  v1[v4] = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong finishPresentation:v1 animated:1];
    swift_unknownObjectRelease();
    v7 = v6;
    v8 = [v1 itemManager];
    type metadata accessor for ContainedSpeakersItemManager();
    v9 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_mediaItem);

    v10 = [v9 serviceLikeBuilderInHome_];
    v11 = [v10 removeItemFromHome];
    v12 = [v11 recoverIgnoringError];

    return v12;
  }

  else
  {

    return 0;
  }
}

id ContainedSpeakersViewController.__allocating_init(itemManager:tableViewStyle:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithItemManager:a1 tableViewStyle:a2];

  return v4;
}

id ContainedSpeakersViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainedSpeakersViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CFF3948()
{
  v0 = sub_20CFF33F8();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id SelectableActionSetItemModuleController.__allocating_init(module:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HUSelectableActionSetItemModuleController_cellVerticalContentInset] = 0x4028000000000000;
  *&v3[OBJC_IVAR___HUSelectableActionSetItemModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithModule_, a1);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v4;
}

{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id SelectableActionSetItemModuleController.init(module:)(void *a1)
{
  *&v1[OBJC_IVAR___HUSelectableActionSetItemModuleController_cellVerticalContentInset] = 0x4028000000000000;
  *&v1[OBJC_IVAR___HUSelectableActionSetItemModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectableActionSetItemModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_20CFF3B7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_20D566258();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5661B8();
  v10 = [a2 latestResults];
  if (v10)
  {
    v11 = v10;
    v12 = sub_20D567758();

    v13 = sub_20D567838();
    if (*(v12 + 16))
    {
      v15 = sub_20CEED668(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_20CED43FC(*(v12 + 56) + 32 * v15, v29);

        swift_dynamicCast();
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

LABEL_7:
  sub_20D566248();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    v21 = [v3 module];
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v21)
    {
      swift_getObjectType();
      v22 = sub_20D565EA8();

      if (v22)
      {
        swift_unknownObjectRelease();
        v23 = 0;
LABEL_14:
        [v19 setHidesCheckmark_];

        goto LABEL_15;
      }
    }

    else
    {
    }

    v23 = 1;
    goto LABEL_14;
  }

LABEL_15:
  v29[3] = v6;
  v29[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
  MEMORY[0x20F31D5C0](v29);
  v25 = type metadata accessor for SelectableActionSetItemModuleController();
  v28.receiver = v3;
  v28.super_class = v25;
  objc_msgSendSuper2(&v28, sel_configureCell_forItem_, a1, a2);
  return (*(v7 + 8))(v9, v6);
}

id SelectableActionSetItemModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectableActionSetItemModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFF4280(uint64_t a1)
{
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_20D568768();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_20CEF0B08(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_20D568708();
    }

    else
    {
      result = sub_20D5686C8();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_20CFB1614(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_20D5637E8();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_20CEF0B08(v22 > 1, v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_20D568728())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E278);
          v12 = sub_20D567D38();
          sub_20D5687C8();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_20CFAE618(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_20CFAE618(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_20CFAE618(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CFF46A4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = sub_20CFF4280(*(v0 + 24));
    v1 = sub_20CEF3148(v2);

    *(v0 + 40) = v1;
    sub_20D5663C8();
  }

  sub_20D5663C8();
  return v1;
}

void *MediaSystemBuilderSelectionController.__allocating_init(mediaSystemBuilder:staticAccessories:maximumSelectedAccessories:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  result[5] = 0;
  result[6] = v7;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *MediaSystemBuilderSelectionController.init(mediaSystemBuilder:staticAccessories:maximumSelectedAccessories:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v3[5] = 0;
  v3[6] = v4;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

BOOL sub_20CFF4794()
{
  v1 = [*(v0 + 16) accessories];
  sub_20CF76A34();
  sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
  v2 = sub_20D567D08();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_20D568768();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 > 1;
}

uint64_t sub_20CFF485C(uint64_t a1, void *a2)
{
  v18 = MEMORY[0x277D84FA0];
  v5 = [*(v2 + 16) accessories];
  sub_20CF76A34();
  sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
  v6 = sub_20D567D08();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_20D568768();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  if (v7 >= *(v2 + 32))
  {
    v8 = sub_20CFF58B0();
    sub_20CF2B41C(v8, MEMORY[0x277D84FA0]);
    v18 = v9;
  }

  sub_20CFF5AA0();
  swift_beginAccess();
  v10 = *(v2 + 48);
  swift_unknownObjectRetain();
  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 48) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_20CEE868C(0, v10[2] + 1, 1, v10);
    *(v2 + 48) = v10;
  }

  v14 = v10[2];
  v13 = v10[3];
  if (v14 >= v13 >> 1)
  {
    v10 = sub_20CEE868C((v13 > 1), v14 + 1, 1, v10);
  }

  v10[2] = v14 + 1;
  v15 = &v10[2 * v14];
  v15[4] = a1;
  v15[5] = v11;
  *(v2 + 48) = v10;
  swift_endAccess();
  sub_20CEEA1BC(v17, v11);

  return v18;
}

uint64_t sub_20CFF4A34(uint64_t a1, void *a2)
{
  sub_20CFF5CC0();
  v9 = MEMORY[0x277D84FA0];
  swift_beginAccess();

  v4 = sub_20D5663C8();
  sub_20CFF6400(v4);
  v6 = v5;

  *(v2 + 48) = v6;

  sub_20CEEA1BC(v8, a2);

  return v9;
}

void sub_20CFF4AEC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_20D5681F8();
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CF76A34();
    sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
    sub_20D567D58();
    v4 = v33;
    v3 = v34;
    v5 = v35;
    v6 = v36;
    v7 = v37;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    v6 = 0;
    v4 = sub_20D5663C8();
  }

  v11 = (v5 + 64) >> 6;
  v28 = v0;
  v29 = v4;
  v30 = v3;
  v12 = v6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  while (2)
  {
    if (!sub_20D568798())
    {
      goto LABEL_29;
    }

    sub_20CF76A34();
    swift_dynamicCast();
    v19 = v32;
    v17 = v12;
    v18 = v7;
    if (!v32)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v31 = v18;
      v20 = [*(v1 + 16) accessories];
      sub_20CF76A34();
      sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
      v21 = sub_20D567D08();

      if ((v21 & 0xC000000000000001) == 0)
      {
        break;
      }

      v13 = v19;
      v14 = sub_20D5687A8();

      v7 = v31;
      if (v14)
      {
        goto LABEL_29;
      }

      v12 = v17;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

LABEL_11:
      v15 = v12;
      v16 = v7;
      v17 = v12;
      if (!v7)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v11)
          {
            goto LABEL_29;
          }

          v16 = *(v3 + 8 * v17);
          ++v15;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        return;
      }

LABEL_15:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    if (!*(v21 + 16) || (v22 = sub_20D5683E8(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0))
    {
LABEL_25:

      v1 = v28;
      v4 = v29;
      v3 = v30;
      v7 = v31;
      v12 = v17;
      if (v29 < 0)
      {
        continue;
      }

      goto LABEL_11;
    }

    break;
  }

  v25 = ~v23;
  while (1)
  {
    v26 = *(*(v21 + 48) + 8 * v24);
    v27 = sub_20D5683F8();

    if (v27)
    {
      break;
    }

    v24 = (v24 + 1) & v25;
    if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_29:
  sub_20CEC80DC();
}

uint64_t sub_20CFF4E98@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v53 = sub_20D563818();
  v42 = *(v53 - 8);
  v1 = MEMORY[0x28223BE20](v53);
  v51 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v55 = &v39 - v3;
  swift_getObjectType();
  v4 = sub_20D5681F8();
  v40 = v4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CF76A34();
    sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
    result = sub_20D567D58();
    v7 = v58;
    v6 = v59;
    v8 = v60;
    v9 = v61;
    v10 = v62;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v12 = ~v11;
    v13 = -v11;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v4 + 56);
    result = sub_20D5663C8();
    v8 = v12;
    v9 = 0;
    v7 = result;
  }

  v39 = v8;
  v15 = (v8 + 64) >> 6;
  v50 = v42 + 16;
  v52 = (v42 + 8);
  v46 = v7;
  v47 = v6;
  v43 = v15;
  while (v7 < 0)
  {
    v21 = sub_20D568798();
    if (!v21 || (v56 = v21, sub_20CF76A34(), swift_dynamicCast(), v20 = v57, v18 = v9, v19 = v10, !v57))
    {
LABEL_25:
      sub_20CEC80DC();
      v36 = MEMORY[0x277D13250];
LABEL_26:

      v37 = *v36;
      v38 = sub_20D565B18();
      return (*(*(v38 - 8) + 104))(v41, v37, v38);
    }

LABEL_18:
    v48 = v19;
    v44 = v9;
    v45 = v10;
    v22 = sub_20CFF46A4();
    v49 = v20;
    v23 = [v20 uniqueIdentifier];
    sub_20D5637E8();

    v54 = v22;
    if (*(v22 + 16))
    {
      v24 = v54;
      sub_20CFF65D8(&qword_27C81C0E0, 255, MEMORY[0x277CC95F0]);
      v25 = sub_20D5677B8();
      v26 = v24 + 56;
      v27 = -1 << *(v24 + 32);
      v28 = v25 & ~v27;
      if ((*(v26 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        v30 = *(v42 + 72);
        v31 = *(v42 + 16);
        while (1)
        {
          v32 = v53;
          v33 = v51;
          v31(v51, *(v54 + 48) + v30 * v28, v53);
          sub_20CFF65D8(qword_27C820680, 255, MEMORY[0x277CC95F0]);
          v34 = sub_20D5677E8();
          v35 = *v52;
          (*v52)(v33, v32);
          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v26 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        sub_20CEC80DC();

        v35(v55, v53);
        v36 = MEMORY[0x277D13258];
        goto LABEL_26;
      }
    }

LABEL_8:

    result = (*v52)(v55, v53);
    v9 = v18;
    v10 = v48;
    v7 = v46;
    v6 = v47;
    v15 = v43;
  }

  v16 = v9;
  v17 = v10;
  v18 = v9;
  if (v10)
  {
LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_25;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CFF53CC()
{
  v48 = sub_20D563818();
  v37 = *(v48 - 8);
  v0 = MEMORY[0x28223BE20](v48);
  v46 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v50 = v36 - v2;
  swift_getObjectType();
  v3 = sub_20D5681F8();
  v36[2] = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CF76A34();
    sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
    result = sub_20D567D58();
    v6 = v53;
    v5 = v54;
    v7 = v55;
    v8 = v56;
    v9 = v57;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v3 + 56);
    result = sub_20D5663C8();
    v7 = v11;
    v8 = 0;
    v6 = result;
  }

  v36[1] = v7;
  v14 = (v7 + 64) >> 6;
  v45 = v37 + 16;
  v47 = (v37 + 8);
  v41 = v6;
  v42 = v5;
  v38 = v14;
  while (v6 < 0)
  {
    v20 = sub_20D568798();
    if (!v20 || (v51 = v20, sub_20CF76A34(), swift_dynamicCast(), v19 = v52, v17 = v8, v18 = v9, !v52))
    {
LABEL_25:
      sub_20CEC80DC();
      v35 = 0;
LABEL_26:

      return v35;
    }

LABEL_18:
    v43 = v18;
    v39 = v8;
    v40 = v9;
    v21 = sub_20CFF46A4();
    v44 = v19;
    v22 = [v19 uniqueIdentifier];
    sub_20D5637E8();

    v49 = v21;
    if (*(v21 + 16))
    {
      v23 = v49;
      sub_20CFF65D8(&qword_27C81C0E0, 255, MEMORY[0x277CC95F0]);
      v24 = sub_20D5677B8();
      v25 = v23 + 56;
      v26 = -1 << *(v23 + 32);
      v27 = v24 & ~v26;
      if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        v29 = *(v37 + 72);
        v30 = *(v37 + 16);
        while (1)
        {
          v31 = v48;
          v32 = v46;
          v30(v46, *(v49 + 48) + v29 * v27, v48);
          sub_20CFF65D8(qword_27C820680, 255, MEMORY[0x277CC95F0]);
          v33 = sub_20D5677E8();
          v34 = *v47;
          (*v47)(v32, v31);
          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        sub_20CEC80DC();

        v34(v50, v48);
        v35 = 1;
        goto LABEL_26;
      }
    }

LABEL_8:

    result = (*v47)(v50, v48);
    v8 = v17;
    v9 = v43;
    v6 = v41;
    v5 = v42;
    v14 = v38;
  }

  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_25;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20CFF58B0()
{
  v1 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  swift_beginAccess();

  v2 = sub_20D5663C8();
  sub_20CFF6400(v2);
  v4 = v3;

  *(v0 + 48) = v4;

  v5 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (!sub_20D568768())
    {
      goto LABEL_9;
    }

LABEL_5:
    v6 = [*(v0 + 16) accessories];
    sub_20CF76A34();
    sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
    v7 = sub_20D567D08();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_20D568768();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 < *(v0 + 32))
    {
      return v5;
    }

    goto LABEL_9;
  }

  if (*(v14 + 16))
  {
    goto LABEL_5;
  }

LABEL_9:
  if (*(*(v0 + 48) + 16))
  {
    swift_unknownObjectRetain();
    sub_20CFF5CC0();
    swift_unknownObjectRelease();
  }

  v9 = sub_20D5663C8();
  sub_20CFF6400(v9);
  v11 = v10;

  *(v0 + 48) = v11;

  sub_20CF2B41C(v1, v14);
  return v12;
}

void sub_20CFF5AA0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_20D5681F8();
  v3 = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CF76A34();
    sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
    sub_20D567D58();
    v5 = v22;
    v4 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    sub_20D5663C8();
    v7 = 0;
    v5 = v3;
  }

  v19 = v6;
  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_20CEC80DC();

      return;
    }

    while (1)
    {
      [*(v1 + 16) addAccessory_];

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v18 = sub_20D568798();
      if (v18)
      {
        v20 = v18;
        sub_20CF76A34();
        swift_dynamicCast();
        v17 = v21;
        v15 = v7;
        v16 = v8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_20CFF5CC0()
{
  v45 = sub_20D563818();
  v35 = *(v45 - 8);
  v0 = MEMORY[0x28223BE20](v45);
  v43 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v47 = v34 - v2;
  swift_getObjectType();
  v3 = sub_20D5681F8();
  v34[2] = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CF76A34();
    sub_20CFF65D8(&qword_27C820660, 255, sub_20CF76A34);
    sub_20D567D58();
    v5 = v50;
    v4 = v51;
    v6 = v52;
    v7 = v53;
    v8 = v54;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v7 = 0;
    v5 = sub_20D5663C8();
  }

  v34[1] = v6;
  v12 = (v6 + 64) >> 6;
  v42 = v35 + 16;
  v44 = (v35 + 8);
  v37 = v5;
  v38 = v4;
  v36 = v12;
  while (v5 < 0)
  {
    v19 = sub_20D568798();
    if (!v19 || (v48 = v19, sub_20CF76A34(), swift_dynamicCast(), v18 = v49, v16 = v7, v17 = v8, !v49))
    {
LABEL_26:
      sub_20CEC80DC();

      return;
    }

LABEL_19:
    v41 = v17;
    v20 = sub_20CFF46A4();
    sub_20CF76A34();
    v40 = v18;
    v21 = [sub_20D5681A8() uniqueIdentifier];
    swift_unknownObjectRelease();
    sub_20D5637E8();

    v46 = v20;
    if (*(v20 + 16) && (v22 = v46, sub_20CFF65D8(&qword_27C81C0E0, 255, MEMORY[0x277CC95F0]), v23 = sub_20D5677B8(), v24 = v22 + 56, v25 = -1 << *(v22 + 32), v26 = v23 & ~v25, ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
    {
      v27 = ~v25;
      v28 = *(v35 + 72);
      v29 = *(v35 + 16);
      while (1)
      {
        v30 = v45;
        v31 = v43;
        v29(v43, *(v46 + 48) + v28 * v26, v45);
        sub_20CFF65D8(qword_27C820680, 255, MEMORY[0x277CC95F0]);
        v32 = sub_20D5677E8();
        v33 = *v44;
        (*v44)(v31, v30);
        if (v32)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33(v47, v45);
    }

    else
    {
LABEL_8:

      (*v44)(v47, v45);
      v13 = v40;
      [*(v39 + 16) removeAccessory_];
    }

    v7 = v16;
    v8 = v41;
    v5 = v37;
    v4 = v38;
    v12 = v36;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_26;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t MediaSystemBuilderSelectionController.deinit()
{

  return v0;
}

uint64_t MediaSystemBuilderSelectionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20CFF6334()
{
  swift_getWitnessTable();

  return sub_20D565ED8();
}

uint64_t sub_20CFF6394(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28216DBA0](a1, a2, WitnessTable);
}

void sub_20CFF6400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v14 = v4;
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v15 = *(v3 + 16 * i);
        swift_unknownObjectRetain();
        v6 = *(&v15 + 1);
        sub_20CFF4AEC();
        if (v7)
        {
          break;
        }

        v8 = v6;
        sub_20CEEA1BC(&v16, v8);
        v9 = v16;

        swift_unknownObjectRelease();
        if (v2 == v1)
        {
          return;
        }
      }

      v4 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CEF0BD4(0, *(v14 + 16) + 1, 1);
        v4 = v17;
      }

      v11 = v15;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20CEF0BD4((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v4 = v17;
      }

      *(v4 + 16) = v13 + 1;
      *(v4 + 16 * v13 + 32) = v11;
    }

    while (v2 != v1);
  }
}

uint64_t sub_20CFF65D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id BaseIconView.__configuration.getter()
{
  v1 = (v0 + OBJC_IVAR___HUBaseIconView_configuration);
  swift_beginAccess();
  v2 = v1[5];
  v3 = v1[7];
  v36 = v1[6];
  v37 = v3;
  v4 = v1[1];
  v5 = v1[3];
  v32 = v1[2];
  v33 = v5;
  v6 = v1[3];
  v7 = v1[5];
  v34 = v1[4];
  v35 = v7;
  v8 = v1[1];
  v30 = *v1;
  v31 = v8;
  v9 = v1[7];
  v45 = v36;
  v46 = v9;
  v41 = v32;
  v42 = v6;
  v43 = v34;
  v44 = v2;
  v38 = *(v1 + 16);
  v47 = *(v1 + 16);
  v39 = v30;
  v40 = v4;
  v10 = 0;
  if (sub_20CFF743C(&v39) != 1)
  {
    v11 = OBJC_IVAR___HUBaseIconView_configurationWrapper;
    v12 = *(v0 + OBJC_IVAR___HUBaseIconView_configurationWrapper);
    if (v12)
    {
      v13 = *(v0 + OBJC_IVAR___HUBaseIconView_configurationWrapper);
      v10 = v13;
    }

    else
    {
      v14 = type metadata accessor for BaseIconView.__Configuration();
      v15 = objc_allocWithZone(v14);
      v16 = &v15[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
      *v16 = v39;
      v17 = v43;
      v19 = v40;
      v18 = v41;
      *(v16 + 3) = v42;
      *(v16 + 4) = v17;
      *(v16 + 1) = v19;
      *(v16 + 2) = v18;
      v21 = v45;
      v20 = v46;
      v22 = v44;
      *(v16 + 16) = v47;
      *(v16 + 6) = v21;
      *(v16 + 7) = v20;
      *(v16 + 5) = v22;
      v28[6] = v36;
      v28[7] = v37;
      v29 = v38;
      v28[2] = v32;
      v28[3] = v33;
      v28[4] = v34;
      v28[5] = v35;
      v28[0] = v30;
      v28[1] = v31;
      sub_20CFDAFC8(v28, v27);
      v26.receiver = v15;
      v26.super_class = v14;
      v10 = objc_msgSendSuper2(&v26, sel_init);
      v13 = 0;
      v12 = *(v0 + v11);
    }

    *(v0 + v11) = v10;
    v23 = v13;
    v24 = v10;
  }

  return v10;
}

void BaseIconView.__configuration.setter(uint64_t a1)
{
  if (a1)
  {
    v25 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration);
    v3 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 64);
    v5 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 16);
    v4 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 32);
    v28 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 48);
    v29 = v3;
    v26 = v5;
    v27 = v4;
    v7 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 96);
    v6 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 112);
    v8 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 80);
    v33 = *(a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 128);
    v31 = v7;
    v32 = v6;
    v30 = v8;
    memmove(&__dst, (a1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration), 0x88uLL);
    CGSizeMake(&__dst);
    sub_20CFDAFC8(&v25, &v43);
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v43 = __dst;
    v44 = v35;
  }

  else
  {
    sub_20CFDAF0C(&v43);
  }

  v9 = v1 + OBJC_IVAR___HUBaseIconView_configuration;
  swift_beginAccess();
  v10 = *(v9 + 80);
  v11 = *(v9 + 112);
  v31 = *(v9 + 96);
  v32 = v11;
  v12 = *(v9 + 16);
  v13 = *(v9 + 48);
  v27 = *(v9 + 32);
  v28 = v13;
  v14 = *(v9 + 48);
  v15 = *(v9 + 80);
  v29 = *(v9 + 64);
  v30 = v15;
  v16 = *(v9 + 16);
  v25 = *v9;
  v26 = v16;
  v17 = *(v9 + 112);
  v40 = v31;
  v41 = v17;
  v36 = v27;
  v37 = v14;
  v38 = v29;
  v39 = v10;
  v33 = *(v9 + 128);
  v42 = *(v9 + 128);
  __dst = v25;
  v35 = v12;
  v18 = v48;
  *(v9 + 64) = v47;
  *(v9 + 80) = v18;
  v19 = v50;
  *(v9 + 96) = v49;
  *(v9 + 112) = v19;
  *(v9 + 128) = v51;
  v20 = v46;
  *(v9 + 32) = v45;
  *(v9 + 48) = v20;
  v21 = v44;
  *v9 = v43;
  *(v9 + 16) = v21;
  sub_20CEF9178(&v25, v23, &qword_27C81F350);
  sub_20CEF928C(&__dst, &qword_27C81F350);
  v23[6] = v31;
  v23[7] = v32;
  v24 = v33;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v23[0] = v25;
  v23[1] = v26;
  sub_20D077000(v23);
  sub_20CEF928C(&v25, &qword_27C81F350);
  v22 = *(v1 + OBJC_IVAR___HUBaseIconView_configurationWrapper);
  *(v1 + OBJC_IVAR___HUBaseIconView_configurationWrapper) = a1;
}

uint64_t BaseIconView.__Configuration.appearance.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration);
  v4 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 32);
  v5 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration);
  v26 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 16);
  v27[0] = v4;
  *(v27 + 10) = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 42);
  v25[0] = v4;
  *(v25 + 10) = *(v27 + 10);
  v6 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 48);
  v7 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 64);
  v28[2] = v4;
  v28[3] = v6;
  v8 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 80);
  v9 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 112);
  v29 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 96);
  v30 = v9;
  v10 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 48);
  v11 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 80);
  v28[4] = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 64);
  v28[5] = v11;
  v28[0] = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration);
  v28[1] = v26;
  v12 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 112);
  v48 = v29;
  v49 = v12;
  v44 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 32);
  v45 = v10;
  v13 = v26;
  v31 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 128);
  v50 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 128);
  v46 = v7;
  v47 = v8;
  v42 = v5;
  v43 = v26;
  *&v32 = v26;
  *(&v32 + 1) = a1;
  v33[0] = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 32);
  *(v33 + 10) = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 42);
  v23 = v32;
  v24[0] = v33[0];
  *(v24 + 10) = *(v33 + 10);
  sub_20CFD7ED4(&v26, v40);
  sub_20CFDAFC8(v28, v40);
  sub_20CFD7ED4(&v32, v40);
  BaseIconView.Configuration.updated(with:)(&v23, v40);
  v34 = v23;
  v35[0] = v24[0];
  *(v35 + 10) = *(v24 + 10);
  sub_20CFDAF98(&v34);
  v36[6] = v48;
  v36[7] = v49;
  v37 = v50;
  v36[2] = v44;
  v36[3] = v45;
  v36[4] = v46;
  v36[5] = v47;
  v36[0] = v42;
  v36[1] = v43;
  sub_20CFF7478(v36);
  v38[0] = v13;
  v38[1] = a1;
  v39[0] = v25[0];
  *(v39 + 10) = *(v25 + 10);
  sub_20CFDAF98(v38);
  v14 = v3[7];
  v48 = v3[6];
  v49 = v14;
  v50 = *(v3 + 16);
  v15 = v3[3];
  v44 = v3[2];
  v45 = v15;
  v16 = v3[5];
  v46 = v3[4];
  v47 = v16;
  v17 = v3[1];
  v42 = *v3;
  v43 = v17;
  v18 = v40[5];
  v3[4] = v40[4];
  v3[5] = v18;
  v19 = v40[7];
  v3[6] = v40[6];
  v3[7] = v19;
  *(v3 + 16) = v41;
  v20 = v40[3];
  v3[2] = v40[2];
  v3[3] = v20;
  v21 = v40[1];
  *v3 = v40[0];
  v3[1] = v21;
  return sub_20CFF7478(&v42);
}

uint64_t (*BaseIconView.__Configuration.appearance.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 24);
  a1[1] = v1;
  return sub_20CFF6DF8;
}

id BaseIconView.__Configuration.init(item:appearance:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v7 = *MEMORY[0x277D13E88];
  v8 = a1;
  MEMORY[0x20F31D7A0](v31, v7);
  if (!v31[3])
  {

    sub_20CEF928C(v32, &unk_27C81EB60);
    v12 = &qword_27C81BF00;
    v13 = v31;
LABEL_8:
    sub_20CEF928C(v13, v12);
    swift_deallocPartialClassInstance();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v12 = &unk_27C81EB60;
    v13 = v32;
    goto LABEL_8;
  }

  v9 = v30;
  sub_20CEF9178(v32, v25, &unk_27C81EB60);
  v10 = v8;
  sub_20CFD8D74(v10, a2, v25, &v28);
  MEMORY[0x20F31D7A0](v27, v7);
  if (!v27[3])
  {
    sub_20CEF928C(v27, &qword_27C81BF00);
    goto LABEL_10;
  }

  sub_20CFF74CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 1;
LABEL_11:
  v23 = v28;
  v24[0] = v29[0];
  *(v24 + 10) = *(v29 + 10);
  sub_20CFD7ED4(&v28, v25);
  sub_20CFD910C(v11, v9, &v23, v25);
  sub_20CFDAF98(&v28);

  sub_20CEF928C(v32, &unk_27C81EB60);
  v15 = v26;
  v16 = v25[0];
  v17 = v25[1];
  v18 = v25[2];
  v19 = &v3[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
  *v19 = v11;
  *(v19 + 1) = 0;
  v20 = v29[0];
  *(v19 + 1) = v28;
  *(v19 + 2) = v20;
  *(v19 + 42) = *(v29 + 10);
  *(v19 + 8) = v9;
  *(v19 + 9) = 0x4045000000000000;
  *(v19 + 5) = v16;
  *(v19 + 6) = v17;
  *(v19 + 7) = v18;
  *(v19 + 16) = v15;
  v22.receiver = v3;
  v22.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v22, sel_init);

  return v21;
}

id BaseIconView.__Configuration.copy(with:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration;
  v5 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 80);
  v6 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 112);
  v31[4] = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 96);
  v31[5] = v6;
  v7 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 48);
  v8 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 64);
  v9 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 16);
  v31[0] = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 32);
  v31[1] = v7;
  v32 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 128);
  v31[2] = v8;
  v31[3] = v5;
  v10 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 16);
  v29 = *(v1 + OBJC_IVAR___HUBaseIconViewConfiguration_configuration);
  v30 = v10;
  v11 = *(&v29 + 1);
  v12 = v29;
  v13 = *(v4 + 32);
  v27 = v9;
  v28[0] = v13;
  *(v28 + 10) = *(v4 + 42);
  swift_unknownObjectRetain();
  sub_20CFDAFC8(&v29, v25);
  v14 = v11;
  sub_20CFD7ED4(&v30, v25);
  sub_20CFD910C(v12, a1, &v27, v25);
  sub_20CFF7478(&v29);
  v15 = v26;
  v22 = v25[0];
  v23 = v25[2];
  v21 = v25[1];
  v33 = v30;
  v34[0] = v31[0];
  *(v34 + 10) = *(v31 + 10);
  swift_unknownObjectRetain();
  v16 = objc_allocWithZone(ObjectType);
  v17 = &v16[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
  *v17 = __PAIR128__(v11, v12);
  v18 = v34[0];
  *(v17 + 1) = v33;
  *(v17 + 2) = v18;
  *(v17 + 3) = v34[1];
  *(v17 + 8) = a1;
  *(v17 + 9) = 0x4045000000000000;
  *(v17 + 5) = v22;
  *(v17 + 6) = v21;
  *(v17 + 7) = v23;
  *(v17 + 16) = v15;
  v24.receiver = v16;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, sel_init);
  swift_unknownObjectRelease();
  return v19;
}

id BaseIconView.__Configuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseIconView.__Configuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFF743C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_20CFF74CC()
{
  result = qword_28111FE00;
  if (!qword_28111FE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FE00);
  }

  return result;
}

uint64_t sub_20CFF7650()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CFF76B0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUAccessoryTileCell_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

void sub_20CFF7748(id *a1, uint64_t *a2)
{
  v7 = *a1;
  v2 = *a2;
  v3 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {

    v6 = v7;
  }
}

void *sub_20CFF77E8()
{
  v1 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CFF7834(void *a1)
{
  v3 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
  }
}

void (*sub_20CFF78AC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_20CFF7948;
}

void sub_20CFF7948(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v7)
    {
      v8 = v3;
      [v7 removeFromSuperview];

      v9 = *v4;
    }

    else
    {
      v9 = v3;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v9 = v3;
    [v7 removeFromSuperview];
  }

LABEL_8:

  free(v2);
}

uint64_t sub_20CFF7A44()
{
  v1 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_20CFF7B58()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AccessoryTileCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v1 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  swift_beginAccess();
  v0[v1] = 0;
  v2 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v3 = *&v0[v2];
  *&v0[v2] = 0;
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  *&v0[OBJC_IVAR___HUAccessoryTileCell_showActivityAfterDelayWorkItem] = 0;

  *&v0[OBJC_IVAR___HUAccessoryTileCell_showUpdatingAfterDelayWorkItem] = 0;

  v5 = v0[OBJC_IVAR___HUAccessoryTileCell_showingActivity];
  v0[OBJC_IVAR___HUAccessoryTileCell_showingActivity] = 0;
  if (v5 == 1)
  {
    result = [v0 setNeedsUpdateConfiguration];
  }

  v6 = v0[OBJC_IVAR___HUAccessoryTileCell_showingUpdating];
  v0[OBJC_IVAR___HUAccessoryTileCell_showingUpdating] = 0;
  if (v6 == 1)
  {
    return [v0 setNeedsUpdateConfiguration];
  }

  return result;
}

void sub_20CFF7CB4(uint64_t a1)
{
  v2 = v1;
  if (qword_28111FDC0 != -1)
  {
    swift_once();
  }

  sub_20D5660D8();
  sub_20D566078();
  if (!v15)
  {
    sub_20CFF9B5C(v14);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = v13;
LABEL_8:
  sub_20CFF8274(v4);
  *(a1 + 273) = *(v1 + OBJC_IVAR___HUAccessoryTileCell_showingActivity);
  v5 = [objc_opt_self() sharedDispatcher];
  v6 = [v5 homeManager];

  if (v6)
  {
    v7 = [v6 hasOptedToHH2];

    if (v7)
    {
      v8 = OBJC_IVAR___HUTileCell_item;
      swift_beginAccess();
      v9 = *(v2 + v8);
      if (v9)
      {
        LOBYTE(v9) = [v9 loadingState] == 1;
      }

      sub_20CFF7ED8(v9);
      if (*(v2 + OBJC_IVAR___HUAccessoryTileCell_showingUpdating) == 1)
      {
        v10 = sub_20D5677F8();
        v11 = HFLocalizedString();

        if (!v11)
        {
          sub_20D567838();
          v11 = sub_20D5677F8();
        }

        v12 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

        *(a1 + 144) = v12;
      }
    }
  }
}

id sub_20CFF7ED8(char a1)
{
  v2 = v1;
  v4 = sub_20D567698();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = sub_20D567648();
  MEMORY[0x28223BE20](v11);
  v12 = OBJC_IVAR___HUAccessoryTileCell_showUpdatingAfterDelayWorkItem;
  v13 = *&v1[OBJC_IVAR___HUAccessoryTileCell_showUpdatingAfterDelayWorkItem];
  if (a1)
  {
    if (!v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      aBlock[4] = sub_20CFF9DF8;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CFFFE8C;
      aBlock[3] = &block_descriptor_24;
      v21[0] = _Block_copy(aBlock);
      v21[1] = MEMORY[0x277D84F90];
      sub_20CFF9E3C(&qword_281120070, MEMORY[0x277D85198]);
      v15 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0);
      sub_20CFC41D0();
      sub_20D5686B8();
      sub_20D5676C8();
      swift_allocObject();
      v16 = sub_20D5676A8();

      *&v2[v12] = v16;

      sub_20CECF940(0, &qword_28111FF30);
      v17 = sub_20D567FC8();
      sub_20D567688();
      sub_20D5676D8();
      v18 = *(v5 + 8);
      result = v18(v8, v4);
      if (*&v2[v12])
      {

        sub_20D567FA8();

        return v18(v10, v4);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (!v13)
  {
    goto LABEL_7;
  }

  sub_20D5676B8();

LABEL_7:
  *&v1[v12] = 0;

  v20 = v1[OBJC_IVAR___HUAccessoryTileCell_showingUpdating];
  v1[OBJC_IVAR___HUAccessoryTileCell_showingUpdating] = 0;
  if (v20 == 1)
  {

    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_20CFF8274(char a1)
{
  v2 = v1;
  v4 = sub_20D567698();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = sub_20D567648();
  MEMORY[0x28223BE20](v11);
  v12 = OBJC_IVAR___HUAccessoryTileCell_showActivityAfterDelayWorkItem;
  v13 = *&v1[OBJC_IVAR___HUAccessoryTileCell_showActivityAfterDelayWorkItem];
  if (a1)
  {
    if (!v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      aBlock[4] = sub_20CFF9E84;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CFFFE8C;
      aBlock[3] = &block_descriptor_42;
      v21[0] = _Block_copy(aBlock);
      v21[1] = MEMORY[0x277D84F90];
      sub_20CFF9E3C(&qword_281120070, MEMORY[0x277D85198]);
      v15 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F1F0);
      sub_20CFC41D0();
      sub_20D5686B8();
      sub_20D5676C8();
      swift_allocObject();
      v16 = sub_20D5676A8();

      *&v2[v12] = v16;

      sub_20CECF940(0, &qword_28111FF30);
      v17 = sub_20D567FC8();
      sub_20D567688();
      sub_20D5676D8();
      v18 = *(v5 + 8);
      result = v18(v8, v4);
      if (*&v2[v12])
      {

        sub_20D567FA8();

        return v18(v10, v4);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (!v13)
  {
    goto LABEL_7;
  }

  sub_20D5676B8();

LABEL_7:
  *&v1[v12] = 0;

  v20 = v1[OBJC_IVAR___HUAccessoryTileCell_showingActivity];
  v1[OBJC_IVAR___HUAccessoryTileCell_showingActivity] = 0;
  if (v20 == 1)
  {

    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_20CFF8610(_BYTE *a1, void *a2, void *a3)
{
  v5 = a1[*a2];
  a1[*a2] = 1;
  if ((v5 & 1) == 0)
  {
    [a1 setNeedsUpdateConfiguration];
  }

  *&a1[*a3] = 0;
}

void sub_20CFF8674(unsigned __int8 a1, char a2)
{
  v5 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  swift_beginAccess();
  v2[v5] = a1;
  v6 = a1 ^ 1;
  if (((a1 ^ 1) & 1) == 0)
  {
    v7 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
    swift_beginAccess();
    if (!*&v2[v7])
    {
      v8 = [objc_allocWithZone(type metadata accessor for TileCellToggleSizeButton()) init];
      [v8 addTarget:v2 action:sel_tileSizeButtonTappedWithSender_ forControlEvents:64];
      v9 = *&v2[v7];
      *&v2[v7] = v8;
      if (v9)
      {
        v10 = v8;
        [v9 removeFromSuperview];
      }

      else
      {
        v11 = v8;
      }

      [v8 setHidden_];
      [v2 addSubview_];
      sub_20CFF8AC8();
      sub_20CFF8E64();
    }
  }

  v12 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13)
  {
    v14 = v13;
    sub_20D000BA8(v6 & 1, a2 & 1);
  }
}

id sub_20CFF883C(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8)
  {
    v9 = *&v3[v7];
    v10 = v8;
    if ([v10 isHidden])
    {
    }

    else
    {
      [v3 convertPoint:v10 toCoordinateSpace:{a2, a3}];
      v11 = [v10 pointInside:a1 withEvent:?];

      result = v9;
      if (v11)
      {
        return result;
      }
    }
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for AccessoryTileCell();
  return objc_msgSendSuper2(&v13, sel_hitTest_withEvent_, a1, a2, a3);
}

void sub_20CFF8AC8()
{
  v1 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR___HUTileCell_item;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = objc_allocWithZone(type metadata accessor for CollectionLayoutManager());
      v6 = v2;
      v7 = v4;
      v8 = [v5 init];
      (*((*MEMORY[0x277D85000] & *v8) + 0x128))(v7);

      v9 = sub_20D567838();
      v11 = v10;
      if (v9 == sub_20D567838() && v11 == v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_20D568BF8();
      }

      v24 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
      swift_beginAccess();
      v6[v24] = v14 & 1;
      v25 = *&v6[OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView];
      v26 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
      swift_beginAccess();
      v27 = *&v6[v26];
      v20 = v25;
      v28 = v27;
      v29 = sub_20D5677F8();

      v23 = [objc_opt_self() systemImageNamed:v29 withConfiguration:v28];

      [v20 setImage_];
    }

    else
    {
      v15 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
      swift_beginAccess();
      v2[v15] = 0;
      v16 = *&v2[OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView];
      v17 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
      swift_beginAccess();
      v18 = *&v2[v17];
      v19 = v2;
      v20 = v16;
      v21 = v18;
      v22 = sub_20D5677F8();
      v23 = [objc_opt_self() systemImageNamed:v22 withConfiguration:v21];

      [v20 setImage_];
    }
  }
}

void sub_20CFF8E64()
{
  v1 = v0;
  v2 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 defaultMetrics];
    [v6 scaledValueForValue_];
    v8 = v7;

    v9 = v5;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20D5BC4C0;
    v12 = [v9 leadingAnchor];
    v13 = [v1 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:v8 * -0.75];

    *(v11 + 32) = v14;
    v15 = [v9 bottomAnchor];
    v16 = [v1 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:v8 * 0.75];

    *(v11 + 40) = v17;
    v18 = [v9 widthAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v11 + 48) = v19;
    v20 = [v9 heightAnchor];

    v21 = [v20 constraintEqualToConstant_];
    *(v11 + 56) = v21;
    sub_20CECF940(0, &qword_28111FEC0);
    v22 = sub_20D567A58();

    [v10 activateConstraints_];
  }
}

void sub_20CFF9120(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AccessoryTileCell();
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  v3 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 constraints];
    sub_20CECF940(0, &qword_28111FEC0);
    v7 = sub_20D567A78();

    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x20F31DD20](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        [v10 setActive_];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_20CFF8E64();
  }
}

void sub_20CFF9310()
{
  v1 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    if (([v3 isHidden] & 1) == 0)
    {
      [v3 alpha];
      if (v4 >= 1.0)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = OBJC_IVAR___HUTileCell_item;
          swift_beginAccess();
          v8 = *(v0 + v7);
          [v6 accessoryTileSizeButtonTappedFor:v0 withItem:v8];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_20CFF94DC()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 && (v25 = &unk_28251AC90, (v7 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v8 = v7;
    v9 = v6;
    v10 = [objc_msgSend(v8 accessoryRepresentableObject)];
    swift_unknownObjectRelease();
    v11 = [v10 rawServiceName];

    v12 = sub_20D567838();
    v14 = v13;

    v15 = [v8 accessoryRepresentableObject];
    swift_getObjectType();
    v16 = sub_20D5681A8();
    swift_unknownObjectRelease();
    v17 = [v16 uniqueIdentifier];
    swift_unknownObjectRelease();
    sub_20D5637E8();

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_20D568858();

    v23 = 0x726F737365636361;
    v24 = 0xEF203A656D614E79;
    MEMORY[0x20F31CDB0](v12, v14);

    MEMORY[0x20F31CDB0](0xD000000000000013, 0x800000020D5D1D40);
    sub_20CFF9E3C(&qword_2811209D0, MEMORY[0x277CC95F0]);
    v18 = sub_20D568BB8();
    MEMORY[0x20F31CDB0](v18);

    v19 = v23;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v20 = type metadata accessor for AccessoryTileCell();
    v26.receiver = v0;
    v26.super_class = v20;
    v21 = objc_msgSendSuper2(&v26, sel_description);
    v19 = sub_20D567838();
  }

  return v19;
}

id AccessoryTileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AccessoryTileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton] = 0;
  v4[OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton] = 0;
  *&v4[OBJC_IVAR___HUAccessoryTileCell_showUpdatingAfterDelayWorkItem] = 0;
  v4[OBJC_IVAR___HUAccessoryTileCell_showingUpdating] = 0;
  v4[OBJC_IVAR___HUAccessoryTileCell_showingActivity] = 0;
  *&v4[OBJC_IVAR___HUAccessoryTileCell_showActivityAfterDelayWorkItem] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AccessoryTileCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AccessoryTileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AccessoryTileCell.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton] = 0;
  v1[OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton] = 0;
  *&v1[OBJC_IVAR___HUAccessoryTileCell_showUpdatingAfterDelayWorkItem] = 0;
  v1[OBJC_IVAR___HUAccessoryTileCell_showingUpdating] = 0;
  v1[OBJC_IVAR___HUAccessoryTileCell_showingActivity] = 0;
  *&v1[OBJC_IVAR___HUAccessoryTileCell_showActivityAfterDelayWorkItem] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AccessoryTileCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_20CFF9A5C()
{
  sub_20CEC8088(v0 + OBJC_IVAR___HUAccessoryTileCell_delegate);
}

id AccessoryTileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFF9B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CFF9E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CFF9EEC()
{
  v1 = &v0[OBJC_IVAR___HUTileCell__gridSize];
  if (v0[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    v2 = sub_20D005CF8(v0);
  }

  else
  {
    v2 = *v1;
    v3 = v1[1];
  }

  if (v2 == 1 && v3 == 1)
  {
    return 0;
  }

  else
  {
    return v0[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable];
  }
}

id sub_20CFF9F74(id result)
{
  v2 = v1[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable];
  v1[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = result;
  if (v2 != (result & 1))
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

_BYTE *(*sub_20CFF9FA4(uint64_t a1))(id *a1)
{
  *a1 = v1;
  v3 = &v1[OBJC_IVAR___HUTileCell__gridSize];
  if (v1[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    v4 = sub_20D005CF8(v1);
  }

  else
  {
    v4 = *v3;
    v5 = v3[1];
  }

  if (v4 == 1 && v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v1[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable];
  }

  *(a1 + 8) = v7;
  return sub_20CFFA03C;
}

_BYTE *sub_20CFFA03C(id *a1)
{
  v1 = a1;
  result = *a1;
  LODWORD(v1) = *(v1 + 8);
  v3 = result[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable];
  result[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = v1;
  if (v1 != v3)
  {
    return [result setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_20CFFA070(uint64_t a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_20D568168();
  result = *&v1[OBJC_IVAR___HUTileCell__gridSize];
  v6 = *&v1[OBJC_IVAR___HUTileCell__gridSize + 8];
  if ((v3 & 1) == 0)
  {
    if (v1[OBJC_IVAR___HUTileCell__gridSize + 16])
    {
      result = sub_20D005CF8(v1);
    }

    v8 = result == 1 && v6 == 1;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR___HUTileCell__gridSize + 16])
  {
    result = sub_20D005CF8(v1);
  }

  if (result == 1 && v6 == 1)
  {
    v8 = 1;
LABEL_18:
    *(a1 + 176) = v8;
  }

  return result;
}

__CFString *sub_20CFFA134(CGFloat a1, CGFloat a2)
{
  v3 = &v2[OBJC_IVAR___HUTileCell__gridSize];
  if (v2[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    v4 = a2;
    v5 = a1;
    v6 = sub_20D005CF8(v2);
    a1 = v5;
    a2 = v4;
  }

  else
  {
    v6 = *v3;
    v7 = v3[1];
  }

  if (v6 == 1 && v7 == 1)
  {
    v10 = @"HUTileCellTappableAreaGeneralToggleArea";
    return @"HUTileCellTappableAreaGeneralToggleArea";
  }

  else
  {

    return sub_20D00325C(a1, a2);
  }
}

id ControlCenterAccessoryTileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ControlCenterAccessoryTileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ControlCenterAccessoryTileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ControlCenterAccessoryTileCell.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC6HomeUI30ControlCenterAccessoryTileCell__toggleable] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ControlCenterAccessoryTileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlCenterAccessoryTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CFFA57C(void *__src)
{
  __src[36] = 0;
  memcpy(__dst, __src, sizeof(__dst));
  TileCellContentConfiguration.updateIconViewForLayout()(v14);
  memcpy(v23, __dst, sizeof(v23));
  sub_20CEFFA00(v23);
  v2 = v14[3];
  *(__src + 2) = v14[2];
  *(__src + 3) = v2;
  *(__src + 4) = v14[4];
  v3 = v16;
  v4 = v15;
  v5 = v14[1];
  *__src = v14[0];
  *(__src + 1) = v5;
  __src[10] = v4;
  __src[11] = v3;
  v6 = v17;
  v7 = v19;
  v8 = v21;
  v9 = v20;
  *(__src + 7) = v18;
  *(__src + 8) = v7;
  *(__src + 6) = v6;
  __src[18] = v9;
  __src[19] = v8;
  memcpy(__src + 20, v22, 0x158uLL);
  v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.6];

  __src[19] = v10;
  __src[12] = 0;
  v11 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v11)
  {
    v12 = v11;

    __src[11] = v12;
    *(__src + 32) = 1;
  }

  else
  {
    __break(1u);
  }
}

id GuestAccessTileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GuestAccessTileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for GuestAccessTileCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id GuestAccessTileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GuestAccessTileCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GuestAccessTileCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GuestAccessTileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuestAccessTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFFA9C0(uint64_t a1)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = [*(a1 + 72) string];
    sub_20D567838();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v6 = sub_20D5677F8();

  v7 = [v5 initWithString_];

  v8 = *MEMORY[0x277D74118];
  if (qword_2811207D8 != -1)
  {
    swift_once();
  }

  v9 = qword_2811207E0;
  v10 = v7;
  [v10 addAttribute:v8 value:v9 range:{0, objc_msgSend(v10, sel_length)}];

  *(a1 + 72) = v10;
  *(a1 + 96) = 2;
  v11 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  if (*(v1 + v11) == 1)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.75];

    *(a1 + 8) = v12;
    v13 = [objc_opt_self() whiteColor];

    *(a1 + 80) = v13;
    v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
  }

  else
  {
    v15 = objc_opt_self();
    v16 = [v15 quaternaryLabelColor];

    *(a1 + 8) = v16;
    v17 = [v15 secondaryLabelColor];

    *(a1 + 80) = v17;
    v14 = [v15 tertiaryLabelColor];
  }

  v18 = v14;

  v19 = (a1 + 296);
  v20 = *(a1 + 376);
  v21 = *(a1 + 408);
  v79 = *(a1 + 392);
  v80 = v21;
  v22 = *(a1 + 312);
  v23 = *(a1 + 344);
  v75 = *(a1 + 328);
  v76 = v23;
  v24 = *(a1 + 344);
  v25 = *(a1 + 376);
  v77 = *(a1 + 360);
  v78 = v25;
  v26 = *(a1 + 312);
  v74[0] = *(a1 + 296);
  v27 = v74[0];
  v74[1] = v26;
  v28 = *(a1 + 408);
  v88 = v79;
  v89 = v28;
  v84 = v75;
  v85 = v24;
  v86 = v77;
  v87 = v20;
  *(a1 + 152) = v18;
  v81 = *(a1 + 424);
  v90 = *(a1 + 424);
  v82 = v27;
  v83 = v22;
  result = sub_20CFF743C(&v82);
  if (result != 1)
  {
    v43 = v83;
    v30 = *(&v84 + 1);
    v44 = v84;
    v41 = v85;
    v42 = BYTE8(v85);
    v31 = objc_opt_self();
    sub_20CFFB178(v74, &v59);
    sub_20CFD7ED4(&v83, &v59);
    v32 = [v31 whiteColor];

    v65 = v88;
    v66 = v89;
    v67 = v90;
    v61 = v84;
    v62 = v85;
    v63 = v86;
    v64 = v87;
    v59 = v82;
    v60 = v83;
    v45 = v43;
    *v46 = v44;
    *&v46[8] = v32;
    *&v46[16] = v41;
    v46[24] = v42;
    v46[25] = 1;
    v51 = v43;
    *v52 = *v46;
    *&v52[10] = *&v46[10];
    sub_20CFD7ED4(&v45, v49);
    BaseIconView.Configuration.updated(with:)(&v51, v49);
    v47 = v51;
    v48[0] = *v52;
    *(v48 + 10) = *&v52[10];
    sub_20CFDAF98(&v47);
    sub_20CFFB1E8(v74);
    v56 = v49[6];
    v57 = v49[7];
    v58 = v50;
    *&v52[16] = v49[2];
    v53 = v49[3];
    v54 = v49[4];
    v55 = v49[5];
    v51 = v49[0];
    *v52 = v49[1];
    CGSizeMake(&v51);
    v33 = v19[7];
    v65 = v19[6];
    v66 = v33;
    v67 = *(v19 + 16);
    v34 = v19[3];
    v61 = v19[2];
    v62 = v34;
    v35 = v19[5];
    v63 = v19[4];
    v64 = v35;
    v36 = v19[1];
    v59 = *v19;
    v60 = v36;
    sub_20CFFB1E8(&v59);
    v37 = v57;
    v19[6] = v56;
    v19[7] = v37;
    *(v19 + 16) = v58;
    v38 = v53;
    v19[2] = *&v52[16];
    v19[3] = v38;
    v39 = v55;
    v19[4] = v54;
    v19[5] = v39;
    v40 = *v52;
    *v19 = v51;
    v19[1] = v40;
    v68 = v43;
    v69 = v44;
    v70 = v32;
    v71 = v41;
    v72 = v42;
    v73 = 1;
    return sub_20CFDAF98(&v68);
  }

  return result;
}

id sub_20CFFAE6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v0 setLineBreakMode_];
  [v0 setLineBreakStrategy_];
  result = [v0 setAllowsDefaultTighteningForTruncation_];
  qword_2811207E0 = v0;
  return result;
}

id PlaceholderTileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PlaceholderTileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PlaceholderTileCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PlaceholderTileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlaceholderTileCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaceholderTileCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PlaceholderTileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFFB178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CFFB1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CFFB28C()
{
  v1 = OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFFB2D0(char a1)
{
  v3 = OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_20CFFB3CC()
{
  v1 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CFFB494(void *a1)
{
  v3 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_20CFFB560();
}

void sub_20CFFB4FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_20CFFB560();
}

void sub_20CFFB560()
{
  v1 = OBJC_IVAR___HUSceneTileCell__executeActionSetFuture;
  [*&v0[OBJC_IVAR___HUSceneTileCell__executeActionSetFuture] cancel];
  v2 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    v13 = *&v0[v1];
    *&v0[v1] = 0;
    goto LABEL_8;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D2C900]);
  v5 = v3;
  v6 = [v4 init];
  v7 = *&v0[v1];
  *&v0[v1] = v6;
  v8 = v6;

  if (v8)
  {
    v9 = [v8 completionHandlerAdapter];

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v25 = sub_20CFFCCE4;
    v26 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20D0EB4F0;
    v24 = &block_descriptor_25;
    v11 = _Block_copy(&aBlock);

    v12 = [v5 addCompletionBlock_];
    _Block_release(v11);

    v13 = [v0 contentView];
    type metadata accessor for TileCellContentView();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = *&v0[v1];
    if (v15)
    {
      v16 = *(v14 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
      v25 = sub_20CFF029C;
      v26 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_20D02C760;
      v24 = &block_descriptor_24_0;
      v17 = _Block_copy(&aBlock);
      v18 = v16;
      v19 = v15;
      v20 = [v19 flatMap_];
      _Block_release(v17);

      BaseIconView.startProgress(future:)(v20);
      v13 = v20;
LABEL_8:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20CFFB804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_20D5635C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void (*sub_20CFFB874(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CFFB8D8;
}

void sub_20CFFB8D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_20CFFB560();
  }
}

void sub_20CFFB90C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___HUTileCell__gridSize];
  if (v1[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    v5 = sub_20D005CF8(v1);
  }

  else
  {
    v5 = *v4;
    v6 = v4[1];
  }

  if (v5 == 1 && v6 == 1)
  {
    *(a1 + 32) = 1;
    *(a1 + 176) = 1;
    *(a1 + 104) = 1;
    memcpy(__dst, a1, 0x1F8uLL);
    memcpy(__src, a1, 0x1F8uLL);
    sub_20CFFCAE4(__dst, v55);
    TileCellContentConfiguration.updateIconViewForLayout()(v55);
    memcpy(v54, __src, sizeof(v54));
    sub_20CEFFA00(v54);
    memcpy(__src, a1, 0x1F8uLL);
    sub_20CEFFA00(__src);
    v13 = v55;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.6];

    *(a1 + 152) = v8;
    v9 = *(a1 + 192);
    __src[2] = *(a1 + 176);
    __src[3] = v9;
    LOBYTE(__src[4]) = *(a1 + 208);
    v10 = *(a1 + 144);
    __src[1] = *(a1 + 160);
    __src[0] = v10;
    if (sub_20D0174F4())
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 96) = v11;
    *(a1 + 32) = 1;
    *(a1 + 176) = 0;
    *(a1 + 104) = 0;
    v12 = OBJC_IVAR___HUTileCell_appContext;
    swift_beginAccess();
    if (v2[v12] == 2)
    {
      *(a1 + 121) = 1;
      goto LABEL_16;
    }

    *(a1 + 288) = 0;
    memcpy(v54, a1, sizeof(v54));
    TileCellContentConfiguration.updateIconViewForLayout()(__src);
    memcpy(v55, v54, 0x1F8uLL);
    sub_20CEFFA00(v55);
    v13 = __src;
  }

  memcpy(a1, v13, 0x1F8uLL);
LABEL_16:
  v14 = [objc_opt_self() whiteColor];
  v15 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (!v16)
  {
    memset(__src, 0, 32);
    goto LABEL_26;
  }

  v17 = *MEMORY[0x277D13F58];
  v18 = v16;
  MEMORY[0x20F31D7A0](__src, v17);

  if (!*(&__src[1] + 1))
  {
LABEL_26:
    v20 = &qword_27C81BF00;
LABEL_27:
    sub_20CEF928C(__src, v20);
    goto LABEL_28;
  }

  sub_20CECF940(0, &qword_28111FB60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = *&v55[0];
  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  sub_20D5660D8();
  sub_20D566078();
  if (!*(&__src[1] + 1))
  {

    v20 = &unk_27C81C7A0;
    goto LABEL_27;
  }

  if (swift_dynamicCast() & 1) != 0 && (v55[0])
  {

    v14 = v19;
  }

  else
  {
  }

LABEL_28:
  v21 = (a1 + 296);
  *&__src[8] = *(a1 + 424);
  v22 = *(a1 + 408);
  __src[6] = *(a1 + 392);
  __src[7] = v22;
  v23 = *(a1 + 344);
  __src[2] = *(a1 + 328);
  __src[3] = v23;
  v24 = *(a1 + 360);
  __src[5] = *(a1 + 376);
  __src[4] = v24;
  v25 = *(a1 + 296);
  __src[1] = *(a1 + 312);
  __src[0] = v25;
  if (sub_20CFF743C(__src) != 1)
  {
    v26 = *(a1 + 416);
    if (v26 < 0)
    {
      v27 = *(a1 + 376);
      v28 = *(a1 + 384);
      v30 = *(a1 + 400);
      v29 = *(a1 + 408);
      v31 = *(a1 + 424);
      v32 = *(a1 + 392);
      __dst[504] = v32 & 1;
      v51 = (v26 >> 8) & 1;
      v52 = v26 & 1;
      v50 = v32 & 1;
      v33 = v14;
      sub_20CFD9D60(v27, v28, v32, v30, v29, v26);

      v34 = *(a1 + 408);
      v55[6] = *(a1 + 392);
      v55[7] = v34;
      *&v55[8] = *(a1 + 424);
      v35 = *(a1 + 344);
      v55[2] = *(a1 + 328);
      v55[3] = v35;
      v36 = *(a1 + 360);
      v55[5] = *(a1 + 376);
      v55[4] = v36;
      v37 = *v21;
      v55[1] = *(a1 + 312);
      v55[0] = v37;
      if (sub_20CFF743C(v55) != 1)
      {
        v54[0] = v27;
        v54[1] = v28;
        LOBYTE(v54[2]) = v32 & 1;
        v54[3] = v14;
        v54[4] = v29;
        LOWORD(v54[5]) = v26 & 0x101;
        v54[6] = v31;
        v48 = v26 & 0x101 | 0x8000000000000000;
        v49 = v54[2];
        v38 = *(a1 + 376);
        v39 = *(a1 + 384);
        v40 = *(a1 + 392);
        v46 = *(a1 + 408);
        v47 = *(a1 + 400);
        v45 = *(a1 + 416);
        sub_20CFFCA34(v54, __dst);
        sub_20CFD9DD8(v38, v39, v40, v47, v46, v45);
        *(a1 + 376) = v27;
        *(a1 + 384) = v28;
        *(a1 + 392) = v49;
        *(a1 + 400) = v14;
        *(a1 + 408) = v29;
        *(a1 + 416) = v48;
        *(a1 + 424) = v31;
      }

      v54[0] = v27;
      v54[1] = v28;
      LOBYTE(v54[2]) = v50;
      v54[3] = v14;
      v54[4] = v29;
      LOBYTE(v54[5]) = v52;
      BYTE1(v54[5]) = v51;
      v54[6] = v31;
      sub_20CFFCA90(v54);
    }
  }

  v41 = *(a1 + 408);
  v55[6] = *(a1 + 392);
  v55[7] = v41;
  *&v55[8] = *(a1 + 424);
  v42 = *(a1 + 344);
  v55[2] = *(a1 + 328);
  v55[3] = v42;
  v43 = *(a1 + 360);
  v55[5] = *(a1 + 376);
  v55[4] = v43;
  v44 = *v21;
  v55[1] = *(a1 + 312);
  v55[0] = v44;
  if (sub_20CFF743C(v55) == 1)
  {
  }

  else
  {

    *(a1 + 304) = v14;
  }
}

uint64_t sub_20CFFBF08()
{
  v1 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20CFFBFA4(char a1)
{
  v3 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    v4 = OBJC_IVAR___HUTileCell_reorderable;
    swift_beginAccess();
    v5 = v1[v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 layer];
  [v1 frame];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetHeight(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetWidth(v12);
  sub_20D0F0088(v5, v6);

  sub_20CFFC4AC();
}

uint64_t (*sub_20CFFC0D0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_20D0036B8(v3);
  return sub_20CFFCD0C;
}

uint64_t sub_20CFFC190()
{
  v1 = OBJC_IVAR___HUTileCell_reorderable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20CFFC22C(char a1)
{
  v3 = OBJC_IVAR___HUTileCell_reorderable;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  LOBYTE(v4) = v1[v4] & a1;
  v5 = [v1 layer];
  [v1 frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetHeight(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetWidth(v11);
  sub_20D0F0088(v4 & 1, v5);

  sub_20CFFC4AC();
}

uint64_t (*sub_20CFFC350(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_20D003A14(v3);
  return sub_20CFFC3C4;
}

void sub_20CFFC3C8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_20CFFC4AC();
  }

  free(v3);
}

void sub_20CFFC424()
{
  [v0 setNeedsUpdateConfiguration];

  sub_20CFFC4AC();
}

void sub_20CFFC4AC()
{
  v1 = OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable;
  swift_beginAccess();
  v2 = 1.0;
  if (v0[v1] == 1)
  {
    v3 = OBJC_IVAR___HUTileCell_isRearranging;
    swift_beginAccess();
    if (v0[v3] == 1)
    {
      v4 = OBJC_IVAR___HUTileCell_reorderable;
      swift_beginAccess();
      if (v0[v4])
      {
        v2 = 1.0;
      }

      else
      {
        v2 = 0.62;
      }
    }
  }

  v5 = [v0 subviews];
  sub_20CECF940(0, &qword_28111FB70);
  v6 = sub_20D567A78();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_15:

    return;
  }

  v7 = sub_20D568768();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F31DD20](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 layer];
      *&v12 = v2;
      [v11 setOpacity_];
    }

    while (v7 != v8);
    goto LABEL_15;
  }

  __break(1u);
}

id SceneTileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SceneTileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable] = 1;
  *&v4[OBJC_IVAR___HUSceneTileCell__executeActionSetFuture] = 0;
  *&v4[OBJC_IVAR___HUSceneTileCell_executeActionSetFuture] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SceneTileCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SceneTileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SceneTileCell.init(coder:)(void *a1)
{
  v1[OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable] = 1;
  *&v1[OBJC_IVAR___HUSceneTileCell__executeActionSetFuture] = 0;
  *&v1[OBJC_IVAR___HUSceneTileCell_executeActionSetFuture] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SceneTileCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_20CFFC974()
{
  v1 = *(v0 + OBJC_IVAR___HUSceneTileCell_executeActionSetFuture);
}

id SceneTileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CFFCD10(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_20CFFCD70()
{
  v1 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t TileCellBackgroundView.MaterialStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20CFFCED0()
{
  v1 = OBJC_IVAR___HUTileCellBackgroundView_materialStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_20CFFCF14()
{
  v1 = OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_20CFFCF8C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_20CFFCFF4(v5);
}

void sub_20CFFCFF4(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
    [v1 addSubview_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20D5BC4C0;
    v7 = [v1 leadingAnchor];
    v8 = [v4 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v6 + 32) = v9;
    v10 = [v1 trailingAnchor];
    v11 = [v4 trailingAnchor];

    v12 = [v10 constraintEqualToAnchor_];
    *(v6 + 40) = v12;
    v13 = [v1 topAnchor];
    v14 = [v4 topAnchor];

    v15 = [v13 constraintEqualToAnchor_];
    *(v6 + 48) = v15;
    v16 = [v1 bottomAnchor];
    v17 = [v4 bottomAnchor];

    v18 = [v16 constraintEqualToAnchor_];
    *(v6 + 56) = v18;
    sub_20CF0AC18();
    v19 = sub_20D567A58();

    [v5 activateConstraints_];
  }
}

void *sub_20CFFD29C()
{
  v1 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CFFD2E8(void *a1)
{
  v3 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_20CFFCFF4(v4);
}

void (*sub_20CFFD354(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_20CFFD3F0;
}

void sub_20CFFD3F0(uint64_t a1, char a2)
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
    sub_20CFFCFF4(v8);

    v8 = *v5;
  }

  else
  {
    sub_20CFFCFF4(v8);
  }

  free(v3);
}

id sub_20CFFD48C()
{
  v1 = OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___controlCenterMaterialView;
  v2 = *(v0 + OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___controlCenterMaterialView);
  v3 = v2;
  if (v2 == 1)
  {
    if ([objc_opt_self() shouldUseControlCenterMaterials])
    {
      _s25ControlCenterMaterialViewCMa();
      v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_20CFFE8CC(v4);
  }

  sub_20CFFE8DC(v2);
  return v3;
}

id TileCellBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TileCellBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___HUTileCellBackgroundView_materialStyle] = 0;
  *&v4[OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView] = 0;
  *&v4[OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___controlCenterMaterialView] = 1;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TileCellBackgroundView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_20CFFCF14();
  [v9 addSubview_];

  v11 = sub_20CFFD48C();
  if (v11)
  {
    v12 = v11;
    [v9 addSubview_];
  }

  return v9;
}

id TileCellBackgroundView.__allocating_init(effectIdentifier:effectGrouper:materialStyle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithFrame_];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v6;
  sub_20CFFE02C(a1, Strong, a3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

id TileCellBackgroundView.init(effectIdentifier:effectGrouper:materialStyle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 initWithFrame_];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v6;
  sub_20CFFE02C(a1, Strong, a3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

id TileCellBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TileCellBackgroundView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HUTileCellBackgroundView_materialStyle] = 0;
  *&v1[OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView] = 0;
  *&v1[OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView] = 0;
  *&v1[OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___controlCenterMaterialView] = 1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TileCellBackgroundView();
  v3 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_20CFFCF14();
    [v5 addSubview_];

    v7 = sub_20CFFD48C();
    if (v7)
    {
      v8 = v7;
      [v5 addSubview_];
    }
  }

  return v4;
}

id TileCellBackgroundView.__deallocating_deinit()
{
  v1 = sub_20CFFCF14();
  v2 = [v1 _captureSource];

  if (v2)
  {
    [v2 _removeCaptureDependent_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for TileCellBackgroundView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20CFFDD34()
{
  v1 = sub_20CFFCF14();
  v2 = [v1 _captureSource];

  if (v2)
  {
    [v2 _removeCaptureDependent_];
  }

  v3 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;
}

uint64_t sub_20CFFDE18(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_20CFFE02C(a1, Strong, a2);
  return swift_unknownObjectRelease();
}

void sub_20CFFDF24(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v4 = Strong;
      swift_unknownObjectRelease();
      if (v4 == a1)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }

    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = v6;
    sub_20CFFE02C(v7, a1, 0);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v8 = sub_20CFFCF14();
    v7 = [v8 _captureSource];

    if (!v7)
    {
      return;
    }

    [v7 _removeCaptureDependent_];
  }
}

void sub_20CFFE02C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v59 = a1;
  v6 = sub_20D564758();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = &selRef__cancelLanguageSetupWithoutWarningUser;
  if (a2)
  {
    if (Strong)
    {
      v12 = Strong;
      swift_unknownObjectRelease();
      if (v12 == a2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  v13 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (v14)
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = v14;
      v18 = sub_20CFFCF14();
      [v16 backgroundEffectRemoveCaptureDependent:v18 forBackgroundEffectIdentifier:v17];

      v11 = &selRef__cancelLanguageSetupWithoutWarningUser;
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectWeakAssign();
  v19 = *(v4 + v13);
  *(v4 + v13) = 0;

  v20 = sub_20CFFCF14();
  v21 = [v20 v11[3]];

  if (v21)
  {
    [v21 _removeCaptureDependent_];
  }

LABEL_12:
  v22 = sub_20CFFD48C();
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = v22;
  _s25ControlCenterMaterialViewCMa();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
LABEL_28:

    v11 = &selRef__cancelLanguageSetupWithoutWarningUser;
LABEL_29:
    v47 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
    swift_beginAccess();
    v27 = v59;
    if (!*(v4 + v47))
    {
      goto LABEL_35;
    }

    v48 = sub_20D567838();
    v50 = v49;
    if (v48 == sub_20D567838() && v50 == v51)
    {
    }

    else
    {
      v53 = sub_20D568BF8();

      if ((v53 & 1) == 0)
      {
LABEL_35:
        if (!a2)
        {
          v54 = sub_20CFFCF14();
          [v54 hu:v27 configureEffectForIdentifier:?];
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:
        swift_unknownObjectRetain();
        v54 = sub_20CFFCF14();
        [a2 backgroundEffectAddCaptureDependent:v54 forBackgroundEffectIdentifier:v27];
        swift_unknownObjectRelease();
        goto LABEL_41;
      }
    }

    v55 = sub_20CFFCF14();
    v54 = [v55 v11[3]];

    if (v54)
    {
      goto LABEL_41;
    }

    if (!a2)
    {
LABEL_42:
      v45 = *(v4 + v47);
      *(v4 + v47) = v27;
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v25 = v24;
  (*(v7 + 104))(v9, *MEMORY[0x277D166A8], v6);
  sub_20CFFE5CC();
  v26 = sub_20D563978();
  (*(v7 + 8))(v9, v6);
  if (v26)
  {
    v27 = v59;
    goto LABEL_20;
  }

  v28 = sub_20D567838();
  v30 = v29;
  if (v28 == sub_20D567838() && v30 == v31)
  {

    v27 = v59;
    goto LABEL_20;
  }

  v32 = sub_20D568BF8();

  v27 = v59;
  if ((v32 & 1) == 0)
  {
    [v25 setHidden_];
    v46 = sub_20CFFCF14();
    [v46 setHidden_];

    v23 = v46;
    goto LABEL_28;
  }

LABEL_20:
  [v25 setHidden_];
  v33 = sub_20D567838();
  v35 = v34;
  if (v33 == sub_20D567838() && v35 == v36)
  {

    v37 = 0;
  }

  else
  {
    v38 = sub_20D568BF8();

    v37 = v38 ^ 1;
  }

  sub_20CFFEF9C(v37 & 1, v58 == 1);
  v39 = sub_20CFFCF14();
  [v39 setHidden_];

  v40 = OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView;
  v41 = [*(v4 + OBJC_IVAR___HUTileCellBackgroundView____lazy_storage___visualEffectView) _captureSource];
  if (v41)
  {
    v42 = v41;
    v43 = *(v4 + v40);
    [v42 _removeCaptureDependent_];
  }

  v44 = OBJC_IVAR___HUTileCellBackgroundView_currentEffectIdentifier;
  swift_beginAccess();
  v45 = *(v4 + v44);
  *(v4 + v44) = v27;
LABEL_43:
  v56 = v27;
}

unint64_t sub_20CFFE5CC()
{
  result = qword_27C81F250;
  if (!qword_27C81F250)
  {
    sub_20D564758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F250);
  }

  return result;
}

unint64_t sub_20CFFE628()
{
  result = qword_27C81F258;
  if (!qword_27C81F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F258);
  }

  return result;
}

uint64_t dispatch thunk of TileCellBackgroundView.update(with:materialStyle:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
}

void sub_20CFFE8CC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_20CFFE8DC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id sub_20CFFE8EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileMaterialView] = 0;
  *&v4[OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileEditingMaterialView] = 0;
  *&v4[OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileOnMaterialView] = 0;
  v20.receiver = v4;
  v20.super_class = _s25ControlCenterMaterialViewCMa();
  v9 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BECD0;
  v11 = v9;
  *(inited + 32) = sub_20CFFED70();
  *(inited + 40) = sub_20CFFEEF4();
  *(inited + 48) = sub_20CFFEF08();
  v12 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x20F31DD20](0, inited))
  {
    v14 = i;
    [v11 addSubview_];
    [v14 setAutoresizingMask_];

    if (v12)
    {
      v15 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v15 = *(inited + 40);
    }

    v16 = v15;
    [v11 addSubview_];
    [v16 setAutoresizingMask_];

    if (v12)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v17 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v17 = MEMORY[0x20F31DD20](2, inited);
LABEL_10:
  v18 = v17;
  [v11 addSubview_];
  [v18 setAutoresizingMask_];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v11;
}

id sub_20CFFEB34(void *a1)
{
  *&v1[OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileMaterialView] = 0;
  *&v1[OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileEditingMaterialView] = 0;
  *&v1[OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileOnMaterialView] = 0;
  v14.receiver = v1;
  v14.super_class = _s25ControlCenterMaterialViewCMa();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  if (!v3)
  {

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BECD0;
  v5 = v3;
  *(inited + 32) = sub_20CFFED70();
  *(inited + 40) = sub_20CFFEEF4();
  *(inited + 48) = sub_20CFFEF08();
  v6 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x20F31DD20](0, inited))
  {
    v8 = i;
    [v5 addSubview_];
    [v8 setAutoresizingMask_];

    if (v6)
    {
      v9 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v9 = *(inited + 40);
    }

    v10 = v9;
    [v5 addSubview_];
    [v10 setAutoresizingMask_];

    if (v6)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v11 = *(inited + 48);
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v11 = MEMORY[0x20F31DD20](2, inited);
LABEL_11:
  v12 = v11;
  [v5 addSubview_];
  [v12 setAutoresizingMask_];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

id sub_20CFFED70()
{
  v1 = sub_20D564758();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileMaterialView;
  v7 = *(v0 + OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileMaterialView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileMaterialView);
LABEL_8:
    v13 = v7;
    return v8;
  }

  v9 = v0;
  (*(v2 + 104))(v5, *MEMORY[0x277D166A8], v1, v3);
  sub_20CFFE5CC();
  v10 = sub_20D563978();
  (*(v2 + 8))(v5, v1);
  result = objc_opt_self();
  if (v10)
  {
    result = [result controlCenterModuleBackgroundMaterial];
    if (result)
    {
LABEL_7:
      v12 = *(v9 + v6);
      *(v9 + v6) = result;
      v8 = result;

      v7 = 0;
      goto LABEL_8;
    }

    __break(1u);
  }

  result = [result controlCenterDarkMaterial];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_20CFFEF1C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
LABEL_5:
    v8 = v4;
    return v5;
  }

  result = [objc_opt_self() *a2];
  if (result)
  {
    v7 = *(v2 + v3);
    *(v2 + v3) = result;
    v5 = result;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_20CFFEF9C(char a1, char a2)
{
  v3 = v2;
  v6 = sub_20D564758();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CFFEEF4();
  [v10 setHidden_];

  v11 = sub_20CFFEF08();
  [v11 setHidden_];

  (*(v7 + 104))(v9, *MEMORY[0x277D166A8], v6);
  sub_20CFFE5CC();
  LOBYTE(v11) = sub_20D563978();
  result = (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    [*(v3 + OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileEditingMaterialView) setHidden_];
    return [*(v3 + OBJC_IVAR____TtCC6HomeUI22TileCellBackgroundView25ControlCenterMaterialView____lazy_storage___controlCenterTileOnMaterialView) setHidden_];
  }

  return result;
}

id sub_20CFFF128()
{
  v2.receiver = v0;
  v2.super_class = _s25ControlCenterMaterialViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFFF1DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D5BA040;
  sub_20CECF940(0, &qword_28111FB20);
  result = sub_20D5683D8();
  *(v0 + 32) = result;
  qword_27C81F278 = v0;
  return result;
}

uint64_t static TileCellDashedBorderView.lineDashPattern.getter()
{
  if (qword_27C81A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_20D5663C8();
}

uint64_t static TileCellDashedBorderView.lineDashPattern.setter(uint64_t a1)
{
  if (qword_27C81A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27C81F278 = a1;
}

uint64_t (*static TileCellDashedBorderView.lineDashPattern.modify())()
{
  if (qword_27C81A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_20CFFF3D8@<X0>(void *a1@<X8>)
{
  if (qword_27C81A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27C81F278;
  return sub_20D5663C8();
}

uint64_t sub_20CFFF458(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27C81A230;
  sub_20D5663C8();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27C81F278 = v1;
}

uint64_t static TileCellDashedBorderView.lineWidth.setter(double a1)
{
  result = swift_beginAccess();
  qword_27C81F280 = *&a1;
  return result;
}

double sub_20CFFF5CC()
{
  v1 = OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_20CFFF610(double a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_20CFFF670(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CFFF6D4;
}

id sub_20CFFF6D4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id TileCellDashedBorderView.init(frame:cornerRadius:)(double a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius] = a5;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for TileCellDashedBorderView();
  v10 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  if (qword_27C81A230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_20CECF940(0, &qword_28111FB20);
  sub_20D5663C8();
  v13 = sub_20D567A58();

  [v12 setLineDashPattern_];

  swift_beginAccess();
  [v12 setLineWidth_];
  v14 = [v10 backgroundColor];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 CGColor];
  }

  else
  {
    v16 = 0;
  }

  [v12 setFillColor_];

  v17 = [v10 traitCollection];
  v18 = [v17 userInterfaceStyle];

  v19 = objc_opt_self();
  v20 = &selRef_darkGrayColor;
  if (v18 != 2)
  {
    v20 = &selRef_lightGrayColor;
  }

  v21 = [v19 *v20];
  v22 = [v21 CGColor];

  [v12 setStrokeColor_];
  return v10;
}

void sub_20CFFFB00()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = v1;
  [v0 bounds];
  [v2 setFrame_];

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius;
  swift_beginAccess();
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, *&v0[v12]}];
  v14 = [v13 CGPath];

  [v2 setPath_];
  v15.receiver = v0;
  v15.super_class = type metadata accessor for TileCellDashedBorderView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
}

id TileCellDashedBorderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TileCellDashedBorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileCellDashedBorderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFFFE8C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id TileCellToggleSizeButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_20CFFFF4C()
{
  v1 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20CFFFFE4(char a1)
{
  v3 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView);
  v5 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = v4;
  v8 = v6;
  v9 = sub_20D5677F8();

  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  [v7 setImage_];
}

void (*sub_20D0000F8(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20D000180;
}

void sub_20D000180(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView);
    v6 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = v5;
    v9 = v7;
    v10 = sub_20D5677F8();

    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    [v8 setImage_];
  }

  free(v3);
}

id sub_20D0002F0()
{
  v1 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20D00039C(void *a1)
{
  sub_20D001710(a1);
}

void (*sub_20D0003D4(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20D00045C;
}

void sub_20D00045C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    swift_beginAccess();
    v6 = *(v5 + OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView);
    v7 = *(v5 + v4);
    v8 = v6;
    v9 = v7;
    v10 = sub_20D5677F8();

    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    [v8 setImage_];
  }

  free(v3);
}

char *TileCellToggleSizeButton.init()()
{
  v1 = sub_20D568458();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_20D5684A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView;
  *&v0[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v0[OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding] = 0;
  v14 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  v15 = [objc_opt_self() darkGrayColor];
  v16 = [objc_opt_self() configurationWithHierarchicalColor_];

  *&v0[v14] = v16;
  v17 = type metadata accessor for TileCellToggleSizeButton();
  v37.receiver = v0;
  v37.super_class = v17;
  v18 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v18 _setTouchInsets_];
  v19 = OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView;
  [v18 addSubview_];
  sub_20D5684B8();
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_20D568498();
    if (v20(v8, 1, v9) != 1)
    {
      sub_20D00185C(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v21 = objc_opt_self();
  v22 = [v18 traitCollection];
  v23 = [v21 tileCellToggleSizeButtonMaterialViewForTraitCollection_];

  v24 = sub_20D568448();
  sub_20D5660F8();
  v24(v36, 0);
  swift_beginAccess();
  v25 = *&v18[v19];
  v26 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  v27 = *&v18[v26];
  v28 = v25;
  v29 = v27;
  v30 = sub_20D5677F8();

  v31 = [objc_opt_self() systemImageNamed:v30 withConfiguration:v29];

  [v28 setImage_];
  (*(v34 + 104))(v33, *MEMORY[0x277D74FD8], v35);
  sub_20D568468();
  (*(v10 + 16))(v5, v12, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_20D5684C8();

  (*(v10 + 8))(v12, v9);
  return v18;
}

void sub_20D000BA8(char a1, char a2)
{
  if ((a2 & 1) == 0 || (v4 = a1 & 1, [v2 isHidden] == (a1 & 1)))
  {

    [v2 setHidden_];
  }

  else
  {
    v5 = [v2 isHidden];
    v6 = 1.0;
    if (v5)
    {
      v6 = 0.0;
    }

    [v2 setAlpha_];
    [v2 setHidden_];
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    v18 = sub_20D0018E0;
    v19 = v9;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_20CFFFE8C;
    v17 = &block_descriptor_26;
    v10 = _Block_copy(&v14);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v4;
    v18 = sub_20D001904;
    v19 = v12;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_20D000F04;
    v17 = &block_descriptor_10_0;
    v13 = _Block_copy(&v14);

    [v7 animateWithDuration:v10 animations:v13 completion:0.25];
    _Block_release(v13);
    _Block_release(v10);
  }
}

void sub_20D000E14(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = 1.0;
    if (a2)
    {
      v4 = 0.0;
    }

    v5 = Strong;
    [Strong setAlpha_];
  }
}

void sub_20D000E84(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v5 setHidden_];
    [v5 setAlpha_];
  }
}

uint64_t sub_20D000F04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_20D000FB4()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for TileCellToggleSizeButton();
  objc_msgSendSuper2(&v17, sel_updateConstraints);
  v1 = OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView;
  [*&v0[OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D5BC4C0;
  v4 = [*&v0[v1] centerYAnchor];
  v5 = [v0 centerYAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] widthAnchor];
  v11 = [v0 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 multiplier:0.65];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] heightAnchor];
  v14 = [v0 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 multiplier:0.65];

  *(v3 + 56) = v15;
  sub_20CF0AC18();
  v16 = sub_20D567A58();

  [v2 activateConstraints_];
}

id sub_20D00127C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  v10 = sub_20D5684A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for TileCellToggleSizeButton();
  v23.receiver = v2;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  v15 = [v2 traitCollection];
  v16 = [v15 userInterfaceStyle];

  if (!a1 || (result = [a1 userInterfaceStyle], v16 != result))
  {
    sub_20D5684B8();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_20D00185C(v9);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v18 = objc_opt_self();
      v19 = [v2 traitCollection];
      v20 = [v18 tileCellToggleSizeButtonMaterialViewForTraitCollection_];

      v21 = sub_20D568448();
      sub_20D5660F8();
      v21(v22, 0);
      (*(v11 + 16))(v6, v13, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
      sub_20D5684C8();
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

id TileCellToggleSizeButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TileCellToggleSizeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileCellToggleSizeButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D001710(void *a1)
{
  v3 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  swift_beginAccess();
  v6 = *(v1 + OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView);
  v7 = v5;
  v8 = v6;
  v9 = sub_20D5677F8();

  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v7];

  [v8 setImage_];
}

uint64_t sub_20D00185C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CF98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D001A94()
{
  v1 = OBJC_IVAR___HUTileCellToggleSizeButton_arrowImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding) = 0;
  v2 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  v3 = [objc_opt_self() darkGrayColor];
  v4 = [objc_opt_self() configurationWithHierarchicalColor_];

  *(v0 + v2) = v4;
  sub_20D568A58();
  __break(1u);
}

void *sub_20D001B8C()
{
  v1 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D001BD8(id a1)
{
  v3 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      sub_20CECF940(0, &qword_281120AC0);
      a1 = a1;
      v6 = v4;
      v7 = sub_20D5683F8();

      if (v7)
      {

        v4 = v6;
LABEL_10:

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v1 setNeedsUpdateConfiguration];

    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }
}

void (*sub_20D001CC0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR___HUTileCell_item;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_20D001D5C;
}

void sub_20D001D5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_20CECF940(0, &qword_281120AC0);
        v5 = v3;
        v9 = v8;
        v10 = sub_20D5683F8();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    [*(v2 + 32) setNeedsUpdateConfiguration];

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  sub_20D001BD8(v3);
  v5 = *(v2 + 24);
LABEL_11:

LABEL_12:

  free(v2);
}

uint64_t sub_20D001E58@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HUTileCell_appContext;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_20D001EAC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HUTileCell_appContext;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = v2;
  if (v2 != v5)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*sub_20D001F18(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR___HUTileCell_appContext;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_20D001FAC;
}

void sub_20D001FAC(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

uint64_t sub_20D00200C()
{
  v1 = OBJC_IVAR___HUTileCell_showPrefixLabel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_20D00205C(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUTileCell_showPrefixLabel;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_20D0093CC;
}

uint64_t sub_20D0020F0()
{
  v1 = OBJC_IVAR___HUTileCell_toggleable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_20D002140(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUTileCell_toggleable;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_20D0021D4;
}

uint64_t sub_20D0021D8()
{
  v1 = OBJC_IVAR___HUTileCell_useMutedIconOffColors;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_20D002228(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = v2[v5];
  v2[v5] = a1;
  if (v7 != v4)
  {
    return [v2 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t (*sub_20D002294(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUTileCell_useMutedIconOffColors;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_20D0093CC;
}

void sub_20D002328(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

id sub_20D002390(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR___HUTileCell_contentScale];
  result = swift_beginAccess();
  v8 = *v6;
  v9 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v9)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v8 != *&a1)
  {
    LOBYTE(v9) = 1;
  }

  if (v9)
  {
LABEL_7:
    v10 = [v2 contentView];
    if (v6[1])
    {
      v11 = xmmword_20D5C4670;
      v12 = xmmword_20D5C4680;
      v13 = 0uLL;
    }

    else
    {
      v14 = *v6;
      v16.a = 1.0;
      v16.b = 0.0;
      v16.c = 0.0;
      v16.d = 1.0;
      v16.tx = 0.0;
      v16.ty = 0.0;
      CGAffineTransformScale(&v15, &v16, v14, v14);
      v12 = *&v15.a;
      v11 = *&v15.c;
      v13 = *&v15.tx;
    }

    *&v16.a = v12;
    *&v16.c = v11;
    *&v16.tx = v13;
    [v10 setTransform_];

    [v2 setNeedsUpdateConfiguration];
    [v2 setNeedsLayout];
    return [v2 layoutIfNeeded];
  }

  return result;
}

void (*sub_20D0024D4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HUTileCell_contentScale;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_20D002574;
}

void sub_20D002574(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    sub_20D002390(*&v4, v5);
    goto LABEL_13;
  }

  v6 = *(v3 + 88) + *(v3 + 96);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_9:
    v9 = *(v3 + 88);
    v10 = &v9[*(v3 + 96)];
    v11 = [v9 contentView];
    if (v10[8])
    {
      v12 = xmmword_20D5C4670;
      v13 = xmmword_20D5C4680;
      v14 = 0uLL;
    }

    else
    {
      v15 = *(*(v3 + 88) + *(v3 + 96));
      *v3 = 0x3FF0000000000000;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0x3FF0000000000000;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      CGAffineTransformScale(&v17, v3, v15, v15);
      v13 = *&v17.a;
      v12 = *&v17.c;
      v14 = *&v17.tx;
    }

    v16 = *(v3 + 88);
    *v3 = v13;
    *(v3 + 16) = v12;
    *(v3 + 32) = v14;
    [v11 setTransform_];

    [v16 setNeedsUpdateConfiguration];
    [v16 setNeedsLayout];
    [v16 layoutIfNeeded];
    goto LABEL_13;
  }

  if (v7 != v4)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_13:

  free(v3);
}

uint64_t sub_20D002718(uint64_t a1)
{
  v3 = OBJC_IVAR___HUTileCell_backgroundEffectGrouper;
  swift_beginAccess();
  *&v1[v3] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v1 setNeedsUpdateConfiguration];
  return swift_unknownObjectRelease();
}

id (*sub_20D002794(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CF08024;
}

uint64_t sub_20D0027F8()
{
  v1 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_20D002848(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_20D0093D0;
}

uint64_t sub_20D0028DC()
{
  v1 = OBJC_IVAR___HUTileCell_borderStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_20D00292C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  *&v2[v4] = a1;
  if (v6 != a1)
  {
    return [v2 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t (*sub_20D002994(uint64_t *a1))()
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
  v5 = OBJC_IVAR___HUTileCell_borderStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_20D002A28;
}

void sub_20D002A2C(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] setNeedsUpdateConfiguration];
  }

  free(v1);
}

uint64_t sub_20D002A8C()
{
  v1 = OBJC_IVAR___HUTileCell_materialStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D002AD0(uint64_t a1)
{
  v3 = OBJC_IVAR___HUTileCell_materialStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20D002B8C(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

id sub_20D002BD4(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR___HUTileCell_overrideLayout];
  result = swift_beginAccess();
  v8 = *v6;
  v9 = v6[8];
  *v6 = a1;
  v6[8] = v5;
  if (a2)
  {
    if (v9)
    {
      return result;
    }

    return [v2 setNeedsUpdateConfiguration];
  }

  if (v8 != a1)
  {
    LOBYTE(v9) = 1;
  }

  if (v9)
  {
    return [v2 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*sub_20D002C6C(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR___HUTileCell_overrideLayout;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_20D002D0C;
}

void sub_20D002D0C(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[6] + (*a1)[5];
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = v3[8];
  *v3 = v2;
  v3[8] = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v1[5] setNeedsUpdateConfiguration];
LABEL_9:

  free(v1);
}

uint64_t sub_20D002D8C()
{
  v1 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D002DD0(char a1)
{
  v3 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20D002E80()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_20D568168();
  if ((v1 & 1) == 0 || (v3 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories, swift_beginAccess(), v0[v3] != 1))
  {
    v6 = OBJC_IVAR___HUTileCell_showPrefixLabel;
    swift_beginAccess();
    return v0[v6];
  }

  v4 = &v0[OBJC_IVAR___HUTileCell__gridSize];
  if (v0[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    if (sub_20D005CF8(v0) != 1)
    {
LABEL_5:
      v5 = 0;
      goto LABEL_13;
    }
  }

  else if (*v4 != 1)
  {
    goto LABEL_5;
  }

  if (v4[16] == 1)
  {
    sub_20D005CF8(v0);
  }

  else
  {
    v8 = *(v4 + 1);
  }

  v5 = v8 == 1;
LABEL_13:
  v9 = OBJC_IVAR___HUTileCell_showPrefixLabel;
  swift_beginAccess();
  result = v0[v9];
  if (result == 1 && !v5)
  {
    if (v4[16] == 1)
    {
      v10 = sub_20D005CF8(v0);
    }

    else
    {
      v10 = *v4;
    }

    return v10 > 1;
  }

  return result;
}

uint64_t sub_20D002FF4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_20D568168();
  if ((v1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories;
  swift_beginAccess();
  if (v0[v3] != 1)
  {
    goto LABEL_9;
  }

  v4 = &v0[OBJC_IVAR___HUTileCell__gridSize];
  if (v0[OBJC_IVAR___HUTileCell__gridSize + 16] != 1)
  {
    v8 = *v4;
    if (*v4 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (sub_20D005CF8(v0) == 1)
  {
    if (*(v4 + 16))
    {
      sub_20D005CF8(v0);
      if (v5 <= 1)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

LABEL_12:
    if (v4[1] <= 1)
    {
LABEL_7:
      if ((v4[2] & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  if (*(v4 + 16))
  {
LABEL_15:
    v8 = sub_20D005CF8(v0);
LABEL_16:
    if (v8 < 2)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = sub_20D002E80() ^ 1;
    return v6 & 1;
  }

LABEL_8:
  if (*v4 >= 2)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_20D003130()
{
  if (v0[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    return sub_20D005CF8(v0);
  }

  else
  {
    return *&v0[OBJC_IVAR___HUTileCell__gridSize];
  }
}

id sub_20D003170(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___HUTileCell__gridSize];
  v4 = *&v2[OBJC_IVAR___HUTileCell__gridSize];
  v5 = *&v2[OBJC_IVAR___HUTileCell__gridSize + 8];
  v6 = v2[OBJC_IVAR___HUTileCell__gridSize + 16];
  *v3 = result;
  *(v3 + 1) = a2;
  v3[16] = 0;
  if (v6)
  {
    return [v2 setNeedsUpdateConfiguration];
  }

  if (v4 != result || v5 != a2)
  {
    return [v2 setNeedsUpdateConfiguration];
  }

  return result;
}

char *(*sub_20D0031B0(uint64_t *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR___HUTileCell__gridSize;
  a1[2] = v1;
  a1[3] = v3;
  v4 = &v1[v3];
  if (v4[16] == 1)
  {
    v5 = sub_20D005CF8(v1);
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 1);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_20D00321C;
}

char *sub_20D00321C(uint64_t *a1)
{
  v3 = a1 + 2;
  result = a1[2];
  v4 = &result[v3[1]];
  v6 = *a1;
  v5 = a1[1];
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = v4[16];
  *v4 = v6;
  *(v4 + 1) = v5;
  v4[16] = 0;
  if (v9)
  {
    return [result setNeedsUpdateConfiguration];
  }

  if (v6 != v7 || v5 != v8)
  {
    return [result setNeedsUpdateConfiguration];
  }

  return result;
}

__CFString *sub_20D00325C(CGFloat a1, CGFloat a2)
{
  v5 = sub_20D5660D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_20D00530C(a1, a2);
  if ([objc_opt_self() invertCellTaps])
  {
    if (!v9)
    {
      v10 = [v2 _bridgedConfigurationState];
      sub_20D5660C8();

      if (qword_28111FDB0 != -1)
      {
        swift_once();
      }

      sub_20D566078();
      (*(v6 + 8))(v8, v5);
      if (v16)
      {
        if (swift_dynamicCast() & 1) != 0 && (v14[7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_20CEF928C(v15, &unk_27C81C7A0);
      }
    }
  }

  else if (v9)
  {
LABEL_10:
    v11 = HUTileCellTappableAreaStateToggleButton;
    goto LABEL_13;
  }

  v11 = &HUTileCellTappableAreaDetail;
LABEL_13:
  v12 = *v11;

  return v12;
}

void sub_20D003484(void (*a1)(void))
{
  v6 = [v1 contentView];
  type metadata accessor for TileCellContentView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
    a1();

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }
}

uint64_t sub_20D003534()
{
  v1 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20D003578(char a1)
{
  v3 = OBJC_IVAR___HUTileCell_isRearranging;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x2A8))(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 layer];
  [v1 frame];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetHeight(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetWidth(v12);
  sub_20D0F0088(v5 & 1, v6);
}

void (*sub_20D0036B8(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___HUTileCell_isRearranging;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20D003740;
}

void sub_20D003740(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    if (*(v5 + v3[4]) == 1)
    {
      v6 = (*((*MEMORY[0x277D85000] & *v5) + 0x2A8))(v4);
      v5 = v3[3];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v5 layer];
    [v5 frame];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    CGRectGetHeight(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGRectGetWidth(v14);
    sub_20D0F0088(v6 & 1, v7);
  }

  free(v3);
}

uint64_t sub_20D003890()
{
  v1 = OBJC_IVAR___HUTileCell_reorderable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20D0038D4(char a1)
{
  v3 = OBJC_IVAR___HUTileCell_reorderable;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  LOBYTE(v3) = (*((*MEMORY[0x277D85000] & *v1) + 0x290))(v4) & a1;
  v5 = [v1 layer];
  [v1 frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetHeight(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetWidth(v11);
  sub_20D0F0088(v3 & 1, v5);
}

void (*sub_20D003A14(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR___HUTileCell_reorderable;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20D003A9C;
}

void sub_20D003A9C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((*MEMORY[0x277D85000] & **(v3 + 24)) + 0x290))(v4);
    v6 = *(v3 + 24);
    if (v5)
    {
      v7 = v6[*(v3 + 32)];
    }

    else
    {
      v7 = 0;
    }

    v8 = [*(v3 + 24) layer];
    [v6 frame];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    CGRectGetHeight(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGRectGetWidth(v15);
    sub_20D0F0088(v7, v8);
  }

  free(v3);
}

void sub_20D003BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  if (*a6 == 2)
  {
    if (a2 < 2)
    {
      [a1 displayScale];
      v8.n128_u64[0] = v9.n128_u64[0];
      if (a3 < 2)
      {
        v9.n128_u64[0] = 10.0;
        v10.n128_u64[0] = 10.0;
        v11.n128_u64[0] = 10.0;
        v12 = a5 & 1;
        v13.n128_u64[0] = 4.0;
      }

      else
      {
        v9.n128_u64[0] = 2.0;
        v10.n128_u64[0] = 14.0;
        v11.n128_u64[0] = 2.0;
        v12 = a5 & 1;
        v13.n128_u64[0] = 8.0;
      }
    }

    else
    {
      [a1 displayScale];
      v8.n128_u64[0] = v9.n128_u64[0];
      v9.n128_u64[0] = 14.0;
      v10.n128_u64[0] = 14.0;
      v11.n128_u64[0] = 14.0;
      v12 = a5 & 1;
      v13.n128_u64[0] = 12.0;
    }

    CCUIScaledMetric(_:_:_:)(a4, v12, v9, v10, v11, v13, v8);
  }

  else
  {
    v14 = [a1 preferredContentSizeCategory];
    sub_20D568168();
  }
}

uint64_t sub_20D003CDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = sub_20D5661A8();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = sub_20D5660D8();
  v43 = v15;
  v44 = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a1, v15);
  v17 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  v18 = *&v2[v17];
  v19 = OBJC_IVAR___HUTileCell_borderStyle;
  swift_beginAccess();
  v20 = *&v2[v19];
  v21 = OBJC_IVAR___HUTileCell_appContext;
  swift_beginAccess();
  v40 = v21;
  v22 = v2[v21];
  v23 = OBJC_IVAR___HUTileCell_backgroundEffectGrouper;
  swift_beginAccess();
  v24 = *&v2[v23];
  v25 = OBJC_IVAR___HUTileCell_materialStyle;
  swift_beginAccess();
  v26 = *&v2[v25];
  v27 = v39;
  v45 = v18;
  v46 = v20;
  v47 = v22;
  v48 = v24;
  v49 = v26;
  v28 = swift_unknownObjectRetain();
  MEMORY[0x20F31D5D0](v28);
  v29 = *(v27 + 48);
  if (v29(v8, 1, v9) == 1)
  {
    sub_20D566178();
    if (v29(v8, 1, v9) != 1)
    {
      sub_20CEF928C(v8, &unk_27C81E080);
    }
  }

  else
  {
    (*(v27 + 32))(v11, v8, v9);
  }

  v30 = *(v27 + 16);
  v30(v14, v11, v9);
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v31 = sub_20D566068();
  v32 = [v31 preferredContentSizeCategory];

  sub_20D568168();
  sub_20D566138();
  sub_20D00C12C(v14);
  sub_20D00C37C();
  v33 = *(v27 + 8);
  v33(v11, v9);
  v34 = sub_20D5660E8();
  if (v34)
  {
    v35 = v34;
    [v2 bounds];
    [v35 setFrame_];
  }

  if (v2[v40] == 2)
  {
    [v2 backgroundCornerRadius];
    sub_20D566138();
  }

  v36 = v41;
  v30(v41, v14, v9);
  (*(v27 + 56))(v36, 0, 1, v9);
  MEMORY[0x20F31D5E0](v36);
  v33(v14, v9);
  return sub_20CF0A268(v42);
}

void sub_20D004168(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  MEMORY[0x20F31D5B0](v146, v2);
  if (v146[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      memcpy(v148, v147, 0x1F8uLL);
      goto LABEL_6;
    }
  }

  else
  {
    sub_20CEF928C(v146, &qword_27C81C790);
  }

  sub_20D00CF4C(v148);
LABEL_6:
  v6 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7)
  {
    memcpy(v146, v148, sizeof(v146));
    memcpy(__dst, v148, sizeof(__dst));
    v8 = v7;
    sub_20CFFCAE4(v146, v147);
    sub_20D00F608(v8);
    sub_20D00FC50(v8);

    memcpy(v147, v148, 0x1F8uLL);
    sub_20CEFFA00(v147);
    memcpy(v148, __dst, 0x1F8uLL);
  }

  v9 = [v3 traitCollection];
  v10 = &v3[OBJC_IVAR___HUTileCell_overrideLayout];
  swift_beginAccess();
  v133 = v3;
  if ((v10[8] & 1) == 0)
  {
    v14 = *v10;
LABEL_14:

    goto LABEL_17;
  }

  v11 = &v3[OBJC_IVAR___HUTileCell__gridSize];
  if (v3[OBJC_IVAR___HUTileCell__gridSize + 16])
  {
    v12 = sub_20D005CF8(v3);
  }

  else
  {
    v12 = *v11;
    v13 = v11[1];
  }

  v14 = sub_20D013CD8(v12, v13);
  if (v14 == 3)
  {
    goto LABEL_14;
  }

  v15 = [v9 preferredContentSizeCategory];
  v16 = sub_20D568178();

  if (v16)
  {
    v14 = 2;
  }

LABEL_17:
  *&v148[18] = v14;
  memcpy(v147, v148, 0x1F8uLL);
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(v143, v147, sizeof(v143));
  sub_20CEFFA00(v143);
  memcpy(v148, __src, 0x1F8uLL);
  memcpy(v145, __src, sizeof(v145));
  memcpy(v147, __src, 0x1F8uLL);
  v17 = sub_20D5660D8();
  v139[3] = v17;
  v139[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v139);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v5, v17);
  sub_20CFFCAE4(v145, v146);
  TileCellContentConfiguration.updated(for:)(v139, v142);
  memcpy(v146, v147, sizeof(v146));
  sub_20CEFFA00(v146);
  __swift_destroy_boxed_opaque_existential_1(v139);
  v19 = *&v142[16];
  v20 = *&v142[88];
  v134 = v5;
  v21 = *&v142[160];
  v22 = *&v142[288];
  v23 = *&v142[432];
  memcpy(v147, v148, 0x1F8uLL);
  sub_20CEFFA00(v147);
  v148[0] = *v142;
  *(&v148[1] + 8) = *&v142[24];
  *(&v148[2] + 8) = *&v142[40];
  *(&v148[3] + 8) = *&v142[56];
  *(&v148[4] + 8) = *&v142[72];
  v130 = v20;
  *&v148[1] = v19;
  *(&v148[5] + 1) = v20;
  v148[6] = *&v142[96];
  v148[7] = *&v142[112];
  v148[8] = *&v142[128];
  v148[9] = *&v142[144];
  v24 = v5;
  *(&v148[16] + 8) = *&v142[264];
  *(&v148[14] + 8) = *&v142[232];
  *(&v148[15] + 8) = *&v142[248];
  v128 = v21;
  *&v148[10] = v21;
  *(&v148[17] + 1) = *&v142[280];
  *(&v148[10] + 8) = *&v142[168];
  *(&v148[11] + 8) = *&v142[184];
  *(&v148[12] + 8) = *&v142[200];
  *(&v148[13] + 8) = *&v142[216];
  *(&v148[24] + 8) = *&v142[392];
  *(&v148[25] + 8) = *&v142[408];
  *(&v148[22] + 8) = *&v142[360];
  *(&v148[23] + 8) = *&v142[376];
  *(&v148[20] + 8) = *&v142[328];
  *(&v148[21] + 8) = *&v142[344];
  *(&v148[18] + 8) = *&v142[296];
  *(&v148[19] + 8) = *&v142[312];
  v127 = v22;
  *&v148[18] = v22;
  *(&v148[26] + 1) = *&v142[424];
  *&v148[27] = v23;
  *(&v148[27] + 8) = *&v142[440];
  *(&v148[28] + 8) = *&v142[456];
  *(&v148[29] + 8) = *&v142[472];
  *(&v148[30] + 8) = *&v142[488];
  LOBYTE(v148[2]) = (sub_20D002E80() & 1) == 0;
  LOBYTE(v148[11]) = (sub_20D002FF4() & 1) == 0;
  v25 = OBJC_IVAR___HUTileCell_useMutedIconOffColors;
  swift_beginAccess();
  if ((*(v133 + v25) & 1) == 0)
  {
    goto LABEL_27;
  }

  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  sub_20D566078();
  if (*&v142[24])
  {
    if (swift_dynamicCast() & 1) != 0 && (v139[0])
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_20CEF928C(v142, &unk_27C81C7A0);
  }

  *&v142[96] = *(&v148[24] + 8);
  *&v142[112] = *(&v148[25] + 8);
  *&v142[128] = *(&v148[26] + 1);
  *&v142[32] = *(&v148[20] + 8);
  *&v142[48] = *(&v148[21] + 8);
  *&v142[80] = *(&v148[23] + 8);
  *&v142[64] = *(&v148[22] + 8);
  *&v142[16] = *(&v148[19] + 8);
  *v142 = *(&v148[18] + 8);
  if (sub_20CFF743C(v142) != 1)
  {
    sub_20D007648();
  }

LABEL_27:
  v26 = OBJC_IVAR___HUTileCell_appContext;
  swift_beginAccess();
  if (*(v133 + v26) == 2)
  {
    v27 = [objc_opt_self() _tertiaryMaterialView];

    *&v148[27] = v27;
    *&v142[96] = *(&v148[24] + 8);
    *&v142[112] = *(&v148[25] + 8);
    *&v142[128] = *(&v148[26] + 1);
    *&v142[32] = *(&v148[20] + 8);
    *&v142[48] = *(&v148[21] + 8);
    *&v142[80] = *(&v148[23] + 8);
    *&v142[64] = *(&v148[22] + 8);
    *&v142[16] = *(&v148[19] + 8);
    *v142 = *(&v148[18] + 8);
    if (sub_20CFF743C(v142) != 1)
    {
      v28 = MEMORY[0x20F31E320]();
      v29 = [v133 traitCollection];
      [v29 displayScale];

      MEMORY[0x20F31E320]();
      UIRoundToScale();
      *&v148[23] = v28 - v30;
    }

    v31 = (v133 + OBJC_IVAR___HUTileCell__gridSize);
    if (*(v133 + OBJC_IVAR___HUTileCell__gridSize + 16) == 1)
    {
      v32 = sub_20D005CF8(v133);
    }

    else
    {
      v32 = *v31;
    }

    if (v32 >= 2)
    {
      v125 = &v148[30];
      v33 = objc_opt_self();
      if (qword_27C81A238 != -1)
      {
        swift_once();
      }

      v34 = qword_27C81F2B0;
      v35 = *MEMORY[0x277D74418];
      v36 = *MEMORY[0x277D767E8];
      v37 = *MEMORY[0x277D74358];
      v38 = [v133 traitCollection];
      v39 = [v33 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

      if (v39)
      {
        v40 = v39;

        *&v148[1] = v40;
        v41 = *MEMORY[0x277D74410];
        v42 = v37;
        v43 = [v133 &selRef_toState];
        v44 = [v33 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

        if (v44)
        {

          *(&v148[5] + 1) = v44;
          *&v148[10] = v40;
          v45 = v133 + OBJC_IVAR___HUTileCell_contentScale;
          swift_beginAccess();
          v46 = *v45;
          v47 = v45[8];
          v48 = [v133 &selRef_toState];
          [v48 displayScale];
          v50 = v49;

          *(&v148[29] + 1) = CCUIScaledMetric(_:_:_:)(v46, v47, 0.0, 4.0, -5.0, -4.0, v50);
          v24 = v134;
LABEL_44:
          v73 = &v148[31];
          v74 = &v148[30] + 8;
LABEL_53:
          *v125 = v51;
          *v74 = v52;
          *v73 = v53;
          BYTE1(v148[2]) = 1;
          BYTE9(v148[6]) = 1;
          BYTE1(v148[11]) = 1;
          goto LABEL_54;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (*(v31 + 16) == 1)
    {
      sub_20D005CF8(v133);
      if (v54 < 2)
      {
        goto LABEL_41;
      }
    }

    else if (v31[1] < 2)
    {
LABEL_41:
      v125 = &v148[30];

      *&v148[27] = 0;
      v55 = objc_opt_self();
      v56 = *MEMORY[0x277D76938];
      v57 = *MEMORY[0x277D74418];
      v58 = *MEMORY[0x277D76840];
      v59 = *MEMORY[0x277D74358];
      v60 = [v133 traitCollection];
      v61 = [v55 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

      if (v61)
      {
        v62 = v61;

        *&v148[1] = v62;
        v63 = *MEMORY[0x277D74410];
        v64 = v59;
        v65 = [v133 traitCollection];
        v66 = [v55 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

        if (v66)
        {

          *(&v148[5] + 1) = v66;
          *&v148[10] = v62;
          v67 = v133 + OBJC_IVAR___HUTileCell_contentScale;
          swift_beginAccess();
          v68 = *v67;
          v69 = v67[8];
          v70 = [v133 traitCollection];
          [v70 displayScale];
          v72 = v71;

          *(&v148[29] + 1) = CCUIScaledMetric(_:_:_:)(v68, v69, -2.0, 0.0, 0.0, 0.0, v72);
          goto LABEL_44;
        }

        goto LABEL_72;
      }

      goto LABEL_70;
    }

    v75 = [v133 traitCollection];
    v76 = [v75 preferredContentSizeCategory];

    LOBYTE(v75) = sub_20D568168();
    v77 = MEMORY[0x277D767E8];
    if ((v75 & 1) == 0)
    {
      v77 = MEMORY[0x277D76828];
    }

    v78 = *v77;
    v79 = objc_opt_self();
    v80 = *MEMORY[0x277D76938];
    v81 = *MEMORY[0x277D74418];
    v82 = *MEMORY[0x277D74358];
    v83 = v78;
    v84 = [v133 traitCollection];
    v85 = [v79 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

    if (v85)
    {
      v86 = v85;

      *&v148[1] = v86;
      if (qword_27C81A238 != -1)
      {
        swift_once();
      }

      v87 = qword_27C81F2B0;
      v88 = *MEMORY[0x277D74410];
      v89 = v82;
      v90 = [v133 traitCollection];
      v91 = [v79 _preferredFontForTextStyle_design_variant_weight_maximumContentSizeCategory_compatibleWithTraitCollection_];

      if (v91)
      {
        v73 = &v148[29];
        v74 = &v148[28] + 8;
        v125 = &v148[28];

        *(&v148[5] + 1) = v91;
        *&v148[10] = v86;
        v92 = v133 + OBJC_IVAR___HUTileCell_contentScale;
        swift_beginAccess();
        v93 = *v92;
        v94 = v92[8];
        v95 = [v133 &selRef_toState];
        [v95 displayScale];
        v97 = v96;

        v98 = CCUIScaledMetric(_:_:_:)(v93, v94, 0.0, 8.0, 0.0, 0.0, v97);
        v100 = v99;
        v102 = v101;
        v104 = v103;

        v53 = v104;
        v52 = v102;
        v51 = v100;
        *(&v148[27] + 1) = v98;
        v24 = v134;
        goto LABEL_53;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_71;
  }

LABEL_54:
  v105 = MEMORY[0x20F31E320]();
  LOBYTE(v148[3]) = 0;
  v106 = v105 / 68.0;
  if (v106 <= 1.0)
  {
    v107 = v106;
  }

  else
  {
    v107 = 1.0;
  }

  *(&v148[2] + 1) = v107;
  *&v148[7] = v107;
  BYTE8(v148[7]) = 0;
  *(&v148[11] + 1) = v107;
  LOBYTE(v148[12]) = 0;
  v140[6] = *(&v148[24] + 8);
  v140[7] = *(&v148[25] + 8);
  v141 = *(&v148[26] + 1);
  v140[2] = *(&v148[20] + 8);
  v140[3] = *(&v148[21] + 8);
  v140[5] = *(&v148[23] + 8);
  v140[4] = *(&v148[22] + 8);
  v140[1] = *(&v148[19] + 8);
  v140[0] = *(&v148[18] + 8);
  if (sub_20CFF743C(v140) == 1)
  {
    goto LABEL_67;
  }

  v108 = v148[26];
  if ((*&v148[26] & 0x8000000000000000) != 0)
  {
    goto LABEL_67;
  }

  v109 = *(&v148[23] + 1);
  v110 = *&v148[24];
  v111 = *(&v148[25] + 1);
  v131 = *(&v148[24] + 1);
  v112 = *&v148[25];
  if (v127 == 3)
  {
    v107 = v107 * 0.85;
  }

  sub_20D5663C8();
  v113 = v112;
  v132 = v111;
  if (v107 == 1.0)
  {
LABEL_64:
    *&v142[96] = *(&v148[24] + 8);
    *&v142[112] = *(&v148[25] + 8);
    *&v142[128] = *(&v148[26] + 1);
    *&v142[32] = *(&v148[20] + 8);
    *&v142[48] = *(&v148[21] + 8);
    *&v142[80] = *(&v148[23] + 8);
    *&v142[64] = *(&v148[22] + 8);
    *&v142[16] = *(&v148[19] + 8);
    *v142 = *(&v148[18] + 8);
    if (sub_20CFF743C(v142) != 1)
    {
      v129 = (v127 != 3) & v108;
      v116 = *(&v148[23] + 1);
      v117 = v148[24];
      v126 = v109;
      v119 = *(&v148[25] + 1);
      v118 = *&v148[25];
      v120 = *&v148[26];
      sub_20D5663C8();
      v121 = v113;
      v122 = v132;
      v123 = v119;
      v24 = v134;
      sub_20CFD9DD8(v116, v117, *(&v117 + 1), v118, v123, v120);
      *(&v148[23] + 1) = v126;
      *&v148[24] = v110;
      *(&v148[24] + 1) = v131;
      *&v148[25] = v113;
      *(&v148[25] + 1) = v111;
      v148[26] = v129;
    }

LABEL_67:
    (*((*MEMORY[0x277D85000] & *v133) + 0x278))(v148, v24);
    memcpy(v137, v148, sizeof(v137));
    memcpy(v142, v148, sizeof(v142));
    sub_20CFFCAE4(v137, v139);
    sub_20D00DBB4(MEMORY[0x277D84F90]);
    memcpy(v138, v142, sizeof(v138));
    sub_20CEFFA00(v138);
    v124 = sub_20D5677F8();

    [v133 setAccessibilityIdentifier_];

    memcpy(v139, v148, sizeof(v139));
    v136[3] = &type metadata for TileCellContentConfiguration;
    v136[4] = sub_20D009378();
    v136[0] = swift_allocObject();
    memcpy((v136[0] + 16), v148, 0x1F8uLL);
    sub_20CFFCAE4(v139, v142);
    MEMORY[0x20F31D5C0](v136);
    memcpy(v142, v148, sizeof(v142));
    sub_20CEFFA00(v142);
    return;
  }

  v114 = [v113 _fontScaledByScaleFactor_];
  if (v114)
  {
    v115 = v114;

    v113 = v115;
    goto LABEL_64;
  }

LABEL_74:
  __break(1u);
}