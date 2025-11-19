uint64_t sub_22B703E38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a1 >> 14;
  if (a1 >> 14 != a2 >> 14)
  {
    do
    {
      v12 = sub_22B7DC038();
      sub_22B75A66C(v12, a1, a2, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
        sub_22B7DC2D8();
      }

      else
      {
        if ((a4 & 0x2000000000000000) == 0 && (a3 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        sub_22B7DC338();
      }

      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a5);
      sub_22B7DC698();
      a5 = sub_22B7DC6A8();
    }

    while (v6 != sub_22B7DC038() >> 14);
  }

  sub_22B7DC6C8();
  MEMORY[0x231895FF0](a5);
  MEMORY[0x231895FF0](0);
  return sub_22B7DC6A8();
}

int64_t sub_22B703FDC(int64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v3 = a2;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    sub_22B7031F8(0xFuLL, result, v4 | (v3 << 16), a2, a3);

    return sub_22B7DB738();
  }

  return result;
}

void *sub_22B704078(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a5)
    {
      return MEMORY[0x277D84F90];
    }

    v8 = result;
    v10 = sub_22B7DB958();
    v11 = v10;
    v10[2] = a5;
    v10[4] = v8;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v12 = a5 - 1;
    if (v12)
    {
      v13 = v10 + 11;
      do
      {
        *(v13 - 3) = v8;
        *(v13 - 2) = a2;
        *(v13 - 1) = a3;
        *v13 = a4;

        v13 += 4;
        --v12;
      }

      while (v12);
    }

    return v11;
  }

  return result;
}

void sub_22B70412C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v91 = a2;
  v88 = sub_22B7DAA58();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B6F0AD4(&qword_27D8CEF50, &unk_22B7F9770);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  v14 = sub_22B7DAAB8();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v75 - v21;
  v23 = [a4 dateEdited];
  if (!v23)
  {
    v37 = sub_22B7DA968();
    (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
    sub_22B4D0D64(v22, &unk_27D8CF790, &qword_22B7F9578);
    return;
  }

  v86 = v13;
  v24 = v23;
  sub_22B7DA928();

  v25 = sub_22B7DA968();
  (*(*(v25 - 8) + 56))(v22, 0, 1, v25);
  sub_22B4D0D64(v22, &unk_27D8CF790, &qword_22B7F9578);
  v26 = sub_22B7DBCF8();
  if (v26)
  {
    v27 = v26;
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28 || (v29 = v28, sub_22B6FE414(v28), (v30 & 1) == 0) || (v31 = [v29 editedPartIndexes]) == 0)
    {

      return;
    }

    v78 = v27;
    v85 = v29;
    v32 = v31;
    sub_22B7DAA88();

    v33 = v86;
    sub_22B7DAA68();
    v34 = *(v10 + 36);
    v35 = sub_22B704B28(&unk_27D8CEF60, MEMORY[0x277CC9A28]);
    v76 = a1;
    v77 = v15;
    v36 = (v7 + 8);
    v83 = v18;
    v84 = v14;
    v80 = v35;
    v81 = v34;
    for (i = (v7 + 8); ; v36 = i)
    {
      v38 = v87;
      sub_22B7DBB88();
      sub_22B704B28(&qword_27D8CD678, MEMORY[0x277CC9A08]);
      v39 = v88;
      v40 = sub_22B7DB658();
      (*v36)(v38, v39);
      if (v40)
      {

        sub_22B4D0D64(v33, &qword_27D8CEF50, &unk_22B7F9770);
        (*(v77 + 8))(v18, v14);
        return;
      }

      v41 = sub_22B7DBC28();
      v43 = *v42;
      v41(v92, 0);
      sub_22B7DBB98();
      v82 = v43;
      v44 = [v85 historyForMessagePart_];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      sub_22B4D01A0(0, &qword_27D8CEF70, 0x277D1AA90);
      v46 = sub_22B7DB918();

      if (v46 >> 62)
      {
        v47 = sub_22B7DC1C8();
        if (v47)
        {
LABEL_15:
          v48 = 0;
          v89 = v46 & 0xFFFFFFFFFFFFFF8;
          v90 = v46 & 0xC000000000000001;
          while (1)
          {
            if (v90)
            {
              v49 = MEMORY[0x231895C80](v48, v46);
            }

            else
            {
              if (v48 >= *(v89 + 16))
              {
                goto LABEL_40;
              }

              v49 = *(v46 + 8 * v48 + 32);
            }

            v35 = v49;
            v50 = (v48 + 1);
            if (__OFADD__(v48, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v38 = [v49 messagePartText];
            v51 = a3;
            v52 = [v38 string];
            v53 = sub_22B7DB6A8();
            v55 = v54;

            if (v53 == v91 && v55 == v51)
            {
              break;
            }

            a3 = v51;
            v57 = sub_22B7DC518();

            if (v57)
            {
              goto LABEL_31;
            }

            ++v48;
            if (v50 == v47)
            {
              goto LABEL_10;
            }
          }

LABEL_31:

          v48 = v86;
          v47 = v76;
          if (qword_28141F540 == -1)
          {
            goto LABEL_32;
          }

LABEL_41:
          swift_once();
LABEL_32:
          v58 = sub_22B7DB2B8();
          sub_22B4CFA74(v58, qword_28141F548);
          v59 = v47;
          v14 = v78;
          v60 = sub_22B7DB298();
          v61 = sub_22B7DBC78();
          if (!os_log_type_enabled(v60, v61))
          {

            v74 = v48;
            goto LABEL_37;
          }

          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v92[0] = v63;
          *v62 = 136315650;
          v64 = [v59 guid];

          if (v64)
          {
            v65 = sub_22B7DB6A8();
            v67 = v66;

            v68 = sub_22B4CFAAC(v65, v67, v92);

            *(v62 + 4) = v68;
            *(v62 + 12) = 2080;
            v69 = [v85 guid];

            if (v69)
            {
              v70 = sub_22B7DB6A8();
              v72 = v71;

              v73 = sub_22B4CFAAC(v70, v72, v92);

              *(v62 + 14) = v73;
              *(v62 + 22) = 2048;
              *(v62 + 24) = v82;
              _os_log_impl(&dword_22B4CC000, v60, v61, "Backward compatibility message %s matches an existing message %s at message part %ld.", v62, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x231898D60](v63, -1, -1);
              MEMORY[0x231898D60](v62, -1, -1);

              v74 = v86;
LABEL_37:
              sub_22B4D0D64(v74, &qword_27D8CEF50, &unk_22B7F9770);
              (*(v77 + 8))(v83, v84);
              return;
            }

LABEL_44:
            __break(1u);
            return;
          }

LABEL_43:

          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v47)
        {
          goto LABEL_15;
        }
      }

LABEL_10:

      v18 = v83;
      v14 = v84;
      v33 = v86;
      v35 = v80;
    }

    __break(1u);
    goto LABEL_43;
  }
}

unint64_t sub_22B704A08()
{
  result = qword_27D8CD648;
  if (!qword_27D8CD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD648);
  }

  return result;
}

unint64_t sub_22B704A5C()
{
  result = qword_28141F300;
  if (!qword_28141F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F300);
  }

  return result;
}

unint64_t sub_22B704AB0()
{
  result = qword_27D8CEEE0;
  if (!qword_27D8CEEE0)
  {
    sub_22B4D01A0(255, &qword_27D8CD668, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEEE0);
  }

  return result;
}

uint64_t sub_22B704B28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B704B70()
{
  result = qword_28141F310;
  if (!qword_28141F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F310);
  }

  return result;
}

void sub_22B704C50(void *a1)
{
  if (![a1 unreadCount])
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_281422620);
    v3 = a1;
    v4 = sub_22B7DB298();
    v5 = sub_22B7DBC78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v15 = [v3 guid];

      if (v15)
      {
        v16 = sub_22B7DB6A8();
        v18 = v17;

        v19 = sub_22B4CFAAC(v16, v18, &v20);

        *(v6 + 4) = v19;
        v13 = "Received summary for chat with GUID %s but chat is already marked as read (likely via another device). Not writing summary to chat.";
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([a1 isFiltered] == 2)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v2 = sub_22B7DB2B8();
    sub_22B4CFA74(v2, qword_281422620);
    v3 = a1;
    v4 = sub_22B7DB298();
    v5 = sub_22B7DBC78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = [v3 guid];

      if (v8)
      {
        v9 = sub_22B7DB6A8();
        v11 = v10;

        v12 = sub_22B4CFAAC(v9, v11, &v20);

        *(v6 + 4) = v12;
        v13 = "Not summarizing junk chat with GUID %s";
LABEL_13:
        _os_log_impl(&dword_22B4CC000, v4, v5, v13, v6, 0xCu);
        sub_22B4CFB78(v7);
        MEMORY[0x231898D60](v7, -1, -1);
        MEMORY[0x231898D60](v6, -1, -1);
LABEL_15:

        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }
}

void sub_22B704F28(uint64_t a1)
{
  v119[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (!v1)
  {
    if (qword_28141F370 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_66;
  }

  v2 = a1;
  v3 = sub_22B759CB4(*(a1 + 16), 0);
  v4 = sub_22B75A2BC(v119, v3 + 4, v1, v2);

  sub_22B705E3C();
  if (v4 != v1)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
LABEL_46:
    v89 = sub_22B7DB2B8();
    sub_22B4CFA74(v89, qword_281422620);
    osloga = sub_22B7DB298();
    v90 = sub_22B7DBC98();
    if (os_log_type_enabled(osloga, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_22B4CC000, osloga, v90, "Tried to update chats with summaries, but there were no summaries provided.", v91, 2u);
      MEMORY[0x231898D60](v91, -1, -1);
    }

    goto LABEL_61;
  }

  v5 = [objc_opt_self() sharedProvider];
  if (!v5)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v92 = sub_22B7DB2B8();
    sub_22B4CFA74(v92, qword_281422620);

    osloga = sub_22B7DB298();
    v93 = sub_22B7DBC98();

    if (os_log_type_enabled(osloga, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v119[0] = v95;
      *v94 = 136315394;
      *(v94 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80E4F0, v119);
      *(v94 + 12) = 2080;
      v96 = MEMORY[0x2318952A0](v3, MEMORY[0x277D837D0]);
      v98 = v97;

      v99 = sub_22B4CFAAC(v96, v98, v119);

      *(v94 + 14) = v99;
      _os_log_impl(&dword_22B4CC000, osloga, v93, "%s No broadcaster for messages with GUIDs %s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v95, -1, -1);
      MEMORY[0x231898D60](v94, -1, -1);

LABEL_59:
      v104 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_61:
    v105 = *MEMORY[0x277D85DE8];

    return;
  }

  v110 = v3;
  v109 = [v5 broadcasterForChatListeners];
  swift_unknownObjectRelease();
  v112 = sub_22B71DF84(MEMORY[0x277D84F90]);
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v108 = *MEMORY[0x277D197C0];
  v107 = *MEMORY[0x277D197C8];
  v106 = *MEMORY[0x277D197B0];
  v111 = *MEMORY[0x277D197B8];

  oslog = v10;
  v115 = v2;
  v11 = 0;
  if (!v9)
  {
LABEL_8:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        if (v112[2])
        {
          sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
          v79 = sub_22B7DB568();

          [v109 updatedSummariesForChatsWithGUIDsAndProperties_];

          if (qword_28141F370 != -1)
          {
            swift_once();
          }

          v80 = sub_22B7DB2B8();
          sub_22B4CFA74(v80, qword_281422620);

          v81 = sub_22B7DB298();
          v82 = sub_22B7DBC78();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v119[0] = v84;
            *v83 = 136315394;
            *(v83 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80E4F0, v119);
            *(v83 + 12) = 2080;
            v85 = MEMORY[0x2318952A0](v110, MEMORY[0x277D837D0]);
            v87 = v86;

            v88 = sub_22B4CFAAC(v85, v87, v119);

            *(v83 + 14) = v88;
            _os_log_impl(&dword_22B4CC000, v81, v82, "%s Broadcasted messagesUpdated for GUIDs %s", v83, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v84, -1, -1);
            MEMORY[0x231898D60](v83, -1, -1);
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {

          if (qword_28141F370 != -1)
          {
            swift_once();
          }

          v100 = sub_22B7DB2B8();
          sub_22B4CFA74(v100, qword_281422620);
          v101 = sub_22B7DB298();
          v102 = sub_22B7DBC98();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&dword_22B4CC000, v101, v102, "There were no chats to update after processing the summary dictionary.", v103, 2u);
            MEMORY[0x231898D60](v103, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_59;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v12 = v11;
LABEL_11:
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(v2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v2 + 56) + 8 * v14);
        v19 = objc_opt_self();

        v20 = v18;
        v21 = [v19 sharedInstance];
        v22 = sub_22B7DB678();
        v23 = [v21 chatForMessageGUID_];

        if (!v23)
        {

LABEL_29:

          goto LABEL_30;
        }

        sub_22B704C50(v23);
        if (v24)
        {
          break;
        }

LABEL_30:
        v11 = v12;
        v10 = oslog;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      v113 = v23;
      v25 = [v20 string];
      v26 = sub_22B7DB6A8();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      v116 = v20;
      if (v29)
      {
        v30 = objc_opt_self();
        v119[0] = 0;
        v31 = [v30 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v119];
        v32 = v119[0];
        if (!v31)
        {
          v61 = v32;

          v62 = sub_22B7DA6F8();

          swift_willThrow();
          v2 = v115;
          if (qword_28141F370 != -1)
          {
            swift_once();
          }

          v63 = sub_22B7DB2B8();
          sub_22B4CFA74(v63, qword_281422620);
          v64 = v62;
          v65 = sub_22B7DB298();
          v66 = sub_22B7DBC98();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = v20;
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *v68 = 138412290;
            v70 = v62;
            v71 = _swift_stdlib_bridgeErrorToNSError();
            *(v68 + 4) = v71;
            *v69 = v71;
            _os_log_impl(&dword_22B4CC000, v65, v66, "Failed to encode summary: %@", v68, 0xCu);
            sub_22B4D0D64(v69, &unk_27D8CEC60, &qword_22B7F9E20);
            MEMORY[0x231898D60](v69, -1, -1);
            MEMORY[0x231898D60](v68, -1, -1);
          }

          else
          {
          }

          goto LABEL_30;
        }

        v33 = sub_22B7DA848();
        v35 = v34;

        sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B7F97B0;
        *(inited + 32) = sub_22B7DB6A8();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v37;
        *(inited + 48) = v17;
        *(inited + 56) = v16;
        *(inited + 80) = sub_22B7DB6A8();
        *(inited + 88) = v38;
        *(inited + 120) = MEMORY[0x277CC9318];
        *(inited + 96) = v33;
        *(inited + 104) = v35;
        *(inited + 128) = sub_22B7DB6A8();
        *(inited + 136) = v39;
        *(inited + 168) = MEMORY[0x277D839B0];
        *(inited + 144) = 0;

        sub_22B705E44(v33, v35);
        v40 = sub_22B71DF98(inited);
        swift_setDeallocating();
        sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
        swift_arrayDestroy();
        v41 = swift_initStackObject();
        *(v41 + 16) = xmmword_22B7F93B0;
        *(v41 + 32) = sub_22B7DB6A8();
        *(v41 + 40) = v42;
        *(v41 + 72) = sub_22B6F0AD4(&qword_27D8CF590, &unk_22B7F97C0);
        *(v41 + 48) = v40;
        v43 = sub_22B71DF98(v41);
        swift_setDeallocating();
        sub_22B4D0D64(v41 + 32, &qword_27D8CDB60, &qword_22B7FA360);
        sub_22B705E98(v33, v35);
      }

      else
      {
        sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_22B7F93B0;
        *(v44 + 32) = sub_22B7DB6A8();
        *(v44 + 40) = v45;
        v46 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        *(v44 + 72) = sub_22B4D01A0(0, &qword_28141EFF8, 0x277CBEB68);
        *(v44 + 48) = v46;
        v43 = sub_22B71DF98(v44);
        swift_setDeallocating();
        sub_22B4D0D64(v44 + 32, &qword_27D8CDB60, &qword_22B7FA360);
      }

      sub_22B7B0AC8(v47);

      v48 = sub_22B7DB568();

      v49 = [v113 updateProperties_];

      v2 = v115;
      if (!v49)
      {
        break;
      }

      v72 = [v113 guid];
      if (!v72)
      {
        goto LABEL_68;
      }

      v73 = v72;

      v74 = sub_22B7DB6A8();
      v76 = v75;

      v77 = sub_22B7B0AC8(v43);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119[0] = v112;
      sub_22B768860(v77, v74, v76, isUniquelyReferenced_nonNull_native);

      v112 = v119[0];
      v10 = oslog;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v50 = sub_22B7DB2B8();
    sub_22B4CFA74(v50, qword_281422620);
    v51 = v113;
    v52 = sub_22B7DB298();
    v53 = sub_22B7DBC98();
    v20 = v116;
    if (!os_log_type_enabled(v52, v53))
    {

      goto LABEL_29;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v119[0] = v55;
    *v54 = 136315138;
    v56 = [v51 guid];
    v114 = v51;

    if (!v56)
    {
      break;
    }

    v57 = sub_22B7DB6A8();
    v59 = v58;

    v60 = sub_22B4CFAAC(v57, v59, v119);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_22B4CC000, v52, v53, "Failed to update summary property on chat with guid %s.", v54, 0xCu);
    sub_22B4CFB78(v55);
    MEMORY[0x231898D60](v55, -1, -1);
    MEMORY[0x231898D60](v54, -1, -1);

    v11 = v12;
    v2 = v115;
    v10 = oslog;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_22B705E44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B705E98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

NSNumber __swiftcall NSNumber.round(toSignificantDigit:)(Swift::Int64 toSignificantDigit)
{
  if (toSignificantDigit <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = toSignificantDigit;
  }

  v4 = [v1 longLongValue];
  if (!v4 || (v4 <= 9 ? (v5 = toSignificantDigit <= 1) : (v5 = 0), v5))
  {
    sub_22B705FCC();
    return sub_22B7DBFB8();
  }

  else
  {
    v6 = log10(fabs(v4));
    __exp10(round(v6) - v3 + 1.0);

    return sub_22B7DBAC8();
  }
}

unint64_t sub_22B705FCC()
{
  result = qword_28141EFE0;
  if (!qword_28141EFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141EFE0);
  }

  return result;
}

Class sub_22B706018(void *a1, uint64_t a2, Swift::Int64 a3)
{
  v4 = a1;
  v5.super.super.isa = NSNumber.round(toSignificantDigit:)(a3).super.super.isa;

  return v5.super.super.isa;
}

NSNumber __swiftcall NSNumber.bucket()()
{
  if ([v0 longLongValue] < 100)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [v0 roundToSignificantDigit_];

  return v2;
}

id sub_22B7060B8(void *a1)
{
  v1 = a1;
  if ([v1 longLongValue] < 100)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [v1 roundToSignificantDigit_];

  return v3;
}

uint64_t sub_22B706128()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld);
  sub_22B7DABF8();
  v3 = *(v1 + OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_persistenceHelloWorld);
  return sub_22B7DABA8();
}

id DaemonCoreHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonCoreHelloWorldClass.init()()
{
  v1 = OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld;
  *&v0[v1] = [objc_allocWithZone(sub_22B7DAC08()) init];
  v2 = OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_persistenceHelloWorld;
  *&v0[v2] = [objc_allocWithZone(sub_22B7DABB8()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DaemonCoreHelloWorldClass();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DaemonCoreHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonCoreHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IMDaemonCoreHelloWorld.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22B7DAB88();
  v2 = a1 + *(type metadata accessor for IMDaemonCoreHelloWorld() + 20);
  return sub_22B7DAB88();
}

uint64_t type metadata accessor for IMDaemonCoreHelloWorld()
{
  result = qword_27D8CD6A0;
  if (!qword_27D8CD6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall IMDaemonCoreHelloWorld.printGreeting()()
{
  sub_22B7DAB78();
  v1 = v0 + *(type metadata accessor for IMDaemonCoreHelloWorld() + 20);
  sub_22B7DAB78();
}

uint64_t sub_22B7064DC()
{
  result = sub_22B7DABE8();
  if (v1 <= 0x3F)
  {
    result = sub_22B7DAB98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B706560()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F570);
  sub_22B4CFA74(v0, qword_28141F570);
  return sub_22B7DB2A8();
}

id sub_22B7065E0()
{
  result = [objc_allocWithZone(IMDReparentingMonitor) init];
  qword_2814225E0 = result;
  return result;
}

void __swiftcall IMDReparentingMonitor.init()(IMDReparentingMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *IMDReparentingMonitor.init()()
{
  v0 = sub_22B7DB348();
  v1 = *(v0 - 8);
  v39 = v0;
  v40 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22B7DBD48();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B7DBD38();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22B7DB398();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR___IMDReparentingMonitor_queue;
  v34[0] = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v34[3] = "persistenceHelloWorld";
  sub_22B7DB378();
  aBlock[0] = MEMORY[0x277D84F90];
  v34[2] = sub_22B4D1164(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  v14 = *MEMORY[0x277D85260];
  v15 = v4 + 104;
  v16 = *(v4 + 104);
  v34[1] = v15;
  v16(v7, v14, v41);
  *&v42[v35] = sub_22B7DBD88();
  v35 = OBJC_IVAR___IMDReparentingMonitor_registrationQueue;
  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B7DC138();
  v16(v7, v14, v41);
  v17 = v13;
  v18 = sub_22B7DBD88();
  v19 = v42;
  *&v42[v35] = v18;
  v20 = OBJC_IVAR___IMDReparentingMonitor_state;
  sub_22B6F0AD4(&qword_27D8CD6E0, &qword_22B7F9818);
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  *&v19[v20] = v21;
  v45.receiver = v19;
  v45.super_class = IMDReparentingMonitor;
  v22 = objc_msgSendSuper2(&v45, sel_init);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 defaultCenter];
  [v25 addObserver:v24 selector:sel_cloudkitStateEnabledReturnedWithNotification_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  v26 = *&v24[OBJC_IVAR___IMDReparentingMonitor_registrationQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  aBlock[4] = sub_22B706CE0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1C3E8;
  v28 = _Block_copy(aBlock);
  v29 = v24;
  v30 = v26;
  sub_22B7DACD8();
  v43 = MEMORY[0x277D84F90];
  sub_22B4D1164(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  v32 = v38;
  v31 = v39;
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v17, v32, v28);
  _Block_release(v28);

  (*(v40 + 8))(v32, v31);
  (*(v36 + 8))(v17, v37);

  return v29;
}

void sub_22B706CE0()
{
  v1 = *(v0 + 16);
  sub_22B706D14();

  sub_22B708354();
}

void sub_22B706D14()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_22B7DB678();
  v3 = *&v0[OBJC_IVAR___IMDReparentingMonitor_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_22B708A8C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22B74C9E0;
  v7[3] = &unk_283F1C508;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v5];
  _Block_release(v5);
}

uint64_t sub_22B706E74()
{
  v1 = v0;
  v2 = sub_22B7DB348();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B7DB398();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F568 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_28141F570);
  v11 = sub_22B7DB298();
  v12 = sub_22B7DBCB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B4CC000, v11, v12, "cloudkitStateEnabledReturned. Starting to monitor...", v13, 2u);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  v14 = *&v1[OBJC_IVAR___IMDReparentingMonitor_registrationQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_22B708350;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1C4B8;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  sub_22B7DACD8();
  v22 = MEMORY[0x277D84F90];
  sub_22B4D1164(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v9, v5, v16);
  _Block_release(v16);
  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

id sub_22B7072D0(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_22B708AB0;
    v13[5] = v2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_22B4D22C0;
    v13[3] = &unk_283F1C558;
    v3 = _Block_copy(v13);

    [a1 setExpirationHandler_];
    _Block_release(v3);
    sub_22B7075F8();
    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_28141F570);
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBC78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Completed.", v7, 2u);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    return [a1 setTaskCompleted];
  }

  else
  {
    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_28141F570);
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v10, v11, "Error! IMDReparentingMonitor requested to handle non-repeating task but was only expected to handle repeating tasks.", v12, 2u);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    return [a1 setTaskCompleted];
  }
}

uint64_t sub_22B707574()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___IMDReparentingMonitor_state);
    v2 = result;

    os_unfair_lock_lock((v1 + 20));
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));
  }

  return result;
}

void sub_22B7075F8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isBGSTMessageProcessingEnabled];

  if (v3)
  {
    if (qword_28141F568 != -1)
    {
LABEL_39:
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    v41 = sub_22B4CFA74(v4, qword_28141F570);
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBC78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Searching for reparentable items...", v7, 2u);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v45 = OBJC_IVAR___IMDReparentingMonitor_state;
    swift_beginAccess();
    v47 = 0;
    v48 = 0;
    if (*(v46 + 16))
    {
LABEL_6:
      v8 = sub_22B7DB298();
      v9 = sub_22B7DBC78();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = v48;
        *(v10 + 12) = 2048;
        *(v10 + 14) = v47;
        _os_log_impl(&dword_22B4CC000, v8, v9, "Found and submitted %ld reparentable messages over %ld batches.", v10, 0x16u);
        MEMORY[0x231898D60](v10, -1, -1);
      }

      return;
    }

    v47 = 0;
    v48 = 0;
    v14 = 0;
    v44 = "ults";
    v43 = "v16@?0@BGSystemTask8";
    v42 = v53;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *&v1[v45];
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      os_unfair_lock_lock((v16 + 20));
      sub_22B708AEC((v16 + 16), aBlock);
      os_unfair_lock_unlock((v16 + 20));

      if (aBlock[0])
      {
        goto LABEL_6;
      }

      v51 = v14;
      v49 = objc_autoreleasePoolPush();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      v19 = [objc_opt_self() synchronousDatabase];
      v20 = sub_22B7DB678();
      v21 = sub_22B7DB678();
      v22 = v15;
      v23 = IMGetDomainIntForKey();

      v24 = swift_allocObject();
      v24[2] = v46;
      v24[3] = v18;
      v24[4] = v1;
      v53[2] = sub_22B708B34;
      v53[3] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v53[0] = sub_22B707F60;
      v53[1] = &unk_283F1C5F8;
      v25 = _Block_copy(aBlock);

      v26 = v1;

      [v19 reparentableMessagesStartingAtRowID:v23 limit:64 completionHandler:v25];
      _Block_release(v25);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v27 = *(v18 + 16);
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v1;
        aBlock[0] = v22;

        sub_22B7DC388();
        v30 = (v27 + 40);
        do
        {
          v31 = *(v30 - 1);
          v32 = *v30;
          v33 = objc_allocWithZone(MEMORY[0x277D18EF0]);

          v34 = sub_22B7DB678();

          [v33 initWithGUID:v34 flag:8 lane:0 reason:100000 userInfo:0 retryCount:1];

          sub_22B7DC358();
          v35 = *(aBlock[0] + 16);
          sub_22B7DC398();
          sub_22B7DC3A8();
          sub_22B7DC368();
          v30 += 2;
          --v28;
        }

        while (v28);

        v36 = aBlock[0];
        v1 = v29;
        v15 = MEMORY[0x277D84F90];
      }

      else
      {
        v36 = v22;
        v15 = v22;
      }

      v14 = v51;
      if (v36 >> 62)
      {
        if (!sub_22B7DC1C8())
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      else if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v37 = [objc_opt_self() pTaskQueryProvider];
      if (v37)
      {
        v38 = v37;
        sub_22B4D01A0(0, &qword_27D8CD6F8, 0x277D18EF0);
        v39 = sub_22B7DB8F8();
        [v38 storeTasks_];

        swift_unknownObjectRelease();
      }

      if (v36 >> 62)
      {
        v40 = sub_22B7DC1C8();
      }

      else
      {
        v40 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v48, v40))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (__OFADD__(v47, 1))
      {
        goto LABEL_38;
      }

      ++v47;
      v48 += v40;
LABEL_18:
      objc_autoreleasePoolPop(v49);
      if (*(v46 + 16) == 1)
      {
        goto LABEL_6;
      }
    }
  }

  if (qword_28141F568 != -1)
  {
    swift_once();
  }

  v11 = sub_22B7DB2B8();
  sub_22B4CFA74(v11, qword_28141F570);
  v50 = sub_22B7DB298();
  v12 = sub_22B7DBC78();
  if (os_log_type_enabled(v50, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B4CC000, v50, v12, "Messaging Processing Disabled. Cannot monitor for reparentable items.", v13, 2u);
    MEMORY[0x231898D60](v13, -1, -1);
  }
}

void sub_22B707D88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_28141F570);
    v8 = a3;
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22B4CC000, v9, v10, "Error while searching for reparentable messages: %@", v11, 0xCu);
      sub_22B708A24(v12);
      MEMORY[0x231898D60](v12, -1, -1);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    swift_beginAccess();
    *(a4 + 16) = 1;
  }

  else
  {
    if (a2 == -1)
    {
      v17 = a5;
      swift_beginAccess();
      a5 = v17;
      *(a4 + 16) = 1;
    }

    v18 = a5;
    swift_beginAccess();
    v19 = *(v18 + 16);
    *(v18 + 16) = a1;

    sub_22B708B40(a2);
  }
}

void sub_22B707F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_22B7DB918();

  v9 = a4;
  v7(v8, a3, a4);
}

uint64_t sub_22B708004()
{
  v0 = sub_22B6F0AD4(&unk_27D8CE580, &unk_22B7FA5D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  sub_22B6F24F4(v4, qword_27D8CD6B0);
  sub_22B4CFA74(v4, qword_27D8CD6B0);
  v5 = *MEMORY[0x277D195F0];
  v6 = sub_22B6F0AD4(&qword_27D8CD6F0, &qword_22B7F9848);
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_22B7DADC8();
  return sub_22B7DADB8();
}

uint64_t _s9TaskStateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9TaskStateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22B708354()
{
  v48[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v48 - v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v7 = sub_22B7DB678();
  v8 = [v6 taskRequestForIdentifier_];

  if (!v8)
  {
    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 cloudKitSyncingEnabled];

    if ((v22 & 1) == 0)
    {
      if (qword_27D8CCC08 != -1)
      {
        swift_once();
      }

      v23 = sub_22B4CFA74(v0, qword_27D8CD6B0);
      (*(v1 + 16))(v4, v23, v0);
      sub_22B7DADA8();
      (*(v1 + 8))(v4, v0);
      if (LOBYTE(v48[0]) != 1)
      {
        if (qword_28141F568 != -1)
        {
          swift_once();
        }

        v42 = sub_22B7DB2B8();
        sub_22B4CFA74(v42, qword_28141F570);
        v43 = sub_22B7DB298();
        v44 = sub_22B7DBC78();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_22B4CC000, v43, v44, "MiC is not enabled. No need to monitor for reparentable messages.", v45, 2u);
          MEMORY[0x231898D60](v45, -1, -1);
        }

        goto LABEL_29;
      }
    }

    v24 = objc_allocWithZone(MEMORY[0x277CF07D8]);
    v25 = sub_22B7DB678();
    v26 = [v24 initWithIdentifier_];

    [v26 setRequiresUserInactivity_];
    [v26 setInterval_];
    [v26 setMinDurationBetweenInstances_];
    v27 = [v5 sharedScheduler];
    v48[0] = 0;
    LODWORD(v24) = [v27 submitTaskRequest:v26 error:v48];

    if (v24)
    {
      v28 = v48[0];
    }

    else
    {
      v32 = v48[0];
      v33 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F568 != -1)
      {
        swift_once();
      }

      v34 = sub_22B7DB2B8();
      sub_22B4CFA74(v34, qword_28141F570);
      v35 = v33;
      v36 = sub_22B7DB298();
      v37 = sub_22B7DBC98();

      if (!os_log_type_enabled(v36, v37))
      {

        v31 = v33;
        goto LABEL_28;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_22B4CC000, v36, v37, "Failed to start monitoring with error: %@", v38, 0xCu);
      sub_22B708A24(v39);
      MEMORY[0x231898D60](v39, -1, -1);
      MEMORY[0x231898D60](v38, -1, -1);
    }

LABEL_29:
    v46 = *MEMORY[0x277D85DE8];
    return;
  }

  if (qword_28141F568 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_28141F570);
  v10 = sub_22B7DB298();
  v11 = sub_22B7DBC78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22B4CC000, v10, v11, "Attempted to start monitoring while already monitoring.", v12, 2u);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 cloudKitSyncingEnabled];

  if (v14)
  {
    goto LABEL_29;
  }

  v15 = [v5 sharedScheduler];
  v16 = sub_22B7DB678();
  v48[0] = 0;
  v17 = [v15 cancelTaskRequestWithIdentifier:v16 error:v48];

  v18 = v48[0];
  if (!v17)
  {
    v47 = v48[0];
    v29 = v48[0];
    v30 = sub_22B7DA6F8();

    swift_willThrow();
    v31 = v30;
LABEL_28:

    goto LABEL_29;
  }

  v19 = *MEMORY[0x277D85DE8];

  v20 = v18;
}

uint64_t sub_22B708A24(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B708AEC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  return result;
}

void sub_22B708B40(uint64_t a1)
{
  v2 = sub_22B7DB678();
  v3 = sub_22B7DB678();
  if (a1 == -1)
  {
    IMSetDomainValueForKey();
  }

  else
  {
    IMSetDomainIntForKey();
  }
}

uint64_t sub_22B708C0C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226B0);
  sub_22B4CFA74(v0, qword_2814226B0);
  return sub_22B7DB2A8();
}

void sub_22B708C90(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
    sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
    sub_22B7DBB28();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_22B7DC1F8() || (sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_22B705E3C();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 handle];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x231895260]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *CallManager.__allocating_init(serviceSession:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 conversationManager];

  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = objc_allocWithZone(type metadata accessor for CallManager());
  v9 = sub_22B7091D0(a1, v6, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

char *CallManager.init(serviceSession:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 conversationManager];

  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = objc_allocWithZone(type metadata accessor for CallManager());
  v6 = sub_22B7091D0(a1, v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

char *sub_22B7091D0(void *a1, void *a2, void *a3)
{
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v37 - v6;
  v38 = sub_22B7DBD48();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B7DBD38();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_22B7DB398();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v37 = OBJC_IVAR___IMDCallManager_Impl_queue;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DBD58();
  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B71004C(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B71019C();
  sub_22B7DC138();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v38);
  *&v3[v37] = sub_22B7DBD88();
  *&v3[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask] = 0;
  v16 = v39;
  v15 = v40;
  *&v3[OBJC_IVAR___IMDCallManager_Impl_serviceSession] = v39;
  *&v3[OBJC_IVAR___IMDCallManager_Impl_conversationManager] = v15;
  v17 = v41;
  *&v3[OBJC_IVAR___IMDCallManager_Impl_featureFlags] = v41;
  v18 = type metadata accessor for CallManager();
  v44.receiver = v3;
  v44.super_class = v18;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = objc_msgSendSuper2(&v44, sel_init);
  v23 = *&v22[OBJC_IVAR___IMDCallManager_Impl_conversationManager];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  aBlock[4] = sub_22B710200;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1C6E8;
  v25 = _Block_copy(aBlock);
  v26 = v22;
  v27 = v23;

  [v27 registerWithCompletionHandler_];
  _Block_release(v25);

  v28 = sub_22B7DBA58();
  v29 = v42;
  (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22B7DBA18();

  v31 = sub_22B7DBA08();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v30;

  v34 = sub_22B77E3D4(0, 0, v29, &unk_22B7F98E8, v32);

  v35 = *&v26[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask];
  *&v26[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask] = v34;

  return v26;
}

id sub_22B7096D8(uint64_t a1)
{
  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226F8);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "TUConversationManager registered", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = *(a1 + OBJC_IVAR___IMDCallManager_Impl_conversationManager);
  v7 = *(a1 + OBJC_IVAR___IMDCallManager_Impl_queue);

  return [v6 addDelegate:a1 queue:v7];
}

uint64_t sub_22B7097E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a4;
  v5 = sub_22B7DA688();
  v4[46] = v5;
  v6 = *(v5 - 8);
  v4[47] = v6;
  v7 = *(v6 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v8 = *(*(sub_22B6F0AD4(&qword_27D8CD7E8, &qword_22B7F98F0) - 8) + 64) + 15;
  v4[50] = swift_task_alloc();
  v9 = sub_22B7DBEA8();
  v4[51] = v9;
  v10 = *(v9 - 8);
  v4[52] = v10;
  v11 = *(v10 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = sub_22B7DBA18();
  v4[55] = sub_22B7DBA08();
  v13 = sub_22B7DB9C8();
  v4[56] = v13;
  v4[57] = v12;

  return MEMORY[0x2822009F8](sub_22B709980, v13, v12);
}

uint64_t sub_22B709980()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[58] = v1;
  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  v0[59] = sub_22B4CFA74(v2, qword_2814226F8);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Waiting for new chats ", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 73;
  v0[3] = sub_22B709B74;
  v6 = swift_continuation_init();
  v0[17] = sub_22B6F0AD4(&unk_27D8CD7F0, &qword_22B7F98F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B72DC1C;
  v0[13] = &unk_283F1C760;
  v0[14] = v6;
  [v1 waitForLoadedChatsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B709B74()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B709C7C, v2, v1);
}

uint64_t sub_22B709C7C()
{
  v1 = v0[59];
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Notified that all IMDChats are loaded.", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = v0[45];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[60] = Strong;
  if (!Strong)
  {
    goto LABEL_23;
  }

  v7 = [*(Strong + OBJC_IVAR___IMDCallManager_Impl_conversationManager) activeConversations];
  v0[61] = sub_22B4D01A0(0, &qword_28141F270, 0x277D6EE60);
  sub_22B70FFFC(&qword_28141F268, &qword_28141F270, 0x277D6EE60);
  v8 = sub_22B7DBAF8();

  if ((v8 & 0xC000000000000001) == 0)
  {
    v14 = 0;
    v17 = -1;
    v18 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v15 = v17 & *(v8 + 56);
    v0[63] = v12;
    v0[64] = ~v18;
    v0[62] = v8;
    v16 = 63 - v18;
    goto LABEL_10;
  }

  sub_22B7DC188();
  v9 = sub_22B7DBB28();
  v8 = v0[18];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[21];
  v15 = v0[22];
  v0[63] = v12;
  v0[64] = v13;
  v0[62] = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v16 = v13 + 64;
LABEL_10:
    v19 = v15;
    v20 = v14;
    if (!v15)
    {
      v21 = v16 >> 6;
      v22 = v14;
      while (1)
      {
        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v20 >= v21)
        {
          goto LABEL_22;
        }

        v19 = *(v12 + 8 * v20);
        ++v22;
        if (v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      return MEMORY[0x282200308](v9, v10, v11);
    }

LABEL_15:
    v23 = (v19 - 1) & v19;
    v24 = *(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    goto LABEL_16;
  }

  v28 = sub_22B7DC1F8();
  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = v0[61];
  v0[44] = v28;
  swift_dynamicCast();
  v24 = v0[43];
  v20 = v14;
  v23 = v15;
LABEL_16:
  v0[67] = v23;
  v0[66] = v20;
  v0[65] = v24;
  if (!v24)
  {
LABEL_22:
    v30 = v0[63];
    v31 = v0[64];
    v32 = v0[62];
    v33 = v0[60];
    sub_22B705E3C();

LABEL_23:
    v34 = v0[53];
    v35 = v0[45];
    v36 = [objc_opt_self() defaultCenter];
    sub_22B7DBEB8();

    sub_22B7DBE98();
    swift_beginAccess();
    v0[69] = @"__kIMDChatRegistryChatKey";
    v37 = v0[54];
    v0[70] = sub_22B7DBA08();
    v38 = sub_22B71004C(&qword_28141F198, MEMORY[0x277CC9D68]);
    v39 = *(MEMORY[0x277D856D0] + 4);
    v40 = swift_task_alloc();
    v0[71] = v40;
    *v40 = v0;
    v40[1] = sub_22B70A4B0;
    v41 = v0[53];
    v9 = v0[50];
    v10 = v0[51];
    v11 = v38;

    return MEMORY[0x282200308](v9, v10, v11);
  }

  v25 = swift_task_alloc();
  v0[68] = v25;
  *v25 = v0;
  v25[1] = sub_22B70A0C4;
  v26 = v0[60];

  return sub_22B70AC84(v24);
}

uint64_t sub_22B70A0C4()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v6 = *v0;

  v3 = *(v1 + 456);
  v4 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_22B70A1E4, v4, v3);
}

uint64_t sub_22B70A1E4()
{
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 496);
  if (v6 < 0)
  {
    v12 = sub_22B7DC1F8();
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = *(v0 + 488);
    *(v0 + 352) = v12;
    swift_dynamicCast();
    v11 = *(v0 + 344);
    v8 = v5;
    v10 = v4;
  }

  else
  {
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    if (!v4)
    {
      v9 = *(v0 + 528);
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= ((*(v0 + 512) + 64) >> 6))
        {
          goto LABEL_14;
        }

        v7 = *(*(v0 + 504) + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x282200308](v1, v2, v3);
    }

LABEL_7:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  *(v0 + 536) = v10;
  *(v0 + 528) = v8;
  *(v0 + 520) = v11;
  if (!v11)
  {
LABEL_14:
    v17 = *(v0 + 504);
    v18 = *(v0 + 512);
    v19 = *(v0 + 496);
    v20 = *(v0 + 480);
    sub_22B705E3C();

    v21 = *(v0 + 424);
    v22 = *(v0 + 360);
    v23 = [objc_opt_self() defaultCenter];
    sub_22B7DBEB8();

    sub_22B7DBE98();
    swift_beginAccess();
    *(v0 + 552) = @"__kIMDChatRegistryChatKey";
    v24 = *(v0 + 432);
    *(v0 + 560) = sub_22B7DBA08();
    v25 = sub_22B71004C(&qword_28141F198, MEMORY[0x277CC9D68]);
    v26 = *(MEMORY[0x277D856D0] + 4);
    v27 = swift_task_alloc();
    *(v0 + 568) = v27;
    *v27 = v0;
    v27[1] = sub_22B70A4B0;
    v28 = *(v0 + 424);
    v1 = *(v0 + 400);
    v2 = *(v0 + 408);
    v3 = v25;

    return MEMORY[0x282200308](v1, v2, v3);
  }

  v14 = swift_task_alloc();
  *(v0 + 544) = v14;
  *v14 = v0;
  v14[1] = sub_22B70A0C4;
  v15 = *(v0 + 480);

  return sub_22B70AC84(v11);
}

uint64_t sub_22B70A4B0()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 560);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_22B7DB9C8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_22B70ABF8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_22B7DB9C8();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_22B70A648;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_22B70A648()
{
  v1 = v0[70];

  v2 = v0[56];
  v3 = v0[57];

  return MEMORY[0x2822009F8](sub_22B70A6AC, v2, v3);
}

uint64_t sub_22B70A6AC()
{
  v51 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));

    v8 = *(v0 + 8);

    return v8();
  }

  (*(v3 + 32))(*(v0 + 392), v1, v2);
  v10 = sub_22B7DA678();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *(v0 + 552);
  *(v0 + 304) = sub_22B7DB6A8();
  *(v0 + 312) = v13;
  sub_22B7DC248();
  if (!*(v11 + 16) || (v14 = sub_22B4D7EC0(v0 + 184), (v15 & 1) == 0))
  {

    sub_22B4DA138(v0 + 184);
LABEL_16:
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    goto LABEL_17;
  }

  sub_22B4D1F68(*(v11 + 56) + 32 * v14, v0 + 224);
  sub_22B4DA138(v0 + 184);

  if (!*(v0 + 248))
  {
LABEL_17:
    sub_22B4D0D64(v0 + 224, &unk_27D8CCDC0, &qword_22B7F9580);
    goto LABEL_18;
  }

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 472);
    v17 = *(v0 + 336);
    v18 = sub_22B7DB298();
    v19 = sub_22B7DBCB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_22B4CC000, v18, v19, "Notified that chat was added %@", v20, 0xCu);
      sub_22B4D0D64(v21, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v21, -1, -1);
      MEMORY[0x231898D60](v20, -1, -1);
    }

    v23 = *(v0 + 360);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      sub_22B70B474(v17);
    }

    (*(*(v0 + 376) + 8))(*(v0 + 392), *(v0 + 368));
    goto LABEL_21;
  }

LABEL_18:
  v26 = *(v0 + 472);
  (*(*(v0 + 376) + 16))(*(v0 + 384), *(v0 + 392), *(v0 + 368));
  v27 = sub_22B7DB298();
  v28 = sub_22B7DBCA8();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v33 = *(v0 + 368);
  v32 = *(v0 + 376);
  if (v29)
  {
    v49 = *(v0 + 392);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50 = v35;
    *v34 = 136315138;
    *(v0 + 328) = sub_22B7DA678();
    sub_22B6F0AD4(&qword_27D8CD810, &unk_22B7F9900);
    v36 = sub_22B7DB6E8();
    v38 = v37;
    v39 = *(v32 + 8);
    v39(v30, v33);
    v40 = sub_22B4CFAAC(v36, v38, &v50);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_22B4CC000, v27, v28, "Received invalid object type from IMDChatAddedNotification %s", v34, 0xCu);
    sub_22B4CFB78(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);

    v39(v49, v33);
  }

  else
  {

    v41 = *(v32 + 8);
    v41(v30, v33);
    v41(v31, v33);
  }

LABEL_21:
  v42 = *(v0 + 432);
  *(v0 + 560) = sub_22B7DBA08();
  v43 = sub_22B71004C(&qword_28141F198, MEMORY[0x277CC9D68]);
  v44 = *(MEMORY[0x277D856D0] + 4);
  v45 = swift_task_alloc();
  *(v0 + 568) = v45;
  *v45 = v0;
  v45[1] = sub_22B70A4B0;
  v46 = *(v0 + 424);
  v47 = *(v0 + 400);
  v48 = *(v0 + 408);

  return MEMORY[0x282200308](v47, v48, v43);
}

uint64_t sub_22B70ABF8()
{
  *(v0 + 320) = *(v0 + 576);
  sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_22B70AC84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_22B7DBA18();
  v2[4] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_22B70AD1C, v4, v3);
}

uint64_t sub_22B70AD1C()
{
  v38 = v0;
  v1 = sub_22B70EA70(v0[2]);
  if (v1)
  {
    v2 = v1;
    v3 = v0[4];

    v4 = v0[3];
    sub_22B70E318(v0[2], v2);
LABEL_20:

    v36 = v0[1];

    return v36();
  }

  v5 = [v0[2] remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v6 = sub_22B7DBAF8();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_22B7DC1C8();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  if (v7 != 1 || [v0[2] avMode] || (v8 = objc_msgSend(v0[2], sel_presentationContext), v9 = objc_msgSend(v8, sel_mode), v8, v9 != 1))
  {
    v27 = v0[4];

    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v28 = v0[2];
    v29 = sub_22B7DB2B8();
    sub_22B4CFA74(v29, qword_2814226F8);
    v30 = v28;
    v2 = sub_22B7DB298();
    v31 = sub_22B7DBC98();

    if (os_log_type_enabled(v2, v31))
    {
      v32 = v0[2];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v32;
      *v34 = v32;
      v35 = v32;
      _os_log_impl(&dword_22B4CC000, v2, v31, "Couldn't find chat for conversation %@", v33, 0xCu);
      sub_22B4D0D64(v34, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v34, -1, -1);
      MEMORY[0x231898D60](v33, -1, -1);
    }

    goto LABEL_20;
  }

  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v10 = v0[2];
  v11 = sub_22B7DB2B8();
  sub_22B4CFA74(v11, qword_2814226F8);
  v12 = v10;
  v13 = sub_22B7DB298();
  v14 = sub_22B7DBCB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[2];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = [v15 remoteMembers];
    sub_22B7DBAF8();

    v19 = sub_22B7DBB08();
    v21 = v20;

    v22 = sub_22B4CFAAC(v19, v21, &v37);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_22B4CC000, v13, v14, "Couldn't find chat for 1-1 conversation with %s, attempting chat creation!", v16, 0xCu);
    sub_22B4CFB78(v17);
    MEMORY[0x231898D60](v17, -1, -1);
    MEMORY[0x231898D60](v16, -1, -1);
  }

  v23 = swift_task_alloc();
  v0[7] = v23;
  *v23 = v0;
  v23[1] = sub_22B70B1AC;
  v24 = v0[2];
  v25 = v0[3];

  return sub_22B70D020(v24);
}

uint64_t sub_22B70B1AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_22B70B2D4, v5, v4);
}

uint64_t sub_22B70B2D4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  if (v1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 24);
    sub_22B70E318(*(v0 + 16), v3);
  }

  else
  {
    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 16);
    v6 = sub_22B7DB2B8();
    sub_22B4CFA74(v6, qword_2814226F8);
    v7 = v5;
    v3 = sub_22B7DB298();
    v8 = sub_22B7DBC98();

    if (os_log_type_enabled(v3, v8))
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v3, v8, "Couldn't find chat for conversation %@", v10, 0xCu);
      sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v11, -1, -1);
      MEMORY[0x231898D60](v10, -1, -1);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_22B70B474(void *a1)
{
  v2 = [*(v1 + OBJC_IVAR___IMDCallManager_Impl_conversationManager) activeConversations];
  sub_22B4D01A0(0, &qword_28141F270, 0x277D6EE60);
  sub_22B70FFFC(&qword_28141F268, &qword_28141F270, 0x277D6EE60);
  v3 = sub_22B7DBAF8();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B7DBB28();
    v3 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
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

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v36 = v3;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v13 = v6;
    v14 = v7;
    v15 = v6;
    if (!v7)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          goto LABEL_34;
        }

        v14 = *(v4 + 8 * v15);
        ++v13;
        if (v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_34;
    }

LABEL_20:
    v18 = sub_22B70EA70(v17);
    if (v18 && (v19 = v18, v20 = [v18 guid], v19, v20))
    {
      v21 = sub_22B7DB6A8();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = [a1 guid];
    if (v24)
    {
      v25 = v24;
      v26 = sub_22B7DB6A8();
      v28 = v27;

      if (!v23)
      {
        if (!v28)
        {
          goto LABEL_37;
        }

LABEL_9:

        goto LABEL_10;
      }

      if (v28)
      {
        if (v21 == v26 && v23 == v28)
        {

LABEL_37:
          sub_22B705E3C();

          v31 = v17;
          sub_22B70E318(v31, a1);

          goto LABEL_38;
        }

        v12 = sub_22B7DC518();

        if (v12)
        {
          goto LABEL_37;
        }

        goto LABEL_9;
      }
    }

    else if (!v23)
    {
      goto LABEL_37;
    }

LABEL_10:
    v6 = v15;
    v7 = v16;
    v3 = v36;
  }

  if (sub_22B7DC1F8())
  {
    swift_dynamicCast();
    v17 = v38;
    v15 = v6;
    v16 = v7;
    if (v38)
    {
      goto LABEL_20;
    }
  }

LABEL_34:
  sub_22B705E3C();

  if (qword_28141F420 == -1)
  {
    goto LABEL_35;
  }

LABEL_40:
  swift_once();
LABEL_35:
  v29 = sub_22B7DB2B8();
  sub_22B4CFA74(v29, qword_2814226F8);
  v30 = a1;
  v31 = sub_22B7DB298();
  v32 = sub_22B7DBCB8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_22B4CC000, v31, v32, "Couldn't find conversation for chat %@", v33, 0xCu);
    sub_22B4D0D64(v34, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v34, -1, -1);
    MEMORY[0x231898D60](v33, -1, -1);
  }

LABEL_38:
}

id CallManager.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask])
  {
    v1 = *&v0[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask];

    sub_22B7DBA88();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CallManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id CallManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_22B70BB00(void *a1, void *a2)
{
  v5 = sub_22B7DA9A8();
  isa = v5[-1].isa;
  v7 = *(isa + 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(v2 + OBJC_IVAR___IMDCallManager_Impl_featureFlags) isAVLessSharePlayEnabled])
  {
    return;
  }

  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_2814226F8);
  v11 = a1;
  v12 = a2;
  v13 = sub_22B7DB298();
  v14 = sub_22B7DBCB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v12;
    v17 = v11;
    v18 = v12;
    _os_log_impl(&dword_22B4CC000, v13, v14, "Received request to post notification for conversation %@ on chat %@", v15, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v16, -1, -1);
    MEMORY[0x231898D60](v15, -1, -1);
  }

  v19 = [v11 initiator];
  v20 = [v19 normalizedValue];

  if (v20)
  {
    v64 = v20;
    v21 = [v11 stagedActivitySession];
    v67 = v5;
    if (v21)
    {
      v22 = v21;
      v23 = [v21 activity];
      v24 = [v23 localizedApplicationName];
    }

    else
    {
      v31 = [v11 activitySessions];
      sub_22B4D01A0(0, &qword_27D8CD7A0, 0x277D6EE80);
      sub_22B70FFFC(&qword_27D8CD7A8, &qword_27D8CD7A0, 0x277D6EE80);
      v32 = sub_22B7DBAF8();

      v22 = sub_22B786E24(v32);

      if (!v22)
      {
        goto LABEL_19;
      }

      v23 = [v22 activity];
      v24 = [v23 localizedApplicationName];
    }

    v33 = v24;

    if (v33)
    {
      v65 = sub_22B7DB6A8();
      v35 = v34;

LABEL_20:

      v36 = v11;
      v37 = v12;
      v38 = sub_22B7DB298();
      v39 = sub_22B7DBCB8();

      v40 = os_log_type_enabled(v38, v39);
      v66 = isa;
      v63 = v36;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v69 = v35;
        v70 = v62;
        *v41 = 136315650;
        v68 = v65;

        sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
        v43 = sub_22B7DB6E8();
        v45 = sub_22B4CFAAC(v43, v44, &v70);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v37;
        *v42 = v37;
        *(v41 + 22) = 2080;
        v46 = v37;
        v47 = [v36 UUID];
        sub_22B7DA988();

        sub_22B71004C(&qword_27D8CD7B8, MEMORY[0x277CC95F0]);
        v48 = v67;
        v49 = sub_22B7DC4E8();
        v51 = v50;
        (*(v66 + 1))(v9, v48);
        v52 = sub_22B4CFAAC(v49, v51, &v70);

        *(v41 + 24) = v52;
        _os_log_impl(&dword_22B4CC000, v38, v39, "SharePlay notification will be posted for %s app in chat %@ and conversation %s", v41, 0x20u);
        sub_22B4D0D64(v42, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v42, -1, -1);
        v53 = v62;
        swift_arrayDestroy();
        MEMORY[0x231898D60](v53, -1, -1);
        MEMORY[0x231898D60](v41, -1, -1);
      }

      v54 = [objc_opt_self() synchronousDatabase];
      v55 = [v37 guid];
      if (v55)
      {
        v56 = v55;
        v57 = [v63 UUID];
        sub_22B7DA988();

        sub_22B7DA978();
        (*(v66 + 1))(v9, v67);
        v58 = sub_22B7DB678();

        if (v35)
        {
          v59 = sub_22B7DB678();
        }

        else
        {
          v59 = 0;
        }

        v60 = v64;
        [v54 postSharePlayNotificationForChatGUID:v56 faceTimeConversationUUID:v58 handleIdentifier:v64 localizedApplicationName:v59];
        swift_unknownObjectRelease();
      }

      else
      {

        __break(1u);
      }

      return;
    }

LABEL_19:
    v65 = 0;
    v35 = 0;
    goto LABEL_20;
  }

  v25 = v11;
  v67 = sub_22B7DB298();
  v26 = sub_22B7DBC98();

  if (os_log_type_enabled(v67, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v25;
    *v28 = v25;
    v29 = v25;
    _os_log_impl(&dword_22B4CC000, v67, v26, "Can't post notification since we couldn't fetch initiator from conversation %@", v27, 0xCu);
    sub_22B4D0D64(v28, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v28, -1, -1);
    MEMORY[0x231898D60](v27, -1, -1);
  }

  v30 = v67;
}

uint64_t sub_22B70C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_22B7DBA18();
  v5[3] = sub_22B7DBA08();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_22B70C3CC;

  return sub_22B70AC84(a5);
}

uint64_t sub_22B70C3CC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B7102DC, v5, v4);
}

uint64_t sub_22B70C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_22B7DBA18();
  v5[3] = sub_22B7DBA08();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_22B70C6A0;

  return sub_22B70AC84(a5);
}

uint64_t sub_22B70C6A0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B70C7DC, v5, v4);
}

uint64_t sub_22B70C7DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B70C8D8(id *a1, char a2, void *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [*a1 serviceName];
  if (!v7)
  {
LABEL_7:
    if (a2)
    {
      if (qword_28141F420 != -1)
      {
        swift_once();
      }

      v14 = sub_22B7DB2B8();
      sub_22B4CFA74(v14, qword_2814226F8);
      v15 = a3;
      v16 = v6;
      v17 = sub_22B7DB298();
      v18 = sub_22B7DBC88();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412546;
        *(v19 + 4) = v15;
        *(v19 + 12) = 2112;
        *(v19 + 14) = v16;
        *v20 = v15;
        v20[1] = v16;
        v21 = v15;
        v22 = v16;
        _os_log_impl(&dword_22B4CC000, v17, v18, "Not mapping %@ to chat %@ because an iMessage variant of the chat exists", v19, 0x16u);
        sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v20, -1, -1);
        MEMORY[0x231898D60](v19, -1, -1);
      }

      return 0;
    }

    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_22B7DB6A8();
  v11 = v10;

  if (v9 == 0x6567617373654D69 && v11 == 0xE800000000000000)
  {
  }

  else
  {
    v13 = sub_22B7DC518();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_14:
  result = [v6 participants];
  if (!result)
  {
    goto LABEL_43;
  }

  v24 = result;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v25 = sub_22B7DB918();

  v56 = MEMORY[0x277D84F90];
  v51 = a3;
  if (v25 >> 62)
  {
    goto LABEL_41;
  }

  log = (v25 & 0xFFFFFFFFFFFFFF8);
  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v26 == v27)
    {

      v35 = sub_22B77A140(v28);

      v36 = sub_22B70CF2C(a4, v35);
      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = v51;
        if (sub_22B7DC1C8())
        {
LABEL_31:
          if (qword_28141F420 != -1)
          {
            swift_once();
          }

          v38 = sub_22B7DB2B8();
          sub_22B4CFA74(v38, qword_2814226F8);
          v39 = v37;
          v40 = v6;

          v41 = sub_22B7DB298();
          v42 = sub_22B7DBC98();

          loga = v41;
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v56 = v53;
            *v43 = 138412802;
            *(v43 + 4) = v39;
            *(v43 + 12) = 2112;
            *(v43 + 14) = v40;
            *v44 = v39;
            v44[1] = v40;
            *(v43 + 22) = 2080;
            sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
            sub_22B70FFFC(&qword_27D8CD7E0, &unk_27D8CEF80, 0x277D6EEE8);
            v45 = v39;
            v46 = v40;
            v47 = sub_22B7DBB08();
            v49 = v48;

            v50 = sub_22B4CFAAC(v47, v49, &v56);

            *(v43 + 24) = v50;
            _os_log_impl(&dword_22B4CC000, loga, v42, "Not mapping conversation %@ to chat %@ because of remaining handles %s", v43, 0x20u);
            sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v44, -1, -1);
            sub_22B4CFB78(v53);
            MEMORY[0x231898D60](v53, -1, -1);
            MEMORY[0x231898D60](v43, -1, -1);
          }

          else
          {
          }

          return 0;
        }
      }

      else
      {
        v37 = v51;
        if (*(v36 + 16))
        {
          goto LABEL_31;
        }
      }

      return 1;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x231895C80](v27, v25);
    }

    else
    {
      if (v27 >= log[2].isa)
      {
        goto LABEL_40;
      }

      v29 = *(v25 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      log = (v25 & 0xFFFFFFFFFFFFFF8);
      v26 = sub_22B7DC1C8();
      goto LABEL_17;
    }

    result = [v29 ID];
    if (!result)
    {
      break;
    }

    v32 = result;
    v33 = [objc_opt_self() normalizedHandleWithDestinationID_];

    v27 = (v27 + 1);
    if (v33)
    {
      MEMORY[0x231895260]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v28 = v56;
      v27 = v31;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_22B70CF2C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22B7DC1C8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_22B710C7C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_22B7DC1C8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_22B7DC1C8();
  v2 = sub_22B7C97E0(v5, v6);
LABEL_10:

  return sub_22B710FC8(a1, v2);
}

uint64_t sub_22B70D020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_22B7DBA18();
  v2[5] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_22B70D0BC, v4, v3);
}

uint64_t sub_22B70D0BC()
{
  v1 = [*(v0 + 16) remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v2 = sub_22B7DBAF8();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_22B7DC1C8();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  v4 = [*(v0 + 16) remoteMembers];
  v5 = sub_22B7DBAF8();

  v6 = sub_22B786E10(v5);

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v6 handle];

  v8 = [v7 normalizedValue];
  *(v0 + 64) = v8;

  if (v8)
  {
    v9 = *(v0 + 32);
    v10 = sub_22B7DB6A8();
    v12 = v11;
    *(v0 + 72) = v10;
    *(v0 + 80) = v11;
    v13 = sub_22B7DBA08();
    *(v0 + 88) = v13;
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    v15 = *(MEMORY[0x277D859E0] + 4);
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_22B70D468;
    v17 = MEMORY[0x277D85700];
    v18 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 112, v13, v17, 0xD000000000000012, 0x800000022B80E820, sub_22B70FF48, v14, v18);
  }

  else
  {
LABEL_10:
    v19 = *(v0 + 40);

    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 16);
    v21 = sub_22B7DB2B8();
    sub_22B4CFA74(v21, qword_2814226F8);
    v22 = v20;
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBCA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 16);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Invalid call to CallManager's registerChat function for conversation %@", v26, 0xCu);
      sub_22B4D0D64(v27, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v27, -1, -1);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_22B70D468()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_22B70D5C8, v6, v5);
}

uint64_t sub_22B70D5C8()
{
  v25 = v0;
  v1 = *(v0 + 40);

  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);

    [*(v5 + OBJC_IVAR___IMDCallManager_Impl_serviceSession) registerChat:v3 style:45];

    v6 = sub_22B70EA70(v4);
  }

  else
  {

    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 80);
    v8 = *(v0 + 16);
    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_2814226F8);
    v10 = v8;

    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 80);
    if (v13)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v16;
      *v18 = v16;
      *(v17 + 12) = 2080;
      v20 = v16;
      v21 = sub_22B4CFAAC(v15, v14, &v24);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_22B4CC000, v11, v12, "Can't create chat for conversation %@ since the remoteMember %s isn't iMessage-able", v17, 0x16u);
      sub_22B4D0D64(v18, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v18, -1, -1);
      sub_22B4CFB78(v19);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v17, -1, -1);
    }

    else
    {
    }

    v6 = 0;
  }

  v22 = *(v0 + 8);

  return v22(v6);
}

void sub_22B70D834(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v16 = objc_opt_self();
  v7 = sub_22B7DB678();
  v8 = IMChatCanonicalIDSIDsForAddress();

  v9 = *MEMORY[0x277D186B0];
  v10 = sub_22B7DB678();
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v11 = sub_22B7DBD58();
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v12, v6, v2);
  aBlock[4] = sub_22B70FF50;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B70DAA0;
  aBlock[3] = &unk_283F1C670;
  v14 = _Block_copy(aBlock);

  [v16 refreshIDStatusForDestination:v8 service:v9 listenerID:v10 queue:v11 completionBlock:v14];
  _Block_release(v14);
}

uint64_t sub_22B70DAA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_22B70DAF4(void *a1, void *a2)
{
  v4 = sub_22B7DA9A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isLocallyCreated])
  {
    v11 = [a1 initiator];
    v12 = [v11 normalizedValue];
    goto LABEL_5;
  }

  v9 = [a2 lastAddressedLocalHandle];
  if (v9)
  {
    v10 = v9;
    goto LABEL_6;
  }

  result = [a2 account];
  if (result)
  {
    v50 = result;
    v11 = [result loginID];

    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = [v11 _stripFZIDPrefix];
LABEL_5:
    v10 = v12;

    if (v10)
    {
LABEL_6:
      v13 = sub_22B7DB6A8();
      v15 = v14;

      sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B7F93B0;
      v17 = *MEMORY[0x277D193A8];
      v71 = sub_22B7DB6A8();
      v72 = v18;
      v19 = MEMORY[0x277D837D0];
      sub_22B7DC248();
      *(inited + 96) = v19;
      v70 = v13;
      *(inited + 72) = v13;
      *(inited + 80) = v15;

      sub_22B4D7D1C(inited);
      swift_setDeallocating();
      sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
      v20 = sub_22B7DB568();

      v67 = a1;
      v21 = [a1 UUID];
      sub_22B7DA988();

      sub_22B7DA978();
      (*(v5 + 8))(v8, v4);
      v22 = sub_22B7DB678();

      result = [a2 account];
      if (result)
      {
        v24 = result;
        v25 = [result loginID];

        result = [a2 account];
        if (result)
        {
          v26 = result;
          v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v28 = [v26 loginID];

          v29 = [a2 serviceName];
          a1 = v15;
          v30 = sub_22B7DB678();
          v31 = [a2 roomName];
          v66 = [v27 initWithSenderInfo:v20 time:0 guid:v22 messageID:0 account:v25 accountID:v28 service:v29 handle:v30 roomName:v31 unformattedID:0 countryCode:0 type:6];
          v32 = v66;

          if (!v32)
          {

            return 0;
          }

          v69 = a1;

          v68 = v32;
          result = [a2 participants];
          if (result)
          {
            v33 = result;
            sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
            v34 = sub_22B7DB918();

            v65 = a2;
            if (v34 >> 62)
            {
              goto LABEL_39;
            }

            for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
            {
              v36 = 0;
              a2 = (v34 & 0xC000000000000001);
              a1 = (v34 & 0xFFFFFFFFFFFFFF8);
              while (1)
              {
                if (a2)
                {
                  v41 = MEMORY[0x231895C80](v36, v34);
                }

                else
                {
                  if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_38;
                  }

                  v41 = *(v34 + 8 * v36 + 32);
                }

                v40 = v41;
                v42 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
                  break;
                }

                v43 = [v41 ID];
                if (v43)
                {
                  v44 = v43;
                  v45 = sub_22B7DB6A8();
                  v47 = v46;

                  if (v45 == v70 && v47 == v69)
                  {
                  }

                  else
                  {
                    v49 = sub_22B7DC518();

                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_15;
                    }
                  }

                  v37 = [v40 unformattedID];
                  v38 = v68;
                  [v68 setUnformattedID_];

                  v39 = [v40 countryCode];
                  [v38 setCountryCode_];

                  v40 = v39;
                }

LABEL_15:

                ++v36;
                if (v42 == i)
                {
                  goto LABEL_40;
                }
              }

              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              ;
            }

LABEL_40:

            v60 = v65;
            v61 = [v65 lastAddressedLocalHandle];
            v62 = v68;
            [v68 setDestinationCallerID_];

            v63 = v67;
            if ([v67 isLocallyCreated])
            {
              [v68 setFlags_];
            }

            v64 = [v63 avMode];
            if ((v64 & 0x8000000000000000) == 0)
            {
              [v68 setAvMode_];

              return v66;
            }

            __break(1u);
LABEL_45:
            swift_once();
LABEL_33:
            v51 = sub_22B7DB2B8();
            sub_22B4CFA74(v51, qword_2814226F8);
            v52 = a1;
            v53 = a2;
            v54 = sub_22B7DB298();
            v55 = sub_22B7DBC98();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              *v56 = 138412546;
              *(v56 + 4) = v52;
              *(v56 + 12) = 2112;
              *(v56 + 14) = v53;
              *v57 = v52;
              v57[1] = v53;
              v58 = v52;
              v59 = v53;
              _os_log_impl(&dword_22B4CC000, v54, v55, "Couldn't pick initiator for conversation %@ on chat %@", v56, 0x16u);
              sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
              swift_arrayDestroy();
              MEMORY[0x231898D60](v57, -1, -1);
              MEMORY[0x231898D60](v56, -1, -1);
            }

            else
            {
            }

            return 0;
          }

          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_32:
    if (qword_28141F420 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_49:
  __break(1u);
  return result;
}

void sub_22B70E318(void *a1, void *a2)
{
  sub_22B70F3A8(a1, a2);
  if (([a1 isLocallyCreated] & 1) == 0 && !objc_msgSend(a1, sel_state) && !objc_msgSend(a1, sel_avMode))
  {
    v4 = [a1 presentationContext];
    v5 = [v4 mode];

    if (v5 == 1)
    {

      sub_22B70BB00(a1, a2);
    }
  }
}

void sub_22B70E3F0(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 association];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  if ([v6 isPrimary])
  {

LABEL_4:
    *a3 = v5;
    v8 = v5;
    return;
  }

  v32 = v7;
  v9 = [a2 remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v10 = sub_22B7DBAF8();

  v30 = a3;
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B7DBB28();
    v11 = v34;
    v12 = v35;
    v14 = v36;
    v13 = v37;
    v15 = v38;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v13 = 0;
    v11 = v10;
  }

  v31 = v11;
  while (v11 < 0)
  {
    if (!sub_22B7DC1F8() || (swift_dynamicCast(), (v21 = v39) == 0))
    {
LABEL_28:

      sub_22B705E3C();

      v21 = v5;
      goto LABEL_29;
    }

LABEL_23:
    v33 = v15;
    sub_22B4D01A0(0, &qword_28141EFD8, 0x277D82BB8);
    v22 = [v21 handle];
    v23 = [v32 handle];
    v24 = sub_22B7DBFD8();

    if (v24)
    {
      v25 = [v21 association];
      if (v25)
      {
        v26 = v25;
        if ([v25 isPrimary])
        {
          v27 = [v26 handle];
          v28 = [v5 handle];
          v29 = sub_22B7DBFD8();

          if (v29)
          {

            sub_22B705E3C();

LABEL_29:
            *v30 = v21;
            return;
          }
        }

        else
        {
        }
      }
    }

    v11 = v31;
    v15 = v33;
  }

  v19 = v13;
  v20 = v15;
  if (v15)
  {
LABEL_19:
    v15 = (v20 - 1) & v20;
    v21 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= ((v14 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v13);
    ++v19;
    if (v20)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22B70E7B0(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
    sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
    sub_22B7DBB28();
    v4 = v21[1];
    v5 = v21[2];
    v6 = v21[3];
    v7 = v21[4];
    v8 = v21[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
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

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  while ((v4 & 0x8000000000000000) != 0)
  {
    v17 = sub_22B7DC1F8();
    if (!v17 || (v20 = v17, sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0), swift_dynamicCast(), v16 = v21[0], v14 = v7, v15 = v8, !v21[0]))
    {
LABEL_22:
      sub_22B705E3C();
      return;
    }

LABEL_18:
    v21[0] = v16;
    sub_22B70E3F0(v21, a2, &v20);
    if (v3)
    {

      sub_22B705E3C();

      return;
    }

    if (v20)
    {
      MEMORY[0x231895260]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = v5[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_22B70EA70(unint64_t a1)
{
  v2 = sub_22B7DA9A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 messagesGroupUUID];
  v8 = &selRef_normalizedPhoneNumberHandleForValue_isoCountryCode_;
  if (v7)
  {
    v9 = v7;
    sub_22B7DA988();

    v10 = [objc_opt_self() sharedInstance];
    sub_22B7DA978();
    v11 = sub_22B7DB678();

    v12 = [v10 existingChatsWithGroupID_];

    sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
    v13 = sub_22B7DB918();

    (*(v3 + 8))(v6, v2);
    if (!(v13 >> 62))
    {
      goto LABEL_3;
    }

LABEL_36:
    v53 = sub_22B7DC1C8();
    v82 = v13;
    v83 = v53;
    if (v53)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  v28 = [a1 remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v29 = sub_22B7DBAF8();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22B7DC1C8();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 != 1)
  {
    goto LABEL_28;
  }

  v31 = [a1 remoteMembers];
  v32 = sub_22B7DBAF8();

  v33 = sub_22B786E10(v32);

  if (!v33 || (v34 = [v33 handle], v33, v35 = objc_msgSend(v34, sel_normalizedValue), v34, !v35))
  {
LABEL_28:
    if (qword_28141F420 == -1)
    {
LABEL_29:
      v39 = sub_22B7DB2B8();
      sub_22B4CFA74(v39, qword_2814226F8);
      v40 = a1;
      v41 = sub_22B7DB298();
      v42 = sub_22B7DBCB8();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v84 = v40;
        v85 = v44;
        *v43 = 136315138;
        sub_22B4D01A0(0, &qword_28141F270, 0x277D6EE60);
        v45 = v40;
        v46 = sub_22B7DB6E8();
        v48 = sub_22B4CFAAC(v46, v47, &v85);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_22B4CC000, v41, v42, "Failed to find existing chat for conversation: %s", v43, 0xCu);
        sub_22B4CFB78(v44);
        MEMORY[0x231898D60](v44, -1, -1);
        MEMORY[0x231898D60](v43, -1, -1);
      }

      return 0;
    }

LABEL_83:
    swift_once();
    goto LABEL_29;
  }

  v36 = sub_22B7DB6A8();
  v38 = v37;

  if ([a1 avMode])
  {

    goto LABEL_28;
  }

  v49 = [objc_opt_self() sharedInstance];
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_22B7F93B0;
  *(v50 + 32) = v36;
  *(v50 + 40) = v38;
  v51 = sub_22B7DB8F8();

  v52 = [v49 existingChatsForIDs:v51 displayName:0 groupID:0 style:45];

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  v13 = sub_22B7DB918();

  if (v13 >> 62)
  {
    goto LABEL_36;
  }

LABEL_3:
  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v82 = v13;
  v83 = v14;
  if (v14)
  {
LABEL_4:
    v80 = a1;
    v15 = 0;
    v16 = v13;
    v17 = v13 & 0xC000000000000001;
    a1 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v18 = MEMORY[0x231895C80](v15, v82);
      }

      else
      {
        if (v15 >= *(a1 + 16))
        {
          goto LABEL_74;
        }

        v18 = *(v82 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_73;
      }

      v21 = [v18 serviceName];
      if (v21)
      {
        v22 = v21;
        v23 = sub_22B7DB6A8();
        v25 = v24;

        if (v23 == 0x6567617373654D69 && v25 == 0xE800000000000000)
        {

LABEL_33:
          v81 = 1;
LABEL_34:
          a1 = v80;
          v8 = &selRef_normalizedPhoneNumberHandleForValue_isoCountryCode_;
          v13 = v82;
          goto LABEL_38;
        }

        v27 = sub_22B7DC518();

        if (v27)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      ++v15;
      if (v20 == v83)
      {
        v81 = 0;
        goto LABEL_34;
      }
    }
  }

LABEL_37:
  v81 = 0;
LABEL_38:
  v54 = [a1 v8[469]];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v55 = sub_22B7DBAF8();

  v56 = a1;
  sub_22B70E7B0(v55, v56);
  v58 = v57;

  v59 = sub_22B77A110(v58);

  sub_22B708C90(v59);
  v61 = v60;

  v62 = sub_22B77A140(v61);

  a1 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  v63 = v83;
  if (v83)
  {
    a1 = 0;
    v64 = v13 & 0xC000000000000001;
    v65 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v64)
      {
        v66 = MEMORY[0x231895C80](a1, v13);
      }

      else
      {
        if (a1 >= *(v65 + 16))
        {
          goto LABEL_71;
        }

        v66 = *(v13 + 8 * a1 + 32);
      }

      v67 = v66;
      v68 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v84 = v66;
      if (sub_22B70C8D8(&v84, v81, v56, v62))
      {
        sub_22B7DC358();
        v69 = v85[2];
        sub_22B7DC398();
        v13 = v82;
        sub_22B7DC3A8();
        sub_22B7DC368();
        v63 = v83;
      }

      else
      {
      }

      ++a1;
      if (v68 == v63)
      {
        a1 = v85;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v70 = sub_22B7DC1C8();
    if (!v70)
    {
      goto LABEL_78;
    }

    goto LABEL_53;
  }

LABEL_50:

  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v70 = *(a1 + 16);
  if (!v70)
  {
LABEL_78:

    return 0;
  }

LABEL_53:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v71 = MEMORY[0x231895C80](0, a1);
    goto LABEL_56;
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_83;
  }

  v71 = *(a1 + 32);
LABEL_56:
  v72 = v71;
  if (v70 != 1)
  {
    v73 = 1;
    do
    {
      v74 = v72;
      v75 = v73;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v76 = MEMORY[0x231895C80](v75, a1);
        }

        else
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          if (v75 >= *(a1 + 16))
          {
            goto LABEL_76;
          }

          v76 = *(a1 + 8 * v75 + 32);
        }

        v72 = v76;
        v73 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_72;
        }

        v77 = [v74 lastMessageTimeStampOnLoad];
        if ([v72 lastMessageTimeStampOnLoad] < v77)
        {
          break;
        }

        ++v75;
        if (v73 == v70)
        {
          v72 = v74;
          goto LABEL_69;
        }
      }
    }

    while (v73 != v70);
  }

LABEL_69:

  return v72;
}

void sub_22B70F3A8(void *a1, void *a2)
{
  sub_22B4D01A0(0, &unk_27D8CD7C0, 0x277D1AC80);
  v4 = a1;
  v5 = a2;
  v6 = sub_22B70DAF4(v4, v5);
  if (!v6)
  {
    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v25 = sub_22B7DB2B8();
    sub_22B4CFA74(v25, qword_2814226F8);
    v26 = v4;
    v27 = v5;
    v72 = sub_22B7DB298();
    v28 = sub_22B7DBC98();

    if (os_log_type_enabled(v72, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v27;
      *v30 = v26;
      v30[1] = v27;
      v31 = v26;
      v32 = v27;
      _os_log_impl(&dword_22B4CC000, v72, v28, "Failed to create IMTUConversationItem for conversation %@ on chat %@", v29, 0x16u);
      sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v30, -1, -1);
      MEMORY[0x231898D60](v29, -1, -1);
    }

    goto LABEL_45;
  }

  v7 = v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = v7;
  v10 = &selRef_deleteMessageGUIDs_inChat_;
  v11 = [v9 guid];
  if (!v11)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = v11;

  v13 = [v8 chatForMessageGUID_];
  if (!v13)
  {
LABEL_32:
    v54 = [v5 serviceSession];
    if (!v54)
    {
      if (qword_28141F420 != -1)
      {
        swift_once();
      }

      v65 = sub_22B7DB2B8();
      sub_22B4CFA74(v65, qword_2814226F8);
      v66 = v5;
      v72 = sub_22B7DB298();
      v67 = sub_22B7DBC98();

      if (os_log_type_enabled(v72, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        *(v68 + 4) = v66;
        *v69 = v66;
        v70 = v66;
        _os_log_impl(&dword_22B4CC000, v72, v67, "Failed to find service session for chat %@", v68, 0xCu);
        sub_22B4D0D64(v69, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v69, -1, -1);
        MEMORY[0x231898D60](v68, -1, -1);
      }

      goto LABEL_45;
    }

    v55 = v54;
    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v56 = sub_22B7DB2B8();
    sub_22B4CFA74(v56, qword_2814226F8);
    v57 = v5;
    v58 = v9;
    v59 = sub_22B7DB298();
    v60 = sub_22B7DBCB8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412546;
      *(v61 + 4) = v58;
      *(v61 + 12) = 2112;
      *(v61 + 14) = v57;
      *v62 = v7;
      v62[1] = v57;
      v63 = v57;
      v64 = v58;
      _os_log_impl(&dword_22B4CC000, v59, v60, "Storing conversationItem %@ on chat %@", v61, 0x16u);
      sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v62, -1, -1);
      MEMORY[0x231898D60](v61, -1, -1);
    }

    v72 = [v57 chatIdentifier];
    if (v72)
    {
      [v55 storeItem:v58 toChat:v72 style:{objc_msgSend(v57, sel_style)}];

      goto LABEL_45;
    }

    goto LABEL_49;
  }

  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v14 = sub_22B7DB2B8();
  sub_22B4CFA74(v14, qword_2814226F8);
  v72 = v13;
  v15 = sub_22B7DB298();
  v16 = sub_22B7DBCB8();
  if (os_log_type_enabled(v15, v16))
  {
    v71 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v73 = v18;
    *v17 = 136315138;
    v19 = [v72 chatIdentifier];

    if (!v19)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v20 = sub_22B7DB6A8();
    v22 = v21;

    v23 = sub_22B4CFAAC(v20, v22, &v73);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_22B4CC000, v15, v16, "Found existing item mapping to chatIdentifier: %s", v17, 0xCu);
    sub_22B4CFB78(v18);
    MEMORY[0x231898D60](v18, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);

    v9 = v71;
    v24 = v72;
    v10 = &selRef_deleteMessageGUIDs_inChat_;
  }

  else
  {

    v24 = v72;
  }

  v33 = [v24 v10[473]];
  if (v33)
  {
    v34 = v33;
    v35 = sub_22B7DB6A8();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = [v5 v10[473]];
  if (!v38)
  {
    if (!v37)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v39 = v38;
  v40 = sub_22B7DB6A8();
  v42 = v41;

  if (!v37)
  {
    if (!v42)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (!v42)
  {
LABEL_24:

    goto LABEL_32;
  }

  if (v35 == v40 && v37 == v42)
  {

    goto LABEL_28;
  }

  v43 = sub_22B7DC518();

  if ((v43 & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_28:
  v44 = v9;
  v45 = sub_22B7DB298();
  v46 = sub_22B7DBCB8();
  if (!os_log_type_enabled(v45, v46))
  {

    goto LABEL_45;
  }

  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v73 = v48;
  *v47 = 136315138;
  v49 = [v44 v10[473]];

  if (!v49)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v50 = sub_22B7DB6A8();
  v52 = v51;

  v53 = sub_22B4CFAAC(v50, v52, &v73);

  *(v47 + 4) = v53;
  _os_log_impl(&dword_22B4CC000, v45, v46, "Not adding IMTUConversationItem since item GUID %s already exists", v47, 0xCu);
  sub_22B4CFB78(v48);
  MEMORY[0x231898D60](v48, -1, -1);
  MEMORY[0x231898D60](v47, -1, -1);

LABEL_45:
}

uint64_t sub_22B70FC24(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_2814226F8);
  v14 = a1;
  v15 = sub_22B7DB298();
  v16 = sub_22B7DBCB8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_22B4CC000, v15, v16, a2, v17, 0xCu);
    sub_22B4D0D64(v18, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v18, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);
  }

  v20 = sub_22B7DBA58();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_22B7DBA18();
  v21 = v14;
  v22 = v7;
  v23 = sub_22B7DBA08();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v22;
  v24[5] = v21;
  sub_22B77E3D4(0, 0, v12, a4, v24);
}

uint64_t sub_22B70FE88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B70C5E4(a1, v4, v5, v7, v6);
}

void sub_22B70FF48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22B70D834(a1);
}

uint64_t sub_22B70FF50()
{
  v0 = *(sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B70FFFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B4D01A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B71004C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B710094()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B7100DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F12E8;

  return sub_22B70C310(a1, v4, v5, v7, v6);
}

unint64_t sub_22B71019C()
{
  result = qword_28141F2C0;
  if (!qword_28141F2C0)
  {
    sub_22B6FB8C4(&qword_27D8CEA10, &qword_22B7F9DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2C0);
  }

  return result;
}

uint64_t sub_22B710208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F12E8;

  return sub_22B7097E8(a1, v4, v5, v6);
}

uint64_t sub_22B7102E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *(a1 + 8);
  a3[1] = v3;
}

uint64_t sub_22B710320(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_281422638);

    v5 = sub_22B7DB298();
    v6 = sub_22B7DBCB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = MEMORY[0x2318952A0](a2, MEMORY[0x277D837D0]);
      v11 = sub_22B4CFAAC(v9, v10, &v16);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Observed blockedHandles: %s", v7, 0xCu);
      sub_22B4CFB78(v8);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    v13 = sub_22B77A2DC(v12);

    v15 = sub_22B77A2DC(v14);

    if (*(v13 + 16) <= *(v15 + 16) >> 3)
    {
      v16 = v15;
      sub_22B710E9C(v13);
    }

    else
    {
      sub_22B711648(v13, v15);
    }

    sub_22B71054C();
  }

  return result;
}

id sub_22B71054C()
{

  v2 = sub_22B713140(v1, v0);
  v60 = v0;

  v54 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v58 = v2;
  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v13 = *v11;
        v12 = v11[1];
        v14 = *(v60 + 24);

        v15 = sub_22B7DB678();
        v16 = [v14 existingiMessageChatForID_];

        if (v16)
        {

          MEMORY[0x231895260](v23);
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22B7DB938();
          }

          sub_22B7DB968();
          v54 = v62;
          v8 = v9;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (qword_28141F378 != -1)
          {
            swift_once();
          }

          v17 = sub_22B7DB2B8();
          sub_22B4CFA74(v17, qword_281422638);

          v18 = sub_22B7DB298();
          v19 = sub_22B7DBC98();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v61 = v21;
            *v20 = 136315138;
            *(v20 + 4) = sub_22B4CFAAC(v13, v12, &v61);
            _os_log_impl(&dword_22B4CC000, v18, v19, "No chat found for blocked handle: %s", v20, 0xCu);
            sub_22B4CFB78(v21);
            v22 = v21;
            v2 = v58;
            MEMORY[0x231898D60](v22, -1, -1);
            MEMORY[0x231898D60](v20, -1, -1);
          }

          v8 = v9;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }

  if (qword_28141F378 == -1)
  {
    goto LABEL_20;
  }

LABEL_64:
  swift_once();
LABEL_20:
  v25 = sub_22B7DB2B8();
  sub_22B4CFA74(v25, qword_281422638);

  v26 = sub_22B7DB298();
  v27 = sub_22B7DBCB8();
  v28 = v54 >> 62;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    if (v28)
    {
      v30 = sub_22B7DC1C8();
    }

    else
    {
      v30 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v30;

    _os_log_impl(&dword_22B4CC000, v26, v27, "Found %ld blocked Chats. Cancelling scheduled messages for them.", v29, 0xCu);
    MEMORY[0x231898D60](v29, -1, -1);
  }

  else
  {
  }

  if (v28)
  {
    v31 = sub_22B7DC1C8();
    if (v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_27:
      v32 = 0;
      for (i = v31; i != v32; v31 = i)
      {
        while (1)
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x231895C80](v32, v54);
          }

          else
          {
            if (v32 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v34 = *(v54 + 32 + 8 * v32);
          }

          v35 = v34;
          if (__OFADD__(v32++, 1))
          {
            goto LABEL_62;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }

          if (v32 == v31)
          {
            goto LABEL_66;
          }
        }

        v38 = Strong;
        result = [v35 participants];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v40 = result;
        v59 = v35;
        sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
        v41 = sub_22B7DB918();

        v57 = v38;
        if (v41 >> 62)
        {
          v42 = sub_22B7DC1C8();
          if (v42)
          {
LABEL_38:
            v43 = 0;
            v33 = MEMORY[0x277D84F90];
            do
            {
              v44 = v43;
              while (1)
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v45 = MEMORY[0x231895C80](v44, v41);
                }

                else
                {
                  if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_60;
                  }

                  v45 = *(v41 + 8 * v44 + 32);
                }

                v46 = v45;
                v43 = v44 + 1;
                if (__OFADD__(v44, 1))
                {
                  __break(1u);
LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }

                v47 = [v45 ID];
                if (v47)
                {
                  break;
                }

                ++v44;
                if (v43 == v42)
                {
                  goto LABEL_29;
                }
              }

              v48 = v47;
              v49 = sub_22B7DB6A8();
              v56 = v50;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_22B71BD80(0, *(v33 + 2) + 1, 1, v33);
              }

              v52 = *(v33 + 2);
              v51 = *(v33 + 3);
              if (v52 >= v51 >> 1)
              {
                v33 = sub_22B71BD80((v51 > 1), v52 + 1, 1, v33);
              }

              *(v33 + 2) = v52 + 1;
              v53 = &v33[16 * v52];
              *(v53 + 4) = v49;
              *(v53 + 5) = v56;
            }

            while (v43 != v42);
            goto LABEL_29;
          }
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
            goto LABEL_38;
          }
        }

        v33 = MEMORY[0x277D84F90];
LABEL_29:

        sub_22B7775E4(v59, v33, 4);
      }
    }
  }

LABEL_66:
}

uint64_t sub_22B710C08()
{
  MEMORY[0x231898E50](v0 + 16);

  sub_22B4CFB78((v0 + 32));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_22B710C7C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_22B7DC1C8())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
    sub_22B7133EC();
    sub_22B7DBB28();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
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

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
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

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_22B705E3C();
      return;
    }

    while (1)
    {
      v18 = sub_22B711BB8(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_22B7DC1F8())
      {
        sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
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
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22B710E9C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22B711D50(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22B710FC8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
    sub_22B7133EC();
    sub_22B7DBB28();
    v4 = v81;
    v6 = v82;
    v7 = v83;
    v8 = v84;
    v9 = v85;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v76 = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v67 = v7;
  v13 = (v7 + 64) >> 6;
  v73 = (v3 + 56);
  v80 = v9;
  v70 = v6;
  v71 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_22B7DC1F8();
      if (!v21)
      {
        goto LABEL_62;
      }

      v74 = v21;
      sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
      swift_dynamicCast();
      v19 = v75;
      v17 = v8;
      v2 = v9;
      if (!v75)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v76 = v4;
      v77 = v6;
      v78 = v67;
      v79 = v17;
      v80 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = *(v3 + 40);
    v23 = v19;
    v24 = sub_22B7DBFC8();
    v25 = -1 << *(v3 + 32);
    v8 = v24 & ~v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v70;
    v4 = v71;
  }

  v26 = ~v25;
  v27 = sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
  v28 = *(*(v3 + 48) + 8 * v8);
  v72 = v27;
  while (1)
  {
    v29 = sub_22B7DBFD8();

    if (v29)
    {
      break;
    }

    v8 = (v8 + 1) & v26;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v64 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v64;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v65 = &v63;
    MEMORY[0x28223BE20](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v73, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v66 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v70;
    v36 = v71;
    v38 = i;
LABEL_33:
    v68 = v4;
    while (v36 < 0)
    {
      v39 = sub_22B7DC1F8();
      if (!v39)
      {
        goto LABEL_61;
      }

      v74 = v39;
      swift_dynamicCast();
      v40 = v75;
      if (!v75)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = *(v3 + 40);
      v46 = sub_22B7DBFC8();
      v47 = v3;
      v48 = -1 << *(v3 + 32);
      v49 = v46 & ~v48;
      v50 = v49 >> 6;
      v51 = 1 << v49;
      if (((1 << v49) & v73[v49 >> 6]) != 0)
      {
        v52 = ~v48;
        while (1)
        {
          v8 = *(*(v47 + 48) + 8 * v49);
          v53 = sub_22B7DBFD8();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v52;
          v50 = v49 >> 6;
          v51 = 1 << v49;
          if (((1 << v49) & v73[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v66[v50];
        v66[v50] = v54 & ~v51;
        v55 = (v54 & v51) == 0;
        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
        if (!v55)
        {
          v4 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v76 = v36;
      v77 = v37;
      v78 = v67;
      v79 = v42;
      v17 = v42;
      v80 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_22B7124F0(v66, v64, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= v17 + 1)
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v58 = v5;

    v59 = v58;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v73, v59);
  sub_22B712014(v60, v64, v3, v8, &v76);
  v62 = v61;

  MEMORY[0x231898D60](v60, -1, -1);
  v3 = v62;
LABEL_62:
  sub_22B705E3C();
LABEL_63:
  v56 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_22B711648(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22B7DC668();

    sub_22B7DB758();
    v24 = sub_22B7DC6B8();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22B7DC518() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_22B7126E4(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_22B7DC668();

            sub_22B7DB758();
            v43 = sub_22B7DC6B8();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22B7DC518() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_22B7122B8(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x231898D60](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_22B705E3C();
    goto LABEL_53;
  }

  result = MEMORY[0x231898D60](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22B711BB8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_22B7DC208();

    if (v7)
    {
      v8 = sub_22B712908();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
  v11 = *(v3 + 40);
  v12 = sub_22B7DBFC8();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_22B7DBFD8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B7CBA24();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_22B712D8C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_22B711D50(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22B7DC668();
  sub_22B7DB758();
  v7 = sub_22B7DC6B8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22B7DC518() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B7CBA38();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_22B712BC8(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_22B711E8C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_22B7DC208();

    if (v7)
    {
      v8 = sub_22B712A70();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_22B7DBEF8();
  v11 = *(v3 + 40);
  v12 = sub_22B7DBFC8();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_22B7DBFD8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B7CBCEC();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_22B712D8C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

void sub_22B712014(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_22B7DC1F8())
          {
            goto LABEL_29;
          }

          sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_22B7124F0(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_22B7DBFC8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_22B7DBFD8();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_22B7DBFD8();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22B7122B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_22B7126E4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22B7DC668();

        sub_22B7DB758();
        v20 = sub_22B7DC6B8();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22B7DC518() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22B7124F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22B6F0AD4(&qword_27D8CD820, qword_22B7F9960);
  result = sub_22B7DC298();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22B7DBFC8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B7126E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  result = sub_22B7DC298();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22B7DC668();

    sub_22B7DB758();
    result = sub_22B7DC6B8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B712908()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22B7DC1C8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22B7C97E0(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22B7DBFC8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22B7DBFD8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22B712D8C(v9);
  result = sub_22B7DBFD8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B712A70()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22B7DC1C8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22B7C9A04(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22B7DBFC8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_22B7DBEF8();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22B7DBFD8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22B712D8C(v9);
  result = sub_22B7DBFD8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B712BC8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22B7DC158();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22B7DC668();

        sub_22B7DB758();
        v15 = sub_22B7DC6B8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22B712D8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22B7DC158();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22B7DBFC8();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_22B712F2C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_22B712FC8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_22B712FC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a4 + 24);

    v19 = sub_22B7DB678();
    LODWORD(v18) = [v18 hasScheduledMessageForHandleID_];

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        sub_22B7126E4(a1, v21, v23, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22B713140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v32 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v7;
    v29 = v3;
    v27[1] = v27;
    MEMORY[0x28223BE20](v9);
    v30 = v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v31 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v8 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v3 = v13 | (v7 << 6);
      v16 = (*(a1 + 48) + 16 * v3);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v32 + 24);

      v20 = sub_22B7DB678();
      LODWORD(v19) = [v19 hasScheduledMessageForHandleID_];

      if (v19)
      {
        *&v30[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_22B7126E4(v30, v28, v31, a1);

          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
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

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_22B712F2C(v25, v7, a1, v26);

  MEMORY[0x231898D60](v25, -1, -1);

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

unint64_t sub_22B7133EC()
{
  result = qword_27D8CD7E0;
  if (!qword_27D8CD7E0)
  {
    sub_22B4D01A0(255, &unk_27D8CEF80, 0x277D6EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD7E0);
  }

  return result;
}

uint64_t IMDLiteMessageCompressor.compress(_:)()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedCompressor];
  v1 = sub_22B7DA838();
  v2 = [v0 compressData:v1 codecID:&v6];

  if (v2)
  {
    v3 = sub_22B7DA848();
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t IMDCKSyncController.bridgeClass()()
{
  v0 = type metadata accessor for IMDaemonCoreBridgeDelegate();
  sub_22B713580();
  return v0;
}

unint64_t sub_22B713580()
{
  result = qword_281420E80;
  if (!qword_281420E80)
  {
    type metadata accessor for IMDaemonCoreBridgeDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281420E80);
  }

  return result;
}

uint64_t sub_22B7135D8()
{
  v0 = type metadata accessor for IMDaemonCoreBridgeDelegate();
  sub_22B713580();
  return v0;
}

uint64_t sub_22B71360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D84F90];
  if (!a3)
  {
    return v3;
  }

  v24 = MEMORY[0x277D84F90];
  result = sub_22B7AB6B4(0, a3 & ~(a3 >> 63), 0);
  if (a3 < 0)
  {
    goto LABEL_26;
  }

  if (!__OFSUB__(64, a2))
  {
    v8 = 0;
    v3 = v24;
    v22 = a1 + 32;
    v23 = *(a1 + 16);
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v10 = v8 * a2;
      if ((v8 * a2) >> 64 != (v8 * a2) >> 63)
      {
        goto LABEL_22;
      }

      if (v10 >= 0)
      {
        v11 = v8 * a2;
      }

      else
      {
        v11 = v10 + 63;
      }

      if (v10 < -63)
      {
        goto LABEL_23;
      }

      if (v11 >> 6 >= v23)
      {
        goto LABEL_24;
      }

      v12 = 64 - (v10 - (v11 & 0xFFFFFFFFFFFFFFC0));
      v13 = __OFSUB__(v12, a2);
      v14 = v12 - a2;
      if (v13)
      {
        goto LABEL_25;
      }

      if (v14 > -65 && v14 <= 64)
      {
        v15 = *(v22 + 8 * (v11 >> 6));
      }

      sub_22B7152A4();
      result = sub_22B7DC108();
      v25 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        v21 = result;
        v20 = v16;
        sub_22B7AB6B4((v17 > 1), v18 + 1, 1);
        v16 = v20;
        result = v21;
        v3 = v25;
      }

      *(v3 + 16) = v18 + 1;
      v19 = v3 + 16 * v18;
      *(v19 + 32) = result;
      *(v19 + 40) = v16;
      ++v8;
      if (v9 == a3)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

IMDaemonCore::UIntArray __swiftcall UIntArray.init()()
{
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = xmmword_22B7F9630;
  return result;
}

uint64_t UIntArray.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  *(a3 + 8) = xmmword_22B7F9630;
  UIntArray.append<A>(contentsOf:)(a1, a2);
  v5 = *(*(a2 - 8) + 8);

  return v5(a1, a2);
}

uint64_t UIntArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15 - v11;
  (*(v4 + 16))(v7, a1, a2);
  sub_22B7DB8A8();
  swift_getAssociatedConformanceWitness();
  sub_22B7DC0B8();
  if ((v16 & 1) == 0)
  {
    v13 = v15;
    do
    {
      sub_22B713BE0(v13);
      sub_22B713E60(v13);
      sub_22B7DC0B8();
      v13 = v15;
    }

    while (v16 != 1);
  }

  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

IMDaemonCore::UIntArray __swiftcall UIntArray.init(repeating:count:)(Swift::UInt repeating, Swift::Int count)
{
  v3 = v2;
  v9 = MEMORY[0x277D84F90];
  v4 = xmmword_22B7F9630;
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = count;
    if (count)
    {
      v6 = repeating;
      do
      {
        sub_22B713BE0(v6);
        repeating = sub_22B713E60(v6);
        --v5;
      }

      while (v5);
      v8 = v9;
      v4 = xmmword_22B7F9630;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    *v3 = v8;
    *(v3 + 8) = v4;
  }

  result.content._count = v7;
  result.content.bitSize = count;
  result.content.data._rawValue = repeating;
  return result;
}

Swift::Void __swiftcall UIntArray.append(_:)(Swift::UInt a1)
{
  sub_22B713BE0(a1);

  sub_22B713E60(a1);
}

uint64_t sub_22B713BE0(uint64_t result)
{
  v3 = v2[1];
  v4 = 64 - v3;
  if (__OFSUB__(64, v3))
  {
    goto LABEL_52;
  }

  v1 = v2;
  if (v4 <= -65 || v4 > 64)
  {
    goto LABEL_4;
  }

  if (v4 < 0)
  {
    goto LABEL_58;
  }

  if (v4 == 64)
  {
    goto LABEL_4;
  }

  if ((result & ~(0xFFFFFFFFFFFFFFFFLL >> v4)) == 0)
  {
    return result;
  }

  while (1)
  {
    result = sub_22B7150F0(result);
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_53;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (__OFSUB__(result, 1))
    {
      goto LABEL_55;
    }

    v5 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | (v6 >> 16);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    if (v4 == -64)
    {
LABEL_4:
      if (!result)
      {
        return result;
      }
    }

    else if ((result & ~(-1 << (v3 - 64))) == 0)
    {
      return result;
    }
  }

  v10 = v9;
  v25 = MEMORY[0x277D84F90];
  v26 = v9;
  v11 = v1[2];
  if (v11 < 0)
  {
    goto LABEL_57;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *v1;
    v14 = *v1 + 32;
    v15 = -1 - v3;
    while (1)
    {
      v17 = v12 * v3;
      if ((v12 * v3) >> 64 != (v12 * v3) >> 63)
      {
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

      if (v17 >= 0)
      {
        v18 = v12 * v3;
      }

      else
      {
        v18 = v17 + 63;
      }

      if (v17 < -63)
      {
        goto LABEL_49;
      }

      if (v18 >> 6 >= *(v13 + 16))
      {
        goto LABEL_50;
      }

      v19 = 64 - (v17 - (v18 & 0xFFFFFFFFFFFFFFC0));
      v8 = __OFSUB__(v19, v3);
      v20 = v19 - v3;
      if (v8)
      {
        goto LABEL_51;
      }

      if (v20 > -65 && v20 <= 64)
      {
        v22 = *(v14 + 8 * (v18 >> 6));
        if (v20 < 0)
        {
          if (v20 != -64)
          {
            v21 = v22 >> -v20;
            if (v15 <= 0xFFFFFFFFFFFFFF7ELL)
            {
              goto LABEL_16;
            }

LABEL_34:
            if (v4 < 0)
            {
              if (v4 > 0xFFFFFFFFFFFFFFC0)
              {
                goto LABEL_43;
              }
            }

            else if (v4 < 0x40)
            {
              goto LABEL_36;
            }

            goto LABEL_16;
          }
        }

        else if (v20 != 64)
        {
          v21 = v22 << v20;
          if (v15 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_16;
          }

          goto LABEL_34;
        }
      }

      if (v15 >= 0xFFFFFFFFFFFFFF7FLL)
      {
        if (v4 < 0)
        {
          v16 = 0;
          v21 = 0;
          if (v4 <= 0xFFFFFFFFFFFFFFC0)
          {
            goto LABEL_17;
          }

LABEL_43:
          v16 = v21 << (v3 - 64);
          goto LABEL_17;
        }

        v16 = 0;
        v21 = 0;
        if (v4 >= 0x40)
        {
          goto LABEL_17;
        }

LABEL_36:
        v16 = v21 >> v4;
        goto LABEL_17;
      }

LABEL_16:
      v16 = 0;
LABEL_17:
      ++v12;
      result = sub_22B713E60(v16);
      if (v11 == v12)
      {
        v23 = v25;
        v10 = v26;
        goto LABEL_46;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_46:
  v24 = *v1;

  *v1 = v23;
  v1[1] = v10;
  v1[2] = 0;
  return result;
}

uint64_t sub_22B713E60(uint64_t a1)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v6 * v5;
  if ((v6 * v5) >> 64 != (v6 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  v8 = v7 + 63;
  if (v7 >= 0)
  {
    v8 = v6 * v5;
  }

  v3 = v8 >> 6;
  v9 = v5 - 65;
  v10 = -1 << v5;
  if (v5 >= 0x40)
  {
    v10 = 0;
  }

  v11 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  if (v5 <= 0xFFFFFFFFFFFFFFC0)
  {
    v11 = 0;
  }

  if (v5 < 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v9 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v12 = 0;
  }

  v4 = a1 & ~v12;
  v1 = *v2;
  if (v3 != *(*v2 + 16))
  {
    v17 = v7 - (v8 & 0xFFFFFFFFFFFFFFC0);
    if (v17 >= 0)
    {
      v4 <<= v17;
    }

    else
    {
      v4 >>= -v17;
    }

    v18 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v7 >= -63)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_22B7025C8(v1);
      v1 = result;
      if (v7 >= -63)
      {
LABEL_23:
        if (v3 < *(v1 + 16))
        {
          *(v1 + 8 * v3 + 32) |= v4;
          goto LABEL_25;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v13 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v16 = *(v1 + 16);
    v15 = *(v1 + 24);
    v3 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_22B71B54C((v15 > 1), v16 + 1, 1, v1);
      v1 = result;
    }

    *(v1 + 16) = v3;
    *(v1 + 8 * v16 + 32) = v4;
LABEL_25:
    *v2 = v1;
    if (!__OFADD__(v6, 1))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_22B71B54C(0, v3 + 1, 1, v1);
    v1 = result;
  }

  v2[2] = v6 + 1;
  return result;
}

uint64_t UIntArray.subscript.setter(unint64_t a1, uint64_t a2)
{
  sub_22B713BE0(a1);

  return sub_22B71411C(a1, a2);
}

uint64_t sub_22B714034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 * a3;
  v4 = (a1 * a3) >> 64;
  if (v4 != (a1 * a3) >> 63)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = v3 + 63;
  if (v3 >= 0)
  {
    v5 = a1 * a3;
  }

  else
  {
    v5 = v3 + 63;
  }

  if (v3 < -63)
  {
    goto LABEL_22;
  }

  v4 = v5 >> 6;
  if (v5 >> 6 >= *(a2 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = 64 - (v3 - (v5 & 0xFFFFFFFFFFFFFFC0));
  v7 = __OFSUB__(v6, a3);
  v3 = v6 - a3;
  if (v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v3 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_14;
  }

  v4 = *(a2 + 8 * v4 + 32);
  if (v3 < 0)
  {
    goto LABEL_26;
  }

  v8 = v4 << v3;
  if (v3 >= 0x40)
  {
    v3 = 0;
  }

  else
  {
    v3 = v8;
  }

LABEL_14:
  while (1)
  {
    v4 = 64 - a3;
    if (!__OFSUB__(64, a3))
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    if (v3 <= 0xFFFFFFFFFFFFFFC0)
    {
      goto LABEL_9;
    }

    v3 = v4 >> -v3;
  }

  if ((-1 - a3) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      return 0;
    }

    return v3 << (a3 - 64);
  }

  else
  {
    v10 = v3 >> v4;
    if (v4 >= 0x40)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_22B71411C(unint64_t a1, uint64_t a2)
{
  v8 = v3[1];
  v9 = a2 * v8;
  if ((a2 * v8) >> 64 != (a2 * v8) >> 63)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = v9 + 63;
  if (v9 >= 0)
  {
    v10 = a2 * v8;
  }

  v11 = 64 - v8;
  if (__OFSUB__(64, v8))
  {
    goto LABEL_38;
  }

  v12 = v9 - (v10 & 0xFFFFFFFFFFFFFFC0);
  v13 = a1 << v11;
  if (v11 >= 0x40)
  {
    v13 = 0;
  }

  v14 = a1 >> (v8 - 64);
  if (v11 <= 0xFFFFFFFFFFFFFFC0)
  {
    v14 = 0;
  }

  if (v11 < 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (-1 - v8 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v15 = 0;
  }

  v16 = 64 - v12 - v8;
  if (__OFSUB__(64 - v12, v8))
  {
    goto LABEL_39;
  }

  if (v16 >= -64 && v16 <= 64)
  {
    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v4 = v15 << (v8 - (64 - v12));
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v4 = v15 >> v16;
    }

    if (v8 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        if (v8 > 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_48;
        }
      }

      else if (v8 < 0x40)
      {
        goto LABEL_29;
      }
    }

    v17 = 0;
    goto LABEL_30;
  }

LABEL_17:
  if (v8 - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v17 = 0;
    v4 = 0;
    goto LABEL_30;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v4 = 0;
    if (v8 >= 0x40)
    {
      goto LABEL_30;
    }

LABEL_29:
    v17 = -1 << v8;
    goto LABEL_30;
  }

  v4 = 0;
  v17 = 0;
  if (v8 > 0xFFFFFFFFFFFFFFC0)
  {
LABEL_48:
    v17 = 0xFFFFFFFFFFFFFFFFLL >> -v8;
  }

LABEL_30:
  v5 = v10 >> 6;
  if (v12 >= 0)
  {
    v6 = ~v17 << v12;
  }

  else
  {
    v6 = ~v17 >> ((v10 & 0xC0u) - v9);
  }

  if (v9 < -63)
  {
    goto LABEL_40;
  }

  v2 = *v3;
  if (v5 >= *(*v3 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v7 = *(v2 + 8 * v5 + 32);
  v18 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_42:
    result = sub_22B7025C8(v2);
    v2 = result;
  }

  *(v2 + 8 * v5 + 32) = v7 & ~v6 | v6 & v4;
  *v3 = v2;
  return result;
}

uint64_t (*UIntArray.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  v3 = v2[2];
  *a1 = sub_22B714034(a2, *v2, v2[1]);
  return sub_22B714350;
}

uint64_t sub_22B714350(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  sub_22B713BE0(*a1);
  return sub_22B71411C(v3, v1);
}

Swift::Int __swiftcall UIntArray.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall UIntArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t UIntArray.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22B7DC668();
  sub_22B71469C(v5, v1, v2, v3);
  return sub_22B7DC6B8();
}

void *sub_22B714444@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_22B71445C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*sub_22B714480(uint64_t *a1, uint64_t *a2))()
{
  v3 = v2[2];
  *a1 = sub_22B714034(*a2, *v2, v2[1]);
  return nullsub_16;
}

uint64_t *sub_22B7144D0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v3 >= v5)
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v3;
    *a2 = v4;
    a2[1] = v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22B71450C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v3;
}

uint64_t *sub_22B714534(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B714550(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B71456C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_22B714588@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_22B7145A0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_22B7145B8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

void *sub_22B7145D8()
{
  v1 = *v0;
  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v0[1];
  v4 = sub_22B759C10(v0[2], 0);
  v5 = sub_22B759DC0(v7, v4 + 4, v2, v1, v3, v2);

  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_22B71469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    goto LABEL_39;
  }

  if (!a4)
  {
    return;
  }

  v6 = 64 - a3;
  if (__OFSUB__(64, a3))
  {
    goto LABEL_40;
  }

  v7 = 0;
  v8 = a2 + 32;
  v9 = *(a2 + 16);
  v10 = -1 - a3;
  v11 = a3 - 64;
  while (1)
  {
    v13 = v7 * a3;
    if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
    {
      break;
    }

    v14 = v13 + 63;
    if (v13 >= 0)
    {
      v14 = v7 * a3;
    }

    v15 = v14 >> 6;
    if (v13 < -63 || v15 >= v9)
    {
      goto LABEL_37;
    }

    v17 = (v15 << 6) - v13 + 64;
    v18 = __OFSUB__(v17, a3);
    v19 = v17 - a3;
    if (v18)
    {
      goto LABEL_38;
    }

    if (v19 > -65 && v19 <= 64)
    {
      v21 = *(v8 + 8 * v15);
      if (v19 < 0)
      {
        if (v19 != -64)
        {
          v20 = v21 >> -v19;
          if (v10 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_5;
          }

LABEL_25:
          if ((v6 & 0x8000000000000000) != 0)
          {
            if (v6 > 0xFFFFFFFFFFFFFFC0)
            {
              goto LABEL_34;
            }
          }

          else if (v6 < 0x40)
          {
            goto LABEL_27;
          }

          goto LABEL_5;
        }
      }

      else if (v19 != 64)
      {
        v20 = v21 << v19;
        if (v10 <= 0xFFFFFFFFFFFFFF7ELL)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    if (v10 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        v12 = 0;
        v20 = 0;
        if (v6 <= 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_6;
        }

LABEL_34:
        v12 = v20 << v11;
        goto LABEL_6;
      }

      v12 = 0;
      v20 = 0;
      if (v6 >= 0x40)
      {
        goto LABEL_6;
      }

LABEL_27:
      v12 = v20 >> v6;
      goto LABEL_6;
    }

LABEL_5:
    v12 = 0;
LABEL_6:
    ++v7;
    MEMORY[0x231895FF0](v12);
    if (a4 == v7)
    {
      return;
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

uint64_t sub_22B714834()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22B7DC668();
  sub_22B71469C(v5, v1, v2, v3);
  return sub_22B7DC6B8();
}

uint64_t sub_22B714890()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22B7DC668();
  sub_22B71469C(v5, v1, v2, v3);
  return sub_22B7DC6B8();
}

uint64_t sub_22B7148EC()
{
  sub_22B71360C(*v0, v0[1], v0[2]);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B714FD8(&qword_28141F2C8, &unk_27D8CE9E0, &qword_22B7F99B0);
  v1 = sub_22B7DB5F8();
  v3 = v2;

  MEMORY[0x231895140](v1, v3);

  MEMORY[0x231895140](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_22B7149F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a6)
  {
    return 0;
  }

  if (a2 == a5)
  {
    v6 = *(result + 16);
    if (v6 == *(a4 + 16))
    {
      if (v6 && result != a4)
      {
        v7 = (result + 32);
        v8 = (a4 + 32);
        while (v6)
        {
          v10 = *v7++;
          v9 = v10;
          v11 = *v8++;
          result = v9 == v11;
          if (v9 != v11 || v6-- == 1)
          {
            return result;
          }
        }

        goto LABEL_85;
      }

      return 1;
    }

    return 0;
  }

  if (a3 < 0)
  {
    goto LABEL_86;
  }

  if (!a3)
  {
    return 1;
  }

  v13 = 64 - a2;
  if (__OFSUB__(64, a2))
  {
    goto LABEL_87;
  }

  v14 = 64 - a5;
  if (!__OFSUB__(64, a5))
  {
    v15 = 0;
    v16 = result + 32;
    v17 = a4 + 32;
    v18 = *(result + 16);
    v19 = *(a4 + 16);
    v20 = -1 - a2;
    result = 64;
    while (1)
    {
      v21 = v15 * a2;
      if ((v15 * a2) >> 64 != (v15 * a2) >> 63)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        break;
      }

      if (v21 >= 0)
      {
        v22 = v15 * a2;
      }

      else
      {
        v22 = v21 + 63;
      }

      if (v21 < -63)
      {
        goto LABEL_79;
      }

      if (v22 >> 6 >= v18)
      {
        goto LABEL_80;
      }

      v23 = 64 - (v21 - (v22 & 0xFFFFFFFFFFFFFFC0));
      v24 = __OFSUB__(v23, a2);
      v25 = v23 - a2;
      if (v24)
      {
        goto LABEL_81;
      }

      if (v25 > -65 && v25 <= 64)
      {
        v28 = *(v16 + 8 * (v22 >> 6));
        if (v25 < 0)
        {
          if (v25 != -64)
          {
            v27 = v28 >> -v25;
            if (v20 <= 0xFFFFFFFFFFFFFF7ELL)
            {
              goto LABEL_37;
            }

            goto LABEL_42;
          }
        }

        else if (v25 != 64)
        {
          v27 = v28 << v25;
          if (v20 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_37;
          }

LABEL_42:
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 >= 0x40)
            {
              goto LABEL_37;
            }

LABEL_44:
            v26 = v27 >> v13;
            goto LABEL_45;
          }

          if (v13 <= 0xFFFFFFFFFFFFFFC0)
          {
LABEL_37:
            v26 = 0;
            goto LABEL_45;
          }

LABEL_73:
          v26 = v27 << (a2 - 64);
          goto LABEL_45;
        }
      }

      if (v20 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_37;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        v26 = 0;
        v27 = 0;
        if (v13 > 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        if (v13 < 0x40)
        {
          goto LABEL_44;
        }
      }

LABEL_45:
      v29 = v15 * a5;
      if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
      {
        goto LABEL_82;
      }

      v30 = v29 + 63;
      if (v29 >= 0)
      {
        v30 = v15 * a5;
      }

      if (v29 < -63)
      {
        goto LABEL_83;
      }

      v31 = v30 >> 6;
      if (v31 >= v19)
      {
        goto LABEL_83;
      }

      v32 = (v31 << 6) - v29 + 64;
      v24 = __OFSUB__(v32, a5);
      v33 = v32 - a5;
      if (v24)
      {
        goto LABEL_84;
      }

      if (v33 < -64 || v33 > 64)
      {
LABEL_53:
        if (v14 < -64 || v14 > 64)
        {
LABEL_19:
          if (v26)
          {
            return 0;
          }

          goto LABEL_20;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 == 64)
          {
            goto LABEL_19;
          }

          v34 = 0;
LABEL_64:
          v36 = v34 >> v14;
          goto LABEL_65;
        }

        if (v14 == -64)
        {
          goto LABEL_19;
        }

        v36 = 0;
        goto LABEL_65;
      }

      v35 = *(v17 + 8 * v31);
      if (v33 < 0)
      {
        if (v33 == -64)
        {
          goto LABEL_53;
        }

        v34 = v35 >> -v33;
        if (v14 <= -65)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v33 == 64)
        {
          goto LABEL_53;
        }

        v34 = v35 << v33;
        if (v14 <= -65)
        {
          goto LABEL_19;
        }
      }

      if (v14 > 64)
      {
        goto LABEL_19;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 == 64)
        {
          goto LABEL_19;
        }

        goto LABEL_64;
      }

      if (v14 == -64)
      {
        goto LABEL_19;
      }

      v36 = v34 << (a5 - 64);
LABEL_65:
      if (v26 != v36)
      {
        return 0;
      }

LABEL_20:
      if (a3 == ++v15)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B714CB8()
{
  result = qword_27D8CD828;
  if (!qword_27D8CD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD828);
  }

  return result;
}

unint64_t sub_22B714D50()
{
  result = qword_27D8CD840;
  if (!qword_27D8CD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD840);
  }

  return result;
}

uint64_t sub_22B714DE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(a2, a3);
    sub_22B714D50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B714E54()
{
  result = qword_27D8CD858;
  if (!qword_27D8CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD858);
  }

  return result;
}

unint64_t sub_22B714EAC()
{
  result = qword_27D8CD860;
  if (!qword_27D8CD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD860);
  }

  return result;
}

uint64_t sub_22B714FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B715044()
{
  result = qword_27D8CD888;
  if (!qword_27D8CD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD888);
  }

  return result;
}

uint64_t sub_22B715098(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B7150F0(uint64_t result)
{
  v1 = 1;
  v2 = 63;
  while (1)
  {
    if (v2 <= -65)
    {
      goto LABEL_2;
    }

    if (v2 < 0)
    {
      break;
    }

    if ((result & ~(0xFFFFFFFFFFFFFFFFLL >> v2)) == 0)
    {
      goto LABEL_10;
    }

LABEL_3:
    v1 *= 2;
    v2 = 64 - v1;
    if (__OFSUB__(64, v1))
    {
      __break(1u);
      return result;
    }
  }

  if (v2 == -64)
  {
LABEL_2:
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  if ((result & ~(-1 << -v2)) != 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}