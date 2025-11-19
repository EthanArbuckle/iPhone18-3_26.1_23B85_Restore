uint64_t sub_218F07E38(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_219BEDC04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v66 = &v55 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v55 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = *(a1 + 16);
  v63 = v11;
  v59 = v4;
  if (v14)
  {
    v61 = *(v4 + 16);
    v60 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v15 = a1 + v60;
    v16 = *(v4 + 72);
    v58 = (v4 + 8);
    v62 = v4 + 16;
    v17 = (v4 + 32);
    v18 = MEMORY[0x277D84F90];
    v61(v13, a1 + v60, v3);
    while (1)
    {
      v19 = sub_219BEDBC4();
      [v19 tabiScore];
      v21 = v20;

      if (v21 <= 0.0)
      {
        (*v58)(v13, v3);
      }

      else
      {
        v22 = *v17;
        (*v17)(v64, v13, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34908(0, *(v18 + 16) + 1, 1);
          v18 = v67;
        }

        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C34908(v24 > 1, v25 + 1, 1);
          v18 = v67;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + v60 + v25 * v16;
        v3 = v63;
        v22(v26, v64, v63);
        v4 = v59;
      }

      v15 += v16;
      if (!--v14)
      {
        break;
      }

      v61(v13, v15, v3);
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v67 = v18;
  sub_218F0A248(0);
  sub_2186DEEA0(0, &qword_280E8F860);
  v28 = v27;
  sub_218F0A318(&qword_280E8EF80, sub_218F0A248);
  sub_218A42594();
  v58 = v28;
  v29 = sub_219BF56D4();

  v62 = *(v29 + 16);
  if (v62)
  {
    v31 = 0;
    v60 = v4 + 16;
    v56 = (v4 + 8);
    v64 = (v4 + 32);
    v32 = MEMORY[0x277D84F90];
    v33 = &selRef_boldSystemFontOfSize_;
    v61 = v29;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v34 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v35 = *(v4 + 72);
      (*(v4 + 16))(v66, v29 + v34 + v35 * v31, v3);
      v36 = sub_219BEDBE4();
      if ([v36 respondsToSelector_])
      {
        v37 = [v36 v33[52]];
        swift_unknownObjectRelease();
        if (v37)
        {
          v38 = sub_219BF5414();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        v67 = v38;
        v68 = v40;
        sub_219BF6F84();

        v41 = v70;
        if (v70)
        {
          v42 = *(v57 + 16);
          if (*(v42 + 16))
          {
            v43 = v69;
            sub_219BF7AA4();
            sub_219BF5524();
            v44 = sub_219BF7AE4();
            v45 = -1 << *(v42 + 32);
            v46 = v44 & ~v45;
            if ((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
            {
              v47 = ~v45;
              while (1)
              {
                v48 = (*(v42 + 48) + 16 * v46);
                v49 = *v48 == v43 && v41 == v48[1];
                if (v49 || (sub_219BF78F4() & 1) != 0)
                {
                  break;
                }

                v46 = (v46 + 1) & v47;
                if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              v3 = v63;
              result = (*v56)(v66, v63);
              v4 = v59;
              goto LABEL_38;
            }

LABEL_31:

            v3 = v63;
            v4 = v59;
          }

          else
          {
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v50 = *v64;
      (*v64)(v65, v66, v3);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v32;
      if ((v51 & 1) == 0)
      {
        sub_218C34908(0, *(v32 + 16) + 1, 1);
        v32 = v71;
      }

      v53 = *(v32 + 16);
      v52 = *(v32 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_218C34908(v52 > 1, v53 + 1, 1);
        v32 = v71;
      }

      *(v32 + 16) = v53 + 1;
      v54 = v32 + v34 + v53 * v35;
      v3 = v63;
      result = v50(v54, v65, v63);
LABEL_38:
      ++v31;
      v29 = v61;
      v33 = &selRef_boldSystemFontOfSize_;
      if (v31 == v62)
      {
        goto LABEL_42;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_42:

  return v32;
}

uint64_t sub_218F084F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(a3 + 8);

  result = sub_2194796A0(v10, v9);
  *a4 = v7;
  a4[1] = v8;
  a4[2] = result;
  return result;
}

void sub_218F0858C(uint64_t *a1@<X8>)
{
  v2 = sub_219BEDBE4();
  if ([v2 respondsToSelector_])
  {
    v3 = [v2 clusterID];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = sub_219BF5414();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
    v6 = 1;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_218F08648(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_218F08680@<X0>(unint64_t *a1@<X8>)
{
  sub_218F05748();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xB000000000000000;
  return result;
}

uint64_t sub_218F086FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
  a2[4] = sub_218F0A318(&qword_280EA1038, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  a2[5] = sub_218F0A318(&qword_280EA1040, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218F0A27C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
}

uint64_t sub_218F087C4()
{
  sub_218F05748();

  return sub_219BEDCA4();
}

uint64_t sub_218F087F0@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E48B4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218F05748();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218817458(inited + 32, sub_2188317B0);
  sub_218F0A2E4(0);
  a1[3] = v5;
  a1[4] = sub_218F0A318(qword_280EE7650, sub_218F0A2E4);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218F08974()
{
  sub_218F0A318(&qword_280E9BD48, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218F08B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F08BAC(_OWORD *a1)
{
  type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return sub_218F060BC(v5);
}

void (*sub_218F08C40(uint64_t *a1))(char *, uint64_t)
{
  v3 = *(type metadata accessor for BestOfBundleMagazineFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_218F063C8(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218F08CD8()
{
  if (!qword_280E90390)
  {
    sub_219BF2754();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90390);
    }
  }
}

uint64_t objectdestroy_3Tm_6()
{
  v1 = (type metadata accessor for BestOfBundleMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218F05748();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for BestOfBundleMagazineFeedGroupKnobs() + 40);
  sub_2186F8E48(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

void (*sub_218F0909C(uint64_t a1, uint64_t a2))(char *, uint64_t)
{
  v4 = MEMORY[0x277D83D88];
  sub_2186E48B4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v101 - v6;
  sub_2186E48B4(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v120 = &v101 - v9;
  sub_2186E48B4(0, &unk_280E919B0, sub_2186E3B14, v4);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v101 - v11;
  v12 = sub_219BF2AB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v111);
  v112 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BF1934();
  v129 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v114 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v121 = &v101 - v22;
  sub_2186FE720();
  MEMORY[0x28223BE20](v23 - 8);
  v113 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BF2034();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v128 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BEE6E4();
  v133 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF3C84();
  v131 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v110 = (&v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BF3E84();
  v126 = *(v29 - 8);
  v127 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v125 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v101 - v32;
  v124 = a2;
  v34 = *(a2 + 16);
  if (v34)
  {
    v104 = v19;
    v105 = a1;
    v106 = v15;
    v107 = v13;
    v108 = v12;
    v109 = v7;
    v35 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    sub_2186E48B4(0, &unk_280E8B7A0, MEMORY[0x277D34138], MEMORY[0x277D84560]);
    v36 = v131;
    v37 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v138 = *(v131 + 72);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    v102 = v35;
    *(v38 + v37) = sub_219BEE6D4();
    v39 = *MEMORY[0x277D34128];
    v40 = *(v36 + 104);
    v137 = v37;
    LODWORD(v136) = v39;
    v103 = v27;
    v134 = v40;
    v135 = (v36 + 104);
    v40(v38 + v37);
    v41 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v41);
    sub_218F0BB90(v41);
    sub_219BF3E74();
    v42 = v34 - 1;
    v123 = v33;
    if (v34 == 1)
    {
      v56 = v33;
    }

    else
    {
      v142 = v41;
      sub_218C34A88(0, v34 - 1, 0);
      v44 = *(v133 + 16);
      v43 = v133 + 16;
      v45 = v142;
      v132 = (v133 + 8);
      v133 = v44;
      v130 = *(v43 + 56);
      v131 += 32;
      v46 = v124 + v130 + v102;
      v47 = v43;
      v48 = v103;
      v49 = v110;
      do
      {
        v50 = v139;
        v51 = v140;
        v52 = v47;
        (v133)(v139, v46, v140);
        v53 = sub_219BEE6D4();
        (*v132)(v50, v51);
        *v49 = v53;
        v134(v49, v136, v48);
        v142 = v45;
        v55 = *(v45 + 16);
        v54 = *(v45 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_218C34A88(v54 > 1, v55 + 1, 1);
          v49 = v110;
          v48 = v103;
          v45 = v142;
        }

        *(v45 + 16) = v55 + 1;
        (*v131)(v45 + v137 + v55 * v138, v49, v48);
        v46 += v130;
        --v42;
        v47 = v52;
      }

      while (v42);
      v56 = v123;
      v41 = MEMORY[0x277D84F90];
    }

    sub_218F0B984(v41);
    sub_218F0BA7C(v41);
    sub_218F0BB90(v41);
    v59 = v125;
    sub_219BF3E74();
    sub_2186E48B4(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v60 = v126;
    v61 = *(v126 + 72);
    v62 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_219C09EC0;
    v64 = v63 + v62;
    v65 = *(v60 + 16);
    v66 = v127;
    v65(v64, v56, v127);
    v65(v64 + v61, v59, v66);
    v136 = sub_219BEC004();
    v67 = *(v136 - 8);
    v135 = *(v67 + 56);
    v137 = v67 + 56;
    v68 = v113;
    v135(v113, 1, 1, v136);
    sub_219A95188(v41);
    sub_219A95188(v41);
    sub_219A951A0(v41);
    sub_219A951B8(v41);
    sub_219A952CC(v41);
    sub_219A952E4(v41);
    sub_219A953F8(v41);
    v100 = v68;
    sub_219BF2024();
    v69 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
    v70 = v117;
    v71 = (v117 + *(v69 + 24));
    v72 = v71[3];
    v139 = v71[4];
    v140 = v72;
    v138 = __swift_project_boxed_opaque_existential_1(v71, v72);
    sub_218F05748();
    v73 = v112;
    sub_219BEDD14();
    v74 = v129;
    v75 = v114;
    v76 = v104;
    (*(v129 + 16))(v114, v73 + *(v111 + 36), v104);
    sub_218817458(v73, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
    v135(v68, 1, 1, v136);
    sub_218A42400(0);
    v78 = v115;
    (*(*(v77 - 8) + 56))(v115, 1, 1, v77);
    v79 = v121;
    sub_219BF1764();
    sub_218817458(v78, sub_218A89A94);
    v80 = v68;
    v81 = v76;
    sub_218817458(v80, sub_2186FE720);
    v82 = *(v74 + 8);
    v129 = v74 + 8;
    v82(v75, v76);
    v83 = *(v69 + 20);
    sub_2186E3B14();
    v85 = v84;
    v86 = *(v84 - 8);
    v87 = v70 + v83;
    v88 = v116;
    (*(v86 + 16))(v116, v87, v84);
    (*(v86 + 56))(v88, 0, 1, v85);
    v89 = sub_219BF35D4();
    (*(*(v89 - 8) + 56))(v120, 1, 1, v89);
    v141 = 11;
    sub_2186F8E48(0, &qword_280E90058, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    v90 = sub_219BF2774();
    (*(*(v90 - 8) + 56))(v109, 1, 1, v90);
    v91 = qword_280E8D920;
    *MEMORY[0x277D30B70];
    if (v91 != -1)
    {
      swift_once();
    }

    v100 = qword_280F617C8;
    v92 = v106;
    sub_219BF2A84();
    v93 = v128;
    v94 = v122;
    v95 = sub_219BF2184();
    if (v94)
    {
      (*(v107 + 8))(v92, v108);
      v82(v79, v81);
      (*(v118 + 8))(v93, v119);
      v57 = *(v126 + 8);
      v96 = v127;
      v57(v125, v127);
      v57(v123, v96);
    }

    else
    {
      v57 = v95;
      (*(v107 + 8))(v92, v108);
      v82(v79, v81);
      (*(v118 + 8))(v93, v119);
      v97 = *(v126 + 8);
      v98 = v127;
      v97(v125, v127);
      v97(v123, v98);
    }
  }

  else
  {
    v57 = sub_219BEEDD4();
    sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v58 = xmmword_219C14CF0;
    (*(*(v57 - 1) + 104))(v58, *MEMORY[0x277D32400], v57);
    swift_willThrow();
  }

  return v57;
}

id sub_218F0A130(uint64_t *a1)
{
  v3 = *(type metadata accessor for BestOfBundleMagazineFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  return sub_218F07018(a1, (v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218F0A27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F0A318(unint64_t *a1, void (*a2)(uint64_t))
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

id Assembly.__allocating_init(appConfigurationManager:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = objc_allocWithZone(type metadata accessor for FeatureAvailabilityProvider());
  v3 = swift_unknownObjectRetain();
  *&v1[OBJC_IVAR___TSFrameworkAssembly_featureAvailabilityProvider] = FeatureAvailabilityProvider.init(appConfigurationManager:)(v3);
  v6.receiver = v1;
  v6.super_class = v0;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  return v4;
}

id Assembly.init(appConfigurationManager:)()
{
  ObjectType = swift_getObjectType();
  v2 = objc_allocWithZone(type metadata accessor for FeatureAvailabilityProvider());
  v3 = swift_unknownObjectRetain();
  *&v0[OBJC_IVAR___TSFrameworkAssembly_featureAvailabilityProvider] = FeatureAvailabilityProvider.init(appConfigurationManager:)(v3);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  return v4;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218F0A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = v17;
  *(v9 + 104) = v8;
  *(v9 + 80) = v16;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = MEMORY[0x277D83D88];
  sub_2186E4918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  *(v9 + 112) = swift_task_alloc();
  v11 = sub_219BEF554();
  *(v9 + 120) = v11;
  *(v9 + 128) = *(v11 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  sub_2186E4918(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v10);
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_219BF2034();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_219BF3E84();
  *(v9 + 184) = v13;
  *(v9 + 192) = *(v13 - 8);
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F0A804, 0, 0);
}

uint64_t sub_218F0A804()
{
  v1 = v0[24];
  v2 = v0[25];
  v20 = v0[23];
  v21 = v0[19];
  v19 = MEMORY[0x277D84560];
  sub_2186E4918(0, &unk_280E8B7A0, MEMORY[0x277D34138], MEMORY[0x277D84560]);
  v3 = sub_219BF3C84();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;

  sub_219BF2144();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D340F0], v3);
  v7 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v7);
  sub_218F0BB90(v7);

  sub_219BF3E74();
  sub_2186E4918(0, &unk_280E8B790, MEMORY[0x277D34258], v19);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v1 + 16))(v9 + v8, v2, v20);

  sub_2191ED654(v10);
  v11 = sub_219BEC004();
  (*(*(v11 - 8) + 56))(v21, 1, 1, v11);
  sub_219A95188(v7);
  sub_219A95188(v7);
  sub_219A951A0(v7);
  sub_219A951B8(v7);
  sub_219A952CC(v7);
  sub_219A952E4(v7);
  sub_219A953F8(v7);
  sub_219BF2024();
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_218F0AB9C;
  v13 = v0[22];
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[3];

  return MEMORY[0x2821921B8](v17, v13, v15, v16, v14);
}

uint64_t sub_218F0AB9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_218F0AE68;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_218F0ACC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218F0ACC4()
{
  v1 = v0[24];
  v13 = v0[23];
  v14 = v0[25];
  v2 = v0[21];
  v11 = v0[20];
  v12 = v0[22];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[9];
  v7 = v0[7];
  v8 = *(v0[16] + 16);
  v8();
  (v8)(v3, v7, v5);
  sub_218F0BDA4(v6, v4);
  sub_219BED844();
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_218F0AE68()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_218F0AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a8;
  v69 = a7;
  v51 = a6;
  v68 = a5;
  v66 = a4;
  v59 = a1;
  v58 = a10;
  v57 = a9;
  v10 = MEMORY[0x277D83D88];
  sub_2186E4918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v64 = *(v11 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v47 - v12;
  v56 = sub_219BEF554();
  v54 = *(v56 - 8);
  v55 = *(v54 + 64);
  v13 = MEMORY[0x28223BE20](v56);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v47 - v15;
  sub_2186E4918(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v10);
  MEMORY[0x28223BE20](v16 - 8);
  v49 = &v47 - v17;
  v67 = sub_219BF2034();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v71 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BF3E84();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x277D84560];
  sub_2186E4918(0, &unk_280E8B7A0, MEMORY[0x277D34138], MEMORY[0x277D84560]);
  v21 = sub_219BF3C84();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v47 = xmmword_219C09BA0;
  *(v24 + 16) = xmmword_219C09BA0;

  sub_219BF2144();
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277D340F0], v21);
  v25 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v25);
  sub_218F0BB90(v25);

  v50 = v20;
  sub_219BF3E74();
  sub_2186E4918(0, &unk_280E8B790, MEMORY[0x277D34258], v48);
  v26 = v70;
  v27 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v47;
  (*(v26 + 16))(v28 + v27, v20, v72);
  v79 = v28;

  sub_2191ED654(v29);
  v30 = sub_219BEC004();
  (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
  sub_219A95188(v25);
  sub_219A95188(v25);
  sub_219A951A0(v25);
  sub_219A951B8(v25);
  sub_219A952CC(v25);
  sub_219A952E4(v25);
  sub_219A953F8(v25);
  v31 = v71;
  sub_219BF2024();
  v73 = v57;
  v74 = v58;
  v75 = v61;
  v76 = v59;
  v77 = v31;
  v78 = v62;
  sub_219BF2754();
  v62 = sub_219BE3204();
  v32 = v54;
  v33 = *(v54 + 16);
  v34 = v52;
  v35 = v56;
  v33(v52, v66, v56);
  v36 = v53;
  v33(v53, v68, v35);
  v37 = v60;
  sub_218F0BDA4(v69, v60);
  v38 = *(v32 + 80);
  v39 = (v38 + 16) & ~v38;
  v40 = (v55 + v38 + v39) & ~v38;
  v41 = (v55 + *(v64 + 80) + v40) & ~*(v64 + 80);
  v42 = swift_allocObject();
  v43 = *(v32 + 32);
  v43(v42 + v39, v34, v35);
  v43(v42 + v40, v36, v35);
  sub_218F0BE38(v37, v42 + v41);
  v44 = sub_219BE2E54();
  sub_219BED8D4();
  v45 = sub_219BE2F74();

  (*(v70 + 8))(v50, v72);
  (*(v63 + 8))(v71, v67);
  return v45;
}

uint64_t sub_218F0B780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[0] = a3;
  v17[1] = a4;
  sub_2186E4918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_219BEF554();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = *(v10 + 16);
  v14(v17 - v15, a1, v9);
  v14(v13, a2, v9);
  sub_218F0BDA4(v17[0], v8);

  return sub_219BED844();
}

unint64_t sub_218F0B984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_218F0C11C();
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21870F700(v5, v6);
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

unint64_t sub_218F0BA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_218F0C0B8(0, &qword_280E8D140, sub_2186E2394);
    v3 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21870F700(v5, v6);
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

unint64_t sub_218F0BB90(uint64_t a1)
{
  sub_218F0BFEC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_218F0C0B8(0, &qword_27CC136D0, MEMORY[0x277D34398]);
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_218F0C054(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21870F700(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_219BF4314();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

uint64_t sub_218F0BDA4(uint64_t a1, uint64_t a2)
{
  sub_2186E4918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F0BE38(uint64_t a1, uint64_t a2)
{
  sub_2186E4918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F0BECC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_219BEF554() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  sub_2186E4918(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  return sub_218F0B780(v1 + v5, v1 + v7, v1 + ((v7 + v6 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)), a1);
}

void sub_218F0BFEC()
{
  if (!qword_280E8F778)
  {
    sub_219BF4314();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F778);
    }
  }
}

uint64_t sub_218F0C054(uint64_t a1, uint64_t a2)
{
  sub_218F0BFEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218F0C0B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF75C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218F0C11C()
{
  if (!qword_280E8D1A0)
  {
    sub_2186E4918(255, &unk_280E8EEE0, MEMORY[0x277D333A8], MEMORY[0x277D83940]);
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D1A0);
    }
  }
}

uint64_t sub_218F0C1B4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC136D8 = result;
  return result;
}

uint64_t sub_218F0C3A4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE97B8 = result;
  return result;
}

uint64_t sub_218F0C5CC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[0] = 0xD000000000000038;
  v8[1] = 0x8000000219D01FC0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC136E0 = result;
  return result;
}

uint64_t sub_218F0C7D8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.MagazineFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE97C8 = result;
  return result;
}

uint64_t sub_218F0C9C0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6588(0, &qword_280EE9060);
  v5[2] = 0;
  v5[3] = 3;
  v5[1] = 0x7FFFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9D4();
  qword_280EE9790 = result;
  return result;
}

uint64_t sub_218F0CB28()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9818 = result;
  return result;
}

uint64_t sub_218F0CD18()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC136E8 = result;
  return result;
}

uint64_t sub_218F0CF08()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE97A8 = result;
  return result;
}

uint64_t sub_218F0D0F8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BF5414();
  v8 = sub_219BF5414();
  v10 = v9;
  *v7 = sub_219BF5414();
  v7[1] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC136F0 = result;
  return result;
}

uint64_t sub_218F0D330()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.TodayFeed.ConfigOverrides(0);
  sub_219BF5414();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE94A8 = result;
  return result;
}

uint64_t sub_218F0D528()
{
  v19 = sub_219BDC934();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDC944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BEF424();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v20 = &v18 - v11;
  sub_218F192FC();
  v21 = "ay_feed.last_refresh_date";
  v22 = v13;
  v14 = *MEMORY[0x277D325C0];
  v15 = *(v7 + 104);
  v15(v12, v14, v6);
  *v5 = sub_219BF5414();
  v5[1] = v16;
  (*(v3 + 104))(v5, *MEMORY[0x277D6D0A0], v2);
  (*(v0 + 104))(v23, *MEMORY[0x277D6D098], v19);
  sub_218F19250(0, &unk_280E8C180, sub_218F19390, MEMORY[0x277D84560]);
  sub_218F19390(0);
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v15(v10, v14, v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D325C8], v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D325B8], v6);
  sub_219BDC954();
  sub_218F192B4(&unk_280E915B0, MEMORY[0x277D325D0]);
  result = sub_219BDC9B4();
  qword_280EE9470 = result;
  return result;
}

uint64_t sub_218F0D9B0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A8], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9498 = result;
  return result;
}

uint64_t sub_218F0DBFC()
{
  v0 = sub_219BDC944();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v18 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDC934();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEFAC4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_218F19188();
  v17[1] = "refresh_duration";
  v17[2] = v13;
  v14 = *MEMORY[0x277D328A8];
  v15 = *(v7 + 104);
  v15(v12, v14, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6D098], v2);
  sub_218F19250(0, &qword_280E8C178, sub_218F1921C, MEMORY[0x277D84560]);
  sub_218F1921C(0);
  *(swift_allocObject() + 16) = xmmword_219C0EE20;
  v15(v10, v14, v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D328A0], v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D32890], v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D328B0], v6);
  sub_219BDC954();
  (*(v19 + 104))(v18, *MEMORY[0x277D6D0A8], v20);
  sub_218F192B4(&qword_280E91268, MEMORY[0x277D328B8]);
  result = sub_219BDC9B4();
  qword_280EE9488 = result;
  return result;
}

uint64_t sub_218F0E0BC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0x3FF0000000000000;
  sub_2186C6588(0, &qword_280EE9070);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9430 = result;
  return result;
}

uint64_t sub_218F0E2D4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9420 = result;
  return result;
}

uint64_t sub_218F0E4C4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000015;
  v10[1] = 0x8000000219D01CC0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC136F8 = result;
  return result;
}

uint64_t sub_218F0E6E8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000023;
  v10[1] = 0x8000000219D01C60;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13700 = result;
  return result;
}

uint64_t sub_218F0E90C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000028;
  v10[1] = 0x8000000219D01C00;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13708 = result;
  return result;
}

uint64_t sub_218F0EB30()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000032;
  v10[1] = 0x8000000219D01B80;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13710 = result;
  return result;
}

uint64_t sub_218F0ED58()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000002ELL;
  v10[1] = 0x8000000219D01B10;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13718 = result;
  return result;
}

uint64_t sub_218F0EF7C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000036;
  v10[1] = 0x8000000219D01A90;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13720 = result;
  return result;
}

uint64_t sub_218F0F1A4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000002DLL;
  v10[1] = 0x8000000219D01A20;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13728 = result;
  return result;
}

uint64_t sub_218F0F3C8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000035;
  v10[1] = 0x8000000219D019A0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13730 = result;
  return result;
}

uint64_t sub_218F0F5EC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000002DLL;
  v10[1] = 0x8000000219D01930;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13738 = result;
  return result;
}

uint64_t sub_218F0F810()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000036;
  v10[1] = 0x8000000219D018B0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13740 = result;
  return result;
}

uint64_t sub_218F0FA38()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000034;
  v10[1] = 0x8000000219D01830;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13748 = result;
  return result;
}

uint64_t sub_218F0FC60()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000038;
  v10[1] = 0x8000000219D017B0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13750 = result;
  return result;
}

uint64_t sub_218F0FE84()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000029;
  v10[1] = 0x8000000219D01730;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13758 = result;
  return result;
}

uint64_t sub_218F100A8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000032;
  v10[1] = 0x8000000219D016B0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13760 = result;
  return result;
}

uint64_t sub_218F102D0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000030;
  v10[1] = 0x8000000219D01630;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13768 = result;
  return result;
}

uint64_t sub_218F104F8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000034;
  v10[1] = 0x8000000219D015B0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13770 = result;
  return result;
}

uint64_t sub_218F10720()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000002FLL;
  v10[1] = 0x8000000219D01540;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13778 = result;
  return result;
}

uint64_t sub_218F10944()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003ALL;
  v10[1] = 0x8000000219D014C0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13780 = result;
  return result;
}

uint64_t sub_218F10B68()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000030;
  v10[1] = 0x8000000219D01430;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13788 = result;
  return result;
}

uint64_t sub_218F10D90()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000039;
  v10[1] = 0x8000000219D013B0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13790 = result;
  return result;
}

uint64_t sub_218F10FB4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000037;
  v10[1] = 0x8000000219D01320;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13798 = result;
  return result;
}

uint64_t sub_218F111D8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003BLL;
  v10[1] = 0x8000000219D01290;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137A0 = result;
  return result;
}

uint64_t sub_218F113FC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003ALL;
  v10[1] = 0x8000000219D01200;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137A8 = result;
  return result;
}

uint64_t sub_218F11620()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000031;
  v10[1] = 0x8000000219D01170;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137B0 = result;
  return result;
}

uint64_t sub_218F11844()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000002ELL;
  v10[1] = 0x8000000219D01100;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137B8 = result;
  return result;
}

uint64_t sub_218F11A68()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000037;
  v10[1] = 0x8000000219D01080;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137C0 = result;
  return result;
}

uint64_t sub_218F11C8C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000035;
  v10[1] = 0x8000000219D00FF0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137C8 = result;
  return result;
}

uint64_t sub_218F11EB0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000039;
  v10[1] = 0x8000000219D00F70;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137D0 = result;
  return result;
}

uint64_t sub_218F120D4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000033;
  v10[1] = 0x8000000219D00EE0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137D8 = result;
  return result;
}

uint64_t sub_218F122F8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000034;
  v10[1] = 0x8000000219D00E60;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137E0 = result;
  return result;
}

uint64_t sub_218F1251C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003CLL;
  v10[1] = 0x8000000219D00DE0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137E8 = result;
  return result;
}

uint64_t sub_218F12740()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.TagFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE95F0 = result;
  return result;
}

uint64_t sub_218F1292C()
{
  v0 = sub_219BDC944();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v18 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDC934();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v5;
  v6 = sub_219BEF424();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_218F192FC();
  v17[1] = "_feed.refresh_strategy";
  v17[2] = v13;
  v14 = *MEMORY[0x277D325C0];
  v15 = *(v7 + 104);
  v15(v12, v14, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6D098], v2);
  sub_218F19250(0, &unk_280E8C180, sub_218F19390, MEMORY[0x277D84560]);
  sub_218F19390(0);
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v15(v10, v14, v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D325C8], v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D325B8], v6);
  sub_219BDC954();
  (*(v19 + 104))(v18, *MEMORY[0x277D6D0A8], v20);
  sub_218F192B4(&unk_280E915B0, MEMORY[0x277D325D0]);
  result = sub_219BDC9B4();
  qword_280EE95B8 = result;
  return result;
}

uint64_t sub_218F12DA4()
{
  v0 = sub_219BDC944();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v18 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDC934();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v5;
  v6 = sub_219BEFAC4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_218F19188();
  v17[1] = "_feed.minimum_refresh_duration";
  v17[2] = v13;
  v14 = *MEMORY[0x277D328A8];
  v15 = *(v7 + 104);
  v15(v12, v14, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D6D098], v2);
  sub_218F19250(0, &qword_280E8C178, sub_218F1921C, MEMORY[0x277D84560]);
  sub_218F1921C(0);
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v15(v10, v14, v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D328A0], v6);
  sub_219BDC954();
  v15(v10, *MEMORY[0x277D32898], v6);
  sub_219BDC954();
  (*(v19 + 104))(v18, *MEMORY[0x277D6D0A8], v20);
  sub_218F192B4(&qword_280E91268, MEMORY[0x277D328B8]);
  result = sub_219BDC9B4();
  qword_280EE95E0 = result;
  return result;
}

uint64_t sub_218F13224()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0x3FF0000000000000;
  sub_2186C6588(0, &qword_280EE9070);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE95A8 = result;
  return result;
}

uint64_t sub_218F13418()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9640 = result;
  return result;
}

uint64_t sub_218F1360C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137F0 = result;
  return result;
}

uint64_t sub_218F137FC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9590 = result;
  return result;
}

uint64_t sub_218F139EC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 1;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE95C8 = result;
  return result;
}

uint64_t sub_218F13BE0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003FLL;
  v10[1] = 0x8000000219D00B80;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC137F8 = result;
  return result;
}

uint64_t sub_218F13E10()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.RecipeBoxFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC13800 = result;
  return result;
}

uint64_t sub_218F13FF8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003BLL;
  v10[1] = 0x8000000219D00AC0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13808 = result;
  return result;
}

uint64_t sub_218F14224()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.SharedWithYouFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC13810 = result;
  return result;
}

uint64_t sub_218F1440C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003ALL;
  v10[1] = 0x8000000219D00A00;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13818 = result;
  return result;
}

uint64_t sub_218F14638()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.SavedFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE94F8 = result;
  return result;
}

uint64_t sub_218F14820()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003CLL;
  v10[1] = 0x8000000219D00950;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13820 = result;
  return result;
}

uint64_t sub_218F14A4C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.HistoryFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE9828 = result;
  return result;
}

uint64_t sub_218F14C34()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000045;
  v10[1] = 0x8000000219D00890;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13828 = result;
  return result;
}

uint64_t sub_218F14E60()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.RecipeSearchFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC13830 = result;
  return result;
}

uint64_t sub_218F15048()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000036;
  v10[1] = 0x8000000219D007D0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13838 = result;
  return result;
}

uint64_t Settings.Modules.SearchFeed.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_218F152B0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.SearchFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE9878 = result;
  return result;
}

uint64_t sub_218F15498()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000040;
  v10[1] = 0x8000000219D00710;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13840 = result;
  return result;
}

uint64_t sub_218F156C4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.SearchMoreFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC13848 = result;
  return result;
}

uint64_t sub_218F158AC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000003ALL;
  v10[1] = 0x8000000219D00650;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13850 = result;
  return result;
}

uint64_t sub_218F15AD8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.AudioFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE9548 = result;
  return result;
}

uint64_t sub_218F15CC0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 2;
  sub_218F190D8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD85F0 = result;
  return result;
}

uint64_t sub_218F15E78()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 3;
  sub_218F190D8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD85F8 = result;
  return result;
}

uint64_t sub_218F16030()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 1;
  sub_218F190D8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD8600 = result;
  return result;
}

uint64_t sub_218F161E8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000042;
  v10[1] = 0x8000000219D00590;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13858 = result;
  return result;
}

uint64_t sub_218F16414()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.AudioHistoryFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE9740 = result;
  return result;
}

uint64_t sub_218F165FC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000043;
  v10[1] = 0x8000000219D004C0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13860 = result;
  return result;
}

uint64_t sub_218F16828()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.AudioPlaylistFeed.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE96F0 = result;
  return result;
}

uint64_t sub_218F16A10()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13868 = result;
  return result;
}

uint64_t sub_218F16C00()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13870 = result;
  return result;
}

uint64_t sub_218F16DF0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13878 = result;
  return result;
}

uint64_t sub_218F16FE0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13880 = result;
  return result;
}

uint64_t sub_218F171D0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13888 = result;
  return result;
}

uint64_t sub_218F173C0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13890 = result;
  return result;
}

uint64_t sub_218F175B0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  (*(v1 + 104))(&v9 - v5, *MEMORY[0x277D6D098], v0);
  type metadata accessor for Settings.Modules.EmailNewsletterSignup.StatusOverrides(0);
  swift_allocObject();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_219BDC824();
  result = (*(v1 + 8))(v6, v0);
  qword_280EE9658 = v7;
  return result;
}

uint64_t sub_218F17748()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000018;
  v10[1] = 0x8000000219D00260;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC13898 = result;
  return result;
}

uint64_t sub_218F1796C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD00000000000002BLL;
  v10[1] = 0x8000000219D001E0;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC138A0 = result;
  return result;
}

uint64_t sub_218F17B90()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000028;
  v10[1] = 0x8000000219D00170;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC138A8 = result;
  return result;
}

uint64_t sub_218F17DB4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0xD000000000000015;
  v10[1] = 0x8000000219CE6B20;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC138B0 = result;
  return result;
}

uint64_t _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesC3key12defaultValue6accessAJSSSg_SbAA6AccessOtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesC3key12defaultValue6accessAJSSSg_SbAA6AccessOtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v8 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v8;
}

uint64_t sub_218F18214()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.OfflineStatusBanner.OfflineModeUnavailableMessageOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC138B8 = result;
  return result;
}

uint64_t sub_218F183FC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.OfflineStatusBanner.UpsellMessageOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_280EE96A8 = result;
  return result;
}

uint64_t sub_218F185E4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Modules.OfflineStatusBanner.OfflineModeButtonTitleOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC138C0 = result;
  return result;
}

uint64_t _s11TeaSettings0B0C7NewsUI2E7ModulesV7TagFeedV15lastRefreshDate14feedDescriptorAA7SettingCy10Foundation0J0VGSo06FCFeedL0C_tFZ_0(void *a1)
{
  v2 = sub_219BDC934();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDC944();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  MEMORY[0x28223BE20](v7 - 8);
  sub_218D5E640(0, &qword_280E8B750, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  v26 = xmmword_219C09EC0;
  *(v8 + 16) = xmmword_219C09EC0;
  v9 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  v10 = sub_219BF5414();
  v12 = v11;

  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v32 = [a1 feedConfiguration];
  sub_218C8CE44();
  *(v8 + 48) = sub_219BF70A4();
  *(v8 + 56) = v13;
  v34 = v8;
  v14 = [a1 alternativeFeedDescriptor];
  if (v14)
  {
    v15 = v14;
    inited = swift_initStackObject();
    *(inited + 16) = v26;
    v17 = [objc_msgSend(v15 backingTag)];
    swift_unknownObjectRelease();
    v18 = sub_219BF5414();
    v20 = v19;

    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v32 = [v15 feedConfiguration];
    *(inited + 48) = sub_219BF70A4();
    *(inited + 56) = v21;
    sub_2191ED3E8(inited);

    v8 = v34;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_219BF7314();

  v32 = 0xD000000000000028;
  v33 = 0x8000000219D00D30;
  v31 = v8;
  sub_218D5E640(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  sub_2189DD328();
  v22 = sub_219BF5324();
  v24 = v23;

  MEMORY[0x21CECC330](v22, v24);

  sub_219BDBBB4();
  (*(v4 + 104))(v6, *MEMORY[0x277D6D0A8], v27);
  (*(v28 + 104))(v30, *MEMORY[0x277D6D090], v29);
  sub_21870E204();
  swift_allocObject();
  return sub_219BDC9F4();
}

void sub_218F190D8()
{
  if (!qword_27CC13928)
  {
    sub_218F19134();
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13928);
    }
  }
}

unint64_t sub_218F19134()
{
  result = qword_27CC13930;
  if (!qword_27CC13930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13930);
  }

  return result;
}

void sub_218F19188()
{
  if (!qword_280EE90A0)
  {
    sub_219BEFAC4();
    sub_218F192B4(&qword_280E91260, MEMORY[0x277D328B8]);
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE90A0);
    }
  }
}

void sub_218F19250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F192B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218F192FC()
{
  if (!qword_280EE90A8)
  {
    sub_219BEF424();
    sub_218F192B4(&qword_280E915A8, MEMORY[0x277D325D0]);
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE90A8);
    }
  }
}

uint64_t type metadata accessor for PuzzleListTagFeedGroupConfigData()
{
  result = qword_280EA5640;
  if (!qword_280EA5640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218F19538@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F19A68(0, &qword_280E8CA20, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F19A14();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 35;
    v13 = type metadata accessor for PuzzleListTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F197A0(void *a1)
{
  v3 = v1;
  sub_218F19A68(0, &qword_27CC13938, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F19A14();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleListTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F1996C(uint64_t a1)
{
  v2 = sub_218F19A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F199A8(uint64_t a1)
{
  v2 = sub_218F19A14();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218F19A14()
{
  result = qword_280EA5678;
  if (!qword_280EA5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5678);
  }

  return result;
}

void sub_218F19A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F19A14();
    v7 = a3(a1, &type metadata for PuzzleListTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F19AE0()
{
  result = qword_27CC13940;
  if (!qword_27CC13940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13940);
  }

  return result;
}

unint64_t sub_218F19B38()
{
  result = qword_280EA5668;
  if (!qword_280EA5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5668);
  }

  return result;
}

unint64_t sub_218F19B90()
{
  result = qword_280EA5670;
  if (!qword_280EA5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5670);
  }

  return result;
}

unint64_t sub_218F19BE4(void *a1, uint64_t a2, uint64_t a3)
{
  v395 = a1;
  v381 = a2;
  v4 = type metadata accessor for CustomItemRouteModel();
  MEMORY[0x28223BE20](v4 - 8);
  v383 = &v341 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v362);
  v382 = &v341 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD664();
  v385 = *(v7 - 8);
  v386 = v7;
  MEMORY[0x28223BE20](v7);
  v384 = &v341 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2186E55FC(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v368 = &v341 - v11;
  v370 = sub_219BDE294();
  v367 = *(v370 - 8);
  MEMORY[0x28223BE20](v370);
  v365 = &v341 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = sub_219BDEE04();
  v364 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v363 = &v341 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF1324();
  v353 = *(v14 - 8);
  v354 = v14;
  MEMORY[0x28223BE20](v14);
  v355 = &v341 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_219BF1C74();
  v347 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v352 = &v341 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2A04();
  v343 = *(v17 - 8);
  v344 = v17;
  MEMORY[0x28223BE20](v17);
  v346 = &v341 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E55FC(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
  v359 = *(v19 - 8);
  v360 = v19;
  MEMORY[0x28223BE20](v19);
  v375 = &v341 - v20;
  v21 = type metadata accessor for WebEmbedRouteModel();
  MEMORY[0x28223BE20](v21 - 8);
  v380 = &v341 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], v9);
  v394 = *(v23 - 8);
  v24 = *(v394 + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v357 = &v341 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v371 = &v341 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v356 = &v341 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v378 = &v341 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v361 = &v341 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v392 = &v341 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v348 = &v341 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v376 = &v341 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v350 = &v341 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v377 = &v341 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v358 = &v341 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v391 = &v341 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v351 = &v341 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v390 = &v341 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v345 = &v341 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v369 = &v341 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v342 = &v341 - v57;
  MEMORY[0x28223BE20](v56);
  v372 = &v341 - v58;
  v59 = sub_219BE8C14();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v341 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_219BE9414();
  v387 = *(v379 - 8);
  v63 = MEMORY[0x28223BE20](v379);
  v65 = &v341 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v373 = &v341 - v66;
  v67 = sub_219BDD944();
  MEMORY[0x28223BE20](v67 - 8);
  v374 = &v341 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TodayRouteModel();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v341 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v74 = &v341 - v73;
  v75 = *(a3 + 8);
  *&v388 = *a3;
  *(&v388 + 1) = v75;
  v76 = *(a3 + 24);
  *&v389 = *(a3 + 16);
  *(&v389 + 1) = v76;
  LODWORD(v393) = *(a3 + 32);
  sub_218F20C7C(v395, &v341 - v73, type metadata accessor for TodayRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v209 = *v74;
        v210 = *(v74 + 1);
        v211 = *(v74 + 2);
        v212 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        *&v404 = v209;
        *(&v404 + 1) = v210;
        *&v405 = v212;
        *(&v405 + 1) = MEMORY[0x277D84F90];
        LOBYTE(v406) = 1;
        *(&v406 + 1) = v397;
        DWORD1(v406) = *(&v397 + 3);
        *(&v406 + 1) = v211;
        v213 = v388;
        v407 = v388;
        v214 = v389;
        v408 = v389;
        v409 = v393;
        v215 = v396;
        v216 = *(v396 + 112);
        v217 = swift_allocObject();
        v218 = v407;
        *(v217 + 48) = v406;
        *(v217 + 64) = v218;
        *(v217 + 80) = v408;
        *(v217 + 96) = v409;
        v219 = v405;
        *(v217 + 16) = v404;
        *(v217 + 32) = v219;
        v391 = v217 | 0x2000000000000006;
        v395 = *(v215 + 64);
        v220 = sub_219BDFA44();
        (*(*(v220 - 8) + 56))(v392, 1, 1, v220);
        sub_218718690(v215 + 72, &v413);
        v412 = 0;
        v410 = 0u;
        v411 = 0u;
        v403 = v216;
        sub_2187B171C(&v410, &v400, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (v401)
        {
          sub_21875F93C(&v400, v402);
          sub_218F20858(v213, *(&v213 + 1), v214, *(&v214 + 1), v393);
          sub_218B5A004(&v404, &v397);
          v221 = v394;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v223 = qword_280ED32D8;
          v222 = qword_280ED32E0;
          v224 = qword_280ED32E8;

          v396 = v222;
          v393 = v224;
          sub_2188202A8(v222);
          __swift_destroy_boxed_opaque_existential_1(v402);
        }

        else
        {
          sub_218F20858(v213, *(&v213 + 1), v214, *(&v214 + 1), v393);
          sub_218B5A004(&v404, &v397);
          sub_2187B1CC0(&v400, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v221 = v394;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v223 = qword_280ED32D8;
          v316 = qword_280ED32E0;
          v317 = qword_280ED32E8;

          v396 = v316;
          v393 = v317;
          sub_2188202A8(v316);
        }

        *&v400 = v391;
        v402[3] = sub_219BDD274();
        v318 = v395;
        v402[0] = v395;
        v319 = v361;
        sub_2189B4E2C(v392, v361);
        sub_2187B171C(&v413, &v397, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v320 = (*(v221 + 80) + 24) & ~*(v221 + 80);
        v321 = (v24 + v320 + 7) & 0xFFFFFFFFFFFFFFF8;
        v322 = (v321 + 47) & 0xFFFFFFFFFFFFFFF8;
        v323 = swift_allocObject();
        *(v323 + 16) = v318;
        sub_2189B4EAC(v319, v323 + v320);
        v324 = v323 + v321;
        v325 = v398;
        *v324 = v397;
        *(v324 + 16) = v325;
        *(v324 + 32) = v399;
        v326 = (v323 + v322);
        v327 = (v323 + ((v322 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v326 = 0;
        v326[1] = 0;
        v328 = v396;
        *v327 = v223;
        v327[1] = v328;
        v327[2] = v393;
        swift_retain_n();

        sub_2188202A8(v328);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v328);
        sub_218B5A060(&v404);
        sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_21874528C(v392, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
        v250 = MEMORY[0x277D84F70];
        v251 = MEMORY[0x277D83D88];
        v252 = v402;
        goto LABEL_83;
      }

      v133 = *v74;
      v134 = v396;
      v135 = *(v396 + 112);
      v136 = swift_allocObject();
      *(v136 + 16) = v133;
      v395 = v136;
      v137 = v136 | 0x7000000000000004;
      v138 = *(v134 + 64);
      v139 = sub_219BDFA44();
      v140 = v377;
      (*(*(v139 - 8) + 56))(v377, 1, 1, v139);
      sub_218718690(v134 + 72, &v404);
      v399 = 0;
      v397 = 0u;
      v398 = 0u;
      v402[0] = v135;
      sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v393 = v133;
      if (*(&v411 + 1))
      {
        sub_21875F93C(&v410, &v413);
        v141 = qword_280ED32D0;

        if (v141 != -1)
        {
          swift_once();
        }

        v143 = qword_280ED32D8;
        v142 = qword_280ED32E0;
        v144 = qword_280ED32E8;

        v396 = v142;
        sub_2188202A8(v142);
        __swift_destroy_boxed_opaque_existential_1(&v413);
      }

      else
      {

        sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v143 = qword_280ED32D8;
        v293 = qword_280ED32E0;
        v144 = qword_280ED32E8;

        v396 = v293;
        sub_2188202A8(v293);
      }

      *&v400 = v137;
      *(&v411 + 1) = sub_219BDD274();
      *&v410 = v138;
      v294 = v350;
      sub_2189B4E2C(v140, v350);
      sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v295 = v138;
      v296 = (*(v394 + 80) + 24) & ~*(v394 + 80);
      v297 = (v24 + v296 + 7) & 0xFFFFFFFFFFFFFFF8;
      v298 = (v297 + 47) & 0xFFFFFFFFFFFFFFF8;
      v299 = swift_allocObject();
      *(v299 + 16) = v295;
      sub_2189B4EAC(v294, v299 + v296);
      v300 = v299 + v297;
      v301 = v414;
      *v300 = v413;
      *(v300 + 16) = v301;
      *(v300 + 32) = v415;
      v302 = (v299 + v298);
      v303 = (v299 + ((v298 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v302 = 0;
      v302[1] = 0;
      v304 = v396;
      *v303 = v143;
      v303[1] = v304;
      v303[2] = v144;
      swift_retain_n();

      sub_2188202A8(v304);
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v304);

      sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_21874528C(v377, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          v188 = v396;
          v189 = *(v396 + 112);
          v190 = *(v396 + 64);
          v191 = sub_219BDFA44();
          v192 = v376;
          (*(*(v191 - 8) + 56))(v376, 1, 1, v191);
          sub_218718690(v188 + 72, &v404);
          v399 = 0;
          v397 = 0u;
          v398 = 0u;
          v402[0] = v189;
          sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v193 = v394;
          if (*(&v411 + 1))
          {
            sub_21875F93C(&v410, &v413);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v195 = qword_280ED32D8;
            v194 = qword_280ED32E0;
            v196 = qword_280ED32E8;

            v396 = v194;
            sub_2188202A8(v194);
            __swift_destroy_boxed_opaque_existential_1(&v413);
          }

          else
          {
            sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v195 = qword_280ED32D8;
            v279 = qword_280ED32E0;
            v196 = qword_280ED32E8;

            v396 = v279;
            sub_2188202A8(v279);
          }

          *&v400 = 0xF000000000000030;
          *(&v411 + 1) = sub_219BDD274();
          *&v410 = v190;
          v280 = v190;
          v281 = v348;
          sub_2189B4E2C(v192, v348);
          sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v282 = (*(v193 + 80) + 24) & ~*(v193 + 80);
          v283 = (v24 + v282 + 7) & 0xFFFFFFFFFFFFFFF8;
          v284 = (v283 + 47) & 0xFFFFFFFFFFFFFFF8;
          v285 = swift_allocObject();
          *(v285 + 16) = v280;
          sub_2189B4EAC(v281, v285 + v282);
          v286 = v285 + v283;
          v287 = v414;
          *v286 = v413;
          *(v286 + 16) = v287;
          *(v286 + 32) = v415;
          v288 = (v285 + v284);
          v289 = (v285 + ((v284 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v288 = 0;
          v288[1] = 0;
          v290 = v396;
          *v289 = v195;
          v289[1] = v290;
          v289[2] = v196;
          swift_retain_n();

          sub_2188202A8(v290);
          sub_2186CF94C();
          sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
          sub_219BEB464();

          sub_2187FABEC(v290);
          sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_21874528C(v376, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
          return sub_21874528C(&v410, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
        }

        v90 = v383;
        sub_218F2086C(v74, v383, type metadata accessor for CustomItemRouteModel);
        v91 = *(v396 + 112);
        v92 = sub_219BDB954();
        v93 = swift_allocBox();
        (*(*(v92 - 8) + 16))(v94, v90, v92);
        v95 = v93 | 0x6000000000000000;
        v96 = sub_219BDFA44();
        v97 = v371;
        (*(*(v96 - 8) + 56))(v371, 1, 1, v96);
        *&v406 = 0;
        v404 = 0u;
        v405 = 0u;
        v399 = 0;
        v397 = 0u;
        v398 = 0u;
        v402[0] = v91;
        sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v396 = v93;
        if (*(&v411 + 1))
        {
          sub_21875F93C(&v410, &v413);
          v98 = v394;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v100 = qword_280ED32D8;
          v99 = qword_280ED32E0;
          v101 = qword_280ED32E8;

          v395 = v99;
          sub_2188202A8(v99);
          __swift_destroy_boxed_opaque_existential_1(&v413);
        }

        else
        {
          sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v98 = v394;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v100 = qword_280ED32D8;
          v253 = qword_280ED32E0;
          v101 = qword_280ED32E8;

          v395 = v253;
          sub_2188202A8(v253);
        }

        *&v400 = v95;
        v410 = 0u;
        v411 = 0u;
        v254 = v357;
        sub_2189B4E2C(v97, v357);
        sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v255 = (*(v98 + 80) + 24) & ~*(v98 + 80);
        v256 = (v24 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
        v257 = (v256 + 47) & 0xFFFFFFFFFFFFFFF8;
        v258 = swift_allocObject();
        *(v258 + 16) = 0;
        sub_2189B4EAC(v254, v258 + v255);
        v259 = v258 + v256;
        v260 = v414;
        *v259 = v413;
        *(v259 + 16) = v260;
        *(v259 + 32) = v415;
        v261 = (v258 + v257);
        v262 = (v258 + ((v257 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v261 = 0;
        v261[1] = 0;
        v263 = v395;
        *v262 = v100;
        v262[1] = v263;
        v262[2] = v101;

        sub_2188202A8(v263);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v263);
        sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_21874528C(v97, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
        v291 = type metadata accessor for CustomItemRouteModel;
        v292 = v383;
LABEL_82:
        sub_218F20C1C(v292, v291);
        sub_21874528C(&v410, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
      }

      v158 = v382;
      sub_218F2086C(v74, v382, type metadata accessor for PuzzleModel);
      v159 = v396;
      v160 = *(v396 + 112);
      v161 = swift_allocBox();
      sub_218F20C7C(v158, v162, type metadata accessor for PuzzleModel);
      v163 = v161 | 0xE000000000000006;
      v164 = *(v159 + 64);
      v165 = sub_219BDFA44();
      v166 = v378;
      (*(*(v165 - 8) + 56))(v378, 1, 1, v165);
      sub_218718690(v159 + 72, &v404);
      v399 = 0;
      v397 = 0u;
      v398 = 0u;
      v402[0] = v160;
      sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v395 = v161;
      if (*(&v411 + 1))
      {
        sub_21875F93C(&v410, &v413);
        v167 = v394;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v169 = qword_280ED32D8;
        v168 = qword_280ED32E0;
        v170 = qword_280ED32E8;

        v396 = v168;
        sub_2188202A8(v168);
        __swift_destroy_boxed_opaque_existential_1(&v413);
      }

      else
      {
        sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v167 = v394;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v169 = qword_280ED32D8;
        v238 = qword_280ED32E0;
        v170 = qword_280ED32E8;

        v396 = v238;
        sub_2188202A8(v238);
      }

      *&v400 = v163;
      *(&v411 + 1) = sub_219BDD274();
      *&v410 = v164;
      v239 = v164;
      v240 = v356;
      sub_2189B4E2C(v166, v356);
      sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v241 = (*(v167 + 80) + 24) & ~*(v167 + 80);
      v242 = (v24 + v241 + 7) & 0xFFFFFFFFFFFFFFF8;
      v243 = (v242 + 47) & 0xFFFFFFFFFFFFFFF8;
      v244 = swift_allocObject();
      *(v244 + 16) = v239;
      sub_2189B4EAC(v240, v244 + v241);
      v245 = v244 + v242;
      v246 = v414;
      *v245 = v413;
      *(v245 + 16) = v246;
      *(v245 + 32) = v415;
      v247 = (v244 + v243);
      v248 = (v244 + ((v243 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v247 = 0;
      v247[1] = 0;
      v249 = v396;
      *v248 = v169;
      v248[1] = v249;
      v248[2] = v170;
      swift_retain_n();

      sub_2188202A8(v249);
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v249);
      sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_21874528C(v378, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
      sub_218F20C1C(v382, type metadata accessor for PuzzleModel);
    }

    sub_21874528C(&v410, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *&v397 = *v74;
        v78 = v397;
        (*(v343 + 104))(v346, *MEMORY[0x277D33A68], v344);
        (*(v347 + 104))(v352, *MEMORY[0x277D33570], v349);
        (*(v353 + 104))(v355, *MEMORY[0x277D33270], v354);
        v404 = 0u;
        v405 = 0u;
        sub_218731D50();
        v395 = v78;
        swift_unknownObjectRetain();
        v79 = v375;
        sub_219BF2564();
        swift_unknownObjectRetain();
        v80 = v363;
        sub_219BDEDE4();
        v81 = v359;
        v82 = v365;
        v83 = v79;
        v84 = v360;
        (*(v359 + 16))(v365, v83, v360);
        v85 = v367;
        v86 = v370;
        (*(v367 + 104))(v82, *MEMORY[0x277D2FF00], v370);
        v87 = sub_219BDB954();
        v88 = v368;
        (*(*(v87 - 8) + 56))(v368, 1, 1, v87);
        sub_219BDD904();
        sub_21874528C(v88, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186E55FC);
        (*(v85 + 8))(v82, v86);
        (*(v364 + 8))(v80, v366);
        swift_storeEnumTagMultiPayload();
        v404 = v388;
        v405 = v389;
        LOBYTE(v406) = v393;
        sub_218F19BE4(v72, v381, &v404);
        swift_unknownObjectRelease();
        sub_218F20C1C(v72, type metadata accessor for TodayRouteModel);
        return (*(v81 + 8))(v375, v84);
      }

      else
      {
        (*(v385 + 32))(v384, v74, v386);
        v171 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        v172 = v396;
        v173 = *(v396 + 112);
        v174 = sub_219BDD654();
        v175 = swift_allocObject();
        v176 = [v174 identifier];
        v177 = sub_219BF5414();
        v179 = v178;

        swift_unknownObjectRelease();
        *(v175 + 16) = v177;
        *(v175 + 24) = v179;
        *(v175 + 32) = v171;
        *(v175 + 40) = 0;
        *(v175 + 48) = 1;
        v180 = v388;
        *(v175 + 56) = 0;
        *(v175 + 64) = v180;
        v181 = v389;
        *(v175 + 72) = *(&v180 + 1);
        *(v175 + 80) = v181;
        *(v175 + 96) = v393;
        v392 = (v175 | 0x2000000000000006);
        v182 = *(v172 + 64);
        v183 = sub_219BDFA44();
        (*(*(v183 - 8) + 56))(v391, 1, 1, v183);
        *&v406 = 0;
        v404 = 0u;
        v405 = 0u;
        v399 = 0;
        v397 = 0u;
        v398 = 0u;
        v402[0] = v173;
        sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v395 = v171;
        if (*(&v411 + 1))
        {
          sub_21875F93C(&v410, &v413);
          v184 = v171;
          sub_218F20858(v180, *(&v180 + 1), v181, *(&v181 + 1), v393);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v186 = qword_280ED32D8;
          v185 = qword_280ED32E0;
          v187 = qword_280ED32E8;

          v396 = v185;
          v393 = v187;
          sub_2188202A8(v185);
          __swift_destroy_boxed_opaque_existential_1(&v413);
        }

        else
        {
          v264 = v171;
          sub_218F20858(v180, *(&v180 + 1), v181, *(&v181 + 1), v393);
          sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v186 = qword_280ED32D8;
          v265 = qword_280ED32E0;
          v266 = qword_280ED32E8;

          v396 = v265;
          v393 = v266;
          sub_2188202A8(v265);
        }

        v267 = v391;
        *&v400 = v392;
        *(&v411 + 1) = sub_219BDD274();
        *&v410 = v182;
        v268 = v358;
        sub_2189B4E2C(v267, v358);
        sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v269 = v182;
        v270 = (*(v394 + 80) + 24) & ~*(v394 + 80);
        v271 = (v24 + v270 + 7) & 0xFFFFFFFFFFFFFFF8;
        v272 = (v271 + 47) & 0xFFFFFFFFFFFFFFF8;
        v273 = swift_allocObject();
        *(v273 + 16) = v269;
        sub_2189B4EAC(v268, v273 + v270);
        v274 = v273 + v271;
        v275 = v414;
        *v274 = v413;
        *(v274 + 16) = v275;
        *(v274 + 32) = v415;
        v276 = (v273 + v272);
        v277 = (v273 + ((v272 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v276 = 0;
        v276[1] = 0;
        v278 = v396;
        *v277 = v186;
        v277[1] = v278;
        v277[2] = v393;
        swift_retain_n();

        sub_2188202A8(v278);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v278);

        sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_21874528C(v391, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
        (*(v385 + 8))(v384, v386);
        sub_21874528C(&v410, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
      }
    }

    v145 = *v74;
    v146 = *(v74 + 1);
    v148 = *(v74 + 2);
    v147 = *(v74 + 3);
    v149 = *(v74 + 4);
    v150 = v74[40];
    v151 = v396;
    *&v388 = *(v396 + 112);
    v152 = swift_allocObject();
    LOBYTE(v403) = v150;
    *(v152 + 16) = v145;
    *(v152 + 24) = v146;
    *(v152 + 32) = v148;
    *(v152 + 40) = v147;
    *(v152 + 48) = v149;
    *(v152 + 56) = v150;
    *(v152 + 63) = 0;
    *(v152 + 61) = 0;
    *(v152 + 57) = 0;
    *(v152 + 64) = MEMORY[0x277D84F90];
    v387 = v152 | 0x5000000000000000;
    *(&v388 + 1) = *(v151 + 64);
    v153 = sub_219BDFA44();
    (*(*(v153 - 8) + 56))(v390, 1, 1, v153);
    sub_218718690(v151 + 72, &v404);
    v399 = 0;
    v397 = 0u;
    v398 = 0u;
    v402[0] = v388;
    sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v395 = v145;
    v392 = v148;
    v393 = v146;
    v391 = v147;
    *(&v389 + 1) = v149;
    LODWORD(v389) = v150;
    if (*(&v411 + 1))
    {
      sub_21875F93C(&v410, &v413);
      sub_21896FE24(v145, v146, v148, v147, v149, v150);
      v154 = v394;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v156 = qword_280ED32D8;
      v155 = qword_280ED32E0;
      v157 = qword_280ED32E8;

      v396 = v155;
      *&v388 = v157;
      sub_2188202A8(v155);
      __swift_destroy_boxed_opaque_existential_1(&v413);
    }

    else
    {
      sub_21896FE24(v145, v146, v148, v147, v149, v150);
      sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v154 = v394;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v156 = qword_280ED32D8;
      v225 = qword_280ED32E0;
      v226 = qword_280ED32E8;

      v396 = v225;
      *&v388 = v226;
      sub_2188202A8(v225);
    }

    *&v400 = v387;
    *(&v411 + 1) = sub_219BDD274();
    v227 = *(&v388 + 1);
    *&v410 = *(&v388 + 1);
    v228 = v351;
    sub_2189B4E2C(v390, v351);
    sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v229 = (*(v154 + 80) + 24) & ~*(v154 + 80);
    v230 = (v24 + v229 + 7) & 0xFFFFFFFFFFFFFFF8;
    v231 = (v230 + 47) & 0xFFFFFFFFFFFFFFF8;
    v232 = swift_allocObject();
    *(v232 + 16) = v227;
    sub_2189B4EAC(v228, v232 + v229);
    v233 = v232 + v230;
    v234 = v414;
    *v233 = v413;
    *(v233 + 16) = v234;
    *(v233 + 32) = v415;
    v235 = (v232 + v231);
    v236 = (v232 + ((v231 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v235 = 0;
    v235[1] = 0;
    v237 = v396;
    *v236 = v156;
    v236[1] = v237;
    v236[2] = v388;
    swift_retain_n();

    sub_2188202A8(v237);
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v237);
    sub_21896FDCC(v395, v393, v392, v391, *(&v389 + 1), v389);
    sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_21874528C(v390, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
    v250 = MEMORY[0x277D84F70];
    v251 = MEMORY[0x277D83D88];
    v252 = &v410;
LABEL_83:
    sub_21874528C(v252, &qword_280E8B4F0, v250 + 8, v251, sub_2186F8408);
  }

  if (EnumCaseMultiPayload)
  {
    v197 = v380;
    sub_218F2086C(v74, v380, type metadata accessor for WebEmbedRouteModel);
    v198 = *(v396 + 112);
    v199 = sub_219BDB954();
    v200 = swift_allocBox();
    (*(*(v199 - 8) + 16))(v201, v197, v199);
    v396 = v200;
    v202 = v200 | 0x6000000000000000;
    v203 = sub_219BDFA44();
    v204 = v369;
    (*(*(v203 - 8) + 56))(v369, 1, 1, v203);
    *&v406 = 0;
    v404 = 0u;
    v405 = 0u;
    v399 = 0;
    v397 = 0u;
    v398 = 0u;
    v402[0] = v198;
    sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v411 + 1))
    {
      sub_21875F93C(&v410, &v413);
      v205 = v394;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v207 = qword_280ED32D8;
      v206 = qword_280ED32E0;
      v208 = qword_280ED32E8;

      v395 = v206;
      sub_2188202A8(v206);
      __swift_destroy_boxed_opaque_existential_1(&v413);
    }

    else
    {
      sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v205 = v394;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v207 = qword_280ED32D8;
      v305 = qword_280ED32E0;
      v208 = qword_280ED32E8;

      v395 = v305;
      sub_2188202A8(v305);
    }

    *&v400 = v202;
    v410 = 0u;
    v411 = 0u;
    v306 = v345;
    sub_2189B4E2C(v204, v345);
    sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v307 = (*(v205 + 80) + 24) & ~*(v205 + 80);
    v308 = (v24 + v307 + 7) & 0xFFFFFFFFFFFFFFF8;
    v309 = (v308 + 47) & 0xFFFFFFFFFFFFFFF8;
    v310 = swift_allocObject();
    *(v310 + 16) = 0;
    sub_2189B4EAC(v306, v310 + v307);
    v311 = v310 + v308;
    v312 = v414;
    *v311 = v413;
    *(v311 + 16) = v312;
    *(v311 + 32) = v415;
    v313 = (v310 + v309);
    v314 = (v310 + ((v309 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v313 = 0;
    v313[1] = 0;
    v315 = v395;
    *v314 = v207;
    v314[1] = v315;
    v314[2] = v208;

    sub_2188202A8(v315);
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v315);
    sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_21874528C(v204, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
    v291 = type metadata accessor for WebEmbedRouteModel;
    v292 = v380;
    goto LABEL_82;
  }

  v102 = v396;
  v103 = v74;
  v104 = v374;
  sub_218F2086C(v103, v374, MEMORY[0x277D2FB40]);
  (*(v60 + 16))(v62, v381, v59);
  v105 = v373;
  sub_219BE9424();
  v106 = v387;
  v107 = v379;
  (*(v387 + 104))(v65, *MEMORY[0x277D6E598], v379);
  sub_2186F7DF8(&unk_280EE44E0, MEMORY[0x277D6E5A8]);
  v108 = sub_219BF53A4();
  v110 = *(v106 + 8);
  v109 = v106 + 8;
  v395 = v110;
  (v110)(v65, v107);
  if ((v108 & 1) == 0)
  {
    v111 = sub_219BE8BF4();
    if (v111)
    {
      v112 = v111;
      sub_218C1A2CC(&v404);
      v113 = v404;
      if ((~v404 & 0xF000000000000007) != 0)
      {
        sub_219BE6474();

        (v395)(v105, v379);
        sub_218F20C1C(v104, MEMORY[0x277D2FB40]);
        return sub_218970170(v113);
      }
    }
  }

  v387 = v109;
  v114 = v102;
  v115 = *(v102 + 112);
  sub_2187B2C48();
  v117 = v116;
  v118 = swift_allocBox();
  v120 = v119;
  v121 = *(v117 + 48);
  sub_2187B2DA0();
  v123 = *(v122 + 48);
  sub_218F20C7C(v104, v120, MEMORY[0x277D2FB40]);
  v124 = MEMORY[0x277D84F90];
  *(v120 + v123) = MEMORY[0x277D84F90];
  *(v120 + v121) = v124;
  v393 = v118;
  v125 = v118 | 2;
  v126 = *(v114 + 64);
  v127 = sub_219BDFA44();
  v128 = v372;
  (*(*(v127 - 8) + 56))(v372, 1, 1, v127);
  sub_218718690(v114 + 72, &v404);
  v399 = 0;
  v397 = 0u;
  v398 = 0u;
  v402[0] = v115;
  sub_2187B171C(&v397, &v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v411 + 1))
  {
    sub_21875F93C(&v410, &v413);
    *&v410 = v125;
    v129 = sub_2194DA78C(&v413);
    v396 = v130;
    v132 = v131;
    __swift_destroy_boxed_opaque_existential_1(&v413);
  }

  else
  {
    sub_2187B1CC0(&v410, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v129 = qword_280ED32D8;
    v329 = qword_280ED32E0;
    v330 = qword_280ED32E8;

    v396 = v329;
    v132 = v330;
    sub_2188202A8(v329);
  }

  *&v400 = v125;
  *(&v411 + 1) = sub_219BDD274();
  *&v410 = v126;
  v331 = v342;
  sub_2189B4E2C(v128, v342);
  sub_2187B171C(&v404, &v413, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v332 = (*(v394 + 80) + 24) & ~*(v394 + 80);
  v333 = (v24 + v332 + 7) & 0xFFFFFFFFFFFFFFF8;
  v334 = (v333 + 47) & 0xFFFFFFFFFFFFFFF8;
  v335 = swift_allocObject();
  *(v335 + 16) = v126;
  sub_2189B4EAC(v331, v335 + v332);
  v336 = v335 + v333;
  v337 = v414;
  *v336 = v413;
  *(v336 + 16) = v337;
  *(v336 + 32) = v415;
  v338 = (v335 + v334);
  v339 = (v335 + ((v334 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v338 = 0;
  v338[1] = 0;
  v340 = v396;
  *v339 = v129;
  v339[1] = v340;
  v339[2] = v132;
  swift_retain_n();

  sub_2188202A8(v340);
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v340);
  sub_2187B1CC0(&v397, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(&v404, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_21874528C(v372, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
  (v395)(v373, v379);
  sub_218F20C1C(v374, MEMORY[0x277D2FB40]);
  sub_21874528C(&v410, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
}

uint64_t sub_218F1DEA0(uint64_t a1)
{
  v220 = a1;
  v207 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v207);
  v211 = &v190 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDD664();
  v216 = *(v2 - 1);
  v217 = v2;
  MEMORY[0x28223BE20](v2);
  v215 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_219BDE294();
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v204 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2186E55FC(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v190 - v7;
  v203 = sub_219BDEE04();
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v199 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896F9B8();
  v194 = v9;
  MEMORY[0x28223BE20](v9);
  v193 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsActivity2.Article(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v195 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v196 = &v190 - v14;
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], v5);
  v218 = *(v15 - 8);
  v16 = *(v218 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v191 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v198 = &v190 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v190 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v209 = &v190 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v190 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v205 = &v190 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v200 = &v190 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v210 = &v190 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v190 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v212 = &v190 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v197 = &v190 - v40;
  MEMORY[0x28223BE20](v39);
  v214 = &v190 - v41;
  v42 = sub_219BDD944();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v192 = &v190 - v47;
  MEMORY[0x28223BE20](v46);
  v213 = &v190 - v48;
  v49 = type metadata accessor for TodayRouteModel();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v190 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v190 - v53;
  sub_218F20C7C(v220, &v190 - v53, type metadata accessor for TodayRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          swift_unknownObjectRetain();
          v56 = v199;
          sub_219BDEDE4();
          v57 = sub_219BDB954();
          v58 = v202;
          (*(*(v57 - 8) + 56))(v202, 1, 1, v57);
          v59 = v206;
          v60 = v204;
          v61 = v208;
          (*(v206 + 104))(v204, *MEMORY[0x277D2FF08], v208);
          sub_219BDD904();
          (*(v59 + 8))(v60, v61);
          sub_21874528C(v58, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186E55FC);
          (*(v201 + 8))(v56, v203);
          swift_storeEnumTagMultiPayload();
          v62 = sub_218F1DEA0(v52);
          swift_unknownObjectRelease();
          sub_218F20C1C(v52, type metadata accessor for TodayRouteModel);
        }

        else
        {
          (*(v216 + 32))(v215, v54, v217);
          v142 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
          v143 = v219;
          v144 = *(v219 + 112);
          v145 = sub_219BDD654();
          v146 = swift_allocObject();
          v147 = [v145 identifier];
          v148 = sub_219BF5414();
          v150 = v149;

          swift_unknownObjectRelease();
          *(v146 + 16) = v148;
          *(v146 + 24) = v150;
          *(v146 + 32) = v142;
          *(v146 + 40) = 0;
          *(v146 + 48) = 1;
          *(v146 + 56) = 0u;
          *(v146 + 72) = 0u;
          *(v146 + 88) = 0;
          *(v146 + 96) = -1;
          v151 = *(v143 + 64);
          v152 = sub_219BDFA44();
          v153 = v210;
          (*(*(v152 - 8) + 56))(v210, 1, 1, v152);
          *&v231 = 0;
          v229 = 0u;
          v230 = 0u;
          v221[0] = v144;
          sub_219BDC8D4();
          v154 = v142;
          sub_219BDC8B4();
          if (qword_280EE9210 != -1)
          {
            swift_once();
          }

          sub_219BDC8C4();

          v226 = v146 | 0x2000000000000006;
          v228 = sub_219BDD274();
          v227[0] = v151;
          v155 = v200;
          sub_2189B4E2C(v153, v200);
          sub_2187B171C(&v229, &v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v156 = (*(v218 + 80) + 24) & ~*(v218 + 80);
          v157 = (v16 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
          v158 = swift_allocObject();
          *(v158 + 16) = v151;
          sub_2189B4EAC(v155, v158 + v156);
          v159 = v158 + v157;
          v160 = v224;
          *v159 = v223;
          *(v159 + 16) = v160;
          *(v159 + 32) = v225;
          v161 = (v158 + ((v157 + 47) & 0xFFFFFFFFFFFFFFF8));
          *v161 = 0;
          v161[1] = 0;
          sub_2186CF94C();
          sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
          swift_retain_n();
          v62 = sub_219BEB454();

          sub_2187B1CC0(&v229, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_21874528C(v153, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
          (*(v216 + 8))(v215, v217);
          sub_21874528C(v227, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
        }

        return v62;
      }

      v109 = *(v54 + 1);
      v220 = *v54;
      v108 = v220;
      v211 = v109;
      v110 = *(v54 + 2);
      v111 = *(v54 + 3);
      v112 = *(v54 + 4);
      v113 = v54[40];
      v114 = v219;
      v216 = *(v219 + 112);
      v217 = v110;
      v115 = swift_allocObject();
      LOBYTE(v222) = v113;
      *(v115 + 16) = v108;
      *(v115 + 24) = v109;
      v116 = v217;
      *(v115 + 32) = v217;
      *(v115 + 40) = v111;
      v117 = v111;
      *(v115 + 48) = v112;
      *(v115 + 56) = v113;
      *(v115 + 63) = 0;
      *(v115 + 61) = 0;
      *(v115 + 57) = 0;
      *(v115 + 64) = MEMORY[0x277D84F90];
      v213 = v115 | 0x5000000000000000;
      v214 = *(v114 + 64);
      v118 = sub_219BDFA44();
      (*(*(v118 - 8) + 56))(v212, 1, 1, v118);
      sub_218718690(v114 + 72, &v229);
      v221[0] = v216;
      sub_219BDC8D4();
      v119 = v211;
      v215 = v117;
      v216 = v112;
      LODWORD(v219) = v113;
      sub_21896FE24(v220, v211, v116, v117, v112, v113);
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v226 = v213;
      v228 = sub_219BDD274();
      v120 = v214;
      v227[0] = v214;
      v121 = v212;
      sub_2189B4E2C(v212, v36);
      sub_2187B171C(&v229, &v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v122 = (*(v218 + 80) + 24) & ~*(v218 + 80);
      v123 = (v16 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
      v124 = swift_allocObject();
      *(v124 + 16) = v120;
      sub_2189B4EAC(v36, v124 + v122);
      v125 = v124 + v123;
      v126 = v224;
      *v125 = v223;
      *(v125 + 16) = v126;
      *(v125 + 32) = v225;
      v127 = (v124 + ((v123 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v127 = 0;
      v127[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v62 = sub_219BEB454();

      sub_21896FDCC(v220, v119, v217, v215, v216, v219);
      sub_2187B1CC0(&v229, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v105 = MEMORY[0x277D2DED0];
      v106 = MEMORY[0x277D83D88];
      v107 = v121;
      goto LABEL_24;
    }

    if (!EnumCaseMultiPayload)
    {
      v65 = v54;
      v66 = v213;
      sub_218F2086C(v65, v213, MEMORY[0x277D2FB40]);
      v67 = v219;
      v68 = *(v219 + 112);
      sub_2187B2C48();
      v70 = v69;
      v220 = swift_allocBox();
      v72 = v71;
      v73 = *(v70 + 48);
      sub_2187B2DA0();
      v217 = v74;
      v75 = v74[12];
      sub_218F20C7C(v66, v72, MEMORY[0x277D2FB40]);
      v76 = MEMORY[0x277D84F90];
      *(v72 + v75) = MEMORY[0x277D84F90];
      *(v72 + v73) = v76;
      v77 = *(v67 + 64);
      v78 = sub_219BDFA44();
      (*(*(v78 - 8) + 56))(v214, 1, 1, v78);
      sub_218718690(v67 + 72, &v229);
      v221[0] = v68;
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v79 = sub_219BDC8C4();

      if (v79)
      {
        v80 = v196;
        sub_218F20C7C(v72, v196, type metadata accessor for NewsActivity2.Article);
        v81 = v195;
        sub_218F20C7C(v80, v195, type metadata accessor for NewsActivity2.Article);

        sub_218F2086C(v81, v45, MEMORY[0x277D2FB40]);
        sub_218F20C1C(v80, type metadata accessor for NewsActivity2.Article);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v82 = swift_projectBox();
          v83 = v193;
          sub_218F20C7C(v82, v193, sub_21896F9B8);
          v84 = v192;
          sub_218F2086C(v83 + *(v194 + 48), v192, MEMORY[0x277D2FB40]);
          __swift_destroy_boxed_opaque_existential_1(v83);

          sub_2186C66AC();
          v85 = sub_219BF6F44();
          sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_219C09BA0;
          v87 = sub_219BDD8C4();
          v89 = v88;
          *(v86 + 56) = MEMORY[0x277D837D0];
          *(v86 + 64) = sub_2186FC3BC();
          *(v86 + 32) = v87;
          *(v86 + 40) = v89;
          sub_219BF6214();
          sub_219BE5314();

          v90 = MEMORY[0x277D2FB40];
          sub_218F20C1C(v84, MEMORY[0x277D2FB40]);
          sub_2187B1CC0(&v229, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_21874528C(v214, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
          sub_218F20C1C(v213, v90);

          return 0;
        }

        sub_218F20C1C(v45, MEMORY[0x277D2FB40]);
      }

      v226 = v220 | 2;
      v228 = sub_219BDD274();
      v227[0] = v77;
      v182 = v214;
      v183 = v197;
      sub_2189B4E2C(v214, v197);
      sub_2187B171C(&v229, &v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v184 = (*(v218 + 80) + 24) & ~*(v218 + 80);
      v185 = (v16 + v184 + 7) & 0xFFFFFFFFFFFFFFF8;
      v186 = swift_allocObject();
      *(v186 + 16) = v77;
      sub_2189B4EAC(v183, v186 + v184);
      v187 = v186 + v185;
      v188 = v224;
      *v187 = v223;
      *(v187 + 16) = v188;
      *(v187 + 32) = v225;
      v189 = (v186 + ((v185 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v189 = 0;
      v189[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v62 = sub_219BEB454();

      sub_2187B1CC0(&v229, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_21874528C(v182, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
      sub_218F20C1C(v213, MEMORY[0x277D2FB40]);
      sub_21874528C(v227, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);

      return v62;
    }

LABEL_16:
    sub_218F20C1C(v54, type metadata accessor for TodayRouteModel);
    return 0;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v91 = *v54;
      v92 = v219;
      v93 = *(v219 + 112);
      v94 = swift_allocObject();
      *(v94 + 16) = v91;
      v95 = v94 | 0x7000000000000004;
      v96 = *(v92 + 64);
      v97 = sub_219BDFA44();
      v98 = v205;
      (*(*(v97 - 8) + 56))(v205, 1, 1, v97);
      sub_218718690(v92 + 72, &v229);
      v221[0] = v93;
      sub_219BDC8D4();

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v226 = v95;
      v228 = sub_219BDD274();
      v227[0] = v96;
      sub_2189B4E2C(v98, v27);
      sub_2187B171C(&v229, &v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v99 = (*(v218 + 80) + 24) & ~*(v218 + 80);
      v100 = (v16 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
      v101 = swift_allocObject();
      *(v101 + 16) = v96;
      sub_2189B4EAC(v27, v101 + v99);
      v102 = v101 + v100;
      v103 = v224;
      *v102 = v223;
      *(v102 + 16) = v103;
      *(v102 + 32) = v225;
      v104 = (v101 + ((v100 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v104 = 0;
      v104[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v62 = sub_219BEB454();

      sub_2187B1CC0(&v229, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v105 = MEMORY[0x277D2DED0];
      v106 = MEMORY[0x277D83D88];
      v107 = v98;
LABEL_24:
      sub_21874528C(v107, &qword_280EE8610, v105, v106, sub_2186E55FC);
      sub_21874528C(v227, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
LABEL_43:

      return v62;
    }

    v162 = *(v54 + 2);
    if (v162 > 5)
    {
      v163 = v198;
      if (v162 > 8)
      {
        if (v162 != 9 && v162 != 10 && v162 != 11)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      if (v162 == 6 || v162 == 7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v163 = v198;
      if (v162 > 2)
      {
        goto LABEL_50;
      }

      if (v162)
      {
        if (v162 != 1 && v162 != 2)
        {
LABEL_52:
          result = sub_219BF7514();
          __break(1u);
          return result;
        }

LABEL_50:

        return 0;
      }
    }

    v164 = *v54;
    v165 = *(v54 + 1);
    v166 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    *&v229 = v164;
    *(&v229 + 1) = v165;
    *&v230 = v166;
    *(&v230 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v231) = 1;
    *(&v231 + 1) = v223;
    DWORD1(v231) = *(&v223 + 3);
    *(&v231 + 1) = v162;
    v232 = 0u;
    v233 = 0u;
    v234 = -1;
    v167 = v219;
    v168 = *(v219 + 112);
    v169 = swift_allocObject();
    v170 = v232;
    *(v169 + 48) = v231;
    *(v169 + 64) = v170;
    *(v169 + 80) = v233;
    *(v169 + 96) = v234;
    v171 = v230;
    *(v169 + 16) = v229;
    *(v169 + 32) = v171;
    v172 = v169 | 0x2000000000000006;
    v173 = *(v167 + 64);
    v174 = sub_219BDFA44();
    (*(*(v174 - 8) + 56))(v163, 1, 1, v174);
    sub_218718690(v167 + 72, v227);
    v226 = v168;
    sub_219BDC8D4();
    sub_218B5A004(&v229, &v223);
    sub_219BDC8B4();
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    sub_219BDC8C4();

    v222 = v172;
    v221[3] = sub_219BDD274();
    v221[0] = v173;
    v175 = v191;
    sub_2189B4E2C(v163, v191);
    sub_2187B171C(v227, &v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v176 = (*(v218 + 80) + 24) & ~*(v218 + 80);
    v177 = (v16 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
    v178 = swift_allocObject();
    *(v178 + 16) = v173;
    sub_2189B4EAC(v175, v178 + v176);
    v179 = v178 + v177;
    v180 = v224;
    *v179 = v223;
    *(v179 + 16) = v180;
    *(v179 + 32) = v225;
    v181 = (v178 + ((v177 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v181 = 0;
    v181[1] = 0;
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    swift_retain_n();
    v62 = sub_219BEB454();

    sub_21874528C(v221, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);

    sub_218B5A060(&v229);
    sub_2187B1CC0(v227, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_21874528C(v163, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
    return v62;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v128 = v211;
    sub_218F2086C(v54, v211, type metadata accessor for PuzzleModel);
    v129 = v219;
    v130 = *(v219 + 112);
    v131 = swift_allocBox();
    sub_218F20C7C(v128, v132, type metadata accessor for PuzzleModel);
    v133 = *(v129 + 64);
    v134 = sub_219BDFA44();
    v135 = v209;
    (*(*(v134 - 8) + 56))(v209, 1, 1, v134);
    sub_218718690(v129 + 72, &v229);
    v221[0] = v130;
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    sub_219BDC8C4();

    v226 = v131 | 0xE000000000000006;
    v228 = sub_219BDD274();
    v227[0] = v133;
    sub_2189B4E2C(v135, v22);
    sub_2187B171C(&v229, &v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v136 = (*(v218 + 80) + 24) & ~*(v218 + 80);
    v137 = (v16 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
    v138 = swift_allocObject();
    *(v138 + 16) = v133;
    sub_2189B4EAC(v22, v138 + v136);
    v139 = v138 + v137;
    v140 = v224;
    *v139 = v223;
    *(v139 + 16) = v140;
    *(v139 + 32) = v225;
    v141 = (v138 + ((v137 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v141 = 0;
    v141[1] = 0;
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    swift_retain_n();
    v62 = sub_219BEB454();

    sub_2187B1CC0(&v229, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_21874528C(v135, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
    sub_218F20C1C(v128, type metadata accessor for PuzzleModel);
    sub_21874528C(v227, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
    goto LABEL_43;
  }

  v63 = EnumCaseMultiPayload;
  result = 0;
  if (v63 == 8)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_218F20180(uint64_t a1)
{
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(v1 + 112);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = xmmword_219C47490;
  v30 = v11;
  v12 = v11 | 0xD000000000000000;
  v13 = *(v1 + 64);
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_218718690(v1 + 72, v39);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B171C(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    v15 = qword_280ED32D0;

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_2187B1CC0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12;
  v33 = sub_219BDD274();
  *&v32 = v13;
  sub_2189B4E2C(v9, v7);
  sub_2187B171C(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  sub_2189B4EAC(v7, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v16);
  sub_2187B1CC0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_21874528C(v29, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2186E55FC);
  sub_21874528C(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
}

uint64_t sub_218F207F4()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218F20858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_21897010C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_218F2086C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F208D4(void *a1)
{
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_59Tm()
{
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

  return swift_deallocObject();
}

uint64_t sub_218F20B3C(void *a1)
{
  sub_2186E55FC(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);

  return sub_2194DAF24(a1);
}

uint64_t sub_218F20C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F20C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_218F20CEC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_218F20D58(uint64_t a1, id a2)
{
  v5 = sub_219BF2414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_218818F60(0, &qword_280E8B600, sub_218819588);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v17 = a1;
    v10 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
    v11 = v10;
    sub_219BF1FF4();
    v12 = sub_219BF23F4();
    (*(v6 + 8))(v8, v5);
    *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = v12;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218736348(inited + 32, sub_218819588);
    v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v14 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
    v15 = sub_219BF5204();

    a2 = [v13 initWithString:v14 attributes:v15];
  }

  return a2;
}

id sub_218F20FC4(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_219BF1FD4();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF2414();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEEE54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D32460])
  {
    v55 = v9;
    (*(v14 + 96))(v16, v13);
    v18 = *v16;
    sub_219BF2FD4();
    if (v18 > 0.0 && v18 < a2)
    {
      v56 = sub_219BF2FC4();
      v54 = v35;
      sub_218818F60(0, &qword_280E8B600, sub_218819588);
      inited = swift_initStackObject();
      v37 = MEMORY[0x277D740C0];
      *(inited + 16) = xmmword_219C09EC0;
      v38 = *v37;
      *(inited + 32) = *v37;
      v53 = inited + 32;
      v39 = *(*__swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
      v40 = sub_2186C6148(0, &qword_280E8DA80);
      v41 = MEMORY[0x277D740A8];
      *(inited + 40) = v39;
      v42 = *v41;
      *(inited + 64) = v40;
      *(inited + 72) = v42;
      __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
      v43 = v38;
      v44 = v39;
      v45 = v42;
      sub_219BF1FF4();
      v46 = sub_219BF23D4();
      (*(v10 + 8))(v12, v55);
      *(inited + 104) = sub_2186C6148(0, &qword_280E8DB00);
      *(inited + 80) = v46;
      sub_2188195F4(inited);
    }

    else
    {
      sub_219BEEE44();
      v54 = sub_219BF2FC4();
      v53 = v20;
      sub_218818F60(0, &qword_280E8B600, sub_218819588);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_219C09EC0;
      v22 = *MEMORY[0x277D740A8];
      *(v21 + 32) = *MEMORY[0x277D740A8];
      v52 = v21 + 32;
      __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
      v23 = v22;
      sub_219BF1FF4();
      v24 = sub_219BF23E4();
      (*(v10 + 8))(v12, v55);
      v25 = sub_2186C6148(0, &qword_280E8DB00);
      v26 = MEMORY[0x277D740C0];
      *(v21 + 40) = v24;
      v27 = *v26;
      *(v21 + 64) = v25;
      *(v21 + 72) = v27;
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      v28 = v27;
      sub_219BF2C54();
      v29 = sub_219BF1FC4();
      (*(v56 + 8))(v8, v6);
      *(v21 + 104) = sub_2186C6148(0, &qword_280E8DA80);
      *(v21 + 80) = v29;
      sub_2188195F4(v21);
    }

    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v47 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
    v48 = sub_219BF5204();

    v34 = [v30 initWithString:v47 attributes:v48];
  }

  else if (v17 == *MEMORY[0x277D32468])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_218F2172C();
    v34 = v33;
  }

  else
  {
    v49 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v50 = sub_219BF53D4();
    v34 = [v49 initWithString_];

    (*(v14 + 8))(v16, v13);
  }

  return v34;
}

void sub_218F2172C()
{
  v1 = v0;
  v2 = sub_219BF1FD4();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BF2414();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:10.0];
  v9 = sub_219BF53D4();
  v10 = [objc_opt_self() systemImageNamed_];

  if (v10)
  {
    v31 = v2;
    v32 = v8;
    v11 = [v10 imageByApplyingSymbolConfiguration_];

    if (v11)
    {
      v12 = [objc_opt_self() textAttachmentWithImage_];
      v30 = v12;

      sub_2186C6148(0, &qword_27CC13048);
      v13 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
      v29 = v13;
      v14 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v15 = sub_219BF53D4();
      v16 = [v14 initWithString_];
      v28 = v16;

      [v16 insertAttributedString:v13 atIndex:0];
      sub_218818F60(0, &qword_280E8B600, sub_218819588);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09EC0;
      v18 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
      v19 = v18;
      sub_219BF1FF4();
      v20 = sub_219BF23E4();
      (*(v5 + 8))(v7, v33);
      v21 = sub_2186C6148(0, &qword_280E8DB00);
      v22 = MEMORY[0x277D740C0];
      *(inited + 40) = v20;
      v23 = *v22;
      *(inited + 64) = v21;
      *(inited + 72) = v23;
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      v24 = v23;
      sub_219BF2C54();
      v25 = sub_219BF1FC4();
      (*(v34 + 8))(v4, v31);
      *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
      *(inited + 80) = v25;
      sub_2188195F4(inited);
      swift_setDeallocating();
      sub_218819588();
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
      v26 = sub_219BF5204();

      v27 = v28;
      [v27 addAttributes:v26 range:{0, objc_msgSend(v27, sel_length)}];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_218F21C10(double a1)
{
  v2 = v1;
  v4 = sub_219BF1FD4();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = sub_219BF2414();
  v7 = *(v26[0] - 8);
  MEMORY[0x28223BE20](v26[0]);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3274();
  v10 = MEMORY[0x21CECA000](a1);
  v26[1] = v11;
  v26[2] = v10;
  sub_218818F60(0, &qword_280E8B600, sub_218819588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  v14 = v13;
  sub_219BF1FF4();
  v15 = sub_219BF23D4();
  (*(v7 + 8))(v9, v26[0]);
  v16 = sub_2186C6148(0, &qword_280E8DB00);
  v17 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v18 = *v17;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v19 = v18;
  sub_219BF2C54();
  v20 = sub_219BF1FC4();
  (*(v27 + 8))(v6, v28);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v20;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
  v23 = sub_219BF5204();

  v24 = [v21 initWithString:v22 attributes:v23];

  return v24;
}

id sub_218F21F88(id result)
{
  if (result)
  {
    v2 = sub_219BF5AD4();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      sub_218818F60(0, &qword_280E8B5B0, sub_2186C66F8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C09BA0;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_2186FC3BC();
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      sub_219BF5454();

      sub_218818F60(0, &qword_280E8B600, sub_218819588);
      inited = swift_initStackObject();
      v10 = MEMORY[0x277D740C0];
      *(inited + 16) = xmmword_219C09EC0;
      v11 = *v10;
      *(inited + 32) = *v10;
      v12 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
      v13 = sub_2186C6148(0, &qword_280E8DA80);
      *(inited + 40) = v12;
      v14 = *MEMORY[0x277D740A8];
      *(inited + 64) = v13;
      *(inited + 72) = v14;
      v15 = v11;
      v16 = v12;
      v17 = v14;
      if (sub_219BED0C4())
      {
        v18 = [objc_opt_self() preferredFontForTextStyle_];
        v19 = sub_2186C6148(0, &qword_280E8DB00);
      }

      else
      {
        v20 = sub_219BED0C4();
        v21 = MEMORY[0x277D76968];
        if ((v20 & 1) == 0)
        {
          v21 = MEMORY[0x277D76918];
        }

        v22 = *v21;
        v19 = sub_2186C6148(0, &qword_280E8DB00);
        v18 = sub_219BF6BD4();
      }

      *(inited + 104) = v19;
      *(inited + 80) = v18;
      sub_2188195F4(inited);
      swift_setDeallocating();
      sub_218819588();
      swift_arrayDestroy();
      v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v24 = sub_219BF53D4();

      type metadata accessor for Key(0);
      sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
      v25 = sub_219BF5204();

      v26 = [v23 initWithString:v24 attributes:v25];

      return v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_218F22354(void *a1)
{
  result = [a1 narrators];
  if (result)
  {
    v4 = MEMORY[0x277D837D0];
    v5 = result;
    sub_219BF5924();

    v6 = sub_219BF5AD4();
    v8 = v7;

    if (v8)
    {
      if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_role) == 8)
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v10 = [objc_opt_self() bundleForClass_];
        v35 = 0x8000000219D02330;
      }

      else
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v10 = [objc_opt_self() bundleForClass_];
        v35 = 0x8000000219D022D0;
      }

      v11 = sub_219BDB5E4();
      v13 = v12;

      type metadata accessor for Localized();
      v14 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      sub_218818F60(0, &qword_280E8B5B0, sub_2186C66F8);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_219C09EC0;
      *(v15 + 56) = v4;
      v16 = sub_2186FC3BC();
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      *(v15 + 96) = v4;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = v6;
      *(v15 + 80) = v8;
      sub_219BF5454();

      sub_218818F60(0, &qword_280E8B600, sub_218819588);
      inited = swift_initStackObject();
      v18 = MEMORY[0x277D740C0];
      *(inited + 16) = xmmword_219C09EC0;
      v19 = *v18;
      *(inited + 32) = *v18;
      v20 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
      v21 = sub_2186C6148(0, &qword_280E8DA80);
      *(inited + 40) = v20;
      v22 = *MEMORY[0x277D740A8];
      *(inited + 64) = v21;
      *(inited + 72) = v22;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      if (sub_219BED0C4())
      {
        v26 = [objc_opt_self() preferredFontForTextStyle_];
        v27 = sub_2186C6148(0, &qword_280E8DB00);
      }

      else
      {
        v28 = sub_219BED0C4();
        v29 = MEMORY[0x277D76968];
        if ((v28 & 1) == 0)
        {
          v29 = MEMORY[0x277D76918];
        }

        v30 = *v29;
        v27 = sub_2186C6148(0, &qword_280E8DB00);
        v26 = sub_219BF6BD4();
      }

      *(inited + 104) = v27;
      *(inited + 80) = v26;
      sub_2188195F4(inited);
      swift_setDeallocating();
      sub_218819588();
      swift_arrayDestroy();
      v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v32 = sub_219BF53D4();

      type metadata accessor for Key(0);
      sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
      v33 = sub_219BF5204();

      v34 = [v31 initWithString:v32 attributes:v33];

      return v34;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_218F22880(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_219BDBA74();
  }

  else
  {
    v4 = sub_219BDBA84();
  }

  v6 = v4;
  v7 = v5;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_218818F60(0, &qword_280E8B5B0, sub_2186C66F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  sub_219BF5454();

  sub_218818F60(0, &qword_280E8B600, sub_218819588);
  inited = swift_initStackObject();
  v12 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_219C09EC0;
  v13 = *v12;
  *(inited + 32) = *v12;
  v14 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
  v15 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 40) = v14;
  v16 = *MEMORY[0x277D740A8];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = v13;
  v18 = v14;
  v19 = v16;
  if (sub_219BED0C4())
  {
    v20 = [objc_opt_self() preferredFontForTextStyle_];
    v21 = sub_2186C6148(0, &qword_280E8DB00);
  }

  else
  {
    v22 = sub_219BED0C4();
    v23 = MEMORY[0x277D76968];
    if ((v22 & 1) == 0)
    {
      v23 = MEMORY[0x277D76918];
    }

    v24 = *v23;
    v21 = sub_2186C6148(0, &qword_280E8DB00);
    v20 = sub_219BF6BD4();
  }

  *(inited + 104) = v21;
  *(inited + 80) = v20;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
  v27 = sub_219BF5204();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

void sub_218F22C4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_opt_self();
  v12 = *(*__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 8);
  v13 = [v11 secondarySystemFillColor];
  v14 = [v11 ts:v12 dynamicColor:v13 withDarkStyleVariant:?];

  [a1 setBackgroundColor_];
  v15 = [a1 layer];
  [v15 setCornerCurve_];

  v16 = [a1 layer];
  v17 = sub_219BED0C4();
  v18 = 10.0;
  if (v17)
  {
    v18 = 26.0;
  }

  [v16 setCornerRadius_];

  [a1 setTitleEdgeInsets_];
  v41 = a4;
  v42 = a5;
  sub_218F23158(a3, a4, a5);
  sub_218818F60(0, &qword_280E8B600, sub_218819588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v20 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v21 = v20;
  v22 = sub_219BED0C4();
  v23 = sub_2186C6148(0, &qword_280E8DB00);
  if (v22)
  {
    v24 = sub_219BF6BC4();
    [v24 pointSize];
    v25 = sub_219BF6BD4();
    *(inited + 64) = v23;
  }

  else
  {
    v25 = sub_219BF6BD4();
    *(inited + 64) = v23;
  }

  *(inited + 40) = v25;
  v26 = *MEMORY[0x277D740C0];
  *(inited + 72) = *MEMORY[0x277D740C0];
  v27 = *(*__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v27;
  v28 = v26;
  v29 = v27;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v31 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
  v32 = sub_219BF5204();

  v33 = [v30 initWithString:v31 attributes:v32];

  [a1 setAttributedTitle:v33 forState:0];
  v34 = [objc_opt_self() defaultMetrics];
  [v34 scaledValueForValue_];
  v36 = v35;

  v37 = [objc_opt_self() configurationWithPointSize_];
  sub_218F235B0(a3, v41, v42);
  v38 = v37;
  v39 = sub_219BF53D4();

  v40 = [objc_opt_self() systemImageNamed:v39 withConfiguration:v38];

  [a1 setImage:v40 forState:0];
}

uint64_t sub_218F23158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21883F194();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D58C24(a1, v11, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    v14 = &v11[*(v16 + 64)];
    sub_218D58C24(v11, v8, type metadata accessor for AudioFeedTrack);
    v17 = [*v8 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    if (v18 == a2 && v20 == a3)
    {
    }

    else
    {
      v22 = sub_219BF78F4();

      if ((v22 & 1) == 0)
      {
        sub_218736348(v8, type metadata accessor for AudioFeedTrack);
        goto LABEL_4;
      }
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v25 = sub_219BDB5E4();

    sub_218736348(v8, type metadata accessor for AudioFeedTrack);
    v28 = sub_219BDD9E4();
    (*(*(v28 - 8) + 8))(v14, v28);
    sub_218736348(v11, type metadata accessor for AudioFeedTrack);
    return v25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554();
    v14 = &v11[*(v13 + 64)];
LABEL_4:
    v15 = sub_219BDD9E4();
    (*(*(v15 - 8) + 8))(v14, v15);
    sub_218736348(v11, type metadata accessor for AudioFeedTrack);
  }

  type metadata accessor for Localized();
  v23 = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_219BDB5E4();

  return v25;
}

uint64_t sub_218F235B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0x6C69662E79616C70;
  v7 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21883F194();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D58C24(a1, v12, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    v15 = &v12[*(v16 + 64)];
    sub_218D58C24(v12, v9, type metadata accessor for AudioFeedTrack);
    v17 = [*v9 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    if (v18 == a2 && v20 == a3)
    {
    }

    else
    {
      v22 = sub_219BF78F4();

      if ((v22 & 1) == 0)
      {
        sub_218736348(v9, type metadata accessor for AudioFeedTrack);
        goto LABEL_12;
      }
    }

    sub_218736348(v9, type metadata accessor for AudioFeedTrack);
    v6 = 0x69662E6573756170;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554();
    v15 = &v12[*(v14 + 64)];
LABEL_12:
    v23 = sub_219BDD9E4();
    (*(*(v23 - 8) + 8))(v15, v23);
    sub_218736348(v12, type metadata accessor for AudioFeedTrack);
  }

  return v6;
}

void sub_218F23838(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 8);
  v6 = [v4 secondarySystemFillColor];
  v7 = [v4 ts:v5 dynamicColor:v6 withDarkStyleVariant:?];

  [a1 setBackgroundColor_];
  v8 = [a1 layer];
  [v8 setCornerCurve_];

  v9 = [a1 layer];
  v10 = sub_219BED0C4();
  v11 = 10.0;
  if (v10)
  {
    v11 = 26.0;
  }

  [v9 setCornerRadius_];

  [a1 setTitleEdgeInsets_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_218818F60(0, &qword_280E8B600, sub_218819588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v16 = v15;
  v17 = sub_219BED0C4();
  v18 = sub_2186C6148(0, &qword_280E8DB00);
  if (v17)
  {
    v19 = sub_219BF6BC4();
    [v19 pointSize];
    v20 = sub_219BF6BD4();
    *(inited + 64) = v18;
  }

  else
  {
    v20 = sub_219BF6BD4();
    *(inited + 64) = v18;
  }

  *(inited + 40) = v20;
  v21 = *MEMORY[0x277D740C0];
  *(inited + 72) = *MEMORY[0x277D740C0];
  v22 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v22;
  v23 = v21;
  v24 = v22;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
  v27 = sub_219BF5204();

  v28 = [v25 initWithString:v26 attributes:v27];

  [a1 setAttributedTitle:v28 forState:0];
  v29 = [objc_opt_self() defaultMetrics];
  [v29 scaledValueForValue_];
  v31 = v30;

  v32 = [objc_opt_self() configurationWithPointSize_];
  v33 = sub_219BF53D4();
  v34 = [objc_opt_self() systemImageNamed:v33 withConfiguration:v32];

  [a1 setImage:v34 forState:0];
}

id sub_218F23DB0()
{
  v1 = sub_219BF2414();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((*v0 + 96), *(*v0 + 120));
  sub_219BF1FF4();
  sub_219BF2404();
  (*(v2 + 8))(v4, v1);
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
  v7 = sub_219BF5204();

  v8 = [v5 initWithString:v6 attributes:v7];

  return v8;
}

uint64_t sub_218F23F68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 userInterfaceStyle];
  if (v3 > 2)
  {
    v4 = MEMORY[0x277D338A0];
  }

  else
  {
    v4 = qword_2782427B0[v3];
  }

  v5 = *v4;
  v6 = sub_219BF2494();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t sub_218F24000(uint64_t a1, uint64_t a2)
{
  result = sub_218F24058(&qword_27CC13948, a2, type metadata accessor for AudioTrackDetailsStyler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218F24058(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218F240A0(void *a1)
{
  v2 = [a1 layer];
  [v2 setBorderWidth_];

  v3 = [a1 layer];
  [v3 setCornerRadius_];

  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v4 whiteColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v4 ts:v6 dynamicColor:v8 withDarkStyleVariant:?];
  [a1 setBackgroundColor_];
}

id sub_218F24214(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v3 setLineHeightMultiple_];
  [v3 setLineBreakMode_];
  if (a2)
  {
    sub_218818F60(0, &qword_280E8B600, sub_218819588);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C0EE20;
    v5 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v6 = v5;
    v7 = sub_219BED0C4();
    v8 = objc_opt_self();
    v9 = &selRef_labelColor;
    if ((v7 & 1) == 0)
    {
      v9 = &selRef_secondaryLabelColor;
    }

    v10 = [v8 *v9];
    v11 = sub_2186C6148(0, &qword_280E8DA80);
    *(inited + 40) = v10;
    v12 = *MEMORY[0x277D740A8];
    *(inited + 64) = v11;
    *(inited + 72) = v12;
    v13 = v12;
    if (sub_219BED0C4())
    {
      v14 = [objc_opt_self() preferredFontForTextStyle_];
      v15 = sub_2186C6148(0, &qword_280E8DB00);
    }

    else
    {
      v15 = sub_2186C6148(0, &qword_280E8DB00);
      v14 = sub_219BF6BD4();
    }

    *(inited + 80) = v14;
    v17 = *MEMORY[0x277D740D0];
    *(inited + 104) = v15;
    *(inited + 112) = v17;
    v18 = MEMORY[0x277D839F8];
    *(inited + 120) = 0xBFC999999999999ALL;
    v19 = *MEMORY[0x277D74118];
    *(inited + 144) = v18;
    *(inited + 152) = v19;
    *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8);
    *(inited + 160) = v3;
    v20 = v17;
    v21 = v19;
    v22 = v3;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v24 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218F24058(&qword_280E8E118, 255, type metadata accessor for Key);
    v25 = sub_219BF5204();

    v16 = [v23 initWithString:v24 attributes:v25];
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t sub_218F24588(uint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_218F246EC();
  result = sub_219BE1E34();
  if (v11)
  {
    sub_2186CB1F0(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(a1, v5, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong showViewController:v7 sender:v2];
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218F24678()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_218F246EC()
{
  result = qword_280EB1170;
  if (!qword_280EB1170)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EB1170);
  }

  return result;
}

void sub_218F24750()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();
  v4 = v3;

  qword_27CCD8668 = v2;
  unk_27CCD8670 = v4;
}

uint64_t sub_218F24844()
{
  sub_2187FABEC(*(v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_218F248A8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for MainTabBarEngagementView());

  v4 = sub_218C25BE4(v3);
  v5 = v4;
  v6 = *(v1 + 16);
  if (v6)
  {
    v6(v4, *(v1 + 32));
  }

  sub_218F24914();
  return v5;
}

unint64_t sub_218F24914()
{
  result = qword_27CC13950;
  if (!qword_27CC13950)
  {
    type metadata accessor for MainTabBarEngagementView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13950);
  }

  return result;
}

uint64_t type metadata accessor for RecipeFilterConfigFetchResult()
{
  result = qword_27CC13958;
  if (!qword_27CC13958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218F249E0()
{
  result = type metadata accessor for RecipeFilterConfigurationPayload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for DateRangeTagFeedGroupEmitterBatch()
{
  result = qword_27CC13968;
  if (!qword_27CC13968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F24AC0()
{
  sub_2187E7248();
  if (v0 <= 0x3F)
  {
    sub_2186FAF08();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DateRangeTagFeedGroupCursor();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218F24B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x637461427478656ELL;
  if (v2 == 1)
  {
    v4 = 0xE900000000000068;
  }

  else
  {
    v3 = 0x6142646E61707865;
    v4 = 0xEB00000000686374;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x637461427473616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  v7 = 0x637461427478656ELL;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000068;
  }

  else
  {
    v7 = 0x6142646E61707865;
    v8 = 0xEB00000000686374;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x637461427473616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000068;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218F24C90()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218F24D3C()
{
  sub_219BF5524();
}

uint64_t sub_218F24DD4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218F24E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218F24F6C();
  *a1 = result;
  return result;
}

void sub_218F24EAC(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000068;
  v3 = *v1;
  v4 = 0x637461427478656ELL;
  v5 = 0xEB00000000686374;
  if (v3 == 1)
  {
    v5 = 0xE900000000000068;
  }

  else
  {
    v4 = 0x6142646E61707865;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x637461427473616CLL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_218F24F18()
{
  result = qword_27CC13978;
  if (!qword_27CC13978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13978);
  }

  return result;
}

uint64_t sub_218F24F6C()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218F24FE4()
{
  sub_2186F1164();
  v77 = *(v0 - 8);
  v78 = v0;
  MEMORY[0x28223BE20](v0);
  v76 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7328();
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F107C();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BF0D74();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v16 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C();
  v20 = v19;
  v53 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v24 = v23;
  v79 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF1584();
  v52 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v80, v32, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v47 = v52;
      (*(v52 + 32))(v29, &v32[*(v46 + 48)], v27);
      v48 = sub_219BF1524();
      v49 = v27;
      v33 = v48;
      (*(v47 + 8))(v29, v49);
      sub_218F31004(v32, type metadata accessor for TagFeedGapLocation);
      return v33;
    case 2u:
      v39 = v79;
      (*(v79 + 32))(v26, v32, v24);
      v33 = sub_219BF07B4();
      (*(v39 + 8))(v26, v24);
      return v33;
    case 3u:
      v40 = v53;
      (*(v53 + 32))(v22, v32, v20);
      v33 = sub_219BF07B4();
      (*(v40 + 8))(v22, v20);
      return v33;
    case 4u:
      v38 = v54;
      (*(v54 + 32))(v18, v32, v16);
      v33 = sub_219BF07B4();
      (*(v38 + 8))(v18, v16);
      return v33;
    case 5u:
      v33 = sub_219BE5B24();

      return v33;
    case 6u:
      v36 = v56;
      v35 = v55;
      v37 = v57;
      (*(v56 + 32))(v55, v32, v57);
      v50 = sub_219BF0D44();
      goto LABEL_17;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v42 = *(v41 + 48);
      v44 = v60;
      v43 = v61;
      v45 = v58;
      (*(v60 + 32))(v58, v32, v61);
      v33 = sub_219BF07B4();
      (*(v44 + 8))(v45, v43);
      (*(v79 + 8))(&v32[v42], v24);
      return v33;
    case 8u:
      return *v32;
    case 9u:
      v36 = v62;
      v37 = v63;
      v35 = v59;
      (*(v62 + 32))(v59, v32, v63);
      goto LABEL_16;
    case 0xAu:
      v35 = v64;
      v36 = v65;
      v37 = v66;
      (*(v65 + 32))(v64, v32, v66);
      goto LABEL_16;
    case 0xBu:
      v35 = v67;
      v36 = v68;
      v37 = v69;
      (*(v68 + 32))(v67, v32, v69);
      goto LABEL_16;
    case 0xCu:
      v35 = v70;
      v36 = v71;
      v37 = v72;
      (*(v71 + 32))(v70, v32, v72);
      goto LABEL_16;
    case 0xDu:
      v35 = v73;
      v36 = v74;
      v37 = v75;
      (*(v74 + 32))(v73, v32, v75);
      goto LABEL_16;
    case 0xEu:
      v35 = v76;
      v36 = v77;
      v37 = v78;
      (*(v77 + 32))(v76, v32, v78);
LABEL_16:
      v50 = sub_219BF07B4();
LABEL_17:
      v33 = v50;
      (*(v36 + 8))(v35, v37);
      break;
    default:
      v33 = *v32;
      sub_2186F0CC0();
      sub_218F31004(&v32[*(v34 + 48)], type metadata accessor for TagFeedGapLocation);
      break;
  }

  return v33;
}

uint64_t sub_218F25A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2186EFCF4(&qword_280EDE840, type metadata accessor for TagFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218F25AF8@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v2 = sub_219BEDAE4();
  v150 = *(v2 - 8);
  v151 = v2;
  MEMORY[0x28223BE20](v2);
  v148 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54();
  v149 = v4;
  v146 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v141 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BEC224();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BEBF14();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEC504();
  v143 = *(v8 - 8);
  v144 = v8;
  MEMORY[0x28223BE20](v8);
  v142 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v147 = v10;
  v145 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v140 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0B74();
  v138 = *(v12 - 8);
  v139 = v12;
  MEMORY[0x28223BE20](v12);
  v136 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164();
  v137 = v14;
  v135 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v134 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BEEAD4();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7328();
  v131 = v17;
  v129 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v128 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BEDB94();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F107C();
  v125 = v20;
  v123 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v122 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BF0AC4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C();
  v119 = v23;
  v117 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v116 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_219BF07A4();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240();
  v113 = v26;
  v111 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v110 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BF1094();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v107 = v29;
  v105 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v104 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BF04A4();
  v103 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C();
  v35 = v34;
  v102 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF0F34();
  v101 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v152 = *(v41 - 8);
  v153 = v41;
  MEMORY[0x28223BE20](v41);
  v43 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v94 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_218F26EF4())
  {
    v47 = sub_219BEAF84();
    v48 = *(*(v47 - 8) + 56);
    v49 = v47;
    v50 = v154;

    return v48(v50, 1, 1, v49);
  }

  sub_218F310C8(v1, v46, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v72 = *(v71 + 48);
      v73 = sub_219BF1584();
      (*(*(v73 - 8) + 8))(&v46[v72], v73);
      v52 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_17;
    case 2u:
      v66 = v152;
      v65 = v153;
      (*(v152 + 32))(v43, v46, v153);
      sub_219BF07D4();
      sub_219BF0F04();
      (*(v101 + 8))(v40, v38);
      return (*(v66 + 8))(v43, v65);
    case 3u:
      v67 = v102;
      (*(v102 + 32))(v37, v46, v35);
      sub_219BF07D4();
      sub_219BF0454();
      (*(v103 + 8))(v33, v31);
      return (*(v67 + 8))(v37, v35);
    case 4u:
      v53 = v105;
      v54 = v104;
      v55 = v107;
      (*(v105 + 32))(v104, v46, v107);
      v64 = v106;
      sub_219BF07D4();
      sub_219BF1064();
      v60 = *(v108 + 8);
      v61 = v64;
      v62 = &v141;
      goto LABEL_21;
    case 5u:
    case 6u:
    case 8u:
      v52 = type metadata accessor for TagFeedModel;
LABEL_17:
      v69 = v52;
      v70 = v46;
      goto LABEL_18;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v78 = *(v77 + 48);
      v79 = v145;
      v80 = v140;
      v81 = v147;
      (*(v145 + 32))(v140, v46, v147);
      v82 = v142;
      sub_219BF07D4();
      v84 = v143;
      v83 = v144;
      v85 = (*(v143 + 88))(v82, v144);
      if (v85 == *MEMORY[0x277D2D6A8])
      {
        (*(v84 + 96))(v82, v83);
        v86 = v99;
        v87 = v98;
        v88 = v100;
        (*(v99 + 32))(v98, v82, v100);
        sub_219BEBEE4();
        (*(v86 + 8))(v87, v88);
LABEL_28:
        (*(v79 + 8))(v80, v81);
        return (*(v152 + 8))(&v46[v78], v153);
      }

      v89 = v154;
      if (v85 == *MEMORY[0x277D2D6A0])
      {
        (*(v84 + 96))(v82, v83);
        v90 = v96;
        v91 = v95;
        v92 = v97;
        (*(v96 + 32))(v95, v82, v97);
        sub_219BEC214();
        (*(v90 + 8))(v91, v92);
        goto LABEL_28;
      }

      (*(v79 + 8))(v80, v81);
      v93 = sub_219BEAF84();
      (*(*(v93 - 8) + 56))(v89, 1, 1, v93);
      (*(v84 + 8))(v82, v83);
      return (*(v152 + 8))(&v46[v78], v153);
    case 9u:
      v53 = v146;
      v54 = v141;
      v55 = v149;
      (*(v146 + 32))(v141, v46, v149);
      v56 = v148;
      sub_219BF07D4();
      sub_219BEDA74();
      v58 = v150;
      v57 = v151;
      goto LABEL_11;
    case 0xAu:
      v53 = v111;
      v54 = v110;
      v55 = v113;
      (*(v111 + 32))(v110, v46, v113);
      v76 = v112;
      sub_219BF07D4();
      sub_219BF0754();
      v60 = *(v114 + 8);
      v61 = v76;
      v62 = &v147;
      goto LABEL_21;
    case 0xBu:
      v53 = v117;
      v54 = v116;
      v55 = v119;
      (*(v117 + 32))(v116, v46, v119);
      v59 = v118;
      sub_219BF07D4();
      sub_219BF0AB4();
      v60 = *(v120 + 8);
      v61 = v59;
      v62 = &v153;
      goto LABEL_21;
    case 0xCu:
      v53 = v123;
      v54 = v122;
      v55 = v125;
      (*(v123 + 32))(v122, v46, v125);
      v63 = v124;
      sub_219BF07D4();
      sub_219BEDB84();
      v60 = *(v126 + 8);
      v61 = v63;
      v62 = &v155;
      goto LABEL_21;
    case 0xDu:
      v53 = v129;
      v54 = v128;
      v55 = v131;
      (*(v129 + 32))(v128, v46, v131);
      v75 = v130;
      sub_219BF07D4();
      sub_219BEEAC4();
      v60 = *(v132 + 8);
      v61 = v75;
      v62 = &v156;
LABEL_21:
      v60(v61, *(v62 - 32));
      return (*(v53 + 8))(v54, v55);
    case 0xEu:
      v54 = v134;
      v53 = v135;
      v55 = v137;
      (*(v135 + 32))(v134, v46, v137);
      v56 = v136;
      sub_219BF07D4();
      sub_219BF0B54();
      v58 = v138;
      v57 = v139;
LABEL_11:
      (*(v58 + 8))(v56, v57);
      return (*(v53 + 8))(v54, v55);
    default:

      sub_2186F0CC0();
      v69 = type metadata accessor for TagFeedGapLocation;
      v70 = &v46[*(v68 + 48)];
LABEL_18:
      sub_218F31004(v70, v69);
      v74 = sub_219BEAF84();
      return (*(*(v74 - 8) + 56))(v154, 1, 1, v74);
  }
}

uint64_t sub_218F26EF4()
{
  v1 = v0;
  v2 = sub_219BEE614();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0614();
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186F0E54();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagFeedModel(0);
  v9 = MEMORY[0x28223BE20](v8);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v83 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v83 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v83 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v83 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v83 = &v83 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v83 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v83 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v83 - v36;
  v95 = v1;
  sub_218F310C8(v1, &v83 - v36, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = v86;
      sub_218F310C8(v37, v86, type metadata accessor for TagFeedModel);
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v55 = *(v54 + 48);
      v56 = sub_219BF1584();
      (*(*(v56 - 8) + 8))(v53 + v55, v56);
      v40 = v53;
      goto LABEL_10;
    case 2u:
      sub_218F310C8(v37, v35, type metadata accessor for TagFeedModel);
      v47 = v87;
      v46 = v88;
      v48 = v85;
      (*(v87 + 32))(v85, v35, v88);
      sub_219BF07F4();
      v49 = v96;
      v50 = sub_219BF6394();

      LODWORD(v49) = [v50 isMySports];
      swift_unknownObjectRelease();
      if (v49)
      {
        (*(v47 + 8))(v48, v46);
      }

      else
      {
        sub_219BF07F4();
        v81 = v96;
        v82 = [v96 feedType];

        (*(v47 + 8))(v48, v46);
        if (v82 != 11)
        {
LABEL_12:
          sub_218F31004(v37, type metadata accessor for TagFeedModel);
          goto LABEL_24;
        }
      }

LABEL_18:
      sub_218F31004(v37, type metadata accessor for TagFeedModel);
      v71 = v89;
      sub_218F2994C(v89);
      v72 = v94;
      sub_219BF04E4();
      (*(v90 + 8))(v71, v91);
      v74 = v92;
      v73 = v93;
      if ((*(v92 + 88))(v72, v93) != *MEMORY[0x277D32070])
      {
        (*(v74 + 8))(v72, v73);
        goto LABEL_24;
      }

      (*(v74 + 96))(v72, v73);
      v75 = sub_219BEECB4();
      v76 = *(v75 - 8);
      v77 = (*(v76 + 88))(v72, v75);
      v78 = *MEMORY[0x277D32338];
      (*(v76 + 8))(v72, v75);
      if (v77 != v78)
      {
LABEL_24:
        v79 = 0;
        return v79 & 1;
      }

      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v79 = sub_219BDC8C4();

      return v79 & 1;
    case 3u:
      sub_218F310C8(v37, v32, type metadata accessor for TagFeedModel);
      sub_2186F0F3C();
      goto LABEL_14;
    case 4u:
      sub_218F310C8(v37, v29, type metadata accessor for TagFeedModel);
      sub_2186F7158();
      v43 = v42;
      sub_219BF07F4();
      (*(*(v43 - 8) + 8))(v29, v43);
      goto LABEL_17;
    case 5u:
    case 6u:
    case 8u:
    case 9u:
      goto LABEL_18;
    case 7u:
      v57 = v83;
      sub_218F310C8(v37, v83, type metadata accessor for TagFeedModel);
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v59 = *(v58 + 48);
      v60 = v88;
      sub_219BF07F4();
      (*(v87 + 8))(v57 + v59, v60);
      v61 = v96;
      v62 = [v96 feedType];

      sub_2186EAD48();
      (*(*(v63 - 8) + 8))(v57, v63);
      if (v62 != 11)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 0xAu:
      sub_218F310C8(v37, v24, type metadata accessor for TagFeedModel);
      sub_2186F7240();
      v68 = v67;
      sub_219BF07F4();
      (*(*(v68 - 8) + 8))(v24, v68);
      goto LABEL_17;
    case 0xBu:
      sub_218F310C8(v37, v21, type metadata accessor for TagFeedModel);
      sub_2186FB04C();
      v45 = v44;
      sub_219BF07F4();
      (*(*(v45 - 8) + 8))(v21, v45);
      goto LABEL_17;
    case 0xCu:
      sub_218F310C8(v37, v18, type metadata accessor for TagFeedModel);
      sub_2186F107C();
      v52 = v51;
      sub_219BF07F4();
      (*(*(v52 - 8) + 8))(v18, v52);
      goto LABEL_17;
    case 0xDu:
      sub_218F310C8(v37, v15, type metadata accessor for TagFeedModel);
      sub_2186F7328();
      v66 = v65;
      sub_219BF07F4();
      (*(*(v66 - 8) + 8))(v15, v66);
      goto LABEL_17;
    case 0xEu:
      v32 = v84;
      sub_218F310C8(v37, v84, type metadata accessor for TagFeedModel);
      sub_2186F1164();
LABEL_14:
      v64 = v41;
      sub_219BF07F4();
      (*(*(v64 - 8) + 8))(v32, v64);
LABEL_17:
      v69 = v96;
      v70 = [v96 feedType];

      if (v70 == 11)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    default:
      v38 = v86;
      sub_218F310C8(v37, v86, type metadata accessor for TagFeedModel);

      sub_2186F0CC0();
      v40 = v38 + *(v39 + 48);
LABEL_10:
      sub_218F31004(v40, type metadata accessor for TagFeedGapLocation);
      goto LABEL_18;
  }
}

uint64_t sub_218F279DC()
{
  v1 = sub_219BEDAE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v0, v12, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v23 = *(v22 + 48);
      v24 = sub_219BF1584();
      (*(*(v24 - 8) + 8))(&v12[v23], v24);
      v14 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_9;
    case 2u:
    case 3u:
    case 4u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
      sub_218F31004(v12, type metadata accessor for TagFeedModel);
      v13 = 1;
      return v13 & 1;
    case 5u:
      v13 = sub_219BE5B54();

      return v13 & 1;
    case 6u:
    case 8u:
    case 0xDu:
      v14 = type metadata accessor for TagFeedModel;
LABEL_9:
      v20 = v14;
      v21 = v12;
      goto LABEL_10;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v16 = *(v15 + 48);
      sub_2186F0E54();
      (*(*(v17 - 8) + 8))(&v12[v16], v17);
      sub_2186EAD48();
      (*(*(v18 - 8) + 8))(v12, v18);
      v13 = 1;
      return v13 & 1;
    case 9u:
      (*(v7 + 32))(v9, v12, v6);
      sub_219BF07D4();
      v13 = sub_219BEDAA4();
      (*(v2 + 8))(v4, v1);
      (*(v7 + 8))(v9, v6);
      return v13 & 1;
    default:

      sub_2186F0CC0();
      v20 = type metadata accessor for TagFeedGapLocation;
      v21 = &v12[*(v19 + 48)];
LABEL_10:
      sub_218F31004(v21, v20);
      v13 = 0;
      return v13 & 1;
  }
}

size_t sub_218F27DF4()
{
  v1 = sub_219BF0B74();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164();
  v66 = v4;
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEC504();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED9BA0(0);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BE6364();
  v76 = *(v67 - 8);
  v13 = MEMORY[0x28223BE20](v67);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v56 - v15;
  v16 = sub_219BF2B34();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x28223BE20](v16);
  v71 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF0F34();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v74 = *(v22 - 8);
  v75 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_218F26EF4() & 1) == 0)
  {
    sub_218F310C8(v0, v27, type metadata accessor for TagFeedModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
        v47 = *(v46 + 48);
        v48 = sub_219BF1584();
        (*(*(v48 - 8) + 8))(&v27[v47], v48);
        v28 = type metadata accessor for TagFeedGapLocation;
        goto LABEL_4;
      case 2u:
        (*(v74 + 32))(v24, v27, v75);
        v57 = v0;
        sub_219BF07D4();
        sub_219BF0F14();
        (*(v19 + 8))(v21, v18);
        sub_218F31064(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
        v37 = *(v76 + 72);
        v38 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v70 = 2 * v37;
        v69 = v38 + 3 * v37;
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_219C0B8C0;
        swift_unknownObjectRetain();
        sub_218F24FE4();
        v39 = v71;
        sub_219BF2B14();
        sub_219BE62F4();
        v40 = v73;
        v41 = *(v72 + 8);
        v41(v39, v73);
        swift_unknownObjectRetain();
        sub_218F24FE4();
        sub_219BF2B14();
        v42 = v76;
        sub_219BE6344();
        v41(v39, v40);
        sub_219BE6314();
        v43 = v65;
        sub_219BE62E4();
        v44 = v67;
        if ((*(v42 + 48))(v43, 1, v67) == 1)
        {
          (*(v74 + 8))(v24, v75);
          swift_unknownObjectRelease();
          sub_218F31004(v43, sub_218ED9BA0);
        }

        else
        {
          v53 = *(v42 + 32);
          v54 = v58;
          v53(v58, v43, v44);
          v55 = v59;
          (*(v42 + 16))(v59, v54, v44);
          v31 = sub_2191F976C(1uLL, 4, 1, v31);
          swift_unknownObjectRelease();
          (*(v42 + 8))(v54, v44);
          (*(v74 + 8))(v24, v75);
          *(v31 + 16) = 4;
          v53((v31 + v69), v55, v44);
        }

        return v31;
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
        v28 = type metadata accessor for TagFeedModel;
LABEL_4:
        v29 = v28;
        v30 = v27;
        goto LABEL_5;
      case 7u:
        sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
        v67 = *(v49 + 48);
        (*(v69 + 32))(v68, v27, v70);
        v57 = v0;
        sub_219BF07D4();
        sub_219BEC4F4();
        (*(v60 + 8))(v8, v6);
        sub_218F31064(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
        v76 = 2 * *(v76 + 72);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_219C0B8C0;
        swift_unknownObjectRetain();
        sub_218F24FE4();
        v50 = v71;
        sub_219BF2B14();
        sub_219BE62F4();
        v51 = v73;
        v52 = *(v72 + 8);
        v52(v50, v73);
        swift_unknownObjectRetain();
        sub_218F24FE4();
        sub_219BF2B14();
        sub_219BE6344();
        v52(v50, v51);
        sub_219BE6314();
        swift_unknownObjectRelease();
        (*(v69 + 8))(v68, v70);
        (*(v74 + 8))(&v27[v67], v75);
        return v31;
      case 0xEu:
        v34 = v63;
        v33 = v64;
        v35 = v66;
        (*(v64 + 32))(v63, v27, v66);
        sub_219BF07D4();
        v36 = sub_219BF0B44();
        (*(v61 + 8))(v3, v62);
        sub_218F31064(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_219C0B8C0;
        sub_219BE6354();
        sub_219BE62D4();
        sub_219BE6304();

        (*(v33 + 8))(v34, v35);
        return v31;
      default:

        sub_2186F0CC0();
        v29 = type metadata accessor for TagFeedGapLocation;
        v30 = &v27[*(v45 + 48)];
LABEL_5:
        sub_218F31004(v30, v29);
        break;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218F289F4()
{
  v1 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v0, v3, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v14 = *(v13 + 48);
      v15 = sub_219BF1584();
      (*(*(v15 - 8) + 8))(&v3[v14], v15);
      v11 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_10;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v4 = type metadata accessor for TagFeedModel;
      v5 = v3;
      goto LABEL_3;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v8 = *(v7 + 48);
      sub_2186F0E54();
      (*(*(v9 - 8) + 8))(&v3[v8], v9);
      sub_2186EAD48();
      (*(*(v10 - 8) + 8))(v3, v10);
      return 1;
    case 8u:
      v11 = type metadata accessor for TagFeedModel;
LABEL_10:
      sub_218F31004(v3, v11);
      return 0;
    default:

      sub_2186F0CC0();
      v4 = type metadata accessor for TagFeedGapLocation;
      v5 = &v3[*(v12 + 48)];
LABEL_3:
      sub_218F31004(v5, v4);
      return 1;
  }
}

uint64_t sub_218F28C74()
{
  v1 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v0, v3, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v18 = *(v17 + 48);
      v19 = sub_219BF1584();
      (*(*(v19 - 8) + 8))(&v3[v18], v19);
      v4 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v4 = type metadata accessor for TagFeedModel;
LABEL_3:
      v5 = v4;
      v6 = v3;
      goto LABEL_4;
    case 6u:
      sub_218F31064(0, &qword_280E8BED0, MEMORY[0x277D6D7D0], MEMORY[0x277D84560]);
      v8 = sub_219BE6C84();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_219C09BA0;
      (*(v9 + 104))(v11 + v10, *MEMORY[0x277D6D7C8], v8);
      sub_218F31004(v3, type metadata accessor for TagFeedModel);
      return v11;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v13 = *(v12 + 48);
      sub_2186F0E54();
      (*(*(v14 - 8) + 8))(&v3[v13], v14);
      sub_2186EAD48();
      (*(*(v15 - 8) + 8))(v3, v15);
      return MEMORY[0x277D84F90];
    default:

      sub_2186F0CC0();
      v5 = type metadata accessor for TagFeedGapLocation;
      v6 = &v3[*(v16 + 48)];
LABEL_4:
      sub_218F31004(v6, v5);
      return MEMORY[0x277D84F90];
  }
}

uint64_t sub_218F29034@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v73 = a3;
  v74 = a2;
  v72 = a1;
  v6 = v5;
  v75 = a5;
  sub_218B597DC(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v63 - v10;
  v11 = sub_219BF1094();
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BEDAE4();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v6, v26, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v53 = *(v52 + 48);
      v54 = sub_219BF1584();
      (*(*(v54 - 8) + 8))(&v26[v53], v54);
      v29 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_5;
    case 2u:
    case 3u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
      sub_218F31004(v26, type metadata accessor for TagFeedModel);
      goto LABEL_3;
    case 4u:
      v37 = v68;
      v36 = v69;
      v38 = v70;
      (*(v69 + 32))(v68, v26, v70);
      sub_219BF07D4();
      v39 = v71;
      sub_219BF1034();
      (*(v66 + 8))(v13, v11);
      v40 = sub_219BF3484();
      v41 = *(v40 - 8);
      v42 = (*(v41 + 48))(v39, 1, v40);
      v43 = v75;
      if (v42 == 1)
      {
        goto LABEL_11;
      }

      v55 = v64;
      sub_218F310C8(v39, v64, sub_218B597DC);
      v56 = (*(v41 + 88))(v55, v40);
      if (v56 == *MEMORY[0x277D33E08])
      {
        (*(v41 + 8))(v55, v40);
        sub_219BF07F4();
        v57 = v76;
        v58 = [v76 alternativeFeedDescriptor];

        if (v58)
        {
          v59 = [v58 feedConfiguration];

          (*(v36 + 8))(v37, v38);
          if (v59 == 4)
          {
            goto LABEL_24;
          }

LABEL_12:
          v44 = v73;
          goto LABEL_13;
        }

LABEL_11:
        (*(v36 + 8))(v37, v38);
        goto LABEL_12;
      }

      if (v56 != *MEMORY[0x277D33DF8])
      {
        (*(v36 + 8))(v37, v38);
        (*(v41 + 8))(v55, v40);
        goto LABEL_12;
      }

      (*(v41 + 8))(v55, v40);
      sub_219BF07F4();
      v60 = v76;
      v61 = [v76 alternativeFeedDescriptor];

      if (!v61)
      {
        goto LABEL_11;
      }

      v62 = [v61 feedConfiguration];

      (*(v36 + 8))(v37, v38);
      if (v62 != 7)
      {
        goto LABEL_12;
      }

LABEL_24:
      v44 = v72;
LABEL_13:
      v45 = *v44;
      v46 = v74(0);
      (*(*(v46 - 8) + 104))(v43, v45, v46);
      return sub_218F31004(v39, sub_218B597DC);
    case 5u:
    case 6u:
    case 8u:
    case 0xDu:
      v29 = type metadata accessor for TagFeedModel;
LABEL_5:
      v30 = v29;
      v31 = v26;
      goto LABEL_6;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v48 = *(v47 + 48);
      sub_2186F0E54();
      (*(*(v49 - 8) + 8))(&v26[v48], v49);
      sub_2186EAD48();
      (*(*(v50 - 8) + 8))(v26, v50);
LABEL_3:
      v27 = v75;
      v28 = v73;
      goto LABEL_7;
    case 9u:
      (*(v21 + 32))(v23, v26, v20);
      v35 = sub_219BF07D4();
      v67(v35);
      (*(v65 + 8))(v18, v16);
      return (*(v21 + 8))(v23, v20);
    default:

      sub_2186F0CC0();
      v30 = type metadata accessor for TagFeedGapLocation;
      v31 = &v26[*(v51 + 48)];
LABEL_6:
      sub_218F31004(v31, v30);
      v27 = v75;
      v28 = v72;
LABEL_7:
      v32 = *v28;
      v33 = v74(0);
      return (*(*(v33 - 8) + 104))(v27, v32, v33);
  }
}

uint64_t sub_218F2994C@<X0>(void *a1@<X8>)
{
  v143 = a1;
  sub_2186F1164();
  v138 = *(v1 - 8);
  v139 = v1;
  MEMORY[0x28223BE20](v1);
  v137 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7328();
  v135 = *(v3 - 8);
  v136 = v3;
  MEMORY[0x28223BE20](v3);
  v134 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F107C();
  v133 = v5;
  v131 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v130 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C();
  v128 = v7;
  v125 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v124 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240();
  v123 = v9;
  v122 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54();
  v119 = v11;
  v117 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v116 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v13 - 8);
  v132 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BF0574();
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D83D88];
  sub_218F31064(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v121 = &v105 - v18;
  sub_218F31064(0, &qword_280E91C10, MEMORY[0x277D32010], v16);
  MEMORY[0x28223BE20](v19 - 8);
  v118 = &v105 - v20;
  sub_218F31064(0, &unk_280EE34A0, MEMORY[0x277D2D148], v16);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = &v105 - v22;
  v111 = sub_219BEC504();
  v110 = *(v111 - 8);
  v23 = MEMORY[0x28223BE20](v111);
  v109 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v108 = &v105 - v26;
  MEMORY[0x28223BE20](v25);
  v105 = &v105 - v27;
  sub_2186EAD48();
  v114 = v28;
  v113 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v112 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v31 = v30;
  v107 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C();
  v35 = v34;
  v106 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v140 = *(v38 - 8);
  v141 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BF1584();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v105 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v105 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v142, v47, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      (*(v42 + 32))(v44, &v47[*(v88 + 48)], v41);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v89 = v143;
      sub_219BEDB14();
      (*(v42 + 8))(v44, v41);
      v90 = *MEMORY[0x277D32D10];
      v91 = sub_219BF0614();
      (*(*(v91 - 8) + 104))(v89, v90, v91);
      return sub_218F31004(v47, type metadata accessor for TagFeedGapLocation);
    case 2u:
      v65 = v140;
      v64 = v141;
      (*(v140 + 32))(v40, v47, v141);
      v52 = v143;
      sub_219BF07D4();
      (*(v65 + 8))(v40, v64);
      v53 = MEMORY[0x277D32E10];
      goto LABEL_18;
    case 3u:
      v66 = v106;
      (*(v106 + 32))(v37, v47, v35);
      v67 = v143;
      sub_219BF07D4();
      (*(v66 + 8))(v37, v35);
      v68 = *MEMORY[0x277D32DC0];
      v69 = sub_219BF0614();
      return (*(*(v69 - 8) + 104))(v67, v68, v69);
    case 4u:
      v57 = v107;
      (*(v107 + 32))(v33, v47, v31);
      v52 = v143;
      sub_219BF07D4();
      (*(v57 + 8))(v33, v31);
      v53 = MEMORY[0x277D32E18];
      goto LABEL_18;
    case 5u:
      v92 = v143;
      *v143 = *v47;
      v93 = MEMORY[0x277D32DE0];
      goto LABEL_15;
    case 6u:
      v97 = sub_219BF0D74();
      v92 = v143;
      (*(*(v97 - 8) + 32))(v143, v47, v97);
      v93 = MEMORY[0x277D32E00];
LABEL_15:
      v98 = *v93;
      v99 = sub_219BF0614();
      return (*(*(v99 - 8) + 104))(v92, v98, v99);
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v142 = *(v71 + 48);
      v72 = v113;
      v73 = v112;
      v74 = v114;
      (*(v113 + 32))(v112, v47, v114);
      v75 = v105;
      v76 = sub_219BF07D4();
      v77 = MEMORY[0x21CEC3270](v76);
      v138 = v78;
      v139 = v77;
      v79 = *(v110 + 8);
      v80 = v111;
      v79(v75, v111);
      v81 = v108;
      sub_219BF07D4();
      v137 = sub_219BEC4F4();
      v79(v81, v80);
      v82 = v109;
      sub_219BF07D4();
      sub_219BEC4E4();
      v79(v82, v80);
      v83 = sub_219BEE404();
      (*(*(v83 - 8) + 56))(v118, 1, 1, v83);
      v84 = sub_219BEDB44();
      (*(*(v84 - 8) + 56))(v121, 1, 1, v84);
      (*(v126 + 104))(v127, *MEMORY[0x277D32D70], v129);
      sub_219BF0ED4();
      v85 = v143;
      sub_219BF0E34();
      (*(v72 + 8))(v73, v74);
      v86 = *MEMORY[0x277D32E10];
      v87 = sub_219BF0614();
      (*(*(v87 - 8) + 104))(v85, v86, v87);
      return (*(v140 + 8))(&v47[v142], v141);
    case 8u:
      goto LABEL_17;
    case 9u:
      v61 = v117;
      v62 = v116;
      v63 = v119;
      (*(v117 + 32))(v116, v47, v119);
      v52 = v143;
      sub_219BF07D4();
      (*(v61 + 8))(v62, v63);
      v53 = MEMORY[0x277D32CF0];
      goto LABEL_18;
    case 0xAu:
      v100 = v122;
      v101 = v120;
      v102 = v123;
      (*(v122 + 32))(v120, v47, v123);
      v52 = v143;
      sub_219BF07D4();
      (*(v100 + 8))(v101, v102);
      v53 = MEMORY[0x277D32DD8];
      goto LABEL_18;
    case 0xBu:
      v54 = v124;
      v55 = v125;
      v56 = v128;
      (*(v125 + 32))(v124, v47, v128);
      v52 = v143;
      sub_219BF07D4();
      (*(v55 + 8))(v54, v56);
      v53 = MEMORY[0x277D32DE8];
      goto LABEL_18;
    case 0xCu:
      v58 = v130;
      v59 = v131;
      v60 = v133;
      (*(v131 + 32))(v130, v47, v133);
      v52 = v143;
      sub_219BF07D4();
      (*(v59 + 8))(v58, v60);
      v53 = MEMORY[0x277D32D18];
      goto LABEL_18;
    case 0xDu:
      v94 = v134;
      v95 = v135;
      v96 = v136;
      (*(v135 + 32))(v134, v47, v136);
      v52 = v143;
      sub_219BF07D4();
      (*(v95 + 8))(v94, v96);
      v53 = MEMORY[0x277D32DA8];
      goto LABEL_18;
    case 0xEu:
      v49 = v137;
      v50 = v138;
      v51 = v139;
      (*(v138 + 32))(v137, v47, v139);
      v52 = v143;
      sub_219BF07D4();
      (*(v50 + 8))(v49, v51);
      v53 = MEMORY[0x277D32DF0];
      goto LABEL_18;
    default:
      sub_2186F0CC0();
      sub_218F31004(&v47[*(v48 + 48)], type metadata accessor for TagFeedGapLocation);
LABEL_17:
      v52 = v143;
      sub_219BF03C4();
      v53 = MEMORY[0x277D32DB8];
LABEL_18:
      v103 = *v53;
      v104 = sub_219BF0614();
      return (*(*(v104 - 8) + 104))(v52, v103, v104);
  }
}

uint64_t sub_218F2AB0C()
{
  v1 = sub_219BF0D74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0614();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v0, v11, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v22 = *(v21 + 48);
      v23 = sub_219BF1584();
      (*(*(v23 - 8) + 8))(&v11[v22], v23);
      v13 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_9;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_218F31004(v11, type metadata accessor for TagFeedModel);
      goto LABEL_3;
    case 6u:
      (*(v2 + 32))(v4, v11, v1);
      v12 = sub_219BF0D54();
      (*(v2 + 8))(v4, v1);
      return v12;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v15 = *(v14 + 48);
      sub_2186F0E54();
      (*(*(v16 - 8) + 8))(&v11[v15], v16);
      sub_2186EAD48();
      (*(*(v17 - 8) + 8))(v11, v17);
LABEL_3:
      sub_218F2994C(v8);
      v12 = sub_219BF05A4();
      (*(v6 + 8))(v8, v5);
      return v12;
    case 8u:
      v13 = type metadata accessor for TagFeedModel;
LABEL_9:
      v19 = v13;
      v20 = v11;
      goto LABEL_10;
    default:

      sub_2186F0CC0();
      v19 = type metadata accessor for TagFeedGapLocation;
      v20 = &v11[*(v18 + 48)];
LABEL_10:
      sub_218F31004(v20, v19);
      return 0;
  }
}

uint64_t sub_218F2AF20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v159 = a7;
  v160 = a8;
  v158 = a1;
  sub_2186F1164();
  v149 = *(v15 - 8);
  v150 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v147 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v148 = &v130 - v18;
  sub_2186F107C();
  v153 = *(v19 - 8);
  v154 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v151 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v152 = &v130 - v22;
  sub_2186FB04C();
  v144 = v23;
  v143 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v141 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v142 = &v130 - v26;
  sub_2186F7240();
  v140 = v27;
  v138 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v135 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v136 = &v130 - v30;
  sub_2186EAD48();
  v139 = v31;
  v137 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v133 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v134 = &v130 - v34;
  sub_2186F0E54();
  v155 = *(v35 - 8);
  v156 = v35;
  v36 = MEMORY[0x28223BE20](v35);
  v145 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v146 = &v130 - v38;
  sub_2186F7158();
  v40 = v39;
  v132 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = (&v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  v45 = &v130 - v44;
  v161 = a2;
  v162 = a3;
  v163 = a4;
  v164 = a5;
  v165 = a6;
  v166 = v159;
  v167 = v160;
  v168 = a9;
  v160 = sub_219BE57D4();
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v130 - v46;
  sub_2186F0F3C();
  v48 = v47;
  v131 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v130 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v53 = &v130 - v52;
  v54 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v54);
  v56 = &v130 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_218F26EF4();
  result = 0;
  if ((v57 & 1) == 0)
  {
    sub_218F310C8(v9, v56, type metadata accessor for TagFeedModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
        v102 = *(v101 + 48);
        v103 = sub_219BF1584();
        (*(*(v103 - 8) + 8))(&v56[v102], v103);
        v59 = type metadata accessor for TagFeedGapLocation;
        goto LABEL_4;
      case 2u:
        v84 = v155;
        v83 = v156;
        v85 = v146;
        (*(v155 + 32))(v146, v56, v156);
        sub_219BF07F4();
        v86 = v161;
        v87 = [v161 feedType];

        v88 = v145;
        (*(v84 + 16))(v145, v85, v83);
        if (v87 == 11)
        {
          v90 = v159;
          v89 = v160;
          (*(v157 + 16))(v159, v158, v160);
          WitnessTable = swift_getWitnessTable();
          v92 = MEMORY[0x277D84FA0];
          v93 = v88;
          v94 = v90;
        }

        else
        {
          sub_218F31064(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
          v124 = sub_219BE5A04();
          v125 = *(v124 - 8);
          v126 = (*(v125 + 80) + 32) & ~*(v125 + 80);
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_219C09BA0;
          (*(v125 + 104))(v127 + v126, *MEMORY[0x277D31A88], v124);
          v128 = sub_2194B21CC(v127);
          swift_setDeallocating();
          (*(v125 + 8))(v127 + v126, v124);
          swift_deallocClassInstance();
          v129 = v159;
          v89 = v160;
          (*(v157 + 16))(v159, v158, v160);
          WitnessTable = swift_getWitnessTable();
          v93 = v88;
          v94 = v129;
          v92 = v128;
        }

        v113 = sub_219876E04(v93, v94, v92, v89, WitnessTable);
        goto LABEL_21;
      case 3u:
        v95 = v131;
        (*(v131 + 32))(v53, v56, v48);
        (*(v95 + 16))(v51, v53, v48);
        v97 = v159;
        v96 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v98 = swift_getWitnessTable();
        v99 = sub_219876984(v51, v97, v96, v98);
        (*(v95 + 8))(v53, v48);
        return v99;
      case 4u:
        v79 = v132;
        (*(v132 + 32))(v45, v56, v40);
        (*(v79 + 16))(v43, v45, v40);
        v81 = v159;
        v80 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v82 = swift_getWitnessTable();
        v78 = sub_219876DD0(v43, v81, v80, v82);
        (*(v79 + 8))(v45, v40);
        goto LABEL_22;
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xDu:
        v59 = type metadata accessor for TagFeedModel;
LABEL_4:
        v60 = v59;
        v61 = v56;
        goto LABEL_5;
      case 7u:
        sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
        v115 = *(v114 + 48);
        v116 = v137;
        v117 = v134;
        v118 = v139;
        (*(v137 + 32))(v134, v56, v139);
        v119 = sub_219BE5A14();
        v120 = v133;
        (*(v116 + 16))(v133, v117, v118);
        v122 = v159;
        v121 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v123 = swift_getWitnessTable();
        v78 = sub_219876644(v120, v122, v119, v121, v123);
        (*(v116 + 8))(v117, v118);
        (*(v155 + 8))(&v56[v115], v156);
        goto LABEL_22;
      case 0xAu:
        v62 = v138;
        v63 = v136;
        v64 = v140;
        (*(v138 + 32))(v136, v56, v140);
        v70 = v135;
        (*(v62 + 16))(v135, v63, v64);
        v72 = v159;
        v71 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v73 = swift_getWitnessTable();
        v69 = sub_219876E38(v70, v72, v71, v73);
        goto LABEL_9;
      case 0xBu:
        v62 = v143;
        v63 = v142;
        v64 = v144;
        (*(v143 + 32))(v142, v56, v144);
        v74 = v141;
        (*(v62 + 16))(v141, v63, v64);
        v76 = v159;
        v75 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v77 = swift_getWitnessTable();
        v69 = sub_219876E6C(v74, v76, v75, v77);
        goto LABEL_9;
      case 0xCu:
        v85 = v152;
        v84 = v153;
        v83 = v154;
        (*(v153 + 32))(v152, v56, v154);
        v104 = v151;
        (*(v84 + 16))(v151, v85, v83);
        sub_218F31064(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
        v105 = sub_219BE5A04();
        v106 = *(v105 - 8);
        v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_219C09BA0;
        (*(v106 + 104))(v108 + v107, *MEMORY[0x277D31AC8], v105);
        v109 = sub_2194B21CC(v108);
        swift_setDeallocating();
        (*(v106 + 8))(v108 + v107, v105);
        swift_deallocClassInstance();
        v111 = v159;
        v110 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v112 = swift_getWitnessTable();
        v113 = sub_219876EA0(v104, v111, v109, v110, v112);
LABEL_21:
        v78 = v113;
        (*(v84 + 8))(v85, v83);
        goto LABEL_22;
      case 0xEu:
        v63 = v148;
        v62 = v149;
        v64 = v150;
        (*(v149 + 32))(v148, v56, v150);
        v65 = v147;
        (*(v62 + 16))(v147, v63, v64);
        v67 = v159;
        v66 = v160;
        (*(v157 + 16))(v159, v158, v160);
        v68 = swift_getWitnessTable();
        v69 = sub_219876ED4(v65, v67, v66, v68);
LABEL_9:
        v78 = v69;
        (*(v62 + 8))(v63, v64);
LABEL_22:
        result = v78;
        break;
      default:

        sub_2186F0CC0();
        v60 = type metadata accessor for TagFeedGapLocation;
        v61 = &v56[*(v100 + 48)];
LABEL_5:
        sub_218F31004(v61, v60);
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_218F2BFC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v141 = a8;
  v137 = a5;
  v146 = a4;
  v147 = a1;
  v140 = a9;
  v131 = sub_219BEBCB4();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v128 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BEC504();
  v132 = *(v133 - 8);
  v14 = MEMORY[0x28223BE20](v133);
  v16 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v119 - v17;
  v19 = sub_219BEBF14();
  v129 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v23 = v22;
  v134 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = a2;
  v136 = a7;
  v148 = a2;
  v149 = a3;
  v138 = a3;
  v139 = a6;
  v150 = a6;
  v151 = a7;
  v26 = sub_219BEB334();
  v27 = *(v26 - 8);
  v144 = v26;
  v145 = v27;
  MEMORY[0x28223BE20](v26);
  v143 = &v119 - v28;
  v29 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v142, v31, type metadata accessor for TagFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {

        sub_2186F0CC0();
        v72 = type metadata accessor for TagFeedGapLocation;
        v73 = &v31[*(v71 + 48)];
LABEL_35:
        sub_218F31004(v73, v72);
        return 0;
      }

      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v112 = *(v111 + 48);
      v113 = sub_219BF1584();
      (*(*(v113 - 8) + 8))(&v31[v112], v113);
      v110 = type metadata accessor for TagFeedGapLocation;
LABEL_34:
      v72 = v110;
      v73 = v31;
      goto LABEL_35;
    }

    if ((EnumCaseMultiPayload - 2) >= 3)
    {
LABEL_32:
      v110 = type metadata accessor for TagFeedModel;
      goto LABEL_34;
    }

    goto LABEL_6;
  }

  v142 = v18;
  v125 = v16;
  v126 = v21;
  v127 = v19;
  if ((EnumCaseMultiPayload - 9) < 6)
  {
LABEL_6:
    sub_218F31004(v31, type metadata accessor for TagFeedModel);
    sub_218F31064(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_219C09BA0;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C12A40;
    v34 = sub_219BE6684();
    v35 = v140;
    v36 = v135;
    v37 = v136;
    v39 = v137;
    v38 = v138;
    v40 = v139;
    v41 = v141;
    v42 = sub_219BE6654();
    if (v42)
    {
      v43 = MEMORY[0x277D6D630];
      v44 = v34;
    }

    else
    {
      v44 = 0;
      v43 = 0;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
    }

    *(v33 + 32) = v42;
    *(v33 + 56) = v44;
    *(v33 + 64) = v43;
    v45 = sub_219BE6634();
    if (v45)
    {
      v46 = MEMORY[0x277D6D630];
      v47 = v34;
    }

    else
    {
      v47 = 0;
      v46 = 0;
      *(v33 + 80) = 0;
      *(v33 + 88) = 0;
    }

    *(v33 + 72) = v45;
    *(v33 + 96) = v47;
    *(v33 + 104) = v46;
    v48 = sub_219BE6614();
    if (v48)
    {
      v49 = MEMORY[0x277D6D630];
      v50 = v34;
    }

    else
    {
      v50 = 0;
      v49 = 0;
      *(v33 + 120) = 0;
      *(v33 + 128) = 0;
    }

    *(v33 + 112) = v48;
    *(v33 + 136) = v50;
    *(v33 + 144) = v49;
    v51 = sub_219BE6664();
    v142 = v34;
    if (v51)
    {
      v52 = MEMORY[0x277D6D630];
      v53 = v34;
    }

    else
    {
      v53 = 0;
      v52 = 0;
      *(v33 + 160) = 0;
      *(v33 + 168) = 0;
    }

    *(v33 + 152) = v51;
    *(v33 + 176) = v53;
    *(v33 + 184) = v52;
    v148 = v36;
    v149 = v38;
    v150 = v146;
    v151 = v39;
    v152 = v40;
    v153 = v37;
    v154 = v41;
    v155 = v35;
    sub_219BE57D4();
    v54 = v143;
    sub_219BE57C4();
    v55 = type metadata accessor for TagFeedServiceConfig();
    sub_2186EFCF4(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v56 = v144;
    v57 = sub_219BEB284();
    v58 = *(v145 + 8);
    v145 += 8;
    v58(v54, v56);
    sub_219BE57B4();
    v146 = v55;
    v59 = v142;
    v60 = sub_219BE6624();

    sub_21885AB78(v57);
    if (v60)
    {
      v61 = v59;
      v62 = MEMORY[0x277D6D630];
    }

    else
    {
      v61 = 0;
      v62 = 0;
      *(v33 + 200) = 0;
      *(v33 + 208) = 0;
    }

    *(v33 + 192) = v60;
    *(v33 + 216) = v61;
    *(v33 + 224) = v62;
    v63 = v143;
    sub_219BE57C4();
    v64 = v144;
    v65 = sub_219BEB284();
    v58(v63, v64);
    sub_2186EFCF4(&unk_280ECCB70, type metadata accessor for TagFeedServiceConfig);
    sub_2186EFCF4(&unk_280ECCB80, type metadata accessor for TagFeedServiceConfig);
    sub_2186EFCF4(&unk_280EDE970, type metadata accessor for TagFeedGroup);
    sub_2186EFCF4(&qword_280EDE990, type metadata accessor for TagFeedGroup);
    v66 = v142;
    v67 = sub_219BE6604();
    sub_21885AB78(v65);
    if (v67)
    {
      v68 = v66;
      v69 = MEMORY[0x277D6D630];
    }

    else
    {
      v68 = 0;
      v69 = 0;
      *(v33 + 240) = 0;
      *(v33 + 248) = 0;
    }

    *(v33 + 232) = v67;
    *(v33 + 256) = v68;
    *(v33 + 264) = v69;
    sub_219BE5A14();
    sub_219BE6B74();
    sub_219BE6B44();

    return sub_219BE59D4();
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_32;
  }

  v74 = *(v134 + 32);
  v120 = v25;
  v121 = v31;
  v123 = v23;
  v74(v25, v31, v23);
  sub_218F31064(0, &qword_280E8BF40, sub_218F31130, MEMORY[0x277D84560]);
  v75 = swift_allocObject();
  v122 = v75;
  *(v75 + 16) = xmmword_219C12A40;
  v76 = v75;
  v124 = sub_219BE6684();
  v78 = v135;
  v77 = v136;
  v79 = v137;
  *(v76 + 32) = sub_219BE6654();
  v80 = v140;
  v81 = sub_219BE6634();
  v82 = v122;
  *(v122 + 40) = v81;
  v83 = v78;
  v84 = v138;
  v85 = v79;
  v86 = v139;
  v87 = v77;
  v88 = v141;
  *(v82 + 48) = sub_219BE6614();
  v89 = v146;
  *(v82 + 56) = sub_219BE6664();
  v148 = v83;
  v149 = v84;
  v150 = v89;
  v151 = v85;
  v152 = v86;
  v153 = v87;
  v154 = v88;
  v155 = v80;
  sub_219BE57D4();
  v90 = v143;
  sub_219BE57C4();
  type metadata accessor for TagFeedServiceConfig();
  v146 = type metadata accessor for TagFeedServiceConfig;
  sub_2186EFCF4(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  v91 = v144;
  v92 = sub_219BEB284();
  v145 = *(v145 + 8);
  (v145)(v90, v91);
  sub_219BE57B4();
  v93 = sub_219BE6624();

  sub_21885AB78(v92);
  v94 = v122;
  *(v122 + 64) = v93;
  sub_219BE57C4();
  v95 = sub_219BEB284();
  (v145)(v90, v91);
  v96 = v146;
  sub_2186EFCF4(&unk_280ECCB70, v146);
  sub_2186EFCF4(&unk_280ECCB80, v96);
  sub_2186EFCF4(&unk_280EDE970, type metadata accessor for TagFeedGroup);
  sub_2186EFCF4(&qword_280EDE990, type metadata accessor for TagFeedGroup);
  v97 = v120;
  v98 = sub_219BE6604();
  sub_21885AB78(v95);
  *(v94 + 72) = v98;
  v99 = v94;
  v148 = v94;
  v100 = v142;
  sub_219BF07D4();
  v101 = v132;
  v102 = v133;
  if ((*(v132 + 88))(v100, v133) == *MEMORY[0x277D2D6A8])
  {
    (*(v101 + 96))(v100, v102);
    v103 = v129;
    v104 = v126;
    v105 = v127;
    (*(v129 + 32))(v126, v100, v127);
    sub_219BEBF04();
    v106 = v125;
    v107 = sub_219BF07D4();
    MEMORY[0x21CEC3270](v107);
    (*(v101 + 8))(v106, v102);
    v108 = v128;
    sub_219BEC434();

    sub_219BE65D4();
    v109 = (*(v130 + 8))(v108, v131);
    MEMORY[0x21CECC690](v109);
    if (*(v148 + 16) >= *(v148 + 24) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    (*(v103 + 8))(v104, v105);
    v99 = v148;
  }

  else
  {
    (*(v101 + 8))(v100, v102);
  }

  v114 = v134;
  sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
  v116 = *(v115 + 48);
  sub_219BE5A14();
  sub_218F31064(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  sub_219BE6B74();
  sub_218ACE7A4(v99);

  sub_219BE6B44();

  v117 = sub_219BE59D4();
  (*(v114 + 8))(v97, v123);
  sub_2186F0E54();
  (*(*(v118 - 8) + 8))(&v121[v116], v118);
  return v117;
}

uint64_t sub_218F2D0E0@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v68 = sub_219BEC504();
  v65 = *(v68 - 1);
  MEMORY[0x28223BE20](v68);
  v64 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BF0F34();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BF2B34();
  v72 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEE614();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF0614();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v1;
  sub_218F2994C(v19);
  sub_219BF04E4();
  (*(v17 + 8))(v19, v16);
  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x277D32070])
  {
    (*(v13 + 96))(v15, v12);
    v21 = sub_219BEECB4();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 88))(v15, v21);
    v24 = *MEMORY[0x277D32338];
    (*(v22 + 8))(v15, v21);
    if (v23 == v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(v13 + 8))(v15, v12);
  }

  v25 = v20;
  sub_218F310C8(v20, v11, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v59 = *(v58 + 48);
      v60 = sub_219BF1584();
      (*(*(v60 - 8) + 8))(v11 + v59, v60);
      v26 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_7;
    case 2u:
      (*(v74 + 32))();
      sub_218F31064(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v33 = *(v32 - 8);
      v69 = *(v33 + 72);
      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = swift_allocObject();
      v70 = v35;
      *(v35 + 16) = xmmword_219C09EC0;
      v36 = v35 + v34;
      v37 = v62;
      sub_219BF07D4();
      sub_219BF0F14();
      v68 = *(v63 + 8);
      v68(v37, v66);
      sub_218F24FE4();
      v38 = v71;
      sub_219BF2B14();
      sub_219BE5C34();
      v72 = *(v72 + 8);
      (v72)(v38, v76);
      v39 = sub_219BE5C44();
      v67 = *(*(v39 - 8) + 56);
      (v67)(v36, 0, 1, v39);
      sub_219BF07D4();
      sub_219BF0F14();
      v68(v37, v66);
      sub_218F24FE4();
      sub_219BF2B14();
      v40 = v69;
      sub_219BE5C04();
      (v72)(v38, v76);
      (v67)(v36 + v40, 0, 1, v39);
      v41 = v77;
      sub_219BE68A4();
      (*(v74 + 8))(v73, v75);
      v42 = sub_219BE6894();
      return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v26 = type metadata accessor for TagFeedModel;
LABEL_7:
      v27 = v26;
      v28 = v11;
      goto LABEL_8;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v73 = *(v43 + 48);
      (*(v69 + 32))();
      sub_218F31064(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v45 = *(v44 - 8);
      v63 = *(v45 + 72);
      v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v47 = swift_allocObject();
      v66 = v47;
      *(v47 + 16) = xmmword_219C09EC0;
      v48 = v47 + v46;
      v49 = v64;
      sub_219BF07D4();
      sub_219BEC4F4();
      v61[1] = v25;
      v65 = *(v65 + 8);
      (v65)(v49, v68);
      sub_218F24FE4();
      v50 = v71;
      sub_219BF2B14();
      sub_219BE5C34();
      v72 = *(v72 + 8);
      (v72)(v50, v76);
      v51 = sub_219BE5C44();
      v52 = *(v51 - 8);
      v61[0] = *(v52 + 56);
      v62 = (v52 + 56);
      (v61[0])(v48, 0, 1, v51);
      v53 = v67;
      sub_219BF07D4();
      sub_219BEC4F4();
      (v65)(v49, v68);
      sub_218F24FE4();
      sub_219BF2B14();
      v54 = v63;
      sub_219BE5C04();
      (v72)(v50, v76);
      (v61[0])(v48 + v54, 0, 1, v51);
      v55 = v77;
      sub_219BE68A4();
      (*(v69 + 8))(v53, v70);
      v56 = sub_219BE6894();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      return (*(v74 + 8))(&v73[v11], v75);
    case 0xEu:
      v31 = sub_219BE6894();
      (*(*(v31 - 8) + 56))(v77, 1, 1, v31);
      return sub_218F31004(v11, type metadata accessor for TagFeedModel);
    default:

      sub_2186F0CC0();
      v27 = type metadata accessor for TagFeedGapLocation;
      v28 = v11 + *(v57 + 48);
LABEL_8:
      sub_218F31004(v28, v27);
      break;
  }

LABEL_9:
  v29 = sub_219BE6894();
  return (*(*(v29 - 8) + 56))(v77, 1, 1, v29);
}

uint64_t sub_218F2DD94@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v75 = sub_219BEC504();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v4 = *(v3 - 1);
  v73 = v3;
  v74 = v4;
  MEMORY[0x28223BE20](v3);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0F34();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  MEMORY[0x28223BE20](v8);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEE614();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF0614();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v1;
  sub_218F2994C(v21);
  sub_219BF04E4();
  (*(v19 + 8))(v21, v18);
  if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D32070])
  {
    (*(v15 + 96))(v17, v14);
    v23 = sub_219BEECB4();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 88))(v17, v23);
    v26 = *MEMORY[0x277D32338];
    (*(v24 + 8))(v17, v23);
    if (v25 == v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(v15 + 8))(v17, v14);
  }

  sub_218F310C8(v22, v13, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v63 = *(v62 + 48);
      v64 = sub_219BF1584();
      (*(*(v64 - 8) + 8))(&v13[v63], v64);
      v27 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_7;
    case 2u:
      v32 = v67;
      v33 = v13;
      v34 = v76;
      (*(v77 + 32))(v67, v33, v76);
      sub_218F31064(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v36 = *(v35 - 8);
      v74 = *(v36 + 72);
      v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = swift_allocObject();
      v75 = v38;
      *(v38 + 16) = xmmword_219C09EC0;
      v39 = v38 + v37;
      v40 = v66;
      sub_219BF07D4();
      sub_219BF0F14();
      v41 = v69;
      v73 = *(v68 + 8);
      v73(v40, v69);
      sub_218F24FE4();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v42 = sub_219BE5C44();
      v43 = *(*(v42 - 8) + 56);
      v43(v39, 0, 1, v42);
      sub_219BF07D4();
      sub_219BF0F14();
      v73(v40, v41);
      v44 = v74;
      sub_219BE5C14();
      swift_unknownObjectRelease();
      v43(v39 + v44, 0, 1, v42);
      v45 = v78;
      sub_219BE68A4();
      (*(v77 + 8))(v32, v34);
      v46 = sub_219BE6894();
      return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v27 = type metadata accessor for TagFeedModel;
LABEL_7:
      v28 = v27;
      v29 = v13;
      goto LABEL_8;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v69 = *(v47 + 48);
      v48 = v73;
      v49 = v71;
      (*(v74 + 32))(v71, v13, v73);
      sub_218F31064(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v51 = *(v50 - 8);
      v67 = *(v51 + 72);
      v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = swift_allocObject();
      v68 = v53;
      *(v53 + 16) = xmmword_219C09EC0;
      v54 = v53 + v52;
      v55 = v70;
      sub_219BF07D4();
      sub_219BEC4F4();
      v72 = *(v72 + 8);
      (v72)(v55, v75);
      sub_218F24FE4();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v56 = sub_219BE5C44();
      v57 = *(*(v56 - 8) + 56);
      v57(v54, 0, 1, v56);
      sub_219BF07D4();
      sub_219BEC4F4();
      (v72)(v55, v75);
      v58 = v67;
      sub_219BE5C14();
      swift_unknownObjectRelease();
      v57(&v58[v54], 0, 1, v56);
      v59 = v78;
      sub_219BE68A4();
      (*(v74 + 8))(v49, v48);
      v60 = sub_219BE6894();
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      return (*(v77 + 8))(&v13[v69], v76);
    default:

      sub_2186F0CC0();
      v28 = type metadata accessor for TagFeedGapLocation;
      v29 = &v13[*(v61 + 48)];
LABEL_8:
      sub_218F31004(v29, v28);
      break;
  }

LABEL_9:
  v30 = sub_219BE6894();
  return (*(*(v30 - 8) + 56))(v78, 1, 1, v30);
}

uint64_t sub_218F2E8B8()
{
  v1 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v0, v3, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v14 = *(v13 + 48);
      v15 = sub_219BF1584();
      (*(*(v15 - 8) + 8))(&v3[v14], v15);
      v4 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v4 = type metadata accessor for TagFeedModel;
LABEL_3:
      sub_218F31004(v3, v4);
      return 0;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v7 = *(v6 + 48);
      sub_2186F0E54();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      sub_2186EAD48();
      (*(*(v9 - 8) + 8))(v3, v9);
      return 0;
    case 8u:
      v10 = type metadata accessor for TagFeedModel;
      v11 = v3;
      goto LABEL_9;
    default:

      sub_2186F0CC0();
      v10 = type metadata accessor for TagFeedGapLocation;
      v11 = &v3[*(v12 + 48)];
LABEL_9:
      sub_218F31004(v11, v10);
      return 1;
  }
}

uint64_t sub_218F2EB3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v2, v6, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v20 = *(v19 + 48);
      v21 = sub_219BF1584();
      (*(*(v21 - 8) + 8))(&v6[v20], v21);
      v7 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v7 = type metadata accessor for TagFeedModel;
LABEL_3:
      v8 = v7;
      v9 = v6;
      goto LABEL_4;
    case 6u:
      v12 = sub_219BF0D74();
      v13 = *(v12 - 8);
      (*(v13 + 32))(a1, v6, v12);
      return (*(v13 + 56))(a1, 0, 1, v12);
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v15 = *(v14 + 48);
      sub_2186F0E54();
      (*(*(v16 - 8) + 8))(&v6[v15], v16);
      sub_2186EAD48();
      (*(*(v17 - 8) + 8))(v6, v17);
      goto LABEL_5;
    default:

      sub_2186F0CC0();
      v8 = type metadata accessor for TagFeedGapLocation;
      v9 = &v6[*(v18 + 48)];
LABEL_4:
      sub_218F31004(v9, v8);
LABEL_5:
      v10 = sub_219BF0D74();
      return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_218F2EE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BF0D74();
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218F2EEF8()
{
  v1 = sub_219BF0F34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v0, v12, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v24 = *(v23 + 48);
      v25 = sub_219BF1584();
      (*(*(v25 - 8) + 8))(&v12[v24], v25);
      v13 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      (*(v7 + 32))(v9, v12, v6);
      sub_219BF07D4();
      v17 = sub_219BF0F14();
      (*(v2 + 8))(v4, v1);
      v18 = [v17 identifier];
      swift_unknownObjectRelease();
      v19 = sub_219BF5414();

      (*(v7 + 8))(v9, v6);
      return v19;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v13 = type metadata accessor for TagFeedModel;
LABEL_3:
      v14 = v13;
      v15 = v12;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      (*(v7 + 8))(&v12[*(v20 + 48)], v6);
      sub_2186EAD48();
      (*(*(v21 - 8) + 8))(v12, v21);
      return 0;
    default:

      sub_2186F0CC0();
      v14 = type metadata accessor for TagFeedGapLocation;
      v15 = &v12[*(v22 + 48)];
LABEL_4:
      sub_218F31004(v15, v14);
      return 0;
  }
}

uint64_t sub_218F2F2F0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a2;
  v105 = a1;
  v106 = a4;
  v87 = sub_219BEBD34();
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BF0F34();
  v81 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v83 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v80 - v8;
  v9 = sub_219BEBD44();
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v80 - v13;
  v95 = sub_219BEBD14();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0BD4();
  v96 = *(v15 - 8);
  v97 = v15;
  MEMORY[0x28223BE20](v15);
  v99 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TagFeedModel(0);
  v18 = MEMORY[0x28223BE20](v17);
  v86 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  sub_2186F0E54();
  v25 = *(v24 - 8);
  v100 = v24;
  v101 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v82 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v104 = &v80 - v28;
  v29 = sub_219BEC504();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  v36 = sub_219BEC514();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v39, v105, v36);
  v40 = (*(v37 + 88))(v39, v36);
  if (v40 == *MEMORY[0x277D2D6C0])
  {
    (*(v37 + 96))(v39, v36);
    (*(v30 + 32))(v35, v39, v29);
    sub_218F310C8(a3, v23, type metadata accessor for TagFeedModel);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = v100;
      v103 = *(v101 + 32);
      v105 = v17;
      (v103)(v104, v23, v100);
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v43 = *(v42 + 48);
      (*(v30 + 16))(v33, v35, v29);
      (*(v96 + 16))(v99, v98, v97);
      v44 = MEMORY[0x277D2D6B0];
      sub_2186EFCF4(&unk_280EE32C0, MEMORY[0x277D2D6B0]);
      sub_2186EFCF4(&qword_280EE32D0, v44);
      v45 = v106;
      sub_219BF0844();
      (*(v30 + 8))(v35, v29);
      (v103)(v45 + v43, v104, v41);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v30 + 8))(v35, v29);
    v52 = type metadata accessor for TagFeedModel;
    v53 = v23;
  }

  else
  {
    if (v40 == *MEMORY[0x277D2D6C8])
    {
      (*(v37 + 96))(v39, v36);
      v47 = v92;
      v49 = v94;
      v48 = v95;
      (*(v92 + 32))(v94, v39, v95);
      v50 = v93;
      sub_219BEBD04();
      v51 = v91;
      sub_218F310C8(a3, v91, type metadata accessor for TagFeedModel);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          (*(v103 + 8))(v50, v102);
          (*(v47 + 8))(v49, v48);
          goto LABEL_28;
        case 2u:
          v60 = v100;
          v61 = v82;
          (*(v101 + 32))(v82, v51, v100);
          v62 = v83;
          sub_219BF07D4();
          v63 = v85;
          sub_219BF0E74();
          v64 = v81;
          v105 = *(v81 + 8);
          v65 = v84;
          v105(v62, v84);
          (*(v64 + 16))(v62, v63, v65);
          (*(v96 + 16))(v99, v98, v97);
          sub_219BF07F4();
          v107 = v108;
          v104 = sub_2186FAF08();
          v66 = MEMORY[0x277D33058];
          v98 = sub_2186EFCF4(&unk_280E90A40, MEMORY[0x277D33058]);
          sub_2186EFCF4(&qword_280E90A50, v66);
          sub_2186EFCF4(&qword_280E8E558, sub_2186FAF08);
          sub_219BF0824();
          v105(v63, v65);
          (*(v101 + 8))(v61, v60);
          (*(v103 + 8))(v93, v102);
          (*(v47 + 8))(v94, v95);
          return swift_storeEnumTagMultiPayload();
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
          (*(v103 + 8))(v50, v102);
          (*(v47 + 8))(v49, v48);
          goto LABEL_11;
        case 7u:
          (*(v103 + 8))(v50, v102);
          (*(v47 + 8))(v49, v48);
          goto LABEL_24;
        default:
          (*(v103 + 8))(v50, v102);
          (*(v47 + 8))(v49, v48);
          goto LABEL_26;
      }
    }

    if (v40 != *MEMORY[0x277D2D6D0])
    {
      sub_218F310C8(a3, v106, type metadata accessor for TagFeedModel);
      return (*(v37 + 8))(v39, v36);
    }

    (*(v37 + 96))(v39, v36);
    v54 = v88;
    v55 = v90;
    v56 = v39;
    v57 = v87;
    (*(v88 + 32))(v90, v56, v87);
    v58 = v89;
    sub_219BEBD24();
    v51 = v86;
    sub_218F310C8(a3, v86, type metadata accessor for TagFeedModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        (*(v103 + 8))(v58, v102);
        (*(v54 + 8))(v55, v57);
LABEL_28:
        sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
        v78 = *(v77 + 48);
        v79 = sub_219BF1584();
        (*(*(v79 - 8) + 8))(v51 + v78, v79);
        v59 = type metadata accessor for TagFeedGapLocation;
        goto LABEL_12;
      case 2u:
        v67 = v82;
        (*(v101 + 32))(v82, v51, v100);
        v68 = v83;
        sub_219BF07D4();
        v69 = v85;
        sub_219BF0E74();
        v70 = v81;
        v105 = *(v81 + 8);
        v71 = v84;
        v105(v68, v84);
        (*(v70 + 16))(v68, v69, v71);
        (*(v96 + 16))(v99, v98, v97);
        v72 = v100;
        sub_219BF07F4();
        v107 = v108;
        v104 = sub_2186FAF08();
        v73 = MEMORY[0x277D33058];
        sub_2186EFCF4(&unk_280E90A40, MEMORY[0x277D33058]);
        sub_2186EFCF4(&qword_280E90A50, v73);
        sub_2186EFCF4(&qword_280E8E558, sub_2186FAF08);
        sub_219BF0824();
        v105(v85, v71);
        (*(v101 + 8))(v67, v72);
        (*(v103 + 8))(v89, v102);
        (*(v54 + 8))(v90, v57);
        return swift_storeEnumTagMultiPayload();
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        (*(v103 + 8))(v58, v102);
        (*(v54 + 8))(v55, v57);
LABEL_11:
        v59 = type metadata accessor for TagFeedModel;
LABEL_12:
        v52 = v59;
        v53 = v51;
        break;
      case 7u:
        (*(v103 + 8))(v58, v102);
        (*(v54 + 8))(v55, v57);
LABEL_24:
        sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
        (*(v101 + 8))(v51 + *(v74 + 48), v100);
        sub_2186EAD48();
        (*(*(v75 - 8) + 8))(v51, v75);
        return sub_218F310C8(a3, v106, type metadata accessor for TagFeedModel);
      default:
        (*(v103 + 8))(v58, v102);
        (*(v54 + 8))(v55, v57);
LABEL_26:

        sub_2186F0CC0();
        v52 = type metadata accessor for TagFeedGapLocation;
        v53 = v51 + *(v76 + 48);
        break;
    }
  }

  sub_218F31004(v53, v52);
  return sub_218F310C8(a3, v106, type metadata accessor for TagFeedModel);
}

uint64_t sub_218F303D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(a1, v6, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v17 = *(v16 + 48);
      v18 = sub_219BF1584();
      (*(*(v18 - 8) + 8))(&v6[v17], v18);
      v7 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v7 = type metadata accessor for TagFeedModel;
LABEL_3:
      v8 = v7;
      v9 = v6;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v12 = *(v11 + 48);
      sub_2186F0E54();
      (*(*(v13 - 8) + 32))(a2, &v6[v12], v13);
      swift_storeEnumTagMultiPayload();
      sub_2186EAD48();
      return (*(*(v14 - 8) + 8))(v6, v14);
    default:

      sub_2186F0CC0();
      v8 = type metadata accessor for TagFeedGapLocation;
      v9 = &v6[*(v15 + 48)];
LABEL_4:
      sub_218F31004(v9, v8);
      return sub_218F310C8(a1, a2, type metadata accessor for TagFeedModel);
  }
}

uint64_t sub_218F30674@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = sub_219BF0B74();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C60(0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF04A4();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C();
  v57 = v10;
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0F34();
  v56 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v68, v26, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v50 = *(v49 + 48);
      v51 = sub_219BF1584();
      (*(*(v51 - 8) + 8))(&v26[v50], v51);
      v27 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      (*(v21 + 32))(v23, v26, v20);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v56 + 8))(v15, v13);
      sub_219BF1624();
      v41 = sub_219BF1634();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v18, 1, v41) == 1)
      {
        (*(v21 + 8))(v23, v20);
        v38 = sub_218AC1C94;
        goto LABEL_12;
      }

      v54 = v69;
      v69[3] = v41;
      v54[4] = sub_2186EFCF4(&qword_280E90860, MEMORY[0x277D33410]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      (*(v42 + 32))(boxed_opaque_existential_1, v18, v41);
      result = (*(v21 + 8))(v23, v20);
      break;
    case 3u:
      v44 = v60;
      v45 = v57;
      (*(v60 + 32))(v12, v26, v57);
      sub_219BF07D4();
      sub_219BF0404();
      (*(v58 + 8))(v9, v59);
      v46 = sub_219BF09E4();
      v47 = v69;
      v69[3] = v46;
      v47[4] = sub_2186EFCF4(&qword_280E90CA8, MEMORY[0x277D32FA8]);
      __swift_allocate_boxed_opaque_existential_1(v47);
      sub_219BF09D4();
      return (*(v44 + 8))(v12, v45);
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v27 = type metadata accessor for TagFeedModel;
LABEL_3:
      v28 = v27;
      v29 = v26;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      (*(v21 + 8))(&v26[*(v39 + 48)], v20);
      sub_2186EAD48();
      result = (*(*(v40 - 8) + 8))(v26, v40);
      goto LABEL_5;
    case 0xEu:
      v33 = v64;
      v32 = v65;
      v34 = v66;
      (*(v65 + 32))(v64, v26, v66);
      v35 = v61;
      sub_219BF07D4();
      sub_219BF0B44();
      (*(v62 + 8))(v35, v63);
      v18 = v67;
      sub_219BED9C4();
      v36 = sub_219BED9D4();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v18, 1, v36) == 1)
      {
        (*(v32 + 8))(v33, v34);
        v38 = sub_218AC1C60;
LABEL_12:
        result = sub_218F31004(v18, v38);
        v43 = v69;
        *v69 = 0u;
        *(v43 + 1) = 0u;
        v43[4] = 0;
      }

      else
      {
        v52 = v69;
        v69[3] = v36;
        v52[4] = sub_2186EFCF4(&qword_27CC0D938, MEMORY[0x277D31CE8]);
        v53 = __swift_allocate_boxed_opaque_existential_1(v52);
        (*(v37 + 32))(v53, v18, v36);
        result = (*(v32 + 8))(v33, v34);
      }

      break;
    default:

      sub_2186F0CC0();
      v28 = type metadata accessor for TagFeedGapLocation;
      v29 = &v26[*(v48 + 48)];
LABEL_4:
      result = sub_218F31004(v29, v28);
LABEL_5:
      v31 = v69;
      v69[4] = 0;
      *v31 = 0u;
      *(v31 + 1) = 0u;
      return result;
  }

  return result;
}