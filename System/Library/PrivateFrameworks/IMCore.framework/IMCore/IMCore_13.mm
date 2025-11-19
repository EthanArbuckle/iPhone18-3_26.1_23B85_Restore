uint64_t sub_1A8487854()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E4748);
  sub_1A824431C(v0, qword_1EB2E4748);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84878C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = sub_1A84E56DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  sub_1A84E56CC();
  v11 = [objc_opt_self() sharedController];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v5 + 32))(v15 + v13, v8, v4);
  v16 = (v15 + v14);
  v18 = v21;
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  aBlock[4] = sub_1A8490160;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8454E30;
  aBlock[3] = &unk_1F1B75458;
  v19 = _Block_copy(aBlock);
  sub_1A8242AE8(v18);

  [v11 calculateServiceForSendingToChat:v3 completionBlock:v19];
  _Block_release(v19);

  return (*(v5 + 8))(v10, v4);
}

void sub_1A8487B2C(char **a1, uint64_t a2, unint64_t a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1A8487BCC(a1, a3);
  }

  if (a4)
  {
    a4([a1 isFinal]);
  }
}

NSObject *sub_1A8487BCC(char **a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A84E56DC();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v95 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v95 - v15);
  v17 = [v3 lastCompletedServiceReachabilityRequestStartTime];
  if (v17)
  {
    v18 = v17;
    sub_1A84E569C();

    if (sub_1A84E566C())
    {
      v99 = v11;
      v19 = [a1 bestResult];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 service];

        v98 = sub_1A84E5DBC();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v98 = 4999502;
      }

      if (qword_1EB2E4740 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_68;
    }

    (*(v7 + 8))(v16, v6);
  }

  v6 = &selRef__updateChatItemsForChatItemUpdater;
  if ([a1 isFinal])
  {
    v24 = sub_1A84E565C();
    [v3 setLastCompletedServiceReachabilityRequestStartTime_];
  }

  if (qword_1EB2E4740 != -1)
  {
LABEL_47:
    swift_once();
  }

  v25 = sub_1A84E5C9C();
  sub_1A824431C(v25, qword_1EB2E4748);
  v16 = a1;
  v26 = sub_1A84E5C7C();
  v27 = sub_1A84E617C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v100 = v29;
    *v28 = 136315394;
    v30 = [v16 bestResult];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 service];

      v33 = sub_1A84E5DBC();
      v35 = v34;

      v6 = &selRef__updateChatItemsForChatItemUpdater;
    }

    else
    {
      v35 = 0xE500000000000000;
      v33 = 0x3E6C696E3CLL;
    }

    v36 = sub_1A82446BC(v33, v35, &v100);

    *(v28 + 4) = v36;
    *(v28 + 12) = 1024;
    v37 = [v16 v6[136]];

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1A823F000, v26, v27, "Preferred service for sending updated to %s isFinal %{BOOL}d", v28, 0x12u);
    sub_1A8244788(v29);
    MEMORY[0x1AC56D3F0](v29, -1, -1);
    MEMORY[0x1AC56D3F0](v28, -1, -1);
  }

  else
  {
  }

  v38 = [v16 resultsByAccountID];
  v7 = sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
  v39 = sub_1A84E5D3C();

  v6 = (v39 + 64);
  v40 = 1 << *(v39 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v23 = v41 & *(v39 + 64);
  v42 = (v40 + 63) >> 6;

  v43 = 0;
  a1 = &selRef_contactHandles;
  do
  {
    if (!v23)
    {
      while (1)
      {
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v44 >= v42)
        {

          goto LABEL_31;
        }

        v23 = v6[v44];
        ++v43;
        if (v23)
        {
          v43 = v44;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v44 = v43;
LABEL_24:
    v45 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
  }

  while ([*(*(v39 + 56) + ((v44 << 9) | (8 * v45))) error] != 5);

  sub_1A8488F80();
  if ((v46 & 1) != 0 || (v47 = sub_1A8488F80(), (v48 & 1) == 0) && v47 == -1)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      goto LABEL_71;
    }

    v50 = result;
    [result trackSpamEvent:2];

    v51 = sub_1A84E613C();
    [v3 setValue:v51 forChatProperty:@"smsHandshakeState"];
  }

LABEL_31:
  v14 = [v16 resultsForServiceName_];
  a2 = sub_1A84E5FFC();

  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_49:

    [v3 _updateHybridGroupStateWithReachabilityResult_];
LABEL_50:
    if (sub_1A848949C())
    {
      if (sub_1A84896C4(v16))
      {
        v75 = [v16 bestResult];
        if (!v75)
        {
          return [v3 setHasRefreshedServiceForSending_];
        }

        v76 = v75;
        v77 = [v75 service];
        if (!v77)
        {
          sub_1A84E5DBC();
          v77 = sub_1A84E5D8C();
        }

        v78 = [objc_opt_self() serviceWithInternalName_];

        if (v78)
        {
          v79 = [v76 service];
          v80 = sub_1A84E5DBC();
          v82 = v81;

          sub_1A8489AA8(v80, v82);

          [v3 _targetToService_newComposition_supportsEncryption_];

          return [v3 setHasRefreshedServiceForSending_];
        }

        v84 = v76;
        v3 = v3;
        v83 = sub_1A84E5C7C();
        v85 = sub_1A84E61AC();

        if (os_log_type_enabled(v83, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v100 = v88;
          *v86 = 136315394;
          v89 = [v84 service];
          v90 = sub_1A84E5DBC();
          v92 = v91;

          v93 = sub_1A82446BC(v90, v92, &v100);

          *(v86 + 4) = v93;
          *(v86 + 12) = 2112;
          *(v86 + 14) = v3;
          *v87 = v3;
          v94 = v3;
          _os_log_impl(&dword_1A823F000, v83, v85, "Daemon told us %s was the best service for sending on %@ but I can't find the service instance", v86, 0x16u);
          sub_1A824B2D4(v87, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v87, -1, -1);
          sub_1A8244788(v88);
          MEMORY[0x1AC56D3F0](v88, -1, -1);
          MEMORY[0x1AC56D3F0](v86, -1, -1);

          return [v3 setHasRefreshedServiceForSending_];
        }

LABEL_61:
        return [v3 setHasRefreshedServiceForSending_];
      }

      sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
      result = [swift_getObjCClassFromMetadata() rcsService];
      if (result)
      {
        v83 = result;
        [v3 _targetToService_newComposition_supportsEncryption_];
        goto LABEL_61;
      }
    }

    else
    {
      sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
      result = [swift_getObjCClassFromMetadata() iMessageService];
      if (result)
      {
        v83 = result;
        [v3 _targetToService_newComposition_supportsEncryption_];
        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (!sub_1A84E654C())
  {
    goto LABEL_49;
  }

LABEL_33:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x1AC56AF80](0, a2);
LABEL_36:
    v53 = v52;

    [v3 _updateHybridGroupStateWithReachabilityResult_];
    if (v53)
    {
      v54 = v53;
      sub_1A848FEEC(v54);
      if ([v54 allAreReachable])
      {
        [v3 setHasHadSuccessfulQuery_];
      }
    }

    goto LABEL_50;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v52 = *(a2 + 32);
    goto LABEL_36;
  }

  __break(1u);
LABEL_68:
  swift_once();
LABEL_42:
  v55 = sub_1A84E5C9C();
  sub_1A824431C(v55, qword_1EB2E4748);
  v56 = *(v7 + 16);
  v56(v14, a2, v6);
  v57 = v99;
  v56(v99, v16, v6);

  v58 = sub_1A84E5C7C();
  v59 = sub_1A84E617C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v100 = v97;
    *v60 = 136315650;
    v61 = sub_1A82446BC(v98, v23, &v100);
    LODWORD(v98) = v59;
    v62 = v61;

    *(v60 + 4) = v62;
    *(v60 + 12) = 2080;
    sub_1A84904BC(&qword_1EB2E46C0, MEMORY[0x1E6969530]);
    v63 = sub_1A84E676C();
    v64 = v57;
    v66 = v65;
    v96 = v58;
    v67 = *(v7 + 8);
    v67(v14, v6);
    v68 = sub_1A82446BC(v63, v66, &v100);

    *(v60 + 14) = v68;
    *(v60 + 22) = 2080;
    v69 = sub_1A84E676C();
    v71 = v70;
    v67(v64, v6);
    v72 = sub_1A82446BC(v69, v71, &v100);

    *(v60 + 24) = v72;
    v73 = v96;
    _os_log_impl(&dword_1A823F000, v96, v98, "Dropping service for sending result %s because task's startTime (%s) is older than the chat's last known start time (%s)", v60, 0x20u);
    v74 = v97;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v74, -1, -1);
    MEMORY[0x1AC56D3F0](v60, -1, -1);
  }

  else
  {

    v67 = *(v7 + 8);
    v67(v57, v6);
    v67(v14, v6);
  }

  return (v67)(v16, v6);
}

void sub_1A84888EC(void *a1)
{
  v1 = [a1 bestResult];
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setSupportsEncryption_];
    }
  }
}

void sub_1A8488980()
{
  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v3;
  v5 = [objc_opt_self() iMessageService];
  v6 = [v4 accountsForService_];

  if (!v6)
  {
LABEL_32:
    __break(1u);
    return;
  }

  sub_1A8244B68(0, &qword_1EB2E4708, off_1E780D7A0);
  v7 = sub_1A84E5FFC();

  if (v7 >> 62)
  {
    if (sub_1A84E654C())
    {
LABEL_5:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC56AF80](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 uniqueID];

      if (!v10)
      {
        return;
      }

      v11 = sub_1A84E5DBC();
      v35 = v12;
      v36 = v11;

      v6 = objc_opt_self();
      v2 = [v6 sharedController];
      v13 = [v0 participants];
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      v1 = sub_1A84E5FFC();

      if (!(v1 >> 62))
      {
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_11:
          v33 = v2;
          v34 = v0;
          v37 = MEMORY[0x1E69E7CC0];
          sub_1A83EF534(0, v14 & ~(v14 >> 63), 0);
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = 0;
            v16 = v37;
            do
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x1AC56AF80](v15, v1);
              }

              else
              {
                v17 = *(v1 + 8 * v15 + 32);
              }

              v18 = v17;
              v19 = [v18 ID];
              v20 = sub_1A84E5DBC();
              v22 = v21;

              v24 = *(v37 + 16);
              v23 = *(v37 + 24);
              if (v24 >= v23 >> 1)
              {
                sub_1A83EF534((v23 > 1), v24 + 1, 1);
                v0 = v34;
              }

              ++v15;
              *(v37 + 16) = v24 + 1;
              v25 = v37 + 16 * v24;
              *(v25 + 32) = v20;
              *(v25 + 40) = v22;
            }

            while (v14 != v15);

            v2 = v33;
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_27:

        v16 = MEMORY[0x1E69E7CC0];
LABEL_28:
        sub_1A83EA2FC(&qword_1EB2E8570, &qword_1A8508BD8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A85013E0;
        v27 = *MEMORY[0x1E69A7AF0];
        *(inited + 32) = sub_1A84E5DBC();
        *(inited + 40) = v28;
        *(inited + 48) = v36;
        *(inited + 56) = v35;
        v29 = sub_1A83EBA20(inited);
        swift_setDeallocating();
        sub_1A824B2D4(inited + 32, &qword_1EB2E8578, &qword_1A8508BE0);
        v30 = [v6 sharedController];
        v31 = [v30 reachabilityContextForChat_];

        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1A8456DFC(v16, v29, v31, v2, v32);

        return;
      }

LABEL_26:
      v14 = sub_1A84E654C();
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }
}

void sub_1A8488DF8(void *a1)
{
  v1 = [a1 resultsForServiceName_];
  sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
  v2 = sub_1A84E5FFC();

  if (v2 >> 62)
  {
    if (sub_1A84E654C())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1AC56AF80](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1A848FEEC(v4);
  }
}

uint64_t sub_1A8488F80()
{
  if ([v0 valueForChatProperty_])
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1A824B2D4(v5, &qword_1EB2E66B0, &qword_1A8500960);
  }

  return 0;
}

uint64_t sub_1A8489050()
{
  v1 = [v0 participants];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v2 = sub_1A84E5FFC();

  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_1A84E654C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69A83E8];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC56AF80](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v6 ID];
      if (!v9)
      {
        sub_1A84E5DBC();
        v9 = sub_1A84E5D8C();
      }

      v10 = [objc_opt_self() mapID:v9 usingKey:v5];

      v11 = sub_1A84E5DBC();
      v13 = v12;

      v14 = sub_1A84E5D8C();
      LODWORD(v10) = IMStringIsEmail();

      if (v10)
      {
        break;
      }

      ++v4;
      if (v8 == v3)
      {
        goto LABEL_15;
      }
    }

    if (qword_1EB2E4740 != -1)
    {
      swift_once();
    }

    v16 = sub_1A84E5C9C();
    sub_1A824431C(v16, qword_1EB2E4748);

    v17 = sub_1A84E5C7C();
    v18 = sub_1A84E617C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1A82446BC(v11, v13, &v21);
      _os_log_impl(&dword_1A823F000, v17, v18, "%s was email, so not retargeting", v19, 0xCu);
      sub_1A8244788(v20);
      MEMORY[0x1AC56D3F0](v20, -1, -1);
      MEMORY[0x1AC56D3F0](v19, -1, -1);
    }

    swift_bridgeObjectRelease_n();

    return 1;
  }

  else
  {
LABEL_15:
    swift_bridgeObjectRelease_n();
    return 0;
  }
}

uint64_t sub_1A8489360()
{
  v1 = [v0 lastAddressedHandleID];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() mapID:v1 usingKey:*MEMORY[0x1E69A83F0]];

    v4 = sub_1A84E5DBC();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v0 account];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 displayName];

  if (!v10)
  {
    return 0;
  }

  sub_1A84E5DBC();

LABEL_9:
  v11 = sub_1A84E5D8C();

  IsEmail = IMStringIsEmail();

  return IsEmail;
}

uint64_t sub_1A848949C()
{
  v1 = v0;
  v2 = [v0 account];
  v3 = [v2 service];

  sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
  v4 = [swift_getObjCClassFromMetadata() iMessageService];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = sub_1A84E631C();

      if ((v6 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_7;
    }

    v7 = 1;
LABEL_17:

    return v7;
  }

  if (v4)
  {
    v7 = 1;
    v3 = v4;
    goto LABEL_17;
  }

LABEL_7:
  if ([v1 isGroupChat] && ((sub_1A8489050() & 1) != 0 || (sub_1A8489360() & 1) != 0))
  {
    if (qword_1EB2E4740 != -1)
    {
      swift_once();
    }

    v8 = sub_1A84E5C9C();
    sub_1A824431C(v8, qword_1EB2E4748);
    v9 = v1;
    v3 = sub_1A84E5C7C();
    v10 = sub_1A84E617C();

    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v3, v10, "This group contains emails, don't downgrade: %@", v11, 0xCu);
      sub_1A824B2D4(v12, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v12, -1, -1);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
    }

    v7 = 0;
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_1A84896C4(void *a1)
{
  v2 = v1;
  v4 = [v1 account];
  v5 = [v4 service];

  sub_1A8244B68(0, &unk_1ED767528, off_1E780DCE8);
  v6 = [swift_getObjCClassFromMetadata() rcsService];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v9 = 1;
      goto LABEL_15;
    }

    v8 = sub_1A84E631C();

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v6)
  {
    v9 = 1;
    v5 = v6;
    goto LABEL_15;
  }

  v10 = [v2 account];
  if (!v10 || (v11 = v10, v12 = [v10 login], v11, !v12))
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  v14 = [v2 lastAddressedSIMID];
  v15 = [v13 IMMMSMaxRecipientsForPhoneNumber:v12 simID:v14];

  v16 = [a1 bestResult];
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  v18 = [v16 service];

  v19 = sub_1A84E5DBC();
  v21 = v20;

  v22 = *MEMORY[0x1E69A7AE0];
  if (v19 == sub_1A84E5DBC() && v21 == v23)
  {
  }

  else
  {
    v24 = sub_1A84E67AC();

    if ((v24 & 1) == 0)
    {
      return 1;
    }
  }

  if (![v2 isGroupChat])
  {
    return 1;
  }

  v25 = [v2 participantsWithState_];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v26 = sub_1A84E5FFC();

  v27 = v26 >> 62 ? sub_1A84E654C() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v27 <= v15)
  {
    return 1;
  }

  if (qword_1EB2E4740 != -1)
  {
    swift_once();
  }

  v28 = sub_1A84E5C9C();
  sub_1A824431C(v28, qword_1EB2E4748);
  v29 = v2;
  v5 = sub_1A84E5C7C();
  v30 = sub_1A84E617C();

  if (os_log_type_enabled(v5, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v29;
    *v32 = v29;
    v33 = v29;
    _os_log_impl(&dword_1A823F000, v5, v30, "This group contains more participants than MMS allows, don't downgrade: %@", v31, 0xCu);
    sub_1A824B2D4(v32, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v32, -1, -1);
    MEMORY[0x1AC56D3F0](v31, -1, -1);
  }

  v9 = 0;
LABEL_15:

  return v9;
}

void sub_1A8489AA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedController];
  v27 = [v6 reachabilityContextForChat_];

  v7 = [v27 lastUsedServiceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A84E5DBC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_1A8490204(v9, v11);

  v13 = sub_1A8490204(a1, a2);
  if (v12 != v13 && (v12 == 4 || v13 == 4))
  {
    v14 = v13;
    v15 = [objc_opt_self() sharedInstance];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 isRCSEnabled];

      v18 = 2 * (v12 == 4);
      if (v14 == 4)
      {
        v18 = 1;
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 3;
      }

      sub_1A83EA2FC(&qword_1EB2E8580, &qword_1A8508BE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A8505C20;
      *(inited + 32) = 0x73756F6976657250;
      v21 = MEMORY[0x1E69E6810];
      *(inited + 40) = 0xEF65636976726553;
      *(inited + 48) = v12;
      *(inited + 72) = v21;
      strcpy((inited + 80), "CurrentService");
      *(inited + 95) = -18;
      *(inited + 96) = v14;
      *(inited + 120) = v21;
      *(inited + 128) = 0xD000000000000013;
      *(inited + 168) = v21;
      *(inited + 136) = 0x80000001A85332B0;
      *(inited + 144) = v19;
      v22 = sub_1A8242810(inited);
      swift_setDeallocating();
      sub_1A83EA2FC(&unk_1EB2E66C0, &unk_1A8500970);
      swift_arrayDestroy();
      v23 = [objc_opt_self() sharedInstance];
      if (v23)
      {
        v24 = v23;
        v25 = *MEMORY[0x1E69A76A0];
        sub_1A84A5368(v22);

        v26 = sub_1A84E5D2C();

        [v24 trackEvent:v25 withDictionary:v26];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
  }
}

unint64_t sub_1A8489DCC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1A84A17A4();

  return sub_1A8489FE4(a1, v4);
}

unint64_t sub_1A8489E10(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1A84E5DBC();
  sub_1A84E684C();
  sub_1A84E5E5C();
  v4 = sub_1A84E687C();

  return sub_1A848A260(a1, v4);
}

unint64_t sub_1A8489EA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1A84E684C();
  MEMORY[0x1AC56B360](a1);
  v4 = sub_1A84E687C();

  return sub_1A848A364(a1, v4);
}

unint64_t sub_1A8489F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_1A84E684C();
  sub_1A84E5E5C();
  MEMORY[0x1AC56B350](a3);
  v8 = sub_1A84E687C();

  return sub_1A848A3D0(a1, a2, a3, v8);
}

unint64_t sub_1A8489FA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A84E630C();

  return sub_1A848A4B4(a1, v5);
}

unint64_t sub_1A8489FE4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v25 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xE300000000000000;
            v10 = 5456722;
          }

          else
          {
            v10 = 0x74696C6C65746153;
            v11 = 0xEC000000534D5365;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v10 = 5459283;
          }

          else
          {
            v10 = 0x656D695465636146;
          }

          if (v6 == 4)
          {
            v11 = 0xE300000000000000;
          }

          else
          {
            v11 = 0xE800000000000000;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0xE800000000000000;
        }

        else
        {
          v7 = 0xEC0000006574694CLL;
        }

        if (*(*(v25 + 48) + v4))
        {
          v8 = 7958113;
        }

        else
        {
          v8 = 0x6E776F6E6B6E75;
        }

        if (*(*(v25 + 48) + v4))
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0x6567617373654D69;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }
      }

      v12 = 0x74696C6C65746153;
      if (v5 == 6)
      {
        v12 = 5456722;
      }

      v13 = 0xEC000000534D5365;
      if (v5 == 6)
      {
        v13 = 0xE300000000000000;
      }

      v14 = 5459283;
      if (v5 == 4)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v14 = 0x656D695465636146;
        v15 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = v5 == 2 ? 0xE800000000000000 : 0xEC0000006574694CLL;
      v17 = v5 ? 7958113 : 0x6E776F6E6B6E75;
      v18 = v5 ? 0xE300000000000000 : 0xE700000000000000;
      if (v5 <= 1)
      {
        v16 = v18;
      }

      else
      {
        v17 = 0x6567617373654D69;
      }

      v19 = v5 <= 3 ? v17 : v12;
      v20 = v5 <= 3 ? v16 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_1A84E67AC();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A848A260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A84E5DBC();
      v9 = v8;
      if (v7 == sub_1A84E5DBC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1A84E67AC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A848A364(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A848A3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_1A84E67AC()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1A848A4B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A84E631C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A848A588(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ImportExport.Message();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E8590, &qword_1A8508BF8);
  v44 = a2;
  result = sub_1A84E656C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1A8462480(v31, v45);
      }

      else
      {
        sub_1A8490458(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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
      *v21 = v28;
      v21[1] = v29;
      result = sub_1A8462480(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
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

uint64_t sub_1A848A8C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E6630, &qword_1A85008F8);
  v38 = a2;
  result = sub_1A84E656C();
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
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

uint64_t sub_1A848AB64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E6610, &qword_1A85008D8);
  v37 = a2;
  result = sub_1A84E656C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_1A8243DDC(v23, v38);
      }

      else
      {
        sub_1A8244F40(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1A84E5DBC();
      sub_1A84E684C();
      sub_1A84E5E5C();
      v26 = sub_1A84E687C();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1A8243DDC(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1A848AE48(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1A83EA2FC(a3, a4);
  v36 = a2;
  result = sub_1A84E656C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
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
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_19:
      v25 = v22 | (v11 << 6);
      v26 = *(*(v7 + 48) + v25);
      v27 = *(*(v7 + 56) + 8 * v25);
      if ((v36 & 1) == 0)
      {
        v28 = v27;
      }

      v29 = *(v10 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();

      result = sub_1A84E687C();
      v18 = -1 << *(v10 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v17 + 8 * (v19 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v18) >> 6;
        while (++v20 != v31 || (v30 & 1) == 0)
        {
          v32 = v20 == v31;
          if (v20 == v31)
          {
            v20 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v20);
          if (v33 != -1)
          {
            v21 = __clz(__rbit64(~v33)) + (v20 << 6);
            goto LABEL_11;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v17 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v10 + 48) + v21) = v26;
      *(*(v10 + 56) + 8 * v21) = v27;
      ++*(v10 + 16);
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_19;
      }
    }

    if (v36)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1A848B1B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E6640, &qword_1A8500908);
  v33 = a2;
  result = sub_1A84E656C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();

      result = sub_1A84E687C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1A848B538(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E6648, &qword_1A8500910);
  v41 = a2;
  result = sub_1A84E656C();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = *(v5 + 56) + 144 * v24;
      if (v41)
      {
        v42 = *(v26 + 8);
        v45 = *(v26 + 24);
        v43 = *(v26 + 40);
        v44 = *v26;
        v46 = *(v26 + 48);
        v47 = *(v26 + 64);
        v48 = *(v26 + 56);
        v50 = *(v26 + 72);
        v49 = *(v26 + 88);
        v51 = *(v26 + 96);
        v27 = *(v26 + 120);
        v54 = *(v26 + 112);
        v55 = *(v26 + 128);
        v52 = *(v26 + 80);
        v53 = *(v26 + 136);
      }

      else
      {
        *v57 = *v26;
        v28 = *(v26 + 64);
        v30 = *(v26 + 16);
        v29 = *(v26 + 32);
        v58 = *(v26 + 48);
        v59 = v28;
        *&v57[16] = v30;
        *&v57[32] = v29;
        v31 = *(v26 + 128);
        v33 = *(v26 + 80);
        v32 = *(v26 + 96);
        v62 = *(v26 + 112);
        v63 = v31;
        v60 = v33;
        v61 = v32;
        v54 = v62;
        v55 = v31;
        v27 = BYTE8(v62);
        v51 = v32;
        v52 = v33;
        v53 = *(&v31 + 1);
        v50 = BYTE8(v59);
        v48 = *(&v58 + 1);
        v49 = *(&v33 + 1);
        v46 = v58;
        v47 = v59;
        v45 = *&v57[24];
        v43 = *&v57[40];
        v44 = *v57;
        v42 = *&v57[8];
        sub_1A8400E7C(v57, v56);
      }

      v34 = *(v8 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();

      result = sub_1A84E687C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v16) >> 6;
        while (++v18 != v36 || (v35 & 1) == 0)
        {
          v37 = v18 == v36;
          if (v18 == v36)
          {
            v18 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v18);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      v57[0] = v27;
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = *(v8 + 56) + 144 * v19;
      *v20 = v44;
      *(v20 + 8) = v42;
      *(v20 + 24) = v45;
      *(v20 + 40) = v43;
      *(v20 + 48) = v46;
      *(v20 + 56) = v48;
      *(v20 + 64) = v47;
      *(v20 + 72) = v50;
      *(v20 + 80) = v52;
      *(v20 + 88) = v49;
      *(v20 + 96) = v51;
      *(v20 + 112) = v54;
      *(v20 + 120) = v27;
      *(v20 + 128) = v55;
      *(v20 + 136) = v53;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_19;
      }
    }

    if (v41)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A848BA0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
  v36 = a2;
  result = sub_1A84E656C();
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
        sub_1A8243DDC(v25, v37);
      }

      else
      {
        sub_1A8244F40(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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
      result = sub_1A8243DDC(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1A848BCC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
  result = sub_1A84E656C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1A8243DDC((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1A824B334(v24, &v38);
        sub_1A8244F40(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1A84E63FC();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1A8243DDC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A848BF7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E6668, &qword_1A8500930);
  v40 = a2;
  result = sub_1A84E656C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A848C23C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E65F0, &qword_1A8500898);
  v38 = a2;
  result = sub_1A84E656C();
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
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = *v22;
      v24 = v22[1];
      v39 = v22[2];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {

        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();
      MEMORY[0x1AC56B350](v39);
      result = sub_1A84E687C();
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
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v39;
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

uint64_t sub_1A848C508(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A83EA2FC(&qword_1EB2E65D0, &qword_1A8500878);
  result = sub_1A84E656C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1A84E630C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A848C778(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1A83EA2FC(a3, a4);
  v41 = a2;
  result = sub_1A84E656C();
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
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
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

uint64_t sub_1A848CA28(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1A83EA2FC(a3, a4);
  v40 = a2;
  result = sub_1A84E656C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1A84E684C();
      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
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

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_1A848CCC8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A84E684C();

      sub_1A84E5E5C();
      v13 = sub_1A84E687C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ImportExport.Message() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A848CEB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1A84E684C();

      sub_1A84E5E5C();
      v14 = sub_1A84E687C();

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

uint64_t sub_1A848D064(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A84E684C();

      sub_1A84E5E5C();
      v13 = sub_1A84E687C();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_1A848D214(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A84E63DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1A84E684C();

      sub_1A84E5E5C();
      v13 = sub_1A84E687C();

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

uint64_t sub_1A848D3C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A824B390(a2, a3);
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
      sub_1A848E5E4();
      goto LABEL_7;
    }

    sub_1A848A588(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1A824B390(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A84E67EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ImportExport.Message() - 8) + 72) * v12;

    return sub_1A84672B8(a1, v20);
  }

LABEL_13:
  sub_1A848E3FC(v12, a2, a3, a1, v18);
}

_OWORD *sub_1A848D528(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A8489E10(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1A848E97C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1A848AB64(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1A8489E10(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1A84E67EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_1A8244788(v20);

    return sub_1A8243DDC(a1, v20);
  }

  else
  {
    sub_1A848E494(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_1A848D6A4(uint64_t a1, unsigned __int8 a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_1A8489DCC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v24 = *v8;
    if (v19)
    {
      v25 = v24[7];
      v26 = *(v25 + 8 * result);
      *(v25 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8](result);
    }

    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + result) = a2;
    *(v24[7] + 8 * result) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_1A848EB24(a4, a5);
    result = v21;
    goto LABEL_8;
  }

  sub_1A848AE48(v18, a3 & 1, a4, a5);
  v22 = *v8;
  result = sub_1A8489DCC(a2);
  if ((v19 & 1) == (v23 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1A84E67EC();
  __break(1u);
  return MEMORY[0x1EEE66BB8](result);
}

unint64_t sub_1A848D810(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A8489DCC(a2);
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
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A848B1B8(v14, a3 & 1);
      v18 = *v4;
      result = sub_1A8489DCC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1A84E67EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A848EC70();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
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

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_1A848D95C(_OWORD *a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A8489DCC(a2);
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
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A848B538(v14, a3 & 1);
      v18 = *v4;
      result = sub_1A8489DCC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1A84E67EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A848EDCC();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    v22 = (v20[7] + 144 * result);
    *v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    v25 = a1[4];
    v22[3] = a1[3];
    v22[4] = v25;
    v22[1] = v23;
    v22[2] = v24;
    v26 = a1[5];
    v27 = a1[6];
    v28 = a1[8];
    v22[7] = a1[7];
    v22[8] = v28;
    v22[5] = v26;
    v22[6] = v27;
    v29 = v20[2];
    v13 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v13)
    {
      v20[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 144 * result;

  return sub_1A8490504(a1, v21);
}

_OWORD *sub_1A848DAD4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A824B390(a2, a3);
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
      sub_1A848EF90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A848BA0C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1A824B390(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1A84E67EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1A8244788(v23);

    return sub_1A8243DDC(a1, v23);
  }

  else
  {
    sub_1A848E4FC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1A848DC24(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A8250C0C(a2);
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
      sub_1A848F134();
      goto LABEL_7;
    }

    sub_1A848BCC4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1A8250C0C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A824B334(a2, v22);
      return sub_1A848E568(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1A84E67EC();
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
  sub_1A8244788(v17);

  return sub_1A8243DDC(a1, v17);
}

uint64_t sub_1A848DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A824B390(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A848BF7C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1A824B390(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1A84E67EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A848F2D8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1A848DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A8489F0C(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A848C23C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1A8489F0C(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        v13 = sub_1A84E67EC();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v13);
      }
    }

    else
    {
      v21 = v13;
      sub_1A848F450();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;

    return MEMORY[0x1EEE66BB8](v13);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 24 * v13);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  *(v24[7] + 8 * v13) = a1;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v29;
}

uint64_t sub_1A848E098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1A824B390(a2, a3);
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
      sub_1A848C778(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1A824B390(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1A84E67EC();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1A848F740(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
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

uint64_t sub_1A848E25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A824B390(a2, a3);
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
      sub_1A848CA28(v16, a4 & 1, &qword_1EB2E65C8, &qword_1A8500870);
      v20 = *v5;
      v11 = sub_1A824B390(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1A84E67EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A848F8B0(&qword_1EB2E65C8, &qword_1A8500870);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
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

uint64_t sub_1A848E3FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ImportExport.Message();
  result = sub_1A8462480(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

_OWORD *sub_1A848E494(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A8243DDC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1A848E4FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A8243DDC(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1A848E568(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A8243DDC(a3, (a4[7] + 32 * a1));
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

void *sub_1A848E5E4()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Message();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A83EA2FC(&qword_1EB2E8590, &qword_1A8508BF8);
  v5 = *v0;
  v6 = sub_1A84E655C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1A8490458(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1A8462480(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_1A848E814()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6630, &qword_1A85008F8);
  v2 = *v0;
  v3 = sub_1A84E655C();
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

id sub_1A848E97C()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6610, &qword_1A85008D8);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        sub_1A8244F40(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1A8243DDC(v19, (*(v4 + 56) + 32 * v17));
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

id sub_1A848EB24(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1A83EA2FC(a1, a2);
  v4 = *v2;
  v5 = sub_1A84E655C();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
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

void *sub_1A848EC70()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6640, &qword_1A8500908);
  v2 = *v0;
  v3 = sub_1A84E655C();
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

void *sub_1A848EDCC()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6648, &qword_1A8500910);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 144 * v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[4];
        v37 = v19[3];
        v38 = v22;
        v23 = v19[8];
        v25 = v19[5];
        v24 = v19[6];
        v41 = v19[7];
        v42 = v23;
        v39 = v25;
        v40 = v24;
        v34 = *v19;
        v35 = v21;
        v36 = v20;
        *(*(v4 + 48) + v17) = v18;
        v26 = (*(v4 + 56) + 144 * v17);
        *v26 = v34;
        v27 = v35;
        v28 = v36;
        v29 = v38;
        v26[3] = v37;
        v26[4] = v29;
        v26[1] = v27;
        v26[2] = v28;
        v30 = v39;
        v31 = v40;
        v32 = v42;
        v26[7] = v41;
        v26[8] = v32;
        v26[5] = v30;
        v26[6] = v31;
        result = sub_1A8400E7C(&v34, &v33);
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

void *sub_1A848EF90()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        sub_1A8244F40(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A8243DDC(v25, (*(v4 + 56) + v22));
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

void *sub_1A848F134()
{
  v1 = v0;
  sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        sub_1A824B334(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A8244F40(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A8243DDC(v22, (*(v4 + 56) + v17));
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

void *sub_1A848F2D8()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E6668, &qword_1A8500930);
  v2 = *v0;
  v3 = sub_1A84E655C();
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

id sub_1A848F450()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E65F0, &qword_1A8500898);
  v2 = *v0;
  v3 = sub_1A84E655C();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 24 * v17);
        *v23 = v20;
        v23[1] = v19;
        v23[2] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

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

void *sub_1A848F5C8()
{
  v1 = v0;
  sub_1A83EA2FC(&qword_1EB2E65D0, &qword_1A8500878);
  v2 = *v0;
  v3 = sub_1A84E655C();
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

id sub_1A848F740(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1A83EA2FC(a1, a2);
  v4 = *v2;
  v5 = sub_1A84E655C();
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

void *sub_1A848F8B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1A83EA2FC(a1, a2);
  v4 = *v2;
  v5 = sub_1A84E655C();
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

uint64_t sub_1A848FA10(uint64_t a1)
{
  v2 = sub_1A84E692C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E8598, &qword_1A8508C00);
    v10 = sub_1A84E644C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1A84904BC(&qword_1EB2E85A0, MEMORY[0x1E696A1C0]);
      v18 = sub_1A84E5D5C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1A84904BC(&qword_1EB2E85A8, MEMORY[0x1E696A1C0]);
          v25 = sub_1A84E5D7C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A848FD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&unk_1EB2E8EB0, &qword_1A850B5B0);
    v3 = sub_1A84E644C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1A84E684C();

      sub_1A84E5E5C();
      result = sub_1A84E687C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1A84E67AC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1A848FEEC(void *a1)
{
  v2 = [a1 ktData];
  if (v2)
  {
    v3 = v2;
    sub_1A8244B68(0, &qword_1EB2E4730, 0x1E69A52B8);
    v4 = sub_1A84E5D3C();

    v5 = [objc_opt_self() sharedController];
    sub_1A84A58E0(v4);

    v6 = sub_1A84E5D2C();

    [v5 setKTVerifierResultsFromIDSInfoResultsDictionary_];
  }

  v7 = [a1 selfKTData];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() sharedController];
    sub_1A83EA2FC(&qword_1EB2E8580, &qword_1A8508BE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A85013E0;
    v11 = [v8 uri];
    v12 = sub_1A84E5DBC();
    v14 = v13;

    *(inited + 32) = v12;
    *(inited + 40) = v14;
    *(inited + 72) = sub_1A8244B68(0, &qword_1EB2E4730, 0x1E69A52B8);
    *(inited + 48) = v8;
    v15 = v8;
    sub_1A8242810(inited);
    swift_setDeallocating();
    sub_1A824B2D4(inited + 32, &unk_1EB2E66C0, &unk_1A8500970);
    v16 = sub_1A84E5D2C();

    [v9 setKTVerifierResultsFromIDSInfoResultsDictionary_];
  }
}

void sub_1A8490160(char **a1)
{
  v3 = *(sub_1A84E56DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_1A8487B2C(a1, v5, v1 + v4, v7);
}

uint64_t sub_1A8490204(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69A7AF0];
  v5 = sub_1A84E5DBC();
  if (!a2)
  {

    v14 = *MEMORY[0x1E69A7AF8];
    sub_1A84E5DBC();

    v15 = *MEMORY[0x1E69A7AE0];
    sub_1A84E5DBC();

    v16 = *MEMORY[0x1E69A7AD8];
    sub_1A84E5DBC();

    v17 = *MEMORY[0x1E69A7AE8];
    sub_1A84E5DBC();

    return 0;
  }

  if (v5 == a1 && v6 == a2)
  {

    return 1;
  }

  v8 = sub_1A84E67AC();

  if (v8)
  {
    return 1;
  }

  v9 = *MEMORY[0x1E69A7AF8];
  if (sub_1A84E5DBC() == a1 && v10 == a2)
  {

    return 2;
  }

  v12 = sub_1A84E67AC();

  if (v12)
  {
    return 2;
  }

  v18 = *MEMORY[0x1E69A7AE0];
  if (sub_1A84E5DBC() == a1 && v19 == a2)
  {

    return 3;
  }

  v21 = sub_1A84E67AC();

  if (v21)
  {
    return 3;
  }

  v22 = *MEMORY[0x1E69A7AD8];
  if (sub_1A84E5DBC() == a1 && v23 == a2)
  {

    return 4;
  }

  v24 = sub_1A84E67AC();

  if (v24)
  {
    return 4;
  }

  v25 = *MEMORY[0x1E69A7AE8];
  if (sub_1A84E5DBC() == a1 && v26 == a2)
  {

    return 5;
  }

  v27 = sub_1A84E67AC();

  if ((v27 & 1) == 0)
  {
    return 0;
  }

  return 5;
}

uint64_t sub_1A8490458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Message();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84904BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8490568@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v299 = a3;
  v293 = a4;
  v7 = sub_1A84E5C9C();
  v288 = *(v7 - 8);
  v289 = v7;
  v8 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v290 = &v259 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = type metadata accessor for ImportExport.MessagePart();
  v326 = *(v303 - 8);
  v10 = *(v326 + 64);
  v11 = MEMORY[0x1EEE9AC00](v303);
  v381 = &v259 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v333 = &v259 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v332 = &v259 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v305 = &v259 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v302 = &v259 - v19;
  v20 = sub_1A84E5B9C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v306 = &v259 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_1A84E577C();
  v329 = *(v330 - 8);
  v23 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v330);
  v328 = &v259 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_1A84E56DC();
  v335 = *(v334 - 8);
  v25 = *(v335 + 64);
  v26 = MEMORY[0x1EEE9AC00](v334);
  v331 = &v259 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v327 = &v259 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v323 = &v259 - v30;
  v31 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v325 = &v259 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v324 = &v259 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v259 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v294 = &v259 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v259 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v259 - v45;
  v47 = [a1 guid];
  v304 = sub_1A84E5DBC();
  v307 = v48;

  v49 = *(a2 + 16);
  v291 = *(a2 + 8);
  v295 = v49;

  v50 = [a1 isFromMe];
  v297 = a1;
  if (v50)
  {
    v51 = v4;
    v292 = v44;
    v52 = *(a2 + 176);
    v53 = *(a2 + 208);
    v369 = *(a2 + 192);
    v370 = v53;
    v54 = *(a2 + 112);
    v55 = *(a2 + 144);
    v365 = *(a2 + 128);
    v366 = v55;
    v56 = *(a2 + 144);
    v57 = *(a2 + 176);
    v367 = *(a2 + 160);
    v368 = v57;
    v58 = *(a2 + 112);
    v363 = *(a2 + 96);
    v364 = v58;
    v377 = v52;
    v378 = v369;
    v59 = *(a2 + 224);
    v379 = *(a2 + 208);
    v380 = v59;
    v373 = v54;
    v374 = v365;
    v375 = v56;
    v376 = v367;
    v371 = v59;
    v372 = v363;
    sub_1A8400E7C(&v363, &v354);
  }

  else
  {
    v62 = a2;
    v63 = [a1 handleRecord];
    sub_1A8477A9C(v63, a1, &v363);
    if (v4)
    {

      return sub_1A849268C(v62, type metadata accessor for ImportExport.Conversation);
    }

    v360 = v369;
    v361 = v370;
    v362 = v371;
    v356 = v365;
    v357 = v366;
    v358 = v367;
    v359 = v368;
    v354 = v363;
    v355 = v364;
    sub_1A84780C8(v62, &v372);
    a2 = v62;
    v51 = 0;
    v292 = v44;
    v351 = v360;
    v352 = v361;
    v353 = v362;
    v347 = v356;
    v348 = v357;
    v349 = v358;
    v350 = v359;
    v345 = v354;
    v346 = v355;
    sub_1A8400ED8(&v345);
  }

  v369 = v378;
  v370 = v379;
  v371 = v380;
  v365 = v374;
  v366 = v375;
  v367 = v376;
  v368 = v377;
  v363 = v372;
  v364 = v373;
  v60 = v297;
  sub_1A84781D4(v297, &v354);
  if (v51)
  {
    sub_1A849268C(a2, type metadata accessor for ImportExport.Conversation);
    sub_1A8400ED8(&v363);
  }

  v301 = 0;
  v351 = v360;
  v352 = v361;
  v353 = v362;
  v347 = v356;
  v348 = v357;
  v349 = v358;
  v350 = v359;
  v345 = v354;
  v346 = v355;
  IMDMessageRecord.messageState.getter(&v344);
  v321 = v344;
  v64 = [v60 subject];
  if (v64)
  {
    v65 = v64;
    v269 = sub_1A84E5DBC();
    v276 = v66;
  }

  else
  {
    v269 = 0;
    v276 = 0;
  }

  v67 = v334;
  v68 = v297;
  if ([v297 rawDate])
  {
    v69 = [v68 date];
    sub_1A84E569C();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = *(v335 + 56);
  v72 = 1;
  v287 = v46;
  v71(v46, v70, 1, v67);
  v73 = [v68 rawDateDelivered];
  v277 = a2;
  if (v73)
  {
    v74 = [v68 dateDelivered];
    v75 = v292;
    sub_1A84E569C();

    v72 = 0;
  }

  else
  {
    v75 = v292;
  }

  v76 = 1;
  v292 = v75;
  v71(v75, v72, 1, v67);
  if ([v68 rawDateRead])
  {
    v77 = [v68 dateRead];
    v78 = v294;
    sub_1A84E569C();

    v76 = 0;
  }

  else
  {
    v78 = v294;
  }

  v71(v78, v76, 1, v67);
  v79 = [v68 country];
  if (v79)
  {
    v80 = v79;
    v268 = sub_1A84E5DBC();
    v275 = v81;
  }

  else
  {
    v268 = 0;
    v275 = 0xE000000000000000;
  }

  v82 = v305;
  v83 = [v68 serviceName];
  sub_1A84E5DBC();
  v85 = v84;

  LOBYTE(v336[0]) = 0;
  v86 = v297;
  ImportExport.ServiceType.init(for:default:)(v85, v336, &v343);
  v280 = v343;
  v87 = [v86 destinationCallerID];
  if (v87)
  {
    v88 = v87;
    v265 = sub_1A84E5DBC();
    v273 = v89;
  }

  else
  {
    v265 = 0;
    v273 = 0;
  }

  v90 = v287;
  v91 = [v86 fallbackHash];
  if (v91)
  {
    v92 = v91;
    v267 = sub_1A84E5DBC();
    v274 = v93;
  }

  else
  {
    v267 = 0;
    v274 = 0;
  }

  v266 = sub_1A84923BC();
  v272 = v94;
  v95 = [v86 messageSummaryInfo];
  if (v95)
  {
    v96 = v95;
    v271 = sub_1A84E5D3C();
  }

  else
  {
    v271 = 0;
  }

  v264 = [v86 rowID];
  sub_1A8243D74(v90, v39, &qword_1EB2E6F48, &unk_1A8501F00);
  v97 = v335;
  v98 = *(v335 + 48);
  v99 = v67;
  v100 = v98(v39, 1, v67);
  v322 = v98;
  if (v100 != 1)
  {
    (*(v97 + 32))(v323, v39, v67);
    v320 = objc_opt_self();
    v102 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      goto LABEL_119;
    }

    goto LABEL_35;
  }

  sub_1A824B2D4(v39, &qword_1EB2E6F48, &unk_1A8501F00);
  v283 = 0;
  v286 = 0;
  for (i = v292; ; i = v292)
  {
    v110 = v324;
    sub_1A8243D74(i, v324, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v98(v110, 1, v67) == 1)
    {
      sub_1A824B2D4(v110, &qword_1EB2E6F48, &unk_1A8501F00);
      v282 = 0;
      v285 = 0;
      v111 = v294;
    }

    else
    {
      (*(v97 + 32))(v327, v110, v67);
      v324 = objc_opt_self();
      v112 = sub_1A84E565C();
      v111 = v294;
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v113 = v330;
      v114 = sub_1A824431C(v330, qword_1EB2E7FC8);
      swift_beginAccess();
      v115 = v329;
      v116 = v328;
      (*(v329 + 16))(v328, v114, v113);
      v117 = sub_1A84E576C();
      (*(v115 + 8))(v116, v113);
      v118 = [v324 stringFromDate:v112 timeZone:v117 formatOptions:1907];

      v282 = sub_1A84E5DBC();
      v285 = v119;

      v97 = v335;
      v67 = v334;
      (*(v335 + 8))(v327, v334);
    }

    v120 = v331;
    v121 = v111;
    v122 = v325;
    sub_1A8243D74(v121, v325, &qword_1EB2E6F48, &unk_1A8501F00);
    if (v322(v122, 1, v67) == 1)
    {
      sub_1A824B2D4(v122, &qword_1EB2E6F48, &unk_1A8501F00);
      v281 = 0;
      v284 = 0;
    }

    else
    {
      (*(v97 + 32))(v120, v122, v67);
      v327 = objc_opt_self();
      v123 = v97;
      v124 = sub_1A84E565C();
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v125 = v330;
      v126 = sub_1A824431C(v330, qword_1EB2E7FC8);
      swift_beginAccess();
      v127 = v329;
      v128 = v328;
      (*(v329 + 16))(v328, v126, v125);
      v129 = sub_1A84E576C();
      (*(v127 + 8))(v128, v125);
      v130 = [v327 stringFromDate:v124 timeZone:v129 formatOptions:1907];

      v281 = sub_1A84E5DBC();
      v284 = v131;

      (*(v123 + 8))(v331, v334);
    }

    v263 = type metadata accessor for ImportExport.Message();
    v132 = *(v263 + 80);
    *&v336[0] = 0;
    sub_1A84E5B8C();
    v133 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v270 = v132;
    v300 = v133;
    sub_1A84E594C();
    if (!v285)
    {
      v136 = v286;
      v135 = v321;
      v137 = v284;
      if (!v286)
      {
        goto LABEL_56;
      }

LABEL_52:
      v138 = HIBYTE(v136) & 0xF;
      if ((v136 & 0x2000000000000000) == 0)
      {
        v138 = v283 & 0xFFFFFFFFFFFFLL;
      }

      if (v138)
      {
        v135 |= 8uLL;
      }

      goto LABEL_56;
    }

    v134 = HIBYTE(v285) & 0xF;
    if ((v285 & 0x2000000000000000) == 0)
    {
      v134 = v282 & 0xFFFFFFFFFFFFLL;
    }

    v135 = v321;
    if (v134)
    {
      v135 = v321 | 4;
    }

    v136 = v286;
    v137 = v284;
    if (v286)
    {
      goto LABEL_52;
    }

LABEL_56:
    if (v137)
    {
      v139 = HIBYTE(v137) & 0xF;
      if ((v137 & 0x2000000000000000) == 0)
      {
        v139 = v281 & 0xFFFFFFFFFFFFLL;
      }

      if (v139)
      {
        v135 |= 0x10uLL;
      }
    }

    if ((~v135 & 0x8002) != 0)
    {
      v140 = v135 | 0x8002;
    }

    else
    {
      v140 = v135;
    }

    v141 = v299;
    sub_1A8423270(v299, v336);
    v142 = *&v336[0];
    if ((*&v336[0] & ~v140) == 0)
    {
      v142 = 0;
    }

    v261 = v142;
    v262 = v140;
    v143 = *(v141 + 16);
    v144 = MEMORY[0x1E69E7CC0];
    if (v143)
    {
      *&v336[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v143, 0);
      v144 = *&v336[0];
      v145 = v141 + ((*(v326 + 80) + 32) & ~*(v326 + 80));
      v335 = *(v326 + 72);
      v146 = v303;
      do
      {
        v147 = v381;
        sub_1A8492628(v145, v381);
        v148 = (v147 + *(v146 + 76));
        v149 = *v148;
        v150 = v148[1];

        sub_1A849268C(v147, type metadata accessor for ImportExport.MessagePart);
        *&v336[0] = v144;
        v152 = *(v144 + 16);
        v151 = *(v144 + 24);
        if (v152 >= v151 >> 1)
        {
          sub_1A83EF534((v151 > 1), v152 + 1, 1);
          v146 = v303;
          v144 = *&v336[0];
        }

        *(v144 + 16) = v152 + 1;
        v153 = v144 + 16 * v152;
        *(v153 + 32) = v149;
        *(v153 + 40) = v150;
        v145 += v335;
        --v143;
      }

      while (v143);
      v82 = v305;
    }

    *&v336[0] = v144;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v278 = sub_1A84E5D6C();
    v279 = v154;

    v155 = *(v299 + 16);
    if (!v155)
    {
      break;
    }

    v156 = 0;
    v99 = 0;
    v298 = (*(v326 + 80) + 32) & ~*(v326 + 80);
    v157 = MEMORY[0x1E69E7CC0];
    v334 = *(v326 + 72);
    v260 = (v299 + v298);
    v158 = v299 + v298;
    v296 = v155;
    v159 = v155;
    do
    {
      v308 = v158;
      v309 = v159;
      sub_1A8492628(v158, v82);
      v160 = *(v82 + 48);
      v331 = v157;
      if (v160)
      {
        v381 = *(v82 + 40);
        v161 = v303;
        v335 = v160;
      }

      else
      {
        v161 = v303;
        v162 = (v82 + *(v303 + 76));
        v163 = *v162;
        v164 = v162[1];
        v335 = sub_1A84E5E7C();
        v381 = v99;
      }

      v165 = *(v82 + 56);
      if (v165 < 0)
      {
        v165 = v156;
      }

      v322 = v165;
      v166 = *(v82 + 8);
      v319 = *v82;
      v167 = (v82 + v161[19]);
      v168 = v167[1];
      v321 = *v167;
      v310 = v168;
      v317 = *(v82 + 16);
      v325 = *(v82 + 96);
      v169 = *(v82 + 168);
      v170 = *(v82 + 120);
      v171 = *(v82 + 136);
      v341 = *(v82 + 152);
      v342 = v169;
      v339 = v170;
      v340 = v171;
      v338 = *(v82 + 104);
      v172 = v161[13];
      v173 = (v82 + v161[12]);
      v174 = v173[1];
      v328 = *v173;
      v175 = *(v82 + v172 + 8);
      v330 = *(v82 + v172);
      v329 = v175;
      v176 = v161[15];
      v177 = (v82 + v161[14]);
      v178 = v177[1];
      v326 = *v177;
      v314 = v174;
      v315 = v178;
      v179 = *(v82 + v176 + 8);
      v327 = *(v82 + v176);
      v318 = v179;
      v180 = v161[21];
      v181 = *(v82 + 80);
      v311 = *(v82 + 64);
      v312 = v181;

      sub_1A8243D74(&v338, v336, &qword_1EB2E6F58, &qword_1A8501388);

      v182 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v316 = *&v336[0];
      v183 = v161[17];
      LODWORD(v320) = *(v82 + v161[16]);
      LODWORD(v324) = *(v82 + v183);
      LODWORD(v323) = *(v82 + v161[18]);
      v313 = *(v82 + v161[20]);
      v184 = v332;
      sub_1A8243D74(v82 + v161[11], v332 + v161[11], &qword_1EB2E6F50, &unk_1A8502920);
      *(v184 + 96) = 0u;
      *(v184 + 112) = 0u;
      *(v184 + 128) = 0u;
      *(v184 + 144) = 0u;
      *(v184 + 160) = 0u;
      *(v184 + 176) = 0;
      *(v184 + 64) = 0u;
      *(v184 + 80) = 0u;
      v185 = v161[21];
      *&v336[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v184 + 16) = v317;
      *v184 = v319;
      *(v184 + 8) = v166;
      v186 = v322;
      v187 = v335;
      *(v184 + 40) = v381;
      *(v184 + 48) = v187;
      v188 = (v184 + v161[19]);
      v189 = v310;
      *v188 = v321;
      v188[1] = v189;
      v190 = *(v184 + 72);

      v191 = v312;
      *(v184 + 64) = v311;
      *(v184 + 80) = v191;
      *(v184 + 96) = v325;
      v192 = *(v184 + 120);
      v193 = *(v184 + 152);
      v336[2] = *(v184 + 136);
      v336[3] = v193;
      v336[4] = *(v184 + 168);
      v336[0] = *(v184 + 104);
      v336[1] = v192;
      sub_1A824B2D4(v336, &qword_1EB2E6F58, &qword_1A8501388);
      v194 = v338;
      *(v184 + 120) = v339;
      v195 = v341;
      *(v184 + 136) = v340;
      *(v184 + 152) = v195;
      *(v184 + 168) = v342;
      *(v184 + 104) = v194;
      v196 = (v184 + v161[12]);
      v197 = v314;
      *v196 = v328;
      v196[1] = v197;
      v198 = (v184 + v161[13]);
      v199 = v330;
      v200 = v329;
      *v198 = v330;
      v198[1] = v200;
      v201 = (v184 + v161[14]);
      v202 = v315;
      *v201 = v326;
      v201[1] = v202;
      v203 = (v184 + v161[15]);
      v204 = v318;
      *v203 = v327;
      v203[1] = v204;
      sub_1A83F5918(v199, v200);
      (*(*(v182 - 8) + 8))(v184 + v185, v182);
      v337 = v316;
      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v184 + v161[16]) = v320;
      *(v184 + v161[17]) = v324;
      *(v184 + v161[18]) = v323;
      *(v184 + v161[20]) = v313;
      v205 = v307;
      *(v184 + 24) = v304;
      *(v184 + 32) = v205;
      v206 = v186;
      *(v184 + 56) = v186;
      sub_1A8492628(v184, v333);

      v157 = v331;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v381;
      v208 = v335;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v157 = sub_1A83EF140(0, *(v157 + 2) + 1, 1, v157);
      }

      v99 = *(v157 + 2);
      v209 = *(v157 + 3);
      v210 = v302;
      v82 = v305;
      if (v99 >= v209 >> 1)
      {
        v157 = sub_1A83EF140(v209 > 1, v99 + 1, 1, v157);
      }

      *(v157 + 2) = v99 + 1;
      sub_1A84926EC(v333, &v157[v298 + v99 * v334]);
      sub_1A849268C(v332, type metadata accessor for ImportExport.MessagePart);
      v156 = v206 + 1;
      if (__OFADD__(v206, 1))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v211 = &v102[v208];
      if (__OFADD__(v102, v208))
      {
        goto LABEL_116;
      }

      v99 = (v211 + 1);
      v102 = v309;
      if (__OFADD__(v211, 1))
      {
        goto LABEL_117;
      }

      sub_1A849268C(v82, type metadata accessor for ImportExport.MessagePart);
      v158 = v308 + v334;
      v159 = v102 - 1;
    }

    while (v159);
    v212 = 0;
    *&v338 = -1;
    v99 = v293;
    v213 = v280;
    v82 = v278;
    v214 = v279;
    v102 = v260;
    while (v212 < *(v299 + 16))
    {
      sub_1A8492628(v102, v210);
      v215 = v301;
      sub_1A842343C(v210, &v338);
      v301 = v215;
      if (v215)
      {
        sub_1A849268C(v210, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v345);
        sub_1A8400ED8(&v363);

        sub_1A84E5C8C();
        v244 = v301;
        v245 = v301;
        v246 = sub_1A84E5C7C();
        v247 = sub_1A84E619C();

        if (os_log_type_enabled(v246, v247))
        {
          v248 = swift_slowAlloc();
          v249 = swift_slowAlloc();
          *v248 = 138412290;
          v250 = v244;
          v251 = _swift_stdlib_bridgeErrorToNSError();
          *(v248 + 4) = v251;
          *v249 = v251;
          _os_log_impl(&dword_1A823F000, v246, v247, "Failed to create a message with Error: %@", v248, 0xCu);
          sub_1A824B2D4(v249, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v249, -1, -1);
          v252 = v248;
          v99 = v293;
          MEMORY[0x1AC56D3F0](v252, -1, -1);
        }

        (*(v288 + 8))(v290, v289);
        swift_willThrow();

        sub_1A849268C(v277, type metadata accessor for ImportExport.Conversation);
        sub_1A824B2D4(v294, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v292, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v287, &qword_1EB2E6F48, &unk_1A8501F00);
        v253 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        return (*(*(v253 - 8) + 8))(v99 + v270, v253);
      }

      ++v212;
      sub_1A849268C(v210, type metadata accessor for ImportExport.MessagePart);
      v102 += v334;
      if (v296 == v212)
      {
        v216 = v277;
        goto LABEL_95;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
LABEL_35:
    v103 = v330;
    v104 = sub_1A824431C(v330, qword_1EB2E7FC8);
    swift_beginAccess();
    v105 = v329;
    v106 = v328;
    (*(v329 + 16))(v328, v104, v103);
    v107 = sub_1A84E576C();
    (*(v105 + 8))(v106, v103);
    v108 = [v320 stringFromDate:v102 timeZone:v107 formatOptions:1907];

    v283 = sub_1A84E5DBC();
    v286 = v109;

    v97 = v335;
    (*(v335 + 8))(v323, v99);
    v67 = v99;
    v98 = v322;
  }

  v157 = MEMORY[0x1E69E7CC0];
  v99 = v293;
  v216 = v277;
  v82 = v278;
  v213 = v280;
  v214 = v279;
LABEL_95:
  v217 = v261 | v262;

  v218 = v307;
  *v99 = v304;
  *(v99 + 8) = v218;
  *(v99 + 112) = v82;
  *(v99 + 120) = v214;
  v219 = v263;
  *(v99 + 16) = v264;
  v220 = v295;
  *(v99 + 32) = v291;
  *(v99 + 40) = v220;
  v221 = (v99 + v219[23]);
  v222 = v366;
  v221[2] = v365;
  v221[3] = v222;
  v223 = v371;
  v221[7] = v370;
  v221[8] = v223;
  v224 = v369;
  v221[5] = v368;
  v221[6] = v224;
  v221[4] = v367;
  v225 = v364;
  *v221 = v363;
  v221[1] = v225;
  v226 = (v99 + v219[24]);
  v227 = v352;
  v226[6] = v351;
  v226[7] = v227;
  v226[8] = v353;
  v228 = v348;
  v226[2] = v347;
  v226[3] = v228;
  v229 = v350;
  v226[4] = v349;
  v226[5] = v229;
  v230 = v346;
  *v226 = v345;
  v226[1] = v230;
  v231 = v273;
  *(v99 + 80) = v265;
  *(v99 + 88) = v231;
  v232 = v276;
  *(v99 + 96) = v269;
  *(v99 + 104) = v232;
  v233 = v286;
  *(v99 + 128) = v283;
  *(v99 + 136) = v233;
  v234 = v285;
  *(v99 + 144) = v282;
  *(v99 + 152) = v234;
  v235 = v284;
  *(v99 + 160) = v281;
  *(v99 + 168) = v235;
  v236 = v275;
  *(v99 + 176) = v268;
  *(v99 + 184) = v236;
  *(v99 + 208) = v213;
  *(v99 + 216) = v157;
  sub_1A8400E7C(&v363, v336);
  sub_1A8400E7C(&v345, v336);
  v237 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v237 - 8) + 8))(v99 + v270, v237);
  *&v336[0] = v271;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v238 = (v99 + v219[21]);
  v239 = v274;
  *v238 = v267;
  v238[1] = v239;
  v240 = (v99 + v219[22]);
  v241 = v272;
  *v240 = v266;
  v240[1] = v241;
  *(v99 + 24) = v217;

  if (v213 > 3)
  {
    if (v213 > 5)
    {
      if (v213 == 6)
      {
        v242 = 0xE300000000000000;
        v243 = 5456722;
      }

      else
      {
        v242 = 0xEC000000534D5365;
        v243 = 0x74696C6C65746153;
      }
    }

    else if (v213 == 4)
    {
      v243 = 5459283;
      v242 = 0xE300000000000000;
    }

    else
    {
      v242 = 0xE800000000000000;
      v243 = 0x656D695465636146;
    }
  }

  else if (v213 > 1)
  {
    if (v213 == 2)
    {
      v242 = 0xE800000000000000;
    }

    else
    {
      v242 = 0xEC0000006574694CLL;
    }

    v243 = 0x6567617373654D69;
  }

  else if (v213)
  {
    v242 = 0xE300000000000000;
    v243 = 7958113;
  }

  else
  {
    v242 = 0xE700000000000000;
    v243 = 0x6E776F6E6B6E75;
  }

  sub_1A849268C(v216, type metadata accessor for ImportExport.Conversation);
  sub_1A824B2D4(v294, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v292, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v287, &qword_1EB2E6F48, &unk_1A8501F00);
  v254 = v293;
  v293[24] = v243;
  v254[25] = v242;
  v255 = *(&v365 + 1);
  v256 = v366;

  sub_1A8400ED8(&v363);
  v254[6] = v255;
  v254[7] = v256;
  v257 = *(&v347 + 1);
  v258 = v348;

  result = sub_1A8400ED8(&v345);
  v254[8] = v257;
  v254[9] = v258;
  return result;
}

unint64_t IMDMessageRecord.messageState.getter@<X0>(void *a1@<X8>)
{
  sub_1A84924EC([v1 flags], &v4);
  if ([v1 rawDate] && (v4 & 8) == 0)
  {
    v4 |= 8uLL;
  }

  if ([v1 isReply] && (v4 & 0x40) == 0)
  {
    v4 |= 0x40uLL;
  }

  result = [v1 isAssociatedMessage];
  if (result)
  {
    result = [v1 associatedMessageType];
    if ((result & 0xFFFFFFFFFFFFFFF8) == 0x7D0 || (result & 0xFFFFFFFFFFFFFFF8) == 0xBB8 || (result = [v1 associatedMessageType], result == 4000) || (result = objc_msgSend(v1, sel_associatedMessageType), (result & 0xFFFFFFFFFFFFFFFELL) == 0x3E8))
    {
      if ((v4 & 0x80) == 0)
      {
        v4 |= 0x80uLL;
      }
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A84923BC()
{
  v1 = [v0 serviceName];
  v2 = sub_1A84E5DBC();
  v4 = v3;

  v5 = *MEMORY[0x1E69A7AD8];
  if (v2 == sub_1A84E5DBC() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1A84E67AC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 isFromMe])
  {
    v9 = [v0 guid];
  }

  else
  {
    v9 = [v0 fallbackHash];
    if (!v9)
    {
      return 0;
    }
  }

  v10 = sub_1A84E5DBC();

  return v10;
}

uint64_t sub_1A84924EC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (qword_1EB2E59B8 != -1)
  {
LABEL_20:
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v2 = 0;
  v3 = 0;
  v4 = 1 << *(qword_1EB2FF338 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EB2FF338 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_10:
      v9 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v10 = *(*(qword_1EB2FF338 + 48) + v9);
      v6 &= v6 - 1;
      v11 = *(*(qword_1EB2FF338 + 56) + v9) & ~result;
      if ((v10 & ~v3) != 0 && v11 == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      v3 |= v13;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(qword_1EB2FF338 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1A8492600()
{
  result = sub_1A83EC490(&unk_1F1B70B28);
  qword_1EB2FF338 = result;
  return result;
}

uint64_t sub_1A8492628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessagePart();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A849268C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84926EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessagePart();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8492750(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB2E59B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  result = 0;
  v3 = 0;
  v4 = 1 << *(qword_1EB2FF338 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EB2FF338 + 64);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v9 = v8 | (v3 << 6);
      if ((*(*(qword_1EB2FF338 + 48) + 8 * v9) & ~v1) == 0)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    result |= *(*(qword_1EB2FF338 + 56) + 8 * v9);
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v10 >= v7)
    {
      return result;
    }

    v6 = *(qword_1EB2FF338 + 64 + 8 * v10);
    ++v3;
    if (v6)
    {
      v3 = v10;
      goto LABEL_5;
    }
  }
}

uint64_t sub_1A8492848@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v239 = a2;
  v246[7] = *MEMORY[0x1E69E9840];
  v3 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v188 = v180 - v5;
  v190 = sub_1A84E5C5C();
  v191 = *(v190 - 8);
  v6 = *(v191 + 64);
  v7 = MEMORY[0x1EEE9AC00](v190);
  v187 = v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v189 = v180 - v9;
  v10 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v192 = v180 - v12;
  v195 = sub_1A84E5C9C();
  v194 = *(v195 - 8);
  v13 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v196 = v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A84E558C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v193 = v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v197 = v180 - v20;
  v203 = sub_1A84E531C();
  v202 = *(v203 - 8);
  v21 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v201 = v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A84E5B9C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v241 = v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v240 = v180 - v28;
  v227 = sub_1A84E577C();
  v242 = *(v227 - 8);
  v29 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v226 = v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1A84E56DC();
  v228 = *(v229 - 1);
  v31 = v228[8];
  v32 = MEMORY[0x1EEE9AC00](v229);
  v186 = v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v180 - v34;
  v36 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v200 = v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v180 - v40;
  v42 = [a1 guid];
  v223 = sub_1A84E5DBC();
  v222 = v43;

  v44 = [a1 path];
  v45 = sub_1A84E5DBC();
  v47 = v46;

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v45 & 0xFFFFFFFFFFFFLL;
  }

  v235 = v15;
  if (v48)
  {
    v49 = [a1 path];
    sub_1A84E5DBC();

    sub_1A84E5E2C();

    sub_1A84E54FC();

    (*(v16 + 56))(v41, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v41, 1, 1, v15);
  }

  v50 = v16;
  v51 = v41;
  v52 = [a1 transferName];
  v198 = sub_1A84E5DBC();
  v199 = v53;

  v54 = [a1 messageRecord];
  v55 = [v54 guid];

  v221 = sub_1A84E5DBC();
  v220 = v56;

  v57 = [a1 utiString];
  v232 = sub_1A84E5DBC();
  v231 = v58;

  v59 = [a1 mimeType];
  if (v59)
  {
    v60 = v59;
    v225 = sub_1A84E5DBC();
    v233 = v61;
  }

  else
  {
    v225 = 0;
    v233 = 0;
  }

  v234 = v50;
  v62 = [a1 createdDate];
  sub_1A84E569C();

  v63 = objc_opt_self();
  v64 = sub_1A84E565C();
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v65 = v227;
  v66 = sub_1A824431C(v227, qword_1EB2E7FC8);
  swift_beginAccess();
  v67 = v242;
  v68 = *(v242 + 16);
  v69 = v226;
  v184 = v66;
  v183 = v242 + 16;
  v182 = v68;
  v68(v226, v66, v65);
  v73 = sub_1A84E576C();
  v70 = *(v67 + 8);
  v242 = v67 + 8;
  v180[0] = v70;
  v70(v69, v65);
  v71 = [v63 stringFromDate:v64 timeZone:v73 formatOptions:1907];

  v237 = sub_1A84E5DBC();
  v243 = v72;

  v181 = v228[1];
  v180[1] = v228 + 1;
  v181(v35, v229);
  v238 = [a1 totalBytes];
  LODWORD(v73) = [a1 isOutgoing];
  v219 = [a1 isSticker];
  v218 = [a1 isCommSafetySensitive];
  v74 = [a1 emojiImageContentIdentifier];
  v217 = sub_1A84E5DBC();
  v216 = v75;

  v76 = [a1 emojiImageShortDescription];
  v214 = sub_1A84E5DBC();
  v213 = v77;

  v215 = [a1 isAdaptiveImageGlyph];
  v78 = [a1 transferUserInfo];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1A84E5D3C();

    v212 = sub_1A84A5368(v80);
  }

  else
  {
    v212 = 0;
  }

  v81 = [a1 stickerUserInfo];
  if (v81)
  {
    v82 = v81;
    v83 = sub_1A84E5D3C();

    v211 = sub_1A84A5368(v83);
  }

  else
  {
    v211 = 0;
  }

  v84 = [a1 attributionInfo];
  v185 = v63;
  if (v84)
  {
    v85 = v84;
    v86 = sub_1A84E5D3C();

    v210 = sub_1A84A5368(v86);
  }

  else
  {
    v210 = 0;
  }

  v87 = type metadata accessor for ImportExport.AttachmentDownloadError();
  (*(*(v87 - 8) + 56))(v240, 1, 1, v87);
  sub_1A8494214(&v245);
  v209 = v245;
  v88 = [a1 rowID];
  v89 = type metadata accessor for ImportExport.Attachment();
  v90 = v239;
  v91 = v239 + v89[24];
  v246[0] = 0;
  sub_1A84E5B8C();
  v92 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v207 = v91;
  sub_1A84E594C();
  v93 = v90 + v89[25];
  v246[0] = 0;
  sub_1A84E5B8C();
  v204 = v93;
  sub_1A84E594C();
  v206 = v89;
  v94 = v90 + v89[26];
  v246[0] = 0;
  sub_1A84E5B8C();
  v205 = v94;
  v208 = v92;
  sub_1A84E594C();
  v246[0] = v198;
  v246[1] = v199;
  v95 = v201;
  sub_1A84E530C();
  sub_1A840D3B0();
  v96 = sub_1A84E636C();
  v98 = v97;
  (*(v202 + 8))(v95, v203);

  v99 = v200;
  sub_1A8243D74(v51, v200, &qword_1EB2E7068, &unk_1A8501EB0);
  v100 = v234;
  v101 = v235;
  v102 = (*(v234 + 48))(v99, 1, v235);
  v224 = a1;
  v236 = v51;
  if (v102 == 1)
  {
    sub_1A824B2D4(v99, &qword_1EB2E7068, &unk_1A8501EB0);
    v103 = v231;
LABEL_22:
    v104 = v221;
    goto LABEL_65;
  }

  v203 = v88;
  v105 = v197;
  (*(v100 + 32))(v197, v99, v101);
  v106 = HIBYTE(v243) & 0xF;
  if (v238 && v233)
  {
    v107 = v237 & 0xFFFFFFFFFFFFLL;
    if ((v243 & 0x2000000000000000) != 0)
    {
      v107 = HIBYTE(v243) & 0xF;
    }

    if (v107)
    {
      v108 = HIBYTE(v231) & 0xF;
      if ((v231 & 0x2000000000000000) == 0)
      {
        v108 = v232 & 0xFFFFFFFFFFFFLL;
      }

      if (v108)
      {
        (*(v100 + 8))(v105, v101);
        v51 = v236;
        v103 = v231;
LABEL_64:
        v104 = v221;
        v88 = v203;
        goto LABEL_65;
      }
    }
  }

  LODWORD(v202) = v73;
  v109 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v110 = sub_1A84E5D8C();

  v246[0] = 0;
  v111 = [v109 attributesOfItemAtPath:v110 error:v246];

  v112 = v246[0];
  if (v111)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1A844F1D0();
    v113 = sub_1A84E5D3C();
    v114 = v112;

    v115 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      v115 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (v115)
    {
      v73 = v197;
      if (!*(v113 + 16))
      {
        goto LABEL_54;
      }
    }

    else
    {

      v73 = v197;
      v96 = sub_1A84E550C();
      v98 = v134;
      if (!*(v113 + 16))
      {
        goto LABEL_54;
      }
    }

    v135 = sub_1A8490560(*MEMORY[0x1E696A3D8]);
    if (v136)
    {
      sub_1A8244F40(*(v113 + 56) + 32 * v135, v246);
      if (swift_dynamicCast())
      {
        sub_1A84E5C4C();
        v137 = v188;
        sub_1A84E5C2C();
        v138 = v191;
        v139 = v190;
        if ((*(v191 + 48))(v137, 1, v190) == 1)
        {
          sub_1A824B2D4(v137, &qword_1EB2E7340, &qword_1A8501EF8);
          v73 = v197;
        }

        else
        {
          (*(v138 + 32))(v189, v137, v139);
          v141 = HIBYTE(v231) & 0xF;
          if ((v231 & 0x2000000000000000) == 0)
          {
            v141 = v232 & 0xFFFFFFFFFFFFLL;
          }

          if (!v141)
          {
            v232 = sub_1A84E5C1C();
            v143 = v142;

            v231 = v143;
            v139 = v190;
          }

          v73 = v197;
          if (!v233)
          {
            v144 = sub_1A84E5C3C();
            v139 = v190;
            v225 = v144;
            v233 = v145;
          }

          (*(v191 + 8))(v189, v139);
        }
      }
    }

LABEL_54:
    if (!v238)
    {
      if (*(v113 + 16) && (v146 = sub_1A8490560(*MEMORY[0x1E696A3B8]), (v147 & 1) != 0) && (sub_1A8244F40(*(v113 + 56) + 32 * v146, v246), swift_dynamicCast()))
      {
        v238 = v244;
      }

      else
      {
        v238 = 0;
      }
    }

    v148 = v237 & 0xFFFFFFFFFFFFLL;
    if ((v243 & 0x2000000000000000) != 0)
    {
      v148 = v106;
    }

    if (v148)
    {
      (*(v234 + 8))(v73, v235);

      v51 = v236;
      v103 = v231;
      LOBYTE(v73) = v202;
      goto LABEL_64;
    }

    v51 = v236;
    v88 = v203;
    if (*(v113 + 16) && (v164 = sub_1A8490560(*MEMORY[0x1E696A308]), (v165 & 1) != 0))
    {
      sub_1A8244F40(*(v113 + 56) + 32 * v164, v246);

      v166 = v192;
      v167 = v229;
      v168 = swift_dynamicCast();
      v169 = v228;
      (v228[7])(v166, v168 ^ 1u, 1, v167);
      if ((v169[6])(v166, 1, v167) != 1)
      {
        (v169[4])(v186, v166, v167);
        v170 = sub_1A84E565C();
        v171 = v98;
        v172 = v226;
        v173 = v227;
        v182(v226, v184, v227);
        v174 = sub_1A84E576C();
        v175 = v172;
        v98 = v171;
        (v180[0])(v175, v173);
        v176 = v73;
        v177 = [v185 stringFromDate:v170 timeZone:v174 formatOptions:1907];

        v237 = sub_1A84E5DBC();
        v179 = v178;

        v181(v186, v229);
        (*(v234 + 8))(v176, v235);
        v243 = v179;
        goto LABEL_72;
      }

      (*(v234 + 8))(v73, v235);
    }

    else
    {

      (*(v234 + 8))(v73, v235);
      v166 = v192;
      (v228[7])(v192, 1, 1, v229);
    }

    sub_1A824B2D4(v166, &qword_1EB2E6F48, &unk_1A8501F00);
LABEL_72:
    v103 = v231;
    LOBYTE(v73) = v202;
    goto LABEL_22;
  }

  v242 = v96;
  v116 = v246[0];
  v117 = sub_1A84E548C();

  v229 = v117;
  swift_willThrow();
  v230 = 0;
  v118 = v196;
  sub_1A84E5C8C();
  v119 = v234;
  v120 = v235;
  v121 = v193;
  (*(v234 + 16))(v193, v105, v235);
  v122 = sub_1A84E5C7C();
  v123 = sub_1A84E619C();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = v121;
    v125 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v246[0] = v228;
    *v125 = 136315138;
    v126 = v98;
    v127 = sub_1A84E555C();
    v129 = v128;
    v130 = *(v119 + 8);
    v130(v124, v120);
    v131 = v127;
    v98 = v126;
    v132 = sub_1A82446BC(v131, v129, v246);

    *(v125 + 4) = v132;
    _os_log_impl(&dword_1A823F000, v122, v123, "Failed to get file attributes for file ath path: %s", v125, 0xCu);
    v133 = v228;
    sub_1A8244788(v228);
    MEMORY[0x1AC56D3F0](v133, -1, -1);
    MEMORY[0x1AC56D3F0](v125, -1, -1);

    (*(v194 + 8))(v196, v195);
    v130(v197, v235);
  }

  else
  {

    v140 = *(v119 + 8);
    v140(v121, v120);
    (*(v194 + 8))(v118, v195);
    v140(v105, v120);
  }

  v51 = v236;
  v104 = v221;
  v103 = v231;
  LOBYTE(v73) = v202;
  v88 = v203;
  v96 = v242;
LABEL_65:
  v149 = v239;
  v150 = v222;
  *v239 = v223;
  v149[1] = v150;
  v149[2] = v88;
  v149[3] = v104;
  v149[4] = v220;
  v149[5] = v96;
  v149[6] = v98;
  v151 = v206;
  v152 = (v149 + v206[14]);
  v153 = v243;
  *v152 = v237;
  v152[1] = v153;
  *(v149 + v151[15]) = v238;
  v149[7] = v232;
  v149[8] = v103;
  v154 = v233;
  v149[9] = v225;
  v149[10] = v154;
  sub_1A8243D74(v51, v149 + v151[10], &qword_1EB2E7068, &unk_1A8501EB0);
  *(v149 + v151[11]) = 0;
  *(v149 + v151[12]) = 0;
  *(v149 + v151[13]) = 0;
  *(v149 + v151[18]) = v73;
  *(v149 + v151[16]) = v219;
  *(v149 + v151[17]) = v218;
  v155 = (v149 + v151[19]);
  v156 = v216;
  *v155 = v217;
  v155[1] = v156;
  v157 = (v149 + v151[20]);
  v158 = v213;
  *v157 = v214;
  v157[1] = v158;
  v159 = v240;
  sub_1A8243D74(v240, v149 + v151[21], &qword_1EB2E7348, &qword_1A8504400);
  *(v149 + v151[22]) = v215;
  v160 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v161 = *(*(v160 - 8) + 8);
  v161(v207, v160);
  v246[0] = v212;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v161(v204, v160);
  v246[0] = v211;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v161(v205, v160);
  v246[0] = v210;
  sub_1A84E5B8C();
  sub_1A84E594C();

  sub_1A824B2D4(v159, &qword_1EB2E7348, &qword_1A8504400);
  result = sub_1A824B2D4(v236, &qword_1EB2E7068, &unk_1A8501EB0);
  *(v149 + v151[23]) = v209;
  v163 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A8494214@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A84E5C9C();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  v14 = [v2 path];
  v15 = sub_1A84E5DBC();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = [v2 path];
    sub_1A84E5DBC();

    sub_1A84E5E2C();

    sub_1A84E54FC();

    v20 = sub_1A84E558C();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  }

  else
  {
    v20 = sub_1A84E558C();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  }

  v55 = 0;
  sub_1A84E558C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v13, 1, v20) == 1)
  {
    goto LABEL_9;
  }

  sub_1A8243D74(v13, v11, &qword_1EB2E7068, &unk_1A8501EB0);
  result = (v22)(v11, 1, v20);
  if (result != 1)
  {
    v24 = sub_1A84E54CC();
    (*(v21 + 8))(v11, v20);
    if (v24)
    {
LABEL_19:
      swift_beginAccess();
      *a1 = v55;
      return sub_1A824B2D4(v13, &qword_1EB2E7068, &unk_1A8501EB0);
    }

LABEL_9:
    if ([v2 cloudSyncState] == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4;
      v55 = 4;
    }

    if ([v2 transferState] != 5)
    {
      v25 |= 2uLL;
      v55 = v25;
    }

    v50 = v4;
    if (v22(v13, 1, v20) == 1)
    {
      v55 = v25 | 0x20;
    }

    strcpy(v54, "ImportExport.");
    HIWORD(v54[1]) = -4864;
    sub_1A8494838();
    v26 = sub_1A84E69AC();
    MEMORY[0x1AC56A990](v26);

    v27 = v52;
    sub_1A84E5C8C();
    v28 = v2;
    v29 = sub_1A84E5C7C();
    v30 = sub_1A84E618C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = a1;
      v33 = v32;
      v54[0] = v32;
      *v31 = 136315906;
      v34 = [v28 guid];
      v35 = sub_1A84E5DBC();
      v37 = v36;

      v38 = sub_1A82446BC(v35, v37, v54);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      swift_beginAccess();
      v53 = v55;
      ImportExport.Attachment.MissingFileReasons.description.getter();
      v41 = sub_1A82446BC(v39, v40, v54);

      *(v31 + 14) = v41;
      *(v31 + 22) = 2080;
      v42 = sub_1A84E62FC();
      v44 = sub_1A82446BC(v42, v43, v54);

      *(v31 + 24) = v44;
      *(v31 + 32) = 2080;
      [v28 transferState];
      v45 = sub_1A84E628C();
      v47 = sub_1A82446BC(v45, v46, v54);

      *(v31 + 34) = v47;
      _os_log_impl(&dword_1A823F000, v29, v30, "Missing file for attachment %s: %s. [ck_sync_state: %s, file_transfer_state: %s", v31, 0x2Au);
      swift_arrayDestroy();
      v48 = v33;
      a1 = v49;
      MEMORY[0x1AC56D3F0](v48, -1, -1);
      MEMORY[0x1AC56D3F0](v31, -1, -1);

      (*(v51 + 8))(v52, v50);
    }

    else
    {

      (*(v51 + 8))(v27, v50);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A8494838()
{
  result = qword_1EB2E85B0;
  if (!qword_1EB2E85B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E85B0);
  }

  return result;
}

uint64_t sub_1A8494884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v104 = a1;
  v111 = *MEMORY[0x1E69E9840];
  v9 = sub_1A84E5C9C();
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v100 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v91 - v15;
  v16 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v91 - v21;
  v23 = sub_1A84E558C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v97 = &v91 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v105 = &v91 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v91 - v32;
  v106 = type metadata accessor for ImportExport.Attachment();
  sub_1A84580FC(v5 + *(v106 + 40), v22);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    (*(v24 + 32))(v33, v22, v23);
    if ((ImportExport.Attachment.existsOnDisk.getter() & 1) == 0)
    {
      (*(v24 + 8))(v33, v23);
      goto LABEL_8;
    }

    v95 = a4;
    v96 = v33;
    if (sub_1A84E555C() == 0xD000000000000014 && 0x80000001A85332F0 == v34)
    {

LABEL_11:
      (*(v24 + 8))(v96, v23);
      v35 = 1;
      a4 = v95;
      goto LABEL_9;
    }

    v38 = sub_1A84E67AC();

    if (v38)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v39 = a3;
    }

    else
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      sub_1A84E646C();

      v109 = 0x656D686361747441;
      v110 = 0xEB000000002D746ELL;
      v108 = *(v5 + 16);
      v40 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v40);

      MEMORY[0x1AC56A990](46, 0xE100000000000000);
      v41 = sub_1A84E54BC();
      MEMORY[0x1AC56A990](v41);

      a2 = v109;
      v39 = v110;
    }

    sub_1A84E552C();
    LOBYTE(v109) = 0;
    v94 = objc_opt_self();
    v42 = [v94 defaultManager];
    sub_1A84E555C();
    v43 = sub_1A84E5D8C();

    v44 = [v42 fileExistsAtPath:v43 isDirectory:&v109];

    if ((v44 & 1) == 0)
    {
      v45 = [v94 defaultManager];
      v46 = sub_1A84E551C();
      v47 = sub_1A84E551C();
      v109 = 0;
      LODWORD(v94) = [v45 copyItemAtURL:v46 toURL:v47 error:&v109];

      if (!v94)
      {
        v52 = v109;

        v53 = sub_1A84E548C();

        v104 = v53;
        swift_willThrow();
LABEL_22:
        v107 = 0;
        v93 = "taskDeadlineSeconds";
        v94 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
        v54 = v99;
        sub_1A84E5C8C();
        v55 = v97;
        v92 = *(v24 + 16);
        v92(v97, v96, v23);
        v56 = sub_1A84E5C7C();
        v57 = sub_1A84E619C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v109 = v91;
          *v58 = 136315138;
          v59 = sub_1A84E555C();
          v61 = v60;
          v97 = *(v24 + 8);
          (v97)(v55, v23);
          v62 = sub_1A82446BC(v59, v61, &v109);

          *(v58 + 4) = v62;
          _os_log_impl(&dword_1A823F000, v56, v57, "Failed to copy attachment from: %s", v58, 0xCu);
          v63 = v91;
          sub_1A8244788(v91);
          MEMORY[0x1AC56D3F0](v63, -1, -1);
          MEMORY[0x1AC56D3F0](v58, -1, -1);

          v64 = *(v101 + 8);
          v65 = v99;
        }

        else
        {

          v97 = *(v24 + 8);
          (v97)(v55, v23);
          v64 = *(v101 + 8);
          v65 = v54;
        }

        v66 = v102;
        v64(v65, v102);
        v67 = v100;
        v68 = v98;
        sub_1A84E5C8C();
        v92(v68, v105, v23);
        v69 = sub_1A84E5C7C();
        v70 = sub_1A84E619C();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = v68;
          v72 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v99 = v64;
          v73 = v109;
          *v72 = 136315138;
          v74 = sub_1A84E555C();
          v76 = v75;
          (v97)(v71, v23);
          v77 = sub_1A82446BC(v74, v76, &v109);

          *(v72 + 4) = v77;
          _os_log_impl(&dword_1A823F000, v69, v70, "                            to: %s", v72, 0xCu);
          sub_1A8244788(v73);
          v78 = v73;
          v64 = v99;
          v66 = v102;
          MEMORY[0x1AC56D3F0](v78, -1, -1);
          MEMORY[0x1AC56D3F0](v72, -1, -1);

          v79 = v100;
        }

        else
        {

          (v97)(v68, v23);
          v79 = v67;
        }

        v64(v79, v66);
        a4 = v95;
        sub_1A84E5C8C();
        v80 = v104;
        v81 = v104;
        v82 = sub_1A84E5C7C();
        v83 = sub_1A84E619C();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v84 = 138412290;
          v86 = v104;
          v87 = _swift_stdlib_bridgeErrorToNSError();
          *(v84 + 4) = v87;
          *v85 = v87;
          _os_log_impl(&dword_1A823F000, v82, v83, "                         error: %@", v84, 0xCu);
          sub_1A824B2D4(v85, &unk_1EB2E9070, &unk_1A8501A90);
          v88 = v85;
          a4 = v95;
          MEMORY[0x1AC56D3F0](v88, -1, -1);
          v89 = v84;
          v80 = v104;
          MEMORY[0x1AC56D3F0](v89, -1, -1);
        }

        v64(v103, v66);
        v90 = v97;
        (v97)(v105, v23);
        v90(v96, v23);
        goto LABEL_8;
      }

      v48 = v109;
    }

    v109 = sub_1A84E550C();
    v110 = v49;
    MEMORY[0x1AC56A990](47, 0xE100000000000000);
    MEMORY[0x1AC56A990](a2, v39);

    URL.init(relativeFilePath:)(v109, v110, v20);
    v109 = 0;
    a4 = v95;
    v50 = v107;
    ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v20, 1, 0, &v109, v95);
    if (!v50)
    {
      sub_1A824B2D4(v20, &qword_1EB2E7068, &unk_1A8501EB0);
      v51 = *(v24 + 8);
      v51(v105, v23);
      v51(v96, v23);
      v35 = 0;
      goto LABEL_9;
    }

    sub_1A824B2D4(v20, &qword_1EB2E7068, &unk_1A8501EB0);
    v104 = v50;
    goto LABEL_22;
  }

  sub_1A824B2D4(v22, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_8:
  v35 = 1;
LABEL_9:
  result = (*(*(v106 - 8) + 56))(a4, v35, 1);
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A84953E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result == 5)
  {
    return 0;
  }

  v4 = a2 + a3;
  if (__CFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1A8474400();
    v5 = sub_1A84E620C();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 7104878;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    sub_1A84E646C();
    sub_1A840D3B0();
    v9 = sub_1A84E635C();
    v11 = v10;

    MEMORY[0x1AC56A990](v9, v11);

    MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8533310);
    MEMORY[0x1AC56A990](v7, v8);

    MEMORY[0x1AC56A990](10272, 0xE200000000000000);
    v12 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
    v13 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v13);

    result = MEMORY[0x1AC56A990](8236, 0xE200000000000000);
    if (v4 >= a3)
    {
      v14 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v14);

      MEMORY[0x1AC56A990](0x696E69616D657220, 0xEB0000000029676ELL);
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84956CC(void *a1, char a2, uint64_t a3)
{
  v13[1] = a3;
  v6 = sub_1A83EA2FC(&qword_1EB2E85C8, &qword_1A8508D10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8495CF4();
  sub_1A84E68AC();
  v17 = a2;
  v16 = 0;
  sub_1A8474E38();
  sub_1A84E66BC();
  if (v3)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 1;
  sub_1A84E671C();
  v14 = 2;
  sub_1A84E671C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A8495890()
{
  v1 = 0x656C626174697277;
  if (*v0 != 1)
  {
    v1 = 0x6E657474697277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954746E756F63;
  }
}

uint64_t sub_1A84958F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84959EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8495918(uint64_t a1)
{
  v2 = sub_1A8495CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8495954(uint64_t a1)
{
  v2 = sub_1A8495CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8495990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A8495B0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A84959EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E756F63 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626174697277 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E657474697277 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8495B0C(uint64_t *a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E85B8, &qword_1A8508D08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8495CF4();
  sub_1A84E689C();
  v10[14] = 0;
  sub_1A8474DE4();
  sub_1A84E65FC();
  v8 = v10[15];
  v10[13] = 1;
  sub_1A84E665C();
  v10[12] = 2;
  sub_1A84E665C();
  (*(v3 + 8))(v6, v2);
  sub_1A8244788(a1);
  return v8;
}

unint64_t sub_1A8495CF4()
{
  result = qword_1EB2E85C0;
  if (!qword_1EB2E85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85C0);
  }

  return result;
}

unint64_t sub_1A8495D5C()
{
  result = qword_1EB2E85D0;
  if (!qword_1EB2E85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85D0);
  }

  return result;
}

unint64_t sub_1A8495DB4()
{
  result = qword_1EB2E85D8;
  if (!qword_1EB2E85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85D8);
  }

  return result;
}

unint64_t sub_1A8495E0C()
{
  result = qword_1EB2E85E0;
  if (!qword_1EB2E85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85E0);
  }

  return result;
}

uint64_t sub_1A8495E80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t (*a8)(void))
{
  v13 = a5(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20 - v15;
  sub_1A8496E14(a1, &v20 - v15, a6);
  v17 = *a2;
  v18 = *a7;
  swift_beginAccess();
  sub_1A8497A38(v16, v17 + v18, a8);
  return swift_endAccess();
}

uint64_t sub_1A8495F70@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1A8496E14(v3 + v6, a3, a2);
}

uint64_t sub_1A8495FCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 360) = a4;
  *(v5 + 136) = a3;
  *(v5 + 144) = v4;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  v6 = *(*(type metadata accessor for ImportExport.Message() - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v7 = type metadata accessor for ImportExport.Attachment();
  *(v5 + 184) = v7;
  v8 = *(v7 - 8);
  *(v5 + 192) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  v10 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v11 = type metadata accessor for ImportExport.ExportOptions();
  *(v5 + 248) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v13 = sub_1A84E558C();
  *(v5 + 264) = v13;
  v14 = *(v13 - 8);
  *(v5 + 272) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84961E4, 0, 0);
}

uint64_t sub_1A84961E4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 360);
  v8 = *(v0 + 136);
  v9 = *(v0 + 128);
  v10 = *(*(v0 + 144) + 16);
  *(v0 + 296) = v10;
  v11 = *(v10 + 16) + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions;
  v12 = *(v11 + 16);
  sub_1A8496E14(v11, v4, type metadata accessor for ImportExport.ExportOptions);
  v13 = *(v3 + 32);
  v13(v1, v4 + *(v5 + 28), v2);
  sub_1A8243D74(v9, v6, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v3 + 48))(v6, 1, v2) == 1)
  {
    sub_1A8496E7C(*(v0 + 240));
  }

  else
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 288);
    v16 = *(v0 + 264);
    v17 = *(v0 + 240);
    (*(*(v0 + 272) + 8))(v15, v16);
    v13(v14, v17, v16);
    v13(v15, v14, v16);
  }

  if (v7)
  {
    v8 = v12;
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 144);
  v20 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment;
  *(v0 + 304) = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment;
  swift_beginAccess();
  sub_1A8496E14(v19 + v20, v18, type metadata accessor for ImportExport.Attachment);
  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message;
  *(v0 + 312) = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message;
  v22 = (v19 + v21);
  swift_beginAccess();
  v23 = v22[8];
  v24 = v22[9];
  *(v0 + 320) = v24;
  v25 = *v22;
  v26 = v22[1];
  *(v0 + 328) = v26;

  v27 = swift_task_alloc();
  *(v0 + 336) = v27;
  *v27 = v0;
  v27[1] = sub_1A8496470;
  v28 = *(v0 + 288);
  v29 = *(v0 + 232);

  return sub_1A842EFE0(v28, v23, v24, v25, v26, v8);
}

uint64_t sub_1A8496470(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = v1;

  v7 = v4[41];
  v8 = v4[40];
  v9 = v4[29];
  if (v1)
  {
    sub_1A8496EE4(v9, type metadata accessor for ImportExport.Attachment);

    v10 = sub_1A8496C74;
  }

  else
  {
    v4[44] = a1;
    sub_1A8496EE4(v9, type metadata accessor for ImportExport.Attachment);

    v10 = sub_1A8496630;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1A8496630()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[28];
  v4 = v0[22];
  v5 = v0[18];
  sub_1A8496E14(v0[44] + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, v3, type metadata accessor for ImportExport.Attachment);

  swift_beginAccess();
  sub_1A8497A38(v3, v5 + v2, type metadata accessor for ImportExport.Attachment);
  swift_endAccess();
  sub_1A8496E14(v5 + v1, v4, type metadata accessor for ImportExport.Message);
  v6 = ImportExport.Message.allAttachments.getter();
  sub_1A8496EE4(v4, type metadata accessor for ImportExport.Message);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v7[2];
  if (v8)
  {
    v9 = v0[24];
    v10 = v0[18] + v0[38];
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = v7 + v11;
    v13 = *(v9 + 72);
    v67 = v0[27];
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v0[38];
      v19 = v0[27];
      v20 = v0[18];
      sub_1A8496E14(v12, v19, type metadata accessor for ImportExport.Attachment);
      v21 = *v19 == *(v20 + v18) && *(v67 + 8) == *(v10 + 8);
      if (v21 || (sub_1A84E67AC() & 1) != 0)
      {
        sub_1A8496E14(v0[27], v0[26], type metadata accessor for ImportExport.Attachment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A83EF118(0, v14[2] + 1, 1, v14);
        }

        v23 = v14[2];
        v22 = v14[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v14 = sub_1A83EF118(v22 > 1, v23 + 1, 1, v14);
        }

        v15 = v0 + 26;
      }

      else
      {
        sub_1A8496E14(v0[27], v0[25], type metadata accessor for ImportExport.Attachment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A83EF118(0, v14[2] + 1, 1, v14);
        }

        v23 = v14[2];
        v25 = v14[3];
        v24 = v23 + 1;
        if (v23 >= v25 >> 1)
        {
          v14 = sub_1A83EF118(v25 > 1, v23 + 1, 1, v14);
        }

        v15 = v0 + 25;
      }

      v16 = *v15;
      v17 = v0[27];
      v14[2] = v24;
      sub_1A8497B40(v16, v14 + v11 + v23 * v13, type metadata accessor for ImportExport.Attachment);
      sub_1A8496EE4(v17, type metadata accessor for ImportExport.Attachment);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v26 = v0[43];
  v27 = v0[21];
  sub_1A8496E14(v0[18] + v0[39], v0[20], type metadata accessor for ImportExport.Message);
  ImportExport.Message.update(attachments:)(v14, v27);
  if (v26)
  {
    v29 = v0[35];
    v28 = v0[36];
    v31 = v0[33];
    v30 = v0[34];
    v32 = v0[32];
    v33 = v0[30];
    v54 = v0[29];
    v55 = v0[28];
    v56 = v0[27];
    v57 = v0[26];
    v59 = v0[25];
    v61 = v0[22];
    v34 = v0[20];
    v64 = v0[21];
    v68 = v0[19];

    sub_1A8496EE4(v34, type metadata accessor for ImportExport.Message);
    (*(v30 + 8))(v28, v31);
  }

  else
  {
    v36 = v0[39];
    v37 = v0[34];
    v62 = v0[33];
    v38 = v0[28];
    v65 = v0[23];
    v69 = v0[36];
    v39 = v0[21];
    v40 = v0[18];
    v41 = v0[19];
    v42 = v40 + v0[38];
    v58 = v0[37];
    v60 = v0[15];
    sub_1A8496EE4(v0[20], type metadata accessor for ImportExport.Message);

    swift_beginAccess();
    sub_1A8497A38(v39, v40 + v36, type metadata accessor for ImportExport.Message);
    swift_endAccess();
    sub_1A8496E14(v42, v38, type metadata accessor for ImportExport.Attachment);
    sub_1A8496E14(v40 + v36, v41, type metadata accessor for ImportExport.Message);
    sub_1A84B0824(v38, v41);
    sub_1A8496EE4(v41, type metadata accessor for ImportExport.Message);
    sub_1A8496EE4(v38, type metadata accessor for ImportExport.Attachment);
    (*(v37 + 8))(v69, v62);
    sub_1A8243D74(v42 + *(v65 + 84), v60, &qword_1EB2E7348, &qword_1A8504400);
    v44 = v0[35];
    v43 = v0[36];
    v45 = v0[32];
    v47 = v0[29];
    v46 = v0[30];
    v49 = v0[27];
    v48 = v0[28];
    v51 = v0[25];
    v50 = v0[26];
    v52 = v0[22];
    v63 = v0[21];
    v66 = v0[20];
    v70 = v0[19];
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1A8496C74()
{
  v1 = v0[43];
  v2 = v0[15];
  (*(v0[34] + 8))(v0[36], v0[33]);
  v0[14] = v1;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  v3 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v4 = swift_dynamicCast();
  (*(*(v3 - 8) + 56))(v2, v4 ^ 1u, 1, v3);
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[19];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A8496E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8496E7C(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8496EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A8496F44()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656D686361747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1A8496FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8498050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8496FD0(uint64_t a1)
{
  v2 = sub_1A8497AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A849700C(uint64_t a1)
{
  v2 = sub_1A8497AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AttachmentDownloader.deinit()
{
  v1 = *(v0 + 16);

  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
  return v0;
}

uint64_t ImportExport.AttachmentDownloader.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
  sub_1A8496EE4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A8497154(void *a1)
{
  v2 = v1;
  v21 = type metadata accessor for ImportExport.Attachment();
  v4 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ImportExport.Message();
  v7 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A83EA2FC(&qword_1EB2E85E8, &qword_1A8508E40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8497AA0();
  sub_1A84E68AC();
  v25 = *(v2 + 16);
  v24 = 0;
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  sub_1A8497BA8(&qword_1EB2E85F8, type metadata accessor for ImportExport.AttachmentDownloadIterator);
  v16 = v23;
  sub_1A84E672C();
  if (!v16)
  {
    v17 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message;
    swift_beginAccess();
    sub_1A8496E14(v2 + v17, v9, type metadata accessor for ImportExport.Message);
    v24 = 1;
    sub_1A8497BA8(&qword_1EB2E7800, type metadata accessor for ImportExport.Message);
    sub_1A84E672C();
    sub_1A8496EE4(v9, type metadata accessor for ImportExport.Message);
    v18 = OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment;
    swift_beginAccess();
    sub_1A8496E14(v2 + v18, v6, type metadata accessor for ImportExport.Attachment);
    v26 = 2;
    sub_1A8497BA8(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment);
    sub_1A84E672C();
    sub_1A8496EE4(v6, type metadata accessor for ImportExport.Attachment);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t ImportExport.AttachmentDownloader.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.AttachmentDownloader.init(from:)(a1);
  return v5;
}

uint64_t ImportExport.AttachmentDownloader.init(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for ImportExport.Attachment();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImportExport.Message();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A83EA2FC(&qword_1EB2E8600, &qword_1A8508E48);
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v13 = &v24 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v28 = a1;
  sub_1A82471E0(a1, v14);
  sub_1A8497AA0();
  v16 = v26;
  sub_1A84E689C();
  if (v16)
  {
    v17 = v27;
    type metadata accessor for ImportExport.AttachmentDownloader();
    v21 = *(*v17 + 48);
    v22 = *(*v17 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v9;
    v26 = v10;
    v24 = v2;
    v19 = v5;
    type metadata accessor for ImportExport.AttachmentDownloadIterator();
    v31 = 0;
    sub_1A8497BA8(&qword_1EB2E8608, type metadata accessor for ImportExport.AttachmentDownloadIterator);
    v20 = v25;
    sub_1A84E666C();
    v17 = v27;
    *(v27 + 16) = v32;
    v30 = 1;
    sub_1A8497BA8(&qword_1EB2E7198, type metadata accessor for ImportExport.Message);
    sub_1A84E666C();
    sub_1A8497B40(v18, v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
    v29 = 2;
    sub_1A8497BA8(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment);
    sub_1A84E666C();
    (*(v26 + 8))(v13, v20);
    sub_1A8497B40(v19, v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
  }

  sub_1A8244788(v28);
  return v17;
}

uint64_t sub_1A84979B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ImportExport.AttachmentDownloader();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ImportExport.AttachmentDownloader.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A8497A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8497AA0()
{
  result = qword_1EB2E85F0;
  if (!qword_1EB2E85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E85F0);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.AttachmentDownloader()
{
  result = qword_1EB2E8610;
  if (!qword_1EB2E8610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8497B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8497BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8497BF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_1A8496E14(v6 + v7, a4, a3);
}

uint64_t sub_1A8497C58()
{
  result = type metadata accessor for ImportExport.Message();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ImportExport.Attachment();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ImportExport.AttachmentDownloader.download(into:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(*v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1A82505F4;

  return (v14)(a1, a2, a3, a4 & 1);
}

unint64_t sub_1A8497F4C()
{
  result = qword_1EB2E8620;
  if (!qword_1EB2E8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8620);
  }

  return result;
}

unint64_t sub_1A8497FA4()
{
  result = qword_1EB2E8628;
  if (!qword_1EB2E8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8628);
  }

  return result;
}

unint64_t sub_1A8497FFC()
{
  result = qword_1EB2E8630;
  if (!qword_1EB2E8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8630);
  }

  return result;
}

uint64_t sub_1A8498050(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x80000001A8533370 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ImportExport.ConversationExporter.__allocating_init(withConversation:exportOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ImportExport.ConversationExporter.init(withConversation:exportOptions:exportStatistics:)(a1, a2, a3);
  return v9;
}

uint64_t sub_1A849824C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1A84982B4()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1A84982FC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1A8243D74(a1, &v11 - v6, &qword_1EB2E7CF8, &qword_1A8509020);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A849D1DC(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1A84983D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  return sub_1A8243D74(v1 + v3, a1, &qword_1EB2E7CF8, &qword_1A8509020);
}

BOOL sub_1A849843C()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A8243D74(v0 + v5, v4, &qword_1EB2E7CF8, &qword_1A8509020);
  v6 = type metadata accessor for ImportExport.MessageBatch();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1A824B2D4(v4, &qword_1EB2E7CF8, &qword_1A8509020);
  return v7;
}

uint64_t sub_1A849854C()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A8498590(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A8498640()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ImportExport.ConversationExporter.init(withConversation:exportOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v9 = type metadata accessor for ImportExport.MessageBatch();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 0;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount) = 0;
  sub_1A849D2AC(a1, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A849D2AC(a2, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  if (a3)
  {
    sub_1A849D24C(a2, type metadata accessor for ImportExport.ExportOptions);
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = a3;
    v10 = a3;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 1;
    type metadata accessor for ImportExport.ExportStatistics();
    swift_allocObject();
    v10 = ImportExport.ExportStatistics.init()();
    sub_1A849D24C(a2, type metadata accessor for ImportExport.ExportOptions);
    *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = v10;
  }

  *(v4 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID) = -1;
  result = swift_beginAccess();
  v12 = *(v10 + 72);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 72) = v14;

    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v16 = *(v4 + v15);
    v17 = *(*(a1 + 240) + 16);
    result = swift_beginAccess();
    v18 = *(v16 + 96);
    v13 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (!v13)
    {
      *(v16 + 96) = v19;
      sub_1A849D24C(a1, type metadata accessor for ImportExport.Conversation);
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84988C0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = *(*(sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for ImportExport.MessageBatch();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84989DC, 0, 0);
}

uint64_t sub_1A84989DC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v0[29] = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A8243D74(v4 + v5, v3, &qword_1EB2E7CF8, &qword_1A8509020);
  v6 = *(v2 + 48);
  v0[30] = v6;
  v0[31] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_1A824B2D4(v0[24], &qword_1EB2E7CF8, &qword_1A8509020);
  }

  else
  {
    v7 = v0[28];
    v8 = v0[25];
    sub_1A849D3B4(v0[24], v7, type metadata accessor for ImportExport.MessageBatch);
    v9 = *(v7 + *(v8 + 20));

    sub_1A842A03C(v10);
    sub_1A849D24C(v0[28], type metadata accessor for ImportExport.MessageBatch);
  }

  v11 = v0[21];
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  swift_beginAccess();
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_1A8498C0C;
  v14 = v0[23];
  v15 = v0[21];

  return sub_1A84991C4(v14, v11 + v12);
}

uint64_t sub_1A8498C0C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1A8498FB0;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1A8498D28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A8498D28()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  swift_beginAccess();
  sub_1A849D1DC(v5, v7 + v3);
  swift_endAccess();
  sub_1A8243D74(v7 + v3, v6, &qword_1EB2E7CF8, &qword_1A8509020);
  if (v2(v6, 1, v4) == 1)
  {
    sub_1A824B2D4(v0[22], &qword_1EB2E7CF8, &qword_1A8509020);
LABEL_11:
    v27 = v0[21];
    sub_1A8499054();
    v26 = 1;
    goto LABEL_12;
  }

  v8 = v0[27];
  v9 = v0[25];
  sub_1A849D3B4(v0[22], v8, type metadata accessor for ImportExport.MessageBatch);
  if (!*(*(v8 + *(v9 + 20)) + 16))
  {
    sub_1A849D24C(v0[27], type metadata accessor for ImportExport.MessageBatch);
    goto LABEL_11;
  }

  v10 = v0[21];
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount;
  result = swift_beginAccess();
  v13 = *(v10 + v11);
  if (!v13)
  {
    v14 = v0[21];
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v16 = *(v14 + v15);
    result = swift_beginAccess();
    v17 = *(v16 + 112);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v20 = v0[21];
    *(v16 + 112) = v19;
    v21 = *(*(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation + 240) + 16);
    v22 = *(v16 + 136);
    v18 = __OFADD__(v22, v21);
    v23 = v22 + v21;
    if (v18)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    *(v16 + 136) = v23;
  }

  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v0[27];
  v25 = v0[20];
  *(v10 + v11) = v13 + 1;
  sub_1A849D3B4(v24, v25, type metadata accessor for ImportExport.MessageBatch);
  v26 = 0;
LABEL_12:
  v28 = v0[27];
  v29 = v0[28];
  v31 = v0[23];
  v30 = v0[24];
  v32 = v0[22];
  (*(v0[26] + 56))(v0[20], v26, 1, v0[25]);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1A8498FB0()
{
  swift_endAccess();
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A8499054()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  if (*(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) == 1)
  {
    v6 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
    swift_beginAccess();
    v7 = *(v1 + v6);
    swift_beginAccess();
    v8 = *(v7 + 24);

    ImportExport.Timer.stop()();
  }

  v9 = type metadata accessor for ImportExport.MessageBatch();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  sub_1A849D1DC(v5, v1 + v10);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID;
  result = swift_beginAccess();
  *(v1 + v11) = -1;
  return result;
}

uint64_t sub_1A84991C4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = type metadata accessor for ImportExport.MessageBatch();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ImportExport.Conversation() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v8 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v3[35] = v8;
  v9 = *(v8 - 8);
  v3[36] = v9;
  v10 = *(v9 + 64) + 15;
  v3[37] = swift_task_alloc();
  v11 = type metadata accessor for ImportExport.ExportOptions();
  v3[38] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v13 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v14 = sub_1A84E558C();
  v3[43] = v14;
  v15 = *(v14 - 8);
  v3[44] = v15;
  v16 = *(v15 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v17 = *(*(sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v18 = type metadata accessor for ImportExport.Attachment();
  v3[48] = v18;
  v19 = *(v18 - 8);
  v3[49] = v19;
  v20 = *(v19 + 64) + 15;
  v3[50] = swift_task_alloc();
  v21 = type metadata accessor for ImportExport.MessagePart();
  v3[51] = v21;
  v22 = *(v21 - 8);
  v3[52] = v22;
  v23 = *(v22 + 64) + 15;
  v3[53] = swift_task_alloc();
  v24 = *(*(sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10) - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v25 = type metadata accessor for ImportExport.Message();
  v3[55] = v25;
  v26 = *(v25 - 8);
  v3[56] = v26;
  v27 = *(v26 + 64) + 15;
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v28 = sub_1A84E5C9C();
  v3[60] = v28;
  v29 = *(v28 - 8);
  v3[61] = v29;
  v30 = *(v29 + 64) + 15;
  v3[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84995F0, 0, 0);
}