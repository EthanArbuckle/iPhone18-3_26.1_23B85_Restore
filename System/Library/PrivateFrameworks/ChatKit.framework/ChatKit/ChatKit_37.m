void sub_190B5A690(uint64_t a1)
{
  v2 = [objc_opt_self() sharedRegistry];
  v3 = [v2 unreadCountController];

  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 pendingReviewCountForChatsWithFilterMode_];

  if (v4 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E6530];
    *(v5 + 16) = xmmword_190DD1D90;
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v4;
    v8 = CKFrameworkBundle();
    if (v8)
    {
      v9 = v8;
      v10 = sub_190D56ED0();
      v11 = sub_190D56ED0();
      v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

      sub_190D56F10();
      sub_190D56EE0();

      return;
    }

    goto LABEL_7;
  }
}

void sub_190B5A848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_190D57AA0();
  v6 = v5;
  if (v5 == 8)
  {
    goto LABEL_4;
  }

  if (sub_190B6B9E4(v5) != -1)
  {
    sub_190D58720();
LABEL_4:
    sub_1902188FC(0, &qword_1EAD466C8);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510);
    v39 = 0u;
    v37 = 0u;
    v35 = MEMORY[0x1E69E7CC0];
    v7 = sub_190D57650();
    goto LABEL_5;
  }

  sub_1902188FC(0, &qword_1EAD44E30);
  sub_190D57BB0();
  sub_1902188FC(0, &qword_1EAD46510);
  v39 = 0u;
  v37 = 0u;
  v35 = MEMORY[0x1E69E7CC0];
  v7 = sub_190D58040();
LABEL_5:
  v8 = v7;
  sub_19021A5D4(v6);
  v9 = CKFrameworkBundle();
  if (!v9)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:

    __break(1u);
    return;
  }

  v10 = v9;
  v11 = sub_190D56ED0();

  v12 = sub_190D56ED0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:{v12, v35, v37, v39}];

  if (!v13)
  {
    sub_190D56F10();
    v13 = sub_190D56ED0();
  }

  [v8 setTitle_];

  v14 = v8;
  [v14 setSubtitle_];
  v15 = sub_190B6B4B4(v6);
  [v14 setImage_];

  [v14 setAttributes_];
  v16 = a1 && sub_190CA9880(v6, a1);
  [v14 setState_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_190DD55F0;
  *(v17 + 32) = v14;
  v41 = v17;
  if ((*(a3 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_requestsEnabled) & 1) == 0)
  {

    return;
  }

  if (sub_190B6B9E4(3) == -1)
  {
    v8 = sub_1902188FC(0, &qword_1EAD44E30);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510);
    v40 = 0u;
    v38 = 0u;
    v36 = MEMORY[0x1E69E7CC0];
    v19 = sub_190D58040();
  }

  else
  {
    sub_190D58720();
    v18 = sub_1902188FC(0, &qword_1EAD466C8);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510);
    v40 = 0u;
    v38 = 0u;
    v36 = MEMORY[0x1E69E7CC0];
    v8 = v18;
    v19 = sub_190D57650();
  }

  v20 = v19;
  v21 = CKFrameworkBundle();
  if (!v21)
  {
    goto LABEL_35;
  }

  v22 = v21;
  v23 = sub_190D56ED0();
  v24 = sub_190D56ED0();
  v8 = [v22 localizedStringForKey:v23 value:0 table:{v24, v36, v38, v40}];

  if (!v8)
  {
    sub_190D56F10();
    v8 = sub_190D56ED0();
  }

  v25 = CKFrameworkBundle();
  if (!v25)
  {
    goto LABEL_36;
  }

  v26 = v25;
  v27 = sub_190D56ED0();
  v28 = [v26 localizedStringForKey:v8 value:0 table:v27];

  if (!v28)
  {
    sub_190D56F10();
    v28 = sub_190D56ED0();
  }

  sub_190B5A690(3);
  v30 = v29;
  [v20 setTitle_];

  v31 = v20;
  if (v30)
  {
    v32 = sub_190D56ED0();
  }

  else
  {
    v32 = 0;
  }

  [v20 setSubtitle_];

  v33 = sub_190B6B4B4(3);
  [v20 setImage_];

  [v20 setAttributes_];
  v34 = a1 && sub_190CA9880(3, a1);
  MEMORY[0x193AF29E0]([v20 setState_]);
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
}

id sub_190B5AF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CKMessageSpamFilteringEnabled();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    if (a3 == 4)
    {
      v7 = sub_190B6CB20();
    }

    else
    {
      if (a3 != 5)
      {
        v8 = MEMORY[0x1E69E7CC0];
        v9 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_6;
      }

      v7 = sub_190B6CB38();
    }

    v8 = v7;
    v9 = *(v7 + 16);
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_6:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v9 == 1)
  {

    if (a3 != 8)
    {
      if (sub_190B6B9E4(a3) == -1)
      {
        sub_1902188FC(0, &qword_1EAD44E30);
        sub_190D57BB0();
        sub_1902188FC(0, &qword_1EAD46510);
        v51 = 0u;
        v49 = 0u;
        v47 = v6;
        v11 = sub_190D58040();
LABEL_20:
        v12 = v11;
        if (a3 != 5 && a3 != 4)
        {
          sub_19021A5D4(a3);
        }

        result = CKFrameworkBundle();
        if (!result)
        {
          goto LABEL_62;
        }

        v14 = result;
        v15 = sub_190D56ED0();

        v16 = sub_190D56ED0();
        v17 = [v14 localizedStringForKey:v15 value:0 table:{v16, v47, v49, v51}];

        if (!v17)
        {
          sub_190D56F10();
          v17 = sub_190D56ED0();
        }

        sub_190B5A690(a3);
        v19 = v18;
        [v12 setTitle_];

        v20 = v12;
        if (v19)
        {
          v21 = sub_190D56ED0();
        }

        else
        {
          v21 = 0;
        }

        [v12 setSubtitle_];

        v22 = sub_190B6B4B4(a3);
        [v12 setImage_];

        [v12 setAttributes_];
        v23 = a1 && sub_190CA9880(a3, a1);
        [v12 setState_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_190DD55F0;
        *(v10 + 32) = v12;

        return v10;
      }

      sub_190D58720();
    }

    sub_1902188FC(0, &qword_1EAD466C8);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510);
    v51 = 0u;
    v49 = 0u;
    v47 = v6;
    v11 = sub_190D57650();
    goto LABEL_20;
  }

  if (a3 != 5 && a3 != 4)
  {
    sub_19021A5D4(a3);
  }

  result = CKFrameworkBundle();
  if (!result)
  {
    goto LABEL_63;
  }

  v24 = result;
  v25 = sub_190D56ED0();

  v26 = sub_190D56ED0();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  sub_190D56F10();
  sub_190B5A4D0(a3, a1);
  result = sub_190B6B4B4(a3);
  v53 = result;
  v28 = 0;
  v55 = v6;
  v54 = v8;
  while (v28 < *(v8 + 16))
  {
    v29 = v8 + 8 * v28;
    v30 = *(v29 + 32);
    if (v30 == 8)
    {
      goto LABEL_44;
    }

    if (sub_190B6B9E4(*(v29 + 32)) != -1)
    {
      sub_190D58720();
LABEL_44:
      sub_1902188FC(0, &qword_1EAD466C8);
      sub_190D57BB0();
      sub_1902188FC(0, &qword_1EAD46510);
      v52 = 0u;
      v50 = 0u;
      v48 = v6;
      v31 = sub_190D57650();
      goto LABEL_45;
    }

    sub_1902188FC(0, &qword_1EAD44E30);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510);
    v52 = 0u;
    v50 = 0u;
    v48 = v6;
    v31 = sub_190D58040();
LABEL_45:
    v32 = v31;
    v33 = a1;
    sub_19021A5D4(v30);
    result = CKFrameworkBundle();
    if (!result)
    {
      goto LABEL_61;
    }

    v34 = result;
    v35 = sub_190D56ED0();

    v36 = sub_190D56ED0();
    v37 = [v34 localizedStringForKey:v35 value:0 table:{v36, v48, v50, v52}];

    sub_190D56F10();
    sub_190B5A690(v30);
    v39 = v38;
    v40 = sub_190D56ED0();

    [v32 setTitle_];

    v41 = v32;
    if (v39)
    {
      v42 = sub_190D56ED0();
    }

    else
    {
      v42 = 0;
    }

    a1 = v33;
    [v32 setSubtitle_];

    v43 = sub_190B6B4B4(v30);
    [v32 setImage_];

    [v32 setAttributes_];
    v6 = MEMORY[0x1E69E7CC0];
    v8 = v54;
    v44 = a1 && sub_190CA9880(v30, a1);
    [v32 setState_];

    MEMORY[0x193AF29E0]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    ++v28;
    result = sub_190D571E0();
    if (v9 == v28)
    {

      sub_1902188FC(0, &unk_1EAD44ED0);
      v45 = v53;
      v46 = sub_190D57C90();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_190DD55F0;
      *(v10 + 32) = v46;

      return v10;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

_OWORD *sub_190B5B87C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes);
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_filterHandler);
  sub_190B5A848(v2, v3, a1);
  v4 = sub_190B5AF40(v2, v3, 4);
  v5 = sub_190B5AF40(v2, v3, 5);
  if (*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    result = &unk_1F0400D18;
  }

  else
  {
    result = &unk_1F0400D48;
  }

  v33 = MEMORY[0x1E69E7CC0];
  v7 = &unk_1F0400D28;
  if (!*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    v7 = &unk_1F0400D58;
  }

  v8 = *v7;
  if (!*v7)
  {

    v26 = MEMORY[0x1E69E7CC0];
LABEL_33:
    sub_190CA9F2C(v4);
    sub_190CA9F2C(v5);
    sub_190CA9F2C(v26);
    sub_1902188FC(0, &unk_1EAD44ED0);
    v27 = sub_190D57C90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    result = swift_allocObject();
    result[1] = xmmword_190DD55F0;
    *(result + 4) = v27;
    return result;
  }

  v31 = v5;
  v32 = v4;
  if (*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering))
  {
    v9 = &unk_1F0400D18;
  }

  else
  {
    v9 = &unk_1F0400D48;
  }

  v10 = (v9 + 32);
  v11 = v8 & ~(v8 >> 63);
  while (v11)
  {
    v12 = *v10;
    if (*v10 == 8)
    {
      goto LABEL_15;
    }

    if (sub_190B6B9E4(*v10) != -1)
    {
      sub_190D58720();
LABEL_15:
      sub_1902188FC(0, &qword_1EAD466C8);
      sub_190D57BB0();
      sub_1902188FC(0, &qword_1EAD46510);
      v30 = 0u;
      v29 = 0u;
      v28 = MEMORY[0x1E69E7CC0];
      v13 = sub_190D57650();
      goto LABEL_16;
    }

    sub_1902188FC(0, &qword_1EAD44E30);
    sub_190D57BB0();
    sub_1902188FC(0, &qword_1EAD46510);
    v30 = 0u;
    v29 = 0u;
    v28 = MEMORY[0x1E69E7CC0];
    v13 = sub_190D58040();
LABEL_16:
    v14 = v13;
    sub_19021A5D4(v12);
    result = CKFrameworkBundle();
    if (!result)
    {
      goto LABEL_35;
    }

    v15 = result;
    v16 = sub_190D56ED0();

    v17 = sub_190D56ED0();
    v18 = [v15 localizedStringForKey:v16 value:0 table:{v17, v28, v29, v30}];

    sub_190D56F10();
    v19 = sub_190D56ED0();

    [v14 setTitle_];

    v20 = v14;
    [v20 setSubtitle_];
    if ((sub_190D57AD0() & 1) == 0)
    {
      sub_190B6B58C(v12);
      v22 = sub_190D56ED0();

      v24 = [objc_opt_self() _systemImageNamed_];
      goto LABEL_21;
    }

    v21 = sub_190D57B60();
    if (v21)
    {
      v22 = v21;
      v23 = CKLocalizedShortNameForContext(v21);
      v24 = [objc_opt_self() __ck_actionImageForSubscriptionShortName_isFilled_];

LABEL_21:
      goto LABEL_22;
    }

    v24 = 0;
LABEL_22:
    [v20 setImage_];

    [v20 setAttributes_];
    v25 = v2 && sub_190CA9880(v12, v2);
    [v20 setState_];

    MEMORY[0x193AF29E0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    result = sub_190D571E0();
    --v11;
    ++v10;
    if (!--v8)
    {
      v26 = v33;

      v4 = v32;
      v5 = v31;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

id sub_190B5BE00(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (!*(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_settingsHandler))
  {
    return v1;
  }

  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_blackholeEnabled);
  result = CKFrameworkBundle();
  v4 = result;
  if (v2 != 1)
  {
    if (result)
    {
      v12 = sub_190D56ED0();
      v13 = sub_190D56ED0();
      v14 = [v4 localizedStringForKey:v12 value:0 table:v13];

      sub_190D56F10();
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_190D56ED0();
  v6 = sub_190D56ED0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_190D56F10();
  result = CKFrameworkBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_190D56ED0();
    v10 = sub_190D56ED0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    sub_190D56F10();
LABEL_8:
    sub_1902188FC(0, &qword_1EAD44E30);
    v15 = sub_190D58040();
    sub_1902188FC(0, &unk_1EAD44ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_190DD55F0;
    *(v16 + 32) = v15;
    v17 = v15;
    v18 = sub_190D57C90();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_190DD55F0;
    *(v1 + 32) = v18;

    return v1;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_190B5C144(void *a1)
{
  if (qword_1EAD461A8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D6A0);
  v3 = a1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v4, v5, "generating menu with configuration: %@", v6, 0xCu);
    sub_190830D58(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  sub_190B5B87C(v3);
  v9 = *&v3[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes];
  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v10 = sub_190D57450();
  v11 = sub_190218BE4(v10);
  v13 = v12;

  v14 = MEMORY[0x1E69E7CC0];
  if ((v13 & 1) != 0 || v11 == 7 || (v3[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_allowInboxFilters] & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_190B59210(v3, v9, v11);
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:

    goto LABEL_14;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_16;
  }

LABEL_11:
  result = CKFrameworkBundle();
  if (result)
  {
    v17 = result;
    sub_1902188FC(0, &unk_1EAD44ED0);
    v18 = sub_190D56ED0();
    v19 = sub_190D56ED0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    sub_190D56F10();
    v21 = sub_190D57C90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_190DD55F0;
    *(v14 + 32) = v21;
LABEL_14:
    v22 = sub_190B5BE00(v3);
    sub_190CA9F2C(v14);
    sub_190CA9F2C(v22);
    sub_1902188FC(0, &unk_1EAD44ED0);
    return sub_190D57C90();
  }

  __break(1u);
  return result;
}

uint64_t _s30EnableEnhancedProtectionButtonVMa_0()
{
  result = qword_1EAD5E090;
  if (!qword_1EAD5E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_190B5C554@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    sub_190D51210();

    sub_19081E484();
    v4 = sub_190D555F0();
    v6 = v5;
    v8 = v7;
    sub_190D55360();
    v9 = sub_190D555B0();
    v11 = v10;
    v13 = v12;

    sub_19081E474(v4, v6, v8 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
    sub_190D56320();

    if (qword_1EAD51E80 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD5E9D8 detailsTextColor];
    if (result)
    {
      sub_190D55CE0();
      v14 = sub_190D55570();
      v16 = v15;
      v20 = v17;
      v21 = v18;

      sub_19081E474(v9, v11, v13 & 1);

      sub_190D56320();
      swift_getKeyPath();
      sub_190B5C890();
      sub_190D51C20();

      KeyPath = swift_getKeyPath();
      result = swift_allocObject();
      *(result + 16) = 0;
      *a1 = v14;
      *(a1 + 8) = v16;
      *(a1 + 16) = v20 & 1;
      *(a1 + 24) = v21;
      *(a1 + 32) = KeyPath;
      *(a1 + 40) = sub_1908D9D28;
      *(a1 + 48) = result;
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

uint64_t sub_190B5C800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56108);
  sub_1908D9C18();
  return sub_190D56030();
}

unint64_t sub_190B5C890()
{
  result = qword_1EAD5EA10;
  if (!qword_1EAD5EA10)
  {
    _s9ViewModelCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EA10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ChatKit17MessageEffectDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_190B5C92C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v26[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v26[-v5];
  v6 = swift_allocObject();
  v7 = *(v1 + 112);
  *(v6 + 112) = *(v1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(v1 + 128);
  v8 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v8;
  v9 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v9;
  v10 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v10;
  v37 = v1;
  sub_190B5E040(v1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0B0);
  sub_190B5E078();
  sub_190D56030();
  v11 = *(v1 + 48);
  v45[2] = *(v1 + 32);
  v45[3] = v11;
  v46 = *(v1 + 64);
  v12 = *(v1 + 16);
  v45[0] = *v1;
  v45[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0F0);
  MEMORY[0x193AF1A80](&v38, v13);
  v14 = v38;
  v15 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v17 = *(v1 + 72);
  v16 = *(v1 + 80);
  if (!v39)
  {
    if (!v16)
    {
      sub_190D52690();
      sub_190D52690();
      v18 = v14;
      v19 = 0;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!v16)
  {
LABEL_7:
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    sub_190A7F678(v14, v15);
    sub_190A7F678(v17, v16);
    goto LABEL_8;
  }

  if (v38 == v17 && v39 == v16)
  {
    sub_190D52690();
    sub_190D52690();
    sub_190D52690();
    sub_190A7F678(v14, v15);
    v18 = v14;
    v19 = v15;
LABEL_12:
    sub_190A7F678(v18, v19);
    v20 = 0;
    goto LABEL_13;
  }

  v27 = sub_190D58760();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190A7F678(v17, v16);
  sub_190A7F678(v14, v15);
  v20 = 0;
  if (v27)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = 1;
LABEL_13:
  v21 = v34;
  sub_190B5D9F0(v20, v34);
  (*(v33 + 8))(v3, v35);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0F8);
  v23 = v36;
  v24 = (v36 + *(v22 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8);
  sub_190D54450();
  *v24 = swift_getKeyPath();
  return sub_190280974(v21, v23);
}

uint64_t sub_190B5CDF0(__int128 *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = a1[3];
  v18 = v23;
  v19 = v5;
  v25 = *(a1 + 8);
  v20 = *(a1 + 8);
  v16 = v21;
  v17 = v2;
  sub_19022FD14(&v21, &v11, &qword_1EAD5E0F0);
  sub_19022FD14(&v21, &v11, &qword_1EAD5E0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0F0);
  MEMORY[0x193AF1A80](&v11);
  v6 = v11;
  v8 = *(a1 + 9);
  v7 = *(a1 + 10);
  if (!*(&v11 + 1))
  {
    if (!v7)
    {
      sub_190D52690();
      sub_190D52690();
      sub_19022EEA4(&v21, &qword_1EAD5E0F0);
      sub_190A7F678(v6, 0);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!v7)
  {
LABEL_6:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_19022EEA4(&v21, &qword_1EAD5E0F0);
    sub_190A7F678(v6, *(&v6 + 1));
    sub_190A7F678(v8, v7);
    goto LABEL_7;
  }

  if (v11 == __PAIR128__(v7, v8))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_190A7F678(v6, *(&v6 + 1));
    sub_190A7F678(v6, *(&v6 + 1));
    sub_19022EEA4(&v21, &qword_1EAD5E0F0);
LABEL_9:

LABEL_11:
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v11 = v21;
    v12 = v22;
    goto LABEL_12;
  }

  v10 = sub_190D58760();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_190A7F678(v8, v7);
  sub_190A7F678(v6, *(&v6 + 1));
  sub_19022EEA4(&v21, &qword_1EAD5E0F0);
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_7:
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v11 = v21;
  v12 = v22;
LABEL_12:
  sub_190D56200();
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v16 = v11;
  v17 = v12;
  return sub_19022EEA4(&v16, &qword_1EAD5E0F0);
}

__n128 sub_190B5D178@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0D8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0C8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  *v6 = sub_190D54AC0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E120);
  sub_190B5D488(a1, &v6[*(v13 + 44)]);
  v14 = sub_190D552C0();
  v15 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v14)
  {
    v15 = sub_190D552F0();
  }

  sub_190D539C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_19081E40C(v6, v9, &qword_1EAD5E0E8);
  v24 = &v9[*(v7 + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  sub_190D564E0();
  sub_190D53C60();
  sub_19081E40C(v9, v12, &qword_1EAD5E0D8);
  v25 = &v12[*(v10 + 36)];
  v26 = v31[1];
  *v25 = v31[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v31[2];
  sub_190D56500();
  sub_190D54430();
  sub_19081E40C(v12, a2, &qword_1EAD5E0C8);
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0B0) + 36);
  v28 = v31[8];
  *(v27 + 64) = v31[7];
  *(v27 + 80) = v28;
  *(v27 + 96) = v31[9];
  v29 = v31[4];
  *v27 = v31[3];
  *(v27 + 16) = v29;
  result = v31[6];
  *(v27 + 32) = v31[5];
  *(v27 + 48) = result;
  return result;
}

void sub_190B5D488(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_190D55EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E128);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v56 - v13;
  v14 = objc_opt_self();
  v15 = *(a1 + 88);
  v72 = *(a1 + 72);
  *v73 = v15;
  *&v73[16] = *(a1 + 104);
  v16 = sub_190D56ED0();
  v17 = [v14 ckImageNamed_];

  if (v17)
  {
    sub_190D55E90();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v58 = sub_190D55F10();

    (*(v4 + 8))(v6, v3);
    sub_190D56500();
    sub_190D53C60();
    v57 = v66;
    v18 = v67;
    v56 = v68;
    v19 = v69;
    v21 = v70;
    v20 = v71;
    v22 = *(a1 + 128);
    v23 = sub_190D552B0();
    v65 = v18;
    v64 = v19;
    v24 = &v11[*(v7 + 36)];
    v25 = *(sub_190D543E0() + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_190D54A20();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #12.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
    v33 = v57;
    *v11 = v58;
    *(v11 + 1) = v33;
    v11[16] = v18;
    *(v11 + 3) = v56;
    v11[32] = v19;
    *(v11 + 5) = v21;
    *(v11 + 6) = v20;
    *(v11 + 7) = v22;
    v11[64] = v23;
    v34 = v59;
    sub_19081E40C(v11, v59, &qword_1EAD5E128);
    v74 = *&v73[8];
    v63 = *&v73[8];
    sub_190D50920();
    sub_190869370(&v74, v62);
    sub_19081E484();
    v35 = sub_190D555F0();
    v37 = v36;
    v39 = v38;
    sub_190D55DC0();
    v40 = sub_190D55570();
    v42 = v41;
    LOBYTE(v25) = v43;

    sub_19081E474(v35, v37, v39 & 1);

    sub_190D55360();
    v44 = sub_190D555B0();
    v46 = v45;
    LOBYTE(v21) = v47;
    v49 = v48;

    sub_19081E474(v40, v42, v25 & 1);

    KeyPath = swift_getKeyPath();
    v51 = v60;
    sub_19022FD14(v34, v60, &qword_1EAD5E128);
    v52 = v61;
    sub_19022FD14(v51, v61, &qword_1EAD5E128);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E130);
    v54 = v52 + *(v53 + 48);
    *v54 = v44;
    *(v54 + 8) = v46;
    *(v54 + 16) = v21 & 1;
    *(v54 + 24) = v49;
    *(v54 + 32) = KeyPath;
    *(v54 + 40) = 1;
    v55 = v52 + *(v53 + 64);
    *v55 = 0;
    *(v55 + 8) = 1;
    sub_19081BE48(v44, v46, v21 & 1);
    sub_190D52690();
    sub_190D50920();
    sub_19022EEA4(v34, &qword_1EAD5E128);
    sub_19081E474(v44, v46, v21 & 1);

    sub_19022EEA4(v51, &qword_1EAD5E128);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190B5D9F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_190D54DC0();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E100);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v29 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E108);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v29 - v7;
  v9 = sub_190D54A80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E110);
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v29 - v14;
  if (a1)
  {
    sub_190D54DB0();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A0);
    v17 = sub_190233640(&qword_1EAD5E118, &qword_1EAD5E0A0);
    v18 = sub_190B5E248(&unk_1EAD45220, MEMORY[0x1E697C720]);
    v19 = v34;
    sub_190D55720();
    (*(v30 + 8))(v4, v19);
    v20 = v31;
    v21 = v35;
    (*(v31 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    v22 = sub_190B5E248(&qword_1EAD45268, MEMORY[0x1E697C540]);
    v37 = v16;
    v38 = v9;
    v39 = v17;
    v40 = v22;
    swift_getOpaqueTypeConformance2();
    v37 = v16;
    v38 = v19;
    v39 = v17;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v20 + 8))(v6, v21);
  }

  else
  {
    sub_190D54A70();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A0);
    v25 = sub_190233640(&qword_1EAD5E118, &qword_1EAD5E0A0);
    v26 = sub_190B5E248(&qword_1EAD45268, MEMORY[0x1E697C540]);
    sub_190D55720();
    (*(v10 + 8))(v12, v9);
    v27 = v33;
    (*(v13 + 16))(v8, v15, v33);
    swift_storeEnumTagMultiPayload();
    v37 = v24;
    v38 = v9;
    v39 = v25;
    v40 = v26;
    swift_getOpaqueTypeConformance2();
    v28 = sub_190B5E248(&unk_1EAD45220, MEMORY[0x1E697C720]);
    v37 = v24;
    v38 = v34;
    v39 = v25;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v13 + 8))(v15, v27);
  }
}

unint64_t sub_190B5E078()
{
  result = qword_1EAD5E0B8;
  if (!qword_1EAD5E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0B0);
    sub_190B5E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E0B8);
  }

  return result;
}

unint64_t sub_190B5E104()
{
  result = qword_1EAD5E0C0;
  if (!qword_1EAD5E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0C8);
    sub_190B5E190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E0C0);
  }

  return result;
}

unint64_t sub_190B5E190()
{
  result = qword_1EAD5E0D0;
  if (!qword_1EAD5E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0D8);
    sub_190233640(&qword_1EAD5E0E0, &qword_1EAD5E0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E0D0);
  }

  return result;
}

uint64_t sub_190B5E248(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190B5E290()
{
  result = qword_1EAD5E138;
  if (!qword_1EAD5E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0F8);
    sub_190B5E348();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E138);
  }

  return result;
}

unint64_t sub_190B5E348()
{
  result = qword_1EAD5E140;
  if (!qword_1EAD5E140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E0A0);
    sub_190D54A80();
    sub_190233640(&qword_1EAD5E118, &qword_1EAD5E0A0);
    sub_190B5E248(&qword_1EAD45268, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_190D54DC0();
    sub_190B5E248(&unk_1EAD45220, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E140);
  }

  return result;
}

id sub_190B5E4EC()
{
  v0 = [objc_allocWithZone(sub_190D52A60()) init];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D529F0();

  sub_190D52A00();
  sub_190D52A20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A30();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A10();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A50();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D50920();
  sub_190D52A40();

  return v0;
}

void sub_190B5E6F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [v4 conversation];
  v6 = [v5 recipients];

  v7 = sub_190D57180();
  v8 = sub_190880D10(v7);

  if (v8)
  {
    v28 = v4;
    if (v8 >> 62)
    {
LABEL_25:
      v9 = sub_190D581C0();
      if (v9)
      {
LABEL_5:
        v10 = 0;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x193AF3B90](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v11 = *(v8 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v14 = [v11 defaultIMHandle];
          if (!v14)
          {
            __break(1u);
            return;
          }

          v15 = v14;
          v16 = [v14 ID];

          v17 = sub_190D56F10();
          v19 = v18;

          if (v17 == a1 && v19 == a2)
          {
            break;
          }

          v21 = sub_190D58760();

          if (v21)
          {
            goto LABEL_20;
          }

          ++v10;
          if (v13 == v9)
          {
            goto LABEL_26;
          }
        }

LABEL_20:

        v22 = [v12 defaultIMHandle];
        v4 = v28;
        if (v22)
        {
          v23 = v22;
          v24 = [v28 conversation];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_190DD55F0;
          *(v25 + 32) = v23;
          sub_19086E9EC();
          v26 = v23;
          v27 = sub_190D57160();

          [v24 removeRecipientHandles_];

          v4 = v24;
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_5;
      }
    }

LABEL_26:

    v4 = v28;
  }

LABEL_27:
  v27 = v4;
LABEL_28:
}

void sub_190B5EA0C(uint64_t a1, SEL *a2)
{
  v4 = [objc_opt_self() sharedBlockList];
  [v4 *a2];
}

id sub_190B5EA7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v4 = Strong;
  v5 = [Strong conversation];
  v6 = [v5 recipients];

  v7 = sub_190D57180();
  v8 = sub_190880D10(v7);

  if (!v8)
  {

    return (v8 & 1);
  }

  v29 = v4;
  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_33:

LABEL_34:
    LOBYTE(v8) = 0;
    return (v8 & 1);
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x193AF3B90](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v9 = sub_190D581C0();
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    }

    result = [v11 defaultIMHandle];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = [result ID];

    v17 = sub_190D56F10();
    v19 = v18;

    if (v17 == a1 && v19 == a2)
    {
      break;
    }

    v21 = sub_190D58760();

    if (v21)
    {
      goto LABEL_21;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_21:

  v22 = [v12 propertyType];
  if (!v22)
  {
    sub_190D56F10();
    goto LABEL_27;
  }

  v23 = v22;
  v24 = sub_190D56F10();
  v26 = v25;

  v27 = sub_190D56F10();
  if (!v26)
  {
LABEL_27:

    goto LABEL_34;
  }

  if (v24 == v27 && v26 == v28)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    LOBYTE(v8) = sub_190D58760();
  }

  return (v8 & 1);
}

void sub_190B5ED74(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 providerManager];

  v5 = [v4 telephonyProvider];
  v6 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v8 = Strong;
  v9 = [Strong conversation];
  v10 = [v9 recipients];

  v11 = sub_190D57180();
  v12 = sub_190880D10(v11);

  if (!v12)
  {

    return;
  }

  v34 = v2;
  v35 = v8;
  v36 = v6;
  v37 = v5;
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_30:

    return;
  }

LABEL_29:
  v13 = sub_190D581C0();
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_5:
  v14 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x193AF3B90](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = [v15 defaultIMHandle];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    v20 = [v18 ID];

    v21 = sub_190D56F10();
    v23 = v22;

    if (v21 == a1 && v23 == a2)
    {
      break;
    }

    v25 = sub_190D58760();

    if (v25)
    {
      goto LABEL_22;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_30;
    }
  }

LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v26 = sub_190D57160();
  v27 = [v16 cnContactWithKeys_];

  if (v27)
  {
    v28 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v29 = sub_190D56ED0();
    v30 = [v28 initWithType:2 value:v29];

    [v36 setHandle_];
    v31 = [v27 identifier];
    if (!v31)
    {
      sub_190D56F10();
      v31 = sub_190D56ED0();
    }

    [v36 setContactIdentifier_];

    [v36 setPerformDialAssist_];
    v32 = [v34 sharedInstance];
    aBlock[4] = sub_190B5F224;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190BB9AE8;
    aBlock[3] = &block_descriptor_91;
    v33 = _Block_copy(aBlock);
    [v32 launchAppForDialRequest:v36 completion:v33];
    _Block_release(v33);
  }

  else
  {
  }
}

void sub_190B5F224(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EAD51C50 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9DF70);
    v4 = a1;
    oslog = sub_190D53020();
    v5 = sub_190D576A0();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_19020E000, oslog, v5, "Failed to initiate dial request with error %@", v6, 0xCu);
      sub_190830D58(v7);
      MEMORY[0x193AF7A40](v7, -1, -1);
      MEMORY[0x193AF7A40](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

id sub_190B5F3C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v3 = result;
    v4 = [result faceTimeVideoIsAllowlisted];

    if (v4)
    {
      v5 = objc_opt_self();
      v6 = [v1 conversation];
      v7 = [v5 isFaceTimeVideoAvailable_];

      v1 = v6;
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_190B5F4C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v4 conversation];
    v6 = [v5 recipients];

    v7 = sub_190D57180();
    v8 = sub_190880D10(v7);

    if (v8)
    {
      v30 = v4;
      if (v8 >> 62)
      {
LABEL_28:
        v9 = sub_190D581C0();
        if (v9)
        {
LABEL_5:
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x193AF3B90](v10, v8);
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v14 = [v11 defaultIMHandle];
            if (!v14)
            {
              __break(1u);
              return;
            }

            v15 = v14;
            v16 = [v14 ID];

            v17 = sub_190D56F10();
            v19 = v18;

            if (v17 == a1 && v19 == a2)
            {
              break;
            }

            v21 = sub_190D58760();

            if (v21)
            {
              goto LABEL_20;
            }

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_29;
            }
          }

LABEL_20:

          v22 = [v12 defaultIMHandle];
          v4 = v30;
          if (!v22)
          {

            goto LABEL_30;
          }

          v23 = v22;
          v24 = [v30 conversation];

          v25 = [v24 chat];
          if (v25 && (v26 = [v25 lastAddressedHandleID], v25, v26))
          {
            v27 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_190DD55F0;
            *(v28 + 32) = v23;
            sub_19086E9EC();
            v29 = v23;
            v4 = sub_190D57160();

            [v27 initiateTUConversationForParticipants:v4 senderAddress:v26 videoEnabled:1 groupID:0 displayName:0 screenShareType:0];

            v12 = v26;
          }

          else
          {

            v4 = v23;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_5;
        }
      }

LABEL_29:

      v4 = v30;
    }

LABEL_30:
    v12 = v4;
LABEL_31:
  }
}

id AppCardLoadingViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppCardLoadingViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCardLoadingViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppCardLoadingViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCardLoadingViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B5F9FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54FD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E150);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  sub_190D53B80();
  sub_190D54FC0();
  sub_190233640(&qword_1EAD5E158, &qword_1EAD5E150);
  sub_190B5FC5C();
  sub_190D556B0();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E168) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FC8) + 28);
  v12 = *MEMORY[0x1E697DC28];
  v13 = sub_190D53A70();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  result = swift_getKeyPath();
  *v10 = result;
  return result;
}

unint64_t sub_190B5FC5C()
{
  result = qword_1EAD5E160;
  if (!qword_1EAD5E160)
  {
    sub_190D54FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E160);
  }

  return result;
}

uint64_t sub_190B5FCD8(uint64_t a1)
{
  v2 = sub_190D53A70();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x193AEFE10](v5);
}

unint64_t sub_190B5FDA0()
{
  result = qword_1EAD5E170;
  if (!qword_1EAD5E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E150);
    sub_190D54FD0();
    sub_190233640(&qword_1EAD5E158, &qword_1EAD5E150);
    sub_190B5FC5C();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD45200, &qword_1EAD52FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E170);
  }

  return result;
}

uint64_t CKConversation.shouldShowTranslationTip()()
{
  v1[5] = v0;
  v1[6] = sub_190D572A0();
  v1[7] = sub_190D57290();
  v3 = sub_190D57240();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190B5FF84, v3, v2);
}

uint64_t sub_190B5FF84()
{
  v1 = [*(v0 + 40) chat];
  if (v1 && (v2 = v1, v3 = [v1 isAutomaticTranslationEnabled], v2, (v3 & 1) != 0) || (sub_190D52030(), (sub_190D51FD0() & 1) == 0))
  {

    v6 = sub_1908229DC(MEMORY[0x1E69E7CC0]);
    v7 = *(v0 + 8);

    return v7(0, v6);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_190B600B4;

    return CKConversation.languagesForIncomingTextMessages(untilGUID:)(0, 0);
  }
}

uint64_t sub_190B600B4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_190B601DC, v4, v3);
}

uint64_t sub_190B601DC()
{
  v0[12] = *(v0[11] + 16);
  v0[13] = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190B60274, v2, v1);
}

uint64_t sub_190B60274()
{

  if (qword_1EAD45F78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96) != 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E180);
  __swift_project_value_buffer(v2, qword_1EAD9D5F8);
  *(v0 + 112) = v1;
  swift_beginAccess();
  sub_190D53850();
  swift_endAccess();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_190B60374, v3, v4);
}

uint64_t sub_190B60374()
{

  v1 = v0[11];
  v2 = v0[12] != 0;
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t CKConversation.languagesForIncomingTextMessages(untilGUID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v3[7] = swift_task_alloc();
  v4 = sub_190D519C0();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_190D572A0();
  v3[12] = sub_190D57290();
  v6 = sub_190D57240();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190B6051C, v6, v5);
}

void sub_190B6051C()
{
  v145 = v0;
  v1 = v0;
  v2 = [*(v0 + 48) chat];
  *(v0 + 120) = v2;
  if (!v2)
  {

    v52 = sub_1908229DC(MEMORY[0x1E69E7CC0]);
LABEL_106:

    v126 = *(v1 + 8);

    v126(v52);
    return;
  }

  v3 = v2;
  v132 = sub_1908228E4(MEMORY[0x1E69E7CC0]);
  v4 = [v3 chatItems];
  sub_1902188FC(0, &unk_1EAD450C0);
  v5 = sub_190D57180();

  if (v5 >> 62)
  {
    goto LABEL_113;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v130 = v0;
  while (v6)
  {
    v131 = 0;
    v7 = v5 & 0xC000000000000001;
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = v5 + 32;
    v134 = v5 & 0xFFFFFFFFFFFFFF8;
    v136 = v5 + 32;
    v138 = *(v1 + 40);
    v140 = v5;
    while (1)
    {
      v10 = __OFSUB__(v6--, 1);
      if (v10)
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v7)
      {
        v11 = MEMORY[0x193AF3B90](v6, v5);
        goto LABEL_14;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_110;
      }

      v11 = *(v9 + 8 * v6);
LABEL_14:
      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v12 = v12;
        if (([v14 isFromMe] & 1) == 0)
        {
          v5 = [v14 sender];

          if (v5)
          {
            v15 = v12;
            v16 = [v14 guid];
            if (v16)
            {
              v17 = v16;
              v18 = sub_190D56F10();
              v20 = v19;

              if (v138)
              {
                if (v18 == *(v1 + 32) && *(v1 + 40) == v20)
                {

LABEL_57:

LABEL_59:
                  v53 = v131;
                  goto LABEL_60;
                }

                v21 = sub_190D58760();

                v8 = v134;
                if (v21)
                {
                  goto LABEL_57;
                }
              }

              else
              {

                v8 = v134;
              }
            }

            else if (!v138)
            {

LABEL_58:

              goto LABEL_59;
            }

            v22 = v15;
            v23 = [v14 translationSecondaryText];
            if (v23)
            {
              v24 = v23;

              goto LABEL_29;
            }

            v25 = [v14 text];

            if (v25)
            {
              v26 = [v25 string];

              v1 = sub_190D56F10();
              v28 = v27;

              v29 = HIBYTE(v28) & 0xF;
              v133 = v1;
              if ((v28 & 0x2000000000000000) == 0)
              {
                v29 = v1 & 0xFFFFFFFFFFFFLL;
              }

              if (!v29)
              {

                v9 = v136;
                v5 = v140;
                v1 = v130;
                goto LABEL_7;
              }

              v129 = v28;
              v30 = [v14 guid];

              if (!v30)
              {
                __break(1u);
                return;
              }

              v31 = sub_190D56F10();
              v127 = v32;
              v128 = v31;

              sub_19022123C(v131);
              v33 = v132;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v144 = v132;
              v36 = sub_190875FB8(v5);
              v37 = *(v132 + 16);
              v38 = (v35 & 1) == 0;
              v39 = v37 + v38;
              if (__OFADD__(v37, v38))
              {
                goto LABEL_111;
              }

              v1 = v35;
              if (*(v132 + 24) >= v39)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v35)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  sub_190B6970C();
                  v33 = v144;
                  if (v1)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                sub_190B65970(v39, isUniquelyReferenced_nonNull_native);
                sub_1902188FC(0, &qword_1EAD44E70);
                v40 = sub_190875FB8(v5);
                if ((v1 & 1) != (v41 & 1))
                {

                  sub_190D587C0();
                  return;
                }

                v36 = v40;
                v33 = v144;
                if (v1)
                {
LABEL_48:
                  v132 = v33;
                  v45 = v33[7];
                  v46 = *(v45 + 8 * v36);
                  v47 = swift_isUniquelyReferenced_nonNull_native();
                  *(v45 + 8 * v36) = v46;
                  if ((v47 & 1) == 0)
                  {
                    v46 = sub_190836718(0, *(v46 + 2) + 1, 1, v46);
                    *(v45 + 8 * v36) = v46;
                  }

                  v49 = *(v46 + 2);
                  v48 = *(v46 + 3);
                  if (v49 >= v48 >> 1)
                  {
                    *(v45 + 8 * v36) = sub_190836718((v48 > 1), v49 + 1, 1, v46);
                  }

                  v50 = *(v45 + 8 * v36);
                  *(v50 + 16) = v49 + 1;
                  v51 = (v50 + 32 * v49);
                  v51[4] = v128;
                  v51[5] = v127;
                  v8 = v134;
                  v1 = v130;
                  v51[6] = v133;
                  v51[7] = v129;
                  v131 = sub_190838A1C;
                  goto LABEL_30;
                }
              }

              v33[(v36 >> 6) + 8] |= 1 << v36;
              *(v33[6] + 8 * v36) = v5;
              *(v33[7] + 8 * v36) = MEMORY[0x1E69E7CC0];
              v42 = v33[2];
              v10 = __OFADD__(v42, 1);
              v43 = v42 + 1;
              if (v10)
              {
                goto LABEL_112;
              }

              v33[2] = v43;
              v44 = v5;
              goto LABEL_48;
            }

LABEL_29:
LABEL_30:
            v9 = v136;
          }

          else
          {
          }

          v5 = v140;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (!v6)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    v6 = sub_190D581C0();
    v130 = v1;
  }

  v53 = 0;
LABEL_60:
  *(v1 + 128) = v53;
  *(v1 + 136) = v132;
  sub_190D52030();
  *(v1 + 144) = sub_190D52010();
  v54 = *(v132 + 32);
  *(v1 + 232) = v54;
  v55 = -1;
  v56 = -1 << v54;
  if (-(-1 << v54) < 64)
  {
    v55 = ~(-1 << -v56);
  }

  v57 = MEMORY[0x1E69E7CC8];
  v58 = v55 & *(v132 + 64);
  *(v1 + 176) = MEMORY[0x1E69E7CC8];
  *(v1 + 184) = v57;
  *(v1 + 160) = 0;
  *(v1 + 168) = v57;
  *(v1 + 152) = v57;
  sub_190D52690();
  if (!v58)
  {
    v61 = 0;
    v62 = ((63 - v56) >> 6) - 1;
    v60 = *(v1 + 136);
    while (v62 != v61)
    {
      v59 = v61 + 1;
      v58 = *(v60 + 8 * v61++ + 72);
      if (v58)
      {
        goto LABEL_67;
      }
    }

    if (*(v57 + 16))
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v75 = sub_190D53040();
      __swift_project_value_buffer(v75, qword_1EAD9D7C0);
      v76 = sub_190D53020();
      v77 = sub_190D576C0();
      if (os_log_type_enabled(v76, v77))
      {
        v142 = v77;
        v78 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v143 = v139;
        *v78 = 136315650;
        v79 = sub_190D518F0();
        v80 = *(v79 + 16);
        if (v80)
        {
          v135 = v78;
          v137 = v76;
          v81 = *(v1 + 72);
          v144 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v80, 0);
          v82 = v144;
          v83 = v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
          v84 = *(v81 + 72);
          v85 = *(v81 + 16);
          do
          {
            v86 = v130[9];
            v87 = v130[10];
            v88 = v130[8];
            v85(v87, v83, v88);
            v89 = sub_190D518C0();
            v91 = v90;
            (*(v86 + 8))(v87, v88);
            v144 = v82;
            v93 = v82[2];
            v92 = v82[3];
            if (v93 >= v92 >> 1)
            {
              sub_19082DBB4((v92 > 1), v93 + 1, 1);
              v82 = v144;
            }

            v82[2] = v93 + 1;
            v94 = &v82[2 * v93];
            v94[4] = v89;
            v94[5] = v91;
            v83 += v84;
            --v80;
          }

          while (v80);
LABEL_99:

          v1 = v130;
          v78 = v135;
          v76 = v137;
LABEL_104:
          v115 = *(v1 + 136);
          v117 = *(v1 + 120);
          v116 = *(v1 + 128);
          v118 = MEMORY[0x193AF2A20](v82, MEMORY[0x1E69E6158]);
          v120 = v119;

          v121 = sub_19021D9F8(v118, v120, &v143);

          *(v78 + 4) = v121;
          *(v78 + 12) = 2080;
          sub_190D52690();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
          sub_190B6AA20(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
          v1 = v130;
          v122 = sub_190D56DB0();
          v124 = v123;

          v125 = sub_19021D9F8(v122, v124, &v143);

          *(v78 + 14) = v125;
          *(v78 + 22) = 2048;
          *(v78 + 24) = *(v115 + 16);
          _os_log_impl(&dword_19020E000, v76, v142, "languagesForIncomingTextMessages - local: %s, remote: %s, message count: %ld", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v139, -1, -1);
          MEMORY[0x193AF7A40](v78, -1, -1);

          v114 = v116;
          goto LABEL_105;
        }

        goto LABEL_103;
      }
    }

    else
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v95 = sub_190D53040();
      __swift_project_value_buffer(v95, qword_1EAD9D7C0);
      v76 = sub_190D53020();
      v96 = sub_190D57690();
      if (os_log_type_enabled(v76, v96))
      {
        v142 = v96;
        v78 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v143 = v139;
        *v78 = 136315650;
        v97 = sub_190D518F0();
        v98 = *(v97 + 16);
        if (v98)
        {
          v135 = v78;
          v137 = v76;
          v99 = *(v1 + 72);
          v144 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v98, 0);
          v82 = v144;
          v100 = v97 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
          v101 = *(v99 + 72);
          v102 = *(v99 + 16);
          do
          {
            v103 = v130[9];
            v104 = v130[10];
            v105 = v130[8];
            v102(v104, v100, v105);
            v106 = sub_190D518C0();
            v108 = v107;
            (*(v103 + 8))(v104, v105);
            v144 = v82;
            v110 = v82[2];
            v109 = v82[3];
            if (v110 >= v109 >> 1)
            {
              sub_19082DBB4((v109 > 1), v110 + 1, 1);
              v82 = v144;
            }

            v82[2] = v110 + 1;
            v111 = &v82[2 * v110];
            v111[4] = v106;
            v111[5] = v108;
            v100 += v101;
            --v98;
          }

          while (v98);
          goto LABEL_99;
        }

LABEL_103:

        v82 = MEMORY[0x1E69E7CC0];
        goto LABEL_104;
      }
    }

    v112 = *(v1 + 120);
    v113 = *(v1 + 128);

    v114 = v113;
LABEL_105:
    sub_19022123C(v114);
    sub_19022123C(0);
    v52 = MEMORY[0x1E69E7CC8];
    goto LABEL_106;
  }

  v59 = 0;
  v60 = *(v1 + 136);
LABEL_67:
  *(v1 + 192) = v58;
  *(v1 + 200) = v59;
  v63 = *(*(v60 + 56) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));
  *(v1 + 208) = v63;
  v64 = *(v63 + 16);
  if (v64)
  {
    *(v1 + 16) = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082DBB4(0, v64, 0);
    v65 = *(v1 + 16);
    v66 = (v63 + 56);
    do
    {
      v68 = *(v66 - 1);
      v67 = *v66;
      *(v1 + 16) = v65;
      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      sub_190D52690();
      if (v70 >= v69 >> 1)
      {
        sub_19082DBB4((v69 > 1), v70 + 1, 1);
        v65 = *(v1 + 16);
      }

      *(v65 + 16) = v70 + 1;
      v71 = v65 + 16 * v70;
      *(v71 + 32) = v68;
      *(v71 + 40) = v67;
      v66 += 4;
      --v64;
    }

    while (v64);
  }

  else
  {
    sub_190D52690();
    v65 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 216) = v65;
  v72 = sub_190D52020();
  v141 = (*MEMORY[0x1E69A66C8] + MEMORY[0x1E69A66C8]);
  v73 = swift_task_alloc();
  *(v1 + 224) = v73;
  *v73 = v1;
  v73[1] = sub_190B612C4;
  v74 = *(v1 + 56);

  v141(v74, v65, v72 & 1);
}

uint64_t sub_190B612C4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_190B61408, v3, v2);
}

uint64_t sub_190B61408()
{
  v133 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v129 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_1908701CC(v3);
LABEL_8:
    v16 = v0[23];
    v17 = *(v0 + 21);
    v18 = v0[19];
    v19 = v0[20];
    goto LABEL_31;
  }

  v4 = v0[15];
  (*(v2 + 32))(v0[11], v3, v1);
  sub_190D518C0();
  v5 = sub_190D56ED0();

  v6 = [v4 preferredLanguagesContainVariantForCode_];

  v7 = v0[26];
  if (v6)
  {

    if (qword_1EAD46280 != -1)
    {
LABEL_80:
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D7C0);
    v9 = sub_190D53020();
    v10 = sub_190D576C0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v9, v10, "detection - language found in preferredLanguages", v15, 2u);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_8;
  }

  v124 = *(v7 + 16);
  if (v124)
  {
    v20 = 0;
    v18 = v0[19];
    v21 = v0[20];
    v22 = v7 + 56;
    while (1)
    {
      v0 = v129;
      if (v20 >= *(v129[26] + 16))
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v23 = v129[11];
      v25 = *(v22 - 24);
      v24 = *(v22 - 16);
      swift_bridgeObjectRetain_n();
      sub_190D52690();
      sub_19022123C(v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129[3] = v18;
      v28 = sub_190875EE0(v23);
      v29 = v18[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_78;
      }

      v32 = v27;
      if (v18[3] >= v31)
      {
        break;
      }

      v0 = v129;
      v33 = v129[11];
      sub_190B65594(v31, isUniquelyReferenced_nonNull_native);
      v18 = v129[3];
      v34 = sub_190875EE0(v33);
      if ((v32 & 1) != (v35 & 1))
      {

        return sub_190D587C0();
      }

      v28 = v34;
      if ((v32 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_21:
      v126 = v25;
      v42 = v18[7];
      v43 = *(v42 + 8 * v28);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 8 * v28) = v43;
      if ((v44 & 1) == 0)
      {
        v43 = sub_1908354D4(0, *(v43 + 2) + 1, 1, v43);
        *(v42 + 8 * v28) = v43;
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      if (v46 >= v45 >> 1)
      {
        v43 = sub_1908354D4((v45 > 1), v46 + 1, 1, v43);
        *(v42 + 8 * v28) = v43;
      }

      ++v20;
      *(v43 + 2) = v46 + 1;
      v47 = &v43[16 * v46];
      *(v47 + 4) = v126;
      *(v47 + 5) = v24;

      v22 += 32;
      v21 = sub_190838A1C;
      if (v124 == v20)
      {
        v0 = v129;
        v127 = vdupq_n_s64(v18);
        v19 = sub_190838A1C;
        v16 = v18;
        goto LABEL_30;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v0 = v129;
      sub_190B6948C();
      v18 = v129[3];
      if (v32)
      {
        goto LABEL_21;
      }
    }

LABEL_19:
    v36 = v129[11];
    v37 = v129[8];
    v38 = v129[9];
    v18[(v28 >> 6) + 8] |= 1 << v28;
    (*(v38 + 16))(v18[6] + *(v38 + 72) * v28, v36, v37);
    *(v18[7] + 8 * v28) = MEMORY[0x1E69E7CC0];
    v39 = v18[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_79;
    }

    v18[2] = v41;
    goto LABEL_21;
  }

  v16 = v0[23];
  v127 = *(v0 + 21);
  v18 = v0[19];
  v19 = v0[20];
LABEL_30:
  v48 = v0[11];
  v50 = v0[8];
  v49 = v0[9];

  (*(v49 + 8))(v48, v50);
  v17 = v127;
LABEL_31:
  v52 = v0[24];
  v51 = v0[25];
  v0[23] = v16;
  *(v0 + 21) = v17;
  v0[19] = v18;
  v0[20] = v19;
  v53 = (v52 - 1) & v52;
  if (!v53)
  {
    while (1)
    {
      v55 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_77;
      }

      v54 = v0[17];
      if (v55 >= (((1 << *(v0 + 232)) + 63) >> 6))
      {
        break;
      }

      v53 = *(v54 + 8 * v55 + 64);
      ++v51;
      if (v53)
      {
        v51 = v55;
        goto LABEL_37;
      }
    }

    v128 = v17.i64[0];

    if (v16[2])
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v69 = sub_190D53040();
      __swift_project_value_buffer(v69, qword_1EAD9D7C0);
      v70 = sub_190D53020();
      v71 = sub_190D576C0();
      if (os_log_type_enabled(v70, v71))
      {
        v123 = v71;
        v125 = v19;
        v72 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v131 = v122;
        *v72 = 136315650;
        v73 = sub_190D518F0();
        v74 = *(v73 + 16);
        if (v74)
        {
          v119 = v72;
          v120 = v70;
          v75 = v0[9];
          v132 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v74, 0);
          v76 = v132;
          v77 = v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
          v78 = *(v75 + 72);
          v79 = *(v75 + 16);
          do
          {
            v81 = v129[9];
            v80 = v129[10];
            v82 = v129[8];
            v79(v80, v77, v82);
            v83 = sub_190D518C0();
            v85 = v84;
            (*(v81 + 8))(v80, v82);
            v132 = v76;
            v87 = *(v76 + 16);
            v86 = *(v76 + 24);
            if (v87 >= v86 >> 1)
            {
              sub_19082DBB4((v86 > 1), v87 + 1, 1);
              v76 = v132;
            }

            *(v76 + 16) = v87 + 1;
            v88 = v76 + 16 * v87;
            *(v88 + 32) = v83;
            *(v88 + 40) = v85;
            v77 += v78;
            --v74;
          }

          while (v74);
LABEL_67:

          v72 = v119;
          v70 = v120;
LABEL_72:
          v0 = v129;
          v108 = v129[17];
          v109 = v129[15];
          v121 = v129[16];
          v110 = MEMORY[0x193AF2A20](v76, MEMORY[0x1E69E6158]);
          v112 = v111;

          v113 = sub_19021D9F8(v110, v112, &v131);

          *(v72 + 4) = v113;
          *(v72 + 12) = 2080;
          sub_190D52690();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
          sub_190B6AA20(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
          v114 = sub_190D56DB0();
          v116 = v115;

          v117 = sub_19021D9F8(v114, v116, &v131);

          *(v72 + 14) = v117;
          *(v72 + 22) = 2048;
          *(v72 + 24) = *(v108 + 16);
          _os_log_impl(&dword_19020E000, v70, v123, "languagesForIncomingTextMessages - local: %s, remote: %s, message count: %ld", v72, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v122, -1, -1);
          MEMORY[0x193AF7A40](v72, -1, -1);

          sub_19022123C(v121);
          v19 = v125;
          goto LABEL_73;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if (qword_1EAD46280 != -1)
      {
        swift_once();
      }

      v89 = sub_190D53040();
      __swift_project_value_buffer(v89, qword_1EAD9D7C0);
      v70 = sub_190D53020();
      v90 = sub_190D57690();
      if (os_log_type_enabled(v70, v90))
      {
        v123 = v90;
        v125 = v19;
        v72 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v131 = v122;
        *v72 = 136315650;
        v91 = sub_190D518F0();
        v92 = *(v91 + 16);
        if (v92)
        {
          v119 = v72;
          v120 = v70;
          v93 = v0[9];
          v132 = MEMORY[0x1E69E7CC0];
          sub_19082DBB4(0, v92, 0);
          v76 = v132;
          v94 = v91 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
          v95 = *(v93 + 72);
          v96 = *(v93 + 16);
          do
          {
            v98 = v129[9];
            v97 = v129[10];
            v99 = v129[8];
            v96(v97, v94, v99);
            v100 = sub_190D518C0();
            v102 = v101;
            (*(v98 + 8))(v97, v99);
            v132 = v76;
            v104 = *(v76 + 16);
            v103 = *(v76 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_19082DBB4((v103 > 1), v104 + 1, 1);
              v76 = v132;
            }

            *(v76 + 16) = v104 + 1;
            v105 = v76 + 16 * v104;
            *(v105 + 32) = v100;
            *(v105 + 40) = v102;
            v94 += v95;
            --v92;
          }

          while (v92);
          goto LABEL_67;
        }

LABEL_71:

        v76 = MEMORY[0x1E69E7CC0];
        goto LABEL_72;
      }
    }

    v106 = v0[15];
    v107 = v0[16];

    sub_19022123C(v107);
LABEL_73:
    sub_19022123C(v19);

    v118 = v0[1];

    return v118(v128);
  }

  v54 = v0[17];
LABEL_37:
  v0[24] = v53;
  v0[25] = v51;
  v56 = *(*(v54 + 56) + ((v51 << 9) | (8 * __clz(__rbit64(v53)))));
  v0[26] = v56;
  v57 = *(v56 + 16);
  if (v57)
  {
    v0[2] = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082DBB4(0, v57, 0);
    v58 = v0[2];
    v59 = (v56 + 56);
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      v0[2] = v58;
      v63 = *(v58 + 16);
      v62 = *(v58 + 24);
      sub_190D52690();
      if (v63 >= v62 >> 1)
      {
        sub_19082DBB4((v62 > 1), v63 + 1, 1);
        v58 = v0[2];
      }

      *(v58 + 16) = v63 + 1;
      v64 = v58 + 16 * v63;
      *(v64 + 32) = v61;
      *(v64 + 40) = v60;
      v59 += 4;
      --v57;
    }

    while (v57);
  }

  else
  {
    sub_190D52690();
    v58 = MEMORY[0x1E69E7CC0];
  }

  v0[27] = v58;
  v65 = sub_190D52020();
  v130 = (*MEMORY[0x1E69A66C8] + MEMORY[0x1E69A66C8]);
  v66 = swift_task_alloc();
  v0[28] = v66;
  *v66 = v0;
  v66[1] = sub_190B612C4;
  v67 = v0[7];

  return v130(v67, v58, v65 & 1);
}

uint64_t sub_190B61FEC()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D7C0);
  __swift_project_value_buffer(v0, qword_1EAD9D7C0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190B62058(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538E8);
  v39 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
        sub_190D52690();
        v29 = v27;
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B6231C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C0);
  v30 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      MEMORY[0x193AF4110](v20);
      result = sub_190D588C0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B625AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E250);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        sub_190D52690();
      }

      result = sub_190D58860();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B6281C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A60);
  v36 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v37 = *(v22 + 8);
      v24 = *(v22 + 24);
      if ((v36 & 1) == 0)
      {
        v25 = v37;
        v26 = v23;
      }

      result = sub_190D58860();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v37;
      *(v16 + 24) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_190B62AD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A68);
  v33 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_190824530(v24, v34);
      }

      else
      {
        sub_19021834C(v24, v34);
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_190824530(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_190B62D9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_190824530((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_19087862C(v23, &v36);
        sub_19021834C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_190D58210();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_190824530(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_190B63054(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538C0);
  v37 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
        sub_190D52690();
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B63328(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ConversationEntity();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E240);
  v40 = a2;
  result = sub_190D58580();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_19082FC20(v28, v41);
      }

      else
      {
        sub_190830594(v28, v41);
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_19082FC20(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_190B63664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53878);
  v40 = a2;
  result = sub_190D58580();
  v41 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v7 = 0;
    v8 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = result + 64;
    v39 = v5;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v21 = v18 | (v7 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v42 = *(v23 + 16);
      v27 = *(v23 + 32);
      v28 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {
        sub_1908B81B0(v24, v25, v42, v26, *(v23 + 32));
        v29 = v28;
      }

      sub_190D58870();
      if (v27)
      {
        MEMORY[0x193AF4110](1);
        sub_190D56FC0();
      }

      else
      {
        MEMORY[0x193AF4110](0);
        sub_190D56FC0();
        sub_190D58890();
        if (v26)
        {
          sub_190D56FC0();
        }
      }

      result = sub_190D588C0();
      v30 = -1 << *(v41 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v15 = v28;
        v16 = v27;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v13 + 8 * v32);
          if (v36 != -1)
          {
            v14 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
      v16 = v27;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v41 + 48) + 40 * v14;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v42;
      *(v17 + 24) = v26;
      *(v17 + 32) = v16;
      *(*(v41 + 56) + 8 * v14) = v15;
      ++*(v41 + 16);
      v5 = v39;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_37;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v8, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v41;
  return result;
}

uint64_t sub_190B639E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539F0);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        sub_190D50920();
      }

      result = sub_190D58860();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B63C54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E1E0);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_190D58870();
      MEMORY[0x193AF4110](v20);
      result = sub_190D588C0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_190B63EEC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_190D58580();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_190B64184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A48);
  v35 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_190824530(v22, v36);
      }

      else
      {
        sub_19021834C(v22, v36);
        v23 = v21;
      }

      sub_190D56F10();
      sub_190D58870();
      sub_190D56FC0();
      v24 = sub_190D588C0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_190824530(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_190B64454(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_190D52E90();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E190);
  v40 = a2;
  result = sub_190D58580();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_190B6AA20(&qword_1EAD54D68, MEMORY[0x1E69E8450]);
      result = sub_190D56DC0();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_190B64814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A30);
  v30 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      MEMORY[0x193AF4110](v20);
      result = sub_190D588C0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B64AA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD538F0);
  v38 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
        sub_190D52690();
        v28 = v27;
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B64D90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C8);
  v34 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_190D52690();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B65030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1B0);
  v34 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_190D52690();
        sub_190D50920();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B652EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E238);
  v34 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_190D52690();
        sub_190D50920();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B65594(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_190D519C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E230);
  v39 = a2;
  result = sub_190D58580();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        sub_190D52690();
      }

      sub_190B6AA20(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
      result = sub_190D56DC0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_190B65970(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A08);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        sub_190D52690();
      }

      result = sub_190D57D80();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B65BE0(uint64_t a1, int a2)
{
  v3 = v2;
  v66 = sub_190D515F0();
  v5 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53870);
  v68 = a2;
  result = sub_190D58580();
  v9 = result;
  if (*(v7 + 16))
  {
    v62 = v2;
    v10 = 0;
    v67 = v7;
    v13 = *(v7 + 64);
    v12 = (v7 + 64);
    v11 = v13;
    v14 = 1 << *(v12 - 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v11;
    v17 = (v14 + 63) >> 6;
    v63 = v5 + 16;
    v64 = v5;
    v69 = (v5 + 32);
    v18 = result + 64;
    while (v16)
    {
      v26 = __clz(__rbit64(v16));
      v27 = (v16 - 1) & v16;
LABEL_15:
      v30 = v26 | (v10 << 6);
      v83 = v27;
      v31 = v67;
      v32 = *(v67 + 48);
      v82 = *(v5 + 72);
      v33 = v32 + v82 * v30;
      v34 = v65;
      if (v68)
      {
        (*(v5 + 32))(v65, v33, v66);
        v35 = (*(v31 + 56) + 168 * v30);
        v70 = *v35;
        v36 = *(v35 + 24);
        v71 = *(v35 + 8);
        v72 = v36;
        v37 = *(v35 + 40);
        v38 = *(v35 + 72);
        v76 = *(v35 + 56);
        v77 = v38;
        v75 = *(v35 + 104);
        v39 = *(v35 + 88);
        v73 = v37;
        v74 = v39;
        v40 = *(v35 + 136);
        v78 = *(v35 + 120);
        v79 = v40;
        v42 = *(v35 + 19);
        v41 = *(v35 + 20);
        v80 = v42;
        v81 = v41;
      }

      else
      {
        (*(v5 + 16))(v65, v33, v66);
        v43 = *(v31 + 56) + 168 * v30;
        v44 = *(v43 + 160);
        v46 = *(v43 + 128);
        v45 = *(v43 + 144);
        v85[7] = *(v43 + 112);
        v85[8] = v46;
        v85[9] = v45;
        v86 = v44;
        v48 = *(v43 + 80);
        v47 = *(v43 + 96);
        v49 = *(v43 + 64);
        v85[3] = *(v43 + 48);
        v85[4] = v49;
        v85[5] = v48;
        v85[6] = v47;
        v51 = *(v43 + 16);
        v50 = *(v43 + 32);
        v85[0] = *v43;
        v85[1] = v51;
        v85[2] = v50;
        v81 = v44;
        v80 = *(&v85[9] + 1);
        v78 = *(&v85[7] + 8);
        v79 = *(&v85[8] + 8);
        v76 = *(&v85[3] + 8);
        v77 = *(&v85[4] + 8);
        v74 = *(&v85[5] + 8);
        v75 = *(&v85[6] + 8);
        v72 = *(&v85[1] + 8);
        v73 = *(&v85[2] + 8);
        v71 = *(v85 + 8);
        v70 = LOBYTE(v85[0]);
        sub_190B6A9C4(v85, &v84);
      }

      sub_190B6AA20(&unk_1EAD5E1A0, MEMORY[0x1E6968FB0]);
      result = sub_190D56DC0();
      v52 = -1 << *(v9 + 32);
      v53 = result & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v18 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        v5 = v64;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v18 + 8 * v54);
          if (v58 != -1)
          {
            v19 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v53) & ~*(v18 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
      v5 = v64;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v69)(*(v9 + 48) + v82 * v19, v34);
      v20 = *(v9 + 56) + 168 * v19;
      *v20 = v70;
      *(v20 + 4) = *(v85 + 3);
      *(v20 + 1) = v85[0];
      v21 = v71;
      *(v20 + 24) = v72;
      *(v20 + 8) = v21;
      *(v20 + 40) = v73;
      v22 = v76;
      *(v20 + 72) = v77;
      *(v20 + 56) = v22;
      v23 = v74;
      *(v20 + 104) = v75;
      *(v20 + 88) = v23;
      v24 = v78;
      *(v20 + 136) = v79;
      *(v20 + 120) = v24;
      v25 = v81;
      *(v20 + 152) = v80;
      *(v20 + 160) = v25;
      ++*(v9 + 16);
      v16 = v83;
    }

    v28 = v10;
    while (1)
    {
      v10 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v17)
      {
        break;
      }

      v29 = v12[v10];
      ++v28;
      if (v29)
      {
        v26 = __clz(__rbit64(v29));
        v27 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v68 & 1) == 0)
    {

      v3 = v62;
      goto LABEL_35;
    }

    v59 = v67;
    v60 = 1 << *(v67 + 32);
    v3 = v62;
    if (v60 >= 64)
    {
      bzero(v12, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v60;
    }

    *(v59 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_190B66140(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E220);
  v34 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_190D52690();
        swift_unknownObjectRetain();
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B663FC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_190D58580();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {
        sub_190D52690();
        v26 = v25;
      }

      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_190B66698(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E210);
  v37 = a2;
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v15 = v37;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v40 = *v23;
      v39 = *(v23 + 8);
      v24 = *(v23 + 16);
      v25 = *(*(v5 + 56) + 8 * v22);
      if ((v15 & 1) == 0)
      {
        sub_190824730(v40, v39, *(v23 + 16));
        sub_190D52690();
      }

      sub_190D58870();
      v38 = v25;
      if (v24)
      {
        if (v24 == 1)
        {
          sub_190D56FC0();
        }

        else
        {
          v26 = [v40 stickerIdentifier];
          sub_190D56F10();

          v15 = v37;
          sub_190D56FC0();
          v5 = v36;
        }
      }

      else
      {
        MEMORY[0x193AF4130]([v40 associatedMessageType]);
      }

      result = sub_190D588C0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v17 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v17 = v38;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v7 + 48) + 24 * v16;
      *v18 = v40;
      *(v18 + 8) = v39;
      *(v18 + 16) = v24;
      *(*(v7 + 56) + 8 * v16) = v17;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v15 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_38;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v7;
  return result;
}

uint64_t sub_190B669E4(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_190D51840();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539C0);
  v46 = a2;
  result = sub_190D58580();
  v9 = result;
  if (*(v7 + 16))
  {
    v42 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v43 = (v5 + 16);
    v45 = v5;
    v47 = (v5 + 32);
    v16 = result + 64;
    v17 = v44;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v50 = (v14 - 1) & v14;
LABEL_15:
      v25 = v22 | (v10 << 6);
      v26 = *(v7 + 56);
      v27 = *(v7 + 48) + 24 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v49 = *(v45 + 72);
      v31 = v26 + v49 * v25;
      v51 = v29;
      if (v46)
      {
        (*v47)(v52, v31, v17);
      }

      else
      {
        (*v43)(v52, v31, v17);
        sub_190824730(v28, v29, v30);
      }

      sub_190D58870();
      v48 = v28;
      if (v30)
      {
        if (v30 == 1)
        {
          sub_190D56FC0();
        }

        else
        {
          v32 = [v28 stickerIdentifier];
          sub_190D56F10();

          v17 = v44;
          sub_190D56FC0();
        }
      }

      else
      {
        MEMORY[0x193AF4130]([v28 associatedMessageType]);
      }

      result = sub_190D588C0();
      v33 = -1 << *(v9 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v16 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v19 = v51;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v16 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v16 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v19 = v51;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v9 + 48) + 24 * v18;
      v21 = v49;
      *v20 = v48;
      *(v20 + 8) = v19;
      *(v20 + 16) = v30;
      result = (*v47)(*(v9 + 56) + v21 * v18, v52, v17);
      ++*(v9 + 16);
      v14 = v50;
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_39;
    }

    v40 = 1 << *(v7 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v11, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v40;
    }

    *(v7 + 16) = 0;
  }

LABEL_39:
  *v3 = v9;
  return result;
}

uint64_t sub_190B66E30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E270);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_190D58860();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_190B67094(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E200);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_190D57D80();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_190B67304(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD539A0);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_190D58860();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_190B6756C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A78);
  result = sub_190D58580();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        sub_19087862C(v23, &v36);
      }

      v35 = *(*(v5 + 56) + 16 * v22);
      result = sub_190D58210();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_190B67820()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538E8);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(v18 + v17);
        v23 = *(v18 + v17 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v21;
        v24[1] = v20;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_190D52690();
        result = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B6799C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B67AF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E250);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_190B67C54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A60);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v19;
        *(v22 + 8) = v21;
        *(v22 + 24) = v20;
        v23 = v21;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B67DE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A68);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_19021834C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_190824530(v25, (*(v4 + 56) + v22));
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_190B67FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_19087862C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_19021834C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_190824530(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B68144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538C0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_190D52690();
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B682D0()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationEntity();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E240);
  v4 = *v0;
  v5 = sub_190D58570();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_190830594(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_19082FC20(v25, *(v27 + 56) + v26);
        result = sub_190D52690();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_190B68500()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53878);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(*(v4 + 56) + 8 * v17) = v24;
        sub_1908B81B0(v19, v20, v21, v22, v23);
        result = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B68694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539F0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_190D50920();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B687F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E1E0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B68950(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v3 + 56) + 8 * v18);
        v23 = (*(v5 + 48) + 16 * v18);
        *v23 = v21;
        v23[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v22;
        result = sub_190D52690();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_190B68AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A48);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_19021834C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_190824530(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_190B68C28()
{
  v1 = v0;
  v31 = sub_190D52E90();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E190);
  v3 = *v0;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_190B68E98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A30);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_190B68FF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD538F0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        sub_190D52690();
        result = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B69198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1B0);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_190D52690();
        result = sub_190D50920();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_190B6931C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E238);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_190D52690();
        result = sub_190D50920();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_190B6948C()
{
  v1 = v0;
  v33 = sub_190D519C0();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E230);
  v3 = *v0;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = sub_190D52690();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_190B6970C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A08);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_190B69870()
{
  v1 = v0;
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53870);
  v5 = *v0;
  v6 = sub_190D58570();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v54 = v7;
    v46 = v1;
    v47 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    *(v54 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v48 = v53 + 32;
    v49 = v53 + 16;
    v50 = v15;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v55 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v11 << 6);
        v20 = v52;
        v21 = v53;
        v22 = *(v53 + 72) * v19;
        v23 = v51;
        (*(v53 + 16))(v51, *(v5 + 48) + v22, v52);
        v19 *= 168;
        v24 = *(v5 + 56) + v19;
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        v27 = *(v24 + 96);
        v62 = *(v24 + 80);
        v63 = v27;
        v60 = v25;
        v61 = v26;
        v28 = *(v24 + 112);
        v29 = *(v24 + 128);
        v30 = *(v24 + 144);
        v67 = *(v24 + 160);
        v65 = v29;
        v66 = v30;
        v64 = v28;
        v32 = *(v24 + 16);
        v31 = *(v24 + 32);
        v57 = *v24;
        v58 = v32;
        v59 = v31;
        v33 = v5;
        v34 = v54;
        (*(v21 + 32))(*(v54 + 48) + v22, v23, v20);
        v35 = *(v34 + 56);
        v5 = v33;
        v36 = v35 + v19;
        v37 = v64;
        v38 = v65;
        v39 = v66;
        *(v36 + 160) = v67;
        *(v36 + 128) = v38;
        *(v36 + 144) = v39;
        *(v36 + 112) = v37;
        v40 = v60;
        v41 = v61;
        v42 = v63;
        *(v36 + 80) = v62;
        *(v36 + 96) = v42;
        *(v36 + 48) = v40;
        *(v36 + 64) = v41;
        v44 = v58;
        v43 = v59;
        *v36 = v57;
        *(v36 + 16) = v44;
        *(v36 + 32) = v43;
        result = sub_190B6A9C4(&v57, &v56);
        v15 = v50;
        v14 = v55;
      }

      while (v55);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v1 = v46;
        v7 = v54;
        goto LABEL_18;
      }

      v18 = *(v47 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v55 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_190B69BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E220);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_190D52690();
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_190B69D28(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_190D58570();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
        sub_190D52690();
        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_190B69E84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E210);
  v2 = *v0;
  v3 = sub_190D58570();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_190824730(v19, v20, v23);
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}