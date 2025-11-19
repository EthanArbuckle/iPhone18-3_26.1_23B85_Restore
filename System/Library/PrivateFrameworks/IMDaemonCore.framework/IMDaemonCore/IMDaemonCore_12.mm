id sub_22B7560C8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = sub_22B7DB678();
  v5 = [v3 existingiMessageChatForID_];

  result = v5;
  if (!v5)
  {
    v7 = [v2 sharedInstance];
    v8 = sub_22B7DB678();
    v9 = [v7 existingChatWithGroupID:v8 onService:*MEMORY[0x277D1A5F8]];

    return v9;
  }

  return result;
}

uint64_t sub_22B7561DC()
{
  v0 = [objc_opt_self() sharedList];
  v1 = [v0 mutedChatList];

  sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  v2 = sub_22B7DB588();

  return v2;
}

void sub_22B756278(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() sharedList];
  v5 = sub_22B7DB8F8();
  v6 = sub_22B7DA8B8();
  [v4 muteChatWithMuteIdentifiers:v5 untilDate:v6 syncToPairedDevice:a3 & 1];
}

uint64_t sub_22B756328(unsigned __int8 a1)
{
  v1 = [objc_opt_self() sharedList];
  v2 = sub_22B7DB678();
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  v3 = sub_22B7DB568();
  v4 = sub_22B7DB8F8();
  v5 = sub_22B7DB678();
  v6 = sub_22B7DB678();
  v7 = sub_22B7DB678();
  v8 = [v1 muteIdentifiersForChatStyle:a1 groupID:v2 domainIdentifiers:v3 participantIDs:v4 lastAddressedHandleID:v5 originalGroupID:v6 chatIdentifier:v7];

  v9 = sub_22B7DB918();
  return v9;
}

id sub_22B7564D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = MEMORY[0x277D84FA0];
  *&v9[OBJC_IVAR___IMDMutedChatListRebuilder_identifiersFound] = MEMORY[0x277D84FA0];
  *&v9[OBJC_IVAR___IMDMutedChatListRebuilder_chatsFound] = 0;
  v17 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
  v18 = sub_22B71E6EC(MEMORY[0x277D84F90]);
  sub_22B6F0AD4(&qword_27D8CEBE8, qword_22B7FB2D0);
  v19 = swift_allocObject();
  *(v19 + 64) = 0;
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  *(v19 + 32) = v16;
  *(v19 + 40) = 0;
  *(v19 + 48) = v16;
  *(v19 + 56) = v16;
  *&v9[v17] = v19;
  *&v9[OBJC_IVAR___IMDMutedChatListRebuilder_batchLimit] = a1;
  v20 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_findChat];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_muteChat];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &v9[OBJC_IVAR___IMDMutedChatListRebuilder_muteIdentifiers];
  *v23 = a8;
  *(v23 + 1) = a9;
  v27.receiver = v9;
  v27.super_class = IMDMutedChatListRebuilder;
  return objc_msgSendSuper2(&v27, sel_init);
}

id sub_22B756770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_22B7DB678();
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(a3 + 16))(a3, v4);

  return v5;
}

uint64_t sub_22B7567CC(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  v2 = sub_22B7DB588();

  return v2;
}

void sub_22B756840(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = sub_22B7DB8F8();
  v7 = sub_22B7DA8B8();
  (*(a4 + 16))(a4, v6, v7, a3 & 1);
}

uint64_t sub_22B7568C4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = sub_22B7DB678();
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  v13 = sub_22B7DB568();
  v14 = sub_22B7DB8F8();
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v17 = sub_22B7DB678();
  v18 = (*(a12 + 16))(a12, a1, v12, v13, v14, v15, v16, v17);

  v19 = sub_22B7DB918();
  return v19;
}

void sub_22B756A20()
{
  v1 = v0;
  v2 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - v5;
  v7 = *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList];
  v8 = *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList + 8];
  v9 = v7(v4);
  if (*(v9 + 16))
  {
    v10 = sub_22B7DBA58();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v1;
    v12 = v1;
    sub_22B77E3D4(0, 0, v6, &unk_22B7FB200, v11);
  }

  else
  {

    if (qword_27D8CCC40 != -1)
    {
      swift_once();
    }

    v13 = sub_22B7DB2B8();
    sub_22B4CFA74(v13, qword_27D8CEB80);
    v18 = sub_22B7DB298();
    v14 = sub_22B7DBCB8();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v18, v14, "No muted identifiers to process", v15, 2u);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    v16 = v18;
  }
}

uint64_t sub_22B756C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_22B756C50, 0, 0);
}

uint64_t sub_22B756C50()
{
  if (qword_27D8CCC40 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = *(v0 + 24);
    v2 = sub_22B7DB2B8();
    sub_22B4CFA74(v2, qword_27D8CEB80);

    v3 = sub_22B7DB298();
    v4 = sub_22B7DBCB8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 24);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v6 + 16);

      _os_log_impl(&dword_22B4CC000, v3, v4, "Starting muted chat list rebuild with %ld identifiers", v7, 0xCu);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    else
    {
      v8 = *(v0 + 24);
    }

    v9 = *(v0 + 24);
    v10 = *(v9 + 32);
    *(v0 + 136) = v10;
    v11 = 1 << v10;
    v12 = v11 < 64 ? ~(-1 << v11) : -1;
    v13 = v12 & *(v9 + 64);
    v14 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
    *(v0 + 40) = OBJC_IVAR___IMDMutedChatListRebuilder_batchLimit;
    *(v0 + 48) = v14;

    v15 = 0;
    v16 = 0;
    *(v0 + 56) = 0;
    if (v13)
    {
      break;
    }

LABEL_10:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v17 = *(v0 + 24);
      if (v18 >= (((1 << *(v0 + 136)) + 63) >> 6))
      {

        sub_22B7DBA18();
        *(v0 + 64) = sub_22B7DBA08();
        v33 = sub_22B7DB9C8();
        v35 = v34;
        v36 = sub_22B757020;
        goto LABEL_21;
      }

      v13 = v17[v18 + 8];
      ++v16;
      if (v13)
      {
        v16 = v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  while (1)
  {
    v17 = *(v0 + 24);
LABEL_14:
    *(v0 + 72) = v13;
    *(v0 + 80) = v16;
    v19 = __clz(__rbit64(v13)) | (v16 << 6);
    v20 = (v17[6] + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v17[7] + 8 * v19);
    v24 = v15 + 1;
    *(v0 + 88) = v23;
    *(v0 + 96) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_27;
    }

    v25 = *(v0 + 32);
    v26 = *(v25 + *(v0 + 40));
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v27)
    {
      goto LABEL_28;
    }

    if (v15 == v28)
    {
      break;
    }

    v29 = *(v0 + 48);
    if (v15 == v17[2] - 1)
    {
      goto LABEL_25;
    }

    v30 = *(v25 + v29);
    v31 = swift_task_alloc();
    v31[2] = v22;
    v31[3] = v21;
    v31[4] = v23;

    v32 = v23;
    os_unfair_lock_lock((v30 + 64));
    sub_22B758C68((v30 + 16));
    os_unfair_lock_unlock((v30 + 64));
    v13 &= v13 - 1;

    v15 = v24;
    *(v0 + 56) = 0;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v29 = *(v0 + 48);
LABEL_25:
  v37 = *(v25 + v29);
  *(v0 + 104) = v37;
  v38 = swift_task_alloc();
  v38[2] = v22;
  v38[3] = v21;
  v38[4] = v23;

  v39 = v23;
  os_unfair_lock_lock((v37 + 64));
  sub_22B758C88((v37 + 16));
  *(v0 + 112) = 0;
  os_unfair_lock_unlock((v37 + 64));

  sub_22B7DBA18();
  *(v0 + 120) = sub_22B7DBA08();
  v33 = sub_22B7DB9C8();
  v35 = v40;
  v36 = sub_22B7570DC;
LABEL_21:

  return MEMORY[0x2822009F8](v36, v33, v35);
}

void sub_22B757020()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  sub_22B758094(v3);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22B7570C8, 0, 0);
  }
}

void sub_22B7570DC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_22B758CA8;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 64));
  sub_22B758CC4((v3 + 16), v0 + 2);
  v0[16] = v2;
  if (v2)
  {
    v6 = (v0[13] + 64);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v7 = v0[4];
    os_unfair_lock_unlock((v0[13] + 64));

    v8 = v0[2];

    sub_22B757644(v8);

    MEMORY[0x2822009F8](sub_22B757218, 0, 0);
  }
}

void sub_22B757218()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  os_unfair_lock_lock((v1 + 64));
  v3 = sub_22B71E6EC(MEMORY[0x277D84F90]);
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;

  os_unfair_lock_unlock((v1 + 64));

  v8 = 0;
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = (*(v0 + 72) - 1) & *(v0 + 72);
  while (1)
  {
    *(v0 + 56) = v9;
    if (!v12)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v5 = *(v0 + 24);
        if (v13 >= (((1 << *(v0 + 136)) + 63) >> 6))
        {
          goto LABEL_16;
        }

        v12 = v5[v13 + 8];
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto _swift_task_switch;
    }

    v5 = *(v0 + 24);
LABEL_8:
    *(v0 + 72) = v12;
    *(v0 + 80) = v11;
    v14 = __clz(__rbit64(v12)) | (v11 << 6);
    v15 = (v5[6] + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v5[7] + 8 * v14);
    v19 = v10 + 1;
    *(v0 + 88) = v18;
    *(v0 + 96) = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_24;
    }

    v20 = *(v0 + 32);
    v21 = *(v20 + *(v0 + 40));
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
      goto LABEL_25;
    }

    if (v8 == v23 || v10 == v5[2] - 1)
    {
      break;
    }

    v35 = v8;
    v24 = *(v20 + *(v0 + 48));
    v25 = swift_task_alloc();
    v25[2] = v16;
    v25[3] = v17;
    v25[4] = v18;

    v26 = v18;
    os_unfair_lock_lock((v24 + 64));
    sub_22B758C68((v24 + 16));
    os_unfair_lock_unlock((v24 + 64));
    if (v9)
    {
      return;
    }

    v12 &= v12 - 1;

    v10 = v19;
    v8 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_16:

      sub_22B7DBA18();
      *(v0 + 64) = sub_22B7DBA08();
      v27 = sub_22B7DB9C8();
      v29 = v28;
      v30 = sub_22B757020;
      goto LABEL_17;
    }
  }

  v31 = *(v20 + *(v0 + 48));
  *(v0 + 104) = v31;
  v32 = swift_task_alloc();
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;

  v33 = v18;
  os_unfair_lock_lock((v31 + 64));
  sub_22B758C88((v31 + 16));
  *(v0 + 112) = v9;
  os_unfair_lock_unlock((v31 + 64));
  if (v9)
  {
    return;
  }

  sub_22B7DBA18();
  *(v0 + 120) = sub_22B7DBA08();
  v27 = sub_22B7DB9C8();
  v29 = v34;
  v30 = sub_22B7570DC;
LABEL_17:
  v5 = v30;
  v6 = v27;
  v7 = v29;

uint64_t sub_22B757508(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{

  v8 = a4;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_22B768FFC(v8, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v12;
  return result;
}

uint64_t sub_22B75759C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{

  v8 = a4;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  sub_22B768FFC(v8, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v15;
  v12 = a1[1];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a1[1] = v14;
  }

  return result;
}

void sub_22B757644(uint64_t a1)
{
  v101 = sub_22B7DA968();
  v3 = *(v101 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = OBJC_IVAR___IMDMutedChatListRebuilder_identifiersFound;
  v113 = v1 + OBJC_IVAR___IMDMutedChatListRebuilder_findChat;
  v112 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
  v109 = v1 + OBJC_IVAR___IMDMutedChatListRebuilder_muteIdentifiers;
  v99 = v1 + OBJC_IVAR___IMDMutedChatListRebuilder_muteChat;
  v117 = a1;

  v116 = v10;
  swift_beginAccess();
  v11 = 0;
  v119 = 0;
  v12 = (v7 + 63) >> 6;
  v98 = (v3 + 8);
  v120 = v1;
  v115 = a1 + 64;
  v110 = v12;
  while (v9)
  {
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v117 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v117 + 56) + 8 * v15);
    v20 = *(v120 + v116);
    v21 = *(v20 + 16);
    v118 = v19;
    if (v21)
    {
      v22 = *(v20 + 40);
      sub_22B7DC668();

      v23 = v19;

      sub_22B7DB758();
      v24 = sub_22B7DC6B8();
      v25 = -1 << *(v20 + 32);
      v26 = v24 & ~v25;
      if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
LABEL_20:

        goto LABEL_22;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(v20 + 48) + 16 * v26);
        v29 = *v28 == v17 && v28[1] == v18;
        if (v29 || (sub_22B7DC518() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v6 = v115;
    }

    else
    {

      v30 = v19;
LABEL_22:
      v31 = *v113;
      v32 = *(v113 + 8);

      v33 = v31(v17, v18);

      if (!v33)
      {
        v62 = *(v120 + v112);
        MEMORY[0x28223BE20](v34);
        os_unfair_lock_lock(v62 + 16);
        v63 = v119;
        sub_22B7590B0(v123);
        os_unfair_lock_unlock(v62 + 16);

        MEMORY[0x28223BE20](v64);
        os_unfair_lock_lock(v62 + 16);
        sub_22B758D70(v123);
        v119 = v63;
        os_unfair_lock_unlock(v62 + 16);

        goto LABEL_53;
      }

      v35 = [v33 guid];
      if (v35)
      {
        v114 = v33;
        v36 = v35;
        v37 = sub_22B7DB6A8();
        v122 = v38;

        v39 = *(v120 + v112);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);

        os_unfair_lock_lock((v39 + 64));
        v41 = v119;
        sub_22B759080((v39 + 16), v123);
        v119 = v41;
        v111 = v39;
        v12 = v110;
        os_unfair_lock_unlock((v39 + 64));

        v42 = v123[0];
        v43 = *(v123[0] + 16);
        v121 = v37;
        if (v43 && (v44 = *(v123[0] + 40), sub_22B7DC668(), sub_22B7DB758(), v45 = sub_22B7DC6B8(), v46 = v121, v47 = -1 << *(v42 + 32), v48 = v45 & ~v47, ((*(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
        {
          v49 = ~v47;
          while (1)
          {
            v50 = (*(v42 + 48) + 16 * v48);
            if (*v50 == v46 && v50[1] == v122)
            {
              break;
            }

            v52 = sub_22B7DC518();
            v46 = v121;
            if (v52)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v42 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v6 = v115;
        }

        else
        {
LABEL_33:

          MEMORY[0x28223BE20](v53);
          v54 = v111;
          os_unfair_lock_lock(v111 + 16);
          v55 = v119;
          sub_22B758E44(v123);
          v119 = v55;
          os_unfair_lock_unlock(v54 + 16);

          v56 = v114;
          LODWORD(v108) = [v114 style];
          v57 = *(v109 + 8);
          v106 = *v109;
          v58 = [v56 groupID];
          if (v58)
          {
            v59 = v58;
            v60 = sub_22B7DB6A8();
            v107 = v61;
          }

          else
          {
            v60 = 0;
            v107 = 0xE000000000000000;
          }

          v69 = [v56 domainIdentifiers];
          if (!v69)
          {
            goto LABEL_58;
          }

          v70 = v69;
          sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
          v105 = sub_22B7DB588();

          v71 = [v56 participantHandles];
          if (!v71)
          {
            goto LABEL_59;
          }

          v72 = v71;

          v103 = sub_22B7DB918();

          v73 = [v56 lastAddressedLocalHandle];
          if (v73)
          {
            v74 = v73;
            v75 = sub_22B7DB6A8();
            v102 = v76;
          }

          else
          {
            v75 = 0;
            v102 = 0xE000000000000000;
          }

          v104 = v57;
          v77 = [v56 originalGroupID];
          if (v77)
          {
            v78 = v77;
            v79 = sub_22B7DB6A8();
            v81 = v80;
          }

          else
          {
            v79 = 0;
            v81 = 0xE000000000000000;
          }

          v82 = v60;
          v83 = [v114 chatIdentifier];
          if (v83)
          {
            v84 = v83;
            v85 = sub_22B7DB6A8();
            v87 = v86;
          }

          else
          {
            v85 = 0;
            v87 = 0xE000000000000000;
          }

          v88 = v108;
          v108 = v81;
          v89 = v106(v88, v82, v107, v105, v103, v75, v102, v79, v81, v85, v87);

          if (*(v89 + 16))
          {

            swift_beginAccess();

            sub_22B758EA8(v90);
            swift_endAccess();

            v91 = v118;
            [v118 doubleValue];
            v92 = v100;
            sub_22B7DA8F8();
            v93 = *(v99 + 8);
            (*v99)(v89, v92, 0);

            (*v98)(v92, v101);
            v6 = v115;
          }

          else
          {

            MEMORY[0x28223BE20](v94);
            v95 = v111;
            os_unfair_lock_lock(v111 + 16);
            v96 = v119;
            sub_22B758F18(v123);
            v119 = v96;
            os_unfair_lock_unlock(v95 + 16);

LABEL_53:

            v6 = v115;
          }
        }
      }

      else
      {

        v65 = *(v120 + v112);
        os_unfair_lock_lock((v65 + 64));
        v66 = *(v65 + 40);
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (v67)
        {
          goto LABEL_57;
        }

        *(v65 + 40) = v68;
        os_unfair_lock_unlock((v65 + 64));

        v6 = v115;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_22B758094(void *a1)
{
  v2 = v1;
  if (qword_27D8CCC40 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_27D8CEB80);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Completed muted chat list rebuild.", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = a1;
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBCB8();
  p_prots = &OBJC_PROTOCOL___IMDaemonChatCountRequestProtocol.prots;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    v13 = *&v8[OBJC_IVAR___IMDMutedChatListRebuilder_state];
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);

    os_unfair_lock_lock((v13 + 64));
    sub_22B759080((v13 + 16), &v49);
    if (v1)
    {

      goto LABEL_25;
    }

    os_unfair_lock_unlock((v13 + 64));

    v15 = v49[2];

    *(v12 + 4) = v15;

    *(v12 + 12) = 2048;
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);

    os_unfair_lock_lock((v13 + 64));
    sub_22B759098((v13 + 16), &v49);
    v2 = 0;
    os_unfair_lock_unlock((v13 + 64));

    *(v12 + 14) = v49;

    _os_log_impl(&dword_22B4CC000, v9, v10, "Processed %ld chats in %ld", v12, 0x16u);
    MEMORY[0x231898D60](v12, -1, -1);

    p_prots = (&OBJC_PROTOCOL___IMDaemonChatCountRequestProtocol + 16);
  }

  else
  {
  }

  v13 = *(&p_prots[378]->count + v8);
  v17 = swift_getKeyPath();
  MEMORY[0x28223BE20](v17);

  os_unfair_lock_lock((v13 + 64));
  sub_22B758CE0((v13 + 16), &v49);
  if (v2)
  {
LABEL_25:
    os_unfair_lock_unlock((v13 + 64));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v13 + 64));

  v18 = v49[2];

  if (v18)
  {
    v19 = v8;
    v20 = sub_22B7DB298();
    v21 = sub_22B7DBCB8();

    if (os_log_type_enabled(v20, v21))
    {
      v47 = v8;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136315138;
      v24 = swift_getKeyPath();
      MEMORY[0x28223BE20](v24);

      os_unfair_lock_lock((v13 + 64));
      sub_22B759080((v13 + 16), &v48);
      os_unfair_lock_unlock((v13 + 64));

      v25 = sub_22B7DBB08();
      v27 = v26;

      v28 = sub_22B4CFAAC(v25, v27, &v49);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_22B4CC000, v20, v21, "Could not find a chat for the following identifiers: %s", v22, 0xCu);
      sub_22B4CFB78(v23);
      MEMORY[0x231898D60](v23, -1, -1);
      MEMORY[0x231898D60](v22, -1, -1);

      v8 = v47;
    }

    else
    {
    }
  }

  v29 = swift_getKeyPath();
  MEMORY[0x28223BE20](v29);

  os_unfair_lock_lock((v13 + 64));
  sub_22B758CFC((v13 + 16), &v49);
  os_unfair_lock_unlock((v13 + 64));

  if (v49 > 0)
  {
    v30 = v8;
    v31 = sub_22B7DB298();
    v32 = sub_22B7DBCB8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = swift_getKeyPath();
      MEMORY[0x28223BE20](v34);

      os_unfair_lock_lock((v13 + 64));
      sub_22B759098((v13 + 16), &v49);
      os_unfair_lock_unlock((v13 + 64));

      *(v33 + 4) = v49;

      _os_log_impl(&dword_22B4CC000, v31, v32, "Found %ld chats without guids.", v33, 0xCu);
      MEMORY[0x231898D60](v33, -1, -1);
    }

    else
    {

      v31 = v30;
    }
  }

  v35 = swift_getKeyPath();
  MEMORY[0x28223BE20](v35);

  os_unfair_lock_lock((v13 + 64));
  sub_22B759080((v13 + 16), &v49);
  os_unfair_lock_unlock((v13 + 64));

  v36 = v49[2];

  if (v36)
  {
    v37 = v8;
    v38 = sub_22B7DB298();
    v39 = sub_22B7DBCB8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      v42 = swift_getKeyPath();
      MEMORY[0x28223BE20](v42);

      os_unfair_lock_lock((v13 + 64));
      sub_22B759080((v13 + 16), &v48);
      os_unfair_lock_unlock((v13 + 64));

      v43 = sub_22B7DBB08();
      v45 = v44;

      v46 = sub_22B4CFAAC(v43, v45, &v49);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_22B4CC000, v38, v39, "Could not generate mute identifiers for the following chats: %s", v40, 0xCu);
      sub_22B4CFB78(v41);
      MEMORY[0x231898D60](v41, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
    }
  }
}

uint64_t sub_22B758990(void *a1)
{
  v1 = *a1;
  v11 = a1[2];
  v12 = v1;
  v2 = a1[4];
  v9 = a1[5];
  v10 = v2;
  v3 = *(a1 + 1);
  v6 = *a1;
  v7 = v3;
  v8 = *(a1 + 2);
  sub_22B4D7E58(&v12, &v5, &qword_27D8CEBE0, &qword_22B7FB2C8);
  sub_22B4D7E58(&v11, &v5, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D7E58(&v10, &v5, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D7E58(&v9, &v5, &qword_27D8CEF00, &qword_22B7FBAD0);
  swift_getAtKeyPath();
  sub_22B4D0D64(&v12, &qword_27D8CEBE0, &qword_22B7FB2C8);
  sub_22B4D0D64(&v11, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D0D64(&v10, &qword_27D8CEF00, &qword_22B7FBAD0);
  sub_22B4D0D64(&v9, &qword_27D8CEF00, &qword_22B7FBAD0);
  return v5;
}

uint64_t sub_22B758BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B756C30(a1, v4, v5, v7, v6);
}

uint64_t sub_22B758D14@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  result = v4(v8);
  *a2 = result;
  return result;
}

uint64_t sub_22B758D88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_22B7C9068((a1 + 8), v3, v4);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22B758DEC@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  result = v4(v8);
  *a2 = result;
  return result;
}

uint64_t sub_22B758E44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_22B7C9068((a1 + 8), v3, v4);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22B758EA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_22B7C9068(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22B758F18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_22B7C9068((a1 + 8), v3, v4);
  *a1 = result & 1;
  return result;
}

__n128 sub_22B758FC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22B758FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22B759024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B7590CC()
{
  v0 = sub_22B77A2DC(&unk_283F1BA20);
  result = swift_arrayDestroy();
  qword_281422728 = v0;
  return result;
}

uint64_t sub_22B759118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_22B759140, v4, 0);
}

uint64_t sub_22B759140()
{
  v1 = v0[13];
  v2 = *(v1 + 112);
  v3 = IMGetDaemonProtocol();
  v4 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v0[6] = sub_22B7595EC;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B4D1BA8;
  v0[5] = &unk_283F1E000;
  v5 = _Block_copy(v0 + 2);

  v0[14] = [v4 initWithProtocol:v3 forwardingHandler:v5];

  _Block_release(v5);
  v6 = v0[7];

  v0[8] = &unk_283FBD3A0;
  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = *(MEMORY[0x277D19628] + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_22B7592E4;
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[10];

  return MEMORY[0x282173B40](v12, v13, v7, v10, v11);
}

uint64_t sub_22B7592E4()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {
    v4 = *(v3 + 104);

    return MEMORY[0x2822009F8](sub_22B759420, v4, 0);
  }

  else
  {

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_22B759420()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1();
}

uint64_t sub_22B7594A4()
{
  v1 = v0[9];
  v2 = IMGetDaemonProtocol();
  v3 = objc_allocWithZone(MEMORY[0x277D1AA20]);
  v0[6] = sub_22B75ADD0;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B4D1BA8;
  v0[5] = &unk_283F1E028;
  v4 = _Block_copy(v0 + 2);

  [v3 initWithProtocol:v2 forwardingHandler:v4];

  _Block_release(v4);
  v5 = v0[7];

  v0[8] = &unk_283FBD3A0;
  v6 = swift_dynamicCastObjCProtocolUnconditional();
  v7 = v0[1];

  return v7(v6);
}

uint64_t (*sub_22B759618(void *a1))(uint64_t *a1)
{
  if (qword_28141F5D8 != -1)
  {
    swift_once();
  }

  v2 = qword_281422728;
  v3 = *(qword_281422728 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sub_22B759CB4(*(qword_281422728 + 16), 0);
  v5 = sub_22B75A414(&v7, v4 + 4, v3, v2);

  sub_22B705E3C();
  if (v5 != v3)
  {
    __break(1u);
LABEL_6:
    v4 = MEMORY[0x277D84F90];
  }

  *a1 = v4;
  return sub_22B759728;
}

id IncomingIntentClientConnectionListener.init(requestHandlers:)(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = type metadata accessor for IntentFileSafeRenderProvider();
  v5 = swift_allocObject();
  v23 = v4;
  v6 = sub_22B75A870(qword_2814201E8, type metadata accessor for IntentFileSafeRenderProvider);
  v24 = v6;
  v22 = v5;
  v7 = type metadata accessor for ChatContactsProvider();
  v8 = swift_allocObject();
  v20 = v7;
  v9 = sub_22B75A870(&unk_281420930, type metadata accessor for ChatContactsProvider);
  v21 = v9;
  v19 = v8;
  v10 = sub_22B7DAFB8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v2[14] = sub_22B7DAFA8();
  if (qword_28141F5D8 != -1)
  {
    swift_once();
  }

  v13 = qword_281422728;
  v2[15] = a1;
  type metadata accessor for IntentClientConnectionRouteProvider();
  v14 = swift_allocObject();
  v23 = v4;
  v24 = v6;
  v22 = swift_allocObject();
  v20 = v7;
  v21 = v9;
  v19 = swift_allocObject();
  v15 = objc_allocWithZone(sub_22B7DAEE8());

  *(v14 + 16) = sub_22B7DAED8();
  v16 = sub_22B4D0A08(v14, 268476932, a1, v13, type metadata accessor for IntentClientConnectionRouteProvider, &off_283F20C70, sub_22B4D0D5C);

  v2[16] = v16;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for IncomingIntentClientConnectionListener();
  return objc_msgSendSuper2(&v18, sel_init);
}

void IncomingIntentClientConnectionListener.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void IncomingIntentClientConnectionListener.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void *IncomingIntentClientConnectionListener.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IncomingIntentClientConnectionListener.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B759B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B6F0D94;

  return sub_22B759118(a1, a2, a3, a4);
}

void *sub_22B759C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_22B759CB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B759D38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22B759DC0(void *result, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v6 = 0;
LABEL_40:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v6;
    return v6;
  }

  if (!a3)
  {
LABEL_38:
    v6 = a3;
    goto LABEL_40;
  }

  if (a3 < 0)
  {
    goto LABEL_46;
  }

  v6 = a6;
  if (!a6)
  {
    goto LABEL_40;
  }

  v7 = 64 - a5;
  if (__OFSUB__(64, a5))
  {
    goto LABEL_47;
  }

  v8 = 0;
  v9 = -1 - a5;
  v10 = 1;
  while (1)
  {
    v11 = v8 >= 0 ? v8 : v8 + 63;
    if (v8 < -63)
    {
      break;
    }

    if (v11 >> 6 >= *(a4 + 16))
    {
      goto LABEL_42;
    }

    v12 = 64 - (v8 - (v11 & 0xFFFFFFFFFFFFFFC0));
    v13 = __OFSUB__(v12, a5);
    v14 = v12 - a5;
    if (v13)
    {
      goto LABEL_43;
    }

    if (v14 > -65 && v14 <= 64)
    {
      v17 = *(a4 + 32 + 8 * (v11 >> 6));
      if (v14 < 0)
      {
        if (v14 != -64)
        {
          v16 = v17 >> -v14;
          if (v9 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      else if (v14 != 64)
      {
        v16 = v17 << v14;
        if (v9 <= 0xFFFFFFFFFFFFFF7ELL)
        {
          goto LABEL_22;
        }

LABEL_27:
        if ((v7 & 0x8000000000000000) == 0)
        {
          if (v7 >= 0x40)
          {
            goto LABEL_22;
          }

LABEL_29:
          v15 = v16 >> v7;
          goto LABEL_30;
        }

        if (v7 <= 0xFFFFFFFFFFFFFFC0)
        {
LABEL_22:
          v15 = 0;
          goto LABEL_30;
        }

LABEL_36:
        v15 = v16 << (a5 - 64);
        goto LABEL_30;
      }
    }

    if (v9 < 0xFFFFFFFFFFFFFF7FLL)
    {
      goto LABEL_22;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (v7 > 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      if (v7 < 0x40)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    *a2 = v15;
    if (a3 == v10)
    {
      goto LABEL_38;
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_44;
    }

    if (a6 == v10)
    {
      v6 = a6;
      goto LABEL_40;
    }

    ++a2;
    v8 = v10 * a5;
    v18 = (v10 * a5) >> 64 == (v10 * a5) >> 63;
    ++v10;
    if (!v18)
    {
      goto LABEL_45;
    }
  }

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
  return result;
}

void *sub_22B759F48(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22B75A09C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v22 = result;
  if (!a2)
  {
LABEL_35:
    v14 = 0;
    v17 = a5;
LABEL_38:
    *v22 = a4;
    v22[1] = a5;
    v22[2] = a6;
    v22[3] = a7;
    v22[4] = v17;
    return v14;
  }

  if (!a3)
  {
    v17 = a5;
    v14 = 0;
    goto LABEL_38;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a4 >> 14;
    v12 = a5 >> 14;
    if (a5 >> 14 != a4 >> 14)
    {
      v14 = 0;
      v15 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v15) = 1;
      }

      v16 = 4 << v15;
      v23 = a4 >> 14;
      v24 = a3 - 1;
      while (1)
      {
        sub_22B7DC048();
        v17 = a5;
        if ((a5 & 0xC) == v16 || (a5 & 1) == 0)
        {
          result = a5;
          if ((a5 & 0xC) == v16)
          {
            result = sub_22B7C1398(a5, a6, a7);
          }

          if (result >> 14 < v11 || result >> 14 >= v12)
          {
            goto LABEL_41;
          }

          if ((result & 1) == 0)
          {
            sub_22B7C1670(result, a6, a7);
          }
        }

        else
        {
          v20 = a5 >> 14 < v11 || a5 >> 14 >= v12;
          result = a5;
          if (v20)
          {
            goto LABEL_40;
          }
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          result = sub_22B7DC2D8();
        }

        else
        {
          if ((a7 & 0x2000000000000000) == 0 && (a6 & 0x1000000000000000) == 0)
          {
            sub_22B7DC328();
          }

          result = sub_22B7DC338();
          v11 = v23;
        }

        *(a2 + 4 * v14) = result;
        if (v24 == v14)
        {
          v14 = a3;
          goto LABEL_38;
        }

        if (__OFADD__(v14 + 1, 1))
        {
          break;
        }

        ++v14;
        if (v11 == a5 >> 14)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_35;
  }

LABEL_42:
  __break(1u);
  return result;
}

void *sub_22B75A2BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B75A414(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B75A56C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_22B75A66C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_8;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
LABEL_8:
    result = sub_22B75A704(result, a2, a3, a4, a5);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B7C1670(result, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B75A704(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = sub_22B7C1398(result, a4, a5);
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B75A780()
{
  if (qword_28141F5D8 != -1)
  {
    swift_once();
  }

  v0 = qword_281422728;
  v1 = *(qword_281422728 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22B759CB4(*(qword_281422728 + 16), 0);
  v3 = sub_22B75A414(&v5, v2 + 4, v1, v0);

  sub_22B705E3C();
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22B75A870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of IntentProcessing.processIncomingRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22B6F0D94;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of IncomingIntentClientConnectionListener.processIncomingRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B6F12E8;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IncomingIntentClientConnectionListener.proxyForIntentRequest()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6FAF68;

  return v6();
}

void sub_22B75ADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(v4 + 136);
  if (*(v9 + 16))
  {
    v10 = sub_22B7235C8(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_getAtKeyPath();
      if (v41)
      {
        if (a4)
        {
          v13 = sub_22B747A64(v41, a4);

          if ((v13 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_8:

          return;
        }
      }

      else if (!a4)
      {
        goto LABEL_8;
      }

LABEL_10:
      swift_beginAccess();
      v14 = *(v5 + 120);
      if (*(v14 + 16) && (v15 = sub_22B7235C8(a1, a2), (v16 & 1) != 0))
      {
        v17 = *(*(v14 + 56) + 8 * v15);
      }

      else
      {
        [v12 copy];
        sub_22B7DC118();
        swift_unknownObjectRelease();
        sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
        swift_dynamicCast();
        swift_beginAccess();
        v17 = v37;
        v18 = *(v5 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v5 + 120);
        *(v5 + 120) = 0x8000000000000000;
        sub_22B76888C(v17, a1, a2, isUniquelyReferenced_nonNull_native);
        *(v5 + 120) = v38;
        swift_endAccess();
      }

      sub_22B6F0AD4(&unk_27D8CEC70, &qword_22B7FB6A8);
      swift_getKeyPath();
      v20 = sub_22B7DB658();

      if ((v20 & 1) == 0)
      {
        goto LABEL_30;
      }

      v21 = [v12 taskReports];
      if (!v21)
      {
        goto LABEL_30;
      }

      v22 = v21;
      v36 = v17;
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v23 = sub_22B7DB918();

      if (v23 >> 62)
      {
        v24 = sub_22B7DC1C8();
        if (v24)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
LABEL_18:
          v34 = v12;
          v35 = a1;
          v40 = MEMORY[0x277D84F90];
          sub_22B7AB8C4(0, v24 & ~(v24 >> 63), 0);
          if (v24 < 0)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v24; ++i)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x231895C80](i, v23);
            }

            else
            {
              v26 = *(v23 + 8 * i + 32);
            }

            v27 = v26;
            v28 = [v26 count];

            v30 = *(v40 + 16);
            v29 = *(v40 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_22B7AB8C4((v29 > 1), v30 + 1, 1);
            }

            *(v40 + 16) = v30 + 1;
            *(v40 + 8 * v30 + 32) = v28;
          }

          a1 = v35;
          v12 = v34;
          goto LABEL_29;
        }
      }

LABEL_29:

      v17 = v36;
LABEL_30:

      v31 = v17;
      swift_setAtReferenceWritableKeyPath();

      swift_beginAccess();
      v32 = *(v5 + 136);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v5 + 136);
      *(v5 + 136) = 0x8000000000000000;
      sub_22B76888C(v31, a1, a2, v33);
      *(v5 + 136) = v39;
      swift_endAccess();
      sub_22B718694();
    }
  }
}

void sub_22B75B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(v4 + 136);
  if (*(v9 + 16))
  {
    v10 = sub_22B7235C8(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_getAtKeyPath();
      if (v39 == a4)
      {
LABEL_25:

        return;
      }

      swift_beginAccess();
      v13 = *(v5 + 120);
      if (*(v13 + 16) && (v14 = sub_22B7235C8(a1, a2), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        [v12 copy];
        sub_22B7DC118();
        swift_unknownObjectRelease();
        sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
        swift_dynamicCast();
        swift_beginAccess();
        v16 = v35;
        v17 = *(v5 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v5 + 120);
        *(v5 + 120) = 0x8000000000000000;
        sub_22B76888C(v16, a1, a2, isUniquelyReferenced_nonNull_native);
        *(v5 + 120) = v36;
        swift_endAccess();
      }

      sub_22B6F0AD4(&unk_27D8CEC70, &qword_22B7FB6A8);
      swift_getKeyPath();
      v19 = sub_22B7DB658();

      if ((v19 & 1) == 0 || (v20 = [v12 taskReports]) == 0)
      {
LABEL_24:
        v30 = v16;
        swift_setAtReferenceWritableKeyPath();

        swift_beginAccess();
        v31 = *(v5 + 136);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v5 + 136);
        *(v5 + 136) = 0x8000000000000000;
        sub_22B76888C(v30, a1, a2, v32);
        *(v5 + 136) = v37;
        swift_endAccess();
        sub_22B718694();

        v12 = v30;
        goto LABEL_25;
      }

      v21 = v20;
      v34 = v16;
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v22 = sub_22B7DB918();

      if (v22 >> 62)
      {
        v23 = sub_22B7DC1C8();
        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_12:
          v33 = a1;
          v38 = MEMORY[0x277D84F90];
          sub_22B7AB8C4(0, v23 & ~(v23 >> 63), 0);
          if (v23 < 0)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v23; ++i)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x231895C80](i, v22);
            }

            else
            {
              v25 = *(v22 + 8 * i + 32);
            }

            v26 = v25;
            v27 = [v25 count];

            v29 = *(v38 + 16);
            v28 = *(v38 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_22B7AB8C4((v28 > 1), v29 + 1, 1);
            }

            *(v38 + 16) = v29 + 1;
            *(v38 + 8 * v29 + 32) = v27;
          }

          a1 = v33;
          goto LABEL_23;
        }
      }

LABEL_23:

      v16 = v34;
      goto LABEL_24;
    }
  }
}

void sub_22B75B640(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 taskReports];
  if (v3)
  {
    v4 = v3;
    sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
    v5 = sub_22B7DB918();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_22B75B6C0(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
    v3 = sub_22B7DB8F8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTaskReports_];
}

uint64_t sub_22B75B748()
{
  type metadata accessor for BackgroundProcessingActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_281422748 = v0;
  return result;
}

uint64_t sub_22B75B784()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B75B7B4()
{
  if (qword_281420630 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22B75B810()
{
  v0 = type metadata accessor for BackgroundProcessingActor();

  return MEMORY[0x2822005F8](v0);
}

uint64_t sub_22B75B848()
{
  v3 = v0;
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v94 - v6;
  v7 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
  *&v0[v7] = sub_22B71E700(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates] = 0;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter] = 0;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_ptasksUpdatedDarwinNotifySubscription] = -1;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_storageTimerFiredNotificationObserver] = 0;
  *&v0[OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor] = 0;
  v8 = [objc_opt_self() sharedFeatureFlags];
  v9 = [v8 isBGSTMessageProcessingEnabled];

  if (!v9)
  {
    goto LABEL_46;
  }

  type metadata accessor for IMDSystemTaskWorkloadReporter();
  swift_allocObject();
  *&v3[OBJC_IVAR___IMDBackgroundMessageProcessingController_workloadReporter] = sub_22B76AB48();
  v103.receiver = v3;
  v103.super_class = IMDBackgroundMessageProcessingController;
  v10 = objc_msgSendSuper2(&v103, sel_init);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D18F08]);
  v101 = sub_22B7653A4;
  v102 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  v98 = 1107296256;
  v99 = sub_22B763558;
  v100 = &unk_283F1E220;
  v13 = _Block_copy(&aBlock);
  v1 = v102;
  v14 = v10;

  v15 = [v12 initWithChangeHandler_];
  _Block_release(v13);
  v16 = *&v14[OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor];
  *&v14[OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor] = v15;

  type metadata accessor for IMDPersistentTaskCriticalLimiter.Defaults();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22B6EFF14;
  *(v8 + 24) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = sub_22B6F0098;
  *(v8 + 56) = 1;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 80) = 0;
  *(v8 + 88) = 256;
  type metadata accessor for IMDPersistentTaskCriticalLimiter();
  v17 = swift_allocObject();
  v18 = v14;
  v19 = sub_22B765C24(v18, v8, v17);

  v20 = *&v18[OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter];
  v96 = v18;
  *&v18[OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter] = v19;

  v21 = sub_22B718320();
  v22 = sub_22B71E700(MEMORY[0x277D84F90]);
  v23 = *(v21 + 16);
  if (!v23)
  {
LABEL_17:

    v8 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
    v44 = v96;
    swift_beginAccess();
    v45 = *&v44[v8];
    *&v44[v8] = v22;

    v46 = sub_22B718320();
    v47 = sub_22B71E0C8(MEMORY[0x277D84F90]);
    v95 = *(v46 + 16);
    if (!v95)
    {
LABEL_38:

      type metadata accessor for IMDPersistentTaskExecutorStateManager();
      v69 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v69 + 112) = 0;
      v70 = MEMORY[0x277D84F90];
      *(v69 + 120) = sub_22B71E0C8(MEMORY[0x277D84F90]);
      v71 = sub_22B71E1E0(v70);
      *(v69 + 144) = 0;
      *(v69 + 128) = v71;
      *(v69 + 136) = v47;
      v72 = v96;
      v73 = *&v96[OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates];
      *&v96[OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates] = v69;

      v74 = sub_22B7DBA58();
      v1 = v94;
      (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
      v75 = qword_281420630;
      v8 = v72;
      if (v75 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v48 = 0;
    v49 = (v46 + 40);
    while (1)
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_42;
      }

      v52 = *(v49 - 1);
      v53 = *v49;
      sub_22B7DBF38();
      v54 = objc_allocWithZone(MEMORY[0x277D1AB38]);
      v8 = sub_22B7DB678();

      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v1 = sub_22B7DB8F8();
      v55 = [v54 initWithGroupName:v8 lane:v53 runResult:0 status:0 taskReports:v1];

      if (!v55)
      {
        v63 = sub_22B7235C8(v52, v53);
        if (v64)
        {
          v8 = v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v47;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22B7A3FBC();
            v47 = aBlock;
          }

          sub_22B787E60(v8, v47);
        }

        goto LABEL_20;
      }

      v56 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v47;
      v8 = sub_22B7235C8(v52, v53);
      v58 = v47[2];
      v59 = (v57 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_43;
      }

      v1 = v57;
      if (v47[3] >= v60)
      {
        if (v56)
        {
          v47 = aBlock;
          if (v57)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_22B7A3FBC();
          v47 = aBlock;
          if (v1)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_22B7A1F14(v60, v56);
        v61 = sub_22B7235C8(v52, v53);
        if ((v1 & 1) != (v62 & 1))
        {
          goto LABEL_48;
        }

        v8 = v61;
        v47 = aBlock;
        if (v1)
        {
LABEL_19:
          v50 = v47[7];
          v51 = *(v50 + 8 * v8);
          *(v50 + 8 * v8) = v55;

          goto LABEL_20;
        }
      }

      v47[(v8 >> 6) + 8] |= 1 << v8;
      v66 = (v47[6] + 16 * v8);
      *v66 = v52;
      v66[1] = v53;
      *(v47[7] + 8 * v8) = v55;
      v67 = v47[2];
      v37 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v37)
      {
        goto LABEL_45;
      }

      v47[2] = v68;
LABEL_20:
      ++v48;
      v49 += 2;
      if (v95 == v48)
      {
        goto LABEL_38;
      }
    }
  }

  v95 = objc_opt_self();
  v24 = 0;
  v1 = v21 + 40;
  while (v24 < *(v21 + 16))
  {
    v27 = *(v1 - 8);
    v28 = *v1;
    v29 = [v95 sharedScheduler];
    type metadata accessor for IMDPersistentTaskExecutor();
    v30 = swift_allocObject();
    v31 = v96;
    v32 = sub_22B765DC0(v29, v31, v28, v27, v30);

    v8 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v22;
    v33 = sub_22B7235C8(v27, v28);
    v35 = v22[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_41;
    }

    v39 = v34;
    if (v22[3] < v38)
    {
      sub_22B7A2C2C(v38, v8);
      v33 = sub_22B7235C8(v27, v28);
      if ((v39 & 1) != (v40 & 1))
      {
LABEL_48:
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }

LABEL_12:
      v22 = aBlock;
      if (v39)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (v8)
    {
      goto LABEL_12;
    }

    v8 = v33;
    sub_22B7A46E0();
    v33 = v8;
    v22 = aBlock;
    if (v39)
    {
LABEL_4:
      v25 = v22[7];
      v26 = *(v25 + 8 * v33);
      *(v25 + 8 * v33) = v32;

      goto LABEL_5;
    }

LABEL_13:
    v22[(v33 >> 6) + 8] |= 1 << v33;
    v41 = (v22[6] + 16 * v33);
    *v41 = v27;
    v41[1] = v28;
    *(v22[7] + 8 * v33) = v32;
    v42 = v22[2];
    v37 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v37)
    {
      goto LABEL_44;
    }

    v22[2] = v43;
LABEL_5:
    ++v24;
    v1 += 16;
    if (v23 == v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
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
  swift_once();
LABEL_39:
  v77 = qword_281422748;
  v78 = sub_22B765354(&qword_281420620, v76, type metadata accessor for BackgroundProcessingActor);
  v79 = swift_allocObject();
  v79[2] = v77;
  v79[3] = v78;
  v79[4] = v8;
  v80 = v8;

  sub_22B77E3D4(0, 0, v1, &unk_22B7FB6D0, v79);

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v81 = sub_22B7DBD58();
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  v101 = sub_22B7661B8;
  v102 = v82;
  aBlock = MEMORY[0x277D85DD0];
  v98 = v2;
  v99 = sub_22B75CE68;
  v100 = &unk_283F1E298;
  v83 = _Block_copy(&aBlock);

  LODWORD(v79) = IMDispatchForNotify();
  _Block_release(v83);

  *&v80[OBJC_IVAR___IMDBackgroundMessageProcessingController_ptasksUpdatedDarwinNotifySubscription] = v79;
  v84 = [objc_opt_self() defaultCenter];
  v85 = *MEMORY[0x277D19F60];
  v86 = [objc_opt_self() mainQueue];
  v87 = swift_allocObject();
  *(v87 + 16) = v80;
  v101 = sub_22B7661C0;
  v102 = v87;
  aBlock = MEMORY[0x277D85DD0];
  v98 = v2;
  v99 = sub_22B7C8328;
  v100 = &unk_283F1E2E8;
  v88 = _Block_copy(&aBlock);
  v89 = v80;

  v90 = [v84 addObserverForName:v85 object:0 queue:v86 usingBlock:v88];
  _Block_release(v88);

  v91 = *&v89[OBJC_IVAR___IMDBackgroundMessageProcessingController_storageTimerFiredNotificationObserver];
  *&v89[OBJC_IVAR___IMDBackgroundMessageProcessingController_storageTimerFiredNotificationObserver] = v90;
  swift_unknownObjectRelease();
  sub_22B7DAE68();
  sub_22B7DAE58();
  *(swift_allocObject() + 16) = v89;
  sub_22B7DAE48();

  sub_22B4DA138(&aBlock);
  v92 = *&v89[OBJC_IVAR___IMDBackgroundMessageProcessingController_workloadReporter];

  sub_22B76A0AC();

  return v89;
}

uint64_t sub_22B75C390(char a1)
{
  v2 = v1;
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_281422680);
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBCB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_22B4CC000, v9, v10, "Index throttle state changed to %{BOOL}d", v11, 8u);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  if (qword_281420390 != -1)
  {
    swift_once();
  }

  if (qword_281422740)
  {
    v12 = *(qword_281422740 + 112);
    if (v12)
    {

      v13 = sub_22B7DB678();
      v14 = sub_22B7DB678();
      [v12 postNotificationWithTitle:v13 body:v14];
    }
  }

  v15 = sub_22B7DBA58();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = qword_281420630;
  v18 = v2;
  if (v16 != -1)
  {
    swift_once();
  }

  v19 = qword_281422748;
  v20 = sub_22B765354(&qword_281420620, v17, type metadata accessor for BackgroundProcessingActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v18;

  sub_22B77E3D4(0, 0, v7, &unk_22B7FB720, v21);
}

uint64_t sub_22B75C6C4()
{
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
}

uint64_t IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v3 = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B75C824, v3, 0);
}

uint64_t sub_22B75C824(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 24) = v4;
  if (v4)
  {

    a1 = sub_22B75C8AC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B75C8AC()
{
  v1 = *(v0 + 24);
  if (*(v1 + 112) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v3 = sub_22B75C99C;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v3 = sub_22B75CAAC;
  }

  v2[1] = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 48);

  return sub_22B75EBE4(v1, v5, v4);
}

uint64_t sub_22B75C99C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_22B70C7DC, v3, 0);
}

uint64_t sub_22B75CAAC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_22B75CBBC, v3, 0);
}

uint64_t sub_22B75CBBC()
{
  *(*(v0 + 24) + 112) = 0;
  sub_22B718694();
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B75CC28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_281422680);
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBCB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B4CC000, v9, v10, "Notified that PTasks updated, ensuring BGST tasks are submitted", v11, 2u);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  v12 = sub_22B7DBA58();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = qword_281420630;
  v15 = a3;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_281422748;
  v17 = sub_22B765354(&qword_281420620, v14, type metadata accessor for BackgroundProcessingActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v15;

  sub_22B77E3D4(0, 0, v7, &unk_22B7FB700, v18);
}

uint64_t sub_22B75CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_22B75CEC8(uint64_t a1, void *a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_281422680);
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B4CC000, v8, v9, "Storage timer fired, ensuring BGST tasks are submitted", v10, 2u);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = qword_281420630;
  v14 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_281422748;
  v16 = sub_22B765354(&qword_281420620, v13, type metadata accessor for BackgroundProcessingActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v14;

  sub_22B77E3D4(0, 0, v6, &unk_22B7FB6F0, v17);
}

uint64_t sub_22B75D108()
{
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(0);
}

uint64_t sub_22B75D1CC(uint64_t a1, void *a2)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_281422680);
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B4CC000, v8, v9, "Notified that low power mode status updated, ensuring BGST tasks are updated", v10, 2u);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  v11 = sub_22B7DBA58();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = qword_281420630;
  v14 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_281422748;
  v16 = sub_22B765354(&qword_281420620, v13, type metadata accessor for BackgroundProcessingActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v14;

  sub_22B77E3D4(0, 0, v6, &unk_22B7FB6E0, v17);
}

uint64_t sub_22B75D430()
{
  *(v1 + 56) = v0;
  v2 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B75D4CC, 0, 0);
}

uint64_t sub_22B75D4CC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[7];
  v5 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates;
  v3[9] = OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates;
  v6 = *(v4 + v5);
  v3[10] = v6;
  if (v6)
  {

    a1 = sub_22B75D558;
    a2 = v6;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B75D558()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 88) = *(*(v1 + 128) + 16);

  return MEMORY[0x2822009F8](sub_22B75D5E4, 0, 0);
}

uint64_t sub_22B75D5E4()
{
  v1 = sub_22B71E81C(MEMORY[0x277D84F90]);
  v2 = sub_22B7DBF58();
  v0[12] = v2;
  v5 = *(v2 + 16);
  v6 = OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter;
  v0[13] = v5;
  v0[14] = v6;
  v0[15] = v1;
  v0[16] = 0;
  if (!v5)
  {
    v13 = v0[9];
    v14 = v0[7];

    v15 = *(v14 + v13);
    v0[25] = v15;
    if (v15)
    {

      v2 = sub_22B75E004;
      v3 = v15;
      v4 = 0;

      return MEMORY[0x2822009F8](v2, v3, v4);
    }

LABEL_13:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v0[17] = 0;
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v0[7];
  v8 = *(v2 + 32);
  v0[18] = v8;
  v9 = *(v7 + v6);
  v0[19] = v9;
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_22B75D754;
  v11 = v0[8];

  return sub_22B6F66B4(v11, v8);
}

uint64_t sub_22B75D754()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v5 = *v0;

  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_22B75D864, v3, 0);
}

uint64_t sub_22B75D864()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 64);

  v3 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  v4 = 1;
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
  {
    v5 = *(v0 + 64);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = 0;
    }

    sub_22B765218(v5);
  }

LABEL_7:
  *(v0 + 320) = v4;

  return MEMORY[0x2822009F8](sub_22B75D954, 0, 0);
}

uint64_t sub_22B75D954()
{
  v1 = v0[18];
  v2 = v0[11] != 0;
  sub_22B7DBED8();
  KeyPath = swift_getKeyPath();
  v0[21] = KeyPath;
  v4 = swift_allocObject();
  v0[22] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D18E48] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_22B6F0AD4(&qword_27D8CEC58, qword_22B7FB660);
  *v6 = v0;
  v6[1] = sub_22B75DA84;

  return MEMORY[0x282172F38](v0 + 5, KeyPath, &unk_22B7FB658, v4, v7);
}

uint64_t sub_22B75DA84()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_22B75E688;
  }

  else
  {
    v6 = *(v2 + 168);
    v5 = *(v2 + 176);

    v4 = sub_22B75DBA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B75DBA8()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
LABEL_39:
    v37 = v1;
    v2 = sub_22B7DC1C8();
    v1 = v37;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_40:

    v31 = *(v0 + 136) + 1;
    if (v31 == *(v0 + 104))
    {
      goto LABEL_28;
    }

LABEL_41:
    *(v0 + 136) = v31;
    v38 = *(v0 + 96);
    if (v31 < *(v38 + 16))
    {
      v39 = *(v0 + 112);
      v40 = *(v0 + 56);
      v41 = *(v38 + 8 * v31 + 32);
      *(v0 + 144) = v41;
      v42 = *(v40 + v39);
      *(v0 + 152) = v42;
      if (v42)
      {

        v43 = swift_task_alloc();
        *(v0 + 160) = v43;
        *v43 = v0;
        v43[1] = sub_22B75D754;
        v44 = *(v0 + 64);

        return sub_22B6F66B4(v44, v41);
      }

LABEL_48:
      __break(1u);
      return MEMORY[0x2822009F8](v28, v29, v30);
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_40;
  }

LABEL_3:
  v3 = 0;
  v47 = v1;
  v48 = v1 & 0xC000000000000001;
  v45 = v1 & 0xFFFFFFFFFFFFFF8;
  v46 = v2;
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  do
  {
    if (v48)
    {
      v6 = MEMORY[0x231895C80](v3);
    }

    else
    {
      if (v3 >= *(v45 + 16))
      {
        goto LABEL_38;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v9 = *(v0 + 320);
    v10 = [v6 lane];
    if ((v9 & 1) != 0 || v10 != 3)
    {
      v11 = [v7 lane];
    }

    else
    {
      v11 = 2;
    }

    [v7 flag];
    v12 = sub_22B7DBE68();
    sub_22B4DDE5C(v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 48) = v5;
    v14 = sub_22B7235C8(v12, v11);
    v15 = v5[2];
    v16 = (v1 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_36;
    }

    v19 = v1;
    if (v5[3] >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v14;
        sub_22B7A4840();
        v14 = v27;
        v5 = *(v0 + 48);
        if (v19)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_22B7A2ECC(v18, isUniquelyReferenced_nonNull_native);
      v20 = *(v0 + 48);
      v14 = sub_22B7235C8(v12, v11);
      if ((v19 & 1) != (v1 & 1))
      {

        return sub_22B7DC578();
      }
    }

    v5 = *(v0 + 48);
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_19:
    v5[(v14 >> 6) + 8] |= 1 << v14;
    v21 = (v5[6] + 16 * v14);
    *v21 = v12;
    v21[1] = v11;
    *(v5[7] + 8 * v14) = MEMORY[0x277D84F90];
    v22 = v5[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_37;
    }

    v5[2] = v23;
LABEL_21:
    v24 = (v5[7] + 8 * v14);
    v25 = v7;
    MEMORY[0x231895260]();
    if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B7DB938();
    }

    sub_22B7DB968();

    ++v3;
    v4 = sub_22B75EBD4;
    v1 = v47;
  }

  while (v8 != v46);

  v31 = *(v0 + 136) + 1;
  *(v0 + 120) = v5;
  *(v0 + 128) = sub_22B75EBD4;
  if (v31 != *(v0 + 104))
  {
    goto LABEL_41;
  }

LABEL_28:
  v32 = *(v0 + 96);
  v33 = *(v0 + 72);
  v34 = *(v0 + 56);

  v35 = *(v34 + v33);
  *(v0 + 200) = v35;
  if (!v35)
  {
    goto LABEL_47;
  }

  v28 = sub_22B75E004;
  v29 = v35;
  v30 = 0;

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_22B75E004()
{
  v1 = *(v0 + 200);
  if (*(v1 + 112) == 1)
  {
    v2 = sub_22B75E048;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = sub_22B75E328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B75E048()
{
  v1 = sub_22B718320();
  v0[26] = v1;
  v2 = v1[2];
  v0[27] = v2;
  if (v2)
  {
    v3 = v0[15];
    v0[28] = 0;
    v4 = v1[4];
    v0[29] = v4;
    v5 = v1[5];
    v0[30] = v5;
    if (*(v3 + 16) && (v6 = sub_22B7235C8(v4, v5), (v7 & 1) != 0))
    {
      v8 = *(*(v0[15] + 56) + 8 * v6);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v0[31] = v9;
    v0[32] = swift_getKeyPath();
    v10 = v0[25];
    v11 = sub_22B75E1AC;
  }

  else
  {

    v10 = v0[25];
    v11 = sub_22B75E130;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22B75E130()
{
  *(*(v0 + 200) + 144) = *(v0 + 88) != 0;
  v1 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_22B75E610, 0, 0);
}

uint64_t sub_22B75E1AC()
{
  v1 = v0[25];
  sub_22B75ADE0(v0[29], v0[30], v0[32], v0[31]);

  return MEMORY[0x2822009F8](sub_22B75E23C, 0, 0);
}

uint64_t sub_22B75E23C()
{
  v1 = v0[28] + 1;
  if (v1 == v0[27])
  {
    v2 = v0[26];

    v3 = v0[25];
    v4 = sub_22B75E130;
  }

  else
  {
    v0[28] = v1;
    v5 = v0[15];
    v6 = v0[26] + 16 * v1;
    v7 = *(v6 + 32);
    v0[29] = v7;
    v8 = *(v6 + 40);
    v0[30] = v8;
    if (*(v5 + 16) && (v9 = sub_22B7235C8(v7, v8), (v10 & 1) != 0))
    {
      v11 = *(*(v0[15] + 56) + 8 * v9);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v0[31] = v12;
    v0[32] = swift_getKeyPath();
    v3 = v0[25];
    v4 = sub_22B75E1AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B75E328()
{
  v1 = sub_22B718320();
  v0[33] = v1;
  v2 = v1[2];
  v0[34] = v2;
  if (v2)
  {
    v3 = v0[15];
    v0[35] = 0;
    v4 = v1[4];
    v0[36] = v4;
    v5 = v1[5];
    v0[37] = v5;
    if (*(v3 + 16) && (v6 = sub_22B7235C8(v4, v5), (v7 & 1) != 0))
    {
      v8 = *(*(v0[15] + 56) + 8 * v6);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v0[38] = v9;
    v0[39] = swift_getKeyPath();
    v10 = v0[25];
    v11 = sub_22B75E494;
  }

  else
  {

    v10 = v0[25];
    v11 = sub_22B75E410;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22B75E410()
{
  v1 = *(v0 + 200);
  *(v1 + 144) = *(v0 + 88) != 0;
  *(v1 + 112) = 0;
  sub_22B718694();
  v2 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_22B75E610, 0, 0);
}

uint64_t sub_22B75E494()
{
  v1 = v0[25];
  sub_22B75ADE0(v0[36], v0[37], v0[39], v0[38]);

  return MEMORY[0x2822009F8](sub_22B75E524, 0, 0);
}

uint64_t sub_22B75E524()
{
  v1 = v0[35] + 1;
  if (v1 == v0[34])
  {
    v2 = v0[33];

    v3 = v0[25];
    v4 = sub_22B75E410;
  }

  else
  {
    v0[35] = v1;
    v5 = v0[15];
    v6 = v0[33] + 16 * v1;
    v7 = *(v6 + 32);
    v0[36] = v7;
    v8 = *(v6 + 40);
    v0[37] = v8;
    if (*(v5 + 16) && (v9 = sub_22B7235C8(v7, v8), (v10 & 1) != 0))
    {
      v11 = *(*(v0[15] + 56) + 8 * v9);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v0[38] = v12;
    v0[39] = swift_getKeyPath();
    v3 = v0[25];
    v4 = sub_22B75E494;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B75E610()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[8];

  sub_22B4DDE5C(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B75E688()
{
  v2 = v0[21];
  v1 = v0[22];

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422680);
  v5 = v3;
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC98();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  if (v8)
  {
    v10 = v0[18];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134349314;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Failed to load task reports for group %{public}lu: %@", v11, 0x16u);
    sub_22B4D0D64(v12, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  else
  {
  }

  v18 = v0[17] + 1;
  if (v18 == v0[13])
  {
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[7];

    v22 = *(v21 + v20);
    v0[25] = v22;
    if (v22)
    {

      v15 = sub_22B75E004;
      v16 = v22;
      v17 = 0;

      return MEMORY[0x2822009F8](v15, v16, v17);
    }

    goto LABEL_17;
  }

  v0[17] = v18;
  v23 = v0[12];
  if (v18 >= *(v23 + 16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v0[14];
  v25 = v0[7];
  v26 = *(v23 + 8 * v18 + 32);
  v0[18] = v26;
  v27 = *(v25 + v24);
  v0[19] = v27;
  if (!v27)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  v28 = swift_task_alloc();
  v0[20] = v28;
  *v28 = v0;
  v28[1] = sub_22B75D754;
  v29 = v0[8];

  return sub_22B6F66B4(v29, v26);
}

uint64_t sub_22B75E958(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  *(v4 + 64) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_22B75E984, 0, 0);
}

uint64_t sub_22B75E984()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  sub_22B6F0AD4(&qword_27D8CE5F8, &qword_22B7FB6B0);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_22B7F93B0;
  sub_22B7DBF48();
  v5 = sub_22B7DBE58();

  *(v4 + 32) = v5;
  v6 = *(MEMORY[0x277D18E58] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_22B75EA90;
  v8 = *(v0 + 32);
  v9 = *(v0 + 64);

  return MEMORY[0x282172F50](v4, 0, v9, ObjectType);
}

uint64_t sub_22B75EA90(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_22B75EBB0, 0, 0);
}

uint64_t sub_22B75EBE4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 168) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v4 = qword_281422748;
  *(v3 + 80) = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B75EC84, v4, 0);
}

uint64_t sub_22B75EC84()
{
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_22B75EE8C;
    v2 = *(v0 + 72);

    return sub_22B75D430();
  }

  else
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
    swift_beginAccess();
    v7 = *(v4 + v6);
    *(v0 + 96) = v7;
    v8 = *(v7 + 32);
    *(v0 + 169) = v8;
    v9 = 1 << v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v7 + 64);

    swift_beginAccess();
    if (v11)
    {
      v12 = 0;
      v13 = *(v0 + 96);
LABEL_13:
      *(v0 + 104) = v11;
      *(v0 + 112) = v12;
      v15 = *(v0 + 64);
      v16 = __clz(__rbit64(v11)) | (v12 << 6);
      v17 = (*(v13 + 48) + 16 * v16);
      *(v0 + 120) = *v17;
      *(v0 + 128) = v17[1];
      *(v0 + 136) = *(*(v13 + 56) + 8 * v16);

      return MEMORY[0x2822009F8](sub_22B75F12C, v15, 0);
    }

    else
    {
      v14 = 0;
      v13 = *(v0 + 96);
      while (1)
      {
        v12 = v14 + 1;
        if (v14 + 1 >= ((1 << *(v0 + 169)) + 63) >> 6)
        {
          break;
        }

        v11 = *(v13 + 8 * v14++ + 72);
        if (v11)
        {
          goto LABEL_13;
        }
      }

      v18 = *(v0 + 8);

      return v18();
    }
  }
}

uint64_t sub_22B75EE8C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B75EF9C, v2, 0);
}

uint64_t sub_22B75EF9C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v0 + 96) = v4;
  v5 = *(v4 + 32);
  *(v0 + 169) = v5;
  v6 = 1 << v5;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);

  swift_beginAccess();
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 96);
LABEL_9:
    *(v0 + 104) = v8;
    *(v0 + 112) = v9;
    v12 = *(v0 + 64);
    v13 = __clz(__rbit64(v8)) | (v9 << 6);
    v14 = (*(v10 + 48) + 16 * v13);
    *(v0 + 120) = *v14;
    *(v0 + 128) = v14[1];
    *(v0 + 136) = *(*(v10 + 56) + 8 * v13);

    return MEMORY[0x2822009F8](sub_22B75F12C, v12, 0);
  }

  else
  {
    v11 = 0;
    v10 = *(v0 + 96);
    while (1)
    {
      v9 = v11 + 1;
      if (v11 + 1 >= ((1 << *(v0 + 169)) + 63) >> 6)
      {
        break;
      }

      v8 = *(v10 + 8 * v11++ + 72);
      if (v8)
      {
        goto LABEL_9;
      }
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22B75F12C()
{
  v1 = v0[10];
  v0[18] = *(v0[8] + 136);

  return MEMORY[0x2822009F8](sub_22B75F1A4, v1, 0);
}

uint64_t sub_22B75F1A4()
{
  if (*(v0[18] + 16) && (v1 = sub_22B7235C8(v0[15], v0[16]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[18] + 56) + 8 * v1);

    v4 = [v3 taskReports];

    if (v4)
    {
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v5 = sub_22B7DB918();

      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = MEMORY[0x277D84F90];
LABEL_7:
  v0[19] = v5;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_22B75F2DC;
  v7 = v0[17];

  return sub_22B73D7CC(v5);
}

uint64_t sub_22B75F2DC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B75F408, v3, 0);
}

uint64_t sub_22B75F408()
{
  v1 = *(v0 + 136);

  v5 = *(v0 + 112);
  v6 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v6)
  {
    v2 = *(v0 + 96);
LABEL_7:
    *(v0 + 104) = v6;
    *(v0 + 112) = v5;
    v8 = *(v0 + 64);
    v9 = __clz(__rbit64(v6)) | (v5 << 6);
    v10 = (*(v2 + 6) + 16 * v9);
    *(v0 + 120) = *v10;
    *(v0 + 128) = v10[1];
    *(v0 + 136) = *(*(v2 + 7) + 8 * v9);

    v2 = sub_22B75F12C;
    v3 = v8;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v2 = *(v0 + 96);
      if (v7 >= (((1 << *(v0 + 169)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v2 + v7 + 8);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22B75F538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22B7DBF28();
  if (*(v8 + 16) && (v9 = sub_22B723648(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    v12 = OBJC_IVAR___IMDBackgroundMessageProcessingController_executors;
    swift_beginAccess();
    v13 = *(v4 + v12);
    if (*(v13 + 16) && (v14 = sub_22B7235C8(v11, a3), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      v16 = 0;
    }

    swift_endAccess();
    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22B75F6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_22B75F6E4, a6, 0);
}

uint64_t sub_22B75F6E4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_22B765354(&qword_27D8CEC80, 255, type metadata accessor for IMDPersistentTaskExecutor);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  type metadata accessor for IMPersistentTaskRunResult(0);
  *v6 = v0;
  v6[1] = sub_22B75F824;

  return MEMORY[0x2822007B8](v0 + 2, v1, v3, 0xD00000000000001ELL, 0x800000022B8101F0, sub_22B76539C, v4, v7);
}

uint64_t sub_22B75F824()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B75F950, v3, 0);
}

uint64_t sub_22B75F950()
{
  v1 = v0[5];
  v0[9] = v0[2];
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;

  return MEMORY[0x2822009F8](sub_22B75F9C8, 0, 0);
}

uint64_t sub_22B75F9C8()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 72));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B75FC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_22B75FC7C, 0, 0);
}

uint64_t sub_22B75FC7C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 64) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 96) = v4;
  if (v4)
  {

    a1 = sub_22B75FD04;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B75FD04()
{
  v20 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  swift_beginAccess();

  swift_unknownObjectRetain();
  v5 = *(v2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 128);
  *(v2 + 128) = 0x8000000000000000;
  sub_22B7689F0(v4, v3, v1, isUniquelyReferenced_nonNull_native);

  *(v2 + 128) = v19;
  swift_endAccess();
  if ((*(v2 + 144) & 1) == 0)
  {
LABEL_5:
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_22B75FF54;
    v13 = v0[8];

    return sub_22B75D430();
  }

  v7 = v0[12];
  swift_beginAccess();
  v8 = *(v7 + 136);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_22B75ADDC(*(v8 + 16), 0);
    v11 = sub_22B759F48(&v19, (v10 + 32), v9, v8);

    sub_22B705E3C();
    if (v11 != v9)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  v15 = v0[12];
  v16 = v0[9];
  sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
  v17 = sub_22B7DB8F8();

  [v16 allExecutorStatusReportsUpdated_];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B75FF54()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v5 = *v0;

  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_22B760064, v3, 0);
}

uint64_t sub_22B760064()
{
  v12 = v0;
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22B75ADDC(*(v2 + 16), 0);
    v5 = sub_22B759F48(&v11, (v4 + 32), v3, v2);

    sub_22B705E3C();
    if (v5 != v3)
    {
      __break(1u);
    }
  }

  v6 = v0[12];
  v7 = v0[9];
  sub_22B4D01A0(0, &qword_28141F008, 0x277D1AB38);
  v8 = sub_22B7DB8F8();

  [v7 allExecutorStatusReportsUpdated_];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B7602F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22B760318, 0, 0);
}

uint64_t sub_22B760318(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 40) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 64) = v4;
  if (v4)
  {

    a1 = sub_22B7603A0;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B7603A0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_beginAccess();

  sub_22B786A74(0, v3, v2);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B7605FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7606A4, 0, 0);
}

void sub_22B7606A4()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[6] = v2;
  if (v2 == 2)
  {
    v7 = *(v0[3] + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
    v0[9] = v7;
    if (v7)
    {
      v4 = *(v1 + 120);

      v8 = swift_task_alloc();
      v0[10] = v8;
      *v8 = v0;
      v8[1] = sub_22B760B5C;
      v6 = v0[4];
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return;
  }

  if (v2 == 3)
  {
    v3 = *(v0[3] + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(v1 + 120);

      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = sub_22B760880;
      v6 = v0[5];
LABEL_7:

      sub_22B6F66B4(v6, v4);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_22B6F0AD4(&unk_27D8CEC90, &qword_22B7FB7C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22B7F93B0;
  *(v9 + 32) = v2;
  v11 = v0[4];
  v10 = v0[5];

  v12 = v0[1];

  v12(v9);
}

uint64_t sub_22B760880()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B760990, v3, 0);
}

uint64_t sub_22B760990()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_5:

    return MEMORY[0x2822009F8](sub_22B760AB8, 0, 0);
  }

  v4 = v0[5];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22B765218(v4);
    }

    goto LABEL_5;
  }

  sub_22B765218(v4);
  v7 = v0[4];
  v6 = v0[5];

  v8 = v0[1];
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

uint64_t sub_22B760AB8()
{
  v1 = v0[6];
  sub_22B6F0AD4(&unk_27D8CEC90, &qword_22B7FB7C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22B7F93B0;
  *(v2 + 32) = v1;
  v4 = v0[4];
  v3 = v0[5];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_22B760B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_22B760C6C, v3, 0);
}

uint64_t sub_22B760C6C()
{
  v1 = v0[9];
  v2 = v0[4];

  v3 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_5:

    return MEMORY[0x2822009F8](sub_22B76662C, 0, 0);
  }

  v4 = v0[4];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22B765218(v4);
    }

    goto LABEL_5;
  }

  sub_22B765218(v4);
  v7 = v0[4];
  v6 = v0[5];

  v8 = v0[1];

  return v8(&unk_283F1B8F8);
}

uint64_t sub_22B760D94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 265) = a5;
  *(v6 + 168) = a4;
  *(v6 + 176) = v5;
  *(v6 + 264) = a3;
  *(v6 + 152) = a1;
  *(v6 + 160) = a2;
  v7 = *(*(sub_22B6F0AD4(&qword_27D8CEC50, qword_22B7FB600) - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B760E3C, 0, 0);
}

uint64_t sub_22B760E3C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
  if (*(v4 + 112) != 3 || (*(v3 + 264) & 1) != 0)
  {
    goto LABEL_8;
  }

  v5 = *(v3 + 160);
  if (v5 <= 5)
  {
    if (((1 << v5) & 0x2C) != 0)
    {
      v6 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
      *(v3 + 192) = v6;
      if (v6)
      {
        *(v3 + 200) = *(v4 + 120);
        v7 = sub_22B760FB4;
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    if (((1 << v5) & 0x11) == 0)
    {
      v6 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_criticalLimiter);
      *(v3 + 216) = v6;
      if (!v6)
      {
LABEL_20:
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      *(v3 + 224) = *(v4 + 120);
      v7 = sub_22B761334;
      goto LABEL_10;
    }

LABEL_8:
    v6 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
    *(v3 + 240) = v6;
    if (!v6)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = sub_22B761628;
LABEL_10:
    v8 = v7;

    a1 = v8;
    a2 = v6;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  type metadata accessor for IMPersistentTaskExecutorStatus(0);
  *(v3 + 144) = v5;

  return sub_22B7DC548();
}

uint64_t sub_22B760FB4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = sub_22B6F64D4();
  v4 = sub_22B6F8810((v0 + 112), v2);
  v6 = v5;
  v7 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_22B6F4628(1);
  }

  (v4)(v0 + 112, 0);
  (v3)(v0 + 80, 0);
  v8 = *(v0 + 192);
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_22B761100;
  v10 = *(v0 + 200);
  v11 = *(v0 + 184);

  return sub_22B6F66B4(v11, v10);
}

uint64_t sub_22B761100()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 184);
  v6 = *v0;

  sub_22B4D0D64(v3, &qword_27D8CEC50, qword_22B7FB600);
  v4 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_22B761244, v4, 0);
}

uint64_t sub_22B761244()
{
  v1 = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_22B7612AC, 0, 0);
}

uint64_t sub_22B7612AC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 176) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 240) = v4;
  if (v4)
  {

    a1 = sub_22B761628;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B761334()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = sub_22B6F64D4();
  v4 = sub_22B6F8810((v0 + 48), v2);
  v6 = v5;
  v7 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    sub_22B6F5CDC();
  }

  (v4)(v0 + 48, 0);
  (v3)(v0 + 16, 0);
  v8 = *(v0 + 216);
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_22B76147C;
  v10 = *(v0 + 224);
  v11 = *(v0 + 184);

  return sub_22B6F66B4(v11, v10);
}

uint64_t sub_22B76147C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 184);
  v6 = *v0;

  sub_22B4D0D64(v3, &qword_27D8CEC50, qword_22B7FB600);
  v4 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_22B7615C0, v4, 0);
}

uint64_t sub_22B7615C0()
{
  v1 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_22B766630, 0, 0);
}

uint64_t sub_22B761628()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 265);
  v3 = *(v0 + 264);
  if (*(v1 + 112) == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v5 = sub_22B761730;
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v5 = sub_22B7618AC;
  }

  v4[1] = v5;
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);

  return sub_22B761A34(v1, v6, v3 & 1, v8, v7, v2 & 1);
}

uint64_t sub_22B761730()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v5 = *v0;

  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_22B761840, v3, 0);
}

uint64_t sub_22B761840()
{
  v1 = v0[30];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B7618AC()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v5 = *v0;

  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_22B7619BC, v3, 0);
}

uint64_t sub_22B7619BC()
{
  *(v0[30] + 112) = 0;
  sub_22B718694();
  v1 = v0[30];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B761A34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (a3)
  {
    if (a6)
    {
      return (*(v6 + 8))();
    }

    v8 = sub_22B761BE0;
  }

  else
  {
    v8 = sub_22B761A88;
  }

  return MEMORY[0x2822009F8](v8, a4, 0);
}

uint64_t sub_22B761A88()
{
  v1 = v0[4];
  v0[6] = *(v1 + 120);
  v0[7] = *(v1 + 112);
  return MEMORY[0x2822009F8](sub_22B761AB8, 0, 0);
}

uint64_t sub_22B761AB8()
{
  v1 = *(v0 + 16);
  *(v0 + 64) = swift_getKeyPath();

  return MEMORY[0x2822009F8](sub_22B761B2C, v1, 0);
}

uint64_t sub_22B761B2C()
{
  v1 = *(v0 + 16);
  sub_22B75B228(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 24));

  if (*(v0 + 96))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 32);

    return MEMORY[0x2822009F8](sub_22B761BE0, v4, 0);
  }
}

uint64_t sub_22B761BE0()
{
  v1 = v0[4];
  v0[9] = *(v1 + 120);
  v0[10] = *(v1 + 112);
  return MEMORY[0x2822009F8](sub_22B761C10, 0, 0);
}

uint64_t sub_22B761C10()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = swift_getKeyPath();

  return MEMORY[0x2822009F8](sub_22B761C84, v1, 0);
}

uint64_t sub_22B761C84()
{
  v1 = v0[2];
  sub_22B75B228(v0[9], v0[10], v0[11], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22B761CFC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B761D24, 0, 0);
}

uint64_t sub_22B761D24()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  *(v0 + 40) = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B761E44, v1, 0);
  }

  else
  {
    v2 = *(v0 + 56);
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_22B766618;
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);

    return sub_22B760D94(v5, 2, 0, v2 + 3, 0);
  }
}

uint64_t sub_22B761E44()
{
  v1 = *(v0 + 40);
  sub_22B7AAB3C(*(v0 + 16), *(v0 + 56), *(v0 + 24));
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_22B766618;
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_22B760D94(v5, 2, 0, v2 + 3, 0);
}

uint64_t sub_22B761F00(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B761F24, 0, 0);
}

uint64_t sub_22B761F24(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 64) = v4;
  if (v4)
  {

    a1 = sub_22B761FAC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B761FAC()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 72) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B762038, 0, 0);
}

uint64_t sub_22B762038()
{
  if (*(v0[9] + 16) && (v1 = sub_22B7235C8(v0[5], v0[6]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[9] + 56) + 8 * v1);

    v4 = [v3 taskReports];

    if (v4)
    {
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v5 = sub_22B7DB918();

      v6 = v5;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = MEMORY[0x277D84F90];
LABEL_7:
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22B76214C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_22B762200;

  return (sub_22B7644FC)(v3, v2);
}

uint64_t sub_22B762200(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22B7622FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B766620;

  return sub_22B7605FC(a1);
}

id sub_22B762390(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR___IMDBackgroundMessageProcessingController_throttleMonitor);
  if (result)
  {
    return [result isThrottled];
  }

  return result;
}

uint64_t sub_22B7623D4(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B6F12E8;

  return sub_22B761CFC(a1, a2, a3);
}

uint64_t sub_22B762480(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_22B7624A4, 0, 0);
}

uint64_t sub_22B7624A4()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  v0[4] = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B7625BC, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_22B76661C;
    v3 = v0[2];
    v4 = v0[3];

    return sub_22B760D94(v3, 3, 0, 0, 0);
  }
}

uint64_t sub_22B7625BC()
{
  v1 = *(v0 + 32);
  sub_22B7AAC44(*(v0 + 16), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22B76661C;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_22B760D94(v3, 3, 0, 0, 0);
}

uint64_t sub_22B762670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_22B762694, 0, 0);
}

uint64_t sub_22B762694()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  v0[5] = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B7627B0, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_22B762864;
    v3 = v0[4];
    v4 = v0[2];

    return sub_22B760D94(v4, 4, 0, 0, 0);
  }
}

uint64_t sub_22B7627B0()
{
  v1 = v0[5];
  sub_22B7AAFE0(v0[2], v0[3]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22B762864;
  v3 = v0[4];
  v4 = v0[2];

  return sub_22B760D94(v4, 4, 0, 0, 0);
}

uint64_t sub_22B762864()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B762958(uint64_t a1, char a2, char a3)
{
  *(v4 + 49) = a3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22B762980, 0, 0);
}

uint64_t sub_22B762980()
{
  if (*(v0 + 49))
  {
    goto LABEL_8;
  }

  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  *(v0 + 32) = qword_281422740;
  if (!v1)
  {
LABEL_8:
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_22B76661C;
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    return sub_22B760D94(v3, 4, 0, 0, 0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B762AA0, v1, 0);
  }
}

uint64_t sub_22B762AA0()
{
  v1 = *(v0 + 32);
  sub_22B7AAD68(*(v0 + 16), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22B76661C;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_22B760D94(v3, 4, 0, 0, 0);
}

uint64_t sub_22B762B54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7653C8(a1, a2);
}

uint64_t sub_22B762C0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B762C2C, 0, 0);
}

uint64_t sub_22B762C2C()
{
  if (qword_281420390 != -1)
  {
    swift_once();
  }

  v1 = qword_281422740;
  v0[4] = qword_281422740;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B762D44, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_22B762DF4;
    v3 = v0[2];
    v4 = v0[3];

    return sub_22B760D94(v3, 1, 0, 0, 0);
  }
}

uint64_t sub_22B762D44()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_22B7AAE8C();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22B762DF4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_22B760D94(v4, 1, 0, 0, 0);
}

uint64_t sub_22B762DF4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B762EE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6FAF68;

  return sub_22B761F00(a1, a2);
}

uint64_t IMDBackgroundMessageProcessingController.limiter(_:deferredGroup:until:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F12E8;

  return sub_22B76482C(a2, a3);
}

uint64_t IMDBackgroundMessageProcessingController.limiter(_:finishedDeferringGroup:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B6F12E8;

  return (sub_22B764C74)(a2);
}

uint64_t IMDBackgroundMessageProcessingController.limiter(_:requestTTRForGroup:ranges:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F12E8;

  return sub_22B7635AC(a2, a3);
}

uint64_t sub_22B7631A8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_22B7DC2E8();

  [v3 count];
  v4 = sub_22B7DC4E8();
  MEMORY[0x231895140](v4);

  MEMORY[0x231895140](32, 0xE100000000000000);
  [v3 flag];
  v5 = sub_22B7DBE48();
  MEMORY[0x231895140](v5);

  MEMORY[0x231895140](0xD000000000000012, 0x800000022B810450);
  v6 = [objc_opt_self() nameForReason:objc_msgSend(v3 inFlag:{sel_reason), objc_msgSend(v3, sel_flag)}];
  v7 = sub_22B7DB6A8();
  v9 = v8;

  MEMORY[0x231895140](v7, v9);

  *a2 = 8237;
  a2[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_22B763330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B6F0D94;

  return sub_22B76482C(a2, a3);
}

uint64_t sub_22B7633EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22B6F12E8;

  return (sub_22B764C74)(a2);
}

uint64_t sub_22B76349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22B6F0D94;

  return sub_22B7635AC(a2, a3);
}

uint64_t sub_22B763558(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22B7635AC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22B7DAD88();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_22B7DAD38();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_22B7DAD48();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v16 = sub_22B7DAD28();
  v3[22] = v16;
  v17 = *(v16 - 8);
  v3[23] = v17;
  v18 = *(v17 + 64) + 15;
  v3[24] = swift_task_alloc();
  v19 = sub_22B7DAD98();
  v3[25] = v19;
  v20 = *(v19 - 8);
  v3[26] = v20;
  v21 = *(v20 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B763848, 0, 0);
}

uint64_t sub_22B763848()
{
  v16 = v0;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422680);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = sub_22B7DBF38();
    v9 = sub_22B4CFAAC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22B4CC000, v2, v3, "TTR requested for %{public}s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v13 = *(v0[9] + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  v0[28] = v13;
  if (v13)
  {

    v10 = sub_22B7639F8;
    v11 = v13;
    v12 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22B7639F8()
{
  v1 = *(v0 + 224);
  swift_beginAccess();
  *(v0 + 232) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B763A84, 0, 0);
}

uint64_t sub_22B763A84()
{
  v83 = v0;
  v1 = v0;
  if (*(v0[29] + 16) && (v2 = sub_22B7235C8(v0[7], 3), (v3 & 1) != 0))
  {
    v4 = *(*(v0[29] + 56) + 8 * v2);

    v5 = [v4 taskReports];

    if (v5)
    {
      sub_22B4D01A0(0, &qword_28141F160, 0x277D1AB40);
      v6 = sub_22B7DB918();

      if (v6 >> 62)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v6 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_5:
    v7 = sub_22B7DC1C8();
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_6:

    v8 = MEMORY[0x277D84F90];
LABEL_21:
    v20 = v1[7];
    v21 = v1[8];
    v1[5] = v8;
    sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
    sub_22B7665AC();
    v69 = sub_22B7DB5F8();
    v23 = v22;

    v81 = 0;
    v82 = 0xE000000000000000;
    sub_22B7DC2E8();

    v81 = 0x205D545347425BLL;
    v82 = 0xE700000000000000;
    v24 = sub_22B7DBF38();
    MEMORY[0x231895140](v24);

    MEMORY[0x231895140](0xD000000000000022, 0x800000022B810340);
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_22B7DC2E8();
    v79[0] = v81;
    v79[1] = v82;
    v25 = sub_22B7DBF38();
    MEMORY[0x231895140](v25);

    MEMORY[0x231895140](0xD0000000000000B9, 0x800000022B810370);
    v26 = *(v21 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v26)
    {
      v74 = v23;
      v28 = v1[11];
      v77 = v1[10];
      v29 = v1[8];
      v80 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v26, 0);
      v27 = v80;
      v30 = v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v31 = *(v28 + 72);
      do
      {
        v32 = v1;
        v33 = v1[12];
        sub_22B74BD44(v30, v33);
        v81 = 8237;
        v82 = 0xE200000000000000;
        v34 = sub_22B7DA878();
        MEMORY[0x231895140](v34);

        MEMORY[0x231895140](0x202E2E2E20, 0xE500000000000000);
        v35 = v33 + *(v77 + 36);
        v36 = sub_22B7DA878();
        MEMORY[0x231895140](v36);

        v38 = v81;
        v37 = v82;
        sub_22B4D0D64(v33, &unk_27D8CEEC0, &qword_22B7FA060);
        v80 = v27;
        v40 = *(v27 + 16);
        v39 = *(v27 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_22B7AB6B4((v39 > 1), v40 + 1, 1);
          v27 = v80;
        }

        *(v27 + 16) = v40 + 1;
        v41 = v27 + 16 * v40;
        *(v41 + 32) = v38;
        *(v41 + 40) = v37;
        v30 += v31;
        --v26;
        v1 = v32;
      }

      while (v26);
      v23 = v74;
    }

    v66 = v1[27];
    v42 = v1[23];
    v43 = v1[22];
    v63 = v43;
    v64 = v42;
    v45 = v1[19];
    v44 = v1[20];
    v61 = v1[21];
    v62 = v1[18];
    v72 = v1[24];
    v75 = v1[17];
    v78 = v1[16];
    v65 = v1[15];
    v67 = v1[14];
    v68 = v1[13];
    v1[6] = v27;
    v46 = sub_22B7DB5F8();
    v48 = v47;

    MEMORY[0x231895140](v46, v48);

    MEMORY[0x231895140](0xD00000000000001CLL, 0x800000022B810430);
    MEMORY[0x231895140](v69, v23);

    (*(v42 + 104))(v72, *MEMORY[0x277D195B8], v43);
    (*(v44 + 104))(v61, *MEMORY[0x277D195D0], v45);
    (*(v75 + 104))(v62, *MEMORY[0x277D195C0], v78);
    sub_22B6F0AD4(&unk_27D8CECA0, &unk_22B7FB7D0);
    v49 = sub_22B7DAD18();
    v50 = *(v49 - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22B7F93A0;
    v54 = v53 + v52;
    v55 = v1;
    v56 = *(v50 + 104);
    v56(v54, *MEMORY[0x277D195A0], v49);
    v56(v54 + v51, *MEMORY[0x277D19598], v49);
    sub_22B7DAD78();
    sub_22B7DAD08();

    (*(v67 + 8))(v65, v68);
    (*(v75 + 8))(v62, v78);
    (*(v44 + 8))(v61, v45);
    (*(v64 + 8))(v72, v63);
    v57 = *(MEMORY[0x277D195E8] + 4);
    v58 = swift_task_alloc();
    v55[30] = v58;
    *v58 = v55;
    v58[1] = sub_22B764254;
    v59 = v55[27];

    return MEMORY[0x282173A08]();
  }

LABEL_10:
  v80 = MEMORY[0x277D84F90];
  sub_22B7AB6B4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v70 = v1;
    v9 = 0;
    v8 = v80;
    v10 = v6;
    v76 = v6 & 0xC000000000000001;
    v71 = v6 & 0xFFFFFFFFFFFFFF8;
    v73 = v6;
    v11 = v7;
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v76)
      {
        v13 = MEMORY[0x231895C80](v9, v10);
      }

      else
      {
        if (v9 >= *(v71 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v10 + 8 * v9 + 32);
      }

      v14 = v13;
      v79[0] = v13;
      sub_22B7631A8(v79, &v81);

      v16 = v81;
      v15 = v82;
      v80 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22B7AB6B4((v17 > 1), v18 + 1, 1);
        v8 = v80;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      ++v9;
      v10 = v73;
      if (v12 == v11)
      {

        v1 = v70;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x282173A08]();
}

uint64_t sub_22B764254()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[26];
  if (v0)
  {
    (*(v5 + 8))(v2[27], v2[25]);

    return MEMORY[0x2822009F8](sub_22B76444C, 0, 0);
  }

  else
  {
    v6 = v2[24];
    v7 = v2[21];
    v8 = v2[18];
    v9 = v2[15];
    v10 = v2[12];
    (*(v5 + 8))();

    v11 = *(v4 + 8);

    return v11();
  }
}

uint64_t sub_22B76444C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];

  v7 = v0[1];
  v8 = v0[31];

  return v7();
}

uint64_t sub_22B7644FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_22B7DBA18();
  v2[4] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B764594, v4, v3);
}

id sub_22B764594()
{
  v20 = v0;
  v1 = v0[2];
  v18 = MEMORY[0x277D84FA0];
  if (v1 == 2)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = v0[4];

    v11 = [v9 isSyncing];

    if (v11)
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v12 = sub_22B7DB2B8();
      sub_22B4CFA74(v12, qword_281422680);
      v13 = sub_22B7DB298();
      v14 = sub_22B7DBCB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22B4CC000, v13, v14, "MiC sync in progress, not allowing any reparenting tasks.", v15, 2u);
        MEMORY[0x231898D60](v15, -1, -1);
      }

      sub_22B7C8CCC(&v19, 100001);
    }
  }

  else if (v1)
  {
    v16 = v0[4];
  }

  else
  {
    v3 = v0[3];
    v2 = v0[4];

    if (v3 == 3 && [objc_opt_self() anyStorageControllerIsAwaitingStorageTimer])
    {
      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v4 = sub_22B7DB2B8();
      sub_22B4CFA74(v4, qword_281422680);
      v5 = sub_22B7DB298();
      v6 = sub_22B7DBCB8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v5, v6, "Storage timer is pending, not allowing messages from storage to be indexed", v7, 2u);
        MEMORY[0x231898D60](v7, -1, -1);
      }

      sub_22B7C8CCC(&v19, 1012);
    }
  }

  v17 = v0[1];

  return v17(v18);
}

uint64_t sub_22B76482C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22B7DA968();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7648F0, 0, 0);
}

uint64_t sub_22B7648F0()
{
  v26 = v0;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422680);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC98();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446466;
    v15 = sub_22B7DBF38();
    v17 = sub_22B4CFAAC(v15, v16, &v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_22B7DA878();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_22B4CFAAC(v18, v20, &v25);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Critical lane for %{public}s has exhausted allotted time, and will be deferred until %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v14, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = swift_task_alloc();
  v0[8] = v22;
  *v22 = v0;
  v22[1] = sub_22B764B64;
  v23 = v0[4];

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
}

uint64_t sub_22B764B64()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B764C74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B764C94, 0, 0);
}

uint64_t sub_22B764C94()
{
  v14 = v0;
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422680);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_22B7DBF38();
    v9 = sub_22B4CFAAC(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Critical lane for %{public}s has finished deferral", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_22B764E50;
  v11 = v0[3];

  return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
}

uint64_t sub_22B764E50()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B764FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F12E8;

  return sub_22B7602F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B76508C(uint64_t a1)
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
  v10[1] = sub_22B6F12E8;

  return sub_22B75FC58(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22B765160(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B6F0D94;

  return sub_22B75E958(a1, a2, v6, v7);
}

uint64_t sub_22B765218(uint64_t a1)
{
  v2 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group.UsageEvaluation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B765280(uint64_t a1)
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
  v10[1] = sub_22B6F12E8;

  return sub_22B75F6C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22B765354(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22B7653C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B7653EC, 0, 0);
}

uint64_t sub_22B7653EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281420390 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_281422740;
  v3[5] = qword_281422740;
  if (v4)
  {
    a1 = sub_22B7654C8;
  }

  else
  {
    v5 = *(v3[4] + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
    v3[6] = v5;
    if (!v5)
    {
      __break(1u);
      return MEMORY[0x2822009F8](a1, v4, a3);
    }

    a1 = sub_22B7655BC;
    v4 = v5;
  }

  a3 = 0;

  return MEMORY[0x2822009F8](a1, v4, a3);
}

uint64_t sub_22B7654C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_22B7AB20C();

  return MEMORY[0x2822009F8](sub_22B765534, 0, 0);
}

uint64_t sub_22B765534(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 32) + OBJC_IVAR___IMDBackgroundMessageProcessingController_executorStates);
  *(v3 + 48) = v4;
  if (v4)
  {

    a1 = sub_22B7655BC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B7655BC()
{
  v1 = v0[6];
  if (*(v1 + 112) == 1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v3 = sub_22B7656B8;
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v3 = sub_22B765968;
  }

  v2[1] = v3;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_22B760D94(v6, 5, 0, v4, 0);
}

uint64_t sub_22B7656B8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_22B7657F8;
  v5 = *(v1 + 32);

  return sub_22B75D430();
}

uint64_t sub_22B7657F8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_22B765908, v3, 0);
}

uint64_t sub_22B765908()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B765968()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_22B765AA8;
  v5 = *(v1 + 32);

  return sub_22B75D430();
}

uint64_t sub_22B765AA8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_22B765BB8, v3, 0);
}

uint64_t sub_22B765BB8()
{
  *(*(v0 + 48) + 112) = 0;
  sub_22B718694();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_22B765C24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19[-v9];
  v20[3] = type metadata accessor for IMDBackgroundMessageProcessingController(v8);
  v20[4] = &protocol witness table for IMDBackgroundMessageProcessingController;
  v20[0] = a1;
  swift_defaultActor_initialize();
  v11 = MEMORY[0x277D84F90];
  a3[20] = sub_22B71DBD4(MEMORY[0x277D84F90]);
  a3[21] = sub_22B71DDAC(v11);
  sub_22B4D0DE8(v20, (a3 + 14));
  a3[19] = a2;

  v12 = sub_22B7DBF58();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;

      sub_22B6F3B64(v16, v15, v10);
      v17 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
      swift_beginAccess();
      sub_22B7865A4(v10, v15);
      swift_endAccess();
      --v13;
    }

    while (v13);
  }

  sub_22B4CFB78(v20);
  return a3;
}

uint64_t sub_22B765DC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v28[3] = sub_22B4D01A0(0, &qword_28141F180, 0x277CF0810);
  v28[4] = &off_283F20C18;
  v28[0] = a1;
  swift_defaultActor_initialize();
  *(a5 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 216) = 0;
  *(a5 + 208) = 0;
  *(a5 + 224) = 0;
  *(a5 + 232) = 0;
  *(a5 + 240) = -1;
  sub_22B4D0DE8(v28, a5 + 136);
  *(a5 + 184) = &off_283F1E0B8;
  swift_unknownObjectWeakAssign();
  v13 = 0;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4;
  if (a3 <= 3)
  {
    v13 = qword_22B7FB7E0[a3];
  }

  *(a5 + 248) = sub_22B7C71B0();
  *(a5 + 256) = v14;
  v15 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v16 = sub_22B7DB678();
  v17 = [v15 initWithIdentifier_];

  v18 = v17;
  [v18 setPriority_];
  if (a3 == 3)
  {
    [v18 setPreventsDeviceSleep_];
    v19 = v18;
  }

  else
  {
    [v18 setGroupConcurrencyLimit_];
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_22B7DC2E8();

    v26 = 0xD000000000000026;
    v27 = 0x800000022B810290;
    v20 = sub_22B7DBF38();
    MEMORY[0x231895140](v20);

    v19 = sub_22B7DB678();

    [v18 setGroupName_];
  }

  sub_22B7DBF98();
  sub_22B7DBF48();
  sub_22B7DBF68();

  *(a5 + 128) = v18;
  v21 = v18;
  sub_22B7DBA38();
  v22 = sub_22B7DBA58();
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a5;

  sub_22B77E3D4(0, 0, v12, &unk_22B7FB708, v23);

  sub_22B4CFB78(v28);
  return a5;
}

uint64_t sub_22B766104()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B75C6C4();
}

uint64_t sub_22B7661D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B75D108();
}

uint64_t sub_22B766284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B75D108();
}

uint64_t sub_22B766338()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B75C6C4();
}

uint64_t sub_22B7663EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F0D94;

  return sub_22B7C6EFC();
}

uint64_t sub_22B7664A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B7664E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B75D108();
}

unint64_t sub_22B7665AC()
{
  result = qword_28141F2C8;
  if (!qword_28141F2C8)
  {
    sub_22B6FB8C4(&unk_27D8CE9E0, &qword_22B7F99B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2C8);
  }

  return result;
}

uint64_t sub_22B766634(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
  v3 = sub_22B7DB918();

  v2(v3);
}

uint64_t sub_22B7666B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_22B7DB788();
  return sub_22B7DB878();
}

uint64_t sub_22B766738()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F590);
  sub_22B4CFA74(v0, qword_28141F590);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

id sub_22B7667A4()
{
  result = [objc_allocWithZone(IMDPlainTextTapbackInterpreter) init];
  qword_28141F0B8 = result;
  return result;
}

BOOL IMDPlainTextTapbackInterpreter.parseString(_:emoji:infix:type:)(unint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = *(v5 + OBJC_IVAR___IMDPlainTextTapbackInterpreter_state);

  sub_22B78D49C(a1, a2, v20);

  v12 = v21;
  if (v21)
  {
    v13 = v22;
    if (v20[1])
    {

      v14 = sub_22B7DB678();
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    *a3 = v14;

    v16 = v14;
    v17 = sub_22B7DB678();

    v18 = v17;
    *a4 = v17;

    *a5 = v13;
  }

  return v12 != 0;
}

void IMDPlainTextTapbackInterpreter.interpretMessageItem(_:in:)(void *a1, void *a2)
{
  v3 = v2;
  v146 = a1;
  v5 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v130 - v7;
  v9 = sub_22B7DA968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v130 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v130 - v18;
  sub_22B7DA938();
  v20 = [v146 plainBody];
  v145 = v9;
  if (!v20)
  {
    v21 = [v146 body];
    if (!v21)
    {
      if (qword_28141F588 != -1)
      {
        swift_once();
      }

      v59 = sub_22B7DB2B8();
      sub_22B4CFA74(v59, qword_28141F590);
      v146 = v146;
      v38 = sub_22B7DB298();
      v39 = sub_22B7DBC78();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v19;
        v41 = v10;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v155 = v43;
        *v42 = 136315138;
        v60 = [v146 guid];

        if (!v60)
        {
LABEL_67:
          __break(1u);
          return;
        }

        v61 = sub_22B7DB6A8();
        v63 = v62;

        v64 = sub_22B4CFAAC(v61, v63, &v155);

        *(v42 + 4) = v64;
        v49 = "No plain body found for message %s";
LABEL_22:
        _os_log_impl(&dword_22B4CC000, v38, v39, v49, v42, 0xCu);
        sub_22B4CFB78(v43);
        MEMORY[0x231898D60](v43, -1, -1);
        MEMORY[0x231898D60](v42, -1, -1);

        (*(v41 + 8))(v40, v145);
        goto LABEL_62;
      }

LABEL_23:

      (*(v10 + 8))(v19, v9);
      goto LABEL_62;
    }

    v22 = v21;
    v20 = [v21 string];
  }

  v139 = v14;
  v143 = v17;
  v23 = sub_22B7DB6A8();
  v25 = v24;

  v26 = *(v3 + OBJC_IVAR___IMDPlainTextTapbackInterpreter_state);

  sub_22B78D49C(v23, v25, v152);

  if (!v153)
  {
    if (qword_28141F588 != -1)
    {
      swift_once();
    }

    v37 = sub_22B7DB2B8();
    sub_22B4CFA74(v37, qword_28141F590);
    v146 = v146;
    v38 = sub_22B7DB298();
    v39 = sub_22B7DBC78();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v19;
      v41 = v10;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v155 = v43;
      *v42 = 136315138;
      v44 = [v146 guid];

      if (!v44)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v45 = sub_22B7DB6A8();
      v47 = v46;

      v48 = sub_22B4CFAAC(v45, v47, &v155);

      *(v42 + 4) = v48;
      v49 = "No plain text tapback found for message %s";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v142 = v19;
  v27 = v152[0];
  v144 = v152[1];
  v140 = v154;
  sub_22B767A68(v152[2], v153, a2, &v155);
  v28 = v156;
  if (v156)
  {
    v134 = v155;
    v136 = v157;
    v135 = v158;
    v29 = v159;
    v30 = [v146 messageSummaryInfo];
    if (v30)
    {
      v31 = v30;
      v32 = sub_22B7DB588();

      v33 = *MEMORY[0x277D1A000];
      *&v149 = sub_22B7DB6A8();
      *(&v149 + 1) = v34;
      sub_22B7DC248();
      v150 = sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
      *&v149 = v29;
      sub_22B4D7F04(&v149, v148);
      v35 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = v32;
      sub_22B769028(v148, v151, isUniquelyReferenced_nonNull_native);
      sub_22B4DA138(v151);
      v137 = v147;
    }

    else
    {
      v137 = 0;
    }

    v133 = v29;
    v65 = [v146 sender];
    if (v65)
    {
      v66 = v65;
      sub_22B7DB6A8();
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    v69 = [v146 time];
    if (v69)
    {
      v70 = v69;
      sub_22B7DA928();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v130 = v27;
    v141 = v10;
    (*(v10 + 56))(v8, v71, 1, v145);
    v132 = [v146 body];
    sub_22B4D7D1C(MEMORY[0x277D84F90]);
    v131 = [v146 flags];
    v72 = [v146 guid];
    if (v72)
    {
      v73 = v72;
      sub_22B7DB6A8();
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v138 = v28;

    if (v68)
    {
      v76 = sub_22B7DB678();
    }

    else
    {
      v76 = 0;
    }

    v77 = v141;
    v78 = v145;
    if ((*(v141 + 48))(v8, 1, v145) == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = sub_22B7DA8B8();
      (*(v77 + 8))(v8, v78);
    }

    v80 = v144;
    v81 = sub_22B7DB568();

    if (v75)
    {
      v82 = sub_22B7DB678();
    }

    else
    {
      v82 = 0;
    }

    v83 = sub_22B7DB678();

    if (v80)
    {
      v84 = sub_22B7DB678();
    }

    else
    {
      v84 = 0;
    }

    if (v137)
    {
      v85 = sub_22B7DB568();
    }

    else
    {
      v85 = 0;
    }

    v86 = objc_allocWithZone(MEMORY[0x277D1A8A8]);
    v87 = v132;
    v88 = [v86 initWithSender:v76 time:v79 body:v132 attributes:v81 fileTransferGUIDs:0 flags:v131 error:0 guid:v82 associatedMessageGUID:v83 associatedMessageType:v140 associatedMessageRange:v136 associatedMessageEmoji:v135 messageSummaryInfo:v84 threadIdentifier:{v85, 0}];

    if (v88)
    {
      v89 = v88;
      v90 = [v146 fallbackHash];
      [v89 setFallbackHash_];
    }

    v132 = v88;
    v91 = v141;
    v92 = v143;
    if (qword_28141F588 != -1)
    {
      swift_once();
    }

    v93 = sub_22B7DB2B8();
    sub_22B4CFA74(v93, qword_28141F590);
    v94 = v142;
    v95 = v145;
    (*(v91 + 16))(v92, v142, v145);

    v96 = v133;

    v146 = v146;
    v97 = v138;
    swift_bridgeObjectRetain_n();
    v98 = v91;
    v99 = v96;
    v100 = v92;
    v101 = sub_22B7DB298();
    v102 = sub_22B7DBC78();

    if (!os_log_type_enabled(v101, v102))
    {

      v108 = v146;

      swift_bridgeObjectRelease_n();
      v127 = *(v98 + 8);
      v127(v100, v95);
      v127(v94, v95);
      goto LABEL_57;
    }

    v103 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v151[0] = v133;
    *v103 = 136316162;
    *&v149 = v140;
    type metadata accessor for IMAssociatedMessageType(0);
    v104 = sub_22B7DB6E8();
    v106 = v105;

    v107 = sub_22B4CFAAC(v104, v106, v151);

    *(v103 + 4) = v107;
    *(v103 + 12) = 2080;
    v108 = v146;
    v109 = [v146 guid];

    swift_bridgeObjectRelease_n();
    if (v109)
    {
      v110 = v97;
      v111 = sub_22B7DB6A8();
      v113 = v112;

      v114 = sub_22B4CFAAC(v111, v113, v151);

      *(v103 + 14) = v114;
      *(v103 + 22) = 2080;

      v115 = sub_22B4CFAAC(v134, v110, v151);

      *(v103 + 24) = v115;
      *(v103 + 32) = 2080;
      v116 = sub_22B7DBFF8();
      v118 = sub_22B4CFAAC(v116, v117, v151);

      *(v103 + 34) = v118;
      *(v103 + 42) = 2048;
      v119 = v139;
      sub_22B7DA938();
      v120 = v143;
      sub_22B7DA898();
      v122 = v121;
      v123 = *(v141 + 8);
      v124 = v119;
      v125 = v145;
      v123(v124, v145);
      v123(v120, v125);
      *(v103 + 44) = v122;
      _os_log_impl(&dword_22B4CC000, v101, v102, "Interpreted plain text tapback %s for %s, attaching to %s with range %s, took %fs", v103, 0x34u);
      v126 = v133;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v126, -1, -1);
      MEMORY[0x231898D60](v103, -1, -1);

      v123(v142, v125);
LABEL_57:
      if (!v132)
      {
        v108;
      }

      return;
    }

    __break(1u);
    goto LABEL_66;
  }

  if (qword_28141F588 != -1)
  {
    swift_once();
  }

  v50 = sub_22B7DB2B8();
  sub_22B4CFA74(v50, qword_28141F590);

  v51 = sub_22B7DB298();
  v52 = sub_22B7DBC78();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v151[0] = v54;
    *v53 = 136315138;
    *&v149 = v140;
    type metadata accessor for IMAssociatedMessageType(0);
    v55 = sub_22B7DB6E8();
    v57 = v56;

    v58 = sub_22B4CFAAC(v55, v57, v151);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_22B4CC000, v51, v52, "Interpreted plain text tapback %s but could not find original message using infix string", v53, 0xCu);
    sub_22B4CFB78(v54);
    MEMORY[0x231898D60](v54, -1, -1);
    MEMORY[0x231898D60](v53, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v142, v145);
LABEL_62:
  v128 = v146;

  v129 = v128;
}

id sub_22B767A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  v9 = *MEMORY[0x277D19F88];
  sub_22B7DB6A8();
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22B7DB678();

  v12 = [v10 initWithKey:v11 ascending:0];

  v13 = [objc_opt_self() synchronousDatabase];
  result = [a3 guid];
  if (result)
  {
    v15 = result;
    sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22B7F9620;
    *(v16 + 32) = v12;
    sub_22B4D01A0(0, &qword_27D8CD670, 0x277CCAC98);
    v17 = v12;
    v18 = sub_22B7DB8F8();

    v19 = swift_allocObject();
    v19[2] = v8;
    v19[3] = v4;
    v19[4] = a1;
    v19[5] = a2;
    aBlock[4] = sub_22B76986C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B766634;
    aBlock[3] = &unk_283F1E450;
    v20 = _Block_copy(aBlock);

    v21 = v4;

    [v13 fetchMessageRecordsForChatRecordWithGUID:v15 filteredUsingPredicate:0 sortedUsingDescriptors:v18 limit:50 completionHandler:v20];

    _Block_release(v20);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v22 = *(v8 + 16);
    v23 = *(v8 + 24);
    v24 = *(v8 + 32);
    v25 = *(v8 + 40);
    v26 = *(v8 + 48);
    sub_22B769878(v22, v23, v24, v25, v26);

    *a4 = v22;
    a4[1] = v23;
    a4[2] = v24;
    a4[3] = v25;
    a4[4] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B767DAC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      v45 = v6;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x231895C80](v7, a1);
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 itemType] || (objc_msgSend(v9, sel_isAssociatedMessage) & 1) != 0)
        {
        }

        else
        {
          sub_22B7DC358();
          v11 = *(aBlock[0] + 16);
          sub_22B7DC398();
          sub_22B7DC3A8();
          sub_22B7DC368();
          v6 = v45;
        }

        ++v7;
        if (v10 == v6)
        {
          v12 = aBlock[0];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v13 = a5;
      v14 = a4;
      v15 = sub_22B7DC1C8();
      a4 = v14;
      a5 = v13;
      v6 = v15;
    }

    while (v15);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:
  v43 = sub_22B768280();
  v44 = v16;
  v17 = sub_22B7666B8(v43, v16);
  if (v18)
  {
    if (v17 == 10911970 && v18 == 0xA300000000000000)
    {
      LOBYTE(v19) = 1;
    }

    else
    {
      LOBYTE(v19) = sub_22B7DC518();
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_44;
  }

  for (i = *(v12 + 16); i; i = sub_22B7DC1C8())
  {
    v21 = 0;
    v42 = v19 & 1;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x231895C80](v21, v12);
      }

      else
      {
        if (v21 >= *(v12 + 16))
        {
          goto LABEL_43;
        }

        v23 = *(v12 + 8 * v21 + 32);
      }

      v19 = v23;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v23 attributedBodyText];
      if (v25)
      {
        v22 = v25;
        v46 = v19;
        v26 = i;
        v27 = swift_allocObject();
        *(v27 + 24) = 0;
        *(v27 + 16) = 0;
        *(v27 + 32) = 1;
        v28 = swift_allocObject();
        *(v28 + 16) = 1;
        *(v28 + 24) = v43;
        *(v28 + 32) = v44;
        *(v28 + 40) = v42;
        *(v28 + 48) = v27;
        aBlock[4] = sub_22B769900;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22B768524;
        aBlock[3] = &unk_283F1E4C8;
        v29 = _Block_copy(aBlock);

        [v22 __im_visitMessageParts_];
        _Block_release(v29);
        swift_beginAccess();
        v30 = *(v27 + 16);
        v19 = *(v27 + 24);
        v31 = *(v27 + 32);

        if ((v31 & 1) == 0)
        {

          v33 = [v22 attributedSubstringFromRange_];
          v34 = [v46 guid];
          v32 = sub_22B7DB6A8();
          i = v35;

          goto LABEL_47;
        }

        i = v26;
      }

      else
      {
        v22 = v19;
      }

      ++v21;
      if (v24 == i)
      {

        v32 = 0;
        i = 0;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v32 = 0;
LABEL_46:
  v30 = 0;
  v19 = 0;
  v33 = 0;
LABEL_47:
  swift_beginAccess();
  v36 = a2[2];
  v37 = a2[3];
  v38 = a2[4];
  v39 = a2[5];
  v40 = a2[6];
  a2[2] = v32;
  a2[3] = i;
  a2[4] = v30;
  a2[5] = v19;
  a2[6] = v33;
  sub_22B7698BC(v36, v37, v38, v39, v40);
}

uint64_t sub_22B768280()
{

  v0 = sub_22B7DB7D8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      if ((sub_22B7DB5C8() & 1) == 0)
      {
        MEMORY[0x231895130](v2, v3);
      }

      v2 = sub_22B7DB7D8();
      v3 = v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_22B768358(void *a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v14 = [a1 messagePartBody];
  v15 = [v14 string];

  v16 = sub_22B7DB6A8();
  v18 = v17;

  if (a4)
  {
    v16 = sub_22B768280();
    v20 = v19;

    v18 = v20;
  }

  if (a7)
  {

    sub_22B769914(1);

    sub_22B74BBFC();
    sub_22B7699E0();
    v21 = sub_22B7DB5D8();

    if (v21)
    {
      goto LABEL_11;
    }
  }

  if (v16 == a5 && v18 == a6)
  {
LABEL_11:

    goto LABEL_12;
  }

  v23 = sub_22B7DC518();

  if (v23)
  {
LABEL_12:
    v25 = [a1 messagePartRange];
    v27 = v26;
    result = swift_beginAccess();
    *(a8 + 16) = v25;
    *(a8 + 24) = v27;
    *(a8 + 32) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_22B768524(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22B7685A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B725570(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
        return sub_22B769A34(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B7A3D04();
      goto LABEL_7;
    }

    sub_22B7A1B64(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_22B725570(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    }
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

uint64_t sub_22B768704(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B725570(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
        return sub_22B769A34(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B7A3D40();
      goto LABEL_7;
    }

    sub_22B7A1BA0(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_22B725570(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_22B76961C(v10, a2, a1, v16, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    }
  }

  type metadata accessor for IMPersistentTaskFlagGroup(0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

unint64_t sub_22B76888C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B7235C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      v23 = v22[7];
      v24 = *(v23 + 8 * result);
      *(v23 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v22[(result >> 6) + 8] |= 1 << result;
    v25 = (v22[6] + 16 * result);
    *v25 = a2;
    v25[1] = a3;
    *(v22[7] + 8 * result) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_22B7A3FBC();
    result = v19;
    goto LABEL_8;
  }

  sub_22B7A1F14(v16, a4 & 1);
  v20 = *v5;
  result = sub_22B7235C8(a2, a3);
  if ((v17 & 1) == (v21 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22B7DC578();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B7689F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B723648(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B7A21AC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22B723648(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22B7A411C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

id sub_22B768B6C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22B7237AC(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_22B7A2454(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_22B7237AC(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_22B7A428C();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

unint64_t sub_22B768CF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22B725570(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_22B7A43FC();
    result = v17;
    goto LABEL_8;
  }

  sub_22B7A26D8(v14, a3 & 1);
  v18 = *v4;
  result = sub_22B725570(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for IMPersistentTaskFlag(0);
  sub_22B7DC578();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B768E64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22B723648(a2, a3);
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
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_22B723648(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_22B7DC578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *sub_22B769028(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_22B4D7EC0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22B7A49A0();
      goto LABEL_7;
    }

    sub_22B7A316C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_22B4D7EC0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22B4DA0DC(a2, v22);
      return sub_22B7696C4(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_22B7DC578();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_22B4CFB78(v17);

  return sub_22B4D7F04(a1, v17);
}

_OWORD *sub_22B769174(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B723648(a2, a3);
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
      sub_22B7A4B44();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B7A3424(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22B723648(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22B7DC578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_22B4CFB78(v23);

    return sub_22B4D7F04(a1, v23);
  }

  else
  {
    sub_22B769740(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22B7692C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22B723648(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
      return sub_22B769A34(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22B7A4CE8();
    goto LABEL_7;
  }

  sub_22B7A36DC(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_22B723648(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22B7DC578();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22B7697AC(v12, a2, a3, a1, v18);
}

uint64_t sub_22B76945C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22B723648(a2, a3);
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
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_22B723648(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_22B7DC578();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      a5();
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

uint64_t sub_22B76961C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_22B769A9C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_22B7696C4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_22B4D7F04(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_22B769740(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22B4D7F04(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22B7697AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata();
  result = sub_22B769A9C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
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

void sub_22B769878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    v5 = a5;
  }
}

void sub_22B7698BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_22B769914(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_22B7DB768();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22B7DB798();

  return sub_22B7DB898();
}

unint64_t sub_22B7699E0()
{
  result = qword_28141F2F0;
  if (!qword_28141F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2F0);
  }

  return result;
}

uint64_t sub_22B769A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B769A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B769B0C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422698);
  sub_22B4CFA74(v0, qword_281422698);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769B78()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422668);
  sub_22B4CFA74(v0, qword_281422668);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769BE4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226E0);
  sub_22B4CFA74(v0, qword_2814226E0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769C50()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226F8);
  sub_22B4CFA74(v0, qword_2814226F8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769CDC()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D4888);
  sub_22B4CFA74(v0, qword_27D8D4888);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769D48()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422638);
  sub_22B4CFA74(v0, qword_281422638);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769DB4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D48A0);
  sub_22B4CFA74(v0, qword_27D8D48A0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769E20()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422650);
  sub_22B4CFA74(v0, qword_281422650);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769EA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B7DB2B8();
  sub_22B6F24F4(v3, a2);
  sub_22B4CFA74(v3, a2);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769F0C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_281422680);
  sub_22B4CFA74(v0, qword_281422680);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769F78()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D48B8);
  sub_22B4CFA74(v0, qword_27D8D48B8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B769FE4()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F490);
  v1 = sub_22B4CFA74(v0, qword_28141F490);
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4CFA74(v0, qword_281422680);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_22B76A0AC()
{
  v1 = sub_22B7DB348();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B7DB398();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_22B76CBB0;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1E630;
  v10 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v14 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_22B76A34C()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_22B7DB678();
  v3 = *(v0 + 16);
  v5[4] = sub_22B76AA80;
  v6 = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22B74C9E0;
  v5[3] = &unk_283F1E4F0;
  v4 = _Block_copy(v5);

  [v1 registerForMessagesDeletionAwareTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

uint64_t sub_22B76A46C(void *a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_28141F490);
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBCB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B4CC000, v9, v10, "DAS invoked system workload reporting activity", v11, 2u);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  v12 = sub_22B7DBA58();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;

  v14 = a1;
  sub_22B77E3D4(0, 0, v7, &unk_22B7FB850, v13);
}

uint64_t sub_22B76A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B6F0D94;

  return sub_22B76BDFC(a5);
}

void sub_22B76A6D0(void *a1)
{
  [a1 setTaskCompleted];
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_28141F490);
  oslog = sub_22B7DB298();
  v2 = sub_22B7DBCB8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, oslog, v2, "Finished system workload reporting task", v3, 2u);
    MEMORY[0x231898D60](v3, -1, -1);
  }
}

uint64_t sub_22B76A7C4(uint64_t a1, uint64_t a2)
{
  v3 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_22B76A820(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F490);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Reporting message count of %lld to DAS", v5, 0xCu);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = objc_opt_self();
  if (a1 < 0)
  {
    __break(1u);
  }

  v13[0] = 0;
  if ([v6 reportSystemWorkload:a1 ofCategory:20 error:v13])
  {
    v7 = v13[0];
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBC88();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_22B4CC000, v8, v9, "Finished reporting message count of %lld to DAS", v10, 0xCu);
      MEMORY[0x231898D60](v10, -1, -1);
    }
  }

  else
  {
    v11 = v13[0];
    sub_22B7DA6F8();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B76AA24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B76AA88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B76A63C(a1, v4, v5, v7, v6);
}

uint64_t sub_22B76AB48()
{
  v12 = sub_22B7DBD48();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B7DBD38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22B7DB398();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v11 = sub_22B74D6EC();
  sub_22B7DB378();
  v14 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v12);
  v8 = sub_22B7DBD88();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

uint64_t sub_22B76ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = sub_22B7DB348();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DB398();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_22B74D6EC();
  v18 = sub_22B7DBD98();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  v21 = (v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  aBlock[4] = sub_22B76CB14;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1E608;
  v23 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v30 = MEMORY[0x277D84F90];
  sub_22B76CBD8(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v29 + 8))(v8, v5);
  (*(v27 + 8))(v12, v28);
}

uint64_t sub_22B76B160(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  return sub_22B7DB9E8();
}

id sub_22B76B1F0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v1 = sub_22B7DB678();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setRequiresProtectionClass_];
  [v3 setExpectedDuration_];
  v4 = sub_22B7DB8F8();
  [v3 setInvolvedProcesses_];

  [v3 setRequiresBuddyComplete_];
  [v3 setInterval_];
  [v3 interval];
  [v3 setMinDurationBetweenInstances_];
  [v3 setResourceIntensive_];
  [v3 setRequiresUserInactivity_];

  return v3;
}

void sub_22B76B354()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = sub_22B7DB678();
  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {

    if (qword_28141F488 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_28141F490);
    oslog = sub_22B7DB298();
    v5 = sub_22B7DBCB8();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, oslog, v5, "Task request for workload reporting is already submitted", v6, 2u);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [v0 sharedScheduler];
    v9 = sub_22B76B1F0();
    v29[0] = 0;
    v10 = [v8 submitTaskRequest:v9 error:v29];

    if (v10)
    {
      v11 = qword_28141F488;
      v12 = v29[0];
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = sub_22B7DB2B8();
      sub_22B4CFA74(v13, qword_28141F490);
      v14 = sub_22B7DB298();
      v15 = sub_22B7DBCB8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_22B4CC000, v14, v15, "Submitted task request for workload reporting", v16, 2u);
        MEMORY[0x231898D60](v16, -1, -1);
      }
    }

    else
    {
      v17 = v29[0];
      v18 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F488 != -1)
      {
        swift_once();
      }

      v19 = sub_22B7DB2B8();
      sub_22B4CFA74(v19, qword_28141F490);
      v20 = v18;
      v21 = sub_22B7DB298();
      v22 = sub_22B7DBCA8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v18;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_22B4CC000, v21, v22, "Failed to submit task request for workload reporting: %@", v23, 0xCu);
        sub_22B708A24(v24);
        MEMORY[0x231898D60](v24, -1, -1);
        MEMORY[0x231898D60](v23, -1, -1);
      }

      else
      {
      }
    }

    v27 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22B76B770()
{
  v1 = sub_22B7DB368();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B76B82C, 0, 0);
}

uint64_t sub_22B76B82C()
{
  v1 = [objc_opt_self() database];
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22B76B970;
  v2 = swift_continuation_init();
  v0[17] = sub_22B6F0AD4(&qword_27D8CECC0, &unk_22B7FB870);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B76A7C4;
  v0[13] = &unk_283F1E590;
  v0[14] = v2;
  [v1 fetchCountOfRecordType:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B76B970()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B76BA50, 0, 0);
}

uint64_t sub_22B76BA50()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = v5;
  (*(v4 + 104))(v2, *MEMORY[0x277D851B8], v3);
  v7 = swift_task_alloc();
  v0[24] = v7;
  v7[2] = v2;
  v7[3] = sub_22B76CAEC;
  v7[4] = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_22B76BBB0;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B76CB08, v7, v10);
}

uint64_t sub_22B76BBB0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v11 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_22B76BD60;
  }

  else
  {
    v5 = v2[23];
    v6 = v2[24];
    v8 = v2[20];
    v7 = v2[21];
    v9 = v2[19];

    (*(v8 + 8))(v7, v9);
    v4 = sub_22B76BCFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B76BCFC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B76BD60()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[26];

  return v6();
}

uint64_t sub_22B76BDFC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1[3] = a1;
  v2 = sub_22B7DB368();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_22B76BF28;
  v6 = *MEMORY[0x277D85DE8];

  return sub_22B76B770();
}

uint64_t sub_22B76BF28()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_22B76C440;
  }

  else
  {
    v3 = sub_22B76C068;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B76C068()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = v4;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v7[2] = v1;
  v7[3] = sub_22B76CACC;
  v7[4] = v5;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22B76C1F0;
  v10 = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v9, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DC18, v7, v11);
}

uint64_t sub_22B76C1F0()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B76C3B4, 0, 0);
}

uint64_t sub_22B76C3B4()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_22B76C440()
{
  v40 = *MEMORY[0x277D85DE8];
  if (qword_28141F488 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F490);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to report system workload: %@", v7, 0xCu);
    sub_22B708A24(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v11 = v0[3];

  v0[2] = 0;
  v12 = [v11 setTaskExpiredWithRetryAfter:v0 + 2 error:1800.0];
  v13 = v0[2];
  if (v12)
  {
    v14 = v0[8];
    v15 = v13;

    v16 = v0[6];

    v17 = v0[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    v20 = v13;
    v21 = sub_22B7DA6F8();
    v0[12] = v21;

    swift_willThrow();
    v22 = v21;
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBCA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Failed to submit retry after for workload reporting: %@", v25, 0xCu);
      sub_22B708A24(v26);
      MEMORY[0x231898D60](v26, -1, -1);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    v30 = v0[5];
    v29 = v0[6];
    v32 = v0[3];
    v31 = v0[4];

    v33 = swift_allocObject();
    v0[13] = v33;
    *(v33 + 16) = v32;
    (*(v30 + 104))(v29, *MEMORY[0x277D851B8], v31);
    v34 = v32;
    v35 = swift_task_alloc();
    v0[14] = v35;
    v35[2] = v29;
    v35[3] = sub_22B72DC04;
    v35[4] = v33;
    v36 = *(MEMORY[0x277D859E0] + 4);
    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = sub_22B76C868;
    v38 = *MEMORY[0x277D85DE8];
    v39 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v37, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DBF8, v35, v39);
  }
}

uint64_t sub_22B76C868()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B76CA2C, 0, 0);
}

uint64_t sub_22B76CA2C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);

  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_22B76CB14()
{
  v1 = *(sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_22B76B160(v0 + v2, v4);
}

void sub_22B76CBB0()
{
  sub_22B76A34C();

  sub_22B76B354();
}

uint64_t sub_22B76CBD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B76CC30()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CECC8);
  sub_22B4CFA74(v0, qword_27D8CECC8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B76CC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B76CCC0, 0, 0);
}

uint64_t sub_22B76CCC0()
{
  v25 = v0;
  if (qword_27D8CCC80 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8CECC8);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22B4CFAAC(0xD000000000000021, 0x800000022B8106B0, &v24);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_22B4CFAAC(v6, v5, &v24);
    _os_log_impl(&dword_22B4CC000, v3, v4, "%s Generating handles to contact map for chat with chatGUID: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v9 = v0[3];
  v10 = v0[4];
  v11 = [objc_allocWithZone(IMDChatRegistry) init];
  v12 = sub_22B7DB678();
  v13 = [v11 existingChatWithGUID_];
  v0[6] = v13;

  if (v13)
  {
    v14 = v13;
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_22B76CFD0;
    v16 = v0[2];

    return sub_22B76D740(v16, v14);
  }

  else
  {
    v19 = v0[3];
    v18 = v0[4];
    v20 = v0[2];
    sub_22B76D130();
    v21 = swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v18;
    *(v22 + 16) = 2;
    *v20 = v21;
    sub_22B6F0AD4(&qword_27D8CECE8, &qword_22B7FB898);
    swift_storeEnumTagMultiPayload();
    v23 = v0[1];

    return v23();
  }
}