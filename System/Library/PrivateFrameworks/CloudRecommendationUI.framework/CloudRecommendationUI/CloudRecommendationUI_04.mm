uint64_t sub_243A7B38C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A7A8A8;

  return v9(a1, a2);
}

uint64_t sub_243A7B4E4()
{
  v1 = objc_opt_self();
  v2 = sub_243AC2818();
  v3 = [v1 applicationWithBundleIdentifier_];
  v0[22] = v3;

  v4 = [objc_opt_self() sharedGuard];
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_243A7B688;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB8, qword_243AC83F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243ABE710;
  v0[13] = &block_descriptor_8;
  v0[14] = v5;
  [v4 authenticateForSubject:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243A7B688()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_243A7B804;
  }

  else
  {
    v3 = sub_243A7B798;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A7B798()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 200);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_243A7B804()
{
  v22 = v0;
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = sub_243AC1468();
  __swift_project_value_buffer(v4, qword_27EDA14A8);
  v5 = v3;
  v6 = sub_243AC1448();
  v7 = sub_243AC2B58();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v10 = v0[22];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[20];
    v16 = sub_243AC2F58();
    v18 = sub_243AB73D8(v16, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_243A1B000, v6, v7, "Authentication failure. Error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D47D20](v12, -1, -1);
    MEMORY[0x245D47D20](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t block_destroy_helper_8(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_243A7BA00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_243AC1208();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A7BAC4, 0, 0);
}

uint64_t sub_243A7BAC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_activeRecommendation);
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_activeRecommendation) = v6;

  v8 = *MEMORY[0x277D083A0];
  v9 = objc_allocWithZone(MEMORY[0x277D083B0]);
  v10 = v6;
  v11 = [v9 initWithEventType_];
  v0[8] = v11;
  v12 = sub_243AC2818();
  [v11 setClientName_];

  v13 = sub_243AC2818();
  [v11 setClientBundleID_];

  v14 = [v5 actionURL];
  sub_243AC11D8();

  sub_243A7DFA4();
  (*(v2 + 8))(v1, v4);
  v15 = sub_243AC27C8();

  [v11 setAdditionalParameters_];

  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_243A7BCD8;
  v17 = v0[4];

  return sub_243A7C14C(v11);
}

uint64_t sub_243A7BCD8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_243A7BDD8, 0, 0);
}

uint64_t sub_243A7BDD8()
{
  v16 = v0;
  v1 = v0[10];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_243A7BFE0;
    v3 = v0[4];
    v4 = v0[2];

    return sub_243A7C5F0(v4, v1);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[8];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_243AB73D8(0xD00000000000002FLL, 0x8000000243ACDDC0, &v15);
      _os_log_impl(&dword_243A1B000, v7, v8, "%s Could not fetch family circle to begin family sharing flow.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_243A7BFE0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243A7C0DC, 0, 0);
}

uint64_t sub_243A7C0DC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243A7C14C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_243A7C16C, 0, 0);
}

uint64_t sub_243A7C16C()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController;
  if (!*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController))
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_243A7C260;

  return sub_243A91C90(0);
}

uint64_t sub_243A7C260(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_243A7C360, 0, 0);
}

uint64_t sub_243A7C360()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF0, &qword_243AC8458);
  *v4 = v0;
  v4[1] = sub_243A7C474;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000020, 0x8000000243ACDE30, sub_243A7E7E4, v2, v5);
}

uint64_t sub_243A7C474()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_243A7C58C, 0, 0);
}

uint64_t sub_243A7C58C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_243A7C5F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243A7C614, 0, 0);
}

uint64_t sub_243A7C614()
{
  v0[5] = *(v0[4] + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_account);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_243A7C6CC;

  return sub_243A91C90(1);
}

uint64_t sub_243A7C6CC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_243A7C7CC, 0, 0);
}

uint64_t sub_243A7C7CC()
{
  v37 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 16) identifier];
    v3 = sub_243AC2858();
    v5 = v4;

    if (v3 == 0xD000000000000024 && 0x8000000243ACB920 == v5)
    {
    }

    else
    {
      v7 = sub_243AC2EE8();

      if ((v7 & 1) == 0)
      {
LABEL_23:
        v32 = swift_task_alloc();
        *(v0 + 64) = v32;
        *v32 = v0;
        v32[1] = sub_243A7CC84;
        v33 = *(v0 + 40);

        return sub_243A92724(v33);
      }
    }

    v13 = [v1 members];
    sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
    v14 = sub_243AC2998();

    if (v14 >> 62)
    {
      v15 = sub_243AC2DF8();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 16);
    v17 = sub_243AC1468();
    __swift_project_value_buffer(v17, qword_27EDA14A8);
    v18 = v16;
    v19 = sub_243AC1448();
    v20 = sub_243AC2B38();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 16);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      v24 = [v21 identifier];
      v25 = sub_243AC2858();
      v27 = v26;

      v28 = sub_243AB73D8(v25, v27, &v36);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_243A1B000, v19, v20, "New family circle created. Calling completion for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245D47D20](v23, -1, -1);
      MEMORY[0x245D47D20](v22, -1, -1);
    }

    v29 = *(*(v0 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate);
    if (v29)
    {
      v30 = *(v0 + 16);
      v31 = *(v29 + 16);
      LOBYTE(v36) = *(v29 + 136);
      swift_unknownObjectRetain();
      sub_243A3CF58(v30, 0, &v36);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14A8);
    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v36);
      _os_log_impl(&dword_243A1B000, v9, v10, "%s Could not fetch family circle post completion. Bailing.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_243A7CC84(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = sub_243A7D8B4;
  }

  else
  {
    v4 = sub_243A7CDA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_243A7CDA0()
{
  v86 = v0;
  v1 = *(v0 + 72);
  if (!v1)
  {
    if (qword_27ED98910 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

  v2 = [*(v0 + 24) me];
  v83 = v1;
  if (!v2)
  {
LABEL_22:
    v20 = [*(v0 + 40) aa_personID];
    if (!v20 || (v21 = v20, v22 = sub_243AC2858(), v24 = v23, v21, sub_243AB8C0C(v22, v24), (v25 & 1) != 0))
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v26 = sub_243AC1468();
      __swift_project_value_buffer(v26, qword_27EDA14A8);
      v27 = sub_243AC1448();
      v28 = sub_243AC2B58();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v85 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v85);
        _os_log_impl(&dword_243A1B000, v27, v28, "%s Unable to retrieve current user's DSID", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x245D47D20](v30, -1, -1);
        MEMORY[0x245D47D20](v29, -1, -1);
      }

      goto LABEL_44;
    }

    v31 = [v1 subscriberDSIDs];
    if (!v31)
    {
LABEL_44:
      v42 = 0;
      goto LABEL_64;
    }

    v32 = v31;
    sub_243A2CFF0(0, &qword_27ED99410, 0x277CCABB0);
    v33 = sub_243AC2998();

    v85 = MEMORY[0x277D84F90];
    if (v33 >> 62)
    {
      v34 = sub_243AC2DF8();
      if (v34)
      {
LABEL_32:
        v82 = v0;
        v35 = 0;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x245D470F0](v35, v33);
          }

          else
          {
            if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v37 = *(v33 + 8 * v35 + 32);
          }

          v38 = v37;
          v0 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_48;
          }

          v39 = sub_243AC2B08();
          v40 = sub_243AC2C18();

          if (v40)
          {
          }

          else
          {
            sub_243AC2D68();
            v36 = v85[2];
            sub_243AC2D88();
            sub_243AC2D98();
            sub_243AC2D78();
          }

          ++v35;
          if (v0 == v34)
          {
            v43 = v85;
            v0 = v82;
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_32;
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_60:

    if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
    {
      v42 = sub_243AC2DF8();
    }

    else
    {
      v42 = *(v43 + 16);
    }

LABEL_64:
    v44 = [*(v0 + 24) pendingMembers];
    if (v44)
    {
      v45 = v44;
      sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
      v46 = sub_243AC2998();

      if (v46 >> 62)
      {
        v47 = sub_243AC2DF8();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = [*(v0 + 56) pendingMembers];
    if (v48)
    {
      v49 = v48;
      sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
      v50 = sub_243AC2998();

      if (v50 >> 62)
      {
        v51 = sub_243AC2DF8();
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v0 + 56);
    v53 = sub_243AC2B98();
    if (v53 >> 62)
    {
      v54 = sub_243AC2DF8();
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = *(v0 + 24);

    v56 = sub_243AC2B98();
    if (v56 >> 62)
    {
      v57 = sub_243AC2DF8();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v51 || v57 < v54 || v42 >= 1)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v68 = sub_243AC1468();
      __swift_project_value_buffer(v68, qword_27EDA14A8);
      v69 = sub_243AC1448();
      v70 = sub_243AC2B48();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = v47 < v51;
        v72 = v42 > 0;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v85 = v74;
        *v73 = 136315906;
        *(v73 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v85);
        *(v73 + 12) = 1024;
        *(v73 + 14) = v71;
        *(v73 + 18) = 1024;
        *(v73 + 20) = v57 < v54;
        *(v73 + 24) = 1024;
        *(v73 + 26) = v72;
        _os_log_impl(&dword_243A1B000, v69, v70, "%s Significant changes detected - New Members Invited: %{BOOL}d New Members Added: %{BOOL}d iCloud Storage Shared: %{BOOL}d", v73, 0x1Eu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x245D47D20](v74, -1, -1);
        MEMORY[0x245D47D20](v73, -1, -1);
      }

      v61 = v83;
      v75 = *(*(v0 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate);
      v65 = *(v0 + 56);
      if (v75)
      {
        v76 = *(v0 + 16);
        v77 = *(v75 + 16);
        LOBYTE(v85) = *(v75 + 136);
        swift_unknownObjectRetain();
        sub_243A3CF58(v76, 0, &v85);
        goto LABEL_93;
      }
    }

    else
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v58 = sub_243AC1468();
      __swift_project_value_buffer(v58, qword_27EDA14A8);
      v59 = sub_243AC1448();
      v60 = sub_243AC2B48();
      v61 = v83;
      if (os_log_type_enabled(v59, v60))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v85 = v63;
        *v62 = 136315906;
        *(v62 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v85);
        *(v62 + 12) = 1024;
        *(v62 + 14) = 0;
        *(v62 + 18) = 1024;
        *(v62 + 20) = 0;
        *(v62 + 24) = 1024;
        *(v62 + 26) = 0;
        _os_log_impl(&dword_243A1B000, v59, v60, "%s Family circle did not have any significant changes. New Members Invited: %{BOOL}d New Members Added: %{BOOL}d iCloud Storage Shared: %{BOOL}d", v62, 0x1Eu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x245D47D20](v63, -1, -1);
        MEMORY[0x245D47D20](v62, -1, -1);
      }

      v64 = *(*(v0 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate);
      v65 = *(v0 + 56);
      if (v64)
      {
        v66 = *(v0 + 16);
        v67 = *(v64 + 16);
        LOBYTE(v85) = *(v64 + 136);
        swift_unknownObjectRetain();
        sub_243A3C96C(v66, &v85);
LABEL_93:

        swift_unknownObjectRelease();
        goto LABEL_95;
      }
    }

    goto LABEL_95;
  }

  v3 = v2;
  v84 = [v2 dsid];
  if (!v84)
  {

    goto LABEL_22;
  }

  v4 = [v1 subscriberDSIDs];
  if (!v4)
  {

    goto LABEL_44;
  }

  v5 = v4;
  v81 = v0;
  sub_243A2CFF0(0, &qword_27ED99410, 0x277CCABB0);
  v6 = sub_243AC2998();

  v85 = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

  v7 = sub_243AC2DF8();
  if (!v7)
  {
LABEL_52:
    v41 = MEMORY[0x277D84F90];
LABEL_53:

    v0 = v81;
    if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
    {
      v42 = sub_243AC2DF8();
    }

    else
    {
      v42 = *(v41 + 16);
    }

    goto LABEL_64;
  }

LABEL_7:
  v80 = v3;
  v8 = 0;
  v0 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v0)
    {
      v10 = MEMORY[0x245D470F0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (sub_243AC2C18())
    {
    }

    else
    {
      sub_243AC2D68();
      v9 = v85[2];
      sub_243AC2D88();
      sub_243AC2D98();
      sub_243AC2D78();
    }

    ++v8;
    if (v12 == v7)
    {
      v41 = v85;
      v3 = v80;
      goto LABEL_53;
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
  swift_once();
LABEL_18:
  v13 = sub_243AC1468();
  __swift_project_value_buffer(v13, qword_27EDA14A8);
  v14 = sub_243AC1448();
  v15 = sub_243AC2B58();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 56);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v85 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v85);
    _os_log_impl(&dword_243A1B000, v14, v15, "%s Could not fetch iCloud Storage Service post completion. Bailing.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245D47D20](v19, -1, -1);
    MEMORY[0x245D47D20](v18, -1, -1);
  }

  else
  {
  }

LABEL_95:
  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_243A7D8B4()
{
  v11 = v0;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v1 = sub_243AC1468();
  __swift_project_value_buffer(v1, qword_27EDA14A8);
  v2 = sub_243AC1448();
  v3 = sub_243AC2B58();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_243AB73D8(0xD000000000000032, 0x8000000243ACDDF0, &v10);
    _os_log_impl(&dword_243A1B000, v2, v3, "%s Could not fetch iCloud Storage Service post completion. Bailing.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D47D20](v7, -1, -1);
    MEMORY[0x245D47D20](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_243A7DA3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = *(a2 + OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController);
  if (v13)
  {
    (*(v9 + 16))(v12, a1, v8);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = swift_allocObject();
    (*(v9 + 32))(v15 + v14, v12, v8);
    *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    aBlock[4] = sub_243A7E898;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243A7DE5C;
    aBlock[3] = &block_descriptor_9;
    v16 = _Block_copy(aBlock);
    v17 = a4;
    v18 = v13;

    [v18 performWithContext:a3 completion:v16];
    _Block_release(v16);
  }
}

void sub_243A7DC34(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 error];
  if (v4)
  {
    v5 = v4;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = v5;
    v8 = sub_243AC1448();
    v9 = sub_243AC2B58();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_243AB73D8(0xD000000000000020, 0x8000000243ACDE30, &v16);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v12 = sub_243AC2F58();
      v14 = sub_243AB73D8(v12, v13, &v16);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_243A1B000, v8, v9, "%s Failed to present family sharing controller %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v11, -1, -1);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    v16 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
    sub_243AC2A38();
  }

  else
  {
    v15 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
    sub_243AC2A38();
  }
}

void sub_243A7DE5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_243A7DFA4()
{
  v0 = sub_243AC1108();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B00, qword_243AC8468);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v62 - v7;
  v9 = sub_243AC1138();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC1128();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_243A2251C(v8, &qword_27ED99B00, qword_243AC8468);
    goto LABEL_31;
  }

  (*(v10 + 32))(v13, v8, v9);
  v15 = sub_243AC1118();
  if (!v15)
  {
    (*(v10 + 8))(v13, v9);
LABEL_31:
    if (*(v14 + 16) && (v46 = sub_243A2DDC0(0x6F74736575716572, 0xE900000000000072), (v47 & 1) != 0))
    {
      sub_243A20058(*(v14 + 56) + 32 * v46, v74);
      sub_243A21C48(v74, &v75);
    }

    else
    {
      *(&v76 + 1) = MEMORY[0x277D837D0];
      *&v75 = 0x6974634172657355;
      *(&v75 + 1) = 0xEA00000000006E6FLL;
    }

    sub_243A21C48(&v75, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v14;
    sub_243A8B544(v74, 0x6F74736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
    v49 = v73;
    if (v73[2] && (v50 = sub_243A2DDC0(0x707369447473756DLL, 0xEB0000000079616CLL), (v51 & 1) != 0))
    {
      sub_243A20058(v49[7] + 32 * v50, v74);
      sub_243A21C48(v74, &v75);
    }

    else
    {
      *(&v76 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v75) = 1;
    }

    sub_243A21C48(&v75, v74);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v49;
    sub_243A8B544(v74, 0x707369447473756DLL, 0xEB0000000079616CLL, v52);
    v53 = v73;
    if (v73[2] && (v54 = sub_243A2DDC0(0x457972756372656DLL, 0xEC0000007972746ELL), (v55 & 1) != 0))
    {
      sub_243A20058(v53[7] + 32 * v54, v74);
      sub_243A21C48(v74, &v75);
    }

    else
    {
      *(&v76 + 1) = MEMORY[0x277D837D0];
      *&v75 = 0x5442656E696C6E69;
      *(&v75 + 1) = 0xE800000000000000;
    }

    sub_243A21C48(&v75, v74);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v53;
    sub_243A8B544(v74, 0x457972756372656DLL, 0xEC0000007972746ELL, v56);
    v57 = v73;
    if (v73[2] && (v58 = sub_243A2DDC0(1701869940, 0xE400000000000000), (v59 & 1) != 0))
    {
      sub_243A20058(v57[7] + 32 * v58, v74);
      sub_243A21C48(v74, &v75);
    }

    else
    {
      *(&v76 + 1) = MEMORY[0x277D837D0];
      strcpy(&v75, "sendInvitation");
      HIBYTE(v75) = -18;
    }

    sub_243A21C48(&v75, v74);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v57;
    sub_243A8B544(v74, 1701869940, 0xE400000000000000, v60);
    return v73;
  }

  v63 = v9;
  v64 = v14;
  v72 = *(v15 + 16);
  if (!v72)
  {
    v17 = MEMORY[0x277D84F98];
LABEL_30:

    (*(v10 + 8))(v13, v63);

    v14 = v17;
    goto LABEL_31;
  }

  v16 = 0;
  v71 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v69 = (v1 + 8);
  v70 = v1 + 16;
  v17 = MEMORY[0x277D84F98];
  v65 = v1;
  v66 = v13;
  v67 = v10;
  v68 = v15;
  while (v16 < *(v15 + 16))
  {
    (*(v1 + 16))(v4, v71 + *(v1 + 72) * v16, v0);
    v18 = sub_243AC10E8();
    v20 = v19;
    v21 = sub_243AC10F8();
    if (!v22 || (*&v75 = v21, *(&v75 + 1) = v22, sub_243A4FC18(), v23 = sub_243AC2C58(), v25 = v24, , !v25))
    {
      v36 = sub_243A2DDC0(v18, v20);
      v38 = v37;

      if (v38)
      {
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *&v74[0] = v17;
        v10 = v67;
        if (!v39)
        {
          sub_243A8BC78();
          v17 = *&v74[0];
        }

        v40 = *(v17[6] + 16 * v36 + 8);

        sub_243A21C48((v17[7] + 32 * v36), &v75);
        sub_243A8B058(v36, v17);
        (*v69)(v4, v0);
      }

      else
      {
        (*v69)(v4, v0);
        v75 = 0u;
        v76 = 0u;
        v10 = v67;
      }

      v13 = v66;
      sub_243A2251C(&v75, &qword_27ED989A0, &qword_243AC4470);
      goto LABEL_8;
    }

    v26 = v0;
    *(&v76 + 1) = MEMORY[0x277D837D0];
    *&v75 = v23;
    *(&v75 + 1) = v25;
    sub_243A21C48(&v75, v74);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v17;
    v29 = sub_243A2DDC0(v18, v20);
    v30 = v17[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_49;
    }

    v33 = v28;
    if (v17[3] >= v32)
    {
      if (v27)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_243A8BC78();
        if ((v33 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_243A8A7CC(v32, v27);
      v34 = sub_243A2DDC0(v18, v20);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_51;
      }

      v29 = v34;
      if ((v33 & 1) == 0)
      {
LABEL_25:
        v17 = v73;
        v73[(v29 >> 6) + 8] |= 1 << v29;
        v42 = (v17[6] + 16 * v29);
        *v42 = v18;
        v42[1] = v20;
        sub_243A21C48(v74, (v17[7] + 32 * v29));
        v0 = v26;
        (*v69)(v4, v26);
        v43 = v17[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_50;
        }

        v17[2] = v45;
        goto LABEL_27;
      }
    }

    v17 = v73;
    v41 = (v73[7] + 32 * v29);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_243A21C48(v74, v41);
    v0 = v26;
    (*v69)(v4, v26);
LABEL_27:
    v1 = v65;
    v13 = v66;
    v10 = v67;
LABEL_8:
    ++v16;
    v15 = v68;
    if (v72 == v16)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_243AC2F38();
  __break(1u);
  return result;
}

uint64_t sub_243A7E7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_243A7E898(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AF8, &qword_243AC8460) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_243A7DC34(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243A7E958(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &qword_27ED98F40;
    v29 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D470F0](v2, v28);
        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v31 + 8 * v2);

        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_42;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v7 = v35[0];
      v8 = v35[0] >> 62;
      v9 = v35[0] >> 62 ? sub_243AC2DF8() : *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_20;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10)
        {
LABEL_20:
          sub_243AC2DF8();
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2D38();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v36 = v9;
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        v17 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v12 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v15 >> 1) - v14) < v36)
          {
            goto LABEL_45;
          }

          v34 = v3;
          v18 = v12 + 8 * v14 + 32;
          v30 = v12;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_47;
            }

            sub_243A491E8(&qword_27ED98FA8, v4, &qword_243AC52E0);
            v19 = v4;
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v19, &qword_243AC52E0);
              v21 = sub_243AA806C(v35, i, v7);
              v23 = *v22;
              (v21)(v35, 0);
              v19 = v4;
              *(v18 + 8 * i) = v23;
            }
          }

          else
          {
            sub_243A4FEC4();
            swift_arrayInitWithCopy();
            v19 = v4;
          }

          v4 = v19;

          v1 = v29;
          v3 = v34;
          if (v36 >= 1)
          {
            v24 = *(v30 + 16);
            v6 = __OFADD__(v24, v36);
            v25 = v24 + v36;
            if (v6)
            {
              goto LABEL_46;
            }

            *(v30 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_26;
        }
      }

      if (v36 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
    v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243AC2DF8();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243A7ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243A7EDF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RecommendationsList()
{
  result = qword_27ED99B08;
  if (!qword_27ED99B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A7EEF0()
{
  sub_243A7EF94();
  if (v0 <= 0x3F)
  {
    sub_243A677C8();
    if (v1 <= 0x3F)
    {
      sub_243A4D158();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243A7EF94()
{
  if (!qword_27ED99B18)
  {
    type metadata accessor for RecommendationsController();
    sub_243A829D0(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
    v0 = sub_243AC1838();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99B18);
    }
  }
}

uint64_t sub_243A7F044()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v2 = sub_243A7E958(v10);

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v4 = 0;
    LOBYTE(v5) = 1;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D470F0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5)
      {
        v5 = [v6 completed];
      }

      else
      {
        v5 = 0;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v5 = 1;
LABEL_17:

  return v5;
}

uint64_t sub_243A7F1AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for RecommendationsList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_243A81C24(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_243A821DC(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RecommendationsList);
  *a2 = sub_243A81C8C;
  a2[1] = v8;
  return result;
}

uint64_t sub_243A7F2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v38 = a3;
  v35 = sub_243AC18C8();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B38, &qword_243AC8510);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B40, &qword_243AC8518);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B48, &qword_243AC8520);
  v19 = *(v18 - 8);
  v36 = v18;
  v37 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v33 = &v33 - v21;
  v40 = a2;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B50, &qword_243AC8528);
  sub_243A491E8(&qword_27ED99B58, &qword_27ED99B50, &qword_243AC8528);
  sub_243AC1D08();
  sub_243AC18B8();
  sub_243A491E8(&qword_27ED99B60, &qword_27ED99B38, &qword_243AC8510);
  v22 = v35;
  sub_243AC1F68();
  (*(v5 + 8))(v8, v22);
  (*(v10 + 8))(v13, v9);
  v23 = [objc_opt_self() systemGroupedBackgroundColor];
  v24 = sub_243AC1F78();
  v25 = sub_243AC1C48();
  v26 = &v17[*(v14 + 36)];
  *v26 = v24;
  v26[8] = v25;
  v27 = sub_243A81D14();
  v28 = v33;
  sub_243AC1EF8();
  sub_243A2251C(v17, &qword_27ED99B40, &qword_243AC8518);
  v39 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B80, &qword_243AC8538);
  v42 = v14;
  v43 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B88, &qword_243AC8540);
  v30 = sub_243A491E8(&qword_27ED99B90, &qword_27ED99B88, &qword_243AC8540);
  v42 = v29;
  v43 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v36;
  sub_243AC1F48();
  return (*(v37 + 8))(v28, v31);
}

uint64_t sub_243A7F758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v177 = a2;
  v169 = a3;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BA8, &qword_243AC8550);
  v4 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v153 = v150 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BB0, &qword_243AC8558);
  v154 = *(v6 - 8);
  v155 = v6;
  v7 = *(v154 + 64);
  MEMORY[0x28223BE20](v6);
  v152 = v150 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BB8, &qword_243AC8560);
  v166 = *(v9 - 8);
  v167 = v9;
  v10 = *(v166 + 64);
  MEMORY[0x28223BE20](v9);
  v156 = v150 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BC0, &qword_243AC8568);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v168 = v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v182 = v150 - v16;
  v175 = type metadata accessor for RecommendationsList();
  v159 = *(v175 - 8);
  v17 = *(v159 + 64);
  MEMORY[0x28223BE20](v175);
  v160 = v18;
  v161 = v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for RecommendationsCardList();
  v19 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v164 = (v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BC8, &qword_243AC8570);
  v21 = *(*(v174 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v174);
  v163 = v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v165 = v150 - v24;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BD0, &qword_243AC8578);
  v25 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v172 = v150 - v26;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BD8, &qword_243AC8580);
  v158 = *(v173 - 8);
  v27 = *(v158 + 64);
  MEMORY[0x28223BE20](v173);
  v157 = v150 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BE0, &qword_243AC8588);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v181 = v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v178 = v150 - v33;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BE8, &qword_243AC8590);
  v170 = *(v179 - 1);
  v34 = *(v170 + 64);
  MEMORY[0x28223BE20](v179);
  v36 = v150 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BF0, &qword_243AC8598);
  v38 = v37 - 8;
  v39 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v180 = v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = v150 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = v150 - v45;
  v176 = a1;
  v47 = *(a1 + 8);
  v48 = type metadata accessor for RecommendationsController();
  v49 = sub_243A829D0(&qword_27ED98FB0, type metadata accessor for RecommendationsController);

  v150[1] = v49;
  v150[2] = v48;
  *&v186[0] = sub_243AC1828();
  *(&v186[0] + 1) = v50;
  memset(&v186[1], 0, 33);
  sub_243AC1788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BF8, &unk_243AC85A0);
  sub_243A81ED8();
  sub_243AC1EC8();

  LOBYTE(v48) = sub_243AC1C38();
  sub_243AC17D8();
  sub_243AC1718();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  (*(v170 + 32))(v44, v36, v179);
  v59 = &v44[*(v38 + 44)];
  *v59 = v48;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = v44;
  v61 = v47;
  v179 = v46;
  sub_243A22814(v60, v46, &qword_27ED99BF0, &qword_243AC8598);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (LOBYTE(v186[0]) == 1)
  {
    v62 = v157;
    sub_243A80B54();
    v63 = v158;
    v64 = v173;
    (*(v158 + 16))(v172, v62, v173);
    swift_storeEnumTagMultiPayload();
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C10, &qword_243AC8678);
    v66 = sub_243A822B4();
    *&v186[0] = v65;
    *(&v186[0] + 1) = v66;
    swift_getOpaqueTypeConformance2();
    sub_243A82478();
    v67 = v178;
    sub_243AC1AE8();
    (*(v63 + 8))(v62, v64);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v68 = *&v186[0];
    v69 = v176;
    v70 = v161;
    sub_243A81C24(v176, v161);
    v71 = (*(v159 + 80) + 16) & ~*(v159 + 80);
    v72 = swift_allocObject();
    sub_243A821DC(v70, v72 + v71, type metadata accessor for RecommendationsList);
    v73 = *(v175 + 32);
    v74 = (v69 + *(v175 + 28));
    v75 = v47;
    v77 = *v74;
    v76 = v74[1];
    v79 = *(v69 + v73);
    v78 = *(v69 + v73 + 8);
    KeyPath = swift_getKeyPath();
    v81 = v164;
    *v164 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
    swift_storeEnumTagMultiPayload();
    v82 = v162;
    *(v81 + *(v162 + 20)) = v68;
    v83 = (v81 + v82[6]);
    *v83 = sub_243A82158;
    v83[1] = v72;
    v84 = (v81 + v82[7]);
    *v84 = v77;
    v84[1] = v76;
    v61 = v75;
    v85 = (v81 + v82[8]);
    *v85 = v79;
    v85[1] = v78;

    LOBYTE(v76) = sub_243AC1C38();
    sub_243AC17D8();
    sub_243AC1718();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = v163;
    sub_243A821DC(v81, v163, type metadata accessor for RecommendationsCardList);
    v95 = v94 + *(v174 + 36);
    *v95 = v76;
    *(v95 + 8) = v87;
    *(v95 + 16) = v89;
    *(v95 + 24) = v91;
    *(v95 + 32) = v93;
    *(v95 + 40) = 0;
    v96 = v165;
    sub_243A82244(v94, v165);
    sub_243A224B4(v96, v172, &qword_27ED99BC8, &qword_243AC8570);
    swift_storeEnumTagMultiPayload();
    v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C10, &qword_243AC8678);
    v98 = sub_243A822B4();
    *&v186[0] = v97;
    *(&v186[0] + 1) = v98;
    swift_getOpaqueTypeConformance2();
    sub_243A82478();
    v67 = v178;
    sub_243AC1AE8();
    sub_243A2251C(v96, &qword_27ED99BC8, &qword_243AC8570);
  }

  v99 = *(v61 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController);

  v100 = sub_243AA35C8();

  if (v100)
  {
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v101 = *&v186[0];
  if (!(*&v186[0] >> 62))
  {
    result = *((*&v186[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v104 = v175;
    v103 = v176;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = sub_243AC2DF8();
  v104 = v175;
  v103 = v176;
  if (!result)
  {
LABEL_12:

LABEL_13:
    sub_243A8284C(&v187);
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    if (v186[0])
    {
      v122 = 1;
      v123 = v182;
      v124 = v167;
LABEL_23:
      (*(v166 + 56))(v123, v122, 1, v124);
      v135 = v180;
      sub_243A224B4(v179, v180, &qword_27ED99BF0, &qword_243AC8598);
      v136 = v181;
      sub_243A224B4(v67, v181, &qword_27ED99BE0, &qword_243AC8588);
      v185[6] = v193;
      v185[7] = v194;
      v185[8] = v195;
      LOBYTE(v185[9]) = v196;
      v185[2] = v189;
      v185[3] = v190;
      v185[4] = v191;
      v185[5] = v192;
      v185[0] = v187;
      v185[1] = v188;
      v137 = v168;
      sub_243A224B4(v123, v168, &qword_27ED99BC0, &qword_243AC8568);
      v138 = v67;
      v139 = v169;
      sub_243A224B4(v135, v169, &qword_27ED99BF0, &qword_243AC8598);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C70, &qword_243AC8730);
      sub_243A224B4(v136, v139 + v140[12], &qword_27ED99BE0, &qword_243AC8588);
      v141 = v140[16];
      v142 = v185[5];
      v184[6] = v185[6];
      v184[7] = v185[7];
      v143 = v185[7];
      v184[8] = v185[8];
      v144 = v185[3];
      v145 = v185[4];
      v184[4] = v185[4];
      v184[5] = v185[5];
      v146 = v185[2];
      v147 = v185[1];
      v184[2] = v185[2];
      v184[3] = v185[3];
      v148 = v185[0];
      v184[0] = v185[0];
      v184[1] = v185[1];
      v149 = v139 + v141;
      *(v149 + 96) = v185[6];
      *(v149 + 112) = v143;
      *(v149 + 128) = v185[8];
      *(v149 + 32) = v146;
      *(v149 + 48) = v144;
      *(v149 + 64) = v145;
      *(v149 + 80) = v142;
      LOBYTE(v184[9]) = v185[9];
      *(v149 + 144) = v185[9];
      *v149 = v148;
      *(v149 + 16) = v147;
      sub_243A224B4(v137, v139 + v140[20], &qword_27ED99BC0, &qword_243AC8568);
      sub_243A224B4(v184, v186, &qword_27ED99C78, &qword_243AC8738);
      sub_243A2251C(v182, &qword_27ED99BC0, &qword_243AC8568);
      sub_243A2251C(v138, &qword_27ED99BE0, &qword_243AC8588);
      sub_243A2251C(v179, &qword_27ED99BF0, &qword_243AC8598);
      sub_243A2251C(v137, &qword_27ED99BC0, &qword_243AC8568);
      v186[6] = v185[6];
      v186[7] = v185[7];
      v186[8] = v185[8];
      LOBYTE(v186[9]) = v185[9];
      v186[2] = v185[2];
      v186[3] = v185[3];
      v186[4] = v185[4];
      v186[5] = v185[5];
      v186[0] = v185[0];
      v186[1] = v185[1];
      sub_243A2251C(v186, &qword_27ED99C78, &qword_243AC8738);
      sub_243A2251C(v181, &qword_27ED99BE0, &qword_243AC8588);
      return sub_243A2251C(v180, &qword_27ED99BF0, &qword_243AC8598);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    if (LOBYTE(v186[0]) == 3)
    {
      if ((sub_243A7F044() & 1) == 0)
      {
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C68, &qword_243AC8728);
        v132 = v156;
        (*(*(v134 - 8) + 56))(v156, 1, 1, v134);
        goto LABEL_22;
      }

      sub_243A80FFC(v185);
      *&v186[0] = sub_243AC1F98();
      v125 = sub_243AC20C8();
      memcpy(v184, v185, 0x138uLL);
      *(&v184[19] + 1) = v125;
      sub_243AC1788();
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C80, &qword_243AC8740);
      v127 = sub_243A82544();
      v128 = v152;
      sub_243AC1EC8();
      memcpy(v186, v184, sizeof(v186));
      sub_243A2251C(v186, &qword_27ED99C80, &qword_243AC8740);
      v129 = v154;
      v130 = v155;
      (*(v154 + 16))(v153, v128, v155);
    }

    else
    {
      sub_243A5B1A4(v186[0]);
      sub_243A5B438();
      sub_243A80E50(v183);

      *&v186[0] = sub_243AC1F98();
      v131 = sub_243AC20C8();
      memcpy(v184, v183, 0x131uLL);
      *(&v184[19] + 1) = v131;
      sub_243AC1788();
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C80, &qword_243AC8740);
      v127 = sub_243A82544();
      v128 = v152;
      sub_243AC1EC8();
      memcpy(v186, v184, sizeof(v186));
      sub_243A2251C(v186, &qword_27ED99C80, &qword_243AC8740);
      v129 = v154;
      v130 = v155;
      (*(v154 + 16))(v153, v128, v155);
    }

    swift_storeEnumTagMultiPayload();
    *&v184[0] = v126;
    *(&v184[0] + 1) = v127;
    swift_getOpaqueTypeConformance2();
    v132 = v156;
    sub_243AC1AE8();
    (*(v129 + 8))(v128, v130);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C68, &qword_243AC8728);
    (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
LABEL_22:
    v123 = v182;
    v124 = v167;
    sub_243A22814(v132, v182, &qword_27ED99BB8, &qword_243AC8560);
    v122 = 0;
    goto LABEL_23;
  }

LABEL_7:
  if ((v101 & 0xC000000000000001) != 0)
  {
    v105 = MEMORY[0x245D470F0](0, v101);
    goto LABEL_10;
  }

  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v105 = *(v101 + 32);

LABEL_10:

    v106 = (v103 + *(v104 + 28));
    v107 = v106[1];
    v175 = *v106;
    LOBYTE(v184[0]) = 0;

    sub_243AC2058();
    v108 = v186[0];
    v174 = *(&v186[0] + 1);
    v109 = sub_243AC1828();
    v111 = v110;
    v112 = sub_243AC1C38();
    sub_243AC17D8();
    sub_243AC1718();
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    LOBYTE(v185[0]) = 0;
    v121 = sub_243AC1C68();

    LOBYTE(v184[0]) = 1;
    *&v186[0] = v109;
    *(&v186[0] + 1) = v111;
    LOBYTE(v186[1]) = v108;
    *(&v186[1] + 1) = v174;
    *&v186[2] = v105;
    *(&v186[2] + 1) = v175;
    *&v186[3] = v107;
    BYTE8(v186[3]) = v112;
    *&v186[4] = v114;
    *(&v186[4] + 1) = v116;
    *&v186[5] = v118;
    *(&v186[5] + 1) = v120;
    LOBYTE(v186[6]) = 0;
    BYTE8(v186[6]) = v121;
    memset(&v186[7], 0, 32);
    LOBYTE(v186[9]) = 1;
    nullsub_1(v186);
    v193 = v186[6];
    v194 = v186[7];
    v195 = v186[8];
    v196 = v186[9];
    v189 = v186[2];
    v190 = v186[3];
    v191 = v186[4];
    v192 = v186[5];
    v187 = v186[0];
    v188 = v186[1];
    v67 = v178;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_243A80B54()
{
  sub_243AC2138();
  sub_243AC18E8();
  v0 = sub_243AC1C58();
  sub_243AC1718();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = 0;
  sub_243AC1F98();
  LOBYTE(v10) = 1;
  *(&v10 + 1) = 0x3FE8000000000000;
  LOBYTE(v11) = v0;
  *(&v11 + 1) = v2;
  *&v12 = v4;
  *(&v12 + 1) = v6;
  *&v13 = v8;
  BYTE8(v13) = 0;
  v14 = sub_243AC20C8();
  sub_243AC1788();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99C10, &qword_243AC8678);
  sub_243A822B4();
  sub_243AC1EC8();
  v22[8] = v11;
  v22[9] = v12;
  v22[10] = v13;
  v23 = v14;
  v22[4] = v18;
  v22[5] = v19;
  v22[6] = v20;
  v22[7] = v21;
  v22[0] = v10;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  return sub_243A2251C(v22, &qword_27ED99C10, &qword_243AC8678);
}

uint64_t sub_243A80D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = *(a3 + 8);
  v11 = sub_243AC2A98();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v10;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;

  sub_243A3306C(0, 0, v9, &unk_243AC87F0, v12);
}

uint64_t sub_243A80E50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC1AA8();
  sub_243A8184C(v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v19[2];
  *&v18[55] = v19[3];
  sub_243AC2138();
  sub_243AC18E8();
  KeyPath = swift_getKeyPath();
  v4 = sub_243AC1C38();
  v5 = sub_243AC1C58();
  result = sub_243AC1718();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 33) = *&v18[16];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = *&v18[48];
  *(a1 + 80) = *&v18[63];
  *(a1 + 17) = *v18;
  *(a1 + 120) = v13;
  *(a1 + 104) = v12;
  *(a1 + 88) = v11;
  *(a1 + 184) = v17;
  *(a1 + 168) = v16;
  *(a1 + 152) = v15;
  *(a1 + 136) = v14;
  *(a1 + 200) = KeyPath;
  *(a1 + 208) = 1;
  *(a1 + 216) = v4;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1;
  *(a1 + 264) = v5;
  *(a1 + 272) = v7;
  *(a1 + 280) = v8;
  *(a1 + 288) = v9;
  *(a1 + 296) = v10;
  *(a1 + 304) = 0;
  return result;
}

uint64_t sub_243A80FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC1AA8();
  sub_243A814DC(v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v19[2];
  *&v18[55] = v19[3];
  sub_243AC2138();
  sub_243AC18E8();
  KeyPath = swift_getKeyPath();
  v4 = sub_243AC1C38();
  v5 = sub_243AC1C58();
  result = sub_243AC1718();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 33) = *&v18[16];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = *&v18[48];
  *(a1 + 80) = *&v18[63];
  *(a1 + 17) = *v18;
  *(a1 + 120) = v13;
  *(a1 + 104) = v12;
  *(a1 + 88) = v11;
  *(a1 + 184) = v17;
  *(a1 + 168) = v16;
  *(a1 + 152) = v15;
  *(a1 + 136) = v14;
  *(a1 + 200) = KeyPath;
  *(a1 + 208) = 1;
  *(a1 + 216) = v4;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1;
  *(a1 + 264) = v5;
  *(a1 + 272) = v7;
  *(a1 + 280) = v8;
  *(a1 + 288) = v9;
  *(a1 + 296) = v10;
  *(a1 + 304) = 0;
  return result;
}

uint64_t sub_243A81188(uint64_t a1)
{
  v2 = sub_243AC1B08();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B88, &qword_243AC8540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_243AC1AF8();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B98, &qword_243AC8548);
  sub_243A491E8(&qword_27ED99BA0, &qword_27ED99B98, &qword_243AC8548);
  sub_243AC1758();
  v9 = sub_243A491E8(&qword_27ED99B90, &qword_27ED99B88, &qword_243AC8540);
  MEMORY[0x245D45F20](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_243A81374(uint64_t a1)
{
  v2 = type metadata accessor for RecommendationsList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_243AC1708();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC16F8();
  sub_243A81C24(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_243A821DC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for RecommendationsList);
  return MEMORY[0x245D46480](v8, sub_243A81E6C, v10);
}

uint64_t sub_243A814DC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RecommendationsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = objc_opt_self();
  v2 = [v34 bundleForClass_];
  sub_243AC1188();

  sub_243A4FC18();
  v3 = sub_243AC1D88();
  v5 = v4;
  v7 = v6;
  sub_243AC1CF8();
  v8 = sub_243AC1D68();
  v10 = v9;
  v12 = v11;

  sub_243A82874(v3, v5, v7 & 1);

  sub_243AC1FD8();
  v13 = sub_243AC1D28();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;

  sub_243A82874(v8, v10, v12 & 1);

  v17 = [v34 bundleForClass_];
  sub_243AC1188();

  v18 = sub_243AC1D88();
  v20 = v19;
  v22 = v21;
  sub_243AC1C88();
  v23 = sub_243AC1D68();
  v25 = v24;
  LOBYTE(v5) = v26;

  sub_243A82874(v18, v20, v22 & 1);

  sub_243AC1FD8();
  v27 = sub_243AC1D28();
  v29 = v28;
  LOBYTE(v8) = v30;
  v32 = v31;

  sub_243A82874(v23, v25, v5 & 1);

  *a1 = v38;
  *(a1 + 8) = v37;
  *(a1 + 16) = v36 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v8 & 1;
  *(a1 + 56) = v32;
  sub_243A82884(v38, v37, v36 & 1);

  sub_243A82884(v27, v29, v8 & 1);

  sub_243A82874(v27, v29, v8 & 1);

  sub_243A82874(v38, v37, v36 & 1);
}

uint64_t sub_243A8184C@<X0>(uint64_t a1@<X8>)
{
  sub_243A4FC18();

  v2 = sub_243AC1D88();
  v4 = v3;
  v6 = v5;
  sub_243AC1CF8();
  v7 = sub_243AC1D68();
  v9 = v8;
  v11 = v10;

  sub_243A82874(v2, v4, v6 & 1);

  sub_243AC1FD8();
  v12 = sub_243AC1D28();
  v32 = v13;
  v33 = v12;
  v31 = v14;
  v34 = v15;

  sub_243A82874(v7, v9, v11 & 1);

  v16 = sub_243AC1D88();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_243AC1C88();
  v20 = sub_243AC1D68();
  v22 = v21;
  LOBYTE(v4) = v23;

  sub_243A82874(v16, v18, v9 & 1);

  sub_243AC1FD8();
  v24 = sub_243AC1D28();
  v26 = v25;
  LOBYTE(v7) = v27;
  v29 = v28;

  sub_243A82874(v20, v22, v4 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v7 & 1;
  *(a1 + 56) = v29;
  sub_243A82884(v33, v32, v31 & 1);

  sub_243A82884(v24, v26, v7 & 1);

  sub_243A82874(v24, v26, v7 & 1);

  sub_243A82874(v33, v32, v31 & 1);
}

double sub_243A81AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B20, &qword_243AC84F8);
  sub_243A491E8(&qword_27ED99B28, &qword_27ED99B20, &qword_243AC84F8);
  sub_243AC1888();
  v5 = *(a1 + 20);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99B30, &unk_243AC8500) + 36);
  sub_243A224B4(v2 + v5, v6, &unk_27ED995A0, qword_243AC6D10);
  sub_243AC2608();
  sub_243AC25F8();
  v7 = v6 + *(type metadata accessor for MetricsModifier() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99680, &qword_243AC6D48);
  sub_243AC2058();
  result = *&v9;
  *v7 = v9;
  *(v7 + 16) = v10;
  return result;
}

uint64_t sub_243A81C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A81C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A7F2B8(a1, v6, a2);
}

unint64_t sub_243A81D14()
{
  result = qword_27ED99B68;
  if (!qword_27ED99B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B40, &qword_243AC8518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B38, &qword_243AC8510);
    sub_243AC18C8();
    sub_243A491E8(&qword_27ED99B60, &qword_27ED99B38, &qword_243AC8510);
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99B68);
  }

  return result;
}

uint64_t sub_243A81E6C()
{
  v1 = type metadata accessor for RecommendationsList();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_243A81ED8()
{
  result = qword_27ED99C00;
  if (!qword_27ED99C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99BF8, &unk_243AC85A0);
    sub_243A81F90();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C00);
  }

  return result;
}

unint64_t sub_243A81F90()
{
  result = qword_27ED99C08;
  if (!qword_27ED99C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C08);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for RecommendationsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = sub_243AC2438();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A82158(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RecommendationsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A80D20(a1, a2, v6);
}

uint64_t sub_243A821DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243A82244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99BC8, &qword_243AC8570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A822B4()
{
  result = qword_27ED99C18;
  if (!qword_27ED99C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C10, &qword_243AC8678);
    sub_243A82628(&qword_27ED99C20, &qword_27ED99C28, &qword_243AC8680, sub_243A82398);
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C18);
  }

  return result;
}

unint64_t sub_243A82398()
{
  result = qword_27ED99C30;
  if (!qword_27ED99C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C38, &qword_243AC8688);
    sub_243A82424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C30);
  }

  return result;
}

unint64_t sub_243A82424()
{
  result = qword_27ED99C40;
  if (!qword_27ED99C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C40);
  }

  return result;
}

unint64_t sub_243A82478()
{
  result = qword_27ED99C58;
  if (!qword_27ED99C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99BC8, &qword_243AC8570);
    sub_243A829D0(&qword_27ED99C60, type metadata accessor for RecommendationsCardList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C58);
  }

  return result;
}

unint64_t sub_243A82544()
{
  result = qword_27ED99C88;
  if (!qword_27ED99C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99C80, &qword_243AC8740);
    sub_243A82628(&qword_27ED99C90, &qword_27ED99C98, &qword_243AC8748, sub_243A826AC);
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99C88);
  }

  return result;
}

uint64_t sub_243A82628(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A826DC()
{
  result = qword_27ED99CB0;
  if (!qword_27ED99CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99CB8, &qword_243AC8758);
    sub_243A82794();
    sub_243A491E8(&qword_27ED99CE0, &qword_27ED99CE8, &qword_243AC8770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99CB0);
  }

  return result;
}

unint64_t sub_243A82794()
{
  result = qword_27ED99CC0;
  if (!qword_27ED99CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99CC8, &qword_243AC8760);
    sub_243A491E8(&qword_27ED99CD0, &qword_27ED99CD8, &qword_243AC8768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99CC0);
  }

  return result;
}

double sub_243A8284C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_243A82874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243A82884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243A8289C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_243A828E8()
{
  result = qword_27ED99CF0;
  if (!qword_27ED99CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99B30, &unk_243AC8500);
    sub_243A491E8(&qword_27ED99CF8, &qword_27ED99D00, &qword_243AC87F8);
    sub_243A829D0(&qword_27ED99D08, type metadata accessor for MetricsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99CF0);
  }

  return result;
}

uint64_t sub_243A829D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecommendationsSpecifier.init(controller:account:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_243AC2058();
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  type metadata accessor for RecommendationsController();
  sub_243A63E78();
  result = sub_243AC1828();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  return result;
}

uint64_t RecommendationsSpecifier.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D10, &qword_243AC8800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-v4];
  v6 = v0[1];
  v14 = *v0;
  *v15 = v6;
  *&v15[16] = *(v0 + 4);
  v11 = &v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D18, &qword_243AC8808);
  sub_243A491E8(&qword_27ED99D20, &qword_27ED99D18, &qword_243AC8808);
  sub_243AC2118();
  v13 = *&v15[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2088();
  v7 = swift_allocObject();
  v8 = *v15;
  *(v7 + 16) = v14;
  *(v7 + 32) = v8;
  *(v7 + 48) = *&v15[16];
  sub_243A83898(&v14, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D30, &qword_243AC8818);
  sub_243A838D0();
  sub_243A8398C();
  sub_243AC1F28();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_243A82CFC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_243A83898(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D58, &qword_243AC88F8);
  sub_243A491E8(&qword_27ED99D60, &qword_27ED99D58, &qword_243AC88F8);
  return sub_243AC20A8();
}

uint64_t sub_243A82E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  v11 = *(a1 + 24);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2078();
  v6 = *(a1 + 8);
  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_243A3306C(0, 0, v5, &unk_243AC8A70, v8);
}

uint64_t sub_243A82F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243AC1AB8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D68, &qword_243AC8900);
  return sub_243A82FA0(a1, a2 + *(v4 + 44));
}

uint64_t sub_243A82FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D70, &qword_243AC8908);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  *v8 = sub_243AC1A78();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D78, &qword_243AC8910);
  sub_243A8329C(a1, &v8[*(v9 + 44)]);
  v10 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  sub_243A4FC18();
  v11 = sub_243AC1D88();
  v13 = v12;
  v15 = v14;
  sub_243AC1C88();
  v16 = sub_243AC1D68();
  v18 = v17;
  v20 = v19;

  sub_243A82874(v11, v13, v15 & 1);

  v21 = [objc_opt_self() secondaryLabelColor];
  v35 = sub_243AC1F78();
  v22 = sub_243AC1D38();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_243A82874(v16, v18, v20 & 1);

  v29 = v33;
  sub_243A224B4(v8, v33, &qword_27ED99D70, &qword_243AC8908);
  v30 = v34;
  sub_243A224B4(v29, v34, &qword_27ED99D70, &qword_243AC8908);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D80, &qword_243AC8960) + 48);
  *v31 = v22;
  *(v31 + 8) = v24;
  *(v31 + 16) = v26 & 1;
  *(v31 + 24) = v28;
  sub_243A82884(v22, v24, v26 & 1);

  sub_243A2251C(v8, &qword_27ED99D70, &qword_243AC8908);
  sub_243A82874(v22, v24, v26 & 1);

  return sub_243A2251C(v29, &qword_27ED99D70, &qword_243AC8908);
}

uint64_t sub_243A8329C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D88, &qword_243AC8968);
  v4 = *(v3 - 8);
  v74 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v73 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = (&v64 - v8);
  v67 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  sub_243A4FC18();
  v9 = sub_243AC1D88();
  v11 = v10;
  v13 = v12;
  sub_243AC1C98();
  v14 = sub_243AC1D68();
  v16 = v15;
  v18 = v17;

  sub_243A82874(v9, v11, v13 & 1);

  v64 = objc_opt_self();
  v19 = [v64 labelColor];
  v76 = sub_243AC1F78();
  v20 = sub_243AC1D38();
  v70 = v21;
  v71 = v20;
  v69 = v22;
  v72 = v23;
  sub_243A82874(v14, v16, v18 & 1);

  v76 = sub_243A35A8C();
  v77 = v24;
  v25 = sub_243AC1D88();
  v27 = v26;
  v29 = v28;
  sub_243AC1C98();
  v30 = sub_243AC1D68();
  v32 = v31;
  LOBYTE(v9) = v33;

  sub_243A82874(v25, v27, v29 & 1);

  v34 = v64;
  v35 = [v64 secondaryLabelColor];
  v76 = sub_243AC1F78();
  v36 = sub_243AC1D38();
  v65 = v37;
  v66 = v38;
  v67 = v39;
  sub_243A82874(v30, v32, v9 & 1);

  v40 = sub_243AC2008();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D90, &qword_243AC89B8);
  v42 = v75;
  v43 = (v75 + *(v41 + 36));
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D98, &qword_243AC89C0) + 28);
  v45 = *MEMORY[0x277CE1050];
  v46 = sub_243AC2028();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  *v42 = v40;
  v47 = sub_243AC1CF8();
  KeyPath = swift_getKeyPath();
  v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99DA0, &qword_243AC8A28) + 36));
  *v49 = KeyPath;
  v49[1] = v47;
  v50 = [v34 tertiaryLabelColor];
  v51 = sub_243AC1F78();
  v52 = swift_getKeyPath();
  v53 = (v42 + *(v74 + 44));
  *v53 = v52;
  v53[1] = v51;
  LOBYTE(v51) = v69 & 1;
  LOBYTE(v76) = v69 & 1;
  v54 = v42;
  v55 = v73;
  sub_243A224B4(v54, v73, &qword_27ED99D88, &qword_243AC8968);
  v57 = v70;
  v56 = v71;
  v59 = v67;
  v58 = v68;
  *v68 = v71;
  v58[1] = v57;
  *(v58 + 16) = v51;
  v58[3] = v72;
  v58[4] = 0;
  *(v58 + 40) = 1;
  v60 = v36;
  v58[6] = v36;
  v61 = v65;
  v58[7] = v65;
  LOBYTE(KeyPath) = v66 & 1;
  *(v58 + 64) = v66 & 1;
  v58[9] = v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED99DA8, &unk_243AC8A60);
  sub_243A224B4(v55, v58 + *(v62 + 80), &qword_27ED99D88, &qword_243AC8968);
  sub_243A82884(v56, v57, v51);

  sub_243A82884(v60, v61, KeyPath);

  sub_243A2251C(v75, &qword_27ED99D88, &qword_243AC8968);
  sub_243A2251C(v55, &qword_27ED99D88, &qword_243AC8968);
  sub_243A82874(v60, v61, KeyPath);

  sub_243A82874(v56, v57, v76);
}

uint64_t sub_243A83810@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v3 = *(&v9 + 1);
  v4 = *(a1 + 2);
  sub_243A224B4(&v9, &v8, &qword_27ED99D50, "̦");
  v5 = v4;
  v6 = sub_243AC1898();
  result = sub_243AC1C68();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_243A838D0()
{
  result = qword_27ED99D38;
  if (!qword_27ED99D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D10, &qword_243AC8800);
    sub_243A491E8(&qword_27ED99D20, &qword_27ED99D18, &qword_243AC8808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99D38);
  }

  return result;
}

unint64_t sub_243A8398C()
{
  result = qword_27ED99D40;
  if (!qword_27ED99D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D30, &qword_243AC8818);
    sub_243A83A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99D40);
  }

  return result;
}

unint64_t sub_243A83A18()
{
  result = qword_27ED99D48;
  if (!qword_27ED99D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99D48);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243A83AA0(uint64_t a1, int a2)
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

uint64_t sub_243A83AE8(uint64_t result, int a2, int a3)
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

uint64_t sub_243A83B40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D10, &qword_243AC8800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99D30, &qword_243AC8818);
  sub_243A838D0();
  sub_243A8398C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A83C5C(uint64_t a1)
{
  v2 = sub_243AC2028();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243AC1948();
}

uint64_t sub_243A83D38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243A83D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243A40718(a1, v4, v5, v6);
}

void sub_243A83E5C(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v76 - v9;
  if (a3)
  {
    v78 = a2;
    v11 = *(v3 + 16);
    *(v11 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_243AC51B0;
    v79 = a3;
    v13 = [a1 identifier];
    v14 = sub_243AC2858();
    v16 = v15;

    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v77 = v3;
    v17 = *(v3 + 136);
    v18 = sub_243AC2A98();
    v19 = *(*(v18 - 8) + 56);
    v19(v10, 1, 1, v18);
    sub_243AC2A58();

    v20 = sub_243AC2A48();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    *(v21 + 32) = v12;
    *(v21 + 40) = v17;
    v23 = a1;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    *(v21 + 48) = v11;
    *(v21 + 72) = 1537;
    sub_243A3306C(0, 0, v10, &unk_243AC5220, v21);

    v24 = [a1 identifier];
    sub_243AC2858();

    v25 = sub_243A5B5E4();
    if (v25 <= 0xA)
    {
      if (v25 != 1)
      {
        if (v25 != 2)
        {
          if (v25 == 8)
          {
            v19(v10, 1, 1, v18);
            v26 = v79;
            v27 = v78;
            v28 = v77;

            v29 = v23;
            v30 = sub_243AC2A48();
            v31 = swift_allocObject();
            v31[2] = v30;
            v31[3] = MEMORY[0x277D85700];
            v31[4] = v28;
            v31[5] = v29;
            v31[6] = v27;
            v31[7] = v26;
            sub_243A3306C(0, 0, v10, &unk_243AC8B78, v31);

            return;
          }

          goto LABEL_29;
        }

LABEL_23:
        objc_opt_self();
        v46 = v78;
        v47 = swift_dynamicCastObjCClass();
        if (!v47)
        {

          return;
        }

        v48 = v47;
        v49 = v46;
        if ([v23 completed])
        {
          v50 = [v49 actionType];
          v51 = sub_243AC2858();
          v53 = v52;

          v54 = *MEMORY[0x277CFB130];
          if (v51 == sub_243AC2858() && v53 == v55)
          {

LABEL_41:
            v56 = v79;
            sub_243A84F80(v23, v48, v79);
            goto LABEL_42;
          }

          v66 = sub_243AC2EE8();

          if (v66)
          {
            goto LABEL_41;
          }

          v68 = [v49 actionType];
          v69 = sub_243AC2858();
          v71 = v70;

          v72 = *MEMORY[0x277CFB140];
          if (v69 == sub_243AC2858() && v71 == v73)
          {
          }

          else
          {
            v75 = sub_243AC2EE8();

            if ((v75 & 1) == 0)
            {
              v45 = v79;
              sub_243A84960(v23, v48, v79);

              goto LABEL_46;
            }
          }

          v56 = v79;
          sub_243A84FA0(v23, v48, v79);
        }

        else
        {
          v56 = v79;
          sub_243A862A8(v23, v48, v79);
        }

LABEL_42:

        return;
      }

LABEL_17:
      v36 = [a1 status];
      if (v36)
      {
        v37 = v36;
        v38 = sub_243AC2858();
        v40 = v39;

        v41 = *MEMORY[0x277CFB120];
        v42 = sub_243AC2858();
        if (v40)
        {
          if (v38 != v42 || v40 != v43)
          {
            v44 = sub_243AC2EE8();

            v45 = v79;
            if ((v44 & 1) == 0)
            {
              goto LABEL_39;
            }

LABEL_36:
            sub_243A84960(a1, v78, v45);
            goto LABEL_46;
          }

LABEL_35:

          v45 = v79;
          goto LABEL_36;
        }
      }

      else
      {
        v65 = *MEMORY[0x277CFB120];
        sub_243AC2858();
      }

      v45 = v79;
LABEL_39:
      sub_243A85C88(a1, v78, v45);
      goto LABEL_46;
    }

    if (v25 - 15 < 2)
    {
      goto LABEL_23;
    }

    if (v25 != 11)
    {
      if (v25 != 12)
      {
LABEL_29:
        v45 = v79;
        sub_243A84960(a1, v78, v79);
LABEL_46:

        return;
      }

      goto LABEL_17;
    }

    v57 = [a1 status];
    if (v57)
    {
      v58 = v57;
      v59 = sub_243AC2858();
      v61 = v60;

      v62 = *MEMORY[0x277CFB120];
      v63 = sub_243AC2858();
      if (v61)
      {
        if (v59 == v63 && v61 == v64)
        {
          goto LABEL_35;
        }

        v74 = sub_243AC2EE8();

        v45 = v79;
        if (v74)
        {
          goto LABEL_36;
        }

LABEL_45:
        sub_243A86C64(a1, v45);
        goto LABEL_46;
      }
    }

    else
    {
      v67 = *MEMORY[0x277CFB120];
      sub_243AC2858();
    }

    v45 = v79;
    goto LABEL_45;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v32 = sub_243AC1468();
  __swift_project_value_buffer(v32, qword_27EDA14A8);
  v79 = sub_243AC1448();
  v33 = sub_243AC2B58();
  if (os_log_type_enabled(v79, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_243A1B000, v79, v33, "Presenter unavailable. Bailing!", v34, 2u);
    MEMORY[0x245D47D20](v34, -1, -1);
  }

  v35 = v79;
}

uint64_t sub_243A84624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_243AC2A58();
  v7[7] = sub_243AC2A48();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_243A846E4;

  return sub_243A7B4C8();
}

uint64_t sub_243A846E4(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 72) = a1;

  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A84828, v6, v5);
}

uint64_t sub_243A84828()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  if (v1 == 1)
  {
    v3 = *(v0 + 16);
    sub_243A84960(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = sub_243AC1448();
    v6 = sub_243AC2B58();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243A1B000, v5, v6, "Authentication failed, unable to present Review Large Files recommendation", v7, 2u);
      MEMORY[0x245D47D20](v7, -1, -1);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_243A84960(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v63 - v9;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11 = sub_243AC2A98();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v3;
    v12[5] = a3;
    v12[6] = a1;

    v13 = a3;
    v14 = a1;
    sub_243A3306C(0, 0, v10, &unk_243AC8B68, v12);

    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 actionType];
    v18 = sub_243AC2858();
    v20 = v19;

    v21 = *MEMORY[0x277CFB128];
    if (v18 == sub_243AC2858() && v20 == v22)
    {
      goto LABEL_12;
    }

    v24 = sub_243AC2EE8();

    if (v24)
    {
LABEL_13:

      sub_243A868B0(v16, a3);
      return;
    }

    v25 = [v16 actionType];
    v26 = sub_243AC2858();
    v28 = v27;

    v29 = *MEMORY[0x277CFB148];
    if (v26 == sub_243AC2858() && v28 == v30)
    {
LABEL_12:

      goto LABEL_13;
    }

    v43 = sub_243AC2EE8();

    if (v43)
    {
      goto LABEL_13;
    }

    v44 = [v16 actionType];
    v45 = sub_243AC2858();
    v47 = v46;

    v48 = *MEMORY[0x277CFB130];
    if (v45 == sub_243AC2858() && v47 == v49)
    {

LABEL_31:

      sub_243A84F80(a1, v16, a3);
      return;
    }

    v50 = sub_243AC2EE8();

    if (v50)
    {
      goto LABEL_31;
    }

    v51 = [v16 actionType];
    v52 = sub_243AC2858();
    v54 = v53;

    v55 = *MEMORY[0x277CFB140];
    if (v52 == sub_243AC2858() && v54 == v56)
    {
    }

    else
    {
      v57 = sub_243AC2EE8();

      if ((v57 & 1) == 0)
      {
        return;
      }
    }

    v58 = [a1 identifier];
    v59 = sub_243AC2858();
    v61 = v60;

    if (v59 == 0xD000000000000023 && 0x8000000243ACB660 == v61)
    {
    }

    else
    {
      v62 = sub_243AC2EE8();

      if ((v62 & 1) == 0)
      {
        return;
      }
    }

    sub_243A8613C(a1, v16, a3);
  }

  else
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {

      sub_243A86014(a1, v31, a3);
    }

    else
    {
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
        v34 = *(v3 + 128);
        if (v34)
        {
          goto LABEL_23;
        }

        v35 = *(v3 + 16);
        objc_allocWithZone(type metadata accessor for AppInstallAction());
        v36 = a3;

        v37 = v3;
        v38 = sub_243AC09D4(v36, v35, 0, 0);

        v39 = *(v37 + 128);
        *(v37 + 128) = v38;
        v40 = v38;

        *&v40[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_delegate + 8] = &off_2856BC458;
        swift_unknownObjectWeakAssign();

        v34 = *(v37 + 128);
        if (v34)
        {
LABEL_23:
          v64 = a2;
          v41 = v34;
          sub_243AC0088(a1, v33);

          v42 = v64;
        }
      }
    }
  }
}

void sub_243A84FC0(uint64_t a1, void *a2, void *a3, uint64_t *a4, NSObject *a5)
{
  v41 = a1;
  v42 = a5;
  v9 = sub_243AC1208();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 actionType];
  v15 = sub_243AC2858();
  v17 = v16;

  v18 = *a4;
  if (v15 == sub_243AC2858() && v17 == v19)
  {
  }

  else
  {
    v21 = sub_243AC2EE8();

    if ((v21 & 1) == 0)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v22 = sub_243AC1468();
      __swift_project_value_buffer(v22, qword_27EDA14A8);
      v42 = sub_243AC1448();
      v23 = sub_243AC2B58();
      if (os_log_type_enabled(v42, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_243A1B000, v42, v23, "Invalid action type passed. Bailing", v24, 2u);
        MEMORY[0x245D47D20](v24, -1, -1);
      }

      v25 = v42;

      return;
    }
  }

  v26 = v5[10];
  if (v26)
  {
    goto LABEL_16;
  }

  v27 = v5[2];
  v28 = v5[3];
  v29 = type metadata accessor for URLAction();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter] = 0;
  *&v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter] = 0;
  v31 = &v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation] = 0;
  *&v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_recommendationsController] = v27;
  *&v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account] = v28;
  *&v30[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter] = a3;
  v43.receiver = v30;
  v43.super_class = v29;

  v32 = v28;
  v33 = a3;
  v34 = objc_msgSendSuper2(&v43, sel_init);
  v35 = v5[10];
  v5[10] = v34;
  v36 = v34;

  v37 = &v36[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate];
  v38 = *&v36[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate];
  *v37 = v5;
  *(v37 + 1) = &off_2856BC458;

  swift_unknownObjectRelease();
  v26 = v5[10];
  if (v26)
  {
LABEL_16:
    v39 = v26;
    v40 = [a2 actionURL];
    sub_243AC11D8();

    (v42)(v41, v13);
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_243A85350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_243A85374, 0, 0);
}

uint64_t sub_243A85374()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  if (v2)
  {
    goto LABEL_3;
  }

  v3 = *(v0 + 24);
  v4 = *(v1 + 24);
  type metadata accessor for DataclassAction();
  swift_allocObject();
  v5 = v4;
  v6 = v3;
  v7 = sub_243AB3EE8(v5);

  v8 = *(v1 + 72);
  *(v1 + 72) = v7;

  v2 = *(v1 + 72);
  if (v2)
  {
LABEL_3:
    *(v0 + 40) = v2;
    v9 = *(v0 + 32);

    v10 = [v9 identifier];
    sub_243AC2858();

    v11 = sub_243A5B5E4();
    if (v11 == 14)
    {
      v14 = swift_task_alloc();
      *(v0 + 56) = v14;
      *v14 = v0;
      v14[1] = sub_243A85778;

      return sub_243AB1E70(0);
    }

    else if (v11 == 4)
    {
      v12 = swift_task_alloc();
      *(v0 + 48) = v12;
      *v12 = v0;
      v12[1] = sub_243A85650;

      return sub_243AB3F98();
    }

    else
    {
      v15 = swift_task_alloc();
      *(v0 + 64) = v15;
      *v15 = v0;
      v15[1] = sub_243A858A0;
      v16 = *(v0 + 32);

      return sub_243AB26E8(v16);
    }
  }

  else
  {
    v17 = *(v0 + 16);
    *(v0 + 72) = *(v17 + 16);
    *(v0 + 88) = *(v17 + 136);
    sub_243AC2A58();
    *(v0 + 80) = sub_243AC2A48();
    v19 = sub_243AC2A28();

    return MEMORY[0x2822009F8](sub_243A85C14, v19, v18);
  }
}

uint64_t sub_243A85650(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v7 = *v1;

  *(v3 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A859C8, 0, 0);
}

uint64_t sub_243A85778(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v7 = *v1;

  *(v3 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A859C8, 0, 0);
}

uint64_t sub_243A858A0(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 40);
  v7 = *v1;

  *(v3 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A859C8, 0, 0);
}

uint64_t sub_243A859C8()
{
  v20 = v0;
  if (*(v0 + 89))
  {
    v1 = *(v0 + 16);
    *(v0 + 72) = *(v1 + 16);
    *(v0 + 88) = *(v1 + 136);
    sub_243AC2A58();
    *(v0 + 80) = sub_243AC2A48();
    v3 = sub_243AC2A28();

    return MEMORY[0x2822009F8](sub_243A85C14, v3, v2);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = v4;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v9 identifier];
      v13 = sub_243AC2858();
      v15 = v14;

      v16 = sub_243AB73D8(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_243A1B000, v7, v8, "Could not enable dataclass form %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245D47D20](v11, -1, -1);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_243A85C14()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 32);

  sub_243A3CF58(v3, 0, (v0 + 88));
  v4 = *(v0 + 8);

  return v4();
}

void sub_243A85C88(void *a1, void *a2, void *a3)
{
  v7 = sub_243AC1208();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v38 = v12;
    if (v3[11])
    {
      v13 = a2;
    }

    else
    {
      v19 = v3[2];
      v18 = v3[3];
      v20 = type metadata accessor for UpgradeFlowManagerAction();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation] = 0;
      *&v21[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager] = 0;
      v22 = &v21[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate];
      *v22 = 0;
      *(v22 + 1) = 0;
      *&v21[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_presenter] = a3;
      *&v21[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_controller] = v19;
      *&v21[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_account] = v18;
      v39.receiver = v21;
      v39.super_class = v20;
      v23 = a2;

      v24 = v18;
      v25 = a3;
      v26 = objc_msgSendSuper2(&v39, sel_init);
      v27 = v3[11];
      v3[11] = v26;
      v28 = v26;

      v29 = &v28[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate];
      v30 = *&v28[OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate];
      *v29 = v3;
      *(v29 + 1) = &off_2856BC458;

      swift_unknownObjectRelease();
    }

    v31 = [a1 identifier];
    sub_243AC2858();

    v32 = sub_243A5B5E4();
    v33 = v3[11];
    if (v32 == 12)
    {
      if (v33)
      {
        v34 = v33;
        v35 = [v38 actionURL];
        sub_243AC11D8();

        sub_243A234B4(v11);
        (*(v8 + 8))(v11, v7);
        return;
      }
    }

    else if (v33)
    {
      v36 = v33;
      sub_243A22D0C(a1);
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v38 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v38, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243A1B000, v38, v15, "Action type is inconsistent with expected action type.", v16, 2u);
      MEMORY[0x245D47D20](v16, -1, -1);
    }

    v17 = v38;
  }
}

void sub_243A86014(void *a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 96);
  if (v6)
  {
    goto LABEL_3;
  }

  v8 = *(v3 + 16);
  v9 = type metadata accessor for NativeModalActionHandler();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation] = 0;
  v11 = &v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_presenter] = a3;
  *&v10[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_controller] = v8;
  v19.receiver = v10;
  v19.super_class = v9;
  v12 = a3;

  v13 = objc_msgSendSuper2(&v19, sel_init);
  v14 = *(v3 + 96);
  *(v3 + 96) = v13;
  v15 = v13;

  v16 = &v15[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate];
  v17 = *&v15[OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate];
  *v16 = v3;
  *(v16 + 1) = &off_2856BC458;
  swift_unknownObjectRelease();

  v6 = *(v3 + 96);
  if (v6)
  {
LABEL_3:
    v18 = v6;
    sub_243A711C4(a1, a2);
  }
}

void sub_243A8613C(void *a1, void *a2, void *a3)
{
  v6 = *(v3 + 112);
  if (v6)
  {
    goto LABEL_3;
  }

  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 136);
  v11 = type metadata accessor for TurnOnAppsActionHandler();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate];
  *v13 = 0;
  v13[1] = 0;
  *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter] = 0;
  *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation] = 0;
  *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_presenter] = a3;
  *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_controller] = v8;
  *&v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_account] = v9;
  v12[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_context] = v10;
  v22.receiver = v12;
  v22.super_class = v11;
  v14 = a3;

  v15 = v9;
  v16 = objc_msgSendSuper2(&v22, sel_init);
  v17 = *(v3 + 112);
  *(v3 + 112) = v16;
  v18 = v16;

  v19 = &v18[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate];
  v20 = *&v18[OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate];
  *v19 = v3;
  *(v19 + 1) = &off_2856BC458;

  swift_unknownObjectRelease();
  v6 = *(v3 + 112);
  if (v6)
  {
LABEL_3:
    v21 = v6;
    sub_243A74910(a1, a2);
  }
}

uint64_t sub_243A862A8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  if (!v4[15])
  {
    v12 = v4[2];
    v13 = v4[3];
    v14 = type metadata accessor for FamilySharingActionHandler();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate];
    *v16 = 0;
    *(v16 + 1) = 0;
    *&v15[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_activeRecommendation] = 0;
    *&v15[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_familySharingController] = 0;
    *&v15[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_account] = v13;
    *&v15[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_presenter] = a3;
    *&v15[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_controller] = v12;
    v29.receiver = v15;
    v29.super_class = v14;
    v17 = v13;

    v18 = a3;
    v19 = objc_msgSendSuper2(&v29, sel_init);
    v20 = v4[15];
    v4[15] = v19;
    v21 = v19;

    v22 = &v21[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate];
    v23 = *&v21[OBJC_IVAR____TtC21CloudRecommendationUI26FamilySharingActionHandler_delegate];
    *v22 = v4;
    *(v22 + 1) = &off_2856BC458;
    swift_unknownObjectRelease();
  }

  v24 = sub_243AC2A98();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v4;
  v25[5] = a1;
  v25[6] = a2;

  v26 = a1;
  v27 = a2;
  sub_243A3335C(0, 0, v11, &unk_243AC8B58, v25);
}

uint64_t sub_243A864CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_243A864F0, 0, 0);
}

uint64_t sub_243A864F0()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 48) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_243A865E0;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_243A7BA00(v4, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_243A865E0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_243A866F4, 0, 0);
}

uint64_t sub_243A8671C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 104);

  return v0;
}

uint64_t sub_243A8678C()
{
  sub_243A8671C();

  return swift_deallocClassInstance();
}

uint64_t sub_243A867E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A864CC(a1, v4, v5, v6, v7, v8);
}

id sub_243A868B0(void *a1, void *a2)
{
  v5 = sub_243AC1208();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[10])
  {
    goto LABEL_3;
  }

  v10 = v2[2];
  v11 = v2[3];
  v12 = type metadata accessor for URLAction();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter] = 0;
  *&v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter] = 0;
  v14 = &v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation] = 0;
  *&v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_recommendationsController] = v10;
  *&v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account] = v11;
  *&v13[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter] = a2;
  v27.receiver = v13;
  v27.super_class = v12;

  v15 = v11;
  v16 = a2;
  v17 = objc_msgSendSuper2(&v27, sel_init);
  v18 = v2[10];
  v2[10] = v17;
  v19 = v17;

  v20 = &v19[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate];
  v21 = *&v19[OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate];
  *v20 = v2;
  *(v20 + 1) = &off_2856BC458;

  result = swift_unknownObjectRelease();
  if (v2[10])
  {
LABEL_3:
    v23 = [a1 actionURL];
    sub_243AC11D8();

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v24 = result;
      v25 = sub_243AC11C8();
      sub_243A2E2B4(MEMORY[0x277D84F90]);
      v26 = sub_243AC27C8();

      [v24 openSensitiveURL:v25 withOptions:v26];

      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A86B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A85350(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A86C64(void *a1, void *a2)
{
  if (v2[13])
  {
    goto LABEL_3;
  }

  v5 = v2[2];
  v6 = v2[3];
  type metadata accessor for MailSetupHandler();
  swift_allocObject();
  v7 = v6;

  v8 = a2;
  v9 = v2;
  v10 = sub_243AA1504(v7, v5, v8);

  v11 = v9[13];
  v9[13] = v10;

  v12 = v10[6];
  v10[6] = v9;
  v10[7] = &off_2856BC458;

  result = swift_unknownObjectRelease();
  if (v9[13])
  {
LABEL_3:

    sub_243AA10C8(a1);
  }

  return result;
}

uint64_t sub_243A86D90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A86DE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243A86E38(uint64_t a1)
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
  v10[1] = sub_243A1FEA8;

  return sub_243A84624(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t get_enum_tag_for_layout_string_21CloudRecommendationUI21CachedAsyncImageStateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_243A86F38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243A86F94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_243A86FF4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_243A87038()
{
  sub_243A872A0();
  if (v0 <= 0x3F)
  {
    sub_243A4D158();
    if (v1 <= 0x3F)
    {
      sub_243A872F0();
      if (v2 <= 0x3F)
      {
        sub_243A87348();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_243A87108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243A871D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243A872A0()
{
  if (!qword_27ED99E30)
  {
    v0 = sub_243AC2098();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99E30);
    }
  }
}

void sub_243A872F0()
{
  if (!qword_27ED99E38)
  {
    sub_243AC1058();
    v0 = sub_243AC2C38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99E38);
    }
  }
}

unint64_t sub_243A87348()
{
  result = qword_27ED99E40;
  if (!qword_27ED99E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED99E40);
  }

  return result;
}

uint64_t sub_243A873D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v4 = sub_243AC2A98();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v40 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99E48, &qword_243AC8CA8);
  v14 = sub_243AC1878();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v36 - v18;
  v19 = *(v2 + 2);
  v20 = *(v2 + 3);
  v50 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
  sub_243AC2068();
  v21 = v49;
  v19(v49);
  sub_243A5F694(v21);
  v22 = *(a1 + 44);
  v23 = v38;
  (*(v8 + 16))(v38, v2, a1);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = *(a1 + 24);
  *(v25 + 16) = v11;
  *(v25 + 24) = v26;
  (*(v8 + 32))(v25 + v24, v23, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  sub_243A88338();
  v27 = v42;
  sub_243AC2A78();
  v28 = v39;
  v29 = v36;
  sub_243AC1F08();

  (*(v44 + 8))(v27, v45);
  (*(v43 + 8))(v29, v11);
  v30 = sub_243A88414();
  v47 = v26;
  v48 = v30;
  swift_getWitnessTable();
  v31 = v37;
  v32 = *(v37 + 16);
  v33 = v41;
  v32(v41, v28, v14);
  v34 = *(v31 + 8);
  v34(v28, v14);
  v32(v46, v33, v14);
  return (v34)(v33, v14);
}

uint64_t sub_243A87840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_243AC1058();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  sub_243AC2A58();
  v3[18] = sub_243AC2A48();
  v9 = sub_243AC2A28();
  v3[19] = v9;
  v3[20] = v8;

  return MEMORY[0x2822009F8](sub_243A87970, v9, v8);
}

uint64_t sub_243A87970()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = type metadata accessor for CachedAsyncImage();
  sub_243A88478(v6 + *(v7 + 44), v4);
  v8 = (*(v2 + 48))(v4, 1, v1);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  if (v8 == 1)
  {
    v11 = *(v0 + 144);

    sub_243A884E8(v9);
    *(v0 + 16) = *v10;
    *(v0 + 64) = 0x8000000000000008;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
    sub_243AC2078();
    v12 = *(v0 + 136);
    v13 = *(v0 + 112);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
    *(v0 + 168) = *(v10 + *(v7 + 48));
    v16 = *(MEMORY[0x277CC9D18] + 4);
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_243A87B30;
    v18 = *(v0 + 136);

    return MEMORY[0x28211ECF8](v18, 0);
  }
}

uint64_t sub_243A87B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 176);
  v8 = *v4;
  v6[23] = a1;
  v6[24] = a2;
  v6[25] = a3;
  v6[26] = v3;

  v9 = v5[20];
  v10 = v5[19];
  if (v3)
  {
    v11 = sub_243A87FAC;
  }

  else
  {
    v11 = sub_243A87C78;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_243A87C78()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 144);

  v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v5 = sub_243AC1218();
  v6 = [v4 initWithData_];

  if (v6)
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 168);
    v9 = *(v0 + 88);
    v38 = *(v0 + 96);
    v10 = sub_243AC1FE8();
    v11 = *(v9 + 32);
    sub_243AC1768();
    v12 = swift_task_alloc();
    *(v12 + 16) = v38;
    *(v12 + 32) = v9;
    *(v12 + 40) = v10;
    sub_243AC17F8();

    v13 = [v8 configuration];
    v14 = [v13 URLCache];

    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    v17 = *(v0 + 184);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 120);
    if (v14)
    {
      v39 = *(v0 + 120);
      v21 = objc_allocWithZone(MEMORY[0x277CCA8F0]);
      v22 = v16;
      sub_243A88590(v17, v15);
      v23 = sub_243AC1218();
      v24 = [v21 initWithResponse:v22 data:v23];

      sub_243A200C8(v17, v15);
      v25 = sub_243AC1018();
      [v14 storeCachedResponse:v24 forRequest:v25];

      sub_243A200C8(v17, v15);
      (*(v19 + 8))(v18, v39);
    }

    else
    {
      sub_243A200C8(*(v0 + 184), *(v0 + 192));

      (*(v19 + 8))(v18, v20);
    }
  }

  else
  {
    v26 = *(v0 + 88);
    v27 = *v26;
    v28 = v26[1];
    *(v0 + 48) = *v26;
    v29 = *(v0 + 192);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);
    v32 = *(v0 + 128);
    v40 = *(v0 + 136);
    v33 = *(v0 + 120);
    *(v0 + 56) = v28;
    *(v0 + 80) = 0x8000000000000008;
    sub_243A88550(v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
    sub_243AC2078();
    sub_243A200C8(v31, v29);

    sub_243A5F694(v27);

    (*(v32 + 8))(v40, v33);
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 112);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_243A87FAC()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 88);

  *(v0 + 32) = *v6;
  *(v0 + 72) = v1 | 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
  sub_243AC2078();
  (*(v5 + 8))(v3, v4);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_243A8808C(__int128 *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99E50, &qword_243AC8CB0);
  return sub_243AC2078();
}

uint64_t sub_243A880F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CachedAsyncImage();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = v0 + v5;
  sub_243A5F694(*(v0 + v5));
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 32);

  v11 = *(v3 + 44);
  v12 = sub_243AC1058();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_243A88250()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for CachedAsyncImage() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A1FEA8;

  return sub_243A87840(v0 + v5, v2, v3);
}

unint64_t sub_243A88338()
{
  result = qword_27ED99E58;
  if (!qword_27ED99E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99418, &qword_243AC67E8);
    sub_243A883BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99E58);
  }

  return result;
}

unint64_t sub_243A883BC()
{
  result = qword_27ED99E60;
  if (!qword_27ED99E60)
  {
    sub_243AC1058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99E60);
  }

  return result;
}

unint64_t sub_243A88414()
{
  result = qword_27ED99E68;
  if (!qword_27ED99E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99E48, &qword_243AC8CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99E68);
  }

  return result;
}

uint64_t sub_243A88478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A884E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243A88550(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_243A88570()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_243A8808C(*(v0 + 32));
}

uint64_t sub_243A88590(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243A88614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99E48, &qword_243AC8CA8);
  sub_243AC1878();
  sub_243A88414();
  return swift_getWitnessTable();
}

uint64_t sub_243A886B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_243A8B394(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    v16 = sub_243A2DDC0(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v8;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v8;
      v23 = *v8;
      if (!v19)
      {
        sub_243A8BB1C(a4, a5);
        v20 = v23;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      result = sub_243A8AEA8(v16, v20);
      *v8 = v20;
    }
  }

  return result;
}

uint64_t sub_243A887CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_243A21C48(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_243A8B544(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_243A2251C(a1, &qword_27ED989A0, &qword_243AC4470);
    sub_243A8AE04(a2, a3, v10);

    return sub_243A2251C(v10, &qword_27ED989A0, &qword_243AC4470);
  }

  return result;
}

uint64_t sub_243A8889C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EE0, &qword_243AC8E00);
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC8, &qword_243AC8DE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v19[1] = sub_243AC23E8();
  sub_243AC2678();
  sub_243AC2478();
  v13 = *(v6 + 16);
  v13(v12, v10, v5);
  sub_243A491E8(&qword_27ED99EE8, &qword_27ED99EE0, &qword_243AC8E00);
  sub_243AC2468();
  v14 = *(v6 + 8);
  v6 += 8;
  v14(v10, v5);
  (*(v20 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EF0, &unk_243AC8E08);
  v15 = *(v6 + 64);
  v16 = (*(v6 + 72) + 32) & ~*(v6 + 72);
  v17 = swift_allocObject();
  v13((v17 + v16), v12, v5);
  sub_243AC2478();
  v13(v10, (v17 + v16), v5);
  swift_setDeallocating();
  v14((v17 + v16), v5);
  swift_deallocClassInstance();
  sub_243AC2458();
  v14(v10, v5);
  return (v14)(v12, v5);
}

uint64_t sub_243A88BC4(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_243AC2178();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC21A8();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243AC13A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_243A4C4D4();
  v14 = sub_243AC2BC8();
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v12 + 32))(v16 + v15, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_243A8EB08;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_10;
  v17 = _Block_copy(aBlock);

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A8EBD8(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v10, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v3);
  return (*(v20 + 8))(v10, v21);
}

uint64_t sub_243A88F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC0, &qword_243AC8DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_243AC13A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext;
  swift_beginAccess();
  sub_243A8EC20(v7, a1 + v10, &qword_27ED99EC0, &qword_243AC8DD0);
  return swift_endAccess();
}

uint64_t sub_243A890B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x707954746E657665;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6569466172747865;
    v4 = 0xEB0000000073646CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6449746E657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x707954746E657665;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6569466172747865;
    v8 = 0xEB0000000073646CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6449746E657665;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A891D4()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A89284()
{
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A89320()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A893CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243A8EDA0();
  *a2 = result;
  return result;
}

void sub_243A893FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x707954746E657665;
  if (v2 != 1)
  {
    v5 = 0x6569466172747865;
    v4 = 0xEB0000000073646CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6449746E657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_243A89468()
{
  v1 = 0x707954746E657665;
  if (*v0 != 1)
  {
    v1 = 0x6569466172747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_243A894D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243A8EDA0();
  *a1 = result;
  return result;
}

uint64_t sub_243A894F8(uint64_t a1)
{
  v2 = sub_243A8EB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A89534(uint64_t a1)
{
  v2 = sub_243A8EB84();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_243A89570(uint64_t *a1)
{
  v2 = v1;
  v51 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v35 - v6;
  v46 = sub_243AC1618();
  v43 = *(v46 - 8);
  v7 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v46);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F00, &qword_243AC8E48);
  v44 = *(v47 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = &v35 - v12;
  v14 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v16 = *(v15 - 8);
  v39 = *(v16 + 56);
  v40 = v14;
  v38 = v16 + 56;
  v39(&v2[v14], 1, 1, v15);
  v17 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext;
  v18 = sub_243AC13A8();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  v20 = a1[3];
  v19 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_243A8EB84();
  v21 = v48;
  sub_243AC2FE8();
  if (v21)
  {
    sub_243A2251C(&v2[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields], &qword_27ED98D60, &unk_243AC4FF0);
    sub_243A2251C(&v2[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext], &qword_27ED99EC0, &qword_243AC8DD0);
    v28 = *(*v2 + 48);
    v29 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    v25 = v2;
  }

  else
  {
    v48 = v15;
    v22 = v44;
    v50 = 0;
    sub_243A8EBD8(&qword_27ED98AC8, MEMORY[0x277D23340]);
    v23 = v45;
    v24 = v13;
    sub_243AC2E88();
    v25 = v2;
    v36 = *(v43 + 32);
    v37 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId;
    v45 = (v43 + 32);
    v36(&v2[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId], v23, v46);
    v50 = 1;
    v26 = v42;
    sub_243AC2E88();
    v27 = v22;
    v36(&v25[OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventType], v26, v46);
    v50 = 2;
    sub_243A491E8(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210);
    v31 = v41;
    v32 = v47;
    v33 = v48;
    sub_243AC2E88();
    (*(v27 + 8))(v24, v32);
    v39(v31, 0, 1, v33);
    v34 = v40;
    swift_beginAccess();
    sub_243A8EC20(v31, &v25[v34], &qword_27ED98D60, &unk_243AC4FF0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v25;
}

uint64_t sub_243A89B2C()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId;
  v2 = sub_243AC1618();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventType, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields, &qword_27ED98D60, &unk_243AC4FF0);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext, &qword_27ED99EC0, &qword_243AC8DD0);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_243A89C38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243A8DD94)(a1);
}

uint64_t sub_243A89D80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  sub_243AC13A8();
  sub_243A8EBD8(&qword_27ED99EF8, MEMORY[0x277D7EC08]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

char *sub_243A89ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_243A89570(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t static OpaqueMetricsFieldsContext.== infix(_:_:)()
{
  sub_243AC13A8();
  sub_243A8EBD8(&qword_27ED99E70, MEMORY[0x277D7EC08]);
  v0 = sub_243AC2EB8();
  v2 = v1;
  if (v0 == sub_243AC2EB8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_243AC2EE8();
  }

  return v5 & 1;
}

uint64_t type metadata accessor for JetAction()
{
  result = qword_27ED99E98;
  if (!qword_27ED99E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A8A068()
{
  v0 = sub_243AC1618();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_243A31A9C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_243A8A16C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243A8A16C()
{
  if (!qword_27ED99EA8)
  {
    sub_243AC13A8();
    v0 = sub_243AC2C38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99EA8);
    }
  }
}

uint64_t sub_243A8A27C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CD8, &qword_243AC4E18);
  v38 = a2;
  result = sub_243AC2E18();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_243A8A530(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_243AC2E18();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_243A8A7CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v36 = a2;
  result = sub_243AC2E18();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_243A21C48(v25, v37);
      }

      else
      {
        sub_243A20058(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_243A21C48(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_243A8AA84(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_243AC1528();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CF0, qword_243AC4E30);
  v46 = a2;
  result = sub_243AC2E18();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

double sub_243A8AE04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_243A2DDC0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_243A8BC78();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_243A21C48((*(v12 + 56) + 32 * v9), a3);
    sub_243A8B058(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_243A8AEA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_243AC2C88() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_243AC2FB8();

      sub_243AC28A8();
      v13 = sub_243AC2FD8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_243A8B058(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_243AC2C88() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_243AC2FB8();

      sub_243AC28A8();
      v14 = sub_243AC2FD8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_243A8B21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_243A2DDC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243A8A27C(v16, a4 & 1);
      v20 = *v5;
      result = sub_243A2DDC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_243AC2F38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_243A8B9A0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_243A8B394(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_243A2DDC0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_243A8A530(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_243A2DDC0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_243AC2F38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_243A8BB1C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

_OWORD *sub_243A8B544(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243A2DDC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_243A8BC78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_243A8A7CC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_243A2DDC0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_243AC2F38();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_243A21C48(a1, v23);
  }

  else
  {
    sub_243A8B85C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_243A8B694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_243A2DDC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_243A8BE1C();
      goto LABEL_7;
    }

    sub_243A8AA84(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_243A2DDC0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_243AC2F38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_243AC1528();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_243A8B8C8(v12, a2, a3, a1, v18);
}

unint64_t sub_243A8B814(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_243A8B85C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_243A21C48(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_243A8B8C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_243AC1528();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_243A8B9A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CD8, &qword_243AC4E18);
  v2 = *v0;
  v3 = sub_243AC2E08();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_243A8BB1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_243AC2E08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_243A8BC78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v2 = *v0;
  v3 = sub_243AC2E08();
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
        sub_243A20058(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_243A21C48(v25, (*(v4 + 56) + v22));
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

char *sub_243A8BE1C()
{
  v1 = v0;
  v36 = sub_243AC1528();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CF0, qword_243AC4E30);
  v4 = *v0;
  v5 = sub_243AC2E08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

uint64_t sub_243A8C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = sub_243AC23B8();
  v6[41] = v7;
  v8 = *(v7 - 8);
  v6[42] = v8;
  v9 = *(v8 + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10) - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v11 = sub_243AC2438();
  v6[46] = v11;
  v12 = *(v11 - 8);
  v6[47] = v12;
  v13 = *(v12 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC8, &qword_243AC8DE8);
  v6[50] = v14;
  v15 = *(v14 - 8);
  v6[51] = v15;
  v16 = *(v15 + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v17 = *(*(sub_243AC24B8() - 8) + 64) + 15;
  v6[54] = swift_task_alloc();
  v18 = sub_243AC23A8();
  v6[55] = v18;
  v19 = *(v18 - 8);
  v6[56] = v19;
  v20 = *(v19 + 64) + 15;
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v21 = sub_243AC22B8();
  v6[59] = v21;
  v22 = *(v21 - 8);
  v6[60] = v22;
  v23 = *(v22 + 64) + 15;
  v6[61] = swift_task_alloc();
  v24 = sub_243AC22D8();
  v6[62] = v24;
  v25 = *(v24 - 8);
  v6[63] = v25;
  v26 = *(v25 + 64) + 15;
  v6[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A8C3D0, 0, 0);
}

uint64_t sub_243A8C3D0()
{
  v1 = *(v0 + 320);
  v2 = swift_task_alloc();
  *(v0 + 520) = v2;
  *v2 = v0;
  v2[1] = sub_243A8C47C;

  return sub_243A69450();
}

uint64_t sub_243A8C47C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v7 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v5 = sub_243A8CBF4;
  }

  else
  {
    v5 = sub_243A8C594;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_243A8C594(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 528);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v82 = *(v1 + 528);
  v7 = -1;
  v8 = -1 << *(v82 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v11 = MEMORY[0x277D84F98];
  if ((v7 & v4) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v2;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v82 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_243A20058(*(v82 + 56) + 32 * v18, v1 + 152);
    *(v1 + 64) = v21;
    *(v1 + 72) = v20;
    sub_243A21C48((v1 + 152), (v1 + 80));

    v16 = v14;
LABEL_15:
    v22 = *(v1 + 80);
    *(v1 + 16) = *(v1 + 64);
    *(v1 + 32) = v22;
    *(v1 + 48) = *(v1 + 96);
    v23 = *(v1 + 24);
    if (!v23)
    {
      break;
    }

    v24 = *(v1 + 16);
    sub_243A21C48((v1 + 32), (v1 + 248));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1 = sub_243A2DDC0(v24, v23);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_39;
    }

    v31 = v26;
    if (v11[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v36 = a1;
      sub_243A8BC78();
      a1 = v36;
      if ((v31 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v12 = a1;

      v13 = (v11[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      a1 = sub_243A21C48((v1 + 248), v13);
      v2 = v16;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_243A8A7CC(v30, isUniquelyReferenced_nonNull_native);
      a1 = sub_243A2DDC0(v24, v23);
      if ((v31 & 1) != (v32 & 1))
      {

        return sub_243AC2F38();
      }

LABEL_21:
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_22:
      v11[(a1 >> 6) + 8] |= 1 << a1;
      v33 = (v11[6] + 16 * a1);
      *v33 = v24;
      v33[1] = v23;
      a1 = sub_243A21C48((v1 + 248), (v11[7] + 32 * a1));
      v34 = v11[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v11[2] = v35;
      v2 = v16;
      if (!v9)
      {
LABEL_7:
        if (v10 <= v2 + 1)
        {
          v15 = v2 + 1;
        }

        else
        {
          v15 = v10;
        }

        v16 = v15 - 1;
        while (1)
        {
          v14 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v14 >= v10)
          {
            v9 = 0;
            *(v1 + 80) = 0u;
            *(v1 + 96) = 0u;
            *(v1 + 64) = 0u;
            goto LABEL_15;
          }

          v9 = *(v5 + 8 * v14);
          ++v2;
          if (v9)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return MEMORY[0x282180668](a1);
      }
    }
  }

  v37 = *(v1 + 528);
  v38 = *(v1 + 504);
  v39 = *(v1 + 488);
  v40 = *(v1 + 480);
  v74 = *(v1 + 512);
  v75 = *(v1 + 472);
  v77 = *(v1 + 496);
  v79 = *(v1 + 464);
  v76 = *(v1 + 432);
  v83 = *(v1 + 424);
  v42 = *(v1 + 296);
  v41 = *(v1 + 304);
  v43 = *(v1 + 280);
  v44 = *(v1 + 288);

  *(v1 + 208) = MEMORY[0x277D837D0];
  *(v1 + 184) = v42;
  *(v1 + 192) = v41;
  sub_243A21C48((v1 + 184), (v1 + 216));

  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v1 + 216), 0x79546E6F69746361, 0xEA00000000006570, v45);
  v46 = MEMORY[0x277D84F90];
  sub_243A2EAE8(MEMORY[0x277D84F90]);
  sub_243A2EB0C(v46);
  sub_243AC22A8();
  MEMORY[0x245D46660](v43, v44, 0x6E6F74747562, 0xE600000000000000, v11, v39);

  (*(v40 + 8))(v39, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99ED0, &qword_243AC8DF0);
  v47 = *(v38 + 72);
  v48 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_243AC51B0;
  (*(v38 + 16))(v49 + v48, v74, v77);
  sub_243AC24A8();
  sub_243AC2398();
  sub_243A8889C(v83);
  v50 = qword_27EDA1470;
  *(v1 + 544) = qword_27EDA1470;
  if (v50)
  {
    v51 = *(MEMORY[0x277D224A8] + 4);

    v52 = swift_task_alloc();
    *(v1 + 552) = v52;
    *v52 = v1;
    v52[1] = sub_243A8CD00;
    a1 = *(v1 + 360);

    return MEMORY[0x282180668](a1);
  }

  v54 = *(v1 + 504);
  v78 = *(v1 + 496);
  v55 = *(v1 + 464);
  v57 = *(v1 + 440);
  v56 = *(v1 + 448);
  v58 = *(v1 + 424);
  v59 = *(v1 + 400);
  v60 = *(v1 + 408);
  v61 = *(v1 + 376);
  v80 = *(v1 + 368);
  v84 = *(v1 + 512);
  v62 = *(v1 + 360);

  (*(v60 + 8))(v58, v59);
  (*(v56 + 8))(v55, v57);
  (*(v54 + 8))(v84, v78);
  (*(v61 + 56))(v62, 1, 1, v80);
  sub_243A2251C(v62, &unk_27ED995A0, qword_243AC6D10);
  v63 = *(v1 + 512);
  v64 = *(v1 + 488);
  v66 = *(v1 + 456);
  v65 = *(v1 + 464);
  v68 = *(v1 + 424);
  v67 = *(v1 + 432);
  v69 = *(v1 + 416);
  v71 = *(v1 + 384);
  v70 = *(v1 + 392);
  v72 = *(v1 + 360);
  v81 = *(v1 + 352);
  v85 = *(v1 + 344);

  v73 = *(v1 + 8);

  return v73();
}

uint64_t sub_243A8CBF4()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v7 = *(v0 + 416);
  v9 = *(v0 + 384);
  v8 = *(v0 + 392);
  v10 = *(v0 + 360);
  v13 = *(v0 + 352);
  v14 = *(v0 + 344);
  v15 = *(v0 + 536);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_243A8CD00()
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 544);
  v6 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = sub_243A8D210;
  }

  else
  {
    v4 = sub_243A8CE30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_243A8CE30()
{
  v1 = v0[56];
  v21 = v1;
  v22 = v0[57];
  v23 = v0[55];
  v24 = v0[58];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[49];
  v19 = v6;
  v20 = v0[48];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v25 = v0[39];
  (*(v7 + 56))(v9, 0, 1, v8);
  (*(v7 + 32))(v6, v9, v8);
  sub_243AC23E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99ED8, &qword_243AC8DF8);
  v10 = *(sub_243AC2238() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_243AC5F30;
  (*(v5 + 16))(v3, v2, v4);
  sub_243AC2228();
  (*(v7 + 16))(v20, v19, v8);
  sub_243AC2228();
  v0[71] = sub_243AC23D8();
  (*(v21 + 16))(v22, v24, v23);
  v13 = sub_243AC2258();
  v14 = MEMORY[0x277D21B60];
  v0[17] = v13;
  v0[18] = v14;
  __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_243AC2248();
  v0[72] = sub_243AC2448();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v15 = *(MEMORY[0x277D224A8] + 4);
  v16 = swift_task_alloc();
  v0[73] = v16;
  *v16 = v0;
  v16[1] = sub_243A8D0FC;
  v17 = v0[44];

  return MEMORY[0x282180668](v17);
}

uint64_t sub_243A8D0FC()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_243A8DBEC;
  }

  else
  {
    v3 = sub_243A8D37C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A8D210()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  v4 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v7 = *(v0 + 424);
  v8 = *(v0 + 400);
  v9 = *(v0 + 408);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 512);
  v11 = *(v0 + 488);
  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  v16 = *(v0 + 416);
  v18 = *(v0 + 384);
  v17 = *(v0 + 392);
  v19 = *(v0 + 360);
  v22 = *(v0 + 352);
  v23 = *(v0 + 344);
  v24 = *(v0 + 560);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_243A8D37C()
{
  v102 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  (*(v3 + 16))(v1, *(v0 + 352), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277D21CA8])
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 304);
    v6 = *(v0 + 288);
    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14D8);

    v8 = sub_243AC1448();
    v9 = sub_243AC2B78();

    v93 = v8;
    v10 = os_log_type_enabled(v8, v9);
    v81 = *(v0 + 576);
    v84 = *(v0 + 568);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);
    v14 = *(v0 + 464);
    v15 = *(v0 + 448);
    v95 = *(v0 + 424);
    v98 = *(v0 + 440);
    v16 = *(v0 + 408);
    v89 = *(v0 + 392);
    v91 = *(v0 + 400);
    v17 = *(v0 + 376);
    v87 = *(v0 + 368);
    v18 = *(v0 + 336);
    v77 = *(v0 + 328);
    v79 = *(v0 + 352);
    v19 = *(v0 + 320);
    if (v10)
    {
      v63 = *(v0 + 296);
      v66 = *(v0 + 304);
      v73 = *(v0 + 504);
      v75 = *(v0 + 512);
      v20 = *(v0 + 280);
      v21 = *(v0 + 288);
      v69 = *(v0 + 320);
      v71 = *(v0 + 464);
      v22 = swift_slowAlloc();
      v72 = v13;
      v23 = swift_slowAlloc();
      v101 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_243AB73D8(v20, v21, &v101);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_243AB73D8(v63, v66, &v101);
      v24 = "ActionDispatcher.sendActionEvent: performed %{public}s, type: %{public}s";
LABEL_11:
      _os_log_impl(&dword_243A1B000, v93, v9, v24, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v23, -1, -1);
      MEMORY[0x245D47D20](v22, -1, -1);

      (*(v18 + 8))(v79, v77);
      (*(v17 + 8))(v89, v87);
      (*(v16 + 8))(v95, v91);
      (*(v15 + 8))(v71, v98);
      (*(v73 + 8))(v75, v72);
      goto LABEL_18;
    }

LABEL_12:

    (*(v18 + 8))(v79, v77);
    (*(v17 + 8))(v89, v87);
    (*(v16 + 8))(v95, v91);
    (*(v15 + 8))(v14, v98);
    (*(v12 + 8))(v11, v13);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x277D21CA0])
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 304);
    v26 = *(v0 + 288);
    v27 = sub_243AC1468();
    __swift_project_value_buffer(v27, qword_27EDA14D8);

    v28 = sub_243AC1448();
    v9 = sub_243AC2B78();

    v93 = v28;
    v29 = os_log_type_enabled(v28, v9);
    v82 = *(v0 + 576);
    v85 = *(v0 + 568);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);
    v14 = *(v0 + 464);
    v15 = *(v0 + 448);
    v95 = *(v0 + 424);
    v98 = *(v0 + 440);
    v16 = *(v0 + 408);
    v89 = *(v0 + 392);
    v91 = *(v0 + 400);
    v17 = *(v0 + 376);
    v87 = *(v0 + 368);
    v18 = *(v0 + 336);
    v77 = *(v0 + 328);
    v79 = *(v0 + 352);
    v19 = *(v0 + 320);
    if (v29)
    {
      v64 = *(v0 + 296);
      v67 = *(v0 + 304);
      v73 = *(v0 + 504);
      v75 = *(v0 + 512);
      v30 = *(v0 + 280);
      v31 = *(v0 + 288);
      v69 = *(v0 + 320);
      v71 = *(v0 + 464);
      v22 = swift_slowAlloc();
      v72 = v13;
      v23 = swift_slowAlloc();
      v101 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_243AB73D8(v30, v31, &v101);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_243AB73D8(v64, v67, &v101);
      v24 = "ActionDispatcher.sendActionEvent: unsupported %{public}s, type: %{public}s";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 304);
  v33 = *(v0 + 288);
  v34 = sub_243AC1468();
  __swift_project_value_buffer(v34, qword_27EDA14D8);

  v35 = sub_243AC1448();
  v36 = sub_243AC2B78();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 576);
  v39 = *(v0 + 568);
  v40 = *(v0 + 504);
  v41 = *(v0 + 512);
  v94 = *(v0 + 464);
  v96 = *(v0 + 448);
  v99 = *(v0 + 496);
  v90 = *(v0 + 424);
  v92 = *(v0 + 440);
  v42 = *(v0 + 408);
  v86 = *(v0 + 392);
  v88 = *(v0 + 400);
  v43 = *(v0 + 376);
  v80 = *(v0 + 352);
  v83 = *(v0 + 368);
  v44 = *(v0 + 336);
  v78 = *(v0 + 328);
  if (v37)
  {
    v65 = *(v0 + 296);
    v68 = *(v0 + 304);
    v45 = *(v0 + 280);
    v46 = *(v0 + 288);
    v70 = *(v0 + 320);
    v76 = *(v0 + 512);
    v47 = swift_slowAlloc();
    v74 = v40;
    v48 = swift_slowAlloc();
    v101 = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_243AB73D8(v45, v46, &v101);
    *(v47 + 12) = 2082;
    *(v47 + 14) = sub_243AB73D8(v65, v68, &v101);
    _os_log_impl(&dword_243A1B000, v35, v36, "ActionDispatcher.sendActionEvent: unknown %{public}s, type: %{public}s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v48, -1, -1);
    MEMORY[0x245D47D20](v47, -1, -1);

    v49 = *(v44 + 8);
    v49(v80, v78);
    (*(v43 + 8))(v86, v83);
    (*(v42 + 8))(v90, v88);
    (*(v96 + 8))(v94, v92);
    (*(v74 + 8))(v76, v99);
    v49(*(v0 + 344), *(v0 + 328));
  }

  else
  {

    v50 = *(v44 + 8);
    v50(v80, v78);
    (*(v43 + 8))(v86, v83);
    (*(v42 + 8))(v90, v88);
    (*(v96 + 8))(v94, v92);
    (*(v40 + 8))(v41, v99);
    v50(*(v0 + 344), *(v0 + 328));
  }

LABEL_18:
  v51 = *(v0 + 512);
  v52 = *(v0 + 488);
  v54 = *(v0 + 456);
  v53 = *(v0 + 464);
  v56 = *(v0 + 424);
  v55 = *(v0 + 432);
  v57 = *(v0 + 416);
  v59 = *(v0 + 384);
  v58 = *(v0 + 392);
  v60 = *(v0 + 360);
  v97 = *(v0 + 352);
  v100 = *(v0 + 344);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_243A8DBEC()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 504);
  v26 = *(v0 + 496);
  v28 = *(v0 + 512);
  v4 = *(v0 + 448);
  v23 = *(v0 + 440);
  v24 = *(v0 + 464);
  v22 = *(v0 + 424);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 368);
  v9 = *(v0 + 376);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v22, v6);
  (*(v4 + 8))(v24, v23);
  (*(v3 + 8))(v28, v26);
  v10 = *(v0 + 512);
  v11 = *(v0 + 488);
  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  v16 = *(v0 + 416);
  v18 = *(v0 + 384);
  v17 = *(v0 + 392);
  v19 = *(v0 + 360);
  v25 = *(v0 + 352);
  v27 = *(v0 + 344);
  v29 = *(v0 + 592);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_243A8DD94(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_243AC1618();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = sub_243AC1528();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC0, &qword_243AC8DD0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = sub_243AC13A8();
  v2[25] = v13;
  v14 = *(v13 - 8);
  v2[26] = v14;
  v15 = *(v14 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A8DFAC, 0, 0);
}

void sub_243A8DFAC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_metricsFieldsContext;
  swift_beginAccess();
  sub_243A8E9A8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_243A2251C(v0[24], &qword_27ED99EC0, &qword_243AC8DD0);
LABEL_5:
    if (qword_27ED98920 != -1)
    {
LABEL_28:
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14D8);
    v11 = sub_243AC1448();
    v12 = sub_243AC2B58();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_243A1B000, v11, v12, "No metricsFieldsContext available for JetAction", v13, 2u);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    v14 = v0[27];
    v15 = v0[23];
    v16 = v0[24];
    v17 = v0[20];
    v18 = v0[17];

    v19 = v0[1];

    v19();
    return;
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[14];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  v9 = OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_extraFields;
  swift_beginAccess();
  if ((*(v6 + 48))(v8 + v9, 1, v7))
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    swift_endAccess();
    goto LABEL_5;
  }

  v20 = v0[13];
  (*(v0[22] + 16))(v0[23], v8 + v9, v0[21]);
  swift_endAccess();
  sub_243A22438();
  sub_243AC14D8();
  v21 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v22 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v23 = sub_243AC2E08();
  v24 = 0;
  v0[28] = v23;
  v25 = v22 + 64;
  v58 = v23;
  v59 = v22;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v22 + 64);
  v29 = (v26 + 63) >> 6;
  v57 = v23 + 64;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v60 = (v28 - 1) & v28;
LABEL_20:
      v33 = v30 | (v24 << 6);
      v34 = v0[20];
      v35 = v0[18];
      v36 = (*(v59 + 48) + 16 * v33);
      v37 = v36[1];
      v61 = *v36;
      (*(v21 + 16))(v34, *(v59 + 56) + *(v21 + 72) * v33, v35);

      sub_243A21620(v0 + 2);
      (*(v21 + 8))(v34, v35);
      *(v57 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v38 = (v58[6] + 16 * v33);
      *v38 = v61;
      v38[1] = v37;
      sub_243A21C48(v0 + 1, (v58[7] + 32 * v33));
      v39 = v58[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v58[2] = v41;
      v28 = v60;
      if (!v60)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_15:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v29)
      {
        break;
      }

      v32 = *(v25 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v60 = (v32 - 1) & v32;
        goto LABEL_20;
      }
    }

    v42 = v0[13];
    v43 = v0[14] + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventId;
    v44 = sub_243AC1608();
    v0[29] = v45;
    v46 = v44;
    v47 = v45;
    v48 = v0[13];
    (*(v0[16] + 16))(v0[17], v0[14] + OBJC_IVAR____TtC21CloudRecommendationUI9JetAction_eventType, v0[15]);
    v49 = sub_243AC1608();
    v0[30] = v50;
    v51 = v50;
    v52 = v49;
    (*(v0[16] + 8))(v0[17], v0[15]);
    v53 = [objc_opt_self() ams_sharedAccountStore];
    v54 = [v53 aa_primaryAppleAccount];
    v0[31] = v54;

    if (!v54)
    {
      goto LABEL_30;
    }

    v55 = swift_task_alloc();
    v0[32] = v55;
    *v55 = v0;
    v55[1] = sub_243A8E694;
    v56 = v0[27];

    sub_243A8C09C(v46, v47, v52, v51, v56, v54);
  }
}

uint64_t sub_243A8E694()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[28];
  if (v0)
  {

    v9 = sub_243A8E8F0;
  }

  else
  {
    v10 = v2[28];

    v9 = sub_243A8E840;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_243A8E840()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_243A8E8F0()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[33];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_243A8E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99EC0, &qword_243AC8DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A8EA44()
{
  v1 = sub_243AC13A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A8EB08()
{
  v1 = *(sub_243AC13A8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_243A88F74(v2, v3);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243A8EB84()
{
  result = qword_27ED99F08;
  if (!qword_27ED99F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F08);
  }

  return result;
}

uint64_t sub_243A8EBD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243A8EC20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_243A8EC9C()
{
  result = qword_27ED99F10;
  if (!qword_27ED99F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F10);
  }

  return result;
}

unint64_t sub_243A8ECF4()
{
  result = qword_27ED99F18;
  if (!qword_27ED99F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F18);
  }

  return result;
}

unint64_t sub_243A8ED4C()
{
  result = qword_27ED99F20;
  if (!qword_27ED99F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F20);
  }

  return result;
}

uint64_t sub_243A8EDA0()
{
  v0 = sub_243AC2E58();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_243A8EDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6574656C706D6F63;
    }

    else
    {
      v5 = 1852399981;
    }

    if (v2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x75747865746E6F63;
    v4 = 0xEA00000000006C61;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x8000000243ACBCD0;
    }

    if (a1 == 2)
    {
      v5 = 0x74756F6B61657262;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6574656C706D6F63;
    }

    else
    {
      v11 = 1852399981;
    }

    if (a2)
    {
      v10 = 0xE900000000000064;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x75747865746E6F63;
    v8 = 0x8000000243ACBCD0;
    if (a2 == 3)
    {
      v8 = 0xEA00000000006C61;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x74756F6B61657262;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_243AC2EE8();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_243A8EF80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000243ACBA40;
    }

    else
    {
      v4 = 0x8000000243ACBA60;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x73746E756F636361;
    }

    else
    {
      v3 = 0x746E756F636361;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000243ACBA40;
    }

    else
    {
      v6 = 0x8000000243ACBA60;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x73746E756F636361;
    }

    else
    {
      v5 = 0x746E756F636361;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_243AC2EE8();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_243A8F0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6874646977;
    }

    else
    {
      v3 = 0x746867696568;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E65644965707974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE00726569666974;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (a2 != 2)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6E65644965707974;
    v5 = 0xEE00726569666974;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A8F208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78336C7275;
  v7 = 0x6C6F686563616C70;
  v8 = 0xEB00000000726564;
  if (a1 != 4)
  {
    v7 = 0x646F4D6567616D69;
    v8 = 0xEE00737265696669;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x78316C7275;
  if (a1 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      v13 = 862745205;
      goto LABEL_27;
    }

    if (a2 == 4)
    {
      v12 = 0xEB00000000726564;
      if (v10 != 0x6C6F686563616C70)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = 0xEE00737265696669;
      if (v10 != 0x646F4D6567616D69)
      {
LABEL_32:
        v14 = sub_243AC2EE8();
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      v12 = 0xE500000000000000;
      if (a2 == 1)
      {
        v13 = 829190773;
      }

      else
      {
        v13 = 845967989;
      }

LABEL_27:
      if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7800000000))
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_32;
    }
  }

LABEL_30:
  if (v11 != v12)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_243A8F3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x73726564616568;
  if (a1 == 2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x6E694C6C69616D65;
    v5 = 0xEC0000004C52556BLL;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x8000000243ACBA40;
  }

  else
  {
    v6 = 0x73746E756F636361;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x73726564616568;
    }

    else
    {
      v11 = 0x6E694C6C69616D65;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xEC0000004C52556BLL;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x73746E756F636361;
    }

    if (a2)
    {
      v10 = 0x8000000243ACBA40;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_243AC2EE8();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t IconWithTypeIdentifier.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_243A8F570()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A8F62C()
{
  *v0;
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A8F6D4()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A8F78C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243A91108();
  *a2 = result;
  return result;
}

void sub_243A8F7BC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65644965707974;
    v2 = 0xEE00726569666974;
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

uint64_t sub_243A8F834()
{
  v1 = 25705;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x6E65644965707974;
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

uint64_t sub_243A8F8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243A91108();
  *a1 = result;
  return result;
}

uint64_t sub_243A8F8D0(uint64_t a1)
{
  v2 = sub_243A8FFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A8F90C(uint64_t a1)
{
  v2 = sub_243A8FFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconWithTypeIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  v50 = *(v52 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = &v40 - v9;
  v10 = sub_243AC1298();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F30, &qword_243AC8FC0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = type metadata accessor for IconWithTypeIdentifier();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20[2] = MEMORY[0x277D84F90];
  sub_243AC15F8();
  sub_243A91154(&qword_27ED99F38, MEMORY[0x277D23330]);
  v21 = sub_243AC1908();
  v20[3] = v21;
  v20[4] = v22;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A8FFE4();
  v24 = v53;
  sub_243AC2FE8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v53 = v21;
    v42 = v17;
    v26 = v49;
    v25 = v50;
    v27 = v52;
    v57 = 0;
    v28 = sub_243AC2E68();
    v40 = a1;
    v41 = v16;
    if (!v29)
    {
      v31 = v26;
      sub_243AC1288();
      v32 = sub_243AC1278();
      v34 = v33;
      (*(v45 + 8))(v31, v46);
      v29 = v34;
      v28 = v32;
    }

    v35 = v20;
    *v20 = v28;
    v20[1] = v29;
    v50 = v29;
    v56 = 1;
    sub_243A491E8(&qword_27ED99760, &qword_27ED99748, &unk_243AC71F0);
    v36 = v48;
    v37 = v41;
    sub_243AC2E88();
    (*(v25 + 32))(v35 + v42[7], v36, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F48, &unk_243AC8FC8);
    v55 = 2;
    sub_243A491E8(&qword_27ED99F50, &qword_27ED99F48, &unk_243AC8FC8);
    v38 = v47;
    sub_243AC2E78();
    sub_243A900A0(v38, v35 + v42[8]);
    v54 = 3;
    v39 = v44;
    sub_243AC2E78();
    (*(v51 + 8))(v37, v13);
    sub_243A900A0(v39, v35 + v42[9]);
    sub_243A90110(v35, v43);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_243A90174(v35);
  }
}

uint64_t type metadata accessor for IconWithTypeIdentifier()
{
  result = qword_27ED99F70;
  if (!qword_27ED99F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243A8FFE4()
{
  result = qword_27ED99F40;
  if (!qword_27ED99F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F40);
  }

  return result;
}

uint64_t sub_243A90038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A900A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A90110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconWithTypeIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A90174(uint64_t a1)
{
  v2 = type metadata accessor for IconWithTypeIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IconWithTypeIdentifier.unmodifiedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99358, &qword_243AC6750);
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v26 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for IconWithTypeIdentifier();
  sub_243A90684(v2 + v12[8], v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F48, &unk_243AC8FC8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    sub_243A90038(v11);
  }

  else
  {
    if (!*(v2 + 24))
    {
      goto LABEL_12;
    }

    v16 = *(v2 + 24);

    sub_243AC14D8();

    (*(v14 + 8))(v11, v13);
  }

  sub_243A90684(v2 + v12[9], v9);
  if (v15(v9, 1, v13) == 1)
  {
    sub_243A90038(v9);
    if (*(v2 + 24))
    {
LABEL_10:
      v18 = v12[7];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
      sub_243AC14D8();

      v19 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v20 = sub_243AC2818();

      [v19 initWithType_];

      v21 = v26;
      sub_243AC1428();
      sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
      v22 = v29;
      sub_243AC1E08();
      return (*(v27 + 8))(v21, v22);
    }
  }

  else if (*(v2 + 24))
  {
    v17 = *(v2 + 24);

    sub_243AC14D8();

    (*(v14 + 8))(v9, v13);
    if (*(v2 + 24))
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  v24 = *(v2 + 32);
  sub_243AC15F8();
  sub_243A91154(&qword_27ED99F38, MEMORY[0x277D23330]);
  result = sub_243AC18F8();
  __break(1u);
  return result;
}

uint64_t sub_243A90684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A906F4()
{
  sub_243A91154(&qword_27ED99310, type metadata accessor for IconWithTypeIdentifier);
  sub_243A91154(&qword_27ED99F58, type metadata accessor for IconWithTypeIdentifier);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243A907AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A91154(&qword_27ED99310, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243A908C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A91154(&qword_27ED99F58, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243A9093C(uint64_t a1)
{
  v2 = sub_243A91154(&qword_27ED99F58, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243A909B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A91154(&qword_27ED99FB0, type metadata accessor for IconWithTypeIdentifier);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243A90A74()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_243A90AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243A90C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99F28, &unk_243AC8FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243A90D44()
{
  sub_243A90E08();
  if (v0 <= 0x3F)
  {
    sub_243A90E60();
    if (v1 <= 0x3F)
    {
      sub_243A6FA68();
      if (v2 <= 0x3F)
      {
        sub_243A90EF4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243A90E08()
{
  if (!qword_27ED99F80)
  {
    sub_243AC1538();
    v0 = sub_243AC29F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99F80);
    }
  }
}

void sub_243A90E60()
{
  if (!qword_27ED99F88)
  {
    sub_243AC15F8();
    sub_243A91154(&qword_27ED99F38, MEMORY[0x277D23330]);
    v0 = sub_243AC1918();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99F88);
    }
  }
}

void sub_243A90EF4()
{
  if (!qword_27ED99F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99F48, &unk_243AC8FC8);
    v0 = sub_243AC2C38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99F90);
    }
  }
}

uint64_t sub_243A90F58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99358, &qword_243AC6750);
  sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243A91004()
{
  result = qword_27ED99F98;
  if (!qword_27ED99F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99F98);
  }

  return result;
}

unint64_t sub_243A9105C()
{
  result = qword_27ED99FA0;
  if (!qword_27ED99FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FA0);
  }

  return result;
}

unint64_t sub_243A910B4()
{
  result = qword_27ED99FA8;
  if (!qword_27ED99FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FA8);
  }

  return result;
}

uint64_t sub_243A91108()
{
  v0 = sub_243AC2E58();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_243A91154(unint64_t *a1, void (*a2)(uint64_t))
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

void TurnOnMoreAppsFooter.init(controller:account:presenter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_unknownObjectWeakInit();
  type metadata accessor for RecommendationsController();
  sub_243A63E78();

  *a4 = sub_243AC1828();
  a4[1] = v7;
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();
  a4[2] = sub_243A762E4(a1, a2, 4, inited);
  swift_unknownObjectWeakAssign();
}

uint64_t TurnOnMoreAppsFooter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FB8, &qword_243AC9290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-v6 - 8];
  v8 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v9 = 1;
  if (v21)
  {
    v10 = sub_243AC1AA8();
    sub_243A914AC(&v20);

    v11 = v20;
    v12 = v21;
    v18 = a1;
    v13 = v22;
    v14 = v23;
    v20 = v10;
    v21 = 0;
    v22 = 1;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    sub_243A91980(v1, v19);
    v15 = swift_allocObject();
    sub_243A91A00(v19, v15 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FC0, &qword_243AC92E0);
    sub_243A91A40();
    sub_243AC1E98();

    v16 = v13;
    a1 = v18;
    sub_243A82874(v11, v12, v16);

    (*(v4 + 32))(a1, v7, v3);
    v9 = 0;
  }

  return (*(v4 + 56))(a1, v9, 1, v3);
}

uint64_t sub_243A914AC@<X0>(uint64_t a1@<X8>)
{
  sub_243A4FC18();

  v1 = sub_243AC1D88();
  v26 = v2;
  v27 = v1;
  v25 = v3;
  type metadata accessor for RecommendationsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_243AC1188();

  v6 = sub_243AC1D88();
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() systemBlueColor];
  sub_243AC1F78();
  v12 = sub_243AC1D28();
  v14 = v13;
  v16 = v15;

  sub_243A82874(v6, v8, v10 & 1);

  v17 = sub_243AC1D48();
  v19 = v18;
  v21 = v20;
  v24 = v22;
  sub_243A82874(v12, v14, v16 & 1);

  sub_243A82874(v27, v26, v25 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v24;
  return result;
}

void sub_243A916E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_243A33C6C();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 actions];
  sub_243A235B4();
  v6 = sub_243AC2998();

  if (v6 >> 62)
  {
    if (sub_243AC2DF8())
    {
      goto LABEL_4;
    }

LABEL_18:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245D470F0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v13 = v7;

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v12 = Strong;
    if (*(a1 + 16))
    {
      sub_243A8613C(v4, v9, Strong);
    }

    v11 = v12;
  }

  else
  {

    v11 = v13;
  }
}