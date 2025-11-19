uint64_t sub_21885E41C(void *a1)
{
  a1[1] = sub_2187C3618(&qword_280ECB750, type metadata accessor for CuratedTodayFeedGroup);
  a1[2] = sub_2187C3618(&qword_280ECB728, type metadata accessor for CuratedTodayFeedGroup);
  result = sub_2187C3618(&qword_280ECB738, type metadata accessor for CuratedTodayFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21885E5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885E608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885E670@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v3 offlineDownloadsConfig];
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

id sub_21885E6D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxGroups];
  *a2 = result;
  return result;
}

uint64_t sub_21885E73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16[0] = a1;
  v16[1] = a2;
  v6 = type metadata accessor for OfflineFeedGroupProcessorResult();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21885E8DC(0, v10, 0);
  v11 = v17;
  for (i = a3 + 32; ; i += 40)
  {
    (v16[0])(i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v17 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_21885E8DC(v13 > 1, v14 + 1, 1);
      v11 = v17;
    }

    *(v11 + 16) = v14 + 1;
    sub_21885F994(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, type metadata accessor for OfflineFeedGroupProcessorResult);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

size_t sub_21885E8DC(size_t a1, int64_t a2, char a3)
{
  result = sub_218793218(a1, a2, a3, *v3, &qword_280E8B988, type metadata accessor for OfflineFeedGroupProcessorResult, type metadata accessor for OfflineFeedGroupProcessorResult);
  *v3 = result;
  return result;
}

uint64_t sub_21885E94C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(a2, a3, v5, v6);
}

uint64_t sub_21885E9E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = sub_219BF1904();
  v154 = *(v3 - 8);
  v155 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_219BED8D4();
  v6 = *(v150 - 8);
  v7 = MEMORY[0x28223BE20](v150);
  v151 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v149 = &v136 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v136 - v11;
  v13 = sub_219BDBD34();
  v144 = *(v13 - 8);
  v145 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v152 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v136 - v16;
  v147 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v147);
  v146 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21885F784();
  v142 = type metadata accessor for OfflineFeedManifest.Group(0);
  v140 = (*(*(v142 - 8) + 80) + 32) & ~*(*(v142 - 8) + 80);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_219C09BA0;
  v143 = v17;
  sub_219BDBD24();
  v153 = a1;
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v21 = *(v19 + 32);
  v21(v20, v19);
  sub_219BED874();
  v22 = *(v6 + 8);
  v23 = v12;
  v24 = v150;
  v22(v23, v150);
  sub_219BF17F4();
  v154[1](v5, v155);
  v25 = v149;
  v21(v20, v19);
  v26 = sub_219BED784();
  v138 = v27;
  v139 = v26;
  v22(v25, v24);
  v28 = v151;
  v21(v20, v19);
  v149 = sub_219BED794();
  v137 = v29;
  v22(v28, v24);
  v30 = v153[3];
  v31 = v153[4];
  __swift_project_boxed_opaque_existential_1(v153, v30);
  v32 = (*(v31 + 40))(v30, v31);
  v33 = v32;
  if (v32 >> 62)
  {
    v34 = sub_219BF7214();
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v156 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_89;
    }

    v37 = 0;
    v38 = v156;
    do
    {
      v39 = v38;
      if ((v33 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v37, v33);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v40 = [swift_unknownObjectRetain() identifier];
      v41 = sub_219BF5414();
      v43 = v42;
      swift_unknownObjectRelease_n();

      v38 = v39;
      v156 = v39;
      v44 = *(v39 + 2);
      v45 = *(v38 + 3);
      if (v44 >= v45 >> 1)
      {
        sub_21870B65C((v45 > 1), v44 + 1, 1);
        v38 = v156;
      }

      ++v37;
      *(v38 + 2) = v44 + 1;
      v46 = &v38[16 * v44];
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
    }

    while (v34 != v37);
    v151 = v38;

    v35 = MEMORY[0x277D84F90];
  }

  else
  {

    v151 = MEMORY[0x277D84F90];
  }

  v47 = v153[3];
  v48 = v153[4];
  __swift_project_boxed_opaque_existential_1(v153, v47);
  v49 = (*(v48 + 56))(v47, v48);
  v50 = v49;
  if (!(v49 >> 62))
  {
    v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_16;
    }

LABEL_27:

    v150 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v51 = sub_219BF7214();
  if (!v51)
  {
    goto LABEL_27;
  }

LABEL_16:
  v156 = v35;
  result = sub_21870B65C(0, v51 & ~(v51 >> 63), 0);
  if (v51 < 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v52 = 0;
  v53 = v156;
  do
  {
    v54 = v53;
    if ((v50 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x21CECE0F0](v52, v50);
    }

    else
    {
      v55 = *(v50 + 8 * v52 + 32);
    }

    v56 = v55;
    v57 = [v56 identifier];
    v58 = sub_219BF5414();
    v60 = v59;

    v53 = v54;
    v156 = v54;
    v61 = *(v54 + 16);
    v62 = *(v53 + 24);
    if (v61 >= v62 >> 1)
    {
      sub_21870B65C((v62 > 1), v61 + 1, 1);
      v53 = v156;
    }

    ++v52;
    *(v53 + 16) = v61 + 1;
    v63 = v53 + 16 * v61;
    *(v63 + 32) = v58;
    *(v63 + 40) = v60;
  }

  while (v51 != v52);
  v150 = v53;

  v35 = MEMORY[0x277D84F90];
LABEL_28:
  v64 = v153[3];
  v65 = v153[4];
  __swift_project_boxed_opaque_existential_1(v153, v64);
  v66 = (*(v65 + 64))(v64, v65);
  v67 = v66;
  if (v66 >> 62)
  {
    v68 = sub_219BF7214();
    if (v68)
    {
LABEL_30:
      v156 = v35;
      result = sub_21870B65C(0, v68 & ~(v68 >> 63), 0);
      if ((v68 & 0x8000000000000000) == 0)
      {
        v69 = 0;
        v70 = v156;
        do
        {
          if ((v67 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CECE0F0](v69, v67);
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v71 = [swift_unknownObjectRetain() identifier];
          v72 = sub_219BF5414();
          v74 = v73;
          swift_unknownObjectRelease_n();

          v156 = v70;
          v76 = *(v70 + 2);
          v75 = *(v70 + 3);
          if (v76 >= v75 >> 1)
          {
            sub_21870B65C((v75 > 1), v76 + 1, 1);
            v70 = v156;
          }

          ++v69;
          *(v70 + 2) = v76 + 1;
          v77 = &v70[16 * v76];
          *(v77 + 4) = v72;
          *(v77 + 5) = v74;
        }

        while (v68 != v69);

        v35 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }
  }

  else
  {
    v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_30;
    }
  }

  v70 = MEMORY[0x277D84F90];
LABEL_41:
  v78 = v153[3];
  v79 = v153[4];
  __swift_project_boxed_opaque_existential_1(v153, v78);
  v80 = (*(v79 + 40))(v78, v79);
  v81 = v80;
  v156 = v35;
  if (v80 >> 62)
  {
    goto LABEL_71;
  }

  v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
  v83 = MEMORY[0x277D84F90];
  v154 = v70;
  if (v82)
  {
    v84 = 0;
    v85 = v81 & 0xFFFFFFFFFFFFFF8;
    v155 = v81 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x21CECE0F0](v84, v81);
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          v88 = v156;
          v83 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }
      }

      else
      {
        if (v84 >= *(v85 + 16))
        {
          __break(1u);
LABEL_71:
          v82 = sub_219BF7214();
          goto LABEL_43;
        }

        v86 = *(v81 + 8 * v84 + 32);
        swift_unknownObjectRetain();
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_55;
        }
      }

      if ([v86 respondsToSelector_] & 1) != 0 && (objc_msgSend(v86, sel_hasAudioTrack))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v70 = v154;
        v85 = v155;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v84;
      if (v87 == v82)
      {
        goto LABEL_56;
      }
    }
  }

  v88 = MEMORY[0x277D84F90];
LABEL_58:

  if ((v88 & 0x8000000000000000) == 0 && (v88 & 0x4000000000000000) == 0)
  {
    v89 = *(v88 + 16);
    if (v89)
    {
      goto LABEL_61;
    }

LABEL_73:

    v91 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v89 = sub_219BF7214();
  if (!v89)
  {
    goto LABEL_73;
  }

LABEL_61:
  v156 = v83;
  result = sub_21870B65C(0, v89 & ~(v89 >> 63), 0);
  if (v89 < 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v90 = 0;
  v91 = v156;
  v92 = v88;
  v155 = v88 & 0xC000000000000001;
  v93 = v88;
  do
  {
    if (v155)
    {
      MEMORY[0x21CECE0F0](v90, v92);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v94 = [swift_unknownObjectRetain() identifier];
    v95 = sub_219BF5414();
    v97 = v96;
    swift_unknownObjectRelease_n();

    v156 = v91;
    v99 = *(v91 + 2);
    v98 = *(v91 + 3);
    if (v99 >= v98 >> 1)
    {
      sub_21870B65C((v98 > 1), v99 + 1, 1);
      v91 = v156;
    }

    ++v90;
    *(v91 + 2) = v99 + 1;
    v100 = &v91[16 * v99];
    *(v100 + 4) = v95;
    *(v100 + 5) = v97;
    v92 = v93;
  }

  while (v89 != v90);

LABEL_74:
  v101 = v153[3];
  v102 = v153[4];
  __swift_project_boxed_opaque_existential_1(v153, v101);
  v103 = (*(v102 + 72))(v101, v102);
  if (!(v103 >> 62))
  {
    v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v104)
    {
      goto LABEL_76;
    }

LABEL_86:

    v107 = MEMORY[0x277D84F90];
    v120 = v140;
LABEL_87:
    v122 = v141;
    v123 = v141 + v120;
    v124 = *(v144 + 32);
    v125 = v145;
    v124(v141 + v120, v143, v145);
    v126 = v142;
    v124(v123 + *(v142 + 20), v152, v125);
    v127 = (v123 + v126[6]);
    v128 = v138;
    *v127 = v139;
    v127[1] = v128;
    v129 = (v123 + v126[7]);
    v130 = v137;
    *v129 = v149;
    v129[1] = v130;
    v131 = v150;
    *(v123 + v126[8]) = v151;
    *(v123 + v126[9]) = v131;
    *(v123 + v126[10]) = v70;
    *(v123 + v126[11]) = v91;
    *(v123 + v126[12]) = v107;
    v132 = v146;
    sub_219BDBD24();
    v133 = v147;
    sub_219BDBD24();
    *(v132 + v133[6]) = v122;
    v134 = MEMORY[0x277D84F90];
    *(v132 + v133[7]) = MEMORY[0x277D84F90];
    *(v132 + v133[8]) = v134;
    *(v132 + v133[9]) = v134;
    *(v132 + v133[10]) = v134;
    *(v132 + v133[11]) = v134;
    *(v132 + v133[12]) = v134;
    v135 = v148;
    sub_2187538EC(v132, v148);
    result = type metadata accessor for OfflineFeedGroupProcessorResult();
    *(v135 + *(result + 20)) = v134;
    *(v135 + *(result + 24)) = v134;
    return result;
  }

  v121 = v103;
  v104 = sub_219BF7214();
  v103 = v121;
  if (!v104)
  {
    goto LABEL_86;
  }

LABEL_76:
  v105 = v103;
  v156 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v104 & ~(v104 >> 63), 0);
  if ((v104 & 0x8000000000000000) == 0)
  {
    v106 = 0;
    v107 = v156;
    v108 = v105;
    v155 = v105 & 0xC000000000000001;
    v109 = v105;
    v110 = v104;
    do
    {
      if (v155)
      {
        v111 = MEMORY[0x21CECE0F0](v106, v108);
      }

      else
      {
        v111 = *(v108 + 8 * v106 + 32);
      }

      v112 = v111;
      v113 = [v112 identifier];
      v114 = sub_219BF5414();
      v116 = v115;

      v156 = v107;
      v118 = *(v107 + 2);
      v117 = *(v107 + 3);
      if (v118 >= v117 >> 1)
      {
        sub_21870B65C((v117 > 1), v118 + 1, 1);
        v107 = v156;
      }

      ++v106;
      *(v107 + 2) = v118 + 1;
      v119 = &v107[16 * v118];
      *(v119 + 4) = v114;
      *(v119 + 5) = v116;
      v108 = v109;
    }

    while (v110 != v106);

    v120 = v140;
    v70 = v154;
    goto LABEL_87;
  }

LABEL_92:
  __break(1u);
  return result;
}

void sub_21885F784()
{
  if (!qword_280E8BB60)
  {
    type metadata accessor for OfflineFeedManifest.Group(255);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BB60);
    }
  }
}

uint64_t sub_21885F7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BED8D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21885F860(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_219BF1904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED874();
  v9 = a3(v8);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_21885F994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885F9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885FA64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BF1904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_21885FB90(v8, v9);
  v10 = sub_21885FC90();
  (*(v5 + 8))(v7, v4);
  OfflineFeedManifest.init(_:)(v10, a2);
  result = type metadata accessor for OfflineFeedGroupProcessorResult();
  v12 = MEMORY[0x277D84F90];
  *(a2 + *(result + 20)) = MEMORY[0x277D84F90];
  *(a2 + *(result + 24)) = v12;
  return result;
}

uint64_t sub_21885FB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(a1, a2);
  sub_219BED874();
  return (*(v5 + 8))(v7, v4);
}

id sub_21885FC90()
{
  v1 = v0;
  v2 = sub_219BF2DA4();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_21886029C(0, &unk_280E90990, MEMORY[0x277D33108], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v39 - v6;
  sub_21886029C(0, &qword_280E90478, MEMORY[0x277D33868], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  sub_21886029C(0, &unk_280E92600, MEMORY[0x277D31CD8], v4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v39 - v12;
  v14 = sub_219BF1494();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277D84F90];
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC594();
  sub_219BDC8A4();

  v18 = sub_219BED9B4();
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  v19 = sub_219BF2474();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = sub_219BF10A4();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_219BF1484();
  v21 = sub_219BF1894();
  v44 = v17;
  v47 = v17;
  v48 = v1;
  v22 = sub_218860300(sub_2188604D0, v46, v21);

  sub_218860E3C(v22);
  v23 = sub_219BF18F4();
  v24 = *(v23 + 16);
  if (v24)
  {
    v39[1] = 0;
    v40 = v15;
    v41 = v14;
    v42 = v1;
    v49 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v25 = v45 + 16;
    v45 = *(v45 + 16);
    v26 = *(v25 + 64);
    v39[0] = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v25 + 56);
    v29 = (v25 - 8);
    v30 = v43;
    do
    {
      (v45)(v30, v27, v2);
      sub_219BF2D84();
      (*v29)(v30, v2);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v27 += v28;
      --v24;
    }

    while (v24);

    v32 = v49;
    v14 = v41;
    v1 = v42;
    v15 = v40;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v31);
  v33 = v44;
  v39[-2] = v44;
  v39[-1] = v1;
  v34 = sub_218860300(sub_2188604B0, &v39[-4], v32);

  sub_218860E3C(v34);
  v35 = objc_allocWithZone(MEMORY[0x277D30F10]);
  sub_21886133C();
  v36 = sub_219BF5904();

  v37 = [v35 initWithManifests_];

  (*(v15 + 8))(v33, v14);
  return v37;
}

void sub_218860238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21886029C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218860330(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v14 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_2188604E8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v14 = a2;
  v3 = sub_219BF1494();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF2E14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);

  sub_219BF1844();
  sub_219BF2E04();
  v11 = sub_2188606A4(v10);
  result = (*(v8 + 8))(v10, v7);
  *v14 = v11;
  return result;
}

id sub_2188606A4(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_21886029C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v40 - v4;
  v5 = sub_219BDB954();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218860D7C();
  v46 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21886029C(0, &qword_280E90198, MEMORY[0x277D33D98], v2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_219BF3384();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277D84F90];
  sub_219BF3084();
  v43 = v5;
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v16, v12, v13);
  v17 = sub_219BF3374();
  MEMORY[0x28223BE20](v17);
  *(&v40 - 2) = a1;
  v18 = sub_218860E10(sub_218861418, (&v40 - 4), v17);

  v19 = v43;
  sub_218860E3C(v18);
  (*(v14 + 8))(v16, v13);
  v20 = sub_219BF3064();
  KeyPath = swift_getKeyPath();
  v40 = v20;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(v49 + 16);
    v23 = v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v44 = *(v49 + 72);
    v45 = v22;
    v49 += 16;
    v24 = (v49 - 8);
    v25 = v42;
    v26 = (v41 + 48);
    v27 = (v41 + 32);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = v46;
      v45(v9, v23, v46);
      swift_getAtKeyPath();
      (*v24)(v9, v29);
      if ((*v26)(v25, 1, v19) == 1)
      {
        sub_218861C70(v25, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }

      else
      {
        v30 = *v27;
        (*v27)(v47, v25, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_218861308(0, v28[2] + 1, 1, v28);
        }

        v32 = v28[2];
        v31 = v28[3];
        if (v32 >= v31 >> 1)
        {
          v28 = sub_218861308(v31 > 1, v32 + 1, 1, v28);
        }

        v28[2] = v32 + 1;
        v33 = v28 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32;
        v19 = v43;
        v30(v33, v47, v43);
        v25 = v42;
      }

      v23 += v44;
      --v21;
    }

    while (v21);
  }

  v34 = objc_allocWithZone(MEMORY[0x277D30F10]);
  v35 = sub_219BF5904();

  [v34 initWithAssetURLs_];

  MEMORY[0x21CECC690]();
  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v36 = objc_allocWithZone(MEMORY[0x277D30F10]);
  sub_21886133C();
  v37 = sub_219BF5904();

  v38 = [v36 initWithManifests_];

  return v38;
}

void sub_218860D7C()
{
  if (!qword_280E903E0)
  {
    sub_219BF1944();
    sub_2186DF6F4(&unk_280E907F0, MEMORY[0x277D33498]);
    v0 = sub_219BF26C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E903E0);
    }
  }
}

uint64_t sub_218860E68(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v7 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v11 = *(a4(0) - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      a1(&v14, v12);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v12 += v13;
      if (!--v7)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218860FB4(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_219BF7214();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2188610B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35AE8();
          sub_218A35D58(&qword_27CC0CC98, sub_218A35AE8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E438);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218861268(uint64_t a1)
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

  sub_219BF7214();
LABEL_9:
  result = sub_219BF7364();
  *v1 = result;
  return result;
}

unint64_t sub_21886133C()
{
  result = qword_280E8E438;
  if (!qword_280E8E438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E438);
  }

  return result;
}

void sub_218861388(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_218861438(a1);
  v3 = objc_allocWithZone(MEMORY[0x277D30F10]);
  sub_219BDB954();
  v4 = sub_219BF5904();

  v5 = [v3 initWithAssetURLs_];

  *a2 = v5;
}

size_t sub_218861438(uint64_t a1)
{
  sub_21886029C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v53 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v49 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v57 = &v49 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v55 = (&v49 - v13);
  MEMORY[0x28223BE20](v12);
  v15 = (&v49 - v14);
  v16 = sub_219BDB954();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v56 = (&v49 - v22);
  MEMORY[0x28223BE20](v21);
  v54 = (&v49 - v23);
  v24 = sub_219BF1A74();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[2](v27, a1, v24);
  v28 = (v25[11])(v27, v24);
  if (v28 != *MEMORY[0x277D334F8])
  {
    if (v28 == *MEMORY[0x277D33500])
    {
      v30 = v57;
      sub_219BF1A64();
      if ((*(v17 + 6))(v30, 1, v16) != 1)
      {
        v41 = v17 + 32;
        v40 = *(v17 + 4);
        v42 = v56;
        v40(v56, v30, v16);
        sub_21886029C(0, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277D84560]);
        v43 = (v41[48] + 32) & ~v41[48];
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_219C09BA0;
        v40(v33 + v43, v42, v16);
LABEL_35:
        (v25[1])(v27, v24);
        return v33;
      }

      sub_218861C70(v30, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }

LABEL_34:
    v33 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v29 = sub_219BF1A54();
  v57 = v29;
  if (v29 >> 62)
  {
    goto LABEL_32;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_33:

    goto LABEL_34;
  }

  while (1)
  {
    v59 = MEMORY[0x277D84F90];
    result = sub_218C357F0(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      break;
    }

    v49 = v27;
    v50 = v25;
    v51 = v24;
    v33 = v59;
    v34 = v57;
    v56 = v17;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      v52 = (v17 + 48);
      v53 = (v17 + 56);
      v17 = (v17 + 32);
      while (1)
      {
        v7 = MEMORY[0x21CECE0F0](v20, v34);
        v35 = [swift_unknownObjectRetain() fontURL];
        if (v35)
        {
          v27 = v35;
          v24 = v55;
          sub_219BDB8B4();

          v36 = 0;
        }

        else
        {
          v36 = 1;
          v24 = v55;
        }

        (*v53)(v24, v36, 1, v16);
        sub_218AB007C(v24, v15);
        if ((*v52)(v15, 1, v16) == 1)
        {
          break;
        }

        v37 = v58;
        sub_2188383F8(v15, v58);
        v27 = *v17;
        v25 = v54;
        (*v17)(v54, v37, v16);
        sub_218861C70(v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
        swift_unknownObjectRelease_n();
        v59 = v33;
        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_218C357F0(v38 > 1, v39 + 1, 1);
          v33 = v59;
        }

        ++v20;
        *(v33 + 16) = v39 + 1;
        (v27)(v33 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 9) * v39, v25, v16);
        v34 = v57;
        if (v31 == v20)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
      v54 = (v17 + 48);
      v55 = (v17 + 56);
      v15 = (v17 + 32);
      v27 = 32;
      while (1)
      {
        v25 = *(v34 + v27);
        v44 = [v25 fontURL];
        if (v44)
        {
          v24 = v53;
          v17 = v44;
          sub_219BDB8B4();

          v45 = 0;
        }

        else
        {
          v45 = 1;
          v24 = v53;
        }

        (*v55)(v24, v45, 1, v16);
        sub_218AB007C(v24, v7);
        if ((*v54)(v7, 1, v16) == 1)
        {
          break;
        }

        v46 = v58;
        sub_2188383F8(v7, v58);
        v17 = *v15;
        (*v15)(v20, v46, v16);
        sub_218861C70(v7, &unk_280EE9D00, MEMORY[0x277CC9260]);

        v59 = v33;
        v48 = *(v33 + 16);
        v47 = *(v33 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_218C357F0(v47 > 1, v48 + 1, 1);
          v33 = v59;
        }

        *(v33 + 16) = v48 + 1;
        v17((v33 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 9) * v48), v20, v16);
        v27 += 8;
        --v31;
        v34 = v57;
        if (!v31)
        {
LABEL_29:

          v25 = v50;
          v24 = v51;
          v27 = v49;
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_32:
    v31 = sub_219BF7214();
    if (!v31)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218861C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21886029C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OfflineFeedManifest.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BDBD24();
  v4 = type metadata accessor for OfflineFeedManifest(0);
  sub_219BDBD24();
  *(a2 + v4[6]) = MEMORY[0x277D84F90];
  v5 = [a1 assetURLs];
  sub_219BDB954();
  v6 = sub_219BF5924();

  *(a2 + v4[7]) = v6;
  v7 = [a1 assetWrappingKeyIDs];
  v8 = sub_219BF5924();

  *(a2 + v4[8]) = v8;
  v9 = [a1 recordIDs];
  v10 = sub_219BF5924();

  *(a2 + v4[9]) = v10;
  v11 = [a1 avAssetIDs];
  v12 = sub_219BF5924();

  *(a2 + v4[10]) = v12;
  v13 = [a1 avAssetKeyIDs];
  v14 = sub_219BF5924();

  *(a2 + v4[11]) = v14;
  v15 = [a1 avAssetKeyURIs];
  v16 = sub_219BF5924();

  *(a2 + v4[12]) = v16;
}

uint64_t sub_218861EA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF74C4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2C24();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  CACurrentMediaTime();
  sub_218718690(a1, &v67);
  v15 = sub_219BE5414();
  v16 = sub_219BF6214();
  v17 = os_log_type_enabled(v15, v16);
  v59 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v60 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v66[0] = v20;
    *v19 = 136446210;
    v21 = v14;
    v22 = a2;
    __swift_project_boxed_opaque_existential_1(&v67, v68);
    v23 = sub_219BE1D74();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(&v67);
    v26 = sub_2186D1058(v23, v25, v66);
    a2 = v22;
    v14 = v21;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2186C1000, v15, v16, "Will collect group references, id=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21CECF960](v20, -1, -1);
    v27 = v19;
    a3 = v60;
    MEMORY[0x21CECF960](v27, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  sub_218862838(MEMORY[0x277D84F90]);
  sub_219BF2C04();
  v28 = sub_219BE28E4();
  swift_allocObject();
  v29 = sub_219BE28D4();
  sub_219BF74A4();
  v68 = v28;
  *&v67 = v29;

  v30 = sub_219BF2C14();
  sub_218862A7C(&v67, v11);
  v30(v66, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v63;
  v68 = v63;
  v69 = sub_218862C34();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
  (*(v62 + 16))(boxed_opaque_existential_1, v14, v31);
  sub_219BF52D4();
  v61 = v29;
  __swift_destroy_boxed_opaque_existential_1(&v67);
  v33 = sub_219BE28C4();
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = a2;
    v36 = a3;
    v37 = sub_2191F7FC8(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = v33 + 32;
    do
    {
      sub_2186D1230(v38, &v67);
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_2191F7FC8((v39 > 1), v40 + 1, 1, v37);
      }

      *(v37 + 2) = v40 + 1;
      sub_218751558(&v67, &v37[32 * v40 + 32]);
      v38 += 32;
      --v34;
    }

    while (v34);

    a3 = v36;
    a2 = v35;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v65 = MEMORY[0x277D84F90];
  v41 = *(v37 + 2);
  if (v41)
  {
    v58[1] = a2;
    v60 = a3;
    v42 = (v37 + 32);
    v43 = MEMORY[0x277D84F90];
    do
    {
      sub_2186D1230(v42, &v67);
      sub_2186D1230(&v67, v66);
      sub_2195C912C();
      if (swift_dynamicCast())
      {
        v44 = [v64 contentManifest];
        swift_unknownObjectRelease();
        v45 = __swift_destroy_boxed_opaque_existential_1(&v67);
        MEMORY[0x21CECC690](v45);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v43 = v65;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v67);
      }

      v42 += 32;
      --v41;
    }

    while (v41);

    a3 = v60;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v46 = v59;
  OfflineFeedManifest.init(_:)(v43, v59);
  sub_218718690(a1, &v67);
  v47 = sub_219BE5414();
  v48 = sub_219BF6214();
  if (!os_log_type_enabled(v47, v48))
  {

    __swift_destroy_boxed_opaque_existential_1(&v67);
    goto LABEL_27;
  }

  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v66[0] = v50;
  *v49 = 136446466;
  __swift_project_boxed_opaque_existential_1(&v67, v68);
  v51 = sub_219BE1D74();
  v53 = v52;
  __swift_destroy_boxed_opaque_existential_1(&v67);
  v54 = sub_2186D1058(v51, v53, v66);

  *(v49 + 4) = v54;
  *(v49 + 12) = 2050;
  result = sub_219BF5CD4();
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v56 < 9.22337204e18)
  {
    *(v49 + 14) = v56;
    _os_log_impl(&dword_2186C1000, v47, v48, "Did collect group references, id=%{public}s, time=%{public}lldms", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x21CECF960](v50, -1, -1);
    MEMORY[0x21CECF960](v49, -1, -1);

LABEL_27:
    sub_2195C91F0(v46, a3, type metadata accessor for OfflineFeedManifest);

    sub_2195C9190(v46, type metadata accessor for OfflineFeedManifest);
    (*(v62 + 8))(v14, v63);
    result = type metadata accessor for OfflineFeedGroupProcessorResult();
    v57 = MEMORY[0x277D84F90];
    *(a3 + *(result + 20)) = MEMORY[0x277D84F90];
    *(a3 + *(result + 24)) = v57;
    return result;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_218862838(uint64_t a1)
{
  sub_218862A10();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_218862BC8();
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2195C91F0(v10, v6, sub_218862A10);
      result = sub_2195C8F30(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_219BF74C4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_218751558(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

void sub_218862A10()
{
  if (!qword_280E8D450)
  {
    sub_219BF74C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8D450);
    }
  }
}

uint64_t sub_218862A7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_218751558(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_218862B98(v10, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_219BF74C4();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v9;
  }

  else
  {
    v7 = MEMORY[0x277D84F70];
    sub_21874618C(a1, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
    sub_2195EAACC(a2, v10);
    v8 = sub_219BF74C4();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_21874618C(v10, &qword_280E8B4F0, v7 + 8);
  }

  return result;
}

void sub_218862BC8()
{
  if (!qword_280E8D008)
  {
    sub_219BF74C4();
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D008);
    }
  }
}

unint64_t sub_218862C34()
{
  result = qword_280E902C0;
  if (!qword_280E902C0)
  {
    sub_219BF2C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E902C0);
  }

  return result;
}

uint64_t sub_218862C8C(void *a1)
{
  v3 = v1;
  sub_2187C2FB0(0, &qword_280E8C5C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C3014();
  sub_219BF7B44();
  v15 = 0;
  sub_219BED8D4();
  sub_2187C3618(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedTodayFeedGroup();
    v14 = 1;
    sub_219BF77F4();
    v13 = *(v3 + *(v10 + 24));
    v12[15] = 2;
    sub_2186D0BA8();
    sub_2187531B0(&unk_280E8EE00);
    sub_219BF77E4();
    v12[14] = 3;
    sub_219BEF8A4();
    sub_2187C3618(&unk_280E912B8, MEMORY[0x277D32770]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218862FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218863078(a1, a2, a3, a4);
}

uint64_t sub_218863078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_219BE8944();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  sub_2188637B8();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  sub_2187FAD00();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_218863824(0, &qword_280E8E980, sub_2188637B8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  sub_21880B928();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  sub_218863878(0, &qword_280E8D438, &qword_280EE3738, MEMORY[0x277D6EC68], MEMORY[0x277D843E8]);
  v5[30] = swift_task_alloc();
  sub_218863910(0);
  v5[31] = v10;
  v5[32] = swift_task_alloc();
  sub_219BEF6B4();
  v5[33] = swift_task_alloc();
  v11 = sub_219BEF594();
  v5[34] = v11;
  v5[35] = *(v11 - 8);
  v5[36] = swift_task_alloc();
  sub_219BEF5B4();
  v5[37] = swift_task_alloc();
  sub_219BEF644();
  v5[38] = swift_task_alloc();
  sub_219BEF664();
  v5[39] = swift_task_alloc();
  v12 = sub_219BEF694();
  v5[40] = v12;
  v5[41] = *(v12 - 8);
  v5[42] = swift_task_alloc();
  sub_218863824(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[43] = swift_task_alloc();
  v13 = sub_219BE8164();
  v5[44] = v13;
  v5[45] = *(v13 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_218863824(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[48] = swift_task_alloc();
  sub_219BEF604();
  v5[49] = swift_task_alloc();
  v14 = sub_219BEF6C4();
  v5[50] = v14;
  v5[51] = *(v14 - 8);
  v5[52] = swift_task_alloc();
  sub_219BDCAF4();
  v5[53] = swift_task_alloc();
  v15 = sub_219BDCAE4();
  v5[54] = v15;
  v5[55] = *(v15 - 8);
  v5[56] = swift_task_alloc();
  v16 = sub_219BDCAB4();
  v5[57] = v16;
  v5[58] = *(v16 - 8);
  v5[59] = swift_task_alloc();
  sub_218863824(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[60] = swift_task_alloc();
  v17 = sub_219BF0634();
  v5[61] = v17;
  v5[62] = *(v17 - 8);
  v5[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218863A7C, 0, 0);
}

void sub_2188637B8()
{
  if (!qword_280E8E988)
  {
    sub_2187FAD00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E988);
    }
  }
}

void sub_218863824(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218863878(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21880B928();
    v10 = v9;
    v11 = sub_2187DE938(a3, sub_21880B928);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_21886394C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21880B928();
    v10 = v9;
    v11 = sub_2186EF8F4(a3, sub_21880B928);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_2188639E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21880B928();
    v10 = v9;
    v11 = sub_2186EF984(a3, sub_21880B928);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_218863A7C()
{
  if (qword_280E8D8E0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v73 = (v0 + 512);
  (*(*(v0 + 496) + 104))(*(v0 + 504), *MEMORY[0x277D32E98], *(v0 + 488));
  v1 = sub_218827310();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v3 = v1;
    type metadata accessor for TodayFeedServiceConfig();
    sub_2187DE938(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEE7A4();
    sub_21885AB78(v3);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v64 = *(v0 + 504);
  v4 = *(v0 + 480);
  v76 = *(v0 + 496);
  v78 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = *(v0 + 456);
  v50 = *(v0 + 448);
  v68 = *(v0 + 432);
  v62 = *(v0 + 416);
  v63 = *(v0 + 408);
  v65 = *(v0 + 400);
  v66 = *(v0 + 440);
  v90 = *(v0 + 384);
  v8 = *(v0 + 360);
  v52 = *(v0 + 376);
  v53 = *(v0 + 352);
  v54 = *(v0 + 344);
  v55 = *(v0 + 328);
  v56 = *(v0 + 336);
  v57 = *(v0 + 320);
  v58 = *(v0 + 280);
  v59 = *(v0 + 288);
  v60 = *(v0 + 272);
  v80 = *(v0 + 256);
  v81 = *(v0 + 248);
  v71 = *(v0 + 240);
  v74 = *(v0 + 232);
  v69 = *(v0 + 224);
  v70 = *(v0 + 216);
  v85 = *(v0 + 176);
  v87 = *(v0 + 152);
  v51 = *(v0 + 144);
  v9 = *(v0 + 96);
  v67 = *(v0 + 88);
  v10 = sub_219BF0BD4();
  (*(*(v10 - 8) + 56))(v4, v2, 1, v10);
  (*(v6 + 104))(v5, *MEMORY[0x277D6D178], v7);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  sub_219BEF5F4();
  v11 = v9;
  v12 = v51;
  v49 = *(v8 + 16);
  v49(v52, v11, v53);
  v13 = v80;
  sub_219BEF614();
  v14 = sub_219BEF624();
  (*(*(v14 - 8) + 56))(v90, 0, 1, v14);
  sub_219BEF674();
  v15 = sub_219BEF684();
  (*(*(v15 - 8) + 56))(v54, 0, 1, v15);
  (*(v55 + 104))(v56, *MEMORY[0x277D326B0], v57);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v58 + 104))(v59, *MEMORY[0x277D32680], v60);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v61 = sub_219BEE0E4();
  (*(v63 + 8))(v62, v65);
  (*(v66 + 8))(v50, v68);
  (*(v6 + 8))(v5, v7);
  sub_218864F34(v4, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v76 + 8))(v64, v78);
  *(v0 + 512) = 0;
  (*(v69 + 16))(v71, v67, v70);
  (*(v69 + 32))(v74, v71, v70);
  sub_2187DE938(&qword_280EE3738, sub_21880B928);
  sub_219BF56A4();
  v77 = *(v81 + 36);
  *(v80 + v77) = 0;
  sub_218863878(0, &qword_280E8D4A0, &qword_280EE3730, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
  v79 = (v85 + 16);
  v17 = *(v16 + 36);
  v18 = (v87 + 56);
  v88 = (v87 + 48);
  v89 = (v85 + 32);
  v84 = (v85 + 8);
  sub_2187DE938(&qword_280EE3730, sub_21880B928);
  v72 = 0;
  v91 = 0;
  v86 = 0;
  v75 = v18;
  while (1)
  {
    sub_219BF5E84();
    if (*(v13 + v17) == *(v0 + 48))
    {
      v19 = 1;
    }

    else
    {
      v20 = *(v0 + 192);
      v21 = *(v0 + 168);
      v82 = *(v0 + 160);
      v22 = v17;
      v23 = v12;
      v24 = sub_219BF5EC4();
      (*v79)(v20);
      v24(v0 + 16, 0);
      v12 = v23;
      v17 = v22;
      v13 = v80;
      sub_219BF5E94();
      v25 = *(v12 + 48);
      *v82 = v86;
      (*v89)(&v82[v25], v20, v21);
      v26 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v27 = *(v0 + 200);
      v28 = *(v0 + 160);
      ++v86;
      *(v80 + v77) = v26;
      sub_218865000(v28, v27, sub_2188637B8);
      v19 = 0;
      v18 = v75;
    }

    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    v31 = *(v0 + 144);
    (*v18)(v30, v19, 1, v31);
    sub_218865068(v30, v29);
    if ((*v88)(v29, 1, v31) == 1)
    {
      break;
    }

    v32 = *(v0 + 208);
    v33 = *v32;
    (*v89)(*(v0 + 184), v32 + *(v12 + 48), *(v0 + 168));
    if (v91)
    {
      (*v84)(*(v0 + 184), *(v0 + 168));
      goto LABEL_13;
    }

    sub_219BE6934();
    v34 = (*(v0 + 56) >> 58) & 0x3C | (*(v0 + 56) >> 1) & 3;
    if (v34 == 19 || v34 == 13)
    {
LABEL_18:
      (*v84)(*(v0 + 184), *(v0 + 168));

      v91 = 0;
    }

    else if (v34)
    {
      (*v84)(*(v0 + 184), *(v0 + 168));

      if (v72)
      {
        v72 = 1;
        *v73 = 1;
LABEL_13:
        v91 = 1;
      }

      else
      {
        v72 = 0;
        v91 = 0;
      }
    }

    else
    {
      type metadata accessor for TodaySectionGapDescriptor(0);
      v35 = swift_projectBox();
      v36 = type metadata accessor for TodayBlueprintCollapsedSection(0);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
        goto LABEL_18;
      }

      v92 = *(v0 + 184);
      v83 = *(v0 + 168);
      sub_219BF5DF4();
      sub_219BF5E84();
      v37 = sub_219BF5E74();
      (*v84)(v92, v83);

      if (__OFSUB__(v37, 1))
      {
        __break(1u);
        return result;
      }

      v72 = 1;
      if (v33 == v37 - 1)
      {
        *v73 = 1;
        v91 = 1;
      }

      else
      {
        v91 = 0;
      }
    }
  }

  v39 = *(v0 + 368);
  v40 = *(v0 + 352);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  v45 = *(v0 + 88);
  v46 = *(v0 + 96);
  sub_2188650E8(*(v0 + 256), sub_218863910);
  v49(v39, v46, v40);
  (*(v42 + 104))(v41, *MEMORY[0x277D6E080], v43);
  v47 = swift_task_alloc();
  v47[2] = v44;
  v47[3] = v45;
  v47[4] = v61;
  v47[5] = v46;
  v47[6] = v73;
  sub_218865148(sub_218865A84, v47);

  type metadata accessor for TodayLayoutSectionDescriptor(0);
  type metadata accessor for TodayLayoutModel();
  sub_2187DE938(&unk_280EB1A50, type metadata accessor for TodayLayoutSectionDescriptor);
  sub_2187DE938(&unk_280ED7470, type metadata accessor for TodayLayoutModel);
  sub_219BE6564();
  sub_219BEE0C4();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_2188649DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61798 = result;
  return result;
}

uint64_t sub_218864AB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2188422B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864B10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2189BD6B0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218864BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218D09EB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864C28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218DF512C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218EC059C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218864D54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219021960(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864DB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2194DA2F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21954F190(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864E7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219626F24(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864ED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2198BF9C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864F34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218863824(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218864F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219B004B4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218865000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218865068(uint64_t a1, uint64_t a2)
{
  sub_218863824(0, &qword_280E8E980, sub_2188637B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2188650E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218865148(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_2187FAD00();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188654DC();
  v32 = v11;
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_280EE3730, sub_21880B928);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2188655C8(0, v16 & ~(v16 >> 63), 0);
    v38 = v41;
    result = sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v37 = v15;
      v18 = 0;
      v30 = (v8 + 16);
      v31 = (v8 + 8);
      v28[0] = v35 + 32;
      v28[1] = v14;
      v29 = v10;
      while (1)
      {
        v19 = v16;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = sub_219BF5EC4();
        (*v30)(v10);
        v21(v40, 0);
        v33(v10, v40);
        if (v4)
        {
          (*v31)(v10, v7);
        }

        v36 = 0;
        v22 = v5;
        (*v31)(v10, v7);
        v23 = v38;
        v41 = v38;
        v25 = *(v38 + 16);
        v24 = *(v38 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2188655C8(v24 > 1, v25 + 1, 1);
          v23 = v41;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v23;
        (*(v35 + 32))(v23 + v26 + *(v35 + 72) * v25, v39, v32);
        v5 = v22;
        result = sub_219BF5E94();
        ++v18;
        v27 = v20 == v19;
        v16 = v19;
        v10 = v29;
        v4 = v36;
        if (v27)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_2188654DC()
{
  if (!qword_280EE4DD8)
  {
    type metadata accessor for TodayLayoutSectionDescriptor(255);
    type metadata accessor for TodayLayoutModel();
    sub_2187FADB8(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor);
    sub_2187FADB8(&qword_280ED7480, type metadata accessor for TodayLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4DD8);
    }
  }
}

size_t sub_2188655C8(size_t a1, int64_t a2, char a3)
{
  result = sub_218793218(a1, a2, a3, *v3, &qword_280E8BE10, sub_2188654DC, sub_2188654DC);
  *v3 = result;
  return result;
}

uint64_t sub_218865618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a7;
  v50 = a8;
  v53 = a6;
  v51 = a4;
  v52 = a5;
  v39 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  MEMORY[0x28223BE20](v39);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEE024();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TodayLayoutSectionDescriptor(0);
  v14 = MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v42 = &v39 - v16;
  v17 = MEMORY[0x277D32218];
  sub_218863824(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v21 = *(a2 + 80);
  v22 = sub_2187DE938(&qword_280EDE678, type metadata accessor for TodayTracker);
  v23 = *(v22 + 192);
  v24 = type metadata accessor for TodayTracker();
  v48 = a3;
  v41 = v21;
  v23(a1, a3, v24, v22);
  v25 = a1;
  sub_2187FAD00();
  sub_219BE6934();
  v26 = v55;
  v27 = sub_219BEEA64();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  v28 = v54;
  sub_218865B24(v26, a1, v51, v52, v53, v20);
  sub_218864F34(v20, &qword_280E91990, v17);

  if (v28)
  {
    *v49 = v28;
    return result;
  }

  v30 = v44;
  sub_2188654DC();
  v31 = v42;
  sub_219BE8184();
  v32 = v40;
  sub_218865000(v31, v40, type metadata accessor for TodayLayoutSectionDescriptor);
  v33 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = v47;
  v36 = v48;
  v38 = v45;
  v37 = v46;
  if ((EnumCaseMultiPayload - 3) >= 3)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      sub_218865000(v33, v30, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      (*(v37 + 16))(v38, v30 + *(v39 + 28), v35);
      sub_2188650E8(v30, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      goto LABEL_7;
    }

    sub_2188650E8(v33, type metadata accessor for TodayLayoutSectionDescriptor);
  }

  (*(v37 + 104))(v38, *MEMORY[0x277D31F20], v35);
LABEL_7:
  sub_2192B6694(v25, v36, v38);
  return (*(v37 + 8))(v38, v35);
}

uint64_t sub_218865AAC()
{
  sub_219BE07C4();
  sub_2187DD9B8(&qword_280EE82E8, 255, MEMORY[0x277D2E820]);
  return sub_219BDD214();
}

uint64_t sub_218878EE4()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions()
{
  result = qword_280E96278;
  if (!qword_280E96278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218878F68()
{
  result = sub_219BE8164();
  if (v1 <= 0x3F)
  {
    result = sub_219BDCAA4();
    if (v2 <= 0x3F)
    {
      result = sub_219BDCAF4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_218879004()
{
  if (!qword_280EE5088)
  {
    type metadata accessor for TodayLayoutModel();
    sub_2187DEC58(&qword_280ED7480, type metadata accessor for TodayLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5088);
    }
  }
}

uint64_t sub_218879098()
{
  v28 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v28);
  v1 = (&v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218853400();
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218879514();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853494();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_2187FAD00();
  sub_219BE6974();
  v30 = MEMORY[0x277D84F90];
  v25 = v17;
  v26 = v12;
  (*(v12 + 16))(v15, v17, v11);
  sub_2186EFB34(&qword_280EE7590, sub_218853494);
  sub_219BF56A4();
  v18 = *(v7 + 44);
  sub_2186EFB34(&qword_280EE7588, sub_218853494);
  sub_219BF5E84();
  v19 = MEMORY[0x277D84F90];
  if (*&v9[v18] != v29[0])
  {
    v20 = (v27 + 16);
    v21 = (v27 + 8);
    do
    {
      v27 = v19;
      while (1)
      {
        v22 = sub_219BF5EC4();
        (*v20)(v5);
        v22(v29, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v21)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          break;
        }

        sub_2188795A8(v1, type metadata accessor for TodayModel);
        sub_219BF5E84();
        if (*&v9[v18] == v29[0])
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      v27 = *v1;
      MEMORY[0x21CECC690]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v27 = v30;
      sub_219BF5E84();
      v19 = v27;
    }

    while (*&v9[v18] != v29[0]);
  }

LABEL_10:
  sub_2188795A8(v9, sub_218879514);
  (*(v26 + 8))(v25, v11);
  return v19;
}

void sub_218879514()
{
  if (!qword_280E8D548)
  {
    sub_218853494();
    sub_2186EFB34(&qword_280EE7588, sub_218853494);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D548);
    }
  }
}

uint64_t sub_2188795A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218879608()
{
  result = qword_280EC6378[0];
  if (!qword_280EC6378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC6378);
  }

  return result;
}

uint64_t sub_21887965C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218855280();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xFuLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1EuLL:
      v9 = MEMORY[0x277D31E98];
      goto LABEL_4;
    case 0x11uLL:
      v14 = v6;
      v15 = swift_projectBox();
      (*(v5 + 16))(v8, v15, v14);
      sub_219BEE474();
      sub_21887965C(v16[1]);

      result = (*(v5 + 8))(v8, v14);
      break;
    default:
      v9 = MEMORY[0x277D31EA0];
LABEL_4:
      v10 = *v9;
      v11 = sub_219BEDDC4();
      v12 = *(*(v11 - 8) + 104);

      result = v12(a2, v10, v11);
      break;
  }

  return result;
}

uint64_t sub_2188798B4@<X0>(uint64_t *a1@<X8>)
{
  v195 = a1;
  v193 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v193);
  v194 = &v134 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v191);
  v192 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v189);
  v190 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v187);
  v188 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v185);
  v186 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v183);
  v184 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v181);
  v182 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v179);
  v180 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v177);
  v178 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v175);
  v176 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v173);
  v174 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v171);
  v172 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v169);
  v170 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v167);
  v168 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v165);
  v166 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v163);
  v164 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v161);
  v162 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280();
  v160 = v18;
  v159 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v158 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v156);
  v157 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v154);
  v155 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v152);
  v153 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BED544();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v147);
  v148 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v143);
  v145 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855330();
  v146 = v26;
  v144 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v142 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v140);
  v141 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v138);
  v139 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v136);
  v137 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v134);
  v135 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v32);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v35);
  v37 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v38);
  v40 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v41);
  v43 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CuratedTodayFeedGroup();
  result = MEMORY[0x28223BE20](v44);
  v47 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v48 >> 58) & 0x3C | (v48 >> 1) & 3)
  {
    case 1uLL:
      v85 = swift_projectBox();
      sub_21885AC00(v85, v47, type metadata accessor for CuratedTodayFeedGroup);
      v86 = v195;
      v195[3] = v44;
      v86[4] = sub_21885E3D4(&qword_280ECB748, type metadata accessor for CuratedTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
      v67 = type metadata accessor for CuratedTodayFeedGroup;
      v68 = v47;
      goto LABEL_38;
    case 2uLL:
      v77 = swift_projectBox();
      sub_21885AC00(v77, v43, type metadata accessor for NewspaperTodayFeedGroup);
      v78 = v195;
      v195[3] = v41;
      v78[4] = sub_21885E3D4(&unk_280EC44E0, type metadata accessor for NewspaperTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
      v67 = type metadata accessor for NewspaperTodayFeedGroup;
      v68 = v43;
      goto LABEL_38;
    case 3uLL:
      v81 = swift_projectBox();
      sub_21885AC00(v81, v40, type metadata accessor for LocalNewsTodayFeedGroup);
      v82 = v195;
      v195[3] = v38;
      v82[4] = sub_21885E3D4(&qword_280EE1910, type metadata accessor for LocalNewsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      v67 = type metadata accessor for LocalNewsTodayFeedGroup;
      v68 = v40;
      goto LABEL_38;
    case 4uLL:
      v65 = swift_projectBox();
      sub_21885AC00(v65, v37, type metadata accessor for TrendingTodayFeedGroup);
      v66 = v195;
      v195[3] = v35;
      v66[4] = sub_21885E3D4(&qword_280EC6270, type metadata accessor for TrendingTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      v67 = type metadata accessor for TrendingTodayFeedGroup;
      v68 = v37;
      goto LABEL_38;
    case 5uLL:
      v95 = swift_projectBox();
      sub_21885AC00(v95, v34, type metadata accessor for ForYouTodayFeedGroup);
      v96 = v195;
      v195[3] = v32;
      v96[4] = sub_21885E3D4(&qword_280ECE9B0, type metadata accessor for ForYouTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
      v67 = type metadata accessor for ForYouTodayFeedGroup;
      v68 = v34;
      goto LABEL_38;
    case 6uLL:
      v106 = swift_projectBox();
      v51 = v135;
      sub_21885AC00(v106, v135, type metadata accessor for MissedStoriesTodayFeedGroup);
      v107 = v195;
      v195[3] = v134;
      v107[4] = sub_21885E3D4(&qword_280EB7F10, type metadata accessor for MissedStoriesTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v107);
      v54 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_37;
    case 7uLL:
      v83 = swift_projectBox();
      v51 = v137;
      sub_21885AC00(v83, v137, type metadata accessor for LatestStoriesTodayFeedGroup);
      v84 = v195;
      v195[3] = v136;
      v84[4] = sub_21885E3D4(&qword_280EB8580, type metadata accessor for LatestStoriesTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      v54 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_37;
    case 8uLL:
      v116 = swift_projectBox();
      v51 = v139;
      sub_21885AC00(v116, v139, type metadata accessor for MoreForYouTodayFeedGroup);
      v117 = v195;
      v195[3] = v138;
      v117[4] = sub_21885E3D4(&qword_280EC0F88, type metadata accessor for MoreForYouTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
      v54 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_37;
    case 9uLL:
      v71 = swift_projectBox();
      v51 = v141;
      sub_21885AC00(v71, v141, type metadata accessor for TopicTodayFeedGroup);
      v72 = v195;
      v195[3] = v140;
      v72[4] = sub_21885E3D4(&qword_280ECFA30, type metadata accessor for TopicTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
      v54 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_37;
    case 0xAuLL:
      v110 = swift_projectBox();
      v111 = v144;
      v112 = v142;
      v113 = v146;
      (*(v144 + 16))(v142, v110, v146);
      v114 = type metadata accessor for MagazineFeedGroup();
      v115 = v195;
      v195[3] = v114;
      v115[4] = sub_21885E3D4(&qword_280ED5E28, type metadata accessor for MagazineFeedGroup);
      __swift_allocate_boxed_opaque_existential_1(v115);
      sub_219BEDE64();
      return (*(v111 + 8))(v112, v113);
    case 0xBuLL:
      v63 = swift_projectBox();
      v51 = v145;
      sub_21885AC00(v63, v145, type metadata accessor for NewFollowTodayFeedGroup);
      v64 = v195;
      v195[3] = v143;
      v64[4] = sub_21885E3D4(&qword_27CC0BA50, type metadata accessor for NewFollowTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      v54 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_37;
    case 0xCuLL:
      v69 = swift_projectBox();
      v51 = v148;
      sub_21885AC00(v69, v148, type metadata accessor for SubscriptionTodayFeedGroup);
      v70 = v195;
      v195[3] = v147;
      v70[4] = sub_21885E3D4(&qword_27CC0BA48, type metadata accessor for SubscriptionTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
      v54 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_37;
    case 0xDuLL:
      v99 = swift_projectBox();
      v100 = v150;
      v101 = v149;
      v102 = v151;
      (*(v150 + 16))(v149, v99, v151);
      v103 = MEMORY[0x277D31BA0];
      v104 = v195;
      v195[3] = v102;
      v104[4] = v103;
      v105 = __swift_allocate_boxed_opaque_existential_1(v104);
      return (*(v100 + 32))(v105, v101, v102);
    case 0xEuLL:
      v59 = swift_projectBox();
      v51 = v153;
      sub_21885AC00(v59, v153, type metadata accessor for SpotlightTodayFeedGroup);
      v60 = v195;
      v195[3] = v152;
      v60[4] = sub_21885E3D4(&qword_280EC31C0, type metadata accessor for SpotlightTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
      v54 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_37;
    case 0xFuLL:
      v79 = swift_projectBox();
      v51 = v155;
      sub_21885AC00(v79, v155, type metadata accessor for SuggestionTodayFeedGroup);
      v80 = v195;
      v195[3] = v154;
      v80[4] = sub_21885E3D4(&qword_280EBFFE8, type metadata accessor for SuggestionTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
      v54 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_37;
    case 0x10uLL:
      v57 = swift_projectBox();
      v51 = v157;
      sub_21885AC00(v57, v157, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v58 = v195;
      v195[3] = v156;
      v58[4] = sub_21885E3D4(&qword_280EAEF50, type metadata accessor for SeenContentMarkTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      v54 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_37;
    case 0x11uLL:
      v89 = swift_projectBox();
      v90 = v159;
      v91 = v158;
      v92 = v160;
      (*(v159 + 16))(v158, v89, v160);
      sub_219BEE474();
      sub_2188798B4(v196);

      return (*(v90 + 8))(v91, v92);
    case 0x12uLL:
      v108 = swift_projectBox();
      v51 = v162;
      sub_21885AC00(v108, v162, type metadata accessor for SharedWithYouTodayFeedGroup);
      v109 = v195;
      v195[3] = v161;
      v109[4] = sub_21885E3D4(&qword_27CC0BA40, type metadata accessor for SharedWithYouTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
      v54 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_37;
    case 0x13uLL:
      v124 = swift_projectBox();
      v51 = v164;
      sub_21885AC00(v124, v164, type metadata accessor for EngagementTodayFeedGroup);
      v125 = v195;
      v195[3] = v163;
      v125[4] = sub_21885E3D4(&qword_280EC21B0, type metadata accessor for EngagementTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
      v54 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_37;
    case 0x14uLL:
      v93 = swift_projectBox();
      v51 = v166;
      sub_21885AC00(v93, v166, type metadata accessor for MySportsTodayFeedGroup);
      v94 = v195;
      v195[3] = v165;
      v94[4] = sub_21885E3D4(&qword_27CC18F48, type metadata accessor for MySportsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
      v54 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_37;
    case 0x15uLL:
      v97 = swift_projectBox();
      v51 = v168;
      sub_21885AC00(v97, v168, type metadata accessor for IntroToSportsTodayFeedGroup);
      v98 = v195;
      v195[3] = v167;
      v98[4] = sub_21885E3D4(&qword_280EB8660, type metadata accessor for IntroToSportsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
      v54 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_37;
    case 0x16uLL:
      v122 = swift_projectBox();
      v51 = v186;
      sub_21885AC00(v122, v186, type metadata accessor for ShortcutsTodayFeedGroup);
      v123 = v195;
      v195[3] = v185;
      v123[4] = sub_21885E3D4(&qword_280EC3400, type metadata accessor for ShortcutsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);
      v54 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_37;
    case 0x17uLL:
      v126 = swift_projectBox();
      v51 = v188;
      sub_21885AC00(v126, v188, type metadata accessor for ChannelTodayFeedGroup);
      v127 = v195;
      v195[3] = v187;
      v127[4] = sub_21885E3D4(&qword_280ECB9C0, type metadata accessor for ChannelTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
      v54 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_37;
    case 0x18uLL:
      v75 = swift_projectBox();
      v51 = v190;
      sub_21885AC00(v75, v190, type metadata accessor for SavedStoriesTodayFeedGroup);
      v76 = v195;
      v195[3] = v189;
      v76[4] = sub_21885E3D4(&qword_27CC0BA38, type metadata accessor for SavedStoriesTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
      v54 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_37;
    case 0x19uLL:
      v73 = swift_projectBox();
      v51 = v192;
      sub_21885AC00(v73, v192, type metadata accessor for ChannelPickerTodayFeedGroup);
      v74 = v195;
      v195[3] = v191;
      v74[4] = sub_21885E3D4(&qword_27CC0BA30, type metadata accessor for ChannelPickerTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
      v54 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_37;
    case 0x1AuLL:
      v132 = swift_projectBox();
      v51 = v194;
      sub_21885AC00(v132, v194, type metadata accessor for FoodTodayFeedGroup);
      v133 = v195;
      v195[3] = v193;
      v133[4] = sub_21885E3D4(&qword_280ED3B50, type metadata accessor for FoodTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v133);
      v54 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_37;
    case 0x1BuLL:
      v50 = swift_projectBox();
      v51 = v170;
      sub_21885AC00(v50, v170, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v52 = v195;
      v195[3] = v169;
      v52[4] = sub_21885E3D4(&qword_280EA6AE0, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      v54 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1CuLL:
      v128 = swift_projectBox();
      v51 = v172;
      sub_21885AC00(v128, v172, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v129 = v195;
      v195[3] = v171;
      v129[4] = sub_21885E3D4(&qword_280E99A68, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v129);
      v54 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1DuLL:
      v130 = swift_projectBox();
      v51 = v174;
      sub_21885AC00(v130, v174, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v131 = v195;
      v195[3] = v173;
      v131[4] = sub_21885E3D4(&qword_280EACF58, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v131);
      v54 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_37;
    case 0x1EuLL:
      v118 = swift_projectBox();
      v51 = v176;
      sub_21885AC00(v118, v176, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v119 = v195;
      v195[3] = v175;
      v119[4] = sub_21885E3D4(&qword_280EB1318, type metadata accessor for BestOfBundleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v119);
      v54 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1FuLL:
      v87 = swift_projectBox();
      v51 = v178;
      sub_21885AC00(v87, v178, type metadata accessor for TrendingMagazineFeedGroup);
      v88 = v195;
      v195[3] = v177;
      v88[4] = sub_21885E3D4(&qword_280EBCA88, type metadata accessor for TrendingMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
      v54 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_37;
    case 0x20uLL:
      v120 = swift_projectBox();
      v51 = v180;
      sub_21885AC00(v120, v180, type metadata accessor for NewIssueMagazineFeedGroup);
      v121 = v195;
      v195[3] = v179;
      v121[4] = sub_21885E3D4(&qword_27CC10EC0, type metadata accessor for NewIssueMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
      v54 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_37;
    case 0x21uLL:
      sub_2186EBC7C();
      v61 = swift_projectBox();
      v51 = v182;
      sub_21885AC00(v61, v182, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v62 = v195;
      v195[3] = v181;
      v62[4] = sub_21885E3D4(&qword_27CC1FF80, type metadata accessor for MyMagazinesMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
      v54 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_37;
    case 0x22uLL:
      v55 = swift_projectBox();
      v51 = v184;
      sub_21885AC00(v55, v184, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v56 = v195;
      v195[3] = v183;
      v56[4] = sub_21885E3D4(&qword_280E9F628, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
      v54 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_37:
      v67 = v54;
      v68 = v51;
LABEL_38:
      result = sub_21885E5A0(v68, boxed_opaque_existential_1, v67);
      break;
    default:
      v49 = v195;
      v195[4] = 0;
      *v49 = 0u;
      *(v49 + 1) = 0u;
      break;
  }

  return result;
}

uint64_t sub_21887B94C@<X0>(void *a1@<X8>)
{
  v141 = a1;
  sub_2186EB308();
  v136 = *(v1 - 8);
  v137 = v1;
  MEMORY[0x28223BE20](v1);
  v135 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB228();
  v133 = *(v3 - 8);
  v134 = v3;
  MEMORY[0x28223BE20](v3);
  v132 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v130 = *(v5 - 8);
  v131 = v5;
  MEMORY[0x28223BE20](v5);
  v129 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v128 = v7;
  v126 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v125 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v123 = v9;
  v120 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v119 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38();
  v118 = v11;
  v117 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v114 = v13;
  v112 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v111 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v15 - 8);
  v127 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BF0574();
  v121 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_219B0E694(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v116 = &v103 - v20;
  sub_219B0E694(0, &qword_280E91C10, MEMORY[0x277D32010], v18);
  MEMORY[0x28223BE20](v21 - 8);
  v113 = &v103 - v22;
  sub_219B0E694(0, &unk_280EE34A0, MEMORY[0x277D2D148], v18);
  MEMORY[0x28223BE20](v23 - 8);
  v110 = &v103 - v24;
  v106 = sub_219BEC504();
  v105 = *(v106 - 8);
  v25 = MEMORY[0x28223BE20](v106);
  v104 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v103 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v103 - v30;
  sub_2186EAD48();
  v109 = v32;
  v108 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v107 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAC68();
  v35 = v34;
  v103 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v138 = *(v38 - 8);
  v139 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BF1584();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v103 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v103 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188584D8(v140, v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      (*(v42 + 32))(v44, &v47[*(v72 + 48)], v41);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v73 = v141;
      sub_219BEDB14();
      (*(v42 + 8))(v44, v41);
      v74 = *MEMORY[0x277D32D10];
      v75 = sub_219BF0614();
      (*(*(v75 - 8) + 104))(v73, v74, v75);
      return sub_2188594E8(v47, type metadata accessor for TodayGapLocation);
    case 2u:
      v64 = v138;
      v63 = v139;
      (*(v138 + 32))(v40, v47, v139);
      v52 = v141;
      sub_219BF07D4();
      (*(v64 + 8))(v40, v63);
      v53 = MEMORY[0x277D32E10];
      goto LABEL_19;
    case 3u:
      v68 = v103;
      (*(v103 + 32))(v37, v47, v35);
      v52 = v141;
      sub_219BF07D4();
      (*(v68 + 8))(v37, v35);
      v53 = MEMORY[0x277D32E18];
      goto LABEL_19;
    case 4u:
      v57 = v141;
      *v141 = *v47;
      v58 = MEMORY[0x277D32DE0];
      goto LABEL_14;
    case 5u:
      v77 = sub_219BF0D74();
      v57 = v141;
      (*(*(v77 - 8) + 32))(v141, v47, v77);
      v58 = MEMORY[0x277D32E00];
      goto LABEL_14;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      v140 = *(v83 + 48);
      v84 = v108;
      v85 = v107;
      v86 = v109;
      (*(v108 + 32))(v107, v47, v109);
      v87 = sub_219BF07D4();
      v88 = MEMORY[0x21CEC3270](v87);
      v136 = v89;
      v137 = v88;
      v90 = *(v105 + 8);
      v91 = v106;
      v90(v31, v106);
      sub_219BF07D4();
      v135 = sub_219BEC4F4();
      v90(v29, v91);
      v92 = v104;
      sub_219BF07D4();
      sub_219BEC4E4();
      v90(v92, v91);
      v93 = sub_219BEE404();
      (*(*(v93 - 8) + 56))(v113, 1, 1, v93);
      v94 = sub_219BEDB44();
      (*(*(v94 - 8) + 56))(v116, 1, 1, v94);
      (*(v121 + 104))(v122, *MEMORY[0x277D32D70], v124);
      sub_219BF0ED4();
      v95 = v141;
      sub_219BF0E34();
      (*(v84 + 8))(v85, v86);
      v96 = *MEMORY[0x277D32E10];
      v97 = sub_219BF0614();
      (*(*(v97 - 8) + 104))(v95, v96, v97);
      return (*(v138 + 8))(&v47[v140], v139);
    case 7u:
      v69 = v112;
      v70 = v111;
      v71 = v114;
      (*(v112 + 32))(v111, v47, v114);
      v52 = v141;
      sub_219BF07D4();
      (*(v69 + 8))(v70, v71);
      v53 = MEMORY[0x277D32CF0];
      goto LABEL_19;
    case 8u:
      goto LABEL_18;
    case 9u:
      v62 = sub_219BEEC14();
      v57 = v141;
      (*(*(v62 - 8) + 32))(v141, v47, v62);
      v58 = MEMORY[0x277D32DB0];
LABEL_14:
      v78 = *v58;
      v79 = sub_219BF0614();
      return (*(*(v79 - 8) + 104))(v57, v78, v79);
    case 0xAu:
      v98 = v117;
      v99 = v115;
      v100 = v118;
      (*(v117 + 32))(v115, v47, v118);
      v52 = v141;
      sub_219BF07D4();
      (*(v98 + 8))(v99, v100);
      v53 = MEMORY[0x277D32DD8];
      goto LABEL_19;
    case 0xBu:
      v54 = v120;
      v55 = v119;
      v56 = v123;
      (*(v120 + 32))(v119, v47, v123);
      v52 = v141;
      sub_219BF07D4();
      (*(v54 + 8))(v55, v56);
      v53 = MEMORY[0x277D32DC0];
      goto LABEL_19;
    case 0xCu:
      v59 = v125;
      v60 = v126;
      v61 = v128;
      (*(v126 + 32))(v125, v47, v128);
      v52 = v141;
      sub_219BF07D4();
      (*(v60 + 8))(v59, v61);
      v53 = MEMORY[0x277D32DE8];
      goto LABEL_19;
    case 0xDu:
      v80 = v129;
      v81 = v130;
      v82 = v131;
      (*(v130 + 32))(v129, v47, v131);
      v52 = v141;
      sub_219BF07D4();
      (*(v81 + 8))(v80, v82);
      v53 = MEMORY[0x277D32D18];
      goto LABEL_19;
    case 0xEu:
      v49 = v132;
      v50 = v133;
      v51 = v134;
      (*(v133 + 32))(v132, v47, v134);
      v52 = v141;
      sub_219BF07D4();
      (*(v50 + 8))(v49, v51);
      v53 = MEMORY[0x277D32DA8];
      goto LABEL_19;
    case 0xFu:
      v65 = v135;
      v66 = v136;
      v67 = v137;
      (*(v136 + 32))(v135, v47, v137);
      v52 = v141;
      sub_219BF07D4();
      (*(v66 + 8))(v65, v67);
      v53 = MEMORY[0x277D32DF0];
      goto LABEL_19;
    default:
      sub_2186EA920();
      sub_2188594E8(&v47[*(v48 + 48)], type metadata accessor for TodayGapLocation);
LABEL_18:
      v52 = v141;
      sub_219BF03C4();
      v53 = MEMORY[0x277D32DB8];
LABEL_19:
      v101 = *v53;
      v102 = sub_219BF0614();
      return (*(*(v102 - 8) + 104))(v52, v101, v102);
  }
}

uint64_t sub_21887CB4C()
{
  v1 = sub_219BEEC14();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0D74();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0614();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  sub_2188584D8(v0, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      v25 = *(v24 + 48);
      v26 = sub_219BF1584();
      (*(*(v26 - 8) + 8))(&v13[v25], v26);
      v15 = type metadata accessor for TodayGapLocation;
      goto LABEL_9;
    case 2u:
    case 3u:
    case 4u:
    case 7u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      sub_2188594E8(v13, type metadata accessor for TodayModel);
      goto LABEL_3;
    case 5u:
      v16 = v30;
      (*(v30 + 32))(v6, v13, v4);
      v14 = sub_219BF0D54();
      (*(v16 + 8))(v6, v4);
      return v14;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      v18 = *(v17 + 48);
      sub_2186EAB88();
      (*(*(v19 - 8) + 8))(&v13[v18], v19);
      sub_2186EAD48();
      (*(*(v20 - 8) + 8))(v13, v20);
LABEL_3:
      sub_21887B94C(v10);
      v14 = sub_219BF05A4();
      (*(v8 + 8))(v10, v7);
      return v14;
    case 8u:
      v15 = type metadata accessor for TodayModel;
LABEL_9:
      v22 = v15;
      v23 = v13;
      goto LABEL_10;
    case 9u:
      v27 = v31;
      (*(v31 + 32))(v3, v13, v1);
      v14 = sub_219BEEBF4();
      (*(v27 + 8))(v3, v1);
      return v14;
    default:

      sub_2186EA920();
      v22 = type metadata accessor for TodayGapLocation;
      v23 = &v13[*(v21 + 48)];
LABEL_10:
      sub_2188594E8(v23, v22);
      return 0;
  }
}

uint64_t sub_21887D050(uint64_t a1)
{
  MEMORY[0x21CECC330](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0x2064657461727543;
}

uint64_t sub_21887D0B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7ContextO14SectionContextVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7ContextO14SectionContextVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

BOOL sub_21887D13C(void *a1, uint64_t *a2)
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

void *sub_21887D1D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_21887D21C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_21887D248@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_21887D348@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21887D368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF5414();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21887D53C(uint64_t a1, uint64_t a2)
{
  sub_218932FF4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21887D5A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_218932FF4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21887D628(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_21887D6CC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21887D76C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_27:
    v22 = *(v10 + 48);

    return v22(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_27;
  }

  v13 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_27;
  }

  v14 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_27;
  }

  v15 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_27;
  }

  v16 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[11];
    goto LABEL_27;
  }

  v17 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[12];
    goto LABEL_27;
  }

  v18 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a3[13];
    goto LABEL_27;
  }

  v19 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  if (*(*(v19 - 8) + 84) == a2)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a3[14];
    goto LABEL_27;
  }

  v20 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
  if (*(*(v20 - 8) + 84) == a2)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a3[15];
    goto LABEL_27;
  }

  v21 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
  if (*(*(v21 - 8) + 84) == a2)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a3[16];
    goto LABEL_27;
  }

  v23 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  v24 = *(*(v23 - 8) + 48);
  v25 = &a1[a3[17]];

  return v24(v25, a2, v23);
}

char *sub_21887DB60(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_25:
    v22 = *(v10 + 56);

    return v22(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_25;
  }

  v13 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_25;
  }

  v14 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_25;
  }

  v15 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_25;
  }

  v16 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[11];
    goto LABEL_25;
  }

  v17 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[12];
    goto LABEL_25;
  }

  v18 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[13];
    goto LABEL_25;
  }

  v19 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[14];
    goto LABEL_25;
  }

  v20 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
  if (*(*(v20 - 8) + 84) == a3)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a4[15];
    goto LABEL_25;
  }

  v21 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
  if (*(*(v21 - 8) + 84) == a3)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a4[16];
    goto LABEL_25;
  }

  v23 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  v24 = *(*(v23 - 8) + 56);
  v25 = &v5[a4[17]];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_21887DF54()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21887DF8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21887DFCC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

id sub_21887E0C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxArticleDownloads];
  *a2 = result;
  return result;
}

id sub_21887E0FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxIssueDownloads];
  *a2 = result;
  return result;
}

id sub_21887E130@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxPuzzleDownloads];
  *a2 = result;
  return result;
}

id sub_21887E164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAudioDownloads];
  *a2 = result;
  return result;
}

id sub_21887E198@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxRecipeDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_21887E1CC()
{

  return swift_deallocObject();
}

id sub_21887E220@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 savedFeedRules];
  *a2 = result;
  return result;
}

id sub_21887E25C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxArticleDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_21887E294(uint64_t *a1)
{
  v2 = *a1;

  return sub_218956390(&v2);
}

uint64_t sub_21887E3C0()
{
  v1 = *(type metadata accessor for MiniMastheadModel() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_21895F570();
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = *(type metadata accessor for MastheadModelContext() + 28);
    v5 = sub_219BF11C4();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21887E4F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21887E550()
{

  return swift_deallocObject();
}

uint64_t sub_21887E588()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21887E5C0()
{
  v1 = *(type metadata accessor for TodayConfigFetchResult() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = type metadata accessor for TodayFeedConfig();

  v7 = *(v6 + 24);
  v8 = sub_219BEE5B4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  type metadata accessor for TodayConfig();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21887E7D4()
{
  v1 = *(type metadata accessor for TodayConfigFetchResult() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = type metadata accessor for TodayFeedConfig();

  v7 = *(v6 + 24);
  v8 = sub_219BEE5B4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  type metadata accessor for TodayConfig();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21887E9C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21887EA14()
{

  return swift_deallocObject();
}

uint64_t sub_21887EA4C()
{

  return swift_deallocObject();
}

uint64_t sub_21887EA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21887EB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BDB954();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_21887EC0C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21887EC44()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21887EC94()
{

  return swift_deallocObject();
}

uint64_t sub_21887ECCC()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21887ED28()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  }

  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  }

  sub_21896755C(*(v0 + 168), *(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t sub_21887EDA4()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21887EE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21887EEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21887EF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioPlaylistFeedContentConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21887EFD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AudioPlaylistFeedContentConfig();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21887F090(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21887F0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21887F16C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BF0BD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21887F218(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF0BD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21887F2BC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_21887F360(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21887F400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BED8D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21887F4C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BED8D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21887F57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21887F5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21887F658(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_2186DCFB0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_2186DCFB0(0, &qword_280EE5188, MEMORY[0x277D6D9E0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_21887F7FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for LegacyAudioConfigArticle.Overrides(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_2186DCFB0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_2186DCFB0(0, &qword_280EE5188, MEMORY[0x277D6D9E0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21887F9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_2186DCFB0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21887FA78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_2186DCFB0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21887FB40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21887FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21887FC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF1934();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21887FCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFailedData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21887FD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFailedData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21887FE1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21887FE54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21887FE94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21887FECC()
{
  v1 = *(type metadata accessor for HistoryFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_218986218();
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21887FFE0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218880020()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218880058()
{

  return swift_deallocObject();
}

uint64_t sub_218880090()
{

  return swift_deallocObject();
}

uint64_t sub_2188800C8()
{

  return swift_deallocObject();
}

uint64_t sub_218880114()
{

  return swift_deallocObject();
}

uint64_t sub_218880158()
{

  return swift_deallocObject();
}

uint64_t sub_218880190()
{

  return swift_deallocObject();
}

uint64_t sub_2188801D0()
{
  v1 = (type metadata accessor for HistoryFeedRefreshRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188802C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HistoryFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218880374(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HistoryFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218880430(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEF554();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188804DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEF554();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218880580()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188805C0()
{

  return swift_deallocObject();
}

uint64_t sub_2188805F8()
{
  sub_218954408();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188806C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218880734(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188807A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218880810(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218880880()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2188808C0()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218880904()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21888095C()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218880EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189A0B64(0, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_219BECD44();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

void sub_21888103C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189A0B64(0, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_219BECD44();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_218881190()
{
  v1 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_219BEC6E4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 32);
  v5 = sub_219BECD44();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21888132C()
{
  v1 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_219BEC6E4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 32);
  v5 = sub_219BECD44();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_218881530(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21888159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21888160C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218881644()
{

  return swift_deallocObject();
}

uint64_t sub_21888167C()
{

  return swift_deallocObject();
}

uint64_t sub_2188816BC()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_219BE1294();
  v8 = *(v7 - 8);
  v9 = (v6 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_218881834()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21888186C(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188818D8(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188819CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_218881A28(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_218881A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2189AE9B4(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_218881B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2189AE9B4(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_218881C74()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218881CAC()
{

  return swift_deallocObject();
}

uint64_t sub_218881CE4()
{

  return swift_deallocObject();
}

uint64_t sub_218881D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2189AE9B4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_218881E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2189AE9B4(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_218881F40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_219BE3774();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_219BE3794();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2188820B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BE3514();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_219BE3774();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_219BE3794();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_218882234()
{

  return swift_deallocObject();
}

uint64_t sub_21888226C()
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188823F4()
{

  return swift_deallocObject();
}

uint64_t sub_21888242C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SavedFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188824D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SavedFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21888257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DD058(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2186DD058(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_218882700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DD058(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2186DD058(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21888288C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188828C4()
{
  sub_2189539F0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21888298C()
{
  sub_2189C01AC(0, &qword_27CC0C208, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218882A34()
{

  return swift_deallocObject();
}

uint64_t sub_218882AD0()
{

  return swift_deallocObject();
}

uint64_t sub_218882B20()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_218882BB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BE4D74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218882C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE4D74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218882D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AudioFeedKnobsConfig();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2186EDF0C(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_218882E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AudioFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for AudioFeedKnobsConfig();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2186EDF0C(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_218882FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218883038(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188830A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187015C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188831B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2187015C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188832C4()
{
  v1 = (type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  sub_2187015C4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[7];
  sub_2187148B8(0);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_218883408(uint64_t a1, uint64_t a2)
{
  sub_2187148B8(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218883474(uint64_t a1, uint64_t a2)
{
  sub_2187148B8(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188834E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BED8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218883590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BED8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218883634()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218883670()
{
  v1 = sub_219BE9944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDCD34();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188837CC()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218883854()
{
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188839FC()
{

  return swift_deallocObject();
}

uint64_t sub_218883A34()
{

  return swift_deallocObject();
}

uint64_t sub_218883A74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218883AB8()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_218883AF0()
{
  swift_unownedRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218883B38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218883B70()
{

  return swift_deallocObject();
}

uint64_t sub_218883BB0()
{

  return swift_deallocObject();
}

uint64_t sub_218883BF0()
{
  sub_2189F7934(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218883CE4()
{
  sub_2189F7934(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218883DB4()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else if (!*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218883E1C()
{
  sub_2189F7934(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218883FBC()
{
  v1 = sub_219BF0BD4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2188840DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218884114()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_218884154()
{
  v1 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  v30 = *(*(v1 - 8) + 80);
  v2 = (v30 + 24) & ~v30;
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_219BF0BD4();
  v24 = *(v4 - 8);
  v25 = v4;
  v29 = *(v24 + 80);
  v5 = *(v24 + 64);
  v6 = type metadata accessor for TopicTodayFeedGroupKnobs();
  v23 = (v2 + v3 + v29) & ~v29;
  v28 = *(*(v6 - 1) + 80);
  v32 = (v23 + v5 + v28) & ~v28;
  v26 = *(*(v6 - 1) + 64);

  v27 = v0;
  v7 = v0 + v2;
  sub_2189FEBF8(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v9 = v8;
  v22 = *(*(v8 - 8) + 8);
  v22(v0 + v2, v8);
  v10 = *(v1 + 20);
  sub_2189FEBF8(0, &qword_280E91860, MEMORY[0x277D32318]);
  v12 = v11;
  v21 = *(*(v11 - 8) + 8);
  v21(v7 + v10, v11);
  v13 = *(v1 + 24);
  v14 = sub_219BEF814();
  v31 = *(v14 - 8);
  v20 = *(v31 + 48);
  if (!v20(v7 + v13, 1, v14))
  {
    (*(v31 + 8))(v7 + v13, v14);
  }

  (*(v24 + 8))(v27 + v23, v25);
  v15 = v27 + v32;
  v22(v27 + v32, v9);
  v21(v27 + v32 + v6[5], v12);
  v22(v27 + v32 + v6[6], v9);
  v21(v27 + v32 + v6[7], v12);

  v16 = v6[9];
  if (!v20(v27 + v32 + v16, 1, v14))
  {
    (*(v31 + 8))(v15 + v16, v14);
  }

  v17 = v6[10];
  if (!v20(v15 + v17, 1, v14))
  {
    (*(v31 + 8))(v15 + v17, v14);
  }

  v18 = v6[11];
  if (!v20(v15 + v18, 1, v14))
  {
    (*(v31 + 8))(v15 + v18, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_218884664()
{

  return swift_deallocObject();
}

uint64_t sub_218884850()
{

  return swift_deallocObject();
}

uint64_t sub_218884888()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188848C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RecipeBoxGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21888496C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecipeBoxGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218884A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BF0BD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218884ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF0BD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218884B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218884BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218884C8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TodayGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218884D38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TodayGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218884DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFailedData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218884E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayFailedData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218884EB8()
{
  v1 = sub_219BDB954();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218884F40()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218884F7C()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else if (!*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218884FE4()
{

  return swift_deallocObject();
}

uint64_t sub_21888501C(uint64_t a1, uint64_t a2)
{
  sub_2187C5110();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218885088(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_2187C5110();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_218885134()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_2188851C4()
{

  return swift_deallocObject();
}

uint64_t sub_2188851FC()
{

  return swift_deallocObject();
}

uint64_t sub_21888523C()
{
  sub_218A264C8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_218885288()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_218885338()
{

  return swift_deallocObject();
}

uint64_t sub_218885370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedCuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188853DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedCuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21888544C(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_218A27A84();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for CuratedTagFeedGroupKnobs();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = type metadata accessor for TagFeedCurationHeader(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = sub_219BF1934();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

char *sub_218885600(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_218A27A84();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for CuratedTagFeedGroupKnobs();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = type metadata accessor for TagFeedCurationHeader(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = sub_219BF1934();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2188857B4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_219BDB954();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_21873F65C(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_2186E5370(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_218885950(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_219BDB954();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_21873F65C(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_2186E5370(0, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_218885AEC()
{

  return swift_deallocObject();
}

uint64_t sub_218885B24()
{

  return swift_deallocObject();
}

uint64_t sub_218885B8C()
{

  return swift_deallocObject();
}

uint64_t sub_218885BE4()
{

  return swift_deallocObject();
}

uint64_t sub_218885C44()
{

  return swift_deallocObject();
}

uint64_t sub_218885CA0()
{
  sub_218A2D07C(0);
  v2 = (*(*(v1 - 8) + 80) + 488) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1(v0 + 360);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 424);
  swift_unknownObjectRelease();

  v3 = sub_219BF1454();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_218885E6C()
{

  return swift_deallocObject();
}

uint64_t sub_218885EAC()
{

  return swift_deallocObject();
}

uint64_t sub_218885EFC()
{
  v1 = *(type metadata accessor for SavedFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_218886024()
{

  return swift_deallocObject();
}

uint64_t sub_21888605C()
{

  return swift_deallocObject();
}

uint64_t sub_218886094()
{

  return swift_deallocObject();
}

uint64_t sub_2188860CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BED8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218886178(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BED8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21888621C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BDF034();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_218886370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_219BDF034();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2188864C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188864FC()
{
  sub_218A38B58(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188865F0()
{

  return swift_deallocObject();
}

uint64_t sub_218886628()
{
  sub_218A38B58(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188867B4()
{
  sub_218A38B58(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218886950(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BDBD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188869FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDBD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218886AA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BDBD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_218886B4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDBD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218886BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218886C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218886CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A3A5D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ForYouTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_218886DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218A3A5D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ForYouTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_218886EE8()
{
  sub_21896FA3C();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188870B4()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188870F4()
{
  sub_21896FA3C();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218887260()
{

  return swift_deallocObject();
}

uint64_t sub_218887298()
{

  return swift_deallocObject();
}

uint64_t sub_2188872D8()
{
  sub_218A472F0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218887370()
{

  return swift_deallocObject();
}

uint64_t sub_2188873C0()
{

  return swift_deallocObject();
}

uint64_t sub_218887408()
{

  return swift_deallocObject();
}

uint64_t sub_218887440()
{

  return swift_deallocObject();
}

uint64_t sub_218887488()
{

  return swift_deallocObject();
}

uint64_t sub_218887544()
{

  return swift_deallocObject();
}

uint64_t sub_2188875C0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218887614()
{

  return swift_deallocObject();
}

uint64_t sub_218887654()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_218887690()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188876CC()
{

  return swift_deallocObject();
}

uint64_t sub_218887710()
{

  return swift_deallocObject();
}

uint64_t sub_21888774C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188877F0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218887890()
{
  sub_218A593E4();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218887954()
{

  return swift_deallocObject();
}

uint64_t sub_21888798C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BED8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218887A38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BED8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218887ADC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BED8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218887B88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BED8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218887C2C()
{
  v1 = sub_219BE89F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218887CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshResult();
  v7 = *(refreshed - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, refreshed);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_218887DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AudioPlaylistFeedRefreshResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_218887E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218887EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218887F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218887FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218888038()
{
  sub_218A57FB4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21888807C()
{

  return swift_deallocObject();
}

uint64_t sub_2188880B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188880FC()
{

  return swift_deallocObject();
}

uint64_t sub_21888813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2189AE9B4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_218888248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2189AE9B4(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_218888350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedFailedData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188883BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedFailedData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218888438()
{

  return swift_deallocObject();
}

uint64_t sub_218888470()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188884B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BE6424();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_218888560(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE6424();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218888604()
{

  return swift_deallocObject();
}

uint64_t sub_21888863C()
{

  return swift_deallocObject();
}

uint64_t sub_218888680()
{
  v1 = (type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218A7EEB4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_218888828()
{
  v1 = (type metadata accessor for SportsEventArticlesTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_218A7EEB4();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v4 + v1[7];
  sub_2189AD5C8();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v4 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v4 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_218888A78()
{

  return swift_deallocObject();
}

uint64_t sub_218888AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A7EEB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_218888BC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218A7EEB4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_218888CE0(uint64_t a1, uint64_t a2)
{
  sub_218A8341C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218888D4C(uint64_t a1, uint64_t a2)
{
  sub_218A8341C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218888DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A8750C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for WeatherTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_218888ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218A8750C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for WeatherTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_218888FD8()
{
  v1 = (type metadata accessor for WeatherTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218A8750C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_218889138()
{

  return swift_deallocObject();
}

uint64_t sub_218889180()
{
  sub_218A8CAC4(0, &qword_27CC0D700, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218889274()
{

  return swift_deallocObject();
}

uint64_t sub_2188892AC()
{

  return swift_deallocObject();
}

uint64_t sub_2188892E4()
{

  return swift_deallocObject();
}

uint64_t sub_21888931C()
{

  return swift_deallocObject();
}

uint64_t sub_21888935C()
{

  return swift_deallocObject();
}

uint64_t sub_2188893AC()
{

  return swift_deallocObject();
}

uint64_t sub_2188893E4()
{

  return swift_deallocObject();
}

uint64_t sub_21888942C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoryFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for HistoryFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21888951C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoryFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for HistoryFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218889618()
{

  return swift_deallocObject();
}

uint64_t sub_218889650()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218889794()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  sub_219BDD944();
  LODWORD(v3) = swift_getEnumCaseMultiPayload();

  if (v3 != 1)
  {
    sub_2187B3004();
    v9 = *(v8 + 48);
    v10 = sub_219BDE294();
    (*(*(v10 - 8) + 8))(v0 + v7 + v9, v10);
  }

  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  return swift_deallocObject();
}

uint64_t sub_2188899A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188899E4()
{
  v1 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_219BDD944();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    sub_2187B3004();
    v6 = *(v5 + 48);
    v7 = sub_219BDE294();
    (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  }

  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  return swift_deallocObject();
}

uint64_t sub_218889B60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218889B98()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDD944() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    sub_2187B3004();
    v10 = *(v9 + 48);
    v11 = sub_219BDE294();
    (*(*(v11 - 8) + 8))(v0 + v7 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_218889D84()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218889E88()
{
  v1 = *(sub_219BDD944() - 8);
  v23 = *(v1 + 80);
  v22 = *(v1 + 64);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v21 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v18 = *(v3 + 64);
  v20 = sub_219BE3D44();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v19 = sub_219BDDD44();
  v7 = *(v19 - 8);
  v8 = *(v7 + 80);
  v9 = (v23 + 16) & ~v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    sub_2187B3004();
    v12 = *(v11 + 48);
    v13 = sub_219BDE294();
    (*(*(v13 - 8) + 8))(v0 + v9 + v12, v13);
  }

  v14 = (v9 + v22 + v4) & ~v4;
  v15 = (v14 + v18 + v6) & ~v6;
  (*(v3 + 8))(v0 + v14, v21);
  (*(v5 + 8))(v0 + v15, v20);
  (*(v7 + 8))(v0 + ((v15 + v17 + v8) & ~v8), v19);

  return swift_deallocObject();
}

uint64_t sub_21888A180()
{
  v1 = sub_219BE3D44();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_21888A280()
{

  return swift_deallocObject();
}

uint64_t sub_21888A2C0()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21888A3F8()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21888A510()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21888A5D4()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21888A694()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21888A850()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21888A97C()
{

  return swift_deallocObject();
}

uint64_t sub_21888A9B4()
{

  return swift_deallocObject();
}

uint64_t sub_21888A9F8()
{

  return swift_deallocObject();
}

uint64_t sub_21888AAAC()
{

  return swift_deallocObject();
}

uint64_t sub_21888AAF8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21888AB30()
{

  return swift_deallocObject();
}

uint64_t sub_21888AB68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21888AC14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21888AD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21888AD74(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21888AE08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_218AC633C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SportsScheduleTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21888AF2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_218AC633C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SportsScheduleTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21888B054()
{
  v1 = (type metadata accessor for SportsScheduleTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_218AC633C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  sub_2189AD5C8();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[12]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[15]);

  return swift_deallocObject();
}

uint64_t sub_21888B224()
{

  return swift_deallocObject();
}

uint64_t sub_21888B26C()
{
  v1 = (type metadata accessor for SportsScheduleTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_218AC633C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v0 + v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[15]);

  return swift_deallocObject();
}

uint64_t sub_21888B42C()
{
  v1 = (type metadata accessor for SportsScheduleTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  sub_218ACC2A4(0, &qword_27CC133D0, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D31C68]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v3 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = v1[7];
  sub_218AC633C();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = v0 + v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v11 - 8) + 8))(v10, v11);
  type metadata accessor for SportsScheduleTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[13]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[15]);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21888B6B4()
{

  return swift_deallocObject();
}

uint64_t sub_21888B6EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21888B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21888B7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF1934();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21888B8A0()
{
  v17 = *(v0 + 496);
  v15 = *(v0 + 464);
  v16 = *(v0 + 480);
  v13 = *(v0 + 432);
  v14 = *(v0 + 448);
  v11 = *(v0 + 400);
  v12 = *(v0 + 416);
  v9 = *(v0 + 368);
  v10 = *(v0 + 384);
  v7 = *(v0 + 336);
  v8 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 288);
  v2 = *(v0 + 240);
  sub_218AD826C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v2, *(&v2 + 1), *(v0 + 256), *(v0 + 264), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), *(v0 + 512));

  return swift_deallocObject();
}

uint64_t sub_21888B98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21888B9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21888BA68()
{
  sub_218ADCE28(0, &qword_27CC0DC18, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21888BB5C()
{

  return swift_deallocObject();
}

uint64_t sub_21888BB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayExpandResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21888BC54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TodayExpandResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21888BD18()
{

  return swift_deallocObject();
}

uint64_t sub_21888BD5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21888BD94()
{
  sub_218853400();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BDC104();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21888BEE4()
{

  return swift_deallocObject();
}

uint64_t sub_21888BF34()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21888BF88()
{
  v1 = sub_219BDF074();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21888C010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BED8D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21888C0CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BED8D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21888C184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218AE5F98(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_21888C268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218AE5F98(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_21888C3DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21888C41C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21888C454()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21888C48C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21888C4D4()
{
  v1 = (type metadata accessor for EngagementPresentation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v13 = *(*v1 + 64);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = sub_219BE3514();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v1[8];
  v8 = sub_219BE3794();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v1[10];
  v10 = sub_219BE3C04();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v2 + v9, v10);
  }

  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_21888C728()
{

  return swift_deallocObject();
}

uint64_t sub_21888C768()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21888C7A0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21888C7F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21888C828()
{

  return swift_deallocObject();
}

uint64_t sub_21888C860()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21888C8A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21888C8E8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21888C938()
{

  return swift_deallocObject();
}

uint64_t sub_21888C970()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21888C9A8()
{

  return swift_deallocObject();
}

uint64_t sub_21888C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B00B58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AffinityTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21888CB04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218B00B58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AffinityTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21888CC14()
{
  v1 = (type metadata accessor for AffinityTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218B00B58();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for AffinityTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_21888CD68()
{

  return swift_deallocObject();
}

uint64_t sub_21888CDA0()
{
  v1 = type metadata accessor for TagFeedCuration(0);
  v26 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v27 = type metadata accessor for AffinityTagFeedGroupEmitter();
  v2 = *(*(v27 - 8) + 80);
  v25 = (v26 + 16) & ~v26;
  v3 = v0 + v25;
  swift_unknownObjectRelease();

  v4 = v1[7];
  sub_218A27A84();
  (*(*(v5 - 8) + 8))(v0 + v25 + v4, v5);
  v6 = v0 + v25 + v1[8];
  sub_2189AD5C8();
  v8 = v7;
  v23 = *(*(v7 - 8) + 8);
  v23(v6, v7);
  v9 = type metadata accessor for CuratedTagFeedGroupKnobs();

  v10 = *(v9 + 48);
  v11 = sub_219BEF814();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v3 + v1[9];
  type metadata accessor for TagFeedCurationHeaderTitle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_219BF2124();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v15 = *(type metadata accessor for TagFeedCurationHeader(0) + 20);
  v16 = type metadata accessor for TagFeedCurationHeaderSubtitle(0);
  if (!(*(*(v16 - 8) + 48))(v13 + v15, 1, v16))
  {
    v17 = sub_219BF2124();
    (*(*(v17 - 8) + 8))(v13 + v15, v17);
  }

  v18 = v1[11];
  v19 = sub_219BF1934();
  (*(*(v19 - 8) + 8))(v3 + v18, v19);

  v20 = v0 + ((v25 + v24 + v2) & ~v2);
  sub_218B00B58();
  (*(*(v21 - 8) + 8))(v20, v21);
  v23(v20 + *(v27 + 20), v8);
  type metadata accessor for AffinityTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v20 + *(v27 + 24));

  return swift_deallocObject();
}

uint64_t sub_21888D240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedContentConfig();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21888D2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedContentConfig();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21888D31C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21888D354()
{

  return swift_deallocObject();
}

uint64_t sub_21888D394()
{

  sub_218B08348(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 65));

  return swift_deallocObject();
}

uint64_t sub_21888D3E4()
{

  return swift_deallocObject();
}

uint64_t sub_21888D41C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21888D454()
{
  v1 = sub_219BF1584();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21888D51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21888D588(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21888D5F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21888D630()
{
  sub_21874E5F0(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21888D7CC()
{

  return swift_deallocObject();
}

uint64_t sub_21888D80C()
{
  v1 = sub_219BF31C4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21888D93C(uint64_t a1, uint64_t a2)
{
  sub_2186F687C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21888D9A8(uint64_t a1, uint64_t a2)
{
  sub_2186F687C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21888DA18(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_21888DABC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21888DB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BED8D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21888DC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BED8D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21888DCD0()
{
  v1 = (type metadata accessor for AudioFeedServiceContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_219BEE754();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21888DDD0()
{
  v1 = (type metadata accessor for OfflineFeedManifest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BDBD34();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v4(v2 + v1[7], v3);

  return swift_deallocObject();
}

uint64_t sub_21888DF2C()
{

  return swift_deallocObject();
}

uint64_t sub_21888DF64()
{

  return swift_deallocObject();
}

uint64_t sub_21888DFB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21888DFE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21888E020()
{

  return swift_deallocObject();
}

uint64_t sub_21888E29C()
{
  v1 = sub_219BF0F34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_218B58D38(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21888E408()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BF07A4();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21888E5F8()
{
  v18 = sub_219BDEF94();
  v1 = *(v18 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_219BF0AC4();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + v2 + 1) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_218B59134(0);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v17 = *(*(v8 - 8) + 64);
  sub_218B58D38(0);
  v19 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  (*(v1 + 8))(v0 + v2, v18);
  (*(v5 + 8))(v0 + v6, v4);
  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, v14))
  {
    (*(v15 + 8))(v0 + v10, v14);
  }

  (*(v12 + 8))(v0 + ((((v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13), v19);

  return swift_deallocObject();
}

uint64_t sub_21888E8DC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21888E914()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21888E954()
{
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21888E9F4()
{
  v1 = sub_219BDB184();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21888EA7C()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21888EB40()
{
  v1 = sub_219BE9944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDF074();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21888ECA4()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21888ECFC()
{
  v1 = sub_219BE8F74();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21888EE18()
{
  v1 = sub_219BF0F34();
  v2 = *(v1 - 8);
  v16 = v1;
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_218B5A30C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21898BBC4(0);
  v11 = (v9 + *(*(v10 - 8) + 80) + 8) & ~*(*(v10 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v16);
  (*(v7 + 8))(v0 + v8, v6);

  sub_218954350();
  v13 = v12;
  v14 = *(v12 - 8);
  if (!(*(v14 + 48))(v0 + v11, 1, v12))
  {
    (*(v14 + 8))(v0 + v11, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_21888F054()
{
  sub_218954350();
  v24 = v1;
  v2 = *(v1 - 8);
  v26 = *(v2 + 80);
  v3 = *(v2 + 64);
  v21 = sub_219BF04A4();
  v4 = *(v21 - 8);
  v5 = (((v26 + 16) & ~v26) + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  sub_218B59134(0);
  v8 = *(*(v7 - 8) + 80);
  v19 = (v5 + v6 + v8) & ~v8;
  v23 = *(*(v7 - 8) + 64);
  v25 = sub_219BE16D4();
  v9 = *(v25 - 8);
  v10 = *(v9 + 80);
  v20 = *(v9 + 64);
  sub_218B5A30C(0);
  v22 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  (*(v2 + 8))(v0 + ((v26 + 16) & ~v26), v24);
  (*(v4 + 8))(v0 + v5, v21);
  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v19, 1, v14))
  {
    (*(v15 + 8))(v0 + v19, v14);
  }

  v16 = (v19 + v23 + v10) & ~v10;
  v17 = (v16 + v20 + v13) & ~v13;
  (*(v9 + 8))(v0 + v16, v25);
  (*(v12 + 8))(v0 + v17, v22);

  return swift_deallocObject();
}

uint64_t sub_21888F394()
{
  v14 = sub_219BF1094();
  v1 = *(v14 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_218B5A30C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v2 + v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v10 = (v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80);
  (*(v1 + 8))(v0 + v2, v14);
  (*(v6 + 8))(v0 + v7, v5);

  v11 = sub_219BDF4A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21888F5E8()
{
  sub_21898BBC4(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  sub_218B5A30C(0);
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v6 = sub_219BF07A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  sub_218954350();
  v10 = v9;
  v11 = *(v9 - 8);
  if (!(*(v11 + 48))(v0 + v2, 1, v9))
  {
    (*(v11 + 8))(v0 + v2, v10);
  }

  v12 = (v2 + v16 + v5) & ~v5;
  v13 = (v12 + v15 + v8) & ~v8;
  (*(v4 + 8))(v0 + v12, v17);
  (*(v7 + 8))(v0 + v13, v6);

  return swift_deallocObject();
}

uint64_t sub_21888F83C()
{
  v1 = sub_219BEDAE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_218B5A30C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_21898BBC4(0);
  v21 = *(*(v10 - 8) + 80);
  v11 = (v8 + v9 + v21) & ~v21;
  v12 = (*(*(v10 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v20 = (v12 + *(*(v13 - 8) + 80) + 8) & ~*(*(v13 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);
  sub_218954350();
  v15 = v14;
  v16 = *(v14 - 8);
  if (!(*(v16 + 48))(v0 + v11, 1, v14))
  {
    (*(v16 + 8))(v0 + v11, v15);
  }

  v17 = sub_219BDF4A4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v20, 1, v17))
  {
    (*(v18 + 8))(v0 + v20, v17);
  }

  return swift_deallocObject();
}