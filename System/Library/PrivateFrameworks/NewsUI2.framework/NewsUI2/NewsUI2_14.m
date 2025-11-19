uint64_t sub_21884100C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v3 = sub_219BDD804();
  v138 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v139 = (&v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277D83D88];
  sub_218834EB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v135 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v135 = &v135 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v135 - v16;
  MEMORY[0x28223BE20](v15);
  v136 = &v135 - v17;
  v142 = sub_219BDB954();
  v143 = *(v142 - 8);
  v18 = MEMORY[0x28223BE20](v142);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v140 = &v135 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v135 - v23;
  sub_218834EB8(0, &unk_280EE8C10, MEMORY[0x277D30048], v5);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v135 - v26;
  v28 = sub_219BDD944();
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v135 - v32;
  v34 = type metadata accessor for NewsActivity2.Article(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v135 - v38;
  v40 = *a1;
  v41 = (v40 >> 58) & 0x3C | (v40 >> 1) & 3;
  if (v41 <= 7)
  {
    if (v41 > 3)
    {
      if ((v41 - 5) >= 3)
      {
        v55 = swift_projectBox();
        v56 = v141;
        v57 = v142;
        (*(v143 + 16))(v141, v55, v142);
        v42 = *(v143 + 56);
        v43 = v56;
        v44 = 0;
        v45 = v57;
        goto LABEL_5;
      }

LABEL_4:
      v42 = *(v143 + 56);
      v43 = v141;
      v44 = 1;
      v45 = v142;
LABEL_5:

      return v42(v43, v44, 1, v45);
    }

    if ((v41 - 1) >= 2)
    {
      goto LABEL_4;
    }

    v47 = &v135 - v38;
    sub_2187B2C48();
    v39 = v47;
  }

  else if (v41 <= 0x3C)
  {
    if (((1 << ((v40 >> 58) & 0x3C | (v40 >> 1) & 3)) & 0x1FFFFFFFBFCFFE00) != 0)
    {
      goto LABEL_4;
    }

    if (((1 << ((v40 >> 58) & 0x3C | (v40 >> 1) & 3)) & 0x300000) != 0)
    {
      memmove(&__dst, ((v40 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v58 = v158 >> 6;
      if (v58)
      {
        v59 = v142;
        if (v58 == 1)
        {
          sub_219092568(&__dst, v150);
        }

        else
        {
          v150[0] = __dst;
          v150[1] = v153;
          v150[2] = v154;
          v150[3] = v155;
          v150[4] = v156;
          v151 = v157 & 1;
          sub_21896FE24(__dst, v153, v154, v155, v156, v157 & 1);

          sub_219BD47C0(v97, v98, v99, v100, v101, v102);
        }
      }

      else
      {
        v144 = __dst;
        v145 = v153;
        v146 = v154;
        v147 = v155;
        v148 = v156;
        v149 = v157 & 1;
        v90 = sub_219092568(&__dst, v150);
        v96 = [sub_219BD4870(v90 v91];
        sub_219BF5414();

        v59 = v142;
      }

      v103 = objc_opt_self();
      v104 = sub_219BF53D4();
      sub_218AAFFC4(&__dst);

      v105 = [v103 nss:v104 NewsURLForIssueID:?];

      if (v105)
      {
        sub_219BDB8B4();

        v106 = 0;
      }

      else
      {
        v106 = 1;
      }

      v89 = v141;
      (*(v143 + 56))(v9, v106, 1, v59);
      v107 = v9;
      return sub_218AB007C(v107, v89);
    }

    if (v41 == 30)
    {

      v72 = v139;
      sub_219BDE5F4();
      v73 = v138;
      v74 = (*(v138 + 88))(v72, v3);
      if (v74 == *MEMORY[0x277D2FB08])
      {
        (*(v73 + 96))(v72, v3);
        sub_218A27458();
        v76 = *(v75 + 48);
        v77 = objc_opt_self();
        v78 = sub_219BF53D4();

        v79 = [v77 nss:v78 NewsURLForRecipeID:0 articleID:?];

        v80 = v141;
        sub_219BDB8B4();

        (*(v143 + 56))(v80, 0, 1, v142);
        goto LABEL_27;
      }

      v109 = v142;
      if (v74 != *MEMORY[0x277D2FAF8])
      {
        if (v74 != *MEMORY[0x277D2FAF0])
        {

          (*(v143 + 56))(v141, 1, 1, v109);
          return (*(v73 + 8))(v72, v3);
        }

        (*(v73 + 96))(v72, v3);

        sub_2197195C0();
        v76 = *(v124 + 64);
        v125 = objc_opt_self();
        v126 = sub_219BF53D4();

        v127 = [v125 nss:v126 NewsURLForRecipeID:0 articleID:?];

        v128 = v141;
        sub_219BDB8B4();

        (*(v143 + 56))(v128, 0, 1, v109);
LABEL_27:
        v81 = sub_219BDDBF4();
        return (*(*(v81 - 8) + 8))(v72 + v76, v81);
      }

      (*(v73 + 96))(v72, v3);
      v110 = *v72;
      v111 = [*v72 identifier];
      if (!v111)
      {
        sub_219BF5414();
        v111 = sub_219BF53D4();
      }

      v112 = [v110 articles];
      sub_218731D50();
      v113 = sub_219BF5924();

      if (v113 >> 62)
      {
        result = sub_219BF7214();
        if (result)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_42:
          if ((v113 & 0xC000000000000001) != 0)
          {
            v114 = MEMORY[0x21CECE0F0](0, v113);
          }

          else
          {
            if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v114 = *(v113 + 32);
            swift_unknownObjectRetain();
          }

          v115 = [v114 identifier];
          swift_unknownObjectRelease();
          if (v115)
          {
LABEL_62:
            sub_2191B3054();
            v131 = *(v130 + 48);
            v132 = [objc_opt_self() nss:v111 NewsURLForRecipeID:v115 articleID:?];

            v133 = v141;
            sub_219BDB8B4();

            (*(v143 + 56))(v133, 0, 1, v109);
            v134 = sub_219BDDBF4();
            return (*(*(v134 - 8) + 8))(v72 + v131, v134);
          }

          sub_219BF5414();
          v115 = sub_219BF53D4();
LABEL_61:

          goto LABEL_62;
        }
      }

      v115 = 0;
      goto LABEL_61;
    }
  }

  v48 = v39;
  v49 = swift_projectBox();
  sub_219719558(v49, v48, type metadata accessor for NewsActivity2.Article);
  sub_219719558(v48, v37, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0();

  sub_218AAFD90(v37, v33, MEMORY[0x277D2FB40]);
  sub_219BDD934();
  sub_218790094(v33, MEMORY[0x277D2FB40]);
  v50 = sub_219BDE544();
  if ((*(*(v50 - 8) + 48))(v27, 1, v50) == 1)
  {
    v51 = objc_opt_self();
    sub_219719558(v48, v37, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v37, v31, MEMORY[0x277D2FB40]);
    sub_219BDD8A4();
    sub_218790094(v31, MEMORY[0x277D2FB40]);
    v52 = sub_219BF53D4();

    v53 = [v51 nss:v52 NewsURLForArticleID:?];

    if (v53)
    {
      sub_219BDB8B4();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v89 = v141;
    v108 = v142;
    sub_218790094(v48, type metadata accessor for NewsActivity2.Article);
    (*(v143 + 56))(v12, v54, 1, v108);
    v107 = v12;
    return sub_218AB007C(v107, v89);
  }

  v139 = v48;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = *(v143 + 32);
  if (EnumCaseMultiPayload != 1)
  {
    v82 = v142;
    v61(v24, v27, v142);
    v83 = objc_opt_self();
    sub_219719558(v139, v37, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v37, v31, MEMORY[0x277D2FB40]);
    sub_219BDD8A4();
    sub_218790094(v31, MEMORY[0x277D2FB40]);
    v84 = sub_219BF53D4();

    v85 = sub_219BDB854();
    v86 = [v83 nss:v84 NewsURLForArticleID:v85 routeURL:?];

    if (v86)
    {
      v87 = v136;
      sub_219BDB8B4();

      v88 = 0;
      v89 = v141;
    }

    else
    {
      v88 = 1;
      v89 = v141;
      v87 = v136;
    }

    (*(v143 + 8))(v24, v82);
    sub_218790094(v139, type metadata accessor for NewsActivity2.Article);
    (*(v143 + 56))(v87, v88, 1, v82);
    v107 = v87;
    return sub_218AB007C(v107, v89);
  }

  v62 = v140;
  v63 = v27;
  v64 = v142;
  v138 = *(v143 + 32);
  v61(v140, v63, v142);
  v65 = objc_opt_self();
  v66 = sub_219BDB854();
  v136 = v65;
  v67 = [v65 nss:v66 NewsURLForWebLinkURL:?];

  if (v67)
  {
    sub_219BDB8B4();

    (*(v143 + 8))(v62, v64);
    sub_218790094(v139, type metadata accessor for NewsActivity2.Article);
    v68 = v137;
    v69 = v138;
    (v138)(v137, v20, v64);
    v70 = *(v143 + 56);
    v143 += 56;
    v70(v68, 0, 1, v64);
    v71 = v141;
    v69(v141, v68, v64);
    return (v70)(v71, 0, 1, v64);
  }

  else
  {
    v116 = v64;
    v117 = *(v143 + 56);
    v118 = 1;
    v119 = v137;
    v117(v137, 1, 1, v116);
    sub_219719558(v139, v37, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v37, v31, MEMORY[0x277D2FB40]);
    sub_219BDD8A4();
    sub_218790094(v31, MEMORY[0x277D2FB40]);
    v120 = sub_219BF53D4();

    v121 = [v136 nss:v120 NewsURLForArticleID:?];

    if (v121)
    {
      v122 = v135;
      sub_219BDB8B4();

      v118 = 0;
      v123 = v141;
    }

    else
    {
      v123 = v141;
      v122 = v135;
    }

    v129 = v142;
    (*(v143 + 8))(v140, v142);
    sub_218790094(v139, type metadata accessor for NewsActivity2.Article);
    v117(v122, v118, 1, v129);
    sub_218AB007C(v122, v123);
    result = (*(v143 + 48))(v119, 1, v129);
    if (result != 1)
    {
      return sub_218838478(v119);
    }
  }

  return result;
}

void sub_2188422B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218842310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187609C8;

  return sub_2188424D4();
}

id sub_2188423C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CC34B8]) initWithItemContentType_];
  v7 = v1;
  sub_21883A22C(&v7);
  v3 = sub_219BF53D4();

  [v2 setDisplayName_];

  v7 = v1;
  sub_21883C730(&v7);
  v4 = sub_219BF5904();

  [v2 setKeywords_];

  v7 = v1;
  sub_218842564(&v7);
  v5 = sub_219BF53D4();

  [v2 setIdentifier_];

  return v2;
}

uint64_t sub_2188424D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187609C8;

  return sub_218842E4C();
}

unint64_t sub_218842564(unint64_t *a1)
{
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD944();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsActivity2.Article(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v61 - v16;
  result = 0;
  v19 = *a1;
  switch((v19 >> 58) & 0x3C | (v19 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48();
      goto LABEL_4;
    case 6uLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1FuLL:
      goto LABEL_2;
    case 8uLL:
LABEL_4:
      v20 = swift_projectBox();
      sub_219719558(v20, v17, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v17, v15, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0();

      sub_218AAFD90(v15, v11, MEMORY[0x277D2FB40]);
      v21 = sub_219BDD8A4();
      sub_218790094(v11, MEMORY[0x277D2FB40]);
      sub_218790094(v17, type metadata accessor for NewsActivity2.Article);
      return v21;
    case 0xAuLL:
    case 0xBuLL:
      v22 = v19 & 0xFFFFFFFFFFFFFF9;
      v23 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v24 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v26 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v25 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v27 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v29 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v28 = *(v22 + 72);
      v31 = *(v22 + 80);
      v30 = *(v22 + 88);
      v32 = *(v22 + 96);
      v33 = v23;
      sub_21908FD7C(v23, v24, v26, v25, v27);
      sub_218F20858(v29, v28, v31, v30, v32);
      if (v27)
      {

        if (v27 == 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        sub_21896FBB0(v33, v24, v26, v25, v34);
        sub_218DFAEC4(v29, v28, v31, v30, v32);
        return v33;
      }

      else
      {
        v50 = v33;
        v51 = [v33 identifier];
        v62 = sub_219BF5414();
        v61[1] = v52;

        sub_21896FBB0(v50, v24, v26, v25, 0);
        sub_218DFAEC4(v29, v28, v31, v30, v32);
        return v62;
      }

    case 0x14uLL:
    case 0x15uLL:
      memmove(&__dst, ((v19 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v36 = v75 >> 6;
      if (v36)
      {
        if (v36 == 1)
        {
          v37 = __dst;

          return v37;
        }

        else
        {
          v63 = __dst;
          v64 = v70;
          v65 = v71;
          v66 = v72;
          v67 = v73;
          v68 = v74 & 1;
          return sub_219BD47C0(__dst, v70, v71, v72, v73, v35);
        }
      }

      else
      {
        v63 = __dst;
        v64 = v70;
        v65 = v71;
        v66 = v72;
        v67 = v73;
        v68 = v74 & 1;
        sub_21896FE24(__dst, v70, v71, v72, v73, v74 & 1);

        v59 = [sub_219BD4870(v53 v54];
        v60 = sub_219BF5414();

        sub_218AAFFC4(&__dst);
        return v60;
      }

    case 0x1AuLL:
      sub_21896FC94((v19 & 0xFFFFFFFFFFFFFF9) + 16, &__dst);
      v49 = __dst;

      sub_218C113E0(&__dst);
      return v49;
    case 0x1BuLL:
      v45 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((v19 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (*((v19 & 0xFFFFFFFFFFFFFF9) + 0x20) > 1u)
      {
        if (*((v19 & 0xFFFFFFFFFFFFFF9) + 0x20) == 2)
        {
          if (v45 <= 1)
          {
            if (v45 | v46)
            {
              return 0x64616F6C6E776F64;
            }

            else
            {
              return 0x676F6C61746163;
            }
          }

          else if (v45 ^ 2 | v46)
          {
            if (v45 ^ 3 | v46)
            {
              return 0x657061707377656ELL;
            }

            else
            {
              return 0x697A6167614D796DLL;
            }
          }

          else
          {
            return 0x656E697A6167616DLL;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        if (*((v19 & 0xFFFFFFFFFFFFFF9) + 0x20))
        {
          v47 = 0x3A64656546676174;
          v48 = 0xE90000000000003ALL;
        }

        else
        {
          v47 = 0x79726F6765746163;
          v48 = 0xEA00000000003A3ALL;
        }

        __dst = v47;
        v70 = v48;
        MEMORY[0x21CECC330](v45, v46);
        return __dst;
      }

    case 0x1EuLL:

      sub_219BDE5F4();
      v38 = sub_219BDD7F4();

      (*(v3 + 8))(v5, v2);
      return v38;
    case 0x3BuLL:
      v39 = swift_projectBox();
      sub_219719558(v39, v8, type metadata accessor for PuzzleModel);
      v41 = *v8;
      v40 = *(v8 + 1);
      if (v8[16])
      {
        v42 = *v8;
        v43 = [swift_unknownObjectRetain() identifier];
        v41 = sub_219BF5414();

        sub_218B083E8(v42, v40, 1);
      }

      else
      {
      }

      sub_218790094(v8, type metadata accessor for PuzzleModel);
      return v41;
    case 0x3CuLL:
      result = 0;
      v44 = __ROR8__(v19 + 0x1000000000000000, 3);
      if (v44 > 9 || ((1 << v44) & 0x349) == 0)
      {
        return result;
      }

LABEL_2:
      __dst = v19;
      NewsActivity2.type.getter(&v63);
      result = NewsActivityType2.rawValue.getter();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218842E4C()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = sub_219BDBD34();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218842F44, 0, 0);
}

uint64_t sub_218842F44()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzleBadgingCoordinator: Beginning puzzle badge count update...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = *(v0 + 144);

  v6 = [*(v5 + 112) cachedSubscription];
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  *(v0 + 16) = v39;
  *(v0 + 32) = v40;
  if (!*(v0 + 40))
  {
    sub_218744870(v0 + 16, sub_21880702C);
    goto LABEL_13;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v7 = *(v0 + 136);
  v8 = [v7 integerValue];
  if (v8 == -1)
  {

    goto LABEL_26;
  }

  v9 = v8;
LABEL_14:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  *(v0 + 48) = v39;
  *(v0 + 64) = v40;
  if (!*(v0 + 72))
  {
    sub_218744870(v0 + 48, sub_21880702C);
LABEL_22:

    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(v0 + 128);
  v11 = [v10 integerValue];

  if ((v11 ^ v9))
  {
LABEL_26:
    __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 72), *(*(v0 + 144) + 96));
    if ((sub_219BF3734() & 1) == 0)
    {
      v22 = [*(*(v0 + 144) + 120) configuration];
      if (v22)
      {
        v25 = *(v0 + 176);
        v24 = *(v0 + 184);
        v26 = *(v0 + 160);
        v27 = *(v0 + 168);
        v28 = [v22 puzzlesConfig];
        swift_unknownObjectRelease();
        [v28 badgingUpdateQuiesenceInterval];
        v30 = v29;

        sub_219BDBD24();
        sub_219BDC754();
        sub_2189B3EFC(&qword_280EC0BE8);
        sub_219BDC7D4();

        sub_219BDBBE4();
        v32 = v31;
        v33 = *(v27 + 8);
        *(v0 + 200) = v33;
        *(v0 + 208) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v33(v25, v26);
        v33(v24, v26);
        if (v30 > v32)
        {
          v12 = sub_219BE5414();
          v34 = sub_219BF6214();
          if (!os_log_type_enabled(v12, v34))
          {
            goto LABEL_31;
          }

          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = v30;
          *(v14 + 12) = 2048;
          *(v14 + 14) = v32;
          v15 = "PuzzleBadgingCoordinator: Badge count update will be ignored since quiescence interval of %f was not exceeded.\nTime since last badging update: %f seconds.";
          v16 = v34;
          v17 = v12;
          v18 = v14;
          v19 = 22;
          goto LABEL_30;
        }

        v35 = *(v0 + 144);
        v36 = v35[6];
        v37 = v35[7];
        __swift_project_boxed_opaque_existential_1(v35 + 3, v36);
        v38 = swift_task_alloc();
        *(v0 + 216) = v38;
        *v38 = v0;
        v38[1] = sub_2189B2738;
        v22 = v36;
        v23 = v37;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x28218F9F0](v22, v23);
    }

    v12 = sub_219BE5414();
    v13 = sub_219BF6214();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "PuzzleBadgingCoordinator: Call to update badge count will be ignored since user has no puzzles in their history.";
      goto LABEL_29;
    }

    goto LABEL_31;
  }

LABEL_23:
  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "PuzzleBadgingCoordinator: Call to update badge count will be ignored since user is not a News+ subscriber.";
LABEL_29:
    v16 = v13;
    v17 = v12;
    v18 = v14;
    v19 = 2;
LABEL_30:
    _os_log_impl(&dword_2186C1000, v17, v16, v15, v18, v19);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

LABEL_31:

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_218843558(unint64_t *a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD944();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NewsActivity2.Article(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  result = 0;
  v20 = *a1;
  v21 = (v20 >> 58) & 0x3C | (v20 >> 1) & 3;
  if (v21 > 19)
  {
    if (v21 <= 0x3C)
    {
      if (((1 << ((v20 >> 58) & 0x3C | (v20 >> 1) & 3)) & 0xFFFFFFFBFC00000) != 0)
      {
        return result;
      }

      if (v21 == 30)
      {

        sub_219BDE5F4();
        v22 = sub_219BDD7F4();

        (*(v7 + 8))(v9, v6);
        return v22;
      }

      if (v21 == 60)
      {
        if (v20 != 0xF000000000000040)
        {
          return 0;
        }

        __dst = 0xF000000000000040;
        NewsActivity2.type.getter(&v38);
        return NewsActivityType2.rawValue.getter();
      }
    }

    memmove(&__dst, ((v20 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
    v28 = v50 >> 6;
    if (!v28)
    {
      v38 = __dst;
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v43 = v49 & 1;
      sub_21896FE24(__dst, v45, v46, v47, v48, v49 & 1);

      v35 = [sub_219BD4870(v29 v30];
      v36 = sub_219BF5414();

      sub_218AAFFC4(&__dst);
      return v36;
    }

    if (v28 != 1)
    {
      v38 = __dst;
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v43 = v49 & 1;
      return sub_219BD47C0(__dst, v45, v46, v47, v48, v27);
    }

    v24 = __dst;

    return v24;
  }

  if (v21 > 7)
  {
    if ((v21 - 9) < 0xB)
    {
      return result;
    }

LABEL_12:
    v23 = swift_projectBox();
    sub_219719558(v23, v18, type metadata accessor for NewsActivity2.Article);
    sub_219719558(v18, v16, type metadata accessor for NewsActivity2.Article);
    sub_2187B2DA0();

    sub_218AAFD90(v16, v12, MEMORY[0x277D2FB40]);
    v24 = sub_219BDD8A4();
    sub_218790094(v12, MEMORY[0x277D2FB40]);
    sub_218790094(v18, type metadata accessor for NewsActivity2.Article);
    return v24;
  }

  if (v21 <= 3)
  {
    if ((v21 - 1) >= 2)
    {
      return result;
    }

    sub_2187B2C48();
    goto LABEL_12;
  }

  if ((v21 - 5) >= 3)
  {
    v25 = swift_projectBox();
    (*(v3 + 16))(v5, v25, v2);
    v26 = sub_219BDB804();
    (*(v3 + 8))(v5, v2);
    return v26;
  }

  return result;
}

uint64_t NewsActivity2.eligibilities.getter()
{
  v1 = (*v0 >> 58) & 0x3C | (*v0 >> 1) & 3;
  v2 = v1 > 0x26;
  v3 = (1 << v1) & 0x4000010C00;
  if (v2 || v3 == 0)
  {
    NewsActivity2.type.getter(&v19);
    return NewsActivityType2.eligibilities.getter();
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF9;
    v6 = *(v5 + 0x10);
    v7 = *(v5 + 0x18);
    v8 = *(v5 + 0x20);
    v9 = *(v5 + 0x28);
    v10 = *(v5 + 0x40);
    v11 = *(v5 + 72);
    v18 = *(v5 + 64);
    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    v14 = *(v5 + 48);
    v15 = *(v5 + 96);
    sub_21908FD7C(*(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v14);
    sub_218F20858(v10, v11, v12, v13, v15);
    v16 = sub_219090ACC();
    sub_21896FBB0(v6, v7, v8, v9, v14);
    sub_218DFAEC4(v18, v11, v12, v13, v15);
  }

  return v16;
}

uint64_t NewsActivityType2.eligibilities.getter()
{
  result = MEMORY[0x277D84FA0];
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
    case 0xC:
    case 0xD:
    case 0xF:
    case 0x12:
    case 0x20:
      sub_218844190();
      v2 = sub_219BE8B94();
      v3 = *(v2 - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_219C0B8C0;
      v7 = v6 + v5;
      v8 = *(v3 + 104);
      v8(v7, *MEMORY[0x277D6E1C0], v2);
      v8(v7 + v4, *MEMORY[0x277D6E1B0], v2);
      v8(v7 + 2 * v4, *MEMORY[0x277D6E1B8], v2);
      v9 = sub_2188441E8(v6);
      swift_setDeallocating();
      goto LABEL_3;
    case 7:
      sub_218844190();
      v23 = sub_219BE8B94();
      v24 = *(v23 - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09EC0;
      v28 = v27 + v26;
      v29 = *(v24 + 104);
      v29(v28, *MEMORY[0x277D6E1C0], v23);
      v29(v28 + v25, *MEMORY[0x277D6E1B0], v23);
      v9 = sub_2188441E8(v27);
      swift_setDeallocating();
      goto LABEL_3;
    case 0xE:
      sub_218844190();
      v17 = sub_219BE8B94();
      v18 = *(v17 - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_219C09BA0;
      v22 = MEMORY[0x277D6E1C0];
      goto LABEL_9;
    case 0x10:
    case 0x11:
      sub_218844190();
      v17 = sub_219BE8B94();
      v18 = *(v17 - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_219C09BA0;
      v22 = MEMORY[0x277D6E1B0];
LABEL_9:
      (*(v18 + 104))(v20 + v19, *v22, v17);
      v9 = sub_2188441E8(v21);
      swift_setDeallocating();
      (*(v18 + 8))(v21 + v19, v17);
      goto LABEL_4;
    case 0x13:
    case 0x19:
      sub_218844190();
      v10 = sub_219BE8B94();
      v11 = *(v10 - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C0EE20;
      v15 = v14 + v13;
      v16 = *(v11 + 104);
      v16(v15, *MEMORY[0x277D6E1C0], v10);
      v16(v15 + v12, *MEMORY[0x277D6E1A8], v10);
      v16(v15 + 2 * v12, *MEMORY[0x277D6E1B0], v10);
      v16(v15 + 3 * v12, *MEMORY[0x277D6E1B8], v10);
      v9 = sub_2188441E8(v14);
      swift_setDeallocating();
LABEL_3:
      swift_arrayDestroy();
LABEL_4:
      swift_deallocClassInstance();
      result = v9;
      break;
    default:
      return result;
  }

  return result;
}

void sub_218844190()
{
  if (!qword_280E8BDB0)
  {
    sub_219BE8B94();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BDB0);
    }
  }
}

uint64_t sub_2188441E8(uint64_t a1)
{
  v2 = sub_219BE8B94();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2188444FC();
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE47C0, MEMORY[0x277D6E1C8]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280EE47B8, MEMORY[0x277D6E1C8]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2188444FC()
{
  if (!qword_280E8D708)
  {
    sub_219BE8B94();
    sub_218751238(&qword_280EE47C0, MEMORY[0x277D6E1C8]);
    v0 = sub_219BF72F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D708);
    }
  }
}

id sub_218844590(unint64_t *a1)
{
  result = 0;
  v4 = *a1;
  v5 = (v4 >> 58) & 0x3C | (v4 >> 1) & 3;
  if (v5 <= 11)
  {
    if (v5 < 0xA)
    {
      return result;
    }
  }

  else
  {
    if (v5 > 0x3C)
    {
      goto LABEL_10;
    }

    if (((1 << ((v4 >> 58) & 0x3C | (v4 >> 1) & 3)) & 0x1FFFFFBFFFFC0000) != 0)
    {
      return result;
    }

    if (v5 == 17)
    {
      v6 = objc_allocWithZone(type metadata accessor for BridgedNewsActivityData());
      v7 = sub_219BF53D4();
      sub_2186C6148(0, &qword_280E8DA20);
      v8 = sub_219BF5904();
      v9 = [v6 initWithActivity:4 identifier:v7 object:0 traits:v8];

      v10 = [*(v1 + 16) intentForActivityData_];
      if (v10)
      {
        v11 = v10;
        v12 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v10 response:0];

        return v12;
      }

      return 0;
    }

    if (v5 != 38)
    {
LABEL_10:
      if ((v5 - 12) < 4)
      {
        return result;
      }
    }
  }

  v13 = v4 & 0xFFFFFFFFFFFFFF9;
  v14 = *(v13 + 48);
  v15 = *(v13 + 80);
  *&v53[16] = *(v13 + 64);
  *&v53[32] = v15;
  *v53 = v14;
  v16 = *(v13 + 32);
  v51 = *(v13 + 16);
  v52 = v16;
  v54 = *(v13 + 96);
  v17 = v54;
  v18 = *(&v15 + 1);
  v45 = *&v53[8];
  v46 = *&v53[24];
  v44 = v16;
  v47 = v51;
  v19 = v14;
  sub_218B5A004(&v51, v50);
  v51 = v47;
  v52 = v44;
  v53[0] = v19;
  *&v53[8] = v45;
  *&v53[24] = v46;
  *&v53[40] = v18;
  v54 = v17;
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v44 + OBJC_IVAR___TSFeedViewContext_tagName;

      v21 = v44;
      swift_beginAccess();
      if (*(v20 + 8) && (v22 = &v21[OBJC_IVAR___TSFeedViewContext_feedTagType], swift_beginAccess(), (v22[8] & 1) == 0) && *v22 == 1)
      {

        v23 = sub_219BF5624();

        if ((v23 & 1) == 0)
        {

          sub_218B5A060(&v51);

          return 0;
        }

        v24 = sub_219BF53D4();

        v25 = type metadata accessor for BridgedNewsActivityData();
        v26 = objc_allocWithZone(v25);
        *&v26[OBJC_IVAR___TSNewsActivityData_activity] = 2;
        *&v26[OBJC_IVAR___TSNewsActivityData_identifier] = v47;
        *&v26[OBJC_IVAR___TSNewsActivityData_object] = v24;
        *&v26[OBJC_IVAR___TSNewsActivityData_traits] = MEMORY[0x277D84F90];
        v49.receiver = v26;
        v49.super_class = v25;
        v27 = objc_msgSendSuper2(&v49, sel_init);
        v28 = [*(v1 + 16) intentForActivityData_];
        if (v28)
        {
          v29 = v28;
          v30 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v28 response:0];

LABEL_24:
          sub_218B5A060(&v51);
          return v30;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    swift_unknownObjectRetain();
    if (sub_21971938C())
    {
      v31 = [v47 nameCompact];
      if (!v31)
      {
        v31 = [v47 name];
      }

      v32 = v31;
      sub_219BF5414();

      v33 = [v47 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      v37 = sub_219BF53D4();

      v38 = type metadata accessor for BridgedNewsActivityData();
      v39 = objc_allocWithZone(v38);
      *&v39[OBJC_IVAR___TSNewsActivityData_activity] = 2;
      v40 = &v39[OBJC_IVAR___TSNewsActivityData_identifier];
      *v40 = v34;
      v40[1] = v36;
      *&v39[OBJC_IVAR___TSNewsActivityData_object] = v37;
      *&v39[OBJC_IVAR___TSNewsActivityData_traits] = MEMORY[0x277D84F90];
      v48.receiver = v39;
      v48.super_class = v38;
      v41 = objc_msgSendSuper2(&v48, sel_init);
      v42 = [*(v1 + 16) intentForActivityData_];
      if (v42)
      {
        v43 = v42;
        v30 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v42 response:0];
        swift_unknownObjectRelease();

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_218B5A060(&v51);
  return 0;
}

uint64_t sub_218844C40()
{
  sub_218817724(*(v0 + 48), &qword_280EE33F0, MEMORY[0x277D2D4E0]);

  v1 = *(v0 + 8);

  return v1();
}

_BYTE *sub_218844CD0(int a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent;
    if (result[OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent])
    {
      goto LABEL_9;
    }

    v24 = a1;
    v25 = v7;
    v26 = v3;
    v12 = OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController;
    v13 = result;
    sub_219BE86E4();
    v14 = v13;
    result = [*&v13[v12] view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    swift_getObjectType();
    v16 = sub_219BE9E14();

    swift_unknownObjectRelease();
    if ((v16 & 1) == 0)
    {
LABEL_9:

      return swift_unknownObjectRelease();
    }

    else
    {
      v14[v11] = 0;
      v23 = sub_219BE8644();
      v17 = v25;
      (*(v25 + 104))(v9, *MEMORY[0x277D6EC88], v6);
      v18 = v26;
      v19 = MEMORY[0x277D6ECB0];
      v20 = v24 & 1;
      if ((v24 & 1) == 0)
      {
        v19 = MEMORY[0x277D6ECA8];
      }

      (*(v26 + 104))(v5, *v19, v2);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v21;

      sub_219BE6BE4();
      swift_unknownObjectRelease();

      (*(v18 + 8))(v5, v2);
      (*(v17 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_21884501C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218845054()
{

  return swift_deallocObject();
}

void sub_2188450A0(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = a4;
    v49 = a6;
    v44 = a2;
    v45 = a3;
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo);
    v46 = sub_219BF2FA4();

    v14 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24];
    v15 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32];
    __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager], v14);
    v47 = (*(v15 + 24))(v14, v15);
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C0EE20;
    v17 = objc_opt_self();
    v18 = [v17 sharedAccount];
    v19 = [v18 isUserSignedInToiCloud];

    if (v19)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v20, v21);

    v22 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v23 = sub_2186FC3BC();
    *(v16 + 64) = v23;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    v24 = [v17 sharedAccount];
    v25 = [v24 isPrivateDataSyncingEnabled];

    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v26, v27);

    *(v16 + 96) = v22;
    *(v16 + 104) = v23;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0xE000000000000000;
    if (v46 == 1)
    {
      v29 = 0xE900000000000064;
      v30 = 0x656472616F626E6FLL;
      v28 = v48;
    }

    else
    {
      v28 = v48;
      if (v46)
      {
        v34 = sub_219BF7894();
        MEMORY[0x21CECC330](v34);

        MEMORY[0x21CECC330](41, 0xE100000000000000);
        v30 = 0x286E776F6E6B6E75;
        v29 = 0xE800000000000000;
      }

      else
      {
        v29 = 0xEC00000064656472;
        v30 = 0x616F626E4F746F6ELL;
      }
    }

    *(v16 + 136) = v22;
    *(v16 + 144) = v23;
    *(v16 + 112) = v30;
    *(v16 + 120) = v29;
    v35 = sub_218845750(v47);
    *(v16 + 176) = v22;
    *(v16 + 184) = v23;
    *(v16 + 152) = v35;
    *(v16 + 160) = v36;
    sub_219BF6214();
    sub_219BE5314();

    if (v28 == 4 && v46 == 1 && v47 == 2)
    {
      sub_2186C6148(0, &qword_280E8D790);
      v37 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();

      a5(0);
    }

    else
    {
      v38 = sub_219BE2CC4();
      *(swift_allocObject() + 16) = v28;
      sub_218845868();
      type metadata accessor for SportsOnboardingManager();
      sub_219BE31F4();

      v39 = sub_219BE1C44();
      v40 = swift_allocObject();
      *(v40 + 16) = v28;
      *(v40 + 24) = a5;
      *(v40 + 32) = v49;

      sub_219BE2F94();

      v41 = swift_allocObject();
      *(v41 + 16) = v44;
      *(v41 + 24) = v45;

      v42 = sub_219BE2E54();
      sub_219BE2FD4();

      v43 = sub_219BE2E54();
      sub_219BE3024();
    }
  }

  else
  {
    v31 = sub_219BE1D94();
    sub_218DB220C();
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D6CAE0], v31);
    a2(v32);
  }
}

uint64_t sub_2188456B8()
{

  return swift_deallocObject();
}

id sub_2188456F4()
{
  v1 = *v0;
  if ((sub_21884041C() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);

  return [v2 sportsSyncState];
}

uint64_t sub_218845750(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x64656C62616E65;
      }

      goto LABEL_8;
    }

    return 0x64656C6261736964;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6D72657465646E75;
      }

LABEL_8:
      v2 = sub_219BF7894();
      MEMORY[0x21CECC330](v2);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return 0x286E776F6E6B6E75;
    }

    return 0x616C696176616E75;
  }
}

void sub_218845868()
{
  if (!qword_280E8EC90)
  {
    sub_2186D6710(255, &qword_280E8E420);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EC90);
    }
  }
}

uint64_t sub_2188458D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(v7 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24);
  v9 = *(v7 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager), v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v9 + 8);

  v12(a1, sub_218DB24AC, v11, v8, v9);
}

uint64_t sub_2188459E8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218845A28(char a1)
{
  v1 = sub_218845E04();
  v2 = v1;
  v20 = MEMORY[0x277D84F90];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_21:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v5, v2);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v2 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = [*(v7 + 16) asSports];

    ++v5;
    if (v9)
    {
      MEMORY[0x21CECC690](v10);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v6 = v20;
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_23;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (!a1)
  {

    MEMORY[0x28223BE20](v11);
    sub_2186C6148(0, &qword_280E8E530);
    sub_219BE3204();
    v12 = sub_219BE2E54();
    sub_218845868();
    v13 = sub_219BE2F64();

    return v13;
  }

LABEL_23:
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  if (v6 >> 62)
  {
    sub_219BF7214();
  }

  v16 = sub_219BF7894();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_219BF6214();
  sub_219BE5314();

  sub_218846C98(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218845E04()
{
  v1 = *(v0 + 32);
  v2 = [v1 orderedCachedSubscribedTags];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  sub_2186D6710(0, &qword_280E8E680);
  v4 = sub_219BF5924();

  v5 = [*(v0 + 40) allPurchasedTagIDs];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5D44();
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v9 = [v1 mutedTagIDs];
  if (v9)
  {
    v10 = v9;
    v11 = sub_219BF5924();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_218845F78(v11);

  v13 = sub_218846010(v4);

  v14 = sub_2188460E0(v13, v7, v12, v0, v12);

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_218845F78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CECCB00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_219497B60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21884603C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_219BF7214();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2188460E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_37:
    v30 = a1;
    v31 = a4;
    v32 = a3;
    v33 = sub_219BF7214();
    a3 = v32;
    a4 = v31;
    v6 = v33;
    a1 = v30;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = a3;
  v36 = a4;
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v34 = a1;
    v9 = a1 + 32;
    v10 = a5 + 56;
    while (1)
    {
      if (v38)
      {
        v11 = MEMORY[0x21CECE0F0](v8, v34);
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v8 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v11 = *(v9 + 8 * v8);
        swift_unknownObjectRetain();
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v23 = v40;
          v7 = MEMORY[0x277D84F90];
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_38;
        }
      }

      v13 = [v11 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      if (*(a5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v17 = sub_219BF7AE4(), v18 = -1 << *(a5 + 32), v19 = v17 & ~v18, ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a5 + 48) + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v16;
          if (v22 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        a1 = sub_219BF73E4();
      }

      if (v8 == v6)
      {
        goto LABEL_24;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    v26 = v35;
    v25 = v36;
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_39:

    return MEMORY[0x277D84F90];
  }

LABEL_38:
  v24 = sub_219BF7214();
  v26 = v35;
  v25 = v36;
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_29:
  result = sub_219BF73F4();
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CECE0F0](v28, v23);
      }

      else
      {
        v29 = *(v23 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      swift_getObjectType();
      sub_218E97B80(v29, a2, v26, 0, v25);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v24 != v28);

    return v7;
  }

  return result;
}

void sub_218846428()
{
  if (!qword_280EE69B0)
  {
    sub_2186C6148(255, &qword_280E8E530);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE69B0);
    }
  }
}

uint64_t sub_218846490()
{
  sub_218846428();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2188464EC()
{
  v0 = off_282A4D798[0];
  type metadata accessor for TagService();
  return v0();
}

void sub_218846568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 32);
  sub_2186C6148(0, &qword_280E8E3B0);

  v14 = MEMORY[0x21CECD490](a6);
  v15 = swift_allocObject();
  v15[2] = sub_218C1DDD4;
  v15[3] = v12;
  v15[4] = a3;
  v15[5] = a4;
  v17[4] = sub_2188467B4;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218846728;
  v17[3] = &block_descriptor_85;
  v16 = _Block_copy(v17);

  [v13 fetchAllTagsWithCallbackQueue:v14 maximumCachedAge:a6 qualityOfService:v16 completion:1.79769313e308];
  _Block_release(v16);
}

uint64_t sub_2188466E4()
{

  return swift_deallocObject();
}

void sub_218846728(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2188467C0(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    v14 = a1;
    a3();
    v6 = v14;

LABEL_4:

    return;
  }

  if (!a2)
  {
    sub_218E9A2C0();
    v12 = swift_allocError();
    *v13 = 0xD000000000000052;
    *(v13 + 8) = 0x8000000219CFD500;
    *(v13 + 16) = 1;
    a5();
    v6 = v12;

    goto LABEL_4;
  }

  v9 = a2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  sub_218E9A2C0();
  v10 = swift_allocError();
  *v11 = 0;
  *(v11 + 8) = 0xE000000000000000;
  *(v11 + 16) = 0;
  a5();
}

uint64_t sub_218846958(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_218846990(id *a1)
{
  v1 = [*a1 subscribedTags];
  sub_2186D6710(0, &qword_280E8E680);
  v2 = sub_219BF5924();

  v15 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    v7 = [v5 asSports];
    v8 = swift_unknownObjectRelease();
    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v14 = v15;
      v4 = v6;
    }
  }

  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  if (v14 >> 62)
  {
    sub_219BF7214();
  }

  v10 = sub_219BF7894();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_2186FC3BC();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_219BF6214();
  sub_219BE5314();

  sub_218846C98(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218846C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm()
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

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_2()
{
  v1 = (type metadata accessor for SearchResponse.SearchResultsGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  sub_21921898C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_3()
{
  sub_2187C5110();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_5()
{

  return swift_deallocObject();
}

uint64_t sub_218847284(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_onRefresh);
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {

      v4(v5);
      sub_2187FABEC(v4);
    }
  }

  return sub_218847324(a1, *(a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionService));
}

uint64_t sub_218847330(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v10 = *a2;
  v11 = *MEMORY[0x277D85000];
  v12 = type metadata accessor for TodayPrewarmResult();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](v12);
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v24[0] = (*(*((v11 & v10) + 0x58) + 8))(v21, v24, *((v11 & v10) + 0x50));
  v14 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v14);
  sub_219BE6E84();
  sub_2188482CC(v21, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v16 = swift_allocObject();
  sub_21880BBE4(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TodayPrewarmResult);
  v17 = sub_219BE2E54();
  v18 = sub_219BE2F74();

  return v18;
}

uint64_t sub_2188475BC()
{
  v1 = *(type metadata accessor for TodayPrewarmResult() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for TodayExpandResult();
  v4 = *(v3 + 28);
  v5 = sub_219BEC514();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = *(v3 + 32);
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2188477B4(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for TodayPrewarmBlueprintModifier();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *v2;
  sub_218847A50(a1, &v16 - v9, type metadata accessor for TodayPrewarmResult);
  sub_218718690(v11 + 16, &v10[v5[6]]);
  v12 = &v10[v5[5]];
  v13 = a2[1];
  v16 = *a2;
  *v12 = v16;
  *(v12 + 1) = v13;
  v10[v5[7]] = 0;
  sub_218847A50(v10, v8, type metadata accessor for TodayPrewarmBlueprintModifier);
  sub_218847AB8();
  swift_allocObject();
  sub_218847B70(qword_280EAE288, type metadata accessor for TodayPrewarmBlueprintModifier);

  v14 = sub_219BE6E64();
  sub_21884826C(v10, type metadata accessor for TodayPrewarmBlueprintModifier);
  return v14;
}

uint64_t type metadata accessor for TodayPrewarmBlueprintModifier()
{
  result = qword_280EAE270;
  if (!qword_280EAE270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2188479AC()
{
  result = type metadata accessor for TodayPrewarmResult();
  if (v1 <= 0x3F)
  {
    result = sub_2186CFDE4(319, qword_280EC2CE0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218847A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218847AB8()
{
  if (!qword_280EE56A0)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_218847B70(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE56A0);
    }
  }
}

uint64_t sub_218847B70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218847BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218847C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218847C90()
{
  sub_218847DF4(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE48], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE50], v0);
  v7 = sub_218847E58(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

void sub_218847DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218847E58(uint64_t a1)
{
  v2 = sub_219BE81C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_21884816C();
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE4D88, MEMORY[0x277D6DE60]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280EE4D80, MEMORY[0x277D6DE60]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21884816C()
{
  if (!qword_280E8D710)
  {
    sub_219BE81C4();
    sub_218751238(&qword_280EE4D88, MEMORY[0x277D6DE60]);
    v0 = sub_219BF72F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D710);
    }
  }
}

uint64_t sub_218848200(uint64_t a1)
{
  v2 = sub_218847C00(qword_280EAE288, type metadata accessor for TodayPrewarmBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_21884826C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188482E8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v111 = a3;
  v112 = a2;
  v109 = a1;
  sub_218849C38(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v117 = v4;
  v116 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v115 = v100 - v5;
  v103 = sub_219BE72A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BE6DF4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v118 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = (v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = sub_219BF0644();
  v141 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BF0BD4();
  v126 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v13 = v12;
  v119 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v104 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = v100 - v16;
  v17 = type metadata accessor for TodayFeedGroup();
  v128 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v136 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAC34();
  MEMORY[0x28223BE20](v19 - 8);
  sub_21880B928();
  v124 = v20;
  v110 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TodayPrewarmResult();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v130 = v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v100 - v26;
  v137 = v3;
  sub_218849FF8(v3, v100 - v26, type metadata accessor for TodayPrewarmResult);
  v28 = *(v27 + 2);
  v120 = v28 & 0x1FFFFFFFFFFFFFFFLL;

  sub_21884A060(v27, type metadata accessor for TodayExpandResult);
  v29 = type metadata accessor for TodayFeedServiceConfig();
  v30 = sub_218847C00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  sub_219BEF3D4();
  sub_219BEE784();

  v31 = sub_218847C00(&qword_280EE58E0, sub_2187FAD00);
  v32 = sub_218847C00(&qword_280EE58F0, sub_2187FAD00);
  v122 = v13;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v31, v32);
  v33 = type metadata accessor for TodayModel(0);
  v34 = sub_2186EB3E8();
  v35 = sub_218847C00(&qword_280EDF9E0, type metadata accessor for TodayModel);
  v123 = v22;
  v36 = v119;
  v108 = v33;
  v107 = v34;
  v106 = v35;
  sub_219BEB1A4();
  v139 = v29;
  v140 = v28;
  v138 = v30;
  v37 = sub_219BEF3E4();
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = type metadata accessor for TodayPrewarmBlueprintModifier();
    v40 = v137;
    v129 = (v137 + *(v39 + 24));
    v41 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v100[1] = v37;
    v42 = v37 + v41;
    v128 = *(v128 + 72);
    v127 = (v141 + 8);
    ++v126;
    v121 = (v36 + 8);
    v125 = xmmword_219C0B8C0;
    v43 = v136;
    do
    {
      v141 = v38;
      sub_218849FF8(v42, v43, type metadata accessor for TodayFeedGroup);
      __swift_project_boxed_opaque_existential_1(v129, v129[3]);
      v44 = v130;
      sub_218849FF8(v40, v130, type metadata accessor for TodayPrewarmResult);
      v45 = *(v44 + 24);

      sub_21884A060(v44, type metadata accessor for TodayExpandResult);
      sub_219BEF3D4();
      v46 = v132;
      sub_219BEE7A4();

      sub_219BEF3D4();
      v47 = v46;
      v48 = v134;
      sub_219BEE844();

      v49 = v131;
      sub_21884A0C0(v43, v45, v47, v48, v131);

      (*v127)(v48, v135);
      (*v126)(v47, v133);
      sub_219BEB1E4();
      (*v121)(v49, v122);
      v43 = v136;
      v40 = v137;
      sub_21884A060(v136, type metadata accessor for TodayFeedGroup);
      v42 += v128;
      v38 = v141 - 1;
    }

    while (v141 != 1);
  }

  else
  {

    v40 = v137;
  }

  v50 = v140 >> 61;
  v51 = v118;
  v52 = v124;
  if ((v140 >> 61) <= 1)
  {
    v54 = v123;
    v53 = v40;
    if (!v50)
    {
      sub_21936DB68();
      swift_projectBox();
    }

    v63 = swift_allocObject();
    sub_218858D04(0, &qword_280E91AE0, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v63 + 16) = sub_219BEE874();
    v64 = v105;
    *v105 = v63;
    v65 = *MEMORY[0x277D33090];
    sub_218858D04(0, &qword_280E90A00, MEMORY[0x277D33098]);
    v67 = v66;
    v68 = *(v66 - 8);
    (*(v68 + 104))(v64, v65, v66);
    (*(v68 + 56))(v64, 0, 1, v67);
    v69 = v104;
    sub_218858E34(v64, v104);
    sub_21884A060(v64, type metadata accessor for TodayGapLocation);
    v62 = v52;
    sub_219BEB1E4();
    (*(v119 + 8))(v69, v122);
  }

  else
  {
    v53 = v40;
    if (v50 == 2)
    {
      sub_21936DB68();
      swift_projectBox();
    }

    v54 = v123;

    if (sub_219BEE854())
    {
      v55 = swift_allocObject();
      sub_218858D04(0, &qword_280E91AE0, MEMORY[0x277D32188]);
      swift_allocObject();
      *(v55 + 16) = sub_219BEE874();
      v56 = v105;
      *v105 = v55;
      v57 = *MEMORY[0x277D33068];
      sub_218858D04(0, &qword_280E90A00, MEMORY[0x277D33098]);
      v59 = v58;
      v60 = *(v58 - 8);
      (*(v60 + 104))(v56, v57, v58);
      (*(v60 + 56))(v56, 0, 1, v59);
      v61 = v104;
      sub_218858E34(v56, v104);
      sub_21884A060(v56, type metadata accessor for TodayGapLocation);
      v62 = v52;
      sub_219BEB1E4();
      (*(v119 + 8))(v61, v122);
    }

    else
    {
      v62 = v52;
    }
  }

  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v70 = sub_219BEEFC4();

  v71 = 0;
  if (v70)
  {
    v71 = sub_219BEDC74();
  }

  else
  {
    v145[1] = 0;
    v145[2] = 0;
  }

  v72 = v62;
  v145[0] = v70;
  v146 = v71;
  sub_219BEB2C4();

  v73 = v51;
  sub_218859624(v53, v54, v51);
  sub_2188552DC();
  sub_219BE78F4();
  if (*(v53 + *(type metadata accessor for TodayPrewarmBlueprintModifier() + 28)) == 1)
  {
    sub_219BEFAB4();
    sub_218847C00(&unk_280E91270, MEMORY[0x277D32878]);
    v142 = 0u;
    v143 = 0u;
    v74 = v101;
    sub_219BE7284();
    sub_21936DADC();
    v76 = *(v75 + 48);
    v77 = *(v75 + 64);
    v78 = v110;
    v79 = v115;
    (*(v110 + 16))(v115, v54, v72);
    v80 = v113;
    v81 = v73;
    v82 = v114;
    (*(v113 + 16))(&v79[v76], v81, v114);
    v83 = v102;
    v84 = v103;
    (*(v102 + 16))(&v79[v77], v74, v103);
    v85 = v116;
    v86 = v117;
    (*(v116 + 104))(v79, *MEMORY[0x277D6DF58], v117);
    v112(v79);

    (*(v85 + 8))(v79, v86);
    v87 = v74;
    v88 = v124;
    v89 = v82;
    v73 = v118;
    v90 = v84;
    v54 = v123;
    (*(v83 + 8))(v87, v90);
  }

  else
  {
    sub_218847C00(&qword_280EE3730, sub_21880B928);
    sub_219BF5DF4();
    sub_219BF5E84();
    if (v142 == v144)
    {
      sub_218859B24();
      v92 = *(v91 + 48);
      v78 = v110;
      v93 = v115;
      (*(v110 + 16))(v115, v54, v72);
      v80 = v113;
      v89 = v114;
      (*(v113 + 16))(&v93[v92], v73, v114);
      v94 = v116;
      v88 = v72;
      v95 = v117;
      (*(v116 + 104))(v93, *MEMORY[0x277D6DF70], v117);
    }

    else
    {
      v88 = v72;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v96 = sub_219BE6E54();
      v95 = v117;
      v89 = v114;
      v78 = v110;
      v80 = v113;
      if (v96)
      {
        v94 = v116;
        v93 = v115;
        (*(v116 + 104))(v115, *MEMORY[0x277D6DF80], v117);
      }

      else
      {
        sub_218859B24();
        v98 = *(v97 + 48);
        v93 = v115;
        (*(v78 + 16))(v115, v54, v88);
        (*(v80 + 16))(&v93[v98], v73, v89);
        v94 = v116;
        (*(v116 + 104))(v93, *MEMORY[0x277D6DF70], v95);
      }
    }

    v112(v93);

    (*(v94 + 8))(v93, v95);
  }

  (*(v80 + 8))(v73, v89);
  (*(v78 + 8))(v54, v88);
  return __swift_destroy_boxed_opaque_existential_1(v145);
}

uint64_t sub_21884977C()
{

  return swift_deallocObject();
}

void sub_2188497B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218A1ABB8(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EF594(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218ADF7A8(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2188499F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218F70C20(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFA14(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFA5C(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218847C00(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFAA4(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFAEC(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_219693814(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186DFEF0(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218849FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21884A060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21884A0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v921 = a4;
  v968 = a2;
  v969 = a3;
  v970 = a5;
  v920 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v920);
  v945 = &v837 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v918 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v918);
  v944 = &v837 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v917 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v917);
  v919 = &v837 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v916 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v916);
  v943 = &v837 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v922 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v922);
  v923 = &v837 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v912 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v912);
  v942 = &v837 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v911 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v911);
  v941 = &v837 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v910 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v910);
  v915 = &v837 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v909 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v909);
  v940 = &v837 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v908 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v908);
  v939 = &v837 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v907 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v907);
  v938 = &v837 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v906 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v906);
  v937 = &v837 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v914 = sub_219BED544();
  v913 = *(v914 - 8);
  MEMORY[0x28223BE20](v914);
  v935 = &v837 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v905 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v905);
  v936 = &v837 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v851 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v851);
  v852 = &v837 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v853 = (&v837 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v850 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v850);
  v859 = &v837 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v849 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v849);
  v858 = &v837 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v848 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v848);
  v857 = &v837 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v847 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v847);
  v856 = &v837 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v846 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v846);
  v855 = &v837 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v845 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v845);
  v854 = &v837 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v903 = type metadata accessor for MagazineFeedGroup();
  v31 = MEMORY[0x28223BE20](v903);
  v904 = &v837 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v924 = &v837 - v33;
  v902 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v902);
  v934 = &v837 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v901 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v901);
  v933 = &v837 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v900 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v900);
  v932 = &v837 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v899 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v899);
  v931 = &v837 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v898 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v898);
  v930 = &v837 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v896 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v896);
  v929 = &v837 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v892 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v892);
  v928 = &v837 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v890 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v890);
  v927 = &v837 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v887 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v887);
  v926 = &v837 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v978 = type metadata accessor for TodayModel(0);
  v954 = *(v978 - 8);
  v43 = MEMORY[0x28223BE20](v978);
  v974 = &v837 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v975 = (&v837 - v45);
  sub_218853400();
  v976 = *(v46 - 8);
  v977 = v46;
  v47 = MEMORY[0x28223BE20](v46);
  v964 = &v837 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v963 = &v837 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v962 = &v837 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v961 = &v837 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v960 = &v837 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v959 = &v837 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v958 = &v837 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v957 = &v837 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v956 = &v837 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v871 = &v837 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v952 = &v837 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v951 = &v837 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v950 = &v837 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v949 = &v837 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v948 = &v837 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v947 = &v837 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v870 = &v837 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v869 = &v837 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v868 = &v837 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v867 = &v837 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v866 = &v837 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v865 = &v837 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v864 = &v837 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v863 = &v837 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v862 = &v837 - v96;
  MEMORY[0x28223BE20](v95);
  v861 = &v837 - v97;
  sub_218853494();
  v874 = v98;
  v873 = *(v98 - 8);
  v99 = MEMORY[0x28223BE20](v98);
  v897 = &v837 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x28223BE20](v99);
  v895 = &v837 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v894 = &v837 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v893 = &v837 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v891[1] = &v837 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v872 = &v837 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v891[0] = &v837 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v889 = &v837 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v888 = &v837 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v886 = &v837 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v885 = &v837 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v946 = &v837 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v844 = &v837 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v843 = &v837 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v842 = &v837 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v841 = &v837 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v840 = &v837 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v839 = &v837 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v884 = &v837 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v883 = &v837 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v882 = &v837 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v881 = &v837 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v880 = &v837 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v879 = &v837 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v878 = &v837 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v877 = &v837 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v876 = &v837 - v152;
  MEMORY[0x28223BE20](v151);
  v875 = &v837 - v153;
  v154 = sub_219BF1904();
  v155 = *(v154 - 8);
  v966 = v154;
  v967 = v155;
  MEMORY[0x28223BE20](v154);
  v965 = &v837 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v953 = type metadata accessor for CuratedTodayFeedGroup();
  v157 = MEMORY[0x28223BE20](v953);
  v925 = &v837 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v157);
  v160 = &v837 - v159;
  v161 = type metadata accessor for TodayFeedGroup();
  v162 = MEMORY[0x28223BE20](v161);
  v971 = (&v837 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v162);
  v165 = &v837 - v164;
  v166 = sub_219BEF8A4();
  v167 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v169 = &v837 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a1;
  v171 = sub_21882B7BC();
  if (v171)
  {
    v972 = v5;
    v172 = [v171 identifier];
    swift_unknownObjectRelease();
    v173 = sub_219BF5414();
    v955 = v174;

    sub_218853560(v170, v165, type metadata accessor for TodayFeedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v860 = v161;
    v838 = v173;
    if (EnumCaseMultiPayload)
    {
      sub_2188536F8(v165, type metadata accessor for TodayFeedGroup);
      (*(v167 + 104))(v169, *MEMORY[0x277D32768], v166);
    }

    else
    {
      sub_2187C5960(v165, v160, type metadata accessor for CuratedTodayFeedGroup);
      (*(v167 + 16))(v169, &v160[*(v953 + 28)], v166);
      sub_2188536F8(v160, type metadata accessor for CuratedTodayFeedGroup);
    }

    v176 = sub_219BEF894();
    (*(v167 + 8))(v169, v166);
    v177 = v972;
    v178 = v955;
    if ((v176 & 1) == 0)
    {
      v200 = v973[5];
      v201 = [v200 mutedTagIDs];
      if (!v201)
      {
LABEL_281:
        __break(1u);
        goto LABEL_282;
      }

      v202 = v201;
      v203 = sub_219BF5D44();

      v204 = v838;
      LOBYTE(v202) = sub_2188537B8(v838, v178, v203);

      if (v202)
      {
        goto LABEL_18;
      }

      v205 = [v200 ignoredTagIDs];
      if (!v205)
      {
LABEL_282:
        __break(1u);
        JUMPOUT(0x21885339CLL);
      }

      v206 = v205;
      v207 = sub_219BF5D44();

      LOBYTE(v206) = sub_2188537B8(v204, v178, v207);

      if (v206)
      {
LABEL_18:
        type metadata accessor for TodaySectionFactoryError();
        sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError);
        swift_allocError();
        *v208 = v204;
        v208[1] = v178;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }

    v6 = v177;
  }

  v955 = sub_2188538B0(MEMORY[0x277D84F90]);
  v981 = v955;
  v179 = v971;
  sub_218853560(v170, v971, type metadata accessor for TodayFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v425 = v926;
      sub_2187C5960(v179, v926, type metadata accessor for NewspaperTodayFeedGroup);
      v426 = swift_allocBox();
      sub_218853560(v425, v427, type metadata accessor for NewspaperTodayFeedGroup);
      v428 = v973[11];
      v429 = v965;
      sub_219BED874();
      v430 = sub_2188539DC(v426 | 4);
      v432 = v431;
      v433 = sub_219BF18F4();
      MEMORY[0x28223BE20](v433);
      v434 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v428;
      *(&v837 - 4) = v434;
      *(&v837 - 3) = v430;
      *(&v837 - 2) = v432;
      v435 = sub_2188555F4(sub_218855814, (&v837 - 8), v433, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v429, v966);
      v980 = v426 | 4;
      v436 = v435[2];
      if (v436)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v426;

        sub_21885760C(0, v436, 0);
        v437 = v979;
        v438 = *(v954 + 80);
        v971 = v435;
        v439 = v435 + ((v438 + 32) & ~v438);
        v440 = *(v954 + 72);
        v441 = v862;
        do
        {
          v442 = v975;
          sub_218853560(v439, v975, type metadata accessor for TodayModel);
          sub_218853560(v442, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v442, type metadata accessor for TodayModel);
          v979 = v437;
          v444 = *(v437 + 16);
          v443 = *(v437 + 24);
          if (v444 >= v443 >> 1)
          {
            sub_21885760C(v443 > 1, v444 + 1, 1);
            v437 = v979;
          }

          *(v437 + 16) = v444 + 1;
          (*(v976 + 32))(v437 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v444, v441, v977);
          v439 += v440;
          --v436;
        }

        while (v436);
      }

      else
      {

        v437 = MEMORY[0x277D84F90];
      }

      v682 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v683 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v437, v977, v682, v683);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for NewspaperTodayFeedGroup;
      v663 = &v958;
      goto LABEL_276;
    case 2u:
      v345 = v927;
      sub_2187C5960(v179, v927, type metadata accessor for LocalNewsTodayFeedGroup);
      v346 = swift_allocBox();
      sub_218853560(v345, v347, type metadata accessor for LocalNewsTodayFeedGroup);
      v348 = v973[11];
      v349 = v965;
      sub_219BED874();
      v350 = sub_2188539DC(v346 | 6);
      v352 = v351;
      v353 = sub_219BF18F4();
      MEMORY[0x28223BE20](v353);
      v354 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v348;
      *(&v837 - 4) = v354;
      *(&v837 - 3) = v350;
      *(&v837 - 2) = v352;
      v355 = sub_2188555F4(sub_218855814, (&v837 - 8), v353, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v349, v966);
      v980 = v346 | 6;
      v356 = v355[2];
      if (v356)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v346;

        sub_21885760C(0, v356, 0);
        v357 = v979;
        v358 = *(v954 + 80);
        v971 = v355;
        v359 = v355 + ((v358 + 32) & ~v358);
        v360 = *(v954 + 72);
        v361 = v863;
        do
        {
          v362 = v975;
          sub_218853560(v359, v975, type metadata accessor for TodayModel);
          sub_218853560(v362, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v362, type metadata accessor for TodayModel);
          v979 = v357;
          v364 = *(v357 + 16);
          v363 = *(v357 + 24);
          if (v364 >= v363 >> 1)
          {
            sub_21885760C(v363 > 1, v364 + 1, 1);
            v357 = v979;
          }

          *(v357 + 16) = v364 + 1;
          (*(v976 + 32))(v357 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v364, v361, v977);
          v359 += v360;
          --v356;
        }

        while (v356);
      }

      else
      {

        v357 = MEMORY[0x277D84F90];
      }

      v672 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v673 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v357, v977, v672, v673);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for LocalNewsTodayFeedGroup;
      v663 = &v959;
      goto LABEL_276;
    case 3u:
      v385 = v928;
      sub_2187C5960(v179, v928, type metadata accessor for TrendingTodayFeedGroup);
      v386 = swift_allocBox();
      sub_218853560(v385, v387, type metadata accessor for TrendingTodayFeedGroup);
      v388 = v973[11];
      v389 = v965;
      sub_219BED874();
      v390 = sub_2188539DC(v386 | 0x1000000000000000);
      v392 = v391;
      v393 = sub_219BF18F4();
      MEMORY[0x28223BE20](v393);
      v394 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v388;
      *(&v837 - 4) = v394;
      *(&v837 - 3) = v390;
      *(&v837 - 2) = v392;
      v395 = sub_2188555F4(sub_218855814, (&v837 - 8), v393, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v389, v966);
      v980 = v386 | 0x1000000000000000;
      v396 = v395[2];
      if (v396)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v386;

        sub_21885760C(0, v396, 0);
        v397 = v979;
        v398 = *(v954 + 80);
        v971 = v395;
        v399 = v395 + ((v398 + 32) & ~v398);
        v400 = *(v954 + 72);
        v401 = v864;
        do
        {
          v402 = v975;
          sub_218853560(v399, v975, type metadata accessor for TodayModel);
          sub_218853560(v402, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v402, type metadata accessor for TodayModel);
          v979 = v397;
          v404 = *(v397 + 16);
          v403 = *(v397 + 24);
          if (v404 >= v403 >> 1)
          {
            sub_21885760C(v403 > 1, v404 + 1, 1);
            v397 = v979;
          }

          *(v397 + 16) = v404 + 1;
          (*(v976 + 32))(v397 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v404, v401, v977);
          v399 += v400;
          --v396;
        }

        while (v396);
      }

      else
      {

        v397 = MEMORY[0x277D84F90];
      }

      v676 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v677 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v397, v977, v676, v677);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for TrendingTodayFeedGroup;
      v663 = &v960;
      goto LABEL_276;
    case 4u:
      v270 = v929;
      sub_2187C5960(v179, v929, type metadata accessor for ForYouTodayFeedGroup);
      v271 = swift_allocBox();
      sub_218853560(v270, v272, type metadata accessor for ForYouTodayFeedGroup);
      v273 = v973[11];
      v274 = v965;
      sub_219BED874();
      v275 = sub_2188539DC(v271 | 0x1000000000000002);
      v277 = v276;
      v278 = sub_219BF18F4();
      MEMORY[0x28223BE20](v278);
      v279 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v273;
      *(&v837 - 4) = v279;
      *(&v837 - 3) = v275;
      *(&v837 - 2) = v277;
      v280 = sub_2188555F4(sub_218855814, (&v837 - 8), v278, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v274, v966);
      v980 = v271 | 0x1000000000000002;
      v281 = v280[2];
      if (v281)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v271;

        sub_21885760C(0, v281, 0);
        v282 = v979;
        v283 = *(v954 + 80);
        v971 = v280;
        v284 = v280 + ((v283 + 32) & ~v283);
        v285 = *(v954 + 72);
        v286 = v865;
        do
        {
          v287 = v975;
          sub_218853560(v284, v975, type metadata accessor for TodayModel);
          sub_218853560(v287, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v287, type metadata accessor for TodayModel);
          v979 = v282;
          v289 = *(v282 + 16);
          v288 = *(v282 + 24);
          if (v289 >= v288 >> 1)
          {
            sub_21885760C(v288 > 1, v289 + 1, 1);
            v282 = v979;
          }

          *(v282 + 16) = v289 + 1;
          (*(v976 + 32))(v282 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v289, v286, v977);
          v284 += v285;
          --v281;
        }

        while (v281);
      }

      else
      {

        v282 = MEMORY[0x277D84F90];
      }

      v668 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v669 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v282, v977, v668, v669);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for ForYouTodayFeedGroup;
      v663 = &v961;
      goto LABEL_276;
    case 5u:
      v467 = v930;
      sub_2187C5960(v179, v930, type metadata accessor for MissedStoriesTodayFeedGroup);
      v468 = swift_allocBox();
      sub_218853560(v467, v469, type metadata accessor for MissedStoriesTodayFeedGroup);
      v470 = v973[11];
      v471 = v965;
      sub_219BED874();
      v472 = sub_2188539DC(v468 | 0x1000000000000004);
      v474 = v473;
      v475 = sub_219BF18F4();
      MEMORY[0x28223BE20](v475);
      v476 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v470;
      *(&v837 - 4) = v476;
      *(&v837 - 3) = v472;
      *(&v837 - 2) = v474;
      v477 = sub_2188555F4(sub_218855814, (&v837 - 8), v475, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v471, v966);
      v980 = v468 | 0x1000000000000004;
      v478 = v477[2];
      if (v478)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v468;

        sub_21885760C(0, v478, 0);
        v479 = v979;
        v480 = *(v954 + 80);
        v971 = v477;
        v481 = v477 + ((v480 + 32) & ~v480);
        v482 = *(v954 + 72);
        v483 = v866;
        do
        {
          v484 = v975;
          sub_218853560(v481, v975, type metadata accessor for TodayModel);
          sub_218853560(v484, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v484, type metadata accessor for TodayModel);
          v979 = v479;
          v486 = *(v479 + 16);
          v485 = *(v479 + 24);
          if (v486 >= v485 >> 1)
          {
            sub_21885760C(v485 > 1, v486 + 1, 1);
            v479 = v979;
          }

          *(v479 + 16) = v486 + 1;
          (*(v976 + 32))(v479 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v486, v483, v977);
          v481 += v482;
          --v478;
        }

        while (v478);
      }

      else
      {

        v479 = MEMORY[0x277D84F90];
      }

      v684 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v685 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v479, v977, v684, v685);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v663 = &v962;
      goto LABEL_276;
    case 6u:
      v527 = v931;
      sub_2187C5960(v179, v931, type metadata accessor for LatestStoriesTodayFeedGroup);
      v528 = swift_allocBox();
      sub_218853560(v527, v529, type metadata accessor for LatestStoriesTodayFeedGroup);
      v530 = v973[11];
      v531 = v965;
      sub_219BED874();
      v532 = sub_2188539DC(v528 | 0x1000000000000006);
      v534 = v533;
      v535 = sub_219BF18F4();
      MEMORY[0x28223BE20](v535);
      v536 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v530;
      *(&v837 - 4) = v536;
      *(&v837 - 3) = v532;
      *(&v837 - 2) = v534;
      v537 = sub_2188555F4(sub_218855814, (&v837 - 8), v535, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v531, v966);
      v980 = v528 | 0x1000000000000006;
      v538 = v537[2];
      if (v538)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v528;

        sub_21885760C(0, v538, 0);
        v539 = v979;
        v540 = *(v954 + 80);
        v971 = v537;
        v541 = v537 + ((v540 + 32) & ~v540);
        v542 = *(v954 + 72);
        v543 = v867;
        do
        {
          v544 = v975;
          sub_218853560(v541, v975, type metadata accessor for TodayModel);
          sub_218853560(v544, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v544, type metadata accessor for TodayModel);
          v979 = v539;
          v546 = *(v539 + 16);
          v545 = *(v539 + 24);
          if (v546 >= v545 >> 1)
          {
            sub_21885760C(v545 > 1, v546 + 1, 1);
            v539 = v979;
          }

          *(v539 + 16) = v546 + 1;
          (*(v976 + 32))(v539 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v546, v543, v977);
          v541 += v542;
          --v538;
        }

        while (v538);
      }

      else
      {

        v539 = MEMORY[0x277D84F90];
      }

      v690 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v691 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v539, v977, v690, v691);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v663 = &v963;
      goto LABEL_276;
    case 7u:
      v405 = v932;
      sub_2187C5960(v179, v932, type metadata accessor for MoreForYouTodayFeedGroup);
      v406 = swift_allocBox();
      sub_218853560(v405, v407, type metadata accessor for MoreForYouTodayFeedGroup);
      v408 = v973[11];
      v409 = v965;
      sub_219BED874();
      v410 = sub_2188539DC(v406 | 0x2000000000000000);
      v412 = v411;
      v413 = sub_219BF18F4();
      MEMORY[0x28223BE20](v413);
      v414 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v408;
      *(&v837 - 4) = v414;
      *(&v837 - 3) = v410;
      *(&v837 - 2) = v412;
      v415 = sub_2188555F4(sub_218855814, (&v837 - 8), v413, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v409, v966);
      v980 = v406 | 0x2000000000000000;
      v416 = v415[2];
      if (v416)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v406;

        sub_21885760C(0, v416, 0);
        v417 = v979;
        v418 = *(v954 + 80);
        v971 = v415;
        v419 = v415 + ((v418 + 32) & ~v418);
        v420 = *(v954 + 72);
        v421 = v868;
        do
        {
          v422 = v975;
          sub_218853560(v419, v975, type metadata accessor for TodayModel);
          sub_218853560(v422, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v422, type metadata accessor for TodayModel);
          v979 = v417;
          v424 = *(v417 + 16);
          v423 = *(v417 + 24);
          if (v424 >= v423 >> 1)
          {
            sub_21885760C(v423 > 1, v424 + 1, 1);
            v417 = v979;
          }

          *(v417 + 16) = v424 + 1;
          (*(v976 + 32))(v417 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v424, v421, v977);
          v419 += v420;
          --v416;
        }

        while (v416);
      }

      else
      {

        v417 = MEMORY[0x277D84F90];
      }

      v678 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v679 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v417, v977, v678, v679);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for MoreForYouTodayFeedGroup;
      v663 = &v964;
      goto LABEL_276;
    case 8u:
      v587 = v933;
      sub_2187C5960(v179, v933, type metadata accessor for TopicTodayFeedGroup);
      v588 = swift_allocBox();
      sub_218853560(v587, v589, type metadata accessor for TopicTodayFeedGroup);
      v590 = v973[11];
      v591 = v965;
      sub_219BED874();
      v592 = sub_2188539DC(v588 | 0x2000000000000002);
      v594 = v593;
      v595 = sub_219BF18F4();
      MEMORY[0x28223BE20](v595);
      v596 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v590;
      *(&v837 - 4) = v596;
      *(&v837 - 3) = v592;
      *(&v837 - 2) = v594;
      v597 = sub_2188555F4(sub_218855814, (&v837 - 8), v595, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v591, v966);
      v980 = v588 | 0x2000000000000002;
      v598 = v597[2];
      if (v598)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v588;

        sub_21885760C(0, v598, 0);
        v599 = v979;
        v600 = *(v954 + 80);
        v971 = v597;
        v601 = v597 + ((v600 + 32) & ~v600);
        v602 = *(v954 + 72);
        v603 = v869;
        do
        {
          v604 = v975;
          sub_218853560(v601, v975, type metadata accessor for TodayModel);
          sub_218853560(v604, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v604, type metadata accessor for TodayModel);
          v979 = v599;
          v606 = *(v599 + 16);
          v605 = *(v599 + 24);
          if (v606 >= v605 >> 1)
          {
            sub_21885760C(v605 > 1, v606 + 1, 1);
            v599 = v979;
          }

          *(v599 + 16) = v606 + 1;
          (*(v976 + 32))(v599 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v606, v603, v977);
          v601 += v602;
          --v598;
        }

        while (v598);
      }

      else
      {

        v599 = MEMORY[0x277D84F90];
      }

      v696 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v697 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v599, v977, v696, v697);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for TopicTodayFeedGroup;
      v663 = &v965;
      goto LABEL_276;
    case 9u:
      v301 = v179;
      v302 = v924;
      sub_2187C5960(v301, v924, type metadata accessor for MagazineFeedGroup);
      v303 = v904;
      sub_218853560(v302, v904, type metadata accessor for MagazineFeedGroup);
      v304 = swift_getEnumCaseMultiPayload();
      if (v304 > 5)
      {
        if (v304 > 9)
        {
          if (v304 == 10)
          {
            v802 = v858;
            sub_2187C5960(v303, v858, type metadata accessor for TrendingMagazineFeedGroup);
            v803 = swift_allocBox();
            sub_218853560(v802, v804, type metadata accessor for TrendingMagazineFeedGroup);
            v805 = v973[11];
            v806 = v965;
            sub_219BED874();
            v807 = sub_2188539DC(v803 | 0x7000000000000006);
            v809 = v808;
            v810 = sub_219BF18F4();
            MEMORY[0x28223BE20](v810);
            v811 = v969;
            *(&v837 - 6) = v968;
            *(&v837 - 5) = v805;
            *(&v837 - 4) = v811;
            *(&v837 - 3) = v807;
            *(&v837 - 2) = v809;
            v812 = sub_2188555F4(sub_218855814, (&v837 - 8), v810, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

            (*(v967 + 8))(v806, v966);
            v980 = v803 | 0x7000000000000006;
            v813 = v812[2];
            if (v813)
            {
              v972 = v6;
              v979 = MEMORY[0x277D84F90];
              v973 = v803;

              sub_218C33FB8(v813);
              v814 = *(v954 + 80);
              v971 = v812;
              v815 = v812 + ((v814 + 32) & ~v814);
              v816 = *(v954 + 72);
              do
              {
                v817 = v975;
                sub_218853560(v815, v975, type metadata accessor for TodayModel);
                sub_218853560(v817, v974, type metadata accessor for TodayModel);
                sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
                sub_219BE5FB4();
                sub_2188536F8(v817, type metadata accessor for TodayModel);
                v818 = v979;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21885760C(0, *(v818 + 16) + 1, 1);
                  v818 = v979;
                }

                v820 = *(v818 + 16);
                v819 = *(v818 + 24);
                v821 = v951;
                if (v820 >= v819 >> 1)
                {
                  sub_21885760C(v819 > 1, v820 + 1, 1);
                  v821 = v951;
                  v818 = v979;
                }

                *(v818 + 16) = v820 + 1;
                (*(v976 + 32))(v818 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v820, v821, v977);
                v979 = v818;
                v815 += v816;
                --v813;
              }

              while (v813);
            }

            else
            {

              v818 = MEMORY[0x277D84F90];
            }

            v831 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
            v832 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
            MEMORY[0x21CEB9170](v818, v977, v831, v832);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE6924();

            v720 = type metadata accessor for TrendingMagazineFeedGroup;
            v826 = &v890;
            goto LABEL_274;
          }

          if (v304 == 11)
          {
            v722 = v857;
            sub_2187C5960(v303, v857, type metadata accessor for BestOfBundleMagazineFeedGroup);
            v723 = swift_allocBox();
            sub_218853560(v722, v724, type metadata accessor for BestOfBundleMagazineFeedGroup);
            v725 = v973[11];
            v726 = v965;
            sub_219BED874();
            v727 = sub_2188539DC(v723 | 0x7000000000000004);
            v729 = v728;
            v730 = sub_219BF18F4();
            MEMORY[0x28223BE20](v730);
            v731 = v969;
            *(&v837 - 6) = v968;
            *(&v837 - 5) = v725;
            *(&v837 - 4) = v731;
            *(&v837 - 3) = v727;
            *(&v837 - 2) = v729;
            v732 = sub_2188555F4(sub_218855814, (&v837 - 8), v730, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

            (*(v967 + 8))(v726, v966);
            v980 = v723 | 0x7000000000000004;
            v733 = v732[2];
            if (v733)
            {
              v972 = v6;
              v979 = MEMORY[0x277D84F90];
              v973 = v723;

              sub_218C33FB8(v733);
              v734 = *(v954 + 80);
              v971 = v732;
              v735 = v732 + ((v734 + 32) & ~v734);
              v736 = *(v954 + 72);
              do
              {
                v737 = v975;
                sub_218853560(v735, v975, type metadata accessor for TodayModel);
                sub_218853560(v737, v974, type metadata accessor for TodayModel);
                sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
                sub_219BE5FB4();
                sub_2188536F8(v737, type metadata accessor for TodayModel);
                v738 = v979;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21885760C(0, *(v738 + 16) + 1, 1);
                  v738 = v979;
                }

                v740 = *(v738 + 16);
                v739 = *(v738 + 24);
                v741 = v950;
                if (v740 >= v739 >> 1)
                {
                  sub_21885760C(v739 > 1, v740 + 1, 1);
                  v741 = v950;
                  v738 = v979;
                }

                *(v738 + 16) = v740 + 1;
                (*(v976 + 32))(v738 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v740, v741, v977);
                v979 = v738;
                v735 += v736;
                --v733;
              }

              while (v733);
            }

            else
            {

              v738 = MEMORY[0x277D84F90];
            }

            v835 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
            v836 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
            MEMORY[0x21CEB9170](v738, v977, v835, v836);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE6924();

            v720 = type metadata accessor for BestOfBundleMagazineFeedGroup;
            v826 = &v889;
            goto LABEL_274;
          }
        }

        else
        {
          if (v304 == 6)
          {
            v762 = v859;
            sub_2187C5960(v303, v859, type metadata accessor for NewIssueMagazineFeedGroup);
            v763 = swift_allocBox();
            sub_218853560(v762, v764, type metadata accessor for NewIssueMagazineFeedGroup);
            v765 = v973[11];
            v766 = v965;
            sub_219BED874();
            v767 = sub_2188539DC(v763 | 0x8000000000000000);
            v769 = v768;
            v770 = sub_219BF18F4();
            MEMORY[0x28223BE20](v770);
            v771 = v969;
            *(&v837 - 6) = v968;
            *(&v837 - 5) = v765;
            *(&v837 - 4) = v771;
            *(&v837 - 3) = v767;
            *(&v837 - 2) = v769;
            v772 = sub_2188555F4(sub_218855814, (&v837 - 8), v770, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

            (*(v967 + 8))(v766, v966);
            v980 = v763 | 0x8000000000000000;
            v773 = v772[2];
            if (v773)
            {
              v972 = v6;
              v979 = MEMORY[0x277D84F90];
              v973 = v763;

              sub_218C33FB8(v773);
              v774 = *(v954 + 80);
              v971 = v772;
              v775 = v772 + ((v774 + 32) & ~v774);
              v776 = *(v954 + 72);
              do
              {
                v777 = v975;
                sub_218853560(v775, v975, type metadata accessor for TodayModel);
                sub_218853560(v777, v974, type metadata accessor for TodayModel);
                sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
                sub_219BE5FB4();
                sub_2188536F8(v777, type metadata accessor for TodayModel);
                v778 = v979;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21885760C(0, *(v778 + 16) + 1, 1);
                  v778 = v979;
                }

                v780 = *(v778 + 16);
                v779 = *(v778 + 24);
                v781 = v952;
                if (v780 >= v779 >> 1)
                {
                  sub_21885760C(v779 > 1, v780 + 1, 1);
                  v781 = v952;
                  v778 = v979;
                }

                *(v778 + 16) = v780 + 1;
                (*(v976 + 32))(v778 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v780, v781, v977);
                v979 = v778;
                v775 += v776;
                --v773;
              }

              while (v773);
            }

            else
            {

              v778 = MEMORY[0x277D84F90];
            }

            v827 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
            v828 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
            MEMORY[0x21CEB9170](v778, v977, v827, v828);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE6924();

            v720 = type metadata accessor for NewIssueMagazineFeedGroup;
            v826 = v891;
            goto LABEL_274;
          }

          if (v304 == 8)
          {
            v652 = v303;
            v607 = v852;
            sub_2187C5960(v652, v852, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
            v653 = swift_allocBox();
            v655 = sub_218853560(v607, v654, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
            v980 = v653 | 0x8000000000000004;
            MEMORY[0x28223BE20](v655);
            v656 = v969;
            *(&v837 - 4) = v973;
            *(&v837 - 3) = v656;
            *(&v837 - 2) = v607;
            v658 = sub_21894522C(sub_218DE75C8, (&v837 - 6), v657);
            v659 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
            v660 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
            MEMORY[0x21CEB9170](v658, v977, v659, v660);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE6924();
            sub_2188536F8(v924, type metadata accessor for MagazineFeedGroup);
            v611 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_153:
            v451 = v611;
            v452 = v607;
            goto LABEL_277;
          }
        }

        goto LABEL_261;
      }

      if (v304 > 2)
      {
        if (v304 == 3)
        {
          v782 = v855;
          sub_2187C5960(v303, v855, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
          v783 = swift_allocBox();
          sub_218853560(v782, v784, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
          v785 = v973[11];
          v786 = v965;
          sub_219BED874();
          v787 = sub_2188539DC(v783 | 0x7000000000000000);
          v789 = v788;
          v790 = sub_219BF18F4();
          MEMORY[0x28223BE20](v790);
          v791 = v969;
          *(&v837 - 6) = v968;
          *(&v837 - 5) = v785;
          *(&v837 - 4) = v791;
          *(&v837 - 3) = v787;
          *(&v837 - 2) = v789;
          v792 = sub_2188555F4(sub_218855814, (&v837 - 8), v790, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

          (*(v967 + 8))(v786, v966);
          v980 = v783 | 0x7000000000000000;
          v793 = v792[2];
          if (v793)
          {
            v972 = v6;
            v979 = MEMORY[0x277D84F90];
            v973 = v783;

            sub_218C33FB8(v793);
            v794 = *(v954 + 80);
            v971 = v792;
            v795 = v792 + ((v794 + 32) & ~v794);
            v796 = *(v954 + 72);
            do
            {
              v797 = v975;
              sub_218853560(v795, v975, type metadata accessor for TodayModel);
              sub_218853560(v797, v974, type metadata accessor for TodayModel);
              sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
              sub_219BE5FB4();
              sub_2188536F8(v797, type metadata accessor for TodayModel);
              v798 = v979;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21885760C(0, *(v798 + 16) + 1, 1);
                v798 = v979;
              }

              v800 = *(v798 + 16);
              v799 = *(v798 + 24);
              v801 = v948;
              if (v800 >= v799 >> 1)
              {
                sub_21885760C(v799 > 1, v800 + 1, 1);
                v801 = v948;
                v798 = v979;
              }

              *(v798 + 16) = v800 + 1;
              (*(v976 + 32))(v798 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v800, v801, v977);
              v979 = v798;
              v795 += v796;
              --v793;
            }

            while (v793);
          }

          else
          {

            v798 = MEMORY[0x277D84F90];
          }

          v829 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
          v830 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
          MEMORY[0x21CEB9170](v798, v977, v829, v830);
          sub_2186EB3E8();
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE6924();

          v720 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
          v826 = &v887;
          goto LABEL_274;
        }

        if (v304 != 5)
        {
          goto LABEL_261;
        }

        v702 = v853;
        sub_2187C5960(v303, v853, type metadata accessor for MyMagazinesMagazineFeedGroup);
        v703 = v973;
        v704 = v973[22];
        v705 = v973[23];
        __swift_project_boxed_opaque_existential_1(v973 + 19, v704);
        v706 = sub_2195ED0E0(v703 + 24, v704, v705);
        sub_2186EBC7C();
        v708 = v707;
        v709 = swift_allocBox();
        v711 = v710;
        v712 = *(v708 + 48);
        sub_218853560(v702, v710, type metadata accessor for MyMagazinesMagazineFeedGroup);
        *(v711 + v712) = v706;
        v713 = v968;
        if (*(v968 + 16))
        {
          v714 = sub_21870F700(*v702, v702[1]);
          if (v715)
          {
            v716 = *(*(v713 + 56) + 8 * v714);
            v980 = v709 | 0x8000000000000002;
            sub_2186E7F54(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
            v717 = swift_allocObject();
            *(v717 + 16) = xmmword_219C09BA0;
            *v975 = v716;
            swift_storeEnumTagMultiPayload();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            swift_retain_n();

            sub_219BE5FB4();
            v718 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
            v719 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
            MEMORY[0x21CEB9150](v717, v977, v718, v719);
            sub_2186EB3E8();
            sub_219BE6924();

            v720 = type metadata accessor for MyMagazinesMagazineFeedGroup;
            v721 = v702;
            goto LABEL_275;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_281;
      }

      if (v304 == 1)
      {
        v742 = v854;
        sub_2187C5960(v303, v854, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        v743 = swift_allocBox();
        sub_218853560(v742, v744, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        v745 = v973[11];
        v746 = v965;
        sub_219BED874();
        v747 = sub_2188539DC(v743 | 0x6000000000000006);
        v749 = v748;
        v750 = sub_219BF18F4();
        MEMORY[0x28223BE20](v750);
        v751 = v969;
        *(&v837 - 6) = v968;
        *(&v837 - 5) = v745;
        *(&v837 - 4) = v751;
        *(&v837 - 3) = v747;
        *(&v837 - 2) = v749;
        v752 = sub_2188555F4(sub_218855814, (&v837 - 8), v750, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

        (*(v967 + 8))(v746, v966);
        v980 = v743 | 0x6000000000000006;
        v753 = v752[2];
        if (v753)
        {
          v972 = v6;
          v979 = MEMORY[0x277D84F90];
          v973 = v743;

          sub_218C33FB8(v753);
          v754 = *(v954 + 80);
          v971 = v752;
          v755 = v752 + ((v754 + 32) & ~v754);
          v756 = *(v954 + 72);
          do
          {
            v757 = v975;
            sub_218853560(v755, v975, type metadata accessor for TodayModel);
            sub_218853560(v757, v974, type metadata accessor for TodayModel);
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE5FB4();
            sub_2188536F8(v757, type metadata accessor for TodayModel);
            v758 = v979;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21885760C(0, *(v758 + 16) + 1, 1);
              v758 = v979;
            }

            v760 = *(v758 + 16);
            v759 = *(v758 + 24);
            v761 = v947;
            if (v760 >= v759 >> 1)
            {
              sub_21885760C(v759 > 1, v760 + 1, 1);
              v761 = v947;
              v758 = v979;
            }

            *(v758 + 16) = v760 + 1;
            (*(v976 + 32))(v758 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v760, v761, v977);
            v979 = v758;
            v755 += v756;
            --v753;
          }

          while (v753);
        }

        else
        {

          v758 = MEMORY[0x277D84F90];
        }

        v824 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
        v825 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
        MEMORY[0x21CEB9170](v758, v977, v824, v825);
        sub_2186EB3E8();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
        sub_219BE6924();

        v720 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
        v826 = &v886;
        goto LABEL_274;
      }

      if (v304 == 2)
      {
        v305 = v856;
        sub_2187C5960(v303, v856, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        v306 = swift_allocBox();
        sub_218853560(v305, v307, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        v308 = v973[11];
        v309 = v965;
        sub_219BED874();
        v310 = sub_2188539DC(v306 | 0x7000000000000002);
        v312 = v311;
        v313 = sub_219BF18F4();
        MEMORY[0x28223BE20](v313);
        v314 = v969;
        *(&v837 - 6) = v968;
        *(&v837 - 5) = v308;
        *(&v837 - 4) = v314;
        *(&v837 - 3) = v310;
        *(&v837 - 2) = v312;
        v315 = sub_2188555F4(sub_218855814, (&v837 - 8), v313, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

        (*(v967 + 8))(v309, v966);
        v980 = v306 | 0x7000000000000002;
        v316 = v315[2];
        if (v316)
        {
          v972 = v6;
          v979 = MEMORY[0x277D84F90];
          v973 = v306;

          sub_218C33FB8(v316);
          v317 = *(v954 + 80);
          v971 = v315;
          v318 = v315 + ((v317 + 32) & ~v317);
          v319 = *(v954 + 72);
          do
          {
            v320 = v975;
            sub_218853560(v318, v975, type metadata accessor for TodayModel);
            sub_218853560(v320, v974, type metadata accessor for TodayModel);
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
            sub_219BE5FB4();
            sub_2188536F8(v320, type metadata accessor for TodayModel);
            v321 = v979;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21885760C(0, *(v321 + 16) + 1, 1);
              v321 = v979;
            }

            v323 = *(v321 + 16);
            v322 = *(v321 + 24);
            v324 = v949;
            if (v323 >= v322 >> 1)
            {
              sub_21885760C(v322 > 1, v323 + 1, 1);
              v324 = v949;
              v321 = v979;
            }

            *(v321 + 16) = v323 + 1;
            (*(v976 + 32))(v321 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v323, v324, v977);
            v979 = v321;
            v318 += v319;
            --v316;
          }

          while (v316);
        }

        else
        {

          v321 = MEMORY[0x277D84F90];
        }

        v833 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
        v834 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
        MEMORY[0x21CEB9170](v321, v977, v833, v834);
        sub_2186EB3E8();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
        sub_219BE6924();

        v720 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v826 = &v888;
LABEL_274:
        v721 = *(v826 - 32);
LABEL_275:
        sub_2188536F8(v721, v720);
        v451 = type metadata accessor for MagazineFeedGroup;
        v663 = &v956;
LABEL_276:
        v452 = *(v663 - 32);
        goto LABEL_277;
      }

LABEL_261:
      type metadata accessor for TodaySectionFactoryError();
      sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError);
      swift_allocError();
      v822 = v924;
      sub_218853560(v924, v823, type metadata accessor for MagazineFeedGroup);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_2188536F8(v822, type metadata accessor for MagazineFeedGroup);
      v452 = v303;
      v451 = type metadata accessor for MagazineFeedGroup;
LABEL_277:
      sub_2188536F8(v452, v451);

    case 0xAu:
      v567 = v934;
      sub_2187C5960(v179, v934, type metadata accessor for NewFollowTodayFeedGroup);
      v568 = swift_allocBox();
      sub_218853560(v567, v569, type metadata accessor for NewFollowTodayFeedGroup);
      v570 = v973[11];
      v571 = v965;
      sub_219BED874();
      v572 = sub_2188539DC(v568 | 0x2000000000000006);
      v574 = v573;
      v575 = sub_219BF18F4();
      MEMORY[0x28223BE20](v575);
      v576 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v570;
      *(&v837 - 4) = v576;
      *(&v837 - 3) = v572;
      *(&v837 - 2) = v574;
      v577 = sub_2188555F4(sub_218855814, (&v837 - 8), v575, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v571, v966);
      v980 = v568 | 0x2000000000000006;
      v578 = v577[2];
      if (v578)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v568;

        sub_21885760C(0, v578, 0);
        v579 = v979;
        v580 = *(v954 + 80);
        v971 = v577;
        v581 = v577 + ((v580 + 32) & ~v580);
        v582 = *(v954 + 72);
        v583 = v870;
        do
        {
          v584 = v975;
          sub_218853560(v581, v975, type metadata accessor for TodayModel);
          sub_218853560(v584, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v584, type metadata accessor for TodayModel);
          v979 = v579;
          v586 = *(v579 + 16);
          v585 = *(v579 + 24);
          if (v586 >= v585 >> 1)
          {
            sub_21885760C(v585 > 1, v586 + 1, 1);
            v579 = v979;
          }

          *(v579 + 16) = v586 + 1;
          (*(v976 + 32))(v579 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v586, v583, v977);
          v581 += v582;
          --v578;
        }

        while (v578);
      }

      else
      {

        v579 = MEMORY[0x277D84F90];
      }

      v694 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v695 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v579, v977, v694, v695);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for NewFollowTodayFeedGroup;
      v663 = &v966;
      goto LABEL_276;
    case 0xBu:
      v250 = v936;
      sub_2187C5960(v179, v936, type metadata accessor for SubscriptionTodayFeedGroup);
      v251 = swift_allocBox();
      sub_218853560(v250, v252, type metadata accessor for SubscriptionTodayFeedGroup);
      v253 = v973[11];
      v254 = v965;
      sub_219BED874();
      v255 = sub_2188539DC(v251 | 0x3000000000000000);
      v257 = v256;
      v258 = sub_219BF18F4();
      MEMORY[0x28223BE20](v258);
      v259 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v253;
      *(&v837 - 4) = v259;
      *(&v837 - 3) = v255;
      *(&v837 - 2) = v257;
      v260 = sub_2188555F4(sub_218855814, (&v837 - 8), v258, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v254, v966);
      v980 = v251 | 0x3000000000000000;
      v261 = v260[2];
      if (v261)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v251;

        sub_21885760C(0, v261, 0);
        v262 = v979;
        v263 = *(v954 + 80);
        v971 = v260;
        v264 = v260 + ((v263 + 32) & ~v263);
        v265 = *(v954 + 72);
        v266 = v871;
        do
        {
          v267 = v975;
          sub_218853560(v264, v975, type metadata accessor for TodayModel);
          sub_218853560(v267, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v267, type metadata accessor for TodayModel);
          v979 = v262;
          v269 = *(v262 + 16);
          v268 = *(v262 + 24);
          if (v269 >= v268 >> 1)
          {
            sub_21885760C(v268 > 1, v269 + 1, 1);
            v262 = v979;
          }

          *(v262 + 16) = v269 + 1;
          (*(v976 + 32))(v262 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v269, v266, v977);
          v264 += v265;
          --v261;
        }

        while (v261);
      }

      else
      {

        v262 = MEMORY[0x277D84F90];
      }

      v666 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v667 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v262, v977, v666, v667);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for SubscriptionTodayFeedGroup;
      v663 = &v968;
      goto LABEL_276;
    case 0xCu:
      v972 = v6;
      v290 = v913;
      v291 = v935;
      v292 = v179;
      v293 = v914;
      (*(v913 + 32))(v935, v292, v914);
      v294 = swift_allocBox();
      (*(v290 + 16))(v295, v291, v293);
      v974 = v294;
      v980 = v294 | 0x3000000000000002;
      sub_2186E7F54(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
      v296 = swift_allocObject();
      v297 = v973;
      v298 = v296;
      *(v296 + 16) = xmmword_219C09BA0;
      __swift_project_boxed_opaque_existential_1(v297, v297[3]);

      sub_219BEF434();
      swift_storeEnumTagMultiPayload();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE5FB4();
      v299 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v300 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9150](v298, v977, v299, v300);
      sub_2186EB3E8();
      sub_219BE6924();

      (*(v290 + 8))(v935, v293);

    case 0xDu:
      v507 = v937;
      sub_2187C5960(v179, v937, type metadata accessor for SpotlightTodayFeedGroup);
      v508 = swift_allocBox();
      sub_218853560(v507, v509, type metadata accessor for SpotlightTodayFeedGroup);
      v510 = v973[11];
      v511 = v965;
      sub_219BED874();
      v512 = sub_2188539DC(v508 | 0x3000000000000004);
      v514 = v513;
      v515 = sub_219BF18F4();
      MEMORY[0x28223BE20](v515);
      v516 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v510;
      *(&v837 - 4) = v516;
      *(&v837 - 3) = v512;
      *(&v837 - 2) = v514;
      v517 = sub_2188555F4(sub_218855814, (&v837 - 8), v515, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v511, v966);
      v980 = v508 | 0x3000000000000004;
      v518 = v517[2];
      if (v518)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v508;

        sub_218C33FB8(v518);
        v519 = *(v954 + 80);
        v971 = v517;
        v520 = v517 + ((v519 + 32) & ~v519);
        v521 = *(v954 + 72);
        do
        {
          v522 = v975;
          sub_218853560(v520, v975, type metadata accessor for TodayModel);
          sub_218853560(v522, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v522, type metadata accessor for TodayModel);
          v523 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v523 + 16) + 1, 1);
            v523 = v979;
          }

          v525 = *(v523 + 16);
          v524 = *(v523 + 24);
          v526 = v956;
          if (v525 >= v524 >> 1)
          {
            sub_21885760C(v524 > 1, v525 + 1, 1);
            v526 = v956;
            v523 = v979;
          }

          *(v523 + 16) = v525 + 1;
          (*(v976 + 32))(v523 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v525, v526, v977);
          v979 = v523;
          v520 += v521;
          --v518;
        }

        while (v518);
      }

      else
      {

        v523 = MEMORY[0x277D84F90];
      }

      v688 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v689 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v523, v977, v688, v689);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for SpotlightTodayFeedGroup;
      v663 = &v969;
      goto LABEL_276;
    case 0xEu:
      v230 = v938;
      sub_2187C5960(v179, v938, type metadata accessor for SuggestionTodayFeedGroup);
      v231 = swift_allocBox();
      sub_218853560(v230, v232, type metadata accessor for SuggestionTodayFeedGroup);
      v233 = v973[11];
      v234 = v965;
      sub_219BED874();
      v235 = sub_2188539DC(v231 | 0x3000000000000006);
      v237 = v236;
      v238 = sub_219BF18F4();
      MEMORY[0x28223BE20](v238);
      v239 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v233;
      *(&v837 - 4) = v239;
      *(&v837 - 3) = v235;
      *(&v837 - 2) = v237;
      v240 = sub_2188555F4(sub_218855814, (&v837 - 8), v238, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v234, v966);
      v980 = v231 | 0x3000000000000006;
      v241 = v240[2];
      if (v241)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v231;

        sub_218C33FB8(v241);
        v242 = *(v954 + 80);
        v971 = v240;
        v243 = v240 + ((v242 + 32) & ~v242);
        v244 = *(v954 + 72);
        do
        {
          v245 = v975;
          sub_218853560(v243, v975, type metadata accessor for TodayModel);
          sub_218853560(v245, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v245, type metadata accessor for TodayModel);
          v246 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v246 + 16) + 1, 1);
            v246 = v979;
          }

          v248 = *(v246 + 16);
          v247 = *(v246 + 24);
          v249 = v957;
          if (v248 >= v247 >> 1)
          {
            sub_21885760C(v247 > 1, v248 + 1, 1);
            v249 = v957;
            v246 = v979;
          }

          *(v246 + 16) = v248 + 1;
          (*(v976 + 32))(v246 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v248, v249, v977);
          v979 = v246;
          v243 += v244;
          --v241;
        }

        while (v241);
      }

      else
      {

        v246 = MEMORY[0x277D84F90];
      }

      v664 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v665 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v246, v977, v664, v665);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for SuggestionTodayFeedGroup;
      v663 = &v970;
      goto LABEL_276;
    case 0xFu:
      v365 = v939;
      sub_2187C5960(v179, v939, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v366 = swift_allocBox();
      sub_218853560(v365, v367, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v368 = v973[11];
      v369 = v965;
      sub_219BED874();
      v370 = sub_2188539DC(v366 | 0x4000000000000000);
      v372 = v371;
      v373 = sub_219BF18F4();
      MEMORY[0x28223BE20](v373);
      v374 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v368;
      *(&v837 - 4) = v374;
      *(&v837 - 3) = v370;
      *(&v837 - 2) = v372;
      v375 = sub_2188555F4(sub_218855814, (&v837 - 8), v373, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v369, v966);
      v980 = v366 | 0x4000000000000000;
      v376 = v375[2];
      if (v376)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v366;

        sub_218C33FB8(v376);
        v377 = *(v954 + 80);
        v971 = v375;
        v378 = v375 + ((v377 + 32) & ~v377);
        v379 = *(v954 + 72);
        do
        {
          v380 = v975;
          sub_218853560(v378, v975, type metadata accessor for TodayModel);
          sub_218853560(v380, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v380, type metadata accessor for TodayModel);
          v381 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v381 + 16) + 1, 1);
            v381 = v979;
          }

          v383 = *(v381 + 16);
          v382 = *(v381 + 24);
          v384 = v958;
          if (v383 >= v382 >> 1)
          {
            sub_21885760C(v382 > 1, v383 + 1, 1);
            v384 = v958;
            v381 = v979;
          }

          *(v381 + 16) = v383 + 1;
          (*(v976 + 32))(v381 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v383, v384, v977);
          v979 = v381;
          v378 += v379;
          --v376;
        }

        while (v376);
      }

      else
      {

        v381 = MEMORY[0x277D84F90];
      }

      v674 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v675 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v381, v977, v674, v675);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      v663 = &v971;
      goto LABEL_276;
    case 0x10u:
      v210 = v940;
      sub_2187C5960(v179, v940, type metadata accessor for SharedWithYouTodayFeedGroup);
      v211 = swift_allocBox();
      sub_218853560(v210, v212, type metadata accessor for SharedWithYouTodayFeedGroup);
      v213 = v973[11];
      v214 = v965;
      sub_219BED874();
      v215 = sub_2188539DC(v211 | 0x4000000000000004);
      v217 = v216;
      v218 = sub_219BF18F4();
      MEMORY[0x28223BE20](v218);
      v219 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v213;
      *(&v837 - 4) = v219;
      *(&v837 - 3) = v215;
      *(&v837 - 2) = v217;
      v220 = sub_2188555F4(sub_218855814, (&v837 - 8), v218, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v214, v966);
      v980 = v211 | 0x4000000000000004;
      v221 = v220[2];
      if (v221)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v211;

        sub_218C33FB8(v221);
        v222 = *(v954 + 80);
        v971 = v220;
        v223 = v220 + ((v222 + 32) & ~v222);
        v224 = *(v954 + 72);
        do
        {
          v225 = v975;
          sub_218853560(v223, v975, type metadata accessor for TodayModel);
          sub_218853560(v225, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v225, type metadata accessor for TodayModel);
          v226 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v226 + 16) + 1, 1);
            v226 = v979;
          }

          v228 = *(v226 + 16);
          v227 = *(v226 + 24);
          v229 = v959;
          if (v228 >= v227 >> 1)
          {
            sub_21885760C(v227 > 1, v228 + 1, 1);
            v229 = v959;
            v226 = v979;
          }

          *(v226 + 16) = v228 + 1;
          (*(v976 + 32))(v226 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v228, v229, v977);
          v979 = v226;
          v223 += v224;
          --v221;
        }

        while (v221);
      }

      else
      {

        v226 = MEMORY[0x277D84F90];
      }

      v661 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v662 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v226, v977, v661, v662);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v663 = &v972;
      goto LABEL_276;
    case 0x11u:
      v445 = v915;
      sub_2187C5960(v179, v915, type metadata accessor for EngagementTodayFeedGroup);
      v446 = v946;
      sub_218DE66E8(v445, v973, v946);
      v447 = swift_allocBox();
      sub_218853560(v445, v448, type metadata accessor for EngagementTodayFeedGroup);
      v980 = v447 | 0x4000000000000006;
      v449 = v873;
      v450 = v874;
      (*(v873 + 16))(v872, v446, v874);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();
      (*(v449 + 8))(v446, v450);
      v451 = type metadata accessor for EngagementTodayFeedGroup;
      v452 = v445;
      goto LABEL_277;
    case 0x12u:
      v547 = v941;
      sub_2187C5960(v179, v941, type metadata accessor for MySportsTodayFeedGroup);
      v548 = swift_allocBox();
      sub_218853560(v547, v549, type metadata accessor for MySportsTodayFeedGroup);
      v550 = v973[11];
      v551 = v965;
      sub_219BED874();
      v552 = sub_2188539DC(v548 | 0x5000000000000000);
      v554 = v553;
      v555 = sub_219BF18F4();
      MEMORY[0x28223BE20](v555);
      v556 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v550;
      *(&v837 - 4) = v556;
      *(&v837 - 3) = v552;
      *(&v837 - 2) = v554;
      v557 = sub_2188555F4(sub_218855814, (&v837 - 8), v555, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v551, v966);
      v980 = v548 | 0x5000000000000000;
      v558 = v557[2];
      if (v558)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v548;

        sub_218C33FB8(v558);
        v559 = *(v954 + 80);
        v971 = v557;
        v560 = v557 + ((v559 + 32) & ~v559);
        v561 = *(v954 + 72);
        do
        {
          v562 = v975;
          sub_218853560(v560, v975, type metadata accessor for TodayModel);
          sub_218853560(v562, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v562, type metadata accessor for TodayModel);
          v563 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v563 + 16) + 1, 1);
            v563 = v979;
          }

          v565 = *(v563 + 16);
          v564 = *(v563 + 24);
          v566 = v960;
          if (v565 >= v564 >> 1)
          {
            sub_21885760C(v564 > 1, v565 + 1, 1);
            v566 = v960;
            v563 = v979;
          }

          *(v563 + 16) = v565 + 1;
          (*(v976 + 32))(v563 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v565, v566, v977);
          v979 = v563;
          v560 += v561;
          --v558;
        }

        while (v558);
      }

      else
      {

        v563 = MEMORY[0x277D84F90];
      }

      v692 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v693 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v563, v977, v692, v693);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for MySportsTodayFeedGroup;
      v663 = &v973;
      goto LABEL_276;
    case 0x13u:
      v612 = v942;
      sub_2187C5960(v179, v942, type metadata accessor for IntroToSportsTodayFeedGroup);
      v613 = swift_allocBox();
      sub_218853560(v612, v614, type metadata accessor for IntroToSportsTodayFeedGroup);
      v615 = v973[11];
      v616 = v965;
      sub_219BED874();
      v617 = sub_2188539DC(v613 | 0x5000000000000002);
      v619 = v618;
      v620 = sub_219BF18F4();
      MEMORY[0x28223BE20](v620);
      v621 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v615;
      *(&v837 - 4) = v621;
      *(&v837 - 3) = v617;
      *(&v837 - 2) = v619;
      v622 = sub_2188555F4(sub_218855814, (&v837 - 8), v620, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v616, v966);
      v980 = v613 | 0x5000000000000002;
      v623 = v622[2];
      if (v623)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v613;

        sub_218C33FB8(v623);
        v624 = *(v954 + 80);
        v971 = v622;
        v625 = v622 + ((v624 + 32) & ~v624);
        v626 = *(v954 + 72);
        do
        {
          v627 = v975;
          sub_218853560(v625, v975, type metadata accessor for TodayModel);
          sub_218853560(v627, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v627, type metadata accessor for TodayModel);
          v628 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v628 + 16) + 1, 1);
            v628 = v979;
          }

          v630 = *(v628 + 16);
          v629 = *(v628 + 24);
          v631 = v961;
          if (v630 >= v629 >> 1)
          {
            sub_21885760C(v629 > 1, v630 + 1, 1);
            v631 = v961;
            v628 = v979;
          }

          *(v628 + 16) = v630 + 1;
          (*(v976 + 32))(v628 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v630, v631, v977);
          v979 = v628;
          v625 += v626;
          --v623;
        }

        while (v623);
      }

      else
      {

        v628 = MEMORY[0x277D84F90];
      }

      v698 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v699 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v628, v977, v698, v699);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v663 = &v974;
      goto LABEL_276;
    case 0x14u:
      v453 = v923;
      sub_2187C5960(v179, v923, type metadata accessor for ShortcutsTodayFeedGroup);
      __swift_project_boxed_opaque_existential_1(v973 + 14, v973[17]);
      v454 = sub_218C54F50();
      sub_218DDDEAC(v454, &v981);
      v456 = v455;
      v972 = v6;

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      sub_2186E7F54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v457 = swift_allocObject();
      *(v457 + 16) = xmmword_219C09EC0;
      v458 = sub_219BED784();
      v460 = v459;
      v461 = MEMORY[0x277D837D0];
      *(v457 + 56) = MEMORY[0x277D837D0];
      v462 = sub_2186FC3BC();
      *(v457 + 64) = v462;
      *(v457 + 32) = v458;
      *(v457 + 40) = v460;
      v463 = MEMORY[0x21CECC6D0](v456, v461);
      *(v457 + 96) = v461;
      *(v457 + 104) = v462;
      *(v457 + 72) = v463;
      *(v457 + 80) = v464;
      sub_219BE5314();

      v465 = swift_allocBox();
      sub_218853560(v453, v466, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_218DE14BC(v465 | 0x5000000000000004, v453, v969, v456, v981, v970);

      sub_2188536F8(v453, type metadata accessor for ShortcutsTodayFeedGroup);

    case 0x15u:
      v487 = v943;
      sub_2187C5960(v179, v943, type metadata accessor for ChannelTodayFeedGroup);
      v488 = swift_allocBox();
      sub_218853560(v487, v489, type metadata accessor for ChannelTodayFeedGroup);
      v490 = v973[11];
      v491 = v965;
      sub_219BED874();
      v492 = sub_2188539DC(v488 | 0x5000000000000006);
      v494 = v493;
      v495 = sub_219BF18F4();
      MEMORY[0x28223BE20](v495);
      v496 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v490;
      *(&v837 - 4) = v496;
      *(&v837 - 3) = v492;
      *(&v837 - 2) = v494;
      v497 = sub_2188555F4(sub_218855814, (&v837 - 8), v495, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v491, v966);
      v980 = v488 | 0x5000000000000006;
      v498 = v497[2];
      if (v498)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v488;

        sub_218C33FB8(v498);
        v499 = *(v954 + 80);
        v971 = v497;
        v500 = v497 + ((v499 + 32) & ~v499);
        v501 = *(v954 + 72);
        do
        {
          v502 = v975;
          sub_218853560(v500, v975, type metadata accessor for TodayModel);
          sub_218853560(v502, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v502, type metadata accessor for TodayModel);
          v503 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v503 + 16) + 1, 1);
            v503 = v979;
          }

          v505 = *(v503 + 16);
          v504 = *(v503 + 24);
          v506 = v962;
          if (v505 >= v504 >> 1)
          {
            sub_21885760C(v504 > 1, v505 + 1, 1);
            v506 = v962;
            v503 = v979;
          }

          *(v503 + 16) = v505 + 1;
          (*(v976 + 32))(v503 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v505, v506, v977);
          v979 = v503;
          v500 += v501;
          --v498;
        }

        while (v498);
      }

      else
      {

        v503 = MEMORY[0x277D84F90];
      }

      v686 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v687 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v503, v977, v686, v687);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for ChannelTodayFeedGroup;
      v663 = &v975;
      goto LABEL_276;
    case 0x16u:
      v607 = v919;
      sub_2187C5960(v179, v919, type metadata accessor for SavedStoriesTodayFeedGroup);
      v608 = sub_218DE215C(v921, v973, v607);
      v609 = swift_allocBox();
      sub_218853560(v607, v610, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_218DE2454(v609 | 0x6000000000000000, v607, v969, v608, v970);

      v611 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_153;
    case 0x17u:
      v632 = v944;
      sub_2187C5960(v179, v944, type metadata accessor for ChannelPickerTodayFeedGroup);
      v633 = swift_allocBox();
      sub_218853560(v632, v634, type metadata accessor for ChannelPickerTodayFeedGroup);
      v635 = v973[11];
      v636 = v965;
      sub_219BED874();
      v637 = sub_2188539DC(v633 | 0x6000000000000002);
      v639 = v638;
      v640 = sub_219BF18F4();
      MEMORY[0x28223BE20](v640);
      v641 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v635;
      *(&v837 - 4) = v641;
      *(&v837 - 3) = v637;
      *(&v837 - 2) = v639;
      v642 = sub_2188555F4(sub_218855814, (&v837 - 8), v640, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v636, v966);
      v980 = v633 | 0x6000000000000002;
      v643 = v642[2];
      if (v643)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v633;

        sub_218C33FB8(v643);
        v644 = *(v954 + 80);
        v971 = v642;
        v645 = v642 + ((v644 + 32) & ~v644);
        v646 = *(v954 + 72);
        do
        {
          v647 = v975;
          sub_218853560(v645, v975, type metadata accessor for TodayModel);
          sub_218853560(v647, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v647, type metadata accessor for TodayModel);
          v648 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v648 + 16) + 1, 1);
            v648 = v979;
          }

          v650 = *(v648 + 16);
          v649 = *(v648 + 24);
          v651 = v963;
          if (v650 >= v649 >> 1)
          {
            sub_21885760C(v649 > 1, v650 + 1, 1);
            v651 = v963;
            v648 = v979;
          }

          *(v648 + 16) = v650 + 1;
          (*(v976 + 32))(v648 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v650, v651, v977);
          v979 = v648;
          v645 += v646;
          --v643;
        }

        while (v643);
      }

      else
      {

        v648 = MEMORY[0x277D84F90];
      }

      v700 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v701 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v648, v977, v700, v701);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for ChannelPickerTodayFeedGroup;
      v663 = &v976;
      goto LABEL_276;
    case 0x18u:
      v325 = v945;
      sub_2187C5960(v179, v945, type metadata accessor for FoodTodayFeedGroup);
      v326 = swift_allocBox();
      sub_218853560(v325, v327, type metadata accessor for FoodTodayFeedGroup);
      v328 = v973[11];
      v329 = v965;
      sub_219BED874();
      v330 = sub_2188539DC(v326 | 0x6000000000000004);
      v332 = v331;
      v333 = sub_219BF18F4();
      MEMORY[0x28223BE20](v333);
      v334 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v328;
      *(&v837 - 4) = v334;
      *(&v837 - 3) = v330;
      *(&v837 - 2) = v332;
      v335 = sub_2188555F4(sub_218855850, (&v837 - 8), v333, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v329, v966);
      v980 = v326 | 0x6000000000000004;
      v336 = v335[2];
      if (v336)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v326;

        sub_218C33FB8(v336);
        v337 = *(v954 + 80);
        v971 = v335;
        v338 = v335 + ((v337 + 32) & ~v337);
        v339 = *(v954 + 72);
        do
        {
          v340 = v975;
          sub_218853560(v338, v975, type metadata accessor for TodayModel);
          sub_218853560(v340, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v340, type metadata accessor for TodayModel);
          v341 = v979;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v341 + 16) + 1, 1);
            v341 = v979;
          }

          v343 = *(v341 + 16);
          v342 = *(v341 + 24);
          v344 = v964;
          if (v343 >= v342 >> 1)
          {
            sub_21885760C(v342 > 1, v343 + 1, 1);
            v344 = v964;
            v341 = v979;
          }

          *(v341 + 16) = v343 + 1;
          (*(v976 + 32))(v341 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v343, v344, v977);
          v979 = v341;
          v338 += v339;
          --v336;
        }

        while (v336);
      }

      else
      {

        v341 = MEMORY[0x277D84F90];
      }

      v670 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v671 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v341, v977, v670, v671);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for FoodTodayFeedGroup;
      v663 = &v977;
      goto LABEL_276;
    default:
      v180 = v925;
      sub_2187C5960(v179, v925, type metadata accessor for CuratedTodayFeedGroup);
      v181 = swift_allocBox();
      sub_218853560(v180, v182, type metadata accessor for CuratedTodayFeedGroup);
      v183 = v973[11];
      v184 = v965;
      sub_219BED874();
      v185 = sub_2188539DC(v181 | 2);
      v187 = v186;
      v188 = sub_219BF18F4();
      MEMORY[0x28223BE20](v188);
      v189 = v969;
      *(&v837 - 6) = v968;
      *(&v837 - 5) = v183;
      *(&v837 - 4) = v189;
      *(&v837 - 3) = v185;
      *(&v837 - 2) = v187;
      v190 = sub_2188555F4(sub_218855814, (&v837 - 8), v188, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);

      (*(v967 + 8))(v184, v966);
      v980 = v181 | 2;
      v191 = v190[2];
      if (v191)
      {
        v972 = v6;
        v979 = MEMORY[0x277D84F90];
        v973 = v181;

        sub_21885760C(0, v191, 0);
        v192 = v979;
        v193 = *(v954 + 80);
        v971 = v190;
        v194 = v190 + ((v193 + 32) & ~v193);
        v195 = *(v954 + 72);
        v196 = v861;
        do
        {
          v197 = v975;
          sub_218853560(v194, v975, type metadata accessor for TodayModel);
          sub_218853560(v197, v974, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
          sub_219BE5FB4();
          sub_2188536F8(v197, type metadata accessor for TodayModel);
          v979 = v192;
          v199 = *(v192 + 16);
          v198 = *(v192 + 24);
          if (v199 >= v198 >> 1)
          {
            sub_21885760C(v198 > 1, v199 + 1, 1);
            v192 = v979;
          }

          *(v192 + 16) = v199 + 1;
          (*(v976 + 32))(v192 + ((*(v976 + 80) + 32) & ~*(v976 + 80)) + *(v976 + 72) * v199, v196, v977);
          v194 += v195;
          --v191;
        }

        while (v191);
      }

      else
      {

        v192 = MEMORY[0x277D84F90];
      }

      v680 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400);
      v681 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v192, v977, v680, v681);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE6924();

      v451 = type metadata accessor for CuratedTodayFeedGroup;
      v663 = &v957;
      goto LABEL_276;
  }
}

void sub_218853400()
{
  if (!qword_280EE5D30)
  {
    type metadata accessor for TodayModel(255);
    sub_2187FADB8(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5D30);
    }
  }
}

void sub_218853494()
{
  if (!qword_280EE7580)
  {
    sub_218853400();
    sub_2186EF594(&qword_280EE5D38, sub_218853400);
    sub_2186EF594(&qword_280EE5D40, sub_218853400);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7580);
    }
  }
}

uint64_t sub_218853560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2188535C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218853630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218853698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188536F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218853758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188537B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_219BF7AA4();
  sub_219BF5524();
  v6 = sub_219BF7AE4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2188538D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2194B7D34(0, a2, a3, MEMORY[0x277D84460]);
    v5 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21870F700(v7, v8);
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

uint64_t sub_2188539DC(uint64_t a1)
{
  v2 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v169 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v167 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v166 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v165 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v164 = (&v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v163 = (&v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v162);
  v161 = (&v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v160 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v159 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v158 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v157);
  v156 = (&v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v155);
  v154 = (&v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v153 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v152 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v151 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v150);
  v149 = (&v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v148 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v147 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v145 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280();
  v146 = v38;
  v144 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v143 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BED544();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v139 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v43 - 8);
  v138 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855330();
  v137 = v45;
  v136 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v135 = &v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v134 = &v131 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v133 = &v131 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v132 = &v131 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v131 = &v131 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v131 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v131 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v131 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v131 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v131 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v131 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodaySectionGapDescriptor(0);
  v74 = MEMORY[0x28223BE20](a1);
  v76 = &v131 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v74);
  v79 = &v131 - v78;
  switch((v77 >> 58) & 0x3C | (v77 >> 1) & 3)
  {
    case 1uLL:
      v102 = swift_projectBox();
      sub_21885AC00(v102, v69, type metadata accessor for CuratedTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for CuratedTodayFeedGroup;
      goto LABEL_40;
    case 2uLL:
      v98 = swift_projectBox();
      sub_21885AC00(v98, v66, type metadata accessor for NewspaperTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for NewspaperTodayFeedGroup;
      v93 = v66;
      break;
    case 3uLL:
      v100 = swift_projectBox();
      sub_21885AC00(v100, v63, type metadata accessor for LocalNewsTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for LocalNewsTodayFeedGroup;
      v93 = v63;
      break;
    case 4uLL:
      v91 = swift_projectBox();
      sub_21885AC00(v91, v60, type metadata accessor for TrendingTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for TrendingTodayFeedGroup;
      v93 = v60;
      break;
    case 5uLL:
      v109 = swift_projectBox();
      sub_21885AC00(v109, v57, type metadata accessor for ForYouTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for ForYouTodayFeedGroup;
      v93 = v57;
      break;
    case 6uLL:
      v116 = swift_projectBox();
      v69 = v131;
      sub_21885AC00(v116, v131, type metadata accessor for MissedStoriesTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_40;
    case 7uLL:
      v101 = swift_projectBox();
      v69 = v132;
      sub_21885AC00(v101, v132, type metadata accessor for LatestStoriesTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_40;
    case 8uLL:
      v119 = swift_projectBox();
      v69 = v133;
      sub_21885AC00(v119, v133, type metadata accessor for MoreForYouTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_40;
    case 9uLL:
      v95 = swift_projectBox();
      v69 = v134;
      sub_21885AC00(v95, v134, type metadata accessor for TopicTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_40;
    case 0xAuLL:
      v118 = swift_projectBox();
      v112 = v136;
      v113 = v135;
      v114 = v137;
      (*(v136 + 16))(v135, v118, v137);
      v115 = sub_219BEDE34();
      goto LABEL_29;
    case 0xBuLL:
      v90 = swift_projectBox();
      v69 = v138;
      sub_21885AC00(v90, v138, type metadata accessor for NewFollowTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_40;
    case 0xCuLL:
      v94 = swift_projectBox();
      v69 = v139;
      sub_21885AC00(v94, v139, type metadata accessor for SubscriptionTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_40;
    case 0xDuLL:
      v111 = swift_projectBox();
      v112 = v141;
      v113 = v140;
      v114 = v142;
      (*(v141 + 16))(v140, v111, v142);
      v115 = sub_219BED4C4();
LABEL_29:
      v81 = v115;
      (*(v112 + 8))(v113, v114);
      return v81;
    case 0xEuLL:
      v88 = swift_projectBox();
      v69 = v145;
      sub_21885AC00(v88, v145, type metadata accessor for SpotlightTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_40;
    case 0xFuLL:
      v99 = swift_projectBox();
      v69 = v147;
      sub_21885AC00(v99, v147, type metadata accessor for SuggestionTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_40;
    case 0x10uLL:
      v86 = swift_projectBox();
      v69 = v148;
      sub_21885AC00(v86, v148, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_40;
    case 0x11uLL:
      v104 = swift_projectBox();
      v105 = v144;
      v106 = v143;
      v107 = v146;
      (*(v144 + 16))(v143, v104, v146);
      sub_219BEE474();
      v81 = sub_2188539DC(v170);

      (*(v105 + 8))(v106, v107);
      return v81;
    case 0x12uLL:
      v117 = swift_projectBox();
      v83 = v149;
      sub_21885AC00(v117, v149, type metadata accessor for SharedWithYouTodayFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_37;
    case 0x13uLL:
      v123 = swift_projectBox();
      v124 = v151;
      sub_21885AC00(v123, v151, type metadata accessor for EngagementTodayFeedGroup);
      sub_2186F687C();
      sub_219BEDD14();
      sub_21885ACD0(v124, type metadata accessor for EngagementTodayFeedGroup);
      v81 = v170;

      return v81;
    case 0x14uLL:
      v108 = swift_projectBox();
      v69 = v152;
      sub_21885AC00(v108, v152, type metadata accessor for MySportsTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_40;
    case 0x15uLL:
      v110 = swift_projectBox();
      v69 = v153;
      sub_21885AC00(v110, v153, type metadata accessor for IntroToSportsTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_40;
    case 0x16uLL:
      v122 = swift_projectBox();
      v69 = v165;
      sub_21885AC00(v122, v165, type metadata accessor for ShortcutsTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_40;
    case 0x17uLL:
      v125 = swift_projectBox();
      v69 = v166;
      sub_21885AC00(v125, v166, type metadata accessor for ChannelTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_40;
    case 0x18uLL:
      v97 = swift_projectBox();
      v69 = v167;
      sub_21885AC00(v97, v167, type metadata accessor for SavedStoriesTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_40;
    case 0x19uLL:
      v96 = swift_projectBox();
      v69 = v168;
      sub_21885AC00(v96, v168, type metadata accessor for ChannelPickerTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_40;
    case 0x1AuLL:
      v128 = swift_projectBox();
      v69 = v169;
      sub_21885AC00(v128, v169, type metadata accessor for FoodTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_40;
    case 0x1BuLL:
      v82 = swift_projectBox();
      v83 = v154;
      sub_21885AC00(v82, v154, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1CuLL:
      v126 = swift_projectBox();
      v83 = v156;
      sub_21885AC00(v126, v156, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1DuLL:
      v127 = swift_projectBox();
      v69 = v158;
      sub_21885AC00(v127, v158, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_40;
    case 0x1EuLL:
      v120 = swift_projectBox();
      v69 = v159;
      sub_21885AC00(v120, v159, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_40;
    case 0x1FuLL:
      v103 = swift_projectBox();
      v69 = v160;
      sub_21885AC00(v103, v160, type metadata accessor for TrendingMagazineFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for TrendingMagazineFeedGroup;
LABEL_40:
      v92 = v87;
      v93 = v69;
      break;
    case 0x20uLL:
      v121 = swift_projectBox();
      v83 = v161;
      sub_21885AC00(v121, v161, type metadata accessor for NewIssueMagazineFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_37;
    case 0x21uLL:
      sub_2186EBC7C();
      v89 = swift_projectBox();
      v83 = v163;
      sub_21885AC00(v89, v163, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v81 = *v83;

      v84 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_37;
    case 0x22uLL:
      v85 = swift_projectBox();
      v83 = v164;
      sub_21885AC00(v85, v164, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v81 = *v83;

      v84 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_37:
      v92 = v84;
      v93 = v83;
      break;
    default:
      v80 = swift_projectBox();
      sub_21885AC00(v80, v79, type metadata accessor for TodaySectionGapDescriptor);
      sub_21885AC00(v79, v76, type metadata accessor for TodaySectionGapDescriptor);
      if ((*(v71 + 48))(v76, 1, v70) == 1)
      {
        v81 = 7364967;
      }

      else
      {
        sub_21885E5A0(v76, v73, type metadata accessor for TodayBlueprintCollapsedSection);
        sub_2187FAD00();
        v170 = sub_219BE6944();
        v171 = v130;
        MEMORY[0x21CECC330](14906, 0xE200000000000000);
        MEMORY[0x21CECC330](*&v73[*(v70 + 20)], *&v73[*(v70 + 20) + 8]);
        v81 = v170;
        sub_21885ACD0(v73, type metadata accessor for TodayBlueprintCollapsedSection);
      }

      v92 = type metadata accessor for TodaySectionGapDescriptor;
      v93 = v79;
      break;
  }

  sub_21885ACD0(v93, v92);
  return v81;
}

void sub_218855280()
{
  if (!qword_280E91BF0)
  {
    sub_2188552DC();
    v0 = sub_219BEE494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91BF0);
    }
  }
}

unint64_t sub_2188552DC()
{
  result = qword_280EC6348;
  if (!qword_280EC6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6348);
  }

  return result;
}

void sub_218855330()
{
  if (!qword_280E91F30)
  {
    type metadata accessor for MagazineFeedGroup();
    sub_2186EFA5C(&unk_280ED5DE0, type metadata accessor for MagazineFeedGroup);
    sub_2186EFA5C(&unk_280ED5E00, type metadata accessor for MagazineFeedGroup);
    v0 = sub_219BEDE84();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91F30);
    }
  }
}

void sub_218855430()
{
  sub_2187FAD00();
  if (v0 <= 0x3F)
  {
    sub_2188554BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2188554BC()
{
  if (!qword_280E8FBF8)
  {
    sub_218855524();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FBF8);
    }
  }
}

void sub_218855524()
{
  if (!qword_280EE7028)
  {
    sub_219BE5BA4();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7028);
    }
  }
}

uint64_t sub_21885559C()
{
  v0 = type metadata accessor for TodayBlueprintCollapsedSection(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void *sub_2188555F4(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v22 = *(v9 + 72);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    result = a1(&v24, v10);
    if (v6)
    {

      return v11;
    }

    v13 = v24;
    v14 = *(v24 + 16);
    v15 = *(v11 + 16);
    if (__OFADD__(v15, v14))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v15 + v14 <= *(v11 + 24) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a5();
      if (*(v13 + 16))
      {
LABEL_12:
        v16 = (*(v11 + 24) >> 1) - *(v11 + 16);
        result = a6(0);
        if (v16 < v14)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v17 = *(v11 + 16);
          v18 = __OFADD__(v17, v14);
          v19 = v17 + v14;
          if (v18)
          {
            goto LABEL_22;
          }

          *(v11 + 16) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_20;
    }

LABEL_4:
    v10 += v22;
    if (!--v7)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_218855868@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v48 = a4;
  v49 = a5;
  v46 = a2;
  v47 = a3;
  v53 = sub_219BF2094();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2D74();
  if (*(a1 + 16))
  {
    v13 = sub_21870F700(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(a1 + 56) + 8 * v13);
      sub_218856C8C(0, &qword_280E8BCA8, type metadata accessor for TodayModel, MEMORY[0x277D84560]);
      v17 = *(type metadata accessor for TodayModel(0) - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09BA0;
      *(v19 + v18) = v16;
      swift_storeEnumTagMultiPayload();
      *a6 = v19;
    }
  }

  else
  {
  }

  v45 = a6;
  v21 = sub_219BF2D94();
  v22 = *(v21 + 16);
  if (!v22)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_24:
    MEMORY[0x28223BE20](v40);
    v41 = v47;
    *(&v44 - 4) = v46;
    *(&v44 - 3) = v41;
    v42 = v49;
    *(&v44 - 2) = v48;
    *(&v44 - 1) = v42;
    v43 = sub_218855CB0(sub_218856200, (&v44 - 6), v28);

    *v45 = v43;
    return result;
  }

  v24 = *(v8 + 16);
  v23 = v8 + 16;
  v25 = *(v23 + 64);
  v44 = v21;
  v26 = v21 + ((v25 + 32) & ~v25);
  v50 = *(v23 + 56);
  v51 = v24;
  v52 = v23;
  v27 = (v23 - 8);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    v29 = v53;
    v51(v10, v26, v53);
    v30 = sub_219BF2084();
    result = (*v27)(v10, v29);
    v31 = *(v30 + 16);
    v32 = v28[2];
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v33 <= v28[3] >> 1)
    {
      if (*(v30 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      v28 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v35, 1, v28);
      if (*(v30 + 16))
      {
LABEL_18:
        v36 = (v28[3] >> 1) - v28[2];
        result = sub_219BF3C84();
        if (v36 < v31)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v37 = v28[2];
          v38 = __OFADD__(v37, v31);
          v39 = v37 + v31;
          if (v38)
          {
            goto LABEL_29;
          }

          v28[2] = v39;
        }

        goto LABEL_8;
      }
    }

    if (v31)
    {
      goto LABEL_27;
    }

LABEL_8:
    v26 += v50;
    if (!--v22)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_218855CB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_218855FC8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_219BF3C84() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_218F93498(v9, sub_218855FC8);
    }

    else
    {
      v20 = v28;
      sub_21872D044(v9, v28, type metadata accessor for TodayModel);
      sub_21872D044(v20, v30, type metadata accessor for TodayModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_218855FE8(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_218855FE8(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21872D044(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TodayModel);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_21885601C(unint64_t *a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  v6 = sub_218856CF0(*a1);
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = sub_219BF2FA4();
  if (v8 == 1)
  {
    v9 = 0xE900000000000064;
    v10 = 0x656472616F626E6FLL;
  }

  else if (v8)
  {
    v11 = sub_219BF7894();
    MEMORY[0x21CECC330](v11);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v10 = 0x286E776F6E6B6E75;
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = 0xEC00000064656472;
    v10 = 0x616F626E4F746F6ELL;
  }

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;
  sub_219BF6214();
  sub_219BE5314();

  sub_218856F00(a3);
  return a4(v6 & 1);
}

uint64_t sub_218856234@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v53 = a2;
  v54 = a3;
  v7 = sub_219BF1D54();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_218856C8C(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v45 - v11;
  v13 = sub_219BF1DF4();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF1AD4();
  v51 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218856C8C(0, &unk_280EE34A0, MEMORY[0x277D2D148], v9);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v45 - v20;
  v22 = sub_219BF3C84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v23 + 16);
  v45[1] = a1;
  v26(v25, a1, v22);
  v27 = (*(v23 + 88))(v25, v22);
  if (v27 == *MEMORY[0x277D34128])
  {
    (*(v23 + 96))(v25, v22);
    v28 = sub_219BEBD44();
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    sub_219BEE204();
    swift_unknownObjectRelease();
    sub_21885759C(v21, &unk_280EE34A0, MEMORY[0x277D2D148]);
    v29 = type metadata accessor for TodayModel(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return (*(*(v29 - 8) + 56))(a5, 0, 1, v29);
  }

  if (v27 == *MEMORY[0x277D34108])
  {
    (*(v23 + 96))(v25, v22);
    v30 = *v25;
    v31 = sub_219BF0744();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    sub_219BEE194();

    sub_21885759C(v12, &qword_280E90EB0, MEMORY[0x277D32F30]);
    v29 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277D34100])
  {
    (*(v23 + 96))(v25, v22);
    sub_219BEE184();
    swift_unknownObjectRelease();
    v29 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277D34130])
  {
    (*(v23 + 96))(v25, v22);
    v32 = v51;
    (*(v51 + 32))(v18, v25, v16);
    sub_219BEE234();
    (*(v32 + 8))(v18, v16);
    v29 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277D34118])
  {
    (*(v23 + 96))(v25, v22);
    sub_219BEE1C4();
    swift_unknownObjectRelease();
    v29 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277D340E8])
  {
    (*(v23 + 96))(v25, v22);
    sub_219BEE134();
    swift_unknownObjectRelease();
    v34 = type metadata accessor for TodayModel(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v34 - 8) + 56))(a5, 0, 1, v34);
  }

  if (v27 == *MEMORY[0x277D340F8])
  {
    (*(v23 + 96))(v25, v22);
    v36 = v48;
    v35 = v49;
    v37 = v50;
    (*(v49 + 32))(v48, v25, v50);
    sub_219BEE154();
    (*(v35 + 8))(v36, v37);
    v34 = type metadata accessor for TodayModel(0);
    goto LABEL_21;
  }

  if (v27 == *MEMORY[0x277D34120])
  {
    (*(v23 + 96))(v25, v22);
    v38 = *v25;
    sub_219BEE1E4();

    v34 = type metadata accessor for TodayModel(0);
    goto LABEL_21;
  }

  if (v27 == *MEMORY[0x277D34110])
  {
    (*(v23 + 96))(v25, v22);
    v40 = v46;
    v39 = v47;
    (*(v46 + 32))(v15, v25, v47);
    sub_219BEE114();
    (*(v40 + 8))(v15, v39);
    v34 = type metadata accessor for TodayModel(0);
    goto LABEL_21;
  }

  if (v27 != *MEMORY[0x277D340F0])
  {
    sub_218856C8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_219C09BA0;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_219BF7484();
    v42 = v55;
    v43 = v56;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_2186FC3BC();
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    MEMORY[0x21CEB8D80]("Unknown slot item %s encountered. Please update this switch statement to handle the new case.", v45[0]);
  }

  v44 = type metadata accessor for TodayModel(0);
  (*(*(v44 - 8) + 56))(a5, 1, 1, v44);
  return (*(v23 + 8))(v25, v22);
}

void sub_218856C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218856CF0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo);
  v4 = sub_219BF2FA4();
  if (v4 == 1)
  {
    if (a1 >> 62)
    {
      if (sub_219BF7214())
      {
        return 0;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v10 = 0;
    goto LABEL_19;
  }

  if (v4)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_5:
    v6 = *(v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24);
    v7 = *(v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager), v6);
    if ((*(v7 + 24))(v6, v7) == 2)
    {
      v8 = [objc_opt_self() sharedAccount];
      v9 = [v8 isUserSignedInToiCloud];

      if (v9)
      {
        if (qword_280E8D8B0 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        sub_219BE5314();
        v10 = 1;
LABEL_19:
        [v3 setSportsOnboardingState_];
        return 1;
      }
    }

    return 0;
  }

  result = sub_219BF7214();
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_218856F00(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  ObjectType = swift_getObjectType();
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = sub_218857728(v3);
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_219BF6214();
  sub_219BE5314();

  v10 = sub_219BF2FA4();
  v11 = v10;
  v12 = &v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_lastOnboardingState];
  if ((v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_lastOnboardingState + 8] & 1) != 0 || *v12 != v10)
  {
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09EC0;
    v20 = sub_218857728(v3);
    *(v19 + 56) = v8;
    *(v19 + 64) = v9;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    if (v11 == 1)
    {
      v22 = 0x656472616F626E6FLL;
      v23 = 0xE900000000000064;
    }

    else if (v11)
    {
      v51 = 0x286E776F6E6B6E75;
      v52 = 0xE800000000000000;
      v55 = v11;
      v24 = sub_219BF7894();
      MEMORY[0x21CECC330](v24);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v22 = 0x286E776F6E6B6E75;
      v23 = 0xE800000000000000;
    }

    else
    {
      v22 = 0x616F626E4F746F6ELL;
      v23 = 0xEC00000064656472;
    }

    *(v19 + 96) = v8;
    *(v19 + 104) = v9;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    sub_219BF6214();
    sub_219BE5314();

    *v12 = v11;
    v12[8] = 0;
    if ((v3 - 1) > 1u)
    {
      goto LABEL_22;
    }

    if (qword_280EE5FC8 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v25 = sub_219BE5434();
      __swift_project_value_buffer(v25, qword_280F62670);
      v26 = sub_219BE5414();
      v27 = sub_219BF6214();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v51 = v29;
        *v28 = 67109378;
        *(v28 + 4) = v11 == 1;
        *(v28 + 8) = 2080;
        v30 = sub_218857728(v3);
        v32 = sub_2186D1058(v30, v31, &v51);

        *(v28 + 10) = v32;
        _os_log_impl(&dword_2186C1000, v26, v27, "SportsOnboardingManager setting sports notification to enabled=%{BOOL}d with reason=%s", v28, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x21CECF960](v29, -1, -1);
        MEMORY[0x21CECF960](v28, -1, -1);
      }

      v33 = *&v2[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager + 24];
      v34 = *&v2[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager + 32];
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager], v33);
      (*(v34 + 40))(v11 == 1, v33, v34);
LABEL_22:
      v35 = OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_observers;
      result = swift_beginAccess();
      v37 = *&v2[v35];
      if (v37 >> 62)
      {
        result = sub_219BF7214();
        v3 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v3 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v3)
        {
          return result;
        }
      }

      if (v3 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_42:
      swift_once();
    }

    v49 = v11;

    for (i = 0; i != v3; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x21CECE0F0](i, v37);
      }

      else
      {
        v46 = *(v37 + 8 * i + 32);
      }

      v53 = ObjectType;
      v54 = &off_282A47430;
      v51 = v2;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = v3;
        v40 = v2;
        v41 = *(v46 + 24);
        v42 = swift_getObjectType();
        v43 = *(v41 + 8);
        v44 = v40;
        v45 = v41;
        v2 = v40;
        v3 = v39;
        v43(&v51, v49, v42, v45);
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = v2;
      }

      __swift_destroy_boxed_opaque_existential_1(&v51);
    }
  }

  else
  {
    v13 = v8;
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    v15 = sub_218857728(v3);
    *(v14 + 56) = v13;
    *(v14 + 64) = v9;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    if (v11 == 1)
    {
      v17 = 0x656472616F626E6FLL;
      v18 = 0xE900000000000064;
    }

    else if (v11)
    {
      v51 = 0x286E776F6E6B6E75;
      v52 = 0xE800000000000000;
      v55 = v11;
      v48 = sub_219BF7894();
      MEMORY[0x21CECC330](v48);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v17 = 0x286E776F6E6B6E75;
      v18 = 0xE800000000000000;
    }

    else
    {
      v17 = 0x616F626E4F746F6ELL;
      v18 = 0xEC00000064656472;
    }

    *(v14 + 96) = v13;
    *(v14 + 104) = v9;
    *(v14 + 72) = v17;
    *(v14 + 80) = v18;
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_21885759C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218856C8C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

size_t sub_21885760C(size_t a1, int64_t a2, char a3)
{
  result = sub_218793218(a1, a2, a3, *v3, &qword_280E8BFF0, sub_218853400, sub_218853400);
  *v3 = result;
  return result;
}

uint64_t sub_21885765C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61718 = result;
  return result;
}

uint64_t sub_218857728(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v6 = 0xD000000000000011;
    if (a1 == 1)
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      return v6;
    }

    else
    {
      return 1953066601;
    }
  }

  else if (a1 > 4u)
  {
    return 0xD000000000000021;
  }

  else if (a1 == 3)
  {
    sub_219BF7314();

    v1 = [objc_opt_self() sharedAccount];
    v2 = [v1 isUserSignedInToiCloud];

    if (v2)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v3, v4);

    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2188578D8()
{
  sub_2186EB308();
  v82 = *(v0 - 8);
  v83 = v0;
  MEMORY[0x28223BE20](v0);
  v81 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB228();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  v66 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BEEC14();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28();
  v62 = v13;
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v60 = v15;
  v59 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF0D74();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAC68();
  v21 = v20;
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v25 = v24;
  v84 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BF1584();
  v54 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188584D8(v85, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
      v43 = v54;
      (*(v54 + 32))(v30, &v33[*(v42 + 48)], v28);
      v34 = sub_219BF1524();
      (*(v43 + 8))(v30, v28);
      sub_2188594E8(v33, type metadata accessor for TodayGapLocation);
      return v34;
    case 2u:
      v40 = v84;
      (*(v84 + 32))(v27, v33, v25);
      v34 = sub_219BF07B4();
      (*(v40 + 8))(v27, v25);
      return v34;
    case 3u:
      v41 = v55;
      (*(v55 + 32))(v23, v33, v21);
      v34 = sub_219BF07B4();
      (*(v41 + 8))(v23, v21);
      return v34;
    case 4u:
      v34 = sub_219BE5B24();

      return v34;
    case 5u:
      v44 = v56;
      (*(v56 + 32))(v19, v33, v17);
      v45 = sub_219BF0D44();
      v46 = v17;
      v34 = v45;
      (*(v44 + 8))(v19, v46);
      return v34;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
      v48 = *(v47 + 48);
      v49 = v59;
      v50 = v57;
      v51 = v60;
      (*(v59 + 32))(v57, v33, v60);
      v34 = sub_219BF07B4();
      (*(v49 + 8))(v50, v51);
      (*(v84 + 8))(&v33[v48], v25);
      return v34;
    case 7u:
      v37 = v61;
      v36 = v58;
      v38 = v62;
      (*(v61 + 32))(v58, v33, v62);
      goto LABEL_17;
    case 8u:
      return *v33;
    case 9u:
      v37 = v64;
      v36 = v63;
      v38 = v65;
      (*(v64 + 32))(v63, v33, v65);
      v39 = sub_219BEEBE4();
      goto LABEL_18;
    case 0xAu:
      v36 = v66;
      v37 = v67;
      v38 = v68;
      (*(v67 + 32))(v66, v33, v68);
      goto LABEL_17;
    case 0xBu:
      v36 = v69;
      v37 = v70;
      v38 = v71;
      (*(v70 + 32))(v69, v33, v71);
      goto LABEL_17;
    case 0xCu:
      v36 = v72;
      v37 = v73;
      v38 = v74;
      (*(v73 + 32))(v72, v33, v74);
      goto LABEL_17;
    case 0xDu:
      v36 = v75;
      v37 = v76;
      v38 = v77;
      (*(v76 + 32))(v75, v33, v77);
      goto LABEL_17;
    case 0xEu:
      v36 = v78;
      v37 = v79;
      v38 = v80;
      (*(v79 + 32))(v78, v33, v80);
      goto LABEL_17;
    case 0xFu:
      v36 = v81;
      v37 = v82;
      v38 = v83;
      (*(v82 + 32))(v81, v33, v83);
LABEL_17:
      v39 = sub_219BF07B4();
LABEL_18:
      v34 = v39;
      (*(v37 + 8))(v36, v38);
      break;
    default:
      v34 = *v33;
      sub_2186EA920();
      sub_2188594E8(&v33[*(v35 + 48)], type metadata accessor for TodayGapLocation);
      break;
  }

  return v34;
}

id sub_218858444(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_newsletterManager);
  result = [v4 isSubscribed];
  if (result)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v6 = &selRef_optIntoSports;
    }

    else
    {
      v6 = &selRef_optOutOfSports;
    }

    v7 = *v6;

    return [v4 v7];
  }

  return result;
}

uint64_t sub_2188584D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21885853C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(v2, &off_282A6CEF8, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_218858610(uint64_t a1)
{
  swift_getObjectType();
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_218858704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v24 = a1;
  v4 = *(*v3 + 80);
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 96);
  v7 = *(*v3 + 104);
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v23 = sub_219BEBCF4();
  v20 = *(v23 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  result = sub_219BE0BD4();
  if (result)
  {
    result = sub_218858A78(v24, v4, v5, v6, v7);
    if (result)
    {
      v19 = v3[2];
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = v20;
      (*(v20 + 16))(v10, v24, v23);
      v14 = (*(v13 + 80) + 56) & ~*(v13 + 80);
      v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      *(v16 + 2) = v4;
      *(v16 + 3) = v5;
      *(v16 + 4) = v6;
      *(v16 + 5) = v7;
      *(v16 + 6) = v12;
      (*(v13 + 32))(&v16[v14], v10, v23);
      v17 = &v16[v15];
      v18 = v22;
      *v17 = v21;
      *(v17 + 1) = v18;

      sub_219BDD264();
    }
  }

  return result;
}

uint64_t sub_21885895C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218858994()
{
  v1 = sub_219BEBCF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218858A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_219BEC064();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  sub_219BEBCF4();
  sub_219BEBCE4();
  v13 = (*(v10 + 88))(v12, v9);
  v14 = v13 == *MEMORY[0x277D2D4F0];
  if (v13 == *MEMORY[0x277D2D4F0] || v13 == *MEMORY[0x277D2D508])
  {
    goto LABEL_6;
  }

  if (v13 == *MEMORY[0x277D2D4F8] || v13 == *MEMORY[0x277D2D530])
  {
    return 0;
  }

  if (v13 == *MEMORY[0x277D2D520] || v13 == *MEMORY[0x277D2D528] || v13 == *MEMORY[0x277D2D510] || v13 == *MEMORY[0x277D2D518])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x277D2D500])
  {
    return 0;
  }

LABEL_6:
  (*(v10 + 8))(v12, v9);
  return v14;
}

void sub_218858C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_218ADF7A8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218858D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_218847C00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218858DFC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_218858E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v29 = sub_219BDBD64();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v28);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218853400();
  v27 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853494();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  sub_2186EFB34(&qword_280EE5D38, sub_218853400);
  sub_2186EFB34(&qword_280EE5D40, sub_218853400);
  sub_219BE2444();
  sub_2186EA920();
  v18 = *(v17 + 48);
  sub_219BDBD54();
  v19 = sub_219BDBD44();
  v21 = v20;
  (*(v2 + 8))(v4, v29);
  *v6 = v19;
  v6[1] = v21;
  sub_218859270(v32, v6 + v18, type metadata accessor for TodayGapLocation);
  swift_storeEnumTagMultiPayload();
  sub_2186EFB34(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v30 + 8))(v9, v27);
  type metadata accessor for TodaySectionGapDescriptor(0);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v34 = v22;
  (*(v12 + 16))(v31, v16, v11);
  sub_2186EB3E8();
  sub_219BE6924();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_218859270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2188592F4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_219BF2FA4();
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  if (v2 == 1)
  {
    v4 = 0xE900000000000064;
    v5 = 0x656472616F626E6FLL;
  }

  else if (v2)
  {
    v6 = sub_219BF7894();
    MEMORY[0x21CECC330](v6);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v5 = 0x286E776F6E6B6E75;
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000064656472;
    v5 = 0x616F626E4F746F6ELL;
  }

  v7 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v8 = sub_2186FC3BC();
  *(v3 + 64) = v8;
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  if (v1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v9, v10);

  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2188594E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21885955C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2187FAD00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_218859624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_218847DF4(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  sub_21880B928();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a1 + *(type metadata accessor for TodayPrewarmBlueprintModifier() + 20));
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    v18 = v14[2];
    v17 = v14[3];
    (*(v11 + 16))(v13, a2, v10);

    sub_219BEB354();
    (*(v11 + 8))(v13, v10);
    sub_2187FAD00();
    v20 = (*(*(v19 - 8) + 48))(v8, 1, v19);
    sub_218ADF7F0(v8);
    if (v20 == 1)
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C09BA0;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_2186FC3BC();
      *(v21 + 32) = v16;
      *(v21 + 40) = v15;
      sub_219BF6214();
      sub_219BE5314();

      v22 = MEMORY[0x277D6D868];
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09EC0;
      v28 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v29 = sub_2186FC3BC();
      *(v27 + 64) = v29;
      *(v27 + 32) = v16;
      *(v27 + 40) = v15;
      v35 = 0;
      v36 = 0xE000000000000000;
      v34[0] = v18;
      v34[1] = v17;
      type metadata accessor for CGPoint(0);

      sub_219BF7484();
      v30 = v35;
      v31 = v36;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 72) = v30;
      *(v27 + 80) = v31;
      sub_219BF6214();
      sub_219BE5314();

      *a3 = v16;
      a3[1] = v15;
      a3[2] = v18;
      a3[3] = v17;
      v22 = MEMORY[0x277D6D870];
    }

    v32 = *v22;
    v33 = sub_219BE6DF4();
    return (*(*(v33 - 8) + 104))(a3, v32, v33);
  }

  else
  {
    v23 = *MEMORY[0x277D6D868];
    v24 = sub_219BE6DF4();
    v25 = *(*(v24 - 8) + 104);

    return v25(a3, v23, v24);
  }
}

void sub_218859A8C(uint64_t a1)
{
  sub_218859618(a1, *(a1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_subscriptionService));
  [*(a1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo) addObserver_];
  v2 = [objc_opt_self() sharedAccount];
  [v2 addObserver_];
}

void sub_218859B24()
{
  if (!qword_280EE3740)
  {
    sub_21880B928();
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3740);
    }
  }
}

uint64_t sub_218859BA8()
{
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();

  return sub_219BE5314();
}

uint64_t sub_218859C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2187608D4;

  return MEMORY[0x2821D51C0](a1, a2, a3, a4, a5);
}

uint64_t sub_218859D3C(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v49 = a3;
  v50 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v3;
  v8 = sub_219BE99E4();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BED174();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((v6 & v5) + 0x68);
  v15 = *((v6 & v5) + 0x70);
  v16 = *((v6 & v5) + 0x98);
  v37 = *((v6 & v5) + 0x88);
  v38 = v14;
  aBlock = v14;
  v53 = v15;
  v54 = v37;
  v55 = v16;
  v17 = sub_219BEB334();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  if (qword_280E8E3C8 != -1)
  {
    swift_once();
  }

  v39 = qword_280E8E3D0;
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 80) + 96) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v7 + 80);
  v25 = v38;
  *(v24 + 32) = *(v7 + 96);
  *(v24 + 40) = v25;
  *(v24 + 48) = v15;
  *(v24 + 56) = *(v7 + 120);
  v26 = v37;
  *(v24 + 64) = *(v7 + 128);
  *(v24 + 72) = v26;
  *(v24 + 80) = *(v7 + 144);
  *(v24 + 88) = v16;
  (*(v18 + 32))(v24 + v22, v21, v17);
  *(v24 + v23) = v3;
  v56 = sub_21885A3E4;
  v57 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_218793E0C;
  v55 = &block_descriptor_24_7;
  v27 = _Block_copy(&aBlock);
  v28 = v3;
  v29 = v40;
  sub_219BED1A4();
  v51 = MEMORY[0x277D84F90];
  sub_2187FB084(&qword_280E927E0, MEMORY[0x277D85198]);
  v30 = MEMORY[0x277D85198];
  sub_2186DDE18(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21875B274(&qword_280E8EFA0, &qword_280E8EFB0, v30);
  v31 = v43;
  v32 = v45;
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v29, v31, v27);
  _Block_release(v27);
  (*(v44 + 8))(v31, v32);
  (*(v41 + 8))(v29, v42);

  v34 = v46;
  v33 = v47;
  *v46 = nullsub_1;
  v34[1] = 0;
  v35 = v48;
  (*(v33 + 104))(v34, *MEMORY[0x277D6E7E0], v48);
  v50(v34);
  return (*(v33 + 8))(v34, v35);
}

uint64_t sub_21885A2E0()
{
  v1 = sub_219BEB334();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21885A3E4()
{
  v1 = *(sub_219BEB334() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21885A490(v0 + v2, v3);
}

uint64_t sub_21885A490(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *MEMORY[0x277D85000];
  v53 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BDC014();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v5 & v4) + 0x70);
  v9 = *((v5 & v4) + 0x88);
  v10 = *((v5 & v4) + 0x98);
  v52 = *((v5 & v4) + 0x68);
  v64[0] = v52;
  v64[1] = v8;
  v51 = v8;
  v50 = v9;
  v64[2] = v9;
  v65 = v10;
  v49 = v10;
  v11 = sub_219BEB334();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v48 = &v44 - v12;
  v13 = sub_219BF0644();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = *((v5 & v4) + 0x50);
  v21 = *((v5 & v4) + 0x58);
  v47 = *((v5 & v4) + 0x78);
  v46 = v21;
  swift_getAssociatedConformanceWitness();
  v58 = v11;
  v59 = a1;
  result = sub_21885AB90();
  if ((~result & 0xF000000000000007) != 0)
  {
    v45 = result;
    sub_219BEE844();
    (*(v14 + 104))(v17, *MEMORY[0x277D32EF8], v13);
    sub_2187FB084(&unk_280E90EE0, MEMORY[0x277D32F00]);
    v23 = sub_219BF53A4();
    v24 = *(v14 + 8);
    v24(v17, v13);
    v24(v19, v13);
    if (v23)
    {
      return sub_21885AB78(v45);
    }

    else
    {
      v44 = *((*MEMORY[0x277D85000] & *a2) + 0xF8);
      v25 = v44;
      swift_beginAccess();
      v26 = v58;
      v27 = v57;
      v28 = &a2[v25];
      v29 = v48;
      (*(v57 + 16))(v48, v28, v58);
      v30 = v52;
      v31 = v51;
      v32 = v50;
      v33 = v49;
      sub_219BE78E4();
      (*(v27 + 8))(v29, v26);
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v34 = v54;
      v35 = sub_219BE6E14();
      MEMORY[0x28223BE20](v35);
      v36 = v46;
      *(&v44 - 12) = v20;
      *(&v44 - 11) = v36;
      v37 = v53;
      *(&v44 - 10) = *(v53 + 96);
      *(&v44 - 9) = v30;
      v38 = v47;
      *(&v44 - 8) = v31;
      *(&v44 - 7) = v38;
      *(&v44 - 6) = *(v37 + 128);
      *(&v44 - 5) = v32;
      *(&v44 - 4) = *(v37 + 144);
      *(&v44 - 3) = v33;
      *(&v44 - 2) = v59;
      v60 = v30;
      v61 = v31;
      v62 = v32;
      v63 = v33;
      v52 = sub_219BE6A54();
      sub_2187FB084(&unk_280EE9BE0, MEMORY[0x277CC9A28]);
      v39 = v56;
      v53 = sub_219BF57E4();
      v40 = *(v55 + 8);
      v40(v34, v39);
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v41 = sub_219BE6E04();
      MEMORY[0x28223BE20](v41);
      *(&v44 - 2) = a2;
      v42 = sub_219BF57E4();
      v40(v34, v39);
      v43 = v44;
      swift_beginAccess();
      (*(v57 + 24))(&a2[v43], v59, v58);
      swift_endAccess();
      sub_21885AF14(v53, v42);
      sub_21885AB78(v45);

      return __swift_destroy_boxed_opaque_existential_1(v64);
    }
  }

  return result;
}

uint64_t sub_21885AB78(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_21885AB90()
{
  result = sub_219BEB284();
  if ((~result & 0xF000000000000007) != 0)
  {
    v1 = result;
    v2 = sub_219BEE774();
    sub_21885AB78(v1);
    return v2;
  }

  return result;
}

uint64_t sub_21885AC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885AC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885ACD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21885AD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187FAD00();
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

uint64_t sub_21885AE44@<X0>(uint64_t a1@<X8>)
{
  sub_219BEB334();
  sub_219BEB364();
  v2 = sub_219BE6A54();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_21885AF14(unint64_t a1, uint64_t a2)
{
  v176 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v164 = type metadata accessor for OfflineReadinessSection();
  MEMORY[0x28223BE20](v164);
  v163 = (&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = type metadata accessor for OfflineFeedGroupProcessorResult();
  MEMORY[0x28223BE20](v162);
  v161 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BE5434();
  v151 = *(v182 - 8);
  v8 = MEMORY[0x28223BE20](v182);
  v150 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v174 = &v148 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v148 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v160 = &v148 - v15;
  MEMORY[0x28223BE20](v14);
  v159 = &v148 - v16;
  sub_2186EB77C();
  v187 = v17;
  v152 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v165 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v179 = &v148 - v20;
  v21 = *((v5 & v4) + 0x70);
  v22 = *((v5 & v4) + 0x88);
  v189 = v2;
  v23 = *((v5 & v4) + 0x98);
  v180 = v24;
  v197[0] = v24;
  v197[1] = v21;
  v197[2] = v22;
  v198 = v23;
  v25 = sub_219BE6A54();
  v188 = *(v25 - 1);
  v26 = MEMORY[0x28223BE20](v25);
  v173 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v181 = &v148 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v158 = &v148 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v190 = &v148 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v175 = &v148 - v35;
  v148 = v36;
  MEMORY[0x28223BE20](v34);
  v38 = &v148 - v37;
  if (!sub_219BF5A64())
  {
LABEL_11:
    v44 = v176;
    if (sub_219BF5A64())
    {
      v45 = v189;
      v46 = *v189;
      v47 = *MEMORY[0x277D85000];
      v48 = *((*MEMORY[0x277D85000] & *v189) + 0x100);
      v157 = *((*MEMORY[0x277D85000] & *v189) + 0xE0);
      v154 = *((v47 & v46) + 0xB0);
      v153 = *((v47 & v46) + 0xA8);
      v171 = v48;
      swift_beginAccess();
      v49 = 0;
      v172 = 0;
      v186 = (v188 + 16);
      v177 = (v188 + 32);
      v156 = (v152 + 16);
      v155 = (v152 + 8);
      v50 = (v188 + 8);
      v178 = (v151 + 8);
      *&v51 = 136446210;
      v166 = v51;
      v52 = v181;
      v53 = v175;
      v183 = v188 + 8;
      while (1)
      {
        v56 = sub_219BF5A44();
        sub_219BF59D4();
        if (v56)
        {
          v57 = *(v188 + 16);
          v57(v53, (v44 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v49), v25);
        }

        else
        {
          result = sub_219BF7344();
          if (v148 != 8)
          {
            goto LABEL_55;
          }

          v197[0] = result;
          v57 = *v186;
          (*v186)(v53, v197, v25);
          swift_unknownObjectRelease();
        }

        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        v184 = v49 + 1;
        (*v177)(v190, v53, v25);
        sub_219BE6934();
        sub_2186CFDE4(0, &qword_280EB0C68);
        v58 = swift_dynamicCast();
        v185 = v49;
        if (!v58)
        {
          break;
        }

        v59 = *(&v192 + 1);
        v60 = v193;
        __swift_project_boxed_opaque_existential_1(&v191, *(&v192 + 1));
        (*(v60 + 8))(&v194, v59, v60);
        __swift_destroy_boxed_opaque_existential_1(&v191);
        if (!*(&v195 + 1))
        {
          goto LABEL_24;
        }

        sub_2186CB1F0(&v194, v197);
        v61 = v165;
        v62 = v187;
        (*v156)(v165, &v45[v171], v187);
        sub_2187FB084(&qword_280EE7460, sub_2186EB77C);
        sub_219BF5DF4();
        sub_219BF5E84();
        v63 = sub_219BF5E74();
        (*v155)(v61, v62);
        if (v63 >= sub_219BEE524())
        {
          v118 = v149;
          sub_2187FB8F4(v149);
          v119 = v190;
          v57(v52, v190, v25);
          v120 = sub_219BE5414();
          v121 = sub_219BF6214();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = v52;
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            *&v194 = v124;
            *v123 = v166;
            v125 = sub_219BE6944();
            v127 = v126;
            v128 = *v183;
            (*v183)(v122, v25);
            v129 = sub_2186D1058(v125, v127, &v194);

            *(v123 + 4) = v129;
            _os_log_impl(&dword_2186C1000, v120, v121, "Offline Readiness will ignore inserted section because the group limit has been reached, id=%{public}s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v124);
            MEMORY[0x21CECF960](v124, -1, -1);
            MEMORY[0x21CECF960](v123, -1, -1);

            (*v178)(v149, v182);
            v128(v190, v25);
          }

          else
          {

            v130 = *v183;
            (*v183)(v52, v25);
            (*v178)(v118, v182);
            v130(v119, v25);
          }

          __swift_destroy_boxed_opaque_existential_1(v197);
          goto LABEL_35;
        }

        v64 = v159;
        v65 = v45;
        sub_2187FB8F4(v159);
        v66 = v158;
        v57(v158, v190, v25);
        v67 = sub_219BE5414();
        v68 = sub_219BF6214();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v194 = v70;
          *v69 = v166;
          v71 = sub_219BE6944();
          v73 = v72;
          v74 = *v183;
          v170 = v183 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v74(v66, v25);
          v75 = sub_2186D1058(v71, v73, &v194);

          *(v69 + 4) = v75;
          _os_log_impl(&dword_2186C1000, v67, v68, "Offline Readiness will process inserted section, id=%{public}s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          v76 = v189;
          MEMORY[0x21CECF960](v70, -1, -1);
          MEMORY[0x21CECF960](v69, -1, -1);

          v77 = *v178;
          v78 = v182;
          (*v178)(v64, v182);
        }

        else
        {

          v91 = *v183;
          v170 = v183 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v91(v66, v25);
          v77 = *v178;
          v78 = v182;
          (*v178)(v64, v182);
          v76 = v65;
        }

        v92 = *(v76 + v154);
        v93 = v160;
        v94 = sub_2187FB8F4(v160);
        MEMORY[0x28223BE20](v94);
        *(&v148 - 2) = v197;
        *(&v148 - 1) = v93;
        v95 = v172;
        v96 = sub_21885E70C(sub_21885E92C, (&v148 - 4), v92);
        v172 = v95;
        v97 = v161;
        sub_2194F8B9C(v96, v161);
        v77(v93, v78);
        v98 = *(v76 + v153);
        type metadata accessor for OfflineFeedManifest(0);
        v99 = objc_allocWithZone(MEMORY[0x277D30F10]);
        sub_219BDB954();
        v100 = sub_219BF5904();
        v101 = sub_219BF5904();
        v102 = sub_219BF5904();
        v103 = sub_219BF5904();
        v104 = sub_219BF5904();
        v105 = [v99 initWithAssetURLs:v100 assetWrappingKeyIDs:v101 recordIDs:v102 avAssetIDs:v103 avAssetKeyIDs:v104];

        v106 = [v98 interestTokenForContentManifest_];
        v169 = sub_219BE6944();
        v168 = v107;
        v108 = v164;
        v109 = v163;
        sub_2187A96A4(v97, v163 + *(v164 + 20), type metadata accessor for OfflineFeedManifest);
        *&v194 = *(v97 + *(v162 + 20));

        sub_2191EF6DC(v110);
        v167 = v194;
        v111 = v198;
        v112 = v199;
        __swift_project_boxed_opaque_existential_1(v197, v198);
        v113 = *(v112 + 80);
        v114 = v106;
        v115 = v113(v111, v112);
        v45 = v189;
        v116 = v168;
        *v109 = v169;
        v109[1] = v116;
        *(v109 + v108[6]) = v167;
        *(v109 + v108[7]) = v114;
        *(v109 + v108[8]) = v115 & 1;
        swift_beginAccess();
        sub_219BE2404();
        swift_endAccess();

        v117 = v190;
        sub_2194CA4D0(v109, type metadata accessor for OfflineReadinessSection);
        v50 = v183;
        (*v183)(v117, v25);
        sub_2194CA4D0(v97, type metadata accessor for OfflineFeedGroupProcessorResult);
        __swift_destroy_boxed_opaque_existential_1(v197);
        v44 = v176;
        v53 = v175;
LABEL_14:
        v55 = sub_219BF5A64();
        v49 = v185 + 1;
        v52 = v181;
        if (v184 == v55)
        {
          goto LABEL_36;
        }
      }

      v193 = 0;
      v191 = 0u;
      v192 = 0u;
      sub_2194CA650(&v191, &unk_27CC1B090, &qword_280EB0C68, &protocol descriptor for FeedGroupOfflineableProviding, sub_2186C6F70);
      v194 = 0u;
      v195 = 0u;
      v196 = 0;
LABEL_24:
      v79 = v53;
      sub_2194CA650(&v194, &unk_280ECED58, &unk_280ECED60, &protocol descriptor for FeedGroupOfflineable, sub_2186C6F70);
      v80 = v174;
      sub_2187FB8F4(v174);
      v81 = v173;
      v57(v173, v190, v25);
      v82 = sub_219BE5414();
      v83 = sub_219BF6214();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v197[0] = v85;
        *v84 = v166;
        v86 = sub_219BE6944();
        v88 = v87;
        v89 = *v183;
        (*v183)(v81, v25);
        v90 = sub_2186D1058(v86, v88, v197);
        v53 = v175;

        *(v84 + 4) = v90;
        _os_log_impl(&dword_2186C1000, v82, v83, "Offline Readiness will ignore inserted section because it does not support offline mode, id=%{public}s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x21CECF960](v85, -1, -1);
        MEMORY[0x21CECF960](v84, -1, -1);

        v50 = v183;
        (*v178)(v80, v182);
        v89(v190, v25);
        v44 = v176;
        v45 = v189;
      }

      else
      {

        v50 = v183;
        v54 = *v183;
        (*v183)(v81, v25);
        (*v178)(v80, v182);
        v54(v190, v25);
        v45 = v189;
        v53 = v79;
      }

      goto LABEL_14;
    }

    v172 = 0;
LABEL_35:
    v45 = v189;
LABEL_36:
    v25 = MEMORY[0x277D85000];
    v131 = *((*MEMORY[0x277D85000] & *v45) + 0x100);
    swift_beginAccess();
    v132 = v45;
    v133 = v152;
    v134 = *(v152 + 16);
    v135 = v165;
    v136 = v187;
    v134(v165, v132 + v131, v187);
    sub_2187FB084(&qword_280EE7460, sub_2186EB77C);
    sub_219BF5DF4();
    sub_219BF5E84();
    v190 = sub_219BF5E74();
    v137 = *(v133 + 8);
    v137(v135, v136);
    v50 = v132;
    v134(v135, v132 + v131, v136);
    v44 = sub_2194C4F08(v135);
    v137(v135, v136);
    v53 = (v44 >> 62);
    if (v44 >> 62)
    {
LABEL_52:
      result = sub_219BF7214();
      v138 = *v25;
      if (!result)
      {
        goto LABEL_38;
      }
    }

    else
    {
      result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v138 = *v25;
      if (!result)
      {
LABEL_38:
        v139 = *(v50 + *((v138 & *v50) + 0x108));
        if (!v139)
        {
          goto LABEL_56;
        }

        if (*(v139 + 48) == 1)
        {
          *(v139 + 49) = 1;
        }

        else
        {
          *(v139 + 48) = 1;

          sub_219BE3204();

          v140 = sub_219BE2E54();
          sub_219BE3024();

          v138 = *v25;
        }
      }
    }

    v141 = *((v138 & *v50) + 0xF0);

    sub_219BE2E84();

    if ((v194 & 1) == 0)
    {
      v142 = v150;
      sub_2187FB8F4(v150);

      v143 = sub_219BE5414();
      v144 = sub_219BF6214();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *v145 = 134349312;
        if (v53)
        {
          v146 = sub_219BF7214();
        }

        else
        {
          v146 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v145 + 4) = v146;

        *(v145 + 12) = 2050;
        *(v145 + 14) = v190;
        _os_log_impl(&dword_2186C1000, v143, v144, "Offline Readiness processor will prefetch %{public}ld missing asset handles from %{public}ld sections", v145, 0x16u);
        MEMORY[0x21CECF960](v145, -1, -1);
      }

      else
      {
      }

      (*(v151 + 8))(v142, v182);
    }

    v147 = *(v50 + v141);
    swift_beginAccess();
    *(v147 + 72) = v44;

    sub_2187FC154();
  }

  v39 = 0;
  v186 = (v188 + 16);
  v40 = (v188 + 8);
  while (1)
  {
    v41 = sub_219BF5A44();
    sub_219BF59D4();
    if (v41)
    {
      (*(v188 + 16))(v38, a2 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v39, v25);
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_219BF7344();
    if (v148 != 8)
    {
      break;
    }

    v197[0] = result;
    (*v186)(v38, v197, v25);
    swift_unknownObjectRelease();
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    sub_219BE6944();
    (*v40)(v38, v25);
    swift_beginAccess();
    sub_219BE2414();
    swift_endAccess();

    ++v39;
    if (v42 == sub_219BF5A64())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OfflineFeedGroupProcessorResult()
{
  result = qword_280EA8C90;
  if (!qword_280EA8C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21885C740()
{
  type metadata accessor for OfflineFeedManifest(319);
  if (v0 <= 0x3F)
  {
    sub_21885C7F4(319, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21885C7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21885C858@<X0>(uint64_t *a1@<X8>)
{
  v158 = a1;
  v156 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v156);
  v157 = &v109 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v154);
  v155 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v152);
  v153 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v150);
  v151 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v148);
  v149 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v146);
  v147 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v144);
  v145 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v142);
  v143 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v140);
  v141 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v138);
  v139 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v136);
  v137 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v134);
  v135 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v132);
  v133 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v130);
  v131 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v128);
  v129 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v126);
  v127 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v124);
  v125 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280();
  v123 = v18;
  v122 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v121 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v119);
  v120 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v117);
  v118 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v115);
  v116 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v113);
  v114 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v111);
  v112 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v109);
  v110 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v29);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v32);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CuratedTodayFeedGroup();
  result = MEMORY[0x28223BE20](v38);
  v41 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v42 >> 58) & 0x3C | (v42 >> 1) & 3)
  {
    case 1uLL:
      v85 = swift_projectBox();
      sub_21885AC00(v85, v41, type metadata accessor for CuratedTodayFeedGroup);
      v86 = v158;
      v158[3] = v38;
      v86[4] = sub_21885E3D4(&qword_280ECB720, type metadata accessor for CuratedTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
      v63 = type metadata accessor for CuratedTodayFeedGroup;
      v64 = v41;
      goto LABEL_33;
    case 2uLL:
      v71 = swift_projectBox();
      sub_21885AC00(v71, v37, type metadata accessor for NewspaperTodayFeedGroup);
      v72 = v158;
      v158[3] = v35;
      v72[4] = sub_21885E3D4(&qword_27CC0B9B8, type metadata accessor for NewspaperTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
      v63 = type metadata accessor for NewspaperTodayFeedGroup;
      v64 = v37;
      goto LABEL_33;
    case 3uLL:
      v91 = swift_projectBox();
      sub_21885AC00(v91, v34, type metadata accessor for LocalNewsTodayFeedGroup);
      v92 = v158;
      v158[3] = v32;
      v92[4] = sub_21885E3D4(&unk_280EE18D0, type metadata accessor for LocalNewsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
      v63 = type metadata accessor for LocalNewsTodayFeedGroup;
      v64 = v34;
      goto LABEL_33;
    case 4uLL:
      v61 = swift_projectBox();
      sub_21885AC00(v61, v31, type metadata accessor for TrendingTodayFeedGroup);
      v62 = v158;
      v158[3] = v29;
      v62[4] = sub_21885E3D4(&qword_280EC6248, type metadata accessor for TrendingTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
      v63 = type metadata accessor for TrendingTodayFeedGroup;
      v64 = v31;
      goto LABEL_33;
    case 5uLL:
      v89 = swift_projectBox();
      sub_21885AC00(v89, v28, type metadata accessor for ForYouTodayFeedGroup);
      v90 = v158;
      v158[3] = v26;
      v90[4] = sub_21885E3D4(&qword_280ECE988, type metadata accessor for ForYouTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
      v63 = type metadata accessor for ForYouTodayFeedGroup;
      v64 = v28;
      goto LABEL_33;
    case 6uLL:
      v57 = swift_projectBox();
      v45 = v110;
      sub_21885AC00(v57, v110, type metadata accessor for MissedStoriesTodayFeedGroup);
      v58 = v158;
      v158[3] = v109;
      v58[4] = sub_21885E3D4(&qword_280EB7EE8, type metadata accessor for MissedStoriesTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      v48 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_32;
    case 7uLL:
      v59 = swift_projectBox();
      v45 = v112;
      sub_21885AC00(v59, v112, type metadata accessor for LatestStoriesTodayFeedGroup);
      v60 = v158;
      v158[3] = v111;
      v60[4] = sub_21885E3D4(&qword_280EB8558, type metadata accessor for LatestStoriesTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
      v48 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_32;
    case 8uLL:
      v83 = swift_projectBox();
      v45 = v114;
      sub_21885AC00(v83, v114, type metadata accessor for MoreForYouTodayFeedGroup);
      v84 = v158;
      v158[3] = v113;
      v84[4] = sub_21885E3D4(&qword_27CC0B9B0, type metadata accessor for MoreForYouTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      v48 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_32;
    case 9uLL:
      v53 = swift_projectBox();
      v45 = v116;
      sub_21885AC00(v53, v116, type metadata accessor for TopicTodayFeedGroup);
      v54 = v158;
      v158[3] = v115;
      v54[4] = sub_21885E3D4(&qword_280ECFA08, type metadata accessor for TopicTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v48 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_32;
    case 0xBuLL:
      v69 = swift_projectBox();
      v45 = v118;
      sub_21885AC00(v69, v118, type metadata accessor for NewFollowTodayFeedGroup);
      v70 = v158;
      v158[3] = v117;
      v70[4] = sub_21885E3D4(&qword_27CC0B9A8, type metadata accessor for NewFollowTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
      v48 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_32;
    case 0xCuLL:
      v51 = swift_projectBox();
      v45 = v120;
      sub_21885AC00(v51, v120, type metadata accessor for SubscriptionTodayFeedGroup);
      v52 = v158;
      v158[3] = v119;
      v52[4] = sub_21885E3D4(&qword_27CC0B9A0, type metadata accessor for SubscriptionTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      v48 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_32;
    case 0xEuLL:
      v75 = swift_projectBox();
      v45 = v125;
      sub_21885AC00(v75, v125, type metadata accessor for SpotlightTodayFeedGroup);
      v76 = v158;
      v158[3] = v124;
      v76[4] = sub_21885E3D4(&qword_280EC3198, type metadata accessor for SpotlightTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
      v48 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_32;
    case 0xFuLL:
      v87 = swift_projectBox();
      v45 = v127;
      sub_21885AC00(v87, v127, type metadata accessor for SuggestionTodayFeedGroup);
      v88 = v158;
      v158[3] = v126;
      v88[4] = sub_21885E3D4(&qword_280EBFFC0, type metadata accessor for SuggestionTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
      v48 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_32;
    case 0x10uLL:
      v99 = swift_projectBox();
      v45 = v129;
      sub_21885AC00(v99, v129, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v100 = v158;
      v158[3] = v128;
      v100[4] = sub_21885E3D4(&qword_27CC0B998, type metadata accessor for SeenContentMarkTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
      v48 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_32;
    case 0x11uLL:
      v77 = swift_projectBox();
      v78 = v122;
      v79 = v121;
      v80 = v123;
      (*(v122 + 16))(v121, v77, v123);
      sub_219BEE474();
      sub_21885C858(v159);

      return (*(v78 + 8))(v79, v80);
    case 0x12uLL:
      v81 = swift_projectBox();
      v45 = v131;
      sub_21885AC00(v81, v131, type metadata accessor for SharedWithYouTodayFeedGroup);
      v82 = v158;
      v158[3] = v130;
      v82[4] = sub_21885E3D4(&qword_27CC0B990, type metadata accessor for SharedWithYouTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      v48 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_32;
    case 0x14uLL:
      v97 = swift_projectBox();
      v45 = v133;
      sub_21885AC00(v97, v133, type metadata accessor for MySportsTodayFeedGroup);
      v98 = v158;
      v158[3] = v132;
      v98[4] = sub_21885E3D4(&qword_27CC0B988, type metadata accessor for MySportsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
      v48 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_32;
    case 0x15uLL:
      v101 = swift_projectBox();
      v45 = v135;
      sub_21885AC00(v101, v135, type metadata accessor for IntroToSportsTodayFeedGroup);
      v102 = v158;
      v158[3] = v134;
      v102[4] = sub_21885E3D4(&qword_280EB8638, type metadata accessor for IntroToSportsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
      v48 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_32;
    case 0x16uLL:
      v67 = swift_projectBox();
      v45 = v149;
      sub_21885AC00(v67, v149, type metadata accessor for ShortcutsTodayFeedGroup);
      v68 = v158;
      v158[3] = v148;
      v68[4] = sub_21885E3D4(&qword_280EC33D8, type metadata accessor for ShortcutsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
      v48 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_32;
    case 0x17uLL:
      v65 = swift_projectBox();
      v45 = v151;
      sub_21885AC00(v65, v151, type metadata accessor for ChannelTodayFeedGroup);
      v66 = v158;
      v158[3] = v150;
      v66[4] = sub_21885E3D4(&qword_280ECB998, type metadata accessor for ChannelTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
      v48 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_32;
    case 0x18uLL:
      v107 = swift_projectBox();
      v45 = v153;
      sub_21885AC00(v107, v153, type metadata accessor for SavedStoriesTodayFeedGroup);
      v108 = v158;
      v158[3] = v152;
      v108[4] = sub_21885E3D4(&qword_27CC0B980, type metadata accessor for SavedStoriesTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v108);
      v48 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_32;
    case 0x19uLL:
      v44 = swift_projectBox();
      v45 = v155;
      sub_21885AC00(v44, v155, type metadata accessor for ChannelPickerTodayFeedGroup);
      v46 = v158;
      v158[3] = v154;
      v46[4] = sub_21885E3D4(&qword_27CC0B978, type metadata accessor for ChannelPickerTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
      v48 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_32;
    case 0x1AuLL:
      v103 = swift_projectBox();
      v45 = v157;
      sub_21885AC00(v103, v157, type metadata accessor for FoodTodayFeedGroup);
      v104 = v158;
      v158[3] = v156;
      v104[4] = sub_21885E3D4(&qword_280ED3B28, type metadata accessor for FoodTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
      v48 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_32;
    case 0x1BuLL:
      v105 = swift_projectBox();
      v45 = v137;
      sub_21885AC00(v105, v137, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v106 = v158;
      v158[3] = v136;
      v106[4] = sub_21885E3D4(&qword_280EA6AB8, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v106);
      v48 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_32;
    case 0x1CuLL:
      v93 = swift_projectBox();
      v45 = v139;
      sub_21885AC00(v93, v139, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v94 = v158;
      v158[3] = v138;
      v94[4] = sub_21885E3D4(&qword_27CC10E88, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
      v48 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_32;
    case 0x1DuLL:
      v73 = swift_projectBox();
      v45 = v141;
      sub_21885AC00(v73, v141, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v74 = v158;
      v158[3] = v140;
      v74[4] = sub_21885E3D4(&qword_27CC0FD88, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
      v48 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_32;
    case 0x1EuLL:
      v95 = swift_projectBox();
      v45 = v143;
      sub_21885AC00(v95, v143, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v96 = v158;
      v158[3] = v142;
      v96[4] = sub_21885E3D4(&qword_280EB12F0, type metadata accessor for BestOfBundleMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
      v48 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_32;
    case 0x1FuLL:
      v55 = swift_projectBox();
      v45 = v145;
      sub_21885AC00(v55, v145, type metadata accessor for TrendingMagazineFeedGroup);
      v56 = v158;
      v158[3] = v144;
      v56[4] = sub_21885E3D4(&qword_280EBCA60, type metadata accessor for TrendingMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
      v48 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_32;
    case 0x20uLL:
      v49 = swift_projectBox();
      v45 = v147;
      sub_21885AC00(v49, v147, type metadata accessor for NewIssueMagazineFeedGroup);
      v50 = v158;
      v158[3] = v146;
      v50[4] = sub_21885E3D4(&qword_27CC10E80, type metadata accessor for NewIssueMagazineFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      v48 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_32:
      v63 = v48;
      v64 = v45;
LABEL_33:
      result = sub_21885E5A0(v64, boxed_opaque_existential_1, v63);
      break;
    default:
      v43 = v158;
      v158[4] = 0;
      *v43 = 0u;
      *(v43 + 1) = 0u;
      break;
  }

  return result;
}

uint64_t sub_21885E3D4(unint64_t *a1, void (*a2)(uint64_t))
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