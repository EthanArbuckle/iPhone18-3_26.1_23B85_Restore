id sub_190AF1300(void *a1)
{
  [a1 setShouldShowStaticKeyBadge_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  swift_getKeyPath();
  sub_190AF36CC(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel);
  sub_190D51C20();

  v2 = *(v4 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel);

  return [a1 setShouldHideTitleLabel_];
}

id sub_190AF1414(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController] = 0;
  sub_190AF33FC(a1, &v1[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent]);
  v14.receiver = v1;
  v14.super_class = type metadata accessor for GroupIdentityViewController.Coordinator(0);
  v3 = objc_msgSendSuper2(&v14, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  if (qword_1EAD520D0 != -1)
  {
    swift_once();
  }

  [v6 addObserver:v5 selector:? name:? object:?];

  v7 = [v4 defaultCenter];
  v8 = qword_1EAD520D8;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  [v7 addObserver:v9 selector:sel_handleGroupDisplayNameChanged_ name:qword_1EAD9E710 object:0];

  v10 = [v4 defaultCenter];
  v11 = qword_1EAD520E0;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  [v10 addObserver:v12 selector:sel_handleAddressBookChanged_ name:qword_1EAD9E718 object:0];

  sub_190AF3460(a1);
  return v12;
}

void sub_190AF1638(void *a1)
{
  v3 = type metadata accessor for GroupIdentityViewController(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v11 = sub_190D53040();
  __swift_project_value_buffer(v11, qword_1EAD9DC20);
  v12 = v1;
  v13 = a1;
  v14 = sub_190D53020();
  v15 = sub_190D576C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v12;
    v17[1] = v13;
    v18 = v12;
    v19 = v13;
    _os_log_impl(&dword_19020E000, v14, v15, "IMChatGroupPhotoChangedNotification handleGroupPhotoChanged called on details controller %@ with notification %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  if ([v13 object])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v56[0] = v57;
  v56[1] = v58;
  if (!*(&v58 + 1))
  {
    sub_19021E7D8(v56);
    goto LABEL_13;
  }

  sub_1902188FC(0, &qword_1EAD44EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v22 = 0;
    v24 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v53 = v54;
  v20 = [v54 chatIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_190D56F10();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

LABEL_14:
  v52 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent;
  sub_190AF33FC(&v12[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  sub_190AF3460(v10);
  v25 = *&v56[0];
  swift_getKeyPath();
  *&v56[0] = v25;
  sub_190AF36CC(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v26 = *(v25 + 16);

  v27 = *&v26[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v28 = [v27 chat];
  if (v28)
  {
    v29 = [v28 chatIdentifier];

    if (v29)
    {
      v28 = sub_190D56F10();
      v31 = v30;

      if (v24)
      {
        goto LABEL_17;
      }

LABEL_22:
      if (!v31)
      {
        goto LABEL_28;
      }

LABEL_26:

      return;
    }

    v28 = 0;
    v31 = 0;
    if (!v24)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v31 = 0;
    if (!v24)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  if (!v31)
  {
    goto LABEL_26;
  }

  if (v22 == v28 && v24 == v31)
  {

LABEL_28:
    v33 = [v13 userInfo];
    if (v33)
    {
      v34 = v33;
      v35 = sub_190D56D90();

      if (v35)
      {
        v54 = 0x7265646E6573;
        v55 = 0xE600000000000000;
        sub_190D58230();
        if (*(v35 + 16))
        {
          v36 = sub_190875C84(v56);
          if (v37)
          {
            sub_19021834C(*(v35 + 56) + 32 * v36, &v57);
            sub_19084CFD0(v56);

            if (*(&v58 + 1))
            {
              if (swift_dynamicCast())
              {
                v38 = *(&v56[0] + 1);
LABEL_41:
                v39 = v52;
                sub_190AF33FC(&v12[v52], v7);
                sub_190D56320();
                sub_190AF3460(v7);
                v40 = *&v56[0];
                swift_getKeyPath();
                *&v56[0] = v40;
                sub_190D51C20();

                v41 = *(v40 + 16);

                v42 = *&v41[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

                if (v38)
                {
                  v43 = sub_190D56ED0();
                }

                else
                {
                  v43 = 0;
                }

                [v42 updateConversationVisualIdentityGroupPhotoWithSender_];

                v44 = *&v12[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController];
                if (v44)
                {
                  v45 = v51;
                  sub_190AF33FC(&v12[v39], v51);
                  v46 = v44;
                  sub_190D56320();
                  sub_190AF3460(v45);
                  v47 = *&v56[0];
                  swift_getKeyPath();
                  *&v56[0] = v47;
                  sub_190D51C20();

                  v48 = *(v47 + 16);

                  v49 = sub_190CEE020();

                  [v46 groupIdentityDidUpdate_];
                }

                goto LABEL_46;
              }

LABEL_40:
              v38 = 0;
              goto LABEL_41;
            }

LABEL_39:
            sub_19021E7D8(&v57);
            goto LABEL_40;
          }
        }

        sub_19084CFD0(v56);
      }
    }

    v57 = 0u;
    v58 = 0u;
    goto LABEL_39;
  }

  v32 = sub_190D58760();

  if (v32)
  {
    goto LABEL_28;
  }

LABEL_46:
}

void sub_190AF1E04(void *a1)
{
  v3 = type metadata accessor for GroupIdentityViewController(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v11 = sub_190D53040();
  __swift_project_value_buffer(v11, qword_1EAD9DC20);
  v12 = v1;
  v13 = a1;
  v14 = sub_190D53020();
  v15 = sub_190D576C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v12;
    v17[1] = v13;
    v18 = v12;
    v19 = v13;
    _os_log_impl(&dword_19020E000, v14, v15, "IMChatGroupDisplayNameChangedNotification handleGroupDisplayNameChanged called on details controller %@ with notification %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  if ([v13 object])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v59[0] = v60;
  v59[1] = v61;
  if (!*(&v61 + 1))
  {
    sub_19021E7D8(v59);
    goto LABEL_13;
  }

  sub_1902188FC(0, &qword_1EAD44EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v22 = 0;
    v24 = 0;
    v56 = 0;
    goto LABEL_14;
  }

  v56 = v57;
  v20 = [v57 chatIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = sub_190D56F10();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

LABEL_14:
  v55 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent;
  sub_190AF33FC(&v12[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  sub_190AF3460(v10);
  v25 = *&v59[0];
  swift_getKeyPath();
  *&v59[0] = v25;
  sub_190AF36CC(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v26 = *(v25 + 16);

  v27 = *&v26[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v28 = [v27 chat];
  if (v28)
  {
    v29 = [v28 chatIdentifier];

    if (v29)
    {
      v30 = sub_190D56F10();
      v28 = v31;

      if (v24)
      {
        goto LABEL_17;
      }

LABEL_22:
      if (!v28)
      {
        goto LABEL_28;
      }

LABEL_26:

      return;
    }

    v30 = 0;
    v28 = 0;
    if (!v24)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v30 = 0;
    if (!v24)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  if (!v28)
  {
    goto LABEL_26;
  }

  if (v22 == v30 && v24 == v28)
  {

LABEL_28:
    v33 = [v13 userInfo];
    if (v33)
    {
      v34 = v33;
      v35 = sub_190D56D90();

      if (v35)
      {
        v57 = 0x7265646E6573;
        v58 = 0xE600000000000000;
        sub_190D58230();
        if (*(v35 + 16))
        {
          v36 = sub_190875C84(v59);
          if (v37)
          {
            sub_19021834C(*(v35 + 56) + 32 * v36, &v60);
            sub_19084CFD0(v59);

            if (*(&v61 + 1))
            {
              if (swift_dynamicCast())
              {
                v38 = *(&v59[0] + 1);
LABEL_41:
                v39 = v55;
                sub_190AF33FC(&v12[v55], v7);
                sub_190D56320();
                sub_190AF3460(v7);
                v40 = *&v59[0];
                swift_getKeyPath();
                *&v59[0] = v40;
                sub_190D51C20();

                v41 = *(v40 + 16);

                v42 = *&v41[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

                if (v38)
                {
                  v43 = sub_190D56ED0();
                }

                else
                {
                  v43 = 0;
                }

                [v42 updateConversationVisualIdentityGroupPhotoWithSender_];

                v44 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController;
                v45 = *&v12[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController];
                if (v45)
                {
                  v46 = v54;
                  sub_190AF33FC(&v12[v39], v54);
                  v47 = v45;
                  sub_190D56320();
                  sub_190AF3460(v46);
                  v48 = *&v59[0];
                  swift_getKeyPath();
                  *&v59[0] = v48;
                  sub_190D51C20();

                  v49 = *(v48 + 16);

                  v50 = sub_190CEE020();

                  [v47 groupIdentityDidUpdate_];
                  v51 = *&v12[v44];
                  if (v51)
                  {
                    v52 = [v51 view];
                    [v52 invalidateIntrinsicContentSize];
                  }
                }

                goto LABEL_47;
              }

LABEL_40:
              v38 = 0;
              goto LABEL_41;
            }

LABEL_39:
            sub_19021E7D8(&v60);
            goto LABEL_40;
          }
        }

        sub_19084CFD0(v59);
      }
    }

    v60 = 0u;
    v61 = 0u;
    goto LABEL_39;
  }

  v32 = sub_190D58760();

  if (v32)
  {
    goto LABEL_28;
  }

LABEL_47:
}

void sub_190AF2604(void *a1)
{
  v3 = type metadata accessor for GroupIdentityViewController(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - v7;
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9DC20);
  v10 = v1;
  v11 = a1;
  v12 = sub_190D53020();
  v13 = sub_190D576C0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    v16 = v10;
    v17 = v11;
    _os_log_impl(&dword_19020E000, v12, v13, "IMChatAddressBookChanged handleGroupDisplayNameChanged called on details controller %@ with notification %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v15, -1, -1);
    MEMORY[0x193AF7A40](v14, -1, -1);
  }

  v39[0] = v11;
  v18 = [v11 userInfo];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v20 = sub_190D56D90();

  if (!v20)
  {
    goto LABEL_13;
  }

  v39[1] = 0x7265646E6573;
  v39[2] = 0xE600000000000000;
  sub_190D58230();
  if (!*(v20 + 16) || (v21 = sub_190875C84(v40), (v22 & 1) == 0))
  {

    sub_19084CFD0(v40);
LABEL_13:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_14;
  }

  sub_19021834C(*(v20 + 56) + 32 * v21, &v41);
  sub_19084CFD0(v40);

  if (!*(&v42 + 1))
  {
LABEL_14:
    sub_19021E7D8(&v41);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v23 = v40[1];
    goto LABEL_16;
  }

LABEL_15:
  v23 = 0;
LABEL_16:
  v24 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent;
  sub_190AF33FC(&v10[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  sub_190AF3460(v8);
  v25 = v40[0];
  swift_getKeyPath();
  v40[0] = v25;
  sub_190AF36CC(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v26 = *(v25 + 16);

  v27 = *&v26[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  if (v23)
  {
    v28 = sub_190D56ED0();
  }

  else
  {
    v28 = 0;
  }

  [v27 updateConversationVisualIdentityGroupPhotoWithSender_];

  v29 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController;
  v30 = *&v10[OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController];
  if (v30)
  {
    sub_190AF33FC(&v10[v24], v5);
    v31 = v30;
    sub_190D56320();
    sub_190AF3460(v5);
    v32 = v40[0];
    swift_getKeyPath();
    v40[0] = v32;
    sub_190D51C20();

    v33 = *(v32 + 16);

    v34 = sub_190CEE020();

    [v31 groupIdentityDidUpdate_];
    v35 = *&v10[v29];
    if (v35)
    {
      v36 = [v35 view];
      [v36 invalidateIntrinsicContentSize];
    }
  }

  sub_190AF33FC(&v10[v24], v5);
  sub_190D56320();
  sub_190AF3460(v5);
  v37 = v40[0];
  swift_getKeyPath();
  v40[0] = v37;
  sub_190D51C20();

  v38 = *(v37 + 16);

  [v38 chatAutoDonatingHandleUpdateNotification_];
}

uint64_t sub_190AF2C50(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupIdentityViewController(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent;
  sub_190AF33FC(v1 + OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent, &v20 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  sub_190AF3460(v9);
  [a1 titleLabelBaselineOffset];
  sub_1908C6150(v11, 0);

  sub_190AF33FC(v1 + v10, v9);
  sub_190D56320();
  sub_190AF3460(v9);
  v12 = v21;
  swift_getKeyPath();
  v21 = v12;
  sub_190AF36CC(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel);
  sub_190D51C20();

  v13 = *(v12 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel);

  [a1 setShouldHideTitleLabel_];
  sub_190AF33FC(v2 + v10, v6);
  sub_190D56320();
  sub_190AF3460(v6);
  v14 = [a1 group];
  v15 = [v14 groupName];

  if (v15)
  {
    v16 = sub_190D56F10();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_1908C64AC(v16, v18);
}

id sub_190AF2F00(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_190AF2FAC()
{
  sub_190AF3044();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190AF3044()
{
  if (!qword_1EAD55E10)
  {
    type metadata accessor for DetailsGroupIdentityViewModel();
    v0 = sub_190D56360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD55E10);
    }
  }
}

void sub_190AF30E4()
{
  sub_190AF3044();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_190AF3158@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190AF33FC(v2, v5);
  v6 = objc_allocWithZone(type metadata accessor for GroupIdentityViewController.Coordinator(0));
  result = sub_190AF1414(v5);
  *a2 = result;
  return result;
}

double sub_190AF31E8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 0.0;
  if (a2)
  {
    *&a1 = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeForLayoutInContainerSize_];
  return result;
}

uint64_t sub_190AF3234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AF36CC(&unk_1EAD5D260, type metadata accessor for GroupIdentityViewController);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AF32C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AF36CC(&unk_1EAD5D260, type metadata accessor for GroupIdentityViewController);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AF335C()
{
  sub_190AF36CC(&unk_1EAD5D260, type metadata accessor for GroupIdentityViewController);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190AF33FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupIdentityViewController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AF3460(uint64_t a1)
{
  v2 = type metadata accessor for GroupIdentityViewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_190AF34BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190AF36CC(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  result = [*(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) supportsMutatingGroupIdentity];
  *a2 = result;
  return result;
}

BOOL sub_190AF357C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  swift_getKeyPath();
  sub_190AF36CC(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v0 = *(v3 + 16);

  swift_getKeyPath();
  sub_190AF36CC(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v1 = v0[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState];

  return v1 == 1;
}

uint64_t sub_190AF36CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190AF3714()
{
  v1 = v0;
  v2 = type metadata accessor for GroupIdentityViewController(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent;
  sub_190AF33FC(v1 + OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_parent, &v13 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  sub_190AF3460(v7);
  v9 = v14;
  swift_getKeyPath();
  v14 = v9;
  sub_190AF36CC(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v10 = *(v9 + 16);

  sub_190AF33FC(v1 + v8, v4);
  sub_190D56320();
  sub_190AF3460(v4);
  v11 = v14;
  swift_getKeyPath();
  v14 = v11;
  sub_190D51C20();

  v12 = *(v11 + 16);

  sub_190CEBFBC(v12 | 0x6000000000000000);
}

id sub_190AF3904()
{
  v0 = sub_190D57FB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = [v7 isEntryViewRefreshEnabled];

  if (v8)
  {
    v9 = [objc_opt_self() closeButton];

    return v9;
  }

  else
  {
    result = [objc_opt_self() sharedBehaviors];
    if (result)
    {
      v11 = result;
      v12 = [result clearPluginButtonConfiguration];

      if (!v12)
      {
        v12 = [objc_opt_self() tintedButtonConfiguration];
      }

      sub_190D57F30();
      sub_1902188FC(0, &qword_1EAD464E0);
      (*(v1 + 16))(v3, v6, v0);
      v13 = sub_190D57FC0();

      (*(v1 + 8))(v6, v0);
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_190AF3B38(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_url;
  v10 = sub_190D515F0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_richLinkDataSource] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController] = 0;
  v11 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton;
  *&v4[v11] = sub_190AF3904();
  *&v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_editMenuInteraction] = 0;
  v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_isPresentingEditMenu] = 0;
  v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_shouldPresentEditMenuWhenAddedToWindow] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for CKEmbeddedRichLinkView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_190AF3DD4();

  return v12;
}

id sub_190AF3C90(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_url;
  v4 = sub_190D515F0();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_richLinkDataSource] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController] = 0;
  v5 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton;
  *&v1[v5] = sub_190AF3904();
  *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_editMenuInteraction] = 0;
  v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_isPresentingEditMenu] = 0;
  v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_shouldPresentEditMenuWhenAddedToWindow] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CKEmbeddedRichLinkView();
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_190AF3DD4();
  }

  return v7;
}

id sub_190AF3DD4()
{
  v1 = v0;
  v2 = sub_190D56800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1902188FC(0, &qword_1EAD46670);
  *v5 = sub_190D57870();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_190D56830();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor_];

    v9 = *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton];
    [v9 addTarget:v1 action:sel_didTapDiscardButton forControlEvents:64];
    return [v1 addSubview_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190AF3F74()
{
  v46.receiver = v0;
  v46.super_class = type metadata accessor for CKEmbeddedRichLinkView();
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  v1 = objc_opt_self();
  result = [v1 sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = result;
  [result balloonMaskTailWidth];
  v5 = v4;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong downscaleMultiplierForEmbeddedRichLinkView_];
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1.0;
  }

  [v0 bounds];
  v10 = v9;
  [v0 bounds];
  v12 = v11;
  [v0 bounds];
  v14 = v13;
  [v0 bounds];
  v16 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController;
  v17 = *&v0[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v15;
  result = [v17 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = result;
  [result setBounds_];

  v20 = *&v0[v16];
  if (v20)
  {
    result = [v20 view];
    if (!result)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = result;
    [result setCenter_];

    v22 = *&v0[v16];
    if (v22)
    {
      result = [v22 view];
      if (!result)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v23 = result;
      CGAffineTransformMakeScale(&v45, v8, v8);
      [v23 setTransform_];
    }
  }

LABEL_12:
  v24 = [objc_opt_self() sharedFeatureFlags];
  v25 = [v24 isEntryViewRefreshEnabled];

  result = [v1 sharedBehaviors];
  v26 = result;
  if (v25)
  {
    if (result)
    {
      [result entryViewLinkViewDiscardButtonEdgeInset];
      v28 = v27;

      v29 = [v0 _shouldReverseLayoutDirection];
      v30 = *&v0[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton];
      [v0 bounds];
      [v30 sizeThatFits_];
      v34 = v33;
      v36 = v35;
      v37 = v28;
      if ((v29 & 1) == 0)
      {
        [v0 bounds];
        v37 = CGRectGetMaxX(v47) - v28 - v34;
      }

      [v30 setFrame_];
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return [result setCornerRadius_];
      }

      return result;
    }

    goto LABEL_26;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [result entryViewLinkViewDiscardButtonDiameter];
  v39 = v38;

  result = [v1 sharedBehaviors];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = result;
  [result entryViewLinkViewDiscardButtonEdgeInset];
  v42 = v41;

  v43 = [v0 _shouldReverseLayoutDirection];
  v44 = v42;
  if ((v43 & 1) == 0)
  {
    [v0 bounds];
    v44 = CGRectGetMaxX(v48) - v42 - v39;
  }

  return [*&v0[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton] setFrame_];
}

void sub_190AF43F0(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CKEmbeddedRichLinkView();
  objc_msgSendSuper2(&v16, sel_willMoveToWindow_, a1);
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D778);
  v4 = v1;
  v5 = a1;
  v6 = sub_190D53020();
  v7 = sub_190D57690();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D3B0);
    v11 = sub_190D56F50();
    v13 = sub_19021D9F8(v11, v12, &v15);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    v14 = v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_isPresentingEditMenu];

    *(v8 + 14) = v14;
    _os_log_impl(&dword_19020E000, v6, v7, "RichLinkView willMoveToWindow={%s}, isPresentingEditMenu={%{BOOL}d}", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);

    if (a1)
    {
      return;
    }
  }

  else
  {

    if (a1)
    {
      return;
    }
  }

  if (v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_isPresentingEditMenu] == 1)
  {
    v4[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_shouldPresentEditMenuWhenAddedToWindow] = 1;
  }
}

void sub_190AF465C()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CKEmbeddedRichLinkView();
  objc_msgSendSuper2(&v21, sel_didMoveToWindow);
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9D778);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D57690();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v19[0] = v6;
    *v5 = 136315394;
    [v2 window];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D3B0);
    v7 = sub_190D56F50();
    v9 = sub_19021D9F8(v7, v8, v19);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    v10 = v2[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_isPresentingEditMenu];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_19020E000, v3, v4, "RichLinkView didMoveToWindow={%s}, isPresentingEditMenu={%{BOOL}d}", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }

  v11 = [v2 window];
  if (v11)
  {

    v12 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_shouldPresentEditMenuWhenAddedToWindow;
    if (v2[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_shouldPresentEditMenuWhenAddedToWindow] == 1)
    {
      v13 = sub_190D53020();
      v14 = sub_190D57680();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_19020E000, v13, v14, "Restoring edit menu.", v15, 2u);
        MEMORY[0x193AF7A40](v15, -1, -1);
      }

      v16 = *&v2[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_editMenuInteraction];
      if (v16)
      {
        sub_1902188FC(0, &qword_1EAD5D3A8);
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        v17 = v16;
        v18 = sub_190D57A10();
        [v17 presentEditMenuWithConfiguration_];
      }

      v2[v12] = 0;
    }
  }
}

id sub_190AF4994()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController);
  if (!v1)
  {
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D778);
    v7 = sub_190D53020();
    v8 = sub_190D57680();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v7, v8, "Tried asking CKEmbeddedRichLinkView for a view snapshot before the plugin VC was configured.", v9, 2u);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  [v2 setShowsBalloonTail_];
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = [result snapshotViewAfterScreenUpdates_];

    return v5;
  }

  __break(1u);
  return result;
}

void sub_190AF4AE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_190D518A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v48 = a2;
  }

  else
  {
    v48 = [objc_allocWithZone(MEMORY[0x1E69A5C48]) init];
  }

  v9 = *MEMORY[0x1E69A6A18];
  v10 = a2;
  [v48 setPluginBundleID_];
  v11 = sub_190D51570();
  [v48 setUrl_];

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  if (!v13)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 dataSourceForPluginPayload_];

  if (v15)
  {
    v47 = [v12 sharedInstance];
    if (v47)
    {
      v16 = v47;
      v17 = [v48 pluginBundleID];
      v18 = [v16 balloonPluginForBundleID_];

      if (v18)
      {
        [v15 setPluginDataSourceDelegate_];
        v19 = v15;
        [v48 setDatasource_];
        v20 = *&v3[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_richLinkDataSource];
        *&v3[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_richLinkDataSource] = v15;
        v21 = v19;

        [v21 setPayloadInShelf_];
        sub_190D50450();
        sub_190D51850();
        (*(v6 + 8))(v8, v5);
        v22 = objc_allocWithZone(MEMORY[0x1E69A5C40]);
        v23 = sub_190D56ED0();

        v24 = [v22 initWithTransientIdentifier:v23 isEmbeddedInTextView:1];

        [v21 setStagingContext_];
        [v21 payloadWillEnterShelf];
        v25 = objc_opt_self();
        v26 = [v25 defaultCenter];
        [v26 addObserver:v3 selector:sel_pluginPayloadDidLoad_ name:*MEMORY[0x1E69A59F8] object:0];

        v27 = [v25 defaultCenter];
        [v27 addObserver:v3 selector:sel_pluginPayloadWantsResize_ name:*MEMORY[0x1E69A5A00] object:0];

        v28 = [v25 defaultCenter];
        [v28 addObserver:v3 selector:sel_pluginPayloadInvalidatedTintColor_ name:*MEMORY[0x1E69A59F0] object:0];

        v29 = [objc_allocWithZone(CKDefaultPluginEntryViewController) initWithDataSource:v21 entryViewDelegate:0 andPlugin:v18 customizationPickerDelegate:v3];
        sub_190AF5188(v29);
        [v3 bringSubviewToFront_];

        return;
      }
    }

    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v30 = sub_190D53040();
    __swift_project_value_buffer(v30, qword_1EAD9D778);
    v31 = v48;
    v32 = sub_190D53020();
    v33 = sub_190D57680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 136315138;
      v36 = [v31 pluginBundleID];

      if (v36)
      {
        v37 = sub_190D56F10();
        v39 = v38;

        v40 = sub_19021D9F8(v37, v39, &v49);

        *(v34 + 4) = v40;
        _os_log_impl(&dword_19020E000, v32, v33, "Unable to get a IMBalloonPlugin instance. Likely some kind of programming error. pluginBundleID=%s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x193AF7A40](v35, -1, -1);
        MEMORY[0x193AF7A40](v34, -1, -1);

        return;
      }

      goto LABEL_24;
    }

    v45 = v47;
  }

  else
  {
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v41 = sub_190D53040();
    __swift_project_value_buffer(v41, qword_1EAD9D778);
    v42 = sub_190D53020();
    v43 = sub_190D57680();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_19020E000, v42, v43, "Unable to get a RichLinkDataSource instance. Likely some kind of programming error.", v44, 2u);
      MEMORY[0x193AF7A40](v44, -1, -1);
    }

    v45 = v48;
  }
}

void sub_190AF5188(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController];
  v20 = v4;
  if ((CKIsEqual(v20, a1) & 1) == 0)
  {
    if (v4)
    {
      v5 = v20;
      [v5 willMoveToParentViewController_];
      v6 = [v5 view];
      if (!v6)
      {
        __break(1u);
        goto LABEL_18;
      }

      v7 = v6;
      [v6 removeFromSuperview];

      [v5 removeFromParentViewController];
      v8 = *&v1[v3];
      *&v1[v3] = 0;
    }

    if (a1)
    {
      v9 = *&v1[v3];
      *&v1[v3] = a1;
      v10 = a1;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong embeddedRichLinkView:v1 willAddPluginEntryViewControllerToViewHierarchy:v10];
        swift_unknownObjectRelease();
      }

      v12 = v10;
      v13 = [v12 view];
      if (v13)
      {
        v14 = v13;
        [v13 setUserInteractionEnabled_];
      }

      v15 = [v12 view];

      if (v15)
      {
        [v1 addSubview_];

        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          [v16 embeddedRichLinkView:v1 didAddPluginEntryViewControllerToViewHierarchy:v12];
          swift_unknownObjectRelease();
        }

        v17 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
        [v1 addInteraction_];
        v18 = *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_editMenuInteraction];
        *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_editMenuInteraction] = v17;
        v19 = v17;

        [v1 addTarget:v1 action:sel_didTapToPresentEditMenu_ forControlEvents:64];
        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }
  }

LABEL_14:
}

void *sub_190AF542C()
{
  v1 = v0;
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D778);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Did tap on discard button for CKEmbeddedRichLinkView instance.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result embeddedRichLinkView:v1 didSelectInteractionType:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190AF5698()
{
  v1 = v0;
  v2 = sub_190D50FA0();
  if (v2)
  {
    v3 = v2;
    v34 = sub_190D56F10();
    v35 = v4;
    sub_190D58230();
    if (*(v3 + 16) && (v5 = sub_190875C84(v36), (v6 & 1) != 0))
    {
      sub_19021834C(*(v3 + 56) + 32 * v5, v37);
      sub_19084CFD0(v36);
      if (swift_dynamicCast())
      {
        v7 = *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_richLinkDataSource];
        if (v7)
        {
          v8 = [v7 stagingContext];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 transientIdentifier];

            v11 = sub_190D56F10();
            v13 = v12;

            v14 = v11 == v34 && v13 == v35;
            if (v14 || (sub_190D58760() & 1) != 0)
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v16 = Strong;
                [Strong maxWidthForEmbeddedRichLinkView_];
                v18 = v17;
                v19 = [objc_opt_self() sharedBehaviors];
                if (v19)
                {
                  v20 = v19;

                  [v20 extensionBalloonMaximumHeight];
                  v22 = v21;

                  [v1 sizeThatFits_];
                  [v16 embeddedRichLinkView:v1 requestedTransitionToSize:?];
                  v23 = *&v1[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController];
                  [v23 didFinishAnimatedBoundsChange];

                  swift_unknownObjectRelease();
                }

                else
                {
                  __break(1u);
                }

                return;
              }

              if (qword_1EAD46240 != -1)
              {
                swift_once();
              }

              v32 = sub_190D53040();
              __swift_project_value_buffer(v32, qword_1EAD9D778);
              v25 = sub_190D53020();
              v26 = sub_190D57680();
              if (!os_log_type_enabled(v25, v26))
              {
LABEL_21:

                return;
              }

              v27 = swift_slowAlloc();
              *v27 = 0;
              v28 = "RichLinkDataSource informed us of a rich link that needed to resize and we have no delegate. Programming error.";
LABEL_20:
              _os_log_impl(&dword_19020E000, v25, v26, v28, v27, 2u);
              MEMORY[0x193AF7A40](v27, -1, -1);
              goto LABEL_21;
            }
          }
        }

        return;
      }
    }

    else
    {

      sub_19084CFD0(v36);
    }

    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v24 = sub_190D53040();
    __swift_project_value_buffer(v24, qword_1EAD9D778);
    v25 = sub_190D53020();
    v26 = sub_190D57680();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "RichLinkDataSource informed us of a rich link change but we are missing a transient identifier. Programming error.";
    goto LABEL_20;
  }

  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v29 = sub_190D53040();
  __swift_project_value_buffer(v29, qword_1EAD9D778);
  oslog = sub_190D53020();
  v30 = sub_190D57680();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_19020E000, oslog, v30, "RichLinkDataSource informed us of a rich link change but there was no userInfoDictionary. Programming error.", v31, 2u);
    MEMORY[0x193AF7A40](v31, -1, -1);
  }
}

void sub_190AF5B74()
{
  v1 = v0;
  v2 = sub_190D50FA0();
  if (!v2)
  {
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v20 = sub_190D53040();
    __swift_project_value_buffer(v20, qword_1EAD9D778);
    oslog = sub_190D53020();
    v21 = sub_190D57680();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_19020E000, oslog, v21, "RichLinkDataSource informed us of a rich link tint color invalidation but there was no userInfoDictionary. Programming error.", v22, 2u);
      MEMORY[0x193AF7A40](v22, -1, -1);
    }

    return;
  }

  v3 = v2;
  v25 = sub_190D56F10();
  v26 = v4;
  sub_190D58230();
  if (!*(v3 + 16) || (v5 = sub_190875C84(v27), (v6 & 1) == 0))
  {

    sub_19084CFD0(v27);
    goto LABEL_14;
  }

  sub_19021834C(*(v3 + 56) + 32 * v5, v28);
  sub_19084CFD0(v27);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9D778);
    v17 = sub_190D53020();
    v18 = sub_190D57680();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_19020E000, v17, v18, "RichLinkDataSource informed us of a rich link tint color invalidation but we are missing a transient identifier. Programming error.", v19, 2u);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    goto LABEL_18;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_richLinkDataSource);
  if (!v7 || (v8 = [v7 stagingContext]) == 0)
  {

    return;
  }

  v9 = v8;
  v10 = [v8 transientIdentifier];

  v11 = sub_190D56F10();
  v13 = v12;

  if (v11 == v25 && v13 == v26)
  {
  }

  else
  {
    v15 = sub_190D58760();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  v23 = *(v1 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController);
  if (v23)
  {
    v17 = v23;
    if ([v17 respondsToSelector:sel_pluginTintColorDidUpdate])
    {
      [v17 pluginTintColorDidUpdate];
    }

LABEL_18:
  }
}

uint64_t sub_190AF5F04(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_190D50FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_190AF5FF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKEmbeddedRichLinkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CKEmbeddedRichLinkView()
{
  result = qword_1ED776FF8;
  if (!qword_1ED776FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190AF610C()
{
  sub_19087F470();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190AF61D0(void *a1)
{
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D778);
  v4 = sub_190D53020();
  v5 = sub_190D57680();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v4, v5, "RichLinkDataSource informed client of a change to the data source.", v6, 2u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  v7 = [a1 pluginPayload];
  if (v7)
  {
    v11 = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong embeddedRichLinkView:v1 didFinishPreparingPluginPayload:v11];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v11 = sub_190D53020();
    v9 = sub_190D57680();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v11, v9, "RichLinkDataSource instance did not have a pluginPayload. We wouldn't expect that because it's initialized with a payload.", v10, 2u);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }
  }
}

uint64_t sub_190AF6424()
{
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9D778);
  v2 = sub_190D53020();
  v3 = sub_190D57680();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "Determining if an embedded rich link can present the customization picker.", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = [Strong supportsCustomizationForEmbeddedRichLinkView_], swift_unknownObjectRelease(), !v6))
  {
    v11 = sub_190D53020();
    v12 = sub_190D57680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = ">!< The rich link delegate says it cannot support customization - likely due to service capabilities.";
LABEL_16:
      _os_log_impl(&dword_19020E000, v11, v12, v14, v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

LABEL_17:

    return 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController);
  if (!v7 || (v8 = [v7 pluginBubbleViewController]) == 0)
  {
    v11 = sub_190D53020();
    v12 = sub_190D57680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = ">!< The pluginBubbleViewController is not available. No customization.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = v8;
  if (([v8 respondsToSelector_] & 1) != 0 && objc_msgSend(v9, sel_canPresentCustomizationPicker))
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v15 = sub_190D53020();
  v16 = sub_190D57680();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_19020E000, v15, v16, ">!< The pluginBubbleViewController says it cannot present. No customization.", v17, 2u);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  swift_unknownObjectRelease();

  return 0;
}

void sub_190AF66D4()
{
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9D778);
  v2 = sub_190D53020();
  v3 = sub_190D57680();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "A rich link view was asked to present the customization picker.", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  v5 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController);
  if (v5 && (v6 = [v5 pluginBubbleViewController]) != 0)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      [v7 presentCustomizationPicker];

      swift_unknownObjectRelease();
      return;
    }

    oslog = sub_190D53020();
    v10 = sub_190D57680();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, oslog, v10, ">!< The presentCustomizationPicker selector is not available. No presentation.", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_190D53020();
    v8 = sub_190D57680();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19020E000, oslog, v8, ">!< The pluginBubbleViewController is not available. No presentation.", v9, 2u);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }
  }
}

void *sub_190AF6944(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190AF6A84(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform_];
}

void sub_190AF6C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v15[4] = a7;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_190840E6C;
  v15[3] = a8;
  v13 = _Block_copy(v15);
  v14 = a1;
  swift_unknownObjectRetain();

  [a5 addCompletion_];
  swift_unknownObjectRelease();

  _Block_release(v13);
}

void sub_190AF6CE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9D778);
    v3 = sub_190D53020();
    v4 = sub_190D57680();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, v4, "Did tap to copy CKEmbeddedRichLinkView's URL to pasteboard.", v5, 2u);
      MEMORY[0x193AF7A40](v5, -1, -1);
    }

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 embeddedRichLinkView:v1 didSelectInteractionType:1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_190AF6E2C()
{
  v0 = sub_190D56770();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D567A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1902188FC(0, &qword_1EAD46670);
    v10 = sub_190D57870();
    v15 = v4;
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    aBlock[4] = sub_190AF7E60;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_77;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    sub_190D58170();
    MEMORY[0x193AF3110](0, v7, v3, v13);
    _Block_release(v13);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v15);
  }

  return result;
}

void *sub_190AF70F0(uint64_t a1)
{
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D778);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Did tap to convert CKEmbeddedRichLinkView instance to text.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result embeddedRichLinkView:a1 didSelectInteractionType:2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190AF721C()
{
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9D778);
  v1 = sub_190D53020();
  v2 = sub_190D57680();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Did tap to customize rich link.", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_190AF66D4();
  }
}

void sub_190AF7398()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_editMenuInteraction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_isPresentingEditMenu);
    v3 = qword_1EAD46240;
    v16 = v1;
    if (v2 == 1)
    {
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_190D53040();
      __swift_project_value_buffer(v4, qword_1EAD9D778);
      v5 = sub_190D53020();
      v6 = sub_190D57680();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, v6, "Did tap to dismiss edit menu bar for CKEmbeddedRichLinkView instance.", v7, 2u);
        MEMORY[0x193AF7A40](v7, -1, -1);
      }

      [v16 dismissMenu];
    }

    else
    {
      if (v3 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9D778);
      v12 = sub_190D53020();
      v13 = sub_190D57680();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_19020E000, v12, v13, "Did tap to present edit menu bar for CKEmbeddedRichLinkView instance.", v14, 2u);
        MEMORY[0x193AF7A40](v14, -1, -1);
      }

      sub_1902188FC(0, &qword_1EAD5D3A8);
      v15 = sub_190D57A10();
      [v16 presentEditMenuWithConfiguration:v15];
    }
  }

  else
  {
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D778);
    v16 = sub_190D53020();
    v9 = sub_190D576A0();
    if (os_log_type_enabled(v16, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v16, v9, "Tapped to display callout bar, but there is no edit menu interaction configured!", v10, 2u);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }
  }
}

void sub_190AF7680()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong embeddedRichLinkViewDidDismissCustomizationPicker_];
    swift_unknownObjectRelease();
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:120.0 damping:12.0 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v2 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v15 = sub_190AF7E94;
  v16 = v4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_190840E6C;
  v14 = &block_descriptor_47;
  v5 = _Block_copy(&v11);
  v6 = v0;

  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimation];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:1 curve:0 animations:0.225];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v15 = sub_190AF7E9C;
  v16 = v8;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_190840E6C;
  v14 = &block_descriptor_53;
  v9 = _Block_copy(&v11);
  v10 = v6;

  [v7 addAnimations_];
  _Block_release(v9);
  [v7 startAnimation];
}

id sub_190AF78E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = 1.0;
  v3 = 1.0;
  if (Strong)
  {
    [Strong downscaleMultiplierForEmbeddedRichLinkView_];
    v3 = v4;
    swift_unknownObjectRelease();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    [v5 maxWidthForEmbeddedRichLinkView_];
    v2 = v6;
    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v8 = result;
    [result extensionBalloonMaximumHeight];
    v10 = v9;

    v11 = [objc_allocWithZone(CKLinkCustomizationTransitionContext) init];
    [v11 setSourceViewDownscaleMultiplier_];
    [v11 setMaxWidthForSourceView_];
    [v11 setMaxHeightForSourceView_];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190AF7A18()
{
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  sub_1902188FC(0, &qword_1EAD464F0);
  v2 = sub_190D56ED0();
  v3 = sub_190D56ED0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_190D56F10();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v5;
  v6 = sub_190D57DC0();
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_190D56ED0();
  v9 = sub_190D56ED0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:{v9, 0, 0, 0, sub_190AF7E48, v20}];

  sub_190D56F10();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v11;
  v12 = sub_190D57DC0();
  if ((sub_190AF6424() & 1) == 0)
  {
    sub_1902188FC(0, &unk_1EAD44ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_190DD5CE0;
    *(v19 + 32) = v6;
    *(v19 + 40) = v12;
    return sub_190D57C90();
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_190D56ED0();
    v15 = sub_190D56ED0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:{v15, 0, 0, 0, sub_190AF7E50, v21}];

    sub_190D56F10();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_190D57DC0();
    sub_1902188FC(0, &unk_1EAD44ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_190DDA780;
    *(v18 + 32) = v6;
    *(v18 + 40) = v17;
    *(v18 + 48) = v12;
    return sub_190D57C90();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_190AF7EDC(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D3E0);
  if (swift_dynamicCast())
  {
    sub_19029058C(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_190D51190();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_19022EEA4(__src, &qword_1EAD5D3E8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_190D58340();
  }

  sub_190AF9C08(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_190AFA3AC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_190AF9CD0(sub_190AFA44C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_190D51640();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_190AFA228(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_190D57050();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_190D57090();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_190D58340();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_190AFA228(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_190D57060();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_190D51650();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_190D51650();
    sub_19029064C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_19029064C(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_19083B680(*&__src[0], *(&__src[0] + 1));

  sub_19083B6D4(v32, *(&v32 + 1));
  return v32;
}

void sub_190AF83FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v45 - v15;
  v48 = _s4LinkVMa(0);
  *(a2 + *(v48 + 40)) = 0;
  v16 = [a1 identifier];
  v17 = sub_190D56F10();
  v19 = v18;

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 24) = a1;
  v20 = a1;
  v21 = [v20 item];
  v22 = [v21 attributeSet];

  v23 = [v22 isShared];
  LODWORD(v19) = [v23 BOOLValue];

  if (v19 && (v24 = [v22 messageType]) != 0)
  {
    v46 = v10;
    v25 = v24;
    v26 = sub_190D56F10();
    v28 = v27;

    if (v26 == 7040620 && v28 == 0xE300000000000000)
    {

      v29 = 1;
    }

    else
    {
      v29 = sub_190D58760();
    }

    v10 = v46;
  }

  else
  {
    v29 = 0;
  }

  *(a2 + 16) = v29 & 1;
  v30 = [v22 contentURL];
  if (v30)
  {
    v31 = v30;
    sub_190D515B0();

    v32 = *(v5 + 32);
    v32(v13, v7, v4);
    v33 = *(v5 + 56);
    v33(v13, 0, 1, v4);
    v34 = v47;
    v32(v47, v13, v4);
    v33(v34, 0, 1, v4);
  }

  else
  {
    v35 = *(v5 + 56);
    v36 = 1;
    v35(v13, 1, 1, v4);
    v37 = [v22 URL];
    if (v37)
    {
      v38 = v10;
      v39 = v37;
      sub_190D515B0();

      v10 = v38;
      v36 = 0;
    }

    v35(v10, v36, 1, v4);
    v34 = v47;
    sub_190844E18(v10, v47);
    if ((*(v5 + 48))(v13, 1, v4) != 1)
    {
      sub_19022EEA4(v13, &unk_1EAD55F20);
    }
  }

  v40 = v48;
  sub_190844E18(v34, a2 + *(v48 + 28));
  v41 = [objc_opt_self() contactForResult_];

  *(a2 + *(v40 + 32)) = v41;
  v42 = [v22 syndicationStatus];
  if (!v42)
  {

    goto LABEL_19;
  }

  v49 = 0;
  v50 = 1;
  v43 = v42;
  sub_190D58090();

  if (v50)
  {
LABEL_19:
    v44 = 0;
    goto LABEL_20;
  }

  v44 = v49;
LABEL_20:
  *(a2 + *(v40 + 36)) = (v44 & 2) != 0;
}

uint64_t sub_190AF88C0()
{
  v1[19] = v0;
  sub_190D572A0();
  v1[20] = sub_190D57290();
  v3 = sub_190D57240();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190AF8958, v3, v2);
}

uint64_t sub_190AF8958()
{
  v1 = v0[19];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v3 = *(v1 + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_190AF8AAC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD543C8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190843AB8;
  v0[13] = &block_descriptor_78;
  v0[14] = v4;
  [v2 fetchLinkMetadataForQueryResult:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190AF8AAC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_190AF8BB4, v2, v1);
}

uint64_t sub_190AF8BB4()
{
  v1 = v0[23];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

id sub_190AF8C24()
{
  v1 = sub_190D52E90();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = _s4LinkVMa(0);
  sub_190844DA8(v0 + *(v15 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19022EEA4(v7, &unk_1EAD55F20);
    return 0;
  }

  else
  {
    v27 = v4;
    v28 = v2;
    v29 = v1;
    v26 = *(v9 + 32);
    v26(v14, v7, v8);
    sub_190D51560();
    v17 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v18 = sub_190D51570();
    v16 = [v17 initWithContentsOfURL_];

    if (v16)
    {
      v19 = v16;
      v20 = sub_190D56ED0();

      [v19 setSuggestedName_];

      v21 = v19;
      v22 = v27;
      sub_190D52E10();
      (*(v9 + 16))(v11, v14, v8);
      v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v24 = swift_allocObject();
      v26((v24 + v23), v11, v8);
      sub_190D576D0();

      (*(v28 + 8))(v22, v29);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
  }

  return v16;
}

uint64_t sub_190AF9020()
{
  swift_getKeyPath();
  sub_190AF9BC0(&qword_1EAD576F8, _s9ViewModelCMa_3);
  sub_190D51C20();

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_190AF9100(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_190D52690();
  v6 = sub_1909A7A48(v5, a1);

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190AF9BC0(&qword_1EAD576F8, _s9ViewModelCMa_3);
    sub_190D51C10();
  }
}

uint64_t sub_190AF9248(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
  sub_190D52690();
}

uint64_t sub_190AF92B4()
{
  v1 = v0;
  v2 = _s4LinkVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = v27 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  sub_190AF8FE4(MEMORY[0x1E69E7CC0]);
  sub_190AF90D8(v10);
  v33 = v2;
  v34 = v2;
  v35 = sub_190AF9BC0(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  v37 = v0;
  sub_190AFA5D4();
  sub_190D51C20();

  v11 = qword_1EAD62988;
  swift_beginAccess();
  result = *(v1 + v11);
  v13 = *(result + 16);
  if (v13)
  {
    v29 = qword_1EAD5D3B8;
    v30 = qword_1EAD5D3C0;
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v27[1] = result;
    v28 = v14;
    v15 = result + v14;
    v16 = *(v3 + 72);
    sub_190D52690();
    do
    {
      sub_190AFA638(v15, v9);
      if (v9[*(v33 + 36)] == 1)
      {
        sub_190AFA638(v9, v31);
        swift_getKeyPath();
        v36 = v1;
        sub_190AF9BC0(&qword_1EAD576F8, _s9ViewModelCMa_3);
        sub_190D51C20();

        v36 = v1;
        swift_getKeyPath();
        sub_190D51C40();

        v17 = v29;
        swift_beginAccess();
        v18 = *(v1 + v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v17) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_190835D04(0, v18[2] + 1, 1, v18);
          *(v1 + v29) = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_190835D04(v20 > 1, v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        sub_190AFA69C(v31, v18 + v28 + v21 * v16);
        *(v1 + v29) = v18;
        swift_endAccess();
        v36 = v1;
      }

      else
      {
        sub_190AFA638(v9, v32);
        swift_getKeyPath();
        v36 = v1;
        sub_190AF9BC0(&qword_1EAD576F8, _s9ViewModelCMa_3);
        sub_190D51C20();

        v36 = v1;
        swift_getKeyPath();
        sub_190D51C40();

        v22 = v30;
        swift_beginAccess();
        v23 = *(v1 + v22);
        v24 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v22) = v23;
        if ((v24 & 1) == 0)
        {
          v23 = sub_190835D04(0, v23[2] + 1, 1, v23);
          *(v1 + v30) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_190835D04(v25 > 1, v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        sub_190AFA69C(v32, v23 + v28 + v26 * v16);
        *(v1 + v30) = v23;
        swift_endAccess();
        v36 = v1;
      }

      swift_getKeyPath();
      sub_190D51C30();

      sub_190956314(v9);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_190AF97CC()
{

  v1 = qword_1EAD45C08;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_190AF9854()
{
  v2.receiver = v0;
  v2.super_class = _s9ViewModelCMa_3(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190AF988C(uint64_t a1)
{

  v2 = qword_1EAD45C08;
  v3 = sub_190D51C60();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_190AF9938()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_190AF9A28()
{
  sub_1902188FC(319, &unk_1EAD44FC0);
  if (v0 <= 0x3F)
  {
    sub_190844C7C(319, &qword_1ED777010, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_190844C14();
      if (v2 <= 0x3F)
      {
        sub_190844C7C(319, &qword_1EAD54398, type metadata accessor for DetailsQueryResultItemPreviewProvider);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_190AF9B3C(uint64_t a1)
{
  *(a1 + 8) = sub_190AF9BC0(&qword_1EAD5D3D8, _s4LinkVMa);
  result = sub_190AF9BC0(&qword_1EAD45BF0, _s4LinkVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_190AF9BC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190AF9C08@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_190AFA2F4(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_190D510B0();
      swift_allocObject();
      v8 = sub_190D51060();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_190D51630();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_190AF9CD0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_19083B6D4(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    sub_190D50920();
    sub_19083B6D4(v6, v5);
    *v3 = xmmword_190DF17A0;
    sub_19083B6D4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_190D50920();
      if (sub_190D51070() && __OFSUB__(v6, sub_190D510A0()))
      {
LABEL_26:
        __break(1u);
      }

      sub_190D510B0();
      swift_allocObject();
      v13 = sub_190D51050();

      v11 = v13;
    }

    if (v12 >= v6)
    {
      sub_190D50920();
      v14 = sub_190AFA174(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {
    sub_190D50920();
    sub_190D50920();
    sub_19083B6D4(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_190DF17A0;
    sub_19083B6D4(0, 0xC000000000000000);
    sub_190D51600();
    result = sub_190AFA174(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_190AFA074@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_190AFA2F4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_190AFA4B4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_190AFA530(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_190AFA108(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_190AFA174(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_190D51070();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_190D510A0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_190D51090();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_190AFA228(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_190D570B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x193AF2900](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_190AFA2A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_190D582C0();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
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

uint64_t sub_190AFA2F4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_190AFA3AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_190D510B0();
      swift_allocObject();
      sub_190D51080();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_190D51630();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_190AFA44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_190AFA108(sub_190AFA5B4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_190AFA4B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_190D510B0();
  swift_allocObject();
  result = sub_190D51060();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_190D51630();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_190AFA530(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_190D510B0();
  swift_allocObject();
  result = sub_190D51060();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_190AFA5D4()
{
  result = qword_1EAD566C0;
  if (!qword_1EAD566C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD566C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD566C0);
  }

  return result;
}

uint64_t sub_190AFA638(uint64_t a1, uint64_t a2)
{
  v4 = _s4LinkVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AFA69C(uint64_t a1, uint64_t a2)
{
  v4 = _s4LinkVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_190AFA748())(char a1)
{
  sub_190AB55AC();
  sub_190D54830();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_190AFA7D0;
}

unint64_t sub_190AFA800()
{
  result = qword_1EAD5D3F0;
  if (!qword_1EAD5D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D3F0);
  }

  return result;
}

uint64_t sub_190AFA858()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D7D8);
  __swift_project_value_buffer(v0, qword_1EAD9D7D8);
  return sub_190D53030();
}

uint64_t sub_190AFA914()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D8F8);
  __swift_project_value_buffer(v0, qword_1EAD9D8F8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFA980()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E040);
  __swift_project_value_buffer(v0, qword_1EAD9E040);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFA9EC()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E058);
  __swift_project_value_buffer(v0, qword_1EAD9E058);
  return sub_190D53030();
}

uint64_t sub_190AFAA64()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E070);
  __swift_project_value_buffer(v0, qword_1EAD9E070);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAB3C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E0D0);
  __swift_project_value_buffer(v0, qword_1EAD9E0D0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFABC8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E100);
  __swift_project_value_buffer(v0, qword_1EAD9E100);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAC34()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E118);
  __swift_project_value_buffer(v0, qword_1EAD9E118);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFACA0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D6A0);
  __swift_project_value_buffer(v0, qword_1EAD9D6A0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAD0C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E130);
  __swift_project_value_buffer(v0, qword_1EAD9E130);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAD78()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D6E8);
  __swift_project_value_buffer(v0, qword_1EAD9D6E8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAE2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_190D53040();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAE94()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E178);
  __swift_project_value_buffer(v0, qword_1EAD9E178);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAF00()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D748);
  __swift_project_value_buffer(v0, qword_1EAD9D748);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAF6C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E190);
  __swift_project_value_buffer(v0, qword_1EAD9E190);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190AFAFD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D3F8);
  __swift_allocate_value_buffer(v0, qword_1EAD9D6B8);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9D6B8);
  sub_190D53010();
  sub_190AFB068(v1);
}

id sub_190AFB068@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result isInternalInstall];

    if (v4 && (v5 = [objc_opt_self() standardUserDefaults], v6 = sub_190D56ED0(), v7 = objc_msgSend(v5, sel_BOOLForKey_, v6), v5, v6, v7))
    {
      sub_190D52690();
      sub_190D52690();
      sub_190D53030();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = sub_190D53040();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, v8, 1, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AFB1F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - v3;
  v6 = *(v0 + 24);
  v10[0] = *v0;
  v5 = v10[0];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = *(v0 + 8);
  v10[1] = *(v0 + 8);
  *(v7 + 24) = v8;
  *(v7 + 40) = v6;
  sub_19081E484();
  swift_bridgeObjectRetain_n();
  sub_190D50920();
  sub_190D56080();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190AFBB64();
  sub_190D55730();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_190AFB3B8@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D438);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v50 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D440);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D448);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  sub_190D54F60();
  v12 = sub_190D55E00();
  *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577B0) + 36)] = v12;
  v13 = sub_190D55360();
  KeyPath = swift_getKeyPath();
  v15 = &v3[*(v1 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_190D553D0();
  sub_190AFBBE4();
  sub_190D556F0();
  sub_19022EEA4(v3, &qword_1EAD5D438);
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D458) + 36)] = 0;
  LOBYTE(v3) = sub_190D552A0();
  sub_190D539C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D460) + 36)];
  *v24 = v3;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(v3) = sub_190D55310();
  sub_190D539C0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D468) + 36)];
  *v33 = v3;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = &v7[*(v5 + 44)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D470) + 36);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_190D54A20();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  *v34 = 1;
  if (sub_190D54F70())
  {
    v38 = 0.75;
  }

  else
  {
    v38 = 1.0;
  }

  sub_190D56690();
  v40 = v39;
  v42 = v41;
  v43 = sub_19081E40C(v7, v11, &qword_1EAD5D440);
  v44 = &v11[*(v9 + 44)];
  *v44 = v38;
  *(v44 + 1) = v38;
  *(v44 + 2) = v40;
  *(v44 + 3) = v42;
  MEMORY[0x193AF1E10](v43, 0.5, 0.7, 0.0);
  v45 = sub_190D56560();

  v46 = sub_190D54F70();
  v47 = v51;
  sub_19081E40C(v11, v51, &qword_1EAD5D448);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D478);
  v49 = v47 + *(result + 36);
  *v49 = v45;
  *(v49 + 8) = v46 & 1;
  return result;
}

uint64_t sub_190AFB790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[4];
  v9 = sub_190D564F0();
  v11 = v10;
  if (v7)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v5;
    *(v12 + 32) = v7;
    *(v12 + 33) = *(v2 + 17);
    *(v12 + 40) = v2[3];
    *(v12 + 48) = v8;
    swift_bridgeObjectRetain_n();
    sub_190D50920();
    LOBYTE(v21) = sub_190D552D0();
    sub_190D539C0();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    LOBYTE(v36[0]) = 0;
    v21 = v21;
    v22 = sub_190AFBA04;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v22 = 0;
    v12 = 0;
    v21 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
  }

  *&v30 = v6;
  *(&v30 + 1) = v5;
  *&v31 = v22;
  *(&v31 + 1) = v12;
  *&v32 = v21;
  *(&v32 + 1) = v14;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  *&v34 = v20;
  BYTE8(v34) = 0;
  *&v35 = v9;
  *(&v35 + 1) = v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D400);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D408) + 36));
  v25 = v33;
  v24[2] = v32;
  v24[3] = v25;
  v26 = v35;
  v24[4] = v34;
  v24[5] = v26;
  v27 = v31;
  *v24 = v30;
  v24[1] = v27;
  v36[0] = v6;
  v36[1] = v5;
  v36[2] = v22;
  v36[3] = v12;
  v36[4] = v21;
  v36[5] = v14;
  v36[6] = v16;
  v36[7] = v18;
  v36[8] = v20;
  v37 = 0;
  v38 = v9;
  v39 = v11;
  sub_190AFB994(&v30, v29);
  return sub_19022EEA4(v36, &qword_1EAD5D410);
}

uint64_t sub_190AFB994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190AFBA3C()
{
  result = qword_1EAD5D418;
  if (!qword_1EAD5D418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D408);
    sub_190233640(&qword_1EAD5D420, &qword_1EAD5D400);
    sub_190233640(&qword_1EAD5D428, &qword_1EAD5D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D418);
  }

  return result;
}

unint64_t sub_190AFBB64()
{
  result = qword_1EAD5D430;
  if (!qword_1EAD5D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D430);
  }

  return result;
}

unint64_t sub_190AFBBE4()
{
  result = qword_1EAD5D450;
  if (!qword_1EAD5D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D438);
    sub_1909588AC();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D450);
  }

  return result;
}

unint64_t sub_190AFBC9C()
{
  result = qword_1EAD45210;
  if (!qword_1EAD45210)
  {
    sub_190D54F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45210);
  }

  return result;
}

unint64_t sub_190AFBCF4()
{
  result = qword_1EAD5D480;
  if (!qword_1EAD5D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D478);
    sub_190AFBDAC();
    sub_190233640(&qword_1EAD557B0, &qword_1EAD557B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D480);
  }

  return result;
}

unint64_t sub_190AFBDAC()
{
  result = qword_1EAD5D488;
  if (!qword_1EAD5D488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D448);
    sub_190AFBE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D488);
  }

  return result;
}

unint64_t sub_190AFBE38()
{
  result = qword_1EAD5D490;
  if (!qword_1EAD5D490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D440);
    sub_190AFBF4C(&qword_1EAD5D498, &qword_1EAD5D468, &unk_190DF1BF0, sub_190AFBF1C);
    sub_190233640(&qword_1EAD5D4B0, &qword_1EAD5D470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D490);
  }

  return result;
}

uint64_t sub_190AFBF4C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190AFBFD0()
{
  result = qword_1EAD5D4A8;
  if (!qword_1EAD5D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D438);
    sub_190AFBBE4();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D4A8);
  }

  return result;
}

uint64_t sub_190AFC0C4()
{
  result = sub_190D56530();
  qword_1EAD9E1A8 = result;
  return result;
}

uint64_t sub_190AFC104()
{
  MEMORY[0x193AF1E10](0.5, 0.7, 0.0);
  v0 = sub_190D56560();

  qword_1EAD9E1B0 = v0;
  return result;
}

uint64_t sub_190AFC158()
{
  result = sub_190D56530();
  qword_1EAD9E1B8 = result;
  return result;
}

uint64_t sub_190AFC190()
{
  result = sub_190D56530();
  qword_1EAD9E1C0 = result;
  return result;
}

uint64_t sub_190AFC1C4()
{
  result = sub_190D56530();
  qword_1EAD9E1C8 = result;
  return result;
}

uint64_t sub_190AFC1FC()
{
  result = sub_190D56530();
  qword_1EAD9E1D0 = result;
  return result;
}

uint64_t sub_190AFC238()
{
  result = sub_190D56530();
  qword_1EAD9E1D8 = result;
  return result;
}

uint64_t sub_190AFC274()
{
  result = sub_190D56530();
  qword_1EAD9E1E0 = result;
  return result;
}

uint64_t sub_190AFC2AC()
{
  result = sub_190D56530();
  qword_1EAD9E1E8 = result;
  return result;
}

uint64_t sub_190AFC2E4()
{
  result = sub_190D56530();
  qword_1EAD9E1F0 = result;
  return result;
}

uint64_t sub_190AFC31C()
{
  result = sub_190D56530();
  qword_1EAD9E1F8 = result;
  return result;
}

uint64_t sub_190AFC354()
{
  result = sub_190D56530();
  qword_1EAD9E200 = result;
  return result;
}

void sub_190AFC38C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews;
  v4 = sub_190D52690();
  v5 = sub_1909A7B8C(v4, a1);

  if (v5)
  {
    return;
  }

  if (a1 >> 62)
  {
    v6 = sub_190D581C0();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AF3B90](i, a1);
    }

    else
    {
      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    [v8 removeFromSuperview];
  }

LABEL_11:
  v10 = *&v1[v3];
  if (v10 >> 62)
  {
    v11 = sub_190D581C0();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  sub_190D52690();
  for (j = 0; j != v11; ++j)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193AF3B90](j, v10);
    }

    else
    {
      v13 = *(v10 + 8 * j + 32);
    }

    v14 = v13;
    [v1 addSubview_];
  }
}

uint64_t sub_190AFC538()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel);
    v4 = v2;
    v5 = sub_190D56ED0();
    [v3 setText_];

    [v3 setTextColor_];
    v6 = v4[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron];
    *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron) = v6;
    [*(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView) setHidden_];
    *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons) = *&v4[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons];
    sub_190D52690();

    v7 = sub_190D52690();
    sub_190AFD758(v7);
    v9 = v8;

    if (v9 >> 62)
    {
      sub_190861700();
      sub_190D52690();
      v10 = sub_190D58530();
    }

    else
    {
      sub_190D52690();
      sub_190D58770();
      sub_190861700();
      v10 = v9;
    }

    v11 = *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews);
    *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews) = v10;
    sub_190AFC38C(v11);
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel);
    v13 = sub_190D56ED0();
    [v12 setText_];

    v14 = [objc_opt_self() labelColor];
    [v12 setTextColor_];

    *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron) = 0;
    [*(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView) setHidden_];
    *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons) = MEMORY[0x1E69E7CC0];

    v15 = sub_190D52690();
    sub_190AFD758(v15);
    v17 = v16;

    if (v17 >> 62)
    {
      sub_190861700();
      sub_190D52690();
      v18 = sub_190D58530();
    }

    else
    {
      sub_190D52690();
      sub_190D58770();
      sub_190861700();
      v18 = v17;
    }

    v19 = *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews);
    *(v1 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews) = v18;
    sub_190AFC38C(v19);
  }
}

id sub_190AFC85C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v11 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle] = 0;
  *&v4[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons] = v11;
  v4[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron] = 1;
  v14.receiver = v4;
  v14.super_class = _s12TitleRowViewCMa();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_190AFCAA0();

  return v12;
}

id sub_190AFC98C(void *a1)
{
  v3 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle] = 0;
  *&v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons] = v5;
  v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron] = 1;
  v10.receiver = v1;
  v10.super_class = _s12TitleRowViewCMa();
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_190AFCAA0();
  }

  return v7;
}

void sub_190AFCAA0()
{
  v1 = *&v0[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel];
  if (qword_1EAD46878 != -1)
  {
    swift_once();
  }

  [v1 setTextColor_];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [v2 _preferredFontForTextStyle_weight_];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v1 setFont_];

  [v1 setTextAlignment_];
  [v1 setAdjustsFontSizeToFitWidth_];
  [v1 setMinimumScaleFactor_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v6 = sub_190D56ED0();
  [v1 setAccessibilityIdentifier_];

  [v0 addSubview_];
  v7 = [v2 _preferredFontForTextStyle_weight_];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [objc_opt_self() configurationWithFont:v7 scale:1];
  v10 = sub_190D56ED0();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v13 = [v11 imageWithBaselineOffsetFromBottom_];
  }

  else
  {
    v13 = 0;
  }

  v12 = *&v0[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView];
  if (qword_1EAD46888 != -1)
  {
    swift_once();
  }

  [v12 setTintColor_];
  [v12 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [v12 setImage_];
  [v0 addSubview_];
}

id sub_190AFCDC4(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons);
  if (v5 >> 62)
  {
    result = sub_190D581C0();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    v7 = 8.0;
  }

  else
  {
    v7 = 12.0;
  }

  v8 = *(v2 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews);
  if (v8 >> 62)
  {
    result = sub_190D581C0();
    v9 = result;
    v10 = &selRef_shouldShowFacetimeButtonInNavbarCanvasViewController_;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = &selRef_shouldShowFacetimeButtonInNavbarCanvasViewController_;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  sub_190D52690();
  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AF3B90](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    [v12 v10[337]];
    v15 = v14;

    v7 = v7 + v15 + 4.0;
  }

  while (v9 != v11);

LABEL_15:
  v16 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron;
  v17 = 12.0;
  if (*(v2 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron) == 1)
  {
    [*(v2 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView) v10[337]];
    v7 = v7 + 4.0 + v18;
    v17 = 12.0;
    if (*(v2 + v16))
    {
      v17 = 8.0;
    }
  }

  return [*(v2 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel) ck:a1 - (v7 + v17) constrainedSizeThatFits:a2];
}

char *sub_190AFCFE8()
{
  v1 = v0;
  *&rect.size.width = v0;
  *&rect.size.height = _s12TitleRowViewCMa();
  [(CGSize *)&rect.size layoutSubviews];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v95 = [v0 _shouldReverseLayoutDirection];
  v6 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons;
  v7 = *&v0[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIcons];
  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v8)
  {
    v9 = 8.0;
  }

  else
  {
    v9 = 12.0;
  }

  if (v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_wantsChevron] == 1)
  {
    v10 = v9 + 8.0;
    [*&v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_chevronImageView] sizeThatFits_];
    v92 = v12;
    v13 = v10 + v12 + 4.0;
  }

  else
  {
    v13 = v9 + 12.0;
    v92 = 0.0;
    v11 = 0.0;
  }

  v93 = v11;
  v14 = OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews;
  v15 = *&v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_leadingTitleIconViews];
  if (v15 >> 62)
  {
    v16 = sub_190D581C0();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  y = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    *&rect.origin.y = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    result = sub_19082E1B8(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    y = rect.origin.y;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x193AF3B90](v19, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      [v20 sizeThatFits_];
      v23 = v22;
      v25 = v24;

      v27 = *(*&rect.origin.y + 16);
      v26 = *(*&rect.origin.y + 24);
      if (v27 >= v26 >> 1)
      {
        sub_19082E1B8((v26 > 1), v27 + 1, 1);
      }

      ++v19;
      *(*&rect.origin.y + 16) = v27 + 1;
      v28 = *&rect.origin.y + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v16 != v19);
  }

  v29 = *(*&y + 16);
  if (v29)
  {
    v30 = (*&y + 32);
    v31 = 0.0;
    v32 = *(*&y + 16);
    do
    {
      v33 = *v30;
      v30 += 2;
      v31 = v31 + v33 + 4.0;
      --v32;
    }

    while (v32);
  }

  else
  {
    v31 = 0.0;
  }

  v91 = *&v1[OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_titleLabel];
  [v91 ck:v3 - (v13 + v31) constrainedSizeThatFits:v5];
  v90 = v34;
  v36 = v35;
  v37 = *(v6 + v1);
  if (v37 >> 62)
  {
    v38 = sub_190D581C0();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = 8.0;
  if (!v38)
  {
    v39 = 12.0;
  }

  rect.origin.x = v39;
  v40 = *&v1[v14];
  if (v40 >> 62)
  {
    v41 = sub_190D581C0();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_190D52690();
  v94 = v36;
  if (v41)
  {
    v42 = 0;
    v6 = (*&y + 40);
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x193AF3B90](v42, v40);
      }

      else
      {
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v8 = sub_190D581C0();
          goto LABEL_3;
        }

        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      if (v29 == v42)
      {

        break;
      }

      if (v42 >= *(*&y + 16))
      {
        goto LABEL_52;
      }

      v45 = *(v6 - 1);
      v46 = *v6;
      v47 = (v36 - *v6) * 0.5;
      [v1 bounds];
      v51 = v50;
      v53 = v52;
      x = rect.origin.x;
      if (v95)
      {
        v5 = v48;
        v3 = v49;
        v97.origin.x = rect.origin.x;
        v97.origin.y = v47;
        v97.size.width = v45;
        v97.size.height = v46;
        CGRectGetMinX(v97);
        v98.origin.x = v51;
        v98.origin.y = v53;
        v98.size.width = v5;
        v98.size.height = v3;
        CGRectGetMinX(v98);
        v99.origin.x = v51;
        v99.origin.y = v53;
        v99.size.width = v5;
        v99.size.height = v3;
        CGRectGetMaxX(v99);
        v36 = v94;
        v100.origin.x = rect.origin.x;
        v100.origin.y = v47;
        v100.size.width = v45;
        v100.size.height = v46;
        CGRectGetWidth(v100);
        x = rect.origin.x;
      }

      ++v42;
      rect.origin.x = x + v45 + 4.0;
      [v44 setFrame_];

      v6 += 2;
    }

    while (v41 != v42);
  }

  v55 = v90 + rect.origin.x;
  v56 = 4.0;
  v57 = v36 - v93;
  v58 = 0.5;
  [v1 bounds];
  if (v95)
  {
    v89 = v90 + rect.origin.x;
    v63 = v60;
    v101.origin.y = 0.0;
    v64 = v59;
    v101.origin.x = rect.origin.x;
    v65 = v61;
    v101.size.width = v90;
    v66 = v62;
    v101.size.height = v36;
    MinX = CGRectGetMinX(v101);
    v102.origin.x = v64;
    v102.origin.y = v63;
    v102.size.width = v65;
    v102.size.height = v66;
    v68 = MinX - CGRectGetMinX(v102);
    v103.origin.x = v64;
    v56 = 4.0;
    v103.origin.y = v63;
    v103.size.width = v65;
    v58 = 0.5;
    v103.size.height = v66;
    v69 = CGRectGetMaxX(v103) - v68;
    v36 = v94;
    v104.origin.y = 0.0;
    v104.origin.x = rect.origin.x;
    v104.size.width = v90;
    v104.size.height = v94;
    v70 = v69 - CGRectGetWidth(v104);
    v55 = v90 + rect.origin.x;
    v71 = &qword_1EAD5D000;
    v72 = v91;
  }

  else
  {
    v71 = &qword_1EAD5D000;
    v72 = v91;
    v70 = rect.origin.x;
  }

  v73 = v55 + v56;
  v74 = v57 * v58;
  [v72 setFrame_];
  v75 = *&v1[v71[152]];
  [v1 bounds];
  if (v95)
  {
    v80 = v76;
    v105.origin.x = v73;
    v81 = v77;
    v105.origin.y = v74;
    rect.origin.x = v74;
    v82 = v78;
    v84 = v92;
    v83 = v93;
    v105.size.width = v92;
    v85 = v79;
    v105.size.height = v93;
    v86 = CGRectGetMinX(v105);
    v106.origin.x = v80;
    v106.origin.y = v81;
    v106.size.width = v82;
    v106.size.height = v85;
    v87 = v86 - CGRectGetMinX(v106);
    v107.origin.x = v80;
    v107.origin.y = v81;
    v107.size.width = v82;
    v74 = rect.origin.x;
    v107.size.height = v85;
    v88 = CGRectGetMaxX(v107) - v87;
    v108.origin.x = v73;
    v108.origin.y = rect.origin.x;
    v108.size.width = v92;
    v108.size.height = v93;
    v73 = v88 - CGRectGetWidth(v108);
  }

  else
  {
    v84 = v92;
    v83 = v93;
  }

  return [v75 setFrame_];
}

id sub_190AFD684()
{
  v2.receiver = v0;
  v2.super_class = _s12TitleRowViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190AFD758(unint64_t a1)
{
  v18 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_22:
    v2 = sub_190D581C0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v17 = *MEMORY[0x1E69DDCF8];
      v4 = *MEMORY[0x1E69DB958];
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x193AF3B90](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v8 = [v5 imageName];
        if (v8)
        {
          v9 = v8;
          v10 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
          v11 = [objc_opt_self() _preferredFontForTextStyle_weight_];
          if (!v11)
          {

            __break(1u);
            return;
          }

          v12 = v11;
          v13 = [objc_opt_self() configurationWithFont:v11 scale:1];

          v14 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v13];
          [v10 setImage_];

          v15 = [v6 preferredColor];
          if (!v15)
          {
            if (qword_1EAD51B30 != -1)
            {
              swift_once();
            }

            v15 = qword_1EAD9DD20;
          }

          [v10 setTintColor_];

          v16 = v10;
          MEMORY[0x193AF29E0]();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
        }

        else
        {
        }

        ++v3;
      }

      while (v7 != v2);
    }
  }
}

id CKMessageBalloonMaskFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKMessageBalloonMaskFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKMessageBalloonMaskFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t CKMessageBalloonMaskConfiguration.pathConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration;
  v4 = sub_190D56C50();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id CKMessageBalloonMaskConfiguration.__allocating_init(pathConfiguration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration;
  v5 = sub_190D56C50();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id CKMessageBalloonMaskConfiguration.init(pathConfiguration:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration;
  v4 = sub_190D56C50();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CKMessageBalloonMaskConfiguration();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

id CKMessageBalloonMaskConfiguration.__allocating_init(hasTail:minHeight:color:orientation:)(int a1, void *a2, char a3)
{
  v4 = v3;
  v60 = a2;
  v52 = a1;
  v6 = sub_190D56C10();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D56C50();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - v12;
  v13 = sub_190D56D00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = sub_190D56CF0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = objc_allocWithZone(v4);
  v24 = v21;
  v51 = v21;
  v25 = *(v21 + 104);
  v26 = MEMORY[0x1E698F618];
  if (a3)
  {
    v26 = MEMORY[0x1E698F620];
  }

  v27 = *v26;
  v28 = v23;
  v49 = v20;
  v50 = v23;
  v25(v23, v27, v20);
  if (v52)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = [objc_opt_self() sharedFeatureFlags];
  v31 = [v30 isRoundTailedBalloonShapeEnabled];

  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B30) + 48);
  (*(v24 + 16))(v19, v28, v20);
  *&v19[v32] = v29;
  v33 = MEMORY[0x1E698F638];
  if (!v31)
  {
    v33 = MEMORY[0x1E698F648];
  }

  v34 = *v33;
  v35 = v14;
  v36 = *(v14 + 104);
  v48 = v13;
  v36(v19, v34, v13);
  (*(v14 + 16))(v16, v19, v13);
  (*(v58 + 104))(v8, *MEMORY[0x1E698F5F0], v59);
  v37 = v53;
  sub_190D56C40();
  v39 = v55;
  v38 = v56;
  v40 = *(v56 + 16);
  v41 = v57;
  v40(v55, v37, v57);
  v42 = type metadata accessor for CKMessageBalloonMaskConfiguration();
  v43 = objc_allocWithZone(v42);
  v40(&v43[OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration], v39, v41);
  v61.receiver = v43;
  v61.super_class = v42;
  v44 = objc_msgSendSuper2(&v61, sel_init);

  v45 = *(v38 + 8);
  v45(v39, v41);
  v45(v37, v41);
  (*(v35 + 8))(v19, v48);
  (*(v51 + 8))(v50, v49);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v44;
}

id CKMessageBalloonMaskConfiguration.init(hasTail:minHeight:color:orientation:)(char a1, void *a2, char a3)
{
  v57 = a2;
  v5 = sub_190D56C10();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_190D56C50();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v47 - v10;
  v11 = sub_190D56D00();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = sub_190D56CF0();
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23;
  v50 = v23;
  v25 = *(v23 + 104);
  v26 = MEMORY[0x1E698F618];
  if (a3)
  {
    v26 = MEMORY[0x1E698F620];
  }

  v27 = *v26;
  v48 = v19;
  v49 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v19;
  v25(v22, v27, v21);
  if (a1)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = [objc_opt_self() sharedFeatureFlags];
  v31 = [v30 isRoundTailedBalloonShapeEnabled];

  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B30) + 48);
  (*(v24 + 16))(v17, v22, v28);
  *&v17[v32] = v29;
  v33 = MEMORY[0x1E698F638];
  if (!v31)
  {
    v33 = MEMORY[0x1E698F648];
  }

  v34 = *v33;
  v35 = v12;
  v36 = *(v12 + 104);
  v47 = v11;
  v36(v17, v34, v11);
  (*(v12 + 16))(v14, v17, v11);
  (*(v55 + 104))(v7, *MEMORY[0x1E698F5F0], v56);
  v37 = v51;
  sub_190D56C40();
  v38 = v52;
  v39 = v53;
  v40 = *(v52 + 16);
  v41 = v54;
  v40(v53, v37, v54);
  v42 = type metadata accessor for CKMessageBalloonMaskConfiguration();
  v43 = objc_allocWithZone(v42);
  v40(&v43[OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration], v39, v41);
  v58.receiver = v43;
  v58.super_class = v42;
  v44 = objc_msgSendSuper2(&v58, sel_init);

  v45 = *(v38 + 8);
  v45(v39, v41);
  v45(v37, v41);
  (*(v35 + 8))(v17, v47);
  (*(v50 + 8))(v49, v48);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v44;
}

id CKMessageBalloonMaskConfiguration.__allocating_init(balloonDescriptor:)()
{
  v1 = sub_190D56C50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  objc_allocWithZone(v0);
  sub_190248D60(v7);
  v8 = *(v2 + 16);
  v8(v4, v7, v1);
  v9 = type metadata accessor for CKMessageBalloonMaskConfiguration();
  v10 = objc_allocWithZone(v9);
  v8(&v10[OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration], v4, v1);
  v14.receiver = v10;
  v14.super_class = v9;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = *(v2 + 8);
  v12(v4, v1);
  v12(v7, v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id CKMessageBalloonMaskConfiguration.init(balloonDescriptor:)()
{
  v0 = sub_190D56C50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  sub_190248D60(&v13 - v5);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  v8 = type metadata accessor for CKMessageBalloonMaskConfiguration();
  v9 = objc_allocWithZone(v8);
  v7(&v9[OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration], v3, v0);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id sub_190AFEEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_190AFEF44(uint64_t a1)
{
  v2 = sub_190D56C50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D56D40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  (*(v3 + 16))(v5, a1 + OBJC_IVAR____TtC7ChatKit33CKMessageBalloonMaskConfiguration_pathConfiguration, v2, v11);
  sub_190D56D30();
  (*(v7 + 16))(v9, v13, v6);
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D4F8));
  v15 = sub_190D54090();
  v16 = [objc_opt_self() blackColor];
  [v15 setBackgroundColor_];

  (*(v7 + 8))(v13, v6);
  return v15;
}

uint64_t type metadata accessor for CKMessageBalloonMaskConfiguration()
{
  result = qword_1EAD5D4E8;
  if (!qword_1EAD5D4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AFF204()
{
  result = sub_190D56C50();
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

uint64_t sub_190AFF2C4()
{
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert);
}

uint64_t sub_190AFF36C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
    sub_190D51C10();
  }

  return result;
}

BOOL sub_190AFF494()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  v4 = *&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

  result = 0;
  if ((v4 & 0x4000) != 0)
  {
    swift_getKeyPath();
    sub_190D51C20();

    v5 = *(v1 + 16);
    swift_getKeyPath();
    v6 = v5;
    sub_190D51C20();

    v7 = v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

    if (v7 != 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_190AFF670()
{
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
  sub_190D51C20();

  if (sub_190AFF494())
  {
    swift_getKeyPath();
    sub_190B00014(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v1 = *(v0 + 16);
    swift_getKeyPath();
    sub_190B00014(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    v2 = v1;
    sub_190D51C20();

    v3 = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant];

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_190AFF828()
{
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
  sub_190D51C20();

  if (!sub_190AFF494())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190B00014(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant];

  return v3;
}

uint64_t sub_190AFF9FC()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[2] = v1;
    sub_190B00014(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
    sub_190D51C10();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) = 0;
  }

  v3 = v0[3];
  swift_getKeyPath();
  v0[2] = v3;
  sub_190B00014(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v4 = *(v3 + 16);
  v5 = sub_190CECC40();

  if (v5)
  {
    v6 = [v5 cnContact];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() sharedBlockList];
      [v8 blockContact_];
    }
  }

  v9 = v0[1];

  return v9();
}

id sub_190AFFC20()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B00014(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  v3 = sub_190CECC40();

  if (v3)
  {
    v4 = [v3 cnContact];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() sharedBlockList];
      [v6 unblockContact_];

      v3 = v6;
    }
  }

  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  return [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) updateDeletingIncomingMessages_];
}

uint64_t sub_190AFFDD0()
{
  v1 = OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190AFFE38()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_10()
{
  result = qword_1EAD5D510;
  if (!qword_1EAD5D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AFFF60()
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

uint64_t sub_190B00014(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190B000F8()
{
  result = qword_1EAD5D520;
  if (!qword_1EAD5D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D520);
  }

  return result;
}

uint64_t sub_190B0015C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D530);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = sub_190D52990();
  __swift_allocate_value_buffer(v6, qword_1EAD9E210);
  __swift_project_value_buffer(v6, qword_1EAD9E210);
  v7 = [objc_opt_self() tertiarySystemFillColor];
  sub_190D55CE0();
  v8 = *MEMORY[0x1E6981DA0];
  v9 = sub_190D565E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 104);
  v11(v5, v8, v9);
  v12 = *(v10 + 56);
  v12(v5, 0, 1, v9);
  v11(v2, *MEMORY[0x1E6981DB8], v9);
  v12(v2, 0, 1, v9);
  return sub_190D52970();
}

uint64_t sub_190B00330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_190D519C0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_190D572A0();
  v4[7] = sub_190D57290();
  v7 = sub_190D57240();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190B00430, v7, v6);
}

uint64_t sub_190B00430()
{
  v1 = v0[2];
  v2 = [v1 conversation];
  v3 = [v2 translationLanguageCode];

  sub_190D56F10();
  v4 = [v1 conversation];
  v5 = [v4 userTranslationLanguageCode];

  sub_190D56F10();
  sub_190D518B0();
  sub_190D518B0();
  sub_190D52030();
  v0[10] = sub_190D52010();
  v10 = (*MEMORY[0x1E69A66C0] + MEMORY[0x1E69A66C0]);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_190B005C4;
  v8 = v0[5];
  v7 = v0[6];

  return v10(v8, v7);
}

uint64_t sub_190B005C4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_190B00708, v3, v2);
}

uint64_t sub_190B00708()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_190B008EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v8[4] = sub_190D572A0();
  v8[5] = sub_190D57290();
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = sub_190B009CC;

  return (sub_190D11814)(a4, a5, a6);
}

uint64_t sub_190B009CC(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190B00B10, v3, v2);
}

uint64_t sub_190B00B10()
{
  v1 = v0[7];
  v2 = v0[2];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_190B00D14(char *a1, uint64_t a2, char *a3, void *a4, void (**a5)(void, void))
{
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v7 = sub_190D519C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  sub_190D52030();
  _Block_copy(a5);
  if (sub_190D51FD0())
  {
    v17 = [a4 chat];
    [v17 updateSendProgressForPendingTranslation];

    v18 = sub_190D572E0();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = *(v8 + 16);
    v19(v12, v32, v7);
    v19(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v7);
    sub_190D572A0();
    v33 = v34;
    sub_190D50920();
    v20 = sub_190D57290();
    v21 = *(v8 + 80);
    v22 = (v21 + 40) & ~v21;
    v23 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = (v9 + v21 + v22) & ~v21;
    v34 = v15;
    v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 2) = v20;
    *(v26 + 3) = v27;
    *(v26 + 4) = v33;
    v28 = *(v8 + 32);
    v28(&v26[v22], v12, v7);
    v28(&v26[v24], v23, v7);
    v29 = &v26[v25];
    *v29 = sub_19084CED8;
    v29[1] = v16;
    sub_190857E08(0, 0, v34, &unk_190DF1F10, v26);
  }

  else
  {
    a5[2](a5, 0);
  }
}

uint64_t sub_190B01078(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_190D519C0() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_190221DA0;

  return sub_190B008EC(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t sub_190B011CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190B00330(a1, v4, v5, v6);
}

uint64_t sub_190B01280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9E228);
  __swift_project_value_buffer(v10, qword_1EAD9E228);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190B01564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5A0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53940) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DE4300;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_190D50B20();
  v4[v1] = 1;
  sub_190D50B20();
  v4[2 * v1] = 2;
  sub_190D50B20();
  v4[3 * v1] = 3;
  sub_190D50B20();
  v4[4 * v1] = 4;
  sub_190D50B20();
  v4[5 * v1] = 5;
  sub_190D50B20();
  v4[6 * v1] = 6;
  sub_190D50B20();
  v4[7 * v1] = 7;
  sub_190D50B20();
  v5 = sub_1908234B8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9E240 = v5;
  return result;
}

unint64_t sub_190B017F8()
{
  result = qword_1EAD5D538;
  if (!qword_1EAD5D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D538);
  }

  return result;
}

uint64_t sub_190B01868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190B01F70();
  *a1 = result;
  return result;
}

void sub_190B01898(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6F6C6C6162;
  v5 = 0xE400000000000000;
  v6 = 1702260588;
  if (v2 != 6)
  {
    v6 = 0x6867696C746F7073;
    v5 = 0xE900000000000074;
  }

  v7 = 0x6B726F7765726966;
  v8 = 0xE900000000000073;
  if (v2 != 4)
  {
    v7 = 0x73726573616CLL;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x69747465666E6F63;
  if (v2 != 2)
  {
    v10 = 1869112165;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x74617262656C6563;
    v3 = 0xEB000000006E6F69;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_190B01998()
{
  result = qword_1EAD5D540;
  if (!qword_1EAD5D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D540);
  }

  return result;
}

unint64_t sub_190B019F0()
{
  result = qword_1EAD5D548;
  if (!qword_1EAD5D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D548);
  }

  return result;
}

unint64_t sub_190B01A48()
{
  result = qword_1EAD5D550;
  if (!qword_1EAD5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D550);
  }

  return result;
}

unint64_t sub_190B01AA0()
{
  result = qword_1EAD5D558;
  if (!qword_1EAD5D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D558);
  }

  return result;
}

unint64_t sub_190B01AF4()
{
  result = qword_1EAD5D560;
  if (!qword_1EAD5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D560);
  }

  return result;
}

unint64_t sub_190B01B48()
{
  result = qword_1EAD5D568;
  if (!qword_1EAD5D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D568);
  }

  return result;
}

unint64_t sub_190B01BA0()
{
  result = qword_1EAD5D570;
  if (!qword_1EAD5D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D570);
  }

  return result;
}

uint64_t sub_190B01BF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9E228);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190B01CEC(uint64_t a1)
{
  v2 = sub_190889BEC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190B01D3C()
{
  result = qword_1EAD5D578;
  if (!qword_1EAD5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D578);
  }

  return result;
}

unint64_t sub_190B01D94()
{
  result = qword_1EAD5D580;
  if (!qword_1EAD5D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D580);
  }

  return result;
}

unint64_t sub_190B01DEC()
{
  result = qword_1EAD5D588;
  if (!qword_1EAD5D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D588);
  }

  return result;
}

uint64_t sub_190B01E40()
{
  if (qword_1EAD51DB0 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_190B01E9C(uint64_t a1)
{
  v2 = sub_190B01BA0();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190B01EEC()
{
  result = qword_1EAD5D590;
  if (!qword_1EAD5D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D590);
  }

  return result;
}

uint64_t sub_190B01F70()
{
  v0 = sub_190D585F0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_190B01FC4()
{
  v1 = v0;
  v75 = sub_190D52E90();
  v2 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D518A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD750]) init];
  MEMORY[0x193AF2180]();
  sub_190D51850();
  (*(v6 + 8))(v8, v5);
  v10 = sub_190D56ED0();

  [v9 setIdentifier_];

  sub_190D569D0();
  v11 = sub_190D52690();
  *&v80 = sub_190C1EAD0(v11);
  sub_190B02E08(&v80);

  v12 = v80;
  v73 = v9;
  if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
  {
    v13 = sub_190D581C0();
    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = *(v80 + 16);
    if (v13)
    {
LABEL_4:
      *&v80 = MEMORY[0x1E69E7CC0];
      sub_190D58390();
      if (v13 < 0)
      {
        goto LABEL_52;
      }

      v72 = v1;
      v14 = 0;
      v74 = v12 & 0xC000000000000001;
      v15 = (v2 + 8);
      do
      {
        if (v74)
        {
          v16 = MEMORY[0x193AF3B90](v14, v12);
        }

        else
        {
          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = v16;
        ++v14;
        v18 = [objc_allocWithZone(MEMORY[0x1E69DD760]) init];
        v19 = sub_190D56950();
        v21 = v20;
        v22 = sub_190D51660();
        sub_19083B6D4(v19, v21);
        [v18 setData_];

        sub_190D56940();
        sub_190D52DF0();
        (*v15)(v4, v75);
        v23 = sub_190D56ED0();

        [v18 setType_];

        sub_190D56970();
        [v18 setSize_];
        sub_190D56960();
        v24 = sub_190D56ED0();

        [v18 setRole_];

        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      while (v13 != v14);

      v1 = v72;
      v9 = v73;
      goto LABEL_13;
    }
  }

LABEL_13:
  sub_1902188FC(0, &qword_1EAD5D5A8);
  v25 = sub_190D57160();

  [v9 setRepresentations_];

  sub_190D56A20();
  [v9 setEffectType_];
  sub_190D569F0();
  v26 = sub_190D56ED0();

  [v9 setName_];

  sub_190D56910();
  v27 = sub_190D56ED0();

  [v9 setExternalURI_];

  v28 = [v1 accessibilityLabel];
  [v9 setAccessibilityLabel_];

  v29 = sub_190D56A40();
  v31 = 0;
  if (v30 >> 60 != 15)
  {
    v32 = v29;
    v33 = v30;
    v31 = sub_190D51660();
    sub_19029064C(v32, v33);
  }

  [v9 setMetadata_];

  sub_190D569E0();
  if (v34)
  {
    v35 = sub_190D56ED0();
  }

  else
  {
    v35 = 0;
  }

  [v9 setAccessibilityName_];

  sub_190D56900();
  if (v36)
  {
    v37 = sub_190D56ED0();
  }

  else
  {
    v37 = 0;
  }

  [v9 setSearchText_];

  v38 = sub_190B02894();
  if (!v38)
  {
    return v9;
  }

  v12 = v38;
  v39 = 0;
  v40 = v38 + 64;
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v38 + 64);
  v44 = (v41 + 63) >> 6;
  v45 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v46 = v39;
    if (!v43)
    {
      break;
    }

    v47 = v39;
LABEL_34:
    v49 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v50 = v49 | (v47 << 6);
    v51 = (*(v12 + 48) + 16 * v50);
    v53 = *v51;
    v52 = v51[1];
    sub_19021834C(*(v12 + 56) + 32 * v50, v76);
    *&v77 = v53;
    *(&v77 + 1) = v52;
    sub_190824530(v76, &v78);
    sub_190D52690();
    v39 = v47;
LABEL_35:
    v80 = v77;
    v81[0] = v78;
    v81[1] = v79;
    v54 = *(&v77 + 1);
    if (!*(&v77 + 1))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5B0);
      v70 = sub_190D56D60();

      v9 = v73;
      [v73 setAttributionInfo_];

      return v9;
    }

    v55 = v80;
    sub_190824530(v81, &v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5B0);
    if (swift_dynamicCast())
    {
      v75 = *&v76[0];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v77 = v45;
      v57 = sub_19022DCEC(v55, v54);
      v59 = v45[2];
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
        goto LABEL_53;
      }

      v63 = v58;
      if (v45[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_44;
        }

        v66 = v57;
        sub_190B69BA4();
        v57 = v66;
        if ((v63 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        v65 = v57;

        v45 = v77;
        *(*(v77 + 56) + 8 * v65) = v75;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_190B66140(v62, isUniquelyReferenced_nonNull_native);
        v57 = sub_19022DCEC(v55, v54);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_55;
        }

LABEL_44:
        if (v63)
        {
          goto LABEL_45;
        }

LABEL_47:
        v45 = v77;
        *(v77 + 8 * (v57 >> 6) + 64) |= 1 << v57;
        v67 = (v45[6] + 16 * v57);
        *v67 = v55;
        v67[1] = v54;
        *(v45[7] + 8 * v57) = v75;
        swift_unknownObjectRelease();
        v68 = v45[2];
        v61 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v61)
        {
          goto LABEL_54;
        }

        v45[2] = v69;
      }
    }

    else
    {
    }
  }

  if (v44 <= v39 + 1)
  {
    v48 = v39 + 1;
  }

  else
  {
    v48 = v44;
  }

  v39 = v48 - 1;
  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v44)
    {
      v43 = 0;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      goto LABEL_35;
    }

    v43 = *(v40 + 8 * v47);
    ++v46;
    if (v43)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  sub_190D587C0();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_190B02894()
{
  result = sub_190D569C0();
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC8];
    v18 = MEMORY[0x1E69E7CC8];
    v3 = sub_190D569B0();
    if (v3)
    {
      v4 = v3;
      v17 = sub_1902188FC(0, &qword_1EAD46510);
      *&v16 = v4;
      sub_190824530(&v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_190C1BE80(v15, 0x64692D6D616461, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v18 = v2;
    }

    else
    {
      sub_190C815F4(0x64692D6D616461, 0xE700000000000000, &v16);
      sub_19021E7D8(&v16);
    }

    v6 = sub_190D56990();
    v8 = MEMORY[0x1E69E6158];
    if (v7)
    {
      v17 = MEMORY[0x1E69E6158];
      *&v16 = v6;
      *(&v16 + 1) = v7;
      sub_190824530(&v16, v15);
      v9 = v18;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_190C1BE80(v15, 0x692D656C646E7562, 0xE900000000000064, v10);
      v18 = v9;
    }

    else
    {
      sub_190C815F4(0x692D656C646E7562, 0xE900000000000064, &v16);
      sub_19021E7D8(&v16);
    }

    v11 = sub_190D569A0();
    if (v12)
    {
      v17 = v8;
      *&v16 = v11;
      *(&v16 + 1) = v12;
      sub_190824530(&v16, v15);
      v13 = v18;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_190C1BE80(v15, 1701667182, 0xE400000000000000, v14);

      return v13;
    }

    else
    {
      sub_190C815F4(1701667182, 0xE400000000000000, &v16);

      sub_19021E7D8(&v16);
      return v18;
    }
  }

  return result;
}

id StickersFrameworkInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickersFrameworkInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersFrameworkInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StickersFrameworkInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersFrameworkInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190B02E08(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1909E52A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_190B02E84(v6);
  return sub_190D58370();
}

void sub_190B02E84(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_190D56980();
        v6 = sub_190D571D0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_190B03058(v8, v9, a1, v4);
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
    sub_190B02F88(0, v2, 1, a1);
  }
}

void sub_190B02F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_190D56930();

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_190B03058(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_1909E383C(v8);
    }

    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v8[16 * v88];
        v90 = *&v8[16 * v88 + 24];
        sub_190B03648((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v6);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v90 < v89)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1909E383C(v8);
        }

        if (v88 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v91 = &v8[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        sub_1909E37B0(v88 - 1);
        v88 = *(v8 + 2);
        if (v88 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v93 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      v17 = sub_190D56930();

      v95 = v7;
      v18 = v7 + 2;
      while (v6 != v18)
      {
        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        LODWORD(v19) = sub_190D56930() & 1;

        ++v18;
        ++v13;
        if ((v17 & 1) != v19)
        {
          v6 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        v9 = v95;
        if (v6 < v95)
        {
          goto LABEL_117;
        }

        if (v95 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v95;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v93;
      }

      else
      {
        v10 = v6;
        v5 = v93;
        v9 = v95;
      }
    }

    v6 = a3;
    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_190835714(0, *(v8 + 2) + 1, 1, v8);
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v8 = sub_190835714((v41 > 1), v42 + 1, 1, v8);
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v10;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_107;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_106;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_109;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_190B03648((*v6 + 8 * v85), (*v6 + 8 * *&v8[16 * v46 + 32]), (*v6 + 8 * v86), v45);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v86 < v85)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1909E383C(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_1909E37B0(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_108;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v94 = v5;
  v96 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = v9 - v10;
  v98 = v28;
LABEL_30:
  v100 = v10;
  v32 = *(v29 + 8 * v10);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = v32;
    v37 = v35;
    v38 = sub_190D56930();

    if ((v38 & 1) == 0)
    {
LABEL_29:
      v10 = v100 + 1;
      v30 += 8;
      --v31;
      if (v100 + 1 != v98)
      {
        goto LABEL_30;
      }

      v10 = v98;
      v5 = v94;
      v9 = v96;
      v6 = a3;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v39 = *v34;
    v32 = *(v34 + 8);
    *v34 = v32;
    *(v34 + 8) = v39;
    v34 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_190B03648(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_190D56930();

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_190D56930();

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

void sub_190B038C0()
{
  v1 = sub_190D56920();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D568C0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D4638], v6);
  sub_190D568E0();
  swift_allocObject();
  sub_190D568B0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69D4728], v1);
  v9 = sub_190D568D0();
  if (v0)
  {

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v10 = v9;
    (*(v2 + 8))(v4, v1);
    if (v10)
    {
      sub_190D56A00();
      sub_190D56A30();
      sub_190D568A0();
    }
  }
}

uint64_t sub_190B03B30()
{
  v0 = sub_190D56920();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_190D568C0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D4638], v5);
  sub_190D568E0();
  swift_allocObject();
  sub_190D568B0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D4708], v0);
  v9 = sub_190D568D0();
  (*(v1 + 8))(v3, v0);
  if (v9)
  {
    v10 = v9;
    v11 = sub_190B01FC4();

    return v11;
  }

  else
  {

    return 0;
  }
}

id sub_190B03E0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  LODWORD(v42) = a2;
  v50 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v42 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B28);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v42 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5B8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v42 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5C0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v42 - v12;
  v13 = sub_190D52700();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x1E69957D8], v13, v15);
  sub_190D50920();
  v18 = sub_190D52760();

  (*(v14 + 8))(v17, v13);
  result = CKFrameworkBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_190D56ED0();
    v22 = sub_190D56ED0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v24 = sub_190D56F10();
    v26 = v25;

    v51 = v24;
    v52 = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    v28 = v42 & 1;
    *(v27 + 24) = v42 & 1;
    v29 = v47;
    *(v27 + 32) = v47;
    sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D56080();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    v30 = v45;
    sub_190D55670();
    (*(v5 + 8))(v7, v30);
    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = (v18 & 1) == 0;
    (*(v44 + 32))(v11, v9, v46);
    v33 = &v11[*(v43 + 36)];
    *v33 = KeyPath;
    v33[1] = sub_1908D9D28;
    v33[2] = v32;
    if (v18)
    {
      v34 = sub_190D55D40();
    }

    else
    {
      v34 = sub_190D55E10();
    }

    v35 = v34;
    v36 = v49;
    sub_19027E2A8(v11, v49);
    *(v36 + *(v48 + 36)) = v35;
    v37 = sub_190D549E0();
    v45 = v38;
    v46 = v37;
    LODWORD(v43) = v39;
    v44 = v40;
    v53 = v28;
    v54 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
    v41 = sub_190D55FF0();
    v42 = &v42;
    MEMORY[0x1EEE9AC00](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
    sub_190B04BFC();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    sub_190D55980();

    return sub_19027E318(v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B0449C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a3;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v43 - v17;
  result = CKFrameworkBundle();
  if (result)
  {
    v19 = result;
    v44 = a4;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v51 = v23;
    v52 = v25;
    sub_190D53970();
    v26 = sub_190D539A0();
    v43 = *(*(v26 - 8) + 56);
    v43(v8, 0, 1, v26);
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = v48 & 1;
    *(v27 + 32) = v49;
    sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D56060();
    result = CKFrameworkBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_190D56ED0();
      v30 = sub_190D56ED0();
      v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

      v32 = sub_190D56F10();
      v34 = v33;

      v51 = v32;
      v52 = v34;
      sub_190D53980();
      v43(v8, 0, 1, v26);
      v35 = v45;
      sub_190D56060();
      v36 = *(v10 + 16);
      v37 = v46;
      v38 = v50;
      v36(v46, v50, v9);
      v39 = v47;
      v36(v47, v35, v9);
      v40 = v44;
      v36(v44, v37, v9);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
      v36(&v40[*(v41 + 48)], v39, v9);
      v42 = *(v10 + 8);
      v42(v35, v9);
      v42(v38, v9);
      v42(v39, v9);
      return (v42)(v37, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190B04984(uint64_t a1)
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DF70);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Leave conversation button was tapped and confirmed.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = *(a1 + 16);

  return [v6 leave];
}

id sub_190B04A7C@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_190B04BFC()
{
  result = qword_1EAD5D5C8;
  if (!qword_1EAD5D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D5C0);
    sub_190B04CB4();
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D5C8);
  }

  return result;
}

unint64_t sub_190B04CB4()
{
  result = qword_1EAD5D5D0;
  if (!qword_1EAD5D5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D5B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D5D0);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_190B04E2C()
{
  swift_getKeyPath();
  sub_190B056C0(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B056C0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  LODWORD(v1) = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState];

  result = CKFrameworkBundle();
  v4 = result;
  if (v1 == 1)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (result)
  {
LABEL_5:
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_190D56F10();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_190B0501C()
{
  swift_getKeyPath();
  sub_190B056C0(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B056C0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState];

  if (v3 != 2)
  {
    return sub_190D55D50();
  }

  v4 = [objc_opt_self() secondaryLabelColor];
  return sub_190D55CE0();
}

void sub_190B05180()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B056C0(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B056C0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  LODWORD(v2) = v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState];

  if (v2 != 2)
  {
    swift_getKeyPath();
    sub_190D51C20();

    v4 = *(v1 + 16);
    if (*(v4 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState) != 2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v6 = v4;
      sub_190D51C10();
    }

    swift_getKeyPath();
    sub_190D51C20();

    v7 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
    [v7 downloadPurgedAttachments];
  }
}

uint64_t sub_190B05418()
{

  v1 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190B054B0()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_190D50920();

  v3(v0 + OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_11()
{
  result = qword_1EAD5D5E0;
  if (!qword_1EAD5D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B0561C()
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

uint64_t sub_190B056C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190B05728()
{
  sub_190B058B4(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_190B058B4(319, &qword_1EAD5D678, _s9ViewModelCMa_12, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      sub_190B058B4(319, &qword_1EAD562D0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_19081C950();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190B058B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_190B0595C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _s11ContentViewVMa_4();
  v9 = v8[10];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v10 = (a4 + v8[11]);
  *(a4 + v8[12]) = 3;
  type metadata accessor for DetailsViewConfiguration();
  sub_190B06FA4(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v11 = a1;
  sub_190D56340();
  _s9ViewModelCMa_12();
  v12 = swift_allocObject();
  v13 = v11;
  sub_190D51C50();
  sub_190D51C50();
  *(v12 + 16) = v13;
  sub_190B06FA4(&qword_1EAD5A2B0, _s9ViewModelCMa_12);
  sub_190D56340();

  *v10 = a2;
  v10[1] = a3;
}

uint64_t sub_190B05AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = *(a1 + 16);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  v6 = sub_190D54200();
  v7 = sub_190D58050();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D680);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = *(a1 + 24);
  v42 = v4;
  v43 = v19;
  v44 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D688);
  sub_190B069AC();
  sub_190D562E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
  sub_190D56320();
  v37 = v14;
  *&v18[*(v14 + 36)] = v48[0];
  v20 = *(v2 + *(a1 + 44));
  if (v20)
  {
    LOBYTE(v48[0]) = *(v2 + *(a1 + 48));
    v21 = v34;
    v20(v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
    sub_190D56320();

    v22 = [objc_opt_self() currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == 5)
    {
      v24 = sub_190D55DA0();
    }

    else
    {
      v24 = 0;
    }

    v48[0] = v24;
    sub_190D55940();

    (*(v35 + 8))(v21, v4);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(*(v6 - 8) + 56))(v11, v25, 1, v6);
  v26 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
  v48[3] = v19;
  v48[4] = v26;
  v48[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v28 = v39;
  sub_19096BC74(v11, v7, WitnessTable);
  v29 = v38;
  v30 = *(v38 + 8);
  v30(v11, v7);
  v31 = v36;
  sub_190B06A5C(v18, v36);
  v48[0] = v31;
  v32 = v40;
  (*(v29 + 16))(v40, v28, v7);
  v48[1] = v32;
  v47[0] = v37;
  v47[1] = v7;
  v45 = sub_190B06ACC();
  v46 = WitnessTable;
  sub_190B74A3C(v48, 2uLL, v47);
  v30(v28, v7);
  sub_190B06C3C(v18);
  v30(v32, v7);
  return sub_190B06C3C(v31);
}

uint64_t sub_190B06048@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v25 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = _s11ContentViewVMa_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
  sub_190D56320();
  v16 = sub_190CE4CF0();

  if (v16)
  {
    sub_190B063E8(v15);
    sub_190B063E8(v15);
    v17 = *(v3 + 16);
    v17(v8, v14, v2);
    v17(v5, v11, v2);
    v18 = v26;
    v17(v26, v8, v2);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
    v17((v18 + *(v19 + 48)), v5, v2);
    v20 = *(v3 + 8);
    v20(v11, v2);
    v20(v14, v2);
    v20(v5, v2);
    v20(v8, v2);
    v21 = v28;
    sub_190B06CA4(v18, v28);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    v22 = 1;
    v23 = v28;
  }

  return (*(v27 + 56))(v23, v22, 1, v29);
}

uint64_t sub_190B063E8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_190D56030();
}

void sub_190B06534()
{
  _s11ContentViewVMa_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190B06FA4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v0 = *(v4 + 16);
  swift_getKeyPath();
  v1 = v0;
  sub_190D51C20();

  v2 = *(v4 + 16);
  v3 = v2;
  sub_190CEBFBC(v2 | 0x4000000000000000);
}

id sub_190B06668@<X0>(uint64_t a1@<X8>)
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

void sub_190B06768()
{
  _s11ContentViewVMa_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
  sub_190D56320();
  swift_getKeyPath();
  sub_190B06FA4(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v0 = *(v4 + 16);
  swift_getKeyPath();
  v1 = v0;
  sub_190D51C20();

  v2 = *(v4 + 16);
  v3 = v2;
  sub_190CEBFBC(v2 | 0x2000000000000000);
}

id sub_190B0689C@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_190B069AC()
{
  result = qword_1EAD5D690;
  if (!qword_1EAD5D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D688);
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D690);
  }

  return result;
}

uint64_t sub_190B06A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190B06ACC()
{
  result = qword_1EAD5D698;
  if (!qword_1EAD5D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D680);
    sub_190B06B58();
    sub_190B06BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D698);
  }

  return result;
}

unint64_t sub_190B06B58()
{
  result = qword_1EAD5D6A0;
  if (!qword_1EAD5D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D6A8);
    sub_190B069AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6A0);
  }

  return result;
}

unint64_t sub_190B06BE8()
{
  result = qword_1EAD5D6B0;
  if (!qword_1EAD5D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6B0);
  }

  return result;
}

uint64_t sub_190B06C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190B06CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_30()
{
  v1 = _s11ContentViewVMa_4();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53D10();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190B06F0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(_s11ContentViewVMa_4() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_190B06FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190B06FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9E260);
  __swift_project_value_buffer(v10, qword_1EAD9E260);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190B072D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D720);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53930) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DDD0E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_190D50B20();
  v4[v1] = 1;
  sub_190D50B20();
  v4[2 * v1] = 2;
  sub_190D50B20();
  v4[3 * v1] = 3;
  sub_190D50B20();
  v5 = sub_1908236A0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9E278 = v5;
  return result;
}

unint64_t sub_190B074A8()
{
  result = qword_1EAD5D6B8;
  if (!qword_1EAD5D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6B8);
  }

  return result;
}

uint64_t sub_190B074FC()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B075CC()
{
  sub_190D56FC0();
}

uint64_t sub_190B07688()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B07754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190B07DEC();
  *a1 = result;
  return result;
}

void sub_190B07784(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = 0xE700000000000000;
  v5 = 0x72656B63697473;
  if (*v1 != 2)
  {
    v5 = 0x656C756465686373;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x6E6F697463616572;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_190B07814()
{
  result = qword_1EAD5D6C0;
  if (!qword_1EAD5D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6C0);
  }

  return result;
}

unint64_t sub_190B0786C()
{
  result = qword_1EAD5D6C8;
  if (!qword_1EAD5D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6C8);
  }

  return result;
}

unint64_t sub_190B078C4()
{
  result = qword_1EAD5D6D0;
  if (!qword_1EAD5D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6D0);
  }

  return result;
}

unint64_t sub_190B0791C()
{
  result = qword_1EAD5D6D8;
  if (!qword_1EAD5D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6D8);
  }

  return result;
}

unint64_t sub_190B07970()
{
  result = qword_1EAD5D6E0;
  if (!qword_1EAD5D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6E0);
  }

  return result;
}

unint64_t sub_190B079C4()
{
  result = qword_1EAD5D6E8;
  if (!qword_1EAD5D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6E8);
  }

  return result;
}

unint64_t sub_190B07A1C()
{
  result = qword_1EAD5D6F0;
  if (!qword_1EAD5D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6F0);
  }

  return result;
}

uint64_t sub_190B07A70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9E260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190B07B68(uint64_t a1)
{
  v2 = sub_190889A8C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190B07BB8()
{
  result = qword_1EAD5D6F8;
  if (!qword_1EAD5D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D6F8);
  }

  return result;
}

unint64_t sub_190B07C10()
{
  result = qword_1EAD5D700;
  if (!qword_1EAD5D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D700);
  }

  return result;
}

unint64_t sub_190B07C68()
{
  result = qword_1EAD5D708;
  if (!qword_1EAD5D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D708);
  }

  return result;
}

uint64_t sub_190B07CBC()
{
  if (qword_1EAD51DC0 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_190B07D18(uint64_t a1)
{
  v2 = sub_190B07A1C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190B07D68()
{
  result = qword_1EAD5D710;
  if (!qword_1EAD5D710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D710);
  }

  return result;
}

uint64_t sub_190B07DEC()
{
  v0 = sub_190D585F0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_190B07E40(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_190D56770();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D567A0();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D56780();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F88], v10);
  v14 = sub_190D578A0();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = v2;
  v15[3] = v16;
  v15[4] = a2;
  aBlock[4] = sub_190B096DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_79;
  v17 = _Block_copy(aBlock);
  sub_190D50920();
  sub_190D50920();
  sub_190D56790();
  v24 = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v9, v6, v17);
  _Block_release(v17);

  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

uint64_t sub_190B081D4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v27 = a6;
  v11 = sub_190D56770();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_190D567A0();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v28 = sub_190D57870();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = v27;
  v17[6] = a5;
  v17[7] = v18;
  aBlock[4] = sub_190B0D204;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_33;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = a1;
  v22 = a5;
  v23 = v18;
  sub_190D50920();

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  v24 = v28;
  MEMORY[0x193AF3110](0, v16, v13, v19);
  _Block_release(v19);

  (*(v31 + 8))(v13, v11);
  return (*(v29 + 8))(v16, v30);
}

void sub_190B084D0(void *a1, void (*a2)(uint64_t), uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v8 = a1;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9D730);
    v10 = a1;
    v11 = sub_190D53020();
    v12 = sub_190D576A0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_190D58800();
      v17 = sub_19021D9F8(v15, v16, &v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_19020E000, v11, v12, "Errored while loading PosterKit gallery %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x193AF7A40](v14, -1, -1);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }

    a2(MEMORY[0x1E69E7CC0]);
  }

  else if (a4)
  {
    v20 = a4;
    v21 = [v20 descriptors];
    v22 = [v21 postersByProvider];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D730);
    v23 = sub_190D56D90();

    sub_190B0B894(v23);
    [a5 stopTimingForKey_];
    [a5 totalTimeForKey_];
    v25 = v24;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v26 = sub_190D53040();
    __swift_project_value_buffer(v26, qword_1EAD9D730);
    v27 = sub_190D53020();
    v28 = sub_190D57680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&dword_19020E000, v27, v28, "Gallery response took %f seconds.", v29, 0xCu);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }

    v30 = sub_190B0C760(v23);

    a2(v30);
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9D730);
    v32 = sub_190D53020();
    v33 = sub_190D576A0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_19020E000, v32, v33, "Poster Gallery was unexpectedly nil.", v34, 2u);
      MEMORY[0x193AF7A40](v34, -1, -1);
    }

    a2(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_190B0891C@<X0>(uint64_t a1@<X8>)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v2 = sub_190D58200();
  gotLoadHelper_x8__OBJC_CLASS___PRSPosterDescriptor(v3);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D730);
    v7 = v2;
    v8 = sub_190D53020();
    v9 = sub_190D57680();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40[0] = v39;
      *v10 = 136315138;
      v11 = [v5 description];
      v12 = sub_190D56F10();
      v14 = v13;

      v15 = sub_19021D9F8(v12, v14, v40);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_19020E000, v8, v9, "> Creating gallery suggestion: %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x193AF7A40](v39, -1, -1);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }

    v16 = [v5 identifier];
    v17 = sub_190D56F10();
    v19 = v18;

    v40[0] = 0;
    v20 = [v5 loadUserInfoWithError_];
    v21 = v40[0];
    if (v20)
    {
      v22 = v20;
      v23 = sub_190D56D90();
      v24 = v21;
    }

    else
    {
      v31 = v40[0];
      v32 = sub_190D51420();

      swift_willThrow();
      v23 = 0;
    }

    v33 = _s21BackgroundGalleryItemVMa(0);
    v34 = v33[7];
    v35 = _s17BackgroundContentOMa(0);
    (*(*(v35 - 8) + 56))(a1 + v34, 1, 1, v35);
    v36 = (a1 + v33[8]);
    *v36 = v5;
    v36[1] = v17;
    v36[2] = v19;
    swift_storeEnumTagMultiPayload();
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v17;
    *(a1 + 24) = v19;
    *(a1 + 32) = 0;
    v37 = (a1 + v33[9]);
    *v37 = 0u;
    v37[1] = 0u;
    *(a1 + v33[10]) = xmmword_190DEC9A0;
    *(a1 + v33[11]) = v23;
    v38 = (a1 + v33[12]);
    *v38 = 0xD000000000000017;
    v38[1] = 0x8000000190E733E0;
    (*(*(v33 - 1) + 56))(a1, 0, 1, v33);
    return sub_190D52690();
  }

  else
  {

    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v25 = sub_190D53040();
    __swift_project_value_buffer(v25, qword_1EAD9D730);
    v26 = sub_190D53020();
    v27 = sub_190D576A0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_19020E000, v26, v27, "Programming error in gallery – encountered type that is not a descriptor.", v28, 2u);
      MEMORY[0x193AF7A40](v28, -1, -1);
    }

    v29 = _s21BackgroundGalleryItemVMa(0);
    return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }
}

unint64_t sub_190B08DD4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = _s21BackgroundGalleryItemVMa(0);
  v7 = *(a1 + *(v6 + 44));
  if (!v7)
  {
    goto LABEL_8;
  }

  *&v16 = 0x6564724F74726F73;
  *(&v16 + 1) = 0xE900000000000072;
  sub_190D58230();
  if (!*(v7 + 16) || (v8 = sub_190875C84(v15), (v9 & 1) == 0))
  {
    sub_19084CFD0(v15);
LABEL_8:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  sub_19021834C(*(v7 + 56) + 32 * v8, &v16);
  sub_19084CFD0(v15);
  if (!*(&v17 + 1))
  {
LABEL_9:
    sub_19022EEA4(&v16, &unk_1EAD551C0);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v15[0];
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  v11 = *(a2 + *(v6 + 44));
  if (!v11)
  {
LABEL_19:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_20;
  }

  sub_190D58230();
  if (!*(v11 + 16) || (v12 = sub_190875C84(v15), (v13 & 1) == 0))
  {
    sub_19084CFD0(v15);
    goto LABEL_19;
  }

  sub_19021834C(*(v11 + 56) + 32 * v12, &v16);
  sub_19084CFD0(v15);
  if (!*(&v17 + 1))
  {
LABEL_20:
    sub_19022EEA4(&v16, &unk_1EAD551C0);
LABEL_21:
    result = v10 >> 63;
    if ((a3 & 1) == 0)
    {
      return result;
    }

    return result ^ 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  result = v10 < v15[0];
  if (a3)
  {
    return result ^ 1;
  }

  return result;
}

uint64_t sub_190B08FD4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190B09040(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D56770();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_190D567A0();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v12 = sub_190D57870();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_190B0D1C0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_21_4;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_190D50920();

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_190B09318(void *a1, uint64_t a2)
{
  [a1 stopTimingForKey_];
  [a1 totalTimeForKey_];
  v5 = v4;
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D730);
  oslog = sub_190D53020();
  v7 = sub_190D57680();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v5;
    _os_log_impl(&dword_19020E000, oslog, v7, "[Suggestions] First featured photo suggestion response took %f seconds.", v8, 0xCu);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }
}

uint64_t sub_190B09444(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(void *))
{
  a3();
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D730);
  sub_190D52690();
  v9 = a1;
  v10 = sub_190D53020();
  v11 = sub_190D57680();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 != 0;

    *(v12 + 8) = 2080;
    if (a2)
    {
      v14 = sub_190D56DA0();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_19021D9F8(v14, v16, &v19);

    *(v12 + 10) = v17;
    _os_log_impl(&dword_19020E000, v10, v11, "[Suggestions] Calling completion with image. hasImage=%{BOOL}d. info=%s", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x193AF7A40](v13, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  else
  {
  }

  return a5(a1);
}

uint64_t sub_190B09630(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_190D56D90();
  }

  else
  {
    v5 = 0;
  }

  sub_190D50920();
  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_190B096DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_190D50920();
  sub_190B0CD24(v1, v2);
}

void sub_190B09734(void **a1, char a2)
{
  v4 = *(_s21BackgroundGalleryItemVMa(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1909E3A0C(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_190B097EC(v7, a2 & 1);
  *a1 = v5;
}

void sub_190B097EC(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = sub_190D58710();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s21BackgroundGalleryItemVMa(0);
        v8 = sub_190D571D0();
        *(v8 + 16) = v7;
      }

      v9 = *(_s21BackgroundGalleryItemVMa(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_190B09CF0(v10, v11, a1, v6, a2 & 1);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_190B09924(0, v4, 1, a1, a2 & 1);
  }
}

void sub_190B09924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v49 = a5;
  v9 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v42 = *a4;
    v36 = v18;
    v22 = v42 + v18 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v23 = v21;
    v24 = v19;
    while (1)
    {
      sub_190B0D284(v22, v17);
      sub_190B0D284(v24, v13);
      v25 = *&v17[*(v9 + 44)];
      if (!v25)
      {
        goto LABEL_13;
      }

      *&v47 = 0x6564724F74726F73;
      *(&v47 + 1) = 0xE900000000000072;
      sub_190D58230();
      if (!*(v25 + 16))
      {
        break;
      }

      v26 = sub_190875C84(v46);
      if ((v27 & 1) == 0)
      {
        break;
      }

      sub_19021834C(*(v25 + 56) + 32 * v26, &v47);
      sub_19084CFD0(v46);
      if (!*(&v48 + 1))
      {
        goto LABEL_14;
      }

      if (swift_dynamicCast())
      {
        v28 = v46[0];
        goto LABEL_16;
      }

LABEL_15:
      v28 = 0;
LABEL_16:
      v29 = *&v13[*(v9 + 44)];
      if (!v29)
      {
        goto LABEL_24;
      }

      v44 = 0x6564724F74726F73;
      v45 = 0xE900000000000072;
      sub_190D58230();
      if (!*(v29 + 16) || (v30 = sub_190875C84(v46), (v31 & 1) == 0))
      {
        sub_19084CFD0(v46);
LABEL_24:
        v47 = 0u;
        v48 = 0u;
LABEL_25:
        sub_19022EEA4(&v47, &unk_1EAD551C0);
LABEL_26:
        v32 = v28 >> 63;
        if ((v49 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      sub_19021834C(*(v29 + 56) + 32 * v30, &v47);
      sub_19084CFD0(v46);
      if (!*(&v48 + 1))
      {
        goto LABEL_25;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_26;
      }

      LOBYTE(v32) = v28 < v46[0];
      if ((v49 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      LOBYTE(v32) = v32 ^ 1;
LABEL_28:
      sub_1908D5A5C(v13);
      sub_1908D5A5C(v17);
      if ((v32 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v42)
      {
        __break(1u);
        return;
      }

      v33 = v43;
      sub_190A94600(v22, v43);
      swift_arrayInitWithTakeFrontToBack();
      sub_190A94600(v33, v24);
      v24 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    sub_19084CFD0(v46);
LABEL_13:
    v47 = 0u;
    v48 = 0u;
LABEL_14:
    sub_19022EEA4(&v47, &unk_1EAD551C0);
    goto LABEL_15;
  }
}

void sub_190B09CF0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v140 = a5;
  v125 = a1;
  v9 = _s21BackgroundGalleryItemVMa(0);
  v135 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v137 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v136 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_145:
    a3 = *v125;
    if (!*v125)
    {
      goto LABEL_187;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_181;
    }

    v116 = a4;
LABEL_148:
    v147 = v116;
    a4 = *(v116 + 2);
    if (a4 >= 2)
    {
      while (*v136)
      {
        v117 = *&v116[16 * a4];
        v118 = v116;
        v119 = *&v116[16 * a4 + 24];
        sub_190B0AA60(*v136 + *(v135 + 72) * v117, *v136 + *(v135 + 72) * *&v116[16 * a4 + 16], *v136 + *(v135 + 72) * v119, a3, v140 & 1);
        if (v6)
        {
          goto LABEL_159;
        }

        if (v119 < v117)
        {
          goto LABEL_174;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1909E383C(v118);
        }

        if (a4 - 2 >= *(v118 + 2))
        {
          goto LABEL_175;
        }

        v120 = &v118[16 * a4];
        *v120 = v117;
        *(v120 + 1) = v119;
        v147 = v118;
        sub_1909E37B0(a4 - 1);
        v116 = v147;
        a4 = *(v147 + 2);
        if (a4 <= 1)
        {
          goto LABEL_159;
        }
      }

      goto LABEL_185;
    }

LABEL_159:

    return;
  }

  v121 = &v121 - v25;
  v122 = v26;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v124 = a4;
  v133 = v20;
  while (1)
  {
    v128 = v29;
    if (v28 + 1 >= v27)
    {
      v47 = v28 + 1;
      goto LABEL_47;
    }

    v138 = v27;
    v30 = *v136;
    v31 = *(v135 + 72);
    a3 = *v136 + v31 * (v28 + 1);
    v32 = v121;
    sub_190B0D284(a3, v121);
    v132 = v30;
    v33 = v30 + v31 * v28;
    v34 = v28;
    v35 = v122;
    sub_190B0D284(v33, v122);
    LODWORD(v134) = sub_190B08DD4(v32, v35, v140 & 1);
    if (v6)
    {
      sub_1908D5A5C(v35);
      sub_1908D5A5C(v32);
      goto LABEL_159;
    }

    sub_1908D5A5C(v35);
    sub_1908D5A5C(v32);
    v123 = v34;
    v36 = v34 + 2;
    v37 = v132 + v31 * (v34 + 2);
    v132 = 0;
    do
    {
      if (v138 == v36)
      {
        v47 = v138;
        goto LABEL_33;
      }

      v38 = v137;
      sub_190B0D284(v37, v137);
      sub_190B0D284(a3, v20);
      v39 = *(v38 + *(v9 + 44));
      if (!v39)
      {
        goto LABEL_15;
      }

      *&v145 = 0x6564724F74726F73;
      *(&v145 + 1) = 0xE900000000000072;
      sub_190D58230();
      if (!*(v39 + 16) || (v40 = sub_190875C84(v144), (v41 & 1) == 0))
      {
        sub_19084CFD0(v144);
LABEL_15:
        v145 = 0u;
        v146 = 0u;
LABEL_16:
        sub_19022EEA4(&v145, &unk_1EAD551C0);
        goto LABEL_17;
      }

      sub_19021834C(*(v39 + 56) + 32 * v40, &v145);
      sub_19084CFD0(v144);
      if (!*(&v146 + 1))
      {
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        v42 = v144[0];
        goto LABEL_18;
      }

LABEL_17:
      v42 = 0;
LABEL_18:
      v43 = *&v20[*(v9 + 44)];
      if (!v43)
      {
        goto LABEL_26;
      }

      v142 = 0x6564724F74726F73;
      v143 = 0xE900000000000072;
      sub_190D58230();
      if (!*(v43 + 16) || (v44 = sub_190875C84(v144), (v45 & 1) == 0))
      {
        sub_19084CFD0(v144);
LABEL_26:
        v145 = 0u;
        v146 = 0u;
LABEL_27:
        sub_19022EEA4(&v145, &unk_1EAD551C0);
LABEL_28:
        v46 = v42 >> 63;
        if ((v140 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_29;
      }

      sub_19021834C(*(v43 + 56) + 32 * v44, &v145);
      sub_19084CFD0(v144);
      if (!*(&v146 + 1))
      {
        goto LABEL_27;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      LODWORD(v46) = v42 < v144[0];
      if ((v140 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_29:
      LODWORD(v46) = v46 ^ 1;
LABEL_6:
      sub_1908D5A5C(v20);
      sub_1908D5A5C(v137);
      ++v36;
      v37 += v31;
      a3 += v31;
      v6 = v132;
    }

    while (((v134 ^ v46) & 1) == 0);
    v47 = v36 - 1;
LABEL_33:
    a4 = v124;
    v28 = v123;
    if (v134)
    {
      if (v47 >= v123)
      {
        if (v123 < v47)
        {
          v48 = v31 * (v47 - 1);
          v49 = v47 * v31;
          v138 = v47;
          v50 = v123;
          v134 = v31;
          v51 = v123 * v31;
          do
          {
            if (v50 != --v47)
            {
              v52 = *v136;
              if (!*v136)
              {
                goto LABEL_184;
              }

              a3 = v52 + v51;
              sub_190A94600(v52 + v51, v127);
              if (v51 < v48 || a3 >= (v52 + v49))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v51 != v48)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_190A94600(v127, v52 + v48);
            }

            ++v50;
            v48 -= v134;
            v49 -= v134;
            v51 += v134;
          }

          while (v50 < v47);
          v6 = v132;
          a4 = v124;
          v28 = v123;
          v47 = v138;
        }

        goto LABEL_47;
      }

LABEL_180:
      __break(1u);
LABEL_181:
      v116 = sub_1909E383C(a4);
      goto LABEL_148;
    }

LABEL_47:
    v53 = v136[1];
    if (v47 >= v53)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v47, v28))
    {
      goto LABEL_177;
    }

    if (v47 - v28 >= a4)
    {
      goto LABEL_56;
    }

    if (__OFADD__(v28, a4))
    {
      goto LABEL_178;
    }

    if ((v28 + a4) >= v53)
    {
      a3 = v136[1];
    }

    else
    {
      a3 = v28 + a4;
    }

    if (a3 < v28)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v47 == a3)
    {
LABEL_56:
      a3 = v47;
      if (v47 < v28)
      {
        goto LABEL_176;
      }

      goto LABEL_57;
    }

    v132 = v6;
    v99 = *v136;
    v100 = *(v135 + 72);
    v101 = *v136 + v100 * (v47 - 1);
    v102 = v47;
    v103 = -v100;
    v123 = v28;
    v104 = v28 - v102;
    v138 = v102;
    v126 = v100;
    v105 = v99 + v102 * v100;
    v129 = a3;
LABEL_112:
    v130 = v105;
    v106 = v105;
    v131 = v104;
    v134 = v101;
    v107 = v101;
LABEL_113:
    sub_190B0D284(v106, v17);
    sub_190B0D284(v107, v141);
    v108 = *&v17[*(v9 + 44)];
    if (!v108)
    {
      goto LABEL_120;
    }

    *&v145 = 0x6564724F74726F73;
    *(&v145 + 1) = 0xE900000000000072;
    sub_190D58230();
    if (!*(v108 + 16) || (v109 = sub_190875C84(v144), (v110 & 1) == 0))
    {
      sub_19084CFD0(v144);
LABEL_120:
      v145 = 0u;
      v146 = 0u;
LABEL_121:
      sub_19022EEA4(&v145, &unk_1EAD551C0);
      goto LABEL_122;
    }

    sub_19021834C(*(v108 + 56) + 32 * v109, &v145);
    sub_19084CFD0(v144);
    if (!*(&v146 + 1))
    {
      goto LABEL_121;
    }

    if (swift_dynamicCast())
    {
      v111 = v144[0];
      goto LABEL_123;
    }

LABEL_122:
    v111 = 0;
LABEL_123:
    v112 = *(v141 + *(v9 + 44));
    if (!v112)
    {
      goto LABEL_131;
    }

    v142 = 0x6564724F74726F73;
    v143 = 0xE900000000000072;
    sub_190D58230();
    if (!*(v112 + 16) || (v113 = sub_190875C84(v144), (v114 & 1) == 0))
    {
      sub_19084CFD0(v144);
LABEL_131:
      v145 = 0u;
      v146 = 0u;
LABEL_132:
      sub_19022EEA4(&v145, &unk_1EAD551C0);
LABEL_133:
      a4 = v111 >> 63;
      if (v140)
      {
        goto LABEL_134;
      }

      goto LABEL_135;
    }

    sub_19021834C(*(v112 + 56) + 32 * v113, &v145);
    sub_19084CFD0(v144);
    if (!*(&v146 + 1))
    {
      goto LABEL_132;
    }

    if (!swift_dynamicCast())
    {
      goto LABEL_133;
    }

    a4 = v111 < v144[0];
    if (v140)
    {
LABEL_134:
      a4 = a4 ^ 1;
    }

LABEL_135:
    sub_1908D5A5C(v141);
    sub_1908D5A5C(v17);
    if ((a4 & 1) == 0)
    {
      goto LABEL_111;
    }

    if (!v99)
    {
      break;
    }

    a4 = v139;
    sub_190A94600(v106, v139);
    swift_arrayInitWithTakeFrontToBack();
    sub_190A94600(a4, v107);
    v107 += v103;
    v106 += v103;
    if (!__CFADD__(v104++, 1))
    {
      goto LABEL_113;
    }

LABEL_111:
    v101 = v134 + v126;
    v104 = v131 - 1;
    v105 = v130 + v126;
    ++v138;
    a3 = v129;
    if (v138 != v129)
    {
      goto LABEL_112;
    }

    v6 = v132;
    v28 = v123;
    if (v129 < v123)
    {
      goto LABEL_176;
    }

LABEL_57:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v128;
    }

    else
    {
      v29 = sub_190835714(0, *(v128 + 2) + 1, 1, v128);
    }

    v55 = *(v29 + 2);
    v54 = *(v29 + 3);
    a4 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v29 = sub_190835714((v54 > 1), v55 + 1, 1, v29);
    }

    *(v29 + 2) = a4;
    v56 = &v29[16 * v55];
    *(v56 + 4) = v28;
    *(v56 + 5) = a3;
    v129 = a3;
    a3 = *v125;
    if (!*v125)
    {
      goto LABEL_186;
    }

    if (v55)
    {
      v20 = v133;
      while (1)
      {
        v57 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v58 = *(v29 + 4);
          v59 = *(v29 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_77:
          if (v61)
          {
            goto LABEL_165;
          }

          v74 = &v29[16 * a4];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_168;
          }

          v80 = &v29[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_171;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_172;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = a4 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v84 = &v29[16 * a4];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_91:
        if (v79)
        {
          goto LABEL_167;
        }

        v87 = &v29[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_170;
        }

        if (v90 < v78)
        {
          goto LABEL_108;
        }

LABEL_98:
        v95 = v57 - 1;
        if (v57 - 1 >= a4)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        if (!*v136)
        {
          goto LABEL_183;
        }

        v96 = v29;
        a4 = *&v29[16 * v95 + 32];
        v97 = *&v29[16 * v57 + 40];
        sub_190B0AA60(*v136 + *(v135 + 72) * a4, *v136 + *(v135 + 72) * *&v29[16 * v57 + 32], *v136 + *(v135 + 72) * v97, a3, v140 & 1);
        if (v6)
        {
          goto LABEL_159;
        }

        if (v97 < a4)
        {
          goto LABEL_161;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1909E383C(v96);
        }

        if (v95 >= *(v96 + 2))
        {
          goto LABEL_162;
        }

        v98 = &v96[16 * v95];
        *(v98 + 4) = a4;
        *(v98 + 5) = v97;
        v147 = v96;
        sub_1909E37B0(v57);
        v29 = v147;
        a4 = *(v147 + 2);
        v20 = v133;
        if (a4 <= 1)
        {
          goto LABEL_108;
        }
      }

      v62 = &v29[16 * a4 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_163;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_164;
      }

      v69 = &v29[16 * a4];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_166;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_169;
      }

      if (v73 >= v65)
      {
        v91 = &v29[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_173;
        }

        if (v60 < v94)
        {
          v57 = a4 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

    v20 = v133;
LABEL_108:
    v27 = v136[1];
    v28 = v129;
    a4 = v124;
    if (v129 >= v27)
    {
      goto LABEL_145;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
}