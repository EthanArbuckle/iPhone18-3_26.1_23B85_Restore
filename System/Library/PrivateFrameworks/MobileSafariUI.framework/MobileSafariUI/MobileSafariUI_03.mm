void sub_215A26EB0(void *a1)
{
  v1 = [a1 symbolImage];
  v2 = [objc_opt_self() sharedApplication];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 tabGroupManager];

  if (!v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = [v4 profiles];

  sub_2159F7DA8(0, &qword_27CA7E7A8);
  v6 = sub_215A705E0();

  if (v6 >> 62)
  {
    v7 = sub_215A70CD0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 2 || v1 == 0)
  {
    v9 = sub_215A70500();
    [objc_opt_self() systemImageNamed_];
  }
}

void sub_215A27030(void *a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 tabGroupManager];

  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = [v8 profiles];

  sub_2159F7DA8(0, &qword_27CA7E7A8);
  v10 = sub_215A705E0();

  if (v10 >> 62)
  {
    v11 = sub_215A70CD0();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_215A6FA50();
  sub_215A6FA40();
  (*(v3 + 8))(v5, v2);
  if (v11 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E220);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_215A96960;
    v13 = [a1 title];
    v14 = sub_215A70540();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2159F501C();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_215A70510();
  }
}

uint64_t _sSo27OpenNewDocumentMenuProviderC14MobileSafariUIE04makeD8Elements3forSaySo13UIMenuElementCGSo16SFBrowserPersonaV_tF_0()
{
  v121 = sub_215A6FA60();
  v0 = *(v121 - 8);
  v1 = MEMORY[0x28223BE20](v121);
  v120 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v119 = &v117 - v3;
  v133 = MEMORY[0x277D84F90];
  v4 = &selRef_setShadowBookmarkList_;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 supportsMultipleScenes];

  if (!v6)
  {
    if ([objc_opt_self() preferredNewDocumentShortcutBehavior])
    {
      v56 = sub_215A26DD0();
      sub_215A26EB0(v56);
      v58 = v57;

      v59 = sub_215A26DD0();
      sub_215A27030(v59);
    }

    else
    {
      if (qword_2811A21F8 != -1)
      {
        swift_once();
      }

      v60 = qword_2811A21F0;
      v58 = qword_2811A2840;
      if (v60 != -1)
      {
        swift_once();
      }
    }

    sub_2159F7DA8(0, &qword_2811A2870);
    v131 = 0u;
    v132 = 0u;
    v61 = v58;
    v62 = sub_215A707F0();
    v63 = [objc_opt_self() sharedProvider];
    v64 = [v63 alwaysAllowWebInterception];

    if (v64)
    {
      [v62 _markHandleAfterKeyEvent];
    }

    MEMORY[0x2160730A0]();
    if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_59:
      sub_215A70640();
    }

    sub_215A70660();
    goto LABEL_75;
  }

  v128 = objc_opt_self();
  v7 = [v128 sharedApplication];
  if (!v7)
  {
    goto LABEL_90;
  }

  v8 = v7;
  v9 = [v7 tabGroupManager];

  if (!v9)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v10 = [v9 profiles];

  sub_2159F7DA8(0, &qword_27CA7E7A8);
  v11 = sub_215A705E0();

  v130 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    v12 = sub_215A70CD0();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  v118 = v0;
  if (v12)
  {
    v0 = 0;
    v126 = v11 & 0xFFFFFFFFFFFFFF8;
    v127 = v11 & 0xC000000000000001;
    v124 = v12;
    v125 = v11;
    while (1)
    {
      if (v127)
      {
        v14 = MEMORY[0x216073710](v0, v11);
      }

      else
      {
        if (v0 >= *(v126 + 16))
        {
          goto LABEL_58;
        }

        v14 = *(v11 + 8 * v0 + 32);
      }

      v15 = v14;
      v16 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v17 = [v14 identifier];
      v18 = sub_215A70540();
      v20 = v19;
      v7 = [v128 v4[440]];
      if (!v7)
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v21 = v7;

      v22 = [v21 lastActiveProfileIdentifier];
      if (v22)
      {
        v23 = sub_215A70540();
        v25 = v24;

        if (v18 == v23 && v20 == v25)
        {

LABEL_21:
          if ([objc_opt_self() preferredNewDocumentShortcutBehavior])
          {
            v27 = sub_215A26DD0();
            sub_215A26EB0(v27);
            v29 = v28;

            v30 = sub_215A26DD0();
            sub_215A27030(v30);
          }

          else
          {
            if (qword_2811A21F8 != -1)
            {
              swift_once();
            }

            v47 = qword_2811A21F0;
            v29 = qword_2811A2840;
            if (v47 != -1)
            {
              swift_once();
            }
          }

          sub_2159F7DA8(0, &qword_2811A2870);
          v131 = 0u;
          v132 = 0u;
          v48 = v29;
          v49 = sub_215A707F0();
          v50 = objc_opt_self();
          v51 = [v50 sharedProvider];
          v52 = [v51 alwaysAllowWebInterception];

          if (v52)
          {
            [v49 _markHandleAfterKeyEvent];
          }

          MEMORY[0x2160730A0]();
          v46 = v124;
          v11 = v125;
          if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_215A70640();
          }

          sub_215A70660();
          *(&v132 + 1) = MEMORY[0x277D83E88];
          *&v131 = 1;
          v53 = sub_215A707F0();
          v54 = [v50 sharedProvider];
          v55 = [v54 alwaysAllowWebInterception];

          if (v55)
          {
            [v53 _markHandleAfterKeyEvent];
          }

          MEMORY[0x2160730A0]();
          v4 = &selRef_setShadowBookmarkList_;
          if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_9;
          }

          goto LABEL_29;
        }

        v26 = sub_215A70D90();

        if (v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v129 = v0 + 1;
      sub_215A27030(v15);
      sub_215A26EB0(v15);
      v32 = v31;
      if (v0 > 9)
      {
        sub_2159F7DA8(0, &qword_2811A25C0);
        v42 = [v15 identifier];
        v43 = sub_215A70540();
        v45 = v44;

        *(&v132 + 1) = MEMORY[0x277D837D0];
        *&v131 = v43;
        *(&v131 + 1) = v45;

        sub_215A70B30();
      }

      else
      {
        v33 = sub_2159F7DA8(0, &qword_2811A2870);
        v122 = sel_openNewWindowInProfile_;
        v123 = v33;
        *&v131 = v0;
        sub_215A70D60();
        v34 = [v15 identifier];
        v35 = sub_215A70540();
        v37 = v36;

        *(&v132 + 1) = MEMORY[0x277D837D0];
        *&v131 = v35;
        *(&v131 + 1) = v37;
        v38 = v32;

        v39 = sub_215A707F0();
        v40 = [objc_opt_self() sharedProvider];
        v41 = [v40 alwaysAllowWebInterception];

        if (v41)
        {
          [v39 _markHandleAfterKeyEvent];
        }
      }

      v4 = &selRef_setShadowBookmarkList_;
      v46 = v124;
      v11 = v125;
      v16 = v129;
      MEMORY[0x2160730A0]();
      if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_9;
      }

LABEL_29:
      sub_215A70640();
LABEL_9:
      sub_215A70660();

      ++v0;
      if (v16 == v46)
      {
        v13 = v130;
        v0 = v118;
        break;
      }
    }
  }

  if (v13 >> 62)
  {
    if (sub_215A70CD0() <= 3)
    {
      goto LABEL_47;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 3)
  {
LABEL_47:
    sub_215A2A6D8(v13);
    goto LABEL_65;
  }

  sub_2159F7DA8(0, &unk_2811A26B0);
  v65 = v119;
  sub_215A6FA50();
  v66 = v120;
  sub_215A6FA50();
  sub_215A6FA30();
  v67 = *(v0 + 8);
  v68 = v66;
  v69 = v121;
  v67(v68, v121);
  v67(v65, v69);
  v70 = sub_215A70500();
  v71 = [objc_opt_self() systemImageNamed_];

  sub_215A70A50();
  MEMORY[0x2160730A0]();
  if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
LABEL_65:
  v72 = sub_215A70500();
  v73 = [objc_opt_self() systemImageNamed_];

  v74 = v119;
  sub_215A6FA50();
  v75 = v120;
  sub_215A6FA50();
  sub_215A6FA30();
  v76 = *(v0 + 8);
  v77 = v75;
  v78 = v121;
  v76(v77, v121);
  v76(v74, v78);
  v79 = objc_opt_self();
  v80 = v73;
  v7 = [v79 preferredNewDocumentShortcutBehavior];
  if (v7 > 1)
  {
LABEL_92:
    v116 = v7;
    type metadata accessor for SFNewDocumentShortcutBehavior(0);
    *&v131 = v116;
    result = sub_215A70DB0();
    __break(1u);
    return result;
  }

  sub_2159F7DA8(0, &qword_2811A2870);
  v131 = 0u;
  v132 = 0u;

  v81 = sub_215A707F0();
  v82 = objc_opt_self();
  v83 = [v82 sharedProvider];
  v84 = [v83 alwaysAllowWebInterception];

  if (v84)
  {
    [v81 _markHandleAfterKeyEvent];
  }

  MEMORY[0x2160730A0]();
  if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v85 = [v79 preferredNewDocumentShortcutBehavior];
  v0 = v118;
  if (v85 == 1)
  {
    *(&v132 + 1) = MEMORY[0x277D83E88];
    *&v131 = 1;
    v86 = sub_215A707F0();
    v87 = [v82 sharedProvider];
    v88 = [v87 alwaysAllowWebInterception];

    if (v88)
    {
      [v86 _markHandleAfterKeyEvent];
    }
  }

  else
  {
    v86 = 0;
  }

  *&v131 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E7A0);
  sub_215A705F0();

LABEL_75:
  if (qword_2811A21F8 != -1)
  {
    swift_once();
  }

  v89 = qword_2811A2840;
  if (qword_2811A21F0 != -1)
  {
    swift_once();
  }

  v90 = v119;
  sub_215A6FA50();
  v91 = v120;
  sub_215A6FA50();
  sub_215A6FA30();
  v92 = *(v0 + 8);
  v93 = v91;
  v94 = v121;
  v92(v93, v121);
  v92(v90, v94);
  v95 = sub_215A70500();

  v96 = [objc_opt_self() alternateWithTitle:v95 action:sel_newTabWithAlternativeOrderingKeyPressed modifierFlags:0x80000];

  sub_2159F7DA8(0, &qword_2811A2870);
  v131 = 0u;
  v132 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_215A96990;
  *(v97 + 32) = v96;
  v98 = v89;
  v99 = v96;

  v100 = sub_215A707F0();
  v101 = sub_215A70500();
  [v100 setDiscoverabilityTitle_];

  v102 = objc_opt_self();
  v103 = [v102 sharedProvider];
  v104 = [v103 alwaysAllowWebInterception];

  if (v104)
  {
    [v100 _markHandleAfterKeyEvent];
  }

  MEMORY[0x2160730A0]();
  if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  if ([objc_opt_self() preferredNewDocumentShortcutBehavior])
  {
    v105 = 0;
  }

  else
  {
    v106 = sub_215A70500();
    v107 = [objc_opt_self() systemImageNamed_];

    v108 = v119;
    sub_215A6FA50();
    v109 = v120;
    sub_215A6FA50();
    sub_215A6FA30();
    v110 = v109;
    v111 = v121;
    v92(v110, v121);
    v92(v108, v111);
    v131 = 0u;
    v132 = 0u;
    v112 = v107;
    v105 = sub_215A707F0();
    v113 = [v102 sharedProvider];
    v114 = [v113 alwaysAllowWebInterception];

    if (v114)
    {
      [v105 _markHandleAfterKeyEvent];
    }
  }

  *&v131 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E7A0);
  sub_215A705F0();

  return v133;
}

void sub_215A2877C()
{
  if ((*(v0 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_loadingOptions) & 2) != 0)
  {
    v1 = [*(v0 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) allBookmarkLeaves];
    v2 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarksList;
    v3 = *(v0 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarksList);
    *(v0 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarksList) = v1;
    v4 = v1;

    v5 = [v4 bookmarksSortedByDateWithLimit_];
    sub_2159F7DA8(0, &unk_2811A28A0);
    v6 = sub_215A705E0();

    *(v0 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarks) = v6;

    v7 = *(v0 + v2);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_215A41A30;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2159FC8A4;
    v11[3] = &block_descriptor_215;
    v9 = _Block_copy(v11);
    v10 = v7;

    [v10 loadBookmarksArraySortedByDateAsynchronously_];
    _Block_release(v9);
  }
}

uint64_t sub_215A28918(uint64_t a1, int a2)
{
  v49 = a2;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v42 - v4;
  v6 = sub_215A6FED0();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_215A6FA60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarks;
  v48 = v2;
  v15 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarks);
  if (v15 >> 62)
  {
    goto LABEL_41;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v17 = 30;
    if (v16 < 30)
    {
      v17 = v16;
    }

    v18 = (v49 & 1) != 0 ? v16 : v17;
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v45 = v9;
      v9 = v15 >> 62;
      if (!(v15 >> 62))
      {
        result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result < v18)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      }
    }

    result = sub_215A70CD0();
    if (result < 0)
    {
      goto LABEL_48;
    }

    result = sub_215A70CD0();
    if (result < v18)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

LABEL_11:
    if ((v15 & 0xC000000000000001) != 0 && v18)
    {
      sub_2159F7DA8(0, &unk_2811A28A0);
      swift_bridgeObjectRetain_n();
      v20 = 0;
      do
      {
        v21 = v20 + 1;
        sub_215A70C20();
        v20 = v21;
      }

      while (v18 != v21);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v22 = v10;

    if (v9)
    {
      v23 = sub_215A70CE0();
      v24 = v25;
      v10 = v26;
      v28 = v27;

      v18 = v28 >> 1;
    }

    else
    {
      v10 = 0;
      v23 = v15 & 0xFFFFFFFFFFFFFF8;
      v24 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    swift_unknownObjectRetain();
    sub_215A6FA50();
    v29 = sub_215A6FA40();
    v31 = v30;
    (*(v11 + 8))(v13, v22);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v32;
    *(v11 + 24) = v29;
    *(v11 + 32) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
    sub_215A6FF70();
    *(swift_allocObject() + 16) = xmmword_215A96960;
    v42[1] = v23;
    if (v49)
    {
      sub_215A6FF60();
    }

    else
    {

      sub_215A6FF50();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
    sub_215A701D0();

    v9 = v18 - v10;
    if (__OFSUB__(v18, v10))
    {
      goto LABEL_46;
    }

    if (!v9)
    {
      break;
    }

    v50 = MEMORY[0x277D84F90];
    sub_215A52BEC(0, v9 & ~(v9 >> 63), 0);
    v13 = v50;
    result = swift_unknownObjectRelease();
    if (v9 < 0)
    {
      goto LABEL_47;
    }

    v42[0] = v11;
    v44 = *MEMORY[0x277D28B68];
    if (v18 <= v10)
    {
      v33 = v10;
    }

    else
    {
      v33 = v18;
    }

    v34 = v33 - v10;
    v14 = (v24 + 8 * v10);
    while (v34)
    {
      v35 = *v14;
      v36 = sub_215A6FE20();
      v37 = *(v36 - 8);
      if (v49)
      {
        v38 = 1;
      }

      else
      {
        (*(*(v36 - 8) + 104))(v5, v44, v36);
        v38 = 0;
      }

      (*(v37 + 56))(v5, v38, 1, v36);
      v39 = v35;
      v10 = v45;
      sub_215A2B4D0(v39, v5, 0, v45);

      sub_21583F14C(v5, &qword_27CA7EAB0);
      v50 = v13;
      v41 = *(v13 + 2);
      v40 = *(v13 + 3);
      v11 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_215A52BEC(v40 > 1, v41 + 1, 1);
        v13 = v50;
      }

      *(v13 + 2) = v11;
      (*(v47 + 32))(&v13[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41], v10, v46);
      --v34;
      ++v14;
      if (!--v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_41:
    v16 = sub_215A70CD0();
    v15 = *(v14 + v48);
  }

  swift_unknownObjectRelease();
  v13 = MEMORY[0x277D84F90];
LABEL_39:
  sub_215A3F38C(v13, v43);
  swift_unknownObjectRelease();
}

void sub_215A28FB4(void *a1, int64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  v20 = [v7 listWithID:objc_msgSend(a3 skipOffset:sel_identifier) includeHidden:0 includeDescendantsAsChildren:0 filteredUsingString:{0, 0}];
  if (v20)
  {
    v8 = [v7 rootBookmark];
    sub_2159F7DA8(0, &unk_2811A28A0);
    v9 = sub_215A70A80();

    if ((v9 & 1) != 0 && (v10 = sub_215A2E3E8()[2], , v10 > a2))
    {
LABEL_20:
    }

    else
    {
      v19 = sub_215A37CA4(a1, a2, a3);
      v11 = [v20 bookmarkArray];
      v12 = sub_215A705E0();

      if (v12 >> 62)
      {
LABEL_25:
        v13 = sub_215A70CD0();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = 0;
      while (1)
      {
        if (v13 == v14)
        {

          v14 = 0;
LABEL_19:
          [v7 reorderList:v20 moveBookmarkAtIndex:v14 toIndex:v19];
          goto LABEL_20;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x216073710](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        sub_2159F7DA8(0, &unk_2811A2530);
        v17 = sub_215A70A80();

        if (v17)
        {
          break;
        }

        if (__OFADD__(v14++, 1))
        {
          goto LABEL_24;
        }
      }

      if (!HIDWORD(v14))
      {
        goto LABEL_19;
      }

      __break(1u);
    }
  }
}

void sub_215A29234(void *a1, void *a2, _BYTE *a3)
{
  v70 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v63[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v63[-v14];
  if ([a2 isFolder])
  {
    v16 = [a1 proposal];
    v17 = [v16 intent];

    v18 = v17 == 2;
  }

  else
  {
    v18 = 0;
  }

  v69 = v3;
  v19 = [a1 destinationIndexPath];
  if (v19)
  {
    v20 = v19;
    sub_215A6F9C0();

    v21 = sub_215A6FA10();
    (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  }

  else
  {
    v21 = sub_215A6FA10();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  sub_215A26130(v13, v15, &qword_27CA7DF78);
  sub_215A6FA10();
  v22 = *(v21 - 8);
  v65 = *(v22 + 48);
  if (v65(v15, 1, v21) == 1)
  {
    sub_21583F14C(v15, &qword_27CA7DF78);
    LODWORD(v23) = 0;
    goto LABEL_11;
  }

  v24 = v15;
  v23 = sub_215A6F9D0();
  (*(v22 + 8))(v15, v21);
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (HIDWORD(v23))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    if (!sub_215A70CD0())
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

LABEL_11:
  v68 = v18;
  v15 = v70;
  if (v18)
  {
    v25 = a2;
  }

  else
  {
    v25 = v70;
  }

  LODWORD(a2) = [v25 identifier];
  v26 = [a1 &selRef_readingListBookmark + 6];
  v27 = [v26 operation];

  if (v27 == 2)
  {
    v37 = objc_opt_self();
    v38 = [a1 session];
    v39 = swift_allocObject();
    v40 = v69;
    *(v39 + 16) = v69;
    *(v39 + 24) = a2;
    *(v39 + 28) = v23;
    *(v39 + 32) = v68;
    aBlock[4] = sub_215A40DB4;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159FC8A4;
    aBlock[3] = &block_descriptor_68;
    v41 = _Block_copy(aBlock);
    v42 = v40;

    [v37 _sf_webBookmarksFromDropSession_completionHandler_];
    _Block_release(v41);
    swift_unknownObjectRelease();
    return;
  }

  if (v27 != 3)
  {
    return;
  }

  v28 = [a1 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAA0);
  v24 = sub_215A705E0();

  if (v24 >> 62)
  {
    goto LABEL_45;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

LABEL_18:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x216073710](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v29 = *(v24 + 32);
    swift_unknownObjectRetain();
  }

  v30 = [v29 dragItem];
  swift_unknownObjectRelease();
  v31 = [v30 _sf_localBookmark];

  if (v31)
  {
    v32 = [a1 destinationIndexPath];
    if (v32)
    {
      v33 = v66;
      v34 = v32;
      sub_215A6F9C0();

      v35 = 0;
    }

    else
    {
      v35 = 1;
      v33 = v66;
    }

    v36 = v67;
    v43 = v65;
    (*(v22 + 56))(v33, v35, 1, v21);
    sub_215A26130(v33, v36, &qword_27CA7DF78);
    v44 = v43(v36, 1, v21);
    v64 = a2;
    if (v44 == 1)
    {
      sub_21583F14C(v36, &qword_27CA7DF78);
      v45 = 0;
    }

    else
    {
      v45 = sub_215A6F9D0();
      (*(v22 + 8))(v36, v21);
    }

    v46 = v69;
    v47 = sub_215A37CA4(v31, v45, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_215A96990;
    *(v48 + 32) = v31;
    v49 = &v46[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v49 + 1);
      ObjectType = swift_getObjectType();
      v52 = *(v50 + 48);
      v53 = v31;
      v54 = v52(ObjectType, v50);
      swift_unknownObjectRelease();
      v55 = *&v69[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection];
      sub_2159F7DA8(0, &unk_2811A28A0);
      v56 = sub_215A705D0();
      [(WebBookmarkCollection *)v55 dropBookmarks:v56 inFolderWithID:v64 presentingViewController:v54 isAddingBookmark:0];

      if (v68)
      {

        if (swift_unknownObjectWeakLoadStrong())
        {
          v57 = *(v49 + 1);
          v58 = swift_getObjectType();
          (*(v57 + 16))(v58, v57);
          swift_unknownObjectRelease();
        }

        return;
      }

      v59 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
        for (i = 0; i != v59; ++i)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v61 = MEMORY[0x216073710](i, v48);
          }

          else
          {
            v61 = *(v48 + 8 * i + 32);
          }

          v62 = v61;
          [v55 reorderBookmark:v61 toIndex:v47];
        }
      }

      else
      {
      }
    }

LABEL_46:
  }
}

id sub_215A29A1C(void *a1, void *a2)
{
  v33 = a2;
  v4 = sub_215A6FA60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_215A969E0;
  *(v11 + 32) = sub_215A35708();
  sub_2159F7DA8(0, &unk_2811A2530);
  v12 = [*(v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) readingListFolder];
  v13 = sub_215A70A80();

  *(v11 + 40) = sub_215A34D78(v13 & 1);
  v32 = sub_2159F7DA8(0, &unk_2811A2520);
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  v15 = sub_215A70500();
  v16 = objc_opt_self();
  v17 = [v16 systemImageNamed_];

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  v20 = a1;
  v21 = sub_215A70A90();
  v22 = sub_215A70500();
  [v21 setAccessibilityIdentifier_];

  *(v11 + 48) = v21;
  *(v11 + 56) = sub_215A40418(v33);
  sub_2159F7DA8(0, &unk_2811A26B0);
  v23 = sub_215A70A50();
  v24 = sub_215A70500();
  [v23 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v25 = sub_215A70500();
  v26 = [v16 systemImageNamed_];

  v27 = v23;
  v28 = sub_215A70920();
  [v28 setPreferredMenuElementOrder_];

  v29 = v28;
  v30 = sub_215A70500();
  [v29 setAccessibilityIdentifier_];

  return v29;
}

id sub_215A29EE8(unint64_t a1, char **a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v7 = result;
    v8 = [result isNetworkReachable];

    if (v8 && (v9 = [objc_opt_self() safari_browserDefaults], v10 = objc_msgSend(v9, sel_safari_shouldAutomaticallyDownloadReadingListItems), v9, (v10 & 1) == 0))
    {
      v28 = MEMORY[0x277D84F90];
      if (a1 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_215A70CD0())
      {
        v26 = v5;
        v27 = a2;
        v12 = 0;
        v13 = a1 & 0xFFFFFFFFFFFFFF8;
        a2 = &selRef_isAllowFavoritesInFrequentlyVisitedEnabled;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x216073710](v12, a1);
          }

          else
          {
            if (v12 >= *(v13 + 16))
            {
              goto LABEL_20;
            }

            v14 = *(a1 + 8 * v12 + 32);
          }

          v15 = v14;
          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (![v14 isReadingListItem] || (objc_msgSend(v15, sel_shouldArchive) & 1) != 0)
          {
          }

          else
          {
            sub_215A70C60();
            v5 = *(v28 + 16);
            sub_215A70C90();
            sub_215A70CA0();
            sub_215A70C70();
            v13 = a1 & 0xFFFFFFFFFFFFFF8;
          }

          ++v12;
          if (v16 == i)
          {
            v17 = v28;
            v5 = v26;
            a2 = v27;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

      v17 = MEMORY[0x277D84F90];
LABEL_23:
      sub_2159F7DA8(0, &qword_2811A22B8);
      v18 = sub_215A70500();
      v19 = [objc_opt_self() systemImageNamed_];

      sub_2159F7DA8(0, &unk_2811A2520);
      v20 = swift_allocObject();
      v20[2] = v5;
      v20[3] = v17;
      v20[4] = a2;
      v21 = v5;

      v22 = a2;
      sub_215A70A90();
      v23 = sub_215A70920();
      if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
      {
        v24 = sub_215A70CD0();
      }

      else
      {
        v24 = *(v17 + 16);
      }

      if (!v24)
      {
        v25 = [objc_opt_self() secondaryLabelColor];
        [v23 setTintColor_];

        [v23 setEnabled_];
      }

      return v23;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_215A2A290(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_215A2A2F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_215A3AF70(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_215A6F960();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_215A39A94(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_215A3B50C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_215A6F960();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_215A3A954(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_215A6F960();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_215A2A4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_215A07368(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_215A3B13C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21583F14C(a1, &qword_27CA7E2E0);
    sub_215A39F8C(a2, a3, v9);

    return sub_21583F14C(v9, &qword_27CA7E2E0);
  }

  return result;
}

uint64_t sub_215A2A588(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_215A38DD0(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_215A6FED0();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_215A2A708(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_215A70CD0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_215A70CD0();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_215A3B924(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_215A2A850(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_215A2A880@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_215A2A8AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_215A2A984@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_215A3F354(a1);

  *a2 = v3;
  return result;
}

id sub_215A2A9C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_215A709C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_215A70460();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_215A709A0();
  MEMORY[0x28223BE20](v9 - 8);
  *&v3[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_idToFaviconRequestToken;
  v11 = MEMORY[0x277D84F90];
  *&v3[v10] = sub_2158368B0(MEMORY[0x277D84F90]);
  v12 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_idToLinkMetadataRequestToken;
  *&v3[v12] = sub_2158368B0(v11);
  v13 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_imageLoadingQueue;
  sub_2159F7DA8(0, &qword_2811A2910);
  sub_215A70990();
  sub_215A70450();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v4);
  *&v3[v13] = sub_215A709F0();
  *&v3[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarks] = v11;
  v14 = v20;
  *&v3[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection] = v20;
  v15 = v14;
  v16 = [v15 allBookmarkLeaves];
  *&v3[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarksList] = v16;
  *&v3[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_loadingOptions] = v22;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v23, sel_init);
  sub_2158369E0();
  sub_215A2877C();

  return v17;
}

id sub_215A2ACBC()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedSiteMetadataManager];
  v3 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_idToLinkMetadataRequestToken;
  swift_beginAccess();
  v4 = *&v0[v3];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_215A07378(*(v4 + 56) + ((v11 << 11) | (32 * v12)), v26);
      __swift_project_boxed_opaque_existential_0(v26, v27);
      v13 = sub_215A70D80();
      __swift_destroy_boxed_opaque_existential_0(v26);
      [v2 cancelRequestWithToken_];
      result = swift_unknownObjectRelease();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v14 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_idToFaviconRequestToken;
  swift_beginAccess();
  v15 = *&v0[v14];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  for (i = 0; v18; result = swift_unknownObjectRelease())
  {
    v21 = i;
LABEL_19:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_215A07378(*(v15 + 56) + ((v21 << 11) | (32 * v22)), v26);
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v23 = sub_215A70D80();
    __swift_destroy_boxed_opaque_existential_0(v26);
    [v2 cancelRequestWithToken_];
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v24 = [objc_opt_self() defaultCenter];
      [v24 removeObserver_];

      v25.receiver = v0;
      v25.super_class = ObjectType;
      return objc_msgSendSuper2(&v25, sel_dealloc);
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++i;
    if (v18)
    {
      i = v21;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_215A2B078(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_recentBookmarks) = a1;
    v3 = Strong;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = v4 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);

      ObjectType = swift_getObjectType();
      (*(v7 + 32))(ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A2B16C(void *a1)
{
  v4 = a1;
  sub_215A2877C();
  v1 = &v4[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_215A2B1FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_215A6FED0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_215A6F810();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v20[1] = sub_215A70540();
  v20[2] = v11;
  sub_215A70BD0();
  if (!*(v10 + 16) || (v12 = sub_215A39B98(v21), (v13 & 1) == 0))
  {

    sub_215A19D58(v21);
LABEL_9:
    v22 = 0u;
    v23 = 0u;
    return sub_21583F14C(&v22, &qword_27CA7E2E0);
  }

  sub_215A07378(*(v10 + 56) + 32 * v12, &v22);
  sub_215A19D58(v21);

  if (!*(&v23 + 1))
  {
    return sub_21583F14C(&v22, &qword_27CA7E2E0);
  }

  sub_2159F7DA8(0, &unk_2811A28A0);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v21[0];
    v16 = sub_215A6FE20();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_215A2B4D0(v15, v4, 0, v8);
    sub_21583F14C(v4, &qword_27CA7EAB0);
    v17 = v1 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 40))(v8, ObjectType, v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_215A2B4D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v71 = a2;
  v66 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  v62 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = sub_215A6FE20();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v18);
  v72 = &v61 - v21;
  v22 = [objc_opt_self() safari_browserDefaults];
  v68 = v4;
  v23 = [*(v4 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) readingListFolder];
  v24 = v23;
  v67 = v22;
  if (a3)
  {
    if (v23)
    {
      sub_2159F7DA8(0, &unk_2811A28A0);
      v25 = a3;
      v26 = sub_215A70A80();

      if (v26)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v27 = sub_215A70850();
    goto LABEL_9;
  }

  if (v23)
  {

    goto LABEL_7;
  }

LABEL_8:
  v27 = sub_215A70870();
  v17 = v20;
LABEL_9:
  v28 = MEMORY[0x277D28B70];
  if (v27 != 1)
  {
    v28 = MEMORY[0x277D28B78];
  }

  (*(v12 + 104))(v17, *v28, v11);
  v29 = *(v12 + 32);
  v30 = v72;
  v29(v72, v17, v11);
  sub_215A07074(v71, v10, &qword_27CA7EAB0);
  v31 = *(v12 + 48);
  v32 = v31(v10, 1, v11);
  v69 = v12;
  v63 = v11;
  if (v32 == 1)
  {
    v33 = *(v12 + 16);
    v34 = v65;
    v33(v65, v30, v11);
    if (v31(v10, 1, v11) != 1)
    {
      sub_21583F14C(v10, &qword_27CA7EAB0);
    }
  }

  else
  {
    v34 = v65;
    v29(v65, v10, v11);
  }

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = v64;
  sub_215A07074(v71, v64, &qword_27CA7EAB0);
  v37 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v38 = swift_allocObject();
  v39 = v66;
  *(v38 + 16) = v35;
  *(v38 + 24) = v39;
  sub_215A26130(v36, v38 + v37, &qword_27CA7EAB0);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = v39;
  v42 = v39;

  sub_215A6FEC0();

  v43 = *(v69 + 8);
  v44 = v63;
  v43(v34, v63);

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v42;
  v47 = v42;
  sub_215A6FE00();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  v50 = v47;
  sub_215A6FE70();
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v52 + 24) = v51;
  v53 = v50;
  sub_215A6FE60();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v53;
  v56 = v53;
  sub_215A6FE80();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v56;
  v59 = v56;

  sub_215A6FEA0();

  v43(v72, v44);
}

uint64_t sub_215A2BCF0(void *a1)
{
  v3 = sub_215A6FD60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection];
  *v6 = [a1 identifier];
  (*(v4 + 104))(v6, *MEMORY[0x277D28B60], v3);
  sub_215A41A94(&qword_2811A28B0, v8, type metadata accessor for BookmarksViewContentProvider);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = objc_allocWithZone(sub_215A6FF90());
  v12 = a1;
  v13 = v1;
  v14 = sub_215A6FD70();
  *(swift_allocObject() + 16) = v12;
  v15 = v12;
  sub_215A6FBE0();
  sub_215A6FC10();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v7;
  v17 = v15;
  v18 = v7;
  sub_215A6FCF0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  v21 = v17;

  sub_215A6FC30();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FD10();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FDB0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FCB0();

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v24 = v21;

  sub_215A6FAE0();

  return v14;
}

void sub_215A2C10C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_2159F7DA8(0, &unk_2811A2530);
    v11 = [*&v10[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection] readingListFolder];
    v12 = sub_215A70A80();

    if (v12)
    {
      goto LABEL_5;
    }

    v13 = [objc_opt_self() safari_browserDefaults];
    v14 = sub_215A708D0();

    if (v14 == 1)
    {
      sub_215A3FA7C(a3, a5, a1, a2, 0);
      goto LABEL_6;
    }

    if (!v14)
    {
LABEL_5:
      sub_215A2C98C(a3, a5, 0, 0, a1, a2, 0);
    }

LABEL_6:
  }
}

uint64_t sub_215A2C260(void *a1, void *a2)
{
  v4 = sub_215A6F960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = [a1 managedBookmarkUUID];
  if (v11)
  {
    v12 = v11;
    sub_215A6F950();

    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    sub_21583F14C(v10, &unk_27CA7DF80);
    result = [a1 _sf_managedBookmark];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    sub_21583F14C(v10, &unk_27CA7DF80);
    result = [a2 bookmarkWithID_];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

void sub_215A2C470(void *a1, int64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_215A28FB4(a1, a2, a4);
  }
}

id sub_215A2C4E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [objc_opt_self() safari_browserDefaults];
  v5 = sub_215A708F0();

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_self() _sf_operationForDropSession_];
  }

  return v6;
}

id sub_215A2C5AC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [objc_opt_self() _sf_operationForDropSession_];

  return v4;
}

void sub_215A2C62C(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = a4;
    }

    sub_215A29234(a1, v9, a4);
  }
}

void sub_215A2C6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_215A6FD60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 104))(v8, *MEMORY[0x277D28B58], v5);
    sub_215A41A94(&qword_2811A28B0, v11, type metadata accessor for BookmarksViewContentProvider);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(sub_215A6FF90());
    v12 = v10;
    v13 = sub_215A6FD70();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    sub_215A6FBE0();
    v15 = [objc_opt_self() sharedLogger];
    [v15 didOpenRecentlySavedSection];

    v16 = &v12[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 1);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v13, ObjectType, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A2C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_215A28918(a3, 1);
  }
}

void sub_215A2C98C(uint64_t a1, void *a2, unint64_t a3, uint64_t (**a4)(char *, unint64_t), unint64_t a5, unint64_t a6, int a7)
{
  v8 = v7;
  v177 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v15 - 8);
  v187 = &v165 - v16;
  v186 = sub_215A6FED0();
  v17 = *(v186 - 8);
  v18 = MEMORY[0x28223BE20](v186);
  v171 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v180 = &v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v181 = &v165 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v165 - v25;
  MEMORY[0x28223BE20](v24);
  v172 = &v165 - v27;
  v184 = sub_215A6F960();
  v173 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = swift_allocObject();
  *(v176 + 16) = 1;
  v29 = sub_2159F7DA8(0, &unk_2811A2530);
  v188 = v8;
  v179 = *(v8 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  v30 = [v179 rootBookmark];
  v185 = a2;
  v178 = v29;
  LOBYTE(v29) = sub_215A70A80();

  if (v29)
  {
    v31 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v31 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      v32 = v177;
      sub_215A2E0A8(1, v176, a3, a4, v177);
      v33 = sub_215A2E3E8();
      sub_215A3F38C(v33, v32);
    }
  }

  v34 = v185;
  v35 = [v185 _sf_managedBookmark];
  v182 = v17;
  v175 = a3;
  if (v35)
  {
    v36 = v35;
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v171 = v36;
      v38 = HIBYTE(a6) & 0xF;
      if ((a6 & 0x2000000000000000) == 0)
      {
        v38 = a5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {
        v90 = [v37 directChildrenAsWebBookmarks];
        sub_2159F7DA8(0, &unk_2811A28A0);
        v76 = sub_215A705E0();

        v91 = v176;
        v54 = v177;
        if (!(v76 >> 62))
        {
          v92 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v92)
          {
LABEL_163:

            v94 = MEMORY[0x277D84F90];
LABEL_164:
            sub_215A2E0A8(*(v94 + 16) != 0, v91, a3, a4, v54);
            sub_215A3F38C(v94, v54);

            goto LABEL_165;
          }

          goto LABEL_51;
        }

LABEL_162:
        v92 = sub_215A70CD0();
        if (!v92)
        {
          goto LABEL_163;
        }

LABEL_51:
        v174 = a4;
        v189[0] = MEMORY[0x277D84F90];
        v42 = v189;
        sub_215A52BEC(0, v92 & ~(v92 >> 63), 0);
        v185 = v92;
        if ((v92 & 0x8000000000000000) == 0)
        {
          v93 = 0;
          v94 = v189[0];
          v95 = v76;
          v96 = v76 & 0xC000000000000001;
          do
          {
            if (v96)
            {
              v97 = MEMORY[0x216073710](v93, v95);
            }

            else
            {
              v97 = *(v95 + 8 * v93 + 32);
            }

            v98 = v97;
            v99 = sub_215A6FE20();
            v100 = v187;
            (*(*(v99 - 8) + 56))(v187, 1, 1, v99);
            sub_215A2B4D0(v98, v100, 0);

            sub_21583F14C(v100, &qword_27CA7EAB0);
            v189[0] = v94;
            v102 = *(v94 + 16);
            v101 = *(v94 + 24);
            if (v102 >= v101 >> 1)
            {
              sub_215A52BEC(v101 > 1, v102 + 1, 1);
              v94 = v189[0];
            }

            v93 = v93 + 1;
            *(v94 + 16) = v102 + 1;
            (*(v17 + 32))(v94 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v102, v26, v186);
          }

          while (v185 != v93);

          v91 = v176;
          v54 = v177;
          a4 = v174;
          a3 = v175;
          goto LABEL_164;
        }

        goto LABEL_167;
      }

      v39 = v37;
      v40 = sub_215A70500();
      v41 = [v39 bookmarksMatchingQueryString_];

      v42 = MEMORY[0x277D84F90];
      if (v41)
      {
        sub_2159F7DA8(0, &qword_27CA7EAC8);
        v43 = sub_215A705E0();
      }

      else
      {
        v43 = MEMORY[0x277D84F90];
      }

      v111 = v173;
      v189[0] = v42;
      v174 = a4;
      v180 = (v43 & 0xFFFFFFFFFFFFFF8);
      if (v43 >> 62)
      {
        v185 = sub_215A70CD0();
      }

      else
      {
        v185 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a3 = 0;
      v181 = (v43 & 0xC000000000000001);
      a4 = (v111 + 8);
      v178 = MEMORY[0x277D84F90];
      v179 = v43;
      while (v185 != a3)
      {
        if (v181)
        {
          v118 = MEMORY[0x216073710](a3, v43);
        }

        else
        {
          if (a3 >= *(v180 + 2))
          {
            goto LABEL_148;
          }

          v118 = *(v43 + 8 * a3 + 32);
        }

        a5 = v118;
        v119 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          v52 = sub_215A70CD0();
          goto LABEL_17;
        }

        v120 = [v118 title];
        if (!v120)
        {
          sub_215A70540();
          v120 = sub_215A70500();
        }

        v121 = [a5 urlString];
        if (v121)
        {
          v112 = v121;
          sub_215A70540();
        }

        v113 = [a5 uuid];
        v114 = v183;
        sub_215A6F950();

        a6 = objc_allocWithZone(MEMORY[0x277D7B5A0]);
        v115 = sub_215A70500();

        v42 = sub_215A6F940();
        v116 = [a6 initManagedBookmarkWithTitle:v120 address:v115 uuid:v42];

        v117 = (*a4)(v114, v184);
        ++a3;
        v17 = v182;
        v43 = v179;
        if (v116)
        {
          v42 = v189;
          MEMORY[0x2160730A0](v117);
          if (*((v189[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_215A70640();
          }

          sub_215A70660();
          v178 = v189[0];
          a3 = v119;
        }
      }

      if (v178 >> 62)
      {
        v76 = v178;
        if (v178 < 0)
        {
          v54 = v178;
        }

        else
        {
          v54 = v178 & 0xFFFFFFFFFFFFFF8;
        }

        v164 = sub_215A70CD0() != 0;
        v122 = v177;
        sub_215A2E0A8(v164, v176, v175, v174, v177);
        v26 = sub_215A70CD0();
        if (v26)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v76 = v178;
        v54 = v178 & 0xFFFFFFFFFFFFFF8;
        v122 = v177;
        sub_215A2E0A8(*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) != 0, v176, v175, v174, v177);
        v26 = *(v54 + 16);
        if (v26)
        {
LABEL_91:
          v189[0] = MEMORY[0x277D84F90];
          v91 = v189;
          sub_215A52BEC(0, v26 & ~(v26 >> 63), 0);
          if ((v26 & 0x8000000000000000) == 0)
          {
            v123 = 0;
            v124 = v189[0];
            v125 = v76;
            v126 = v172;
            do
            {
              if ((v76 & 0xC000000000000001) != 0)
              {
                v127 = MEMORY[0x216073710](v123, v125);
              }

              else
              {
                v127 = *(v125 + 8 * v123 + 32);
              }

              v128 = v127;
              v129 = sub_215A6FE20();
              v130 = v187;
              (*(*(v129 - 8) + 56))(v187, 1, 1, v129);
              sub_215A2B4D0(v128, v130, 0);

              sub_21583F14C(v130, &qword_27CA7EAB0);
              v189[0] = v124;
              v132 = *(v124 + 16);
              v131 = *(v124 + 24);
              if (v132 >= v131 >> 1)
              {
                sub_215A52BEC(v131 > 1, v132 + 1, 1);
                v124 = v189[0];
              }

              ++v123;
              *(v124 + 16) = v132 + 1;
              (*(v17 + 32))(v124 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v132, v126, v186);
              v125 = v178;
            }

            while (v26 != v123);

            v122 = v177;
            goto LABEL_158;
          }

          __break(1u);
          goto LABEL_162;
        }
      }

      v124 = MEMORY[0x277D84F90];
LABEL_158:
      sub_215A3F38C(v124, v122);

      goto LABEL_165;
    }
  }

  a3 = a4;
  v44 = v179;
  v45 = [v179 readingListFolder];
  v46 = v34;
  v47 = sub_215A70A80();

  v170 = a7;
  if (v47)
  {
    v48 = byte_27CA804C0;
    v49 = sub_215A70500();
    v50 = [v44 readingListWithUnreadOnly:v48 filteredUsingString:v49];

    v183 = v50;
    v51 = [v50 bookmarkArray];
    sub_2159F7DA8(0, &unk_2811A28A0);
    v42 = sub_215A705E0();

    if (v42 >> 62)
    {
      goto LABEL_151;
    }

    v52 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
    v53 = v175;
    v169 = a5;
    if (!v52)
    {

      v56 = MEMORY[0x277D84F90];
LABEL_61:
      v103 = *(v56 + 16);
      v104 = v177;
      sub_215A2E0A8(v103 != 0, v176, v53, a3, v177);
      sub_215A3F38C(v56, v104);

      if (v103 || (v170 & 1) == 0)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAC0);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_215A96960;
        v106 = HIBYTE(a6) & 0xF;
        if ((a6 & 0x2000000000000000) == 0)
        {
          v106 = v169 & 0xFFFFFFFFFFFFLL;
        }

        if (v106)
        {
          sub_215A6FDC0();
        }

        else
        {
          sub_215A6FDD0();
        }

        sub_215A3F38C(v105, v104);
      }

      return;
    }

    v54 = v42;
    v172 = a6;
    v174 = a3;
    v189[0] = MEMORY[0x277D84F90];
    sub_215A52BEC(0, v52 & ~(v52 >> 63), 0);
    if ((v52 & 0x8000000000000000) == 0)
    {
      v55 = 0;
      v56 = v189[0];
      v57 = v42;
      v184 = v42 & 0xC000000000000001;
      v58 = v17;
      v59 = v185;
      v60 = v54;
      v61 = v52;
      do
      {
        if (v184)
        {
          v62 = MEMORY[0x216073710](v55, v57);
        }

        else
        {
          v62 = *(v57 + 8 * v55 + 32);
        }

        v63 = v62;
        v64 = sub_215A6FE20();
        v65 = v187;
        (*(*(v64 - 8) + 56))(v187, 1, 1, v64);
        v66 = v181;
        sub_215A2B4D0(v63, v65, v59);

        sub_21583F14C(v65, &qword_27CA7EAB0);
        v189[0] = v56;
        v68 = *(v56 + 16);
        v67 = *(v56 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_215A52BEC(v67 > 1, v68 + 1, 1);
          v56 = v189[0];
        }

        ++v55;
        *(v56 + 16) = v68 + 1;
        (*(v58 + 32))(v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v68, v66, v186);
        v59 = v185;
        v57 = v60;
      }

      while (v61 != v55);

      a3 = v174;
      v53 = v175;
      a6 = v172;
      goto LABEL_61;
    }

    __break(1u);
LABEL_160:
    v75 = sub_215A70CD0();
    goto LABEL_39;
  }

  v69 = [v46 identifier];
  v168 = a5 & 0xFFFFFFFFFFFFLL;
  v166 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v70 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v70 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v71 = sub_215A70500();
  v53 = [v44 listWithID:v69 skipOffset:0 includeHidden:0 includeDescendantsAsChildren:v70 != 0 filteredUsingString:v71];

  if (!v53)
  {
    v167 = 0;
    v108 = v176;
    v107 = v177;
    v109 = a3;
    v110 = v175;
    goto LABEL_102;
  }

  v72 = [v53 bookmarkCount] != 0;
  v174 = a3;
  sub_215A2E0A8(v72, v176, v175, a3, v177);
  if ([v53 bookmarkCount])
  {
    v73 = 1;
  }

  else
  {
    v73 = v70 == 0;
  }

  v54 = !v73;
  v74 = [v53 bookmarkArray];
  sub_2159F7DA8(0, &unk_2811A28A0);
  v52 = sub_215A705E0();

  if (v52 >> 62)
  {
    goto LABEL_160;
  }

  v75 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
  v169 = a5;
  v167 = v54;
  if (v75)
  {
    v76 = v52;
    v165 = v53;
    v172 = a6;
    v189[0] = MEMORY[0x277D84F90];
    v42 = v189;
    sub_215A52BEC(0, v75 & ~(v75 >> 63), 0);
    if (v75 < 0)
    {
      __break(1u);
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v77 = 0;
    v78 = v189[0];
    v79 = v76;
    v181 = (v76 & 0xC000000000000001);
    v80 = v185;
    v81 = v76;
    v82 = v75;
    do
    {
      if (v181)
      {
        v83 = MEMORY[0x216073710](v77, v79);
      }

      else
      {
        v83 = *(v79 + 8 * v77 + 32);
      }

      v84 = v83;
      v85 = sub_215A6FE20();
      v86 = v187;
      (*(*(v85 - 8) + 56))(v187, 1, 1, v85);
      v87 = v180;
      sub_215A2B4D0(v84, v86, v80);

      sub_21583F14C(v86, &qword_27CA7EAB0);
      v189[0] = v78;
      v89 = *(v78 + 16);
      v88 = *(v78 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_215A52BEC(v88 > 1, v89 + 1, 1);
        v78 = v189[0];
      }

      ++v77;
      *(v78 + 16) = v89 + 1;
      (*(v17 + 32))(v78 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v89, v87, v186);
      v80 = v185;
      v79 = v81;
    }

    while (v82 != v77);

    a6 = v172;
    v53 = v165;
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v107 = v177;
  sub_215A3F38C(v78, v177);

  v110 = v175;
  v108 = v176;
  v109 = v174;
  a5 = v169;
LABEL_102:
  v133 = v168;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v133 = v166;
  }

  if (!v133 || (v134 = [v179 rootBookmark], v135 = sub_215A70A80(), v134, (v135 & 1) == 0) || (v136 = objc_msgSend(objc_opt_self(), sel_sharedController), v137 = objc_msgSend(v136, sel_topLevelManagedBookmarkFolder), v136, !v137))
  {
    if (!v167)
    {
      goto LABEL_144;
    }

    goto LABEL_110;
  }

  v138 = sub_215A70500();
  v139 = [v137 bookmarksMatchingQueryString_];

  v42 = MEMORY[0x277D84F90];
  if (v139)
  {
    sub_2159F7DA8(0, &qword_27CA7EAC8);
    v76 = sub_215A705E0();
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v54 = v173;
  v189[0] = v42;
  v174 = v109;
  v172 = v137;
  if (!(v76 >> 62))
  {
    v180 = (v76 & 0xFFFFFFFFFFFFFF8);
    v185 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_115;
  }

LABEL_168:
  v180 = (v76 & 0xFFFFFFFFFFFFFF8);
  v185 = sub_215A70CD0();
LABEL_115:
  a3 = 0;
  v181 = (v76 & 0xC000000000000001);
  v179 = (v54 + 8);
  v178 = MEMORY[0x277D84F90];
  while (v185 != a3)
  {
    if (v181)
    {
      v146 = MEMORY[0x216073710](a3, v76);
    }

    else
    {
      if (a3 >= *(v180 + 2))
      {
        goto LABEL_150;
      }

      v146 = *(v76 + 8 * a3 + 32);
    }

    a5 = v146;
    v147 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_149;
    }

    v148 = [v146 title];
    if (!v148)
    {
      sub_215A70540();
      v148 = sub_215A70500();
    }

    v149 = v76;
    v150 = [a5 urlString];
    if (v150)
    {
      v151 = v150;
      sub_215A70540();
    }

    v141 = [a5 uuid];
    v142 = v183;
    sub_215A6F950();

    v143 = objc_allocWithZone(MEMORY[0x277D7B5A0]);
    a6 = sub_215A70500();

    v42 = sub_215A6F940();
    v144 = [v143 initManagedBookmarkWithTitle:v148 address:a6 uuid:v42];

    v145 = (*v179)(v142, v184);
    ++a3;
    v17 = v182;
    v76 = v149;
    if (v144)
    {
      v42 = v189;
      MEMORY[0x2160730A0](v145);
      if (*((v189[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();
      v178 = v189[0];
      a3 = v147;
    }
  }

  if (v178 >> 62)
  {
    v152 = sub_215A70CD0();
  }

  else
  {
    v152 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v108 = v176;
  v107 = v177;
  v109 = v174;
  v110 = v175;
  sub_215A2E0A8(v152 != 0, v176, v175, v174, v177);
  if (!v152)
  {

    v154 = MEMORY[0x277D84F90];
    goto LABEL_143;
  }

  v189[0] = MEMORY[0x277D84F90];
  sub_215A52BEC(0, v152 & ~(v152 >> 63), 0);
  if ((v152 & 0x8000000000000000) == 0)
  {
    v153 = 0;
    v154 = v189[0];
    v155 = v178;
    v156 = v178 & 0xC000000000000001;
    v157 = v171;
    do
    {
      if (v156)
      {
        v158 = MEMORY[0x216073710](v153);
      }

      else
      {
        v158 = *(v155 + 8 * v153 + 32);
      }

      v159 = v158;
      v160 = sub_215A6FE20();
      v161 = v187;
      (*(*(v160 - 8) + 56))(v187, 1, 1, v160);
      sub_215A2B4D0(v159, v161, 0);

      sub_21583F14C(v161, &qword_27CA7EAB0);
      v189[0] = v154;
      v163 = *(v154 + 16);
      v162 = *(v154 + 24);
      if (v163 >= v162 >> 1)
      {
        sub_215A52BEC(v162 > 1, v163 + 1, 1);
        v154 = v189[0];
      }

      ++v153;
      *(v154 + 16) = v163 + 1;
      (*(v17 + 32))(v154 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v163, v157, v186);
      v155 = v178;
    }

    while (v152 != v153);

    v108 = v176;
    v107 = v177;
    v109 = v174;
    v110 = v175;
LABEL_143:
    sub_215A3F38C(v154, v107);

    if (v152)
    {
      goto LABEL_144;
    }

LABEL_110:
    if (v170)
    {
      sub_215A2E0A8(0, v108, v110, v109, v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAC0);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_215A96960;
      sub_215A6FDC0();
      sub_215A3F38C(v140, v107);

LABEL_165:

      return;
    }

LABEL_144:

    return;
  }

  __break(1u);
}

uint64_t sub_215A2E0A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = sub_215A6FF70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
  v16 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v18 = v26 - v17;
  result = swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v28 = a1;
    if ((a1 & 1) != 0 && a4)
    {
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
      *(swift_allocObject() + 16) = xmmword_215A96960;
      sub_215A6FF60();
      sub_215A701D0();

      result = swift_beginAccess();
      *(a2 + 16) = 0;
    }

    else
    {
      v26[1] = a3;
      v26[2] = a4;
      v27 = a2;
      v20 = v29;
      (*(v16 + 16))(v18, v30, v29);
      v21 = sub_215A701F0();
      result = (*(v16 + 8))(v18, v20);
      v22 = 0;
      v23 = *(v21 + 16);
      v31 = v10 + 16;
      while (1)
      {
        if (v23 == v22)
        {

          a2 = v27;
          goto LABEL_10;
        }

        if (v22 >= *(v21 + 16))
        {
          break;
        }

        (*(v10 + 16))(v15, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22++, v9);
        sub_215A6FF60();
        v24 = MEMORY[0x216072A20](v15, v13);
        v25 = *(v10 + 8);
        v25(v13, v9);
        result = (v25)(v15, v9);
        if (v24)
        {
        }
      }

      __break(1u);
    }
  }

  return result;
}

void *sub_215A2E3E8()
{
  v0 = sub_215A6FED0();
  v75 = *(v0 - 8);
  v76 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v61 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v60 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAA8);
  v5 = *(v69 - 8);
  v6 = MEMORY[0x28223BE20](v69);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v70 = &v60 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v60 - v17;
  v19 = [objc_opt_self() safari_browserDefaults];
  v20 = sub_215A708D0();

  v71 = v8;
  v67 = v4;
  v64 = v15;
  if (v20 == 1)
  {
    v21 = *MEMORY[0x277D28B70];
    v22 = sub_215A6FE20();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v18, v21, v22);
    (*(v23 + 56))(v18, 0, 1, v22);
  }

  else
  {
    v24 = sub_215A6FE20();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB8);
  v26 = *(v5 + 72);
  v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v65 = *(v5 + 80);
  v66 = v25;
  v28 = swift_allocObject();
  v68 = v27;
  v63 = v28;
  v29 = v28 + v27;
  v30 = *(v74 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  v31 = [v30 favoritesFolder];
  v72 = v18;
  sub_215A2B4D0(v31, v18, 0);

  v33 = v75;
  v32 = v76;
  (*(v75 + 56))(v29, 0, 1, v76);
  v34 = v32;
  v35 = [v30 favoritesFolder];
  LODWORD(v30) = [v35 identifier];

  v73 = v26;
  sub_215A32B40(v30, v29 + v26);
  v36 = v64;
  sub_215A07074(v29, v64, &qword_27CA7EAA8);
  sub_215A26130(v36, v13, &qword_27CA7EAA8);
  v37 = (v33 + 32);
  v62 = *(v33 + 48);
  if (v62(v13, 1, v34) == 1)
  {
    sub_21583F14C(v13, &qword_27CA7EAA8);
    v38 = MEMORY[0x277D84F90];
    v39 = v67;
  }

  else
  {
    v40 = *v37;
    v39 = v67;
    (*v37)(v67, v13, v34);
    v38 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_215A38DD0(0, v38[2] + 1, 1, v38, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
    }

    v42 = v38[2];
    v41 = v38[3];
    if (v42 >= v41 >> 1)
    {
      v38 = sub_215A38DD0(v41 > 1, v42 + 1, 1, v38, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
    }

    v38[2] = v42 + 1;
    v43 = v38 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v42;
    v34 = v76;
    v40(v43, v39, v76);
  }

  sub_215A07074(v29 + v73, v36, &qword_27CA7EAA8);
  sub_215A26130(v36, v13, &qword_27CA7EAA8);
  v44 = v62;
  if (v62(v13, 1, v34) == 1)
  {
    sub_21583F14C(v13, &qword_27CA7EAA8);
    v45 = v71;
  }

  else
  {
    v46 = *v37;
    (*v37)(v39, v13, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_215A38DD0(0, v38[2] + 1, 1, v38, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
    }

    v49 = v38[2];
    v48 = v38[3];
    if (v49 >= v48 >> 1)
    {
      v38 = sub_215A38DD0(v48 > 1, v49 + 1, 1, v38, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
    }

    v38[2] = v49 + 1;
    v50 = v38 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v49;
    v34 = v76;
    v46(v50, v39, v76);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v77 = v38;
  v51 = v68;
  v52 = swift_allocObject();
  sub_215A33DF0(v52 + v51);
  v53 = v70;
  sub_215A07074(v52 + v51, v70, &qword_27CA7EAA8);
  sub_215A26130(v53, v45, &qword_27CA7EAA8);
  if (v44(v45, 1, v34) == 1)
  {
    sub_21583F14C(v45, &qword_27CA7EAA8);
    v54 = MEMORY[0x277D84F90];
  }

  else
  {
    v55 = *v37;
    v56 = v61;
    (*v37)(v61, v45, v34);
    v54 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_215A38DD0(0, *(v54 + 2) + 1, 1, v54, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
    }

    v58 = *(v54 + 2);
    v57 = *(v54 + 3);
    if (v58 >= v57 >> 1)
    {
      v54 = sub_215A38DD0(v57 > 1, v58 + 1, 1, v54, &qword_27CA7EAC0, &unk_215A971F8, MEMORY[0x277D28B80]);
    }

    *(v54 + 2) = v58 + 1;
    v55(&v54[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v58], v56, v76);
  }

  swift_setDeallocating();
  sub_21583F14C(v52 + v51, &qword_27CA7EAA8);
  swift_deallocClassInstance();
  sub_215A2A588(v54);
  sub_21583F14C(v72, &qword_27CA7EAB0);
  return v77;
}

uint64_t sub_215A2ED4C(void *a1, uint64_t a2, unint64_t a3)
{
  v83 = sub_215A6F960();
  v7 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 _sf_managedBookmark];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

LABEL_9:
    v18 = *(v3 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
    v19 = [a1 identifier];
    if ((a3 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v20 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v21 = sub_215A70500();
    v22 = [v18 listWithID:v19 skipOffset:0 includeHidden:0 includeDescendantsAsChildren:v20 != 0 filteredUsingString:v21];

    if (!v22)
    {
      return MEMORY[0x277D84F90];
    }

    v77 = v22;
    v23 = [v22 bookmarkArray];
    sub_2159F7DA8(0, &unk_2811A28A0);
    sub_215A705E0();

    v76 = sub_215A70610();
    v25 = v24;

    v85 = v25;
    if (v20)
    {
      sub_2159F7DA8(0, &unk_2811A2530);
      v26 = [v18 rootBookmark];
      v27 = sub_215A70A80();

      if (v27)
      {
        v28 = [objc_opt_self() sharedController];
        v29 = [v28 topLevelManagedBookmarkFolder];

        if (v29)
        {
          v30 = sub_215A70500();
          v74 = v29;
          v31 = [v29 bookmarksMatchingQueryString_];

          v32 = MEMORY[0x277D84F90];
          if (v31)
          {
            sub_2159F7DA8(0, &qword_27CA7EAC8);
            v17 = sub_215A705E0();
          }

          else
          {
            v17 = MEMORY[0x277D84F90];
          }

          v84 = v32;
          v79 = v17 & 0xFFFFFFFFFFFFFF8;
          if (v17 >> 62)
          {
            v81 = sub_215A70CD0();
          }

          else
          {
            v81 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v59 = 0;
          v80 = v17 & 0xC000000000000001;
          v75 = MEMORY[0x277D84F90];
          v60 = (v7 + 8);
          v78 = v17;
          while (v81 != v59)
          {
            if (v80)
            {
              v69 = MEMORY[0x216073710](v59, v17);
            }

            else
            {
              if (v59 >= *(v79 + 16))
              {
                goto LABEL_90;
              }

              v69 = *(v17 + 8 * v59 + 32);
            }

            v7 = v69;
            v70 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_89;
            }

            v71 = [v69 title];
            if (!v71)
            {
              sub_215A70540();
              v71 = sub_215A70500();
            }

            v72 = [v7 urlString];
            if (v72)
            {
              v61 = v72;
              sub_215A70540();
            }

            v62 = [v7 uuid];
            v63 = v82;
            sub_215A6F950();

            v64 = objc_allocWithZone(MEMORY[0x277D7B5A0]);
            v65 = sub_215A70500();

            v66 = sub_215A6F940();
            v67 = [v64 initManagedBookmarkWithTitle:v71 address:v65 uuid:v66];

            v68 = (*v60)(v63, v83);
            ++v59;
            v17 = v78;
            if (v67)
            {
              MEMORY[0x2160730A0](v68);
              if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_215A70640();
              }

              sub_215A70660();
              v75 = v84;
              v59 = v70;
            }
          }

          sub_215A2A708(v75, sub_215A3EE10);
        }
      }
    }

    v33 = sub_215A3F81C(v76);

    sub_215A3F92C(v85);

    return v33;
  }

  v77 = v10;
  v12 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = v11;
    v14 = sub_215A70500();
    v15 = [v13 bookmarksMatchingQueryString_];

    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      sub_2159F7DA8(0, &qword_27CA7EAC8);
      v17 = sub_215A705E0();
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v85 = v16;
    if (!(v17 >> 62))
    {
      v79 = v17 & 0xFFFFFFFFFFFFFF8;
      v81 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_34;
    }

LABEL_91:
    v79 = v17 & 0xFFFFFFFFFFFFFF8;
    v81 = sub_215A70CD0();
LABEL_34:
    v43 = 0;
    v80 = v17 & 0xC000000000000001;
    v76 = MEMORY[0x277D84F90];
    v78 = (v7 + 8);
    while (v81 != v43)
    {
      if (v80)
      {
        v52 = MEMORY[0x216073710](v43, v17);
      }

      else
      {
        if (v43 >= *(v79 + 16))
        {
          goto LABEL_84;
        }

        v52 = *(v17 + 8 * v43 + 32);
      }

      v7 = v52;
      v53 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v54 = [v52 title];
      if (!v54)
      {
        sub_215A70540();
        v54 = sub_215A70500();
      }

      v55 = [v7 urlString];
      if (v55)
      {
        v44 = v55;
        sub_215A70540();
      }

      v45 = [v7 uuid];
      v46 = v82;
      sub_215A6F950();

      v47 = objc_allocWithZone(MEMORY[0x277D7B5A0]);
      v48 = sub_215A70500();

      v49 = sub_215A6F940();
      v50 = [v47 initManagedBookmarkWithTitle:v54 address:v48 uuid:v49];

      v51 = (*v78)(v46, v83);
      ++v43;
      if (v50)
      {
        MEMORY[0x2160730A0](v51);
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_215A70640();
        }

        sub_215A70660();
        v76 = v85;
        v43 = v53;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v34 = MEMORY[0x277D84F90];
  v35 = [v11 directChildrenAsWebBookmarks];
  sub_2159F7DA8(0, &unk_2811A28A0);
  v36 = sub_215A705E0();

  v85 = v34;
  if (v36 >> 62)
  {
    v17 = sub_215A70CD0();
    v37 = v77;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v77;
    if (v17)
    {
LABEL_21:
      v38 = 0;
      v39 = v36 & 0xC000000000000001;
      do
      {
        if (v39)
        {
          v40 = MEMORY[0x216073710](v38, v36);
        }

        else
        {
          if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v40 = *(v36 + 8 * v38 + 32);
        }

        v41 = v40;
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        if ([v40 isFolder])
        {
          sub_215A70C60();
          v7 = *(v85 + 16);
          sub_215A70C90();
          sub_215A70CA0();
          sub_215A70C70();
        }

        else
        {
        }

        ++v38;
      }

      while (v42 != v17);
      v56 = 0;
      v83 = v85;
      v85 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v39)
        {
          v57 = MEMORY[0x216073710](v56, v36);
        }

        else
        {
          if (v56 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v57 = *(v36 + 8 * v56 + 32);
        }

        v58 = v57;
        v7 = (v56 + 1);
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if ([v57 isFolder])
        {
        }

        else
        {
          sub_215A70C60();
          sub_215A70C90();
          sub_215A70CA0();
          sub_215A70C70();
        }

        ++v56;
        if (v7 == v17)
        {
          v37 = v77;
          v33 = v83;
          goto LABEL_94;
        }
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_94:

  return v33;
}

BOOL sub_215A2F820(void **a1, void **a2, void *a3)
{
  v72 = a3;
  v73 = sub_215A6F910();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EB10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v69 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v69 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - v27;
  v29 = *a1;
  v30 = *a2;
  v31 = [v29 dateAdded];
  if (v72)
  {
    v72 = v30;
    if (v31)
    {
      v32 = v31;
      sub_215A6F8E0();

      v33 = v74;
      v34 = *(v74 + 56);
      v35 = v14;
      v36 = 0;
    }

    else
    {
      v33 = v74;
      v34 = *(v74 + 56);
      v35 = v14;
      v36 = 1;
    }

    v42 = v73;
    v34(v35, v36, 1, v73);
    sub_215A26130(v14, v17, &unk_27CA7EB10);
    v43 = *(v33 + 48);
    if (v43(v17, 1, v42))
    {
      sub_21583F14C(v17, &unk_27CA7EB10);
      v44 = 0.0;
    }

    else
    {
      v45 = v71;
      (*(v33 + 16))(v71, v17, v42);
      sub_21583F14C(v17, &unk_27CA7EB10);
      sub_215A6F8D0();
      v44 = v46;
      (*(v33 + 8))(v45, v42);
    }

    v47 = [v72 dateAdded];
    v48 = v70;
    if (v47)
    {
      v49 = v47;
      sub_215A6F8E0();

      v33 = v74;
      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v34(v48, v50, 1, v42);
    sub_215A26130(v48, v11, &unk_27CA7EB10);
    if (v43(v11, 1, v42))
    {
      sub_21583F14C(v11, &unk_27CA7EB10);
      v51 = 0.0;
    }

    else
    {
      v52 = v71;
      (*(v33 + 16))(v71, v11, v42);
      sub_21583F14C(v11, &unk_27CA7EB10);
      sub_215A6F8D0();
      v51 = v53;
      (*(v33 + 8))(v52, v42);
    }

    return v44 < v51;
  }

  else
  {
    v72 = v20;
    if (v31)
    {
      v37 = v31;
      sub_215A6F8E0();

      v38 = v74;
      v39 = *(v74 + 56);
      v40 = v26;
      v41 = 0;
    }

    else
    {
      v38 = v74;
      v39 = *(v74 + 56);
      v40 = v26;
      v41 = 1;
    }

    v55 = v73;
    v39(v40, v41, 1, v73);
    sub_215A26130(v26, v28, &unk_27CA7EB10);
    v56 = *(v38 + 48);
    if (v56(v28, 1, v55))
    {
      sub_21583F14C(v28, &unk_27CA7EB10);
      v57 = 0.0;
    }

    else
    {
      v58 = v71;
      (*(v38 + 16))(v71, v28, v55);
      sub_21583F14C(v28, &unk_27CA7EB10);
      sub_215A6F8D0();
      v57 = v59;
      (*(v38 + 8))(v58, v55);
    }

    v60 = [v30 dateAdded];
    v61 = v72;
    if (v60)
    {
      v62 = v60;
      sub_215A6F8E0();

      v38 = v74;
      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = v73;
    v39(v61, v63, 1, v73);
    sub_215A26130(v61, v23, &unk_27CA7EB10);
    if (v56(v23, 1, v64))
    {
      sub_21583F14C(v23, &unk_27CA7EB10);
      v65 = 0.0;
    }

    else
    {
      v66 = v71;
      (*(v38 + 16))(v71, v23, v64);
      sub_21583F14C(v23, &unk_27CA7EB10);
      sub_215A6F8D0();
      v65 = v67;
      (*(v38 + 8))(v66, v64);
    }

    return v65 < v57;
  }
}

BOOL sub_215A2FEC0(id *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [*a1 title];
  sub_215A70540();

  v6 = [v4 title];
  sub_215A70540();

  sub_215A41998();
  v7 = sub_215A70B60();

  v8 = -1;
  if (a3)
  {
    v8 = 1;
  }

  return v7 == v8;
}

BOOL sub_215A2FFB4(void **a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  sub_215A707D0();
  if (!v6)
  {
    v7 = [v4 address];
    sub_215A70540();
  }

  sub_215A707D0();
  if (!v8)
  {
    v9 = [v5 address];
    sub_215A70540();
  }

  sub_215A41998();
  v10 = sub_215A70B60();

  v11 = -1;
  if (a3)
  {
    v11 = 1;
  }

  return v10 == v11;
}

void sub_215A300D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_215A6FE20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_215A304C4(a2);
    if (v17)
    {
      v18 = v17;
      if ([v17 isFolder])
      {
        v19 = sub_215A2BCF0(v18);
        v20 = &v16[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 8))(v19, ObjectType, v21);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        v23 = [objc_allocWithZone(MEMORY[0x277D28F40]) init];
        v24 = [v23 navigationIntentWithBookmark_];

        if (v24)
        {
          [v24 setShouldDismissSidebarOnLoad_];
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            [v25 handleNavigationIntent:v24 completion:0];
            swift_unknownObjectRelease();
          }

          sub_215A07074(a3, v7, &qword_27CA7EAB0);
          if ((*(v9 + 48))(v7, 1, v8) == 1)
          {

            sub_21583F14C(v7, &qword_27CA7EAB0);
          }

          else
          {
            (*(v9 + 32))(v14, v7, v8);
            (*(v9 + 104))(v12, *MEMORY[0x277D28B68], v8);
            v26 = sub_215A6FE10();
            v27 = *(v9 + 8);
            v27(v12, v8);
            if ((v26 & 1) != 0 && (v28 = [objc_opt_self() sharedLogger]) != 0)
            {
              v29 = v28;
              [v28 didClickRecentlySavedBookmark];

              v27(v14, v8);
            }

            else
            {
              v27(v14, v8);
            }
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

id sub_215A304C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  if ([a1 subtype] == 1)
  {
    return a1;
  }

  v7 = [a1 managedBookmarkUUID];
  if (v7)
  {
    v8 = v7;
    sub_215A6F950();

    v9 = sub_215A6F960();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    sub_21583F14C(v5, &unk_27CA7DF80);
    return a1;
  }

  else
  {
    v10 = sub_215A6F960();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_21583F14C(v5, &unk_27CA7DF80);
    return [*(v1 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) bookmarkWithID_];
  }
}

void sub_215A30674(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_215A6F870();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_215A304C4(a4);
    if (!v16)
    {
      v18 = v15;
LABEL_27:

      return;
    }

    v17 = v16;
    v49 = v9;
    swift_getObjectType();
    sub_215A6FB60();
    sub_215A6FBB0();
    if ((sub_215A6FCA0() & 1) == 0)
    {
      if (![a4 isReadingListItem])
      {
        [v17 isFolder];
      }

      sub_215A6FB80();
    }

    v18 = v17;
    sub_215A6FB10();
    v19 = sub_215A6FBB0();
    if (v19)
    {
      if (v19 != 1)
      {
        v24 = v18;
        swift_unknownObjectRetain();
        sub_215A41128(v24, v15, a1, a2, v24);
        swift_unknownObjectRelease();

        v25 = *&v15[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection];
        v26 = [v25 bookmarkWithID_];

        sub_215A6FB30();
LABEL_26:

        goto LABEL_27;
      }

      v48 = v10;
      v20 = swift_allocObject();
      v20[2] = v15;
      v20[3] = v18;
      v20[4] = a1;
      v20[5] = a2;
      v21 = v18;
      swift_unknownObjectRetain();
      v22 = v15;
      sub_215A30DC4(v21, sub_215A41020, v20);

      v23 = [v21 previewText];
      v47 = v11;
      if (v23)
      {
      }

      else
      {
        sub_215A41744(v21);
      }

      v27 = [v21 previewText];
      if (v27)
      {
        v28 = v27;
        sub_215A70540();
      }

      v11 = v47;
      sub_215A6FB20();
      sub_215A707D0();
      sub_215A6FBD0();
      v10 = v48;
    }

    v29 = sub_215A70790();
    if (v29)
    {
      v30 = v29;
      sub_215A6FB90();
    }

    else
    {
      v45 = v13;
      v31 = swift_allocObject();
      v31[2] = a1;
      v31[3] = a2;
      v46 = v31;
      v31[4] = v18;
      v32 = v18;
      swift_unknownObjectRetain();
      v48 = v32;
      v33 = v10;
      v34 = [v32 address];
      sub_215A70540();

      v35 = v33;
      v36 = v49;
      sub_215A6F860();

      if ((*(v11 + 48))(v36, 1, v35) == 1)
      {
        sub_21583F14C(v36, &qword_27CA7E0C0);
      }

      else
      {
        v37 = v45;
        (*(v11 + 32))(v45, v36, v35);
        v38 = [v48 UUID];
        v39 = sub_215A70540();
        v48 = v35;
        v40 = v39;
        v41 = v11;
        v43 = v42;

        sub_215A37730(v37, v40, v43, sub_215A40FEC, v46);

        (*(v41 + 8))(v37, v48);
      }
    }

    sub_215A707A0();
    sub_215A6FB40();
    [v18 isDeletable];
    sub_215A6FB70();
    if (sub_215A707B0())
    {
      v44 = [objc_opt_self() safari_browserDefaults];
      sub_215A708F0();
    }

    sub_215A6FB50();
    sub_215A707C0();
    sub_215A6FBC0();
    goto LABEL_26;
  }
}

void sub_215A30CD8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_215A6FB00();
    if (v5)
    {
      v6 = v5;
      sub_2159F7DA8(0, &unk_2811A28A0);
      v7 = a3;
      v8 = sub_215A70A80();

      if (v8)
      {
        v9 = a1;
        sub_215A6FBA0();
      }
    }
  }

  else
  {

    sub_215A41744(a3);
  }
}

void sub_215A30DC4(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = sub_215A70440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_215A70460();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedApplication];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 readingListLeadImageCache];

  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v33 = v9;
  v34 = v6;
  v16 = [a1 readingListIconUUID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_215A70540();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v32 = v10;
  v21 = [a1 iconData];
  v35 = v5;
  if (v21)
  {
    v22 = v21;
    v23 = sub_215A6F890();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v36 = *(v36 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_imageLoadingQueue);
  v26 = swift_allocObject();
  v26[2] = v18;
  v26[3] = v20;
  v26[4] = v15;
  v26[5] = v23;
  v27 = v37;
  v26[6] = v25;
  v26[7] = v27;
  v26[8] = a3;
  aBlock[4] = sub_215A418D8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2159F7E08;
  aBlock[3] = &block_descriptor_197;
  v28 = _Block_copy(aBlock);
  v29 = v15;
  sub_215A418EC(v23, v25);

  sub_215A70450();
  v38 = MEMORY[0x277D84F90];
  sub_215A41A94(&qword_2811A28C0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7ECE0);
  sub_2159FB2D8(&qword_2811A28D0, &qword_27CA7ECE0);
  v30 = v35;
  sub_215A70B90();
  MEMORY[0x2160734C0](0, v12, v8, v28);
  _Block_release(v28);
  sub_215A41954(v23, v25);

  (*(v34 + 8))(v8, v30);
  (*(v32 + 8))(v12, v33);
}

void sub_215A311BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t, uint64_t))
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v15 = a1;
    v10 = sub_215A6FB00();
    if (v10)
    {
      v11 = v10;
      sub_2159F7DA8(0, &unk_2811A28A0);
      v12 = a4;
      v13 = sub_215A70A80();

      if (v13)
      {
        v14 = v15;
        a5(a1, ObjectType, a3);
      }
    }
  }
}

uint64_t sub_215A312B4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_215A6F870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_215A304C4(a2);
    if (!v12)
    {

      return 0;
    }

    v13 = v12;
    if ([v12 isFolder])
    {
      v14 = *&v11[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection];
      v15 = [v14 listWithID_];

      if (v15)
      {
        if ([v15 bookmarkCount])
        {
          v16 = sub_215A2BCF0(v13);

          return v16;
        }
      }

      return 0;
    }

    v17 = [v13 address];
    sub_215A70540();

    sub_215A6F860();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_21583F14C(v5, &qword_27CA7E0C0);
      return 0;
    }

    (*(v7 + 32))(v9, v5, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = sub_215A6F840();
      v16 = [v19 linkPreviewViewControllerForURL_];

      swift_unknownObjectRelease();
    }

    else
    {

      v16 = 0;
    }

    (*(v7 + 8))(v9, v6);
    return v16;
  }

  return result;
}

id sub_215A315E4(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = sub_215A304C4(a3);
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  v21[4] = sub_215A31844(v7, a1);
  v9 = 0;
  v21[5] = sub_215A31CF8(v8, a1);
  v20 = MEMORY[0x277D84F90];
  while (v9 != 2)
  {
    v10 = v21[v9++ + 4];
    if (v10)
    {
      v11 = v10;
      MEMORY[0x2160730A0]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB08);
  swift_arrayDestroy();
  v12 = *&v6[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection];
  v13 = swift_unknownObjectWeakLoadStrong();
  sub_2159F7DA8(0, &unk_2811A2520);
  v14 = v12;
  v15 = sub_215A705D0();

  v16 = [v8 _sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler_];

  swift_unknownObjectRelease();
  if ([v8 isReadingListItem])
  {
    v17 = v16;
    v18 = sub_215A70500();
    [v17 setAccessibilityIdentifier_];
  }

  return v16;
}

id sub_215A31844(void *a1, void *a2)
{
  v5 = sub_215A6FA60();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EB10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = [a1 isReadingListItem];
  result = 0;
  if (v15)
  {
    v17 = [a1 dateLastViewed];
    if (v17)
    {
      sub_215A6F8E0();

      v18 = sub_215A6F910();
      (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
      sub_21583F14C(v14, &unk_27CA7EB10);
      sub_215A6FA50();
      sub_215A6FA50();
      v19 = sub_215A6FA30();
      v36 = v20;
      v37 = v19;
      v21 = *(v6 + 8);
      v21(v9, v5);
      v21(v11, v5);
    }

    else
    {
      v23 = sub_215A6F910();
      (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
      sub_21583F14C(v14, &unk_27CA7EB10);
      sub_215A6FA50();
      sub_215A6FA50();
      v24 = sub_215A6FA30();
      v36 = v25;
      v37 = v24;
      v26 = *(v6 + 8);
      v26(v9, v5);
      v26(v11, v5);
    }

    v22 = sub_215A70500();
    v27 = [objc_opt_self() systemImageNamed_];

    v28 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
    sub_2159F7DA8(0, &unk_2811A2520);
    v29 = swift_allocObject();
    *(v29 + 16) = a2;
    *(v29 + 24) = v28;
    *(v29 + 32) = a1;
    *(v29 + 40) = v17 != 0;
    v30 = v27;
    v31 = a2;
    v32 = v28;
    v33 = a1;
    v34 = sub_215A70A90();
    v35 = sub_215A70500();

    [v34 setAccessibilityIdentifier_];

    return v34;
  }

  return result;
}

id sub_215A31CF8(void *a1, void *a2)
{
  v5 = sub_215A6FA60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isReadingListItem])
  {
    return 0;
  }

  v9 = [objc_opt_self() safari_browserDefaults];
  v10 = [v9 safari_shouldAutomaticallyDownloadReadingListItems];

  if (v10)
  {
    return 0;
  }

  v12 = [a1 shouldArchive];
  if (v12)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v13 = result;
    v14 = [result isNetworkReachable];

    if (!v14)
    {
      return 0;
    }

LABEL_7:
    v15 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
    sub_215A6FA50();
    sub_215A6FA40();
    (*(v6 + 8))(v8, v5);
    v16 = sub_215A70500();
    v17 = v12 ^ 1;
    v18 = [objc_opt_self() systemImageNamed_];

    sub_2159F7DA8(0, &unk_2811A2520);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v15;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;
    v20 = v15;
    v21 = a1;
    v22 = a2;
    return sub_215A70A90();
  }

  __break(1u);
  return result;
}

void sub_215A32030(void *a1)
{
  if (([a1 isFolder] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = swift_unknownObjectWeakLoadStrong();

      if (v3)
      {
        [v3 linkPreviewProviderWillDismissPreview];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_215A320C0(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EB10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  v8 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_215A31844(a3, a1);

    if (v11)
    {
      v12 = [a3 dateLastViewed];
      if (v12)
      {
        v13 = v12;
        sub_215A6F8E0();

        v14 = 0;
        v15 = &selRef_systemOrangeColor;
      }

      else
      {
        v15 = &selRef_systemBlueColor;
        v14 = 1;
      }

      v16 = sub_215A6F910();
      (*(*(v16 - 8) + 56))(v7, v14, 1, v16);
      sub_21583F14C(v7, &unk_27CA7EB10);
      v17 = [objc_opt_self() *v15];
      v18 = v17;
      sub_215A44C78(v17);

      MEMORY[0x2160730A0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();

      return v21;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v8;
}

uint64_t sub_215A322D8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_215A6FA60();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return v13;
  }

  v14 = Strong;
  v15 = sub_215A304C4(a3);
  if (!v15)
  {
LABEL_22:

    return v13;
  }

  v16 = v15;
  v48[4] = sub_215A32880(v15, a1);
  if ([v16 isEditable] & 1) == 0 || (sub_2159F7DA8(0, &unk_2811A2530), v17 = objc_msgSend(*&v14[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection], sel_rootBookmark), v18 = sub_215A70A80(), v17, (v18) || objc_msgSend(v16, sel_isReadingListItem))
  {
    v19 = 0;
  }

  else
  {
    v44 = sub_2159F7DA8(0, &unk_2811A2520);
    sub_215A6FA50();
    sub_215A6FA50();
    sub_215A6FA30();
    v43 = v36;
    v37 = *(v6 + 8);
    v37(v9, v5);
    v37(v11, v5);
    v38 = sub_215A70500();
    v39 = [objc_opt_self() systemImageNamed_];

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v16;
    v42 = v16;
    v19 = sub_215A70A90();
  }

  v48[5] = v19;
  result = sub_215A31CF8(v16, a1);
  v21 = 0;
  v48[6] = result;
  v47 = v13;
  v44 = v46;
  v22 = &selRef_addOriginalQueries_;
  v23 = &selRef_tabGroupsMenuElementsWithOptions_newTabGroupName_hostTitle_descendantCount_movingSelectedTabs_actionHandler_dismissHandler_;
LABEL_8:
  if (v21 <= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = v21;
  }

  while (1)
  {
    if (v21 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB08);
      swift_arrayDestroy();

      goto LABEL_22;
    }

    if (v24 == v21)
    {
      break;
    }

    v25 = v48[v21++ + 4];
    if (v25)
    {
      v26 = v25;
      v27 = [v26 v22[191]];
      v28 = v23;
      v29 = [v26 v23[146]];
      if (!v29)
      {
        sub_215A70540();
        v29 = sub_215A70500();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = v26;
      v46[2] = sub_215A40F50;
      v46[3] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v46[0] = sub_215A4FAE4;
      v46[1] = &block_descriptor_163;
      v31 = _Block_copy(aBlock);
      v32 = objc_opt_self();
      v33 = v26;
      v34 = [v32 contextualActionWithStyle:(v27 >> 1) & 1 title:v29 handler:v31];

      _Block_release(v31);

      [v34 setBackgroundColor_];
      if ([objc_opt_self() isSolariumEnabled])
      {
        v35 = [v33 image];
        [v34 setImage_];
      }

      MEMORY[0x2160730A0]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      result = sub_215A70660();
      v13 = v47;
      v22 = &selRef_addOriginalQueries_;
      v23 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215A32880(void *a1, void *a2)
{
  v5 = sub_215A6FA60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isDeletable])
  {
    return 0;
  }

  sub_2159F7DA8(0, &unk_2811A2530);
  v9 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  v10 = [v9 rootBookmark];
  v11 = sub_215A70A80();

  if (v11)
  {
    return 0;
  }

  v12 = [v9 bookmarkWithID_];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isWebFilterAllowedSitesFolder];

    if (v14)
    {
      return 0;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_2159F7DA8(0, &unk_2811A2520);
  sub_215A6FA50();
  sub_215A6FA40();
  (*(v6 + 8))(v8, v5);
  v17 = sub_215A70500();
  v18 = [objc_opt_self() systemImageNamed_];

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = Strong;
  v19[4] = v9;
  v19[5] = a2;
  v20 = a1;
  v21 = v9;
  v22 = a2;
  return sub_215A70A90();
}

uint64_t sub_215A32B40@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_215A6FE20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v47 - v11;
  v13 = sub_215A6FD60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47[0] = v10;
    v48 = a2;
    v51 = v6;
    v18 = v12;
    v19 = [Strong allSyntheticBookmarkFolders];
    swift_unknownObjectRelease();
    sub_2159F7DA8(0, &unk_2811A2750);
    v20 = sub_215A705E0();

    *v16 = a1;
    (*(v14 + 104))(v16, *MEMORY[0x277D28B60], v13);
    sub_215A41A94(&qword_2811A28B0, v21, type metadata accessor for BookmarksViewContentProvider);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    v24 = objc_allocWithZone(sub_215A6FF90());

    v47[1] = v3;
    v25 = sub_215A6FD70();
    sub_215A6FBE0();
    sub_215A6FC10();
    sub_215A6FCC0();
    v26 = *MEMORY[0x277D28B70];
    v49 = v18;
    v50 = v7;
    v27 = *(v7 + 104);
    v27(v18, v26, v51);
    v28 = objc_opt_self();
    v29 = [v28 safari_browserDefaults];
    v30 = sub_215A708D0();

    if (!v30)
    {
      v31 = [v28 safari_browserDefaults];
      v32 = sub_215A70850();

      v34 = v49;
      v33 = v50;
      v35 = v51;
      (*(v50 + 8))(v49, v51);
      if (v32 == 1)
      {
        v36 = v26;
      }

      else
      {
        v36 = *MEMORY[0x277D28B78];
      }

      v37 = v47[0];
      v27(v47[0], v36, v35);
      (*(v33 + 32))(v34, v37, v35);
    }

    if (v20 >> 62)
    {
      sub_215A70CD0();
    }

    v38 = v48;

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v25;

    v41 = v25;
    v42 = v49;
    sub_215A6FE50();

    *(swift_allocObject() + 16) = v41;
    sub_215A6FE00();
    (*(v50 + 8))(v42, v51);
    v43 = sub_215A6FED0();
    return (*(*(v43 - 8) + 56))(v38, 0, 1, v43);
  }

  else
  {
    v45 = sub_215A6FED0();
    v46 = *(*(v45 - 8) + 56);

    return v46(a2, 1, 1, v45);
  }
}

void sub_215A330F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v49 = sub_215A6FED0();
  v12 = *(v49 - 8);
  v13 = MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v17 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
      sub_215A6FF70();
      *(swift_allocObject() + 16) = xmmword_215A96960;
      sub_215A6FEF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
      sub_215A701D0();

      v45 = a3;
      if (a5 >> 62)
      {
        v34 = sub_215A70CD0();
      }

      else
      {
        v34 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = MEMORY[0x277D84F90];
      if (v34)
      {
        v51 = MEMORY[0x277D84F90];
        sub_215A52BEC(0, v34 & ~(v34 >> 63), 0);
        if (v34 < 0)
        {
          goto LABEL_37;
        }

        v36 = 0;
        v35 = v51;
        v37 = a5;
        v48 = a5 & 0xC000000000000001;
        v38 = a5;
        do
        {
          if (v48)
          {
            v39 = MEMORY[0x216073710](v36, v37);
          }

          else
          {
            v39 = *(v37 + 8 * v36 + 32);
          }

          v40 = v39;
          sub_215A337BC(v39, v16);

          v51 = v35;
          v42 = *(v35 + 16);
          v41 = *(v35 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_215A52BEC(v41 > 1, v42 + 1, 1);
            v35 = v51;
          }

          ++v36;
          *(v35 + 16) = v42 + 1;
          (*(v12 + 32))(v35 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v42, v16, v49);
          v37 = v38;
        }

        while (v34 != v36);
      }

      sub_215A3F38C(v35, v45);
LABEL_32:

      goto LABEL_33;
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
LABEL_33:

      return;
    }

    v19 = v18;
    v20 = sub_215A70500();
    v21 = [v19 perTabGroupBookmarkListForFolderID:0 filteredUsingString:v20];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
    sub_215A6FF70();
    *(swift_allocObject() + 16) = xmmword_215A96960;
    sub_215A6FF60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
    sub_215A701D0();

    v22 = [v21 bookmarkArray];
    sub_2159F7DA8(0, &unk_2811A28A0);
    v23 = sub_215A705E0();

    if (v23 >> 62)
    {
      v24 = sub_215A70CD0();
      v45 = a3;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = a3;
      if (v24)
      {
LABEL_8:
        v44 = v21;
        v51 = MEMORY[0x277D84F90];
        sub_215A52BEC(0, v24 & ~(v24 >> 63), 0);
        v48 = v24;
        if ((v24 & 0x8000000000000000) == 0)
        {
          v25 = 0;
          v26 = v51;
          v27 = v23;
          v47 = v23 & 0xC000000000000001;
          v28 = v46;
          do
          {
            if (v47)
            {
              v29 = MEMORY[0x216073710](v25, v27);
            }

            else
            {
              v29 = *(v27 + 8 * v25 + 32);
            }

            v30 = v29;
            v31 = sub_215A6FE20();
            (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
            sub_215A2B4D0(v30, v11, 0);

            sub_21583F14C(v11, &qword_27CA7EAB0);
            v51 = v26;
            v33 = *(v26 + 16);
            v32 = *(v26 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_215A52BEC(v32 > 1, v33 + 1, 1);
              v26 = v51;
            }

            ++v25;
            *(v26 + 16) = v33 + 1;
            (*(v12 + 32))(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, v28, v49);
            v27 = v23;
          }

          while (v48 != v25);

          v21 = v44;
          goto LABEL_31;
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }
    }

    v26 = MEMORY[0x277D84F90];
LABEL_31:
    sub_215A3F38C(v26, v45);

    goto LABEL_32;
  }
}

id sub_215A337BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_215A6FE20();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_215A6FD60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 bookmarkList];
  if (result)
  {
    v12 = result;
    v13 = [result folderID];

    *v10 = v13;
    (*(v8 + 104))(v10, *MEMORY[0x277D28B60], v7);
    sub_215A41A94(&qword_2811A28B0, v14, type metadata accessor for BookmarksViewContentProvider);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    objc_allocWithZone(sub_215A6FF90());
    v17 = a1;
    v18 = v2;
    v19 = sub_215A6FD70();
    *(swift_allocObject() + 16) = v17;
    v20 = v17;
    sub_215A6FBE0();
    sub_215A6FC10();
    sub_215A6FCC0();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v23 = v20;

    sub_215A6FCF0();

    v24 = [objc_opt_self() safari_browserDefaults];
    v25 = sub_215A70850();

    v35 = v4;
    v26 = MEMORY[0x277D28B70];
    if (v25 != 1)
    {
      v26 = MEMORY[0x277D28B78];
    }

    (*(v4 + 104))(v6, *v26, v37);
    v27 = [v23 title];
    sub_215A70540();
    result = [v23 bookmarkList];
    if (result)
    {
      v28 = result;

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = v19;

      v31 = v19;
      sub_215A6FE40();

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v31;

      sub_215A6FE00();
      (*(v35 + 8))(v6, v37);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215A33CE8()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6FA50();
  v4 = sub_215A6FA40();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_215A33DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_215A6F960();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedController];
  v7 = [v6 topLevelManagedBookmarkFolder];

  if (v7)
  {
    v8 = v7;
    v9 = [v8 title];
    if (!v9)
    {
      sub_215A70540();
      v9 = sub_215A70500();
    }

    v10 = [v8 uuid];
    sub_215A6F950();

    v11 = objc_allocWithZone(MEMORY[0x277D7B5A0]);
    v12 = sub_215A6F940();
    v13 = [v11 initManagedBookmarkFolderWithTitle:v9 uuid:v12];

    (*(v3 + 8))(v5, v2);
    v14 = sub_215A2BCF0(v13);

    v15 = [v8 children];
    sub_2159F7DA8(0, &qword_27CA7EAC8);
    v16 = sub_215A705E0();

    if (v16 >> 62)
    {
      sub_215A70CD0();
    }

    v17 = [v8 title];

    sub_215A70540();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v14;

    v20 = v14;
    sub_215A6FE90();

    *(swift_allocObject() + 16) = v20;
    v21 = v20;
    sub_215A6FE00();

    v22 = sub_215A6FED0();
    return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
  }

  else
  {
    v24 = sub_215A6FED0();
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }
}

void sub_215A341F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v40 = sub_215A6FED0();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [a5 bookmarkList];
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {

      return;
    }

    v17 = v16;
    v18 = [v15 folderID];
    v19 = sub_215A70500();
    v20 = [v17 perTabGroupBookmarkListForFolderID:v18 filteredUsingString:v19];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EAF8);
    sub_215A6FF70();
    *(swift_allocObject() + 16) = xmmword_215A96960;
    sub_215A6FF60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAE0);
    sub_215A701D0();

    v21 = [v20 bookmarkArray];
    sub_2159F7DA8(0, &unk_2811A28A0);
    v22 = sub_215A705E0();

    if (v22 >> 62)
    {
      v23 = sub_215A70CD0();
      if (v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_6:
        v33 = v20;
        v34 = v15;
        v39 = v13;
        v35 = a3;
        v41 = MEMORY[0x277D84F90];
        sub_215A52BEC(0, v23 & ~(v23 >> 63), 0);
        v38 = v23;
        if (v23 < 0)
        {
          __break(1u);
          return;
        }

        v24 = 0;
        v25 = v41;
        v26 = v22;
        v37 = v22 & 0xC000000000000001;
        v27 = v36;
        do
        {
          if (v37)
          {
            v28 = MEMORY[0x216073710](v24, v26);
          }

          else
          {
            v28 = *(v26 + 8 * v24 + 32);
          }

          v29 = v28;
          v30 = sub_215A6FE20();
          (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
          sub_215A2B4D0(v29, v9, 0);

          sub_21583F14C(v9, &qword_27CA7EAB0);
          v41 = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_215A52BEC(v31 > 1, v32 + 1, 1);
            v25 = v41;
          }

          ++v24;
          *(v25 + 16) = v32 + 1;
          (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v27, v40);
          v26 = v22;
        }

        while (v38 != v24);

        v15 = v34;
        a3 = v35;
        v13 = v39;
        v20 = v33;
        goto LABEL_19;
      }
    }

    v25 = MEMORY[0x277D84F90];
LABEL_19:
    sub_215A3F38C(v25, a3);
  }
}

uint64_t sub_215A346D0(void *a1)
{
  v1 = [a1 title];
  v2 = sub_215A70540();

  return v2;
}

uint64_t sub_215A34724(void *a1)
{
  v1 = [a1 bookmarkList];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {

      swift_unknownObjectRelease();
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_215A34808(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);

      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a2, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void *sub_215A348BC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = a2;
  return a2;
}

void sub_215A3491C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 48))(ObjectType, v7);
      swift_unknownObjectRelease();
      v10 = [objc_allocWithZone(MEMORY[0x277CDB8C8]) initWithBookmark:a3 inCollection:*&v5[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection]];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      [v10 setBookmarkNavDelegate_];
      if ([v11 prepareForPresentationForAddingBookmark_])
      {
        [v9 presentViewController:v11 animated:1 completion:0];
      }

      else
      {
        [objc_opt_self() showLockedDatabaseAlertForAction:0 fromViewController:v9];
      }
    }

    else
    {
      v9 = v5;
    }
  }
}

uint64_t sub_215A34A7C(int a1, id a2, void *a3, void *a4, uint64_t a5)
{
  if ([a2 subtype] == 1)
  {
    if (a3)
    {
      v9 = [a2 UUID];
      if (!v9)
      {
        sub_215A70540();
        v9 = sub_215A70500();
      }

      [a3 deleteScopedBookmarkWithUUID:v9 completionHandler:0];
    }
  }

  else
  {
    v10 = objc_opt_self();
    if ([v10 isLockedSync])
    {
      [a4 deleteBookmark_];
    }

    else if ([v10 lockSync])
    {
      [a4 deleteBookmark_];
      [v10 unlockSync];
    }

    else
    {
      v11 = [objc_opt_self() sharedFeatureManager];
      v12 = [v11 isInMemoryBookmarkChangeTrackingAvailable];

      if (v12)
      {
        [a4 deleteBookmarkInMemory_];
      }

      else
      {
        [objc_opt_self() showLockedDatabaseAlertForAction:0 fromViewController:a5];
      }
    }
  }

  return sub_215A6FAC0();
}

id sub_215A34C20(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = objc_opt_self();
  if ([v7 isLockedSync])
  {
    [a4 identifier];
    if (a2)
    {
      v8 = sel_saveArchiveForReadingListBookmarkWithID_;
    }

    else
    {
      v8 = sel_deleteArchiveForReadingListBookmarkWithID_;
    }

    v11 = a3;
  }

  else if ([v7 lockSync])
  {
    v9 = [a4 identifier];
    v10 = &selRef_saveArchiveForReadingListBookmarkWithID_;
    if ((a2 & 1) == 0)
    {
      v10 = &selRef_deleteArchiveForReadingListBookmarkWithID_;
    }

    [a3 *v10];
    v8 = sel_unlockSync;
    v11 = v7;
  }

  else
  {
    v11 = objc_opt_self();
    v8 = sel_showLockedDatabaseAlertForAction_fromViewController_;
  }

  return [v11 v8];
}

uint64_t sub_215A34D78(int a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - v7;
  v9 = [objc_opt_self() safari_browserDefaults];
  v37 = a1;
  v36 = v9;
  if (a1)
  {
    v10 = sub_215A70870();
  }

  else
  {
    v10 = sub_215A70850();
  }

  v34 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_215A96980;
  sub_215A6FA50();
  sub_215A6FA50();
  v11 = sub_215A6FA30();
  v30[1] = v12;
  v31 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  v14 = sub_215A70500();
  v33 = objc_opt_self();
  v15 = [v33 systemImageNamed_];

  v32 = sub_2159F7DA8(0, &unk_2811A2520);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v37 &= 1u;
  *(v17 + 16) = v37;
  v18 = v36;
  *(v17 + 24) = v36;
  *(v17 + 32) = v16;
  v19 = v18;
  v20 = sub_215A70A90();
  v21 = v35;
  *(v35 + 32) = v20;
  sub_215A6FA50();
  sub_215A6FA50();
  v36 = sub_215A6FA30();
  v31 = v22;
  v13(v6, v2);
  v13(v8, v2);
  v23 = sub_215A70500();
  v24 = [v33 systemImageNamed_];

  sub_2159F7DA8(0, &unk_2811A26B0);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v37;
  *(v26 + 24) = v19;
  *(v26 + 32) = v25;
  v27 = v19;
  *(v21 + 40) = sub_215A70A90();
  v28 = sub_215A70A50();

  return v28;
}

uint64_t sub_215A35238()
{
  ObjectType = swift_getObjectType();
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - v5;
  v28 = byte_27CA804C0;
  sub_215A6FA50();
  sub_215A6FA50();
  v7 = sub_215A6FA30();
  v26[0] = v8;
  v26[1] = v7;
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  v10 = sub_215A70500();
  v27 = objc_opt_self();
  v11 = [v27 systemImageNamed_];

  sub_2159F7DA8(0, &unk_2811A2520);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = ObjectType;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = sub_215A70A90();
  v16 = sub_215A70500();
  [v15 setAccessibilityIdentifier_];

  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v9(v4, v0);
  v9(v6, v0);
  v17 = sub_215A70500();
  v18 = [v27 _systemImageNamed_];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v21 = ObjectType;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v22 = sub_215A70A90();
  v23 = sub_215A70500();
  [v22 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &unk_2811A26B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_215A96980;
  *(v24 + 32) = v15;
  *(v24 + 40) = v22;
  return sub_215A70A50();
}

uint64_t sub_215A35708()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - v5;
  v7 = objc_opt_self();
  v8 = [v7 safari_browserDefaults];
  v9 = sub_215A708D0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  if (v9 == 1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_215A96980;
    *(v10 + 32) = sub_215A35C08();
    v11 = [v7 safari_browserDefaults];
    sub_215A708D0();
    sub_215A6FA50();
    sub_215A6FA50();
    v26 = sub_215A6FA30();
    v12 = *(v1 + 8);
    v12(v4, v0);
    v12(v6, v0);
    v13 = sub_215A70500();
    v14 = [objc_opt_self() systemImageNamed_];

    sub_2159F7DA8(0, &unk_2811A2520);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v15;
    *(v10 + 40) = sub_215A70A90();
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_215A96990;
    v18 = [v7 safari_browserDefaults];
    sub_215A708D0();
    sub_215A6FA50();
    sub_215A6FA50();
    v26 = sub_215A6FA30();
    v19 = *(v1 + 8);
    v19(v4, v0);
    v19(v6, v0);
    v20 = sub_215A70500();
    v21 = [objc_opt_self() systemImageNamed_];

    sub_2159F7DA8(0, &unk_2811A2520);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    *(v23 + 24) = v22;
    *(v17 + 32) = sub_215A70A90();
  }

  sub_2159F7DA8(0, &unk_2811A26B0);
  return sub_215A70A50();
}

uint64_t sub_215A35C08()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v60 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_215A96F50;
  *(inited + 32) = 0;
  sub_215A6FA50();
  sub_215A6FA50();
  v8 = sub_215A6FA30();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  *(inited + 56) = 1;
  sub_215A6FA50();
  sub_215A6FA50();
  v12 = sub_215A6FA30();
  v14 = v13;
  v11(v4, v0);
  v11(v6, v0);
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  *(inited + 80) = 2;
  sub_215A6FA50();
  sub_215A6FA50();
  v15 = sub_215A6FA30();
  v17 = v16;
  v11(v4, v0);
  v11(v6, v0);
  *(inited + 88) = v15;
  *(inited + 96) = v17;
  *(inited + 104) = 3;
  sub_215A6FA50();
  v65 = v11;
  sub_215A6FA50();
  v18 = sub_215A6FA30();
  v20 = v19;
  v11(v4, v0);
  v66 = v0;
  v11(v6, v0);
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  v21 = sub_215A40848(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EA18);
  swift_arrayDestroy();
  v69 = MEMORY[0x277D84F90];
  sub_215A70C80();
  if (v21[2])
  {
    sub_215A39B30(0);
    if (v22)
    {
    }
  }

  v67 = objc_opt_self();
  v23 = [v67 safari_browserDefaults];
  sub_215A708F0();

  v24 = sub_2159F7DA8(0, &unk_2811A2520);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = 0;
  v68 = v24;
  sub_215A70A90();
  sub_215A70C60();
  sub_215A70C90();
  sub_215A70CA0();
  sub_215A70C70();
  if (v21[2])
  {
    sub_215A39B30(1);
    if (v27)
    {
    }
  }

  v28 = v67;
  v29 = [v67 safari_browserDefaults];
  sub_215A708F0();

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = 1;
  sub_215A70A90();
  sub_215A70C60();
  sub_215A70C90();
  sub_215A70CA0();
  sub_215A70C70();
  if (v21[2])
  {
    sub_215A39B30(2);
    if (v32)
    {
    }
  }

  v33 = [v28 safari_browserDefaults];
  sub_215A708F0();

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = 2;
  sub_215A70A90();
  sub_215A70C60();
  sub_215A70C90();
  sub_215A70CA0();
  sub_215A70C70();
  if (v21[2])
  {
    sub_215A39B30(3);
    if (v36)
    {
    }
  }

  v37 = [v28 safari_browserDefaults];
  sub_215A708F0();

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = 3;
  sub_215A70A90();
  sub_215A70C60();
  sub_215A70C90();
  sub_215A70CA0();
  sub_215A70C70();
  v40 = [v28 safari_browserDefaults];
  v41 = sub_215A708F0();

  if (v41)
  {
    v42 = [v28 safari_browserDefaults];
    v43 = sub_215A708F0();

    if ((v43 - 2) >= 2)
    {
      if (v43 != 1)
      {
        v62 = 0;
        v64 = 0;
        v61 = 0xE000000000000000;
        v63 = 0xE000000000000000;
        goto LABEL_20;
      }

      sub_215A6FA50();
      sub_215A6FA50();
      v64 = sub_215A6FA30();
      v63 = v47;
      v48 = v66;
      v49 = v65;
      v65(v4, v66);
      v49(v6, v48);
      sub_215A6FA50();
      v45 = v48;
      v46 = v49;
    }

    else
    {
      sub_215A6FA50();
      sub_215A6FA50();
      v64 = sub_215A6FA30();
      v63 = v44;
      v45 = v66;
      v46 = v65;
      v65(v4, v66);
      v46(v6, v45);
      sub_215A6FA50();
    }

    sub_215A6FA50();
    v62 = sub_215A6FA30();
    v61 = v50;
    v46(v4, v45);
    v46(v6, v45);
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_215A96980;
    v52 = [v28 safari_browserDefaults];
    sub_215A708B0();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v51 + 32) = sub_215A70A90();
    v53 = [v28 &selRef_rootViewControllerViewDidTransitionFromSize_animated_];
    sub_215A708B0();

    sub_2159F7DA8(0, &unk_2811A26B0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v51 + 40) = sub_215A70A90();
    sub_215A70A50();
    MEMORY[0x2160730A0]();
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v28 = v67;
  }

  sub_215A6FA50();
  sub_215A6FA40();
  v65(v6, v66);
  v54 = [v28 safari_browserDefaults];
  v55 = sub_215A708F0();

  if (v21[2])
  {
    sub_215A39B30(v55);
    if (v56)
    {
    }
  }

  sub_2159F7DA8(0, &unk_2811A26B0);
  v57 = sub_215A70500();
  v58 = [objc_opt_self() systemImageNamed_];

  return sub_215A70A50();
}

void sub_215A36A44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() safari_browserDefaults];
    sub_215A70900();

    v3 = &v1[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A36B20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() safari_browserDefaults];
    sub_215A708C0();

    v3 = &v1[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A36BFC()
{
  sub_215A708D0();
  sub_215A708E0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);

      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A36CB8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_215A70880();
  }

  else
  {
    sub_215A70860();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);

      ObjectType = swift_getObjectType();
      (*(v5 + 16))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A36D8C(void *a1)
{
  v2 = v1;
  sub_2159F7DA8(0, &unk_2811A2530);
  v4 = *(v1 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  v5 = [v4 readingListFolder];
  v6 = sub_215A70A80();

  if ((v6 & 1) == 0)
  {
    v7 = v2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 48))(ObjectType, v8);
      swift_unknownObjectRelease();
      v11 = [a1 identifier];
      v12 = [objc_allocWithZone(MEMORY[0x277D7B5A0]) initFolderWithParentID:v11 collectionType:0];
      v13 = objc_allocWithZone(MEMORY[0x277CDB8C8]);
      sub_2159F7DA8(0, &unk_2811A28A0);
      v17 = v12;
      v14 = v4;
      v15 = sub_215A705D0();
      v16 = [v13 initWithFolder:v17 childBookmarks:v15 inCollection:v14];

      if (v16)
      {
        [v16 setBookmarkNavDelegate_];
        if ([v16 prepareForPresentationForAddingBookmark_])
        {
          [v10 presentViewController:v16 animated:1 completion:0];
        }

        else
        {
          [objc_opt_self() showLockedDatabaseAlertForAction:1 fromViewController:v10];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_215A36FD4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_215A36D8C(a3);
  }
}

void sub_215A37030()
{
  byte_27CA804C0 = (byte_27CA804C0 & 1) == 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);

      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_215A370EC(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  if ([v3 isLockedSync])
  {
    sub_2159F7DA8(0, &unk_2811A28A0);
    v5 = sub_215A705D0();
    [a2 deleteBookmarks:v5 postChangeNotification:1];
  }

  else if ([v3 lockSync])
  {
    sub_2159F7DA8(0, &unk_2811A28A0);
    v4 = sub_215A705D0();
    [a2 deleteBookmarks:v4 postChangeNotification:1];

    [v3 unlockSync];
  }
}

id sub_215A37230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = objc_opt_self();
  if ([v6 isLockedSync])
  {
    sub_2159F7DA8(0, &unk_2811A28A0);
    v7 = sub_215A705D0();
    [a2 saveArchivesForReadingListBookmarks_];
  }

  else if ([v6 lockSync])
  {
    sub_2159F7DA8(0, &unk_2811A28A0);
    v8 = sub_215A705D0();
    [a2 saveArchivesForReadingListBookmarks_];

    [v6 unlockSync];
  }

  return [a4 setEditing_];
}

uint64_t sub_215A37348(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_215A70440();
  v33 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_215A70460();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_8;
  }

  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_8:
    if (a5 >> 60 == 15)
    {
      v22 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_215A41900(a4, a5);
    v24 = sub_215A6F880();
    v22 = [v23 initWithData_];

    sub_215A41954(a4, a5);
    goto LABEL_11;
  }

  v21 = sub_215A70500();
  v22 = [a3 loadImageSynchronouslyForIconUUID_];

  if (!v22 && a5 >> 60 != 15)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_2159F7DA8(0, &qword_2811A2910);
  v25 = sub_215A709D0();
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a7;
  v26[4] = v22;
  aBlock[4] = sub_215A41968;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2159F7E08;
  aBlock[3] = &block_descriptor_203;
  v27 = _Block_copy(aBlock);
  v28 = v22;

  sub_215A70450();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_215A41A94(&qword_2811A28C0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7ECE0);
  sub_2159FB2D8(&qword_2811A28D0, &qword_27CA7ECE0);
  sub_215A70B90();
  MEMORY[0x2160734C0](0, v19, v16, v27);
  _Block_release(v27);

  (*(v33 + 8))(v16, v14);
  return (*(v31 + 8))(v19, v32);
}

uint64_t sub_215A37730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = [objc_opt_self() sharedSiteMetadataManager];
  v12 = objc_allocWithZone(MEMORY[0x277D4A730]);
  v13 = sub_215A6F840();
  v14 = [v12 initWithURL:v13 iconSize:0 fallbackType:{24.0, 24.0}];

  v15 = swift_allocObject();
  __asm { FMOV            V0.2D, #24.0 }

  *(v15 + 16) = _Q0;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v45 = sub_215A40DA0;
  v46 = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_215A2A290;
  *(&v44 + 1) = &block_descriptor_10;
  v21 = _Block_copy(&aBlock);

  v22 = [v11 registerOneTimeRequest:v14 priority:2 responseHandler:v21];
  _Block_release(v21);
  if (v22)
  {
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  aBlock = v41;
  v44 = v42;
  v23 = OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_idToFaviconRequestToken;
  swift_beginAccess();
  v24 = *(v6 + v23);
  if (*(v24 + 16) && (v25 = sub_215A39A1C(a2, a3), (v26 & 1) != 0))
  {
    sub_215A07378(*(v24 + 56) + 32 * v25, &v41);
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  swift_endAccess();
  sub_215A07074(&v41, v39, &qword_27CA7E2E0);
  v27 = v40;
  if (v40)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v39, v40);
    v38 = &v38;
    v29 = v11;
    v30 = a3;
    v31 = v14;
    v32 = a2;
    v33 = *(v27 - 8);
    MEMORY[0x28223BE20](v28);
    v35 = v39 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v33 + 16))(v35);
    v36 = sub_215A70D80();
    (*(v33 + 8))(v35, v27);
    a2 = v32;
    v14 = v31;
    a3 = v30;
    v11 = v29;
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v36 = 0;
  }

  [v11 cancelRequestWithToken_];
  swift_unknownObjectRelease();
  sub_215A07074(&aBlock, v39, &qword_27CA7E2E0);
  swift_beginAccess();

  sub_215A2A4B8(v39, a2, a3);
  swift_endAccess();

  sub_21583F14C(&v41, &qword_27CA7E2E0);
  return sub_21583F14C(&aBlock, &qword_27CA7E2E0);
}

void sub_215A37B04(double a1, double a2, uint64_t a3, void (*a4)(void *))
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v7 favicon];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [objc_opt_self() resizedImage:v8 withSize:{a1, a2}];
  if (!v10)
  {

LABEL_8:
    a4(0);
    return;
  }

  v11 = v10;
  [v10 sf:a1 registerFaviconForDarkUserInterfaceStyleWithSize:a2];
  v12 = v11;
  a4(v11);
}

void sub_215A37C28(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_opt_self() unpackMetadataFromResponse_];
  a2();
}

unint64_t sub_215A37CA4(void *a1, unint64_t a2, void *a3)
{
  v5 = v3;
  sub_2159F7DA8(0, &unk_2811A2530);
  v9 = *&v3[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection];
  v10 = [v9 rootBookmark];
  v11 = sub_215A70A80();

  if (v11)
  {
    v12 = sub_215A2E3E8()[2];

    if (v12 > a2)
    {
      if ([a1 isFolder])
      {
        return 0;
      }

      a2 = sub_215A2E3E8()[2];

      if (!HIDWORD(a2))
      {
        return a2;
      }

      __break(1u);
    }

    v13 = sub_215A2E3E8()[2];

    a2 -= v13;
  }

  v14 = [objc_opt_self() safari_browserDefaults];
  v15 = sub_215A708D0();

  if (!v15)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (HIDWORD(a2))
    {
      __break(1u);
      goto LABEL_13;
    }

    return a2;
  }

  v15 = sub_215A2ED4C(a3, 0, 0xE000000000000000);
  v4 = v16;
  v17 = [v9 listWithID:objc_msgSend(a3 skipOffset:sel_identifier) includeHidden:0 includeDescendantsAsChildren:0 filteredUsingString:{0, 0}];
  if (!v17)
  {
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v17 bookmarkArray];
  sub_2159F7DA8(0, &unk_2811A28A0);
  v14 = sub_215A705E0();

LABEL_14:
  if (![a1 isFolder])
  {

    if (!(v4 >> 62))
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

  while (1)
  {
    result = sub_215A70CD0();
    if ((result & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_46:
    result = sub_215A70CD0();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_48;
    }

LABEL_26:
    if ((a2 & 0x8000000000000000) != 0 || a2 >= result)
    {

      v14 = v5;
      v28 = sub_215A2E3E8();
      goto LABEL_36;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x216073710](a2, v4);
    }

    else
    {
      if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v24 = *(v4 + 8 * a2 + 32);
    }

    v25 = v24;

    a2 = sub_215A3827C(v25, v14);
    v15 = v26;

    if (v15)
    {
      v14 = v5;
      v27 = sub_215A2E3E8();

      v28 = v27;
LABEL_36:
      a2 = v28[2];

      goto LABEL_39;
    }

LABEL_38:
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_39:
    if (!HIDWORD(a2))
    {
      return a2;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

LABEL_17:
  if ((a2 & 0x8000000000000000) != 0 || a2 >= result)
  {

    return 0;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_48:
    v21 = MEMORY[0x216073710](a2, v15);
LABEL_22:
    v5 = v21;

    a2 = sub_215A3827C(v5, v14);
    v23 = v22;

    if (v23)
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (a2 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v15 + 8 * a2 + 32);
    goto LABEL_22;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void sub_215A38068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_215A70CD0())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v11 = a2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v12 = *(v11 + 8);
  ObjectType = swift_getObjectType();
  v22 = (*(v12 + 48))(ObjectType, v12);
  swift_unknownObjectRelease();
  v14 = *(a2 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection);
  sub_2159F7DA8(0, &unk_2811A28A0);
  v15 = sub_215A705D0();
  [(WebBookmarkCollection *)v14 dropBookmarks:v15 inFolderWithID:a3 presentingViewController:v22 isAddingBookmark:1];

  if (a5)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v11 + 8);
      v17 = swift_getObjectType();
      (*(v16 + 16))(v17, v16);
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  if (!v10)
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v18 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v18; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x216073710](i, a1);
      }

      else
      {
        v20 = *(a1 + 8 * i + 32);
      }

      v21 = v20;
      [v14 reorderBookmark:v20 toIndex:a4];
    }

    goto LABEL_17;
  }

  v18 = sub_215A70CD0();
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_17:
}

unint64_t sub_215A3827C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_215A70CD0();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216073710](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_2159F7DA8(0, &unk_2811A28A0);
    v8 = sub_215A70A80();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_215A383BC(void *a1)
{
  v3 = sub_215A6FA60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  if ([a1 isEditable])
  {
    sub_2159F7DA8(0, &unk_2811A2530);
    v10 = [*(v1 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) rootBookmark];
    v11 = sub_215A70A80();

    if ((v11 & 1) == 0 && ([a1 isReadingListItem] & 1) == 0)
    {
      sub_2159F7DA8(0, &unk_2811A2520);
      sub_215A6FA50();
      sub_215A6FA50();
      sub_215A6FA30();
      v12 = *(v4 + 8);
      v12(v7, v3);
      v12(v9, v3);
      v13 = sub_215A70500();
      v14 = [objc_opt_self() systemImageNamed_];

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;
      v17 = a1;
      v18 = sub_215A70A90();
      [v18 performWithSender:0 target:0];
    }
  }
}

void sub_215A38734(void *a1, uint64_t a2)
{
  sub_215A07074(a2, v6, &qword_27CA7E2E0);
  if (v7)
  {
    sub_215A6FF90();
    if (swift_dynamicCast())
    {
      v3 = sub_215A32880(a1, v5);
      if (v3)
      {
        v4 = v3;
        [v3 performWithSender:0 target:0];
      }
    }
  }

  else
  {
    sub_21583F14C(v6, &qword_27CA7E2E0);
  }
}

void *sub_215A38A38(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result commitLinkPreviewViewController_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_215A38B58(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_215A38C24()
{
  result = qword_27CA7E9F0;
  if (!qword_27CA7E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7E9F0);
  }

  return result;
}

unint64_t sub_215A38C7C()
{
  result = qword_27CA7E9F8;
  if (!qword_27CA7E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7E9F8);
  }

  return result;
}

unint64_t sub_215A38CD4()
{
  result = qword_27CA7EA00;
  if (!qword_27CA7EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7EA00);
  }

  return result;
}

unint64_t sub_215A38D2C()
{
  result = qword_27CA7EA08;
  if (!qword_27CA7EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7EA08);
  }

  return result;
}

size_t sub_215A38DD0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_215A38FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_215A390B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215A391E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EBB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_215A392E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EB40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_215A393EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

unint64_t sub_215A39474(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_215A39540(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_215A07378(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_215A39540(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_215A3964C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_215A70C50();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_215A3964C(uint64_t a1, unint64_t a2)
{
  v3 = sub_215A39698(a1, a2);
  sub_215A397C8(&unk_2827BBA00);
  return v3;
}

uint64_t sub_215A39698(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_215A398B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_215A70C50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_215A705A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_215A398B4(v10, 0);
        result = sub_215A70C00();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_215A397C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_215A39928(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_215A398B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_215A39928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_215A39A1C(uint64_t a1, uint64_t a2)
{
  sub_215A70E20();
  sub_215A70580();
  v4 = sub_215A70E50();

  return sub_215A39BDC(a1, a2, v4);
}

unint64_t sub_215A39A94(uint64_t a1)
{
  sub_215A6F960();
  sub_215A41A94(&qword_27CA7EB88, 255, MEMORY[0x277CC95F0]);
  v2 = sub_215A704C0();

  return sub_215A39C94(a1, v2);
}

unint64_t sub_215A39B30(uint64_t a1)
{
  sub_215A70E20();
  MEMORY[0x216073910](a1);
  v2 = sub_215A70E50();
  return sub_215A39E58(a1, v2);
}

unint64_t sub_215A39B98(uint64_t a1)
{
  v2 = sub_215A70BB0();

  return sub_215A39EC4(a1, v2);
}

unint64_t sub_215A39BDC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_215A70D90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_215A39C94(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_215A6F960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_215A41A94(&qword_27CA7EB90, 255, MEMORY[0x277CC95F0]);
      v15 = sub_215A704F0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_215A39E58(uint64_t a1, uint64_t a2)
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

unint64_t sub_215A39EC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_215A41A38(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2160736A0](v9, a1);
      sub_215A19D58(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_215A39F8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_215A39A1C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_215A3B780();
      v10 = v12;
    }

    sub_215A07368((*(v10 + 56) + 32 * v8), a3);
    sub_215A3AC78(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_215A3A030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EBA0);
  v31 = a2;
  result = sub_215A70D00();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_215A70E20();
      MEMORY[0x216073910](v20);
      result = sub_215A70E50();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_215A3A2BC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_215A6F960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB80);
  v39 = a2;
  result = sub_215A70D00();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_215A41A94(&qword_27CA7EB88, 255, MEMORY[0x277CC95F0]);
      result = sub_215A704C0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_215A3A69C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EA30);
  v33 = a2;
  result = sub_215A70D00();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_215A07368(v24, v34);
      }

      else
      {
        sub_215A07378(v24, v34);
      }

      sub_215A70E20();
      sub_215A70580();
      result = sub_215A70E50();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_215A07368(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_215A3A954(int64_t a1, uint64_t a2)
{
  v40 = sub_215A6F960();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_215A70BA0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_215A41A94(&qword_27CA7EB88, 255, MEMORY[0x277CC95F0]);
      v23 = sub_215A704C0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_215A3AC78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_215A70BA0() + 1) & ~v5;
    do
    {
      sub_215A70E20();

      sub_215A70580();
      v10 = sub_215A70E50();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_215A3AE28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_215A39B30(a2);
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
      sub_215A3A030(v14, a3 & 1);
      v9 = sub_215A39B30(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for _SFBarItem(0);
        sub_215A70DD0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_215A3B3B0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

void sub_215A3AF70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_215A6F960();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_215A39A94(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_215A3B50C();
      goto LABEL_7;
    }

    sub_215A3A2BC(v17, a3 & 1);
    v23 = sub_215A39A94(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_215A3B28C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_215A70DD0();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_215A3B13C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_215A39A1C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_215A3B780();
      v11 = v19;
      goto LABEL_8;
    }

    sub_215A3A69C(v16, a4 & 1);
    v11 = sub_215A39A1C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_215A70DD0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_215A07368(a1, v22);
  }

  else
  {
    sub_215A3B344(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_215A3B28C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_215A6F960();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_215A3B344(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_215A07368(a4, (a5[7] + 32 * a1));
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

id sub_215A3B3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EBA0);
  v2 = *v0;
  v3 = sub_215A70CF0();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_215A3B50C()
{
  v1 = v0;
  v31 = sub_215A6F960();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB80);
  v3 = *v0;
  v4 = sub_215A70CF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_215A3B780()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EA30);
  v2 = *v0;
  v3 = sub_215A70CF0();
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
        sub_215A07378(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_215A07368(v25, (*(v4 + 56) + v22));
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

uint64_t sub_215A3B924(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_215A70CD0();
LABEL_9:
  result = sub_215A70C40();
  *v1 = result;
  return result;
}

uint64_t sub_215A3B9C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_215A3F32C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_215A3BD90(v8, a2);
  return sub_215A70C70();
}

uint64_t sub_215A3BA48(uint64_t *a1, void *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_215A3F32C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_215A3BB50(v8, a2);
  return sub_215A70C70();
}

uint64_t sub_215A3BACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_215A3F32C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_215A3BC70(v8, a2);
  return sub_215A70C70();
}

void sub_215A3BB50(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = sub_215A70D50();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2159F7DA8(0, &unk_2811A28A0);
        v8 = sub_215A70650();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_215A3D2A0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

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
    sub_215A3C1E8(0, v4, 1, a1, a2);
  }
}

uint64_t sub_215A3BC70(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = sub_215A70D50();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2159F7DA8(0, &unk_2811A28A0);
        v8 = sub_215A70650();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_215A3C2E0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_215A3BEB0(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_215A3BD90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_215A70D50();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2159F7DA8(0, &unk_2811A28A0);
        v8 = sub_215A70650();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_215A3CB00(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_215A3C060(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_215A3BEB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = -1;
    if (a5)
    {
      v5 = 1;
    }

    v24 = v5;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_7:
    v22 = v7;
    v23 = a3;
    v9 = *(v6 + 8 * a3);
    v21 = v8;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      sub_215A707D0();
      if (!v13)
      {
        v14 = [v11 address];
        sub_215A70540();
      }

      sub_215A707D0();
      if (!v15)
      {
        v16 = [v12 address];
        sub_215A70540();
      }

      sub_215A41998();
      v17 = sub_215A70B60();

      if (v17 != v24)
      {
LABEL_6:
        a3 = v23 + 1;
        v7 = v22 + 8;
        v8 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_7;
      }

      if (!v6)
      {
        break;
      }

      v18 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v18;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_215A3C060(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = -1;
    if (a5)
    {
      v5 = 1;
    }

    v21 = v5;
    v22 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_7:
    v20 = a3;
    v8 = *(v22 + 8 * a3);
    v18 = v7;
    v19 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 title];
      sub_215A70540();

      v13 = [v11 title];
      sub_215A70540();

      sub_215A41998();
      v14 = sub_215A70B60();

      if (v14 != v21)
      {
LABEL_6:
        a3 = v20 + 1;
        v6 = v19 + 8;
        v7 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_7;
      }

      if (!v22)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}