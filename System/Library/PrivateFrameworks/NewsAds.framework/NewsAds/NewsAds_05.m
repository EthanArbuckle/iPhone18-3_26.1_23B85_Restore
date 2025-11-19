void *sub_1D76CCF70()
{
  v1 = v0;
  sub_1D76CDA24(0, &qword_1EE0AECD8, sub_1D76AE438);
  v2 = *v0;
  v3 = sub_1D7704710();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1D76CD0C8()
{
  v1 = v0;
  sub_1D76CDA24(0, &qword_1EC9BDAF0, sub_1D76A3F14);
  v2 = *v0;
  v3 = sub_1D7704710();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1D76CD220()
{
  v1 = v0;
  v2 = *v0;
  sub_1D76CDA24(0, &qword_1EE0AECD8, sub_1D76AE438);
  result = sub_1D7704720();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_32:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_1D7704AD0();
    if (!(v15 >> 6))
    {
      v17 = 1;
      v16 = v15;
      goto LABEL_19;
    }

    if (v15 >> 6 == 1)
    {
      v16 = v15 & 0x3F;
      v17 = 2;
LABEL_19:
      MEMORY[0x1DA6FF8B0](v17);
      goto LABEL_21;
    }

    v16 = 0;
LABEL_21:
    MEMORY[0x1DA6FF8B0](v16);
    result = sub_1D7704AF0();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v20);
        if (v24 != -1)
        {
          v11 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

    v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v4 + 48) + v11) = v15;
    ++*(v4 + 16);
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      v1 = v0;
      goto LABEL_32;
    }

    v14 = *(v2 + 56 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v8 = (v14 - 1) & v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D76CD490()
{
  v1 = v0;
  v2 = *v0;
  sub_1D76CDA24(0, &qword_1EC9BDAF0, sub_1D76A3F14);
  result = sub_1D7704720();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7704AD0();
      MEMORY[0x1DA6FF8B0](v15);
      result = sub_1D7704AF0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1D76CD6CC()
{
  result = qword_1EC9BDAE0;
  if (!qword_1EC9BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAE0);
  }

  return result;
}

unint64_t sub_1D76CD724()
{
  result = qword_1EC9BDAE8;
  if (!qword_1EC9BDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDAE8);
  }

  return result;
}

unint64_t sub_1D76CD77C()
{
  result = qword_1EE0AFAA8;
  if (!qword_1EE0AFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFAA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdPolicyContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AdPolicyContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D76CD92C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1D76CD958(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

void sub_1D76CDA24(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7704730();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1D76CDAA4(__int128 *a1, const void *a2, char *a3)
{
  v5 = a1[7];
  v118 = a1[6];
  v119 = v5;
  v120 = a1[8];
  v6 = a1[3];
  v114 = a1[2];
  v115 = v6;
  v7 = a1[5];
  v116 = a1[4];
  v117 = v7;
  v8 = a1[1];
  v112 = *a1;
  v113 = v8;
  memcpy(__dst, a2, 0x1A1uLL);
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  [a3 setBackgroundColor_];

  v11 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_topSeparator];
  v12 = [v9 separatorColor];
  [v11 setBackgroundColor_];

  v13 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_bottomSeparator];
  v14 = [v9 separatorColor];
  [v13 setBackgroundColor_];

  v15 = sub_1D7704230();
  [a3 setAccessibilityIdentifier_];

  v16 = sub_1D769B214(__dst);
  if (!v16)
  {
    v105 = v13;
    v109 = v3;
    v27 = nullsub_1(__dst);
    [a3 setHidden_];
    v28 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator];
    v29 = *(v27 + 224);
    v30 = *(v27 + 232);
    v31 = *(v27 + 240);
    v32 = *(v27 + 248);
    v123.origin.x = v29;
    v123.origin.y = v30;
    v123.size.width = v31;
    v123.size.height = v32;
    Width = CGRectGetWidth(v123);
    v34 = &selRef_redColor;
    if ((v115 & 0x8000000000000000) != 0)
    {
      v35 = v116 | *(&v115 + 1) | *(&v116 + 1);
      v36 = v115 & 0xFFFFFFFFFFFFFFF7;
      if ((v115 & 0xFFFFFFFFFFFFFFF7) != 0x8000000000000000 || v35)
      {
        if (v36 != 0x8000000000000010 || v35)
        {
          if (v35)
          {
            v53 = 0;
          }

          else
          {
            v53 = v36 == 0x8000000000000020;
          }

          if (v53)
          {
            v34 = &selRef_greenColor;
          }
        }

        else
        {
          v34 = &selRef_orangeColor;
        }
      }

      else
      {
        v34 = &selRef_darkGrayColor;
      }
    }

    v97 = *(&v116 + 1);
    v98 = v116;
    v99 = *(&v115 + 1);
    v100 = v115;
    v107 = v11;
    v54 = [v9 *v34];
    v55 = [v28 layer];
    [v55 setCornerRadius_];

    v103 = v28;
    [v28 setBackgroundColor_];

    sub_1D76CF398(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v56 = swift_allocObject();
    v57 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifier];
    *(v56 + 16) = xmmword_1D770FA80;
    *(v56 + 32) = v57;
    v58 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifier];
    v59 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status];
    *(v56 + 40) = v58;
    *(v56 + 48) = v59;
    v60 = v56 & 0xC000000000000001;
    v61 = v57;
    v101 = v58;
    v102 = v59;
    if ((v56 & 0xC000000000000001) != 0)
    {
      goto LABEL_41;
    }

    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    for (i = v61; ; i = MEMORY[0x1DA6FF530](0, v56))
    {
      v63 = i;
      [i setNumberOfLines_];

      if (v60)
      {
        v64 = MEMORY[0x1DA6FF530](1, v56);
      }

      else
      {
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_40;
        }

        v64 = *(v56 + 40);
      }

      v65 = v64;
      [v64 setNumberOfLines_];

      if (v60)
      {
        v66 = MEMORY[0x1DA6FF530](2, v56);
LABEL_38:
        v67 = v66;
        [v66 setNumberOfLines_];

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v68 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_placementIdentifierLabel];
        v95 = v68;
        v69 = sub_1D76BEBC8();
        [v68 setAttributedText_];

        v70 = sub_1D76BEE10();
        v94 = v61;
        [v61 setAttributedText_];

        v71 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_contentIdentifierLabel];
        v96 = v71;
        v72 = sub_1D76BEBC8();
        [v71 setAttributedText_];

        v73 = sub_1D76BEE10();

        [v101 setAttributedText_];

        v74 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusLabel];
        v75 = sub_1D76BEBC8();
        [v74 setAttributedText_];

        *&v110 = v100;
        *(&v110 + 1) = v99;
        *&v111 = v98;
        *(&v111 + 1) = v97;
        JournalEntryStatus.shortDescription.getter();
        v76 = sub_1D76BEE10();

        [v102 setAttributedText_];

        v77 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton];
        [v77 setImage:0 forState:0];
        v78 = sub_1D76BEFFC(0x7465642077656956, 0xEC000000736C6961, 0);
        [v77 setAttributedTitle:v78 forState:0];

        v79 = sub_1D76BEFFC(0x7465642077656956, 0xEC000000736C6961, 1);
        [v77 setAttributedTitle:v79 forState:1];

        v80 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_reportIssueButton];
        v81 = sub_1D76BEFFC(0x692074726F706552, 0xEC00000065757373, 0);
        [v80 setAttributedTitle:v81 forState:0];

        v82 = sub_1D76BEFFC(0x692074726F706552, 0xEC00000065757373, 1);
        [v80 setAttributedTitle:v82 forState:1];

        [a3 setFrame_];
        [v95 setFrame_];
        [v94 setFrame_];
        [v96 setFrame_];
        [v101 setFrame_];
        [v74 setFrame_];
        [v102 setFrame_];
        [v103 setFrame_];
        [v77 setFrame_];
        [*&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_buttonSeparator] setFrame_];
        [v80 setFrame_];
        [v107 setFrame_];
        [v105 setFrame_];

        v83 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v84 = swift_allocObject();
        v85 = v116;
        *(v84 + 104) = v117;
        v86 = v119;
        *(v84 + 120) = v118;
        *(v84 + 136) = v86;
        *(v84 + 152) = v120;
        v87 = v112;
        *(v84 + 40) = v113;
        v88 = v115;
        *(v84 + 56) = v114;
        *(v84 + 72) = v88;
        *(v84 + 88) = v85;
        *(v84 + 16) = v109;
        *(v84 + 24) = v87;
        *(v84 + 168) = v83;

        sub_1D766D644(&v112, &v110);

        v89 = swift_allocObject();
        v90 = v116;
        *(v89 + 104) = v117;
        v91 = v119;
        *(v89 + 120) = v118;
        *(v89 + 136) = v91;
        *(v89 + 152) = v120;
        v92 = v112;
        *(v89 + 40) = v113;
        v93 = v115;
        *(v89 + 56) = v114;
        *(v89 + 72) = v93;
        *(v89 + 88) = v90;
        *(v89 + 16) = v109;
        *(v89 + 24) = v92;

        sub_1D766D644(&v112, &v110);
LABEL_39:
      }

      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v66 = *(v56 + 48);
        goto LABEL_38;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }
  }

  if (v16 == 1)
  {
    v104 = v13;
    v106 = v11;
    v108 = v3;
    v17 = nullsub_1(__dst);
    [a3 setHidden_];
    v18 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_statusIndicator];
    v19 = *(v17 + 32);
    v20 = *(v17 + 40);
    v21 = *(v17 + 48);
    v22 = *(v17 + 56);
    v122.origin.x = v19;
    v122.origin.y = v20;
    v122.size.width = v21;
    v122.size.height = v22;
    v23 = CGRectGetWidth(v122);
    v24 = &selRef_redColor;
    if ((v115 & 0x8000000000000000) != 0)
    {
      v25 = v116 | *(&v115 + 1) | *(&v116 + 1);
      v26 = v115 & 0xFFFFFFFFFFFFFFF7;
      if ((v115 & 0xFFFFFFFFFFFFFFF7) != 0x8000000000000000 || v25)
      {
        if (v26 != 0x8000000000000010 || v25)
        {
          if (v25)
          {
            v38 = 0;
          }

          else
          {
            v38 = v26 == 0x8000000000000020;
          }

          if (v38)
          {
            v24 = &selRef_greenColor;
          }
        }

        else
        {
          v24 = &selRef_orangeColor;
        }
      }

      else
      {
        v24 = &selRef_darkGrayColor;
      }
    }

    v39 = [v9 *v24];
    v40 = [v18 layer];
    [v40 setCornerRadius_];

    [v18 setBackgroundColor_];
    v41 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_status];
    [v41 setNumberOfLines_];
    [a3 setFrame_];
    [v41 setFrame_];
    [v18 setFrame_];
    v42 = *&a3[OBJC_IVAR____TtC7NewsAds23DebugJournalSummaryView_moreDetailsButton];
    [v42 setFrame_];
    [v106 setFrame_];
    [v104 setFrame_];
    v110 = v115;
    v111 = v116;
    JournalEntryStatus.shortDescription.getter();
    v43 = sub_1D76BEE10();

    [v41 setAttributedText_];

    v44 = sub_1D7704230();
    v45 = [objc_opt_self() systemImageNamed_];

    [v42 setImage:v45 forState:0];
    v46 = sub_1D7704230();
    [v42 setTitle_];

    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    v49 = v116;
    *(v48 + 104) = v117;
    v50 = v119;
    *(v48 + 120) = v118;
    *(v48 + 136) = v50;
    *(v48 + 152) = v120;
    v51 = v112;
    *(v48 + 40) = v113;
    v52 = v115;
    *(v48 + 56) = v114;
    *(v48 + 72) = v52;
    *(v48 + 88) = v49;
    *(v48 + 16) = v108;
    *(v48 + 24) = v51;
    *(v48 + 168) = v47;

    sub_1D766D644(&v112, &v110);
    goto LABEL_39;
  }

  return [a3 setHidden_];
}

uint64_t sub_1D76CE804(uint64_t a1, __int128 *a2)
{
  v34 = sub_1D7703F90();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v5);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703F20();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D76CF280(0, &qword_1EC9BDAF8, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v32 - v15;
  v17 = MEMORY[0x1E69D8750];
  sub_1D76CF280(0, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], v12);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v32 - v20;
  v22 = *(a1 + 56);
  v32[2] = *(a1 + 64);
  v32[1] = v22;
  v32[0] = swift_getObjectType();
  sub_1D76CF280(0, &qword_1EC9BDB00, v17, MEMORY[0x1E69D8790]);
  sub_1D7704050();
  if (qword_1EC9BCAA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D7703EF0();
  v24 = __swift_project_value_buffer(v23, qword_1EC9BD428);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v16, v24, v23);
  (*(v25 + 56))(v16, 0, 1, v23);
  v26 = a2[7];
  v41 = a2[6];
  v42 = v26;
  v43 = a2[8];
  v27 = a2[3];
  v37 = a2[2];
  v38 = v27;
  v28 = a2[5];
  v39 = a2[4];
  v40 = v28;
  v29 = *a2;
  v36 = a2[1];
  v35 = v29;
  sub_1D76E9760();
  (*(v8 + 104))(v11, *MEMORY[0x1E69D79D0], v7);
  sub_1D7703FC0();
  v30 = sub_1D7703FD0();
  (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
  (*(v4 + 104))(v33, *MEMORY[0x1E69D7FB8], v34);
  *(&v36 + 1) = &type metadata for Tracker;
  *&v37 = sub_1D76CF2E4();
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  sub_1D7703F80();
  swift_allocObject();
  sub_1D7703F70();
  sub_1D7703F30();
  sub_1D76CF338(v21, &unk_1EC9BE2F0, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D76CF280);
}

uint64_t sub_1D76CED90(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v35 = a2[6];
  v36 = v3;
  v37 = a2[8];
  v4 = a2[3];
  v31 = a2[2];
  v32 = v4;
  v5 = a2[5];
  v33 = a2[4];
  v34 = v5;
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  v7 = sub_1D7703F90();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0B07F0 != -1)
  {
    swift_once();
  }

  v44 = v35;
  v45 = v36;
  v46 = v37;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v38 = v29;
  v39 = v30;
  nullsub_1(&v38);
  v23 = v44;
  v24 = v45;
  v25 = v46;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  v22 = v43;
  v17 = v38;
  v18 = v39;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7FB8], v7);
  v15 = &type metadata for Tracker;
  v16 = sub_1D76CF2E4();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_getObjectType();
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_1D7703F80();
  swift_allocObject();
  sub_1D766D644(a2, v14);
  sub_1D7703F70();
  sub_1D7703F30();
  v14[6] = v23;
  v14[7] = v24;
  v14[8] = v25;
  v14[2] = v19;
  v14[3] = v20;
  v14[4] = v21;
  v14[5] = v22;
  v14[0] = v17;
  v14[1] = v18;
  sub_1D76CF338(v14, &qword_1EE0B03A8, &type metadata for DebugJournal, MEMORY[0x1E69E6720], sub_1D76CF398);
}

uint64_t sub_1D76CF0F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D76CF158(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t objectdestroy_3Tm()
{

  sub_1D76CF158(*(v0 + 72));

  return swift_deallocObject();
}

void sub_1D76CF280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D76CF2E4()
{
  result = qword_1EC9BDB08;
  if (!qword_1EC9BDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB08);
  }

  return result;
}

uint64_t sub_1D76CF338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D76CF398(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t NativeAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10 = *(v1 + 72);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 104);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D76C73A0(v9, v8, &qword_1EE0B0468);
}

uint64_t NativeAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = v2;
  v11 = *(v1 + 176);
  v3 = v11;
  v4 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D7690F3C(v8, v7);
}

uint64_t NativeAdContext.leadingGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = v3;
  v11 = *(v1 + 248);
  v4 = v11;
  v8[0] = *(v1 + 184);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088);
}

uint64_t NativeAdContext.trailingGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 304);
  v9 = *(v1 + 288);
  v10 = v2;
  v11 = *(v1 + 320);
  v3 = v11;
  v4 = *(v1 + 272);
  v8[0] = *(v1 + 256);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D76C73A0(v8, v7, &qword_1EE0B0088);
}

uint64_t NativeAdContext.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  *a1 = *(v1 + 328);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t NativeAdContext.sectionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 360);
  *a1 = *(v1 + 352);
  a1[1] = v2;
}

uint64_t NativeAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[26];
  v9 = v1[25];
  v10 = v2;
  v11 = v1[27];
  v3 = v11;
  v4 = v1[24];
  v8[0] = v1[23];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D76C73A0(v8, &v7, &qword_1EE0B0300);
}

uint64_t NativeAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[29];
  v7[0] = v1[28];
  v7[1] = v2;
  v4 = v1[31];
  v8 = v1[30];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D76C73A0(v7, &v6, &qword_1EE0B02E8);
}

uint64_t NativeAdContext.init(provider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v7, &type metadata for UserAdData, v8);
  v130 = v39;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  AdContextDataProviding.data<A>(for:)(&type metadata for FeedGroupAdData, v9, &type metadata for FeedGroupAdData, v10);
  v125 = v101;
  v126 = v102;
  v127 = v103;
  v128 = v104;
  v124 = v100;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v96[1] = 0;
  v96[0] = 0;
  v97 = 0;
  (*(v12 + 16))(v98, &type metadata for FeedGroupAdData, v96, &type metadata for FeedGroupAdData, v11, v12);
  v37 = v39;
  v120 = v98[1];
  v121 = v98[2];
  v122 = v98[3];
  v123 = v99;
  v119 = v98[0];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v92 = xmmword_1D770C6E0;
  v93 = 0;
  (*(v14 + 16))(v94, &type metadata for FeedGroupAdData, &v92, &type metadata for FeedGroupAdData, v13, v14);
  v115 = v94[1];
  v116 = v94[2];
  v117 = v94[3];
  v118 = v95;
  v114 = v94[0];
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v15, &type metadata for PlacementAdData, v16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v17, &type metadata for FeedAdData, v18);
  *(&v129[2] + 7) = v88;
  *(&v129[3] + 7) = v89;
  *(&v129[4] + 7) = v90;
  *(&v129[5] + 7) = v91;
  *(v129 + 7) = v86;
  *(&v129[1] + 7) = v87;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v19, &type metadata for IssueAdData, v20);
  LOBYTE(v8) = v39;
  v21 = v39;
  v36 = v40;
  v34 = *v41;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v22, &type metadata for SectionAdData, v23);
  __dst = a2;
  v24 = v39;
  v35 = v40;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ArticleAdData, v25, &type metadata for ArticleAdData, v26);
  v110 = v82;
  v111 = v83;
  v112 = v84;
  v113 = v85;
  v109 = v81;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ChannelAdData, v27, &type metadata for ChannelAdData, v28);
  v105 = v77;
  v106 = v78;
  v107 = v79;
  v108 = v80;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v29, &type metadata for ReferralAdData, v30);
  v32 = v76;
  __src[0] = v39;
  *&__src[8] = v130;
  __src[16] = v39;
  *&__src[49] = v129[2];
  *&__src[65] = v129[3];
  *&__src[81] = v129[4];
  *&__src[17] = v129[0];
  *&__src[33] = v129[1];
  *&__src[96] = *(&v129[4] + 15);
  *&__src[112] = v124;
  *&__src[160] = v127;
  *&__src[144] = v126;
  *&__src[128] = v125;
  *&__src[184] = v119;
  *&__src[176] = v128;
  *&__src[248] = v123;
  *&__src[232] = v122;
  *&__src[216] = v121;
  *&__src[200] = v120;
  *&__src[304] = v117;
  *&__src[288] = v116;
  *&__src[256] = v114;
  *&__src[272] = v115;
  *&__src[320] = v118;
  *&__src[328] = v39;
  *&__src[336] = v40;
  *&__src[344] = *v41;
  *&__src[352] = v39;
  *&__src[360] = v40;
  *&__src[416] = v112;
  *&__src[400] = v111;
  *&__src[368] = v109;
  *&__src[384] = v110;
  *&__src[496] = v108;
  *&__src[480] = v107;
  *&__src[464] = v106;
  *&__src[432] = v113;
  *&__src[448] = v105;
  __src[512] = v76;
  memcpy(__dst, __src, 0x201uLL);
  sub_1D76D01B4(__src, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v39) = v37;
  v40 = v130;
  v41[0] = v8;
  v43 = v129[2];
  v44 = v129[3];
  *v45 = v129[4];
  *&v41[1] = v129[0];
  v42 = v129[1];
  *&v45[15] = *(&v129[4] + 15);
  v46 = v124;
  v48 = v126;
  v49 = v127;
  v47 = v125;
  v52 = v120;
  v53 = v121;
  v54 = v122;
  v50 = v128;
  v55 = v123;
  v51 = v119;
  v58 = v116;
  v59 = v117;
  v56 = v114;
  v57 = v115;
  v60 = v118;
  v61 = v21;
  v62 = v36;
  v63 = v34;
  v64 = v24;
  v65 = v35;
  v68 = v111;
  v69 = v112;
  v66 = v109;
  v67 = v110;
  v73 = v107;
  v74 = v108;
  v71 = v105;
  v72 = v106;
  v70 = v113;
  v75 = v32;
  return sub_1D76D01EC(&v39);
}

unint64_t sub_1D76D021C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x44656C6369747261;
    v7 = 0x446C656E6E616863;
    if (a1 != 10)
    {
      v7 = 0x6C61727265666572;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x7461446575737369;
    if (a1 != 7)
    {
      v9 = 0x446E6F6974636573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x61746144707061;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6174614472657375;
    if (a1 != 1)
    {
      v4 = 0x6E656D6563616C70;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D76D03E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76D31BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76D0414(uint64_t a1)
{
  v2 = sub_1D76D0D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76D0450(uint64_t a1)
{
  v2 = sub_1D76D0D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NativeAdContext.encode(to:)(void *a1)
{
  sub_1D76D1B90(0, &qword_1EC9BDB10, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - v6;
  LODWORD(v39) = *v1;
  v38 = *(v1 + 1);
  v37 = v1[16];
  v8 = *(v1 + 72);
  v90 = *(v1 + 56);
  v91 = v8;
  v92 = *(v1 + 88);
  v93 = *(v1 + 13);
  v9 = *(v1 + 40);
  v88 = *(v1 + 24);
  v89 = v9;
  v10 = *(v1 + 7);
  v11 = *(v1 + 8);
  v12 = *(v1 + 9);
  v13 = *(v1 + 10);
  v98 = *(v1 + 22);
  v97 = v13;
  v96 = v12;
  v94 = v10;
  v95 = v11;
  v103 = *(v1 + 31);
  v102 = *(v1 + 232);
  v101 = *(v1 + 216);
  v100 = *(v1 + 200);
  v99 = *(v1 + 184);
  v14 = *(v1 + 17);
  v104 = *(v1 + 16);
  v15 = *(v1 + 18);
  v16 = *(v1 + 19);
  v17 = *(v1 + 41);
  v108 = *(v1 + 40);
  v107 = v16;
  v106 = v15;
  v105 = v14;
  v36 = *(v1 + 42);
  v35 = *(v1 + 172);
  v18 = *(v1 + 45);
  *&v33 = *(v1 + 44);
  *(&v33 + 1) = v18;
  v34 = v17;
  v19 = *(v1 + 24);
  v109 = *(v1 + 23);
  v20 = *(v1 + 28);
  v113 = *(v1 + 27);
  v21 = *(v1 + 25);
  v112 = *(v1 + 26);
  v111 = v21;
  v110 = v19;
  v22 = *(v1 + 29);
  v23 = *(v1 + 30);
  v117 = *(v1 + 31);
  v116 = v23;
  v115 = v22;
  v114 = v20;
  v24 = v1[512];
  v25 = a1[3];
  v26 = a1;
  v28 = v27;
  __swift_project_boxed_opaque_existential_1(v26, v25);
  sub_1D76D0D9C();
  sub_1D7704B10();
  LOBYTE(v82) = v39;
  LOBYTE(v79[0]) = 0;
  sub_1D7669D40();
  v29 = v118;
  sub_1D7704A00();
  if (v29)
  {
    return (*(v4 + 8))(v7, v28);
  }

  v30 = v37;
  LODWORD(v118) = v24;
  *&v82 = v38;
  LOBYTE(v79[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  LOBYTE(v82) = v30;
  LOBYTE(v79[0]) = 2;
  sub_1D76794CC();
  sub_1D7704A00();
  v84 = v90;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v82 = v88;
  v83 = v89;
  v81 = 3;
  sub_1D76C73A0(&v88, v79, &qword_1EE0B0468);
  sub_1D766CFCC();
  sub_1D77049B0();
  v79[2] = v84;
  v79[3] = v85;
  v79[4] = v86;
  v80 = v87;
  v79[0] = v82;
  v79[1] = v83;
  sub_1D76939B0(v79, &qword_1EE0B0468);
  v76 = v96;
  v77 = v97;
  v78 = v98;
  v74 = v94;
  v75 = v95;
  v73 = 4;
  sub_1D7690F3C(&v94, &v50);
  sub_1D7692260();
  sub_1D7704A00();
  v71[2] = v76;
  v71[3] = v77;
  v72 = v78;
  v71[0] = v74;
  v71[1] = v75;
  sub_1D769179C(v71);
  v68 = v101;
  v69 = v102;
  v70 = v103;
  v66 = v99;
  v67 = v100;
  v65 = 5;
  sub_1D76C73A0(&v99, &v50, &qword_1EE0B0088);
  sub_1D77049B0();
  v63[2] = v68;
  v63[3] = v69;
  v64 = v70;
  v63[0] = v66;
  v63[1] = v67;
  v39 = v7;
  sub_1D76939B0(v63, &qword_1EE0B0088);
  v60 = v106;
  v61 = v107;
  v62 = v108;
  v58 = v104;
  v59 = v105;
  v57 = 6;
  sub_1D76C73A0(&v104, &v50, &qword_1EE0B0088);
  sub_1D77049B0();
  v55[2] = v60;
  v55[3] = v61;
  v56 = v62;
  v55[0] = v58;
  v55[1] = v59;
  sub_1D76939B0(v55, &qword_1EE0B0088);
  *&v50 = v34;
  *(&v50 + 1) = v36;
  LOWORD(v51) = v35;
  LOBYTE(v48[0]) = 7;
  sub_1D76922B4();

  sub_1D77049B0();

  v50 = v33;
  LOBYTE(v48[0]) = 8;
  sub_1D7692308();

  sub_1D77049B0();

  v52 = v111;
  v53 = v112;
  v54 = v113;
  v50 = v109;
  v51 = v110;
  v49 = 9;
  sub_1D76C73A0(&v109, v48, &qword_1EE0B0300);
  sub_1D768E278();
  sub_1D77049B0();
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[0] = v50;
  v48[1] = v51;
  sub_1D76939B0(v48, &qword_1EE0B0300);
  v44 = v114;
  v45 = v115;
  v46 = v116;
  v47 = v117;
  v43 = 10;
  sub_1D76C73A0(&v114, v42, &qword_1EE0B02E8);
  sub_1D769220C();
  sub_1D77049B0();
  v42[0] = v44;
  v42[1] = v45;
  v42[2] = v46;
  v42[3] = v47;
  sub_1D76939B0(v42, &qword_1EE0B02E8);
  v41 = v118;
  v40 = 11;
  sub_1D768A434();
  sub_1D77049B0();
  return (*(v4 + 8))(v39, v28);
}

unint64_t sub_1D76D0D9C()
{
  result = qword_1EC9BDB18;
  if (!qword_1EC9BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB18);
  }

  return result;
}

uint64_t NativeAdContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76D1B90(0, &qword_1EC9BDB20, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[3];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D76D0D9C();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v131);
  }

  v12 = v7;
  v29[0] = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v13 = v30;
  v29[0] = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v28 = v30;
  v29[0] = 2;
  sub_1D7679440();
  sub_1D7704970();
  v14 = v30;
  v96 = 3;
  sub_1D766CDD0();
  sub_1D7704920();
  v27 = v14;
  *&v129[39] = v99;
  *&v129[55] = v100;
  *&v129[71] = v101;
  *&v129[87] = v102;
  *&v129[7] = v97;
  *&v129[23] = v98;
  v90 = 4;
  v15 = sub_1D7692D98();
  sub_1D7704970();
  v125 = v92;
  v126 = v93;
  v127 = v94;
  v128 = v95;
  v124 = v91;
  v84 = 5;
  v26 = v15;
  sub_1D7704920();
  v25 = v12;
  v120 = v86;
  v121 = v87;
  v122 = v88;
  v123 = v89;
  v119 = v85;
  v78 = 6;
  sub_1D7704920();
  v115 = v80;
  v116 = v81;
  v117 = v82;
  v118 = v83;
  v114 = v79;
  v29[0] = 7;
  sub_1D7692DEC();
  sub_1D7704920();
  v23 = a2;
  v16 = v30;
  v26 = v31;
  v24 = *v32;
  v29[0] = 8;
  sub_1D7692E40();
  sub_1D7704920();
  v17 = v30;
  v25 = v31;
  v72 = 9;
  sub_1D768E224();
  v21 = v10;
  v22 = v6;
  sub_1D7704920();
  v108 = v74;
  v109 = v75;
  v110 = v76;
  v111 = v77;
  v107 = v73;
  v67 = 10;
  sub_1D7692D44();
  sub_1D7704920();
  v103 = v68;
  v104 = v69;
  v105 = v70;
  v106 = v71;
  v65 = 11;
  sub_1D768AAE4();
  sub_1D7704920();
  (*(v12 + 8))(v21, v22);
  LODWORD(v22) = v66;
  v29[0] = v13;
  *&v29[1] = v130[0];
  *&v29[4] = *(v130 + 3);
  *&v29[8] = v28;
  v29[16] = v27;
  *&v29[49] = *&v129[32];
  *&v29[65] = *&v129[48];
  *&v29[81] = *&v129[64];
  *&v29[17] = *v129;
  *&v29[33] = *&v129[16];
  *&v29[128] = v125;
  *&v29[144] = v126;
  *&v29[160] = v127;
  *&v29[96] = *&v129[79];
  *&v29[112] = v124;
  *&v29[200] = v120;
  *&v29[216] = v121;
  *&v29[232] = v122;
  *&v29[176] = v128;
  *&v29[248] = v123;
  *&v29[184] = v119;
  *&v29[304] = v117;
  *&v29[288] = v116;
  *&v29[256] = v114;
  *&v29[272] = v115;
  *&v29[320] = v118;
  *&v29[328] = v16;
  v18 = v25;
  *&v29[336] = v26;
  *&v29[344] = v24;
  *&v29[346] = v112;
  *&v29[350] = v113;
  *&v29[352] = v17;
  *&v29[360] = v25;
  *&v29[416] = v110;
  *&v29[400] = v109;
  *&v29[368] = v107;
  *&v29[384] = v108;
  *&v29[496] = v106;
  *&v29[480] = v105;
  *&v29[464] = v104;
  *&v29[432] = v111;
  *&v29[448] = v103;
  v29[512] = v66;
  memcpy(v23, v29, 0x201uLL);
  sub_1D76D01B4(v29, &v30);
  __swift_destroy_boxed_opaque_existential_1(v131);
  LOBYTE(v30) = v13;
  *(&v30 + 1) = v130[0];
  HIDWORD(v30) = *(v130 + 3);
  v31 = v28;
  v32[0] = v27;
  v34 = *&v129[32];
  v35 = *&v129[48];
  *v36 = *&v129[64];
  *&v32[1] = *v129;
  v33 = *&v129[16];
  *&v36[47] = v125;
  *&v36[63] = v126;
  *&v36[79] = v127;
  *&v36[15] = *&v129[79];
  *&v36[31] = v124;
  v39 = v120;
  v40 = v121;
  v41 = v122;
  v37 = v128;
  v42 = v123;
  v38 = v119;
  v45 = v116;
  v46 = v117;
  v43 = v114;
  v44 = v115;
  v47 = v118;
  v48 = v16;
  v49 = v26;
  v50 = v24;
  v51 = v112;
  v52 = v113;
  v53 = v17;
  v54 = v18;
  v57 = v109;
  v58 = v110;
  v55 = v107;
  v56 = v108;
  v62 = v105;
  v63 = v106;
  v60 = v103;
  v61 = v104;
  v59 = v111;
  v64 = v22;
  return sub_1D76D01EC(&v30);
}

void sub_1D76D1B90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76D0D9C();
    v7 = a3(a1, &type metadata for NativeAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id NativeAdContext.newsSupplementalContext.getter()
{
  v1 = sub_1D77038A0();
  v47 = *(v1 - 8);
  v48 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v46 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v45 = v43 - v6;
  v7 = *v0;
  v49 = v0[16];
  v50 = v7;
  v8 = *(v0 + 72);
  v85 = *(v0 + 56);
  v86 = v8;
  v87 = *(v0 + 88);
  v9 = *(v0 + 13);
  v52 = *(v0 + 14);
  v88 = v9;
  v10 = *(v0 + 40);
  v83 = *(v0 + 24);
  v84 = v10;
  v11 = *(v0 + 15);
  v12 = *(v0 + 16);
  v13 = *(v0 + 17);
  v14 = *(v0 + 18);
  v54 = *(v0 + 19);
  v16 = *(v0 + 21);
  v15 = *(v0 + 22);
  v17 = *(v0 + 184);
  v93 = *(v0 + 31);
  v18 = *(v0 + 232);
  v91 = *(v0 + 216);
  v92 = v18;
  v19 = *(v0 + 200);
  v89 = v17;
  v90 = v19;
  v20 = *(v0 + 41);
  v98 = *(v0 + 40);
  v21 = *(v0 + 19);
  v96 = *(v0 + 18);
  v97 = v21;
  v22 = *(v0 + 17);
  v94 = *(v0 + 16);
  v95 = v22;
  v23 = *(v0 + 42);
  v44 = *(v0 + 172);
  v24 = *(v0 + 45);
  v43[1] = *(v0 + 44);
  v43[2] = v20;
  v59 = v24;
  v25 = *(v0 + 23);
  v26 = *(v0 + 24);
  v28 = *(v0 + 27);
  v27 = *(v0 + 28);
  v29 = *(v0 + 25);
  v102 = *(v0 + 26);
  v103 = v28;
  v100 = v26;
  v101 = v29;
  v99 = v25;
  v30 = *(v0 + 29);
  v31 = *(v0 + 31);
  v106 = *(v0 + 30);
  v107 = v31;
  v104 = v27;
  v105 = v30;
  v60 = v0[512];
  v32 = objc_allocWithZone(sub_1D7703D00());
  v56 = v16;

  v55 = v15;

  v58 = v11;

  v57 = v12;

  v53 = v13;

  v51 = v14;

  sub_1D76C73A0(&v89, v81, &qword_1EE0B0088);
  sub_1D76C73A0(&v94, v81, &qword_1EE0B0088);

  sub_1D76C73A0(&v99, v81, &qword_1EE0B0300);
  sub_1D76C73A0(&v104, v81, &qword_1EE0B02E8);
  v33 = [v32 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  v77 = v85;
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v75 = v83;
  v76 = v84;
  sub_1D76C73A0(&v83, v81, &qword_1EE0B0468);
  sub_1D768078C(&v75);
  v81[2] = v77;
  v81[3] = v78;
  v81[4] = v79;
  v82 = v80;
  v81[0] = v75;
  v81[1] = v76;
  sub_1D76939B0(v81, &qword_1EE0B0468);
  if (v23)
  {

    sub_1D7703AD0();
    v34 = v48;
    v35 = *(v47 + 104);
    v36 = *MEMORY[0x1E69C5F50];
    v37 = *MEMORY[0x1E69C5F58];
    v38 = v44;
    if (v44)
    {
      v39 = v36;
    }

    else
    {
      v39 = v37;
    }

    v35(v45, v39, v48);
    sub_1D7703B80();
    if ((v38 & 0x100) != 0)
    {
      v40 = v36;
    }

    else
    {
      v40 = v37;
    }

    v35(v46, v40, v34);
    sub_1D7703BE0();
  }

  sub_1D7703A50();

  sub_1D7703A80();

  sub_1D7703A90();

  sub_1D77039C0();
  v41 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  [v41 initWithInteger_];
  sub_1D7703AC0();

  v77 = v91;
  v78 = v92;
  *&v79 = v93;
  v75 = v89;
  v76 = v90;
  sub_1D76B98D8(&v75);
  v71[2] = v77;
  v71[3] = v78;
  v72 = v79;
  v71[0] = v75;
  v71[1] = v76;
  sub_1D76939B0(v71, &qword_1EE0B0088);
  v77 = v96;
  v78 = v97;
  *&v79 = v98;
  v75 = v94;
  v76 = v95;
  sub_1D76B99C0(&v75);
  v73[2] = v77;
  v73[3] = v78;
  v74 = v79;
  v73[0] = v75;
  v73[1] = v76;
  sub_1D76939B0(v73, &qword_1EE0B0088);
  if (v59 && *(&v83 + 1))
  {
    if ((BYTE8(v84) & 1) != 0 || v84 >= 1)
    {
    }

    sub_1D7703C10();
  }

  v67 = v101;
  v68 = v102;
  v69 = v103;
  v65 = v99;
  v66 = v100;
  v61 = v104;
  v62 = v105;
  v63 = v106;
  v64 = v107;
  sub_1D76B9740(&v65, &v61);
  v70[0] = v61;
  v70[1] = v62;
  v70[2] = v63;
  v70[3] = v64;
  sub_1D76939B0(v70, &qword_1EE0B02E8);
  v77 = v67;
  v78 = v68;
  v79 = v69;
  v75 = v65;
  v76 = v66;
  sub_1D76939B0(&v75, &qword_1EE0B0300);
  if (v60 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  return v33;
}

uint64_t NativeAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v0 + 432);
  v8 = *(v0 + 384);
  v14[0] = *(v0 + 368);
  v14[1] = v8;
  v9 = *(v0 + 400);
  v14[3] = *(v0 + 416);
  v15 = v7;
  v14[2] = v9;
  if (!*(&v14[0] + 1))
  {
    return 0;
  }

  v12[1] = *&v14[0];
  if (!*(&v15 + 1) && *(v6 + 16))
  {
  }

  sub_1D76C73A0(v14, v13, &qword_1EE0B0300);

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v5, v1);
  sub_1D7703780();

  v10 = sub_1D7703770();
  sub_1D76939B0(v14, &qword_1EE0B0300);
  return v10;
}

uint64_t NativeAdContext.additionalPromotableContentDepictions.getter()
{
  v71 = sub_1D7702FD0();
  v1 = *(v71 - 8);
  v3 = MEMORY[0x1EEE9AC00](v71, v2);
  v68 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v66 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v64 = (&v55 - v9);
  v70 = sub_1D7702FA0();
  v10 = *(v70 - 8);
  v12 = MEMORY[0x1EEE9AC00](v70, v11);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v65 = (&v55 - v16);
  MEMORY[0x1EEE9AC00](v15, v17);
  v63 = (&v55 - v18);
  v19 = v0[1];
  v20 = v0[22];
  v21 = v0[24];
  v22 = v0[33];
  v23 = v0[40];
  v69 = v19;
  if (v21)
  {
    v24 = v0[31];
    v25 = *(v24 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v55 = v22;
      v56 = v23;
      v57 = v20;
      v77 = MEMORY[0x1E69E7CC0];
      sub_1D77047F0();
      v62 = sub_1D7703780();
      v27 = (v24 + 32);
      v58 = v10;
      v61 = (v10 + 8);
      v59 = v1;
      v60 = (v1 + 8);
      for (i = v25 - 1; ; --i)
      {
        v29 = *v27;
        v30 = v27[1];
        v31 = v27[2];
        *&v76[9] = *(v27 + 41);
        v75 = v30;
        *v76 = v31;
        v74 = v29;
        sub_1D76ABB5C(&v74, v73);

        v32 = v63;
        sub_1D7702F90();
        sub_1D7702F70();
        (*v61)(v32, v70);
        if (*&v76[8] || *(v19 + 16))
        {
        }

        else
        {
        }

        v33 = v64;
        sub_1D7702FC0();
        sub_1D7702FB0();
        (*v60)(v33, v71);

        sub_1D7703770();
        sub_1D76ABBB8(&v74);
        sub_1D77047C0();
        sub_1D7704800();
        sub_1D7704810();
        sub_1D77047D0();
        if (!i)
        {
          break;
        }

        v27 += 4;
        v19 = v69;
      }

      v26 = v77;
      v19 = v69;
      v1 = v59;
      v10 = v58;
      v20 = v57;
      v23 = v56;
      v22 = v55;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v61 = v26;
  if (v22)
  {
    v34 = *(v23 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v57 = v20;
      v77 = MEMORY[0x1E69E7CC0];
      sub_1D77047F0();
      v64 = sub_1D7703780();
      v36 = (v23 + 32);
      v58 = v10;
      v63 = (v10 + 8);
      v59 = v1;
      v62 = (v1 + 8);
      for (j = v34 - 1; ; --j)
      {
        v38 = *v36;
        v39 = v36[1];
        v40 = v36[2];
        *&v76[9] = *(v36 + 41);
        v75 = v39;
        *v76 = v40;
        v74 = v38;

        sub_1D76ABB5C(&v74, v73);
        v41 = v65;
        sub_1D7702F90();
        sub_1D7702F70();
        (*v63)(v41, v70);
        if (*&v76[8] || *(v19 + 16))
        {
        }

        else
        {
        }

        v42 = v66;
        sub_1D7702FC0();
        sub_1D7702FB0();
        (*v62)(v42, v71);

        sub_1D7703770();
        sub_1D76ABBB8(&v74);
        sub_1D77047C0();
        sub_1D7704800();
        sub_1D7704810();
        sub_1D77047D0();
        if (!j)
        {
          break;
        }

        v36 += 4;
        v19 = v69;
      }

      v35 = v77;
      v19 = v69;
      v26 = v61;
      v1 = v59;
      v10 = v58;
      v20 = v57;
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v43 = *(v20 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  if (v43)
  {
    v63 = v35;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1D77047F0();
    v66 = sub_1D7703780();
    v45 = (v20 + 32);
    v65 = (v10 + 8);
    v64 = (v1 + 8);
    for (k = v43 - 1; ; --k)
    {
      v47 = *v45;
      v48 = v45[1];
      v49 = v45[2];
      *&v76[9] = *(v45 + 41);
      v75 = v48;
      *v76 = v49;
      v74 = v47;

      sub_1D76ABB5C(&v74, v73);
      v50 = v67;
      sub_1D7702F90();
      sub_1D7702F70();
      (*v65)(v50, v70);
      if (*&v76[8] || *(v19 + 16))
      {
      }

      else
      {
      }

      v51 = v68;
      sub_1D7702FC0();
      sub_1D7702FB0();
      (*v64)(v51, v71);

      sub_1D7703770();
      sub_1D76ABBB8(&v74);
      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      if (!k)
      {
        break;
      }

      v45 += 4;
      v19 = v69;
    }

    v44 = v77;
    v26 = v61;
    v35 = v63;
  }

  v72 = v26;
  sub_1D768AF40(v35);
  sub_1D768AF40(v44);
  v52 = v72;
  if (v72 >> 62)
  {
    sub_1D76ABC0C();

    v53 = sub_1D7704870();
  }

  else
  {

    sub_1D7704A40();
    sub_1D76ABC0C();
    v53 = v52;
  }

  return v53;
}

uint64_t sub_1D76D2E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 513))
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

uint64_t sub_1D76D2E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 512) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 513) = 1;
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

    *(result + 513) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NativeAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NativeAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D76D30B8()
{
  result = qword_1EC9BDB28;
  if (!qword_1EC9BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB28);
  }

  return result;
}

unint64_t sub_1D76D3110()
{
  result = qword_1EC9BDB30;
  if (!qword_1EC9BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB30);
  }

  return result;
}

unint64_t sub_1D76D3168()
{
  result = qword_1EC9BDB38;
  if (!qword_1EC9BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDB38);
  }

  return result;
}

uint64_t sub_1D76D31BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7716420 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7716440 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D76D35A8()
{
  sub_1D76DBC48(0, &qword_1EC9BDB58, MEMORY[0x1E69D6E30]);
  v254 = v0;
  v262 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v253 = &v215 - v2;
  v3 = MEMORY[0x1E69D6E30];
  sub_1D7675B68(0, &qword_1EC9BDB60, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6E30]);
  v239 = v4;
  v238 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v240 = &v215 - v6;
  sub_1D7675B68(0, &qword_1EC9BDB68, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, v3);
  v237 = v7;
  v235 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v236 = &v215 - v9;
  sub_1D7675B68(0, &qword_1EC9BDB70, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, v3);
  v233 = v10;
  v232 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v234 = &v215 - v12;
  v13 = MEMORY[0x1E69E6530];
  v14 = MEMORY[0x1E69D6F28];
  v15 = MEMORY[0x1E69D6E30];
  sub_1D76681C4(0, &qword_1EC9BDB78, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6E30]);
  v261 = v16;
  v266 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v260 = &v215 - v18;
  v19 = MEMORY[0x1E69D6E48];
  sub_1D76681C4(0, &qword_1EC9BDB80, v13, v14, MEMORY[0x1E69D6E48]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v231 = &v215 - v22;
  sub_1D7675B68(0, &qword_1EC9BDB88, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, v3);
  *&v230 = v23;
  v228 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v229 = &v215 - v25;
  sub_1D76681C4(0, &qword_1EC9BDB90, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v15);
  v258 = v26;
  v263 = *(v26 - 1);
  MEMORY[0x1EEE9AC00](v26, v27);
  v250 = &v215 - v28;
  sub_1D7675B68(0, &qword_1EC9BDB98, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, v3);
  v247 = v29;
  v255 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v246 = &v215 - v31;
  v32 = MEMORY[0x1E69E6448];
  v33 = MEMORY[0x1E69D6F10];
  sub_1D76681C4(0, &qword_1EC9BDBA0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], v15);
  v248 = v34;
  v267 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v225 = &v215 - v36;
  sub_1D76681C4(0, &qword_1EC9BDBA8, v32, v33, v19);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v256 = &v215 - v39;
  sub_1D76681C4(0, &qword_1EC9BDBB0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], v15);
  v272 = v40;
  v269 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v259 = &v215 - v42;
  v43 = sub_1D7703120();
  v281 = *(v43 - 8);
  v282 = v43;
  MEMORY[0x1EEE9AC00](v43, v44);
  v264 = &v215 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7675B68(0, &qword_1EC9BDBB8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, v3);
  v277 = v46;
  v268 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v47);
  v276 = &v215 - v48;
  v49 = sub_1D7703040();
  __swift_allocate_value_buffer(v49, qword_1EC9BDB40);
  v242 = __swift_project_value_buffer(v49, qword_1EC9BDB40);
  sub_1D76DBCE4(0, &qword_1EC9BDBC0, MEMORY[0x1E69D6E78]);
  v51 = v50;
  v52 = *(sub_1D7703200() - 8);
  v53 = *(v52 + 72);
  v54 = *(v52 + 80);
  v55 = (v54 + 32) & ~v54;
  v56 = swift_allocObject();
  v227 = xmmword_1D77091E0;
  *(v56 + 16) = xmmword_1D77091E0;
  v241 = v56;
  v265 = v56 + v55;
  sub_1D76DBCE4(0, &qword_1EC9BDBC8, sub_1D76DBD38);
  v58 = v57;
  v59 = swift_allocObject();
  v286 = xmmword_1D7708FE0;
  *(v59 + 16) = xmmword_1D7708FE0;
  v280 = v53;
  v223 = 2 * v53;
  v274 = v54;
  v275 = v51;
  v252 = v55 + 2 * v53;
  v60 = swift_allocObject();
  v270 = xmmword_1D7708FD0;
  *(v60 + 16) = xmmword_1D7708FD0;
  v271 = v55;
  *&v249 = v60;
  v273 = v60 + v55;
  if (qword_1EE0B0C70 != -1)
  {
    swift_once();
  }

  v61 = swift_allocObject();
  v285 = v58;
  v62 = v61;
  *(v61 + 16) = v286;
  sub_1D7675B68(0, &qword_1EC9BDBD8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6E50]);
  v64 = v63;
  sub_1D7676DD4(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v66 = v65;
  v67 = swift_allocObject();
  v284 = xmmword_1D7708DE0;
  *(v67 + 16) = xmmword_1D7708DE0;
  v68 = sub_1D77030E0();

  *(v67 + 32) = sub_1D7703130();
  v69 = *(v268 + 13);
  v283 = *MEMORY[0x1E69D6E28];
  v69(v276);
  sub_1D76783B0();
  v70 = sub_1D77031A0();
  v62[7] = v64;
  v62[8] = sub_1D76DBD9C();
  v62[4] = v70;
  v226 = "news.ads.enabled";
  v224 = 0xD000000000000010;
  sub_1D77031E0();
  v71 = swift_allocObject();
  *(v71 + 16) = v286;
  sub_1D76681C4(0, &qword_1EC9BDBE8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
  v73 = v72;
  if (qword_1EE0B0C58 != -1)
  {
    swift_once();
  }

  v279 = v66;
  v74 = swift_allocObject();
  *(v74 + 16) = v284;

  v278 = v68;
  *(v74 + 32) = sub_1D7703130();
  v75 = *(v281 + 104);
  LODWORD(v277) = *MEMORY[0x1E69D6D78];
  v281 += 104;
  v276 = v75;
  (v75)(v264);
  v76 = *(v269 + 13);
  v269 += 104;
  v268 = v76;
  v76(v259, v283, v272);
  v77 = sub_1D77031B0();
  v251 = v73;
  *(v71 + 56) = v73;
  v257 = sub_1D76DBE2C();
  *(v71 + 64) = v257;
  *(v71 + 32) = v77;
  v78 = v280;
  sub_1D77031F0();
  v79 = sub_1D77031D0();
  v80 = MEMORY[0x1E69D6E60];
  v273 = v79;
  *(v59 + 56) = v79;
  *(v59 + 64) = v80;
  __swift_allocate_boxed_opaque_existential_2((v59 + 32));
  sub_1D77031C0();
  v81 = v265;
  sub_1D77031F0();
  v222 = (v81 + v78);
  if (qword_1EE0B0BF8 != -1)
  {
    swift_once();
  }

  v82 = qword_1EE0B0C00;
  v83 = swift_allocObject();
  v249 = xmmword_1D7709050;
  *(v83 + 16) = xmmword_1D7709050;
  sub_1D76681C4(0, &qword_1EC9BDBF8, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6E50]);
  v85 = v84;
  v216 = v82;

  sub_1D7703170();
  v87 = v267 + 104;
  v86 = *(v267 + 104);
  v88 = v225;
  v89 = v283;
  v90 = v248;
  v86(v225, v283, v248);
  v91 = v85;
  v92 = sub_1D7703180();
  *(v83 + 56) = v91;
  v93 = sub_1D76DBEB0();
  *(v83 + 64) = v93;
  *(v83 + 32) = v92;

  sub_1D7703170();
  v267 = v87;
  v245 = v86;
  v86(v88, v89, v90);
  v94 = sub_1D7703180();
  *(v83 + 96) = v91;
  *(v83 + 104) = v93;
  v244 = v93;
  *(v83 + 72) = v94;
  sub_1D7675B68(0, &qword_1EC9BDC08, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6E50]);
  v96 = v95;
  v97 = *(v255 + 104);
  v255 += 104;
  v218 = v97;
  v97(v246, v89, v247);
  v98 = sub_1D76AC68C();

  v220 = "Present debugger on long press";
  v243 = 0xD000000000000011;
  v219 = v98;
  v99 = sub_1D77031A0();
  v221 = v96;
  *(v83 + 136) = v96;
  v217 = sub_1D76DBF34();
  *(v83 + 144) = v217;
  *(v83 + 112) = v99;
  sub_1D77031E0();
  v223 += v265;
  v222 = "Collapse Behavior";
  if (qword_1EE0AEB28 != -1)
  {
    swift_once();
  }

  v100 = qword_1EE0AEB30;
  v101 = swift_allocObject();
  *(v101 + 16) = v249;
  v216 = v100;

  sub_1D7703170();
  v102 = v283;
  v103 = v245;
  v245(v88, v283, v90);
  v104 = sub_1D7703180();
  v105 = v244;
  *(v101 + 56) = v91;
  *(v101 + 64) = v105;
  *(v101 + 32) = v104;

  sub_1D7703170();
  v103(v88, v102, v90);
  v106 = sub_1D7703180();
  *(v101 + 96) = v91;
  *(v101 + 104) = v105;
  *(v101 + 72) = v106;
  v218(v246, v102, v247);

  v107 = v221;
  v108 = sub_1D77031A0();
  v109 = v217;
  *(v101 + 136) = v107;
  *(v101 + 144) = v109;
  *(v101 + 112) = v108;
  sub_1D77031E0();
  v110 = v280;
  v255 = 3 * v280;
  if (qword_1EE0B0BE0 != -1)
  {
    swift_once();
  }

  v111 = swift_allocObject();
  *(v111 + 16) = v270;

  sub_1D7703170();
  v245(v88, v102, v248);
  v112 = sub_1D7703180();
  v113 = v244;
  *(v111 + 56) = v91;
  *(v111 + 64) = v113;
  *(v111 + 32) = v112;
  sub_1D76681C4(0, &qword_1EC9BDC18, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v114 = v102;
  v116 = v115;
  v117 = *(v263 + 13);
  v263 += 104;
  v248 = v117;
  v117(v250, v114, v258);

  v118 = sub_1D7703190();
  v243 = v116;
  *(v111 + 96) = v116;
  v247 = sub_1D76DBFC4();
  *(v111 + 104) = v247;
  *(v111 + 72) = v118;
  v119 = v265;
  sub_1D77031E0();
  v267 = v119 + 4 * v110;
  v256 = "Article Identifer";
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  v120 = swift_allocObject();
  *(v120 + 16) = v270;
  sub_1D7675B68(0, &qword_1EC9BDC28, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6E50]);
  v122 = v121;
  v123 = swift_allocObject();
  *(v123 + 16) = v284;

  *(v123 + 32) = sub_1D7703130();
  v124 = v283;
  (*(v228 + 104))(v229, v283, v230);
  sub_1D76806B4();
  v125 = sub_1D77031A0();
  *(v120 + 56) = v122;
  *(v120 + 64) = sub_1D76DC048();
  *(v120 + 32) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = v284;

  *(v126 + 32) = sub_1D7703130();
  (v276)(v264, v277, v282);
  v268(v259, v124, v272);
  v127 = v251;
  v128 = sub_1D77031B0();
  v129 = v257;
  *(v120 + 96) = v127;
  *(v120 + 104) = v129;
  *(v120 + 72) = v128;
  sub_1D77031E0();
  v267 = swift_allocObject();
  *(v267 + 16) = v227;
  v246 = "Mock Sponsorship Ads";
  v130 = v271;
  v131 = swift_allocObject();
  *(v131 + 16) = v286;
  v245 = v131;
  v229 = (v131 + v130);
  v132 = v124;
  if (qword_1EE0B0B10 != -1)
  {
    swift_once();
  }

  v133 = qword_1EE0B0B18;
  v134 = swift_allocObject();
  v230 = xmmword_1D7709070;
  *(v134 + 16) = xmmword_1D7709070;
  sub_1D76681C4(0, &qword_1EC9BDC38, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6E50]);
  v136 = v135;
  v228 = v133;

  sub_1D7703170();
  v137 = *(v266 + 104);
  v266 += 104;
  v256 = v137;
  (v137)(v260, v132, v261);
  v138 = sub_1D7703180();
  v244 = v136;
  *(v134 + 56) = v136;
  v255 = sub_1D76DC0D8();
  *(v134 + 64) = v255;
  *(v134 + 32) = v138;
  sub_1D7675B68(0, &qword_1EC9BDC48, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6E50]);
  v140 = v139;
  (*(v232 + 104))(v234, v132, v233);
  sub_1D76DBBF4();

  v141 = sub_1D77031A0();
  *(v134 + 96) = v140;
  *(v134 + 104) = sub_1D76DC15C();
  *(v134 + 72) = v141;
  v142 = v250;
  v143 = v258;
  v144 = v132;
  v145 = v248;
  v248(v250, v132, v258);

  v146 = v243;
  v147 = sub_1D7703190();
  v148 = v247;
  *(v134 + 136) = v146;
  *(v134 + 144) = v148;
  *(v134 + 112) = v147;
  v145(v142, v144, v143);

  v149 = sub_1D7703190();
  *(v134 + 176) = v146;
  *(v134 + 184) = v148;
  *(v134 + 152) = v149;
  sub_1D77031E0();
  v150 = v267;
  *(v267 + 56) = v273;
  *(v150 + 64) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v150 + 32));
  sub_1D77031C0();
  v246 = "Distance from media";
  v151 = swift_allocObject();
  *(v151 + 16) = v270;
  v234 = v151;
  v245 = (v151 + v271);
  if (qword_1EE0B0A88 != -1)
  {
    swift_once();
  }

  v152 = qword_1EE0B0A90;
  v153 = swift_allocObject();
  *(v153 + 16) = v230;
  v233 = v152;
  v154 = v283;
  v155 = v258;
  v156 = v248;
  v248(v142, v283, v258);

  v157 = sub_1D7703190();
  v158 = v247;
  *(v153 + 56) = v146;
  *(v153 + 64) = v158;
  *(v153 + 32) = v157;
  v156(v142, v154, v155);

  v159 = sub_1D7703190();
  *(v153 + 96) = v146;
  *(v153 + 104) = v158;
  *(v153 + 72) = v159;
  v156(v142, v154, v155);

  v160 = sub_1D7703190();
  *(v153 + 136) = v146;
  *(v153 + 144) = v158;
  *(v153 + 112) = v160;
  sub_1D7675B68(0, &qword_1EC9BDC58, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6E50]);
  v162 = v161;
  (*(v235 + 104))(v236, v154, v237);
  sub_1D76DBBA0();

  v163 = sub_1D77031A0();
  *(v153 + 176) = v162;
  *(v153 + 184) = sub_1D76DC1EC();
  *(v153 + 152) = v163;
  sub_1D77031E0();
  if (qword_1EE0B0938 != -1)
  {
    swift_once();
  }

  v164 = swift_allocObject();
  *(v164 + 16) = v286;
  sub_1D7675B68(0, &qword_1EC9BDC68, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6E50]);
  v166 = v165;
  (*(v238 + 104))(v240, v154, v239);
  sub_1D76DBB4C();

  v167 = sub_1D77031A0();
  *(v164 + 56) = v166;
  *(v164 + 64) = sub_1D76DC27C();
  *(v164 + 32) = v167;
  sub_1D77031E0();
  v168 = v267;
  *(v267 + 96) = v273;
  *(v168 + 104) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v168 + 72));
  sub_1D77031C0();
  v263 = "Override EOA Native Ad Location";
  v169 = v271;
  v170 = swift_allocObject();
  *(v170 + 16) = v286;
  v258 = v170;
  v250 = (v170 + v169);
  if (qword_1EE0B0A10 != -1)
  {
    swift_once();
  }

  v248 = qword_1EE0B0A18;
  v171 = swift_allocObject();
  *(v171 + 16) = v249;
  v172 = swift_allocObject();
  *(v172 + 16) = v284;

  *(v172 + 32) = sub_1D7703130();
  v173 = v264;
  (v276)(v264, v277, v282);
  v174 = v259;
  v175 = v283;
  v268(v259, v283, v272);
  v176 = v175;
  v177 = v251;
  v178 = sub_1D77031B0();
  v179 = v257;
  *(v171 + 56) = v177;
  *(v171 + 64) = v179;
  *(v171 + 32) = v178;
  *&v249 = "Force Tag Eligibility";
  v180 = swift_allocObject();
  *(v180 + 16) = v284;

  *(v180 + 32) = sub_1D7703130();
  (v276)(v173, v277, v282);
  v268(v174, v176, v272);
  v181 = sub_1D77031B0();
  v182 = v257;
  *(v171 + 96) = v177;
  *(v171 + 104) = v182;
  *(v171 + 72) = v181;
  *&v249 = "Force Group Eligibility";
  v183 = swift_allocObject();
  *(v183 + 16) = v284;

  *(v183 + 32) = sub_1D7703130();
  (v276)(v173, v277, v282);
  v268(v174, v176, v272);
  v184 = sub_1D77031B0();
  *(v171 + 136) = v177;
  *(v171 + 144) = v182;
  *(v171 + 112) = v184;
  sub_1D77031E0();
  v185 = v267;
  *(v267 + 136) = v273;
  *(v185 + 144) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v185 + 112));
  sub_1D77031C0();
  *(swift_allocObject() + 16) = v286;
  v186 = swift_allocObject();
  *(v186 + 16) = v270;
  if (qword_1EE0B0A78 != -1)
  {
    swift_once();
  }

  (v276)(v173, v277, v282);
  v268(v174, v176, v272);

  v187 = sub_1D77031B0();
  *(v186 + 56) = v177;
  *(v186 + 64) = v182;
  *(v186 + 32) = v187;
  sub_1D76DC30C(0);
  v189 = v188;
  if (qword_1EE0B09B0 != -1)
  {
    swift_once();
  }

  v190 = *(v262 + 104);
  v262 += 104;
  v269 = v190;
  (v190)(v253, v176, v254);
  v191 = sub_1D76DC32C(&qword_1EC9BDC80, MEMORY[0x1E69D6D20]);

  v268 = v191;
  v192 = sub_1D77031A0();
  v272 = v189;
  *(v186 + 96) = v189;
  v263 = sub_1D76DC32C(&qword_1EC9BDC88, sub_1D76DC30C);
  *(v186 + 104) = v263;
  *(v186 + 72) = v192;
  v193 = v271;
  sub_1D77031F0();
  v194 = v267;
  *(v267 + 176) = v273;
  v194[23] = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2(v194 + 19);
  sub_1D77031C0();
  v195 = swift_allocObject();
  *(v195 + 16) = v286;
  v259 = (v195 + v193);
  v258 = "Pre-Request Policy Enforcement";
  v257 = "Feed Prefetch Distance";
  if (qword_1EE0B09C0 != -1)
  {
    swift_once();
  }

  v196 = swift_allocObject();
  *(v196 + 16) = v286;
  v197 = swift_allocObject();
  *(v197 + 16) = v284;

  *(v197 + 32) = sub_1D7703130();
  v198 = v264;
  (v276)(v264, v277, v282);
  (v256)(v260, v283, v261);
  v199 = v244;
  v200 = sub_1D77031B0();
  v201 = v255;
  *(v196 + 56) = v199;
  *(v196 + 64) = v201;
  *(v196 + 32) = v200;
  sub_1D77031E0();
  v194[27] = v273;
  v194[28] = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2(v194 + 24);
  sub_1D77031C0();
  v202 = swift_allocObject();
  *(v202 + 16) = v270;
  v203 = v202 + v193;
  v274 = "PromotedContent Parameters";
  v275 = v202;
  if (qword_1EE0B0D18 != -1)
  {
    swift_once();
  }

  v204 = swift_allocObject();
  *(v204 + 16) = v286;
  v205 = swift_allocObject();
  *(v205 + 16) = v284;

  *(v205 + 32) = sub_1D7703130();
  (v276)(v198, v277, v282);
  (v256)(v260, v283, v261);
  v206 = sub_1D77031B0();
  v207 = v255;
  *(v204 + 56) = v199;
  *(v204 + 64) = v207;
  *(v204 + 32) = v206;
  sub_1D77031E0();
  v208 = swift_allocObject();
  *(v208 + 16) = v286;
  v285 = v203;
  if (qword_1EE0B0D00 != -1)
  {
    swift_once();
  }

  *&v286 = 5 * v280;
  v209 = swift_allocObject();
  *(v209 + 16) = v284;

  *(v209 + 32) = sub_1D7703130();
  (v269)(v253, v283, v254);
  v210 = v272;
  v211 = sub_1D77031A0();
  v212 = v263;
  *(v208 + 56) = v210;
  *(v208 + 64) = v212;
  *(v208 + 32) = v211;
  sub_1D77031F0();
  v213 = v267;
  *(v267 + 256) = v273;
  *(v213 + 264) = MEMORY[0x1E69D6E60];
  __swift_allocate_boxed_opaque_existential_2((v213 + 232));
  sub_1D77031C0();
  sub_1D77031F0();
  return sub_1D7703030();
}

uint64_t static SettingsBundle.ads.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9BCAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7703040();
  v3 = __swift_project_value_buffer(v2, qword_1EC9BDB40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D76D64FC()
{
  v0 = sub_1D7703220();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 1;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D7703270();
  qword_1EE0B0A80 = result;
  return result;
}

uint64_t sub_1D76D6704()
{
  v0 = sub_1D7703210();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7703090();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76DBC48(0, &qword_1EE0B08B8, MEMORY[0x1E69D6EB0]);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D7703250();
  qword_1EE0B09B8 = result;
  return result;
}

uint64_t sub_1D76D68F0()
{
  v0 = sub_1D7703220();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 1;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D7703270();
  qword_1EE0B0C60 = result;
  return result;
}

uint64_t sub_1D76D6AF8()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.AutoPlacement(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.AutoPlacement.init(key:defaultValue:access:)(0xD00000000000002ELL, 0x80000001D7718850, 0, v3);
  qword_1EE0B0B18 = result;
  return result;
}

uint64_t sub_1D76D6C38()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugBanner(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugBanner.init(key:defaultValue:access:)(0xD00000000000002CLL, 0x80000001D7718820, 0, v3);
  qword_1EE0B0C00 = result;
  return result;
}

uint64_t sub_1D76D6D78()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugNativeAd(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugNativeAd.init(key:defaultValue:access:)(0xD00000000000002FLL, 0x80000001D77187F0, 0, v3);
  qword_1EE0B0BE8 = result;
  return result;
}

uint64_t sub_1D76D6EB8()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugInterstitialAd(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugInterstitialAd.init(key:defaultValue:access:)(0xD000000000000035, 0x80000001D7718D70, 0, v3);
  qword_1EE0AEB30 = result;
  return result;
}

uint64_t sub_1D76D7034()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.NativeOverride(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.NativeOverride.init(key:defaultValue:access:)(0xD00000000000002FLL, 0x80000001D77187C0, 0, v3);
  qword_1EE0B0A90 = result;
  return result;
}

uint64_t sub_1D76D718C()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.init(key:defaultValue:access:)(0xD00000000000003CLL, 0x80000001D7718740, 0, v3);
  qword_1EE0B0940 = result;
  return result;
}

uint64_t sub_1D76D72E4()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.PromotedContentParameters.ContextPrefetchLimit(0);
  swift_allocObject();
  result = Settings.Ads.PromotedContentParameters.ContextPrefetchLimit.init(key:defaultValue:access:)(0xD000000000000039, 0x80000001D77186C0, 0, v3);
  qword_1EE0B0D20 = result;
  return result;
}

uint64_t sub_1D76D7490()
{
  v0 = sub_1D7703090();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7703210();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D76DBC48(0, &qword_1EE0B08B8, MEMORY[0x1E69D6EB0]);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6D00], v0);
  result = sub_1D7703250();
  qword_1EE0B0D08 = result;
  return result;
}

uint64_t Settings.Ads.Debugging.VisualDebugging.Mode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Ads.Debugging.VisualDebugging.Mode.rawValue.getter()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_1D76D7714(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746361706D6F63;
  }

  else
  {
    v2 = 0x72616C75676572;
  }

  if (*a2)
  {
    v3 = 0x746361706D6F63;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D7704A30();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D76D779C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D7814()
{
  sub_1D77042D0();
}

uint64_t sub_1D76D7870()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D78E4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D76D7944(uint64_t a1)
{
  v2 = sub_1D76783B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D7998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76783B0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t Settings.Ads.Debugging.VisualDebugging.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t Settings.Ads.Debugging.AutoPlacement.BannerType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Ads.Debugging.AutoPlacement.BannerType.rawValue.getter()
{
  v1 = 7958113;
  v2 = 0x685F656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x656772616CLL;
  }

  if (*v0)
  {
    v1 = 0x647261646E617473;
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

uint64_t sub_1D76D7B3C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D7C00()
{
  sub_1D77042D0();
}

uint64_t sub_1D76D7CB0()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76D7D7C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7958113;
  v4 = 0xED00007468676965;
  v5 = 0x685F656C62756F64;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x647261646E617473;
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

uint64_t sub_1D76D7DFC(uint64_t a1)
{
  v2 = sub_1D76DBBF4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D7E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76DBBF4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76D7EAC(uint64_t a1)
{
  v2 = sub_1D76DBBF4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Ads.Debugging.AutoPlacement.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v48 = a4;
  v49 = a1;
  v51 = a3;
  v50 = a2;
  v54 = sub_1D7703220();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v45 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7703210();
  v47 = *(v8 - 8);
  v9 = v47;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EE0B0BA0;
  v46 = MEMORY[0x1E69D6EB0];
  sub_1D76681C4(0, &qword_1EE0B0898, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v55 = 10;
  v57 = 10;
  v58 = 0;
  v15 = *(v9 + 104);
  v42 = *MEMORY[0x1E69D6E90];
  v14 = v42;
  v41 = v8;
  v15(v12, v42, v8);
  v43 = v15;
  v52 = v9 + 104;
  *(v4 + v13) = sub_1D7703260();
  v44 = qword_1EE0B0BB8;
  sub_1D7675B68(0, &qword_1EE0B08D0, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6EB0]);
  v39 = "to_placement.frequency";
  v40 = v16;
  LOBYTE(v55) = 0;
  v15(v12, v14, v8);
  sub_1D7676AC4(0, &qword_1EE0AEC98, &qword_1EE0B08F8, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType);
  sub_1D7676DD4(0, &qword_1EE0B08F8, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709070;
  LOBYTE(v58) = 0;
  sub_1D7703230();
  LOBYTE(v58) = 1;
  sub_1D7703230();
  LOBYTE(v58) = 2;
  sub_1D7703230();
  LOBYTE(v58) = 3;
  sub_1D7703230();
  v18 = *(v5 + 104);
  v19 = v45;
  v37 = *MEMORY[0x1E69D6EA0];
  v17 = v37;
  v20 = v54;
  v18(v45, v37, v54);
  v36 = v18;
  v38 = v5 + 104;
  sub_1D76DB578();
  v35 = v12;
  v21 = sub_1D7703240();
  v22 = v53;
  *(v53 + v44) = v21;
  v44 = qword_1EE0B0BB0;
  v40 = "to_placement.banner_type";
  v23 = v12;
  v24 = v42;
  v25 = v41;
  v26 = v43;
  v43(v23, v42, v41);
  v18(v19, v17, v20);
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1D76681C4(0, &qword_1EE0B08B0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v46);
  swift_allocObject();
  v27 = v35;
  *(v22 + v44) = sub_1D7703270();
  v28 = qword_1EE0B0BA8;
  v29 = v25;
  v26(v27, v24, v25);
  v36(v19, v37, v54);
  v55 = 0;
  v56 = 0xE000000000000000;
  swift_allocObject();
  *(v53 + v28) = sub_1D7703270();
  v31 = v47;
  v30 = v48;
  (*(v47 + 16))(v27, v48, v29);
  v32 = sub_1D77030A0();
  (*(v31 + 8))(v30, v29);
  return v32;
}

uint64_t Settings.Ads.Debugging.DebugBanner.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v30 = a4;
  v31 = a1;
  v33 = a3;
  v32 = a2;
  v5 = sub_1D7703220();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7703210();
  v26 = *(v8 - 8);
  v9 = v26;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EE0B0C48;
  sub_1D76681C4(0, &qword_1EE0B08A0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6EB0]);
  v35 = 0;
  v36 = 1056964608;
  v34 = 1092616192;
  v14 = *MEMORY[0x1E69D6E90];
  v15 = *(v9 + 104);
  v15(v12, v14, v8);
  v16 = sub_1D7703260();
  v25 = v4;
  *(v4 + v13) = v16;
  v17 = qword_1EE0B0C50;
  v35 = 0;
  v36 = 1065353216;
  v34 = 1065353216;
  v15(v12, v14, v8);
  *(v4 + v17) = sub_1D7703260();
  v24 = qword_1EE0B0C40;
  sub_1D7675B68(0, &qword_1EE0B08E0, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EB0]);
  v23 = v18;
  LOBYTE(v36) = 0;
  v15(v12, v14, v8);
  sub_1D7676AC4(0, &qword_1EE0AECA8, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior);
  sub_1D7676DD4(0, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  LOBYTE(v35) = 0;
  sub_1D7703230();
  LOBYTE(v35) = 1;
  sub_1D7703230();
  LOBYTE(v35) = 2;
  sub_1D7703230();
  (*(v28 + 104))(v27, *MEMORY[0x1E69D6EA0], v29);
  sub_1D76DB5CC();
  *(v25 + v24) = sub_1D7703240();
  v19 = v26;
  v20 = v30;
  (*(v26 + 16))(v12, v30, v8);
  v21 = sub_1D77030A0();
  (*(v19 + 8))(v20, v8);
  return v21;
}

uint64_t Settings.Ads.Debugging.DebugNativeAd.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v25 = a4;
  v26 = a1;
  v28 = a3;
  v27 = a2;
  v24 = sub_1D7703220();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v5);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703210();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = qword_1EE0B0B60;
  v12 = MEMORY[0x1E69D6EB0];
  sub_1D76681C4(0, &qword_1EE0B08A0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6EB0]);
  LODWORD(v29) = 1056964608;
  v31 = 1092616192;
  v32 = 0;
  v13 = *MEMORY[0x1E69D6E90];
  v14 = *(v8 + 104);
  v14(v11, v13, v7);
  v15 = sub_1D7703260();
  v16 = v23;
  *(v23 + v21) = v15;
  v20 = "bug_native_ad.loading_delay";
  v21 = qword_1EE0B0B58;
  v14(v11, v13, v7);
  (*(v4 + 104))(v22, *MEMORY[0x1E69D6EA0], v24);
  v29 = 0xD000000000000017;
  v30 = 0x80000001D7717DE0;
  sub_1D76681C4(0, &qword_1EE0B08B0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v12);
  swift_allocObject();
  *(v16 + v21) = sub_1D7703270();
  v17 = v25;
  (*(v8 + 16))(v11, v25, v7);
  v18 = sub_1D77030A0();
  (*(v8 + 8))(v17, v7);
  return v18;
}

uint64_t Settings.Ads.Debugging.DebugInterstitialAd.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v30 = a4;
  v31 = a1;
  v33 = a3;
  v32 = a2;
  v5 = sub_1D7703220();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7703210();
  v26 = *(v8 - 8);
  v9 = v26;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EE0AEAB0;
  sub_1D76681C4(0, &qword_1EE0B08A0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6EB0]);
  v35 = 0;
  v36 = 1056964608;
  v34 = 1092616192;
  v14 = *MEMORY[0x1E69D6E90];
  v15 = *(v9 + 104);
  v15(v12, v14, v8);
  v16 = sub_1D7703260();
  v25 = v4;
  *(v4 + v13) = v16;
  v17 = qword_1EE0AEAB8;
  v35 = 0;
  v36 = 1065353216;
  v34 = 1065353216;
  v15(v12, v14, v8);
  *(v4 + v17) = sub_1D7703260();
  v24 = qword_1EE0AEAA8;
  sub_1D7675B68(0, &qword_1EE0B08E0, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EB0]);
  v23 = v18;
  LOBYTE(v36) = 0;
  v15(v12, v14, v8);
  sub_1D7676AC4(0, &qword_1EE0AECA8, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior);
  sub_1D7676DD4(0, &qword_1EE0B0908, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  LOBYTE(v35) = 0;
  sub_1D7703230();
  LOBYTE(v35) = 1;
  sub_1D7703230();
  LOBYTE(v35) = 2;
  sub_1D7703230();
  (*(v28 + 104))(v27, *MEMORY[0x1E69D6EA0], v29);
  sub_1D76DB5CC();
  *(v25 + v24) = sub_1D7703240();
  v19 = v26;
  v20 = v30;
  (*(v26 + 16))(v12, v30, v8);
  v21 = sub_1D77030A0();
  (*(v19 + 8))(v20, v8);
  return v21;
}

uint64_t Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy.rawValue.getter()
{
  v1 = 0x6E55737961776C61;
  if (*v0 != 1)
  {
    v1 = 0x6D6F646E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7546737961776C61;
  }
}

uint64_t sub_1D76D956C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E55737961776C61;
  v4 = 0xEE0064656C6C6966;
  if (v2 != 1)
  {
    v3 = 0x6D6F646E6172;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7546737961776C61;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF64656C6C69666CLL;
  }

  v7 = 0x6E55737961776C61;
  v8 = 0xEE0064656C6C6966;
  if (*a2 != 1)
  {
    v7 = 0x6D6F646E6172;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7546737961776C61;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF64656C6C69666CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76D9688()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D9740()
{
  sub_1D77042D0();
}

uint64_t sub_1D76D97E4()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D98A4(uint64_t a1)
{
  v2 = sub_1D76806B4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D98F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76806B4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76D9988()
{
}

uint64_t sub_1D76D99E0()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t sub_1D76D9A44()
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

uint64_t Settings.Ads.Debugging.NativeOverride.DesiredPosition.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Ads.Debugging.NativeOverride.DesiredPosition.rawValue.getter()
{
  v1 = 0x656873696C627570;
  if (*v0 != 1)
  {
    v1 = 0x646574616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D76D9B74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656873696C627570;
  v4 = 0xE900000000000072;
  if (v2 != 1)
  {
    v3 = 0x646574616C6572;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x656873696C627570;
  v8 = 0xE900000000000072;
  if (*a2 != 1)
  {
    v7 = 0x646574616C6572;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76D9C78()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76D9D18()
{
  sub_1D77042D0();
}

uint64_t sub_1D76D9DA4()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76D9E4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000072;
  v5 = 0x656873696C627570;
  if (v2 != 1)
  {
    v5 = 0x646574616C6572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D76D9EA8(uint64_t a1)
{
  v2 = sub_1D76DBBA0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76D9EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76DBBA0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76D9F58(uint64_t a1)
{
  v2 = sub_1D76DBBA0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Ads.Debugging.NativeOverride.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v42 = a4;
  v43 = a1;
  v45 = a3;
  v44 = a2;
  v4 = sub_1D7703220();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7703210();
  v41 = *(v9 - 8);
  v10 = v41;
  MEMORY[0x1EEE9AC00](v9, v11);
  v39 = qword_1EE0B0AD0;
  v46 = *MEMORY[0x1E69D6E90];
  v13 = *(v10 + 104);
  v47 = v10 + 104;
  v14 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v13();
  v35 = v13;
  v15 = *MEMORY[0x1E69D6EA0];
  v50 = *(v5 + 104);
  v51 = v5 + 104;
  v16 = v15;
  v49 = v4;
  v50(v8);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1D76681C4(0, &qword_1EE0B08B0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  v34 = v14;
  v17 = sub_1D7703270();
  v18 = v48;
  *(v48 + v39) = v17;
  v39 = qword_1EE0B0AD8;
  v37 = "ticle_identifier";
  v19 = v46;
  (v13)(v14, v46, v9);
  v40 = v16;
  v20 = v50;
  (v50)(v8, v16, v4);
  v53 = 0;
  v54 = 0xE000000000000000;
  swift_allocObject();
  v21 = v8;
  v22 = v34;
  *(v18 + v39) = sub_1D7703270();
  v39 = qword_1EE0B0B08;
  v37 = "tive_override.title";
  v23 = v19;
  v24 = v35;
  v25 = v36;
  (v35)(v22, v23, v36);
  v38 = v21;
  v20(v21, v16, v49);
  v53 = 0;
  v54 = 0xE000000000000000;
  swift_allocObject();
  v26 = sub_1D7703270();
  v27 = v48;
  *(v48 + v39) = v26;
  v39 = qword_1EE0B0AE0;
  sub_1D7675B68(0, &qword_1EE0B08C8, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6EB0]);
  v37 = v28;
  LOBYTE(v53) = 0;
  (v24)(v22, v46, v25);
  sub_1D7676AC4(0, &qword_1EE0AEC90, &qword_1EE0B08F0, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition);
  sub_1D7676DD4(0, &qword_1EE0B08F0, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  v52 = 0;
  sub_1D7703230();
  v52 = 1;
  sub_1D7703230();
  v52 = 2;
  sub_1D7703230();
  (v50)(v38, v40, v49);
  sub_1D76DB674();
  *(v27 + v39) = sub_1D7703240();
  v30 = v41;
  v29 = v42;
  (*(v41 + 16))(v22, v42, v25);
  v31 = sub_1D77030A0();
  (*(v30 + 8))(v29, v25);
  return v31;
}

uint64_t sub_1D76DA644()
{
}

uint64_t sub_1D76DA6D4()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t sub_1D76DA770()
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D76DA860()
{
}

uint64_t sub_1D76DA8D8()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t sub_1D76DA954()
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation.rawValue.getter()
{
  v1 = 0x676E696461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D76DAA90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696461656CLL;
  if (v2 != 1)
  {
    v4 = 0x676E696C69617274;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696461656CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76DAB8C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76DAC28()
{
  sub_1D77042D0();
}

uint64_t sub_1D76DACB0()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76DAD54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696461656CLL;
  if (v2 != 1)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D76DADAC(uint64_t a1)
{
  v2 = sub_1D76DBB4C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D76DAE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D76DBB4C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D76DAE5C(uint64_t a1)
{
  v2 = sub_1D76DBB4C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v23 = a4;
  v26 = a3;
  v24 = a1;
  v25 = a2;
  v4 = sub_1D7703220();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7703210();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_1EE0B09A0;
  sub_1D7675B68(0, &qword_1EE0B08C0, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6EB0]);
  v18[0] = "tive_override.advertiser_name";
  v18[1] = v13;
  v30 = 0;
  (*(v9 + 104))(v12, *MEMORY[0x1E69D6E90], v8);
  sub_1D7676AC4(0, &qword_1EE0AEC88, &qword_1EE0B08E8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation);
  sub_1D7676DD4(0, &qword_1EE0B08E8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  v29 = 0;
  sub_1D7703230();
  v28 = 1;
  sub_1D7703230();
  v27 = 2;
  sub_1D7703230();
  (*(v20 + 104))(v7, *MEMORY[0x1E69D6EA0], v21);
  sub_1D76DB71C();
  v14 = sub_1D7703240();
  v15 = v23;
  *(v22 + v19) = v14;
  (*(v9 + 16))(v12, v15, v8);
  v16 = sub_1D77030A0();
  (*(v9 + 8))(v15, v8);
  return v16;
}

uint64_t Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t Settings.Ads.Debugging.FeedPrefetchDistance.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t Settings.Ads.PromotedContentParameters.ContextPrefetchLimit.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14[1] = a3;
  v6 = sub_1D7703210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EE0B0D60;
  sub_1D76681C4(0, &qword_1EE0B0898, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v16 = 0;
  v17 = 3;
  v15 = 1000;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D6E90], v6);
  *(v4 + v11) = sub_1D7703260();
  (*(v7 + 16))(v10, a4, v6);
  v12 = sub_1D77030A0();
  (*(v7 + 8))(a4, v6);
  return v12;
}

unint64_t sub_1D76DB524()
{
  result = qword_1EE0B0BC0;
  if (!qword_1EE0B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BC0);
  }

  return result;
}

unint64_t sub_1D76DB578()
{
  result = qword_1EE0B0BC8;
  if (!qword_1EE0B0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BC8);
  }

  return result;
}

unint64_t sub_1D76DB5CC()
{
  result = qword_1EE0AF6F8;
  if (!qword_1EE0AF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF6F8);
  }

  return result;
}

unint64_t sub_1D76DB620()
{
  result = qword_1EE0B0AE8;
  if (!qword_1EE0B0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0AE8);
  }

  return result;
}

unint64_t sub_1D76DB674()
{
  result = qword_1EE0B0AF0;
  if (!qword_1EE0B0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0AF0);
  }

  return result;
}

unint64_t sub_1D76DB6C8()
{
  result = qword_1EE0B0980;
  if (!qword_1EE0B0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0980);
  }

  return result;
}

unint64_t sub_1D76DB71C()
{
  result = qword_1EE0B0988;
  if (!qword_1EE0B0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0988);
  }

  return result;
}

uint64_t Settings.Ads.PromotedContentParameters.ContextPrefetchLimit.deinit()
{
  v0 = sub_1D77030D0();

  return v0;
}

uint64_t sub_1D76DB7C4()
{
  sub_1D77030D0();

  return swift_deallocClassInstance();
}

unint64_t sub_1D76DB814()
{
  result = qword_1EE0B0BD8;
  if (!qword_1EE0B0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BD8);
  }

  return result;
}

unint64_t sub_1D76DB868()
{
  result = qword_1EE0B0B00;
  if (!qword_1EE0B0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0B00);
  }

  return result;
}

unint64_t sub_1D76DB8BC()
{
  result = qword_1EE0B0998;
  if (!qword_1EE0B0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0998);
  }

  return result;
}

unint64_t sub_1D76DBB4C()
{
  result = qword_1EE0B0990;
  if (!qword_1EE0B0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0990);
  }

  return result;
}

unint64_t sub_1D76DBBA0()
{
  result = qword_1EE0B0AF8;
  if (!qword_1EE0B0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0AF8);
  }

  return result;
}

unint64_t sub_1D76DBBF4()
{
  result = qword_1EE0B0BD0;
  if (!qword_1EE0B0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0BD0);
  }

  return result;
}

void sub_1D76DBC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7703090();
    v7 = sub_1D76DC32C(&unk_1EE0B0928, MEMORY[0x1E69D6D20]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D76DBCE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7704A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D76DBD38()
{
  result = qword_1EC9BDBD0;
  if (!qword_1EC9BDBD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9BDBD0);
  }

  return result;
}

unint64_t sub_1D76DBD9C()
{
  result = qword_1EC9BDBE0;
  if (!qword_1EC9BDBE0)
  {
    sub_1D7675B68(255, &qword_1EC9BDBD8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDBE0);
  }

  return result;
}

unint64_t sub_1D76DBE2C()
{
  result = qword_1EC9BDBF0;
  if (!qword_1EC9BDBF0)
  {
    sub_1D76681C4(255, &qword_1EC9BDBE8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDBF0);
  }

  return result;
}

unint64_t sub_1D76DBEB0()
{
  result = qword_1EC9BDC00;
  if (!qword_1EC9BDC00)
  {
    sub_1D76681C4(255, &qword_1EC9BDBF8, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC00);
  }

  return result;
}

unint64_t sub_1D76DBF34()
{
  result = qword_1EC9BDC10;
  if (!qword_1EC9BDC10)
  {
    sub_1D7675B68(255, &qword_1EC9BDC08, sub_1D76C6180, &type metadata for DebugAdCollapseBehavior, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC10);
  }

  return result;
}

unint64_t sub_1D76DBFC4()
{
  result = qword_1EC9BDC20;
  if (!qword_1EC9BDC20)
  {
    sub_1D76681C4(255, &qword_1EC9BDC18, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC20);
  }

  return result;
}

unint64_t sub_1D76DC048()
{
  result = qword_1EC9BDC30;
  if (!qword_1EC9BDC30)
  {
    sub_1D7675B68(255, &qword_1EC9BDC28, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC30);
  }

  return result;
}

unint64_t sub_1D76DC0D8()
{
  result = qword_1EC9BDC40;
  if (!qword_1EC9BDC40)
  {
    sub_1D76681C4(255, &qword_1EC9BDC38, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC40);
  }

  return result;
}

unint64_t sub_1D76DC15C()
{
  result = qword_1EC9BDC50;
  if (!qword_1EC9BDC50)
  {
    sub_1D7675B68(255, &qword_1EC9BDC48, sub_1D76DB524, &type metadata for Settings.Ads.Debugging.AutoPlacement.BannerType, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC50);
  }

  return result;
}

unint64_t sub_1D76DC1EC()
{
  result = qword_1EC9BDC60;
  if (!qword_1EC9BDC60)
  {
    sub_1D7675B68(255, &qword_1EC9BDC58, sub_1D76DB620, &type metadata for Settings.Ads.Debugging.NativeOverride.DesiredPosition, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC60);
  }

  return result;
}

unint64_t sub_1D76DC27C()
{
  result = qword_1EC9BDC70;
  if (!qword_1EC9BDC70)
  {
    sub_1D7675B68(255, &qword_1EC9BDC68, sub_1D76DB6C8, &type metadata for Settings.Ads.Debugging.EOANativeAdInsertionLocationOverride.EOANativeAdLocation, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC70);
  }

  return result;
}

uint64_t sub_1D76DC32C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AdPolicyLayoutEnvironmentProvider.environment.getter()
{

  sub_1D7703650();
}

uint64_t sub_1D76DC3D0@<X0>(void *a1@<X8>)
{

  sub_1D7703650();

  *a1 = v3;
  return result;
}

uint64_t sub_1D76DC420()
{

  sub_1D7703660();
}

uint64_t AdPolicyLayoutEnvironmentProvider.environment.setter()
{

  sub_1D7703660();
}

void (*AdPolicyLayoutEnvironmentProvider.environment.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = *(v1 + 16);

  *(v4 + 40) = sub_1D7703640();
  return sub_1D76DC53C;
}

void sub_1D76DC53C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t AdPolicyLayoutEnvironmentProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D766F4E8();
  swift_allocObject();
  *(v0 + 16) = sub_1D7703630();
  return v0;
}

uint64_t AdPolicyLayoutEnvironmentProvider.layoutEnvironment()()
{

  sub_1D7703650();

  if (v1)
  {
    sub_1D766F724(0, &qword_1EE0B0850, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036E0();
  }

  else
  {
    sub_1D76DC6DC();
    swift_allocError();
    sub_1D766F724(0, &qword_1EE0B0850, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036D0();
  }
}

unint64_t sub_1D76DC6DC()
{
  result = qword_1EC9BDC90;
  if (!qword_1EC9BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC90);
  }

  return result;
}

uint64_t AdPolicyLayoutEnvironmentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D76DC800()
{
  result = qword_1EC9BDC98;
  if (!qword_1EC9BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDC98);
  }

  return result;
}

uint64_t ArticleInterstitialAdContext.init(provider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v37;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
  v10 = v37;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  AdContextDataProviding.data<A>(for:)(&type metadata for FeedAdData, v11, &type metadata for FeedAdData, v12);
  v104 = v82[7];
  v105 = v82[8];
  v106 = v82[9];
  v107 = v83;
  v102 = v82[5];
  v103 = v82[6];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v13, &type metadata for ReferralAdData, v14);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v15, &type metadata for IssueAdData, v16);
  v35 = v37;
  v108 = *(&v37 + 1);
  v34 = v37;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v17, &type metadata for SectionAdData, v18);
  v33 = v38;
  v19 = v37;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  AdContextDataProviding.data<A>(for:)(&type metadata for InterstitialAdData, v20, &type metadata for InterstitialAdData, v21);
  v32 = v37;
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v80 = xmmword_1D770C6E0;
  v81 = 0;
  (*(v22 + 8))(v82, &type metadata for ArticleAdData, &v80, &type metadata for ArticleAdData, v23, v22);
  v99 = v82[2];
  v100 = v82[3];
  v101 = v82[4];
  v98 = v82[1];
  v97 = v82[0];
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v77 = xmmword_1D770C6E0;
  v78 = 0;
  (*(v24 + 8))(v79, &type metadata for ChannelAdData, &v77, &type metadata for ChannelAdData, v25, v24);
  v93 = v79[0];
  v94 = v79[1];
  v95 = v79[2];
  v96 = v79[3];
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v74[1] = 0;
  v74[0] = 0;
  v75 = 0;
  (*(v26 + 8))(v76, &type metadata for ArticleAdData, v74, &type metadata for ArticleAdData, v27, v26);
  v90 = v76[2];
  v91 = v76[3];
  v92 = v76[4];
  v89 = v76[1];
  v88 = v76[0];
  v29 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v68[1] = 0;
  v68[0] = 0;
  v69 = 0;
  (*(v28 + 8))(&v70, &type metadata for ChannelAdData, v68, &type metadata for ChannelAdData, v29, v28);
  v84 = v70;
  v85 = v71;
  v86 = v72;
  v87 = v73;
  __src[3] = v104;
  __src[4] = v105;
  __src[5] = v106;
  __src[1] = v102;
  __src[2] = v103;
  __src[12] = v99;
  __src[13] = v100;
  __src[10] = v97;
  __src[11] = v98;
  __src[16] = v94;
  __src[17] = v95;
  __src[14] = v101;
  __src[15] = v93;
  __src[18] = v96;
  __src[19] = v88;
  __src[22] = v91;
  __src[23] = v92;
  LOBYTE(__src[0]) = v37;
  *(&__src[0] + 1) = v37;
  *&__src[6] = v107;
  BYTE8(__src[6]) = v37;
  v30 = v108;
  *&__src[7] = v37;
  *(&__src[7] + 1) = v108;
  LOWORD(__src[8]) = v38;
  *(&__src[8] + 8) = v37;
  *(&__src[9] + 1) = v37;
  __src[20] = v89;
  __src[21] = v90;
  __src[26] = v72;
  __src[27] = v73;
  __src[24] = v70;
  __src[25] = v71;
  memcpy(a2, __src, 0x1C0uLL);
  sub_1D76DD064(__src, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40 = v104;
  v41 = v105;
  v42 = v106;
  v38 = v102;
  v39 = v103;
  v52 = v99;
  v53 = v100;
  v50 = v97;
  v51 = v98;
  v54 = v101;
  v55 = v93;
  v56 = v94;
  v57 = v95;
  v58 = v96;
  v59 = v88;
  v62 = v91;
  v63 = v92;
  LOBYTE(v37) = v7;
  *(&v37 + 1) = v10;
  v43 = v107;
  v44 = v35;
  v45 = v34;
  v46 = v30;
  v47 = v33;
  v48 = v19;
  v49 = v32;
  v60 = v89;
  v61 = v90;
  v66 = v86;
  v67 = v87;
  v64 = v84;
  v65 = v85;
  return sub_1D76DD09C(&v37);
}

unint64_t sub_1D76DD0CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x61746144707061;
    v6 = 0x6174614464656566;
    v7 = 0x6C61727265666572;
    if (a1 != 3)
    {
      v7 = 0x7461446575737369;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6174614472657375;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 8)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0x446E6F6974636573;
    v3 = 0xD000000000000013;
    if (a1 == 6)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D76DD254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76DF0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76DD27C(uint64_t a1)
{
  v2 = sub_1D76DDA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76DD2B8(uint64_t a1)
{
  v2 = sub_1D76DDA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticleInterstitialAdContext.encode(to:)(void *a1)
{
  sub_1D76DE498(0, &qword_1EC9BDCA0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v30 - v7;
  v9 = *(v1 + 4);
  v71 = *(v1 + 3);
  v72 = v9;
  v73 = *(v1 + 5);
  v10 = *(v1 + 2);
  v69 = *(v1 + 1);
  v70 = v10;
  v11 = *(v1 + 13);
  v77 = *(v1 + 12);
  v78 = v11;
  v12 = *(v1 + 15);
  v79 = *(v1 + 14);
  v80 = v12;
  v13 = *(v1 + 11);
  v75 = *(v1 + 10);
  v76 = v13;
  v14 = *(v1 + 17);
  v81 = *(v1 + 16);
  v15 = *(v1 + 18);
  v16 = *(v1 + 19);
  v82 = v14;
  v83 = v15;
  v17 = *(v1 + 23);
  v87 = *(v1 + 22);
  v88 = v17;
  v18 = *(v1 + 20);
  v86 = *(v1 + 21);
  v19 = *v1;
  v37 = *(v1 + 1);
  v74 = *(v1 + 12);
  v36 = v1[104];
  v20 = *(v1 + 14);
  v34 = *(v1 + 15);
  v35 = v20;
  v33 = *(v1 + 64);
  v21 = *(v1 + 18);
  *&v32 = *(v1 + 17);
  *(&v32 + 1) = v21;
  v31 = *(v1 + 19);
  v84 = v16;
  v85 = v18;
  v22 = *(v1 + 27);
  v91 = *(v1 + 26);
  v92 = v22;
  v23 = *(v1 + 25);
  v89 = *(v1 + 24);
  v90 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DDA20();
  v24 = v8;
  sub_1D7704B10();
  LOBYTE(v63) = v19;
  LOBYTE(v61[0]) = 0;
  sub_1D7669D40();
  v25 = v38;
  sub_1D7704A00();
  if (v25)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v26 = v36;
  v28 = v34;
  v27 = v35;
  *&v63 = v37;
  LOBYTE(v61[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  v97 = 2;
  sub_1D768FE24(&v69, v61);
  sub_1D766CFCC();
  sub_1D7704A00();
  v38 = v5;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v62 = v68;
  v61[0] = v63;
  v61[1] = v64;
  sub_1D768FE5C(v61);
  LOBYTE(v56) = v26;
  LOBYTE(v55[0]) = 3;
  sub_1D768A434();
  sub_1D77049B0();
  *&v56 = v27;
  *(&v56 + 1) = v28;
  LOWORD(v57) = v33;
  LOBYTE(v55[0]) = 4;
  sub_1D76922B4();

  sub_1D77049B0();

  v56 = v32;
  LOBYTE(v55[0]) = 5;
  sub_1D7692308();

  sub_1D77049B0();

  *&v56 = v31;
  LOBYTE(v55[0]) = 6;
  sub_1D76DDA74();
  sub_1D7704A00();
  v58 = v77;
  v59 = v78;
  v60 = v79;
  v56 = v75;
  v57 = v76;
  v96 = 7;
  sub_1D768DF4C(&v75, v55);
  sub_1D768E278();
  sub_1D7704A00();
  v55[2] = v58;
  v55[3] = v59;
  v55[4] = v60;
  v55[0] = v56;
  v55[1] = v57;
  sub_1D768DF84(v55);
  v51 = v80;
  v52 = v81;
  v53 = v82;
  v54 = v83;
  v95 = 8;
  sub_1D7690E7C(&v80, &v45);
  sub_1D769220C();
  sub_1D7704A00();
  v50[0] = v51;
  v50[1] = v52;
  v50[2] = v53;
  v50[3] = v54;
  sub_1D76917F0(v50);
  v47 = v86;
  v48 = v87;
  v49 = v88;
  v45 = v84;
  v46 = v85;
  v94 = 9;
  sub_1D768DF4C(&v84, v44);
  sub_1D7704A00();
  v44[2] = v47;
  v44[3] = v48;
  v44[4] = v49;
  v44[0] = v45;
  v44[1] = v46;
  sub_1D768DF84(v44);
  v40 = v89;
  v41 = v90;
  v42 = v91;
  v43 = v92;
  v93 = 10;
  sub_1D7690E7C(&v89, v39);
  sub_1D7704A00();
  v39[0] = v40;
  v39[1] = v41;
  v39[2] = v42;
  v39[3] = v43;
  sub_1D76917F0(v39);
  return (*(v5 + 8))(v24, v4);
}

unint64_t sub_1D76DDA20()
{
  result = qword_1EC9BDCA8;
  if (!qword_1EC9BDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCA8);
  }

  return result;
}

unint64_t sub_1D76DDA74()
{
  result = qword_1EE0AFAE0[0];
  if (!qword_1EE0AFAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AFAE0);
  }

  return result;
}

uint64_t ArticleInterstitialAdContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76DE498(0, &qword_1EC9BDCB0, MEMORY[0x1E69E6F48]);
  v118 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DDA20();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = a2;
  LOBYTE(v26[0]) = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v11 = v27;
  LOBYTE(v26[0]) = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v25 = v27;
  v83 = 2;
  sub_1D766CDD0();
  sub_1D7704970();
  v113 = v86;
  v114 = v87;
  v115 = v88;
  v116 = v89;
  v111 = v84;
  v112 = v85;
  LOBYTE(v26[0]) = 3;
  sub_1D768AAE4();
  v24 = 0;
  sub_1D7704920();
  v22 = v27;
  LOBYTE(v26[0]) = 4;
  sub_1D7692DEC();
  sub_1D7704920();
  v21 = v27;
  v20 = v28;
  LOBYTE(v26[0]) = 5;
  sub_1D7692E40();
  sub_1D7704920();
  v23 = *(&v27 + 1);
  v19 = v27;
  LOBYTE(v26[0]) = 6;
  sub_1D76DE4FC();
  sub_1D7704970();
  v17 = v27;
  v77 = 7;
  v18 = sub_1D768E224();
  sub_1D7704970();
  v105 = v80;
  v106 = v81;
  v107 = v82;
  v104 = v79;
  v103 = v78;
  v72 = 8;
  v16[1] = sub_1D7692D44();
  sub_1D7704970();
  v99 = v73;
  v100 = v74;
  v101 = v75;
  v102 = v76;
  v66 = 9;
  sub_1D7704970();
  v96 = v69;
  v97 = v70;
  v98 = v71;
  v95 = v68;
  v94 = v67;
  v61 = 10;
  sub_1D7704970();
  (*(v6 + 8))(v9, v118);
  v90 = v62;
  v91 = v63;
  v92 = v64;
  v93 = v65;
  v26[1] = v111;
  v26[2] = v112;
  v26[4] = v114;
  v26[5] = v115;
  v26[3] = v113;
  v26[12] = v105;
  v26[13] = v106;
  v26[10] = v103;
  v26[11] = v104;
  v26[16] = v100;
  v26[17] = v101;
  v26[14] = v107;
  v26[15] = v99;
  v26[18] = v102;
  v26[19] = v94;
  v26[22] = v97;
  v26[23] = v98;
  LOBYTE(v26[0]) = v11;
  *(v26 + 1) = v117[0];
  DWORD1(v26[0]) = *(v117 + 3);
  v12 = v25;
  *(&v26[0] + 1) = v25;
  *&v26[6] = v116;
  v13 = v22;
  BYTE8(v26[6]) = v22;
  HIDWORD(v26[6]) = *&v110[3];
  *(&v26[6] + 9) = *v110;
  v26[7] = v21;
  LOWORD(v26[8]) = v20;
  WORD3(v26[8]) = v109;
  *(&v26[8] + 2) = v108;
  v14 = v23;
  *(&v26[8] + 1) = v19;
  *&v26[9] = v23;
  *(&v26[9] + 1) = v17;
  v26[20] = v95;
  v26[21] = v96;
  v26[26] = v64;
  v26[27] = v65;
  v26[24] = v62;
  v26[25] = v63;
  memcpy(v10, v26, 0x1C0uLL);
  sub_1D76DD064(v26, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v27) = v11;
  *(&v27 + 1) = v117[0];
  DWORD1(v27) = *(v117 + 3);
  *(&v27 + 1) = v12;
  v30 = v113;
  v31 = v114;
  v32 = v115;
  v33 = v116;
  v28 = v111;
  v29 = v112;
  v34 = v13;
  *v35 = *v110;
  *&v35[3] = *&v110[3];
  v36 = v21;
  v37 = v20;
  v38 = v108;
  v39 = v109;
  v40 = v19;
  v41 = v14;
  v42 = v17;
  v45 = v105;
  v46 = v106;
  v43 = v103;
  v44 = v104;
  v49 = v100;
  v50 = v101;
  v47 = v107;
  v48 = v99;
  v51 = v102;
  v52 = v94;
  v55 = v97;
  v56 = v98;
  v53 = v95;
  v54 = v96;
  v59 = v92;
  v60 = v93;
  v57 = v90;
  v58 = v91;
  return sub_1D76DD09C(&v27);
}

void sub_1D76DE498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76DDA20();
    v7 = a3(a1, &type metadata for ArticleInterstitialAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76DE4FC()
{
  result = qword_1EE0AFAD8;
  if (!qword_1EE0AFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFAD8);
  }

  return result;
}

id ArticleInterstitialAdContext.newsSupplementalContext.getter()
{
  v39 = sub_1D77038A0();
  v1 = *(v39 - 8);
  v3 = MEMORY[0x1EEE9AC00](v39, v2);
  v40 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v38 - v6;
  v8 = *(v0 + 64);
  v65 = *(v0 + 48);
  v66 = v8;
  v67 = *(v0 + 80);
  v68 = *(v0 + 96);
  v9 = *(v0 + 32);
  v63 = *(v0 + 16);
  v64 = v9;
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 144);
  v38[0] = *(v0 + 136);
  v38[1] = v11;
  v41 = v14;
  v42 = *(v0 + 152);
  v16 = *(v0 + 224);
  v15 = *(v0 + 240);
  v17 = *(v0 + 192);
  v72 = *(v0 + 208);
  v73 = v16;
  v18 = *(v0 + 176);
  v69 = *(v0 + 160);
  v70 = v18;
  v71 = v17;
  v19 = *(v0 + 256);
  v20 = *(v0 + 288);
  v21 = *(v0 + 304);
  v76 = *(v0 + 272);
  v77 = v20;
  v74 = v15;
  v75 = v19;
  v22 = *(v0 + 368);
  v81 = *(v0 + 352);
  v82 = v22;
  v23 = *(v0 + 336);
  v79 = *(v0 + 320);
  v80 = v23;
  v78 = v21;
  v24 = *(v0 + 384);
  v25 = *(v0 + 400);
  v26 = *(v0 + 432);
  v85 = *(v0 + 416);
  v86 = v26;
  v83 = v24;
  v84 = v25;
  v27 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v69, v61);
  sub_1D7690E7C(&v74, v61);
  sub_1D768DF4C(&v78, v61);
  sub_1D7690E7C(&v83, v61);
  v28 = [v27 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  if (v10 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  v57 = v65;
  v58 = v66;
  v59 = v67;
  v60 = v68;
  v55 = v63;
  v56 = v64;
  sub_1D768FE24(&v63, v61);
  sub_1D768FE24(&v63, v61);
  sub_1D768078C(&v55);
  v61[2] = v57;
  v61[3] = v58;
  v61[4] = v59;
  v62 = v60;
  v61[0] = v55;
  v61[1] = v56;
  sub_1D76939B0(v61, &qword_1EE0B0468);
  if (v12)
  {

    sub_1D7703AD0();
    v29 = *(v1 + 104);
    v30 = *MEMORY[0x1E69C5F50];
    v31 = *MEMORY[0x1E69C5F58];
    v32 = v13;
    if (v13)
    {
      v33 = v30;
    }

    else
    {
      v33 = v31;
    }

    v34 = v39;
    v29(v7, v33, v39);
    sub_1D7703B80();
    if ((v32 & 0x100) != 0)
    {
      v35 = v30;
    }

    else
    {
      v35 = v31;
    }

    v29(v40, v35, v34);
    sub_1D7703BE0();
  }

  if (v41)
  {
    if ((BYTE8(v64) & 1) != 0 || v64 >= 1)
    {
    }

    sub_1D7703C10();
  }

  sub_1D768FE5C(&v63);
  v36 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  [v36 initWithInteger_];
  sub_1D7703CD0();
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v55 = v69;
  v56 = v70;
  v47 = v74;
  v48 = v75;
  v49 = v76;
  v50 = v77;
  sub_1D76B9AA8(&v55, &v47);
  v52[0] = v47;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v50;
  sub_1D76939B0(v52, &qword_1EE0B02E8);
  v53[2] = v57;
  v53[3] = v58;
  v53[4] = v59;
  v53[0] = v55;
  v53[1] = v56;
  sub_1D76939B0(v53, &qword_1EE0B0300);
  v49 = v80;
  v50 = v81;
  v51 = v82;
  v47 = v78;
  v48 = v79;
  v43 = v83;
  v44 = v84;
  v45 = v85;
  v46 = v86;
  sub_1D76B9740(&v47, &v43);
  v54[0] = v43;
  v54[1] = v44;
  v54[2] = v45;
  v54[3] = v46;
  sub_1D76939B0(v54, &qword_1EE0B02E8);
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v55 = v47;
  v56 = v48;
  sub_1D76939B0(&v55, &qword_1EE0B0300);
  return v28;
}

uint64_t ArticleInterstitialAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = v0[38];
  if (!v0[47] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v5, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t ArticleInterstitialAdContext.nextPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = v0[20];
  if (!v0[29] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v5, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t sub_1D76DEE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 448))
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

uint64_t sub_1D76DEED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 448) = 1;
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

    *(result + 448) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76DEF9C()
{
  result = qword_1EC9BDCB8;
  if (!qword_1EC9BDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCB8);
  }

  return result;
}

unint64_t sub_1D76DEFF4()
{
  result = qword_1EC9BDCC0;
  if (!qword_1EC9BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCC0);
  }

  return result;
}

unint64_t sub_1D76DF04C()
{
  result = qword_1EC9BDCC8;
  if (!qword_1EC9BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCC8);
  }

  return result;
}

uint64_t sub_1D76DF0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7718E90 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D7718EB0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D7718ED0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7718EF0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7718F10 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

NewsAds::FeedGroupAdData::AdjacentPosition_optional __swiftcall FeedGroupAdData.AdjacentPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedGroupAdData.AdjacentPosition.rawValue.getter()
{
  v1 = 7368564;
  v2 = 1952867692;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 0x6D6F74746F62;
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

uint64_t sub_1D76DF51C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D76DF5C8()
{
  sub_1D77042D0();
}

uint64_t sub_1D76DF660()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

void sub_1D76DF714(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6F74746F62;
    v2 = 0xE600000000000000;
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

uint64_t FeedGroupAdData.Article.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupAdData.Article.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedGroupAdData.Article.language.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FeedGroupAdData.Article.init(headline:adjacentPosition:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = [a1 identifier];
  v7 = sub_1D7704260();
  v9 = v8;

  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D7704260();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = [a1 language];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D7704260();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 iAdKeywords];
  if (v20)
  {
    v29 = v19;
    v21 = v17;
    v22 = v14;
    v23 = v12;
    v24 = v9;
    v25 = v7;
    v26 = v5;
    v27 = v20;
    v28 = sub_1D7704400();
    swift_unknownObjectRelease();

    v5 = v26;
    v7 = v25;
    v9 = v24;
    v12 = v23;
    v14 = v22;
    v17 = v21;
    v19 = v29;
  }

  else
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  *(a3 + 48) = v28;
  *(a3 + 56) = v5;
}

uint64_t sub_1D76DFA5C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65676175676E616CLL;
  v4 = 0x7364726F7779656BLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D76DFAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76E1840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76DFB24(uint64_t a1)
{
  v2 = sub_1D76DFE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76DFB60(uint64_t a1)
{
  v2 = sub_1D76DFE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupAdData.Article.encode(to:)(void *a1)
{
  sub_1D76E0F9C(0, &qword_1EC9BDCD0, sub_1D76DFE38, &type metadata for FeedGroupAdData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v9 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v9;
  v10 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v10;
  v16 = *(v1 + 48);
  HIDWORD(v15) = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DFE38();
  sub_1D7704B10();
  v28 = 0;
  v11 = v21;
  sub_1D77049C0();
  if (!v11)
  {
    v12 = v16;
    v13 = BYTE4(v15);
    v27 = 1;
    sub_1D77049C0();
    v26 = 2;
    sub_1D77049A0();
    v22 = v12;
    v25 = 3;
    sub_1D76784F8(0, &qword_1EE0AED80);
    sub_1D76E0318(&qword_1EC9BE010);
    sub_1D7704A00();
    v24 = v13;
    v23 = 4;
    sub_1D76DFE8C();
    sub_1D7704A00();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76DFE38()
{
  result = qword_1EC9BDCD8;
  if (!qword_1EC9BDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCD8);
  }

  return result;
}

unint64_t sub_1D76DFE8C()
{
  result = qword_1EC9BDCE0;
  if (!qword_1EC9BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCE0);
  }

  return result;
}

uint64_t FeedGroupAdData.Article.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D76E0F9C(0, &qword_1EC9BDCE8, sub_1D76DFE38, &type metadata for FeedGroupAdData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76DFE38();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  LOBYTE(v34[0]) = 0;
  v11 = sub_1D7704930();
  v13 = v12;
  LOBYTE(v34[0]) = 1;
  v14 = sub_1D7704930();
  v29 = v15;
  v27 = v14;
  LOBYTE(v34[0]) = 2;
  v26 = sub_1D7704910();
  v28 = v16;
  sub_1D76784F8(0, &qword_1EE0AED80);
  LOBYTE(v31) = 3;
  sub_1D76E0318(&qword_1EC9BD1D0);
  sub_1D7704970();
  v25 = v34[0];
  v36 = 4;
  sub_1D76E0388();
  sub_1D7704970();
  (*(v10 + 8))(v9, v30);
  LODWORD(v30) = v37;
  *&v31 = v11;
  *(&v31 + 1) = v13;
  v17 = v27;
  v24 = v13;
  v19 = v28;
  v18 = v29;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v20 = v26;
  *v33 = v26;
  *&v33[8] = v28;
  v21 = v25;
  *&v33[16] = v25;
  v33[24] = v37;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  a2[2] = *v33;
  *(a2 + 41) = *&v33[9];
  sub_1D76ABB5C(&v31, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v24;
  v34[2] = v17;
  v34[3] = v18;
  v34[4] = v20;
  v34[5] = v19;
  v34[6] = v21;
  v35 = v30;
  return sub_1D76ABBB8(v34);
}

uint64_t sub_1D76E0318(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D76784F8(255, &qword_1EE0AED80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D76E0388()
{
  result = qword_1EC9BDCF0;
  if (!qword_1EC9BDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDCF0);
  }

  return result;
}

uint64_t FeedGroupAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupAdData.channelIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall FeedGroupAdData.init(identifier:adCategories:adKeywords:languages:contentProviderID:channelIdentifier:adjacentArticles:)(NewsAds::FeedGroupAdData *__return_ptr retstr, Swift::String identifier, Swift::OpaquePointer adCategories, Swift::OpaquePointer adKeywords, Swift::OpaquePointer languages, Swift::Int contentProviderID, Swift::String_optional channelIdentifier, Swift::OpaquePointer adjacentArticles)
{
  retstr->identifier = identifier;
  retstr->adCategories = adCategories;
  retstr->adKeywords = adKeywords;
  retstr->languages = languages;
  retstr->contentProviderID = contentProviderID;
  retstr->channelIdentifier = channelIdentifier;
  retstr->adjacentArticles = adjacentArticles;
}

uint64_t sub_1D76E04B0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6F67657461436461;
    if (v1 != 1)
    {
      v5 = 0x726F7779654B6461;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 != 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0x65676175676E616CLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D76E05A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D76E19FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D76E05D8(uint64_t a1)
{
  v2 = sub_1D76E0994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76E0614(uint64_t a1)
{
  v2 = sub_1D76E0994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupAdData.encode(to:)(void *a1)
{
  sub_1D76E0F9C(0, &qword_1EC9BDCF8, sub_1D76E0994, &type metadata for FeedGroupAdData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - v7;
  v9 = v1[2];
  v22 = v1[3];
  v23 = v9;
  v10 = v1[4];
  v20 = v1[5];
  v21 = v10;
  v11 = v1[7];
  v18 = v1[6];
  v19 = v11;
  v17 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E0994();
  sub_1D7704B10();
  LOBYTE(v26) = 0;
  v12 = v24;
  sub_1D77049C0();
  if (!v12)
  {
    v14 = v21;
    v13 = v22;
    v26 = v23;
    v25 = 1;
    sub_1D76784F8(0, &qword_1EE0AED80);
    sub_1D76E0318(&qword_1EC9BE010);
    sub_1D7704A00();
    v26 = v13;
    v25 = 2;
    sub_1D7704A00();
    v26 = v14;
    v25 = 3;
    sub_1D7704A00();
    LOBYTE(v26) = 4;
    sub_1D77049F0();
    LOBYTE(v26) = 5;
    sub_1D77049A0();
    v26 = v17;
    v25 = 6;
    sub_1D76784F8(0, &qword_1EC9BDD08);
    sub_1D76E1004(&qword_1EC9BDD10, sub_1D76E09E8);
    sub_1D7704A00();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76E0994()
{
  result = qword_1EC9BDD00;
  if (!qword_1EC9BDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD00);
  }

  return result;
}

unint64_t sub_1D76E09E8()
{
  result = qword_1EC9BDD18;
  if (!qword_1EC9BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD18);
  }

  return result;
}

uint64_t FeedGroupAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D76E0F9C(0, &qword_1EC9BDD20, sub_1D76E0994, &type metadata for FeedGroupAdData.CodingKeys, MEMORY[0x1E69E6F48]);
  v33 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76E0994();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v32 = a2;
  LOBYTE(v39[0]) = 0;
  *&v31 = sub_1D7704930();
  *(&v31 + 1) = v11;
  sub_1D76784F8(0, &qword_1EE0AED80);
  LOBYTE(v34) = 1;
  sub_1D76E0318(&qword_1EC9BD1D0);
  sub_1D7704970();
  v12 = v39[0];
  LOBYTE(v34) = 2;
  sub_1D7704970();
  v13 = v39[0];
  LOBYTE(v34) = 3;
  sub_1D7704970();
  v30 = v39[0];
  LOBYTE(v39[0]) = 4;
  v14 = sub_1D7704960();
  LOBYTE(v39[0]) = 5;
  v28 = sub_1D7704910();
  v29 = v14;
  v16 = v15;
  sub_1D76784F8(0, &qword_1EC9BDD08);
  v40 = 6;
  sub_1D76E1004(&qword_1EC9BDD28, sub_1D76E1080);
  sub_1D7704970();
  (*(v10 + 8))(v9, v33);
  v17 = v41;
  v18 = v31;
  v19 = v13;
  v27 = v13;
  v20 = *(&v31 + 1);
  v34 = v31;
  *&v35 = v12;
  *(&v35 + 1) = v19;
  v21 = v30;
  *&v36 = v30;
  *(&v36 + 1) = v29;
  *&v37 = v28;
  *(&v37 + 1) = v16;
  v22 = v16;
  v38 = v41;
  v23 = v32;
  *(v32 + 64) = v41;
  v24 = v37;
  v23[2] = v36;
  v23[3] = v24;
  v25 = v35;
  *v23 = v34;
  v23[1] = v25;
  sub_1D7690F3C(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v18;
  v39[1] = v20;
  v39[2] = v12;
  v39[3] = v27;
  v39[4] = v21;
  v39[5] = v29;
  v39[6] = v28;
  v39[7] = v22;
  v39[8] = v17;
  return sub_1D769179C(v39);
}

void sub_1D76E0F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D76E1004(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D76784F8(255, &qword_1EC9BDD08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D76E1080()
{
  result = qword_1EC9BDD30;
  if (!qword_1EC9BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD30);
  }

  return result;
}

uint64_t FeedGroupAdData.init(identifier:adjacentArticles:tag:contentProviderID:keywords:)@<X0>(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a1 && (v10 = [a1 asTopic]) != 0 && (v11 = objc_msgSend(v10, sel_iAdCategories), swift_unknownObjectRelease(), v11))
  {
    v33 = sub_1D7704400();
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1D7676B5C(a4);

  v13 = 0;
  v14 = 0;
  v15 = *(a4 + 16);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v17 = a4 + (v13 << 6);
  while (v15 != v13)
  {
    if (v13 >= *(a4 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = (v17 + 64);
    ++v13;
    v19 = *(v17 + 72);
    v17 += 64;
    if (v19)
    {
      v30 = v14;
      v31 = a3;
      v20 = *v18;

      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = a5;
      if ((result & 1) == 0)
      {
        result = sub_1D7669634(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1D7669634((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v19;
      a5 = v21;
      v14 = v30;
      a3 = v31;
      goto LABEL_7;
    }
  }

  sub_1D76784F8(0, &qword_1EE0AED80);
  sub_1D766C8DC();
  v25 = sub_1D7704330();

  if (a1)
  {
    v26 = [a1 identifier];
    v27 = sub_1D7704260();
    v29 = v28;

    result = swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *a6 = a2;
  a6[1] = a3;
  a6[2] = v33;
  a6[3] = v32;
  a6[4] = v25;
  a6[5] = a5;
  a6[6] = v27;
  a6[7] = v29;
  a6[8] = a4;
  return result;
}

unint64_t sub_1D76E1384()
{
  result = qword_1EC9BDD38;
  if (!qword_1EC9BDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD38);
  }

  return result;
}

unint64_t sub_1D76E13D8(uint64_t a1)
{
  *(a1 + 8) = sub_1D7692D98();
  result = sub_1D7692260();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76E1408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D76E1450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76E14C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D76E1508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76E1558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFBB && *(a1 + 16))
  {
    return (*a1 + 2147483580);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 67;
  if (v4 >= 0x45)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76E15B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFBC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483580;
    if (a3 >= 0x7FFFFFBC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFBC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 67;
    }
  }

  return result;
}

unint64_t sub_1D76E1634()
{
  result = qword_1EC9BDD40;
  if (!qword_1EC9BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD40);
  }

  return result;
}

unint64_t sub_1D76E168C()
{
  result = qword_1EC9BDD48;
  if (!qword_1EC9BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD48);
  }

  return result;
}

unint64_t sub_1D76E16E4()
{
  result = qword_1EC9BDD50;
  if (!qword_1EC9BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD50);
  }

  return result;
}

unint64_t sub_1D76E173C()
{
  result = qword_1EC9BDD58;
  if (!qword_1EC9BDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD58);
  }

  return result;
}

unint64_t sub_1D76E1794()
{
  result = qword_1EC9BDD60;
  if (!qword_1EC9BDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD60);
  }

  return result;
}

unint64_t sub_1D76E17EC()
{
  result = qword_1EC9BDD68;
  if (!qword_1EC9BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD68);
  }

  return result;
}

uint64_t sub_1D76E1840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7714640 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D76E19FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D77191B0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D77191D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D76E1C60()
{
  result = qword_1EC9BDD70;
  if (!qword_1EC9BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BDD70);
  }

  return result;
}

uint64_t SponsorshipAdInfo.SponsorshipAdInfoData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsorshipAdInfo.SponsorshipAdInfoData.placementIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsorshipAdInfo.SponsorshipAdInfoData.feedIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t static SponsorshipAdInfo.SponsorshipAdInfoData.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D7704A30(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_1D7704A30();
    }
  }

  return result;
}

uint64_t sub_1D76E1DD4(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D7704A30(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_1D7704A30();
    }
  }

  return result;
}

uint64_t SponsorshipAdInfo.identifier.getter()
{
  sub_1D7680B78(v0, v5);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v4 = v6;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_1D7680BB0(v3);
  return v1;
}

uint64_t SponsorshipAdInfo.keywords.getter()
{
  sub_1D7680B78(v0, v7);
  v5[4] = v7[4];
  v5[5] = v7[5];
  v6 = v8;
  v5[0] = v7[0];
  v5[1] = v7[1];
  v5[2] = v7[2];
  v5[3] = v7[3];
  v1 = sub_1D7703D20();
  if (!v1 || (v2 = v1, v3 = sub_1D7703B30(), v2, !v3))
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7680BB0(v5);
  return v3;
}

uint64_t SponsorshipAdInfo.placementIdentifier.getter()
{
  sub_1D7680B78(v0, &v5);
  v3[4] = v9;
  v3[5] = v10;
  v4 = v11;
  v3[0] = v5;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v1 = v6;

  sub_1D7680BB0(v3);
  return v1;
}

uint64_t SponsorshipAdInfo.feedIdentifier.getter()
{
  sub_1D7680B78(v0, v5);
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v8;
  v3[5] = v9;
  v4 = v10;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v1 = v6;

  sub_1D7680BB0(v3);
  return v1;
}

uint64_t SponsorshipAdInfo.metricsView.getter()
{
  sub_1D7680B78(v0, v7);
  v5[1] = v7[4];
  v5[2] = v8;
  v6 = v9;
  v4[0] = v7[0];
  v4[1] = v7[1];
  v4[2] = v7[2];
  v5[0] = v7[3];
  v1 = v8;
  __swift_project_boxed_opaque_existential_1(v5 + 1, v8);
  v2 = (*(*(&v1 + 1) + 16))(v1, *(&v1 + 1));
  sub_1D7680BB0(v4);
  return v2;
}

uint64_t _s7NewsAds17SponsorshipAdInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7680B78(a1, v8);
  sub_1D7680B78(a2, &v9);
  if ((v8[104] & 1) == 0)
  {
    sub_1D7680B78(v8, v7);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5[4] = v13;
    v5[5] = v14;
    v6 = v15;
    v5[0] = v9;
    v5[1] = v10;
    v5[2] = v11;
    v5[3] = v12;
    if (v7[1] == v10 || (sub_1D7704A30() & 1) != 0)
    {
      if (v7[0] == v5[0])
      {
        sub_1D7680BB0(v5);
        sub_1D7680BB0(v7);
LABEL_10:
        sub_1D7680CFC(v8);
        return 1;
      }

      v3 = sub_1D7704A30();
      sub_1D7680BB0(v5);
      sub_1D7680BB0(v7);
      if (v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1D7680BB0(v5);
      sub_1D7680BB0(v7);
    }

    sub_1D7680CFC(v8);
    return 0;
  }

  sub_1D7680B78(v8, v7);
  if (v16 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7680BB0(v7);
  sub_1D76E22F4(v8);
  return 0;
}

uint64_t sub_1D76E2254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D76E229C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D76E22F4(uint64_t a1)
{
  sub_1D76E2350();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76E2350()
{
  if (!qword_1EC9BDD78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BDD78);
    }
  }
}

uint64_t sub_1D76E23AC@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D77045E0();
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77045C0();
  (MEMORY[0x1EEE9AC00])();
  sub_1D7704110();
  (MEMORY[0x1EEE9AC00])();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &unk_1EE0AF928);
  result = sub_1D7703410();
  if (v27)
  {
    sub_1D766844C(0, &qword_1EE0AED30);
    sub_1D77040E0();
    v25[0] = MEMORY[0x1E69E7CC0];
    sub_1D7667EA8(&qword_1EE0AED38, MEMORY[0x1E69E8030]);
    sub_1D7667BCC(0, &qword_1EE0AED60, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1D76E4F58();
    sub_1D77046E0();
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v3);
    v8 = sub_1D7704610();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for AdSegmentUpdater();
    v25[3] = v14;
    v25[4] = &off_1F52573A8;
    v25[0] = v13;
    v15 = type metadata accessor for AdSegmentManager();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v14);
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = sub_1D76E4B98(*v19, v8, v16, 10.0);
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    v22 = v24;
    v24[3] = v15;
    v22[4] = &off_1F52535B8;
    *v22 = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D76E2820@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0AF3B8);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AdStatusConditionReporter();
    v17[3] = v9;
    v17[4] = &off_1F5257070;
    v17[0] = v8;
    v10 = type metadata accessor for AdStatusConditionManager();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5257070;
    v11[2] = v16;
    v11[7] = MEMORY[0x1E69E7CC0];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &protocol witness table for AdStatusConditionManager;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D76E2AB4()
{
  v14 = sub_1D7703600();
  v0 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdsModuleStartupTask();
  sub_1D7703530();
  sub_1D7667BCC(0, &qword_1EE0AEC80, MEMORY[0x1E69D6C00], MEMORY[0x1E69E6F90]);
  v4 = sub_1D7703740();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7708FD0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x1E69D6BE8], v4);
  v10(v9 + v6, *MEMORY[0x1E69D6BF0], v4);
  sub_1D7703300();

  sub_1D7665328(0, &unk_1EE0AF928);
  sub_1D7703540();

  sub_1D7665328(0, &qword_1EE0AF3B8);
  sub_1D7703540();

  type metadata accessor for AdContextManager();
  sub_1D7703530();
  v11 = v14;
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6AD0], v14);
  sub_1D7703320();

  return (*(v0 + 8))(v3, v11);
}

uint64_t sub_1D76E2DF8(uint64_t a1)
{
  sub_1D7667C54(a1, v3);
  type metadata accessor for AdsModuleStartupTask();
  v1 = swift_allocObject();
  sub_1D7667CB8(v3, v1 + 16);
  *(v1 + 56) = 0;
  return v1;
}

uint64_t sub_1D76E2E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7667C54(a1, v5);
  type metadata accessor for AdsModuleStartupTask();
  v3 = swift_allocObject();
  result = sub_1D7667CB8(v5, v3 + 16);
  *(v3 + 56) = 1;
  *a2 = v3;
  return result;
}

uint64_t sub_1D76E2ED0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D76E2F20@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AdStatusConditionReporter();
  swift_allocObject();
  result = sub_1D76FB8D0();
  a1[3] = v2;
  a1[4] = &off_1F5257070;
  *a1 = result;
  return result;
}

void *sub_1D76E2F78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0B1C08);
  result = sub_1D7703410();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D766844C(0, &unk_1EE0AED18);
    result = sub_1D7703400();
    if (result)
    {
      v3 = result;
      type metadata accessor for AdContextManager();
      swift_allocObject();
      return sub_1D76BF5D4(v4, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D76E305C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D76E4FE0(0, &qword_1EC9BD588, &qword_1EC9BD590, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6EC8]);
  v34 = a2;
  result = sub_1D77048A0();
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
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
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

uint64_t sub_1D76E3324(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D766BB6C(0, &qword_1EC9BDD80);
  v37 = a2;
  result = sub_1D77048A0();
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
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
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

uint64_t sub_1D76E35E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D76ADF8C();
  v30 = a2;
  result = sub_1D77048A0();
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
      }

      sub_1D7704AD0();
      sub_1D77042D0();

      result = sub_1D7704AF0();
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

uint64_t sub_1D76E38A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D766BB6C(0, &qword_1EE0AE5B0);
  v40 = a2;
  result = sub_1D77048A0();
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 72 * v24;
      if (v40)
      {
        v41 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 48);
        v45 = *(v28 + 64);
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        sub_1D76C4394(v28, &v41);
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      *(v17 + 64) = v45;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D76E3B98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D76AE374();
  v34 = a2;
  result = sub_1D77048A0();
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
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        if ((v34 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
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
        goto LABEL_38;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + v19);
      v22 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7704AD0();
      if (!(v21 >> 6))
      {
        break;
      }

      if (v21 >> 6 == 1)
      {
        v23 = v21 & 0x3F;
        v24 = 2;
LABEL_21:
        MEMORY[0x1DA6FF8B0](v24);
        goto LABEL_23;
      }

      v23 = 0;
LABEL_23:
      MEMORY[0x1DA6FF8B0](v23);
      result = sub_1D7704AF0();
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

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v33;
    }

    v24 = 1;
    v23 = v21;
    goto LABEL_21;
  }

LABEL_38:

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1D76E3E54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D76AE1DC();
  v34 = a2;
  result = sub_1D77048A0();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        v25 = v35;
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1D76E4100()
{
  v1 = v0;
  sub_1D76E4FE0(0, &qword_1EC9BD588, &qword_1EC9BD590, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void *sub_1D76E4294()
{
  v1 = v0;
  sub_1D766BB6C(0, &qword_1EC9BDD80);
  v2 = *v0;
  v3 = sub_1D7704890();
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

void *sub_1D76E4410()
{
  v1 = v0;
  sub_1D76ADF8C();
  v2 = *v0;
  v3 = sub_1D7704890();
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

void *sub_1D76E4560()
{
  v1 = v0;
  sub_1D766BB6C(0, &qword_1EE0AE5B0);
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = 72 * v17;
        sub_1D76C4394(*(v2 + 56) + 72 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[3];
        *(v24 + 64) = v30;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
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

        v1 = v28;
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

void *sub_1D76E4728()
{
  v1 = v0;
  sub_1D76AE374();
  v2 = *v0;
  v3 = sub_1D7704890();
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

void *sub_1D76E4878()
{
  v1 = v0;
  sub_1D766BB6C(0, &qword_1EE0AECB0);
  v2 = *v0;
  v3 = sub_1D7704890();
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
        sub_1D767F844(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D766B74C(v25, (*(v4 + 56) + v22));
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

id sub_1D76E4A24()
{
  v1 = v0;
  sub_1D76AE1DC();
  v2 = *v0;
  v3 = sub_1D7704890();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

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

unint64_t sub_1D76E4B98(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  sub_1D7703370();
  MEMORY[0x1EEE9AC00]();
  v37[3] = type metadata accessor for AdSegmentUpdater();
  v37[4] = &off_1F52573A8;
  v37[0] = a1;
  v8 = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = sub_1D76ADD58(MEMORY[0x1E69E7CC0]);
  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  *(a3 + 64) = sub_1D7703380();
  *(a3 + 72) = sub_1D76ADEA4(v8);
  *(a3 + 80) = 0;
  sub_1D7667C54(v37, a3 + 16);
  *(a3 + 88) = a4;
  *(a3 + 96) = a2;
  v9 = a2;
  v10 = sub_1D76ADEA4(v8);
  sub_1D76E4FE0(0, &qword_1EE0B0870, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69D6AA8]);
  v12 = v11;
  v13 = byte_1F524ECC8;
  swift_allocObject();
  v14 = sub_1D77035C0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v10;
  result = sub_1D76B88A4(v13);
  v18 = v10[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    goto LABEL_18;
  }

  v22 = v17;
  if (v10[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = result;
      sub_1D76E4410();
      result = v24;
      v10 = v36;
      if (v22)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1D76E35E8(v21, isUniquelyReferenced_nonNull_native);
    result = sub_1D76B88A4(v13);
    if ((v22 & 1) != (v23 & 1))
    {
      goto LABEL_14;
    }
  }

  if (v22)
  {
LABEL_7:
    *(v10[7] + 8 * result) = v14;

    goto LABEL_11;
  }

LABEL_9:
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + result) = v13;
  *(v10[7] + 8 * result) = v14;
  v25 = v10[2];
  v20 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v20)
  {
    goto LABEL_23;
  }

  v10[2] = v26;
LABEL_11:
  v13 = byte_1F524ECC9;
  swift_allocObject();
  v12 = sub_1D77035C0();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v10;
  result = sub_1D76B88A4(v13);
  v28 = v10[2];
  v29 = (v27 & 1) == 0;
  v20 = __OFADD__(v28, v29);
  v30 = v28 + v29;
  if (v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v14) = v27;
  if (v10[3] >= v30)
  {
    goto LABEL_15;
  }

  sub_1D76E35E8(v30, v22);
  result = sub_1D76B88A4(v13);
  if ((v14 & 1) == (v31 & 1))
  {
    goto LABEL_16;
  }

LABEL_14:
  result = sub_1D7704A70();
  __break(1u);
LABEL_15:
  if (v22)
  {
LABEL_16:
    v32 = v36;
    if (v14)
    {
LABEL_17:
      *(v32[7] + 8 * result) = v12;

LABEL_22:

      __swift_destroy_boxed_opaque_existential_1(v37);
      swift_beginAccess();
      *(a3 + 72) = v32;

      return a3;
    }

    goto LABEL_20;
  }

LABEL_19:
  v33 = result;
  sub_1D76E4410();
  result = v33;
  v32 = v36;
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_20:
  v32[(result >> 6) + 8] |= 1 << result;
  *(v32[6] + result) = v13;
  *(v32[7] + 8 * result) = v12;
  v34 = v32[2];
  v20 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v20)
  {
    v32[2] = v35;
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1D76E4F58()
{
  result = qword_1EE0AED58;
  if (!qword_1EE0AED58)
  {
    sub_1D7667BCC(255, &qword_1EE0AED60, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED58);
  }

  return result;
}

void sub_1D76E4FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D76784F8(255, a3);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}