uint64_t sub_190BC6D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190BC6FE8(&qword_1EAD5F048, type metadata accessor for ShowAllSearchController);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190BC6DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190BC6FE8(&qword_1EAD5F048, type metadata accessor for ShowAllSearchController);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190BC6E58()
{
  sub_190BC6FE8(&qword_1EAD5F048, type metadata accessor for ShowAllSearchController);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190BC6EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowAllSearchController();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BC6F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowAllSearchController();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190BC6F78()
{
  type metadata accessor for ShowAllSearchController();

  sub_190BC6C50();
}

uint64_t sub_190BC6FE8(unint64_t *a1, void (*a2)(uint64_t))
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

id AlertControllerActionHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlertControllerActionHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertControllerActionHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AlertControllerActionHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertControllerActionHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190BC714C(void *a1)
{
  v2 = [a1 chat];
  v20 = [v2 _messageToReportJunk];
  if (!v20 || (v3 = [v20 service]) == 0)
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() serviceWithInternalName_];

  v5 = [a1 isChatBot];
  if (v2)
  {
    [v2 reportLazuliSpam:0 isBot:v5];
  }

  if (qword_1EAD51CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9E040);
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_19020E000, v7, v8, "Conversation is with a chatbot: %{BOOL}d. Reported conversation as spam.", v9, 8u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  if (v5)
  {
    goto LABEL_23;
  }

  v10 = [objc_opt_self() sharedFeatureFlags];
  v11 = [v10 isReportJunkEverywhereEnabled];

  if (v11)
  {
    [v2 reportJunk];
  }

  else
  {

    if (!v2)
    {
      v17 = sub_190D53020();
      v18 = sub_190D576C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v17, v18, "Couldn't find chat style, skipping reporting", v19, 2u);
        MEMORY[0x193AF7A40](v19, -1, -1);
      }

      goto LABEL_24;
    }

    if ([objc_opt_self() isReportJunkServiceAllowedForMessageItem:v20 junkChatStyle:{-[NSObject chatStyle](v2, sel_chatStyle)}])
    {
      [v2 reportJunkToCarrierViaRelay:0];
    }
  }

  v12 = sub_190D53020();
  v13 = sub_190D576C0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = 1;
    _os_log_impl(&dword_19020E000, v12, v13, "Did report conversation as spam: @ %{BOOL}d", v14, 8u);
    MEMORY[0x193AF7A40](v14, -1, -1);
  }

  if (!v4)
  {
    v15 = 0;
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v15 = [v4 supportsCapability:*MEMORY[0x1E69A7A20]];
  if (v2)
  {
LABEL_22:
    v16 = objc_opt_self();
    v2 = v2;
    -[NSObject markAsSpam:isJunkReportedToCarrier:](v2, sel_markAsSpam_isJunkReportedToCarrier_, [v16 messageJunkStatus], v15);
LABEL_23:

    v17 = v20;
    v4 = v2;
    v20 = v2;
LABEL_24:
  }

LABEL_25:
}

id CheckInAppVisibilityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CheckInAppVisibilityManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckInAppVisibilityManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CheckInAppVisibilityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckInAppVisibilityManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190BC76A4()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D718);
  __swift_project_value_buffer(v0, qword_1EAD9D718);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t _s7ChatKit23CheckInSendMenuListItemC09isVisibleD12ConversationySbSo14CKConversationCSgFZ_0(void *a1)
{
  if (IMSharedHelperDeviceIsiPad())
  {
    if (qword_1EAD46208 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9D718);
    v3 = sub_190D53020();
    v4 = sub_190D57680();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, v4, "Hiding check-in on iPadOS", v5, 2u);
      MEMORY[0x193AF7A40](v5, -1, -1);
    }

    goto LABEL_45;
  }

  sub_190D52160();
  v6 = sub_190D52150();
  v7 = sub_190D52140();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v3 = a1;
      if ([v3 recipientCount]< 1)
      {
        if (qword_1EAD46208 != -1)
        {
          swift_once();
        }

        v20 = sub_190D53040();
        __swift_project_value_buffer(v20, qword_1EAD9D718);
        v21 = sub_190D53020();
        v22 = sub_190D57680();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_19020E000, v21, v22, "Allowing check-in when there are no recipients", v23, 2u);
          MEMORY[0x193AF7A40](v23, -1, -1);
        }
      }

      else
      {
        v9 = [objc_opt_self() sharedFeatureFlags];
        v10 = [v9 isZelkovaGroupEnabled];

        if ((v10 & 1) == 0 && ([v3 isGroupConversation]& 1) != 0)
        {
          if (qword_1EAD46208 != -1)
          {
            swift_once();
          }

          v11 = sub_190D53040();
          __swift_project_value_buffer(v11, qword_1EAD9D718);
          v12 = sub_190D53020();
          v13 = sub_190D57680();
          if (!os_log_type_enabled(v12, v13))
          {
            goto LABEL_44;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          v15 = "Hiding check-in in a group conversation";
LABEL_43:
          _os_log_impl(&dword_19020E000, v12, v13, v15, v14, 2u);
          MEMORY[0x193AF7A40](v14, -1, -1);
LABEL_44:

LABEL_45:
          v8 = 0;
          goto LABEL_46;
        }

        if (([v3 isBusinessConversation]& 1) != 0)
        {
          if (qword_1EAD46208 != -1)
          {
            swift_once();
          }

          v19 = sub_190D53040();
          __swift_project_value_buffer(v19, qword_1EAD9D718);
          v12 = sub_190D53020();
          v13 = sub_190D57680();
          if (!os_log_type_enabled(v12, v13))
          {
            goto LABEL_44;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          v15 = "Hiding check-in in a Business conversation";
          goto LABEL_43;
        }

        v24 = [v3 chat];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 isSMS];

          if (v26)
          {
            if (qword_1EAD46208 != -1)
            {
              swift_once();
            }

            v27 = sub_190D53040();
            __swift_project_value_buffer(v27, qword_1EAD9D718);
            v12 = sub_190D53020();
            v13 = sub_190D57680();
            if (!os_log_type_enabled(v12, v13))
            {
              goto LABEL_44;
            }

            v14 = swift_slowAlloc();
            *v14 = 0;
            v15 = "Hiding check-in in an SMS conversation";
            goto LABEL_43;
          }
        }

        v28 = [v3 chat];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 isRCS];

          if (v30)
          {
            if (qword_1EAD46208 != -1)
            {
              swift_once();
            }

            v31 = sub_190D53040();
            __swift_project_value_buffer(v31, qword_1EAD9D718);
            v12 = sub_190D53020();
            v13 = sub_190D57680();
            if (!os_log_type_enabled(v12, v13))
            {
              goto LABEL_44;
            }

            v14 = swift_slowAlloc();
            *v14 = 0;
            v15 = "Hiding check-in in an RCS conversation";
            goto LABEL_43;
          }
        }
      }
    }

    else
    {
      if (qword_1EAD46208 != -1)
      {
        swift_once();
      }

      v16 = sub_190D53040();
      __swift_project_value_buffer(v16, qword_1EAD9D718);
      v3 = sub_190D53020();
      v17 = sub_190D57680();
      if (os_log_type_enabled(v3, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v3, v17, "Allowing check-in to be shown, conversation is nil (e.g. in new compose)", v18, 2u);
        MEMORY[0x193AF7A40](v18, -1, -1);
      }
    }

    v8 = 1;
LABEL_46:

    return v8;
  }

  return 0;
}

void sub_190BC7D14()
{
  sub_1902495E8();
  sub_190AE89C8(v7);
  sub_190D50920();
  sub_190958714(v7);
  sub_190D57D20();
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190BC89CC();
  v0 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v1 = [objc_opt_self() sharedBehaviors];
  v2 = v1;
  if (v6 == 1)
  {
    if (!v1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v3 = [v1 theme];

    if (!v3)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v2 = [v3 entryFieldSendLaterPressedBalloonColor];

    if (v2)
    {
      return;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = [v2 theme];

  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = [v4 entryFieldSendLaterBalloonColor];

  if (!v5)
  {
LABEL_14:
    __break(1u);
  }
}

void sub_190BC7EF4()
{
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190BC89CC();
  v0 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_190D53910();
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_onRequestPresentation];
  if (v2)
  {
    v3 = sub_190D50920();
    v2(v3);

    sub_19022123C(v2);
  }

  else
  {
  }
}

double sub_190BC7FF0@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B868);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  sub_190AE89C8(v12);
  sub_190958714(v12);
  v5 = v13;
  *v4 = sub_190D548D0();
  *(v4 + 1) = v5;
  v4[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F050);
  sub_190BC8184(&v4[*(v6 + 44)]);
  sub_190D553B0();
  sub_190BC8968();
  sub_190D556F0();
  sub_19022EEA4(v4, &qword_1EAD5B868);
  sub_190AE89C8(v14);
  sub_190958714(v14);
  v11 = v15;
  v10 = v16;
  v7 = sub_190D552B0();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B858) + 36);
  *v8 = v7;
  *(v8 + 24) = v10;
  result = *&v11;
  *(v8 + 8) = v11;
  *(v8 + 40) = 0;
  return result;
}

uint64_t sub_190BC8184@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F058);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F060);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190BC89CC();
  v13 = sub_190D53AB0();
  swift_getKeyPath();
  sub_190D53FE0();

  sub_190BC7D14();
  v15 = v14;
  v17 = v16;
  v18 = &v12[*(type metadata accessor for DynamicClockRepresentable() + 20)];
  *v18 = v15;
  *(v18 + 1) = v17;
  sub_190AE89C8(v29);
  sub_190958714(v29);
  sub_190AE89C8(v30);
  sub_190958714(v30);
  sub_190D56500();
  sub_190D53C60();
  v19 = &v12[*(v7 + 44)];
  v20 = v32;
  *v19 = v31;
  *(v19 + 1) = v20;
  *(v19 + 2) = v33;
  sub_190BC84B8(v5);
  sub_19022FD14(v12, v9, &qword_1EAD5F060);
  v21 = v27;
  sub_19022FD14(v5, v27, &qword_1EAD5F058);
  v22 = v28;
  sub_19022FD14(v9, v28, &qword_1EAD5F060);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F068);
  sub_19022FD14(v21, v22 + *(v23 + 48), &qword_1EAD5F058);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_19022EEA4(v5, &qword_1EAD5F058);
  sub_19022EEA4(v12, &qword_1EAD5F060);
  sub_19022EEA4(v21, &qword_1EAD5F058);
  return sub_19022EEA4(v9, &qword_1EAD5F060);
}

uint64_t sub_190BC84B8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D54190();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  sub_190A7FCA0(v33 - v11);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D8], v6);
  v33[1] = sub_190D54180();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190BC89CC();
  v14 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  sub_190BE2F28();
  (*(v3 + 8))(v5, v2);
  sub_190D55EA0();
  sub_190D549C0();
  sub_190D549B0();
  sub_190D549A0();

  sub_190D549B0();
  sub_190D54990();
  sub_190D549B0();
  sub_190D549F0();
  v15 = sub_190D555D0();
  v17 = v16;
  LOBYTE(v12) = v18;
  sub_190AE89C8(v35);
  sub_190D50920();
  sub_190958714(v35);
  v19 = sub_190D555B0();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_19081E474(v15, v17, v12 & 1);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F058);
  v27 = v34;
  v28 = (v34 + *(v26 + 36));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
  v30 = *MEMORY[0x1E69816E0];
  v31 = sub_190D55F00();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  result = swift_getKeyPath();
  *v28 = result;
  *v27 = v19;
  *(v27 + 8) = v21;
  *(v27 + 16) = v23 & 1;
  *(v27 + 24) = v25;
  return result;
}

unint64_t sub_190BC8968()
{
  result = qword_1EAD5B870;
  if (!qword_1EAD5B870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B870);
  }

  return result;
}

unint64_t sub_190BC89CC()
{
  result = qword_1EAD5B7F0;
  if (!qword_1EAD5B7F0)
  {
    type metadata accessor for SendLaterRootViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B7F0);
  }

  return result;
}

uint64_t sub_190BC8A24(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  swift_unknownObjectRetain();
  v6(ObjectType, v4);
  swift_unknownObjectRelease();
  v7 = sub_190C750A4(a1);
  if (v8)
  {
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9D658);
    v10 = sub_190D53020();
    v11 = sub_190D57680();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v10, v11, "Persisting the resorted order.", v12, 2u);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }

    v13 = *(v2 + 24);
    v14 = swift_getObjectType();
    v15 = *(v13 + 8);
    swift_unknownObjectRetain();
    v15(v7, v14, v13);
    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t sub_190BC8BD4()
{
  type metadata accessor for SendMenuOrderManager();
  v0 = swift_allocObject();
  type metadata accessor for SendMenuSortOrderPersistenceManager();
  result = swift_initStaticObject();
  *(v0 + 16) = result;
  *(v0 + 24) = &protocol witness table for SendMenuSortOrderPersistenceManager;
  off_1EAD45B18 = v0;
  return result;
}

uint64_t static SendMenuOrderManager.shared.getter()
{
  if (qword_1EAD45B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_190D50920();
}

uint64_t static SendMenuOrderManager.shared.setter(void *a1)
{
  if (qword_1EAD45B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EAD45B18 = a1;
}

uint64_t (*static SendMenuOrderManager.shared.modify())()
{
  if (qword_1EAD45B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_190BC8DA8@<X0>(void *a1@<X8>)
{
  if (qword_1EAD45B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EAD45B18;
  return sub_190D50920();
}

uint64_t sub_190BC8E28(void **a1)
{
  v1 = *a1;
  v2 = qword_1EAD45B10;
  sub_190D50920();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EAD45B18 = v1;
}

uint64_t SendMenuOrderManager.persistenceManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t SendMenuOrderManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SendMenuSortOrderPersistenceManager.persist(_:)()
{
  v0 = sub_190BC918C();
  v1 = sub_190C760C8(v0);
  sub_190C755F0(v1);

  sub_190BC9084();
}

id SendMenuSortOrderPersistenceManager.lastPersistedSortOrder()()
{
  v0 = sub_190BC918C();

  return sub_190C760C8(v0);
}

void sub_190BC9084()
{
  v0 = [objc_opt_self() messagesAppDomain];
  sub_190C75460();
  if (v0)
  {
    v3 = v0;
    v1 = sub_190D56D60();

    v2 = sub_190D56ED0();
    [v3 setObject:v1 forKey:v2];
  }

  else
  {
  }
}

id sub_190BC918C()
{
  result = [objc_opt_self() messagesAppDomain];
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = [v1 dictionaryForKey_];

    if (v3)
    {
      v4 = sub_190D56D90();

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall SendMenuSortOrderPersistenceManager.pluginIdentifierIsInstalled(_:)(Swift::String a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_190D56ED0();
  v3 = [v1 pluginForExtensionIdentifier_];

  return v3 != 0;
}

uint64_t SendMenuSortOrderPersistenceManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190BC9354()
{
  v0 = sub_190BC918C();
  v1 = sub_190C760C8(v0);
  sub_190C755F0(v1);

  sub_190BC9084();
}

id sub_190BC93C0()
{
  v0 = sub_190BC918C();

  return sub_190C760C8(v0);
}

BOOL sub_190BC93E8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_190D56ED0();
  v2 = [v0 pluginForExtensionIdentifier_];

  return v2 != 0;
}

uint64_t _s7ChatKit35SendMenuSortOrderPersistenceManagerC04sendD7CanShow19extensionIdentifier15forConversationSbSS_So14CKConversationCSgtF_0(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EAD45A08 != -1)
  {
    v53 = a3;
    swift_once();
    a3 = v53;
  }

  if (qword_1EAD45A10 == a1 && *algn_1EAD45A18 == a2)
  {
    return 1;
  }

  v6 = a3;
  if (sub_190D58760())
  {
    return 1;
  }

  if (qword_1EAD458D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAD458E0 == a1 && *algn_1EAD458E8 == a2;
  if (v8 || (sub_190D58760() & 1) != 0)
  {
    return CKIsGenmojiCreationAvailable();
  }

  v9 = [objc_opt_self() sharedInstance];
  v10 = sub_190D56ED0();
  v11 = [v9 pluginForExtensionIdentifier_];

  if (v11)
  {
    if (([v9 isBalloonPluginVisible_] & 1) == 0)
    {
      goto LABEL_62;
    }

    v12 = [v11 presentationContexts];
    v13 = objc_opt_self();
    v14 = &selRef_setUpdateType_;
    v15 = [v13 sharedFeatureFlags];
    v16 = [v15 isStickersAppEnabled];

    if (qword_1EAD45828 != -1)
    {
      swift_once();
    }

    if (qword_1EAD45830 != a1 || *algn_1EAD45838 != a2)
    {
      v28 = sub_190D58760();
      if ((v12 & 2) != 0 && ((v16 ^ 1) & 1) == 0 && (v28 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v17 = [objc_opt_self() messagesAppDomain];
    if (v17)
    {
      v18 = v17;
      v19 = sub_190D56ED0();
      v20 = [v18 stringArrayForKey_];

      if (v20)
      {
        v21 = sub_190D57180();

        v22 = [v11 extensionBundleIdentifier];
        if (v22)
        {
          v23 = v22;
          v24 = sub_190D56F10();
          v26 = v25;

          v59 = v13;
          v60[0] = v24;
          v60[1] = v26;
          MEMORY[0x1EEE9AC00](v27);
          v58[2] = v60;
          LOBYTE(v23) = sub_190CA8558(sub_1909F5BC8, v58, v21);
          v14 = &selRef_setUpdateType_;

          v13 = v59;
          if (v23)
          {
            goto LABEL_62;
          }
        }

        else
        {
        }
      }
    }

    v29 = [v13 v14[260]];
    v30 = [v29 showTapToRadarMessagesApp];

    if ((v30 & 1) == 0)
    {
      v31 = IMBalloonExtensionIDWithSuffix();
      if (v31)
      {
        v32 = v31;
        v33 = sub_190D56F10();
        v35 = v34;

        if (v33 == a1 && v35 == a2)
        {

          return 0;
        }

        v36 = sub_190D58760();

        if (v36)
        {
LABEL_62:

          return 0;
        }
      }
    }

    if (qword_1EAD45890 != -1)
    {
      swift_once();
    }

    if (qword_1EAD45898 == a1 && qword_1EAD458A0 == a2 || (sub_190D58760() & 1) != 0)
    {
      if (_s7ChatKit24ApplePaySendMenuListItemC23isVisibleInConversationySbSo14CKConversationCSgFZ_0())
      {
LABEL_46:

        return 1;
      }
    }

    else
    {
      if (qword_1EAD45920 != -1)
      {
        swift_once();
      }

      if (qword_1EAD45928 == a1 && qword_1EAD45930 == a2 || (sub_190D58760() & 1) != 0)
      {
        if (_s7ChatKit23CheckInSendMenuListItemC09isVisibleD12ConversationySbSo14CKConversationCSgFZ_0(v6))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v51 = v6;
        if (qword_1EAD46160 != -1)
        {
          swift_once();
          v51 = v6;
        }

        if (qword_1EAD46168 == a1 && *algn_1EAD46170 == a2 || (v52 = sub_190D58760(), v51 = v6, (v52 & 1) != 0))
        {
          if (_s7ChatKit09SendLaterC12MenuListItemC23isVisibleInConversationySbSo14CKConversationCSgFZ_0(v51))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (qword_1EAD453B8 != -1)
          {
            swift_once();
          }

          if (qword_1EAD453C0 == a1 && *algn_1EAD453C8 == a2 || (sub_190D58760() & 1) != 0)
          {
            v54 = [v13 v14[260]];
            v55 = [v54 isGenPlaygroundEnabled];

            if (v55)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (qword_1EAD458A8 != -1)
            {
              swift_once();
            }

            if (qword_1EAD458B0 == a1 && *algn_1EAD458B8 == a2 || (sub_190D58760() & 1) != 0)
            {
              if (_s7ChatKit24AppStoreSendMenuListItemC23isVisibleInConversationySbSo14CKConversationCSgFZ_0())
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (qword_1EAD45840 != -1)
              {
                swift_once();
              }

              if ((qword_1EAD45848 != a1 || *algn_1EAD45850 != a2) && (sub_190D58760() & 1) == 0)
              {
                goto LABEL_46;
              }

              v56 = [v13 v14[260]];
              v57 = [v56 isPollsEnabled];

              if (v57)
              {
                if (v6 && [v6 supportsPolls])
                {
                  goto LABEL_46;
                }
              }
            }
          }
        }
      }
    }

    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v37 = sub_190D53040();
    __swift_project_value_buffer(v37, qword_1EAD9D658);
    v38 = v6;
    sub_190D52690();
    v39 = sub_190D53020();
    v40 = sub_190D57680();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_19021D9F8(a1, a2, v60);
      *(v41 + 12) = 2080;
      if (v6 && (v43 = [v38 chat]) != 0)
      {
        v44 = v43;
        v45 = [v43 guid];

        v46 = sub_190D56F10();
        v48 = v47;

        v49 = v46;
      }

      else
      {
        v48 = 0xE500000000000000;
        v49 = 0x3E6C696E3CLL;
      }

      v50 = sub_19021D9F8(v49, v48, v60);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_19020E000, v39, v40, "Hiding extension %s in conversation with guid %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v42, -1, -1);
      MEMORY[0x193AF7A40](v41, -1, -1);
    }

    goto LABEL_62;
  }

  return 0;
}

char *_s7ChatKit35SendMenuSortOrderPersistenceManagerC32allInstalledExtensionIdentifiersSaySSGyF_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 allPlugins];
  sub_190BCA274();
  v2 = sub_190D57180();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_190D581C0();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 extensionIdentifier];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v28 = v0;
    v10 = v9;
    v11 = sub_190D56F10();
    v27 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_1908354D4((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    v0 = v28;
    *(v15 + 4) = v11;
    *(v15 + 5) = v27;
  }

  while (v4 != v3);
LABEL_23:

  if (qword_1EAD45A08 != -1)
  {
    swift_once();
  }

  v16 = qword_1EAD45A10;
  v17 = *algn_1EAD45A18;
  sub_190D52690();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
  }

  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  if (v19 >= v18 >> 1)
  {
    v5 = sub_1908354D4((v18 > 1), v19 + 1, 1, v5);
  }

  *(v5 + 2) = v19 + 1;
  v20 = &v5[16 * v19];
  *(v20 + 4) = v16;
  *(v20 + 5) = v17;
  if (qword_1EAD458D8 != -1)
  {
    swift_once();
  }

  v21 = qword_1EAD458E0;
  v22 = *algn_1EAD458E8;
  v23 = *(v5 + 2);
  v24 = *(v5 + 3);
  sub_190D52690();
  if (v23 >= v24 >> 1)
  {
    v5 = sub_1908354D4((v24 > 1), v23 + 1, 1, v5);
  }

  *(v5 + 2) = v23 + 1;
  v25 = &v5[16 * v23];
  *(v25 + 4) = v21;
  *(v25 + 5) = v22;
  return v5;
}

id _s7ChatKit35SendMenuSortOrderPersistenceManagerC20displayNameForPluginyS2SF_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_190D56ED0();
  v2 = [v0 pluginForExtensionIdentifier_];

  if (v2)
  {
    v3 = v2;
    v2 = sub_190A427F0();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_190BCA274()
{
  result = qword_1EAD45088;
  if (!qword_1EAD45088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD45088);
  }

  return result;
}

void *sub_190BCA30C()
{
  v1 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190BCA3D8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v9 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1902188FC(0, &qword_1EAD46530), v6 = a1, v7 = v5, v8 = sub_190D57D90(), v7, (v8 & 1) == 0))
  {
LABEL_7:
    [v5 removeFromSuperview];
    if (*&v2[v4])
    {
      [v2 addSubview_];
    }

    v7 = a1;
    goto LABEL_10;
  }

LABEL_10:
}

void sub_190BCA4CC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_190BCA534(v5);
}

void sub_190BCA534(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v5 || (sub_1902188FC(0, &qword_1EAD46530), v6 = v5, v7 = a1, v8 = sub_190D57D90(), v7, v6, (v8 & 1) == 0))
  {
LABEL_6:
    [a1 removeFromSuperview];
    if (*&v2[v4])
    {
      [v2 addSubview_];
    }
  }
}

void (*sub_190BCA60C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_190BCA6A8;
}

void sub_190BCA6A8(uint64_t *a1, char a2)
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
      if (v3)
      {
        sub_1902188FC(0, &qword_1EAD46530);
        v8 = v3;
        v9 = v7;
        v10 = sub_190D57D90();

        if (v10)
        {

LABEL_15:
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!v3)
      {
LABEL_16:
        v11 = *v4;
        goto LABEL_22;
      }

      v14 = v3;
    }

    v16 = *(v2 + 32);
    v15 = *(v2 + 40);
    [v7 removeFromSuperview];
    if (*(v16 + v15))
    {
      [*(v2 + 32) addSubview_];
    }

    v8 = v3;
    goto LABEL_15;
  }

  if (!v7)
  {
    if (!v3)
    {
      goto LABEL_23;
    }

    v17 = v3;
    goto LABEL_19;
  }

  if (!v3 || (sub_1902188FC(0, &qword_1EAD46530), v11 = v3, v12 = v7, v13 = sub_190D57D90(), v12, (v13 & 1) == 0))
  {
LABEL_19:
    v19 = *(v2 + 32);
    v18 = *(v2 + 40);
    [v7 removeFromSuperview];
    if (*(v19 + v18))
    {
      [*(v2 + 32) addSubview_];
    }

    v11 = v3;
    goto LABEL_22;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

void sub_190BCA83C(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];
  v5 = [objc_opt_self() sharedBehaviors];
  if (v5)
  {
    v6 = v5;
    [v5 balloonCornerRadius];
    v8 = v7;
    v9 = *MEMORY[0x1E69A6E08];
    v10 = *(MEMORY[0x1E69A6E08] + 8);
    v11 = *(MEMORY[0x1E69A6E08] + 16);
    v12 = *(MEMORY[0x1E69A6E08] + 24);
    v13 = CKBackgroundLevelForTraitCollection(v3);

    *a1 = 0x1000000;
    *(a1 + 8) = -1;
    *(a1 + 16) = v8;
    *(a1 + 24) = -2;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
    *(a1 + 96) = 0;
    *(a1 + 104) = v4;
    *(a1 + 112) = v13;
    *(a1 + 120) = 0;
    *(a1 + 124) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_190BCA94C()
{
  v1 = v0;
  v2 = sub_190D56C50();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CKPhotoStackPhotoContentContainerView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v6 = *&v0[OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_containerViewMaskLayer];
  sub_190BCA83C(v17);
  sub_190248D60(v4);
  sub_190B7BC20(v4);
  [v0 bounds];
  [v6 setFrame_];
  v7 = [v0 layer];
  v8 = [v7 mask];

  if (!v8 || (sub_1902188FC(0, &qword_1EAD46528), v9 = v6, v10 = sub_190D57D90(), v8, v9, (v10 & 1) == 0))
  {
    v11 = [v1 layer];
    [v11 setMask_];
  }

  v12 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v13 = *&v1[v12];
  if (v13)
  {
    v14 = v13;
    [v1 bounds];
    [v14 setFrame_];
  }
}

id CKPhotoStackPhotoContentContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKPhotoStackPhotoContentContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView] = 0;
  v9 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_containerViewMaskLayer;
  memset(v12, 0, sizeof(v12));
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer()) initWithDescriptor_];
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CKPhotoStackPhotoContentContainerView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id CKPhotoStackPhotoContentContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CKPhotoStackPhotoContentContainerView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView] = 0;
  v3 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_containerViewMaskLayer;
  memset(v7, 0, sizeof(v7));
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer()) initWithDescriptor_];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CKPhotoStackPhotoContentContainerView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id CKPhotoStackPhotoContentContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPhotoStackPhotoContentContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190BCB168(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_190D572A0();
  v1[4] = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190BCB204, v3, v2);
}

uint64_t sub_190BCB204()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_190D57290();
  v3 = sub_190D57240();
  v0[7] = v3;
  v0[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190BCB2A4, v3, v2);
}

uint64_t sub_190BCB2A4()
{
  sub_190D52100();
  sub_190D520F0();
  sub_190D520D0();

  *(v0 + 72) = sub_190D520F0();
  v3 = (*MEMORY[0x1E69A6758] + MEMORY[0x1E69A6758]);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_190BCB37C;

  return v3();
}

uint64_t sub_190BCB37C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_190BCB4C0, v3, v2);
}

uint64_t sub_190BCB4C0()
{
  v1 = *(v0 + 40);

  sub_190D52030();
  sub_190D52000();
  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190BCB548()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_190BCB168(v2);
}

id sub_190BCB5F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = a3;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v8 = a3;
  }

  _sSo15UIBarButtonItemC7ChatKitE010ck_tapbackC04with6target6actionABSo013CKMessagePartdC0C_ypSg10ObjectiveC8SelectorVtFZ_0(a3, v12, a5);
  v10 = v9;

  sub_19021E7D8(v12);

  return v10;
}

Swift::Void __swiftcall UIBarButtonItem.ck_applyBadgedCount(_:)(Swift::Int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_190D57730();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    (*(v6 + 56))(v4, 1, 1, v5, v7);
    sub_190D57740();
  }

  else
  {
    sub_190D57720();
    v10 = [objc_opt_self() systemBlueColor];
    sub_190D57710();
    (*(v6 + 16))(v4, v9, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_190D57740();
    if (qword_1EAD46BA0 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9D8E0);
    v12 = sub_190D53020();
    v13 = sub_190D576C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_19020E000, v12, v13, "Showing filters badge pending count: %ld", v14, 0xCu);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_190BCB928(void *a1, uint64_t a2, Swift::Int a3)
{
  v4 = a1;
  UIBarButtonItem.ck_applyBadgedCount(_:)(a3);
}

void _sSo15UIBarButtonItemC7ChatKitE010ck_tapbackC04with6target6actionABSo013CKMessagePartdC0C_ypSg10ObjectiveC8SelectorVtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 hasMessageAcknowledgment])
  {
    objc_allocWithZone(type metadata accessor for TapbackBarButtonItemView());
    v6 = sub_190A82260(a1);
    sub_19023C414(a2, v30);
    v7 = v31;
    if (v31)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v30, v31);
      v9 = *(v7 - 8);
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = v6;
      v14 = sub_190D58740();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      v27 = v6;
      v14 = 0;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v14 action:a3];
    swift_unknownObjectRelease();
    [v6 addGestureRecognizer_];

    [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  }

  else
  {
    v15 = sub_190D56ED0();
    v16 = [objc_opt_self() _systemImageNamed_];

    if (v16)
    {
      [objc_opt_self() systemFontSize];
      v18 = [v16 imageWithBaselineOffsetFromBottom_];

      sub_19023C414(a2, v30);
      v19 = v31;
      if (v31)
      {
        v20 = __swift_project_boxed_opaque_existential_1(v30, v31);
        v21 = *(v19 - 8);
        v22 = MEMORY[0x1EEE9AC00](v20);
        v24 = v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v21 + 16))(v24, v22);
        v25 = v18;
        v26 = sub_190D58740();
        (*(v21 + 8))(v24, v19);
        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      else
      {
        v29 = v18;
        v26 = 0;
      }

      [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v18 style:0 target:v26 action:a3];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_190BCBD24()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_190D56ED0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_19021E7D8(v7);
  }

  return 25;
}

void sub_190BCBE74()
{
  sub_190BCFE18(319, &qword_1EAD5F0C0, type metadata accessor for ClarityUIConversationList, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_190BCFE18(319, &qword_1EAD5F0C8, MEMORY[0x1E697C7D8], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_190BCBF74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x73746361746E6F63;
  if (v2 != 1)
  {
    v4 = 0x436E776F6E6B6E75;
    v3 = 0xEF73746361746E6FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73746E65636572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x73746361746E6F63;
  if (*a2 != 1)
  {
    v8 = 0x436E776F6E6B6E75;
    v7 = 0xEF73746361746E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73746E65636572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_190D58760();
  }

  return v11 & 1;
}

uint64_t sub_190BCC090()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190BCC140()
{
  sub_190D56FC0();
}

uint64_t sub_190BCC1DC()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190BCC288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190BCFC78();
  *a1 = result;
  return result;
}

void sub_190BCC2B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x73746361746E6F63;
  if (v2 != 1)
  {
    v5 = 0x436E776F6E6B6E75;
    v4 = 0xEF73746361746E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73746E65636572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_190BCC324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClarityUIRootView(0);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F0D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F0D8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F0E0);
  type metadata accessor for ClarityUITranscriptView(255);
  sub_190BCDAF4();
  sub_190BCDB48();
  sub_190BCF64C(&qword_1EAD5F0F8, type metadata accessor for ClarityUITranscriptView);
  v18 = &type metadata for ClarityUIRootView.Destination;
  v19 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_190BCDB9C();
  v22 = sub_190BCDBF0();
  swift_getOpaqueTypeConformance2();
  sub_190D54220();
  v6 = sub_190D55D50();
  KeyPath = swift_getKeyPath();
  v17 = v6;
  v8 = sub_190D53C70();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F128) + 36));
  *v9 = KeyPath;
  v9[1] = v8;
  sub_190BCFF84(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIRootView);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = swift_allocObject();
  sub_190BCFFEC(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ClarityUIRootView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F130);
  v13 = (a1 + *(result + 36));
  *v13 = sub_190BCF620;
  v13[1] = v11;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_190BCC5FC@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for ClarityUIRootView(0);
  v34 = *(v3 - 8);
  v40 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F0D8);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v39 = a1;
  v7 = *a1;
  v8 = a1[1];
  v41 = &v30 - v9;
  v42 = v7;
  v43 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F138);
  sub_190D55FD0();
  v10 = v48;
  swift_getKeyPath();
  v42 = v10;
  sub_190BCF64C(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList);
  sub_190D51C20();

  Kind = v10[1].Kind;
  sub_190D52690();

  v42 = v7;
  v43 = v8;
  sub_190D55FD0();
  v11 = v48;
  swift_getKeyPath();
  v42 = v11;
  sub_190D51C20();

  Description = v11[1].Description;
  v12 = Description;
  sub_190D52690();

  v42 = v7;
  v43 = v8;
  sub_190D55FD0();
  v13 = v48;
  swift_getKeyPath();
  v42 = v13;
  sub_190D51C20();

  v31 = v13[2].Kind;
  v14 = v31;
  sub_190D52690();

  v42 = v7;
  v43 = v8;
  sub_190D55FD0();
  v15 = v48;
  swift_getKeyPath();
  v42 = v15;
  sub_190D51C20();

  v30 = v15[2].Description;
  v16 = v30;
  sub_190D52690();

  v42 = v7;
  v43 = v8;
  sub_190D55FD0();
  v17 = v48;
  swift_getKeyPath();
  v42 = v17;
  sub_190D51C20();

  v18 = [v17[6].Description isLessRestrictiveThanCommunicationLimit_];

  v42 = Kind;
  v43 = v12;
  v44 = v14;
  v45 = v16;
  LOBYTE(v46) = v18;
  v19 = v33;
  sub_190BCFF84(v39, v33, type metadata accessor for ClarityUIRootView);
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_190BCFFEC(v19, v21 + v20, type metadata accessor for ClarityUIRootView);
  v22 = type metadata accessor for ClarityUITranscriptView(0);
  v23 = sub_190BCDAF4();
  v24 = sub_190BCDB48();
  v25 = sub_190BCF64C(&qword_1EAD5F0F8, type metadata accessor for ClarityUITranscriptView);
  sub_190D55A70();

  sub_190BCFF84(v39, v19, type metadata accessor for ClarityUIRootView);
  v26 = swift_allocObject();
  sub_190BCFFEC(v19, v26 + v20, type metadata accessor for ClarityUIRootView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F0E0);
  v42 = &type metadata for ConversationListView;
  v43 = &type metadata for ClarityUIConversation;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  swift_getOpaqueTypeConformance2();
  sub_190BCDB9C();
  sub_190BCDBF0();
  v27 = v35;
  v28 = v41;
  sub_190D55A70();

  return (*(v36 + 8))(v28, v27);
}

uint64_t sub_190BCCBE4@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v9[2] = a1[2];
  v10[0] = v4;
  *(v10 + 9) = *(a1 + 57);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a2[1];
  v8[10] = *a2;
  v8[11] = v6;
  sub_1909B8804(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F138);
  sub_190D55FD0();
  return sub_190B872CC(v9, v8[0], a3);
}

id sub_190BCCC68@<X0>(unsigned __int8 *a1@<X0>, ValueMetadata **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F140);
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F148);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v67 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F150);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v67 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F118);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F158);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  v21 = *a1;
  v23 = *a2;
  v22 = a2[1];
  v76 = a3;
  v77 = v6;
  v75 = v10;
  if (!v21)
  {
    v68 = v17;
    v69 = v18;
    v78 = v23;
    v79 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F138);
    sub_190D55FD0();
    v40 = v86;
    swift_getKeyPath();
    v78 = v40;
    sub_190BCF64C(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList);
    sub_190D51C20();

    Description = v40[1].Description;
    sub_190D52690();

    result = CKFrameworkBundle();
    if (result)
    {
      v42 = result;
      v43 = sub_190D56ED0();
      v44 = sub_190D56ED0();
      v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

      v46 = sub_190D56F10();
      v48 = v47;

      v78 = Description;
      v79 = MEMORY[0x1E69E7CC0];
      v80 = MEMORY[0x1E69E7CC0];
      v81 = MEMORY[0x1E69E7CC0];
      LOBYTE(v82) = 0;
      v86 = v46;
      v87 = v48;
      v84 = sub_190D55EA0();
      v85 = 0x3FE6666666666666;
      v49 = sub_190BCDAF4();
      v50 = sub_19081E484();
      v51 = sub_190BCDDA4();
      sub_190D558A0();

      v52 = v69;
      v53 = v68;
      (*(v69 + 16))(v70, v20, v68);
      swift_storeEnumTagMultiPayload();
      v78 = &type metadata for ConversationListView;
      v79 = MEMORY[0x1E69E6158];
      v80 = &type metadata for MessagesClarityUINavigationIcon;
      v81 = v49;
      v82 = v50;
      v83 = v51;
      swift_getOpaqueTypeConformance2();
      v54 = v72;
      sub_190D54C50();
      sub_19022FD14(v54, v75, &qword_1EAD5F118);
      swift_storeEnumTagMultiPayload();
      sub_190BCDCC4();
      v78 = &type metadata for ConversationListView;
      v79 = &type metadata for MessagesClarityUINavigationIcon;
      v80 = v49;
      v81 = v51;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      sub_19022EEA4(v54, &qword_1EAD5F118);
      return (*(v52 + 8))(v20, v53);
    }

    goto LABEL_11;
  }

  if (v21 == 1)
  {
    v68 = v17;
    v69 = v18;
    v78 = v23;
    v79 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F138);
    sub_190D55FD0();
    v24 = v86;
    swift_getKeyPath();
    v78 = v24;
    sub_190BCF64C(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList);
    sub_190D51C20();

    Kind = v24[2].Kind;
    sub_190D52690();

    result = CKFrameworkBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_190D56ED0();
      v29 = sub_190D56ED0();
      v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

      v31 = sub_190D56F10();
      v33 = v32;

      v78 = Kind;
      v79 = MEMORY[0x1E69E7CC0];
      v80 = MEMORY[0x1E69E7CC0];
      v81 = MEMORY[0x1E69E7CC0];
      LOBYTE(v82) = 0;
      v86 = v31;
      v87 = v33;
      v84 = sub_190D55EA0();
      v85 = 0x3FE6666666666666;
      v34 = sub_190BCDAF4();
      v35 = sub_19081E484();
      v36 = sub_190BCDDA4();
      sub_190D558A0();

      v37 = v69;
      v38 = v68;
      (*(v69 + 16))(v70, v15, v68);
      swift_storeEnumTagMultiPayload();
      v78 = &type metadata for ConversationListView;
      v79 = MEMORY[0x1E69E6158];
      v80 = &type metadata for MessagesClarityUINavigationIcon;
      v81 = v34;
      v82 = v35;
      v83 = v36;
      swift_getOpaqueTypeConformance2();
      v39 = v72;
      sub_190D54C50();
      sub_19022FD14(v39, v75, &qword_1EAD5F118);
      swift_storeEnumTagMultiPayload();
      sub_190BCDCC4();
      v78 = &type metadata for ConversationListView;
      v79 = &type metadata for MessagesClarityUINavigationIcon;
      v80 = v34;
      v81 = v36;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      sub_19022EEA4(v39, &qword_1EAD5F118);
      return (*(v37 + 8))(v15, v38);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v78 = v23;
  v79 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F138);
  sub_190D55FD0();
  v55 = v86;
  swift_getKeyPath();
  v78 = v55;
  sub_190BCF64C(&qword_1EAD60BF0, type metadata accessor for ClarityUIConversationList);
  sub_190D51C20();

  v56 = v55[2].Description;
  sub_190D52690();

  v78 = v56;
  v79 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  LOBYTE(v82) = 0;
  if (qword_1EAD51EC8 != -1)
  {
    swift_once();
  }

  sub_190D52690();
  sub_190D52690();
  v57 = CKFrameworkBundle();
  v58 = sub_190D555D0();
  v60 = v59;
  v62 = v61;
  v86 = sub_190D55EA0();
  v87 = 0x3FE6666666666666;
  v63 = sub_190BCDAF4();
  v66 = sub_190BCDDA4();
  sub_190D55890();
  sub_19081E474(v58, v60, v62 & 1);

  v64 = v69;
  v65 = v77;
  (*(v69 + 16))(v75, v8, v77);
  swift_storeEnumTagMultiPayload();
  sub_190BCDCC4();
  v78 = &type metadata for ConversationListView;
  v79 = &type metadata for MessagesClarityUINavigationIcon;
  v80 = v63;
  v81 = v66;
  swift_getOpaqueTypeConformance2();
  sub_190D54C50();
  return (*(v64 + 8))(v8, v65);
}

uint64_t sub_190BCD860(uint64_t a1)
{
  v16 = sub_190D54800();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5DF20);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_190D54E70();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClarityUIRootView(0);
  sub_19022FD14(a1 + *(v12 + 20), v7, &unk_1EAD5DF20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_190D54E60();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_190BCDAF4()
{
  result = qword_1EAD5F0E8;
  if (!qword_1EAD5F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F0E8);
  }

  return result;
}

unint64_t sub_190BCDB48()
{
  result = qword_1EAD5F0F0;
  if (!qword_1EAD5F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F0F0);
  }

  return result;
}

unint64_t sub_190BCDB9C()
{
  result = qword_1EAD5F100;
  if (!qword_1EAD5F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F100);
  }

  return result;
}

unint64_t sub_190BCDBF0()
{
  result = qword_1EAD5F108;
  if (!qword_1EAD5F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F0E0);
    sub_190BCDCC4();
    sub_190BCDAF4();
    sub_190BCDDA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F108);
  }

  return result;
}

unint64_t sub_190BCDCC4()
{
  result = qword_1EAD5F110;
  if (!qword_1EAD5F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F118);
    sub_190BCDAF4();
    sub_19081E484();
    sub_190BCDDA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F110);
  }

  return result;
}

unint64_t sub_190BCDDA4()
{
  result = qword_1EAD5F120;
  if (!qword_1EAD5F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F120);
  }

  return result;
}

double sub_190BCDDF8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2, v4);
  v7 = sub_190D55F10();
  (*(v3 + 8))(v6, v2);
  v8 = sub_190D55DC0();
  KeyPath = swift_getKeyPath();
  sub_190D53D30();
  sub_190D53D30();
  sub_190D56500();
  sub_190D53C60();
  v16 = 1;
  *&v15[8] = v17;
  *&v15[24] = v18;
  *&v15[40] = v19;
  sub_190D53D30();
  v11 = v10 * 0.5;
  sub_190D53D30();
  result = v12 * 0.5;
  v14 = *&v15[18];
  *(a1 + 34) = *&v15[2];
  *a1 = v7;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 50) = v14;
  *(a1 + 66) = *&v15[34];
  *(a1 + 80) = *&v15[48];
  *(a1 + 88) = v11;
  *(a1 + 96) = v12 * 0.5;
  return result;
}

uint64_t sub_190BCDFD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_190D54030();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1F0) + 56)) = 256;
  v5 = sub_190D56500();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1F8) + 36));
  *v9 = sub_190BCFC6C;
  v9[1] = v8;
  v9[2] = v5;
  v9[3] = v7;

  return sub_190D50920();
}

uint64_t sub_190BCE0B0()
{
  result = sub_190D549E0();
  qword_1EAD5F088 = result;
  unk_1EAD5F090 = v1;
  byte_1EAD5F098 = v2 & 1;
  qword_1EAD5F0A0 = v3;
  return result;
}

uint64_t sub_190BCE0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F198);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v73 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v73 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1A8);
  v31 = v30 - 8;
  MEMORY[0x1EEE9AC00](v30);
  v87 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v73 - v34;
  v88 = *a1;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1B0);
  type metadata accessor for ConversationRow(0);
  sub_190233640(&qword_1EAD5F1B8, &qword_1EAD5F1B0);
  sub_190BCF64C(&qword_1EAD5F1C0, type metadata accessor for ConversationRow);
  sub_190BCFBB0();
  sub_190D56290();
  v36 = sub_190D55DA0();
  KeyPath = swift_getKeyPath();
  v88 = v36;
  v38 = sub_190D53C70();
  v39 = *(v31 + 44);
  v85 = v35;
  v40 = &v35[v39];
  *v40 = KeyPath;
  v40[1] = v38;
  v41 = *(a1 + 8);
  v42 = *(v41 + 16);
  if (v42)
  {
    LOBYTE(v88) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    sub_190BCDB9C();
    sub_190D53F60();
    v43 = (v41 + 48);
    v44 = v42 + 1;
    v45 = v79;
    v46 = v77;
    do
    {
      if (!--v44)
      {
        break;
      }

      v47 = *v43;
      v43 += 10;
    }

    while (v47 < 1);
    sub_190233640(&qword_1EAD5F1D0, &qword_1EAD5F198);
    v49 = v78;
    sub_190D55B60();
    (*(v46 + 8))(v9, v49);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v49 = v78;
    v45 = v79;
    v46 = v77;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1D8);
  (*(*(v50 - 8) + 56))(v27, v48, 1, v50);
  sub_190283E48(v27, v86);
  if ((*(a1 + 32) & 1) != 0 || *(*(a1 + 16) + 16))
  {
    LOBYTE(v88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    sub_190BCDB9C();
    v51 = v75;
    sub_190D53F60();
    sub_190233640(&qword_1EAD5F1D0, &qword_1EAD5F198);
    sub_190D55B60();
    (*(v46 + 8))(v51, v49);
    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1D8);
  v54 = 1;
  (*(*(v53 - 8) + 56))(v22, v52, 1, v53);
  sub_190283E48(v22, v45);
  v55 = *(a1 + 24);
  v56 = *(v55 + 16);
  if (v56)
  {
    LOBYTE(v88) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    sub_190BCDB9C();
    v57 = v74;
    sub_190D53F60();
    v58 = (v55 + 48);
    v59 = v56 + 1;
    v60 = v76;
    do
    {
      if (!--v59)
      {
        break;
      }

      v61 = *v58;
      v58 += 10;
    }

    while (v61 < 1);
    sub_190233640(&qword_1EAD5F1D0, &qword_1EAD5F198);
    sub_190D55B60();
    (*(v46 + 8))(v57, v49);
    v54 = 0;
  }

  else
  {
    v60 = v76;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1D8);
  (*(*(v62 - 8) + 56))(v60, v54, 1, v62);
  v63 = v80;
  sub_190283E48(v60, v80);
  v64 = v87;
  sub_19022FD14(v85, v87, &qword_1EAD5F1A8);
  v65 = v86;
  v66 = v81;
  sub_19022FD14(v86, v81, &qword_1EAD5F1A0);
  v67 = v82;
  sub_19022FD14(v45, v82, &qword_1EAD5F1A0);
  v68 = v83;
  sub_19022FD14(v63, v83, &qword_1EAD5F1A0);
  v69 = v64;
  v70 = v84;
  sub_19022FD14(v69, v84, &qword_1EAD5F1A8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1E0);
  sub_19022FD14(v66, v70 + v71[12], &qword_1EAD5F1A0);
  sub_19022FD14(v67, v70 + v71[16], &qword_1EAD5F1A0);
  sub_19022FD14(v68, v70 + v71[20], &qword_1EAD5F1A0);
  sub_19022EEA4(v63, &qword_1EAD5F1A0);
  sub_19022EEA4(v45, &qword_1EAD5F1A0);
  sub_19022EEA4(v65, &qword_1EAD5F1A0);
  sub_190BCFC04(v85);
  sub_19022EEA4(v68, &qword_1EAD5F1A0);
  sub_19022EEA4(v67, &qword_1EAD5F1A0);
  sub_19022EEA4(v66, &qword_1EAD5F1A0);
  return sub_190BCFC04(v87);
}

uint64_t sub_190BCEB1C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v17 = a1[2];
  v18[0] = v3;
  *(v18 + 9) = *(a1 + 57);
  v4 = *(v18 + 9);
  v5 = a1[1];
  v16[0] = *a1;
  v6 = v16[0];
  v16[1] = v5;
  *(a2 + 32) = v17;
  *(a2 + 48) = v3;
  *(a2 + 57) = v4;
  *a2 = v6;
  *(a2 + 16) = v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1909B8804(v16, &v12);
  sub_190D55FC0();
  v7 = v13;
  *(a2 + 80) = v12;
  *(a2 + 96) = v7;
  v8 = type metadata accessor for ConversationRow(0);
  v9 = [objc_opt_self() defaultCenter];
  sub_190D579C0();

  v10 = *(v8 + 28);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1E8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_190BCEC30@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51EC8 != -1)
  {
    swift_once();
  }

  sub_190D52690();
  sub_190D52690();
  v2 = CKFrameworkBundle();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_190BCED18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

id sub_190BCED80()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D55F40();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190BCEF24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F188);
  sub_190233640(&qword_1EAD5F190, &qword_1EAD5F188);
  return sub_190D554D0();
}

uint64_t sub_190BCEFDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for ConversationRow(0);
  v4 = v3 - 8;
  v29 = *(v3 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F250);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = v2[1];
  v11 = v2[3];
  v35 = v2[2];
  v36[0] = v11;
  *(v36 + 9) = *(v2 + 57);
  v12 = v2[1];
  v34[0] = *v2;
  v34[1] = v12;
  v13 = v2[3];
  v32[7] = v35;
  v33[0] = v13;
  *(v33 + 9) = *(v2 + 57);
  v27 = v12;
  v32[5] = v34[0];
  v32[6] = v10;
  v31 = v2;
  sub_1909B8804(v34, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F258);
  sub_190233640(&qword_1EAD5F260, &qword_1EAD5F258);
  sub_190BCDB48();
  sub_190D53F60();
  sub_190233640(&qword_1EAD5F268, &qword_1EAD5F250);
  sub_190D55B60();
  (*(v7 + 8))(v9, v6);
  v27 = *(v4 + 32);
  v14 = v28;
  sub_190BCFF84(v2, v28, type metadata accessor for ConversationRow);
  v15 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v16 = swift_allocObject();
  sub_190BCFFEC(v14, v16 + v15, type metadata accessor for ConversationRow);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F270);
  v18 = *(v17 + 52);
  v19 = sub_190D579B0();
  v20 = v26;
  (*(*(v19 - 8) + 16))(v26 + v18, v2 + v27, v19);
  v21 = (v20 + *(v17 + 56));
  *v21 = sub_190BD0054;
  v21[1] = v16;
  sub_190BCFF84(v2, v14, type metadata accessor for ConversationRow);
  v22 = swift_allocObject();
  sub_190BCFFEC(v14, v22 + v15, type metadata accessor for ConversationRow);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F278);
  v24 = (v20 + *(result + 36));
  *v24 = sub_190BD0248;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  return result;
}

uint64_t sub_190BCF3B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C68);
  sub_190874120();
  sub_190B0ED0C();
  return sub_190D55F20();
}

uint64_t sub_190BCF45C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  sub_190D55FD0();
  sub_19081E484();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_190BCF51C()
{
  sub_19091D9F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  return sub_190D55FE0();
}

uint64_t sub_190BCF59C()
{
  sub_19091D9F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  return sub_190D55FE0();
}

uint64_t sub_190BCF64C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_39()
{
  v1 = (type metadata accessor for ClarityUIRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5DF20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D54E70();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190BCF7B8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClarityUIRootView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_190BCCBE4(a1, v6, a2);
}

id sub_190BCF838@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClarityUIRootView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_190BCCC68(a1, v6, a2);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_190BCF8EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190BCF934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_190BCF988()
{
  result = qword_1EAD5F160;
  if (!qword_1EAD5F160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F130);
    sub_190BCFA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F160);
  }

  return result;
}

unint64_t sub_190BCFA14()
{
  result = qword_1EAD5F168;
  if (!qword_1EAD5F168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F128);
    sub_190233640(&qword_1EAD5F170, &qword_1EAD5F178);
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F168);
  }

  return result;
}

unint64_t sub_190BCFB18()
{
  result = qword_1EAD5F180;
  if (!qword_1EAD5F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F180);
  }

  return result;
}

unint64_t sub_190BCFBB0()
{
  result = qword_1EAD5F1C8;
  if (!qword_1EAD5F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F1C8);
  }

  return result;
}

uint64_t sub_190BCFC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190BCFC78()
{
  v0 = sub_190D585F0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_190BCFCEC()
{
  sub_190BCFDC8();
  if (v0 <= 0x3F)
  {
    sub_190D579B0();
    if (v1 <= 0x3F)
    {
      sub_190BCFE18(319, &qword_1EAD5F218, MEMORY[0x1E697C580], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190BCFDC8()
{
  if (!qword_1EAD5A888)
  {
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5A888);
    }
  }
}

void sub_190BCFE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_190BCFE7C()
{
  result = qword_1EAD5F230;
  if (!qword_1EAD5F230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F1F8);
    sub_190233640(&qword_1EAD5F238, &qword_1EAD5F1F0);
    sub_190233640(&qword_1EAD5F240, &qword_1EAD5F248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F230);
  }

  return result;
}

uint64_t sub_190BCFF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190BCFFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190BD0054()
{
  type metadata accessor for ConversationRow(0);

  return sub_190BCF51C();
}

uint64_t objectdestroy_68Tm()
{
  v1 = (type metadata accessor for ConversationRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_19091E6E0(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72));

  v6 = v1[8];
  v7 = sub_190D579B0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D54AF0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190BD0274(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_190BD02F8@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *&v11[9] = *(v2 + 57);
  v10[2] = v4;
  *v11 = v5;
  v10[1] = v3;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 57) = *(v2 + 57);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return sub_1909B8804(v10, &v9);
}

unint64_t sub_190BD035C()
{
  result = qword_1EAD5F280;
  if (!qword_1EAD5F280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F278);
    sub_190233640(&qword_1EAD5F288, &qword_1EAD5F270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F280);
  }

  return result;
}

uint64_t _s10StatusViewVMa()
{
  result = qword_1EAD5F298;
  if (!qword_1EAD5F298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190BD0488()
{
  sub_190BD0584(319, &qword_1EAD5F2A8, _s9ViewModelCMa_5, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    _s10StyleGuideVMa_0();
    if (v1 <= 0x3F)
    {
      sub_190BD0584(319, &qword_1EAD58BB8, MEMORY[0x1E69957E0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190BD0584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_190BD0604@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  sub_190D56320();
  sub_190A4AE90();

  sub_19081E484();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  _s10StatusViewVMa();
  sub_190D50920();
  v7 = sub_190D55580();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_19081E474(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_190BD07C0@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  result = sub_190D56320();
  *a1 = v3;
  return result;
}

unint64_t sub_190BD0818()
{
  result = qword_1EAD5F2B0;
  if (!qword_1EAD5F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F2B0);
  }

  return result;
}

unint64_t sub_190BD086C()
{
  result = qword_1EAD5F2B8;
  if (!qword_1EAD5F2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5F2C0);
    sub_190BD0818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F2B8);
  }

  return result;
}

void sub_190BD08F8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_190BD0960(v5);
}

void sub_190BD0960(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 superview];
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
      sub_1902188FC(0, &qword_1EAD46530);
      v6 = v5;
      v7 = sub_190D57D90();

      if (v7)
      {
        [v2 removeFromSuperview];
      }
    }
  }

  v8 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9)
  {
    v10 = v9;
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView) addSubview_];
    sub_190BD231C();
  }
}

void *sub_190BD0A8C()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190BD0AD8(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    v14 = a1;
    v12 = a1;
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = a1;
  v6 = v4;
  v7 = [v6 superview];
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
    sub_1902188FC(0, &qword_1EAD46530);
    v10 = v9;
    v11 = sub_190D57D90();

    if (v11)
    {
      [v6 removeFromSuperview];
    }
  }

  v12 = *(v1 + v3);
  if (v12)
  {
LABEL_6:
    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView) addSubview_];
    sub_190BD231C();
  }

LABEL_7:
}

void (*sub_190BD0C38(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_190BD0CD4;
}

void sub_190BD0CD4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      v15 = v3;
      v16 = v7;
      v17 = [v16 superview];
      if (v17)
      {
        v18 = v17;
        v19 = *(v2[4] + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
        sub_1902188FC(0, &qword_1EAD46530);
        v20 = v19;
        v21 = sub_190D57D90();

        if (v21)
        {
          [v16 removeFromSuperview];
        }
      }

      v23 = v2[4];
      v22 = v2[5];

      v24 = *(v23 + v22);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v31 = v3;
      v24 = v3;
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    v25 = v2[4];
    v26 = v24;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v25 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView) addSubview_];
    sub_190BD231C();

LABEL_13:
    goto LABEL_18;
  }

  if (v7)
  {
    v8 = v3;
    v9 = v7;
    v10 = [v9 superview];
    if (v10)
    {
      v11 = v10;
      v12 = *(v2[4] + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
      sub_1902188FC(0, &qword_1EAD46530);
      v13 = v12;
      v14 = sub_190D57D90();

      if (v14)
      {
        [v9 removeFromSuperview];
      }
    }
  }

  else
  {
    v27 = v3;
  }

  v28 = v2[4];
  v29 = *(v28 + v2[5]);
  if (v29)
  {
    v30 = v29;
    [v30 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v28 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView) addSubview_];
    sub_190BD231C();
  }

  v3 = *v4;
LABEL_18:

  free(v2);
}

void sub_190BD0F24()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter);
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v2 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF333TapbackPickerCellSelectionPlatter_selectionColor) = v4;
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView);
  v6 = *(v5 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_selectionColor);
  *(v5 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_selectionColor) = v4;
  if (v4 != v6)
  {
    sub_190BD5210();
  }

  v7 = *(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView);
  v8 = *(v1 + v3);
  v9 = v7[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_selectionColor];
  v7[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_selectionColor] = v8;
  if (v8 != v9)
  {
    v10 = sub_190D540A0();
    *v11 = v8;
    v10(v20, 0);
    [v7 setHidden_];
  }

  v12 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    type metadata accessor for TapbackClassicView();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v1 + v3);
      v16 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
      v17 = v14;
      swift_beginAccess();
      *(v17 + v16) = v15;
      v18 = OBJC_IVAR___CKTapbackClassicView_isSelected;
      swift_beginAccess();
      LOBYTE(v18) = *(v17 + v18);
      v19 = v13;
      sub_190C89C20(v18);
    }
  }
}

uint64_t sub_190BD10DC()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190BD1120(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_190BD0F24();
}

void (*sub_190BD1174(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190BD11D8;
}

void sub_190BD11D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_190BD0F24();
  }
}

void *sub_190BD120C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result tapbackPickerCellCenterPointDidChange_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190BD129C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackPickerCellCenterPointDidChange_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*sub_190BD1324(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackPickerCellDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190BD13BC;
}

void sub_190BD13BC(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong tapbackPickerCellCenterPointDidChange_];
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id sub_190BD1468()
{
  result = [objc_opt_self() sharedBehaviors];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result usesTapbackRefreshStyling];

  if (v3)
  {
    result = [*(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView) maskView];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [*(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView) maskView];
    if (!result)
    {
      return result;
    }
  }

  v4 = result;
  type metadata accessor for TapbackPickerCellCircleMask();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id sub_190BD1538(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = *&v2[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView];
  Strong = swift_unknownObjectWeakLoadStrong();
  [v3 setReferenceView_];

  return [v2 setNeedsLayout];
}

void sub_190BD15E0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView];
  Strong = swift_unknownObjectWeakLoadStrong();
  [v3 setReferenceView_];

  [v1 setNeedsLayout];
}

void (*sub_190BD167C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientReferenceView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190BD1714;
}

void sub_190BD1714(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 32);
    swift_endAccess();

    v6 = *&v5[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView];
    Strong = swift_unknownObjectWeakLoadStrong();
    [v6 setReferenceView_];

    [v5 setNeedsLayout];
  }

  free(v3);
}

id TapbackPickerCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TapbackPickerCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView] = 0;
  v9 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor] = 1;
  v10 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView;
  type metadata accessor for TapbackPickerMaterialCircleView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView;
  type metadata accessor for TapbackPickerGradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientPadding] = 0x4024000000000000;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale] = 0x3FF0000000000000;
  v12 = &v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform];
  v13 = MEMORY[0x1E695EFD0];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *v12 = *MEMORY[0x1E695EFD0];
  v12[1] = v14;
  v12[2] = *(v13 + 32);
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity] = 0x3FF0000000000000;
  type metadata accessor for TapbackPickerCellBlurContainerView();
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = [objc_allocWithZone(type metadata accessor for TapbackPickerCellSelectionPlatter()) init];
  *&v4[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter] = v15;
  swift_beginAccess();
  v15[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF333TapbackPickerCellSelectionPlatter_selectionColor] = v4[v9];
  v85.receiver = v4;
  v85.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  v16 = objc_msgSendSuper2(&v85, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView;
  v18 = *&v16[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView];
  v19 = v16;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter;
  [*&v19[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = &v19[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView];
  [*&v19[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = &v19[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView];
  [*&v19[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView] setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = [v19 contentView];
  [v23 addSubview_];

  [*&v16[v17] addSubview_];
  v83 = objc_opt_self();
  result = [v83 sharedBehaviors];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = [result usesTapbackRefreshStyling];

  v80 = v22;
  v81 = v21;
  if (v26)
  {
    v27 = v22;
  }

  else
  {
    v27 = v21;
  }

  [*&v16[v17] addSubview_];
  v28 = v19;
  [v28 setIsAccessibilityElement_];
  [v28 setAccessibilityTraits_];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

  v82 = v29;
  [v28 addInteraction_];
  v30 = sub_190CA7A78();
  v31 = sub_190CA8000();
  v84 = objc_opt_self();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_190DF98B0;
  v33 = [*&v16[v17] leadingAnchor];
  v34 = [v28 contentView];
  v35 = [v34 &selRef_keyTransparencyDetailsStatusCellDidRequestVerification_ + 1];

  v36 = [v33 constraintEqualToAnchor_];
  *(v32 + 32) = v36;
  v37 = [*&v16[v17] trailingAnchor];
  v38 = [v28 &selRef_continuousPathUnderway];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v32 + 40) = v40;
  v41 = [*&v16[v17] topAnchor];
  v42 = [v28 &selRef_continuousPathUnderway];
  v43 = [v42 &selRef_tipKitLayoutSectionForEnvironment_];

  v44 = [v41 constraintEqualToAnchor_];
  *(v32 + 48) = v44;
  v45 = [*&v16[v17] bottomAnchor];
  v46 = [v28 &selRef_continuousPathUnderway];

  v47 = [v46 &selRef_canPeel + 5];
  v48 = [v45 constraintEqualToAnchor_];

  *(v32 + 56) = v48;
  v49 = [*&v19[v20] leadingAnchor];
  v50 = [*&v16[v17] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:v31];

  *(v32 + 64) = v51;
  v52 = [*&v16[v17] trailingAnchor];
  v53 = [*&v19[v20] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v31];

  *(v32 + 72) = v54;
  v55 = [*&v19[v20] topAnchor];
  v56 = [*&v16[v17] topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:v30];

  *(v32 + 80) = v57;
  v58 = [*&v16[v17] bottomAnchor];
  v59 = [*&v19[v20] bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:v30];

  *(v32 + 88) = v60;
  sub_1902188FC(0, &qword_1EAD45040);
  v61 = sub_190D57160();

  [v84 activateConstraints_];

  result = [v83 sharedBehaviors];
  if (!result)
  {
    goto LABEL_11;
  }

  v62 = result;
  v63 = [result usesTapbackRefreshStyling];

  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_190DD86A0;
  if (v63)
  {
    v65 = v80;
  }

  else
  {
    v65 = v81;
  }

  v66 = [*v65 leadingAnchor];
  v67 = [*&v16[v17] leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-10.0];

  *(v64 + 32) = v68;
  v69 = [*v65 trailingAnchor];
  v70 = [*&v16[v17] trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:10.0];

  *(v64 + 40) = v71;
  v72 = [*v65 topAnchor];
  v73 = [*&v16[v17] topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-10.0];

  *(v64 + 48) = v74;
  v75 = [*v65 bottomAnchor];
  v76 = [*&v16[v17] bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:10.0];

  *(v64 + 56) = v77;
  v78 = sub_190D57160();

  [v84 activateConstraints_];

  return v28;
}

void sub_190BD231C()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    [v3 setClipsToBounds_];
    type metadata accessor for TapbackClassicView();
    if (swift_dynamicCastClass())
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.707106781;
    }

    v5 = [v3 centerXAnchor];
    v6 = *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter);
    v7 = [v6 centerXAnchor];
    v8 = [v5 constraintEqualToAnchor_];

    v9 = [v3 centerYAnchor];
    v10 = [v6 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    v12 = [v3 widthAnchor];
    v13 = [v6 widthAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 multiplier:v4];

    v15 = [v3 heightAnchor];
    v16 = [v6 heightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 multiplier:v4];

    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_190DD86A0;
    *(v19 + 32) = v8;
    *(v19 + 40) = v11;
    *(v19 + 48) = v14;
    *(v19 + 56) = v17;
    sub_1902188FC(0, &qword_1EAD45040);
    v20 = v8;
    v21 = v11;
    v22 = v14;
    v23 = v17;
    v24 = sub_190D57160();

    [v18 activateConstraints_];
  }
}

void sub_190BD26BC()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  if ([v0 isSelected])
  {
    v1 = *&v0[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
    [v1 frame];
    Width = CGRectGetWidth(v14);
    [v1 frame];
    Height = CGRectGetHeight(v15);
    v4 = [v0 contentView];
    [v4 center];
    v6 = v5;

    v7 = [v0 contentView];
    [v7 center];
    v9 = v8;

    v10 = sub_190BD1468();
    if (v10)
    {
      if (Height >= Width)
      {
        v11 = Width;
      }

      else
      {
        v11 = Height;
      }

      v12 = v10;
      [v10 setFrame_];
    }
  }
}

void sub_190BD2860()
{
  v1 = v0;
  v2 = sub_190D531D0();
  v21.receiver = v1;
  v21.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  objc_msgSendSuper2(&v21, sel__bridgedUpdateConfigurationUsingState_, v2);

  if (sub_190D531C0())
  {
    v3 = 0.9;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;
  if (vabdd_f64(v3, v5) > 0.001)
  {
    sub_190BD3124();
  }

  v6 = *&v1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionPlatter];
  *(v6 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF333TapbackPickerCellSelectionPlatter_isSelected) = sub_190D531A0() & 1;
  v7 = *&v1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView];
  v8 = sub_190D531A0();
  v9 = *(v7 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_isSelected);
  *(v7 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_isSelected) = v8 & 1;
  if ((v8 & 1) != v9)
  {
    sub_190BD5210();
  }

  v10 = *&v1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView];
  v11 = sub_190D531A0();
  v12 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_isSelected;
  v13 = v10[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_isSelected];
  v10[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_isSelected] = v11 & 1;
  if ((v11 & 1) != v13)
  {
    v14 = v10[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_selectionColor];
    v15 = sub_190D540A0();
    *v16 = v14;
    v15(v20, 0);
    [v10 setHidden_];
  }

  v17 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v18 = *&v1[v17];
  if (v18)
  {
    v19 = v18;
    [v19 setIsSelected_];
  }
}

void sub_190BD2B4C(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (vabdd_f64(v2, v5) > 0.001)
  {
    sub_190BD3124();
  }
}

double sub_190BD2BBC()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190BD2C00(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (vabdd_f64(a1, v4) > 0.001)
  {
    sub_190BD3124();
  }
}

void (*sub_190BD2C6C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190BD2D00;
}

void sub_190BD2D00(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (vabdd_f64(v2, v5) > 0.001)
  {
    sub_190BD3124();
  }

  free(v1);
}

__n128 sub_190BD2D64@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

id sub_190BD2DC0(CGFloat *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = (*a2 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform);
  swift_beginAccess();
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v10 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v11 = *(v8 + v10);
  v15.a = v2;
  v15.b = v3;
  v15.c = v4;
  v15.d = v5;
  v15.tx = v6;
  v15.ty = v7;
  CGAffineTransformScale(&v14, &v15, v11, v11);
  v12 = *(v8 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
  v15 = v14;
  return [v12 setTransform_];
}

__n128 sub_190BD2EA0@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_190BD2EF8(double *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = (v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform);
  swift_beginAccess();
  v11 = *(a1 + 1);
  v12 = *a1;
  v6 = *(a1 + 2);
  *v5 = *a1;
  v5[1] = v11;
  v5[2] = v6;
  v7 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *&v14.a = v12;
  *&v14.c = v11;
  v14.tx = v3;
  v14.ty = v4;
  CGAffineTransformScale(&v13, &v14, v8, v8);
  v9 = *(v1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
  v14 = v13;
  return [v9 setTransform_];
}

void (*sub_190BD2FD4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_190BD305C;
}

void sub_190BD305C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 72);
    v5 = (v4 + *(v3 + 80));
    v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = v5[1];
    v9 = v5[2];
    *v3 = *v5;
    *(v3 + 16) = v8;
    *(v3 + 32) = v9;
    CGAffineTransformScale(&v13, v3, v7, v7);
    v10 = *&v13.c;
    v11 = *(v4 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
    v12 = *&v13.tx;
    *v3 = *&v13.a;
    *(v3 + 16) = v10;
    *(v3 + 32) = v12;
    [v11 setTransform_];
  }

  free(v3);
}

void sub_190BD3124()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 sendMenuSelectionScaleAnimator];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v8[4] = sub_190BD662C;
      v8[5] = v5;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_190840E6C;
      v8[3] = &block_descriptor_101;
      v6 = _Block_copy(v8);
      v7 = v0;

      [v4 addAnimations_];
      _Block_release(v6);
      [v4 startAnimation];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_190BD3264(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = (a1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform);
  swift_beginAccess();
  v5 = v4[1];
  *&v9.a = *v4;
  *&v9.c = v5;
  *&v9.tx = v4[2];
  CGAffineTransformScale(&v8, &v9, v3, v3);
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
  v9 = v8;
  return [v6 setTransform_];
}

char *sub_190BD3324()
{
  result = sub_190BD3344();
  qword_1EAD5F2D0 = result;
  return result;
}

char *sub_190BD3344()
{
  v0 = [objc_allocWithZone(type metadata accessor for TapbackPickerCollectionViewCell()) initWithFrame_];
  v1 = [objc_allocWithZone(type metadata accessor for TapbackEmojiView()) init];
  v2 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
  if (!v3)
  {
    v14 = v1;
    v11 = v1;
    v12 = v1;
    if (!v1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = v1;
  v5 = v3;
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    v8 = *&v0[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView];
    sub_1902188FC(0, &qword_1EAD46530);
    v9 = v8;
    v10 = sub_190D57D90();

    if (v10)
    {
      [v5 removeFromSuperview];
    }
  }

  v11 = *&v0[v2];
  v12 = v1;
  if (v11)
  {
LABEL_6:
    v12 = v11;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v0[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView] addSubview_];
    sub_190BD231C();
  }

LABEL_7:

  return v0;
}

id static TapbackPickerCollectionViewCell.prototypeCell.getter()
{
  if (qword_1EAD51ED0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EAD5F2D0;

  return v0;
}

void static TapbackPickerCollectionViewCell.prototypeCell.setter(uint64_t a1)
{
  if (qword_1EAD51ED0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAD5F2D0;
  qword_1EAD5F2D0 = a1;
}

uint64_t (*static TapbackPickerCollectionViewCell.prototypeCell.modify())()
{
  if (qword_1EAD51ED0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_190BD367C@<X0>(void *a1@<X8>)
{
  if (qword_1EAD51ED0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAD5F2D0;
  *a1 = qword_1EAD5F2D0;

  return v2;
}

void sub_190BD3708(id *a1)
{
  v1 = qword_1EAD51ED0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EAD5F2D0;
  qword_1EAD5F2D0 = v2;
}

double sub_190BD38A4()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190BD38E8(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v4 = *(v1 + v3);
    v5 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    if (v4 <= *(v1 + v5))
    {
      v4 = *(v1 + v5);
    }
  }

  sub_190BD4AF4(v4);
}

void (*sub_190BD3984(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190BD3A0C;
}

void sub_190BD3A0C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = 0.0;
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      v5 = v3[3];
      v4 = *(v5 + v3[4]);
      v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
      swift_beginAccess();
      if (v4 <= *(v5 + v6))
      {
        v4 = *(v5 + v6);
      }
    }

    sub_190BD4AF4(v4);
  }

  free(v3);
}

double sub_190BD3AB4()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190BD3AF8(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v5 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
    swift_beginAccess();
    if (*(v1 + v5) > *(v1 + v3))
    {
      v4 = *(v1 + v5);
    }

    else
    {
      v4 = *(v1 + v3);
    }
  }

  sub_190BD4AF4(v4);
}

void (*sub_190BD3B9C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190BD3C24;
}

void sub_190BD3C24(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = 0.0;
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      v6 = v3[3];
      v5 = v3[4];
      v7 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
      swift_beginAccess();
      if (*(v6 + v7) > *(v6 + v5))
      {
        v4 = *(v6 + v7);
      }

      else
      {
        v4 = *(v6 + v5);
      }
    }

    sub_190BD4AF4(v4);
  }

  free(v3);
}

void sub_190BD3CCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
  v2 = *&v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_activeAnimationCount];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_activeAnimationCount] = v4;
    v5 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter;
    if ((v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
    {
      v6 = [v1 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_190DD1D90;
      v8 = sub_190BD4828();
      *(v7 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
      *(v7 + 32) = v8;
      v9 = sub_190D57160();

      [v6 setFilters_];

      v1[v5] = 1;
    }
  }
}

void sub_190BD3DE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView);
  v2 = *&v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_activeAnimationCount];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_activeAnimationCount] = v4;
    v5 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter;
    if (v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter] == 1 && v4 == 0 && sub_190BD4A10() == 0.0)
    {
      v7 = [v1 layer];
      v8 = sub_190D57160();
      [v7 setFilters_];

      v1[v5] = 0;
    }
  }
}

double sub_190BD3EB0()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190BD3EF4(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  result = *(v1 + v6);
  if (result)
  {
    if (v5 >= a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = v5;
    }

    return [result setAlpha_];
  }

  return result;
}

void (*sub_190BD3F9C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_190BD4024;
}

void sub_190BD4024(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + v3[7]);
    v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
    swift_beginAccess();
    v9 = *(v4 + v8);
    if (v9)
    {
      if (v7 >= v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = v7;
      }

      [v9 setAlpha_];
    }
  }

  free(v3);
}

double sub_190BD40D8()
{
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190BD411C(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  result = *(v1 + v6);
  if (result)
  {
    if (v5 <= a1)
    {
      v8 = v5;
    }

    else
    {
      v8 = a1;
    }

    return [result setAlpha_];
  }

  return result;
}

void (*sub_190BD41C4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_190BD424C;
}

void sub_190BD424C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[6];
    v4 = v3[7];
    v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = *(v5 + v4);
    v9 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
    swift_beginAccess();
    v10 = *(v5 + v9);
    if (v10)
    {
      if (v8 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v8;
      }

      [v10 setAlpha_];
    }
  }

  free(v3);
}

void sub_190BD4300()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for TapbackPickerCollectionViewCell();
  objc_msgSendSuper2(&v17, sel_prepareForReuse);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackPickerCellCenterPointDidChange_];
    swift_unknownObjectRelease();
  }

  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity;
  swift_beginAccess();
  *&v1[v3] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7)
  {
    [v7 setAlpha_];
  }

  *&v1[v4] = 0x3FF0000000000000;
  v8 = *&v1[v6];
  if (v8)
  {
    v9 = *&v1[v3];
    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    [v8 setAlpha_];
  }

  v10 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius;
  swift_beginAccess();
  *&v1[v10] = 0;
  v11 = 0.0;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v13 = 0.0;
  if (!IsReduceTransparencyEnabled)
  {
    v14 = *&v1[v10];
    v15 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v13 = *&v1[v15];
    if (v14 > v13)
    {
      v13 = v14;
    }
  }

  sub_190BD4AF4(v13);
  v16 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  *&v1[v16] = 0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (*&v1[v10] > *&v1[v16])
    {
      v11 = *&v1[v10];
    }

    else
    {
      v11 = *&v1[v16];
    }
  }

  sub_190BD4AF4(v11);
}

UIPointerRegion_optional __swiftcall TapbackPickerCollectionViewCell.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v4 = defaultRegion.super.isa;
  isa = defaultRegion.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v5;
  return result;
}

id sub_190BD4828()
{
  v1 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView____lazy_storage___blurFilter;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView____lazy_storage___blurFilter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView____lazy_storage___blurFilter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v5 = sub_190D574E0();
    [v4 setValue:v5 forKey:*MEMORY[0x1E6979BA8]];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_190BD48E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for TapbackPickerCellBlurContainerView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

double sub_190BD4A10()
{
  v1 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter) == 1)
  {
    v2 = sub_190BD4828();
    v3 = [v2 valueForKey_];

    if (v3)
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_19021E7D8(v8);
    }
  }

  return v1;
}

void sub_190BD4AF4(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter;
  if (a1 > 0.0 && (v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
  {
    v4 = [v1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_190DD1D90;
    v6 = sub_190BD4828();
    *(v5 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
    *(v5 + 32) = v6;
    v7 = sub_190D57160();

    [v4 setFilters_];

    v1[v3] = 1;
    v3 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_hasActiveBlurFilter;
  }

  if (v1[v3] == 1)
  {
    v8 = [v1 layer];
    v9 = sub_190D51C70();
    v10 = sub_190D56ED0();
    [v8 setValue:v9 forKeyPath:v10];
  }

  else
  {
    v9 = sub_190BD4828();
    v10 = sub_190D51C70();
    [v9 setValue:v10 forKey:*MEMORY[0x1E6979BA8]];
  }

  if (a1 == 0.0 && v1[v3] == 1 && !*&v1[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF334TapbackPickerCellBlurContainerView_activeAnimationCount] && sub_190BD4A10() == 0.0)
  {
    v11 = [v1 layer];
    v12 = sub_190D57160();
    [v11 setFilters_];

    v1[v3] = 0;
  }
}

char *sub_190BD4E98(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_colorType] = -1;
  *&v4[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_backgroundLuminance] = 1056964608;
  v9 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_materialView;
  v20 = -1;
  v21 = 1056964608;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F4B0));
  *&v4[v9] = sub_190D54090();
  v4[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_isSelected] = 0;
  v4[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_selectionColor] = 1;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TapbackPickerMaterialCircleView();
  v11 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_materialView;
  v13 = *&v11[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_materialView];
  v14 = v11;
  [v13 setAutoresizingMask_];
  type metadata accessor for TapbackPickerCellCircleMask();
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = v14;
  v17 = [v15 init];
  [v16 setMaskView_];

  [v16 addSubview_];
  return v16;
}

void sub_190BD515C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6.receiver = a1;
  v6.super_class = a3(0);
  v3 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v4 = [v3 maskView];
  [v4 setNeedsLayout];

  v5 = [v3 maskView];
  [v5 layoutIfNeeded];
}

void sub_190BD5210()
{
  if (v0[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_isSelected] == 1)
  {
    v1 = [objc_opt_self() sharedBehaviors];
    if (!v1)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v2 = v1;
    v3 = [v1 theme];
    if (!v3)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v14 = v3;
    v4 = [v3 balloonColorsForColorType_];
    if (!v4)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v5 = v4;
    sub_1902188FC(0, &qword_1EAD46520);
    v6 = sub_190D57180();
    v7 = [v0 referenceView];
    if (v7)
    {

      [v0 setColors_];

      [v0 setBackgroundColor_];
LABEL_21:

      return;
    }

    if (v6 >> 62)
    {
      v9 = sub_190D581C0();
      if (v9)
      {
LABEL_12:
        v10 = __OFSUB__(v9, 1);
        v11 = v9 - 1;
        if (v10)
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v11 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v12 = *(v6 + 8 * v11 + 32);
LABEL_17:
            v13 = v12;
LABEL_20:

            [v0 setBackgroundColor_];

            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_28;
        }

        v12 = MEMORY[0x193AF3B90](v11, v6);
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  sub_1902188FC(0, &qword_1EAD46520);
  v8 = sub_190D57160();
  [v0 setColors_];

  [v0 setBackgroundColor_];
}

void sub_190BD55B8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TapbackPickerCircleView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v8);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = Height * 0.5;
  v4 = [v0 layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setAllowsEdgeAntialiasing_];
}

id sub_190BD57F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_190BD5828()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor) = 1;
  v1 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_materialView;
  type metadata accessor for TapbackPickerMaterialCircleView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView;
  type metadata accessor for TapbackPickerGradientView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientPadding) = 0x4024000000000000;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectionStateScale) = 0x3FF0000000000000;
  v3 = (v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_edgeTransform);
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *v3 = *MEMORY[0x1E695EFD0];
  v3[1] = v5;
  v3[2] = *(v4 + 32);
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenBlurFilterRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeBlurFilterRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_sectionHiddenOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_scrollViewEdgeOpacity) = 0x3FF0000000000000;
  sub_190D58510();
  __break(1u);
}

uint64_t _s7ChatKit31TapbackPickerCollectionViewCellC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56A78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_190D53120();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A560);
  v14 = v13[12];
  v15 = v13[16];
  v16 = v13[20];
  *v11 = v12;
  v17 = *MEMORY[0x1E69DBF80];
  v18 = sub_190D53110();
  (*(*(v18 - 8) + 104))(&v11[v14], v17, v18);
  v11[v15] = 0;
  v11[v16] = 1;
  (*(v6 + 104))(v11, *MEMORY[0x1E69DBF78], v5);
  sub_1902188FC(0, &unk_1EAD56A80);
  (*(v6 + 16))(v8, v11, v5);
  v19 = sub_190D530A0();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = sub_190D576F0();
  (*(v6 + 8))(v11, v5);
  return v20;
}

uint64_t dispatch thunk of TapbackPickerCollectionViewCell.edgeTransform.setter(_OWORD *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

void sub_190BD6488()
{
  *(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_colorType) = -1;
  *(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_backgroundLuminance) = 1056964608;
  v1 = OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_materialView;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F4B0));
  *(v0 + v1) = sub_190D54090();
  *(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF331TapbackPickerMaterialCircleView_selectionColor) = 1;
  sub_190D58510();
  __break(1u);
}

id sub_190BD6564()
{
  v0[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_selectionColor] = 1;
  v0[OBJC_IVAR____TtC7ChatKitP33_F9B6E841E8DE6EE361333F7360F8ABF325TapbackPickerGradientView_isSelected] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TapbackPickerGradientView();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for TapbackPickerCellCircleMask();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = v1;
  v4 = [v2 init];
  [v3 setMaskView_];

  return v3;
}

uint64_t sub_190BD6634()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

id sub_190BD66AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F628);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession;
  *&v0[v11] = [objc_allocWithZone(MEMORY[0x1E6987110]) init];
  v12 = OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoOutput;
  *&v0[v12] = [objc_allocWithZone(MEMORY[0x1E69870D8]) init];
  v13 = &v0[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSessionRuntimeErrorSubscription];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoDeviceInput] = 0;
  v14 = &v0[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordCompletionBlock];
  *v14 = 0;
  v14[1] = 0;
  v0[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordingWasCanceled] = 0;
  v15 = OBJC_IVAR____TtC7ChatKit18ClarityCameraModel__currentVideoURL;
  v16 = sub_190D515F0();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_190844DA8(v10, v7);
  sub_190D538D0();
  sub_19022EEA4(v10, &unk_1EAD55F20);
  (*(v2 + 32))(&v0[v15], v4, v1);
  v17 = type metadata accessor for ClarityCameraModel();
  v20.receiver = v0;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_190BD707C();

  return v18;
}

void sub_190BD6958(uint64_t a1, NSObject *a2)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_190D518A0();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession) isRunning])
  {
    v43 = v6;
    v44 = v2;
    v45 = a1;
    v46 = a2;
    *(v2 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordingWasCanceled) = 0;
    v42 = objc_opt_self();
    v17 = [v42 defaultManager];
    v18 = [v17 URLsForDirectory:9 inDomains:1];

    v19 = sub_190D57180();
    sub_190D50450();
    v20 = sub_190D51850();
    v22 = v21;
    (*(v13 + 8))(v16, v12);
    if (*(v19 + 16))
    {
      v23 = v43;
      (*(v43 + 16))(v8, v19 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v5);

      v47[0] = v20;
      v47[1] = v22;
      MEMORY[0x193AF28B0](1987013934, 0xE400000000000000);
      sub_190D51590();

      v24 = *(v23 + 8);
      v24(v8, v5);
      v25 = [v42 defaultManager];
      v26 = sub_190D51570();
      v47[0] = 0;
      v27 = [v25 removeItemAtURL:v26 error:v47];

      if (v27)
      {
        v28 = v47[0];
      }

      else
      {
        v33 = v47[0];
        v34 = sub_190D51420();

        swift_willThrow();
      }

      v35 = v44;
      v36 = *(v44 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoOutput);
      v37 = sub_190D51570();
      [v36 startRecordingToOutputFileURL:v37 recordingDelegate:v35];

      v24(v11, v5);
      v38 = (v35 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordCompletionBlock);
      v39 = *(v35 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordCompletionBlock);
      v40 = v46;
      *v38 = v45;
      v38[1] = v40;
      sub_190D50920();
      sub_19022123C(v39);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1EAD51CB8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v29 = sub_190D53040();
  __swift_project_value_buffer(v29, qword_1EAD9E058);
  v46 = sub_190D53020();
  v30 = sub_190D576A0();
  if (os_log_type_enabled(v46, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_19020E000, v46, v30, "Capture session is not running on record video request", v31, 2u);
    MEMORY[0x193AF7A40](v31, -1, -1);
  }

  v32 = v46;
}

void sub_190BD6E2C()
{
  if ([*(v0 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession) isRunning])
  {
    v1 = *(v0 + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoOutput);

    [v1 stopRecording];
  }

  else
  {
    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9E058);
    oslog = sub_190D53020();
    v3 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19020E000, oslog, v3, "Capture session is not running on stop recording request", v4, 2u);
      MEMORY[0x193AF7A40](v4, -1, -1);
    }
  }
}

void sub_190BD707C()
{
  v72[5] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v70 = &v68 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B2D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v68 - v3;
  v5 = sub_190D579B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F5E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - v11;
  v13 = [objc_opt_self() defaultCenter];
  sub_190D579C0();

  v14 = [objc_opt_self() mainRunLoop];
  v72[0] = v14;
  v15 = sub_190D58010();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1902188FC(0, &qword_1EAD5B2E0);
  sub_190BD7E3C();
  sub_190BD7E94();
  sub_190D53930();
  v16 = v4;
  v17 = v71;
  sub_19022EEA4(v16, &qword_1EAD5B2D8);

  (*(v6 + 8))(v8, v5);
  sub_190BD7EFC();
  v18 = sub_190D53940();
  (*(v10 + 8))(v12, v9);
  v72[3] = sub_190D538A0();
  v72[4] = MEMORY[0x1E695BF08];
  v72[0] = v18;
  v19 = OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSessionRuntimeErrorSubscription;
  swift_beginAccess();
  sub_190BD7F60(v72, &v17[v19]);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F610);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_190DD9C20;
  v21 = *MEMORY[0x1E6986940];
  v22 = *MEMORY[0x1E6986900];
  v23 = MEMORY[0x1E6986950];
  *(v20 + 32) = *MEMORY[0x1E6986940];
  *(v20 + 40) = v22;
  v24 = *v23;
  *(v20 + 48) = *v23;
  v25 = *MEMORY[0x1E6987608];
  type metadata accessor for DeviceType(0);
  v26 = v21;
  v27 = v22;
  v28 = v24;
  v29 = v25;
  v30 = sub_190D57160();

  v31 = [objc_opt_self() discoverySessionWithDeviceTypes:v30 mediaType:v29 position:2];

  v32 = [v31 devices];
  sub_1902188FC(0, &unk_1EAD5F618);
  v33 = sub_190D57180();

  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x193AF3B90](0, v33);
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      swift_once();
LABEL_19:
      v56 = sub_190D53040();
      __swift_project_value_buffer(v56, qword_1EAD9E058);
      v57 = v32;
      v58 = sub_190D53020();
      v59 = sub_190D576A0();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = v32;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v63;
        *v61 = v63;
        _os_log_impl(&dword_19020E000, v58, v59, "Unable to create videoDeviceInput: %@", v60, 0xCu);
        sub_19022EEA4(v61, &unk_1EAD54610);
        MEMORY[0x193AF7A40](v61, -1, -1);
        MEMORY[0x193AF7A40](v60, -1, -1);
      }

      else
      {
      }

      return;
    }

    v34 = *(v33 + 32);
  }

  v35 = v34;

  v36 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x1E6986970] mediaType:*MEMORY[0x1E69875A0] position:0];
  if (!v36)
  {

LABEL_30:
    return;
  }

  v25 = v36;
  v37 = *&v17[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession];
  [v37 beginConfiguration];
  v38 = objc_allocWithZone(MEMORY[0x1E69870B0]);
  v72[0] = 0;
  v24 = v35;
  v39 = [v38 initWithDevice:v24 error:v72];
  if (!v39)
  {
    v54 = v72[0];
    v32 = sub_190D51420();

    swift_willThrow();
    v45 = v24;
    goto LABEL_18;
  }

  v40 = v39;
  v41 = v72[0];

  if (([v37 canAddInput_] & 1) == 0)
  {

    return;
  }

  v69 = v24;
  v42 = *&v17[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoDeviceInput];
  *&v17[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoDeviceInput] = v40;
  v43 = v40;

  [v37 addInput_];
  v44 = objc_allocWithZone(MEMORY[0x1E69870B0]);
  v72[0] = 0;
  v45 = v25;
  v46 = [v44 initWithDevice:v45 error:v72];
  if (!v46)
  {
    v55 = v72[0];
    v32 = sub_190D51420();

    swift_willThrow();
    v24 = v69;
LABEL_18:

    if (qword_1EAD51CB8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

  v47 = v46;
  v48 = v72[0];

  if ([v37 canAddInput_])
  {
    [v37 addInput_];
    [v37 setSessionPreset_];
    v49 = *&v17[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoOutput];
    if ([v37 canAddOutput_])
    {
      [v37 addOutput_];
    }

    [v37 commitConfiguration];
    v50 = v70;
    sub_190D572B0();
    v51 = sub_190D572E0();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v17;
    v53 = v17;
    sub_190857E08(0, 0, v50, &unk_190DF9AF0, v52);
  }

  else
  {
    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v64 = sub_190D53040();
    __swift_project_value_buffer(v64, qword_1EAD9E058);
    v65 = sub_190D53020();
    v66 = sub_190D576A0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_19020E000, v65, v66, "Unable to add audio device input", v67, 2u);
      MEMORY[0x193AF7A40](v67, -1, -1);
    }
  }
}

uint64_t sub_190BD7AF4()
{
  [*(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession) startRunning];
  v1 = *(v0 + 8);

  return v1();
}

id sub_190BD7B68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityCameraModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClarityCameraModel()
{
  result = qword_1EAD5F5C0;
  if (!qword_1EAD5F5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190BD7CD0()
{
  sub_190BD7D98();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190BD7D98()
{
  if (!qword_1EAD5F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55F20);
    v0 = sub_190D53920();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5F5D0);
    }
  }
}

uint64_t sub_190BD7DFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClarityCameraModel();
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

unint64_t sub_190BD7E3C()
{
  result = qword_1EAD5F5F0;
  if (!qword_1EAD5F5F0)
  {
    sub_190D579B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F5F0);
  }

  return result;
}

unint64_t sub_190BD7E94()
{
  result = qword_1EAD5B2E8;
  if (!qword_1EAD5B2E8)
  {
    sub_1902188FC(255, &qword_1EAD5B2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B2E8);
  }

  return result;
}

unint64_t sub_190BD7EFC()
{
  result = qword_1EAD5F600;
  if (!qword_1EAD5F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5F5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F600);
  }

  return result;
}

uint64_t sub_190BD7F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F608);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BD7FD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

uint64_t sub_190BD804C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_190844DA8(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190844DA8(v9, v6);
  v11 = v10;
  sub_190D53910();
  return sub_19022EEA4(v9, &unk_1EAD55F20);
}

uint64_t sub_190BD8168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190BD7AD4(a1, v4, v5, v6);
}

void sub_190BD821C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  if (!a2)
  {
    v25 = sub_190D515F0();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v11, a1, v25);
    v27 = *(v26 + 56);
    v27(v11, 0, 1, v25);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190844DA8(v11, v8);
    v28 = v3;
    sub_190D53910();
    sub_19022EEA4(v11, &unk_1EAD55F20);
    v21 = *&v28[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordCompletionBlock];
    if (v28[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordingWasCanceled])
    {
      if (!v21)
      {
        return;
      }

      v27(v11, 1, 1, v25);
      sub_190D50920();
      v21(v11, 0);
      v29 = v21;
      goto LABEL_14;
    }

    if (!v21)
    {
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D50920();
    sub_190D53900();

    v23 = v11;
    v24 = 0;
LABEL_13:
    v21(v23, v24);
    v29 = v21;
LABEL_14:
    sub_19022123C(v29);
    sub_19022EEA4(v11, &unk_1EAD55F20);
    return;
  }

  if (qword_1EAD51CB8 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9E058);
  v13 = a2;
  v14 = sub_190D53020();
  v15 = sub_190D576A0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_190D58800();
    v20 = sub_19021D9F8(v18, v19, &v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_19020E000, v14, v15, "fileOutput error %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  v21 = *&v2[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordCompletionBlock];
  if (v21)
  {
    v22 = sub_190D515F0();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    sub_190D50920();
    v23 = v11;
    v24 = a2;
    goto LABEL_13;
  }
}

uint64_t CKConversation.conversationTitleIconImageType.getter()
{
  if ([v0 shouldShowVerifiedCheckmark])
  {
    return 1;
  }

  if (!IMIsEnrolledInContactKeyVerification())
  {
    return 0;
  }

  return sub_190C68D4C();
}

Swift::String __swiftcall CKConversation._navigationBarDisplayTitle()()
{
  if (![v0 hasDisplayName] || (v1 = objc_msgSend(v0, sel_displayName)) == 0)
  {
    v1 = [v0 displayNameForMediaObjects:0 subject:0 shouldListParticipants:0];
  }

  v2 = sub_190D56F10();
  v4 = v3;

  if (sub_190BD8878())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_190DD1D90;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_19081EA10();
    *(v5 + 32) = v2;
    *(v5 + 40) = v4;
    v6 = CKFrameworkBundle();
    if (v6)
    {
      v8 = v6;
      v9 = sub_190D56ED0();
      v10 = sub_190D56ED0();
      v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

      sub_190D56F10();
      v12 = sub_190D56EE0();
      v14 = v13;

      v6 = v12;
      v7 = v14;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = v2;
    v7 = v4;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

BOOL sub_190BD8878()
{
  v1 = [v0 chat];
  result = 0;
  if (!v1 || (v2 = v1, v3 = [v1 isRecovered], v2, (v3 & 1) == 0))
  {
    if ([v0 isReportedAsSpam])
    {
      v4 = [v0 chat];
      if (!v4)
      {
        return 1;
      }

      v5 = v4;
      v6 = [v4 isFiltered];

      if (v6)
      {
        return 1;
      }
    }

    if ([v0 wasDetectedAsSMSSpam] && !objc_msgSend(objc_opt_self(), sel_isSMSSpamFilteringEnabled))
    {
      return 1;
    }
  }

  return result;
}

void sub_190BD8A4C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69A8148]);
  v6 = sub_190D56ED0();
  v7 = [v5 initWithEncodedMessagePartGUID_];

  if (v7)
  {
    v8 = [v7 messageGUID];
    sub_190D56F10();
  }

  else
  {
    sub_190D52690();
  }

  v9 = [v3 conversation];
  v10 = sub_190D56ED0();

  v12 = [v9 ensureMessageWithGUIDIsLoaded_];

  if (v12)
  {
    if (v7)
    {
      [v3 scrollToMessage:v12 atSpecificMessagePartIndex:objc_msgSend(v7 highlight:sel_partNumber) withInlineReplyOverlay:{1, a3 & 1}];
    }

    else
    {
      [v3 scrollToMessage:v12 highlight:1 withInlineReplyOverlay:a3 & 1];
    }

    v11 = v12;
  }

  else
  {
    v11 = v7;
  }
}

id sub_190BD8C0C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F648);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_190D519A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D519C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() _deviceLanguage];
  if (result)
  {
    v13 = result;
    sub_190D56F10();

    sub_190D518B0();
    sub_190D519B0();
    (*(v9 + 8))(v11, v8);
    sub_190D51990();
    (*(v5 + 8))(v7, v4);
    v14 = sub_190D518E0();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v3, 1, v14);
    if (result != 1)
    {
      return (*(v15 + 32))(v17, v3, v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_190BD8E9C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190BD92DC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_190BD8ECC()
{
  result = qword_1EAD5F630;
  if (!qword_1EAD5F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F630);
  }

  return result;
}

unint64_t sub_190BD8F24()
{
  result = qword_1EAD5F638;
  if (!qword_1EAD5F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F638);
  }

  return result;
}

unint64_t sub_190BD8F7C()
{
  result = qword_1EAD5F640;
  if (!qword_1EAD5F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F640);
  }

  return result;
}

uint64_t sub_190BD8FD0()
{
  v0 = sub_190D51F40();
  v20 = *(v0 - 8);
  v21 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_190D51FA0();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51F80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D51F60();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190BD8C0C(v9);
  (*(v7 + 104))(v9, *MEMORY[0x1E69A12B0], v6);
  sub_190D51F50();
  sub_190D51F90();
  sub_190D51F70();
  v14 = v5;
  v15 = v20;
  (*(v3 + 8))(v14, v19);
  (*(v11 + 8))(v13, v10);
  v16 = v21;
  if ((*(v15 + 88))(v2, v21) == *MEMORY[0x1E69A11A0])
  {
    return 2;
  }

  (*(v15 + 8))(v2, v16);
  return 1;
}

unint64_t sub_190BD92DC(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_190BD9300()
{
  result = qword_1EAD5F650;
  if (!qword_1EAD5F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F650);
  }

  return result;
}

double CKIntroductionsButtonsChatItem.loadSizeThatFits(_:textAlignmentInsets:)(void *a1, double a2, double a3)
{
  v7 = [objc_opt_self() sharedBehaviors];
  if (!v7)
  {
    return 0.0;
  }

  v8 = v7;
  if (a1)
  {
    [v7 transcriptBoldTextAlignmentInsets];
    *a1 = v9;
    a1[1] = v10;
    a1[2] = v11;
    a1[3] = v12;
  }

  v13 = [objc_allocWithZone(CKIntroductionsButtonsCell) init];
  [v13 setShouldShowIntroductionsLabel_];
  [v13 sizeThatFits_];
  v15 = v14;

  return v15;
}

void __swiftcall CKIntroductionsButtonsChatItem.init()(CKIntroductionsButtonsChatItem *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_190BD966C(void *a1, SEL *a2)
{
  v5.super_class = CKIntroductionsButtonsChatItem;
  v3 = objc_msgSendSuper2(&v5, *a2, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_190BD96E0(void *a1, double a2, uint64_t a3, void *a4, const char **a5)
{
  v10.receiver = a1;
  v10.super_class = CKIntroductionsButtonsChatItem;
  v6 = *a5;
  v7 = a4;
  v8 = objc_msgSendSuper2(&v10, v6, v7, a2);

  if (v8)
  {
  }

  return v8;
}

unint64_t type metadata accessor for CKIntroductionsButtonsChatItem()
{
  result = qword_1EAD5F658;
  if (!qword_1EAD5F658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5F658);
  }

  return result;
}

void sub_190BD97A4()
{
  v0 = sub_190D51840();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong delegate];
    if (v6)
    {
      v7 = v6;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_190D53900();

      v8 = sub_190D51780();
      (*(v1 + 8))(v3, v0);
      [v7 dateCellRequestedScheduledMessageModification:v5 scheduleType:2 deliveryTime:v8];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_190BD99B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

uint64_t sub_190BD9A2C()
{
  v1 = OBJC_IVAR____TtC7ChatKit39ScheduledSectionDateCellEditPickerModel__scheduledDate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D7E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_190BD9AFC()
{
  sub_190BDAFBC(319, &qword_1EAD5F680, MEMORY[0x1E6969530], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_190BD9BBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ScheduledSectionDateCellEditPickerModel(0);
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t sub_190BD9BFC@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F720);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v31 = v29 - v4;
  v5 = sub_190D51840();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v35 = v29 - v13;
  sub_19097B820(v11);
  v14 = v1 + *(type metadata accessor for ScheduledSectionDateCellEditPicker(0) + 20);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  type metadata accessor for ScheduledSectionDateCellEditPickerModel(0);
  sub_190BDB0D0(&unk_1EAD5F6D0, type metadata accessor for ScheduledSectionDateCellEditPickerModel);
  v30 = v15;
  v29[3] = v16;
  sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v17 = sub_190D517A0();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if (v17)
  {
    v19 = v35;
    sub_19097B820(v35);
  }

  else
  {
    sub_190D53AA0();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v35;
    sub_190D53900();
  }

  sub_19097BB68(v11);
  sub_190BDB0D0(&qword_1EAD5F728, MEMORY[0x1E6969530]);
  result = sub_190D56E20();
  if (result)
  {
    v21 = *(v6 + 32);
    v22 = v31;
    v21(v31, v19, v5);
    v23 = v33;
    v21((v22 + *(v33 + 48)), v11, v5);
    v24 = v32;
    sub_19022FD14(v22, v32, &qword_1EAD5F720);
    v25 = *(v23 + 48);
    v26 = v34;
    v21(v34, v24, v5);
    v18((v24 + v25), v5);
    sub_190BDB118(v22, v24);
    v27 = *(v23 + 48);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890);
    v21(&v26[*(v28 + 36)], v24 + v27, v5);
    return (v18)(v24, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190BDA05C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_190D54D90();
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_190D54CA0();
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F6E0);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_190D549E0();
  v29 = v13;
  v30 = v12;
  v27 = v14;
  v28 = v15;
  type metadata accessor for ScheduledSectionDateCellEditPicker(0);
  type metadata accessor for ScheduledSectionDateCellEditPickerModel(0);
  sub_190BDB0D0(&unk_1EAD5F6D0, type metadata accessor for ScheduledSectionDateCellEditPickerModel);
  sub_190D53AB0();
  swift_getKeyPath();
  sub_190D53FE0();

  sub_190BD9BFC(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F6E8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_190DD1DA0;
  sub_190D54C90();
  sub_190D54C80();
  v40 = v16;
  sub_190BDB0D0(&qword_1EAD5F6F0, MEMORY[0x1E697C660]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F6F8);
  sub_190233640(&qword_1EAD5F700, &qword_1EAD5F6F8);
  sub_190D58170();
  sub_190D539B0();
  v17 = v36;
  sub_190D54D80();
  sub_190233640(&qword_1EAD5F708, &qword_1EAD5F6E0);
  sub_190BDB0D0(&qword_1EAD5F710, MEMORY[0x1E697C6E8]);
  v18 = v39;
  v19 = v33;
  v20 = v37;
  sub_190D55860();
  (*(v38 + 8))(v17, v20);
  (*(v34 + 8))(v11, v19);
  v21 = sub_190D55DA0();
  v22 = sub_190D552B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F718);
  v24 = v18 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
  return result;
}

uint64_t sub_190BDA5BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();
}

uint64_t sub_190BDA638(uint64_t a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);
  sub_190D50920();
  sub_190D53910();
  return (*(v3 + 8))(v9, v2);
}

id sub_190BDA7AC()
{
  v1 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F688);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v54 - v4;
  v6 = sub_190D51840();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v54 - v21;
  result = [v1 date];
  if (!result)
  {
    return result;
  }

  v24 = result;
  sub_190D517E0();

  (*(v7 + 32))(v22, v18, v6);
  v55 = v22;
  v56 = v5;
  v25 = v1;
  v26 = *(v7 + 16);
  v26(v15, v22, v6);
  type metadata accessor for ScheduledSectionDateCellEditPickerModel(0);
  v27 = swift_allocObject();
  v26(v12, v15, v6);
  swift_beginAccess();
  v26(v9, v12, v6);
  v28 = v25;
  v29 = v56;
  sub_190D538D0();
  v30 = *(v7 + 8);
  v30(v12, v6);
  swift_endAccess();
  v30(v15, v6);
  *v29 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  v31 = v29 + *(type metadata accessor for ScheduledSectionDateCellEditPicker(0) + 20);
  *v31 = sub_190BDAE48;
  *(v31 + 1) = v27;
  v31[16] = 0;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27;
  v34 = v58;
  v35 = (v29 + *(v57 + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_190BDAE70;
  v35[3] = v33;
  sub_19022FD14(v29, v34, &qword_1EAD5F688);
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F698));
  v57 = v27;
  swift_retain_n();
  v37 = sub_190D54B60();
  [v37 setModalPresentationStyle_];
  v38 = [objc_opt_self() sharedFeatureFlags];
  v39 = [v38 isEntryViewRefreshEnabled];

  v40 = [v37 popoverPresentationController];
  v41 = v40;
  if (v39)
  {
    if (v40)
    {
      v42 = [v28 editScheduleButton];
      [v41 setSourceView_];
    }

    result = [v37 view];
    if (!result)
    {
      goto LABEL_21;
    }

    v43 = result;
    v44 = [objc_opt_self() clearColor];
    [v43 setBackgroundColor_];

    goto LABEL_11;
  }

  if (v40)
  {
    [v40 setSourceView_];
  }

  [v28 bounds];
  MinY = CGRectGetMinY(v59);
  v46 = [v37 popoverPresentationController];
  if (v46)
  {
    v44 = v46;
    [v28 bounds];
    [v44 setSourceRect_];
LABEL_11:
  }

  result = [v37 view];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v47 = result;
  [result systemLayoutSizeFittingSize_];
  v49 = v48;
  v51 = v50;

  [v37 setPreferredContentSize_];
  v52 = [v37 popoverPresentationController];

  if (v52)
  {
    [v52 setDelegate_];
  }

  v53 = [v28 delegate];
  if (v53)
  {
    [v53 dateCell:v28 requestsPresentEditDateViewController:v37];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_190BDAE78(v29);
  return (v30)(v55, v6);
}

uint64_t sub_190BDAE78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190BDAF08()
{
  sub_190BDAFBC(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_190BDB020();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190BDAFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_190BDB020()
{
  if (!qword_1EAD5F6C8)
  {
    type metadata accessor for ScheduledSectionDateCellEditPickerModel(255);
    sub_190BDB0D0(&unk_1EAD5F6D0, type metadata accessor for ScheduledSectionDateCellEditPickerModel);
    v0 = sub_190D53AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5F6C8);
    }
  }
}

uint64_t sub_190BDB0D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190BDB118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190BDB188()
{
  result = qword_1EAD5F730;
  if (!qword_1EAD5F730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F6E0);
    sub_190D54D90();
    sub_190233640(&qword_1EAD5F708, &qword_1EAD5F6E0);
    sub_190BDB0D0(&qword_1EAD5F710, MEMORY[0x1E697C6E8]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F730);
  }

  return result;
}

uint64_t sub_190BDB310@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v82 = a3;
  v81 = sub_190D52280();
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_190D522D0();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v75 - v7;
  v8 = sub_190D51840();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v75 - v14;
  v94 = sub_190D52260();
  v83 = *(v94 - 8);
  v16 = MEMORY[0x1EEE9AC00](v94);
  v86 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v18)
  {
    v19 = 0;
    v99 = a1 & 0xFFFFFFFFFFFFFF8;
    v100 = a1 & 0xC000000000000001;
    v96 = (v9 + 8);
    v89 = "gestionCorpusGenerator";
    v85 = (v83 + 48);
    v84 = (v83 + 32);
    v98 = (v83 + 56);
    v91 = MEMORY[0x1E69E7CC0];
    v88 = 0xD000000000000011;
    v9 = v94;
    v90 = a1;
    v93 = v18;
    while (1)
    {
      if (v100)
      {
        v20 = MEMORY[0x193AF3B90](v19, a1, v16);
      }

      else
      {
        if (v19 >= *(v99 + 16))
        {
          goto LABEL_57;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v18 = sub_190D581C0();
        goto LABEL_3;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
        goto LABEL_20;
      }

      v24 = v23;
      v25 = [v23 message];
      if (!v25)
      {
        goto LABEL_20;
      }

      v26 = v25;
      v27 = [v25 time];
      if (!v27)
      {
        goto LABEL_19;
      }

      v28 = v27;
      sub_190D517E0();

      v29 = v92;
      sub_190D51830();
      sub_190D51760();
      v31 = v30;
      v32 = v8;
      v95 = *v96;
      v95(v29, v8);
      v33 = [objc_opt_self() standardUserDefaults];
      v34 = sub_190D56ED0();
      v35 = [v33 objectForKey_];

      if (v35)
      {
        sub_190D58140();
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
      }

      v104[0] = v102;
      v104[1] = v103;
      a1 = v90;
      v8 = v32;
      if (*(&v103 + 1))
      {
        v36 = swift_dynamicCast();
        v18 = v93;
        if (v36)
        {
          if (v31 >= v101 * 60.0 * 60.0)
          {
            goto LABEL_18;
          }

          goto LABEL_26;
        }
      }

      else
      {
        sub_19022EEA4(v104, &unk_1EAD551C0);
        v18 = v93;
      }

      if (v31 >= 1209600.0)
      {
LABEL_18:
        v95(v97, v8);
        v9 = v94;
LABEL_19:

LABEL_20:
        (*v98)(v15, 1, 1, v9);
        goto LABEL_21;
      }

LABEL_26:
      sub_190BDC038(v24, v87, v15);

      v95(v97, v8);
      v9 = v94;
      if ((*v85)(v15, 1, v94) != 1)
      {
        v37 = *v84;
        (*v84)(v86, v15, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_190836E88(0, *(v91 + 2) + 1, 1, v91);
        }

        v39 = *(v91 + 2);
        v38 = *(v91 + 3);
        if (v39 >= v38 >> 1)
        {
          v91 = sub_190836E88(v38 > 1, v39 + 1, 1, v91);
        }

        v40 = v91;
        *(v91 + 2) = v39 + 1;
        v9 = v94;
        v37(&v40[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v39], v86, v94);
        v18 = v93;
        goto LABEL_22;
      }

LABEL_21:
      sub_19022EEA4(v15, &qword_1EAD5F750);
LABEL_22:
      ++v19;
      if (v22 == v18)
      {
        goto LABEL_34;
      }
    }
  }

  v91 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v41 = v91;
  sub_190D52690();
  v42 = sub_190BCBD24();
  v46 = sub_190BDCA84(v42, v41);
  if ((v45 & 1) == 0)
  {
    goto LABEL_35;
  }

  v49 = v45;
  v50 = v44;
  v51 = v43;
  sub_190D58780();
  swift_unknownObjectRetain_n();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v52 = MEMORY[0x1E69E7CC0];
  }

  v53 = *(v52 + 16);

  if (__OFSUB__(v49 >> 1, v50))
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v53 != (v49 >> 1) - v50)
  {
LABEL_60:
    swift_unknownObjectRelease();
    v45 = v49;
    v44 = v50;
    v43 = v51;
LABEL_35:
    sub_190C22F44(v46, v43, v44, v45);
    v48 = v47;
    goto LABEL_42;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v48)
  {
    goto LABEL_43;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_42:
  swift_unknownObjectRelease();
LABEL_43:
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v54 = sub_190D53040();
  __swift_project_value_buffer(v54, qword_1EAD9D730);
  swift_retain_n();
  sub_190D52690();
  sub_190D52690();
  v55 = sub_190D53020();
  v56 = sub_190D57690();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v104[0] = v58;
    *v57 = 136315906;
    *(v57 + 4) = sub_19021D9F8(0xD000000000000038, 0x8000000190E78E40, v104);
    *(v57 + 12) = 2048;
    if (v75)
    {
      v59 = sub_190D581C0();
    }

    else
    {
      v59 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v57 + 14) = v59;

    *(v57 + 22) = 2048;
    v60 = *(v41 + 2);

    *(v57 + 24) = v60;

    *(v57 + 32) = 2048;
    v61 = *(v48 + 16);

    *(v57 + 34) = v61;

    _os_log_impl(&dword_19020E000, v55, v56, "%s chatItems.count, %ld, textMessages.count, %ld, latestTextMessages.count, %ld", v57, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x193AF7A40](v58, -1, -1);
    MEMORY[0x193AF7A40](v57, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (*(v48 + 16))
  {
    sub_190BDCB30(v48);
    v62 = v77;
    sub_190D522B0();
    v63 = v78;
    v64 = v80;
    (*(v78 + 16))(v76, v62, v80);
    *&v104[0] = MEMORY[0x1E69E7CC0];
    sub_190BDCCD0(&qword_1EAD5F758, MEMORY[0x1E69D9EE8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F760);
    sub_190BA3EB8(&qword_1EAD5F768, &qword_1EAD5F760);
    sub_190D58170();
    v65 = v82;
    sub_190D52230();
    (*(v63 + 8))(v62, v64);
    v66 = *MEMORY[0x1E69DA040];
    v67 = sub_190D52360();
    v68 = *(v67 - 8);
    (*(v68 + 104))(v65, v66, v67);
    return (*(v68 + 56))(v65, 0, 1, v67);
  }

  else
  {

    v70 = sub_190D53020();
    v71 = sub_190D576A0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v104[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_19021D9F8(0xD000000000000038, 0x8000000190E78E40, v104);
      _os_log_impl(&dword_19020E000, v70, v71, "%s No chat items in the age limit for suggestions.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x193AF7A40](v73, -1, -1);
      MEMORY[0x193AF7A40](v72, -1, -1);
    }

    v74 = sub_190D52360();
    return (*(*(v74 - 8) + 56))(v82, 1, 1, v74);
  }
}

id sub_190BDC038@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_190D52200();
  MEMORY[0x1EEE9AC00](v6);
  v66 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  v16 = sub_190D51840();
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = v61 - v19;
  v73 = sub_190D52280();
  v63 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v75 = v61 - v22;
  v71 = sub_190D522D0();
  v62 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  v74 = v61 - v26;
  result = [a1 IMChatItem];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v28 = result;
  v29 = [result guid];

  if (!v29)
  {
    v42 = sub_190D52260();
    v43 = *(*(v42 - 8) + 56);
    v44 = v42;
    v45 = a3;
LABEL_10:

    return v43(v45, 1, 1, v44);
  }

  v61[7] = v6;
  v68 = a3;
  sub_190D56F10();

  result = [a1 sender];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = [result normalizedID];

  if (!v31)
  {

    v46 = sub_190D52260();
    v43 = *(*(v46 - 8) + 56);
    v44 = v46;
    v45 = v68;
    goto LABEL_10;
  }

  v61[6] = sub_190D56F10();
  v33 = v32;

  v34 = [a1 transcriptText];
  if (v34)
  {
    v35 = v34;
    v61[5] = v33;
    v36 = [v34 string];

    v37 = sub_190D56F10();
    v61[3] = v38;
    v61[4] = v37;

    v39 = [a2 recipientStrings];
    v61[2] = sub_190D57180();

    v40 = [a2 uniqueIdentifier];
    v61[1] = sub_190D56F10();
    v61[0] = v41;

    sub_190D522B0();
    if ([a1 isFromMe])
    {
      sub_190D52270();
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
      sub_190BDCCD0(&qword_1EAD5F758, MEMORY[0x1E69D9EE8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F760);
      sub_190BA3EB8(&qword_1EAD5F768, &qword_1EAD5F760);
      sub_190D58170();
    }

    v48 = [a1 message];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 time];

      if (v50)
      {
        sub_190D517E0();

        v51 = 0;
      }

      else
      {
        v51 = 1;
      }

      v53 = v72;
      v54 = v67;
      (*(v67 + 56))(v12, v51, 1, v16);
      v55 = v12;
      v52 = v54;
      sub_19088090C(v55, v15);
      if ((*(v54 + 48))(v15, 1, v16) != 1)
      {
        (*(v54 + 32))(v53, v15, v16);
LABEL_26:
        v56 = v62;
        (*(v62 + 16))(v69, v74, v71);
        v57 = v63;
        (*(v63 + 16))(v70, v75, v73);
        (*(v52 + 16))(v64, v53, v16);
        v58 = sub_190D515F0();
        (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
        v76 = MEMORY[0x1E69E7CC0];
        sub_190BDCCD0(&qword_1EAD5F770, MEMORY[0x1E69D9EC8]);
        v67 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F778);
        sub_190BA3EB8(&qword_1EAD5F780, &qword_1EAD5F778);
        sub_190D58170();
        v59 = v68;
        sub_190D52240();
        (*(v52 + 8))(v72, v67);
        (*(v57 + 8))(v75, v73);
        (*(v56 + 8))(v74, v71);
        v60 = sub_190D52260();
        return (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      }
    }

    else
    {
      v52 = v67;
      (*(v67 + 56))(v15, 1, 1, v16);
      v53 = v72;
    }

    sub_190D51830();
    if ((*(v52 + 48))(v15, 1, v16) != 1)
    {
      sub_19022EEA4(v15, &unk_1EAD5E5D0);
    }

    goto LABEL_26;
  }

  v47 = sub_190D52260();
  (*(*(v47 - 8) + 56))(v68, 1, 1, v47);
}

uint64_t sub_190BDCA84(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_190D52260();
    return a2;
  }

  return result;
}

uint64_t sub_190BDCB30(uint64_t a1)
{
  v2 = sub_190D522D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D588D0();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(sub_190D52260() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      sub_190D52250();
      sub_190D522C0();
      (*(v3 + 8))(v5, v2);
      sub_190D56FC0();

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v11 = sub_190D588B0();
  sub_190A780F8();
  return sub_190D58130();
}

uint64_t sub_190BDCCD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190BDCD18()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton);
  [v1 addTarget:v0 action:sel_didToggleLineCountChange_ forControlEvents:0x2000];
  sub_190BDD428();
  sub_190BDD1AC();
  [v1 setHidden_];

  sub_190BDCD90();
}

void sub_190BDCD90()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView];
  v2 = [v1 trailingAnchor];
  v3 = [v0 trailingAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:-2.0];

  v5 = *&v0[OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer];
  *&v0[OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer] = v4;

  v6 = [v1 trailingAnchor];
  v7 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor_];

  v10 = *&v0[OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToExpansionButton];
  *&v0[OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToExpansionButton] = v9;

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_190DFA000;
  v13 = [v1 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v1 leadingAnchor];
  v20 = [v0 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-5.0];

  *(v12 + 48) = v21;
  v22 = [v7 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 56) = v24;
  v25 = [v7 bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v12 + 64) = v27;
  v28 = [v7 widthAnchor];
  v29 = [v7 heightAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v12 + 72) = v30;
  sub_1902188FC(0, &qword_1EAD45040);
  v31 = sub_190D57160();

  [v11 activateConstraints_];
}

id sub_190BDD1AC()
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

  return [v0 addSubview_];
}

uint64_t sub_190BDD428()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_190D57F40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D57FB0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57FA0();
  v13 = [objc_opt_self() linkColor];
  sub_190D57F00();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC550], v5);
  sub_190D57E00();
  v14 = sub_190D56ED0();
  v15 = [objc_opt_self() systemImageNamed_];

  sub_190D57F60();
  v16 = *&v1[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton];
  LODWORD(v17) = 1144750080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];
  (*(v10 + 16))(v4, v12, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  sub_190D57FE0();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  return (*(v10 + 8))(v12, v9);
}

void sub_190BDD720()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CKVisionTranscriptionView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = sub_190BDD90C();
  [*&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionButton] setHidden_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD55F0;
  if (v1)
  {
    v4 = &OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToExpansionButton;
  }

  v5 = *&v0[*v4];
  *(v3 + 32) = v5;
  if (v1)
  {
    v6 = &OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToExpansionButton;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer;
  }

  sub_1902188FC(0, &qword_1EAD45040);
  v7 = v5;
  v8 = sub_190D57160();

  [v2 deactivateConstraints_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD55F0;
  v10 = *&v0[*v6];
  *(v9 + 32) = v10;
  v11 = v10;
  v12 = sub_190D57160();

  [v2 activateConstraints_];
}

id sub_190BDD90C()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView];
  v2 = &selRef_applicationProxyForIdentifier_;
  result = [v1 attributedText];
  if (result)
  {
    v4 = result;
    v5 = [result length];

    if (v5)
    {
      result = [v1 font];
      v6 = result;
      if (result)
      {
        goto LABEL_7;
      }

      if (qword_1EAD45C28 != -1)
      {
        goto LABEL_18;
      }

      while (1)
      {
        if (!qword_1EAD9D5F0)
        {
          goto LABEL_21;
        }

        v6 = qword_1EAD9D5F0;
LABEL_7:
        [v0 frame];
        v8 = v7;
        result = [v1 *(v2 + 1248)];
        if (!result)
        {
          goto LABEL_20;
        }

        v9 = result;
        v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

        v10 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
        [v10 setLineBreakMode_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_190DD1DA0;
        v12 = *MEMORY[0x1E69DB688];
        *(inited + 32) = *MEMORY[0x1E69DB688];
        v13 = sub_1902188FC(0, &qword_1EAD5F798);
        *(inited + 40) = v10;
        v14 = *MEMORY[0x1E69DB648];
        *(inited + 64) = v13;
        *(inited + 72) = v14;
        *(inited + 104) = sub_1902188FC(0, &qword_1EAD46540);
        *(inited + 80) = v6;
        v15 = v12;
        v16 = v10;
        v17 = v14;
        v18 = v6;
        sub_190821998(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A50);
        swift_arrayDestroy();
        type metadata accessor for Key(0);
        sub_19082B370();
        v19 = sub_190D56D60();

        [v1 setAttributes:v19 range:{0, objc_msgSend(v1, sel_length)}];

        v2 = 0x7FEFFFFFFFFFFFFFLL;
        [v1 boundingRectWithSize:1 options:0 context:{v8, 1.79769313e308}];
        v21 = v20;
        [v18 lineHeight];
        v23 = v22;

        v24 = v21 / v23;
        if (COERCE__INT64(fabs(v21 / v23)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v24 <= -9.22337204e18)
        {
          goto LABEL_16;
        }

        if (v24 < 9.22337204e18)
        {
          v25 = 2;
          if (v0[OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_expansionState])
          {
            v25 = 6;
          }

          return (v25 < v24);
        }

LABEL_17:
        __break(1u);
LABEL_18:
        result = swift_once();
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    return 0;
  }

  else
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

id sub_190BDDD48(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToExpansionButton;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v4 = OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CKVisionTranscriptionView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_190BDDE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer);
}

id sub_190BDDE60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKVisionTranscriptionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FooterButtonAction.__allocating_init(actionType:actionHandler:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  sub_190BDE144(a1);
  v4 = sub_190D57DC0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v5 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  *(v4 + v5) = a1;
  return v4;
}

uint64_t sub_190BDDFD0(unint64_t a1)
{
  v2 = sub_190D57E10();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57F50();
  sub_190D57E60();
  v6 = objc_opt_self();
  v7 = [v6 quaternarySystemFillColor];
  sub_190D57EF0();
  if (a1 >= 6)
  {
    v10[1] = a1;
    result = sub_190D58790();
    __break(1u);
  }

  else
  {
    v8 = [v6 *off_1E72FA020[a1]];
    sub_190D57F00();
    (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v2);
    return sub_190D57E20();
  }

  return result;
}

uint64_t sub_190BDE144(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = CKFrameworkBundle();
      if (v3)
      {
        v2 = v3;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (a1 == 1)
    {
      v4 = CKFrameworkBundle();
      if (v4)
      {
        v2 = v4;
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ((a1 - 2) < 3)
    {
      v1 = CKFrameworkBundle();
      if (v1)
      {
        v2 = v1;
LABEL_14:
        v6 = sub_190D56ED0();
        v7 = sub_190D56ED0();
        v8 = [v2 localizedStringForKey:v6 value:0 table:v7];

        v9 = sub_190D56F10();
        return v9;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (a1 == 5)
    {
      v5 = CKFrameworkBundle();
      if (v5)
      {
        v2 = v5;
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  result = sub_190D58790();
  __break(1u);
  return result;
}

unint64_t sub_190BDE31C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_190BDE688(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_190BDE350()
{
  v1 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190BDE394(uint64_t a1)
{
  v3 = OBJC_IVAR___CKFooterButtonAction_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FooterButtonAction.init(actionType:actionHandler:)(uint64_t a1)
{
  swift_getObjectType();
  sub_190BDE144(a1);
  v2 = sub_190D57DC0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v3 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  *(v2 + v3) = a1;
  return v2;
}

id FooterButtonAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FooterButtonAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190BDE688(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_190BDE6C0()
{
  result = qword_1EAD5F7A8;
  if (!qword_1EAD5F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F7A8);
  }

  return result;
}

id sub_190BDE7D8()
{
  v0 = objc_allocWithZone(type metadata accessor for ClarityCameraModel());

  return [v0 init];
}

uint64_t sub_190BDE810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F810);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F818);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  *v16 = sub_190D548D0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F820);
  sub_190BDEAD8(a1, &v16[*(v17 + 44)]);
  v18 = sub_190D552B0();
  v19 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F828) + 36)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_190D55D20();
  v21 = sub_190D552B0();
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F830) + 36)];
  *v22 = v20;
  v22[8] = v21;
  *&v16[*(v11 + 44)] = 256;
  *v9 = sub_190D54AC0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F838);
  sub_190BE08A0(a1);
  v23 = sub_190D55D20();
  v24 = sub_190D552B0();
  v25 = &v9[*(v4 + 44)];
  *v25 = v23;
  v25[8] = v24;
  sub_190284B34(v16, v13);
  sub_19022FD14(v9, v6, &qword_1EAD5F810);
  v26 = v30;
  sub_190284B34(v13, v30);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F840);
  sub_19022FD14(v6, v26 + *(v27 + 48), &qword_1EAD5F810);
  sub_19022EEA4(v9, &qword_1EAD5F810);
  sub_190284BA4(v16);
  sub_19022EEA4(v6, &qword_1EAD5F810);
  return sub_190284BA4(v13);
}

uint64_t sub_190BDEAD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F900);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v35 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F908);
  v35 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - v7;
  v8 = type metadata accessor for ClarityCameraView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_190BE2414(a1, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_190BE2478(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_190BE2414(a1, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_190BE2478(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F910);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F918);
  v16 = sub_190D55250();
  v17 = sub_190233640(&qword_1EAD5F920, &qword_1EAD5F918);
  v18 = sub_190BE2840(&qword_1EAD5F928, MEMORY[0x1E697CCC0]);
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = v18;
  swift_getOpaqueTypeConformance2();
  v36 = v4;
  sub_190D56030();
  v19 = a1 + *(v9 + 40);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v45) = v20;
  v46 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F858);
  sub_190D55FD0();
  if (v44)
  {
    if (v44 == 1)
    {
      v22 = sub_190D55D40();
    }

    else
    {
      v22 = sub_190D55D50();
    }
  }

  else
  {
    v22 = sub_190D55DB0();
  }

  v24 = v41;
  v23 = v42;
  v26 = v39;
  v25 = v40;
  v28 = v37;
  v27 = v38;
  v29 = v35;
  v45 = v22;
  v46 = 0;
  sub_190233640(&qword_1EAD5F930, &qword_1EAD5F900);
  sub_190BE25C0();
  v30 = v36;
  sub_190D55730();

  (*(v27 + 8))(v30, v25);
  v31 = *(v29 + 16);
  v31(v26, v28, v24);
  *v23 = sub_190BE2514;
  v23[1] = v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F940);
  v31(v23 + *(v32 + 48), v26, v24);
  v33 = *(v29 + 8);
  sub_190D50920();
  v33(v28, v24);
  v33(v26, v24);
}

uint64_t sub_190BDEFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v18 = type metadata accessor for ClarityCameraView();
  v8 = (a1 + *(v18 + 32));
  v9 = *v8;
  v10 = *(v8 + 1);
  v20 = v9;
  v21 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F858);
  sub_190D55FE0();
  type metadata accessor for ClarityCameraModel();
  sub_190BE2840(&qword_1EAD5F7D8, type metadata accessor for ClarityCameraModel);
  v11 = sub_190D53AA0();
  v11[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_videoRecordingWasCanceled] = 1;

  v12 = sub_190D53AA0();
  v13 = *&v12[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession];

  [v13 stopRunning];
  v14 = sub_190D53AA0();
  sub_190BD6E2C();

  v15 = sub_190D515F0();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_19022FD14(v7, v4, &unk_1EAD55F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  sub_190D56200();
  v16 = sub_19022EEA4(v7, &unk_1EAD55F20);
  return (*(a1 + 24))(v16);
}

void sub_190BDF270(uint64_t a1)
{
  v2 = sub_190D56770();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_190D567A0();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567F0();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ClarityCameraView();
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = a1 + *(v15 + 40);
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(aBlock) = *v16;
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F858);
  sub_190D55FD0();
  if (v47)
  {
    if (v47 == 1)
    {
      LOBYTE(aBlock) = v17;
      v42 = v18;
      v47 = 2;
      sub_190D55FE0();
      type metadata accessor for ClarityCameraModel();
      sub_190BE2840(&qword_1EAD5F7D8, type metadata accessor for ClarityCameraModel);
      v19 = sub_190D53AA0();
      sub_190BD6E2C();
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD46670);
      v31 = sub_190D57870();
      sub_190D567B0();
      sub_190D56820();
      v23 = *(v40 + 8);
      v40 += 8;
      v32 = v23;
      v23(v9, v39);
      sub_190BE2414(a1, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v25 = swift_allocObject();
      sub_190BE2478(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
      v45 = sub_190BE27DC;
      v46 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_190840E6C;
      v44 = &block_descriptor_102;
      v26 = _Block_copy(&aBlock);

      sub_190D56790();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_190BE2840(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
      sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
      v27 = v34;
      v28 = v37;
      sub_190D58170();
      v29 = v31;
      MEMORY[0x193AF30E0](v12, v5, v27, v26);
      _Block_release(v26);

      (*(v36 + 8))(v27, v28);
      (*(v33 + 8))(v5, v35);
      v32(v12, v39);
    }
  }

  else
  {
    LOBYTE(aBlock) = v17;
    v42 = v18;
    v47 = 1;
    sub_190D55FE0();
    type metadata accessor for ClarityCameraModel();
    sub_190BE2840(&qword_1EAD5F7D8, type metadata accessor for ClarityCameraModel);
    v20 = sub_190D53AA0();
    sub_190BE2414(a1, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v22 = swift_allocObject();
    sub_190BE2478(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    sub_190BD6958(sub_190BE2A34, v22);
  }
}

uint64_t sub_190BDF8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_190D56770();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_190D567A0();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClarityCameraView();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v9;
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_190D567F0();
  v52 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v44 - v12;
  v13 = sub_190D515F0();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  sub_19022FD14(a1, &v44 - v24, &unk_1EAD55F20);
  sub_19022FD14(v25, v22, &unk_1EAD55F20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  sub_190D56200();
  sub_19022EEA4(v25, &unk_1EAD55F20);
  MEMORY[0x193AF1A80](v26);
  v27 = v59;
  v28 = v13;
  if ((*(v59 + 48))(v19, 1, v13) == 1)
  {
    return sub_19022EEA4(v19, &unk_1EAD55F20);
  }

  v30 = *(v27 + 32);
  v31 = v60;
  v30(v60, v19, v28);
  sub_1902188FC(0, &qword_1EAD46670);
  v45 = sub_190D57870();
  v32 = v46;
  sub_190D567B0();
  sub_190D56820();
  v52 = *(v52 + 8);
  (v52)(v32, v62);
  v33 = v51;
  sub_190BE2414(a3, v51);
  v34 = v48;
  (*(v27 + 16))(v48, v31, v28);
  v35 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v36 = (v50 + *(v27 + 80) + v35) & ~*(v27 + 80);
  v37 = swift_allocObject();
  sub_190BE2478(v33, v37 + v35);
  v30((v37 + v36), v34, v28);
  aBlock[4] = sub_190BE2AB4;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_34_1;
  v38 = _Block_copy(aBlock);

  v39 = v53;
  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190BE2840(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  v40 = v55;
  v41 = v58;
  sub_190D58170();
  v42 = v61;
  v43 = v45;
  MEMORY[0x193AF30E0](v61, v39, v40, v38);
  _Block_release(v38);

  (*(v57 + 8))(v40, v41);
  (*(v54 + 8))(v39, v56);
  (v52)(v42, v62);
  return (*(v27 + 8))(v60, v28);
}

uint64_t sub_190BDFFEC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v1 = sub_190D51570();
  [v0 initWithURL_];

  type metadata accessor for ClarityCameraView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8B0);
  return sub_190D55FE0();
}

uint64_t sub_190BE0090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v12[0] = sub_190D55250();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F918);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v12[8] = a1;
  v12[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F950);
  sub_190BE2624();
  sub_190BE26CC();
  sub_190D55F20();
  sub_190D55240();
  sub_190233640(&qword_1EAD5F920, &qword_1EAD5F918);
  sub_190BE2840(&qword_1EAD5F928, MEMORY[0x1E697CCC0]);
  v10 = v12[0];
  sub_190D55700();
  (*(v3 + 8))(v5, v10);
  return (*(v7 + 8))(v9, v6);
}

double sub_190BE0320@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ClarityCameraView() + 32);
  LOBYTE(v13) = *v3;
  *(&v13 + 1) = *(v3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F858);
  sub_190D55FD0();
  if (v12 && v12 != 1)
  {
    sub_190D549E0();
    v10 = CKFrameworkBundle();
    sub_190D555D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F968);
    sub_190BE2774(&qword_1EAD5F960, &qword_1EAD5F968);
    sub_190D54C50();
  }

  else
  {
    sub_190D549E0();
    v4 = CKFrameworkBundle();
    v5 = sub_190D555D0();
    v7 = v6;
    v9 = v8 & 1;
    sub_19081BE48(v5, v6, v8 & 1);
    sub_190D52690();
    sub_190D54C50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F968);
    sub_190BE2774(&qword_1EAD5F960, &qword_1EAD5F968);
    sub_190D54C50();
    sub_19081E474(v5, v7, v9);
  }

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 33) = v16;
  return result;
}

uint64_t sub_190BE0674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ClarityCameraView() + 32);
  LOBYTE(v6) = *v3;
  v7 = *(v3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F858);
  sub_190D55FD0();
  if (v5 && v5 != 1)
  {
    sub_190D55EA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F980);
    sub_190BE2774(&qword_1EAD5F978, &qword_1EAD5F980);
    result = sub_190D54C50();
  }

  else
  {
    sub_190D55EA0();
    sub_190D50920();
    sub_190D54C50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F980);
    sub_190BE2774(&qword_1EAD5F978, &qword_1EAD5F980);
    sub_190D54C50();
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_190BE08A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F848);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F850);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v29 - v6);
  v8 = type metadata accessor for ClarityCameraView();
  v9 = a1 + *(v8 + 32);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v31[0]) = v10;
  *(&v31[0] + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F858);
  sub_190D55FD0();
  if (v30 == 2 && (v31[0] = *(a1 + *(v8 + 36)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8B0), sub_190D55FD0(), v30))
  {

    *v7 = sub_190D56500();
    v7[1] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8B8);
    sub_190BE0C98(a1, (v7 + *(v13 + 44)));
    v14 = sub_190D54240();
    v15 = sub_190D552B0();
    v16 = v7 + *(v5 + 36);
    *v16 = v14;
    v16[8] = v15;
    sub_19022FD14(v7, v4, &qword_1EAD5F850);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F860);
    sub_190BE21C4();
    sub_190BE227C();
    sub_190D54C50();
    return sub_19022EEA4(v7, &qword_1EAD5F850);
  }

  else
  {
    type metadata accessor for ClarityCameraModel();
    sub_190BE2840(&qword_1EAD5F7D8, type metadata accessor for ClarityCameraModel);
    v18 = sub_190D53AA0();
    v19 = *&v18[OBJC_IVAR____TtC7ChatKit18ClarityCameraModel_captureSession];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E68);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_190DDD0E0;
    sub_190D55D90();
    *(v20 + 32) = sub_190D56390();
    *(v20 + 40) = v21;
    sub_190D55DA0();
    *(v20 + 48) = sub_190D56390();
    *(v20 + 56) = v22;
    sub_190D55D90();
    *(v20 + 64) = sub_190D56390();
    *(v20 + 72) = v23;
    sub_190D55DA0();
    *(v20 + 80) = sub_190D56390();
    *(v20 + 88) = v24;
    sub_190D563A0();
    sub_190D56680();
    sub_190D56670();
    sub_190D53EE0();
    v25 = *&v31[0];
    v26 = sub_190D54240();
    v27 = sub_190D552B0();
    *v4 = v19;
    *(v4 + 1) = v25;
    v28 = *(&v31[1] + 8);
    *(v4 + 1) = *(v31 + 8);
    *(v4 + 2) = v28;
    *(v4 + 6) = v26;
    v4[56] = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F860);
    sub_190BE21C4();
    sub_190BE227C();
    return sub_190D54C50();
  }
}

uint64_t sub_190BE0C98@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8C8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for ClarityCameraView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = *(a1 + *(v15 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8B0);
  result = sub_190D55FD0();
  v50 = v53;
  if (v53)
  {
    sub_190BE2414(a1, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v46 = swift_allocObject();
    sub_190BE2478(&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E68);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_190DDD0E0;
    sub_190D55D90();
    *(v18 + 32) = sub_190D56390();
    *(v18 + 40) = v19;
    sub_190D55DA0();
    *(v18 + 48) = sub_190D56390();
    *(v18 + 56) = v20;
    sub_190D55D90();
    *(v18 + 64) = sub_190D56390();
    *(v18 + 72) = v21;
    sub_190D55DA0();
    *(v18 + 80) = sub_190D56390();
    *(v18 + 88) = v22;
    sub_190D563A0();
    sub_190D56680();
    sub_190D56670();
    sub_190D53EE0();
    v45 = v64;
    v23 = v65;
    v24 = v66;
    v25 = v67;
    v26 = v68;
    *v11 = sub_190D54AC0();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8D0) + 44)];
    sub_190BE2414(a1, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = swift_allocObject();
    v29 = sub_190BE2478(&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v17);
    MEMORY[0x1EEE9AC00](v29);
    *(&v45 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8D8);
    sub_190233640(&qword_1EAD5F8E0, &qword_1EAD5F8D8);
    v30 = v47;
    sub_190D56030();
    v31 = *(v4 + 16);
    v32 = v49;
    v31(v49, v30, v3);
    v31(v27, v32, v3);
    v33 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8E8) + 48)];
    *v33 = 0;
    v33[8] = 1;
    v34 = *(v4 + 8);
    v34(v30, v3);
    v34(v32, v3);
    v35 = sub_190D552B0();
    v36 = &v11[*(v48 + 36)];
    *v36 = v35;
    *(v36 + 8) = 0u;
    *(v36 + 24) = 0u;
    v36[40] = 1;
    v37 = v51;
    sub_19022FD14(v11, v51, &qword_1EAD5F8C8);
    v38 = v50;
    *&v53 = v50;
    *(&v53 + 1) = sub_190BE24DC;
    v39 = v46;
    *&v54 = v46;
    v40 = v45;
    *(&v54 + 1) = v45;
    *&v55 = v23;
    *(&v55 + 1) = v24;
    *&v56 = v25;
    *(&v56 + 1) = v26;
    v41 = v54;
    v42 = v52;
    *v52 = v53;
    v42[1] = v41;
    v43 = v56;
    v42[2] = v55;
    v42[3] = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8F0);
    sub_19022FD14(v37, v42 + *(v44 + 48), &qword_1EAD5F8C8);
    sub_19022FD14(&v53, &v57, &qword_1EAD5F8F8);
    sub_19022EEA4(v11, &qword_1EAD5F8C8);
    sub_19022EEA4(v37, &qword_1EAD5F8C8);
    *&v57 = v38;
    *(&v57 + 1) = sub_190BE24DC;
    v58 = v39;
    v59 = v40;
    v60 = v23;
    v61 = v24;
    v62 = v25;
    v63 = v26;
    return sub_19022EEA4(&v57, &qword_1EAD5F8F8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190BE12F8()
{
  type metadata accessor for ClarityCameraView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

uint64_t sub_190BE1368(uint64_t a1)
{
  v2 = type metadata accessor for ClarityCameraView();
  v3 = (a1 + *(v2 + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v14) = *v3;
  v15 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FD0();
  v6 = (a1 + *(v2 + 36));
  v8 = *v6;
  v7 = v6[1];
  if (v13 == 1)
  {
    v14 = *v6;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8B0);
    sub_190D55FD0();
    v9 = v13;
    v10 = &selRef_pause;
  }

  else
  {
    v14 = *v6;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F8B0);
    sub_190D55FD0();
    if (v13)
    {
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      v14 = *MEMORY[0x1E6960CC0];
      v15 = *(MEMORY[0x1E6960CC0] + 8);
      v16 = v11;
      [v13 seekToTime_];
    }

    v14 = v8;
    v15 = v7;
    sub_190D55FD0();
    v9 = v13;
    v10 = &selRef_play;
  }

  [v9 *v10];

  LOBYTE(v14) = v4;
  v15 = v5;
  sub_190D50920();
  sub_190D55FD0();
  sub_190D55FE0();
}

__n128 sub_190BE1524@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_190D548D0();
  sub_190BE15A0(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_190BE15A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ClarityCameraView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FD0();
  v2 = sub_190D55EA0();
  sub_190D55FD0();
  sub_190D549E0();
  v3 = CKFrameworkBundle();
  v4 = sub_190D555D0();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  sub_190D50920();
  sub_19081BE48(v4, v6, v8);
  sub_190D52690();
  sub_19081E474(v4, v6, v8);
}

double sub_190BE1770@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D54AC0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F800);
  sub_190BDE810(v1, a1 + *(v3 + 44));
  sub_190D56500();
  sub_190D53C60();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F808) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

id sub_190BE181C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for ClarityAVPlayerViewController());
  sub_190D50920();
  v5 = sub_190BE19B4(v2, v3);
  [v5 setPlayer_];
  [v5 setShowsPlaybackControls_];
  [v5 setVideoGravity_];

  return v5;
}

uint64_t sub_190BE18C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190BE2ECC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190BE1928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190BE2ECC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190BE198C()
{
  sub_190BE2ECC();
  sub_190D55130();
  __break(1u);
}

id sub_190BE19B4(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController_finishedPlayingHandler];
  *v3 = a1;
  *(v3 + 1) = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClarityAVPlayerViewController();
  sub_190D50920();
  v4 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  v8 = v6;
  v9 = sub_190D56ED0();
  v10 = [v8 player];

  if (v10)
  {
    v11 = [v10 currentItem];

    if (v11)
    {
      sub_1902188FC(0, &qword_1EAD5F9B0);
      v10 = sub_190D58740();
    }

    else
    {
      v10 = 0;
    }
  }

  [v7 addObserver:v8 selector:sel_playerDidFinishPlaying name:v9 object:v10];

  swift_unknownObjectRelease();
  return v8;
}

id sub_190BE1E14(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ClarityCameraView()
{
  result = qword_1EAD5F7C0;
  if (!qword_1EAD5F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190BE1EFC()
{
  sub_190BE2058();
  if (v0 <= 0x3F)
  {
    sub_1908E1324();
    if (v1 <= 0x3F)
    {
      sub_190BE20EC(319, &qword_1EAD5E628, &unk_1EAD55F20, &unk_190DD75D0, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_190960724(319, &qword_1EAD5F7E0);
        if (v3 <= 0x3F)
        {
          sub_190BE20EC(319, &qword_1EAD5F7E8, &qword_1EAD5F7F0, &unk_190DFA180, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_190960724(319, &qword_1EAD55F80);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_190BE2058()
{
  if (!qword_1EAD5F7D0)
  {
    type metadata accessor for ClarityCameraModel();
    sub_190BE2840(&qword_1EAD5F7D8, type metadata accessor for ClarityCameraModel);
    v0 = sub_190D53AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5F7D0);
    }
  }
}

void sub_190BE20EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_190BE2154()
{
  result = qword_1EAD5F7F8;
  if (!qword_1EAD5F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F7F8);
  }

  return result;
}

unint64_t sub_190BE21C4()
{
  result = qword_1EAD5F868;
  if (!qword_1EAD5F868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F850);
    sub_190233640(&qword_1EAD5F870, &qword_1EAD5F878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F868);
  }

  return result;
}

unint64_t sub_190BE227C()
{
  result = qword_1EAD5F880;
  if (!qword_1EAD5F880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F860);
    sub_190BE2308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F880);
  }

  return result;
}

unint64_t sub_190BE2308()
{
  result = qword_1EAD5F888;
  if (!qword_1EAD5F888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F890);
    sub_190BE23C0();
    sub_190233640(&qword_1EAD5F8A0, &qword_1EAD5F8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F888);
  }

  return result;
}

unint64_t sub_190BE23C0()
{
  result = qword_1EAD5F898;
  if (!qword_1EAD5F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F898);
  }

  return result;
}

uint64_t sub_190BE2414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityCameraView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BE2478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityCameraView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BE2544(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ClarityCameraView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_190BE25C0()
{
  result = qword_1EAD5F938;
  if (!qword_1EAD5F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F938);
  }

  return result;
}

unint64_t sub_190BE2624()
{
  result = qword_1EAD5F958;
  if (!qword_1EAD5F958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F948);
    sub_190BE2774(&qword_1EAD5F960, &qword_1EAD5F968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F958);
  }

  return result;
}

unint64_t sub_190BE26CC()
{
  result = qword_1EAD5F970;
  if (!qword_1EAD5F970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F950);
    sub_190BE2774(&qword_1EAD5F978, &qword_1EAD5F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F970);
  }

  return result;
}

uint64_t sub_190BE2774(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_190BE2840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for ClarityCameraView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_190A81804(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v5 = v0 + v4 + *(v1 + 28);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) + 32);
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_190BE2A34(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ClarityCameraView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_190BDF8A8(a1, a2, v6);
}

uint64_t sub_190BE2AB4()
{
  type metadata accessor for ClarityCameraView();
  sub_190D515F0();

  return sub_190BDFFEC();
}

unint64_t sub_190BE2BA0()
{
  result = qword_1EAD5F988;
  if (!qword_1EAD5F988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5F808);
    sub_190233640(&qword_1EAD5F990, &qword_1EAD5F998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F988);
  }

  return result;
}

unint64_t sub_190BE2C5C()
{
  result = qword_1EAD5F9A0;
  if (!qword_1EAD5F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F9A0);
  }

  return result;
}

id sub_190BE2CB4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PreviewView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [v3 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    [v6 setSession_];
    [v6 setVideoGravity_];
  }

  return v3;
}

uint64_t sub_190BE2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190BE2E78();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190BE2DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190BE2E78();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190BE2E50()
{
  sub_190BE2E78();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190BE2E78()
{
  result = qword_1EAD5F9A8;
  if (!qword_1EAD5F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F9A8);
  }

  return result;
}

unint64_t sub_190BE2ECC()
{
  result = qword_1EAD5F9B8;
  if (!qword_1EAD5F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F9B8);
  }

  return result;
}

uint64_t sub_190BE2F28()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38[-v7];
  v9 = objc_opt_self();
  sub_190D517F0();
  v10 = sub_190D51780();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v12 = sub_190D51780();
  v13 = [v9 relativeDateFormatterFromDate:v10 toDate:v12];

  if (v13)
  {
    [v13 setFormattingContext_];
    v14 = sub_190D51780();
    v15 = [v13 stringFromDate_];

    v16 = sub_190D56F10();
  }

  else
  {
    sub_190BE33EC();
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    if (qword_1EAD51B98 != -1)
    {
      swift_once();
    }

    v19 = sub_190D53040();
    __swift_project_value_buffer(v19, qword_1EAD9DE50);
    (*(v3 + 16))(v5, v1, v2);
    v20 = v17;
    v21 = sub_190D53020();
    v22 = sub_190D576A0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v23 = 136315394;
      sub_190BE3440();
      v39 = v22;
      v24 = sub_190D58720();
      v26 = v25;
      v11(v5, v2);
      v27 = sub_19021D9F8(v24, v26, v42);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v41 = v17;
      v28 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
      v29 = sub_190D56F70();
      v31 = sub_19021D9F8(v29, v30, v42);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_19020E000, v21, v39, "Failed to create formatter for date: %s, reason: %s", v23, 0x16u);
      v32 = v40;
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v32, -1, -1);
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    else
    {

      v11(v5, v2);
    }

    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v33 setDateStyle_];
    [v33 setTimeStyle_];
    v34 = sub_190D56ED0();
    [v33 setLocalizedDateFormatFromTemplate_];

    [v33 setFormattingContext_];
    v35 = sub_190D51780();
    v36 = [v33 stringFromDate_];

    v16 = sub_190D56F10();
  }

  return v16;
}

unint64_t sub_190BE33EC()
{
  result = qword_1EAD5F9C0;
  if (!qword_1EAD5F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F9C0);
  }

  return result;
}

unint64_t sub_190BE3440()
{
  result = qword_1EAD462F0;
  if (!qword_1EAD462F0)
  {
    sub_190D51840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD462F0);
  }

  return result;
}

unint64_t sub_190BE34AC()
{
  result = qword_1EAD5F9C8;
  if (!qword_1EAD5F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F9C8);
  }

  return result;
}

id CKConversation.isKnownChat.getter()
{
  result = [v0 chat];
  if (result)
  {
    v2 = result;
    v3 = [result isFiltered];

    return (v3 == 0);
  }

  return result;
}

Swift::Bool __swiftcall CKConversation.isKnownSender()()
{
  v1 = [v0 chat];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isKnownSenderWithUnknownFilteringEnabled_];
    if (([v0 hasSetWasKnownSender] & 1) == 0)
    {
      [v0 setHasSetWasKnownSender_];
      [v0 setWasKnownSender_];
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t CKConversation.targetFilterModeForOpeningConversationURL()()
{
  v1 = v0;
  v2 = 0xEF5D646975672074;
  v3 = 0x616863206C696E5BLL;
  v4 = &selRef_sharedProfileNavigationBarPalette;
  v5 = [v0 cachedCalculatedFilterModes];
  v6 = &OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
  if (!v5 || ((v7 = v5, sub_19021DC70(), sub_190218944(), v8 = sub_190D57410(), v7, (v8 & 0xC000000000000001) == 0) ? (v9 = *(v8 + 16)) : (v9 = sub_190D581C0()), , !v9))
  {
    if (qword_1EAD46BA0 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9D8E0);
    v11 = v1;
    v12 = sub_190D53020();
    v13 = sub_190D576C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v67 = v15;
      *v14 = 136315138;
      v16 = [v11 chat];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 guid];

        v3 = sub_190D56F10();
        v2 = v19;
      }

      v20 = sub_19021D9F8(v3, v2, &v67);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_19020E000, v12, v13, "%s: converstion does not have cached filter modes. Re-calculating", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x193AF7A40](v15, -1, -1);
      MEMORY[0x193AF7A40](v14, -1, -1);

      v2 = 0xEF5D646975672074;
      v3 = 0x616863206C696E5BLL;
      v6 = &OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
      v4 = &selRef_sharedProfileNavigationBarPalette;
    }

    else
    {
    }

    [v11 updateCalculatedFilterModesCache];
  }

  v21 = [v1 v4[98]];
  if (v21)
  {
    v22 = v21;
    sub_19021DC70();
    sub_190218944();
    sub_190D57410();

    v23 = sub_190D574C0();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v67 = v23;
  sub_1908AE02C(7);
  if (v6[372] != -1)
  {
    swift_once();
  }

  v24 = sub_190D53040();
  __swift_project_value_buffer(v24, qword_1EAD9D8E0);
  v25 = v67;
  v26 = v1;
  sub_190D52690();
  v27 = sub_190D53020();
  v28 = sub_190D576C0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v66 = v30;
    *v29 = 136315394;
    v31 = [v26 chat];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 guid];

      v34 = sub_190D56F10();
      v36 = v35;

      v2 = 0xEF5D646975672074;
    }

    else
    {
      v34 = 0x616863206C696E5BLL;
      v36 = 0xEF5D646975672074;
    }

    v37 = sub_19021D9F8(v34, v36, &v66);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2080;
    v38 = sub_190D57460();
    v40 = sub_19021D9F8(v38, v39, &v66);

    *(v29 + 14) = v40;
    _os_log_impl(&dword_19020E000, v27, v28, "%s: converstion has eligible filter mode targets during openSMSURL: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v30, -1, -1);
    MEMORY[0x193AF7A40](v29, -1, -1);

    v3 = 0x616863206C696E5BLL;
  }

  else
  {
  }

  v41 = sub_190218BE4(v25);
  v43 = v42;

  v44 = v26;
  v45 = sub_190D53020();
  v46 = sub_190D576C0();

  v47 = os_log_type_enabled(v45, v46);
  if (v43)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v66 = v49;
      *v48 = 136315138;
      v50 = [v44 chat];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 guid];

        v3 = sub_190D56F10();
        v2 = v53;
      }

      v54 = sub_19021D9F8(v3, v2, &v66);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_19020E000, v45, v46, "%s: converstion has no eligible filter mode targets during openSMSURL. Returning default", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x193AF7A40](v49, -1, -1);
      MEMORY[0x193AF7A40](v48, -1, -1);
    }

    return sub_190D57AA0();
  }

  else
  {
    if (v47)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = v57;
      *v56 = 136315394;
      v58 = [v44 chat];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 guid];

        v3 = sub_190D56F10();
        v2 = v61;
      }

      v62 = sub_19021D9F8(v3, v2, &v66);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      v63 = sub_190D57B00();
      v65 = sub_19021D9F8(v63, v64, &v66);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_19020E000, v45, v46, "%s: converstion has eligible filter mode targets during openSMSURL: %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v57, -1, -1);
      MEMORY[0x193AF7A40](v56, -1, -1);
    }

    return v41;
  }
}