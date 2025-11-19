Swift::Void __swiftcall CKSpringBoardActionManager.updateShortcutItems()()
{
  v1 = [objc_opt_self() sharedConversationList];
  v2 = [v1 pinnedConversations];

  v6 = v2;
  if (!v2)
  {
    sub_1902188FC(0, &qword_1EAD466B0);
    sub_190D57180();
    v6 = sub_190D57160();
  }

  sub_1902188FC(0, &qword_1EAD466B0);
  v3 = sub_190D57180();
  if (v3 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_5;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:

    [v0 updateShortcutItemsWithConversations_];
    goto LABEL_9;
  }

  v4 = [v0 contactsSearchManager];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;

  v6 = sub_190D56ED0();
  [v5 searchWithText_];

LABEL_9:
}

uint64_t sub_1908CE6C4(uint64_t a1)
{
  v2 = sub_190D56770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v28 = v7;
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v2;
    v34 = "ChatKit.RichCarouselItem";
    v11 = (a1 + 64);
    do
    {
      v12 = *(v11 - 8);
      v13 = *v11;
      sub_190D52690();
      sub_190D52690();
      v14 = v13;
      v15 = CKIsRunningInMacCatalyst();
      v35 = v14;
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_1908CEC20(v12, v14);
      }

      v17 = objc_allocWithZone(MEMORY[0x1E69DC6B0]);
      v18 = sub_190D56ED0();
      v19 = sub_190D56ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56068);
      v20 = sub_190D56D60();
      [v17 initWithType:v18 localizedTitle:v19 localizedSubtitle:0 icon:v16 userInfo:v20];

      MEMORY[0x193AF29E0](v21);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      v11 += 5;
      --v10;
    }

    while (v10);
    v22 = aBlock[0];
    v3 = v31;
    v2 = v32;
    v6 = v29;
    v5 = v30;
    v7 = v28;
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1902188FC(0, &qword_1EAD46670);
  v23 = sub_190D57870();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  aBlock[4] = sub_1908CFA74;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_6_3;
  v25 = _Block_copy(aBlock);

  v26 = v33;
  sub_190D56790();
  aBlock[0] = v9;
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v26, v5, v25);
  _Block_release(v25);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v26, v6);
}

void sub_1908CEB04()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1902188FC(0, &qword_1EAD56080);
  v1 = sub_190D57160();
  [v0 setShortcutItems_];
}

id sub_1908CEC20(char a1, id a2)
{
  if ((a1 & 1) == 0)
  {
    v14 = [a2 contacts];
    sub_1902188FC(0, &qword_1EAD44E40);
    v15 = sub_190D57180();

    if (v15 >> 62)
    {
      result = sub_190D581C0();
      if (result)
      {
LABEL_9:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x193AF3B90](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v16 = *(v15 + 32);
        }

        v17 = v16;

        v13 = [objc_opt_self() iconWithContact_];

        return v13;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  result = [a2 groupPhoto];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_190D51670();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_19083B680(v4, v6);
  v8 = sub_190D51660();
  v9 = [v7 initWithData_];

  sub_19083B6D4(v4, v6);
  if (v9)
  {
    v10 = [v9 imageByPreparingThumbnailOfSize_];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 ck_imageCroppedToCircle];
      sub_19083B6D4(v4, v6);

      if (v12)
      {
        v13 = [objc_opt_self() iconWithCustomImage:v12 isTemplate:0];

        return v13;
      }

      return 0;
    }
  }

  sub_19083B6D4(v4, v6);
  return 0;
}

uint64_t _sSo26CKSpringBoardActionManagerC7ChatKitE19updateShortcutItems13conversationsySaySo14CKConversationCG_tF_0(unint64_t a1)
{
  v2 = sub_190D56770();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D56780();
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v53 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v53)
  {
    do
    {
      v42 = v14;
      v43 = v11;
      v44 = result;
      v45 = v9;
      v46 = v7;
      v47 = v5;
      v48 = v6;
      v49 = v3;
      v50 = v2;
      v14 = 0;
      v54 = a1 & 0xFFFFFFFFFFFFFF8;
      v55 = a1 & 0xC000000000000001;
      v52 = 0x8000000190E63600;
      v15 = MEMORY[0x1E69E7CC0];
      v51 = xmmword_190DD1D90;
      v9 = v53;
      while (1)
      {
        if (v55)
        {
          result = MEMORY[0x193AF3B90](v14, a1);
        }

        else
        {
          if (v14 >= *(v54 + 16))
          {
            goto LABEL_27;
          }

          result = *(a1 + 8 * v14 + 32);
        }

        v11 = result;
        v7 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ([result hasDisplayName])
        {
          v16 = [v11 displayName];
          if (!v16)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = [v11 name];
          if (!v16)
          {
LABEL_12:
            v56 = 0xE000000000000000;
            v57 = 0;
            goto LABEL_13;
          }
        }

        v17 = v16;
        v18 = sub_190D56F10();
        v56 = v19;
        v57 = v18;

LABEL_13:
        v20 = [v11 chat];
        if (v20)
        {
          v21 = v20;
          v22 = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56070);
          inited = swift_initStackObject();
          *(inited + 16) = v51;
          *(inited + 32) = 0xD00000000000001DLL;
          *(inited + 40) = v52;
          v24 = [v21 guid];
          if (!v24)
          {
            sub_190D56F10();
            v24 = sub_190D56ED0();
          }

          v25 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

          *(inited + 48) = v25;
          v6 = sub_19082203C(inited);
          swift_setDeallocating();
          sub_1908CFA04(inited + 32);

          a1 = v22;
          v9 = v53;
        }

        else
        {
          v6 = MEMORY[0x1E69E7CC8];
        }

        v2 = [v11 isGroupConversation];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
        v26 = sub_190D57160();
        v3 = [v11 conversationVisualIdentityWithKeys:v26 requestedNumberOfContactsToFetch:{objc_msgSend(objc_opt_self(), sel_maxContactAvatars)}];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_190836378(0, *(v15 + 16) + 1, 1, v15);
          v15 = result;
        }

        v11 = *(v15 + 16);
        v27 = *(v15 + 24);
        v5 = (v11 + 1);
        if (v11 >= v27 >> 1)
        {
          result = sub_190836378((v27 > 1), v11 + 1, 1, v15);
          v15 = result;
        }

        *(v15 + 16) = v5;
        v28 = v15 + 40 * v11;
        v29 = v56;
        *(v28 + 32) = v57;
        *(v28 + 40) = v29;
        *(v28 + 48) = v6;
        *(v28 + 56) = v2;
        *(v28 + 64) = v3;
        ++v14;
        if (v7 == v9)
        {
          sub_1902188FC(0, &qword_1EAD46670);
          v30 = v43;
          v31 = v42;
          v32 = v44;
          (*(v43 + 104))(v42, *MEMORY[0x1E69E7F98], v44);
          v33 = sub_190D578A0();
          (*(v30 + 8))(v31, v32);
          v34 = swift_allocObject();
          *(v34 + 16) = v15;
          aBlock[4] = sub_1908CFA6C;
          aBlock[5] = v34;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_190840E6C;
          aBlock[3] = &block_descriptor_27;
          v35 = _Block_copy(aBlock);
          v36 = v45;
          sub_190D56790();
          v58 = MEMORY[0x1E69E7CC0];
          sub_190840DB0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
          sub_190840E08();
          v37 = v47;
          v38 = v50;
          sub_190D58170();
          MEMORY[0x193AF3110](0, v36, v37, v35);
          _Block_release(v35);

          (v49)[1](v37, v38);
          (*(v46 + 1))(v36, v48);
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v39 = result;
      v40 = sub_190D581C0();
      result = v39;
      v53 = v40;
    }

    while (v40);
  }

  return result;
}

void _sSo20CKMessagesControllerC7ChatKitE46updateCatalystAppIconConversationsShortcutMenuyyF_0()
{
  v0 = [objc_opt_self() sharedConversationList];
  v1 = [v0 conversationsContainingFilterMode_];

  sub_1902188FC(0, &qword_1EAD466B0);
  v2 = sub_190D57180();

  v29 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_30:
    v4 = sub_190D581C0();
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v26 = v3;
  v27 = v2;
  v25 = v4;
  v28 = v2 & 0xC000000000000001;
  do
  {
    v7 = v5;
    v8 = &selRef_capStyle;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x193AF3B90](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v2 + 8 * v7 + 32);
      }

      v10 = v9;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = [v9 v8[93]];
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = v11;
      if ([v11 unreadMessageCount] >= 1)
      {
        break;
      }

LABEL_6:
LABEL_7:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_31;
      }
    }

    v13 = [v12 localizedUnreadShortcutTitle];
    if (!v13)
    {
      sub_190D56F10();
      v13 = sub_190D56ED0();
    }

    v14 = [v10 v8[93]];
    if (v14)
    {
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD1D90;
      *(inited + 32) = 0xD00000000000001DLL;
      *(inited + 40) = 0x8000000190E63600;
      v17 = [v15 guid];
      if (!v17)
      {
        sub_190D56F10();
        v17 = sub_190D56ED0();
      }

      v18 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

      *(inited + 48) = v18;
      sub_19082203C(inited);
      swift_setDeallocating();
      sub_1908CFA04(inited + 32);
    }

    v19 = objc_allocWithZone(MEMORY[0x1E69DC6B0]);
    v20 = sub_190D56ED0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56068);
    v21 = sub_190D56D60();

    v22 = [v19 initWithType:v20 localizedTitle:v13 localizedSubtitle:0 icon:0 userInfo:v21];

    v3 = v26;
    v2 = v27;
    v4 = v25;
    v6 = v28;
    v8 = &selRef_capStyle;
    if (!v22)
    {
      goto LABEL_7;
    }

    MEMORY[0x193AF29E0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v6 = v28;
  }

  while (v5 != v25);
LABEL_31:

  v23 = [objc_opt_self() sharedApplication];
  sub_1902188FC(0, &qword_1EAD56080);
  v24 = sub_190D57160();

  [v23 setShortcutItems_];
}

uint64_t sub_1908CFA04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908CFA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1908CFAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall CKComposition.hasRestorableContent()()
{
  result = 1;
  if (([v0 isAudioComposition] & 1) == 0)
  {
    if ([v0 isExpirableComposition])
    {
      return 0;
    }

    if (([v0 hasNonwhiteSpaceContent] & 1) == 0)
    {
      v2 = [v0 bizIntent];
      if (!v2)
      {
        return 0;
      }

      v3 = v2;
      v4 = sub_190D56D90();

      v5 = *(v4 + 16);

      if (!v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1908CFC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *(sub_190D51EE0() - 8);
  v7[7] = swift_task_alloc();
  v8 = sub_190D51EC0();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = sub_190D51F10();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  sub_190D51E10();
  v7[14] = swift_task_alloc();
  sub_190D572A0();
  v7[15] = sub_190D57290();
  v11 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908CFDF0, v11, v10);
}

uint64_t sub_1908CFDF0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 32);
  v5 = *(v0 + 16);

  sub_190D51EB0();
  v6 = sub_190D51EA0();
  sub_190D51E00();
  sub_190D51E40();
  v7 = *(v5 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_playgroundDelegate);
  sub_190D51E90();
  (*(v1 + 104))(v2, *MEMORY[0x1E696E3B0], v14);
  sub_190D51E30();
  (*(v4 + 104))(v3, *MEMORY[0x1E696E2A8], v15);
  sub_190D51E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56098);
  *(swift_allocObject() + 16) = xmmword_190DD1D90;
  sub_190D51ED0();
  sub_190D51E60();
  sub_190D51ED0();
  sub_190D51E70();
  *&v7[OBJC_IVAR____TtC7ChatKit29GalleryImagePlaygroundManager_delegate + 8] = &off_1F0409AB0;
  swift_unknownObjectWeakAssign();
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560A0);
    sub_190D51F00();
    *(swift_allocObject() + 16) = xmmword_190DD1D90;
    sub_190D51EF0();
    sub_190D51E80();
  }

  v8 = *(v0 + 40);
  if (v8)
  {
    v9 = v8;
    sub_190D51E20();
  }

  v10 = [*(v0 + 16) navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 presentViewController:v6 animated:1 completion:0];
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1908D00E0()
{
  v1[2] = v0;
  sub_190D572A0();
  v1[3] = sub_190D57290();
  v3 = sub_190D57240();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1908D0178, v3, v2);
}

uint64_t sub_1908D0178()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator;
  v0[6] = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator;
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[7] = type metadata accessor for ImagePlaygroundSuggestionGenerator();
    v0[8] = swift_allocObject();
    sub_190D51DF0();
    swift_allocObject();
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1908D0294;

    return MEMORY[0x1EEDC8E60]();
  }
}

uint64_t sub_1908D0294(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1908D04E4;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1908D03BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1908D03BC()
{
  v1 = v0[8];
  v1[2] = v0[11];
  sub_190D52220();
  swift_allocObject();
  v1[3] = sub_190D52210();
  type metadata accessor for ImagePlaygroundSuggestionStore(0);
  swift_allocObject();
  v1[4] = sub_1909FC164();
  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1908D0464, v2, v3);
}

uint64_t sub_1908D0464()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];

  *(v3 + v2) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1908D04E4()
{
  swift_deallocPartialClassInstance();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1908D0550, v1, v2);
}

uint64_t sub_1908D0550()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1908D05B4(uint64_t a1)
{
  v3 = sub_190D518A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8))
    {
      v11 = v8;
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      *(v12 + 24) = v1;
      v13 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
      swift_beginAccess();
      (*(v4 + 16))(v6, a1 + v13, v3);
      sub_190D50920();
      v14 = v1;
      v15 = sub_190D51850();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = v11[7];
      v19 = _s17BackgroundContentOMa(0);
      (*(*(v19 - 8) + 56))(&v10[v18], 1, 1, v19);
      v20 = &v10[v11[8]];
      sub_190D50920();
      sub_190D50450();
      v21 = &v20[*(_s21GeneratingTileContentVMa(0) + 20)];
      *v21 = sub_1908D5A54;
      v21[1] = v12;
      swift_storeEnumTagMultiPayload();
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = v15;
      *(v10 + 3) = v17;
      v10[32] = 0;
      v22 = &v10[v11[9]];
      *v22 = 0u;
      *(v22 + 1) = 0u;
      *&v10[v11[10]] = xmmword_190DDBBE0;
      *&v10[v11[11]] = 0;
      v23 = &v10[v11[12]];
      *v23 = 0xD00000000000001FLL;
      *(v23 + 1) = 0x8000000190E63690;
      if (*&v14[OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel])
      {
        sub_190D50920();
        sub_190AAC55C(v10, 1);
        sub_19083A770(v10);
      }

      sub_1908D5A5C(v10);
      return;
    }

    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v32 = sub_190D53040();
    __swift_project_value_buffer(v32, qword_1EAD9D730);
    sub_190D50920();
    v37 = sub_190D53020();
    v25 = sub_190D576A0();

    if (os_log_type_enabled(v37, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      v33 = sub_190C4B378();
      v35 = sub_19021D9F8(v33, v34, v38);

      *(v26 + 4) = v35;
      v31 = "Missing suggestion prompt: %s";
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v24 = sub_190D53040();
    __swift_project_value_buffer(v24, qword_1EAD9D730);
    sub_190D50920();
    v37 = sub_190D53020();
    v25 = sub_190D576A0();

    if (os_log_type_enabled(v37, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      v28 = sub_190C4B378();
      v30 = sub_19021D9F8(v28, v29, v38);

      *(v26 + 4) = v30;
      v31 = "Unexpected state for suggestion: %s";
LABEL_14:
      _os_log_impl(&dword_19020E000, v37, v25, v31, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x193AF7A40](v27, -1, -1);
      MEMORY[0x193AF7A40](v26, -1, -1);

      return;
    }
  }

  v36 = v37;
}

void sub_1908D0AF8(uint64_t a1)
{
  v3 = sub_190D518A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state) == 2)
  {
    v11 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8);
    if (v11)
    {
      v12 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
      if (v12 >> 60 != 15)
      {
        v54 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
        v55 = v8;
        v13 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
        v14 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_190D52690();
        sub_19087C5A8(v13, v12);
        v56 = v13;
        v15 = sub_190D51660();
        v16 = [v14 initWithData_];

        if (v16)
        {
          v17 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
          swift_beginAccess();
          (*(v4 + 16))(v6, a1 + v17, v3);
          v53 = v1;
          v18 = sub_190D51850();
          v20 = v19;
          (*(v4 + 8))(v6, v3);
          v21 = v55;
          v22 = v55[7];
          v23 = _s17BackgroundContentOMa(0);
          (*(*(v23 - 8) + 56))(&v10[v22], 1, 1, v23);
          v24 = &v10[v21[8]];
          v25 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
          *v24 = v54;
          *(v24 + 1) = v11;
          v26 = v56;
          *(v24 + 2) = v16;
          *(v24 + 3) = v26;
          *(v24 + 4) = v12;
          *(v24 + 5) = v25;
          swift_storeEnumTagMultiPayload();
          *v10 = 0;
          *(v10 + 1) = 0;
          *(v10 + 2) = v18;
          *(v10 + 3) = v20;
          v10[32] = 0;
          v27 = &v10[v21[9]];
          *v27 = 0u;
          *(v27 + 1) = 0u;
          v28 = &v10[v21[10]];
          *v28 = a1 | 0x8000000000000000;
          v28[1] = 0;
          *&v10[v21[11]] = 0;
          v29 = &v10[v21[12]];
          *v29 = 0xD00000000000001FLL;
          *(v29 + 1) = 0x8000000190E63690;
          if (*(v53 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
          {
            sub_19087C5A8(v26, v12);
            sub_190D50920();
            v30 = v16;
            sub_190D50920();
            sub_190AAC55C(v10, 1);
            sub_19083A770(v10);

            sub_19029064C(v26, v12);
          }

          else
          {
            sub_190D50920();
          }

          sub_1908D5A5C(v10);
          return;
        }

        sub_19029064C(v56, v12);
      }

      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v47 = sub_190D53040();
      __swift_project_value_buffer(v47, qword_1EAD9D730);
      sub_190D50920();
      v56 = sub_190D53020();
      v32 = sub_190D576A0();

      if (os_log_type_enabled(v56, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v57[0] = v34;
        *v33 = 136315394;
        *(v33 + 4) = sub_19021D9F8(0xD00000000000002CLL, 0x8000000190E63710, v57);
        *(v33 + 12) = 2080;
        v48 = sub_190C4B378();
        v50 = sub_19021D9F8(v48, v49, v57);

        *(v33 + 14) = v50;
        v38 = "%s Missing suggestion image: %s";
        goto LABEL_20;
      }
    }

    else
    {
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v39 = sub_190D53040();
      __swift_project_value_buffer(v39, qword_1EAD9D730);
      sub_190D50920();
      v56 = sub_190D53020();
      v40 = sub_190D576A0();

      if (os_log_type_enabled(v56, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v57[0] = v42;
        *v41 = 136315138;
        v43 = sub_190C4B378();
        v45 = sub_19021D9F8(v43, v44, v57);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_19020E000, v56, v40, "Missing suggestion prompt: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x193AF7A40](v42, -1, -1);
        v46 = v41;
LABEL_21:
        MEMORY[0x193AF7A40](v46, -1, -1);

        return;
      }
    }
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9D730);
    sub_190D50920();
    v56 = sub_190D53020();
    v32 = sub_190D576A0();

    if (os_log_type_enabled(v56, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_19021D9F8(0xD00000000000002CLL, 0x8000000190E63710, v57);
      *(v33 + 12) = 2080;
      v35 = sub_190C4B378();
      v37 = sub_19021D9F8(v35, v36, v57);

      *(v33 + 14) = v37;
      v38 = "%s Unexpected state for suggestion: %s";
LABEL_20:
      _os_log_impl(&dword_19020E000, v56, v32, v38, v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v34, -1, -1);
      v46 = v33;
      goto LABEL_21;
    }
  }

  v51 = v56;
}

uint64_t sub_1908D1240()
{
  v1[11] = v0;
  sub_190D572A0();
  v1[12] = sub_190D57290();
  v3 = sub_190D57240();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1908D12D8, v3, v2);
}

uint64_t sub_1908D12D8()
{
  v24 = v0;
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator);
  v0[15] = v2;
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_190D50920();
      if (Strong)
      {
        v4 = [Strong transcriptContextChatItemProvider];
        swift_unknownObjectRelease();
        if (v4)
        {
          v5 = v0[11];
          sub_1902188FC(0, &qword_1EAD450F0);
          v6 = sub_190D57180();
          v0[16] = v6;

          v7 = *(v5 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation);
          v8 = swift_task_alloc();
          v0[17] = v8;
          *v8 = v0;
          v8[1] = sub_1908D1784;

          return sub_190C282EC(v6, v7, 2);
        }
      }
    }

    else
    {
      sub_190D50920();
    }

    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9D730);
    v17 = sub_190D53020();
    v18 = sub_190D576A0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_19021D9F8(0xD000000000000015, 0x8000000190E63670, v23);
      _os_log_impl(&dword_19020E000, v17, v18, "%s no chat items", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x193AF7A40](v20, -1, -1);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    if (*(v0[11] + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
    {
      sub_190D50920();
      sub_190974364(1, 2);
    }

    sub_1908D5A00();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }

  else
  {

    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9D730);
    v11 = sub_190D53020();
    v12 = sub_190D576C0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_19021D9F8(0xD000000000000015, 0x8000000190E63670, v23);
      _os_log_impl(&dword_19020E000, v11, v12, "%s No playground suggestion generator available.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x193AF7A40](v14, -1, -1);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

    if (*(v0[11] + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
    {
      sub_190D50920();
      sub_190974364(3, 2);
    }

    sub_1908D5A00();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1908D1784(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_1908D1E08;
  }

  else
  {
    v7 = sub_1908D18E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1908D18E4()
{
  isUniquelyReferenced_nonNull_native = v0;
  v2 = *(v0 + 144);

  if (v2 >> 62)
  {
LABEL_54:
    v3 = sub_190D581C0();
    v4 = *(isUniquelyReferenced_nonNull_native + 144);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_42:

    v43 = *(isUniquelyReferenced_nonNull_native + 8);

    return v43();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = *(isUniquelyReferenced_nonNull_native + 144);
  if (!v3)
  {
    goto LABEL_42;
  }

LABEL_3:
  v5 = 0;
  v50 = *(isUniquelyReferenced_nonNull_native + 88);
  v49 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel;
  v51 = v2 & 0xC000000000000001;
  v45 = v4 + 32;
  v46 = v2 & 0xFFFFFFFFFFFFFF8;
  v47 = v3;
  while (1)
  {
    if (v51)
    {
      v7 = MEMORY[0x193AF3B90](v5, *(isUniquelyReferenced_nonNull_native + 144));
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v5 >= *(v46 + 16))
      {
        goto LABEL_50;
      }

      v7 = *(v45 + 8 * v5);
      sub_190D50920();
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v8 = *(v50 + v49);
    if (v8)
    {
      break;
    }

LABEL_7:
    v2 = *(isUniquelyReferenced_nonNull_native + 88);
    sub_1908D05B4(v7);

    ++v5;
    if (v6 == v3)
    {
      goto LABEL_42;
    }
  }

  v9 = *(v8 + 128);
  v10 = *(v7 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
  v11 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
  swift_beginAccess();
  v2 = *(v9 + v11);
  v52 = v6;
  if (*(v2 + 16))
  {
    sub_190875CC8(v10);
    if (v12)
    {
      sub_190D50920();
      if (!*(v2 + 16))
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }
  }

  v48 = v7;
  _s17SuggestionContextCMa();
  v13 = swift_allocObject();
  *(v13 + 16) = 768;
  *(v13 + 24) = MEMORY[0x1E69E7CC8];
  v14 = isUniquelyReferenced_nonNull_native;
  swift_beginAccess();
  sub_190D50920();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v9 + v11);
  *(v9 + v11) = 0x8000000000000000;
  v15 = v10;
  v17 = sub_190875CC8(v10);
  v18 = *(v2 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_49;
  }

  v21 = v16;
  if (*(v2 + 24) < v20)
  {
    sub_190B639E4(v20, isUniquelyReferenced_nonNull_native);
    v22 = sub_190875CC8(v15);
    if ((v21 & 1) != (v23 & 1))
    {
      goto LABEL_45;
    }

    v17 = v22;
    isUniquelyReferenced_nonNull_native = v14;
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    *(*(v2 + 56) + 8 * v17) = v13;

    v3 = v47;
    goto LABEL_30;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    isUniquelyReferenced_nonNull_native = v14;
    if (v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_190B68694();
    isUniquelyReferenced_nonNull_native = v14;
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  *(v2 + 8 * (v17 >> 6) + 64) |= 1 << v17;
  *(*(v2 + 48) + 8 * v17) = v15;
  *(*(v2 + 56) + 8 * v17) = v13;
  v24 = *(v2 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  v3 = v47;
  if (v25)
  {
    goto LABEL_51;
  }

  *(v2 + 16) = v26;
LABEL_30:
  *(v9 + v11) = v2;
  swift_endAccess();
  v6 = v52;
  v10 = v15;
  v7 = v48;
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

LABEL_31:
  v27 = sub_190875CC8(v10);
  if ((v28 & 1) == 0)
  {
    goto LABEL_6;
  }

  v29 = *(*(v2 + 56) + 8 * v27);
  sub_190D50920();
  v30 = sub_190D58910();
  swift_beginAccess();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v29 + 24);
  *(v29 + 24) = 0x8000000000000000;
  v32 = sub_1908789E4(0);
  v34 = *(v2 + 16);
  v35 = (v33 & 1) == 0;
  v25 = __OFADD__(v34, v35);
  v36 = v34 + v35;
  if (v25)
  {
    goto LABEL_52;
  }

  v37 = v33;
  if (*(v2 + 24) >= v36)
  {
    if ((v31 & 1) == 0)
    {
      v42 = v32;
      sub_190B687F0();
      v32 = v42;
      v39 = v30;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_4;
    }

LABEL_37:
    v39 = v30;
    if ((v37 & 1) == 0)
    {
LABEL_38:
      *(v2 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(*(v2 + 48) + v32) = 0;
      *(*(v2 + 56) + 8 * v32) = v39;
      v40 = *(v2 + 16);
      v25 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v25)
      {
        goto LABEL_53;
      }

      *(v2 + 16) = v41;
      goto LABEL_5;
    }

LABEL_4:
    *(*(v2 + 56) + 8 * v32) = v39;
LABEL_5:
    *(v29 + 24) = v2;
    swift_endAccess();

    v6 = v52;
LABEL_6:

    goto LABEL_7;
  }

  sub_190B63C54(v36, v31);
  v32 = sub_1908789E4(0);
  if ((v37 & 1) == (v38 & 1))
  {
    goto LABEL_37;
  }

LABEL_45:

  return sub_190D587C0();
}

uint64_t sub_1908D1E08()
{
  v1 = *(v0 + 88);

  if (*(v1 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
  {
    sub_190D50920();
    sub_190974364(3, 2);
  }

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1908D1EBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator);
  if (!v1)
  {
LABEL_20:
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9D730);
    v17 = sub_190D53020();
    v18 = sub_190D576C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v112[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_19021D9F8(0xD00000000000001ALL, 0x8000000190E636F0, v112);
      _os_log_impl(&dword_19020E000, v17, v18, "%s No playground suggestion generator available.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x193AF7A40](v20, -1, -1);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    return 0;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation);
  sub_190D50920();
  v4 = [v3 deviceIndependentID];
  if (!v4)
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v22 = sub_190D53040();
    __swift_project_value_buffer(v22, qword_1EAD9D730);
    v23 = sub_190D53020();
    v24 = sub_190D576C0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v112[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_19021D9F8(0xD00000000000001ALL, 0x8000000190E636F0, v112);
      _os_log_impl(&dword_19020E000, v23, v24, "%s No conversationId.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x193AF7A40](v26, -1, -1);
      MEMORY[0x193AF7A40](v25, -1, -1);
    }

    return 0;
  }

  v5 = v4;
  v6 = sub_190D56F10();
  v8 = v7;

  v104 = v1;
  v9 = sub_1909FC320();
  v10 = v9;
  v112[0] = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v110 = v2;
  if (v11)
  {
    while (1)
    {
      v12 = 0;
      v2 = v10 & 0xFFFFFFFFFFFFFF8;
      while ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AF3B90](v12, v10);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_11:
        v15 = *(v13 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId) == v6 && *(v13 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId + 8) == v8;
        if (v15 || (sub_190D58760() & 1) != 0)
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        else
        {
        }

        ++v12;
        if (v14 == v11)
        {
          v21 = v112[0];
          v2 = v110;
          goto LABEL_34;
        }
      }

      if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_32:
      v11 = sub_190D581C0();
      v110 = v2;
      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = *(v10 + 8 * v12 + 32);
    sub_190D50920();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

LABEL_33:
  v21 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v27 = sub_1908D5498(2, v21);
  v28 = v104;
  if (v27 >> 62)
  {
LABEL_120:
    v103 = v28;
    v29 = sub_190D581C0();
    v28 = v103;
    if (v29)
    {
      goto LABEL_36;
    }

    goto LABEL_121;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_121:

    return 0;
  }

LABEL_36:
  v30 = 0;
  v31 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel;
  v32 = v27 & 0xC000000000000001;
  v105 = v27 & 0xFFFFFFFFFFFFFF8;
  v106 = v27;
  v107 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel;
  v108 = v29;
  v109 = v27 & 0xC000000000000001;
  do
  {
    if (v32)
    {
      v28 = MEMORY[0x193AF3B90](v30, v27);
      v33 = v28;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v30 >= *(v105 + 16))
      {
        goto LABEL_112;
      }

      v33 = *(v27 + 8 * v30 + 32);
      v28 = sub_190D50920();
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
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
        goto LABEL_120;
      }
    }

    v111 = v34;
    v35 = *(v2 + v31);
    if (!v35)
    {
      goto LABEL_38;
    }

    v36 = *(v35 + 128);
    v37 = *(v33 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
    v2 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
    swift_beginAccess();
    v38 = *(v36 + v2);
    if (v38[2] && (sub_190875CC8(v37), (v39 & 1) != 0))
    {
      sub_190D50920();
    }

    else
    {
      v27 = v33;
      _s17SuggestionContextCMa();
      v40 = swift_allocObject();
      *(v40 + 16) = 768;
      *(v40 + 24) = MEMORY[0x1E69E7CC8];
      swift_beginAccess();
      sub_190D50920();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v36 + v2);
      *(v36 + v2) = 0x8000000000000000;
      v43 = sub_190875CC8(v37);
      v44 = v38[2];
      v45 = (v42 & 1) == 0;
      v28 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_111;
      }

      v46 = v42;
      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_190B68694();
        }
      }

      else
      {
        sub_190B639E4(v28, isUniquelyReferenced_nonNull_native);
        v28 = sub_190875CC8(v37);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_124;
        }

        v43 = v28;
      }

      v29 = v108;
      if (v46)
      {
        *(v38[7] + 8 * v43) = v40;
      }

      else
      {
        v38[(v43 >> 6) + 8] |= 1 << v43;
        *(v38[6] + 8 * v43) = v37;
        *(v38[7] + 8 * v43) = v40;
        v48 = v38[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_114;
        }

        v38[2] = v50;
      }

      *(v36 + v2) = v38;
      swift_endAccess();
      v31 = v107;
      v33 = v27;
    }

    v2 = v110;
    if (v38[2])
    {
      v51 = sub_190875CC8(v37);
      v27 = v106;
      if (v52)
      {
        v2 = v106;
        v27 = v33;
        v53 = *(v38[7] + 8 * v51);
        sub_190D50920();
        v54 = sub_190D58910();
        swift_beginAccess();
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v56 = *(v53 + 24);
        *(v53 + 24) = 0x8000000000000000;
        v28 = sub_1908789E4(0);
        v58 = v56[2];
        v59 = (v57 & 1) == 0;
        v49 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v49)
        {
          goto LABEL_115;
        }

        v61 = v57;
        if (v56[3] >= v60)
        {
          if ((v55 & 1) == 0)
          {
            v98 = v28;
            sub_190B687F0();
            v28 = v98;
          }
        }

        else
        {
          sub_190B63C54(v60, v55);
          v28 = sub_1908789E4(0);
          if ((v61 & 1) != (v62 & 1))
          {
            goto LABEL_125;
          }
        }

        v33 = v27;
        v63 = v54;
        v27 = v106;
        if (v61)
        {
          *(v56[7] + 8 * v28) = v63;
          v2 = v110;
        }

        else
        {
          v56[(v28 >> 6) + 8] |= 1 << v28;
          *(v56[6] + v28) = 0;
          *(v56[7] + 8 * v28) = v63;
          v64 = v56[2];
          v49 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          v2 = v110;
          if (v49)
          {
            goto LABEL_118;
          }

          v56[2] = v65;
        }

        *(v53 + 24) = v56;
        swift_endAccess();

        v29 = v108;
      }
    }

    else
    {
      v27 = v106;
    }

    v66 = *(v2 + v31);
    if (!v66)
    {
      goto LABEL_38;
    }

    v67 = *(v66 + 128);
    v68 = *(v33 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
    v69 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
    swift_beginAccess();
    v70 = *(v67 + v69);
    if (v70[2] && (sub_190875CC8(v68), (v71 & 1) != 0))
    {
      sub_190D50920();
      if (!v70[2])
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = v27;
      v27 = v33;
      _s17SuggestionContextCMa();
      v72 = swift_allocObject();
      *(v72 + 16) = 768;
      *(v72 + 24) = MEMORY[0x1E69E7CC8];
      swift_beginAccess();
      sub_190D50920();
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v70 = *(v67 + v69);
      *(v67 + v69) = 0x8000000000000000;
      v28 = sub_190875CC8(v68);
      v75 = v70[2];
      v76 = (v74 & 1) == 0;
      v49 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v49)
      {
        goto LABEL_113;
      }

      v78 = v74;
      if (v70[3] >= v77)
      {
        if ((v73 & 1) == 0)
        {
          v97 = v28;
          sub_190B68694();
          v28 = v97;
        }
      }

      else
      {
        sub_190B639E4(v77, v73);
        v28 = sub_190875CC8(v68);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_124;
        }
      }

      v33 = v27;
      v27 = v2;
      if (v78)
      {
        *(v70[7] + 8 * v28) = v72;

        v2 = v110;
      }

      else
      {
        v70[(v28 >> 6) + 8] |= 1 << v28;
        *(v70[6] + 8 * v28) = v68;
        *(v70[7] + 8 * v28) = v72;
        v80 = v70[2];
        v49 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        v2 = v110;
        if (v49)
        {
          goto LABEL_116;
        }

        v70[2] = v81;
      }

      *(v67 + v69) = v70;
      swift_endAccess();
      v31 = v107;
      v29 = v108;
      if (!v70[2])
      {
LABEL_37:

LABEL_38:

        goto LABEL_39;
      }
    }

    v82 = sub_190875CC8(v68);
    if ((v83 & 1) == 0)
    {
      goto LABEL_37;
    }

    v2 = v27;
    v27 = v33;
    v84 = *(v70[7] + 8 * v82);
    sub_190D50920();
    v85 = sub_190D58910();
    swift_beginAccess();
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v84 + 24);
    *(v84 + 24) = 0x8000000000000000;
    v28 = sub_1908789E4(1);
    v89 = v87[2];
    v90 = (v88 & 1) == 0;
    v49 = __OFADD__(v89, v90);
    v91 = v89 + v90;
    if (v49)
    {
      goto LABEL_117;
    }

    v92 = v88;
    if (v87[3] >= v91)
    {
      if ((v86 & 1) == 0)
      {
        v99 = v28;
        sub_190B687F0();
        v28 = v99;
      }
    }

    else
    {
      sub_190B63C54(v91, v86);
      v28 = sub_1908789E4(1);
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_125;
      }
    }

    v94 = v85;
    v27 = v2;
    if (v92)
    {
      *(v87[7] + 8 * v28) = v94;
      v2 = v110;
    }

    else
    {
      v87[(v28 >> 6) + 8] |= 1 << v28;
      *(v87[6] + v28) = 1;
      *(v87[7] + 8 * v28) = v94;
      v95 = v87[2];
      v49 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      v2 = v110;
      if (v49)
      {
        goto LABEL_119;
      }

      v87[2] = v96;
    }

    *(v84 + 24) = v87;
    swift_endAccess();

    v31 = v107;
LABEL_39:
    ++v30;
    v32 = v109;
  }

  while (v111 != v29);
  if (v29 < 1)
  {
    __break(1u);
LABEL_124:
    sub_190D587C0();
    __break(1u);
LABEL_125:
    result = sub_190D587C0();
    __break(1u);
  }

  else
  {
    for (i = 0; i != v29; ++i)
    {
      if (v109)
      {
        v101 = MEMORY[0x193AF3B90](i, v27);
      }

      else
      {
        v101 = *(v27 + 8 * i + 32);
        sub_190D50920();
      }

      sub_1908D0AF8(v101);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1908D2AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_190D572A0();
  v4[8] = sub_190D57290();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_1908D2BAC;

  return sub_1908D00E0();
}

uint64_t sub_1908D2BAC()
{
  v2 = *v1;
  v2[10] = v0;

  v4 = sub_190D57240();
  v2[11] = v4;
  v2[12] = v3;
  if (v0)
  {
    v5 = sub_1908D2F7C;
  }

  else
  {
    v5 = sub_1908D2D0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1908D2D0C()
{
  if (sub_1908D1EBC())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1908D2DE0;

    return sub_1908D1240();
  }
}

uint64_t sub_1908D2DE0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1908D3140;
  }

  else
  {
    v5 = sub_1908D2F1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1908D2F1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1908D2F7C()
{
  v14 = v0;
  v1 = *(v0 + 80);

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_190D58800();
    v10 = sub_19021D9F8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_19020E000, v4, v5, "Unable to create Image Playground suggestion generator with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1908D3140()
{
  v14 = v0;
  v1 = *(v0 + 112);

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_190D58800();
    v10 = sub_19021D9F8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_19020E000, v4, v5, "Unable to create Image Playground suggestion generator with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_1908D3304(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8);
  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
    v9 = sub_190D572E0();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_190D572A0();
    sub_190D52690();
    v10 = a2;
    sub_190D50920();
    v11 = sub_190D57290();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    v12[5] = a1;
    v12[6] = v8;
    v12[7] = v7;
    sub_190857E08(0, 0, v6, &unk_190DDBC98, v12);
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9D730);
    sub_190D50920();
    v22 = sub_190D53020();
    v15 = sub_190D576A0();

    if (os_log_type_enabled(v22, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_190C4B378();
      v20 = sub_19021D9F8(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_19020E000, v22, v15, "Missing suggestion prompt: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x193AF7A40](v17, -1, -1);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }

    else
    {
      v21 = v22;
    }
  }
}

uint64_t sub_1908D35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v8 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0);
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  v9 = sub_190D518A0();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = _s21BackgroundGalleryItemVMa(0);
  v7[39] = swift_task_alloc();
  sub_190D572A0();
  v7[40] = sub_190D57290();
  v11 = sub_190D57240();
  v7[41] = v11;
  v7[42] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1908D3764, v11, v10);
}

uint64_t sub_1908D3764()
{
  v45 = v0;
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator;
  v0[43] = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_suggestionGenerator;
  v3 = *(v1 + v2);
  v0[44] = v3;
  if (v3)
  {
    sub_190D50920();
    v4 = swift_task_alloc();
    v0[45] = v4;
    *v4 = v0;
    v4[1] = sub_1908D3C7C;
    v5 = v0[27];

    return sub_190C29094(v5);
  }

  else
  {

    v7 = *(v1 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel);
    if (v7)
    {
      v8 = *(v7 + 128);
      v9 = *(v0[27] + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
      sub_190D50920();
      sub_190974A70(v9);
      v10 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
      swift_beginAccess();
      v11 = *(v8 + v10);
      if (*(v11 + 16))
      {
        v12 = sub_190875CC8(v9);
        if (v13)
        {
          *(*(*(v11 + 56) + 8 * v12) + 16) = 3;
        }
      }

      sub_19097472C(v9);
    }

    sub_1908D5A00();
    v14 = swift_allocError();
    *v15 = 0;
    swift_willThrow();
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9D730);
    sub_190D50920();
    v17 = v14;
    v18 = sub_190D53020();
    v19 = sub_190D576A0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[37];
      v21 = v0[33];
      v22 = v0[34];
      v23 = v0[27];
      v24 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v24 = 136315650;
      *(v24 + 4) = sub_19021D9F8(0xD00000000000001DLL, 0x8000000190E636B0, v44);
      *(v24 + 12) = 2080;
      v25 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
      swift_beginAccess();
      (*(v22 + 16))(v20, v23 + v25, v21);
      v26 = sub_190D51850();
      v28 = v27;
      (*(v22 + 8))(v20, v21);
      v29 = sub_19021D9F8(v26, v28, v44);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2112;
      v30 = v14;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v31;
      *v42 = v31;
      _os_log_impl(&dword_19020E000, v18, v19, "%s could not generate image for suggestion %s, error %@", v24, 0x20u);
      sub_190830D58(v42);
      MEMORY[0x193AF7A40](v42, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v43, -1, -1);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    v33 = v0[34];
    v32 = v0[35];
    v34 = v0[33];
    v36 = v0[26];
    v35 = v0[27];
    v37 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
    swift_beginAccess();
    (*(v33 + 16))(v32, v35 + v37, v34);
    v38 = sub_190D51850();
    v40 = v39;
    (*(v33 + 8))(v32, v34);
    if (*(v36 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
    {
      sub_190D50920();
      sub_190AAC338(v38, v40, 1);
    }

    else
    {
    }

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_1908D3C7C(uint64_t a1)
{
  v3 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v4 = v3[41];
    v5 = v3[42];
    v6 = sub_1908D4728;
  }

  else
  {

    v4 = v3[41];
    v5 = v3[42];
    v6 = sub_1908D3D98;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1908D3D98()
{
  v108 = v0;
  v1 = v0[46];

  v2 = *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
  if (v2 >> 60 != 15)
  {
    v3 = *(v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
    v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_19083B680(v3, v2);
    v5 = sub_190D51660();
    v6 = [v4 initWithData_];

    if (v6)
    {
      v101 = v6;
      v103 = v3;
      v105 = v2;
      v7 = v0[26];
      v8 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel;
      if (*(v7 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
      {
        v9 = v0[27];
        v10 = *(v9 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_imageGenerationDuration);
        v11 = *(v9 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_imageGenerationDuration + 8);
        v12 = *(v9 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
        sub_190D50920();
        sub_19097462C(v10, v11, 1, v12);

        v13 = *(v7 + v8);
        if (v13)
        {
          v14 = *(v13 + 128);
          v15 = *(v0[27] + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
          sub_190D50920();
          sub_190974A70(v15);
          v16 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
          swift_beginAccess();
          v17 = *(v14 + v16);
          if (*(v17 + 16))
          {
            v18 = sub_190875CC8(v15);
            if (v19)
            {
              *(*(*(v17 + 56) + 8 * v18) + 16) = 2;
            }
          }

          sub_19097472C(v15);
        }
      }

      v20 = v0[46];
      v100 = v8;
      v21 = v0[38];
      v22 = v0[39];
      v23 = v0[37];
      v98 = v0[36];
      v25 = v0[33];
      v24 = v0[34];
      v26 = v0[28];
      v102 = v0[29];
      v96 = v0[27];
      v99 = v7;
      v27 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
      swift_beginAccess();
      v97 = *(v24 + 16);
      v97(v23, v20 + v27, v25);
      v28 = sub_190D51850();
      v94 = v29;
      v95 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = v21[7];
      v32 = _s17BackgroundContentOMa(0);
      (*(*(v32 - 8) + 56))(v22 + v31, 1, 1, v32);
      v33 = (v22 + v21[8]);
      v34 = *(v96 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
      *v33 = v26;
      v33[1] = v102;
      v33[2] = v101;
      v33[3] = v103;
      v33[4] = v105;
      v33[5] = v34;
      swift_storeEnumTagMultiPayload();
      *v22 = 0;
      *(v22 + 8) = 0;
      *(v22 + 16) = v95;
      *(v22 + 24) = v94;
      *(v22 + 32) = 0;
      v35 = (v22 + v21[9]);
      *v35 = 0u;
      v35[1] = 0u;
      v36 = (v22 + v21[10]);
      *v36 = v20 | 0x8000000000000000;
      v36[1] = 0;
      *(v22 + v21[11]) = 0;
      v37 = (v22 + v21[12]);
      *v37 = 0xD000000000000014;
      v37[1] = 0x8000000190E636D0;
      v38 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
      swift_beginAccess();
      v39 = v25;
      v97(v98, v96 + v38, v25);
      sub_19087C5A8(v103, v105);
      sub_190D52690();
      sub_190D50920();
      v40 = v101;
      v41 = sub_190D51850();
      v43 = v42;
      v30(v98, v39);
      if (*(v99 + v100))
      {
        v44 = v0[39];
        sub_190D50920();
        sub_190AAC868(v41, v43, v44, 1);
      }

      v45 = v0[43];
      v46 = v0[26];

      v47 = *(v46 + v45);
      if (v47)
      {
        v48 = *(v47 + 32);
        *(v0[32] + *(v0[30] + 20)) = v0[46];
        sub_190D50920();
        sub_190D51830();
        v49 = OBJC_IVAR____TtC7ChatKit30ImagePlaygroundSuggestionStore_store;
        swift_beginAccess();
        v50 = *(v48 + v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v48 + v49) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_190836498(0, v50[2] + 1, 1, v50);
          *(v48 + v49) = v50;
        }

        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v50 = sub_190836498(v52 > 1, v53 + 1, 1, v50);
        }

        v54 = v0[39];
        v56 = v0[31];
        v55 = v0[32];
        v50[2] = v53 + 1;
        sub_1908D5B8C(v55, v50 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v53);
        *(v48 + v49) = v50;
        swift_endAccess();
        sub_1909FC4B8();
        sub_19029064C(v103, v105);

        sub_1908D5A5C(v54);
        goto LABEL_29;
      }

      v91 = v0[39];

      sub_19029064C(v103, v105);

      sub_1908D5A5C(v91);
      goto LABEL_32;
    }

    sub_19029064C(v3, v2);
  }

  v57 = *(v0[26] + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel);
  if (v57)
  {
    v58 = *(v57 + 128);
    v59 = *(v0[27] + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
    sub_190D50920();
    sub_190974A70(v59);
    v60 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
    swift_beginAccess();
    v61 = *(v58 + v60);
    if (*(v61 + 16))
    {
      v62 = sub_190875CC8(v59);
      if (v63)
      {
        *(*(*(v61 + 56) + 8 * v62) + 16) = 3;
      }
    }

    sub_19097472C(v59);
  }

  sub_1908D5A00();
  v64 = swift_allocError();
  *v65 = 2;
  swift_willThrow();

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v66 = sub_190D53040();
  __swift_project_value_buffer(v66, qword_1EAD9D730);
  sub_190D50920();
  v67 = v64;
  v68 = sub_190D53020();
  v69 = sub_190D576A0();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = v0[37];
    v71 = v0[33];
    v72 = v0[34];
    v73 = v0[27];
    v74 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v107[0] = v106;
    *v74 = 136315650;
    *(v74 + 4) = sub_19021D9F8(0xD00000000000001DLL, 0x8000000190E636B0, v107);
    *(v74 + 12) = 2080;
    v75 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
    swift_beginAccess();
    (*(v72 + 16))(v70, v73 + v75, v71);
    v76 = sub_190D51850();
    v78 = v77;
    (*(v72 + 8))(v70, v71);
    v79 = sub_19021D9F8(v76, v78, v107);

    *(v74 + 14) = v79;
    *(v74 + 22) = 2112;
    v80 = v64;
    v81 = _swift_stdlib_bridgeErrorToNSError();
    *(v74 + 24) = v81;
    *v104 = v81;
    _os_log_impl(&dword_19020E000, v68, v69, "%s could not generate image for suggestion %s, error %@", v74, 0x20u);
    sub_190830D58(v104);
    MEMORY[0x193AF7A40](v104, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v106, -1, -1);
    MEMORY[0x193AF7A40](v74, -1, -1);
  }

  v83 = v0[34];
  v82 = v0[35];
  v84 = v0[33];
  v86 = v0[26];
  v85 = v0[27];
  v87 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  (*(v83 + 16))(v82, v85 + v87, v84);
  v88 = sub_190D51850();
  v90 = v89;
  (*(v83 + 8))(v82, v84);
  if (*(v86 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
  {
    sub_190D50920();
    sub_190AAC338(v88, v90, 1);

LABEL_29:

    goto LABEL_32;
  }

LABEL_32:

  v92 = v0[1];

  return v92();
}

uint64_t sub_1908D4728()
{
  v34 = v0;

  v1 = v0[47];
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  sub_190D50920();
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v31 = v1;
    v7 = v0[33];
    v8 = v0[34];
    v9 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v10 = 136315650;
    *(v10 + 4) = sub_19021D9F8(0xD00000000000001DLL, 0x8000000190E636B0, &v33);
    *(v10 + 12) = 2080;
    v12 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
    swift_beginAccess();
    (*(v8 + 16))(v6, v9 + v12, v7);
    v13 = sub_190D51850();
    v15 = v14;
    v16 = v7;
    v1 = v31;
    (*(v8 + 8))(v6, v16);
    v17 = sub_19021D9F8(v13, v15, &v33);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    v18 = v31;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_19020E000, v4, v5, "%s could not generate image for suggestion %s, error %@", v10, 0x20u);
    sub_190830D58(v11);
    MEMORY[0x193AF7A40](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v32, -1, -1);
    MEMORY[0x193AF7A40](v10, -1, -1);
  }

  v21 = v0[34];
  v20 = v0[35];
  v22 = v0[33];
  v24 = v0[26];
  v23 = v0[27];
  v25 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_id;
  swift_beginAccess();
  (*(v21 + 16))(v20, v23 + v25, v22);
  v26 = sub_190D51850();
  v28 = v27;
  (*(v21 + 8))(v20, v22);
  if (*(v24 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
  {
    sub_190D50920();
    sub_190AAC338(v26, v28, 1);
  }

  else
  {
  }

  v29 = v0[1];

  return v29();
}

void sub_1908D4AE4(void *a1, uint64_t a2)
{
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1908D5434;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_28;
  v10 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

void sub_1908D4CB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1902188FC(0, &qword_1EAD560A8);
    v5 = sub_19093831C(a2);
    if (v5)
    {
      v6 = v5;
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for CKBackgroundGalleryViewController();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = v4[OBJC_IVAR____TtC7ChatKit29GalleryImagePlaygroundManager_isFromSuggestion];
          if (*(v7 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_viewModel))
          {
            sub_190D50920();
            v9 = sub_190AA6430();
            v11 = v10;
            v13 = v12;
            v15 = v14;

            v16 = HIWORD(v9);
            v17 = (v9 >> 8) & 1;
          }

          else
          {
            v27 = *(v7 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation);
            LOBYTE(v9) = sub_190977CF0(v27);
            LOBYTE(v17) = [objc_opt_self() generativePlaygroundModelsAvailable];
            v28 = [v27 chat];
            v13 = v28;
            if (v28)
            {
              if ([v28 isGroupChat])
              {

                v11 = 0;
                v13 = 0;
                v15 = 0;
                LOBYTE(v16) = 2;
              }

              else
              {
                v29 = [v13 isChatBot];

                v11 = 0;
                v13 = 0;
                v15 = 0;
                if (v29)
                {
                  LOBYTE(v16) = 3;
                }

                else
                {
                  LOBYTE(v16) = 1;
                }
              }
            }

            else
            {

              LOBYTE(v16) = 0;
              v11 = 0;
              v15 = 0;
            }
          }

          LOBYTE(v33) = 1;
          BYTE1(v33) = v8;
          BYTE2(v33) = v9 & 1;
          BYTE3(v33) = v17;
          WORD2(v33) = 261;
          BYTE6(v33) = 3;
          BYTE7(v33) = v16;
          *(&v33 + 1) = 1;
          *&v34 = v11;
          *(&v34 + 1) = v15;
          v35 = v13;
          sub_190977A30();

          v32[3] = &_s24GalleryEngagementPayloadVN;
          v32[4] = &off_1F040EAA0;
          v18 = swift_allocObject();
          v32[0] = v18;
          v19 = v34;
          *(v18 + 16) = v33;
          *(v18 + 32) = v19;
          *(v18 + 48) = v35;
          v20 = sub_190D56ED0();
          sub_19083B854(v32, v31);
          v21 = swift_allocObject();
          sub_19029058C(v31, v21 + 16);
          aBlock[4] = sub_190897A2C;
          aBlock[5] = v21;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_190A928AC;
          aBlock[3] = &block_descriptor_14;
          v22 = _Block_copy(aBlock);

          AnalyticsSendEventLazy();
          swift_unknownObjectRelease();
          _Block_release(v22);

          __swift_destroy_boxed_opaque_existential_0(v32);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1908D585C(v6);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v23 = sub_190D53040();
      __swift_project_value_buffer(v23, qword_1EAD9D730);
      v24 = sub_190D53020();
      v25 = sub_190D576C0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_19020E000, v24, v25, "Cancelling with no Playground image.", v26, 2u);
        MEMORY[0x193AF7A40](v26, -1, -1);
      }
    }
  }
}

id sub_1908D53C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1908D5434()
{
  v1 = *(sub_190D515F0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1908D4CB8(v2, v3);
}

uint64_t sub_1908D5498(int64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    sub_190D581C0();
    sub_190D58390();
    v5 = sub_190D581C0();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (!a1)
  {
LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  sub_190D58390();
  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v6 = 0;
    v15 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v2);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v7 = *(v2 + 8 * v6 + 32);
        sub_190D50920();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }
      }

      v9 = v17;
      if (*(v17 + 16) >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1909E52A8(v17);
          v9 = result;
          v17 = result;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v15 >= *(v9 + 16))
        {
          goto LABEL_39;
        }

        *(v9 + 8 * v15 + 32) = v7;

        sub_190D58370();
        if ((v15 + 1) < v3)
        {
          v11 = v15 + 1;
        }

        else
        {
          v11 = 0;
        }

        v15 = v11;
        v6 = v8;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_28:
  v15 = 0;
LABEL_29:

  if (!v15)
  {
    return v17;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v12 = *(v17 + 16);
  result = sub_190D58390();
  if (v12 < v15)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v17 + 16);
    if (v13 >= v15 && v13 >= v12)
    {
      v14 = sub_190D50920();
      sub_1908D5720(v14, v17 + 32, v15, (2 * v12) | 1);
      sub_1908D5720(v17, v17 + 32, 0, (2 * v15) | 1);
      return v16;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1908D5720(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *v4;
  v9 = *(*v4 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if (!result)
  {
    goto LABEL_8;
  }

  v11 = *(v8 + 24) >> 1;
  if (v11 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == v5)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      result = sub_190D583A0();
      v8 = *v4;
      v11 = *(*v4 + 24) >> 1;
      if (v6 != v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  if (v11 - *(v8 + 16) < v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  _s10SuggestionCMa(0);
  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    v12 = *(v8 + 16);
    v13 = __OFADD__(v12, v7);
    v14 = v12 + v7;
    if (!v13)
    {
      *(v8 + 16) = v14;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_13:
  swift_unknownObjectRelease();

  return sub_190D58370();
}

unint64_t sub_1908D5A00()
{
  result = qword_1EAD560B0;
  if (!qword_1EAD560B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD560B0);
  }

  return result;
}

uint64_t sub_1908D5A5C(uint64_t a1)
{
  v2 = _s21BackgroundGalleryItemVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908D5AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA4;

  return sub_1908D35C8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1908D5B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1908D5BF8(unsigned __int8 a1)
{
  result = CKFrameworkBundle();
  v3 = result;
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (result)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (result)
  {
LABEL_11:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1908D5D3C()
{
  v1 = 0x6F746F6870;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1908D5DC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1908D83D8();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1908D5E00()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  return sub_190D50920();
}

uint64_t sub_1908D5E90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  *a2 = *(v3 + 16);
  return sub_190D50920();
}

uint64_t sub_1908D5F28()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C10();
}

void *sub_1908D5FE0()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = sub_190D56ED0();
  v5 = sub_190D56ED0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_190D56F10();
  v9 = v8;

  v1[4] = v7;
  v1[5] = v9;
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v11 = sub_190D56ED0();
  v12 = sub_190D56ED0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = sub_190D56F10();
  v16 = v15;

  v1[6] = v14;
  v1[7] = v16;
  result = CKFrameworkBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_190D56ED0();
    v19 = sub_190D56ED0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    v21 = sub_190D56F10();
    v23 = v22;

    v1[8] = v21;
    v1[9] = v23;
    v1[10] = 2;
    sub_190D51C50();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();

    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1908D62B0(unsigned __int8 a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908D63B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();
  }
}

uint64_t sub_1908D6504(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();
  }
}

uint64_t sub_1908D6650(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1908D67AC(uint64_t result)
{
  if (*(v1 + 80) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908D68EC()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1908D698C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

void (*sub_1908D6A34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit16DetailsPhotosTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908D689C();
  return sub_1908D6B58;
}

void sub_1908D6B58(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_1908D6BEC()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  v1 = *(v0 + 32);
  sub_190D52690();
  return v1;
}

uint64_t sub_1908D6C88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908D6D20()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  v1 = *(v0 + 48);
  sub_190D52690();
  return v1;
}

uint64_t sub_1908D6DBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908D6E54()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  v1 = *(v0 + 64);
  sub_190D52690();
  return v1;
}

uint64_t sub_1908D6EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908D6F88()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  if (*(v0 + 16))
  {
    sub_190D50920();
    v1 = sub_190D52C40();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1908D703C()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  return *(v0 + 80);
}

uint64_t sub_1908D70C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1908D715C(unsigned __int8 a1)
{
  v3 = sub_190D52C80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    v12[-8] = a1;
    v13 = v1;
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C10();
  }

  swift_getKeyPath();
  v13 = v1;
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  if (*(v1 + 16))
  {
    (*(v4 + 104))(v7, **(&unk_1E72F9018 + a1), v3);
    (*(v4 + 32))(v9, v7, v3);
    sub_190D50920();
    sub_190D52C20();
  }

  return result;
}

id sub_1908D73D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  sub_1908D84D0();
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_190D56F10();
  v10 = sub_190D56ED0();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed_];

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  sub_19029063C(a1);
  v29 = v14;
  v15 = sub_190D57DC0();
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:{v18, 0, 0, 0, sub_1908D851C, v29}];

  sub_190D56F10();
  v20 = sub_190D56ED0();
  v21 = [v11 systemImageNamed_];

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a1;
  v23[4] = a2;
  sub_19029063C(a1);
  v24 = sub_190D57DC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_190DD55F0;
  *(v25 + 32) = v15;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_190DD55F0;
  *(v26 + 32) = v24;
  sub_190D52C00();
  v27 = sub_190D52C10();
  v28 = *(*(v27 - 8) + 56);

  return v28(a3, 0, 1, v27);
}

uint64_t sub_1908D77D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_getKeyPath();
    sub_1908D848C(&qword_1EAD45EA8);
    sub_190D51C20();

    v13 = *(v12 + 16);
    sub_190D50920();

    if (v13)
    {
      v14 = a5(result);
      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = a3;
        *(v16 + 24) = a4;
        sub_19029063C(a3);
        v15(a7, v16);
        sub_19022123C(v15);
      }
    }
  }

  return result;
}

uint64_t sub_1908D7928(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  if (a3 && (result & 1) != 0)
  {
    v4 = sub_190D50920();
    a3(v4);

    return sub_19022123C(a3);
  }

  return result;
}

uint64_t sub_1908D7980()
{

  v1 = OBJC_IVAR____TtC7ChatKit16DetailsPhotosTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsPhotosTab()
{
  result = qword_1EAD45E98;
  if (!qword_1EAD45E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1908D7A90()
{
  result = sub_190D51C60();
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

uint64_t getEnumTagSinglePayload for DetailsPhotosTab.Option(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DetailsPhotosTab.Option(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1908D7CAC()
{
  result = qword_1EAD45160;
  if (!qword_1EAD45160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD560B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45160);
  }

  return result;
}

unint64_t sub_1908D7D14()
{
  result = qword_1EAD45EC0;
  if (!qword_1EAD45EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45EC0);
  }

  return result;
}

unint64_t sub_1908D7D6C()
{
  result = qword_1EAD45ED0;
  if (!qword_1EAD45ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45ED0);
  }

  return result;
}

unint64_t sub_1908D7DC4()
{
  result = qword_1EAD45EB8;
  if (!qword_1EAD45EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45EB8);
  }

  return result;
}

unint64_t sub_1908D7E1C()
{
  result = qword_1EAD45EC8;
  if (!qword_1EAD45EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45EC8);
  }

  return result;
}

uint64_t sub_1908D7E70@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

void (*sub_1908D7F20(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1908D6A34(v2);
  return sub_190854AE0;
}

void sub_1908D7F90()
{
  type metadata accessor for DetailsPhotosTab();

  JUMPOUT(0x193AEE5C0);
}

uint64_t sub_1908D7FD4()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  if (*(v0 + 16))
  {
    sub_190D50920();
    sub_190D52C50();
  }

  return result;
}

void (*sub_1908D8080(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC7ChatKit16DetailsPhotosTab___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  if (*(v1 + 16))
  {
    sub_190D50920();
    v5 = sub_190D52C40();
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 32) = v5 & 1;
  return sub_1908D818C;
}

void sub_1908D818C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v2 = v1[1];
  *v1 = v2;
  sub_190D51C20();

  if (*(v2 + 16))
  {
    sub_190D50920();
    sub_190D52C50();
  }

  free(v1);
}

BOOL sub_1908D822C()
{
  swift_getKeyPath();
  sub_1908D848C(&qword_1EAD45EA8);
  sub_190D51C20();

  swift_beginAccess();
  return *(v0 + 24) != 0;
}

uint64_t sub_1908D82D8(uint64_t a1)
{
  sub_19083B854(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560C8);
  result = swift_dynamicCast();
  if (result)
  {
    return sub_1908D715C(v2);
  }

  return result;
}

uint64_t sub_1908D8338@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsPhotosTab();
  sub_1908D848C(&qword_1EAD45EB0);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1908D83D8()
{
  result = qword_1EAD45ED8;
  if (!qword_1EAD45ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45ED8);
  }

  return result;
}

uint64_t keypath_set_54Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_190D52690();
  return a5(v7, v6);
}

uint64_t sub_1908D848C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetailsPhotosTab();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1908D84D0()
{
  result = qword_1EAD464F0;
  if (!qword_1EAD464F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD464F0);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1908D8620()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1908D8680()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  sub_190D52690();
}

uint64_t sub_1908D86C0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
  sub_190D52690();
}

uint64_t sub_1908D8700()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
  sub_190D52690();
}

uint64_t sub_1908D8740()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_190D50920();
}

uint64_t sub_1908D87B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  v6 = sub_190D518A0();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1908D8874, 0, 0);
}

uint64_t sub_1908D8874()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 48) = sub_190AEEB54();
  v4 = (*MEMORY[0x1E699C1C0] + MEMORY[0x1E699C1C0]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1908D8B18;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_1908D8B18()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1908D8EB0;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_1908D8C44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1908D8C44()
{
  if (*(v0 + 88) == 1)
  {
    v4 = (*MEMORY[0x1E699C620] + MEMORY[0x1E699C620]);
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_1908D8D34;

    return v4();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1908D8D34()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1908D90B0;
  }

  else
  {
    v2 = sub_1908D8E48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1908D8E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1908D8EB0()
{
  v14 = v0;
  v1 = *(v0 + 64);

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_19021D9F8(0xD000000000000018, 0x8000000190E5DD20, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_19020E000, v4, v5, "%s Could not perform donation for input with error %@", v6, 0x16u);
    sub_190830D58(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193AF7A40](v8, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1908D90B0()
{
  v14 = v0;
  v1 = *(v0 + 80);

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D730);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_19021D9F8(0xD000000000000018, 0x8000000190E5DD20, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_19020E000, v4, v5, "%s Could not perform donation for input with error %@", v6, 0x16u);
    sub_190830D58(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193AF7A40](v8, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1908D92B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  sub_190D572A0();
  *(v6 + 32) = sub_190D57290();
  v8 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1908D934C, v8, v7);
}

uint64_t sub_1908D934C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);

  v3 = *(v1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      sub_190D56850();
    }

    else
    {
      sub_190D56870();
    }
  }

  else
  {
    sub_190D56840();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1908D93EC()
{

  return swift_deallocClassInstance();
}

uint64_t _s24VerifyConversationButtonVMa()
{
  result = qword_1EAD560D8;
  if (!qword_1EAD560D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1908D94C4()
{
  sub_1908D9530();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1908D9530()
{
  if (!qword_1EAD560E8)
  {
    _s9ViewModelCMa_0();
    v0 = sub_190D56360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD560E8);
    }
  }
}

void sub_1908D95A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  swift_getKeyPath();
  sub_1908D9CD0();
  sub_190D51C20();

  v0 = *(v1 + 16);
  sub_190D50920();
  sub_190CEBFBC(v1 | 0x8000000000000000);
}

id sub_1908D9658@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  sub_190D56320();
  v2 = sub_190B99250();

  sub_19081E484();
  v3 = sub_190D555F0();
  v5 = v4;
  v7 = v6;
  sub_190D55360();
  v8 = sub_190D555B0();
  v19 = v9;
  v20 = v8;
  v11 = v10;
  v13 = v12;

  sub_19081E474(v3, v5, v7 & 1);

  sub_190D56320();
  swift_getKeyPath();
  sub_1908D9CD0();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v14 = *(v2[2] + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

  LOBYTE(v2) = [v14 hasKnownParticipants];

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v2 ^ 1;
  sub_190D56320();

  if (qword_1EAD51E80 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5E9D8 detailsTextColor];
  if (result)
  {
    v18 = sub_190D55CE0();
    result = swift_getKeyPath();
    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = v11 & 1;
    *(a1 + 24) = v13;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = sub_1908D9D28;
    *(a1 + 48) = v16;
    *(a1 + 56) = result;
    *(a1 + 64) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908D98F4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1908D9A30(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1908D9A94(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560F0);
  sub_1908D9B60();
  return sub_190D56030();
}

uint64_t sub_1908D9A30(uint64_t a1, uint64_t a2)
{
  v4 = _s24VerifyConversationButtonVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908D9A94(uint64_t a1, uint64_t a2)
{
  v4 = _s24VerifyConversationButtonVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1908D9AF8()
{
  _s24VerifyConversationButtonVMa();

  sub_1908D95A4();
}

unint64_t sub_1908D9B60()
{
  result = qword_1EAD560F8;
  if (!qword_1EAD560F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD560F0);
    sub_1908D9C18();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD560F8);
  }

  return result;
}

unint64_t sub_1908D9C18()
{
  result = qword_1EAD56100;
  if (!qword_1EAD56100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56108);
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56100);
  }

  return result;
}

unint64_t sub_1908D9CD0()
{
  result = qword_1EAD60490;
  if (!qword_1EAD60490)
  {
    type metadata accessor for DetailsConfiguredViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60490);
  }

  return result;
}

uint64_t sub_1908D9D30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1908D9D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CKPersistentMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKPersistentMenuButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CKPersistentMenuButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id CKPersistentMenuButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CKPersistentMenuButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CKPersistentMenuButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void *sub_1908DA0B4()
{
  v1 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1908DA160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1908DA1B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CKNavBarPersistentMenuManager.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id CKNavBarPersistentMenuManager.init(delegate:)()
{
  *&v0[OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CKNavBarPersistentMenuManager();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

void sub_1908DA424(void *a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for CKPersistentMenuButton();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = a1;
    v6 = [ObjCClassFromMetadata buttonWithType_];
    v7 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
    swift_beginAccess();
    v8 = *(v2 + v7);
    *(v2 + v7) = v6;

    v9 = sub_190D56ED0();
    v10 = [objc_opt_self() systemImageNamed_];

    if (v10)
    {
      v11 = *(v2 + v7);
      if (v11)
      {
        v12 = v11;
        [v12 setImage:v10 forState:0];
      }
    }

    v13 = *(v2 + v7);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1908DA6E4(v5);
      [v14 setMenu_];

      v16 = *(v2 + v7);
      if (v16)
      {
        v17 = v16;
        [v17 setShowsMenuAsPrimaryAction_];
      }
    }
  }

  else
  {
    if (qword_1EAD51D18 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9E160);
    v19 = sub_190D53020();
    v20 = sub_190D576A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19020E000, v19, v20, "Chat properties has no valid persistent menu info", v21, 2u);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    v22 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
    swift_beginAccess();
    v5 = *(v2 + v22);
    *(v2 + v22) = 0;
  }
}

uint64_t sub_1908DA6E4(void *a1)
{
  if ([a1 level])
  {
    v2 = [a1 displayText];
    if (v2)
    {
      v3 = v2;
      sub_190D56F10();
    }
  }

  [a1 level];
  sub_1902188FC(0, &unk_1EAD44ED0);
  v4 = [a1 items];
  sub_190D57950();
  v5 = sub_190D57180();

  sub_1908DA87C(v5);

  return sub_190D57C90();
}

unint64_t sub_1908DA87C(unint64_t result)
{
  v1 = result;
  v28 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
    result = sub_190D581C0();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = v1 & 0xC000000000000001;
    v6 = &selRef_computedInsets;
    v26 = v1;
    v27 = v2;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x193AF3B90](v3, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      if (![v7 v6[259]])
      {
        goto LABEL_26;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v5;
        if ([v9 level])
        {
          v12 = [v10 displayText];
          if (v12)
          {
            v13 = v12;
            sub_190D56F10();
          }
        }

        [v10 level];
        sub_1902188FC(0, &unk_1EAD44ED0);
        v14 = [v10 items];
        sub_190D57950();
        v15 = sub_190D57180();

        v16 = sub_1908DA87C(v15);

        v25 = v16;
        v17 = sub_190D57C90();
        MEMORY[0x193AF29E0](v17);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();

        swift_unknownObjectRelease();
        v4 = v28;
        v5 = v11;
        v1 = v26;
        v2 = v27;
LABEL_19:
        v6 = &selRef_computedInsets;
        goto LABEL_7;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
        break;
      }

      v19 = sub_1908DACB4(v18);
      if (v19)
      {
        v20 = v19;
        MEMORY[0x193AF29E0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();

        swift_unknownObjectRelease();
        v4 = v28;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
LABEL_6:

LABEL_7:
      if (v2 == ++v3)
      {
        return v4;
      }
    }

    swift_unknownObjectRelease();
LABEL_26:
    if (qword_1EAD51D18 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9E160);
    v8 = v8;
    v22 = sub_190D53020();
    v23 = sub_190D576A0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = [v8 type];

      _os_log_impl(&dword_19020E000, v22, v23, "Unknown menu item for type %ld", v24, 0xCu);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908DACB4(void *a1)
{
  if ([a1 chip])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      sub_1902188FC(0, &qword_1EAD464F0);
      swift_unknownObjectRetain();
      v4 = [v3 suggestion];
      v5 = [v4 displayText];

      sub_190D56F10();
      v6 = sub_190D56ED0();
      v7 = [objc_opt_self() systemImageNamed_];

      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v3;
      sub_190D50920();
      v10 = sub_190D57DC0();

LABEL_6:
      swift_unknownObjectRelease();
      return v10;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      sub_1902188FC(0, &qword_1EAD464F0);
      swift_unknownObjectRetain();
      v13 = [v12 suggestion];
      v14 = [v13 displayText];

      sub_190D56F10();
      sub_1908DB0AC();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v12;
      v10 = sub_190D57DC0();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EAD51D18 != -1)
  {
    swift_once();
  }

  v18 = sub_190D53040();
  __swift_project_value_buffer(v18, qword_1EAD9E160);
  v19 = a1;
  v20 = sub_190D53020();
  v21 = sub_190D576A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = [v19 type];

    _os_log_impl(&dword_19020E000, v20, v21, "Unknown chip for type %ld", v22, 0xCu);
    MEMORY[0x193AF7A40](v22, -1, -1);
  }

  else
  {
  }

  return 0;
}

id sub_1908DB0AC()
{
  v1 = [v0 type];
  v2 = 0;
  if (v1 <= 5)
  {
    if (v1 > 2 || v1 < 2 || v1 == 2)
    {
      goto LABEL_14;
    }
  }

  else if (v1 <= 8 || (v1 - 9) < 2 || v1 == 11 || v1 == 12)
  {
LABEL_14:
    v3 = sub_190D56ED0();
    v2 = [objc_opt_self() systemImageNamed_];
  }

  return v2;
}

void sub_1908DB268(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a3);
  }
}

void sub_1908DB310(void *a1, const char *a2, SEL *a3, const char *a4)
{
  v8 = v4;
  if (qword_1EAD51D18 != -1)
  {
    swift_once();
  }

  v10 = sub_190D53040();
  __swift_project_value_buffer(v10, qword_1EAD9E160);
  v11 = a1;
  v12 = sub_190D53020();
  v13 = sub_190D57680();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v14 = 136315138;
    v26 = a3;
    v15 = [v11 suggestion];
    v16 = a4;
    v17 = [v15 displayText];

    v18 = sub_190D56F10();
    v20 = v19;

    a4 = v16;
    v8 = v4;
    v21 = sub_19021D9F8(v18, v20, &v28);

    *(v14 + 4) = v21;
    a3 = v26;
    _os_log_impl(&dword_19020E000, v12, v13, a2, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x193AF7A40](v25, -1, -1);
    MEMORY[0x193AF7A40](v14, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a3];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_190D53020();
    v23 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_19020E000, oslog, v23, a4, v24, 2u);
      MEMORY[0x193AF7A40](v24, -1, -1);
    }
  }
}

id CKNavBarPersistentMenuManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1908DB664(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1908DB8B8()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 audioBalloonTranscriptionFont];

    qword_1EAD9D5F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_1908DB924(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = qword_1EAD45C28;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAD9D5F0;
  *(inited + 64) = sub_1902188FC(0, &qword_1EAD46540);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DB878]) init];
  }

  *(inited + 40) = v7;
  v8 = v6;
  sub_190821998(inited);
  swift_setDeallocating();
  sub_19022EEA4(inited + 32, &qword_1EAD53A50);
  if (a1)
  {
    v9 = sub_190D56ED0();
    v10 = [objc_opt_self() systemImageNamed_];

    if (!v10)
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v11 = [objc_opt_self() textAttachmentWithImage_];

    sub_1902188FC(0, &qword_1EAD56180);
    v12 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    type metadata accessor for Key(0);
    sub_19082B370();
    v13 = sub_190D56D60();

    v14 = v12;
    [v14 addAttributes:v13 range:{0, objc_msgSend(v14, sel_length)}];

    goto LABEL_12;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_190D56ED0();
    v18 = sub_190D56ED0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    sub_190D56F10();
    sub_190D56EE0();

    v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v11 = sub_190D56ED0();

    type metadata accessor for Key(0);
    sub_19082B370();
    v14 = sub_190D56D60();

    [v20 initWithString:v11 attributes:v14];
LABEL_12:

    return sub_190D51200();
  }

  __break(1u);
  return result;
}

void *sub_1908DBD04(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState] = 0;
  v9 = OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView;
  *&v4[v9] = [objc_opt_self() textViewUsingTextLayoutManager_];
  v10 = OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v11 = &v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didTapExpansionButton];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didResize];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_text];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textColor] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_collapsedButtonColor] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expandedButtonColor] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CKTranscriptionView();
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x140);
  v16 = v14;
  v15();

  return v16;
}

void *sub_1908DBEA8(void *a1)
{
  v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState] = 0;
  v3 = OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView;
  *&v1[v3] = [objc_opt_self() textViewUsingTextLayoutManager_];
  v4 = OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v5 = &v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didTapExpansionButton];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didResize];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_text];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textColor] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_collapsedButtonColor] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expandedButtonColor] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CKTranscriptionView();
  v8 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x140);
    v11 = v8;
    v10();
  }

  return v9;
}

void sub_1908DC030()
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_didToggleLineCountChange_];
  v1 = [v0 addGestureRecognizer_];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))(v1);
  (*((*v2 & *v0) + 0x150))(v3);
  [v0 setClipsToBounds_];
}

void sub_1908DC144()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView];
  v2 = [v1 textContainer];
  v3 = v2;
  if (v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState])
  {
    v4 = 6;
  }

  else
  {
    v4 = 2;
  }

  [v2 setMaximumNumberOfLines_];

  [v1 setAdjustsFontForContentSizeCategory_];
  [v1 setTextContainerInset_];
  v5 = [v1 textContainer];
  [v5 setLineBreakMode_];

  if (*&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_text + 8])
  {
    sub_190D52690();
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  [v1 setText_];

  if (qword_1EAD45C28 != -1)
  {
    swift_once();
  }

  [v1 setFont_];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v1 setTextColor_];

  v9 = [v7 clearColor];
  [v1 setBackgroundColor_];

  [v1 setScrollEnabled_];
  [v1 setEditable_];
  [v1 setSelectable_];
  [v1 setUserInteractionEnabled_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_190DD86A0;
  v12 = [v1 topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v14;
  v15 = [v1 bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v11 + 40) = v17;
  v18 = [v1 leadingAnchor];
  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v11 + 48) = v20;
  v21 = [v1 trailingAnchor];
  v22 = [v0 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v11 + 56) = v23;
  sub_1902188FC(0, &qword_1EAD45040);
  v24 = sub_190D57160();

  [v10 activateConstraints_];
}

uint64_t sub_1908DC5D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v32 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57F70();
  sub_1908DB924(v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState]);
  v12 = sub_190D511C0();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v7, 0, 1, v12);
  sub_190D57EB0();
  v14 = [objc_opt_self() systemBlueColor];
  sub_190D57F00();
  v15 = sub_190D57EA0();
  if ((*(v13 + 48))(v16, 1, v12))
  {
    v15(v33, 0);
  }

  else
  {
    if (qword_1EAD45C28 != -1)
    {
      swift_once();
    }

    v17 = qword_1EAD9D5F0;
    v32[1] = qword_1EAD9D5F0;
    sub_1908DD4D0();
    v18 = v17;
    sub_190D511E0();
    v15(v33, 0);
  }

  v19 = *&v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView];
  v20 = [v19 textContainer];
  [v20 lineFragmentPadding];

  sub_190D57E60();
  v21 = *&v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton];
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_190D57FE0();
  [v21 setUserInteractionEnabled_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v32[0] = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_190DD5CE0;
  v23 = [v19 lastBaselineAnchor];
  v24 = [v21 lastBaselineAnchor];
  v25 = v8;
  v26 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v26;
  v27 = [v19 trailingAnchor];
  v28 = [v21 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v22 + 40) = v29;
  sub_1902188FC(0, &qword_1EAD45040);
  v30 = sub_190D57160();

  [v32[0] activateConstraints_];

  return (*(v9 + 8))(v11, v25);
}

void sub_1908DCAEC()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for CKTranscriptionView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = [v1 layoutManager];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v16[4] = sub_1908DD7B4;
  v16[5] = v4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1908DD3E4;
  v16[3] = &block_descriptor_29;
  v5 = _Block_copy(v16);
  v6 = v1;
  sub_190D50920();

  [v3 enumerateLineFragmentsForGlyphRange:0 usingBlock:{0x7FFFFFFFFFFFFFFFLL, v5}];
  _Block_release(v5);

  swift_beginAccess();
  v7 = *(v2 + 16);

  if (v7 == 1)
  {
    v8 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton];
    [v8 frame];
    v19 = CGRectInset(v18, 0.0, 6.0);
    v9 = [objc_opt_self() bezierPathWithRect_];
    v10 = [v6 textContainer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_190DD55F0;
    *(v11 + 32) = v9;
    sub_1902188FC(0, &qword_1EAD450A0);
    v12 = v9;
    v13 = sub_190D57160();

    [v10 setExclusionPaths_];

    [v8 setHidden_];
  }

  else
  {
    v14 = [v6 textContainer];
    sub_1902188FC(0, &qword_1EAD450A0);
    v15 = sub_190D57160();
    [v14 setExclusionPaths_];

    [*&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton] setHidden_];
  }
}

uint64_t sub_1908DCED8(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  sub_190D57FD0();
  v23 = a1 & 1;
  v12 = &OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_collapsedButtonColor;
  if (a1)
  {
    v12 = &OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expandedButtonColor;
  }

  v13 = *(v1 + *v12);
  v14 = sub_190D57FB0();
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v11, 1, v14);
  v17 = v13;
  v18 = v17;
  if (!v16)
  {
    v19 = v17;
    sub_190D57F00();
  }

  if (!v15(v11, 1, v14))
  {
    sub_1908DB924(v23);
    v20 = sub_190D511C0();
    (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
    sub_190D57EB0();
  }

  sub_1908DD2DC(v11, v8);
  sub_190D57FE0();

  return sub_19022EEA4(v11, &unk_1EAD57940);
}

id sub_1908DD164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1908DD288()
{
  result = qword_1EAD56178;
  if (!qword_1EAD56178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56178);
  }

  return result;
}

uint64_t sub_1908DD2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1908DD34C(int a1, uint64_t a2, int a3, _BYTE *a4, id a5, uint64_t a6)
{
  v9 = [a5 layoutManager];
  v10 = [v9 truncatedGlyphRangeInLineFragmentForGlyphAtIndex_];

  result = sub_190D50E40();
  if (v10 != result)
  {
    result = swift_beginAccess();
    *(a6 + 16) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1908DD3E4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);
  sub_190D50920();
  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

unint64_t sub_1908DD4D0()
{
  result = qword_1EAD46328;
  if (!qword_1EAD46328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46328);
  }

  return result;
}

id sub_1908DD524()
{
  v1 = v0;
  if (([*(v0 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton) isHidden] & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didTapExpansionButton);
    if (v2)
    {
      v3 = sub_190D50920();
      v2(v3);
      sub_19022123C(v2);
    }
  }

  v4 = OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState;
  v5 = MEMORY[0x1E69E7D40];
  if (*(v0 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState) == 1)
  {
    v6 = 1;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState) = 1;
    v7 = [*(v0 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView) textContainer];
    v8 = v7;
    if (*(v1 + v4))
    {
      v9 = 6;
    }

    else
    {
      v9 = 2;
    }

    [v7 setMaximumNumberOfLines_];

    (*((*v5 & *v1) + 0x160))(*(v1 + v4));
    v6 = *(v1 + v4);
  }

  (*((*v5 & *v1) + 0x160))(v6);
  v10 = *(v1 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView);
  v11 = [v10 textContainer];
  sub_1902188FC(0, &qword_1EAD450A0);
  v12 = sub_190D57160();
  [v11 setExclusionPaths_];

  v13 = [v10 textContainer];
  v14 = v13;
  if (*(v1 + v4))
  {
    v15 = 6;
  }

  else
  {
    v15 = 2;
  }

  [v13 setMaximumNumberOfLines_];

  result = [v10 invalidateIntrinsicContentSize];
  v17 = *(v1 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_didResize);
  if (v17)
  {
    v18 = sub_190D50920();
    v17(v18);

    return sub_19022123C(v17);
  }

  return result;
}

id sub_1908DD820(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect];
  *v9 = 0u;
  v9[1] = 0u;
  v4[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for RichLinkCardStackItemView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1908DD9C4()
{
  if (*(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData))
  {
    type metadata accessor for RichCarouselItem();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card);
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v3 = v2;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v4 = sub_190D17C78(*(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon));
      v5 = [objc_allocWithZone(MEMORY[0x1E696ECC8]) initWithPresentationProperties:v4 URL:0];

      [v5 _setDisableAutoPlay_];
      [v5 _setDisableTapGesture_];
      v6 = [v3 chipList];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 suggestedActions];

        sub_190D57620();
        v9 = sub_190D57180();
      }

      else
      {
        v9 = 0;
      }

      sub_1908DDCE8(v5, v9);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1908DDB8C(void *a1)
{
  if ([a1 state] == 3)
  {
    v2 = *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView];
    if (v2)
    {
      v4 = v2;
      if ([v4 respondsToSelector_])
      {
        if ([v4 captionTextIsTruncated])
        {
          if (*&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData])
          {
            type metadata accessor for RichCarouselItem();
            v3 = swift_dynamicCastClass();
            if (v3)
            {
              [v1 didTapTruncatedCaptionForRichCard_];
            }
          }
        }
      }
    }
  }
}

void sub_1908DDCE8(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_190D57F40();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D57E10();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D57E80();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D57FB0();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 subviews];
  sub_190861700();
  v16 = sub_190D57180();

  v62 = a1;
  v17 = a2;
  if (v16 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v19 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x193AF3B90](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 removeFromSuperview];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v23 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView;
  v24 = v63;
  v25 = *&v63[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView];
  if (v25)
  {
    [v25 removeFromSuperview];
    v26 = *&v24[v23];
  }

  else
  {
    v26 = 0;
  }

  v27 = v17;
  v28 = v62;
  *&v24[v23] = v62;
  v29 = v28;

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v24 action:sel_didTapLinkView_];
  v31 = *&v24[v23];
  v32 = v14;
  if (v31)
  {
    [v31 addGestureRecognizer_];
  }

  [v24 addSubview_];
  if (!v17)
  {
    goto LABEL_32;
  }

  if (v17 >> 62)
  {
    if (!sub_190D581C0())
    {
      goto LABEL_32;
    }
  }

  else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    [v29 _setCornerRadius_];
    [v24 setNeedsLayout];

    return;
  }

  v33 = [v29 _dominantBackgroundColor];
  v34 = type metadata accessor for ChatBotActionButton();
  v35 = v24;
  v36 = objc_allocWithZone(v34);
  *&v36[OBJC_IVAR___CKChatBotActionButton_iconView] = 0;
  swift_unknownObjectWeakInit();
  *&v36[OBJC_IVAR___CKChatBotActionButton_actionList] = v27;
  v37 = v35;
  sub_190D52690();
  v62 = v33;
  if (v33)
  {
    sub_190D57F90();
    v38 = [objc_opt_self() systemGray5Color];
    sub_190D57EF0();
  }

  else
  {
    sub_190D57F50();
  }

  v40 = v52;
  v39 = v53;
  v41 = v51;
  *&v36[OBJC_IVAR___CKChatBotActionButton_blurView] = 0;
  (*(v40 + 104))(v41, *MEMORY[0x1E69DC540], v39);
  sub_190D57E90();
  v42 = [objc_opt_self() labelColor];
  sub_190D57F00();
  sub_190D57E60();
  (*(v55 + 104))(v54, *MEMORY[0x1E69DC510], v56);
  sub_190D57E20();
  (*(v60 + 104))(v59, *MEMORY[0x1E69DC558], v61);
  sub_190D57E00();
  swift_unknownObjectWeakAssign();
  v36[OBJC_IVAR___CKChatBotActionButton_showTitle] = 1;
  v64.receiver = v36;
  v64.super_class = v34;
  v43 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190B954B0(v32);

  (*(v57 + 8))(v32, v58);
  v44 = *&v37[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView];
  *&v37[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView] = v43;
  v45 = v43;

  v46 = v62;
  if (v62)
  {
    [v37 setBackgroundColor_];
    v24 = v63;
LABEL_31:
    [v37 addSubview_];

    goto LABEL_32;
  }

  v47 = [objc_opt_self() resolvedBackgroundColorFor_];
  v24 = v63;
  if (v47)
  {
LABEL_30:
    [v37 setBackgroundColor_];

    goto LABEL_31;
  }

  v48 = [objc_opt_self() sharedBehaviors];
  if (v48)
  {
    v49 = v48;
    v47 = [v48 defaultRichCardChinColor];

    goto LABEL_30;
  }

  __break(1u);
}

void sub_1908DE3EC()
{
  v1 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView;
  v5 = *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(v0 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + v4) = 0;

  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon) = 0;
  v7 = *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask);
  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask) = 0;
}

void sub_1908DE4E0(void *a1)
{
  v34.receiver = v1;
  v34.super_class = type metadata accessor for RichLinkCardStackItemView();
  objc_msgSendSuper2(&v34, sel_configureForMessagePart_, a1);
  if (!a1)
  {
    return;
  }

  type metadata accessor for RichLinkCardStackChatItem();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = a1;
  v6 = [v4 IMChatItem];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
  }

  v9 = [v8 richCards];

  if (!v9)
  {
LABEL_13:

    return;
  }

  v10 = [v9 cards];

  sub_190D575A0();
  v11 = sub_190D57180();

  if (v11 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_9;
    }

LABEL_16:

    return;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x193AF3B90](0, v11);
    goto LABEL_12;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
LABEL_12:
    v13 = v12;

    v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon] = 1;
    v14 = type metadata accessor for RichCarouselItem();
    v15 = objc_allocWithZone(v14);
    swift_unknownObjectWeakInit();
    *&v15[OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card] = v13;
    swift_unknownObjectWeakAssign();
    v25.receiver = v15;
    v25.super_class = v14;
    v16 = v13;
    v17 = objc_msgSendSuper2(&v25, sel_init);
    *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData] = v17;
    v18 = v17;
    swift_unknownObjectRelease();
    sub_1908DD9C4();

    [v1 balloonDescriptor];
    v19 = objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer());
    v24[4] = v30;
    v24[5] = v31;
    v24[6] = v32;
    v24[7] = v33;
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    v20 = [v19 initWithDescriptor_];
    v21 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask;
    v22 = *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask];
    *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask] = v20;

    v23 = [v1 layer];
    [v23 setMask_];

    [v1 setNeedsLayout];
    return;
  }

  __break(1u);
}

void sub_1908DE89C()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = type metadata accessor for RichLinkCardStackItemView();
  objc_msgSendSuper2(&v50, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView];
  if (v2)
  {
    v3 = v2;
    [v3 bounds];
    [v3 sizeThatFits_];
    if (v4 > 34.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 34.0;
    }

    v6 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView;
    v7 = *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView];
    if (v7)
    {
      v8 = v7;
      [v1 bounds];
      Width = CGRectGetWidth(v52);
      [v1 bounds];
      [v8 setFrame_];

      v10 = *&v1[v6];
      if (v10)
      {
        v11 = v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon];
        v12 = v10;
        if (v11 == 1)
        {
          [v1 safeAreaInsets];
        }

        [v12 contentInset];
        [v12 setContentInset_];

        v13 = *&v1[v6];
        if (v13)
        {
          v14 = v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon];
          v15 = v13;
          if (v14 == 1)
          {
            [v1 safeAreaInsets];
          }

          [v15 contentInset];
          [v15 setContentInset_];
        }
      }
    }

    v16 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon;
    v17 = 16.0;
    if (v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon] == 1)
    {
      [v1 safeAreaInsets];
      v17 = v18 + 16.0;
    }

    [v1 bounds];
    Height = CGRectGetHeight(v54);
    [v1 bounds];
    v20 = CGRectGetWidth(v55);
    v21 = 0.0;
    if (v1[v16] == 1)
    {
      [v1 safeAreaInsets];
      v23 = v22;
      [v1 safeAreaInsets];
      v21 = v23 - v24;
    }

    v25 = Height - v5 + -16.0;
    v26 = v20 + -32.0 - v21;
    v27 = &selRef_setFrame_;
    goto LABEL_18;
  }

  v39 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView;
  v40 = *&v0[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    [v41 setFrame_];

    v42 = *&v1[v39];
    if (v42)
    {
      if (v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon] == 1)
      {
        v3 = v42;
        [v1 safeAreaInsets];
        v17 = v43;
        v5 = v44;
      }

      else
      {
        v17 = *MEMORY[0x1E69DDCE0];
        v47 = *(MEMORY[0x1E69DDCE0] + 8);
        v48 = *(MEMORY[0x1E69DDCE0] + 16);
        v5 = *(MEMORY[0x1E69DDCE0] + 24);
        v49 = v42;
        v26 = v48;
        v25 = v47;
        v3 = v49;
      }

      v27 = &selRef_setContentInset_;
LABEL_18:
      [v3 *v27];
    }
  }

  v28 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView;
  v29 = *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView];
  if (v29)
  {
    [v29 layoutIfNeeded];
    v30 = *&v1[v28];
    if (v30)
    {
      v31 = v30;
      if ([v31 respondsToSelector_] && objc_msgSend(v31, sel_captionTextIsTruncated) && *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData] && (type metadata accessor for RichCarouselItem(), (v32 = swift_dynamicCastClass()) != 0))
      {
        v33 = v32;
        swift_unknownObjectRetain();
        if ([v31 respondsToSelector_])
        {
          v34 = v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon];
          v35 = *(v33 + OBJC_IVAR____TtC7ChatKit16RichCarouselItem_card);
          v36 = sub_190D17C78(v34);
          v37 = [v36 captionBar];
          if (v37)
          {
            v38 = v37;
            [v37 setTrailingAccessoryType_];
          }

          [v31 _setPresentationProperties_];

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  v45 = *&v1[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask];
  if (v45)
  {
    v46 = v45;
    [v1 bounds];
    [v46 setFrame_];
  }
}

id sub_1908DEDA4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for RichLinkCardStackItemView();
  objc_msgSendSuper2(&v9, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView;
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  v7 = *&v0[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask];
  *&v0[OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask] = 0;

  return [v0 setNeedsLayout];
}

id sub_1908DEEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RichLinkCardStackItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1908DEF84(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong openAppFromNotificationExtensionWith_];
  }

  else
  {
    result = [v1 delegate];
    if (!result)
    {
      return result;
    }

    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 didTapChipListFromNotificationExtensionWithBalloonView_];
    }
  }

  return swift_unknownObjectRelease();
}

id sub_1908DF0A8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong chatBotActionButton:a1 didSelectChipAction:a2];
  }

  else
  {
    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 balloonView:v2 selectedChipAction:a2];
    }
  }

  return swift_unknownObjectRelease();
}

id sub_1908DF1E8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didTapTruncatedCaptionForRichCard_];
  }

  else
  {
    result = [v1 delegate];
    if (!result)
    {
      return result;
    }

    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 didTapTruncatedCaptionForRichCard:a1 onBalloonView:v1];
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1908DF314()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_balloonMask) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_clippingRect);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_isStandaloneBalloon) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_userData) = 0;
  sub_190D58510();
  __break(1u);
}

void sub_1908DF3D4(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_chipListMenuView);
  if (v3)
  {
    v6 = v3;
    [v6 bounds];
    [v6 sizeThatFits_];
    v7 = *(v2 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView);
    if (v7)
    {
      [v7 sizeThatFits_];
      v9 = v8;
      v11 = v10;
    }

    else
    {
      v9 = 0.0;
      v11 = 0.0;
    }

    CGSizeAdd(v9, v11, 0.0);
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC7ChatKit25RichLinkCardStackItemView_linkView);
    if (v12)
    {
      [v12 sizeThatFits_];
    }
  }
}

void sub_1908DF534()
{
  sub_1908DF660(319, &unk_1EAD562C0, type metadata accessor for DetailsViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1908DF660(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      sub_1908DF660(319, &qword_1EAD562D0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1908DF660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1908DF6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41[1] = a1;
  v51 = a2;
  v4 = type metadata accessor for DetailsViewNavigation(0);
  v5 = v4 - 8;
  v42 = *(v4 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD562D8);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD562E0);
  MEMORY[0x1EEE9AC00](v41[0]);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD562E8);
  v17 = *(v16 - 8);
  v49 = v16;
  v50 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v44 = v41 - v18;
  v46 = *(v5 + 28);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v19 = v52;
  swift_getKeyPath();
  v52 = v19;
  v43 = sub_1908E0D8C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v20 = *&v19[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState];

  swift_getKeyPath();
  v52 = v20;
  sub_1908E0D8C(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState);
  sub_190D51C20();

  v22 = *&v20[OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle];
  v21 = *&v20[OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle + 8];
  sub_190D52690();

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v52 = v23;
  v53 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD562F0);
  sub_190233640(&qword_1EAD562F8, &qword_1EAD562F0);
  sub_19081E484();
  sub_190D558C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  sub_190D56320();
  sub_1908E0DD4(v3, v10);
  v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v26 = swift_allocObject();
  sub_1908E0E38(v10, v26 + v25);
  sub_1908E0DD4(v3, v8);
  v27 = swift_allocObject();
  sub_1908E0E38(v8, v27 + v25);
  v28 = v41[0];
  v29 = &v15[*(v41[0] + 36)];
  type metadata accessor for DetailsViewModel(0);
  sub_1908E0D8C(&qword_1EAD56300, type metadata accessor for DetailsViewModel);
  sub_190D56340();
  v30 = type metadata accessor for DetailsToolbarContent(0);
  v31 = &v29[*(v30 + 20)];
  *v31 = sub_1908E0E9C;
  v31[1] = v26;
  v32 = &v29[*(v30 + 24)];
  *v32 = sub_1908E105C;
  v32[1] = v27;
  (*(v47 + 32))(v15, v13, v48);
  v33 = sub_1908E1108();
  v34 = sub_190865E9C();
  v35 = v44;
  sub_190D55A70();
  sub_190266A28(v15);
  sub_190D56320();
  v36 = v52;
  swift_getKeyPath();
  v52 = v36;
  sub_190D51C20();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56010);
  sub_190D54410();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_190DD1D90;
  sub_190D54400();
  v52 = v28;
  v53 = &type metadata for DetailsNavigationDestinationBuilder;
  v54 = MEMORY[0x1E6981910];
  v55 = v33;
  v56 = v34;
  v57 = MEMORY[0x1E6981900];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v49;
  MEMORY[0x193AF11F0](0, v37, v49, OpaqueTypeConformance2);

  return (*(v50 + 8))(v35, v39);
}

uint64_t sub_1908DFE10()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsViewNavigation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v4 = v8;
  swift_getKeyPath();
  v8 = v4;
  sub_1908E0D8C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong dismissDetailsNavigationController];
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1909CD28C(v3);
    sub_190D53D00();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1908DFFD0()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  sub_190D56320();

  type metadata accessor for DetailsViewNavigation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v4 = v8;
  swift_getKeyPath();
  v8 = v4;
  sub_1908E0D8C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong dismissDetailsNavigationController];
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1909CD28C(v3);
    sub_190D53D00();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1908E01B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 48))(v3, v4);
  swift_getAssociatedConformanceWitness();
  result = sub_190D561E0();
  *a2 = result;
  return result;
}

uint64_t sub_1908E02BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56358);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56360);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56368);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56370);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56378);
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v30 - v16;
  v18 = type metadata accessor for DetailsToolbarContent(0);
  v30 = *(a1 + *(v18 + 20));
  sub_190D54D20();
  v42 = a1;
  v43 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56380);
  sub_1908E13A4();
  sub_190D53AE0();
  v19 = sub_190233640(&qword_1EAD563B0, &qword_1EAD56370);
  MEMORY[0x193AF0690](v14, v11, v19);
  (*(v12 + 8))(v14, v11);
  v30 = *(a1 + *(v18 + 24));
  sub_190D54D30();
  v40 = a1;
  v41 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563B8);
  sub_1908E1520();
  sub_190D53AE0();
  v20 = sub_190233640(&qword_1EAD563E8, &qword_1EAD56360);
  v21 = v32;
  v22 = v35;
  MEMORY[0x193AF0690](v7, v35, v20);
  (*(v36 + 8))(v7, v22);
  v23 = v37;
  v24 = *(v38 + 48);
  v25 = v31;
  (*(v15 + 16))(v37, v17, v31);
  v26 = v33;
  v27 = &v23[v24];
  v28 = v34;
  (*(v33 + 16))(v27, v21, v34);
  sub_190D54B20();
  (*(v26 + 8))(v21, v28);
  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_1908E07DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563F8);
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  sub_190D56320();

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56398);
  sub_1908E1430();
  return sub_190D54C50();
}

uint64_t sub_1908E08D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  sub_190D56320();

  sub_190D56320();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_190D50920();
  sub_190D56030();
  (*(v10 + 16))(v8, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190D54C50();
  (*(v10 + 8))(v12, v9);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD563D0);
  return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
}

id sub_1908E0B88@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908E0C7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56340);
  sub_190233640(&qword_1EAD56348, &qword_1EAD56338);
  sub_190233640(&qword_1EAD56350, &qword_1EAD56340);
  return sub_190D55BF0();
}

uint64_t sub_1908E0D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1908E0DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewNavigation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908E0E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewNavigation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for DetailsViewNavigation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D53D10();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1908E1074(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DetailsViewNavigation(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1908E1108()
{
  result = qword_1EAD56308;
  if (!qword_1EAD56308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD562E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD562F0);
    sub_190233640(&qword_1EAD562F8, &qword_1EAD562F0);
    sub_19081E484();
    swift_getOpaqueTypeConformance2();
    sub_1908E0D8C(&unk_1EAD56310, type metadata accessor for DetailsToolbarContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56308);
  }

  return result;
}

void sub_1908E1270()
{
  sub_1908DF660(319, &unk_1EAD562C0, type metadata accessor for DetailsViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1908E1324();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1908E1324()
{
  result = qword_1EAD44E20;
  if (!qword_1EAD44E20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EAD44E20);
  }

  return result;
}

unint64_t sub_1908E13A4()
{
  result = qword_1EAD56388;
  if (!qword_1EAD56388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56380);
    sub_1908E1430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56388);
  }

  return result;
}

unint64_t sub_1908E1430()
{
  result = qword_1EAD56390;
  if (!qword_1EAD56390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD56398);
    sub_190233640(&unk_1EAD451C0, &qword_1EAD563A8);
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56390);
  }

  return result;
}

unint64_t sub_1908E1520()
{
  result = qword_1EAD563C0;
  if (!qword_1EAD563C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563B8);
    sub_1908E15A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD563C0);
  }

  return result;
}

unint64_t sub_1908E15A4()
{
  result = qword_1EAD563C8;
  if (!qword_1EAD563C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD563D0);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD563C8);
  }

  return result;
}

id sub_1908E16D4()
{
  v2.receiver = v0;
  v2.super_class = _s14descr1F03EB3E1C15FaceTimeSectionO14ActionHandlersCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1908E1780()
{
  v1 = OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15FaceTimeSection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1908E1854()
{
  result = sub_190D51C60();
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

void sub_1908E194C()
{
  sub_190D579B0();
  if (v0 <= 0x3F)
  {
    _s14descr1F03EB3E1C15FaceTimeSectionO9ViewModelCMa(319);
    if (v1 <= 0x3F)
    {
      sub_1908E19F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1908E19F0()
{
  if (!qword_1EAD56420)
  {
    sub_1908E1A48();
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD56420);
    }
  }
}

unint64_t sub_1908E1A48()
{
  result = qword_1EAD56428;
  if (!qword_1EAD56428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD56428);
  }

  return result;
}

id sub_1908E1AB0(uint64_t a1)
{
  v2 = objc_opt_self();
  _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56438);
  sub_190D55FD0();
  LODWORD(v2) = [v2 activeTUConversationHasActivitySession_];

  if (v2 && (v3 = objc_opt_self(), [v3 ckTUConversationStateForTUConversation_] - 3 <= 1))
  {
    return [v3 activityImageForTUConversation_];
  }

  else
  {
    return 0;
  }
}

id sub_1908E1B9C(uint64_t a1)
{
  v2 = objc_opt_self();
  _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56438);
  sub_190D55FD0();
  LODWORD(v2) = [v2 activeTUConversationHasActivitySession_];

  if (v2 && (v3 = objc_opt_self(), [v3 ckTUConversationStateForTUConversation_] - 3 <= 1))
  {
    return [v3 activityIconForTUConversation:a1 iconSize:15.0];
  }

  else
  {
    return 0;
  }
}

char *sub_1908E1C8C(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 ckTUConversationStateForTUConversation_];
  if ((result - 1) < 2)
  {
    v4 = [v2 faceTimeIconForTUConversation_];
    return v4;
  }

  if ((result - 3) >= 2)
  {
    if (result)
    {
      sub_190D582B0();
      MEMORY[0x193AF28B0](0xD000000000000018, 0x8000000190E63F80);
      type metadata accessor for CKTUConversationState(0);
      sub_190D58450();
      result = sub_190D58510();
      __break(1u);
    }
  }

  else
  {
    result = sub_1908E1B9C(a1);
    if (!result)
    {
      v4 = [v2 sharePlayIcon];
      return v4;
    }
  }

  return result;
}

id sub_1908E1DDC(void *a1)
{
  v2 = objc_opt_self();
  _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56438);
  sub_190D55FD0();
  LODWORD(v2) = [v2 activeTUConversationHasActivitySession_];

  if (!v2)
  {
    v7 = [objc_opt_self() titleForAVMode_];
    goto LABEL_5;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

LABEL_5:
    v8 = sub_190D56F10();

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908E1F68(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 ckTUConversationStateForTUConversation_];
  if ((v3 - 1) < 4)
  {
    v4 = [v2 joinStateStatusStringForTUConversation_];
LABEL_3:
    v5 = sub_190D56F10();

    return v5;
  }

  if (!v3)
  {
    v7 = CKFrameworkBundle();
    if (v7)
    {
      v8 = v7;
      v9 = sub_190D56ED0();
      v10 = sub_190D56ED0();
      v4 = [v8 localizedStringForKey:v9 value:0 table:v10];

      goto LABEL_3;
    }

    __break(1u);
  }

  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000018, 0x8000000190E63F80);
  type metadata accessor for CKTUConversationState(0);
  sub_190D58450();
  result = sub_190D58510();
  __break(1u);
  return result;
}

id sub_1908E2134(uint64_t a1)
{
  v2 = objc_opt_self();
  if ([v2 ckTUConversationStateForTUConversation_] - 3 > 1)
  {
    return 0;
  }

  v3 = [v2 activityTitleForTUConversation_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v2 activityTextForTUConversation_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_190D56F10();
    v12 = v11;

    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (!v7)
    {
LABEL_19:

      return v5;
    }
  }

  v13 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v13 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_19;
  }

  if (!v12)
  {
    return v5;
  }

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_190DD1DA0;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_19081EA10();
  *(v15 + 32) = v5;
  *(v15 + 40) = v7;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = v10;
  *(v15 + 80) = v12;
  result = CKFrameworkBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    sub_190D56F10();
    v5 = sub_190D56EE0();

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id sub_1908E236C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v36 = a3;
  v3 = sub_190D560C0();
  v31 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - v7;
  v8 = sub_190D561B0();
  v29 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = sub_190D54C60();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v18 = result;
    v19 = [result isAccessibilityPreferredContentSizeCategory];

    if (v19)
    {
      sub_190D54AC0();
      sub_190D561A0();
      WitnessTable = swift_getWitnessTable();
      sub_19096BC74(v11, v8, WitnessTable);
      v21 = *(v29 + 8);
      v21(v11, v8);
      sub_19096BC74(v13, v8, WitnessTable);
      swift_getWitnessTable();
      sub_190930C08(v11, v8);
      v21(v11, v8);
      v21(v13, v8);
    }

    else
    {
      sub_190D548D0();
      sub_190D560B0();
      v22 = swift_getWitnessTable();
      v23 = v30;
      sub_19096BC74(v6, v3, v22);
      v24 = *(v31 + 8);
      v24(v6, v3);
      sub_19096BC74(v23, v3, v22);
      swift_getWitnessTable();
      sub_190930D00(v6, v8, v3);
      v24(v6, v3);
      v24(v23, v3);
    }

    v25 = swift_getWitnessTable();
    v26 = swift_getWitnessTable();
    v37 = v25;
    v38 = v26;
    v27 = v35;
    v28 = swift_getWitnessTable();
    sub_19096BC74(v16, v27, v28);
    return (*(v34 + 8))(v16, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *sub_1908E2834@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = objc_opt_self();
  result = [v7 sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v10 = [result isAccessibilityPreferredContentSizeCategory];

  result = [v7 sharedBehaviors];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = [result isAccessibilityPreferredContentSizeCategory];

  if (v12)
  {
    v13 = sub_190D54AC0();
  }

  else
  {
    v13 = sub_190D54AD0();
  }

  *v6 = v13;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564E8);
  sub_1908E2AD8(a1, v10, &v6[*(v14 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v16 = sub_190D552C0();
  *(inited + 32) = v16;
  v17 = sub_190D552D0();
  *(inited + 33) = v17;
  v18 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v16)
  {
    v18 = sub_190D552F0();
  }

  sub_190D552F0();
  if (sub_190D552F0() != v17)
  {
    v18 = sub_190D552F0();
  }

  result = [v7 sharedBehaviors];
  if (result)
  {
    v19 = result;
    [result isAccessibilityPreferredContentSizeCategory];

    sub_190D539C0();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_19081E40C(v6, a2, &qword_1EAD564E0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56448);
    v28 = a2 + result[9];
    *v28 = v18;
    *(v28 + 8) = v21;
    *(v28 + 16) = v23;
    *(v28 + 24) = v25;
    *(v28 + 32) = v27;
    *(v28 + 40) = 0;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1908E2AD8@<X0>(void *a1@<X1>, int a2@<W2>, char *a3@<X8>)
{
  v101 = a2;
  v91 = a1;
  v96 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564F0);
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v97 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - v7;
  *&v117 = sub_1908E1DDC(a1);
  *(&v117 + 1) = v9;
  v92 = sub_19081E484();
  v10 = sub_190D555F0();
  v12 = v11;
  v14 = v13;
  LODWORD(v117) = sub_190D54E80();
  v15 = sub_190D55580();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_19081E474(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  *&v117 = v15;
  *(&v117 + 1) = v17;
  LOBYTE(v118) = v19 & 1;
  *(&v118 + 1) = v21;
  *&v119 = KeyPath;
  BYTE8(v119) = v101;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564F8);
  v24 = sub_1908E6180();
  v94 = v23;
  v95 = v8;
  v93 = v24;
  sub_190D55B00();
  v25 = v91;
  sub_19081E474(v15, v17, v19 & 1);

  v26 = sub_1908E2134(v25);
  if (v27)
  {
    *&v117 = v26;
    *(&v117 + 1) = v27;
    v28 = sub_190D555F0();
    v30 = v29;
    v32 = v31;
    LODWORD(v117) = sub_190D54EB0();
    v90 = sub_190D55580();
    v100 = v33;
    v87 = v34;
    v36 = v35;
    sub_19081E474(v28, v30, v32 & 1);

    v89 = swift_getKeyPath();
    *&v117 = sub_1908E1F68(v25);
    *(&v117 + 1) = v37;
    v38 = sub_190D555F0();
    v40 = v39;
    v42 = v41;
    LODWORD(v117) = sub_190D54EA0();
    v43 = sub_190D55580();
    v45 = v44;
    v47 = v46;
    v86 = v48;
    sub_19081E474(v38, v40, v42 & 1);

    v92 = swift_getKeyPath();
    v87 &= 1u;
    LOBYTE(v102) = v87;
    v116 = v87;
    v49 = v47 & 1;
    v115 = v47 & 1;
    LODWORD(v91) = v47 & 1;
    v50 = v90;
    v51 = v100;
    sub_19081BE48(v90, v100, v87);
    v88 = v36;
    sub_190D52690();
    v52 = v89;
    sub_190D50920();
    sub_19081BE48(v43, v45, v47 & 1);
    v53 = v86;
    sub_190D52690();
    sub_190D50920();
    LOBYTE(v38) = v87;
    sub_19081BE48(v50, v51, v87);
    sub_190D52690();
    v54 = v52;
    sub_190D50920();
    sub_19081BE48(v43, v45, v47 & 1);
    sub_190D52690();
    sub_190D50920();
    sub_19081E474(v43, v45, v47 & 1);

    v55 = v50;
    v56 = v100;
    sub_19081E474(v50, v100, v102);

    v57 = v88;

    LOBYTE(v107) = 0;
    *&v117 = v55;
    *(&v117 + 1) = v56;
    LOBYTE(v118) = v38;
    *(&v118 + 1) = v57;
    *&v119 = v54;
    BYTE8(v119) = v101;
    *&v120 = v43;
    *(&v120 + 1) = v45;
    v121[0] = v91;
    *&v121[8] = v53;
    *&v121[16] = v92;
    *&v121[24] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56518);
    sub_190233640(&qword_1EAD56520, &qword_1EAD56518);
    sub_190D54C50();
    sub_19081E474(v43, v45, v49);

    sub_19081E474(v90, v100, v38);

    v119 = v114[0];
    v120 = v114[1];
    *v121 = v114[2];
    *&v121[10] = *(&v114[2] + 10);
    v117 = v112;
    v118 = v113;
  }

  else
  {
    *&v117 = sub_1908E1F68(v25);
    *(&v117 + 1) = v58;
    v59 = sub_190D555F0();
    v61 = v60;
    v63 = v62;
    LODWORD(v117) = sub_190D54EB0();
    v64 = sub_190D55580();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    sub_19081E474(v59, v61, v63 & 1);

    v71 = swift_getKeyPath();
    *(v114 + 9) = v107;
    v116 = v68 & 1;
    v115 = 1;
    *&v112 = v64;
    *(&v112 + 1) = v66;
    LOBYTE(v113) = v68 & 1;
    *(&v113 + 1) = v102;
    DWORD1(v113) = *(&v102 + 3);
    *(&v113 + 1) = v70;
    *&v114[0] = v71;
    BYTE8(v114[0]) = v101;
    *(&v114[1] + 9) = v108;
    *(&v114[2] + 9) = v109;
    BYTE9(v114[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56518);
    sub_190233640(&qword_1EAD56520, &qword_1EAD56518);
    sub_190D54C50();
  }

  v73 = v97;
  v72 = v98;
  v74 = *(v98 + 16);
  v75 = v95;
  v76 = v99;
  v74(v97, v95, v99);
  v104 = v119;
  v105 = v120;
  v106[0] = *v121;
  *(v106 + 10) = *&v121[10];
  v102 = v117;
  v103 = v118;
  v77 = v96;
  v74(v96, v73, v76);
  v78 = &v77[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56528) + 48)];
  v80 = v105;
  v79 = v106[0];
  v110 = v105;
  v111[0] = v106[0];
  v81 = *(v106 + 10);
  *(v111 + 10) = *(v106 + 10);
  v82 = v103;
  v108 = v103;
  v109 = v104;
  v83 = v102;
  v107 = v102;
  *(v78 + 2) = v104;
  *(v78 + 3) = v80;
  *(v78 + 4) = v79;
  *(v78 + 74) = v81;
  *v78 = v83;
  *(v78 + 1) = v82;
  sub_19022FD14(&v107, &v112, &qword_1EAD56530);
  v84 = *(v72 + 8);
  v84(v75, v76);
  v114[0] = v104;
  v114[1] = v105;
  v114[2] = v106[0];
  *(&v114[2] + 10) = *(v106 + 10);
  v112 = v102;
  v113 = v103;
  sub_19022EEA4(&v112, &qword_1EAD56530);
  return (v84)(v73, v76);
}

id sub_1908E32D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_190D55EB0();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56538);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56540);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v68 - v10);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56548);
  v12 = MEMORY[0x1EEE9AC00](v73);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56550);
  v76 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v68 - v18;
  if ([*(*(v2 + *(_s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0) + 24)) + 16) isKnownSender])
  {
    v69 = v17;
    v70 = a2;
    v19 = sub_1908E1AB0(a1);
    if (v19)
    {
      v20 = v19;
      v21 = sub_1908E1B9C(a1);
      if (v21)
      {
        v22 = v21;
        *v11 = sub_190D564D0();
        v11[1] = v23;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD565A0);
        sub_1908E3BC0(v20, v22, v11 + *(v24 + 44));
        v25 = sub_190D55300();
        v26 = sub_190D552F0();
        sub_190D552F0();
        if (sub_190D552F0() != v25)
        {
          v26 = sub_190D552F0();
        }

        v71 = v22;
        result = [objc_opt_self() sharedBehaviors];
        if (result)
        {
          v28 = result;
          [result isAccessibilityPreferredContentSizeCategory];

          sub_190D539C0();
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;
          sub_19081E40C(v11, v14, &qword_1EAD56540);
          v37 = &v14[*(v73 + 36)];
          *v37 = v26;
          *(v37 + 1) = v30;
          *(v37 + 2) = v32;
          *(v37 + 3) = v34;
          *(v37 + 4) = v36;
          v37[40] = 0;
          sub_19081E40C(v14, v16, &qword_1EAD56548);
          sub_19022FD14(v16, v74, &qword_1EAD56548);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56560);
          sub_1908E6238();
          sub_1908E62F0();
          v38 = v75;
          sub_190D54C50();

          v39 = v16;
          v40 = &qword_1EAD56548;
LABEL_19:
          sub_19022EEA4(v39, v40);
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56558);
          (*(*(v64 - 8) + 56))(v38, 0, 1, v64);
LABEL_21:
          v67 = v69;
          v66 = v70;
          sub_19081E40C(v38, v70, &qword_1EAD56550);
          return (*(v76 + 56))(v66, 0, 1, v67);
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    v42 = sub_1908E1C8C(a1);
    if (!v42)
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56558);
      v38 = v75;
      (*(*(v65 - 8) + 56))(v75, 1, 1, v65);
      goto LABEL_21;
    }

    v43 = v42;
    sub_190D55E90();
    v44 = v71;
    (*(v71 + 13))(v7, *MEMORY[0x1E6981630], v5);
    v45 = sub_190D55F10();

    v44[1](v7, v5);
    v46 = objc_opt_self();
    result = [v46 sharedBehaviors];
    if (result)
    {
      v47 = result;
      v71 = v43;
      [result isAccessibilityPreferredContentSizeCategory];

      result = [v46 sharedBehaviors];
      if (result)
      {
        v48 = result;
        [result isAccessibilityPreferredContentSizeCategory];

        sub_190D56500();
        sub_190D54430();
        *&v83[54] = v90;
        *&v83[70] = v91;
        *&v83[86] = v92;
        *&v83[102] = v93;
        *&v83[6] = v87;
        *&v83[22] = v88;
        v84 = 1;
        *&v83[38] = v89;
        LOBYTE(v48) = sub_190D55300();
        v49 = sub_190D552F0();
        sub_190D552F0();
        if (sub_190D552F0() != v48)
        {
          v49 = sub_190D552F0();
        }

        result = [v46 sharedBehaviors];
        if (result)
        {
          v50 = result;
          [result isAccessibilityPreferredContentSizeCategory];

          sub_190D539C0();
          *(&v79[4] + 2) = *&v83[64];
          *(&v79[5] + 2) = *&v83[80];
          *(&v79[6] + 2) = *&v83[96];
          *(v79 + 2) = *v83;
          *(&v79[1] + 2) = *&v83[16];
          *(&v79[2] + 2) = *&v83[32];
          *&v79[7] = *&v83[110];
          *(&v79[3] + 2) = *&v83[48];
          v85 = 0;
          v78 = v45;
          LOWORD(v79[0]) = 1;
          BYTE8(v79[7]) = v49;
          HIDWORD(v79[7]) = *&v86[3];
          *(&v79[7] + 9) = *v86;
          *&v80 = v51;
          *(&v80 + 1) = v52;
          *&v81 = v53;
          *(&v81 + 1) = v54;
          v82 = 0;
          v55 = v79[0];
          v56 = v79[2];
          v57 = v74;
          *(v74 + 32) = v79[1];
          *(v57 + 48) = v56;
          *v57 = v45;
          *(v57 + 16) = v55;
          v58 = v79[3];
          v59 = v79[4];
          v60 = v79[6];
          *(v57 + 96) = v79[5];
          *(v57 + 112) = v60;
          *(v57 + 64) = v58;
          *(v57 + 80) = v59;
          v61 = v79[7];
          v62 = v80;
          v63 = v81;
          *(v57 + 176) = 0;
          *(v57 + 144) = v62;
          *(v57 + 160) = v63;
          *(v57 + 128) = v61;
          swift_storeEnumTagMultiPayload();
          sub_19022FD14(&v78, &v77, &qword_1EAD56560);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56560);
          sub_1908E6238();
          sub_1908E62F0();
          v38 = v75;
          sub_190D54C50();

          v39 = &v78;
          v40 = &qword_1EAD56560;
          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = *(v76 + 56);

  return v41(a2, 1, 1, v17);
}

id sub_1908E3BC0@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a2;
  v60 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v60);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_190D55EB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD565A8);
  v11 = MEMORY[0x1EEE9AC00](v55);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v51 - v17;
  v18 = a1;
  sub_190D55E90();
  v19 = *(v8 + 104);
  v58 = *MEMORY[0x1E6981630];
  v59 = v8 + 104;
  v57 = v19;
  v19(v10);
  v54 = sub_190D55F10();

  v20 = *(v8 + 8);
  v63 = v7;
  v61 = v8 + 8;
  v56 = v20;
  v20(v10, v7);
  v21 = objc_opt_self();
  result = [v21 sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = result;
  v52 = a3;
  v53 = v13;
  [result isAccessibilityPreferredContentSizeCategory];

  result = [v21 sharedBehaviors];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = result;
  [result isAccessibilityPreferredContentSizeCategory];

  sub_190D56500();
  sub_190D53C60();
  v79 = 1;
  *&v78[6] = v80;
  *&v78[22] = v81;
  *&v78[38] = v82;
  result = [v21 sharedBehaviors];
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = result;
  v26 = [result isAccessibilityPreferredContentSizeCategory];

  if (v26)
  {
    v27 = 12.8;
  }

  else
  {
    v27 = 8.0;
  }

  v28 = *(v60 + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_190D54A20();
  (*(*(v30 - 8) + 104))(v6 + v28, v29, v30);
  *v6 = v27;
  v6[1] = v27;
  v31 = &v16[*(v55 + 36)];
  sub_1908E648C(v6, v31, MEMORY[0x1E697EAF0]);
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)) = 256;
  *v16 = v54;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v16[17] = 1;
  *(v16 + 18) = *v78;
  *(v16 + 34) = *&v78[16];
  *(v16 + 50) = *&v78[32];
  *(v16 + 8) = *&v78[46];
  *(v16 + 36) = 0;
  sub_19081E40C(v16, v64, &qword_1EAD565A8);
  v32 = v62;
  sub_190D55E90();
  v33 = v63;
  v57(v10, v58, v63);
  v34 = sub_190D55F10();

  v56(v10, v33);
  result = [v21 sharedBehaviors];
  if (!result)
  {
    goto LABEL_21;
  }

  v35 = result;
  [result isAccessibilityPreferredContentSizeCategory];

  result = [v21 sharedBehaviors];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = result;
  [result isAccessibilityPreferredContentSizeCategory];

  sub_190D56500();
  sub_190D53C60();
  v77 = 1;
  *&v76[6] = v83;
  *&v76[22] = v84;
  *&v76[38] = v85;
  result = [v21 sharedBehaviors];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = result;
  v38 = [result isAccessibilityPreferredContentSizeCategory];

  result = [v21 sharedBehaviors];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = [result isAccessibilityPreferredContentSizeCategory];

  if (v38)
  {
    v41 = 4.8;
  }

  else
  {
    v41 = 3.0;
  }

  if (v40)
  {
    v42 = 4.8;
  }

  else
  {
    v42 = 3.0;
  }

  v43 = v64;
  v44 = v53;
  sub_19022FD14(v64, v53, &qword_1EAD565A8);
  v45 = v52;
  sub_19022FD14(v44, v52, &qword_1EAD565A8);
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD565B0) + 48);
  v65[0] = v34;
  v65[1] = 0;
  LOWORD(v66[0]) = 257;
  *(v66 + 2) = *v76;
  *(&v66[1] + 2) = *&v76[16];
  *(&v66[2] + 2) = *&v76[32];
  *&v66[3] = *&v76[46];
  *(&v66[3] + 1) = v41;
  v67 = v42;
  v47 = v66[0];
  *v46 = v34;
  *(v46 + 16) = v47;
  v48 = v66[1];
  v49 = v66[2];
  v50 = v66[3];
  *(v46 + 80) = v67;
  *(v46 + 48) = v49;
  *(v46 + 64) = v50;
  *(v46 + 32) = v48;
  sub_19022FD14(v65, v68, qword_1EAD565B8);
  sub_19022EEA4(v43, &qword_1EAD565A8);
  v68[0] = v34;
  v68[1] = 0;
  v69 = 1;
  v70 = 1;
  v71 = *v76;
  v72 = *&v76[16];
  *v73 = *&v76[32];
  *&v73[14] = *&v76[46];
  v74 = v41;
  v75 = v42;
  sub_19022EEA4(v68, qword_1EAD565B8);
  return sub_19022EEA4(v44, &qword_1EAD565A8);
}

void sub_1908E4318(char *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v115 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v90 - v3;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56460);
  MEMORY[0x1EEE9AC00](v102);
  v92 = &v90 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56468);
  v5 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v90 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56470);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v90 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56478);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v90 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56480);
  MEMORY[0x1EEE9AC00](v111);
  v101 = &v90 - v9;
  v10 = sub_190D550C0();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v90 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56488);
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v90 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56490);
  v25 = MEMORY[0x1EEE9AC00](v104);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v90 - v28;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56498);
  MEMORY[0x1EEE9AC00](v94);
  v31 = &v90 - v30;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564A0);
  MEMORY[0x1EEE9AC00](v97);
  v33 = &v90 - v32;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD564A8);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v90 - v34;
  v35 = [v115 state];
  if (v35 < 3)
  {
    v115 = v35;
    v36 = CKFrameworkBundle();
    if (v36)
    {
      v37 = v36;
      v38 = sub_190D56ED0();
      v39 = sub_190D56ED0();
      v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

      v41 = sub_190D56F10();
      v43 = v42;

      v116 = v41;
      v117 = v43;
      _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
      sub_19081E484();
      sub_190D50920();
      sub_190D56080();
      sub_190D550B0();
      sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
      sub_1908E6070();
      v44 = v106;
      v45 = v108;
      sub_190D55720();
      (*(v107 + 8))(v12, v45);
      (*(v105 + 8))(v18, v44);
      v46 = &v29[*(v104 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8);
      sub_190D54480();
      *v46 = swift_getKeyPath();
      (*(v109 + 32))(v29, v24, v110);
      v47 = [objc_opt_self() sharedBehaviors];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 theme];

        if (v49)
        {
          v50 = [v49 multiwayButtonColor];

          if (v50)
          {
            v51 = sub_190D55CE0();
            KeyPath = swift_getKeyPath();
            v116 = v51;
            v53 = sub_190D53C70();
            sub_19081E40C(v29, v31, &qword_1EAD56490);
            v54 = &v31[*(v94 + 36)];
            *v54 = KeyPath;
            v54[1] = v53;
            v55 = (v115 - 1) < 2;
            v56 = swift_getKeyPath();
            v57 = swift_allocObject();
            *(v57 + 16) = v55;
            sub_19081E40C(v31, v33, &qword_1EAD56498);
            v58 = v97;
            v59 = &v33[*(v97 + 36)];
            *v59 = v56;
            v59[1] = sub_1908E658C;
            v59[2] = v57;
            sub_190D553D0();
            v60 = sub_1908E5DB8();
            v61 = v95;
            sub_190D556F0();
            sub_19022EEA4(v33, &qword_1EAD564A0);
            v62 = v96;
            v63 = v98;
            (*(v96 + 16))(v100, v61, v98);
            swift_storeEnumTagMultiPayload();
            v116 = v58;
            v117 = v60;
            swift_getOpaqueTypeConformance2();
            v64 = sub_1908E60C8();
            v116 = v102;
            v117 = v64;
            swift_getOpaqueTypeConformance2();
            v65 = v101;
            sub_190D54C50();
            sub_19022FD14(v65, v113, &qword_1EAD56480);
            swift_storeEnumTagMultiPayload();
            sub_1908E5CB8();
            sub_190D54C50();
            sub_19022EEA4(v65, &qword_1EAD56480);
            (*(v62 + 8))(v61, v63);
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  if ((v35 - 3) < 2)
  {
    v66 = v35;
    v67 = CKFrameworkBundle();
    if (v67)
    {
      v68 = v67;
      v69 = sub_190D56ED0();
      v70 = sub_190D56ED0();
      v71 = [v68 localizedStringForKey:v69 value:0 table:v70];

      v72 = sub_190D56F10();
      v74 = v73;

      v116 = v72;
      v117 = v74;
      v75 = v91;
      sub_190D53970();
      v76 = sub_190D539A0();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
      sub_19081E484();
      sub_190D50920();
      sub_190D56060();
      sub_190D550B0();
      sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
      sub_1908E6070();
      v77 = v106;
      v78 = v108;
      sub_190D55720();
      (*(v107 + 8))(v12, v78);
      (*(v105 + 8))(v16, v77);
      v79 = &v27[*(v104 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8);
      sub_190D54480();
      *v79 = swift_getKeyPath();
      (*(v109 + 32))(v27, v22, v110);
      v80 = swift_getKeyPath();
      v81 = swift_allocObject();
      *(v81 + 16) = v66 == 4;
      v82 = v92;
      sub_19081E40C(v27, v92, &qword_1EAD56490);
      v83 = v102;
      v84 = (v82 + *(v102 + 36));
      *v84 = v80;
      v84[1] = sub_1908D9D28;
      v84[2] = v81;
      sub_190D553D0();
      v85 = sub_1908E60C8();
      v86 = v93;
      sub_190D556F0();
      sub_19022EEA4(v82, &qword_1EAD56460);
      v87 = v103;
      (*(v5 + 16))(v100, v86, v103);
      swift_storeEnumTagMultiPayload();
      v88 = sub_1908E5DB8();
      v116 = v97;
      v117 = v88;
      swift_getOpaqueTypeConformance2();
      v116 = v83;
      v117 = v85;
      swift_getOpaqueTypeConformance2();
      v89 = v101;
      sub_190D54C50();
      sub_19022FD14(v89, v113, &qword_1EAD56480);
      swift_storeEnumTagMultiPayload();
      sub_1908E5CB8();
      sub_190D54C50();
      sub_19022EEA4(v89, &qword_1EAD56480);
      (*(v5 + 8))(v86, v87);
      return;
    }

    goto LABEL_16;
  }

  swift_storeEnumTagMultiPayload();
  sub_1908E5CB8();
  sub_190D54C50();
}

id sub_1908E5264@<X0>(uint64_t a1@<X8>)
{
  v3 = _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1908E5A74(v1, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  sub_1908E648C(v6, v29 + v7, _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v9 = sub_190D552C0();
  *(inited + 32) = v9;
  v10 = sub_190D552D0();
  *(inited + 33) = v10;
  v11 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v9)
  {
    v11 = sub_190D552F0();
  }

  sub_190D552F0();
  if (sub_190D552F0() != v10)
  {
    v11 = sub_190D552F0();
  }

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v13 = result;
    [result isAccessibilityPreferredContentSizeCategory];

    sub_190D539C0();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v30 = 0;
    sub_1908E5A74(v1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = swift_allocObject();
    sub_1908E648C(v6, v22 + v7, _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56430);
    v24 = *(v23 + 52);
    v25 = sub_190D579B0();
    result = (*(*(v25 - 8) + 16))(a1 + v24, v1, v25);
    v26 = v29;
    *a1 = sub_1908E5AD8;
    *(a1 + 8) = v26;
    *(a1 + 16) = v11;
    *(a1 + 17) = *v31;
    *(a1 + 20) = *&v31[3];
    *(a1 + 24) = v15;
    *(a1 + 32) = v17;
    *(a1 + 40) = v19;
    *(a1 + 48) = v21;
    *(a1 + 56) = v30;
    v27 = (a1 + *(v23 + 56));
    *v27 = sub_1908E5C48;
    v27[1] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908E557C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56440);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56448);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56450);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v40 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37[-v16];
  v18 = (a1 + *(_s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0) + 28));
  v20 = v18[1];
  v44 = *v18;
  v19 = v44;
  v45 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56438);
  sub_190D55FD0();
  v21 = v43;
  v22 = v17;
  sub_1908E32D0(v43, v17);

  v44 = v19;
  v45 = v20;
  sub_190D55FD0();
  v23 = v43;
  v24 = v12;
  sub_1908E2834(v43, v12);

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v26 = result;
    v27 = [result isAccessibilityPreferredContentSizeCategory];

    v38 = v27 ^ 1;
    v44 = v19;
    v45 = v20;
    sub_190D55FD0();
    v28 = v43;
    v29 = v41;
    sub_1908E4318(v43, v41);

    v30 = v22;
    v31 = v40;
    sub_19022FD14(v22, v40, &qword_1EAD56450);
    v32 = v24;
    sub_19022FD14(v24, v10, &qword_1EAD56448);
    v33 = v39;
    sub_19022FD14(v29, v39, &qword_1EAD56440);
    v34 = v42;
    sub_19022FD14(v31, v42, &qword_1EAD56450);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56458);
    sub_19022FD14(v10, v34 + v35[12], &qword_1EAD56448);
    v36 = v34 + v35[16];
    *v36 = 0;
    *(v36 + 8) = v38;
    *(v36 + 9) = v27;
    sub_19022FD14(v33, v34 + v35[20], &qword_1EAD56440);
    sub_19022EEA4(v29, &qword_1EAD56440);
    sub_19022EEA4(v32, &qword_1EAD56448);
    sub_19022EEA4(v30, &qword_1EAD56450);
    sub_19022EEA4(v33, &qword_1EAD56440);
    sub_19022EEA4(v10, &qword_1EAD56448);
    return sub_19022EEA4(v31, &qword_1EAD56450);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1908E59A4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + *(_s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0) + 24)) + 16);
  v3 = [v2 chat];
  v4 = [v3 conversation];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56438);
    sub_190D55FE0();
  }
}

uint64_t sub_1908E5A74(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1908E5AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1908E557C(v4, a1);
}

uint64_t objectdestroyTm_8()
{
  v1 = (_s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_190D579B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1908E5C48(uint64_t a1)
{
  v3 = *(_s14descr1F03EB3E1C15FaceTimeSectionO11ContentViewVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1908E59A4(a1, v4);
}

unint64_t sub_1908E5CB8()
{
  result = qword_1EAD564B0;
  if (!qword_1EAD564B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD564A0);
    sub_1908E5DB8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56460);
    sub_1908E60C8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD564B0);
  }

  return result;
}

unint64_t sub_1908E5DB8()
{
  result = qword_1EAD564B8;
  if (!qword_1EAD564B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD564A0);
    sub_1908E5E70();
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD564B8);
  }

  return result;
}

unint64_t sub_1908E5E70()
{
  result = qword_1EAD564C0;
  if (!qword_1EAD564C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56498);
    sub_1908E5F28();
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD564C0);
  }

  return result;
}

unint64_t sub_1908E5F28()
{
  result = qword_1EAD564C8;
  if (!qword_1EAD564C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190D550C0();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    sub_1908E6070();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD564C8);
  }

  return result;
}

unint64_t sub_1908E6070()
{
  result = qword_1EAD564D0;
  if (!qword_1EAD564D0)
  {
    sub_190D550C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD564D0);
  }

  return result;
}

unint64_t sub_1908E60C8()
{
  result = qword_1EAD564D8;
  if (!qword_1EAD564D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56460);
    sub_1908E5F28();
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD564D8);
  }

  return result;
}

unint64_t sub_1908E6180()
{
  result = qword_1EAD56500;
  if (!qword_1EAD56500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD564F8);
    sub_190233640(&qword_1EAD56508, &qword_1EAD56510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56500);
  }

  return result;
}

unint64_t sub_1908E6238()
{
  result = qword_1EAD56568;
  if (!qword_1EAD56568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56548);
    sub_190233640(&qword_1EAD56570, &qword_1EAD56540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56568);
  }

  return result;
}

unint64_t sub_1908E62F0()
{
  result = qword_1EAD56578;
  if (!qword_1EAD56578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56560);
    sub_1908E637C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56578);
  }

  return result;
}

unint64_t sub_1908E637C()
{
  result = qword_1EAD56580;
  if (!qword_1EAD56580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56588);
    sub_1908E6408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56580);
  }

  return result;
}

unint64_t sub_1908E6408()
{
  result = qword_1EAD56590;
  if (!qword_1EAD56590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56590);
  }

  return result;
}

uint64_t sub_1908E648C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1908E64F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id CKConversation.supportsHandleSelection.getter()
{
  result = [v0 chat];
  if (result)
  {
    v2 = result;
    v3 = [result supportsCapabilities_];

    if (v3)
    {
      return [objc_opt_self() fromPickerEnabled];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CKSenderIdentity __swiftcall CKConversation.selectedSenderIdentity()()
{
  v1 = [v0 chat];
  if (v1 && (v2 = v1, v3 = [v1 lastAddressedSIMID], v2, v3))
  {
    sub_190D56F10();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v0 chat];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 lastAddressedHandleID];

    if (v8)
    {
      sub_190D56F10();

      v8 = sub_190D56ED0();
    }

    if (v5)
    {
      goto LABEL_9;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v9 = sub_190D56ED0();

LABEL_12:
  v10 = [objc_allocWithZone(CKSenderIdentity) initWithHandle:v8 simID:v9];

  v13 = v10;
  result._simID = v12;
  result._handle = v11;
  result.super.isa = v13;
  return result;
}

Swift::Void __swiftcall CKConversation.switchToSenderIdentity(_:)(CKSenderIdentity a1)
{
  isa = a1.super.isa;
  v90 = [v1 chat];
  if (!v90)
  {
    return;
  }

  v86 = v1;
  v3 = [v90 lastAddressedSIMID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v90 lastAddressedHandleID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_190D56F10();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if (!(v7 | v12))
  {
    v13 = [v90 account];
    if (v13 && (v14 = v13, v15 = [v13 strippedLogin], v14, v15))
    {
      v10 = sub_190D56F10();
      v12 = v16;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    if (qword_1EAD51CE0 != -1)
    {
      swift_once();
    }

    v17 = sub_190D53040();
    __swift_project_value_buffer(v17, qword_1EAD9E0D0);
    v18 = sub_190D53020();
    v19 = sub_190D576C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v91 = v21;
      *v20 = 136315138;
      v88 = isa;
      v22 = v5;
      v23 = v10;
      if (!v12)
      {
        v10 = 7104878;
      }

      v24 = v7;
      if (v12)
      {
        v25 = v12;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      sub_190D52690();
      v26 = sub_19021D9F8(v10, v25, &v91);
      v7 = v24;

      *(v20 + 4) = v26;
      v10 = v23;
      v5 = v22;
      isa = v88;
      _os_log_impl(&dword_19020E000, v18, v19, "No last addressed handle or simId on chat, using handle from account %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x193AF7A40](v21, -1, -1);
      MEMORY[0x193AF7A40](v20, -1, -1);
    }
  }

  v27 = [v90 account];
  if (v27 && (v28 = v27, v29 = [v27 serviceName], v28, v29))
  {
    v84 = sub_190D56F10();
    v85 = v30;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  v87 = [(objc_class *)isa handle];
  if (qword_1EAD51CE0 != -1)
  {
    swift_once();
  }

  v89 = v5;
  v31 = sub_190D53040();
  __swift_project_value_buffer(v31, qword_1EAD9E0D0);
  sub_190D52690();
  v32 = isa;
  v33 = sub_190D53020();
  v34 = sub_190D576C0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v10;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v91 = v38;
    *v35 = 136315650;
    if (v12)
    {
      v39 = v36;
    }

    else
    {
      v39 = 7104878;
    }

    if (!v12)
    {
      v12 = 0xE300000000000000;
    }

    sub_190D52690();
    v40 = sub_19021D9F8(v39, v12, &v91);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    if (v7)
    {
      v41 = v89;
    }

    else
    {
      v41 = 7104878;
    }

    if (v7)
    {
      v42 = v7;
    }

    else
    {
      v42 = 0xE300000000000000;
    }

    v43 = v7;
    sub_190D52690();
    v44 = sub_19021D9F8(v41, v42, &v91);

    *(v35 + 14) = v44;
    *(v35 + 22) = 2112;
    *(v35 + 24) = v32;
    *v37 = v32;
    v45 = v32;
    _os_log_impl(&dword_19020E000, v33, v34, "Last addressed handle: %s last simID %s. New context to switch to: %@.", v35, 0x20u);
    sub_19022EEA4(v37, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v38, -1, -1);
    MEMORY[0x193AF7A40](v35, -1, -1);
  }

  else
  {
    v43 = v7;
  }

  v46 = v32;
  v47 = [(objc_class *)v32 simID];
  if (v47)
  {
    v48 = v47;
    v49 = sub_190D56F10();
    v51 = v50;

    if (v43)
    {
      v52 = v43;
      v53 = v87;
      if (v49 == v89 && v52 == v51 || (sub_190D58760() & 1) != 0)
      {
      }

      else
      {

        v52 = v51;
      }
    }

    else
    {
      v52 = v51;
      v53 = v87;
    }
  }

  else
  {
    v52 = v43;
    v53 = v87;
  }

  v54 = [objc_opt_self() sharedInstance];
  if (!v54)
  {

    __break(1u);
    return;
  }

  v55 = v54;
  if (v52)
  {
    sub_190D52690();
    v56 = sub_190D56ED0();
  }

  else
  {
    v56 = 0;
  }

  v57 = [v55 iMessageAccountForLastAddressedHandle:v53 simID:v56];

  if (v57)
  {
    v58 = [v57 serviceName];
    if (v58)
    {
      v59 = v58;
      v60 = sub_190D56F10();
      v62 = v61;

      v63 = sub_190D56F10();
      if (v62)
      {
        if (v60 == v63 && v62 == v64)
        {

LABEL_66:
          [v90 forceCancelTypingIndicator];
          goto LABEL_67;
        }

        v65 = sub_190D58760();

        if (v65)
        {
          goto LABEL_66;
        }

LABEL_67:

        goto LABEL_68;
      }
    }

    else
    {
      sub_190D56F10();
    }

    goto LABEL_67;
  }

LABEL_68:
  [v90 setLastAddressedHandleID_];

  if (v52)
  {
    v66 = sub_190D56ED0();
  }

  else
  {
    v66 = 0;
  }

  [v90 setLastAddressedSIMID_];

  v67 = [v90 account];
  if (v67 && (v68 = v67, v69 = [v67 serviceName], v68, v69))
  {
    v70 = sub_190D56F10();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  sub_1908E7214(v84, v85, v70, v72, [v86 isGroupConversation]);

  v73 = v90;
  v74 = sub_190D53020();
  v75 = sub_190D576C0();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v91 = v77;
    *v76 = 136315138;
    v78 = [v73 guid];
    v79 = sub_190D56F10();
    v81 = v80;

    v82 = sub_19021D9F8(v79, v81, &v91);

    *(v76 + 4) = v82;
    _os_log_impl(&dword_19020E000, v74, v75, "We just updated the last addressed handle and sim id for chat with guid %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x193AF7A40](v77, -1, -1);
    MEMORY[0x193AF7A40](v76, -1, -1);
  }

  v83 = [(objc_class *)v46 label];
  if (!v83)
  {
    sub_190D56F10();
    v83 = sub_190D56ED0();
  }

  [v73 updateLineSwitchedTo_];
}