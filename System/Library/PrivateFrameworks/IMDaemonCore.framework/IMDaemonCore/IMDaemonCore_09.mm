uint64_t sub_22B715158(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

uint64_t sub_22B71518C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_22B7152A4()
{
  result = qword_27D8CD890;
  if (!qword_27D8CD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD890);
  }

  return result;
}

uint64_t XPCClientConnectionRouteProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t XPCClientConnectionRouteProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_22B715388(void **a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_22B7DB678();
  v5 = [v3 valueForEntitlement_];

  if (v5)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_22B4D0138(v11);
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  sub_22B705FCC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = [v8 BOOLValue];

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:
  *a2 = v7;
}

uint64_t sub_22B715488()
{
  v1 = *(*v0 + 16);
  sub_22B7DACB8();
  return v3;
}

void sub_22B71550C(void **a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_22B715388(a1, a2);
}

id IMDCollaborationClearNoticeRateLimiter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDCollaborationClearNoticeRateLimiter.init()()
{
  v17 = sub_22B7DBD48();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B7DBD38();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22B7DB398();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v0[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_rateLimiterOverride];
  *v9 = 0xD00000000000002BLL;
  *(v9 + 1) = 0x800000022B80E950;
  v10 = OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory;
  sub_22B4D01A0(0, &qword_28141F1D0, 0x277CBEB38);
  v11 = MEMORY[0x277D84F90];
  *&v0[v10] = sub_22B7DBC68();
  v16[1] = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DACD8();
  v19 = v11;
  sub_22B4D11AC(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B71019C();
  sub_22B7DC138();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v17);
  *&v0[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_persistenceQueue] = sub_22B7DBD88();
  v12 = sub_22B716F18();
  v13 = *&v0[v10];
  *&v0[v10] = v12;

  v14 = type metadata accessor for IMDCollaborationClearNoticeRateLimiter();
  v18.receiver = v0;
  v18.super_class = v14;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_22B715844(void *a1)
{
  v3 = sub_22B7DAA48();
  v93 = *(v3 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B7DA6A8();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v96 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v90 - v12;
  v14 = sub_22B7DA968();
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v90 - v19;
  v92 = v1;
  v90 = OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory;
  v20 = *(v1 + OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory);
  v98 = a1;
  v21 = [a1 collaborationId];
  v22 = sub_22B7DB6A8();
  v24 = v23;

  *&v100 = v22;
  *(&v100 + 1) = v24;
  v25 = [v20 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v25)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102[0] = v100;
  v102[1] = v101;
  v26 = v99;
  if (*(&v101 + 1))
  {
    v27 = swift_dynamicCast();
    (*(v26 + 56))(v13, v27 ^ 1u, 1, v14);
    if ((*(v26 + 48))(v13, 1, v14) != 1)
    {
      v28 = *(v26 + 32);
      v91 = v18;
      v28(v97, v13, v14);
      sub_22B7DA958();
      sub_22B7DAA28();
      sub_22B6F0AD4(&qword_27D8CD8C8, &qword_22B7F9DC8);
      v29 = sub_22B7DAA38();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_22B7F93B0;
      (*(v30 + 104))(v33 + v32, *MEMORY[0x277CC99A0], v29);
      sub_22B717418(v33);
      swift_setDeallocating();
      (*(v30 + 8))(v33 + v32, v29);
      swift_deallocClassInstance();
      v34 = v96;
      v35 = v91;
      sub_22B7DAA18();

      (*(v93 + 8))(v6, v3);
      v36 = sub_22B7DA698();
      if (v37)
      {
        if (qword_28141F390 != -1)
        {
          swift_once();
        }

        v38 = sub_22B7DB2B8();
        sub_22B4CFA74(v38, qword_281422668);
        v39 = v98;
        v40 = sub_22B7DB298();
        v41 = sub_22B7DBC98();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = v35;
          v44 = swift_slowAlloc();
          *&v102[0] = v44;
          *v42 = 136315138;
          v45 = [v39 collaborationId];
          v46 = sub_22B7DB6A8();
          v48 = v47;

          v49 = sub_22B4CFAAC(v46, v48, v102);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_22B4CC000, v40, v41, "RateLimiter: clear notice for collaboration id %s couldn't calculate elapsed time.", v42, 0xCu);
          sub_22B4CFB78(v44);
          MEMORY[0x231898D60](v44, -1, -1);
          MEMORY[0x231898D60](v42, -1, -1);

          (*(v94 + 8))(v34, v95);
          v50 = *(v99 + 8);
          v50(v43, v14);
        }

        else
        {

          (*(v94 + 8))(v34, v95);
          v50 = *(v99 + 8);
          v50(v35, v14);
        }

        v50(v97, v14);
        return 0;
      }

      else
      {
        v63 = v36;
        v64 = *(v92 + OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_rateLimiterOverride);
        v65 = *(v92 + OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_rateLimiterOverride + 8);
        v66 = *MEMORY[0x277D19D90];
        v67 = sub_22B7DB678();
        v68 = IMGetCachedDomainIntForKeyWithDefaultValue();

        LODWORD(v93) = v63 >= v68;
        if (qword_28141F390 != -1)
        {
          swift_once();
        }

        v69 = sub_22B7DB2B8();
        sub_22B4CFA74(v69, qword_281422668);
        v70 = v98;
        v71 = sub_22B7DB298();
        v72 = sub_22B7DBC78();

        v73 = os_log_type_enabled(v71, v72);
        v98 = v70;
        if (v73)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v102[0] = v75;
          *v74 = 67109890;
          *(v74 + 4) = v63 >= v68;
          *(v74 + 8) = 2080;
          v76 = [v70 collaborationId];
          v77 = sub_22B7DB6A8();
          v79 = v78;

          v80 = sub_22B4CFAAC(v77, v79, v102);

          *(v74 + 10) = v80;
          *(v74 + 18) = 2048;
          *(v74 + 20) = v63;
          *(v74 + 28) = 2048;
          *(v74 + 30) = v68;
          _os_log_impl(&dword_22B4CC000, v71, v72, "RateLimiter: result=%{BOOL}d for notice collaboration id %s, elapsedMinutes: %ld < threshold: %ld", v74, 0x26u);
          sub_22B4CFB78(v75);
          v81 = v75;
          v34 = v96;
          MEMORY[0x231898D60](v81, -1, -1);
          MEMORY[0x231898D60](v74, -1, -1);
        }

        v82 = v91;
        if (v63 < v68)
        {
          v83 = *(v92 + v90);
          v84 = [v98 collaborationId];
          v85 = sub_22B7DB6A8();
          v87 = v86;

          v88 = sub_22B7DA8B8();
          *&v102[0] = v85;
          *(&v102[0] + 1) = v87;
          [v83 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
        }

        (*(v94 + 8))(v34, v95);
        v89 = *(v99 + 8);
        v89(v82, v14);
        v89(v97, v14);
        return v93;
      }
    }
  }

  else
  {
    sub_22B4D0D64(v102, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v26 + 56))(v13, 1, 1, v14);
  }

  sub_22B4D0D64(v13, &unk_27D8CF790, &qword_22B7F9578);
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v51 = sub_22B7DB2B8();
  sub_22B4CFA74(v51, qword_281422668);
  v52 = v98;
  v53 = sub_22B7DB298();
  v54 = sub_22B7DBC78();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v102[0] = v56;
    *v55 = 136315138;
    v57 = [v52 collaborationId];
    v58 = sub_22B7DB6A8();
    v60 = v59;

    v61 = sub_22B4CFAAC(v58, v60, v102);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_22B4CC000, v53, v54, "RateLimiter: clear notice for collaboration id %s hasn't been sent before, approved to send.", v55, 0xCu);
    sub_22B4CFB78(v56);
    MEMORY[0x231898D60](v56, -1, -1);
    MEMORY[0x231898D60](v55, -1, -1);
  }

  return 1;
}

uint64_t sub_22B716384(void *a1)
{
  v2 = sub_22B7DA968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v47 - v8;
  sub_22B7DA958();
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_281422668);
  (*(v3 + 16))(v7, v9, v2);
  v11 = a1;
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBC78();

  v14 = os_log_type_enabled(v12, v13);
  v15 = &selRef_broadcasterForListenersSupportingService_;
  v47[1] = v3;
  if (v14)
  {
    v16 = swift_slowAlloc();
    v49 = v2;
    v17 = v16;
    v47[0] = swift_slowAlloc();
    aBlock = v47[0];
    *v17 = 136315394;
    v18 = [v11 collaborationId];
    v19 = sub_22B7DB6A8();
    v20 = v9;
    v21 = v3;
    v23 = v22;

    v24 = sub_22B4CFAAC(v19, v23, &aBlock);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    sub_22B4D11AC(&qword_27D8CD8D0, MEMORY[0x277CC9578]);
    v25 = sub_22B7DC4E8();
    v27 = v26;
    v28 = v21;
    v9 = v20;
    v29 = *(v28 + 8);
    v29(v7, v49);
    v30 = sub_22B4CFAAC(v25, v27, &aBlock);
    v15 = &selRef_broadcasterForListenersSupportingService_;

    *(v17 + 14) = v30;
    _os_log_impl(&dword_22B4CC000, v12, v13, "IMDCollaborationNoticeRateLimiter: collaboration id %s => %s", v17, 0x16u);
    v31 = v47[0];
    swift_arrayDestroy();
    MEMORY[0x231898D60](v31, -1, -1);
    v32 = v17;
    v2 = v49;
    MEMORY[0x231898D60](v32, -1, -1);

    v33 = v29;
  }

  else
  {

    v33 = *(v3 + 8);
    v33(v7, v2);
  }

  v34 = v48;
  v35 = *&v48[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory];
  v36 = [v11 v15[224]];
  v37 = sub_22B7DB6A8();
  v39 = v38;

  v40 = sub_22B7DA8B8();
  aBlock = v37;
  v51 = v39;
  [v35 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v41 = *&v34[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_persistenceQueue];
  v42 = swift_allocObject();
  *(v42 + 16) = v34;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22B717738;
  *(v43 + 24) = v42;
  v54 = sub_22B717740;
  v55 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_22B716E5C;
  v53 = &unk_283F1C928;
  v44 = _Block_copy(&aBlock);
  v45 = v34;

  dispatch_sync(v41, v44);
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if ((v44 & 1) == 0)
  {
    return (v33)(v9, v2);
  }

  __break(1u);
  return result;
}

void sub_22B7168E8()
{
  sub_22B71690C();
  qword_281422730 = v0;
  *algn_281422738 = v1;
}

void sub_22B71690C()
{
  v0 = [*MEMORY[0x277D19CD8] stringByResolvingAndStandardizingPath];
  if (v0)
  {
    sub_22B7DB6A8();
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  IMSharedHelperEnsureDirectoryExistsAtPath();

  if (v2)
  {
    v3 = sub_22B7DB678();

    v4 = sub_22B7DB678();
    v5 = [v3 stringByAppendingPathComponent_];

    sub_22B7DB6A8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B716A04(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B7DA728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33[-v9];
  v11 = sub_22B7DA828();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28141F5E8 != -1)
  {
    swift_once();
  }

  (*(v12 + 56))(v10, 1, 1, v11);
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);

  sub_22B7DA818();
  v16 = *(a1 + OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory);
  v17 = sub_22B7DA788();
  v34[0] = 0;
  v18 = [v16 writeToURL:v17 error:v34];

  if (v18)
  {
    v19 = *(v12 + 8);
    v20 = v34[0];
    result = v19(v15, v11);
  }

  else
  {
    v22 = v34[0];
    v23 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422668);
    v25 = v23;
    v26 = sub_22B7DB298();
    v27 = sub_22B7DBC98();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22B4CC000, v26, v27, "Error persisting clearNoticeEventHistory, error: %@", v28, 0xCu);
      sub_22B4D0D64(v29, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v29, -1, -1);
      MEMORY[0x231898D60](v28, -1, -1);
    }

    else
    {
    }

    result = (*(v12 + 8))(v15, v11);
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

id IMDCollaborationClearNoticeRateLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDCollaborationClearNoticeRateLimiter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B716F18()
{
  v0 = sub_22B7DA728();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_22B7DA828();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  if (qword_28141F5E8 != -1)
  {
    swift_once();
  }

  v14 = sub_22B7DB678();
  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    v17 = v35;
    v16 = v36;
    (*(v35 + 56))(v8, 1, 1, v36);
    (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);

    v18 = v34;
    sub_22B7DA818();
    v19 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v20 = sub_22B7DA788();
    v21 = [v19 initWithContentsOfURL_];

    if (!v21)
    {
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v22 = sub_22B7DB2B8();
      sub_22B4CFA74(v22, qword_281422668);
      v23 = sub_22B7DB298();
      v24 = sub_22B7DBC78();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22B4CC000, v23, v24, "IMDCollaborationClearNoticeRateLimiter: Loaded empty dictionary, creating new dictionary", v25, 2u);
        MEMORY[0x231898D60](v25, -1, -1);
      }

      v21 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    }

    (*(v17 + 8))(v18, v16);
    return v21;
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v27 = sub_22B7DB2B8();
    sub_22B4CFA74(v27, qword_281422668);
    v28 = sub_22B7DB298();
    v29 = sub_22B7DBC78();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B4CC000, v28, v29, "Creating rate limiter persistence", v30, 2u);
      MEMORY[0x231898D60](v30, -1, -1);
    }

    v31 = [v12 defaultManager];
    v32 = sub_22B7DB678();
    [v31 createFileAtPath:v32 contents:0 attributes:0];

    sub_22B4D01A0(0, &qword_28141F1D0, 0x277CBEB38);
    return sub_22B7DBC68();
  }
}

uint64_t sub_22B717418(uint64_t a1)
{
  v2 = sub_22B7DAA38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD8E0, qword_22B7F9E28);
    v10 = sub_22B7DC298();
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
      sub_22B4D11AC(&qword_27D8CD8E8, MEMORY[0x277CC99D0]);
      v18 = sub_22B7DB5A8();
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
          sub_22B4D11AC(&unk_27D8CD8F0, MEMORY[0x277CC99D0]);
          v25 = sub_22B7DB658();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22B717740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B7177E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CD8D8, &unk_22B7F9E10);
    v3 = sub_22B7DC298();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_22B7DB6A8();
      sub_22B7DC668();
      v29 = v7;
      sub_22B7DB758();
      v9 = sub_22B7DC6B8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_22B7DB6A8();
        v20 = v19;
        if (v18 == sub_22B7DB6A8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_22B7DC518();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22B7179DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
    v3 = sub_22B7DC298();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22B7DC668();

      sub_22B7DB758();
      result = sub_22B7DC6B8();
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
          result = sub_22B7DC518();
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

char *sub_22B717B44(unint64_t a1)
{
  v1 = a1;
  v49 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_68:
    v45 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_22B7DC1C8();
  }

  else
  {
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v38 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v44 = v1 & 0xC000000000000001;
  v8 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v39 = v2;
  v9 = 1;
  v41 = v1;
  while (2)
  {
    v42 = v4;
    v4 = v7;
    v43 = v9;
    while (1)
    {
      if (v44)
      {
        v10 = MEMORY[0x231895C80](v4, v1);
      }

      else
      {
        if (v4 >= *(v45 + 16))
        {
          goto LABEL_67;
        }

        v10 = *(v1 + 8 * v4 + 32);
      }

      v11 = v10;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v9)
      {

        v5 = [v11 flag];
        v6 = [v11 reason];
        v12 = [v11 userInfo];
        if (v12)
        {
          v13 = v12;
          v3 = sub_22B7DB588();

          v43 = 0;
        }

        else
        {
          v43 = 0;
          v3 = 0;
        }

        v42 = v4;
        goto LABEL_29;
      }

      if ([v10 flag] != v5 || objc_msgSend(v11, sel_reason) != v6)
      {
        goto LABEL_36;
      }

      v14 = v3;
      v15 = [v11 userInfo];
      if (!v15)
      {
        if (!v3)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v16 = v15;
      v17 = sub_22B7DB588();

      if (!v14)
      {
        break;
      }

      v3 = v14;
      if (!v17)
      {
        v1 = v41;
LABEL_28:
        if (*(v3 + 16))
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      v18 = v6;
      v19 = v5;
      v20 = sub_22B7DB568();
      v21 = sub_22B7DB568();
      v40 = [v20 isEqualToDictionary_];

      if (!v40)
      {
        v5 = v19;
        v6 = v18;
        v2 = v39;
        v1 = v41;
        v3 = v14;
LABEL_36:
        if ((v43 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }

      v5 = v19;
      v6 = v18;
      v2 = v39;
      v1 = v41;
      v3 = v14;
LABEL_29:
      v23 = v11;
      MEMORY[0x231895260]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B7DB938();
      }

      sub_22B7DB968();

      v9 = 0;
      v8 = v49;
      ++v4;
      if (v7 == v2)
      {
        v4 = v42;
        if ((v43 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }
    }

    if (!v17)
    {
      v3 = 0;
      v1 = v41;
      goto LABEL_29;
    }

    v22 = *(v17 + 16);

    v3 = 0;
    if (!v22)
    {
      v1 = v41;
      goto LABEL_29;
    }

    v1 = v41;
    if (v43)
    {
      goto LABEL_45;
    }

LABEL_37:
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

LABEL_45:

      goto LABEL_46;
    }

    if (!sub_22B7DC1C8())
    {
      goto LABEL_45;
    }

LABEL_39:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_22B71BEAC(0, *(v38 + 2) + 1, 1, v38);
    }

    v26 = *(v38 + 2);
    v25 = *(v38 + 3);
    if (v26 >= v25 >> 1)
    {
      v38 = sub_22B71BEAC((v25 > 1), v26 + 1, 1, v38);
    }

    *(v38 + 2) = v26 + 1;
    v27 = &v38[64 * v26];
    *(v27 + 4) = v42;
    v27[40] = 0;
    *(v27 + 11) = *&v48[3];
    *(v27 + 41) = *v48;
    *(v27 + 6) = v5;
    v27[56] = 0;
    *(v27 + 15) = *&v47[3];
    *(v27 + 57) = *v47;
    *(v27 + 8) = v6;
    v27[72] = 0;
    *(v27 + 19) = *&v46[3];
    *(v27 + 73) = *v46;
    *(v27 + 10) = v8;
    *(v27 + 11) = v3;

LABEL_46:
    v49 = MEMORY[0x277D84F90];
    v5 = [v11 flag];
    v6 = [v11 reason];
    v28 = [v11 userInfo];
    if (v28)
    {
      v29 = v28;
      v3 = sub_22B7DB588();
    }

    else
    {
      v3 = 0;
    }

    v30 = v11;
    MEMORY[0x231895260]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B7DB938();
    }

    sub_22B7DB968();

    v9 = 0;
    v8 = v49;
    if (v7 != v2)
    {
      continue;
    }

    break;
  }

LABEL_58:
  if (v2)
  {
LABEL_59:
    v33 = v5;
    v32 = v38;
    if (v8 >> 62)
    {
      if (!sub_22B7DC1C8())
      {
        goto LABEL_70;
      }

LABEL_61:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_22B71BEAC(0, *(v38 + 2) + 1, 1, v38);
      }

      v35 = *(v32 + 2);
      v34 = *(v32 + 3);
      if (v35 >= v34 >> 1)
      {
        v32 = sub_22B71BEAC((v34 > 1), v35 + 1, 1, v32);
      }

      *(v32 + 2) = v35 + 1;
      v36 = &v32[64 * v35];
      *(v36 + 4) = v4;
      v36[40] = 0;
      *(v36 + 11) = *&v48[3];
      *(v36 + 41) = *v48;
      *(v36 + 6) = v33;
      v36[56] = 0;
      *(v36 + 15) = *&v47[3];
      *(v36 + 57) = *v47;
      *(v36 + 8) = v6;
      v36[72] = 0;
      *(v36 + 19) = *&v46[3];
      *(v36 + 73) = *v46;
      *(v36 + 10) = v8;
      *(v36 + 11) = v3;
    }

    else
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

LABEL_70:
    }
  }

  else
  {
LABEL_56:

    return v38;
  }

  return v32;
}

__n128 sub_22B718264(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B718278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B7182C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B718320()
{
  result = sub_22B7DBF58();
  v1 = result;
  v27 = *(result + 16);
  if (!v27)
  {

    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v26 = result + 32;
  v3 = MEMORY[0x277D84F90];
  v25 = result;
  while (v2 < *(v1 + 16))
  {
    v4 = *(v26 + 8 * v2);
    v5 = sub_22B7DBE88();
    v6 = *(v5 + 16);
    if (v6)
    {
      v28 = MEMORY[0x277D84F90];
      v7 = v5;
      sub_22B7AB8A4(0, v6, 0);
      v8 = v7;
      v9 = v28;
      v10 = *(v28 + 16);
      v11 = 16 * v10;
      v12 = 32;
      do
      {
        v13 = *(v8 + v12);
        v14 = *(v28 + 24);
        v15 = v10 + 1;
        if (v10 >= v14 >> 1)
        {
          sub_22B7AB8A4((v14 > 1), v10 + 1, 1);
          v8 = v7;
        }

        *(v28 + 16) = v15;
        v16 = v28 + v11;
        *(v16 + 32) = v4;
        *(v16 + 40) = v13;
        v11 += 16;
        v12 += 8;
        v10 = v15;
        --v6;
      }

      while (v6);

      v1 = v25;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    v17 = *(v9 + 16);
    v18 = *(v3 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v3 + 24) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = sub_22B71BFB8(result, v20, 1, v3);
      v3 = result;
      if (*(v9 + 16))
      {
LABEL_22:
        v21 = *(v3 + 16);
        if ((*(v3 + 24) >> 1) - v21 < v17)
        {
          goto LABEL_32;
        }

        memcpy((v3 + 16 * v21 + 32), (v9 + 32), 16 * v17);

        if (v17)
        {
          v22 = *(v3 + 16);
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_33;
          }

          *(v3 + 16) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_31;
    }

LABEL_4:
    if (++v2 == v27)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_22B718550()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  MEMORY[0x231895FF0](v2);
  return sub_22B7DC6B8();
}

uint64_t sub_22B7185AC()
{
  v1 = v0[1];
  MEMORY[0x231895FF0](*v0);
  return MEMORY[0x231895FF0](v1);
}

uint64_t sub_22B7185E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  MEMORY[0x231895FF0](v2);
  return sub_22B7DC6B8();
}

uint64_t sub_22B718640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B718320();
  *a1 = result;
  return result;
}

void sub_22B718694()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    swift_beginAccess();
    v1 = *(v0 + 120);
    if (*(v1 + 16))
    {
      *(v0 + 120) = MEMORY[0x277D84F98];
      swift_beginAccess();
      v2 = *(v0 + 128);
      v3 = v2 + 64;
      v4 = 1 << *(v2 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v2 + 64);
      v7 = (v4 + 63) >> 6;
      v8 = *(v0 + 128);

      v9 = 0;
      v20 = v2;
      while (v6)
      {
LABEL_13:
        v13 = *(v2 + 56);
        v14 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
        v15 = *(v13 + v14);
        v16 = *(v1 + 16);
        if (v16)
        {
          sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
          v17 = swift_allocObject();
          v18 = j__malloc_size(v17);
          v19 = v18 - 32;
          if (v18 < 32)
          {
            v19 = v18 - 25;
          }

          v17[2] = v16;
          v17[3] = (2 * (v19 >> 3)) | 1;
          v21 = sub_22B759F48(&v22, v17 + 4, v16, v1);
          swift_unknownObjectRetain();

          sub_22B705E3C();
          if (v21 != v16)
          {
            goto LABEL_21;
          }

          v2 = v20;
        }

        else
        {
          v10 = *(v13 + v14);
          swift_unknownObjectRetain();
        }

        v6 &= v6 - 1;
        sub_22B718A00();
        v11 = sub_22B7DB8F8();

        [v15 executorStatusReportsUpdated_];
        swift_unknownObjectRelease();
      }

      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v7)
        {

          return;
        }

        v6 = *(v3 + 8 * v12);
        ++v9;
        if (v6)
        {
          v9 = v12;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }
  }
}

uint64_t sub_22B7188C4()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22B718944()
{
  result = qword_27D8CD960;
  if (!qword_27D8CD960)
  {
    sub_22B6FB8C4(&qword_27D8CD968, qword_22B7F9F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD960);
  }

  return result;
}

unint64_t sub_22B7189AC()
{
  result = qword_281420DE0;
  if (!qword_281420DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281420DE0);
  }

  return result;
}

unint64_t sub_22B718A00()
{
  result = qword_28141F008;
  if (!qword_28141F008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F008);
  }

  return result;
}

uint64_t sub_22B718A4C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CD980);
  sub_22B4CFA74(v0, qword_27D8CD980);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B718AC0()
{
  sub_22B7DC668();
  MEMORY[0x231895FF0](0);
  return sub_22B7DC6B8();
}

uint64_t sub_22B718B2C()
{
  sub_22B7DC668();
  MEMORY[0x231895FF0](0);
  return sub_22B7DC6B8();
}

uint64_t sub_22B718B7C(uint64_t a1, uint64_t a2)
{
  sub_22B7DC2E8();
  MEMORY[0x231895140](0x203A68746170, 0xE600000000000000);
  MEMORY[0x231895140](a1, a2);
  MEMORY[0x231895140](0x727265203E2D2D20, 0xEC000000203A726FLL);
  sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
  sub_22B7DC428();
  return 0;
}

uint64_t IMPurgedAttachmentHandler.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id IMPurgedAttachmentHandler.init(batchSize:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBatchSize_];
}

{
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch] = 0;
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents] = v3;
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures] = v3;
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths] = v3;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___IMPurgedAttachmentHandler_batchSize] = a1;
  v5.receiver = v1;
  v5.super_class = IMPurgedAttachmentHandler;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall IMPurgedAttachmentHandler.registerPurgedAttachment(at:)(Swift::String_optional at)
{
  if (at.value._object)
  {
    object = at.value._object;
    countAndFlagsBits = at.value._countAndFlagsBits;

    v4 = sub_22B7DB678();
    v5 = [v4 __im_isLivePhotoBundlePath];

    if ((v5 & 1) != 0 || (v6 = sub_22B7DB678(), v7 = [v6 __im_isLivePhotoBundleComponent], v6, v7))
    {
      v8 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths;
      swift_beginAccess();
      v9 = *(v1 + v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v8) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_22B71BD80(0, *(v9 + 2) + 1, 1, v9);
        *(v1 + v8) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_22B71BD80((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = countAndFlagsBits;
      *(v13 + 5) = object;
      *(v1 + v8) = v9;
      swift_endAccess();
    }

    else
    {
      v14 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
      swift_beginAccess();
      v15 = *(v1 + v14);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v14) = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_22B71BD80(0, *(v15 + 2) + 1, 1, v15);
        *(v1 + v14) = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v21 = v15;
        v22 = *(v15 + 2);
        v23 = sub_22B71BD80((v18 > 1), v17 + 1, 1, v21);
        v17 = v22;
        v15 = v23;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = countAndFlagsBits;
      *(v20 + 5) = object;
      *(v1 + v14) = v15;
      swift_endAccess();
      if (v19 >= *(v1 + OBJC_IVAR___IMPurgedAttachmentHandler_batchSize))
      {
        sub_22B71915C();
      }
    }
  }
}

void sub_22B71915C()
{
  if (qword_27D8CCC10 != -1)
  {
LABEL_146:
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_27D8CD980);
  v2 = v0;
  v0 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v0, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    *(v4 + 4) = *(v2 + OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch);
    *(v4 + 12) = 2048;
    v5 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
    swift_beginAccess();
    *(v4 + 14) = (*(&v2->isa + v5))[2];

    _os_log_impl(&dword_22B4CC000, v0, v3, "Processing batch %ld with %ld attachment paths.", v4, 0x16u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  else
  {
  }

  v6 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
  swift_beginAccess();
  v202 = v2;
  v199 = v6;
  v7 = *(&v2->isa + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 40;
    v201 = MEMORY[0x277D84F90];
    while (2)
    {
      v11 = (v10 + 16 * v9);
      v12 = v9;
      while (1)
      {
        if (v12 >= *(v7 + 16))
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v13 = *v11;
        v204[0] = *(v11 - 1);
        v204[1] = v13;
        sub_22B704B70();

        v0 = v204;
        v14 = sub_22B7DC0C8();
        v15 = v14[2];
        if (v15 > 9)
        {
          v16 = v14[22];
          v0 = v14[23];

          goto LABEL_15;
        }

        if (v15)
        {
          break;
        }

        ++v12;

        v11 += 2;
        if (v8 == v12)
        {
          goto LABEL_22;
        }
      }

      v17 = &v14[2 * v15];
      v16 = v17[2];
      v0 = v17[3];

LABEL_15:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = sub_22B71BD80(0, *(v201 + 2) + 1, 1, v201);
      }

      v19 = *(v201 + 2);
      v18 = *(v201 + 3);
      if (v19 >= v18 >> 1)
      {
        v201 = sub_22B71BD80((v18 > 1), v19 + 1, 1, v201);
      }

      v9 = v12 + 1;
      *(v201 + 2) = v19 + 1;
      v20 = &v201[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v0;
      v10 = v7 + 40;
      if (v8 - 1 != v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v201 = MEMORY[0x277D84F90];
  }

LABEL_22:

  v21 = v201;
  v22 = v2;
  v203 = *(v201 + 2);
  if (v203 != (*(&v2->isa + v199))[2])
  {
    v23 = v2;

    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = *(v201 + 2);

      *(v26 + 12) = 2048;
      *(v26 + 14) = (*(&v202->isa + v199))[2];

      _os_log_impl(&dword_22B4CC000, v24, v25, "Only %ld guids could be found out of %ld attachment paths.", v26, 0x16u);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    else
    {

      v24 = v23;
    }
  }

  if (v203)
  {
    v27 = 0;
    for (i = 0; v203 != i; ++i)
    {
      v29 = v22;

      v0 = sub_22B7DB298();
      v30 = sub_22B7DBC88();

      if (os_log_type_enabled(v0, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v21;
        v34 = v32;
        v204[0] = v32;
        *v31 = 136315394;
        v35 = &v33[v27];
        v36 = *(v35 + 4);
        v37 = *(v35 + 5);

        v38 = sub_22B4CFAAC(v36, v37, v204);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2080;
        v39 = *(&v202->isa + v199);
        if (i >= *(v39 + 16))
        {
          goto LABEL_143;
        }

        v40 = v39 + v27;
        v41 = *(v40 + 32);
        v42 = *(v40 + 40);

        v43 = sub_22B4CFAAC(v41, v42, v204);
        v22 = v202;

        *(v31 + 14) = v43;
        _os_log_impl(&dword_22B4CC000, v0, v30, "guid: %s attachmentPath: %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v34, -1, -1);
        MEMORY[0x231898D60](v31, -1, -1);

        v21 = v201;
      }

      else
      {
      }

      v27 += 16;
    }
  }

  v45 = sub_22B77A2DC(v44);

  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = sub_22B759CB4(*(v45 + 16), 0);
    v48 = sub_22B75A414(v204, v47 + 4, v46, v45);
    sub_22B705E3C();
    if (v48 == v46)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  v47 = MEMORY[0x277D84F90];
LABEL_38:
  v49 = MEMORY[0x277D837D0];

  v50 = sub_22B7DB298();
  v51 = sub_22B7DBC78();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v47[2];

    _os_log_impl(&dword_22B4CC000, v50, v51, "%ld unique guids found.", v52, 0xCu);
    MEMORY[0x231898D60](v52, -1, -1);
  }

  else
  {
  }

  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22B7F9FE0;
  v54 = *MEMORY[0x277D196B0];
  v55 = sub_22B7DB6A8();
  v57 = v56;
  *(v53 + 56) = v49;
  v58 = sub_22B704A5C();
  *(v53 + 64) = v58;
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  v59 = sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  *(v53 + 96) = v59;
  v60 = sub_22B714FD8(&qword_27D8CDA80, &unk_27D8CE9E0, &qword_22B7F99B0);
  *(v53 + 104) = v60;
  *(v53 + 72) = v47;
  v61 = *MEMORY[0x277D196B8];
  v62 = sub_22B7DB6A8();
  *(v53 + 136) = MEMORY[0x277D837D0];
  *(v53 + 144) = v58;
  *(v53 + 112) = v62;
  *(v53 + 120) = v63;
  *(v53 + 176) = v59;
  *(v53 + 184) = v60;
  *(v53 + 152) = v47;
  v192 = v47;
  swift_bridgeObjectRetain_n();
  v64 = sub_22B7DBC58();
  v65 = [objc_opt_self() sharedInstance];
  if (!v65)
  {
LABEL_154:
    __break(1u);
    return;
  }

  v66 = v65;
  v67 = [v65 attachmentsFilteredUsingPredicate:v64 limit:0x7FFFFFFFFFFFFFFFLL];

  if (v67)
  {
    sub_22B4D01A0(0, &qword_27D8CDA88, 0x277D1A9C0);
    v68 = sub_22B7DB918();
    v69 = v68;
    v191 = v68 >> 62;
    v189 = v64;
    if (v68 >> 62)
    {
LABEL_148:
      v70 = sub_22B7DC1C8();
    }

    else
    {
      v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v190 = v67;
    v200 = v69;
    if (v70 != v192[2])
    {

      v71 = sub_22B7DB298();
      v72 = sub_22B7DBC88();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134218240;
        if (v191)
        {
          v74 = sub_22B7DC1C8();
        }

        else
        {
          v74 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v73 + 4) = v74;

        *(v73 + 12) = 2048;
        *(v73 + 14) = v192[2];

        _os_log_impl(&dword_22B4CC000, v71, v72, "Numbers of transfers %ld did not match the expected %ld transfers.", v73, 0x16u);
        MEMORY[0x231898D60](v73, -1, -1);
      }

      else
      {
      }

      v79 = MEMORY[0x277D84F90];
      if (v70)
      {
        v204[0] = MEMORY[0x277D84F90];
        sub_22B7AB8E4(0, v70 & ~(v70 >> 63), 0);
        if (v70 < 0)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v80 = 0;
        v79 = v204[0];
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v81 = MEMORY[0x231895C80](v80, v69);
          }

          else
          {
            v81 = *(v69 + 8 * v80 + 32);
          }

          v82 = v81;
          v83 = [v81 guid];
          if (v83)
          {
            v84 = v83;
            v85 = sub_22B7DB6A8();
            v87 = v86;
          }

          else
          {

            v85 = 0;
            v87 = 0;
          }

          v204[0] = v79;
          v89 = *(v79 + 16);
          v88 = *(v79 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_22B7AB8E4((v88 > 1), v89 + 1, 1);
            v79 = v204[0];
          }

          ++v80;
          *(v79 + 16) = v89 + 1;
          v90 = v79 + 16 * v89;
          *(v90 + 32) = v85;
          *(v90 + 40) = v87;
          v21 = v201;
        }

        while (v70 != v80);
      }

      v197 = sub_22B77A374(v79);

      v0 = MEMORY[0x277D84F90];
      if (v70)
      {
        v204[0] = MEMORY[0x277D84F90];
        sub_22B7AB8E4(0, v70 & ~(v70 >> 63), 0);
        if (v70 < 0)
        {
LABEL_151:
          __break(1u);
LABEL_152:

          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v91 = 0;
        v0 = v204[0];
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x231895C80](v91, v69);
          }

          else
          {
            v92 = *(v69 + 8 * v91 + 32);
          }

          v93 = v92;
          v94 = [v92 originalGUID];
          if (v94)
          {
            v95 = v94;
            v96 = sub_22B7DB6A8();
            v98 = v97;
          }

          else
          {

            v96 = 0;
            v98 = 0;
          }

          v204[0] = v0;
          isa = v0[2].isa;
          v99 = v0[3].isa;
          if (isa >= v99 >> 1)
          {
            sub_22B7AB8E4((v99 > 1), isa + 1, 1);
            v0 = v204[0];
          }

          ++v91;
          v0[2].isa = (isa + 1);
          v101 = &v0[2 * isa];
          v101[4].isa = v96;
          v101[5].isa = v98;
        }

        while (v70 != v91);
      }

      v195 = sub_22B77A374(v0);

      if (v203)
      {
        v69 = 0;
        v193 = v21 + 32;
        v22 = (v197 + 56);
        v103 = v195 + 56;
        *&v102 = 136315394;
        v188 = v102;
        do
        {
          if (v69 >= *(v21 + 2))
          {
            goto LABEL_144;
          }

          v104 = &v193[16 * v69];
          if (*(v197 + 16))
          {
            v106 = *v104;
            v105 = v104[1];
            v107 = *(v197 + 40);
            sub_22B7DC668();
            sub_22B7DC688();

            sub_22B7DB758();
            v108 = sub_22B7DC6B8();
            v109 = -1 << *(v197 + 32);
            v110 = v108 & ~v109;
            if ((*(&v22->isa + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110))
            {
              v111 = ~v109;
              v112 = *(v197 + 48);
              while (1)
              {
                v113 = (v112 + 16 * v110);
                v114 = v113[1];
                if (v114)
                {
                  v115 = *v113 == v106 && v114 == v105;
                  if (v115 || (sub_22B7DC518() & 1) != 0)
                  {
                    break;
                  }
                }

                v110 = (v110 + 1) & v111;
                if (((*(&v22->isa + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
                {
                  goto LABEL_97;
                }
              }

              v0 = sub_22B7DB298();
              v116 = sub_22B7DBC88();

              if (os_log_type_enabled(v0, v116))
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v204[0] = v118;
                *v117 = 136315138;
                v119 = *v104;
                v120 = v104[1];

                v121 = sub_22B4CFAAC(v119, v120, v204);

                *(v117 + 4) = v121;
                v122 = v116;
                v123 = v0;
                v124 = "Matching guid (%s) found in transfers.";
                goto LABEL_81;
              }

              goto LABEL_82;
            }

LABEL_97:
          }

          if (*(v195 + 16))
          {
            v126 = *v104;
            v125 = v104[1];
            v127 = *(v195 + 40);
            sub_22B7DC668();
            sub_22B7DC688();

            sub_22B7DB758();
            v128 = sub_22B7DC6B8();
            v129 = -1 << *(v195 + 32);
            v130 = v128 & ~v129;
            if ((*(v103 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130))
            {
              v131 = ~v129;
              v132 = *(v195 + 48);
              while (1)
              {
                v133 = (v132 + 16 * v130);
                v134 = v133[1];
                if (v134)
                {
                  v135 = *v133 == v126 && v134 == v125;
                  if (v135 || (sub_22B7DC518() & 1) != 0)
                  {
                    break;
                  }
                }

                v130 = (v130 + 1) & v131;
                if (((*(v103 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
                {
                  goto LABEL_110;
                }
              }

              v0 = sub_22B7DB298();
              v136 = sub_22B7DBC88();

              if (os_log_type_enabled(v0, v136))
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v204[0] = v118;
                *v117 = 136315138;
                v137 = *v104;
                v138 = v104[1];

                v139 = sub_22B4CFAAC(v137, v138, v204);

                *(v117 + 4) = v139;
                v122 = v136;
                v123 = v0;
                v124 = "Matching original guid (%s) found in transfers.";
                goto LABEL_81;
              }

              goto LABEL_82;
            }

LABEL_110:
          }

          v21 = v202;
          if (v203 != (*(&v202->isa + v199))[2])
          {
            v21 = v201;

            v0 = sub_22B7DB298();
            v151 = sub_22B7DBC78();

            if (os_log_type_enabled(v0, v151))
            {
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              v204[0] = v118;
              *v117 = 136315138;
              v152 = *v104;
              v153 = v104[1];

              v154 = sub_22B4CFAAC(v152, v153, v204);

              *(v117 + 4) = v154;
              v122 = v151;
              v123 = v0;
              v124 = "No matching guid or original guid found in transfers for guid: %s";
LABEL_81:
              _os_log_impl(&dword_22B4CC000, v123, v122, v124, v117, 0xCu);
              sub_22B4CFB78(v118);
              MEMORY[0x231898D60](v118, -1, -1);
              MEMORY[0x231898D60](v117, -1, -1);
            }

LABEL_82:

            goto LABEL_83;
          }

          v140 = v202;

          v0 = sub_22B7DB298();
          v141 = sub_22B7DBC78();

          if (os_log_type_enabled(v0, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v204[0] = v143;
            *v142 = v188;
            v144 = *v104;
            v145 = v104[1];

            v67 = sub_22B4CFAAC(v144, v145, v204);

            *(v142 + 4) = v67;
            *(v142 + 12) = 2080;
            v146 = *(&v202->isa + v199);
            if (v69 >= *(v146 + 16))
            {
              __break(1u);
              goto LABEL_148;
            }

            v147 = v146 + 16 * v69;
            v148 = *(v147 + 32);
            v149 = *(v147 + 40);

            v150 = sub_22B4CFAAC(v148, v149, v204);

            *(v142 + 14) = v150;
            _os_log_impl(&dword_22B4CC000, v0, v141, "No matching guid or original guid found in transfers for guid: %s attachmentPath: %s", v142, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v143, -1, -1);
            MEMORY[0x231898D60](v142, -1, -1);
          }

          v21 = v201;
LABEL_83:
          ++v69;
        }

        while (v69 != v203);
      }

      v22 = v202;
      v69 = v200;
    }

    v0 = v22;
    sub_22B71A794();
    if (v191)
    {
      v155 = sub_22B7DC1C8();
      if (!v155)
      {
LABEL_136:

        sub_22B71CC10();

        v173 = *(&v22->isa + v199);
        v174 = MEMORY[0x277D84F90];
        *(&v22->isa + v199) = MEMORY[0x277D84F90];

        v175 = OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents;
        swift_beginAccess();
        v176 = *(&v22->isa + v175);
        *(&v22->isa + v175) = v174;

        v177 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures;
        swift_beginAccess();
        v178 = *(&v22->isa + v177);
        *(&v22->isa + v177) = v174;

        v179 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths;
        swift_beginAccess();
        v180 = *(&v22->isa + v179);
        *(&v22->isa + v179) = v174;

        v181 = [v22 delegate];
        if (v181)
        {
          [v181 batchCompletedWithTransfers_];

          swift_unknownObjectRelease();
          v182 = &unk_27D8CD000;
          v183 = v189;
        }

        else
        {

          v183 = v190;
          v182 = &unk_27D8CD000;
        }

        v184 = v182[308];
        v185 = *(&v22->isa + v184);
        v186 = __OFADD__(v185, 1);
        v187 = (v185 + 1);
        if (!v186)
        {
          *(&v22->isa + v184) = v187;
          return;
        }

        __break(1u);
        goto LABEL_150;
      }
    }

    else
    {
      v155 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v155)
      {
        goto LABEL_136;
      }
    }

    v156 = 0;
    v157 = v69 & 0xC000000000000001;
    v194 = v69 & 0xFFFFFFFFFFFFFF8;
    v158 = 0x2786FF000uLL;
    v196 = v69 & 0xC000000000000001;
    v198 = v155;
    while (1)
    {
      if (v157)
      {
        v159 = MEMORY[0x231895C80](v156, v69);
        v160 = v156 + 1;
        if (__OFADD__(v156, 1))
        {
          goto LABEL_142;
        }
      }

      else
      {
        if (v156 >= *(v194 + 16))
        {
          goto LABEL_145;
        }

        v159 = *(v69 + 8 * v156 + 32);
        v160 = v156 + 1;
        if (__OFADD__(v156, 1))
        {
          goto LABEL_142;
        }
      }

      v161 = v159;
      v162 = sub_22B7DB298();
      v163 = sub_22B7DBC78();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v204[0] = v165;
        *v164 = 136315138;
        v166 = [v161 guid];

        if (!v166)
        {
          goto LABEL_153;
        }

        v167 = sub_22B7DB6A8();
        v169 = v168;

        v170 = sub_22B4CFAAC(v167, v169, v204);

        *(v164 + 4) = v170;
        _os_log_impl(&dword_22B4CC000, v162, v163, "updating transfer with guid %s as waiting for accept.", v164, 0xCu);
        sub_22B4CFB78(v165);
        MEMORY[0x231898D60](v165, -1, -1);
        MEMORY[0x231898D60](v164, -1, -1);

        v22 = v202;
        v69 = v200;
        v157 = v196;
        v155 = v198;
        v158 = 0x2786FF000;
      }

      else
      {
      }

      v171 = *(v158 + 2552);
      v172 = [objc_opt_self() sharedInstance];
      if (!v172)
      {
        goto LABEL_152;
      }

      v0 = v172;
      [v172 updateTransferAsWaitingForAccept:v161];

      ++v156;
      if (v160 == v155)
      {
        goto LABEL_136;
      }
    }
  }

  v75 = v64;

  v76 = sub_22B7DB298();
  v77 = sub_22B7DBC98();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_22B4CC000, v76, v77, "Found no transfers!", v78, 2u);
    MEMORY[0x231898D60](v78, -1, -1);
  }
}

uint64_t sub_22B71A794()
{
  v48[6] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths;
  swift_beginAccess();
  result = *(v0 + v1);
  v3 = *(result + 16);
  if (v3)
  {
    v46 = OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents;
    v47 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures;
    v4 = ( + 40);
    v5 = &off_278709000;
    while (1)
    {
      v7 = *(v4 - 1);
      v6 = *v4;

      v8 = sub_22B7DB678();
      v9 = [v8 v5[489]];

      if (v9)
      {
        break;
      }

LABEL_4:
      v4 += 2;
      if (!--v3)
      {

        goto LABEL_34;
      }
    }

    v10 = sub_22B7DB678();
    v11 = [v10 im_livePhotoImagePath];

    if (v11)
    {
      v12 = sub_22B7DB6A8();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = sub_22B7DB678();
    v16 = [v15 im_livePhotoVideoPath];

    if (v16)
    {
      v17 = sub_22B7DB6A8();
      v19 = v18;

      if (!v14)
      {
        if (v19)
        {
          v12 = v17;
LABEL_15:
          v20 = [objc_opt_self() defaultManager];
          v21 = sub_22B7DB678();
          v48[0] = 0;
          v22 = [v20 removeItemAtPath:v21 error:v48];

          if (v22)
          {
            v23 = v48[0];

            swift_beginAccess();
            v24 = *(v0 + v46);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + v46) = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v24 = sub_22B71BD80(0, *(v24 + 2) + 1, 1, v24);
              *(v0 + v46) = v24;
            }

            v27 = *(v24 + 2);
            v26 = *(v24 + 3);
            if (v27 >= v26 >> 1)
            {
              v24 = sub_22B71BD80((v26 > 1), v27 + 1, 1, v24);
            }

            *(v24 + 2) = v27 + 1;
            v28 = &v24[16 * v27];
            *(v28 + 4) = v12;
            *(v28 + 5) = v19;
            *(v0 + v46) = v24;
            swift_endAccess();
            goto LABEL_32;
          }

          v29 = v48[0];

          v30 = sub_22B7DA6F8();

          swift_willThrow();
          swift_beginAccess();
          v31 = *(v0 + v47);

          v32 = v30;
          v33 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v47) = v31;
          if ((v33 & 1) == 0)
          {
            v31 = sub_22B71C0BC(0, *(v31 + 2) + 1, 1, v31);
            *(v0 + v47) = v31;
          }

          v35 = *(v31 + 2);
          v34 = *(v31 + 3);
          if (v35 >= v34 >> 1)
          {
            v31 = sub_22B71C0BC((v34 > 1), v35 + 1, 1, v31);
          }

          *(v31 + 2) = v35 + 1;
          v36 = &v31[24 * v35];
          *(v36 + 4) = v7;
          *(v36 + 5) = v6;
          *(v36 + 6) = v30;
          *(v0 + v47) = v31;
          swift_endAccess();

          v37 = v30;
LABEL_31:

LABEL_32:
          v5 = &off_278709000;
          goto LABEL_4;
        }

LABEL_26:
        sub_22B71CE50();
        v38 = swift_allocError();
        swift_beginAccess();
        v39 = *(v0 + v47);

        v40 = v38;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + v47) = v39;
        if ((v41 & 1) == 0)
        {
          v39 = sub_22B71C0BC(0, *(v39 + 2) + 1, 1, v39);
          *(v0 + v47) = v39;
        }

        v43 = *(v39 + 2);
        v42 = *(v39 + 3);
        if (v43 >= v42 >> 1)
        {
          v39 = sub_22B71C0BC((v42 > 1), v43 + 1, 1, v39);
        }

        *(v39 + 2) = v43 + 1;
        v44 = &v39[24 * v43];
        *(v44 + 4) = v7;
        *(v44 + 5) = v6;
        *(v44 + 6) = v38;
        *(v0 + v47) = v39;
        swift_endAccess();

        v37 = v38;
        goto LABEL_31;
      }
    }

    else if (!v14)
    {
      goto LABEL_26;
    }

    v19 = v14;
    goto LABEL_15;
  }

LABEL_34:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B71AC4C()
{
  v1 = v0;
  v2 = OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents;
  swift_beginAccess();
  v3 = *(*&v0[v2] + 16);
  if (v3)
  {
    if (v3 >= 3)
    {
      v3 = 3;
    }

    v16[0] = *&v0[v2];
    v16[2] = 0;
    v16[3] = (2 * v3) | 1;

    sub_22B6F0AD4(&qword_27D8CDA90, &qword_22B7FA0C8);
    sub_22B714FD8(&qword_27D8CDA98, &qword_27D8CDA90, &qword_22B7FA0C8);
    v4 = sub_22B7DB5F8();
    v6 = v5;

    v16[1] = 0xE100000000000000;
    MEMORY[0x231895140](v4, v6);

    MEMORY[0x231895140](10, 0xE100000000000000);
    v8 = 10;
    v7 = 0xE100000000000000;
  }

  else
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  if (qword_27D8CCC10 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_27D8CD980);
  v10 = v0;

  v11 = sub_22B7DB298();
  v12 = sub_22B7DBC78();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 134218242;
    *(v13 + 4) = *(*&v1[v2] + 16);

    *(v13 + 12) = 2080;
    v15 = sub_22B4CFAAC(v8, v7, v16);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_22B4CC000, v11, v12, "Deleted %ld matching live photo components:%s", v13, 0x16u);
    sub_22B4CFB78(v14);
    MEMORY[0x231898D60](v14, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  else
  {
  }
}

void sub_22B71AEE4()
{
  v1 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];

    sub_22B7AB6B4(0, v3, 0);
    v4 = v23;
    v5 = (v2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v22[0] = 0;
      v22[1] = 0xE000000000000000;

      v9 = v8;
      sub_22B7DC2E8();
      MEMORY[0x231895140](0x203A68746170, 0xE600000000000000);
      MEMORY[0x231895140](v7, v6);
      MEMORY[0x231895140](0x727265203E2D2D20, 0xEC000000203A726FLL);
      sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
      sub_22B7DC428();

      v23 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22B7AB6B4((v10 > 1), v11 + 1, 1);
        v4 = v23;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  v22[0] = v4;
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B714FD8(&qword_28141F2C8, &unk_27D8CE9E0, &qword_22B7F99B0);
  v13 = sub_22B7DB5F8();
  v15 = v14;

  if (qword_27D8CCC10 != -1)
  {
    swift_once();
  }

  v16 = sub_22B7DB2B8();
  sub_22B4CFA74(v16, qword_27D8CD980);

  v17 = sub_22B7DB298();
  v18 = sub_22B7DBC78();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    v21 = sub_22B4CFAAC(v13, v15, v22);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_22B4CC000, v17, v18, "Errors:\n%s", v19, 0xCu);
    sub_22B4CFB78(v20);
    MEMORY[0x231898D60](v20, -1, -1);
    MEMORY[0x231898D60](v19, -1, -1);
  }

  else
  {
  }
}

id IMPurgedAttachmentHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

size_t sub_22B71B35C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B6F0AD4(&qword_27D8CD618, &qword_22B7F95F8);
  v10 = *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22B71B560(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD9F0, &qword_22B7FA008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_22B71B65C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD9F8, &qword_22B7FA010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_22B71B760(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA00, &unk_22B7FA018);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD638, &qword_22B7F9740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71B8F4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_22B6F0AD4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_22B71BA28(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_22B6F0AD4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_22B71BB34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA58, &qword_22B7FA088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22B71BC38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA60, &unk_22B7FA098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CD650, &unk_22B7F9750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71BD80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71BEAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA30, &unk_22B7FA050);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71BFB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD9D8, &qword_22B7F9FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22B71C0BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDAA8, &unk_22B7FA0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71C1DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA68, &qword_22B7FA0A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B71C2E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA38, &qword_22B7FA068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CDA40, &qword_22B7FA070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71C41C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CDA78, &qword_22B7FA0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B71C564(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_22B6F0AD4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_22B71C684(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_22B6F0AD4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22B6F0AD4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22B71C7CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD9E8, &qword_22B7FA000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22B71C900(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B6F0AD4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22B71CADC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B6F0AD4(&qword_27D8CD9E0, &qword_22B7F9FF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22B71CC10()
{
  if (qword_27D8CCC10 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_27D8CD980);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch);

    _os_log_impl(&dword_22B4CC000, v3, v4, "Finished processing batch %ld.", v5, 0xCu);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  v6 = v2;
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths;
    swift_beginAccess();
    v12 = *(&v6->isa + v11);

    v14 = MEMORY[0x2318952A0](v13, MEMORY[0x277D837D0]);
    v16 = v15;

    v17 = sub_22B4CFAAC(v14, v16, &v18);

    *(v9 + 4) = v17;
    _os_log_impl(&dword_22B4CC000, v7, v8, "Ignored %s live photo bundles or bundle components.", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  sub_22B71AC4C();
  sub_22B71AEE4();
}

unint64_t sub_22B71CE50()
{
  result = qword_27D8CDAA0;
  if (!qword_27D8CDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDAA0);
  }

  return result;
}

uint64_t sub_22B71CEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22B71CEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15ProcessingErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s15ProcessingErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22B71D028()
{
  result = qword_27D8CDAC8;
  if (!qword_27D8CDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDAC8);
  }

  return result;
}

uint64_t sub_22B71D07C()
{
  sub_22B7DC668();
  sub_22B7DB758();
  return sub_22B7DC6B8();
}

uint64_t sub_22B71D100()
{
  sub_22B7DC668();
  sub_22B7DB758();
  return sub_22B7DC6B8();
}

uint64_t sub_22B71D15C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B7DC4B8();

  *a2 = v5 != 0;
  return result;
}

unint64_t IMDChatStore.batchOfRecordIDsToDelete(limit:)()
{
  v2 = [v0 recordZoneID];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 record1ZoneID];
    if (v4)
    {
      v5 = v4;
      v6 = IMDChatCopyChatRecordIDsAndGUIDsToDeleteWithLimit();
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
          sub_22B7DB908();
        }
      }

      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v30 = sub_22B7DB2B8();
      sub_22B4CFA74(v30, qword_281422608);
      v31 = sub_22B7DB298();
      v32 = sub_22B7DBC98();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22B4CC000, v31, v32, "Received nil recordIDsByGUIDs from IMDPersistence returning nil for batchOfRecordIDsToDelete for DeletedChatStore.", v33, 2u);
        MEMORY[0x231898D60](v33, -1, -1);
      }

      v29 = sub_22B71E2E4(MEMORY[0x277D84F90]);
      return v29;
    }

    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v19 = sub_22B7DB2B8();
    sub_22B4CFA74(v19, qword_281422608);
    v20 = sub_22B7DB298();
    v21 = sub_22B7DBC98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, v20, v21, "No chat1 record zone ID present!", v22, 2u);
      MEMORY[0x231898D60](v22, -1, -1);
    }

    v23 = [objc_opt_self() sharedInstance];
    if (v23)
    {
      v24 = v23;
      v25 = sub_22B7DB678();
      sub_22B71DB80();
      v26 = swift_allocError();
      v27 = sub_22B7DA6E8();

      v28 = sub_22B7DB678();
      [v24 forceAutoBugCaptureWithSubType:v25 errorPayload:v27 type:v28 context:0];

      v29 = sub_22B71E2E4(MEMORY[0x277D84F90]);
      return v29;
    }
  }

  else
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_281422608);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, v10, "No chat record zone ID present!", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      v14 = sub_22B7DB678();
      sub_22B71DB80();
      v15 = swift_allocError();
      v16 = sub_22B7DA6E8();

      v17 = sub_22B7DB678();
      [v13 forceAutoBugCaptureWithSubType:v14 errorPayload:v16 type:v17 context:0];

      return sub_22B71E2E4(MEMORY[0x277D84F90]);
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22B71D808(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_22B7DC248();
  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = sub_22B4D7EC0(v19);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22B4D1F68(*(v7 + 56) + 32 * v8, v20);
  sub_22B4DA138(v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  sub_22B7DC248();
  if (!*(v7 + 16) || (v10 = sub_22B4D7EC0(v19), (v11 & 1) == 0))
  {

LABEL_11:
    sub_22B4DA138(v19);
    return;
  }

  sub_22B4D1F68(*(v7 + 56) + 32 * v10, v20);
  sub_22B4DA138(v19);
  if (swift_dynamicCast())
  {
    v12 = sub_22B71EB8C(1684632935, 0xE400000000000000, a3, a4);
    sub_22B71EEC0();
    v13 = v12;
    v14 = sub_22B7DBC48();
    v15 = v14;
    if (*(*a1 + 16))
    {
      sub_22B7237AC(v14);
      if (v16)
      {

        return;
      }

      v17 = *a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a1;
    sub_22B768B6C(1684632935, 0xE400000000000000, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v19[0];
  }

  else
  {
  }
}

unint64_t sub_22B71DB80()
{
  result = qword_27D8CDAD0;
  if (!qword_27D8CDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDAD0);
  }

  return result;
}

unint64_t sub_22B71DBD4(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CDBA0, &qword_22B7FA3A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22B6F0AD4(&unk_27D8CF760, &unk_22B7FA3B0);
    v8 = sub_22B7DC488();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22B4D7E58(v10, v6, &unk_27D8CDBA0, &qword_22B7FA3A8);
      v12 = *v6;
      result = sub_22B725570(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
      result = sub_22B71EE58(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71DDAC(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CDB90, &qword_22B7FA398);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22B6F0AD4(&qword_27D8CDB98, &qword_22B7FA3A0);
    v8 = sub_22B7DC488();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22B4D7E58(v10, v6, &qword_27D8CDB90, &qword_22B7FA398);
      v12 = *v6;
      result = sub_22B725570(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
      result = sub_22B71EE58(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71DF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
    v3 = sub_22B7DC488();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4D7E58(v4, &v13, &qword_27D8CDB60, &qword_22B7FA360);
      v5 = v13;
      v6 = v14;
      result = sub_22B723648(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B4D7F04(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E0C8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&qword_27D8CDB88, &qword_22B7FA390);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_22B7235C8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = sub_22B7235C8(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B71E1E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDB80, &qword_22B7FA388);
    v3 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_22B723648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CF770, &qword_22B7FA3F8);
    v3 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_22B7237AC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E3E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&qword_27D8CDB50, &qword_22B7FA350);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_22B725570(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_22B725570(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B71E4F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22B6F0AD4(a2, a3);
    v5 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22B723648(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71E5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDBC0, &qword_22B7FA3C8);
    v3 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B723648(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22B71E700(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&qword_27D8CDBB0, &unk_22B7FD3B0);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22B7235C8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22B7235C8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_22B71E81C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22B6F0AD4(&unk_27D8CF750, &unk_22B7FA378);
  v3 = sub_22B7DC488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22B7235C8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22B7235C8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B71E938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CDB68, &qword_22B7FA368);
    v3 = sub_22B7DC488();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4D7E58(v4, &v15, &unk_27D8CDB70, &qword_22B7FA370);
      v5 = v15;
      v6 = v16;
      result = sub_22B723648(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B71EA90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22B6F0AD4(a2, a3);
    v5 = sub_22B7DC488();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_22B723648(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22B71EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D1A610];
  sub_22B7DB6A8();
  sub_22B704B70();
  v7 = sub_22B7DC0F8();

  if ((v7 & 1) == 0)
  {
    v8 = *MEMORY[0x277D1A620];
    sub_22B7DB6A8();
    v9 = sub_22B7DC0F8();

    if ((v9 & 1) == 0)
    {
      return a4;
    }
  }

  return a3;
}

uint64_t _sSo12IMDChatStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(uint64_t a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_22B71EEC0();
    v8 = MEMORY[0x2318952A0](a1, v7);
    v10 = sub_22B4CFAAC(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing chat tombstones for recordIDs: %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return IMDChatClearPendingDeleteChatsTable();
}

unint64_t sub_22B71EE04()
{
  result = qword_27D8CDB40;
  if (!qword_27D8CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CDB40);
  }

  return result;
}

uint64_t sub_22B71EE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22B71EEC0()
{
  result = qword_28141F2A8;
  if (!qword_28141F2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F2A8);
  }

  return result;
}

unint64_t sub_22B71EF0C()
{
  result = qword_28141F2A0;
  if (!qword_28141F2A0)
  {
    sub_22B71EEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2A0);
  }

  return result;
}

id ScheduledMessageStore.recordZoneID.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result scheduledMessageRecordZoneID];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScheduledMessageStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScheduledMessageStore.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ScheduledMessageStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_22B71F280(uint64_t a1)
{
  v2 = v1;
  if (qword_28141F388 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422650);
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Trying to Load Scheduled Message Records that need CK Sync", v7, 2u);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v8 = [v2 scheduledMessagesBatchFetcherForSyncState_];
  [v8 setBatchSize_];
  v9 = [v8 nextBatch];
  sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
  v10 = sub_22B7DB918();

  v11 = sub_22B796DA8(v10);

  return v11;
}

uint64_t _s12IMDaemonCore21ScheduledMessageStoreC25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0(uint64_t a1)
{
  if (qword_28141F388 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422650);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Trying to Get RecordIDs & GUIDs to Delete", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = [objc_msgSend(objc_opt_self() synchronousDatabase)];
  swift_unknownObjectRelease();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v7 = sub_22B7DB918();

  return v7;
}

void _s12IMDaemonCore21ScheduledMessageStoreC15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(unint64_t a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v7 = sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    v8 = MEMORY[0x2318952A0](a1, v7);
    v10 = sub_22B4CFAAC(v8, v9, &v25);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing message tombstones for recordIDs: %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  if (a1 >> 62)
  {
    v11 = sub_22B7DC1C8();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v25;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x231895C80](v12, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 recordName];
      v17 = sub_22B7DB6A8();
      v19 = v18;

      v25 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22B7AB6B4((v20 > 1), v21 + 1, 1);
        v13 = v25;
      }

      ++v12;
      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }

    while (v11 != v12);
  }

  v23 = [objc_opt_self() synchronousDatabase];
  v24 = sub_22B7DB8F8();

  [v23 deleteTombstonedScheduledMessagesWithRecordIDs_];
  swift_unknownObjectRelease();
}

uint64_t IncomingClientConnectionListener.machServiceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName);
  v2 = *(v0 + OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8);

  return v1;
}

id IncomingClientConnectionListener.init(machServiceName:allowedEntitlements:requestHandlers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v8 = sub_22B7DBD48();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_22B7DBD38();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22B7DB398();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = OBJC_IVAR___IMDIncomingClientConnectionListener_clientConnectionWorkloop;
  v15 = sub_22B7DB678();
  v16 = IMDCreateWorkloop(v15);

  *&v5[v14] = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v18 = sub_22B7DB678();
  v19 = [v17 initWithMachServiceName_];

  sub_22B6F0AD4(&qword_27D8CDC08, &qword_22B7FA430);
  v28 = v19;
  v29 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84FA0];
  v20 = v19;
  sub_22B7DACD8();
  sub_22B7DACE8();
  MEMORY[0x231894670](&type metadata for IncomingClientConnectionListener.State);
  *&v5[OBJC_IVAR___IMDIncomingClientConnectionListener_queue] = sub_22B7DACC8();
  v21 = &v5[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName];
  *v21 = a1;
  *(v21 + 1) = a2;
  *&v5[OBJC_IVAR___IMDIncomingClientConnectionListener_allowedEntitlements] = a3;
  *&v5[OBJC_IVAR___IMDIncomingClientConnectionListener_requestHandlers] = a4;
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_init);
  [v20 setDelegate_];

  return v22;
}

id IncomingClientConnectionListener.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR___IMDIncomingClientConnectionListener_queue];

  sub_22B7DACB8();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id IncomingClientConnectionListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22B71FE84(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B6F0AD4(a1, a2);
  sub_22B7DACB8();
  return v5;
}

uint64_t sub_22B71FED4()
{
  v1 = *(v0 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B7DACB8();
}

uint64_t IncomingClientConnectionListener.supportedServices.setter()
{
  v1 = *(v0 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B7DACB8();
}

void (*sub_22B71FFA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IncomingClientConnectionListener.supportedServices.modify(v2);
  return sub_22B720014;
}

void sub_22B720014(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*IncomingClientConnectionListener.supportedServices.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = *(v1 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7DACB8();
  return sub_22B7200E0;
}

uint64_t sub_22B7200E0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v4 = *a1;
  if (a2)
  {

    sub_22B7DACB8();
  }

  else
  {
    sub_22B7DACB8();
  }
}

void sub_22B720258(void *a1)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422698);
  v3 = a1;
  oslog = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = [v3 processIdentifier];

    _os_log_impl(&dword_22B4CC000, oslog, v4, "Connection interrupted for PID %d", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

uint64_t sub_22B720384(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422698);
  v7 = a1;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&dword_22B4CC000, v8, v9, "Connection invalidated for PID %d", v10, 8u);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v11 = *(a2 + 16);
  v12 = sub_22B7DACB8();
  v13 = *(a3 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  MEMORY[0x28223BE20](v12);
  return sub_22B7DACB8();
}

uint64_t sub_22B720524@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___IMDIncomingClientConnectionListener_queue);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  result = sub_22B7DACB8();
  *a2 = v5;
  return result;
}

uint64_t sub_22B72059C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_22B759CB4(*(v3 + 16), 0);
  v6 = sub_22B75A414(&v7, v5 + 4, v4, v3);

  result = sub_22B705E3C();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22B72065C(uint64_t a1, uint64_t a2)
{

  v4 = sub_22B77A2DC(a2);

  v5 = *(a1 + 16);

  *(a1 + 16) = v4;
  return result;
}

id sub_22B720744(void **a1, void *a2, const char *a3, const char **a4)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_281422698);
  v9 = a2;
  v10 = sub_22B7DB298();
  v11 = sub_22B7DBC78();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B4CFAAC(*&v9[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName], *&v9[OBJC_IVAR___IMDIncomingClientConnectionListener_machServiceName + 8], &v17);
    _os_log_impl(&dword_22B4CC000, v10, v11, a3, v12, 0xCu);
    sub_22B4CFB78(v13);
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  v14 = *a1;
  v15 = *a4;

  return [v14 v15];
}

unint64_t sub_22B7208EC(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_22B7DC1C8();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x231895C80](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_22B7209F0(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_22B7208EC(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22B7DC1C8();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_22B7DC1C8())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x231895C80](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x231895C80](v10, v7);
        v16 = MEMORY[0x231895C80](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_22B702604(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_22B702604(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
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
  return sub_22B7DC1C8();
}

uint64_t sub_22B720C18(uint64_t a1, uint64_t a2)
{
  if (qword_28141F3C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422698);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC78();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = *(a1 + 16);
    sub_22B7DACB8();
    v10 = sub_22B4CFAAC(v16, v17, &v18);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Removing client %s", v7, 0xCu);
    sub_22B4CFB78(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v11 = sub_22B7209F0((a2 + 8), a1);

  v13 = *(a2 + 8);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v15 = *(a2 + 8);
    }

    result = sub_22B7DC1C8();
    v14 = result;
    if (result >= v11)
    {
      return sub_22B6FC070(v11, v14);
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v11)
    {
      return sub_22B6FC070(v11, v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t static IMDFilePurgeabilityMonitor.Constants.fileEventsMask.getter@<X0>(_DWORD *a1@<X8>)
{
  if (qword_28141F0F8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = dword_28141F100;
  return result;
}

id sub_22B720F14()
{
  result = [objc_allocWithZone(IMDFilePurgeabilityMonitor) init];
  qword_28141F118 = result;
  return result;
}

id static IMDFilePurgeabilityMonitor.shared()()
{
  if (qword_28141F110 != -1)
  {
    swift_once();
  }

  v1 = qword_28141F118;

  return v1;
}

id sub_22B721000()
{
  v1 = v0;
  v2 = sub_22B7DBD48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B7DB398();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22B7DBD38();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR___IMDFilePurgeabilityMonitor_purgeabilityQueue;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DBD28();
  sub_22B7DACD8();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  *&v1[v11] = sub_22B7DBD88();
  v17.receiver = v1;
  v17.super_class = IMDFilePurgeabilityMonitor;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  if (qword_28141F1E8 != -1)
  {
    swift_once();
  }

  [v15 addObserver:v14 selector:? name:? object:?];

  return v14;
}

void sub_22B7212B8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v57 = a2;
  v2 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v54 - v4;
  v5 = sub_22B7DA968();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = objc_opt_self();
  v16 = [v15 messagesDomain];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = sub_22B7DB678();
  v19 = [v17 BOOLForKey_];

  if (v19)
  {
    return;
  }

  v20 = [v15 &selRef_laterDate_ + 4];
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v22 = sub_22B7DB678();
  v23 = [v21 BOOLForKey_];

  if (!v23)
  {
    return;
  }

  v24 = [v15 &selRef_laterDate_ + 4];
  if (v24)
  {
    v25 = v24;
    v26 = sub_22B7DB678();
    [v25 doubleForKey_];

    v27 = sub_22B7DB678();
    v28 = IMBagIntValueWithDefault();

    sub_22B7DA8F8();
    sub_22B7DA958();
    if ((v28 * 60) >> 64 == (60 * v28) >> 63)
    {
      v29 = 3600 * v28;
      v30 = (60 * v28 * 60) >> 64;
      v32 = v58;
      v31 = v59;
      if (v30 == v29 >> 63)
      {
        v33 = v29;
        sub_22B7DA898();
        if (v34 > v33)
        {
          v35 = [v15 &selRef_laterDate_ + 4];
          if (v35)
          {
            v36 = v35;
            sub_22B7DA958();
            sub_22B7DA908();
            (*(v32 + 8))(v9, v31);
            v37 = sub_22B7DBAC8();
            v38 = sub_22B7DB678();
            [v36 setValue:v37 forKey:v38];
          }

          v39 = sub_22B7DBA58();
          v40 = v56;
          (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v42 = swift_allocObject();
          v42[2] = 0;
          v42[3] = 0;
          v43 = v55;
          v42[4] = v41;
          v42[5] = v43;
          v42[6] = v57;

          sub_22B77E3D4(0, 0, v40, &unk_22B7FA538, v42);
        }

        v44 = *(v32 + 8);
        v44(v12, v31);
        v44(v14, v31);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v45 = [v15 &selRef_laterDate_ + 4];
  if (v45)
  {
    v46 = v45;
    sub_22B7DA958();
    sub_22B7DA908();
    (*(v58 + 8))(v9, v59);
    v47 = sub_22B7DBAC8();
    v48 = sub_22B7DB678();
    [v46 setValue:v47 forKey:v48];
  }

  v49 = sub_22B7DBA58();
  v50 = v56;
  (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v53 = v55;
  v52[4] = v51;
  v52[5] = v53;
  v52[6] = v57;

  sub_22B77E3D4(0, 0, v50, &unk_22B7FA528, v52);
}

uint64_t sub_22B7218D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22B7218F4, 0, 0);
}

uint64_t sub_22B7218F4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_22B7219E4;
    v5 = v0[6];
    v4 = v0[7];

    return sub_22B721AE0(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B7219E4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B725578, 0, 0);
}

uint64_t sub_22B721AE0(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = sub_22B7DA9A8();
  v3[48] = v4;
  v5 = *(v4 - 8);
  v3[49] = v5;
  v6 = *(v5 + 64) + 15;
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B721BA4, 0, 0);
}

uint64_t sub_22B721BA4()
{
  sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
  v1 = sub_22B72276C();
  *(v0 + 408) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 392);
    v3 = *(v0 + 400);
    v5 = *(v0 + 384);
    v6 = objc_opt_self();
    sub_22B7DA998();
    sub_22B7DA978();
    (*(v4 + 8))(v3, v5);
    v7 = sub_22B7DB678();

    v8 = sub_22B7DB678();
    v9 = sub_22B7DB678();
    v10 = sub_22B7DB678();
    v11 = sub_22B7DB678();
    v12 = sub_22B7DB678();
    v13 = [v6 userNotificationWithIdentifier:v7 title:v8 message:v9 defaultButton:v10 alternateButton:v11 otherButton:v12];

    if (v13)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    *(v0 + 248) = v32;
    *(v0 + 264) = v33;
    if (*(v0 + 272))
    {
      sub_22B4D01A0(0, &qword_27D8CE548, 0x277D192D0);
      if (swift_dynamicCast())
      {
        v18 = *(v0 + 368);
        v31 = *(v0 + 376);
        v19 = *(v0 + 360);
        v20 = *(v0 + 344);
        *(v0 + 416) = v20;
        [v20 setShowInLockScreen_];
        sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B7F93B0;
        *(v0 + 312) = 0x68746150656C6966;
        *(v0 + 320) = 0xE800000000000000;
        v22 = MEMORY[0x277D837D0];
        sub_22B7DC248();
        *(inited + 96) = v22;
        *(inited + 72) = v19;
        *(inited + 80) = v18;

        sub_22B4D7D1C(inited);
        swift_setDeallocating();
        sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
        v23 = sub_22B7DB568();

        [v20 setUserInfo_];

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 352;
        *(v0 + 24) = sub_22B722198;
        v24 = swift_continuation_init();
        *(v0 + 240) = sub_22B6F0AD4(&qword_27D8CE550, &qword_22B7FA548);
        *(v0 + 184) = MEMORY[0x277D85DD0];
        *(v0 + 192) = 1107296256;
        *(v0 + 200) = sub_22B77E9CC;
        *(v0 + 208) = &unk_283F1CE80;
        *(v0 + 216) = v24;
        [v2 addUserNotification:v20 listener:v31 completionHandler:v0 + 184];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    else
    {
      sub_22B4D0D64(v0 + 248, &unk_27D8CCDC0, &qword_22B7F9580);
    }

    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v25 = sub_22B7DB2B8();
    sub_22B4CFA74(v25, qword_2814226B0);
    v15 = sub_22B7DB298();
    v26 = sub_22B7DBC98();
    if (os_log_type_enabled(v15, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B4CC000, v15, v26, "Could not create a user notification for Tap-to-Radar", v27, 2u);
      MEMORY[0x231898D60](v27, -1, -1);
    }
  }

  else
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_2814226B0);
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBC98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B4CC000, v15, v16, "Tried to launch TapToRadarDraft but could not convert IMUserNotificationCenter.sharedInstance() to IMUserNotificationCenter!", v17, 2u);
      MEMORY[0x231898D60](v17, -1, -1);
    }
  }

  v28 = *(v0 + 400);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22B722198()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B722278, 0, 0);
}

uint64_t sub_22B722278()
{
  v22 = v0;
  v1 = *(v0 + 352);

  if (qword_28141F3D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226B0);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBCB8();

  if (!os_log_type_enabled(v4, v5))
  {
    v9 = *(v0 + 408);

    goto LABEL_16;
  }

  v6 = (v0 + 280);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v19 = v8;
  *v7 = 136315138;
  if (!v1)
  {
    *v6 = 0u;
    *(v0 + 296) = 0u;
LABEL_13:
    sub_22B4D0D64(v0 + 280, &unk_27D8CCDC0, &qword_22B7F9580);
    goto LABEL_14;
  }

  if ([v3 identifier])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v10 = v21;
  *v6 = v20;
  *(v0 + 296) = v10;
  if (!*(v0 + 304))
  {
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v12 = 0x800000022B80F0A0;
    v11 = 0xD00000000000001CLL;
    goto LABEL_15;
  }

  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
LABEL_15:
  v13 = *(v0 + 408);
  v14 = *(v0 + 416);
  v15 = sub_22B4CFAAC(v11, v12, &v19);

  *(v7 + 4) = v15;
  _os_log_impl(&dword_22B4CC000, v4, v5, "Finished processing user notification: %s", v7, 0xCu);
  sub_22B4CFB78(v8);
  MEMORY[0x231898D60](v8, -1, -1);
  MEMORY[0x231898D60](v7, -1, -1);

LABEL_16:
  v16 = *(v0 + 400);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B7224FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22B722520, 0, 0);
}

uint64_t sub_22B722520()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_22B722610;
    v5 = v0[6];
    v4 = v0[7];

    return sub_22B721AE0(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B722610()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B72270C, 0, 0);
}

uint64_t sub_22B72270C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B72276C()
{
  if ([swift_getObjCClassFromMetadata() sharedInstance])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B4D0D64(v4, &unk_27D8CCDC0, &qword_22B7F9580);
    return 0;
  }
}

void IMDFilePurgeabilityMonitor.userNotificationDidFinish(_:)(void *a1)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  if (!a1)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v19 = sub_22B7DB2B8();
    sub_22B4CFA74(v19, qword_2814226B0);
    v37 = sub_22B7DB298();
    v20 = sub_22B7DBC98();
    if (!os_log_type_enabled(v37, v20))
    {
      goto LABEL_29;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80EE40, v40);
    _os_log_impl(&dword_22B4CC000, v37, v20, "%s invoked but no notification", v21, 0xCu);
    sub_22B4CFB78(v22);
    MEMORY[0x231898D60](v22, -1, -1);
    MEMORY[0x231898D60](v21, -1, -1);
    goto LABEL_24;
  }

  v37 = a1;
  v7 = [v37 response];
  if (v7 == 3)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v31 = sub_22B7DB2B8();
    sub_22B4CFA74(v31, qword_2814226B0);
    v32 = sub_22B7DB298();
    v33 = sub_22B7DBC98();
    if (!os_log_type_enabled(v32, v33))
    {

      goto LABEL_29;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80EE40, v40);
    _os_log_impl(&dword_22B4CC000, v32, v33, "%s: user cancelled Tap-to-Radar", v34, 0xCu);
    sub_22B4CFB78(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);

LABEL_24:
    return;
  }

  if (v7 == 2)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_2814226B0);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC78();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80EE40, v40);
      _os_log_impl(&dword_22B4CC000, v24, v25, "%s: user asked us to stop showing TTR prompts", v26, 0xCu);
      sub_22B4CFB78(v27);
      MEMORY[0x231898D60](v27, -1, -1);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    v28 = [objc_opt_self() messagesDomain];
    if (v28)
    {
      v29 = v28;
      v30 = sub_22B7DB678();
      [v29 setBool:1 forKey:v30];
    }

    goto LABEL_29;
  }

  if (v7)
  {

    MEMORY[0x2821F9730]();
    return;
  }

  v8 = [v37 userInfo];
  if (!v8)
  {
LABEL_29:
    v36 = v37;

    return;
  }

  v9 = v8;
  v10 = sub_22B7DB588();

  v38 = 0x68746150656C6966;
  v39 = 0xE800000000000000;
  sub_22B7DC248();
  if (*(v10 + 16))
  {
    v11 = v1;
    v12 = sub_22B4D7EC0(v40);
    if (v13)
    {
      sub_22B4D1F68(*(v10 + 56) + 32 * v12, v41);
      sub_22B4DA138(v40);

      if (swift_dynamicCast())
      {
        v14 = v38;
        v15 = v39;
        v16 = sub_22B7DBA58();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = v11;
        v17[5] = v14;
        v17[6] = v15;
        v18 = v11;
        sub_22B722F28(0, 0, v6, &unk_22B7FA4F8, v17);

        return;
      }

      goto LABEL_24;
    }
  }

  sub_22B4DA138(v40);
}

uint64_t sub_22B722E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22B6F0D94;

  return sub_22B724D18(a5, a6);
}

uint64_t sub_22B722F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22B724CA8(a3, v24 - v10);
  v12 = sub_22B7DBA58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B4D0D64(v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B7DB9C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B7DB6F8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22B7231EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28[0] = a4;
  v12 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v28 - v14;
  sub_22B724CA8(a3, v28 - v14);
  v16 = sub_22B7DBA58();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    sub_22B4D0D64(v15, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = sub_22B7DB9C8();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = sub_22B7DB6F8() + 32;

      sub_22B6F0AD4(a6, a7);
      v25 = (v23 | v21);
      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  sub_22B6F0AD4(a6, a7);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

unint64_t sub_22B7235C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22B7DC668();
  MEMORY[0x231895FF0](a1);
  MEMORY[0x231895FF0](a2);
  v6 = sub_22B7DC6B8();

  return sub_22B7238E8(a1, a2, v6);
}

unint64_t sub_22B723648(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22B7DC668();
  sub_22B7DB758();
  v6 = sub_22B7DC6B8();

  return sub_22B723960(a1, a2, v6);
}

uint64_t sub_22B7236C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F0D94;

  return sub_22B722E8C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22B7237AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22B7DBFC8();

  return sub_22B723A18(a1, v5);
}

unint64_t sub_22B7237F0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B7DC668();
  MEMORY[0x231895FF0](a1);
  v4 = sub_22B7DC6B8();
  return sub_22B723AEC(a1, v4);
}

unint64_t sub_22B723858(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B7DB6A8();
  sub_22B7DC668();
  sub_22B7DB758();
  v4 = sub_22B7DC6B8();

  return sub_22B723B58(a1, v4);
}

unint64_t sub_22B7238E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22B723960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22B7DC518())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B723A18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B7DBFD8();

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

unint64_t sub_22B723AEC(uint64_t a1, uint64_t a2)
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

unint64_t sub_22B723B58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B7DB6A8();
      v9 = v8;
      if (v7 == sub_22B7DB6A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_22B7DC518();

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

uint64_t sub_22B723C5C(_DWORD *a1)
{
  if ((*a1 & 0x100) != 0)
  {
    v2 = 0x657461657263;
  }

  else
  {
    if ((*a1 & 0x1200) == 0x1000)
    {
      return 0x6465696669646F6DLL;
    }

    if ((*a1 & 0x200) == 0)
    {
      sub_22B7DC2E8();

      FileEventFlags.description.getter();
      MEMORY[0x231895140]();

      return 0xD000000000000014;
    }

    v2 = 0x65766F6D6572;
  }

  return v2 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
}

uint64_t sub_22B723D3C(uint64_t a1, unint64_t a2)
{
  v35 = a1;
  v3 = sub_22B7DA728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_22B7DA828();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B7DA6D8();
  v34 = *(v17 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);

  v21 = a2;
  sub_22B7DA818();
  sub_22B6F0AD4(&qword_27D8CE558, &qword_22B7FA550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v23 = *MEMORY[0x277CBE898];
  *(inited + 32) = *MEMORY[0x277CBE898];
  v24 = v23;
  sub_22B7177E8(inited);
  swift_setDeallocating();
  sub_22B724C4C(inited + 32);
  sub_22B7DA758();
  v25 = v34;
  (*(v13 + 8))(v16, v12);

  v26 = sub_22B7DA6C8();
  if (v26 == 2)
  {
    if (qword_28141F3D0 != -1)
    {
      swift_once();
    }

    v27 = sub_22B7DB2B8();
    sub_22B4CFA74(v27, qword_2814226B0);

    v28 = sub_22B7DB298();
    v29 = sub_22B7DBC98();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136380675;
      *(v30 + 4) = sub_22B4CFAAC(v35, v21, &v36);
      _os_log_impl(&dword_22B4CC000, v28, v29, "NSURL did not contain isPurgeable despite requesting it for %{private}s", v30, 0xCu);
      sub_22B4CFB78(v31);
      MEMORY[0x231898D60](v31, -1, -1);
      MEMORY[0x231898D60](v30, -1, -1);
    }

    (*(v25 + 8))(v20, v17);
    v32 = 0;
  }

  else
  {
    v32 = v26;
    (*(v25 + 8))(v20, v17);
  }

  return v32 & 1;
}

uint64_t sub_22B72435C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v50[-v12];
  v14 = sub_22B7DA828();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v53 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v50[-v19];
  v56 = [a3 isSticker];
  v21 = [a4 balloonBundleID];
  if (!v21)
  {
    v33 = *MEMORY[0x277D19730];
    sub_22B7DB6A8();
LABEL_12:

    v54 = 0;
    goto LABEL_15;
  }

  v22 = v15;
  v23 = v21;
  v24 = sub_22B7DB6A8();
  v26 = v25;

  v27 = *MEMORY[0x277D19730];
  v28 = sub_22B7DB6A8();
  if (!v26)
  {
    v15 = v22;
    goto LABEL_12;
  }

  if (v24 == v28 && v26 == v29)
  {

    v32 = 256;
  }

  else
  {
    v31 = sub_22B7DC518();

    v32 = 256;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }
  }

  v54 = v32;
  v15 = v22;
LABEL_15:
  v55 = a1;
  sub_22B7DA808();
  v34 = *(v15 + 48);
  if (v34(v13, 1, v14) == 1)
  {
    sub_22B4D0D64(v13, &qword_27D8CFC90, &unk_22B7FE140);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_22B7DA738();
    v37 = sub_22B7DB678();
    v52 = v15;
    v38 = v37;

    v51 = [v38 im_isAudioMessageExtension];
    v59 = sub_22B7DA778();
    v60 = v39;
    v40 = *MEMORY[0x277D19E70];
    v57 = sub_22B7DB6A8();
    v58 = v41;
    sub_22B704B70();
    v42 = sub_22B7DC0E8();

    v15 = v52;
    (*(v52 + 8))(v20, v14);
    if (v42)
    {
      v35 = 0x100000000;
    }

    else
    {
      v35 = 0;
    }

    if (v51)
    {
      v36 = 0x1000000;
    }

    else
    {
      v36 = 0;
    }
  }

  sub_22B7DA808();
  if (v34(v11, 1, v14) != 1)
  {
    v44 = v53;
    (*(v15 + 32))(v53, v11, v14);
    if (sub_22B7DA738() != 0x61506E6967756C70 || v45 != 0xED000064616F6C79)
    {
      v46 = sub_22B7DC518();

      if (v46)
      {
        v43 = 0x10000;
        goto LABEL_35;
      }

      if (sub_22B7DA738() != 0xD000000000000017 || 0x800000022B80F0C0 != v47)
      {
        v48 = sub_22B7DC518();

        if (v48)
        {
          v43 = 0x10000;
        }

        else
        {
          v43 = 0;
        }

        goto LABEL_35;
      }
    }

    v43 = 0x10000;
LABEL_35:
    (*(v15 + 8))(v44, v14);
    return v54 | v56 | v35 | v43 | v36;
  }

  sub_22B4D0D64(v11, &qword_27D8CFC90, &unk_22B7FE140);
  v43 = 0;
  return v54 | v56 | v35 | v43 | v36;
}

void sub_22B72487C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22B7DB678();
    v7 = sub_22B7DB678();
    v8 = sub_22B7DB678();
    sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B7F93B0;
    v10 = MEMORY[0x277D837D0];
    sub_22B7DC248();
    *(inited + 96) = v10;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    sub_22B4D7D1C(inited);
    swift_setDeallocating();
    sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
    v11 = sub_22B7DB568();

    [v5 forceAutoBugCaptureWithSubType:v6 errorPayload:0 type:v7 context:v8 metadata:v11];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B724A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B6F0D94;

  return sub_22B7224FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B724B24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B724B6C(uint64_t a1)
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

  return sub_22B7218D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B724C4C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B724CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B724D18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22B7DAD38();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22B7DAD48();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_22B7DAD88();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_22B7DAD28();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_22B7DAD98();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B724F48, 0, 0);
}

uint64_t sub_22B724F48()
{
  v1 = v0[14];
  v2 = v0[15];
  v18 = v2;
  v3 = v0[13];
  v23 = v3;
  v24 = v1;
  v20 = v0[12];
  v26 = v0[18];
  v27 = v0[11];
  v28 = v0[10];
  v22 = v0[9];
  v29 = v0[8];
  v21 = v0[7];
  v4 = v0[5];
  v19 = v0[4];
  v6 = v0[2];
  v5 = v0[3];
  v25 = v0[6];
  sub_22B7DC2E8();
  MEMORY[0x231895140](0xD00000000000002ELL, 0x800000022B80F170);
  MEMORY[0x231895140](v6, v5);
  MEMORY[0x231895140](0xD000000000000054, 0x800000022B80F1A0);
  (*(v1 + 104))(v2, *MEMORY[0x277D195A8], v3);
  sub_22B6F0AD4(&unk_27D8CECA0, &unk_22B7FB7D0);
  v7 = sub_22B7DAD18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B7F93A0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277D195A0], v7);
  v13(v12 + v9, *MEMORY[0x277D19598], v7);
  sub_22B7DAD78();
  (*(v29 + 104))(v22, *MEMORY[0x277D195D8], v21);
  (*(v4 + 104))(v25, *MEMORY[0x277D195C8], v19);
  sub_22B7DAD08();

  (*(v4 + 8))(v25, v19);
  (*(v29 + 8))(v22, v21);
  (*(v27 + 8))(v20, v28);
  (*(v24 + 8))(v18, v23);
  v14 = *(MEMORY[0x277D195E8] + 4);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_22B7252E4;
  v16 = v0[18];

  return MEMORY[0x282173A08]();
}

uint64_t sub_22B7252E4()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_22B7254B4;
  }

  else
  {
    v3 = sub_22B7253F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B7253F8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B7254B4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_22B72558C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22B7255AC, v1, 0);
}

uint64_t sub_22B7255AC()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  v3 = *(v1 + 184);
  v0[6] = v3;
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_22B725728;
    v8 = v0[4];

    return v12(v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_22B725728(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_22B725840, v3, 0);
}

uint64_t sub_22B725840()
{
  v1 = *(v0 + 64);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    sub_22B7DBED8();
    v14 = *(v0 + 40);
    KeyPath = swift_getKeyPath();
    *(v0 + 72) = KeyPath;
    v5 = swift_allocObject();
    *(v0 + 80) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    *(v5 + 32) = v14;
    *(v5 + 48) = v3;
    v6 = *(MEMORY[0x277D18E48] + 4);

    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    v8 = sub_22B6F0AD4(&qword_27D8CE5F0, &qword_22B7FA640);
    *v7 = v0;
    v7[1] = sub_22B7259F8;

    return MEMORY[0x282172F38](v0 + 16, KeyPath, &unk_22B7FA638, v5, v8);
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 64);

    swift_unknownObjectRelease();
    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22B7259F8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = sub_22B725B8C;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[4];

    v5 = sub_22B725B28;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B725B28()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22B725B8C()
{
  v2 = v0[9];
  v1 = v0[10];

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422680);
  v5 = v3;
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBC98();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Error fetching recent tasks from IMDPersistenceAgent: %@", v9, 0xCu);
    sub_22B4D0D64(v10, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v13 = v0[12];
  v14 = v0[5];

  swift_unknownObjectRelease();
  v15 = v0[1];
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t sub_22B725D48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v7[8] = *a2;
  return MEMORY[0x2822009F8](sub_22B725D78, a3, 0);
}

uint64_t sub_22B725D78()
{
  v1 = v0[5];
  v15 = v0[6];
  v2 = v0[3];
  sub_22B6F0AD4(&qword_27D8CE5F8, &qword_22B7FB6B0);
  v3 = swift_allocObject();
  v0[9] = v3;
  *(v3 + 16) = xmmword_22B7F93B0;
  v4 = *(v2 + 120);
  sub_22B7DBF48();
  v5 = sub_22B7DBE58();

  *(v3 + 32) = v5;
  ObjectType = swift_getObjectType();
  v7 = *(v15 + 8);
  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_22B725F04;
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[3];

  return v14(v12, ObjectType, v10);
}

uint64_t sub_22B725F04(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B72601C, v3, 0);
}

uint64_t sub_22B72601C()
{
  v16 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_22B759C24(*(v1 + 16), 0);
    v4 = sub_22B75A56C(&v15, v3 + 4, v2, v1);
    sub_22B705E3C();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[12] = v3;
  v5 = v0[8];
  ObjectType = swift_getObjectType();
  v7 = *(MEMORY[0x277D18E50] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_22B72614C;
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  v12 = v0[4];
  v13 = MEMORY[0x277D84F90];

  return MEMORY[0x282172F48](v13, v9, v12, v3, v11, ObjectType);
}

uint64_t sub_22B72614C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_22B7262A4, v5, 0);
}

uint64_t sub_22B7262C8(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22B726360;

  return sub_22B72558C(a1);
}

uint64_t sub_22B726360(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_22B726478, v3, 0);
}

uint64_t sub_22B726478()
{
  v21 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v16 = v0[4];
    }

    if (sub_22B7DC1C8())
    {
      goto LABEL_3;
    }

LABEL_17:
    v17 = v0[4];

    v15 = 0;
    goto LABEL_18;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422680);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC78();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_22B4CFAAC(*(v7 + 248), *(v7 + 256), &v20);
    *(v8 + 12) = 2048;
    if (v1 >> 62)
    {
      v12 = v0[4];
      if (v1 < 0)
      {
        v13 = v0[4];
      }

      v10 = sub_22B7DC1C8();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v0[4];
    *(v8 + 14) = v10;

    _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] loaded %ld task(s) to run", v8, 0x16u);
    sub_22B4CFB78(v9);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  else
  {
    v11 = v0[4];
  }

  v15 = sub_22B717B44(v0[4]);

LABEL_18:
  v18 = v0[1];

  return v18(v15);
}

uint64_t sub_22B7266A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22B7266C8, v2, 0);
}

uint64_t sub_22B7266C8()
{
  v1 = v0[3];
  if (v1 > 3)
  {
    switch(v1)
    {
      case 4:
        v17 = 1;
        break;
      case 5:
        v17 = 2;
        break;
      case 6:
        v17 = 3;
        break;
      default:
        goto LABEL_16;
    }

    v18 = v0[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[8] = Strong;
    if (Strong)
    {
      v20 = *(v0[5] + 184);
      ObjectType = swift_getObjectType();
      v22 = *(v20 + 32);
      v27 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      v0[9] = v24;
      *v24 = v0;
      v24[1] = sub_22B726B10;
      v10 = v0[4];
      v11 = v0[5];
      v12 = v17;
      v13 = ObjectType;
      v14 = v20;
      v15 = v27;

      return v15(v11, v12, v10, v13, v14);
    }

    goto LABEL_24;
  }

  if ((v1 - 2) < 2 || v1 == 0)
  {
LABEL_24:
    v25 = v0[1];

    return v25();
  }

  if (v1 == 1)
  {
    v3 = v0[5];
    v4 = swift_unknownObjectWeakLoadStrong();
    v0[6] = v4;
    if (v4)
    {
      v5 = *(v0[5] + 184);
      v6 = swift_getObjectType();
      v7 = *(v5 + 64);
      v26 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_22B726A00;
      v10 = v0[4];
      v11 = v0[5];
      v12 = 1;
      v13 = v6;
      v14 = v5;
      v15 = v26;

      return v15(v11, v12, v10, v13, v14);
    }

    goto LABEL_24;
  }

LABEL_16:
  type metadata accessor for IMPersistentTaskRunResult(0);
  v0[2] = v1;

  return sub_22B7DC548();
}

uint64_t sub_22B726A00()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B726B10()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B726C20()
{
  v0 = sub_22B6F0AD4(&unk_27D8CE580, &unk_22B7FA5D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  sub_22B6F24F4(v4, qword_281420560);
  sub_22B4CFA74(v4, qword_281420560);
  v5 = *MEMORY[0x277D195F0];
  v6 = sub_22B6F0AD4(&qword_27D8CD6F0, &qword_22B7F9848);
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_22B7DADC8();
  return sub_22B7DADB8();
}

uint64_t sub_22B726D90(uint64_t a1)
{
  v2[6] = v1;
  v4 = *(*(sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = sub_22B7DC408();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[14] = v11;
  *v11 = v2;
  v11[1] = sub_22B726F24;

  return sub_22B7262C8(a1);
}

uint64_t sub_22B726F24(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22B72703C, v3, 0);
}

uint64_t sub_22B72703C()
{
  v64 = v0;
  if (*(v0 + 120))
  {
    v1 = *(v0 + 48);
    v2 = v1[31];
    *(v0 + 128) = v2;
    v3 = v1[32];
    *(v0 + 136) = v3;
    v4 = v1[14];
    *(v0 + 144) = v4;
    v5 = v1[24];
    type metadata accessor for IMDPersistentTaskMetricCollector();
    swift_allocObject();
    v6 = v5;

    *(v0 + 152) = sub_22B799DD0(v2, v3, v4, v5);

    if (v4 == 3)
    {
      if (qword_281420558 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 88);
      v10 = sub_22B4CFA74(v9, qword_281420560);
      (*(v8 + 16))(v7, v10, v9);
      sub_22B7DADA8();
      (*(v8 + 8))(v7, v9);
      if (*(v0 + 320) == 1)
      {
        v11 = *(v0 + 80);
        sub_22B7DC5B8();
        v12 = swift_task_alloc();
        *(v0 + 160) = v12;
        *v12 = v0;
        v12[1] = sub_22B7277BC;
        v13 = *(v0 + 80);

        return sub_22B729E90(0x475CA13EDC000000, 85478499, 0, 0, 1);
      }
    }

    v15 = *(*(v0 + 120) + 16);
    *(v0 + 168) = v15;
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        *(v0 + 176) = v16;
        v17 = *(v0 + 120);
        if (v16 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v18 = v17 + (v16 << 6);
        v19 = *(v18 + 48);
        *(v0 + 184) = v19;
        v20 = *(v18 + 56);
        v21 = *(v18 + 64);
        *(v0 + 192) = v21;
        v22 = *(v18 + 72);
        v23 = *(v18 + 80);
        *(v0 + 200) = v23;
        v24 = *(v18 + 88);
        *(v0 + 208) = v24;

        if ((sub_22B7DBAB8() & 1) == 0)
        {
          break;
        }

        v16 = *(v0 + 176) + 1;
        if (v16 == *(v0 + 168))
        {
          v25 = *(v0 + 120);

          v26 = *(v0 + 152);
          goto LABEL_22;
        }
      }

      if (qword_28141F398 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 48);
      v39 = sub_22B7DB2B8();
      *(v0 + 216) = sub_22B4CFA74(v39, qword_281422680);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v40 = sub_22B7DB298();
      v41 = sub_22B7DBCB8();

      if (os_log_type_enabled(v40, v41))
      {
        v61 = v41;
        log = v40;
        v43 = *(v0 + 128);
        v42 = *(v0 + 136);
        v44 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *(v0 + 40) = v60;
        *v44 = 136446978;
        *(v44 + 4) = sub_22B4CFAAC(v43, v42, (v0 + 40));
        *(v44 + 12) = 2048;
        if (v23 >> 62)
        {
          v45 = sub_22B7DC1C8();
        }

        else
        {
          v45 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v44 + 14) = v45;
        *(v44 + 22) = 2080;

        if ((v20 & 1) == 0)
        {
          v46 = sub_22B7DBE48();
          v48 = sub_22B4CFAAC(v46, v47, (v0 + 40));

          *(v44 + 24) = v48;
          *(v44 + 32) = 2080;

          if ((v22 & 1) == 0)
          {
            v53 = [objc_opt_self() nameForReason:v21 inFlag:v19];
            v54 = sub_22B7DB6A8();
            v56 = v55;

            v57 = sub_22B4CFAAC(v54, v56, (v0 + 40));

            *(v44 + 34) = v57;
            _os_log_impl(&dword_22B4CC000, log, v61, "[%{public}s] running %ld task(s) with flag %s and reason %s", v44, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v60, -1, -1);
            MEMORY[0x231898D60](v44, -1, -1);

            goto LABEL_35;
          }

          goto LABEL_43;
        }

        __break(1u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        if ((v20 & 1) == 0)
        {
          if ((v22 & 1) == 0)
          {
LABEL_35:
            sub_22B7DBF98();
            v58 = *(MEMORY[0x277D18E60] + 4);
            v59 = swift_task_alloc();
            *(v0 + 224) = v59;
            *v59 = v0;
            v59[1] = sub_22B727DA8;
            v49 = v23;
            v50 = v19;
            v51 = v21;
            v52 = v24;

            return MEMORY[0x282172F88](v49, v50, v51, v52);
          }

LABEL_44:
          __break(1u);
          return MEMORY[0x282172F88](v49, v50, v51, v52);
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v26 = *(v0 + 152);

LABEL_22:
    *(v0 + 321) = 0;

    return MEMORY[0x2822009F8](sub_22B728794, v26, 0);
  }

  else
  {
    if (qword_28141F398 != -1)
    {
LABEL_39:
      swift_once();
    }

    v27 = *(v0 + 48);
    v28 = sub_22B7DB2B8();
    sub_22B4CFA74(v28, qword_281422680);

    v29 = sub_22B7DB298();
    v30 = sub_22B7DBCB8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 48);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22B4CFAAC(*(v31 + 248), *(v31 + 256), &v63);
      _os_log_impl(&dword_22B4CC000, v29, v30, "[%{public}s] finished", v32, 0xCu);
      sub_22B4CFB78(v33);
      MEMORY[0x231898D60](v33, -1, -1);
      MEMORY[0x231898D60](v32, -1, -1);
    }

    v34 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = *(v0 + 56);

    v37 = *(v0 + 8);

    return v37(1, 0);
  }
}

uint64_t sub_22B7277BC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[6];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_22B72A474;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_22B727968;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B727968()
{
  v7 = *(*(v2 + 120) + 16);
  *(v2 + 168) = v7;
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      *(v2 + 176) = v8;
      v9 = *(v2 + 120);
      if (v8 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v10 = v9 + (v8 << 6);
      v1 = *(v10 + 48);
      *(v2 + 184) = v1;
      v6 = *(v10 + 56);
      v3 = *(v10 + 64);
      *(v2 + 192) = v3;
      v5 = *(v10 + 72);
      v4 = *(v10 + 80);
      *(v2 + 200) = v4;
      v0 = *(v10 + 88);
      *(v2 + 208) = v0;

      if ((sub_22B7DBAB8() & 1) == 0)
      {
        break;
      }

      v8 = *(v2 + 176) + 1;
      if (v8 == *(v2 + 168))
      {
        v11 = *(v2 + 120);

        v12 = *(v2 + 152);
        goto LABEL_8;
      }
    }

    if (qword_28141F398 == -1)
    {
      goto LABEL_12;
    }

LABEL_24:
    swift_once();
LABEL_12:
    v13 = *(v2 + 48);
    v14 = sub_22B7DB2B8();
    *(v2 + 216) = sub_22B4CFA74(v14, qword_281422680);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v15 = sub_22B7DB298();
    v16 = sub_22B7DBCB8();

    if (os_log_type_enabled(v15, v16))
    {
      v37 = v16;
      log = v15;
      v18 = *(v2 + 128);
      v17 = *(v2 + 136);
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *(v2 + 40) = v36;
      *v19 = 136446978;
      *(v19 + 4) = sub_22B4CFAAC(v18, v17, (v2 + 40));
      *(v19 + 12) = 2048;
      if (v4 >> 62)
      {
        v20 = sub_22B7DC1C8();
      }

      else
      {
        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 14) = v20;
      *(v19 + 22) = 2080;

      if ((v6 & 1) == 0)
      {
        v21 = sub_22B7DBE48();
        v23 = sub_22B4CFAAC(v21, v22, (v2 + 40));

        *(v19 + 24) = v23;
        *(v19 + 32) = 2080;

        if ((v5 & 1) == 0)
        {
          v28 = [objc_opt_self() nameForReason:v3 inFlag:v1];
          v29 = sub_22B7DB6A8();
          v31 = v30;

          v32 = sub_22B4CFAAC(v29, v31, (v2 + 40));

          *(v19 + 34) = v32;
          _os_log_impl(&dword_22B4CC000, log, v37, "[%{public}s] running %ld task(s) with flag %s and reason %s", v19, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x231898D60](v36, -1, -1);
          MEMORY[0x231898D60](v19, -1, -1);

          goto LABEL_20;
        }

        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      if ((v6 & 1) == 0)
      {
        if ((v5 & 1) == 0)
        {
LABEL_20:
          sub_22B7DBF98();
          v33 = *(MEMORY[0x277D18E60] + 4);
          v34 = swift_task_alloc();
          *(v2 + 224) = v34;
          *v34 = v2;
          v34[1] = sub_22B727DA8;
          v24 = v4;
          v25 = v1;
          v26 = v3;
          v27 = v0;

          return MEMORY[0x282172F88](v24, v25, v26, v27);
        }

LABEL_29:
        __break(1u);
        return MEMORY[0x282172F88](v24, v25, v26, v27);
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v2 + 152);

LABEL_8:
  *(v2 + 321) = 0;

  return MEMORY[0x2822009F8](sub_22B728794, v12, 0);
}

uint64_t sub_22B727DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 48);

    v6 = sub_22B729A30;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = sub_22B727ED0;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22B727ED0()
{
  v1 = v0[25];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v17 = v0[25];
    }

    v2 = sub_22B7DC1C8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v0[3] = MEMORY[0x277D84F90];
    v4 = sub_22B7AB8C4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v4, v5, v6);
    }

    v7 = 0;
    v3 = v0[3];
    v8 = v1 & 0xC000000000000001;
    v19 = v0[25] + 32;
    do
    {
      if (v8)
      {
        v9 = MEMORY[0x231895C80](v7, v0[25]);
      }

      else
      {
        v9 = *(v19 + 8 * v7);
      }

      v10 = v9;
      v11 = [v9 rowID];

      v0[3] = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22B7AB8C4((v12 > 1), v13 + 1, 1);
        v3 = v0[3];
      }

      ++v7;
      *(v3 + 16) = v13 + 1;
      *(v3 + 8 * v13 + 32) = v11;
    }

    while (v2 != v7);
  }

  v0[30] = v3;
  v14 = v0[19];
  v15 = v0[7];
  sub_22B7DA938();
  v16 = sub_22B7DA968();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v4 = sub_22B72809C;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B72809C()
{
  v1 = v0[19];
  v2 = sub_22B797B38(v0[23], v0[7]);
  if (v2)
  {
    v3 = v2;
    [v2 addItemCount_];
  }

  v4 = v0[19];
  v6 = v0[6];
  v5 = v0[7];
  sub_22B79B2B4(v0[30]);
  sub_22B79B2B4(MEMORY[0x277D84F90]);
  sub_22B4D0D64(v5, &unk_27D8CF790, &qword_22B7F9578);

  return MEMORY[0x2822009F8](sub_22B728170, v6, 0);
}

uint64_t sub_22B728170()
{
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 48);

  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 200);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 32) = v7;
    *v13 = 136446978;
    *(v13 + 4) = sub_22B4CFAAC(v12, v11, (v0 + 32));
    *(v13 + 12) = 2048;
    v14 = *(v0 + 200);
    if (v10 >> 62)
    {
      if (v14 < 0)
      {
        v17 = *(v0 + 200);
      }

      v15 = sub_22B7DC1C8();
      v18 = *(v0 + 200);
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = *(v0 + 208);
    v3 = *(v0 + 184);
    v20 = *(v0 + 192);

    *(v13 + 14) = v15;

    *(v13 + 22) = 2080;
    v21 = sub_22B7DBE48();
    v23 = sub_22B4CFAAC(v21, v22, (v0 + 32));

    *(v13 + 24) = v23;
    *(v13 + 32) = 2080;
    v24 = [objc_opt_self() nameForReason:v20 inFlag:v3];
    v25 = sub_22B7DB6A8();
    v2 = v26;

    v1 = sub_22B4CFAAC(v25, v2, (v0 + 32));

    *(v13 + 34) = v1;
    _os_log_impl(&dword_22B4CC000, v8, v9, "[%{public}s] ran %ld task(s) with flag %s and reason %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  else
  {
    v16 = *(v0 + 200);
    v13 = *(v0 + 208);
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v29 = *(v0 + 176) + 1;
    if (v29 == *(v0 + 168))
    {
      break;
    }

    *(v0 + 176) = v29;
    v27 = *(v0 + 120);
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
LABEL_29:
      swift_once();
LABEL_17:
      v32 = *(v0 + 48);
      v33 = sub_22B7DB2B8();
      *(v0 + 216) = sub_22B4CFA74(v33, qword_281422680);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v34 = sub_22B7DB298();
      v35 = sub_22B7DBCB8();

      if (os_log_type_enabled(v34, v35))
      {
        v56 = v35;
        log = v34;
        v37 = *(v0 + 128);
        v36 = *(v0 + 136);
        v38 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *(v0 + 40) = v55;
        *v38 = 136446978;
        *(v38 + 4) = sub_22B4CFAAC(v37, v36, (v0 + 40));
        *(v38 + 12) = 2048;
        if (v1 >> 62)
        {
          v39 = sub_22B7DC1C8();
        }

        else
        {
          v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v38 + 14) = v39;
        *(v38 + 22) = 2080;

        if ((v3 & 1) == 0)
        {
          v40 = sub_22B7DBE48();
          v42 = sub_22B4CFAAC(v40, v41, (v0 + 40));

          *(v38 + 24) = v42;
          *(v38 + 32) = 2080;

          if ((v2 & 1) == 0)
          {
            v47 = [objc_opt_self() nameForReason:v7 inFlag:v9];
            v48 = sub_22B7DB6A8();
            v50 = v49;

            v51 = sub_22B4CFAAC(v48, v50, (v0 + 40));

            *(v38 + 34) = v51;
            _os_log_impl(&dword_22B4CC000, log, v56, "[%{public}s] running %ld task(s) with flag %s and reason %s", v38, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v55, -1, -1);
            MEMORY[0x231898D60](v38, -1, -1);

LABEL_25:
            sub_22B7DBF98();
            v52 = *(MEMORY[0x277D18E60] + 4);
            v53 = swift_task_alloc();
            *(v0 + 224) = v53;
            *v53 = v0;
            v53[1] = sub_22B727DA8;
            v43 = v1;
            v44 = v9;
            v45 = v7;
            v46 = v13;

            return MEMORY[0x282172F88](v43, v44, v45, v46);
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          return MEMORY[0x282172F88](v43, v44, v45, v46);
        }

        __break(1u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        if ((v3 & 1) == 0)
        {
          if ((v2 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v28 = v27 + (v29 << 6);
    v9 = *(v28 + 48);
    *(v0 + 184) = v9;
    LOBYTE(v3) = *(v28 + 56);
    v7 = *(v28 + 64);
    *(v0 + 192) = v7;
    LOBYTE(v2) = *(v28 + 72);
    v1 = *(v28 + 80);
    *(v0 + 200) = v1;
    v13 = *(v28 + 88);
    *(v0 + 208) = v13;

    if ((sub_22B7DBAB8() & 1) == 0)
    {
      if (qword_28141F398 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  v30 = *(v0 + 120);

  v31 = *(v0 + 152);
  *(v0 + 321) = 0;

  return MEMORY[0x2822009F8](sub_22B728794, v31, 0);
}