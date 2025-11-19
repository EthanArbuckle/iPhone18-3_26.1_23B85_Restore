void sub_1D7BF41E8(uint64_t a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    sub_1D79F3AB0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7D3B4D0;
    sub_1D798F168(0, &qword_1EE0BE7E0);
    sub_1D7D315DC();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D79D6AE0();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1D7D30C6C();
    sub_1D7D29AAC();

    sub_1D7BFA6D4();
    v9 = swift_allocError();
    *v10 = a2;
    v11 = a2;
    (a3)(v9);
  }

  else if (a1)
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    sub_1D7D30C6C();
    sub_1D7D29AAC();
    v13 = [objc_opt_self() sharedAccount];
    [v13 reloadiTunesAccount];

    a5();
  }

  else
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    sub_1D7D30C6C();
    sub_1D7D29AAC();
    sub_1D7BFA6D4();
    v14 = swift_allocError();
    *v15 = 0;
    a3();
  }
}

void sub_1D7BF44E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1D7BF4570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7BFA634;
  *(v10 + 24) = v8;
  v12[4] = sub_1D7BFA63C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7BA86F0;
  v12[3] = &block_descriptor_123;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:1 completion:v11];
  _Block_release(v11);
}

void sub_1D7BF4694(uint64_t a1)
{
  v2 = sub_1D7D295EC();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *MEMORY[0x1E69B6AA8];
    while (v10 < *(v8 + 16))
    {
      (*(v3 + 16))(v7, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2, v5);
      if ((*(v3 + 88))(v7, v2) == v11)
      {
        (*(v3 + 96))(v7, v2);

        return;
      }

      ++v10;
      (*(v3 + 8))(v7, v2);
      if (v9 == v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_1D7BF4838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    goto LABEL_12;
  }

  result = [*(a3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_configurationManager) configuration];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      v6 = [v5 paidBundleConfig];
      swift_unknownObjectRelease();
      v7 = [v6 offeredBundlePurchaseIDs];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1D7D3063C();

        if (*(v9 + 16))
        {
          a1 = *(v9 + 32);

LABEL_12:

          return a1;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    a1 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1D7BF4968(char **a1, unint64_t a2, NSObject *a3)
{
  v57 = a3;
  v6 = sub_1D7D2DB3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2DB7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2DB9C();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  if (a1)
  {
    v47 = &v46 - v22;
    v48 = v24;
    v54 = v6;
    v55 = v23;
    v49 = v15;
    v50 = v12;
    v52 = v11;
    v53 = v7;
    v51 = v10;
    if (a2 >> 62)
    {
LABEL_25:
      v25 = sub_1D7D3167C();
    }

    else
    {
      v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = a1;
    swift_unknownObjectRetain();
    v26 = 0;
    a1 = &selRef_destinationURL;
    while (v25 != v26)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA70EF00](v26, a2);
      }

      else
      {
        if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v27 = *(a2 + 8 * v26 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v29 = [v27 postPurchaseOnboardingStep];

      ++v26;
      if (v29 == 4)
      {
        sub_1D7992EFC(0, &qword_1EE0BEFF0);
        v37 = sub_1D7D30E1C();
        sub_1D7D2DB8C();
        v38 = v47;
        sub_1D7D2DBBC();
        v57 = *(v48 + 8);
        v57(v19, v55);
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        v41 = v56;
        *(v40 + 16) = v39;
        *(v40 + 24) = v41;
        aBlock[4] = sub_1D7BFA3FC;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D79FE25C;
        aBlock[3] = &block_descriptor_92;
        v42 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        v43 = v49;
        sub_1D7D2DB5C();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D7BFA590(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
        sub_1D7999180(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D7AE6D04();
        v44 = v51;
        v45 = v54;
        sub_1D7D313AC();
        MEMORY[0x1DA70E860](v38, v43, v44, v42);
        _Block_release(v42);
        swift_unknownObjectRelease();

        (*(v53 + 8))(v44, v45);
        (*(v50 + 8))(v43, v52);
        v57(v38, v55);
        return;
      }
    }

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), *(v3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24));
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36 = v57;
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;

    sub_1D7D2982C();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EC9DFD78 != -1)
    {
      swift_once();
    }

    v30 = sub_1D7D29AFC();
    __swift_project_value_buffer(v30, qword_1ECA0BB00);
    v57 = sub_1D7D29ADC();
    v31 = sub_1D7D30C6C();
    if (os_log_type_enabled(v57, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D7987000, v57, v31, "Final post-purchase routing is cancelled since no valid headline is available.", v32, 2u);
      MEMORY[0x1DA7102E0](v32, -1, -1);
    }

    v33 = v57;
  }
}

void sub_1D7BF501C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), *(Strong + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24));
    sub_1D7D2985C();
  }
}

void sub_1D7BF50B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2B49C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [*(Strong + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_appConfigurationManager) possiblyUnfetchedAppConfiguration];
    if ([v10 respondsToSelector_])
    {
      v11 = [v10 smarterMessagingConfig];
      swift_unknownObjectRelease();
      if (([v11 discoverNewsPlusBubbleTipEnabled] & 1) == 0)
      {
        if (qword_1EC9DFD78 != -1)
        {
          swift_once();
        }

        v12 = sub_1D7D29AFC();
        __swift_project_value_buffer(v12, qword_1ECA0BB00);
        v13 = sub_1D7D29ADC();
        v14 = sub_1D7D30C6C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_1D7987000, v13, v14, "Discover News+ bubble tip display has been disabled in the config and will not be presented.", v15, 2u);
          MEMORY[0x1DA7102E0](v15, -1, -1);
        }

        v9 = v11;
        goto LABEL_12;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v4 + 104))(v7, *MEMORY[0x1E69D7FB8], v3);
    v16[3] = sub_1D7D28A3C();
    v16[4] = sub_1D7BFA590(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    v16[0] = a2;
    v17 = 0u;
    v18 = 0u;
    v19 = 1;
    sub_1D7D2B10C();
    swift_allocObject();

    sub_1D7D2B0EC();
    __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router], *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24]);
    sub_1D7D2981C();

LABEL_12:
  }
}

void sub_1D7BF53D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2824C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2980C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if ((sub_1D7BF58C8() & 1) == 0)
    {
LABEL_15:

      return;
    }

    v33 = v4;
    v34 = a2;
    v35 = v9;
    sub_1D7D2849C();
    sub_1D7D2847C();
    type metadata accessor for SubscribeActionHandler();
    sub_1D7BFA590(&qword_1EC9E6A10, type metadata accessor for SubscribeActionHandler);
    sub_1D7D285AC();

    if (v36 < 0)
    {
      __break(1u);
      return;
    }

    v32 = v3;
    sub_1D7D2846C();
    sub_1D7D285AC();

    sub_1D7D297FC();

    v19 = v35;
    (*(v35 + 16))(v12, v16, v8);
    v20 = (*(v19 + 88))(v12, v8);
    if (v20 == *MEMORY[0x1E69B6B70])
    {
      v21 = &v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel];
      swift_beginAccess();
      if ((v21[*(type metadata accessor for SubscribeActionModel() + 40)] & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager], *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager + 24]);
        *(swift_allocObject() + 16) = v18;
        v22 = v18;
        sub_1D7D2990C();
      }
    }

    else if (v20 == *MEMORY[0x1E69B6B78])
    {
      (*(v19 + 96))(v12, v8);
      v23 = v32;
      v24 = v33;
      (*(v33 + 32))(v7, v12, v32);
      __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler], *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler + 24]);
      sub_1D7D2A67C();
      v25 = &v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel];
      swift_beginAccess();
      v26 = *v25;
      if (*v25 != 1)
      {
        LODWORD(v34) = v25[8];
        v27 = *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 24];
        v28 = *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 32];
        __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker], v27);
        v29 = *(v28 + 16);
        swift_unknownObjectRetain();
        v30 = v29(v27, v28);
        if (v30)
        {
          sub_1D7BF4968(v26, MEMORY[0x1E69E7CC0], v30);
        }

        sub_1D7BFA3E0(v26, v34);
        v19 = v35;
        v23 = v32;
        v24 = v33;
      }

      (*(v24 + 8))(v7, v23);
      (*(v19 + 8))(v16, v8);
      goto LABEL_14;
    }

    v31 = *(v19 + 8);
    v31(v16, v8);
    v31(v12, v8);
LABEL_14:
    v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
    goto LABEL_15;
  }
}

uint64_t sub_1D7BF58C8()
{
  swift_getObjectType();
  v0 = sub_1D7D295DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22[-v7];
  v9 = sub_1D7D299EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7D284AC();
  sub_1D7BFA590(&qword_1EC9E6A10, type metadata accessor for SubscribeActionHandler);
  sub_1D7D285AC();

  if (v22[15])
  {
    v14 = 1;
  }

  else
  {
    swift_getObjectType();
    (*(v1 + 104))(v4, *MEMORY[0x1E69B6A98], v0);
    sub_1D7D2969C();
    (*(v1 + 8))(v4, v0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1D7BFA530(v8, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
      v14 = 0;
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      v14 = sub_1D7D2999C();
      if (qword_1EE0CAF08 != -1)
      {
        swift_once();
      }

      sub_1D79F3AB0();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7D3B4E0;
      v16 = sub_1D79D6AE0();
      v17 = 0x6F6C6C6120746F6ELL;
      if (v14)
      {
        v17 = 0x6465776F6C6C61;
      }

      v18 = 0xEB00000000646577;
      if (v14)
      {
        v18 = 0xE700000000000000;
      }

      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = v16;
      v19 = MEMORY[0x1E69E6370];
      *(v15 + 32) = v17;
      *(v15 + 40) = v18;
      v20 = MEMORY[0x1E69E63A8];
      *(v15 + 96) = v19;
      *(v15 + 104) = v20;
      *(v15 + 72) = v14 & 1;
      sub_1D7D30C6C();
      sub_1D7D29AAC();

      (*(v10 + 8))(v13, v9);
    }
  }

  return v14 & 1;
}

uint64_t sub_1D7BF5D0C(unint64_t a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4 != 1)
  {
    v7 = *(v4 + 8);
    v8 = *(a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 24);
    v9 = *(a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker), v8);
    v10 = *(v9 + 16);
    swift_unknownObjectRetain();
    v11 = v10(v8, v9);
    if (v11)
    {
      sub_1D7BF4968(v6, a1, v11);
      sub_1D7BFA3E0(v6, v7);
    }

    else
    {
      return sub_1D7BFA3E0(v6, v7);
    }
  }

  return result;
}

void sub_1D7BF5E08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(swift_allocObject() + 16) = Strong;
    v2 = v1;
    sub_1D7D28B6C();

    v2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
  }
}

uint64_t sub_1D7BF5EB0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_1D7D28B6C();

  v2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
  return result;
}

uint64_t sub_1D7BF5F28(void *a1, char *a2)
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v18 - v12;
  v14 = [a1 postPurchaseURL];
  if (v14)
  {
    v15 = v14;
    sub_1D7D281EC();

    (*(v5 + 32))(v13, v8, v4);
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler], *&a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler + 24]);
    sub_1D7D2A67C();
    result = (*(v5 + 8))(v13, v4);
  }

  else
  {
    *(swift_allocObject() + 16) = a2;
    v17 = a2;
    sub_1D7D28B6C();
  }

  a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
  return result;
}

uint64_t sub_1D7BF6204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D7BF624C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7BF62A0(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void (**a5)(id, void))
{
  v397 = a3;
  v392 = sub_1D7D299EC();
  v391 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392, v9);
  v358 = &v324 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v360 = &v324 - v13;
  v381 = sub_1D7D2986C();
  v380 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381, v14);
  v382 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7999180(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v379 = &v324 - v19;
  sub_1D7999180(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], v16);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v378 = &v324 - v22;
  v376 = sub_1D7D2973C();
  v375 = *(v376 - 8);
  MEMORY[0x1EEE9AC00](v376, v23);
  v377 = &v324 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_1D7D298AC();
  v386 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388, v25);
  v368 = &v324 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v359 = &v324 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v383 = &v324 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v324 - v35;
  v374 = type metadata accessor for SubscribeActionModel();
  MEMORY[0x1EEE9AC00](v374, v37);
  v369 = (&v324 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v366 = (&v324 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v324 - v44;
  v385 = sub_1D7D2963C();
  v384 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385, v46);
  v365 = &v324 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v373 = &v324 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v372 = (&v324 - v53);
  v364 = v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v324 - v57;
  sub_1D7999180(0, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], v16);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v371 = &v324 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v370 = (&v324 - v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v387 = &v324 - v67;
  v390 = sub_1D7D295DC();
  v68 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390, v69);
  v393 = &v324 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7999180(0, &qword_1EC9E6A00, MEMORY[0x1E69B6AA0], v16);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v389 = &v324 - v73;
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v16);
  v362 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v367 = &v324 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = &v324 - v79;
  MEMORY[0x1EEE9AC00](v81, v82);
  v363 = &v324 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v324 - v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v395 = &v324 - v90;
  v361 = v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v394 = &v324 - v94;
  v398 = swift_allocObject();
  *(v398 + 16) = a5;
  v396 = a5;
  _Block_copy(a5);
  v95 = sub_1D7BF1450(a2, v397, a4);
  v97 = a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline;
  if (!*(a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline + 8) || *(v97 + 24) == 1)
  {

    v396[2](v396, 0);

    goto LABEL_5;
  }

  v354 = v87;
  v348 = *(v97 + 16);
  v347 = v95;
  v342 = v80;
  v355 = v96;
  v346 = v36;
  v345 = v45;
  v344 = v58;
  v337 = a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline;
  v357 = a1;
  if (v348 == 2)
  {
    LODWORD(v349) = 0;
    v350 = 3;
  }

  else
  {
    if (v348 == 3)
    {
      LODWORD(v349) = 1;
      v98 = 2;
    }

    else
    {
      LODWORD(v349) = 0;
      v98 = 1;
    }

    v350 = v98;
  }

  v356 = a4;
  v99 = *(a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_offerManager);
  v100 = *(a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_offerManager + 8);
  ObjectType = swift_getObjectType();
  v102 = *MEMORY[0x1E69B6A90];
  v103 = v68[13];
  v104 = v389;
  v105 = v390;
  v103(v389, v102, v390);
  v106 = v68[7];
  v339 = v68 + 7;
  v338 = v106;
  v106(v104, 0, 1, v105);
  sub_1D7D2967C();
  sub_1D7BFA530(v104, &qword_1EC9E6A00, MEMORY[0x1E69B6AA0], MEMORY[0x1E69E6720], sub_1D7999180);
  v107 = v393;
  v340 = v102;
  v397 = v103;
  v103(v393, v102, v105);
  v108 = v354;
  v353 = ObjectType;
  v351 = v100;
  sub_1D7D2969C();
  v109 = (v68 + 1);
  v352 = v68[1];
  v352(v107, v105);
  v110 = v391;
  v111 = (v391 + 6);
  v112 = v391[6];
  v113 = v392;
  v114 = v112(v108, 1, v392);
  v341 = v68 + 13;
  v343 = v112;
  if (v114 == 1)
  {
    v397(v107, *MEMORY[0x1E69B6A98], v105);
    sub_1D7D2969C();
    v352(v107, v105);
    v115 = v112(v108, 1, v113);
    v116 = v107;
    v117 = v397;
    if (v115 != 1)
    {
      sub_1D7BFA530(v108, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
    }
  }

  else
  {
    v118 = v395;
    (v110[4])(v395, v108, v113);
    (v110[7])(v118, 0, 1, v113);
    v116 = v107;
    v117 = v397;
  }

  v119 = [v357 controller];
  if (!v119)
  {
    goto LABEL_35;
  }

  v120 = v119;
  v354 = v109;
  v121 = [*(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_configurationManager) configuration];
  if (!v121)
  {
    goto LABEL_183;
  }

  v122 = v121;
  if (([v121 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
LABEL_35:

    v396[2](v396, 0);
LABEL_36:
    v152 = MEMORY[0x1E69B6C30];
    v153 = MEMORY[0x1E69E6720];
    sub_1D7BFA530(v395, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
    v154 = v394;
LABEL_37:
    v155 = v152;
    v156 = v153;
LABEL_38:
    sub_1D7BFA530(v154, &qword_1EE0C0188, v155, v156, sub_1D7999180);
LABEL_5:

    return;
  }

  v123 = [v122 paidBundleConfig];
  swift_unknownObjectRelease();
  v124 = v394;
  v125 = v395;
  v126 = sub_1D7BF16D8(v395, v123, v394);
  if (!v126)
  {

    v396[2](v396, 0);

    v152 = MEMORY[0x1E69B6C30];
    v153 = MEMORY[0x1E69E6720];
    sub_1D7BFA530(v125, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
    v154 = v124;
    goto LABEL_37;
  }

  v127 = v126;
  v336 = v120;
  v128 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v129 = [v128 initWithUnsignedInteger_];
  v130 = sub_1D7D03678(v129, v127);

  if (!v130)
  {

    v396[2](v396, 0);

    goto LABEL_36;
  }

  v333 = v99;
  v335 = v123;
  swift_unknownObjectWeakAssign();
  sub_1D7D2849C();
  sub_1D7D2848C();
  v131 = type metadata accessor for SubscribeActionHandler();
  sub_1D7BFA590(&qword_1EC9E6A10, type metadata accessor for SubscribeActionHandler);
  v334 = v131;
  sub_1D7D285AC();

  v132 = v399;
  if ((v399 & 0x8000000000000000) == 0)
  {
    v133 = v387;
    v134 = v385;
    v135 = v384;
    v136 = v388;
    if (!v399)
    {
      v132 = [v130 targetType];
    }

    v357 = *(v135 + 56);
    (v357)(v133, 1, 1, v134);
    v350 = v130;
    if (!v349)
    {
LABEL_56:
      if (v132 <= 1)
      {
        if (!v132)
        {

          sub_1D7D30C3C();
          v190 = v133;
          sub_1D7992EFC(0, &qword_1EE0BEC80);
          v191 = sub_1D7D312CC();
          sub_1D7D29AAC();

          v192 = MEMORY[0x1E69B6AB8];
          v193 = MEMORY[0x1E69E6720];
          v194 = v190;
LABEL_125:
          sub_1D7BFA530(v194, &qword_1EC9E69F8, v192, v193, sub_1D7999180);
          v244 = MEMORY[0x1E69B6C30];
          sub_1D7BFA530(v395, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v193, sub_1D7999180);
          v154 = v394;
          v155 = v244;
          v156 = v193;
          goto LABEL_38;
        }

        if (v132 == 1)
        {

          v172 = [v130 landingPageArticleID];
          if (v172)
          {
            v173 = v172;
            sub_1D7D3034C();

            sub_1D799CC84(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router, &v399);
            __swift_project_boxed_opaque_existential_1(&v399, *(&v400 + 1));
            swift_beginAccess();
            if (*(v337 + 8))
            {
            }

            sub_1D7D2984C();

            v216 = MEMORY[0x1E69E6720];
            sub_1D7BFA530(v387, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
            v217 = MEMORY[0x1E69B6C30];
            sub_1D7BFA530(v395, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v216, sub_1D7999180);
            sub_1D7BFA530(v394, &qword_1EE0C0188, v217, v216, sub_1D7999180);
            __swift_destroy_boxed_opaque_existential_1(&v399);
            goto LABEL_5;
          }

          goto LABEL_89;
        }

LABEL_74:

LABEL_89:
        v192 = MEMORY[0x1E69B6AB8];
        v194 = v133;
        v193 = MEMORY[0x1E69E6720];
        goto LABEL_125;
      }

      if (v132 != 2)
      {
        if (v132 != 3)
        {
          goto LABEL_74;
        }

        v174 = v133;
        v175 = v371;
        sub_1D7BFA4B0(v174, v371, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8]);
        v177 = (v135 + 48);
        v176 = *(v135 + 48);
        v178 = v176(v175, 1, v134);
        v324 = v111;
        if (v178 != 1)
        {

          (*(v135 + 32))(v373, v175, v134);
          goto LABEL_115;
        }

        v372 = v176;
        v179 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
        v180 = v356;
        swift_beginAccess();
        v181 = v180 + v179;
        v182 = v369;
        sub_1D7BF9CBC(v181, v369);
        v183 = MEMORY[0x1E69B6BC0];
        v184 = MEMORY[0x1E69B6BC8];
        if (v348 != 2)
        {
          v184 = MEMORY[0x1E69B6BD0];
        }

        if (v348 != 3)
        {
          v183 = v184;
        }

        v185 = *v183;
        v186 = v368;
        v370 = *(v386 + 104);
        v370(v368, v185, v136);
        v187 = v182[4];
        v188 = sub_1D7D306AC();
        v366 = v187;
        if (v188)
        {
          if (sub_1D7D306CC())
          {
            sub_1D7D306BC();
          }

          if (sub_1D7D306CC())
          {
            (*(v386 + 8))(v186, v136);
            v189 = MEMORY[0x1E69B6BB8];
          }

          else
          {
            if ((sub_1D7D306BC() & 1) == 0)
            {
              goto LABEL_110;
            }

            (*(v386 + 8))(v186, v136);
            v189 = MEMORY[0x1E69B6BD8];
          }
        }

        else if (sub_1D7D306BC())
        {
          sub_1D7BF4694(v182);
          v213 = v212;
          (*(v386 + 8))(v186, v136);
          if (v213 >= 0xF)
          {
            v189 = MEMORY[0x1E69B6BD0];
          }

          else
          {
            v189 = qword_1E84EAC68[v213];
          }

          v182 = v369;
        }

        else
        {
          if ((sub_1D7D306CC() & 1) == 0)
          {
            goto LABEL_110;
          }

          (*(v386 + 8))(v186, v136);
          v218 = v182[7];
          if (v218 >= 3)
          {
            v189 = MEMORY[0x1E69B6BD0];
          }

          else
          {
            v189 = qword_1E84EACE0[v218];
          }
        }

        v370(v186, *v189, v136);
LABEL_110:
        v370 = v177;
        v220 = v186;
        v359 = sub_1D7BF4838(v347, v355, v356);
        v357 = v221;

        v222 = v182[6];
        v355 = v182[5];
        v349 = v222;
        v223 = v182[3];
        if (v223)
        {
          v347 = v182[2];
          v346 = v223;
        }

        else
        {
          v347 = 0;
          v346 = 0xE000000000000000;
        }

        v224 = v386;
        (*(v386 + 16))(v383, v220, v136);
        (*(v375 + 104))(v377, *MEMORY[0x1E69B6B20], v376);
        sub_1D7BFA4B0(v182 + *(v374 + 36), v378, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
        v225 = sub_1D7D2824C();
        (*(*(v225 - 8) + 56))(v379, 1, 1, v225);
        (*(v380 + 104))(v382, *MEMORY[0x1E69B6B98], v381);

        sub_1D7D2961C();
        (*(v224 + 8))(v368, v388);
        sub_1D7BF9D20(v369);
        v226 = v371;
        v227 = v372(v371, 1, v134);
        v135 = v384;
        v130 = v350;
        if (v227 != 1)
        {
          sub_1D7BFA530(v226, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
        }

LABEL_115:
        v228 = v342;
        sub_1D7BFA4B0(v395, v342, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
        if (v343(v228, 1, v392) == 1)
        {
          sub_1D7BFA530(v228, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
        }

        else
        {
          v234 = v360;
          (v391[4])();
          if (sub_1D7D2997C() & 1) != 0 || (sub_1D7D2995C())
          {
            v235 = v135;
            v236 = *(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24);
            v397 = *(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 32);
            __swift_project_boxed_opaque_existential_1((v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), v236);
            v237 = sub_1D7D2998C();
            sub_1D7D299DC();
            v238 = v373;
            sub_1D7D2983C();

            v352(v116, v390);
            (v391[1])(v234, v392);
            (*(v235 + 8))(v238, v134);
            goto LABEL_124;
          }

          (v391[1])(v234, v392);
        }

        v229 = v389;
        v230 = v390;
        v117(v389, v340, v390);
        v338(v229, 0, 1, v230);
        v231 = v367;
        sub_1D7D2967C();
        sub_1D7BFA530(v229, &qword_1EC9E6A00, MEMORY[0x1E69B6AA0], MEMORY[0x1E69E6720], sub_1D7999180);
        v232 = v392;
        if (v343(v231, 1, v392) == 1)
        {
          sub_1D7BFA530(v231, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
          v233 = [*(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager) cachedSubscription];
          if (objc_getAssociatedObject(v233, v233 + 1))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v402 = 0u;
            v403 = 0u;
          }

          v245 = v350;
          v399 = v402;
          v400 = v403;
          v246 = MEMORY[0x1E69E7CA0];
          if (*(&v403 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0);
            if (swift_dynamicCast())
            {
              v247 = v401;
              v248 = [v401 integerValue];
              if (v248 == -1)
              {

                v253 = v395;
                goto LABEL_179;
              }

              v249 = v248;
LABEL_134:
              if (objc_getAssociatedObject(v233, ~v249))
              {
                sub_1D7D3138C();
                v134 = v385;
                swift_unknownObjectRelease();
              }

              else
              {
                v402 = 0u;
                v403 = 0u;
              }

              v399 = v402;
              v400 = v403;
              if (*(&v403 + 1))
              {
                sub_1D7992EFC(0, &qword_1EE0BECA0);
                if (swift_dynamicCast())
                {
                  v250 = v401;
                  v251 = [v250 integerValue];

                  v134 = v385;
                  v252 = v251 ^ v249;
                  v253 = v395;
                  v254 = v356;
                  if (v252)
                  {
                    goto LABEL_179;
                  }

LABEL_143:
                  v255 = sub_1D7BF1140();
                  v256 = v336;
                  [v336 presentViewController:v255 animated:1 completion:0];

                  __swift_project_boxed_opaque_existential_1((v254 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager), *(v254 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager + 24));
                  v257 = sub_1D7D2991C();
                  if (v258)
                  {
                    __swift_project_boxed_opaque_existential_1((v254 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer), *(v254 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer + 24));
                    v134 = v385;
                    sub_1D7D2992C();
                  }

                  MEMORY[0x1EEE9AC00](v257, v258);
                  v396 = sub_1D7D294BC();
                  v259 = v384;
                  v260 = v365;
                  (*(v384 + 16))(v365, v373, v134);
                  v397 = MEMORY[0x1E69B6C30];
                  v261 = v363;
                  sub_1D7BFA4B0(v253, v363, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
                  v262 = (*(v259 + 80) + 16) & ~*(v259 + 80);
                  v263 = (v364 + *(v362 + 80) + v262) & ~*(v362 + 80);
                  v264 = (v361 + v263 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v265 = swift_allocObject();
                  (*(v259 + 32))(v265 + v262, v260, v134);
                  sub_1D7BF9D98(v261, v265 + v263);
                  *(v265 + v264) = v256;
                  v266 = v256;
                  v267 = sub_1D7D2934C();
                  sub_1D7992EFC(0, &qword_1EC9E6A18);
                  v393 = sub_1D7D293BC();

                  sub_1D7992EFC(0, &qword_1EE0BEFF0);
                  v268 = sub_1D7D30E1C();
                  v269 = swift_allocObject();
                  v270 = v398;
                  v269[2] = sub_1D79F3B18;
                  v269[3] = v270;
                  v271 = v348;
                  v269[4] = v348;
                  v269[5] = v266;
                  v272 = v350;
                  v269[6] = v350;
                  v273 = v266;

                  v396 = v272;
                  v392 = sub_1D7D293CC();

                  v274 = sub_1D7D30E1C();
                  v275 = swift_allocObject();
                  v275[2] = sub_1D79F3B18;
                  v275[3] = v270;
                  v275[4] = v271;
                  v275[5] = v273;
                  v276 = v273;

                  sub_1D7D293EC();

                  (*(v384 + 8))(v373, v385);
                  v277 = MEMORY[0x1E69E6720];
                  sub_1D7BFA530(v387, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
                  v278 = v397;
                  sub_1D7BFA530(v395, &qword_1EE0C0188, v397, v277, sub_1D7999180);
                  sub_1D7BFA530(v394, &qword_1EE0C0188, v278, v277, sub_1D7999180);
                  goto LABEL_5;
                }
              }

              else
              {
                sub_1D7BFA530(&v399, &qword_1EE0BE7A0, v246 + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
              }

              v253 = v395;
              v254 = v356;
              if ((v249 & 1) == 0)
              {
                goto LABEL_143;
              }

LABEL_179:
              v396[2](v396, 0);

              (*(v384 + 8))(v373, v134);
              v322 = MEMORY[0x1E69E6720];
              sub_1D7BFA530(v387, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
              v323 = MEMORY[0x1E69B6C30];
              sub_1D7BFA530(v253, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v322, sub_1D7999180);
              sub_1D7BFA530(v394, &qword_1EE0C0188, v323, v322, sub_1D7999180);
              goto LABEL_5;
            }
          }

          else
          {
            sub_1D7BFA530(&v399, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
          }

          v247 = 0;
          v249 = 0;
          goto LABEL_134;
        }

        v239 = v391;
        v240 = v358;
        (v391[4])(v358, v231, v232);
        v241 = *(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24);
        v397 = *(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 32);
        __swift_project_boxed_opaque_existential_1((v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), v241);
        v242 = v230;
        v243 = sub_1D7D2998C();
        sub_1D7D299DC();
        sub_1D7D2983C();

        v352(v116, v242);
        (v239[1])(v240, v232);
        (*(v384 + 8))(v373, v134);
LABEL_124:
        v192 = MEMORY[0x1E69B6AB8];
        v193 = MEMORY[0x1E69E6720];
        v194 = v387;
        goto LABEL_125;
      }

      v195 = v133;
      v196 = v133;
      v197 = v370;
      sub_1D7BFA4B0(v196, v370, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8]);
      v199 = (v135 + 48);
      v198 = *(v135 + 48);
      if ((v198)(v197, 1, v134) != 1)
      {

        v210 = *(v135 + 32);
        v211 = v372;
        v210(v372, v197, v134);
        goto LABEL_154;
      }

      v397 = v198;
      v200 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
      v201 = v356;
      swift_beginAccess();
      v202 = v201 + v200;
      v203 = v366;
      sub_1D7BF9CBC(v202, v366);
      v204 = MEMORY[0x1E69B6BC0];
      v205 = MEMORY[0x1E69B6BC8];
      if (v348 != 2)
      {
        v205 = MEMORY[0x1E69B6BD0];
      }

      if (v348 != 3)
      {
        v204 = v205;
      }

      v206 = *(v386 + 104);
      v207 = v359;
      v206(v359, *v204, v136);
      v208 = v203[4];
      if (sub_1D7D306AC())
      {
        if (sub_1D7D306CC())
        {
          sub_1D7D306BC();
        }

        if (sub_1D7D306CC())
        {
          (*(v386 + 8))(v207, v136);
          v209 = MEMORY[0x1E69B6BB8];
        }

        else
        {
          if ((sub_1D7D306BC() & 1) == 0)
          {
            goto LABEL_149;
          }

          (*(v386 + 8))(v207, v136);
          v209 = MEMORY[0x1E69B6BD8];
        }
      }

      else if (sub_1D7D306BC())
      {
        sub_1D7BF4694(v203);
        v215 = v214;
        (*(v386 + 8))(v207, v136);
        if (v215 >= 0xF)
        {
          v209 = MEMORY[0x1E69B6BD0];
        }

        else
        {
          v209 = qword_1E84EAC68[v215];
        }

        v203 = v366;
      }

      else
      {
        if ((sub_1D7D306CC() & 1) == 0)
        {
          goto LABEL_149;
        }

        (*(v386 + 8))(v207, v136);
        v219 = v203[7];
        if (v219 >= 3)
        {
          v209 = MEMORY[0x1E69B6BD0];
        }

        else
        {
          v209 = qword_1E84EACE0[v219];
        }
      }

      v206(v207, *v209, v136);
LABEL_149:
      v279 = sub_1D7BF4838(v347, v355, v356);
      v281 = v280;

      v282 = v203[5];
      v283 = v203[6];
      v284 = v203[3];
      v393 = v199;
      v392 = v208;
      v391 = v279;
      v390 = v281;
      v389 = v282;
      v373 = v283;
      if (v284)
      {
        v371 = v203[2];
        v369 = v284;
      }

      else
      {
        v371 = 0;
        v369 = 0xE000000000000000;
      }

      v285 = v386;
      (*(v386 + 16))(v383, v207, v136);
      (*(v375 + 104))(v377, *MEMORY[0x1E69B6B20], v376);
      sub_1D7BFA4B0(v203 + *(v374 + 36), v378, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
      v286 = sub_1D7D2824C();
      (*(*(v286 - 8) + 56))(v379, 1, 1, v286);
      (*(v380 + 104))(v382, *MEMORY[0x1E69B6B98], v381);

      v211 = v372;
      sub_1D7D2961C();
      (*(v285 + 8))(v207, v388);
      sub_1D7BF9D20(v203);
      v287 = v370;
      v134 = v385;
      v288 = (v397)(v370, 1, v385);
      v195 = v387;
      v130 = v350;
      if (v288 != 1)
      {
        sub_1D7BFA530(v287, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
      }

LABEL_154:
      v289 = [*(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager) cachedSubscription];
      if (objc_getAssociatedObject(v289, v289 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v402 = 0u;
        v403 = 0u;
      }

      v399 = v402;
      v400 = v403;
      if (*(&v403 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v290 = v401;
          v291 = [v401 integerValue];
          if (v291 == -1)
          {

            goto LABEL_176;
          }

          v292 = v291;
LABEL_163:
          if (objc_getAssociatedObject(v289, ~v292))
          {
            sub_1D7D3138C();
            v134 = v385;
            swift_unknownObjectRelease();
          }

          else
          {
            v402 = 0u;
            v403 = 0u;
          }

          v399 = v402;
          v400 = v403;
          if (*(&v403 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0);
            if (swift_dynamicCast())
            {
              v293 = v401;
              v294 = [v293 integerValue];

              v134 = v385;
              v295 = v294 ^ v292;
              v211 = v372;
              v296 = v356;
              if (v295)
              {
                goto LABEL_176;
              }

LABEL_172:
              v297 = sub_1D7BF1140();
              v298 = v336;
              [v336 presentViewController:v297 animated:1 completion:0];

              __swift_project_boxed_opaque_existential_1((v296 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager), *(v296 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager + 24));
              v299 = sub_1D7D2991C();
              if (v300)
              {
                __swift_project_boxed_opaque_existential_1((v296 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer), *(v296 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer + 24));
                v134 = v385;
                sub_1D7D2992C();
              }

              MEMORY[0x1EEE9AC00](v299, v300);
              sub_1D7D294BC();
              v301 = v384;
              v302 = v365;
              (*(v384 + 16))(v365, v211, v134);
              v303 = v363;
              sub_1D7BFA4B0(v395, v363, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
              v304 = (*(v301 + 80) + 16) & ~*(v301 + 80);
              v305 = (v364 + *(v362 + 80) + v304) & ~*(v362 + 80);
              v306 = (v361 + v305 + 7) & 0xFFFFFFFFFFFFFFF8;
              v307 = swift_allocObject();
              (*(v301 + 32))(v307 + v304, v302, v385);
              sub_1D7BF9D98(v303, v307 + v305);
              *(v307 + v306) = v298;
              v308 = v298;
              v309 = sub_1D7D2934C();
              sub_1D7992EFC(0, &qword_1EC9E6A18);
              v396 = sub_1D7D293BC();

              sub_1D7992EFC(0, &qword_1EE0BEFF0);
              v310 = sub_1D7D30E1C();
              v311 = swift_allocObject();
              v312 = v398;
              v311[2] = sub_1D79F3B18;
              v311[3] = v312;
              v313 = v348;
              v311[4] = v348;
              v311[5] = v308;
              v314 = v350;
              v311[6] = v350;
              v315 = v308;

              v397 = v314;
              v393 = sub_1D7D293CC();

              v316 = sub_1D7D30E1C();
              v317 = swift_allocObject();
              v317[2] = sub_1D79F3B18;
              v317[3] = v312;
              v317[4] = v313;
              v317[5] = v315;
              v318 = v315;

              sub_1D7D293EC();

              v211 = v372;

              v134 = v385;

              v319 = v387;
              goto LABEL_177;
            }
          }

          else
          {
            sub_1D7BFA530(&v399, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
          }

          v296 = v356;
          if ((v292 & 1) == 0)
          {
            goto LABEL_172;
          }

LABEL_176:
          v396[2](v396, 0);

          v301 = v384;
          v319 = v195;
LABEL_177:

          (*(v301 + 8))(v211, v134);
          v320 = MEMORY[0x1E69E6720];
          sub_1D7BFA530(v319, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
          v321 = MEMORY[0x1E69B6C30];
          sub_1D7BFA530(v395, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v320, sub_1D7999180);
          sub_1D7BFA530(v394, &qword_1EE0C0188, v321, v320, sub_1D7999180);
          goto LABEL_5;
        }
      }

      else
      {
        sub_1D7BFA530(&v399, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
      }

      v290 = 0;
      v292 = 0;
      goto LABEL_163;
    }

    v332 = v135 + 56;
    v349 = v132;
    v137 = v356;
    v138 = v136;
    v139 = sub_1D7BF1A68(v394, v395, v356);
    v140 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
    swift_beginAccess();
    v141 = v345;
    sub_1D7BF9CBC(v137 + v140, v345);
    v142 = MEMORY[0x1E69B6BC0];
    v143 = MEMORY[0x1E69B6BC8];
    if (v348 != 2)
    {
      v143 = MEMORY[0x1E69B6BD0];
    }

    if (v348 != 3)
    {
      v142 = v143;
    }

    v144 = *v142;
    v145 = v346;
    v329 = *(v386 + 104);
    v329(v346, v144, v138);
    v146 = v141;
    v147 = *(v141 + 32);
    v148 = sub_1D7D306AC();
    v149 = v347;
    v331 = v147;
    if (v148)
    {
      if (sub_1D7D306CC())
      {
        sub_1D7D306BC();
      }

      if (sub_1D7D306CC())
      {
        v150 = v388;
        (*(v386 + 8))(v145, v388);
        v151 = MEMORY[0x1E69B6BB8];
LABEL_51:
        v329(v145, *v151, v150);
        goto LABEL_52;
      }

      if (sub_1D7D306BC())
      {
        v150 = v388;
        (*(v386 + 8))(v145, v388);
        v151 = MEMORY[0x1E69B6BD8];
        goto LABEL_51;
      }

LABEL_52:
      v160 = sub_1D7BF4838(v149, v355, v356);
      v161 = v146[5];
      v162 = v146[3];
      v330 = v139;
      v329 = v163;
      v328 = v161;
      v327 = v160;
      if (v162)
      {
        v326 = v146[2];
        v325 = v162;
      }

      else
      {
        v326 = 0;
        v325 = 0xE000000000000000;
      }

      v164 = v146;
      (*(v386 + 16))(v383, v145, v388);
      (*(v375 + 104))(v377, *MEMORY[0x1E69B6B20], v376);
      sub_1D7BFA4B0(v146 + *(v374 + 36), v378, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
      v165 = sub_1D7D2824C();
      (*(*(v165 - 8) + 56))(v379, 1, 1, v165);
      (*(v380 + 104))(v382, *MEMORY[0x1E69B6B98], v381);

      v136 = v388;
      v166 = v344;
      sub_1D7D2961C();
      (*(v386 + 8))(v145, v136);
      v167 = v387;
      sub_1D7BFA530(v387, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
      sub_1D7BF9D20(v164);
      v135 = v384;
      v134 = v385;
      (*(v384 + 16))(v167, v166, v385);
      (v357)(v167, 0, 1, v134);
      v168 = *(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 24);
      v169 = *(v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 32);
      __swift_project_boxed_opaque_existential_1((v356 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker), v168);
      v170 = v349;
      v171 = v168;
      v133 = v387;
      (*(v169 + 8))(v349, v166, v171, v169);
      v132 = v170;
      (*(v135 + 8))(v166, v134);
      v130 = v350;
      v116 = v393;
      v117 = v397;
      goto LABEL_56;
    }

    if (sub_1D7D306BC())
    {
      sub_1D7BF4694(v146);
      v158 = v157;
      (*(v386 + 8))(v145, v388);
      if (v158 < 0xF)
      {
        v151 = qword_1E84EAC68[v158];
LABEL_50:
        v150 = v388;
        goto LABEL_51;
      }
    }

    else
    {
      if ((sub_1D7D306CC() & 1) == 0)
      {
        goto LABEL_52;
      }

      (*(v386 + 8))(v145, v388);
      v159 = v146[7];
      if (v159 < 3)
      {
        v151 = qword_1E84EACE0[v159];
        goto LABEL_50;
      }
    }

    v151 = MEMORY[0x1E69B6BD0];
    goto LABEL_50;
  }

  __break(1u);
LABEL_183:
  _Block_release(v396);
  __break(1u);
}

void sub_1D7BF9C0C()
{
  if ((*(v0 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = [Strong controller];
      swift_unknownObjectRelease();
      if (v2)
      {
        [v2 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

uint64_t sub_1D7BF9CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeActionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BF9D20(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeActionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7BF9D98(uint64_t a1, uint64_t a2)
{
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_1D7D2963C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1D7D299EC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v3 | v7 | 7);
}

unint64_t *sub_1D7BFA03C(_BYTE *a1, void *a2)
{
  v5 = *(sub_1D7D2963C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  return sub_1D7BF247C(a1, a2, v2 + v6, v2 + v9, *(v2 + ((*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7BFA224()
{
  v1 = *(sub_1D7D296FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7BF3B18(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7BFA37C()
{
  v1 = *(sub_1D7D2980C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D7BF53D4(v2, v3);
}

uint64_t sub_1D7BFA3E4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_88Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1D7BFA45C(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = (*(v2 + 16) + *a1);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return a2(v5, v6);
}

uint64_t sub_1D7BFA4B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7999180(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7BFA530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7BFA590(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7BFA678(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7BFA6D4()
{
  result = qword_1EC9E6A68;
  if (!qword_1EC9E6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6A68);
  }

  return result;
}

unint64_t sub_1D7BFA728()
{
  result = qword_1EC9E8F90;
  if (!qword_1EC9E8F90)
  {
    sub_1D7992EFC(255, &qword_1EE0BECA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8F90);
  }

  return result;
}

uint64_t sub_1D7BFA790(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7BFA7E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7BFA834(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D7BFA84C(void *result, int a2)
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

uint64_t sub_1D7BFA914@<X0>(void **a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  v5 = result;
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1D7BFACE8(v3, Strong);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_1D7BFA998()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = *(result + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine);
      if (!v1)
      {
        __break(1u);
        return result;
      }

      v2 = v1;
      v3 = sub_1D7D3031C();
      v4 = [v2 fireEventWithName:v3 withContext:0];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7BFAA84()
{
  sub_1D79C92AC(v0 + 16);
  sub_1D7BFAFF0(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7BFAAF8()
{
  sub_1D7992EFC(0, &qword_1EC9E5C00);
  sub_1D7D294BC();
  sub_1D7992EFC(0, &qword_1EE0BEFF0);
  v0 = sub_1D7D30E1C();
  sub_1D7BFAC94();
  sub_1D7D293CC();

  v1 = sub_1D7D30E1C();
  sub_1D7D293EC();
}

void sub_1D7BFAC94()
{
  if (!qword_1EC9E4A30)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4A30);
    }
  }
}

void sub_1D7BFACE8(void *a1, uint64_t a2)
{
  v4 = sub_1D7D2918C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C468E8(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_1D7B23454(&unk_1F529AEF0);
    v9 = MEMORY[0x1E69D6810];
    sub_1D7BFB07C(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2916C();
    sub_1D7D2917C();
    v14[1] = v10;
    sub_1D79E74F8();
    sub_1D7BFB07C(0, &unk_1EE0BF2C0, v9, MEMORY[0x1E69E62F8]);
    sub_1D79E0538();
    sub_1D7D313AC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7D28C7C();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = *(a2 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine);
    if (v11)
    {
      v12 = v11;
      v14[0] = sub_1D7D3031C();

      v13 = v14[0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7BFAFF0(uint64_t a1)
{
  sub_1D7BFB07C(0, &qword_1EC9E2220, sub_1D7BFB0E0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BFB07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7BFB0E0()
{
  result = qword_1EC9E2218;
  if (!qword_1EC9E2218)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E2218);
  }

  return result;
}

uint64_t sub_1D7BFB1E4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v16 = *(a1 + 3);
  v8 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  sub_1D7BFB37C();
  result = sub_1D7D28D2C();
  if (v19)
  {
    sub_1D799D69C(&v17, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    *&v17 = v5;
    *(&v17 + 1) = v6;
    v18 = v7;
    v19 = v16;
    v20 = v8;
    v21 = v9;
    v13 = (*(v12 + 8))(a2, &v17, v11, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      [Strong showViewController:v13 sender:v3];
    }

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BFB310()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7BFB37C()
{
  result = qword_1EE0CCFA0;
  if (!qword_1EE0CCFA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CCFA0);
  }

  return result;
}

uint64_t sub_1D7BFB404()
{
  sub_1D7BFB4DC();
  swift_allocObject();
  sub_1D7BFB558();

  swift_unknownObjectRetain();
  return sub_1D7D2A69C();
}

void sub_1D7BFB4DC()
{
  if (!qword_1EC9E6A78)
  {
    sub_1D7A133E8();
    sub_1D7A13440();
    v0 = sub_1D7D2A6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6A78);
    }
  }
}

unint64_t sub_1D7BFB558()
{
  result = qword_1EC9E6A80;
  if (!qword_1EC9E6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6A80);
  }

  return result;
}

uint64_t EndOfArticleSectionDescriptor.identifier.getter()
{
  v1 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup - 8, v6);
  v8 = (v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7AE9A08();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v0 >> 61;
  if (v27 <= 2)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        v28 = swift_projectBox();
        v29 = type metadata accessor for RelatedEndOfArticleFeedGroup;
        sub_1D7BFB994(v28, v16, type metadata accessor for RelatedEndOfArticleFeedGroup);
        v30 = *v16;

        v31 = v16;
      }

      else
      {
        v36 = swift_projectBox();
        v29 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
        sub_1D7BFB994(v36, v12, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        v30 = *v12;

        v31 = v12;
      }
    }

    else
    {
      v34 = swift_projectBox();
      v29 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      sub_1D7BFB994(v34, v20, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v30 = *v20;

      v31 = v20;
    }

    goto LABEL_11;
  }

  if (v27 == 3)
  {
    v35 = swift_projectBox();
    v29 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    sub_1D7BFB994(v35, v8, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v30 = *v8;

    v31 = v8;
LABEL_11:
    v33 = v29;
    goto LABEL_12;
  }

  if (v27 != 4)
  {
    v38 = v24;
    v39 = swift_projectBox();
    (*(v22 + 16))(v26, v39, v38);
    v40 = sub_1D7D2E13C();
    v41[0] = v41[1];
    v30 = EndOfArticleSectionDescriptor.identifier.getter(v40);
    (*(v22 + 8))(v26, v38);

    return v30;
  }

  v32 = swift_projectBox();
  sub_1D7BFB994(v32, v4, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
  v30 = *v4;

  v31 = v4;
  v33 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
LABEL_12:
  sub_1D7BFB9FC(v31, v33);
  return v30;
}

uint64_t sub_1D7BFB994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BFB9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void EndOfArticleSectionDescriptor.type.getter(char *a1@<X8>)
{
  sub_1D7AE9A08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1 >> 61;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 3;
    }

    else
    {
      if (v9 != 4)
      {
        v11 = v6;
        v12 = swift_projectBox();
        (*(v4 + 16))(v8, v12, v11);
        v13 = sub_1D7D2E13C();
        v14[0] = v14[1];
        EndOfArticleSectionDescriptor.type.getter(v13);
        (*(v4 + 8))(v8, v11);

        return;
      }

      v10 = 4;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = 0;
      return;
    }

    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  *a1 = v10;
}

uint64_t static EndOfArticleSectionDescriptor.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v82 = a2;
  v3 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = (&v77 - v8);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup - 8, v10);
  v79 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = (&v77 - v14);
  v15 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v77 - v21);
  v23 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = (&v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v77 - v29);
  v31 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = (&v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v77 - v37);
  sub_1D7AE9A08();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v48 = &v77 - v47;
  v49 = *a1;
  v50 = *v82;
  v51 = v49 >> 61;
  if ((v49 >> 61) <= 2)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        if (v50 >> 61 == 1)
        {
          v52 = swift_projectBox();
          v53 = swift_projectBox();
          sub_1D7BFB994(v52, v30, type metadata accessor for RelatedEndOfArticleFeedGroup);
          sub_1D7BFB994(v53, v26, type metadata accessor for RelatedEndOfArticleFeedGroup);
          if (*v30 == *v26 && v30[1] == v26[1])
          {
            v54 = 1;
          }

          else
          {
            v54 = sub_1D7D3197C();
          }

          v75 = type metadata accessor for RelatedEndOfArticleFeedGroup;
          sub_1D7BFB9FC(v26, type metadata accessor for RelatedEndOfArticleFeedGroup);
          v72 = v30;
          goto LABEL_40;
        }
      }

      else if (v50 >> 61 == 2)
      {
        v65 = swift_projectBox();
        v66 = swift_projectBox();
        sub_1D7BFB994(v65, v22, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        sub_1D7BFB994(v66, v18, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        if (*v22 == *v18 && v22[1] == v18[1])
        {
          v54 = 1;
        }

        else
        {
          v54 = sub_1D7D3197C();
        }

        v75 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
        sub_1D7BFB9FC(v18, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        v72 = v22;
        goto LABEL_40;
      }
    }

    else if (!(v50 >> 61))
    {
      v60 = swift_projectBox();
      v61 = swift_projectBox();
      sub_1D7BFB994(v60, v38, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      sub_1D7BFB994(v61, v34, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      if (*v38 == *v34 && v38[1] == v34[1])
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D7D3197C();
      }

      sub_1D7BFB9FC(v34, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v72 = v38;
      v73 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v51 == 3)
  {
    if (v50 >> 61 == 3)
    {
      v62 = swift_projectBox();
      v63 = swift_projectBox();
      v57 = v78;
      sub_1D7BFB994(v62, v78, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v64 = v63;
      v59 = v79;
      sub_1D7BFB994(v64, v79, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      if (*v57 == *v59 && v57[1] == v59[1])
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D7D3197C();
      }

      v74 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      goto LABEL_37;
    }

LABEL_28:
    v54 = 0;
    return v54 & 1;
  }

  if (v51 == 4)
  {
    if (v50 >> 61 == 4)
    {
      v55 = swift_projectBox();
      v56 = swift_projectBox();
      v57 = v80;
      sub_1D7BFB994(v55, v80, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      v58 = v56;
      v59 = v81;
      sub_1D7BFB994(v58, v81, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      if (*v57 == *v59 && v57[1] == v59[1])
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D7D3197C();
      }

      v74 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
LABEL_37:
      v75 = v74;
      sub_1D7BFB9FC(v59, v74);
      v72 = v57;
LABEL_40:
      v73 = v75;
LABEL_41:
      sub_1D7BFB9FC(v72, v73);
      return v54 & 1;
    }

    goto LABEL_28;
  }

  if (v50 >> 61 != 5)
  {
    goto LABEL_28;
  }

  v67 = v46;
  v68 = swift_projectBox();
  v69 = swift_projectBox();
  v70 = *(v67 + 16);
  v70(v48, v68, v40);
  v70(v43, v69, v40);
  sub_1D7D2E13C();
  v84[0] = v84[1];
  sub_1D7D2E13C();
  v83[0] = v83[1];
  v54 = static EndOfArticleSectionDescriptor.== infix(_:_:)(v84, v83);

  v71 = *(v67 + 8);
  v71(v43, v40);
  v71(v48, v40);
  return v54 & 1;
}

uint64_t EndOfArticleSectionDescriptor.feedLayoutOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D7D2DF6C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69B5958];
  if (v3 >> 61 >= 5)
  {
    v6 = MEMORY[0x1E69B5950];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t EndOfArticleSectionDescriptor.feedGroupDebug.getter@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v45 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v45, v1);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE9A08();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v48 >> 61;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v36 = swift_projectBox();
      v26 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      sub_1D7BFB994(v36, v5, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v37 = v47;
      v47[3] = EndOfArticleFeedGroup;
      v37[4] = sub_1D7BFC934(qword_1EE0BC160, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      v29 = v5;
    }

    else
    {
      if (v24 != 4)
      {
        v41 = swift_projectBox();
        (*(v20 + 16))(v23, v41, v19);
        v42 = sub_1D7D2E13C();
        v49 = v50;
        EndOfArticleSectionDescriptor.feedGroupDebug.getter(v42);
        (*(v20 + 8))(v23, v19);
      }

      v30 = swift_projectBox();
      v26 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
      v31 = v46;
      sub_1D7BFB994(v30, v46, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      v32 = v47;
      v47[3] = v45;
      v32[4] = sub_1D7BFC934(qword_1EE0BBD90, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      v29 = v31;
    }

    goto LABEL_11;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v25 = swift_projectBox();
      v26 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      sub_1D7BFB994(v25, v13, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v27 = v47;
      v47[3] = v10;
      v27[4] = sub_1D7BFC934(qword_1EE0C4AE8, type metadata accessor for RelatedEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v29 = v13;
    }

    else
    {
      v38 = swift_projectBox();
      v26 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
      sub_1D7BFB994(v38, v9, type metadata accessor for RecommendedEndOfArticleFeedGroup);
      v39 = v47;
      v47[3] = v6;
      v39[4] = sub_1D7BFC934(qword_1EE0BBF58, type metadata accessor for RecommendedEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      v29 = v9;
    }

LABEL_11:
    v35 = v26;
    return sub_1D7AB4F6C(v29, boxed_opaque_existential_1, v35);
  }

  v33 = swift_projectBox();
  sub_1D7BFB994(v33, v17, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  v34 = v47;
  v47[3] = v14;
  v34[4] = sub_1D7BFC934(qword_1EE0C4700, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v29 = v17;
  v35 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
  return sub_1D7AB4F6C(v29, boxed_opaque_existential_1, v35);
}

uint64_t sub_1D7BFC934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7BFC97C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D7D2DF6C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69B5958];
  if (v3 >> 61 >= 5)
  {
    v6 = MEMORY[0x1E69B5950];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t EndOfArticleSectionDescriptor.tag.getter()
{
  v1 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE9A08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v0 >> 61;
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v25 = swift_projectBox();
      v22 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      sub_1D7BFB994(v25, v8, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v20 = *&v8[*(EndOfArticleFeedGroup + 24)];
      swift_unknownObjectRetain();
      v23 = v8;
    }

    else
    {
      if (v19 != 4)
      {
        v26 = v16;
        v27 = swift_projectBox();
        (*(v14 + 16))(v18, v27, v26);
        v28 = sub_1D7D2E13C();
        v30[0] = v30[1];
        v20 = EndOfArticleSectionDescriptor.tag.getter(v28);
        (*(v14 + 8))(v18, v26);

        return v20;
      }

      v24 = swift_projectBox();
      v22 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
      sub_1D7BFB994(v24, v4, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      v20 = *&v4[*(v1 + 24)];
      swift_unknownObjectRetain();
      v23 = v4;
    }

    goto LABEL_8;
  }

  v20 = 0;
  if ((v19 - 1) >= 2)
  {
    v21 = swift_projectBox();
    v22 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
    sub_1D7BFB994(v21, v12, type metadata accessor for MoreFromEndOfArticleFeedGroup);
    v20 = *&v12[*(v9 + 24)];
    swift_unknownObjectRetain();
    v23 = v12;
LABEL_8:
    sub_1D7BFB9FC(v23, v22);
  }

  return v20;
}

uint64_t EndOfArticleSectionDescriptor.adGroupKind.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7AE9A08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1 >> 61;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 0x5F4F545F45524F4DLL;
      v11 = 0xEC00000044414552;
    }

    else
    {
      if (v9 != 4)
      {
        v16 = v6;
        v17 = swift_projectBox();
        (*(v4 + 16))(v8, v17, v16);
        v18 = sub_1D7D2E13C();
        v19[0] = v19[1];
        EndOfArticleSectionDescriptor.adGroupKind.getter(v18);
        (*(v4 + 8))(v8, v16);
      }

      v10 = 0x6F72465F65726F4DLL;
      v11 = 0xEF65757373495F6DLL;
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      *a1 = 0xD000000000000011;
      a1[1] = 0x80000001D7D78900;
      goto LABEL_11;
    }

    v10 = 0x5F444554414C4552;
    v11 = 0xEF534549524F5453;
  }

  else
  {
    v10 = 0x4F52465F45524F4DLL;
    v11 = 0xED00004255505F4DLL;
  }

  *a1 = v10;
  a1[1] = v11;
LABEL_11:
  v12 = *MEMORY[0x1E69B3FB0];
  v13 = sub_1D7D2CCCC();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

uint64_t EndOfArticleSectionDescriptor.allowAdjacentAd.getter()
{
  if (*v0 >> 61 > 4uLL)
  {

    return MEMORY[0x1EEE21808]();
  }

  else
  {
    sub_1D7BFD14C(0, &qword_1EE0BE8E8, MEMORY[0x1E69E6F90]);
    sub_1D7D2E46C();
    *(swift_allocObject() + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2E44C();
    sub_1D7D2E45C();
    sub_1D7BFC934(&unk_1EE0BF958, MEMORY[0x1E69B5A90]);
    sub_1D7BFD14C(0, &qword_1EE0BF268, MEMORY[0x1E69E62F8]);
    sub_1D7BFD1AC();
    return sub_1D7D313AC();
  }
}

void sub_1D7BFD14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2E46C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7BFD1AC()
{
  result = qword_1EE0BF260;
  if (!qword_1EE0BF260)
  {
    sub_1D7BFD14C(255, &qword_1EE0BF268, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF260);
  }

  return result;
}

uint64_t sub_1D7BFD220()
{
  if (*v0 >> 61 >= 5uLL)
  {

    return MEMORY[0x1EEE21808]();
  }

  else
  {
    sub_1D7BFD14C(0, &qword_1EE0BE8E8, MEMORY[0x1E69E6F90]);
    sub_1D7D2E46C();
    *(swift_allocObject() + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2E44C();
    sub_1D7D2E45C();
    sub_1D7BFC934(&unk_1EE0BF958, MEMORY[0x1E69B5A90]);
    sub_1D7BFD14C(0, &qword_1EE0BF268, MEMORY[0x1E69E62F8]);
    sub_1D7BFD1AC();
    return sub_1D7D313AC();
  }
}

uint64_t sub_1D7BFD3F8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t EndOfArticleSectionDescriptor.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v46, v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1 >> 61;
  if (v21 <= 2)
  {
    if (!v21)
    {
      v30 = swift_projectBox();
      sub_1D7BFB994(v30, v20, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v31 = *(v17 + 28);
      v32 = sub_1D7D2EA6C();
      (*(*(v32 - 8) + 16))(v47, &v20[v31], v32);
      v26 = v20;
      v33 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      return sub_1D7BFB9FC(v26, v33);
    }

    if (v21 == 1)
    {
      v22 = swift_projectBox();
      v23 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      sub_1D7BFB994(v22, v12, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v24 = *(v9 + 24);
      v25 = sub_1D7D2EA6C();
      (*(*(v25 - 8) + 16))(v47, &v12[v24], v25);
      v26 = v12;
    }

    else
    {
      v37 = swift_projectBox();
      v23 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
      sub_1D7BFB994(v37, v8, type metadata accessor for RecommendedEndOfArticleFeedGroup);
      v38 = *(v5 + 24);
      v39 = sub_1D7D2EA6C();
      (*(*(v39 - 8) + 16))(v47, &v8[v38], v39);
      v26 = v8;
    }

LABEL_11:
    v33 = v23;
    return sub_1D7BFB9FC(v26, v33);
  }

  if (v21 == 3)
  {
    v34 = swift_projectBox();
    v23 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    sub_1D7BFB994(v34, v16, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v35 = *(EndOfArticleFeedGroup + 28);
    v36 = sub_1D7D2EA6C();
    (*(*(v36 - 8) + 16))(v47, &v16[v35], v36);
    v26 = v16;
    goto LABEL_11;
  }

  if (v21 == 4)
  {
    v27 = swift_projectBox();
    v23 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    sub_1D7BFB994(v27, v4, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v28 = *(v46 + 28);
    v29 = sub_1D7D2EA6C();
    (*(*(v29 - 8) + 16))(v47, &v4[v28], v29);
    v26 = v4;
    goto LABEL_11;
  }

  v41 = *MEMORY[0x1E69B5D40];
  v42 = sub_1D7D2EA6C();
  v43 = *(*(v42 - 8) + 104);
  v44 = v42;
  v45 = v47;

  return v43(v45, v41, v44);
}

uint64_t sub_1D7BFD920@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t static EndOfArticleSectionDescriptor.createNativeAdGroup(from:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D7D2E3BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1D7AE9A08();
  v12 = swift_allocBox();
  v14[1] = v11;
  (*(v7 + 16))(v10, a2, v6);
  sub_1D7AE9A64();

  result = sub_1D7D2E12C();
  *a3 = v12 | 0xA000000000000000;
  return result;
}

uint64_t static EndOfArticleSectionDescriptor.removeNativeAdGroup(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7AE9A08();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 61 == 5)
  {
    v10 = swift_projectBox();
    (*(v6 + 16))(v9, v10, v5);
    sub_1D7D2E13C();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    *a2 = *a1;
  }
}

uint64_t EndOfArticleSectionDescriptor.nativeAdGroup.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7AE9A08();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 61 == 5)
  {
    v9 = swift_projectBox();
    (*(v5 + 16))(v8, v9, v4);
    sub_1D7BFDDD8();
    v11 = v10;
    sub_1D7D2E13C();
    sub_1D7D2E14C();
    (*(v5 + 8))(v8, v4);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1D7BFDDD8();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

void sub_1D7BFDDD8()
{
  if (!qword_1EC9E6A88)
  {
    sub_1D7D2E3BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6A88);
    }
  }
}

uint64_t sub_1D7BFDE44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D7D2E3BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1D7AE9A08();
  v12 = swift_allocBox();
  v14[1] = v11;
  (*(v7 + 16))(v10, a2, v6);
  sub_1D7AE9A64();

  result = sub_1D7D2E12C();
  *a3 = v12 | 0xA000000000000000;
  return result;
}

uint64_t sub_1D7BFDF7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7AE9A08();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 61 == 5)
  {
    v10 = swift_projectBox();
    (*(v6 + 16))(v9, v10, v5);
    sub_1D7D2E13C();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    *a2 = *a1;
  }
}

uint64_t sub_1D7BFE0BC@<X0>(uint64_t a1@<X8>)
{
  sub_1D7AE9A08();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 61 == 5)
  {
    v9 = swift_projectBox();
    (*(v5 + 16))(v8, v9, v4);
    sub_1D7BFDDD8();
    v11 = v10;
    sub_1D7D2E13C();
    sub_1D7D2E14C();
    (*(v5 + 8))(v8, v4);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1D7BFDDD8();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t EndOfArticleSectionDescriptor.context.getter@<X0>(void *a1@<X8>)
{
  v80 = a1;
  sub_1D7AE9A08();
  v74 = *(v1 - 8);
  v75 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v72 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v70, v4);
  v73 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D7D2F05C();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v17);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v70 - v22;
  v79 = sub_1D7D2DE2C();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v81 >> 61;
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v51 = swift_projectBox();
      v33 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      sub_1D7BFB994(v51, v16, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v52 = v77;
      v53 = v79;
      (*(v77 + 16))(v26, &v16[*(EndOfArticleFeedGroup + 20)], v79);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v81 = sub_1D7D2F03C();
      v54 = *(v76 + 8);
      v55 = v23;
      v56 = v78;
      v54(v55, v78);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v39 = sub_1D7D2F02C();
      v54(v19, v56);
      (*(v52 + 8))(v26, v53);
      v40 = v16;
      goto LABEL_12;
    }

    if (v31 != 4)
    {
      v65 = swift_projectBox();
      v67 = v74;
      v66 = v75;
      v68 = v72;
      (*(v74 + 16))(v72, v65, v75);
      v69 = sub_1D7D2E13C();
      v82 = v83;
      EndOfArticleSectionDescriptor.context.getter(v69);
      (*(v67 + 8))(v68, v66);
    }

    v41 = swift_projectBox();
    v33 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v42 = v73;
    sub_1D7BFB994(v41, v73, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v43 = *(v70 + 20);
LABEL_11:
    v58 = v77;
    v59 = v79;
    (*(v77 + 16))(v26, v42 + v43, v79);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v81 = sub_1D7D2F03C();
    v60 = *(v76 + 8);
    v61 = v23;
    v62 = v78;
    v60(v61, v78);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v39 = sub_1D7D2F02C();
    v60(v19, v62);
    (*(v58 + 8))(v26, v59);
    v40 = v42;
    goto LABEL_12;
  }

  if (v31)
  {
    if (v31 == 1)
    {
      v32 = swift_projectBox();
      v33 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      sub_1D7BFB994(v32, v12, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v34 = v77;
      v35 = v79;
      (*(v77 + 16))(v26, &v12[*(v9 + 20)], v79);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v81 = sub_1D7D2F03C();
      v36 = *(v76 + 8);
      v37 = v23;
      v38 = v78;
      v36(v37, v78);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v39 = sub_1D7D2F02C();
      v36(v19, v38);
      (*(v34 + 8))(v26, v35);
      v40 = v12;
LABEL_12:
      v50 = v33;
      goto LABEL_13;
    }

    v57 = swift_projectBox();
    v33 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v42 = v71;
    sub_1D7BFB994(v57, v71, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    v43 = *(v6 + 20);
    goto LABEL_11;
  }

  v44 = swift_projectBox();
  sub_1D7BFB994(v44, v30, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  v45 = v77;
  v46 = v79;
  (*(v77 + 16))(v26, &v30[*(v27 + 20)], v79);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v81 = sub_1D7D2F03C();
  v47 = *(v76 + 8);
  v48 = v23;
  v49 = v78;
  v47(v48, v78);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v39 = sub_1D7D2F02C();
  v47(v19, v49);
  (*(v45 + 8))(v26, v46);
  v40 = v30;
  v50 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
LABEL_13:
  result = sub_1D7BFB9FC(v40, v50);
  v64 = v80;
  *v80 = v81;
  v64[1] = v39;
  *(v64 + 16) = 0;
  return result;
}

uint64_t sub_1D7BFEA38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7BFEA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for ArticleVideoAdProviderFactory()
{
  result = qword_1EE0C4978;
  if (!qword_1EE0C4978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D7BFEBB0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_1D7BFEC98(v6, v7);

  swift_unknownObjectRelease();

  return v9;
}

id sub_1D7BFEC98(void *a1, uint64_t a2)
{
  v4 = sub_1D7D2CF0C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 component])
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      result = [v10 prerollPlacementIdentifier];
      if (result)
      {
        v13 = result;
        sub_1D7D3034C();

        [a1 contentFrame];
        sub_1D7D2CEEC();
        sub_1D7D2D0AC();
        sub_1D7B6F4D0(v11, v9);

        sub_1D7D2CA4C();
        v14 = sub_1D7D2D09C();
        swift_unknownObjectRelease();

        (*(v5 + 8))(v9, v4);
        return v14;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EC9DFD48 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7D3B4D0;
  v16 = [a1 component];
  if (v16)
  {
    v17 = [v16 identifier];
    swift_unknownObjectRelease();
    v18 = sub_1D7D3034C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1D79D6AE0();
  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v20)
  {
    v22 = v20;
  }

  *(v15 + 32) = v21;
  *(v15 + 40) = v22;
  sub_1D7D29AAC();

  return 0;
}

uint64_t dispatch thunk of RecipeRecirculationConfigurationServiceType.fetchRecipeRecirculationConfigJSON()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7BFF0B4;

  return v7(a1, a2);
}

uint64_t sub_1D7BFF0B4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1D7BFF1C0(uint64_t a1, uint64_t a2)
{
  sub_1D7BFF6D8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v10 = *(a2 + 16);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1D7BFF740;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79E9424;
  aBlock[3] = &block_descriptor_31;
  v13 = _Block_copy(aBlock);

  [v10 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

uint64_t sub_1D7BFF368(void *a1, id a2)
{
  if (a1 && ([a1 respondsToSelector_] & 1) != 0)
  {
    v3 = [swift_unknownObjectRetain() recipeRecirculationConfigJSON];
    if (v3)
    {
      v4 = v3;
      sub_1D7D3034C();

      sub_1D7BFF6D8();
      sub_1D7D307FC();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    sub_1D7BFF7D8();
    swift_allocError();
  }

  sub_1D7BFF6D8();
  return sub_1D7D307EC();
}

uint64_t sub_1D7BFF4B0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1D7BFF588;
  v2 = *(v0 + 32);
  v3 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000024, 0x80000001D7D78AA0, sub_1D7BFF6D0, v2, v3);
}

uint64_t sub_1D7BFF588()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D7BFF6B8;
  }

  else
  {
    v2 = sub_1D7BFF69C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D7BFF6D8()
{
  if (!qword_1EC9E6A90)
  {
    sub_1D79AC5C4();
    v0 = sub_1D7D3080C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6A90);
    }
  }
}

uint64_t sub_1D7BFF740(void *a1, void *a2)
{
  sub_1D7BFF6D8();

  return sub_1D7BFF368(a1, a2);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7BFF7D8()
{
  result = qword_1EC9E6AA0;
  if (!qword_1EC9E6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6AA0);
  }

  return result;
}

unint64_t sub_1D7BFF840()
{
  result = qword_1EC9E6AA8;
  if (!qword_1EC9E6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6AA8);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D7BFF9B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for CampaignLandingPageModule();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for CampaignLandingPageModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BFFA68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleViewController();
  sub_1D799CC84(a1, &v17);
  v2 = swift_allocObject();
  sub_1D799D69C(&v17, v2 + 16);
  v3 = sub_1D7D28CFC();

  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BC588);
  result = sub_1D7D28D2C();
  if (!v18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BBD70);
  result = sub_1D7D28D2C();
  v5 = v15;
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for URLHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(&v17, v18);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_1D7C0022C(v3, *v11, v5, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7BFFCD8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, qword_1EE0BC590);
  result = sub_1D7D28D2C();
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v8[3] = v4;
    v8[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    sub_1D798C468(0, &qword_1EE0C9958);
    sub_1D7D28BFC();
    __swift_destroy_boxed_opaque_existential_1(v8);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BFFE10()
{
  sub_1D798C468(0, &qword_1EE0BC588);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0BBD70);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0BBED0);
  sub_1D7D291EC();

  type metadata accessor for URLHandler();
  sub_1D7D291DC();
}

uint64_t sub_1D7BFFF48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for CampaignLandingPageStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F529CC48;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BFFFFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BBED0);
  result = sub_1D7D28D2C();
  v5 = v12;
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BC590);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C40D0);
  result = sub_1D7D28D2C();
  if (v9)
  {
    type metadata accessor for CampaignLandingPageEventHandler();
    v7 = swift_allocObject();
    v7[3] = 0;
    swift_unknownObjectWeakInit();
    v7[4] = v5;
    v7[5] = v6;
    sub_1D799D69C(&v10, (v7 + 6));
    sub_1D799D69C(&v8, (v7 + 11));
    *(v5 + 24) = &off_1F52A25D0;
    result = swift_unknownObjectWeakAssign();
    *a2 = v7;
    a2[1] = &off_1F52A25D8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C00198@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CampaignLandingPageInteractor();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  *a1 = v2;
  a1[1] = &off_1F52ABA08;
  return result;
}

id sub_1D7C001EC()
{
  v0 = objc_allocWithZone(type metadata accessor for URLHandler());

  return [v0 init];
}

char *sub_1D7C0022C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CampaignLandingPageStyler();
  v27[3] = v10;
  v27[4] = &off_1F529CC48;
  v27[0] = a2;
  v11 = type metadata accessor for CampaignLandingPageViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v26[3] = v10;
  v26[4] = &off_1F529CC48;
  v26[0] = v18;
  v19 = OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_isImpressionable;
  v25 = 0;
  sub_1D7C00434();
  swift_allocObject();
  *&v12[v19] = sub_1D7D28ECC();
  *&v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_pageDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_articleViewController] = a1;
  sub_1D799CC84(v26, &v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_styler]);
  v20 = &v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_eventHandler];
  *v20 = a3;
  *(v20 + 1) = a4;
  *&v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_urlHandler] = a5;
  v24.receiver = v12;
  v24.super_class = v11;
  v21 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(*&v21[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_eventHandler] + 24) = &off_1F52B57D0;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v21;
}

void sub_1D7C00434()
{
  if (!qword_1EE0C0430)
  {
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0430);
    }
  }
}

uint64_t sub_1D7C00484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SearchInArticleModule();
    v7 = swift_allocObject();
    result = sub_1D79E14FC(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SearchInArticleModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C00534()
{
  type metadata accessor for SearchInArticleViewController();
  sub_1D7D291DC();
}

id sub_1D7C00594(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D28A3C();
    result = sub_1D7D28D1C();
    if (result)
    {
      v3 = result;
      v4 = objc_allocWithZone(type metadata accessor for SearchInArticleViewController());
      return sub_1D7CF5FF4(v5, v6, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C00678()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7C006C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7C00F38(a1, v12, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      sub_1D799A6BC();
      sub_1D79DA510(*&v12[*(v18 + 48)], *&v12[*(v18 + 48) + 8], *&v12[*(v18 + 48) + 16]);
      goto LABEL_6;
    }

LABEL_14:
    v30 = type metadata accessor for ArticleViewerPage;
    v31 = v12;
LABEL_16:
    sub_1D7C00FA0(v31, v30);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1D7A74E98(v12, v16);
  sub_1D7C00F38(a2, v8, type metadata accessor for ArticleViewerBlueprint);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D7C00FA0(v16, type metadata accessor for ArticleViewerArticlePage);
    v30 = type metadata accessor for ArticleViewerBlueprint;
    v31 = v8;
    goto LABEL_16;
  }

  v19 = *v8;
  v20 = v8[1];
  v21 = *(v2 + 16);
  v22 = [v19 identifier];
  if (!v22)
  {
    sub_1D7D3034C();
    v22 = sub_1D7D3031C();
  }

  v23 = objc_opt_self();
  v24 = sub_1D7D3031C();
  v25 = [v23 ANFBookmarkWithArticleID_];

  [v21 markIssueWithID:v22 asVisitedWithBookmark:v25];
  v36[0] = v19;
  v36[1] = v20;
  v26 = v16[1];
  v37 = *v16;
  v38 = v26;
  v27 = v16[3];
  v39 = v16[2];
  v40 = v27;
  sub_1D79F5B54(&v37, &v32);
  sub_1D7C00FA0(v16, type metadata accessor for ArticleViewerArticlePage);
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v35 = v40;
  v28 = sub_1D7C00A70(v36, &v32);
  v41[0] = v32;
  v41[1] = v33;
  v41[2] = v34;
  v41[3] = v35;
  sub_1D7A0AD5C(v41);
  if (v28)
  {
    v29 = [v19 identifier];
    if (!v29)
    {
      sub_1D7D3034C();
      v29 = sub_1D7D3031C();
    }

    [v21 markIssueAsEngagedWithID_];
  }
}

uint64_t sub_1D7C00A70(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v40 = *a2;
  v3 = a2[2];
  v37 = a2[5];
  v38 = a2[1];
  v32 = a2[4];
  v33 = a2[6];
  v31 = a2[7];
  v4 = &selRef_addTarget_action_;
  if ([v3 respondsToSelector_])
  {
    v5 = [v3 role];
    if (v5 <= 7 && ((1 << v5) & 0x94) != 0)
    {
      return 0;
    }
  }

  v7 = [*(v36 + 32) configuration];
  v35 = v2;
  if (!v7)
  {
LABEL_12:
    v34 = 1;
    v10 = *(v2 + 16);
    if (!v10)
    {
      return 0;
    }

    goto LABEL_13;
  }

  v8 = v7;
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v9 = [v8 paidBundleConfig];
  swift_unknownObjectRelease();
  v34 = [v9 minimumArticlesInANFIssueBeforeRead];

  v2 = v35;
  v10 = *(v35 + 16);
  if (!v10)
  {
    return 0;
  }

LABEL_13:
  v11 = 0;
  v12 = 0;
  v13 = (v2 + 32);
  v14 = v10 - 1;
  v39 = v10 - 1;
  do
  {
    v15 = v13[1];
    v55 = *v13;
    v56 = v15;
    v16 = v13[2];
    v17 = v13[3];
    v18 = v13[5];
    v59 = v13[4];
    v60 = v18;
    v57 = v16;
    v58 = v17;
    v19 = v13[6];
    v20 = v13[7];
    v21 = v13[8];
    *(v63 + 9) = *(v13 + 137);
    v62 = v20;
    v63[0] = v21;
    v61 = v19;
    memmove(__dst, v13, 0x99uLL);
    if (sub_1D7A601B0(__dst) == 1)
    {
      result = nullsub_1(__dst);
      if (v14 == v11)
      {
        return 0;
      }

      goto LABEL_41;
    }

    v45 = v12;
    v23 = nullsub_1(__dst);
    v24 = *v23;
    v25 = v23[2];
    v26 = v23[5];
    v43 = v23[6];
    v44 = v23[1];
    v41 = v23[7];
    v42 = v23[4];
    if ([v25 respondsToSelector_])
    {
      v52 = v61;
      v53 = v62;
      v54[0] = v63[0];
      *(v54 + 9) = *(v63 + 9);
      v48 = v57;
      v49 = v58;
      v50 = v59;
      v51 = v60;
      v46 = v55;
      v47 = v56;
      nullsub_1(&v46);

      v27 = v4[83];

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v28 = [v25 v27];
      if (v28 <= 7 && ((1 << v28) & 0x94) != 0)
      {
        result = sub_1D7A6026C(&v55);
        v2 = v35;
        v4 = &selRef_addTarget_action_;
        v14 = v39;
        if (v39 == v11)
        {
          return 0;
        }

        goto LABEL_41;
      }

      v2 = v35;
    }

    else
    {
      v52 = v61;
      v53 = v62;
      v54[0] = v63[0];
      *(v54 + 9) = *(v63 + 9);
      v48 = v57;
      v49 = v58;
      v50 = v59;
      v51 = v60;
      v46 = v55;
      v47 = v56;
      nullsub_1(&v46);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v4 = &selRef_addTarget_action_;
    if (v40 == v24 && v38 == v44 || (sub_1D7D3197C() & 1) != 0)
    {
      if (v37)
      {
        if (!v26 || (v32 != v42 || v37 != v26) && (sub_1D7D3197C() & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (v26)
      {
        goto LABEL_37;
      }

      if (v33 == v43 && v31 == v41 || (sub_1D7D3197C() & 1) != 0)
      {
        result = sub_1D7A6026C(&v55);
        v14 = v39;
        goto LABEL_38;
      }
    }

LABEL_37:
    v29 = *(v36 + 24);
    v30 = sub_1D7D3031C();
    LOBYTE(v29) = [v29 hasArticleBeenVisited_];

    result = sub_1D7A6026C(&v55);
    v14 = v39;
    if ((v29 & 1) == 0)
    {
      v12 = v45;
      if (v39 == v11)
      {
        return 0;
      }

      goto LABEL_41;
    }

LABEL_38:
    v12 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_48;
    }

    if (v12 >= v34)
    {
      return 1;
    }

    if (v14 == v11)
    {
      return 0;
    }

LABEL_41:
    ++v11;
    v13 += 10;
  }

  while (v11 < *(v2 + 16));
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1D7C00F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C00FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C01000()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AB0 = result;
  return result;
}

uint64_t sub_1D7C0115C()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AB8 = result;
  return result;
}

uint64_t sub_1D7C012B8()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AC0 = result;
  return result;
}

uint64_t sub_1D7C01414()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AC8 = result;
  return result;
}

unint64_t sub_1D7C01580()
{
  result = qword_1EC9E6AD8;
  if (!qword_1EC9E6AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E6AD8);
  }

  return result;
}

void sub_1D7C015E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C01580();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

Swift::Void __swiftcall NANowPlayingBackgroundView.clearArtwork()()
{
  if (qword_1EE0BB500 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0DE478;

  [v0 setImage_];
}

id sub_1D7C016F4()
{
  if (qword_1EE0BB500 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0DE478;

  return [v0 setImage_];
}

uint64_t sub_1D7C0175C(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v26 = a2;
  sub_1D7C01B68(0, &qword_1EE0BB410, type metadata accessor for InterstitialAdModel);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v25 - v9);
  sub_1D7AECC70();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C01B68(0, &qword_1EE0BB3F8, sub_1D7AECC70);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v25 - v19);
  sub_1D7C01BBC(a1, &v25 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    *v10 = *v20;
    swift_storeEnumTagMultiPayload();
    v22 = v21;
    v26(v10);

    return sub_1D7C01C3C(v10);
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    sub_1D7999AF4();
    (*(v13 + 16))(v10 + *(v24 + 36), v16, v12);
    *v10 = v25;
    v10[1] = a5;
    type metadata accessor for InterstitialAdModel();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    v26(v10);
    sub_1D7C01C3C(v10);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1D7C01A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7D2CA2C();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  v9 = sub_1D7D2D24C();

  return v9;
}

uint64_t sub_1D7C01B08()
{
  sub_1D7D2D49C();
  type metadata accessor for InterstitialAdModel();

  return swift_storeEnumTagMultiPayload();
}

void sub_1D7C01B68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D2935C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C01BBC(uint64_t a1, uint64_t a2)
{
  sub_1D7C01B68(0, &qword_1EE0BB3F8, sub_1D7AECC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C01C3C(uint64_t a1)
{
  sub_1D7C01B68(0, &qword_1EE0BB410, type metadata accessor for InterstitialAdModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RecipeContentPrefetcher.__allocating_init(recipeService:externalRecipeFactory:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RecipeContentPrefetcher.init(recipeService:externalRecipeFactory:)(a1, a2);
  return v4;
}

uint64_t RecipeContentPrefetcher.init(recipeService:externalRecipeFactory:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
  sub_1D79A92DC();
  swift_allocObject();
  *(v2 + 24) = sub_1D7D292EC();
  sub_1D799CC84(a1, v2 + 40);
  sub_1D799CC84(a2, v2 + 80);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v2 + 32) = v6;
  [v6 setMaxConcurrentOperationCount_];
  [*(v2 + 32) setQualityOfService_];
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v3 selector:sel_revisitSuspendedState name:*MEMORY[0x1E696A7D8] object:0];

  sub_1D7D294EC();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_1D7C01E60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v72 = a3;
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v71 - v8;
  v10 = sub_1D7D27D2C();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecipeContentPrefetchItem();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v73 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v77 = &v71 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v71 - v22);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v71 - v26;
  sub_1D7C02E58(0, &unk_1EE0BB400, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v71 - v30);
  sub_1D7D3094C();
  v33 = v32;
  sub_1D7C02EB8(a1, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v31;
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v35 = sub_1D7D29AFC();
    __swift_project_value_buffer(v35, qword_1EE0DE460);

    v36 = v34;
    v37 = sub_1D7D29ADC();
    v38 = sub_1D7D30C4C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v79[0] = v40;
      *v39 = 136315650;
      *(v39 + 4) = sub_1D7B06D4C(v72, a4, v79);
      *(v39 + 12) = 2080;
      swift_getErrorValue();
      v41 = sub_1D7D31A3C();
      v43 = sub_1D7B06D4C(v41, v42, v79);

      *(v39 + 14) = v43;
      *(v39 + 22) = 2048;
      *(v39 + 24) = v33;
      _os_log_impl(&dword_1D7987000, v37, v38, "Failed to prefetch recipe content, recipe=%s, error=%s, time=%f", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v40, -1, -1);
      MEMORY[0x1DA7102E0](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1D7C02F38(v31, v27);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1D7C02F9C(v27, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v74;
        v45 = v75;
        v46 = v76;
        (*(v75 + 32))(v74, v23, v76);
        v47 = sub_1D7D27CCC();
        v49 = v48;
        (*(v45 + 8))(v44, v46);
      }

      else
      {
        v50 = *v23;
        v51 = [*v23 identifier];
        v47 = sub_1D7D3034C();
        v49 = v52;
      }

      sub_1D7C02F9C(v27, v9);
      (*(v14 + 56))(v9, 0, 1, v13);
      v78[0] = v47;
      v78[1] = v49;
      sub_1D7D2931C();
    }

    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v53 = sub_1D7D29AFC();
    __swift_project_value_buffer(v53, qword_1EE0DE460);
    v54 = v77;
    sub_1D7C02F9C(v27, v77);
    v55 = sub_1D7D29ADC();
    v56 = sub_1D7D30C3C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v78[0] = v72;
      *v57 = 136315394;
      v58 = v73;
      sub_1D7C02F9C(v54, v73);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = v75;
        v59 = v76;
        v61 = v58;
        v62 = v74;
        (*(v75 + 32))(v74, v61, v76);
        v63 = sub_1D7D27CCC();
        v65 = v64;
        (*(v60 + 8))(v62, v59);
      }

      else
      {
        v66 = *v58;
        v67 = [*v58 identifier];
        v63 = sub_1D7D3034C();
        v65 = v68;
      }

      sub_1D7C03000(v54);
      v69 = sub_1D7B06D4C(v63, v65, v78);

      *(v57 + 4) = v69;
      *(v57 + 12) = 2048;
      *(v57 + 14) = v33;
      _os_log_impl(&dword_1D7987000, v55, v56, "Successfully prefetched recipe content, recipe=%s, time=%f", v57, 0x16u);
      v70 = v72;
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1DA7102E0](v70, -1, -1);
      MEMORY[0x1DA7102E0](v57, -1, -1);
    }

    else
    {

      sub_1D7C03000(v54);
    }

    sub_1D7C03000(v27);
  }
}

Swift::Void __swiftcall RecipeContentPrefetcher.removePrefetchInterestInRecipe(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12[-v6];
  v8 = *(v1 + 16);
  v9 = sub_1D7D3031C();
  [v8 removeObject_];

  v13 = countAndFlagsBits;
  v14 = object;

  sub_1D7D2930C();

  v10 = type metadata accessor for RecipeContentPrefetchItem();
  LODWORD(v8) = (*(*(v10 - 8) + 48))(v7, 1, v10);
  sub_1D7C02D0C(v7);
  if (v8 != 1)
  {
    sub_1D7AF3EC8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4D0;
    *(inited + 32) = countAndFlagsBits;
    *(inited + 40) = object;

    sub_1D7B23554(inited);
    swift_setDeallocating();
    sub_1D79E0AA4(inited + 32);
    sub_1D7D292DC();
  }
}

uint64_t RecipeContentPrefetcher.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  return v0;
}

uint64_t RecipeContentPrefetcher.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

void _s12NewsArticles23RecipeContentPrefetcherC021addPrefetchInterestInC0_6recipeySS_So8FCRecipeCSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *(v2 + 16);
  v11 = sub_1D7D3031C();
  [v10 addObject_];

  v45[0] = a1;
  v45[1] = a2;

  sub_1D7D2930C();

  v12 = type metadata accessor for RecipeContentPrefetchItem();
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_1D7C02D0C(v9);
  if (v10 == 1)
  {
    v39 = *(v3 + 32);
    v13 = [v39 operations];
    sub_1D7C02DFC();
    v14 = sub_1D7D3063C();

    v40 = v3;
    if (v14 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
    {
      v16 = 0;
      v41 = v14 & 0xFFFFFFFFFFFFFF8;
      v42 = v14 & 0xC000000000000001;
      while (1)
      {
        if (v42)
        {
          v17 = MEMORY[0x1DA70EF00](v16, v14);
        }

        else
        {
          if (v16 >= *(v41 + 16))
          {
            goto LABEL_21;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v17 name];
        if (v20)
        {
          v21 = a2;
          v22 = v20;
          v23 = sub_1D7D3034C();
          v25 = v24;

          if (v23 == a1 && v25 == v21)
          {

            goto LABEL_19;
          }

          a2 = v21;
          v27 = sub_1D7D3197C();

          if (v27)
          {

LABEL_19:

            return;
          }
        }

        ++v16;
        if (v19 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v28 = CACurrentMediaTime();
    v29 = v40;
    sub_1D799CC84(v40 + 40, v45);
    sub_1D799CC84(v29 + 80, v44);
    v30 = type metadata accessor for RecipeContentPrefetchOperation();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[qword_1EE0BC400];
    *v32 = a1;
    *(v32 + 1) = a2;
    v32[16] = 0;
    sub_1D799CC84(v45, &v31[qword_1EE0BC3F8]);
    sub_1D799CC84(v44, &v31[qword_1EE0BC408]);
    v43.receiver = v31;
    v43.super_class = v30;

    v33 = objc_msgSendSuper2(&v43, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v34 = v33;
    v35 = sub_1D7D3031C();
    [v34 setName_];

    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = v28;
    *(v37 + 3) = v36;
    *(v37 + 4) = a1;
    *(v37 + 5) = a2;

    v38 = v34;
    sub_1D7D28DEC();

    [v39 addOperation_];
  }
}

uint64_t sub_1D7C02D0C(uint64_t a1)
{
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7C02DFC()
{
  result = qword_1EE0BB048;
  if (!qword_1EE0BB048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BB048);
  }

  return result;
}

void sub_1D7C02E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeContentPrefetchItem();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7C02EB8(uint64_t a1, uint64_t a2)
{
  sub_1D7C02E58(0, &unk_1EE0BB400, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C02F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeContentPrefetchItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C02F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeContentPrefetchItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C03000(uint64_t a1)
{
  v2 = type metadata accessor for RecipeContentPrefetchItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ArticlePageColorPalette()
{
  result = qword_1EE0C7128;
  if (!qword_1EE0C7128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C030D4()
{
  sub_1D79F85FC();
  if (v0 <= 0x3F)
  {
    sub_1D7B5C2C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7C03160()
{
  sub_1D7B5C2C4();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticlePageColorPalette();
  __swift_allocate_value_buffer(v6, qword_1EE0DE550);
  v7 = __swift_project_value_buffer(v6, qword_1EE0DE550);
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  v10 = [v8 whiteColor];
  v11 = [v8 labelColor];
  v13[0] = 1;
  v13[1] = 0;
  type metadata accessor for UIStatusBarStyle(0);
  sub_1D7D29DDC();
  *v7 = v9;
  *(v7 + 1) = v10;
  *(v7 + 2) = v11;
  return (*(v2 + 32))(&v7[*(v6 + 28)], v5, v1);
}

uint64_t sub_1D7C032EC(void *a1)
{
  v2 = v1;
  sub_1D7AC643C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2B49C();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  (*(v12 + 104))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7FB8], v10);
  v13 = *(v2 + 56);
  v25[4] = sub_1D7D28A3C();
  v25[5] = sub_1D7A108E4();
  v25[1] = v13;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  v14 = a1;
  sub_1D7D2B0EC();
  swift_getObjectType();
  sub_1D7D2C4BC();
  sub_1D7B28B9C(0, v15);
  v17 = *(v16 + 64);
  v18 = &v7[*(v16 + 80)];
  *v7 = *(v2 + 32);
  v19 = *MEMORY[0x1E69B6340];
  v20 = sub_1D7D2F51C();
  (*(*(v20 - 8) + 104))(&v7[v17], v19, v20);
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v7 + 1) = sub_1D79E7BEC;
  *(v7 + 2) = 0;
  v21 = *MEMORY[0x1E69B6328];
  v22 = sub_1D7D2F4FC();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  swift_unknownObjectRetain();

  sub_1D7D2A78C();
  sub_1D7AC64B8(v7);
}

uint64_t sub_1D7C03618()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C036B0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = MEMORY[0x1E69E6720];
  sub_1D7C05AC8(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[6] = swift_task_alloc();
  v4 = sub_1D7D2824C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_1D7D2FAFC();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  sub_1D7C05AC8(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe, v3);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = sub_1D7D2A3EC();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7C03978, 0, 0);
}

uint64_t sub_1D7C03978()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *v1 = v4;
  v5 = *MEMORY[0x1E69D7938];
  v6 = *(v3 + 104);
  *(v0 + 208) = v6;
  *(v0 + 216) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v84 = v6;
  (v6)(v1, v5, v2);
  v7 = sub_1D79E4B84(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1D79E4B84(v8 > 1, v9 + 1, 1, v7);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 152);
  v80 = *(v0 + 192);
  v12 = *(v0 + 32);
  *(v7 + 2) = v9 + 1;
  v13 = *(v11 + 32);
  v11 += 32;
  v14 = *(v11 + 48);
  *(v0 + 368) = v14;
  v81 = (v14 + 32) & ~v14;
  v15 = *(v11 + 40);
  v82 = v15;
  v83 = v13;
  *(v0 + 224) = v15;
  *(v0 + 232) = v13;
  *(v0 + 240) = v11 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  (v13)(&v7[v81 + v15 * v9], v10);
  sub_1D7C057E4();
  v17 = v16;
  v79 = swift_allocBox();
  v19 = (v18 + *(v17 + 48));
  sub_1D7C05AC8(0, &qword_1EC9E6B18, MEMORY[0x1E69D77F0], MEMORY[0x1E69E6F90]);
  sub_1D7D2A14C();
  *(swift_allocObject() + 16) = xmmword_1D7D3B4D0;
  *(v0 + 248) = *v12;
  *(v0 + 256) = v12[1];

  sub_1D7D2A15C();
  sub_1D7D2C8EC();
  *v19 = 0x4449657069636552;
  v19[1] = 0xE800000000000000;
  *v80 = v79;
  v84();
  v21 = *(v7 + 2);
  v20 = *(v7 + 3);
  if (v21 >= v20 >> 1)
  {
    v7 = sub_1D79E4B84(v20 > 1, v21 + 1, 1, v7);
  }

  *(v0 + 264) = v7;
  v22 = *(v0 + 192);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 80);
  v26 = *(v0 + 88);
  v27 = *(v0 + 32);
  *(v7 + 2) = v21 + 1;
  v83(&v7[v81 + v21 * v82], v22, v23);
  v28 = *(type metadata accessor for DebugRecipe(0) + 24);
  *(v0 + 372) = v28;
  sub_1D7C05850(v27 + v28, v24);
  v29 = *(v26 + 48);
  *(v0 + 272) = v29;
  *(v0 + 280) = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v30 = v29(v24, 1, v25);
  v31 = *(v0 + 136);
  if (v30 == 1)
  {
    v32 = *(v0 + 32);
    sub_1D7C05B74(v31, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = [v33 contentAssetHandle];
      *(v0 + 288) = v34;
      if (v34)
      {
        v36 = *(v0 + 112);
        v35 = *(v0 + 120);
        v37 = *(v0 + 104);
        (*(v36 + 104))(v35, *MEMORY[0x1E69B6568], v37);
        *(v0 + 296) = sub_1D7D30BFC();
        (*(v36 + 8))(v35, v37);
        v38 = swift_task_alloc();
        *(v0 + 304) = v38;
        *v38 = v0;
        v38[1] = sub_1D7C04164;

        return MEMORY[0x1EEE44EE0](v0 + 16);
      }
    }

    else
    {
      v34 = 0;
    }

    v39 = 0xF000000000000000;
  }

  else
  {
    v34 = *v31;
    v39 = v31[1];
    v40 = *(v0 + 136);
    sub_1D79EA338(*v31, v39);
    sub_1D7C05A6C(v40);
    v41 = *(v0 + 264);
    v42 = *(v0 + 208);
    v43 = *(v0 + 184);
    v44 = *(v0 + 144);
    v45 = swift_allocObject();
    v45[2] = v34;
    v45[3] = v39;
    v45[4] = 0x61746144776152;
    v45[5] = 0xE700000000000000;
    v45[6] = 7235938;
    v45[7] = 0xE300000000000000;
    *v43 = v45;
    v42(v43, *MEMORY[0x1E69D7948], v44);
    sub_1D79EA38C(v34, v39);
    sub_1D79EA338(v34, v39);
    v47 = *(v41 + 16);
    v46 = *(v41 + 24);
    v7 = *(v0 + 264);
    if (v47 >= v46 >> 1)
    {
      v7 = sub_1D79E4B84(v46 > 1, v47 + 1, 1, v7);
    }

    v48 = *(v0 + 232);
    v49 = *(v0 + 224);
    v50 = *(v0 + 184);
    v51 = *(v0 + 144);
    v52 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D79EA2D0(v34, v39);
    *(v7 + 2) = v47 + 1;
    v48(&v7[v52 + v49 * v47], v50, v51);
  }

  *(v0 + 312) = v34;
  *(v0 + 320) = v39;
  v53 = *(v0 + 272);
  v54 = *(v0 + 128);
  v55 = *(v0 + 80);
  sub_1D7C05850(*(v0 + 32) + *(v0 + 372), v54);
  if (v53(v54, 1, v55) == 1)
  {
    sub_1D7C05B74(*(v0 + 128), &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
  }

  else
  {
    v56 = *(v0 + 208);
    v57 = *(v0 + 176);
    v58 = *(v0 + 144);
    v59 = *(v0 + 96);
    v60 = *(v0 + 80);
    sub_1D7C059A4(*(v0 + 128), v59);
    v61 = swift_allocObject();
    v62 = *(v60 + 20);
    *(v61 + 40) = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    *(v61 + 48) = sub_1D7C05B2C(&qword_1EC9E6B20, type metadata accessor for DebugRecipe.LoadedRecipe.Fields);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v61 + 16));
    sub_1D7C05A08(v59 + v62, boxed_opaque_existential_1);
    strcpy((v61 + 56), "RecipeFields");
    *(v61 + 69) = 0;
    *(v61 + 70) = -5120;
    *v57 = v61;
    v56(v57, *MEMORY[0x1E69D7950], v58);
    v65 = *(v7 + 2);
    v64 = *(v7 + 3);
    if (v65 >= v64 >> 1)
    {
      v7 = sub_1D79E4B84(v64 > 1, v65 + 1, 1, v7);
    }

    v66 = *(v0 + 232);
    v67 = *(v0 + 224);
    v68 = *(v0 + 176);
    v69 = *(v0 + 144);
    v70 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D7C05A6C(*(v0 + 96));
    *(v7 + 2) = v65 + 1;
    v66(&v7[v70 + v67 * v65], v68, v69);
  }

  v71 = *(v0 + 40);
  v72 = OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider;
  *(v0 + 328) = v7;
  *(v0 + 336) = v72;
  v73 = *(v71 + v72 + 24);
  v74 = *(v71 + v72 + 32);
  __swift_project_boxed_opaque_existential_1((v71 + v72), v73);
  v75 = swift_task_alloc();
  *(v0 + 344) = v75;
  *v75 = v0;
  v75[1] = sub_1D7C04648;
  v77 = *(v0 + 248);
  v76 = *(v0 + 256);

  return MEMORY[0x1EEDF8420](v77, v76, v73, v74);
}

uint64_t sub_1D7C04164()
{

  if (v0)
  {

    v1 = sub_1D7C04BC8;
  }

  else
  {

    v1 = sub_1D7C042AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D7C042AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 264);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = 0x61746144776152;
  v7[5] = 0xE700000000000000;
  v7[6] = 7235938;
  v7[7] = 0xE300000000000000;
  *v5 = v7;
  v4(v5, *MEMORY[0x1E69D7948], v6);
  sub_1D79EA38C(v1, v2);
  sub_1D79EA338(v1, v2);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v0 + 264);
  if (v9 >= v8 >> 1)
  {
    v10 = sub_1D79E4B84(v8 > 1, v9 + 1, 1, v10);
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 224);
  v13 = *(v0 + 184);
  v14 = *(v0 + 144);
  v15 = (*(v0 + 368) + 32) & ~*(v0 + 368);
  sub_1D79EA2D0(v1, v2);
  *(v10 + 2) = v9 + 1;
  v11(&v10[v15 + v12 * v9], v13, v14);
  *(v0 + 312) = v1;
  *(v0 + 320) = v2;
  v16 = *(v0 + 272);
  v17 = *(v0 + 128);
  v18 = *(v0 + 80);
  sub_1D7C05850(*(v0 + 32) + *(v0 + 372), v17);
  if (v16(v17, 1, v18) == 1)
  {
    sub_1D7C05B74(*(v0 + 128), &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    v19 = v10;
  }

  else
  {
    v20 = *(v0 + 208);
    v21 = *(v0 + 176);
    v22 = *(v0 + 144);
    v23 = *(v0 + 96);
    v24 = *(v0 + 80);
    sub_1D7C059A4(*(v0 + 128), v23);
    v25 = swift_allocObject();
    v26 = *(v24 + 20);
    *(v25 + 40) = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    *(v25 + 48) = sub_1D7C05B2C(&qword_1EC9E6B20, type metadata accessor for DebugRecipe.LoadedRecipe.Fields);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 16));
    sub_1D7C05A08(v23 + v26, boxed_opaque_existential_1);
    strcpy((v25 + 56), "RecipeFields");
    *(v25 + 69) = 0;
    *(v25 + 70) = -5120;
    *v21 = v25;
    v20(v21, *MEMORY[0x1E69D7950], v22);
    v29 = *(v10 + 2);
    v28 = *(v10 + 3);
    v19 = v10;
    if (v29 >= v28 >> 1)
    {
      v19 = sub_1D79E4B84(v28 > 1, v29 + 1, 1, v10);
    }

    v30 = *(v0 + 232);
    v31 = *(v0 + 224);
    v32 = *(v0 + 176);
    v33 = *(v0 + 144);
    v34 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D7C05A6C(*(v0 + 96));
    *(v19 + 16) = v29 + 1;
    v30(v19 + v34 + v31 * v29, v32, v33);
  }

  v35 = *(v0 + 40);
  v36 = OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider;
  *(v0 + 328) = v19;
  *(v0 + 336) = v36;
  v37 = *(v35 + v36 + 24);
  v38 = *(v35 + v36 + 32);
  __swift_project_boxed_opaque_existential_1((v35 + v36), v37);
  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_1D7C04648;
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);

  return MEMORY[0x1EEDF8420](v41, v40, v37, v38);
}

uint64_t sub_1D7C04648(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 352) = a1;
  *(v4 + 360) = a2;

  if (v2)
  {

    v5 = sub_1D7C04E5C;
  }

  else
  {
    v5 = sub_1D7C04764;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7C04764()
{
  v1 = *(v0 + 360);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 328);
  }

  else
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v5 = *(v0 + 208);
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v1;
    v8[4] = 0xD000000000000010;
    v8[5] = 0x80000001D7D78E60;
    v8[6] = 1852797802;
    v8[7] = 0xE400000000000000;
    *v6 = v8;
    v5(v6, *MEMORY[0x1E69D7948], v7);
    sub_1D79EA338(v3, v1);
    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    v2 = *(v0 + 328);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1D79E4B84(v9 > 1, v10 + 1, 1, *(v0 + 328));
    }

    v11 = *(v0 + 232);
    v12 = *(v0 + 224);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D79EA2D0(*(v0 + 352), *(v0 + 360));
    *(v2 + 16) = v10 + 1;
    v11(v2 + v15 + v12 * v10, v13, v14);
  }

  v16 = (*(v0 + 40) + *(v0 + 336));
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v17 = sub_1D7D27D5C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v0 + 64);
    v20 = *(v19 + 16);
    v19 += 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v51 = *(v19 + 56);
    v52 = v20;
    v50 = (v19 - 8);
    v49 = *MEMORY[0x1E69D7968];
    v53 = v0;
    do
    {
      v55 = *(v0 + 208);
      v22 = *(v0 + 160);
      v54 = *(v0 + 144);
      v23 = *(v0 + 72);
      v24 = v2;
      v25 = *(v0 + 56);
      v52(v23, v21, v25);
      v26 = swift_allocObject();
      v27 = sub_1D7D2821C();
      v29 = v28;
      v30 = v25;
      v2 = v24;
      (*v50)(v23, v30);
      *(v26 + 16) = v27;
      *(v26 + 24) = v29;
      *v22 = v26;
      v55(v22, v49, v54);
      v32 = v24[2];
      v31 = v24[3];
      if (v32 >= v31 >> 1)
      {
        v2 = sub_1D79E4B84(v31 > 1, v32 + 1, 1, v24);
      }

      v0 = v53;
      v33 = *(v53 + 232);
      v34 = *(v53 + 224);
      v35 = *(v53 + 368);
      v36 = *(v53 + 160);
      v37 = *(v53 + 144);
      *(v2 + 16) = v32 + 1;
      v33(v2 + ((v35 + 32) & ~v35) + v34 * v32, v36, v37);
      v21 += v51;
      --v18;
    }

    while (v18);
  }

  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v40 = *(v0 + 40);
  v41 = *(v0 + 48);
  v42 = sub_1D7D3087C();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  sub_1D7D3084C();
  v43 = v40;
  v44 = sub_1D7D3083C();
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E85E0];
  v45[2] = v44;
  v45[3] = v46;
  v45[4] = v43;
  v45[5] = v2;
  sub_1D7AF9808(0, 0, v41, &unk_1D7D57658, v45);
  sub_1D79EA2D0(v38, v39);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1D7C04BC8()
{
  *(v0 + 312) = 0;
  *(v0 + 320) = 0xF000000000000000;
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  sub_1D7C05850(*(v0 + 32) + *(v0 + 372), v3);
  if (v1(v3, 1, v4) == 1)
  {
    sub_1D7C05B74(*(v0 + 128), &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
  }

  else
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 176);
    v7 = *(v0 + 144);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    sub_1D7C059A4(*(v0 + 128), v8);
    v10 = swift_allocObject();
    v11 = *(v9 + 20);
    *(v10 + 40) = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    *(v10 + 48) = sub_1D7C05B2C(&qword_1EC9E6B20, type metadata accessor for DebugRecipe.LoadedRecipe.Fields);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 16));
    sub_1D7C05A08(v8 + v11, boxed_opaque_existential_1);
    strcpy((v10 + 56), "RecipeFields");
    *(v10 + 69) = 0;
    *(v10 + 70) = -5120;
    *v6 = v10;
    v5(v6, *MEMORY[0x1E69D7950], v7);
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1D79E4B84(v13 > 1, v14 + 1, 1, v2);
    }

    v15 = *(v0 + 232);
    v16 = *(v0 + 224);
    v17 = *(v0 + 176);
    v18 = *(v0 + 144);
    v19 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D7C05A6C(*(v0 + 96));
    *(v2 + 2) = v14 + 1;
    v15(&v2[v19 + v16 * v14], v17, v18);
  }

  v20 = *(v0 + 40);
  v21 = OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider;
  *(v0 + 328) = v2;
  *(v0 + 336) = v21;
  v22 = *(v20 + v21 + 24);
  v23 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_1((v20 + v21), v22);
  v24 = swift_task_alloc();
  *(v0 + 344) = v24;
  *v24 = v0;
  v24[1] = sub_1D7C04648;
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);

  return MEMORY[0x1EEDF8420](v26, v25, v22, v23);
}

uint64_t sub_1D7C04E5C()
{
  v1 = *(v0 + 328);
  v2 = (*(v0 + 40) + *(v0 + 336));
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = sub_1D7D27D5C();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 64);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v35 = *(v5 + 56);
    v36 = v6;
    v34 = (v5 - 8);
    v33 = *MEMORY[0x1E69D7968];
    do
    {
      v38 = *(v0 + 208);
      v8 = *(v0 + 160);
      v37 = *(v0 + 144);
      v9 = *(v0 + 72);
      v10 = *(v0 + 56);
      v36(v9, v7, v10);
      v11 = swift_allocObject();
      v12 = sub_1D7D2821C();
      v14 = v13;
      (*v34)(v9, v10);
      *(v11 + 16) = v12;
      *(v11 + 24) = v14;
      *v8 = v11;
      v38(v8, v33, v37);
      v16 = *(v1 + 2);
      v15 = *(v1 + 3);
      if (v16 >= v15 >> 1)
      {
        v1 = sub_1D79E4B84(v15 > 1, v16 + 1, 1, v1);
      }

      v17 = *(v0 + 232);
      v18 = *(v0 + 224);
      v19 = *(v0 + 368);
      v20 = *(v0 + 160);
      v21 = *(v0 + 144);
      *(v1 + 2) = v16 + 1;
      v17(&v1[((v19 + 32) & ~v19) + v18 * v16], v20, v21);
      v7 += v35;
      --v4;
    }

    while (v4);
  }

  v22 = *(v0 + 312);
  v23 = *(v0 + 320);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = sub_1D7D3087C();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  sub_1D7D3084C();
  v27 = v24;
  v28 = sub_1D7D3083C();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v27;
  v29[5] = v1;
  sub_1D7AF9808(0, 0, v25, &unk_1D7D57658, v29);
  sub_1D79EA2D0(v22, v23);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D7C051A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_1D7D2B49C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_1D7D2A5FC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D7C05AC8(0, &qword_1EC9E6B28, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  v5[16] = swift_task_alloc();
  sub_1D7C05AC8(0, &qword_1EC9E6B30, MEMORY[0x1E69D8750], v8);
  v5[17] = swift_task_alloc();
  sub_1D7D3084C();
  v5[18] = sub_1D7D3083C();
  v10 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C053A8, v10, v9);
}

uint64_t sub_1D7C053A8()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v14 = *(v0 + 96);
  v15 = *(v0 + 80);
  v7 = *(v0 + 64);

  swift_getObjectType();
  sub_1D7C05AC8(0, &qword_1EC9E6B38, MEMORY[0x1E69D8750], MEMORY[0x1E69D8790]);
  sub_1D7D2C27C();
  sub_1D7D2A12C();
  v8 = sub_1D7D2A13C();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  (*(v5 + 104))(v3, *MEMORY[0x1E69D79D0], v4);

  sub_1D7D2C19C();
  v9 = sub_1D7D2C1AC();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  (*(v6 + 104))(v14, *MEMORY[0x1E69D7FB8], v15);
  v10 = *(v7 + OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_recipeCoordinator + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 88))(ObjectType, v10);
  sub_1D7D28A3C();
  sub_1D7C05B2C(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  sub_1D7D2B0EC();
  sub_1D7D2A78C();
  sub_1D7C05B74(*(v0 + 136), &qword_1EC9E6B30, MEMORY[0x1E69D8750]);

  **(v0 + 56) = 0;

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D7C057E4()
{
  if (!qword_1EC9E6B10)
  {
    sub_1D7D2C8DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6B10);
    }
  }
}

uint64_t sub_1D7C05850(uint64_t a1, uint64_t a2)
{
  sub_1D7C05AC8(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C058E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E2D8;

  return sub_1D7C051A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D7C059A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C05A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C05A6C(uint64_t a1)
{
  v2 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C05AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C05B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7C05B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C05AC8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7C05BF8()
{
  result = qword_1EC9E6B40;
  if (!qword_1EC9E6B40)
  {
    sub_1D7C05C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6B40);
  }

  return result;
}

void sub_1D7C05C50()
{
  if (!qword_1EC9E6B48)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6B48);
    }
  }
}

uint64_t sub_1D7C05CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7C05E94();
  *a1 = result;
  return result;
}

unint64_t sub_1D7C05D94()
{
  result = qword_1EE0C6298;
  if (!qword_1EE0C6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6298);
  }

  return result;
}

uint64_t sub_1D7C05DE8()
{
  v1 = 0x6F72462065726F4DLL;
  v2 = *v0;
  v3 = 0x6E656D6D6F636552;
  v4 = 0x206F742065726F4DLL;
  if (v2 != 3)
  {
    v4 = 0x6F72462065726F4DLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x646574616C6552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7C05E94()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7C05F08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C06434(0, &qword_1EE0BEB00, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C063E0();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = 0;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *(v13 + *(type metadata accessor for RelatedEndOfArticleFeedGroupConfigData() + 20)) = 1;
    (*(v14 + 32))(v13, v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7C0616C(void *a1)
{
  v3 = v1;
  sub_1D7C06434(0, &qword_1EC9E6B50, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C063E0();
  sub_1D7D31B1C();
  v12[15] = 0;
  sub_1D7D2F06C();
  sub_1D79EB9CC(&qword_1EC9E1BE8);
  sub_1D7D318BC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for RelatedEndOfArticleFeedGroupConfigData() + 20));
    v12[13] = 1;
    sub_1D79EBA10();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7C06338(uint64_t a1)
{
  v2 = sub_1D7C063E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C06374(uint64_t a1)
{
  v2 = sub_1D7C063E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7C063E0()
{
  result = qword_1EE0C15D0;
  if (!qword_1EE0C15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C15D0);
  }

  return result;
}

void sub_1D7C06434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C063E0();
    v7 = a3(a1, &type metadata for RelatedEndOfArticleFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C064AC()
{
  result = qword_1EC9E6B58;
  if (!qword_1EC9E6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6B58);
  }

  return result;
}

unint64_t sub_1D7C06504()
{
  result = qword_1EE0C15C0;
  if (!qword_1EE0C15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C15C0);
  }

  return result;
}

unint64_t sub_1D7C0655C()
{
  result = qword_1EE0C15C8;
  if (!qword_1EE0C15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C15C8);
  }

  return result;
}

id sub_1D7C065B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A3963C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0CBA60);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for TagSubscriptionStatusProvider());
      return sub_1D7A9BB34(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C0667C()
{
  v0 = sub_1D7D2DE9C();
  __swift_allocate_value_buffer(v0, qword_1EE0DE4B8);
  __swift_project_value_buffer(v0, qword_1EE0DE4B8);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0CA138;
  return sub_1D7D2DE7C();
}

uint64_t sub_1D7C06728()
{
  v0 = sub_1D7D2DE9C();
  __swift_allocate_value_buffer(v0, qword_1ECA0BC28);
  __swift_project_value_buffer(v0, qword_1ECA0BC28);
  if (qword_1EC9DFD38 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC9E3328;
  return sub_1D7D2DE7C();
}

uint64_t sub_1D7C0681C()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000003ELL;
  v12[1] = 0x80000001D7D792A0;
  sub_1D7C07B60(0, &qword_1EE0CB3D8);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BC0 = result;
  return result;
}

uint64_t sub_1D7C06A48()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsArticlesModules.EndOfArticleFeed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D7D3034C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D7D285EC();
  qword_1EE0CB6F8 = result;
  return result;
}

uint64_t sub_1D7C06C30()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2867C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB740 = result;
  return result;
}

uint64_t sub_1D7C06E20()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000003DLL;
  v12[1] = 0x80000001D7D79180;
  sub_1D7C07B60(0, &qword_1EE0CB3D8);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BC8 = result;
  return result;
}

uint64_t sub_1D7C07050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D7D285FC();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t sub_1D7C0717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1D7D285FC();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsArticlesModules.EndOfRecipeFeed.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C072C4()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsArticlesModules.EndOfRecipeFeed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D7D3034C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D7D285EC();
  qword_1EC9E6BD0 = result;
  return result;
}

uint64_t sub_1D7C074AC()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BD8 = result;
  return result;
}

uint64_t sub_1D7C0769C()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BE0 = result;
  return result;
}

uint64_t sub_1D7C0788C()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BE8 = result;
  return result;
}

void sub_1D7C07B60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D2870C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_1D7C07BE4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for ArticleBottomPaletteViewController()) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1D7C07C50()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C07CBC(uint64_t a1, uint64_t a2, char a3)
{
  v4[7] = a2;
  v4[8] = v3;
  v4[6] = a1;
  v4[9] = sub_1D7D3084C();
  v4[10] = sub_1D7D3083C();
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_1D7C07D98;

  return sub_1D7C0807C(a1, a2, a3);
}

uint64_t sub_1D7C07D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[12] = a2;

  v6 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C07EE0, v6, v5);
}

uint64_t sub_1D7C07EE0()
{
  v1 = v0[12];

  if (v1)
  {
    v2 = v0[12];
    v3 = v0[3];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = sub_1D7C08CB8(v0[5]);
    v8 = sub_1D7A7FC04(v6, v4);
    [v7 setBackgroundColor_];

    v9 = sub_1D7C07BE4();
    v10 = v7;
    sub_1D7B0BBA8(v7);

    v14 = *(v5 + 64);
    sub_1D7C08D80();
    v11 = v14;
    sub_1D7D3145C();

    MEMORY[0x1DA70DE90](v3, v2);
    swift_bridgeObjectRelease_n();

    sub_1D7D2C23C();
    swift_allocObject();
    v1 = sub_1D7D2C21C();
  }

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_1D7C0807C(uint64_t a1, uint64_t a2, char a3)
{
  v3[12] = a1;
  v3[13] = sub_1D7D3084C();
  v3[14] = sub_1D7D3083C();
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_1D7C0815C;

  return sub_1D7C0841C((v3 + 7), a1, a2, a3);
}

uint64_t sub_1D7C0815C()
{

  v1 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C08298, v1, v0);
}

uint64_t sub_1D7C08298()
{

  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_1D79E14FC((v0 + 56), v0 + 16);
    if (v1)
    {
      v2 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v3 = swift_unknownObjectRetain();
      v4 = sub_1D7BB7128(v3);
      if (v5)
      {
        v8 = v4;
        v9 = v5;
        v10 = v6;
        v11 = v7;
        v12 = [v2 identifier];
        v13 = sub_1D7D3034C();
        v15 = v14;

        sub_1D7C08E3C();
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7D3B4D0;
        *(v16 + 32) = v8;
        *(v16 + 40) = v9;
        *(v16 + 48) = v10;
        *(v16 + 56) = v11;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v0 + 16);
        v17 = v16;
        v18 = v15;
        v19 = v13;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_1D7C08EE0(v0 + 56, &unk_1EE0C17D0, sub_1D7C08DD8);
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
LABEL_9:
  v20 = *(v0 + 8);

  return v20(v19, v18, v17);
}

uint64_t sub_1D7C0841C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = v4;
  *(v5 + 188) = a4;
  *(v5 + 56) = a1;
  sub_1D7C08E8C(0, &qword_1EE0BF750, MEMORY[0x1E69B6038]);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = sub_1D7D3084C();
  *(v5 + 96) = sub_1D7D3083C();
  v7 = sub_1D7D307DC();
  *(v5 + 104) = v7;
  *(v5 + 112) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D7C08508, v7, v6);
}

uint64_t sub_1D7C08508(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (v3[8])
  {
    v4 = *(v3[9] + 16);
    v3[15] = v4;
    v5 = *(v4 + 16);
    v3[16] = v5;
    if (v5)
    {
      v3[17] = 0;
      if (*(v4 + 16))
      {
        sub_1D799CC84(v4 + 32, (v3 + 2));
        v3[18] = *__swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
        v3[19] = sub_1D7D3083C();
        v6 = sub_1D7D307DC();
        a3 = v7;
        v3[20] = v6;
        v3[21] = v7;
        a1 = sub_1D7C08644;
        a2 = v6;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    v8 = v3[7];
  }

  else
  {
    v8 = v3[7];
  }

  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;

  v9 = v3[1];

  return v9();
}

uint64_t sub_1D7C08644()
{
  v1 = *(v0 + 188);
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  if (sub_1D7D2F9CC() & 1) == 0 || (v1)
  {

    v6 = *(v0 + 104);
    v7 = *(v0 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1D7C08B7C, v6, v7);
  }

  else
  {
    v2 = *(v0 + 144);
    v3 = v2[10];
    v4 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v3);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_1D7C0878C;

    return MEMORY[0x1EEE22440](v3, v4);
  }
}

uint64_t sub_1D7C0878C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D7C088C0, v3, v2);
}

uint64_t sub_1D7C088C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v4 = [v3 articleID];
  sub_1D7D3034C();

  sub_1D7D2F84C();
  swift_unknownObjectRelease();

  v5 = sub_1D7D2EECC();
  *(v0 + 184) = (*(*(v5 - 8) + 48))(v2, 1, v5);
  sub_1D7C08EE0(v2, &qword_1EE0BF750, MEMORY[0x1E69B6038]);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D7C08A10, v6, v7);
}

uint64_t sub_1D7C08A10()
{
  if (*(v0 + 184) != 1)
  {
    v7 = *(v0 + 56);

    sub_1D799CC84(v0 + 16, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_5;
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136) + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {

    v6 = *(v0 + 56);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
LABEL_5:

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 136) + 1;
  *(v0 + 136) = v10;
  v11 = *(v0 + 120);
  if (v10 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1D799CC84(v11 + 40 * v10 + 32, v0 + 16);
    *(v0 + 144) = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 152) = sub_1D7D3083C();
    v12 = sub_1D7D307DC();
    v5 = v13;
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    v3 = sub_1D7C08644;
    v4 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D7C08B7C()
{
  v1 = v0[16];
  v2 = v0[17] + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {

    v6 = v0[7];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[17] + 1;
    v0[17] = v9;
    v10 = v0[15];
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1D799CC84(v10 + 40 * v9 + 32, (v0 + 2));
      v0[18] = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v0[19] = sub_1D7D3083C();
      v11 = sub_1D7D307DC();
      v5 = v12;
      v0[20] = v11;
      v0[21] = v12;
      v3 = sub_1D7C08644;
      v4 = v11;
    }

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }
}

id sub_1D7C08CB8(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ArticleNavigationBarPaletteContent()) initWithFrame_];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 - 8);
      v4 += 32;

      v7 = v5(v6);
      [v2 addSubview_];

      --v3;
    }

    while (v3);
  }

  return v2;
}

unint64_t sub_1D7C08D80()
{
  result = qword_1EC9E6F90;
  if (!qword_1EC9E6F90)
  {
    type metadata accessor for ArticleBottomPaletteViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6F90);
  }

  return result;
}

unint64_t sub_1D7C08DD8()
{
  result = qword_1EE0C17E0;
  if (!qword_1EE0C17E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C17E0);
  }

  return result;
}

void sub_1D7C08E3C()
{
  if (!qword_1EC9E6C00)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6C00);
    }
  }
}

void sub_1D7C08E8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C08EE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7C08E8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C08F3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D7C09034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 112))(a1, v8, a2, a3);
  return sub_1D7C0E7C0(v8, type metadata accessor for ArticleNavigationAction);
}

void sub_1D7C09110()
{
  swift_getObjectType();
  sub_1D7D3011C();
  sub_1D7D294BC();
  sub_1D7AE6C50();
  v0 = sub_1D7D30E1C();
  sub_1D7D2BA4C();
  sub_1D7D293BC();

  v1 = sub_1D7D2934C();
  sub_1D7D293CC();

  v2 = sub_1D7D30E1C();
  sub_1D7D293EC();
}

uint64_t sub_1D7C09270()
{
  v0 = swift_unknownObjectRetain();
  v1 = sub_1D7B1FF4C(v0);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D7C09308(void *a1, void *a2)
{
  (*(*((*MEMORY[0x1E69E7D40] & *a2) + 0x58) + 40))(*a1, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50));
  sub_1D7BEC448();
  sub_1D7C0E5E0(&qword_1EE0C0030, sub_1D7BEC448);
  v2 = sub_1D7D2A6BC();

  return v2;
}

uint64_t sub_1D7C09430(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_1D7D294EC();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = (a2 + *((*v3 & *a2) + 0xD8));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  result = sub_1D7D2F9EC();
  if ((result & 1) == 0)
  {
    return sub_1D7C0954C();
  }

  return result;
}

uint64_t sub_1D7C0954C()
{
  v156 = sub_1D7D2836C();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v1);
  v154 = &v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E6AC(0, &qword_1EE0C0048, sub_1D7A2B04C);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v150 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v149 = &v142 - v8;
  sub_1D7C0E884(0);
  v162 = v9;
  v161 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v148 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v159 = &v142 - v14;
  sub_1D7C0E8A4();
  v167 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v158 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v166 = &v142 - v20;
  v21 = sub_1D7D2CCDC();
  v169 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v153 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v151 = &v142 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v147 = &v142 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v160 = &v142 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v157 = &v142 - v35;
  v152 = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v168 = &v142 - v39;
  v40 = sub_1D7D283FC();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v173 = &v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v172 = &v142 - v46;
  v47 = sub_1D7D2B52C();
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v165 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E950(0, &qword_1EE0C0080, MEMORY[0x1E69D7840]);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v164 = &v142 - v52;
  sub_1D7A2B04C();
  v177 = v53;
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v55);
  v178 = &v142 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE8404(0);
  v58 = v57;
  v59 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57, v60);
  v163 = &v142 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v142 - v64;
  v171 = v0;
  sub_1D7D2A6EC();
  v179 = v183[0];
  sub_1D7C0E628(0);
  sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628);
  sub_1D7D2AEEC();

  sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
  sub_1D7D309EC();
  sub_1D7D30A5C();
  if (sub_1D7D30A4C() < 2)
  {
    return (*(v59 + 8))(v65, v58);
  }

  v146 = v54;
  v170 = v59;
  v143 = v21;
  v144 = v41;
  v145 = v40;
  sub_1D7D309EC();
  sub_1D7D30A5C();
  v67 = v179;
  v68 = v65;
  if (v179 == v183[0])
  {
    return (*(v170 + 8))(v68, v58);
  }

  v175 = (v146 + 16);
  v176 = (v146 + 8);
  v69 = v177;
  v70 = v178;
  while (1)
  {
    v71 = sub_1D7D30AAC();
    v72 = *v175;
    (*v175)(v70);
    v71(v183, 0);
    sub_1D7D2A43C();
    v73 = v58;
    v182 = v183[0];
    EndOfArticleSectionDescriptor.type.getter(&v181);
    v74 = *v176;
    (*v176)(v70, v69);

    if (!v181)
    {
      break;
    }

    sub_1D7D30A6C();
    sub_1D7D30A5C();
    v67 = v179;
    v58 = v73;
    if (v179 == v183[0])
    {
      return (*(v170 + 8))(v68, v58);
    }
  }

  sub_1D7D309EC();
  sub_1D7D30A5C();
  v75 = v179;
  if (v179 == v183[0])
  {
LABEL_12:
    v79 = *(v170 + 8);
    v80 = v68;
    return v79(v80, v73);
  }

  v76 = v177;
  v77 = v178;
  while (1)
  {
    v174 = v75;
    v78 = sub_1D7D30AAC();
    v72(v77);
    v78(v183, 0);
    sub_1D7D2A43C();
    v182 = v183[0];
    EndOfArticleSectionDescriptor.type.getter(&v181);
    v74(v77, v76);

    if (v181 == 1)
    {
      break;
    }

    sub_1D7D30A6C();
    sub_1D7D30A5C();
    v75 = v179;
    if (v179 == v183[0])
    {
      goto LABEL_12;
    }
  }

  v81 = v67;
  sub_1D7D2C81C();
  sub_1D7C0E5E0(&qword_1EE0C0060, sub_1D7A2B04C);
  v82 = v177;
  sub_1D7D309EC();
  sub_1D7D30A5C();
  v83 = v178;
  v74(v178, v82);
  if (v183[0] == v179)
  {
    return (*(v170 + 8))(v68, v73);
  }

  sub_1D7D2C81C();
  sub_1D7D309EC();
  sub_1D7D30A5C();
  v74(v83, v82);
  if (v183[0] == v179)
  {
    return (*(v170 + 8))(v68, v73);
  }

  (*(v170 + 16))(v163, v68, v73);
  v183[0] = *(v171 + *((*MEMORY[0x1E69E7D40] & *v171) + 0xA8));
  sub_1D7B56C18();
  sub_1D7C0E5E0(&unk_1EE0BFE58, sub_1D7B56C18);
  sub_1D7D2B77C();
  sub_1D7D2BD5C();
  sub_1D7C0EA10(0, &qword_1EE0BF8F0, MEMORY[0x1E69B5B68]);
  swift_allocObject();
  v84 = sub_1D7D2E6BC();
  if (v174 >= v81)
  {
    v85 = v81;
  }

  else
  {
    v85 = v174;
  }

  if (v174 <= v81)
  {
    v86 = v81;
  }

  else
  {
    v86 = v174;
  }

  v87 = v68;
  v88 = v172;
  MEMORY[0x1DA705E40](0, v85);
  v89 = v173;
  MEMORY[0x1DA705E40](0, v86);
  v90 = v166;
  sub_1D7D2E6AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v91 = v90;
    v92 = v161;
    v93 = v159;
    v94 = v162;
    (*(v161 + 32))(v159, v91, v162);
    sub_1D7C0E5E0(&unk_1EE0BF908, sub_1D7C0E884);
    swift_willThrowTypedImpl();

    (*(v92 + 8))(v93, v94);
    v95 = *(v144 + 8);
    v96 = v145;
    v95(v89, v145);
    v95(v88, v96);
    v79 = *(v170 + 8);
    v80 = v87;
    return v79(v80, v73);
  }

  v175 = v87;
  v178 = v73;
  v97 = (v169 + 32);
  v98 = *(v169 + 32);
  v99 = v84;
  v100 = v157;
  v101 = v143;
  v98(v157, v90, v143);
  v98(v168, v100, v101);
  v102 = v158;
  sub_1D7D2E6AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v103 = v102;
    v104 = v161;
    v105 = v148;
    v106 = v162;
    (*(v161 + 32))(v148, v103, v162);
    sub_1D7C0E5E0(&unk_1EE0BF908, sub_1D7C0E884);
    swift_willThrowTypedImpl();

    (*(v104 + 8))(v105, v106);
    (*(v169 + 8))(v168, v101);
    v107 = *(v144 + 8);
    v108 = v145;
    v107(v173, v145);
    v109 = v88;
  }

  else
  {
    v174 = v99;
    v110 = v147;
    v98(v147, v102, v101);
    v98(v160, v110, v101);
    v183[0] = 0;
    v183[1] = 0xE000000000000000;
    v111 = v149;
    sub_1D7D2C7AC();
    v112 = *(v146 + 48);
    v113 = v177;
    v114 = v112(v111, 1, v177);
    v166 = v97;
    v115 = v98;
    if (v114 == 1)
    {
      sub_1D7C0F3D4(v111, &qword_1EE0C0048, sub_1D7A2B04C);
      v116 = 0;
      v117 = 0;
    }

    else
    {
      v116 = sub_1D7D2A44C();
      v117 = v118;
      v74(v111, v113);
    }

    v119 = v156;
    v120 = v154;
    v121 = v150;
    v167 = v115;
    v179 = v116;
    v180 = v117;
    sub_1D7992238();
    sub_1D7D315DC();

    MEMORY[0x1DA70DE90](45, 0xE100000000000000);
    sub_1D7D2C7AC();
    if (v112(v121, 1, v113) == 1)
    {
      sub_1D7C0F3D4(v121, &qword_1EE0C0048, sub_1D7A2B04C);
      v122 = 0;
      v123 = 0;
    }

    else
    {
      v122 = sub_1D7D2A44C();
      v123 = v124;
      v74(v121, v113);
    }

    v179 = v122;
    v180 = v123;
    sub_1D7D315DC();

    v177 = v183[0];
    v125 = (v171 + *((*MEMORY[0x1E69E7D40] & *v171) + 0xC8));
    v126 = v125[4];
    v176 = v125[3];
    v165 = v126;
    v171 = __swift_project_boxed_opaque_existential_1(v125, v176);
    sub_1D7D2835C();
    v164 = sub_1D7D2834C();
    v163 = v127;
    (*(v155 + 8))(v120, v119);
    v128 = dispatch_group_create();
    v130 = v168;
    v129 = v169;
    v131 = *(v169 + 16);
    v132 = v151;
    v133 = v143;
    v131(v151, v168, v143);
    v134 = v153;
    v131(v153, v160, v133);
    v135 = *(v129 + 80);
    v136 = (v135 + 16) & ~v135;
    v137 = (v152 + v135 + v136) & ~v135;
    v138 = swift_allocObject();
    v139 = v132;
    v140 = v167;
    v167(v138 + v136, v139, v133);
    v140(v138 + v137, v134, v133);
    sub_1D7D2E88C();

    v141 = *(v129 + 8);
    v141(v160, v133);
    v141(v130, v133);
    v107 = *(v144 + 8);
    v108 = v145;
    v107(v173, v145);
    v109 = v172;
  }

  v107(v109, v108);
  return (*(v170 + 8))(v175, v178);
}

uint64_t sub_1D7C0A8CC()
{
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79A02D8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7D3B4D0;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D79D6AE0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D7D29AAC();
}

uint64_t sub_1D7C0AA24()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;

  sub_1D7D2A72C();
}

void sub_1D7C0AB28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        *(swift_allocObject() + 16) = v2;
        swift_unknownObjectRetain();
        sub_1D7D294EC();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7C0AC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  sub_1D7C0E6AC(0, &qword_1EC9E6C70, type metadata accessor for RouteModel);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RouteModel();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v33, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0F430(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xB8), v34, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v18 = v35;
  if (v35)
  {
    v31 = v10;
    v19 = v14;
    v20 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v21 = *(v20 + 56);
    v22 = v20;
    v14 = v19;
    v10 = v31;
    v21(a1, v18, v22);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_1D79E1030(v34, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D7C0B050(a1, v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D7C0E7C0(v17, type metadata accessor for ArticleNavigationAction);
    return sub_1D7C0F3D4(v9, &qword_1EC9E6C70, type metadata accessor for RouteModel);
  }

  else
  {
    sub_1D7B5A834(v9, v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v27 = *(v25 + 88);
      v28 = *v26;
      v29 = *(*v26 + 40);
      v30 = *(*v26 + 48);
      __swift_project_boxed_opaque_existential_1((*v26 + 16), v29);
      sub_1D799CC84(v28 + 56, v34);
      (*(v30 + 32))(v14, v32, v27, v34, v29, v30);
      sub_1D79E1030(v34, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
      sub_1D7C0E7C0(v14, type metadata accessor for RouteModel);
      sub_1D7C0E7C0(v17, type metadata accessor for ArticleNavigationAction);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7C0E7C0(v14, type metadata accessor for RouteModel);
      return sub_1D7C0E7C0(v17, type metadata accessor for ArticleNavigationAction);
    }
  }
}

uint64_t sub_1D7C0B050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v89 = a3;
  v4 = sub_1D7D2D5CC();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v76 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8();
  v82 = v7;
  v79 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v81 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE8404(0);
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v86 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleBlueprintRouteResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v85 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2ED3C();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2AFB8();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ArticleBlueprintRouteRequest(0);
  MEMORY[0x1EEE9AC00](v80, v26);
  v28 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998();
  v90 = *(v29 - 8);
  v91 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D29EEC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v75 = *(v37 + 48);
    v38 = v79;
    (*(v79 + 32))();
    v39 = *(v22 + 16);
    v72[1] = a1;
    v39(v25, a1, v21);
    v40 = v76;
    sub_1D7D2EBCC();
    v41 = sub_1D7D2D5BC();
    (*(v77 + 8))(v40, v78);
    *(v28 + 10) = 0;
    *(v28 + 3) = 0u;
    *(v28 + 4) = 0u;
    v28[88] = -1;
    v42 = *(v80 + 36);
    v43 = *MEMORY[0x1E69B5EB0];
    v44 = sub_1D7D2EB7C();
    (*(*(v44 - 8) + 104))(&v28[v42], v43, v44);
    v45 = sub_1D7D29ECC();
    v47 = v46;
    (*(v22 + 8))(v25, v21);
    *v28 = v45;
    *(v28 + 1) = v47;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v41;
    *(v28 + 20) = 512;
    v48 = v85;
    sub_1D7B49DB0(v28, v84, &off_1F52AC060, v83, 0, 0, v85);
    sub_1D7B4C208();
    v50 = *(v49 + 48);
    v51 = v89;
    sub_1D7C0E648(v48, v89);
    sub_1D7D2A6EC();
    v92 = v93;
    sub_1D7C0E628(0);
    sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628);
    v52 = v86;
    sub_1D7D2AEEC();

    v53 = sub_1D7C0BB18();
    (*(v87 + 8))(v52, v88);
    sub_1D7C0E7C0(v48, type metadata accessor for ArticleBlueprintRouteResult);
    sub_1D7C0E7C0(v28, type metadata accessor for ArticleBlueprintRouteRequest);
    (*(v38 + 8))(v81, v82);
    *(v51 + v50) = v53;
    v54 = type metadata accessor for RouteModel();
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v51, 0, 1, v54);
    return (*(v90 + 8))(&v36[v75], v91);
  }

  else
  {
    v56 = *(v90 + 32);
    v73 = v32;
    v56(v32, v36, v91);
    (*(v22 + 16))(v25, a1, v21);
    sub_1D7D2EBCC();
    v57 = sub_1D7D2ED1C();
    (*(v74 + 8))(v19, v75);
    v58 = v84;
    sub_1D7C0BA88(v84, (v28 + 48));
    v59 = *(v80 + 36);
    v60 = *MEMORY[0x1E69B5EB0];
    v61 = sub_1D7D2EB7C();
    (*(*(v61 - 8) + 104))(&v28[v59], v60, v61);
    v62 = sub_1D7D29ECC();
    v64 = v63;
    (*(v22 + 8))(v25, v21);
    *v28 = v62;
    *(v28 + 1) = v64;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v57;
    *(v28 + 20) = 512;
    v65 = v85;
    sub_1D7B49DB0(v28, v58, &off_1F52AC060, v83, 0, 0, v85);
    sub_1D7B4C208();
    v67 = *(v66 + 48);
    v68 = v89;
    sub_1D7C0E648(v65, v89);
    sub_1D7D2A6EC();
    v92 = v93;
    sub_1D7C0E628(0);
    sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628);
    v69 = v86;
    sub_1D7D2AEEC();

    v70 = sub_1D7C0BB18();
    (*(v87 + 8))(v69, v88);
    sub_1D7C0E7C0(v65, type metadata accessor for ArticleBlueprintRouteResult);
    sub_1D7C0E7C0(v28, type metadata accessor for ArticleBlueprintRouteRequest);
    (*(v90 + 8))(v73, v91);
    *(v68 + v67) = v70;
    v71 = type metadata accessor for RouteModel();
    swift_storeEnumTagMultiPayload();
    return (*(*(v71 - 8) + 56))(v68, 0, 1, v71);
  }
}

uint64_t sub_1D7C0BA88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x68)) + OBJC_IVAR___NAArticleFooterContext_articleGroupData);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  if (v5 >> 1 == 0xFFFFFFFF)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = -1;
  }

  else
  {
    *(a2 + 40) = 1;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return sub_1D7A03D0C(v3, v4, v5);
}

BOOL sub_1D7C0BB18()
{
  sub_1D7C0E6AC(0, &qword_1EE0C0048, sub_1D7A2B04C);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v10 - v2;
  sub_1D7A2AFB8();
  sub_1D7D29ECC();
  sub_1D7AE8404(0);
  sub_1D7D2C79C();

  sub_1D7A2B04C();
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(v3, 1, v4) == 1)
  {
    sub_1D7C0F3D4(v3, &qword_1EE0C0048, sub_1D7A2B04C);
    return 0;
  }

  else
  {
    sub_1D7D2A43C();
    v8 = v10[1];
    (*(v6 + 8))(v3, v5);
    v7 = v8 >> 61 == 4;
  }

  return v7;
}

uint64_t sub_1D7C0BCB0()
{
  sub_1D7C0F430(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8), v4, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v1 = v5;
  if (!v5)
  {
    return sub_1D79E1030(v4, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D7C0BD88(uint64_t a1)
{
  sub_1D7C0F430(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8), v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v3 = v7;
  if (!v7)
  {
    return sub_1D79E1030(v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 16))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D7C0BE68(uint64_t a1)
{
  sub_1D7C0F430(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8), v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v3 = v7;
  if (!v7)
  {
    return sub_1D79E1030(v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 24))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D7C0BF48(uint64_t a1)
{
  sub_1D7C0F430(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8), v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v3 = v7;
  if (!v7)
  {
    return sub_1D79E1030(v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D7C0C028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EndOfArticleModel();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2AFB8();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E700(0, &unk_1EE0BB2C8, MEMORY[0x1E69D7BE8]);
  sub_1D7D2AB9C();
  sub_1D7D29EEC();
  (*(v10 + 8))(v13, v9);
  v14 = EndOfArticleModel.headline.getter();
  sub_1D7C0E7C0(v7, type metadata accessor for EndOfArticleModel);
  v15 = MEMORY[0x1E69E7D40];
  if (v14)
  {
    [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0)) markArticleAsSeenWithHeadline_];
    swift_unknownObjectRelease();
  }

  sub_1D7C0F430(v2 + *((*v15 & *v2) + 0xB8), v20, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v16 = v21;
  if (!v21)
  {
    return sub_1D79E1030(v20, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v17 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v17 + 40))(a1, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D7C0C2A0(uint64_t a1)
{
  sub_1D7C0F430(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8), v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v3 = v7;
  if (!v7)
  {
    return sub_1D79E1030(v6, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 48))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D7C0C380(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v34 = a2;
  v35 = MEMORY[0x1E69B4228];
  sub_1D7C0E6AC(0, &unk_1EE0BFAD0, MEMORY[0x1E69B4228]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - v6;
  v8 = sub_1D7D2CCFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2CD1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B4008], v8);
  sub_1D7D2CD0C();
  sub_1D7C0E5E0(&qword_1EE0BFB50, MEMORY[0x1E69B4028]);
  sub_1D7D2CFDC();
  (*(v14 + 8))(v17, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = *MEMORY[0x1E69B4210];
  v32 = sub_1D7D2D02C();
  v20 = *(v32 - 8);
  v31 = *(v20 + 104);
  v33 = v20 + 104;
  v31(v7, v19, v32);
  v30 = *MEMORY[0x1E69B4220];
  v21 = v30;
  v22 = sub_1D7D2D03C();
  v23 = *(v22 - 8);
  v29 = *(v23 + 104);
  v29(v7, v21, v22);
  v28 = *(v23 + 56);
  v28(v7, 0, 1, v22);
  sub_1D7D2CCDC();
  sub_1D7C0E5E0(&unk_1EE0BFB60, MEMORY[0x1E69B3FD8]);
  sub_1D7D2CFAC();
  v24 = v35;
  sub_1D7C0F3D4(v7, &unk_1EE0BFAD0, v35);
  v25 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v31(v7, *MEMORY[0x1E69B4218], v32);
  v29(v7, v30, v22);
  v28(v7, 0, 1, v22);
  sub_1D7D2CFAC();
  return sub_1D7C0F3D4(v7, &unk_1EE0BFAD0, v24);
}

uint64_t sub_1D7C0C7E4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  if (a4)
  {
    sub_1D7D309AC();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    v11 = sub_1D7D309AC();
  }

LABEL_4:
  if (a6)
  {
    sub_1D7D309AC();
  }

  v14 = a3;
  v15 = a7;
  v16 = a1;
  if (v15)
  {
    sub_1D7D309AC();
  }

  sub_1D7C0EBD0(v11, a8);
}

void sub_1D7C0C96C(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1D79C92AC(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  swift_unknownObjectRelease();

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x98)]);
  swift_unknownObjectRelease();

  sub_1D79E1030(&a1[*((*v3 & *a1) + 0xB8)], &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xC8)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD8)]);
  v5 = *&a1[*((*v3 & *a1) + 0xE0)];
}

uint64_t sub_1D7C0CC9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v172 = *MEMORY[0x1E69E7D40] & v4;
  v175 = sub_1D7D2E53C();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v6);
  v8 = v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1D7D2D5DC();
  v187 = *(v191 - 1);
  MEMORY[0x1EEE9AC00](v191, v9);
  v11 = v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E54C();
  v183 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v165 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v169 = v155 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v155 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v161 = v155 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v170 = v155 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v177 = v155 - v30;
  sub_1D7A2B04C();
  v181 = v31;
  v178 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v164 = v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v180 = v155 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v156 = v155 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v168 = v155 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v185 = v155 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v158 = v155 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v176 = v155 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v190 = v155 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v163 = v155 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v160 = v155 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v179 = v155 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v155[1] = v155 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v167 = v155 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v184 = (v155 - v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  v157 = v155 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = v155 - v78;
  MEMORY[0x1EEE9AC00](v80, v81);
  v189 = v155 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v162 = v155 - v85;
  sub_1D7AE8404(0);
  v186 = v86;
  v188 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v87);
  v182 = v155 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = v155 - v91;
  v171 = *(v2 + *((v5 & v4) + 0x90));
  sub_1D7D2A6EC();
  v192 = v195;
  sub_1D7C0E628(0);
  sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628);
  sub_1D7D2AEEC();

  v93 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8);
  v173 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + v93), *(v2 + v93 + 24));
  if ((sub_1D7D2F9EC() & 1) == 0)
  {
    sub_1D7D2E50C();
    v107 = sub_1D7D2D58C();
    (*(v187 + 1))(v11, v191);
    v98 = v186;
    v99 = v21;
    if (v107 != 1102)
    {
      if (v107 == 1101)
      {
        v166 = a1;
        v159 = v8;
        v128 = *(v188 + 16);
        v187 = v92;
        v189 = (v188 + 16);
        v184 = v128;
        v128(v182, v92, v186);
        v129 = sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404);
        v130 = v169;
        v179 = v129;
        sub_1D7D304FC();
        v131 = *(v183 + 36);
        sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
        sub_1D7D30A5C();
        v132 = v181;
        v133 = v168;
        if (*(v130 + v131) != v195)
        {
          v134 = (v178 + 16);
          v190 = (v178 + 32);
          v191 = (v178 + 8);
          while (1)
          {
            v135 = sub_1D7D30AAC();
            v136 = v185;
            (*v134)(v185);
            v135(&v195, 0);
            sub_1D7D30A6C();
            v137 = *v190;
            (*v190)(v133, v136, v132);
            sub_1D7D2A43C();
            v138 = v132;
            v192 = v195;
            EndOfArticleSectionDescriptor.type.getter(&v194);

            if (v194 == 1)
            {
              break;
            }

            (*v191)(v133, v132);
            sub_1D7D30A5C();
            if (*(v130 + v131) == v195)
            {
              goto LABEL_26;
            }
          }

          sub_1D7C0E7C0(v130, sub_1D7C0E54C);
          v154 = &v190;
          goto LABEL_46;
        }

LABEL_26:
        sub_1D7C0E7C0(v130, sub_1D7C0E54C);
        v184(v182, v187, v98);
        v99 = v165;
        sub_1D7D304FC();
        v139 = *(v183 + 36);
        sub_1D7D30A5C();
        v140 = v164;
        if (*(v99 + v139) != v195)
        {
          v141 = (v178 + 16);
          v190 = (v178 + 32);
          v191 = (v178 + 8);
          while (1)
          {
            v142 = sub_1D7D30AAC();
            v143 = v180;
            (*v141)(v180);
            v142(&v195, 0);
            sub_1D7D30A6C();
            v144 = *v190;
            (*v190)(v140, v143, v132);
            sub_1D7D2A43C();
            v138 = v132;
            v192 = v195;
            EndOfArticleSectionDescriptor.type.getter(&v194);

            if (v194 == 3)
            {
              break;
            }

            (*v191)(v140, v132);
            sub_1D7D30A5C();
            if (*(v99 + v139) == v195)
            {
              goto LABEL_36;
            }
          }

          sub_1D7C0E7C0(v99, sub_1D7C0E54C);
          v151 = v156;
          v144(v156, v140, v132);
          v152 = v175;
          v153 = v159;
          goto LABEL_47;
        }

LABEL_36:
        v127 = v99;
LABEL_37:
        sub_1D7C0E7C0(v127, sub_1D7C0E54C);
        return (*(v188 + 8))(v187, v98);
      }

      if (v107)
      {
        return (*(v188 + 8))(v92, v186);
      }
    }

    v166 = a1;
    v159 = v8;
    v108 = *(v188 + 16);
    v187 = v92;
    v108(v182, v92, v186);
    sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404);
    sub_1D7D304FC();
    v109 = *(v183 + 36);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
    sub_1D7D30A5C();
    v110 = v181;
    v111 = v176;
    if (*&v21[v109] != v195)
    {
      v112 = (v178 + 16);
      v189 = (v178 + 32);
      v191 = (v178 + 8);
      while (1)
      {
        v113 = sub_1D7D30AAC();
        v114 = v190;
        (*v112)(v190);
        v113(&v195, 0);
        sub_1D7D30A6C();
        v115 = *v189;
        (*v189)(v111, v114, v110);
        sub_1D7D2A43C();
        v116 = v110;
        v192 = v195;
        EndOfArticleSectionDescriptor.type.getter(&v194);

        if (!v194)
        {
          break;
        }

        (*v191)(v111, v110);
        sub_1D7D30A5C();
        if (*(v99 + v109) == v195)
        {
          goto LABEL_36;
        }
      }

      sub_1D7C0E7C0(v99, sub_1D7C0E54C);
      v151 = v163;
      v115(v163, v111, v110);
      v152 = v175;
      v153 = v159;
      v138 = v116;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  v187 = v92;
  v94 = sub_1D7D2E51C();
  v96 = v95;
  v195 = v94;
  v196 = v95;
  v192 = 0x65526F5465726F6DLL;
  v193 = 0xEA00000000006461;
  sub_1D79EF194();
  v97 = sub_1D7D3136C();
  v166 = a1;
  if (v97)
  {
    v159 = v8;

    v98 = v186;
    (*(v188 + 16))(v182, v187, v186);
    sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404);
    v99 = v177;
    sub_1D7D304FC();
    v100 = *(v183 + 36);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
    sub_1D7D30A5C();
    v101 = v181;
    if (*(v99 + v100) != v195)
    {
      v102 = (v178 + 16);
      v190 = (v178 + 32);
      v191 = (v178 + 8);
      while (1)
      {
        v103 = sub_1D7D30AAC();
        v104 = v189;
        (*v102)(v189);
        v103(&v195, 0);
        sub_1D7D30A6C();
        v105 = *v190;
        (*v190)(v79, v104, v101);
        sub_1D7D2A43C();
        v106 = v101;
        v192 = v195;
        EndOfArticleSectionDescriptor.type.getter(&v194);

        if (v194 == 3)
        {
          break;
        }

        (*v191)(v79, v101);
        sub_1D7D30A5C();
        if (*(v99 + v100) == v195)
        {
          goto LABEL_36;
        }
      }

      sub_1D7C0E7C0(v99, sub_1D7C0E54C);
      v151 = v162;
      v105(v162, v79, v101);
      v152 = v175;
      v153 = v159;
      v138 = v106;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  v195 = v94;
  v196 = v96;
  v192 = 0x646574616C6572;
  v193 = 0xE700000000000000;
  v117 = sub_1D7D3136C();
  v98 = v186;
  v118 = v181;
  if (v117)
  {
    v159 = v8;

    (*(v188 + 16))(v182, v187, v98);
    sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404);
    v119 = v170;
    sub_1D7D304FC();
    v120 = *(v183 + 36);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
    sub_1D7D30A5C();
    v121 = v167;
    if (*(v119 + v120) != v195)
    {
      v122 = (v178 + 16);
      v190 = (v178 + 32);
      v191 = (v178 + 8);
      while (1)
      {
        v123 = sub_1D7D30AAC();
        v124 = v184;
        (*v122)(v184);
        v123(&v195, 0);
        sub_1D7D30A6C();
        v125 = *v190;
        (*v190)(v121, v124, v118);
        sub_1D7D2A43C();
        v126 = v118;
        v192 = v195;
        EndOfArticleSectionDescriptor.type.getter(&v194);

        if (v194 == 1)
        {
          break;
        }

        (*v191)(v121, v118);
        sub_1D7D30A5C();
        if (*(v119 + v120) == v195)
        {
          goto LABEL_21;
        }
      }

      sub_1D7C0E7C0(v119, sub_1D7C0E54C);
      v151 = v157;
      v125(v157, v121, v118);
      v153 = v159;
      v138 = v126;
      v152 = v175;
      goto LABEL_47;
    }

LABEL_21:
    v127 = v119;
    goto LABEL_37;
  }

  v195 = v94;
  v196 = v96;
  v192 = 0x6D6F724665726F6DLL;
  v193 = 0xE800000000000000;
  v145 = sub_1D7D3136C();

  if ((v145 & 1) == 0)
  {
    return (*(v188 + 8))(v187, v98);
  }

  v159 = v8;
  (*(v188 + 16))(v182, v187, v98);
  sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404);
  v99 = v161;
  sub_1D7D304FC();
  v146 = *(v183 + 36);
  sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
  sub_1D7D30A5C();
  v133 = v160;
  if (*(v99 + v146) == v195)
  {
    goto LABEL_36;
  }

  v147 = (v178 + 16);
  v190 = (v178 + 32);
  v191 = (v178 + 8);
  while (1)
  {
    v148 = sub_1D7D30AAC();
    v149 = v179;
    (*v147)(v179);
    v148(&v195, 0);
    sub_1D7D30A6C();
    v137 = *v190;
    (*v190)(v133, v149, v118);
    sub_1D7D2A43C();
    v138 = v118;
    v192 = v195;
    EndOfArticleSectionDescriptor.type.getter(&v194);

    if (!v194)
    {
      break;
    }

    (*v191)(v133, v118);
    sub_1D7D30A5C();
    if (*(v99 + v146) == v195)
    {
      goto LABEL_36;
    }
  }

  sub_1D7C0E7C0(v99, sub_1D7C0E54C);
  v154 = &v187;
LABEL_46:
  v151 = *(v154 - 32);
  v137(v151, v133, v138);
  v152 = v175;
  v153 = v159;
LABEL_47:
  sub_1D7D2A44C();
  (*v191)(v151, v138);
  sub_1D7D2E52C();

  v195 = (*(*(v172 + 88) + 48))(v153, *(v172 + 80));
  sub_1D7BEC448();
  sub_1D7C0E5E0(&qword_1EE0C0030, sub_1D7BEC448);
  sub_1D7D2A70C();
  (*(v174 + 8))(v153, v152);
  (*(v188 + 8))(v187, v186);
}

uint64_t sub_1D7C0E420(uint64_t a1)
{
  (*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 56))(a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  sub_1D7BEC448();
  sub_1D7C0E5E0(&qword_1EE0C0030, sub_1D7BEC448);
  sub_1D7D2A70C();
}

void sub_1D7C0E54C()
{
  if (!qword_1EE0BEC10)
  {
    sub_1D7AE8404(255);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404);
    v0 = sub_1D7D315EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEC10);
    }
  }
}

uint64_t sub_1D7C0E5E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7C0E648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleRouteModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7C0E6AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7C0E700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleModel();
    v8[2] = sub_1D7A2B104();
    v8[3] = sub_1D7C0E5E0(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7C0E7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7C0E8A4()
{
  if (!qword_1EE0BE7D0)
  {
    sub_1D7D2CCDC();
    sub_1D7C0E884(255);
    sub_1D7C0E5E0(&unk_1EE0BF908, sub_1D7C0E884);
    v0 = sub_1D7D31ACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE7D0);
    }
  }
}

void sub_1D7C0E950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleLayoutSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleLayoutModel();
    v8[2] = sub_1D7A6015C();
    v8[3] = sub_1D7C0E5E0(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7C0EA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleModel();
    v8[2] = &type metadata for EndOfArticleLayoutSectionDescriptor;
    v8[3] = type metadata accessor for EndOfArticleLayoutModel();
    v8[4] = sub_1D7A2B104();
    v8[5] = sub_1D7C0E5E0(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    v8[6] = sub_1D7A6015C();
    v8[7] = sub_1D7C0E5E0(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7C0EB34(void *a1)
{
  v3 = *(sub_1D7D2CCDC() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D7C0C380(a1, v1 + v5, v6);
}

uint64_t sub_1D7C0EBD0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 16) | a2)
    {
      return result;
    }
  }

  else if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = off_1F52A5448[0];
      v4 = type metadata accessor for EndOfArticleViewController();
      (v3)(v2, &off_1F52B4CF8, v4, &off_1F52A5428);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7C0ECF0(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_1D7C0E6AC(0, &qword_1EE0BFB58, MEMORY[0x1E69B3FD8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v41 = &v38 - v5;
  v6 = sub_1D7D2CCDC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E6AC(0, &unk_1EE0C00E0, sub_1D7A2AFB8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - v11;
  sub_1D7A2AFB8();
  v14 = v13;
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE8404(0);
  v18 = v17;
  v19 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  sub_1D7D2A6EC();
  v49 = v46[0];
  sub_1D7C0E628(0);
  sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628);
  sub_1D7D2AEEC();

  v23 = v14;
  v24 = v45;
  sub_1D7D2C75C();
  if ((*(v24 + 48))(v12, 1, v23) == 1)
  {
    (*(v19 + 8))(v22, v18);
    v25 = &unk_1EE0C00E0;
    v26 = sub_1D7A2AFB8;
    v27 = v12;
    return sub_1D7C0F3D4(v27, v25, v26);
  }

  v28 = v19;
  v29 = v39;
  (*(v24 + 32))(v39, v12, v23);
  sub_1D7C0F430(v40 + *((*MEMORY[0x1E69E7D40] & *v40) + 0xB8), v46, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v30 = v47;
  if (v47)
  {
    v31 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v31 + 64))(v29, v22, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    sub_1D79E1030(v46, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v32 = v22;
  v34 = v42;
  v33 = v43;
  sub_1D7C0F380();
  v35 = v41;
  sub_1D7D2C7BC();
  v36 = v44;
  if ((*(v33 + 6))(v35, 1, v44) == 1)
  {
    (*(v24 + 8))(v29, v23);
    (*(v28 + 8))(v32, v18);
    v25 = &qword_1EE0BFB58;
    v26 = MEMORY[0x1E69B3FD8];
    v27 = v35;
    return sub_1D7C0F3D4(v27, v25, v26);
  }

  v43 = v32;
  (*(v33 + 4))(v34, v35, v36);
  sub_1D7C0F430(v38, v46, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
  if (v47)
  {
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v42 = v18;
    sub_1D7C0E5E0(&unk_1EE0BFB60, MEMORY[0x1E69B3FD8]);
    sub_1D7D2CFDC();
    (*(v33 + 1))(v34, v36);
    (*(v24 + 8))(v29, v23);
    (*(v28 + 8))(v43, v42);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    (*(v33 + 1))(v34, v36);
    (*(v24 + 8))(v29, v23);
    (*(v28 + 8))(v43, v18);
    return sub_1D79E1030(v46, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
  }
}

unint64_t sub_1D7C0F380()
{
  result = qword_1EC9E6C78;
  if (!qword_1EC9E6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C78);
  }

  return result;
}

uint64_t sub_1D7C0F3D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7C0E6AC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C0F430(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D79A02D8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t FCAudioUpsellPlayPosition.audioTrackOverlayPosition.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void __swiftcall PDFReplicaPage.init(identifier:pageAsset:assetType:options:thumbnailAssetLQ:thumbnailAssetHQ:links:)(NewsArticles::PDFReplicaPage *__return_ptr retstr, Swift::String identifier, Swift::String pageAsset, NewsArticles::PDFReplicaAssetType assetType, NewsArticles::PDFReplicaPageOptions options, Swift::String thumbnailAssetLQ, Swift::String thumbnailAssetHQ, Swift::OpaquePointer links)
{
  v8 = *assetType;
  v9 = *options.rawValue;
  retstr->identifier = identifier;
  retstr->pageAsset = pageAsset;
  retstr->assetType = v8;
  retstr->options.rawValue = v9;
  retstr->thumbnailAssetLQ = thumbnailAssetLQ;
  retstr->thumbnailAssetHQ = thumbnailAssetHQ;
  retstr->links = links;
}

uint64_t PDFReplicaAssetType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t PDFReplicaPage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDFReplicaPage.pageAsset.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PDFReplicaPage.thumbnailAssetLQ.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PDFReplicaPage.thumbnailAssetHQ.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

BOOL _s12NewsArticles14PDFReplicaPageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  v14 = *(a1 + 80);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = *(a1 + 64);
  v15 = *(a2 + 72);
  v16 = *(a1 + 72);
  v13 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v6)
  {
    if (v4 != v8)
    {
      return 0;
    }
  }

  else if ((sub_1D7D3197C() & 1) == 0 || v4 != v8)
  {
    return 0;
  }

  if (v5 != v9 || (v20 != v10 || v19 != v11) && (sub_1D7D3197C() & 1) == 0 || (v18 != v17 || v16 != v15) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D7A58610(v14, v13);
}

unint64_t sub_1D7C0F830()
{
  result = qword_1EC9E6C80;
  if (!qword_1EC9E6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C80);
  }

  return result;
}

unint64_t sub_1D7C0F888()
{
  result = qword_1EC9E6C88;
  if (!qword_1EC9E6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C88);
  }

  return result;
}

unint64_t sub_1D7C0F8E0()
{
  result = qword_1EC9E6C90;
  if (!qword_1EC9E6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C90);
  }

  return result;
}

unint64_t sub_1D7C0F938()
{
  result = qword_1EC9E6C98;
  if (!qword_1EC9E6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C98);
  }

  return result;
}

unint64_t sub_1D7C0F990()
{
  result = qword_1EC9E6CA0;
  if (!qword_1EC9E6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6CA0);
  }

  return result;
}

uint64_t sub_1D7C0FA14()
{
  type metadata accessor for ToolbarIssueCover();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

double sub_1D7C0FB00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[1] = a1;
  v4 = sub_1D7D2FCAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37[0] = sub_1D7D2FCCC();
  v9 = *(v37[0] - 8);
  MEMORY[0x1EEE9AC00](v37[0], v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2FE1C();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  *v8 = 0x4050000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B66C0], v4);
  sub_1D7D2FCBC();
  sub_1D7D300DC();
  (*(v9 + 8))(v12, v37[0]);
  sub_1D7D2FE0C();
  if (v18 == 0.0 && v17 == 0.0)
  {
    v19 = 108.0;
    v20 = 64.0;
  }

  else
  {
    sub_1D7D2FE0C();
    v20 = v21;
    v19 = v22;
  }

  sub_1D7C0FA14();
  v23 = sub_1D79F799C();

  sub_1D7D30E6C();
  v25 = v24;
  v40.origin.x = 4.0;
  v40.origin.y = 4.0;
  v40.size.width = v20;
  v40.size.height = v19;
  v26 = v25 + 4.0 + CGRectGetHeight(v40) + 8.0;
  v41.origin.x = 4.0;
  v41.origin.y = 4.0;
  v41.size.width = v20;
  v41.size.height = v19;
  v27 = CGRectGetMaxY(v41) + 4.0;
  *a2 = 0x4052000000000000;
  *(a2 + 8) = v26;
  __asm { FMOV            V0.2D, #4.0 }

  *(a2 + 16) = _Q0;
  *(a2 + 32) = v20;
  *(a2 + 40) = v19;
  v33 = type metadata accessor for ToolbarIssueCoverViewLayoutAttributes();
  (*(v38 + 32))(a2 + v33[6], v16, v39);
  v34 = a2 + v33[7];
  *v34 = 0;
  *(v34 + 8) = v27;
  *(v34 + 16) = 0x4052000000000000;
  *(v34 + 24) = v25;
  *(a2 + v33[8]) = v23;
  v35 = a2 + v33[9];
  *(v35 + 32) = 0;
  result = 0.0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  return result;
}

uint64_t ArticleViewerViewController.observableScrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_observableScrollView;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *ArticleViewerViewController.bottomPaletteContentView.getter()
{
  v0 = sub_1D7C100F0();
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  v2 = v1;

  return v1;
}

void sub_1D7C0FFF0(void *a1@<X8>)
{
  v2 = sub_1D7C100F0();
  v3 = *&v2[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  v4 = v3;

  *a1 = v3;
}

void sub_1D7C10040(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  v3 = sub_1D7C100F0();
  sub_1D7B0BBA8(v1);
}

void ArticleViewerViewController.bottomPaletteContentView.setter(void *a1)
{
  v2 = sub_1D7C100F0();
  sub_1D7B0BBA8(a1);
}

id sub_1D7C100F0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ArticleBottomPaletteViewController()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*ArticleViewerViewController.bottomPaletteContentView.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_1D7C100F0();
  v4 = *&v3[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  v5 = v4;

  *a1 = v4;
  return sub_1D7C101D0;
}

void sub_1D7C101D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v6 = *(*(a1 + 8) + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController);
  if (a2)
  {
    v3 = v2;
    v4 = v6;
    sub_1D7B0BBA8(v2);
  }

  else
  {
    v5 = v6;
    sub_1D7B0BBA8(v2);
  }
}

uint64_t sub_1D7C10260()
{
  if (sub_1D7D2AA6C() && (sub_1D7992EFC(0, &qword_1EE0BF010), sub_1D798F168(0, qword_1EE0C3308), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v5 + 1))
    {
      sub_1D799D69C(&v4, v7);
      v0 = v8;
      v1 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v2 = (*(v1 + 8))(v0, v1);
      __swift_destroy_boxed_opaque_existential_1(v7);
      return v2;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  sub_1D7C23024(&v4, sub_1D7C24FF4);
  v7[0] = [objc_opt_self() whiteColor];
  v7[1] = 0;
  sub_1D7999608(0, &unk_1EE0C0440, &type metadata for ContentBackgroundColors, MEMORY[0x1E69D6538]);
  swift_allocObject();
  return sub_1D7D28ECC();
}

uint64_t sub_1D7C103DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7C24F08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D79C9398(v4);
}

uint64_t sub_1D7C1047C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D7C24ED0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D79C9398(v3);
  return sub_1D79AD740(v8);
}

uint64_t ArticleViewerViewController.onPagePresented.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v2 = *v1;
  sub_1D79C9398(*v1);
  return v2;
}

uint64_t ArticleViewerViewController.onPagePresented.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1D79AD740(v6);
}

uint64_t sub_1D7C10660()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability), *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability + 24));
  if ((sub_1D7D2F96C() & 1) == 0 || (sub_1D7D2F0DC() & 1) == 0)
  {
    return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
  }

  v2 = [*(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  v3 = MEMORY[0x1E69E7CA0];
  if (!*(&v12 + 1))
  {
    sub_1D7C23094(&v13, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_11;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    v6 = 0;
    goto LABEL_12;
  }

  v4 = v10;
  v5 = [v10 integerValue];
  if (v5 == -1)
  {

    return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
  }

  v6 = v5;
LABEL_12:
  if (objc_getAssociatedObject(v2, ~v6))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_1D7992EFC(0, &qword_1EE0BECA0);
    if (swift_dynamicCast())
    {
      v7 = v10;
      v8 = [v7 integerValue];

      if ((v8 ^ v6))
      {
        return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
      }

      return 0;
    }
  }

  else
  {
    sub_1D7C23094(&v13, &qword_1EE0BE7A0, v3 + 8);
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
}

uint64_t _s12NewsArticles27ArticleViewerViewControllerC14mastheadPlugin5TeaUI0H0CSgyF_0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin;
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin);
  }

  else
  {
    v3 = v0;
    v5 = sub_1D7C100F0();
    sub_1D799C17C(&qword_1EC9E6F90, 255, type metadata accessor for ArticleBottomPaletteViewController);
    sub_1D7D2C23C();
    swift_allocObject();
    v2 = sub_1D7D2C21C();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D7C109A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
    v2 = *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
    *v1 = 0;
    v1[1] = 0;
    v3 = Strong;
    sub_1D79AD740(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();

    v6 = off_1F52A0160;
    type metadata accessor for ArticleViewerInteractor();
    v6();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7C10A8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 && *(a1 + OBJC_IVAR___NAPlayableArticleInfo_articleId + 8))
    {
      v4 = *(a1 + OBJC_IVAR___NAPlayableArticleInfo_paused);
    }

    else
    {
      v4 = 2;
    }

    v5 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_narrativeAudioState;
    if (*(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_narrativeAudioState) != v4)
    {
      v6 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
      swift_beginAccess();
      sub_1D799CC84(&v3[v6], v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      sub_1D7C255A0(0, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeature);
      inited = swift_initStaticObject();
      v10 = *(v8 + 112);
      v11 = type metadata accessor for ArticleViewerAudioFeatureContext();
      v10(inited, v11, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v3[v5] = v4;
  }
}

id ArticleViewerViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DD8D8] object:0];

  v3 = v0;
  sub_1D7D29BCC();

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id ArticleViewerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ArticleViewerViewController.show(article:)(void (**a1)(char *, uint64_t))
{
  v2 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v2, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v5 = a1[1];
  swift_storeEnumTagMultiPayload();
  sub_1D7C110D0(v6, v5, v4);
  return sub_1D7C23024(v4, type metadata accessor for ArticleNavigationAction);
}

uint64_t sub_1D7C110D0(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3)
{
  v46 = a3;
  v47 = a1;
  v48 = a2;
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v43 - v15;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ArticleViewerPage(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v44 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v43 - v27;
  v49 = v3;
  v29 = *(v3 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
  if (v29)
  {

    v29(v30);
    sub_1D79AD740(v29);
  }

  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7D29F9C();
  v31 = *(v13 + 8);
  v31(v16, v12);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1D7C22FB4(v20, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  v43 = v31;
  sub_1D7C25538(v20, v28, type metadata accessor for ArticleViewerPage);
  sub_1D7C3C6EC(v10);
  v33 = v46;
  v34 = _s12NewsArticles23ArticleNavigationActionO2eeoiySbAC_ACtFZ_0(v10, v46);
  sub_1D7C23024(v10, type metadata accessor for ArticleNavigationAction);
  if (v34)
  {
    sub_1D7D2AABC();
    sub_1D7C116B8(v28);
    v35 = v28;
  }

  else
  {
    v36 = v44;
    sub_1D7C3C8AC(v33, v44);
    sub_1D7D2ADEC();
    sub_1D7D28EDC();

    MEMORY[0x1EEE9AC00](v37, v38);
    v39 = v48;
    *(&v43 - 4) = v47;
    *(&v43 - 3) = v39;
    *(&v43 - 2) = v36;
    v40 = sub_1D7A27430(sub_1D7C25514, (&v43 - 6));
    v43(v16, v12);
    v41 = sub_1D799C17C(&qword_1EE0C9920, 255, type metadata accessor for ArticleViewerPage);
    v42 = sub_1D799C17C(&unk_1EE0C9940, 255, type metadata accessor for ArticleViewerPage);
    MEMORY[0x1DA706A80](v40, v21, v41, v42);
    sub_1D799BE44();
    sub_1D7D29FBC();
    sub_1D7D2ADEC();
    sub_1D7D28EAC();

    sub_1D7D2AABC();
    sub_1D7C116B8(v36);
    v43(v16, v12);
    sub_1D7C23024(v28, type metadata accessor for ArticleViewerPage);
    v35 = v36;
  }

  return sub_1D7C23024(v35, type metadata accessor for ArticleViewerPage);
}

void sub_1D7C116B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7D2AD0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v31 - v11;
  v13 = sub_1D7D2AB8C();
  v35 = *(v13 - 1);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7D2ACCC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    v22 = sub_1D7D30D8C();
    sub_1D7C3CCDC();
    if (v23)
    {
      v24 = sub_1D7D3031C();
    }

    else
    {
      v24 = 0;
    }

    [v22 setBackButtonTitle_];

    v36 = sub_1D7D30D8C();
    [v36 setBackButtonDisplayMode_];
    v29 = v36;
  }

  else
  {
    v32 = v18;
    v33 = v17;
    v34 = a1;
    sub_1D799CC84(v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, v41);
    v25 = v42;
    v26 = v43;
    v31[1] = __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_1D7D2AE7C();
    sub_1D7C10260();
    sub_1D7D28EDC();

    v37 = v39;
    v38 = v40;
    v27 = [v2 splitViewController];
    if (v27)
    {
      v28 = v27;
      sub_1D7D30F4C();

      (*(v5 + 32))(v12, v8, v4);
    }

    else
    {
      (*(v5 + 104))(v12, *MEMORY[0x1E69D7C90], v4);
    }

    (*(v26 + 16))(v34, v16, &v37, v12, v25, v26);
    (*(v5 + 8))(v12, v4);
    v30 = v38;

    (*(v35 + 8))(v16, v36);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1D799C17C(&unk_1EE0BFF30, 255, MEMORY[0x1E69D7C68]);
    sub_1D7D28F1C();
    (*(v32 + 8))(v21, v33);
  }
}

uint64_t sub_1D7C11AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v9 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  sub_1D7C24688(a1, v16, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v29 = v52;
    if (EnumCaseMultiPayload)
    {
      v30 = *(v16 + 3);
      v43 = *(v16 + 2);
      v44 = v30;
      v31 = *(v16 + 5);
      v45 = *(v16 + 4);
      v46 = v31;
      v32 = *(v16 + 1);
      v41 = *v16;
      v42 = v32;
      v27 = *(&v41 + 1);
      v33 = v41;

      sub_1D7A1EF80(&v41);
      if (v33 != a2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7C25538(v16, v12, type metadata accessor for InterstitialAdvertisementPage);
      v28 = InterstitialAdModel.identifier.getter();
      v27 = v34;
      sub_1D7C23024(v12, type metadata accessor for InterstitialAdvertisementPage);
LABEL_9:
      v29 = v52;
      if (v28 != a2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v22 = *(v16 + 9);
      v49 = *(v16 + 8);
      v50 = v22;
      v51 = *(v16 + 20);
      v23 = *(v16 + 5);
      v45 = *(v16 + 4);
      v46 = v23;
      v24 = *(v16 + 7);
      v47 = *(v16 + 6);
      v48 = v24;
      v25 = *(v16 + 1);
      v41 = *v16;
      v42 = v25;
      v26 = *(v16 + 3);
      v43 = *(v16 + 2);
      v44 = v26;
      v28 = *(&v46 + 1);
      v27 = v47;

      sub_1D79F949C(&v41);
      goto LABEL_9;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v16[*(v35 + 48)], *&v16[*(v35 + 48) + 8], *&v16[*(v35 + 48) + 16]);
    v29 = v52;
  }

  sub_1D7C25538(v16, v20, type metadata accessor for ArticleViewerArticlePage);
  v36 = *v20;
  v27 = v20[1];

  sub_1D7C23024(v20, type metadata accessor for ArticleViewerArticlePage);
  if (v36 != a2)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v27 == a3)
  {

    return sub_1D7C24688(v29, a5, type metadata accessor for ArticleViewerPage);
  }

LABEL_15:
  v37 = sub_1D7D3197C();

  if ((v37 & 1) == 0)
  {
    v29 = v40;
  }

  return sub_1D7C24688(v29, a5, type metadata accessor for ArticleViewerPage);
}