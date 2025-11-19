uint64_t sub_21903D748(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v142 = sub_219BDBD34();
  v8 = *(v142 - 8);
  v9 = MEMORY[0x28223BE20](v142);
  v122 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v125 = &v121[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v124 = &v121[-v14];
  MEMORY[0x28223BE20](v13);
  v123 = &v121[-v15];
  sub_218C82694();
  v138 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v134 = &v121[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v136 = &v121[-v19];
  sub_2186DCF58();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v133 = &v121[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v132 = &v121[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v131 = &v121[-v26];
  MEMORY[0x28223BE20](v25);
  v130 = &v121[-v27];
  v137 = sub_219BF4AC4();
  v28 = *(v137 - 8);
  v29 = MEMORY[0x28223BE20](v137);
  v129 = &v121[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v128 = &v121[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v127 = &v121[-v34];
  MEMORY[0x28223BE20](v33);
  v126 = &v121[-v35];
  v36 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v36 = a2 - a1;
  }

  v37 = v36 >> 3;
  v135 = a3;
  v38 = a3 - a2;
  v39 = v38 / 8;
  if (v36 >> 3 >= v38 / 8)
  {
    v140 = a1;
    if (a4 != a2 || &a2[v39] <= a4)
    {
      memmove(a4, a2, 8 * v39);
    }

    v143 = &a4[v39];
    if (v38 >= 8 && a2 > v140)
    {
      v130 = (v28 + 8);
      v124 = v8 + 32;
      v126 = v8 + 8;
      v127 = v8 + 48;
      v82 = v135;
      v141 = a4;
LABEL_40:
      v139 = a2;
      v83 = a2 - 1;
      v84 = v143;
      v131 = a2 - 1;
      do
      {
        v85 = *(v84 - 1);
        v135 = v84 - 1;
        v136 = v82;
        v86 = *v83;

        v87 = v128;
        sub_219BF3FA4();
        v88 = v132;
        sub_219BF4AA4();
        v89 = *v130;
        v90 = v87;
        v91 = v137;
        (*v130)(v90, v137);
        v92 = v129;
        sub_219BF3FA4();
        v93 = v133;
        sub_219BF4AA4();
        v89(v92, v91);
        v94 = *(v138 + 48);
        v95 = v88;
        v96 = v134;
        sub_218A5DD60(v95, v134);
        sub_218A5DD60(v93, &v96[v94]);
        v97 = *v127;
        v98 = v142;
        v99 = (*v127)(v96, 1, v142);
        v100 = v97(&v96[v94], 1, v98);
        if (v99 == 1)
        {
          v101 = v136;
          v82 = v136 - 1;
          if (v100 != 1)
          {
            sub_2189DD39C(&v134[v94]);

            v83 = v131;
LABEL_59:
            a4 = v141;
            if (v101 != v139)
            {
              *v82 = *v83;
            }

            if (v143 <= a4 || (a2 = v83, v83 <= v140))
            {
              a2 = v83;
              goto LABEL_66;
            }

            goto LABEL_40;
          }

          v102 = sub_219ACD918(v85, v86);

          v83 = v131;
          if ((v102 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else if (v100 == 1)
        {
          (*v126)(v134, v142);

          v101 = v136;
          v82 = v136 - 1;
          v83 = v131;
        }

        else
        {
          v103 = v125;
          v104 = *v124;
          v105 = v134;
          v106 = v142;
          (*v124)(v125, v134, v142);
          v107 = v105 + v94;
          v108 = v106;
          v109 = v122;
          v104(v122, v107, v108);
          if (sub_219BDBC94())
          {
            v110 = sub_219BF3F84();
            v112 = v111;
            if (sub_219BF3F84() == v110 && v113 == v112)
            {
              v114 = 0;
            }

            else
            {
              v114 = sub_219BF78F4();
            }

            v119 = *v126;
            (*v126)(v109, v108);
            v119(v125, v108);

            v101 = v136;
            v82 = v136 - 1;
            v83 = v131;
            if (v114)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v115 = sub_219BDBC14();
            v116 = v109;
            v117 = v108;
            v118 = *v126;
            (*v126)(v116, v117);
            v118(v103, v117);

            v101 = v136;
            v82 = v136 - 1;
            v83 = v131;
            if (v115)
            {
              goto LABEL_59;
            }
          }
        }

        a4 = v141;
        v84 = v135;
        if (v143 != v101)
        {
          *v82 = *v135;
        }

        v143 = v84;
      }

      while (v84 > a4);
      v143 = v84;
      a2 = v139;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v37] <= a4)
    {
      memmove(a4, a1, 8 * v37);
    }

    v143 = &a4[v37];
    if (a2 - a1 >= 8 && a2 < v135)
    {
      v40 = a2;
      v133 = v8 + 48;
      v134 = (v28 + 8);
      v129 = v8 + 32;
      v132 = v8 + 8;
      do
      {
        v139 = v40;
        v140 = a1;
        v41 = *v40;
        v141 = a4;
        v42 = *a4;

        v43 = v126;
        sub_219BF3FA4();
        v44 = v130;
        sub_219BF4AA4();
        v45 = *v134;
        v46 = v43;
        v47 = v137;
        (*v134)(v46, v137);
        v48 = v127;
        sub_219BF3FA4();
        v49 = v131;
        sub_219BF4AA4();
        v45(v48, v47);
        v50 = *(v138 + 48);
        v51 = v136;
        sub_218A5DD60(v44, v136);
        sub_218A5DD60(v49, v51 + v50);
        v52 = *v133;
        v53 = v142;
        v54 = (*v133)(v51, 1, v142);
        v55 = v52(v51 + v50, 1, v53);
        if (v54 == 1)
        {
          if (v55 == 1)
          {
            v56 = sub_219ACD918(v41, v42);

            a4 = v141;
            v40 = v139;
            v57 = v135;
            if (v56)
            {
              goto LABEL_17;
            }
          }

          else
          {
            sub_2189DD39C(v136 + v50);

            a4 = v141;
            v40 = v139;
            v57 = v135;
          }
        }

        else
        {
          if (v55 == 1)
          {
            (*v132)(v136, v142);
            a4 = v141;
            v40 = v139;
LABEL_16:
            v57 = v135;

LABEL_17:
            v58 = a4;
            v59 = v140;
            v60 = v140 == a4++;
            if (v60)
            {
              goto LABEL_19;
            }

LABEL_18:
            *v59 = *v58;
            goto LABEL_19;
          }

          v61 = *v129;
          v62 = v123;
          v63 = v136;
          v64 = v142;
          (*v129)(v123, v136, v142);
          v65 = v63 + v50;
          v66 = v124;
          v61(v124, v65, v64);
          v67 = v62;
          v68 = sub_219BDBC94();
          a4 = v141;
          if (v68)
          {
            v69 = sub_219BF3F84();
            v71 = v70;
            v72 = sub_219BF3F84();
            v40 = v139;
            if (v72 == v69 && v73 == v71)
            {

              v74 = *v132;
              v75 = v142;
              (*v132)(v124, v142);
              v74(v123, v75);
              goto LABEL_16;
            }

            v79 = sub_219BF78F4();

            v80 = *v132;
            v81 = v142;
            (*v132)(v124, v142);
            v80(v123, v81);

            v57 = v135;
            if ((v79 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v76 = sub_219BDBC14();
            v77 = v66;
            v78 = *v132;
            (*v132)(v77, v64);
            v78(v67, v64);

            v40 = v139;
            v57 = v135;
            if ((v76 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        v58 = v40;
        v59 = v140;
        v60 = v140 == v40++;
        if (!v60)
        {
          goto LABEL_18;
        }

LABEL_19:
        a1 = v59 + 1;
      }

      while (a4 < v143 && v40 < v57);
    }

    a2 = a1;
  }

LABEL_66:
  if (a2 != a4 || a2 >= (a4 + ((v143 - a4 + (v143 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v143 - a4));
  }

  return 1;
}

uint64_t sub_21903E324(int a1, char *a2)
{
  v39 = a1;
  v3 = sub_219BDBF94();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF4AC4();
  v36 = *(v38 - 8);
  v11 = MEMORY[0x28223BE20](v38);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v40 = MEMORY[0x277D84F90];
  v37 = a2;
  if (a2 >> 62)
  {
LABEL_21:
    v16 = sub_219BF7214();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v28 = v13;
      v29 = v7;
      v30 = v9;
      v31 = v8;
      v8 = 0;
      v7 = v37;
      v17 = v37 & 0xC000000000000001;
      v18 = v37 & 0xFFFFFFFFFFFFFF8;
      v9 = v36 + 8;
      while (1)
      {
        if (v17)
        {
          v13 = MEMORY[0x21CECE0F0](v8, v7);
          v19 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v9 = v30;
            v8 = v31;
            v13 = v28;
            v7 = v29;
            break;
          }
        }

        else
        {
          if (v8 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v13 = *&v7[8 * v8 + 32];

          v19 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_18;
          }
        }

        sub_219BF3FA4();
        if (v39)
        {
          if (v39 == 1)
          {
            v20 = sub_219BF4A74();
          }

          else
          {
            v20 = sub_219BF4A94();
          }
        }

        else
        {
          v20 = sub_219BF4A84();
        }

        v21 = v20;
        (*v9)(v15, v38);
        if (v21)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v7 = v37;
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v8;
        if (v19 == v16)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v22 = sub_219038F68(v39);

  if (v22 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_24;
    }

LABEL_31:

    return MEMORY[0x277D84F90];
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_24:
  if ((v22 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v36 + 8))(v13, v38);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v24 = v32;
    (*(v9 + 32))(v32, v7, v8);
    v25 = v33;
    v26 = sub_219BDBF34();
    MEMORY[0x28223BE20](v26);
    *(&v28 - 2) = v25;
    *(&v28 - 1) = v24;
    v27 = sub_2195EB2C4(sub_218C49FD0, &v28 - 4, v22);

    (*(v34 + 8))(v25, v35);
    (*(v9 + 8))(v24, v8);
    return v27;
  }

  sub_2189DD39C(v7);
  return MEMORY[0x277D84F90];
}

void *sub_21903E868(void *a1)
{
  sub_21903EA54(0, &qword_280E8CB08, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21903EA00();
  sub_219BF7B34();
  if (!v1)
  {
    sub_218A83594();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v8 = v10[15];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21903EA00()
{
  result = qword_280EAB008[0];
  if (!qword_280EAB008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAB008);
  }

  return result;
}

void sub_21903EA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21903EA00();
    v7 = a3(a1, &type metadata for SportsScoreSortingRecentFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21903EACC()
{
  result = qword_27CC15360;
  if (!qword_27CC15360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15360);
  }

  return result;
}

unint64_t sub_21903EB24()
{
  result = qword_280EAAFF8;
  if (!qword_280EAAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAAFF8);
  }

  return result;
}

unint64_t sub_21903EB7C()
{
  result = qword_280EAB000;
  if (!qword_280EAB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAB000);
  }

  return result;
}

id sub_21903EBD0(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_lightGrayColor;
  if (v1 != 2)
  {
    v3 = &selRef_darkGrayColor;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_21903EC60(void *a1)
{
  v2 = [a1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setTextAlignment_];
  }

  v4 = [a1 titleLabel];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    [v6 smallSystemFontSize];
    v7 = [v6 systemFontOfSize_weight_];
    [v5 setFont_];
  }

  if ([a1 isEnabled])
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    [a1 setTitleColor:qword_280F617F8 forState:0];
    if (qword_280E8DA90 != -1)
    {
      swift_once();
    }

    v8 = qword_280F61800;

    [a1 setTitleColor:v8 forState:1];
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 quaternaryLabelColor];
    [a1 setTitleColor:v10 forState:0];

    v11 = [v9 quaternaryLabelColor];
    [a1 setTitleColor:v11 forState:1];
  }
}

id sub_21903EE94(void *a1)
{
  v2 = [a1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setTextAlignment_];
  }

  v4 = [a1 titleLabel];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    [v6 smallSystemFontSize];
    v7 = [v6 systemFontOfSize_weight_];
    [v5 setFont_];
  }

  if (qword_280E8DA88 != -1)
  {
    swift_once();
  }

  [a1 setTitleColor:qword_280F617F8 forState:0];
  if (qword_280E8DA90 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61800;

  return [a1 setTitleColor:v8 forState:1];
}

void sub_21903F008(void *a1)
{
  [a1 setTextAlignment_];
  v2 = objc_opt_self();
  [v2 smallSystemFontSize];
  v3 = [v2 systemFontOfSize_weight_];
  [a1 setFont_];

  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v7[4] = sub_21903EBD0;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_218FEA284;
  v7[3] = &block_descriptor_90;
  v5 = _Block_copy(v7);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  [a1 setTextColor_];
}

BOOL sub_21903F15C(void *a1, uint64_t a2)
{
  if (*(a2 + 8) - 1 > 2)
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_280F625E0);
    v5 = sub_219BE5414();
    v6 = sub_219BF61F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      v9 = PuzzleArchiveFilterOption.identifier.getter();
      v11 = sub_2186D1058(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2186C1000, v5, v6, "Incompatible archive filter option predicate used for filter option %s!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CECF960](v8, -1, -1);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    return 1;
  }

  else
  {
    v2 = *a2;
    return [a1 difficulty] == v2;
  }
}

void sub_21903F2DC(uint64_t a1)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 searchBar];

        v7 = [v3 searchBar];
        v8 = [v7 text];

        [v6 setText_];
      }

      v9 = [v3 searchBar];
      [v9 resignFirstResponder];
    }
  }

  v10 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v11 = [v10 parentViewController];
  if (!v11 || (v12 = v11, v11, v12 != v1))
  {
    [v1 addChildViewController_];
    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v10 view];
      if (v15)
      {
        v16 = v15;
        [v14 addSubview_];

        [v10 didMoveToParentViewController_];
        v17 = [v10 view];
        if (v17)
        {
          v18 = v17;
          v19 = [v1 view];
          if (v19)
          {
            v20 = v19;
            [v19 bounds];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;

            [v18 setFrame_];
            v29 = &v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate];
            swift_unknownObjectWeakLoadStrong();
            *&v10[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8] = *(v29 + 1);
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            v30 = [v10 view];
            if (v30)
            {
              v31 = v30;
              [v30 setPreservesSuperviewLayoutMargins_];

              sub_219BED0C4();
              v32 = swift_unknownObjectWeakLoadStrong();
              if (v32)
              {
                v33 = v32;
                v34 = [v32 searchBar];
              }

              else
              {
                v34 = 0;
              }

              sub_219B5F630(v34);
              return;
            }

LABEL_22:
            __break(1u);
            return;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_21903F5E8()
{
  v1 = [*&v0[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] parentViewController];
  if (v1)
  {
    v2 = v1;

    if (v2 == v0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [Strong searchBar];
      }

      else
      {
        v5 = 0;
      }

      sub_219B5F630(v5);
    }
  }
}

uint64_t sub_21903F744()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *(*&v0[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_styler);

  v2 = [v0 navigationItem];
  v3 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  sub_219BEDA04();
}

void sub_21903F85C(char a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v4 = [v3 parentViewController];
  if (!v4 || (v5 = v4, v4, v5 != v1))
  {
    sub_21903F2DC(0);
    v6 = &v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm];
    v7 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm + 8];
    if (v7)
    {
      v8 = &v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination];
      if ((v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination + 8] & 1) == 0)
      {
        v9 = *v6;
        v10 = *v8;
        *v6 = 0;
        v6[1] = 0;
        *v8 = 0;
        v8[8] = 1;
        v11 = [v3 parentViewController];
        if (v11 && (v12 = v11, sub_218805E54(), v13 = v1, v14 = sub_219BF6DD4(), v13, v12, (v14 & 1) != 0))
        {
          sub_219B5F1FC(v9, v7, 0, v10);
        }

        else
        {
          *v6 = v9;
          v6[1] = v7;

          *v8 = v10;
          v8[8] = 0;
        }
      }
    }
  }
}

void sub_21903FAC8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;

    if (v3 == v0)
    {
      v4 = [v1 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 view];
        if (v6)
        {
          v7 = v6;
          [v6 bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v5 setFrame_];
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_21903FD08(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = v4;
    sub_218805E54();
    v6 = v1;
    v7 = sub_219BF6DD4();

    if (v7)
    {
      v8 = &v3[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(v3, a1, ObjectType, v9);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_21903FE74(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = v4;
    sub_218805E54();
    v6 = v1;
    v7 = sub_219BF6DD4();

    if (v7)
    {
      v8 = &v3[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v3, a1, ObjectType, v9);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_21903FFE0(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = v4;
    sub_218805E54();
    v6 = v1;
    v7 = sub_219BF6DD4();

    if (v7)
    {
      v8 = &v3[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 24))(v3, a1, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      v11 = *&v3[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider + 8];
      v12 = swift_getObjectType();
      (*(v11 + 48))(v12, v11);
    }
  }
}

void sub_21904015C(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = v4;
    sub_218805E54();
    v6 = v1;
    v7 = sub_219BF6DD4();

    if (v7)
    {
      v8 = &v3[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 32))(v3, a1, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      sub_219B5F1FC(0, 0xE000000000000000, 0, *&v3[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination]);
    }
  }
}

void sub_219040418()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController];
  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    sub_218805E54();
    v4 = v0;
    v5 = sub_219BF6DD4();

    if (v5)
    {
      v6 = &v1[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        (*(v7 + 40))(v1, ObjectType, v7);

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_219040514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21904055C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2190405B8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_219041F80(0, &qword_280EE9D88, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21904067C, 0, 0);
}

uint64_t sub_21904067C()
{
  v0[2] = 0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 2;
  *(v3 + 24) = v1;
  v4 = sub_218949740(sub_219041F60, v3, v2);
  v0[8] = v4;

  if (v0[2] < 1)
  {
    v0[3] = v4;
    v11 = swift_task_alloc();
    v0[11] = v11;
    sub_219041F80(0, &qword_27CC15400, sub_219041FE4, MEMORY[0x277D83940]);
    v13 = v12;
    sub_2190420D8(0, &qword_27CC15408, MEMORY[0x277CB9FB0]);
    v15 = v14;
    v16 = sub_219042048();
    *v11 = v0;
    v11[1] = sub_219040A98;

    return MEMORY[0x2821D2738](&unk_219C547E0, 0, v13, v15, v16);
  }

  else
  {
    v5 = v0[6];
    v6 = swift_task_alloc();
    v0[9] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = swift_task_alloc();
    v0[10] = v7;
    sub_2190420D8(0, &qword_27CC15418, MEMORY[0x277CBA1C8]);
    v9 = v8;
    *v7 = v0;
    v7[1] = sub_219040900;
    v10 = v0[4];

    return MEMORY[0x2822007B8](v10, 0, 0, 0xD000000000000019, 0x8000000219D07FD0, sub_2190420D0, v6, v9);
  }
}

uint64_t sub_219040900()
{

  return MEMORY[0x2822009F8](sub_219040A34, 0, 0);
}

uint64_t sub_219040A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219040A98(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_219040BB8, 0, 0);
}

uint64_t sub_219040BB8()
{
  v1 = *(v0 + 56);
  v2 = sub_219BDB744();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_219BF09E4();
  sub_2190423C4(&qword_27CC0EB30, MEMORY[0x277D32FA8]);
  sub_219BDAE14();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_219040CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_219BEFBF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 != *MEMORY[0x277D329F8])
  {
    if (v12 != *MEMORY[0x277D32A00])
    {
      if (v12 != *MEMORY[0x277D32A08])
      {
        if (v12 == *MEMORY[0x277D329F0])
        {
          sub_218718690((a3 + 1), v35);
          v33 = *a3;
          v20 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
          MEMORY[0x28223BE20](v20);
          v22 = (&v34[-2] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v23 + 16))(v22);
          v24 = *v22;
          v25 = type metadata accessor for HistoryService();
          v34[3] = v25;
          v34[4] = &off_282A6F3B0;
          v34[0] = v24;
          IntentItemSectionFactory = type metadata accessor for RecentlyReadIntentItemSectionFactory();
          v27 = swift_allocObject();
          v28 = __swift_mutable_project_boxed_opaque_existential_1(v34, v25);
          MEMORY[0x28223BE20](v28);
          v30 = (&v34[-2] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v31 + 16))(v30);
          v32 = *v30;
          *(v27 + 40) = v25;
          *(v27 + 48) = &off_282A6F3B0;
          *(v27 + 16) = v32;
          *(v27 + 56) = v33;
          swift_unknownObjectRetain();
          __swift_destroy_boxed_opaque_existential_1(v34);
          __swift_destroy_boxed_opaque_existential_1(v35);
          a4[3] = IntentItemSectionFactory;
          result = sub_2190423C4(&qword_27CC15428, type metadata accessor for RecentlyReadIntentItemSectionFactory);
          a4[4] = result;
          *a4 = v27;
          return result;
        }

        goto LABEL_17;
      }

      if (!__OFADD__(*a2, 1))
      {
        ++*a2;
        v18 = type metadata accessor for SuggestedIntentItemSectionFactory();
        v14 = swift_allocObject();
        v33 = *a3;
        *(v14 + 16) = v33;
        a4[3] = v18;
        v15 = &unk_27CC15430;
        v16 = type metadata accessor for SuggestedIntentItemSectionFactory;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      result = sub_219BF78E4();
      __break(1u);
      return result;
    }

    if (!__OFADD__(*a2, 1))
    {
      ++*a2;
      v17 = type metadata accessor for FollowedIntentItemSectionFactory();
      v14 = swift_allocObject();
      v33 = *a3;
      *(v14 + 16) = v33;
      a4[3] = v17;
      v15 = &unk_27CC15438;
      v16 = type metadata accessor for FollowedIntentItemSectionFactory;
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(*a2, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++*a2;
  v13 = type metadata accessor for BlockedIntentItemSectionFactory();
  v14 = swift_allocObject();
  v33 = *a3;
  *(v14 + 16) = v33;
  a4[3] = v13;
  v15 = &unk_27CC15440;
  v16 = type metadata accessor for BlockedIntentItemSectionFactory;
LABEL_10:
  a4[4] = sub_2190423C4(v15, v16);
  *a4 = v14;
  return swift_unknownObjectRetain();
}

uint64_t sub_21904119C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2190411BC, 0, 0);
}

uint64_t sub_2190411BC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_219041278;
  v5 = v0[2];

  return MEMORY[0x282191160](v5, v2, v3);
}

uint64_t sub_219041278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_21904136C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_219042174();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = *a2;
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v13 = *(v10 + 32);
  sub_2186C6148(0, &qword_280E8E3B0);

  v14 = sub_219BF66A4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2190421F8;
  *(v15 + 24) = v12;
  aBlock[4] = sub_218A2DAE0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_91;
  v16 = _Block_copy(aBlock);

  [v13 prewarmFromCacheWithCallbackQueue:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_2190415A0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_219042174();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_219041F80(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_219BF5BF4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a1;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *&v15[(v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;
  v16 = a1;

  sub_218AB3D80(0, 0, v12, &unk_219C547F0, v15);
}

uint64_t sub_2190417C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_219041F80(0, &qword_280EE9D88, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  v6[6] = swift_task_alloc();
  sub_2190420D8(0, &qword_27CC15418, MEMORY[0x277CBA1C8]);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219041910, 0, 0);
}

uint64_t sub_219041910()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    if (qword_27CC08648 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_27CCD8BE8);
    v4 = v1;
    v5 = sub_219BE5414();
    v6 = sub_219BF61F4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_2186C1000, v5, v6, "Error in SuggestedFeedOptionsProvider: %@", v7, 0xCu);
      sub_218962D30(v8);
      MEMORY[0x21CECF960](v8, -1, -1);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    sub_219BF09E4();
    sub_2190423C4(&qword_27CC0EB30, MEMORY[0x277D32FA8]);
    sub_219BDAE24();
    sub_219042174();
    sub_219BF5B64();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v0[2] = v0[5];
    v13 = swift_task_alloc();
    v0[11] = v13;
    sub_219041F80(0, &qword_27CC15400, sub_219041FE4, MEMORY[0x277D83940]);
    v15 = v14;
    sub_2190420D8(0, &qword_27CC15408, MEMORY[0x277CB9FB0]);
    v17 = v16;
    v18 = sub_219042048();
    *v13 = v0;
    v13[1] = sub_219041C30;

    return MEMORY[0x2821D2738](&unk_219C547E0, 0, v15, v17, v18);
  }
}

uint64_t sub_219041C30(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_219041D30, 0, 0);
}

uint64_t sub_219041D30()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = sub_219BDB744();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_219BF09E4();
  sub_2190423C4(&qword_27CC0EB30, MEMORY[0x277D32FA8]);
  sub_219BDAE14();
  (*(v4 + 16))(v2, v1, v3);
  sub_219042174();
  sub_219BF5B64();
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_219041EB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2190405B8(a1, a2);
}

void sub_219041F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219041FE4()
{
  result = qword_27CC0F948;
  if (!qword_27CC0F948)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC0F948);
  }

  return result;
}

unint64_t sub_219042048()
{
  result = qword_27CC15410;
  if (!qword_27CC15410)
  {
    sub_219041F80(255, &qword_27CC15400, sub_219041FE4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15410);
  }

  return result;
}

void sub_2190420D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BF09E4();
    v7 = sub_2190423C4(&qword_27CC0EB30, MEMORY[0x277D32FA8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_219042174()
{
  if (!qword_27CC15420)
  {
    sub_2190420D8(255, &qword_27CC15418, MEMORY[0x277CBA1C8]);
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15420);
    }
  }
}

uint64_t sub_2190421F8(void *a1)
{
  sub_219042174();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2190415A0(a1, v1 + v5, v6);
}

uint64_t sub_219042294(uint64_t a1)
{
  sub_219042174();
  v5 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_2190417C8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2190423C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21904240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v28 = sub_219BEE3D4();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BF0C04();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(a1 + 8);
  v18 = [v17 startDate];
  if (v18)
  {
    v19 = v18;
    sub_219BDBCA4();

    v20 = *a2;
    v21 = sub_219BDBC04();
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v21 = 0;
    v20 = *a2;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v21 timeInterval:v20];

  if (!v22)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 8) != 1)
  {
    return;
  }

  sub_219BF0BB4();
  v23 = [v17 startDate];
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = v23;
  sub_219BDBCA4();

  sub_219BEE3C4();
  (*(v26 + 8))(v6, v28);
  (*(v11 + 8))(v14, v10);
  v25 = sub_219BF0BF4();
  (*(v7 + 8))(v9, v27);
  if (![v22 intersectionWithDateRange_])
  {
LABEL_12:
    __break(1u);
    return;
  }
}

uint64_t type metadata accessor for NewspaperGroupKnobs()
{
  result = qword_280ED0EC8;
  if (!qword_280ED0EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190427E0()
{
  sub_2186C6148(319, &qword_280E8E860);
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x277D839F8];
    sub_2186D0C48(319, &qword_280E8F220, &type metadata for HeroSelectionStrategy, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2186D0C48(319, &qword_280E8EA30, v1, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2186F97D4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL sub_2190428F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEE5D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219042C78();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8DA00);
  if ((sub_219BF6DD4() & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (sub_219419180(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v15 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = *(type metadata accessor for NewspaperGroupKnobs() + 40);
  v18 = *(v12 + 48);
  sub_218F0BDA4(a1 + v17, v14);
  sub_218F0BDA4(a2 + v17, &v14[v18]);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) != 1)
  {
    sub_218F0BDA4(v14, v10);
    if (v19(&v14[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v18], v4);
      sub_219042D3C();
      v21 = sub_219BF53A4();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);
      sub_219042CDC(v14, sub_2186F97D4);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_22:
    sub_219042CDC(v14, sub_219042C78);
    return 0;
  }

  if (v19(&v14[v18], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  sub_219042CDC(v14, sub_2186F97D4);
  return 1;
}

void sub_219042C78()
{
  if (!qword_27CC15448)
  {
    sub_2186F97D4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC15448);
    }
  }
}

uint64_t sub_219042CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219042D3C()
{
  result = qword_27CC15450;
  if (!qword_27CC15450)
  {
    sub_219BEE5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15450);
  }

  return result;
}

uint64_t sub_219042D94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219043580(0, &qword_280E8CEE0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190434C8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2190435E4(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21904351C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219043040(uint64_t a1)
{
  v2 = sub_2190434C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21904307C(uint64_t a1)
{
  v2 = sub_2190434C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190430F8(void *a1)
{
  sub_219043580(0, &qword_280E8C5F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190434C8();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2190435E4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219043358(uint64_t a1)
{
  result = sub_2190435E4(&qword_280ECE988, type metadata accessor for ForYouTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2190433B0(uint64_t a1)
{
  v2 = sub_2190435E4(&qword_280ECE9B8, type metadata accessor for ForYouTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21904341C(void *a1)
{
  a1[1] = sub_2190435E4(&qword_280ECE9B8, type metadata accessor for ForYouTodayFeedGroup);
  a1[2] = sub_2190435E4(&qword_280ECE990, type metadata accessor for ForYouTodayFeedGroup);
  result = sub_2190435E4(&qword_280ECE9A0, type metadata accessor for ForYouTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_2190434C8()
{
  result = qword_280ECE9D0;
  if (!qword_280ECE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE9D0);
  }

  return result;
}

uint64_t sub_21904351C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219043580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190434C8();
    v7 = a3(a1, &type metadata for ForYouTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2190435E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219043640()
{
  result = qword_27CC15458;
  if (!qword_27CC15458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15458);
  }

  return result;
}

unint64_t sub_219043698()
{
  result = qword_280ECE9C0;
  if (!qword_280ECE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE9C0);
  }

  return result;
}

unint64_t sub_2190436F0()
{
  result = qword_280ECE9C8;
  if (!qword_280ECE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE9C8);
  }

  return result;
}

uint64_t SubscriptionStatusCheckBlocker.isCheckAllowed.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_219043820()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t SubscriptionStatusCheckBlocker.handle(received:)()
{
  sub_218C19FB4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 16) = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D6E708], v2);
  sub_219043960();
  swift_allocObject();
  return sub_219BE3014();
}

void sub_219043960()
{
  if (!qword_27CC0F1E8)
  {
    sub_218C19FB4();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F1E8);
    }
  }
}

uint64_t sub_2190439B8()
{
  sub_218C19FB4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 16) = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D6E708], v2);
  sub_219043960();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219043AF8()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_219043B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219044358(0, &qword_27CC15490, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190442A0();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2190443BC(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2190442F4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219043DFC(uint64_t a1)
{
  v2 = sub_2190442A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219043E38(uint64_t a1)
{
  v2 = sub_2190442A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219043EB4(void *a1)
{
  sub_219044358(0, &qword_27CC154A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190442A0();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2190443BC(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219044114(uint64_t a1)
{
  result = sub_2190443BC(&unk_27CC1C5B0, type metadata accessor for PuzzleScoreboardTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21904416C(void *a1)
{
  a1[1] = sub_2190443BC(&qword_27CC15478, type metadata accessor for PuzzleScoreboardTagFeedGroup);
  a1[2] = sub_2190443BC(&qword_27CC15480, type metadata accessor for PuzzleScoreboardTagFeedGroup);
  result = sub_2190443BC(&qword_27CC15488, type metadata accessor for PuzzleScoreboardTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219044218(uint64_t a1)
{
  v2 = sub_2190443BC(&qword_27CC15478, type metadata accessor for PuzzleScoreboardTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2190442A0()
{
  result = qword_27CC15498;
  if (!qword_27CC15498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15498);
  }

  return result;
}

uint64_t sub_2190442F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219044358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190442A0();
    v7 = a3(a1, &type metadata for PuzzleScoreboardTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2190443BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219044418()
{
  result = qword_27CC154A8;
  if (!qword_27CC154A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC154A8);
  }

  return result;
}

unint64_t sub_219044470()
{
  result = qword_27CC154B0;
  if (!qword_27CC154B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC154B0);
  }

  return result;
}

unint64_t sub_2190444C8()
{
  result = qword_27CC154B8;
  if (!qword_27CC154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC154B8);
  }

  return result;
}

uint64_t sub_21904451C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_219044564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for RecipesSearchMoreFeedGroup()
{
  result = qword_27CC154C0;
  if (!qword_27CC154C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219044630(uint64_t a1)
{
  v2 = sub_2190449E8(&qword_27CC154E8);

  return MEMORY[0x282191938](a1, v2);
}

char *sub_219044728(void *a1, void *a2)
{
  v2 = a2;
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for RecipesSearchMoreFeedGroup();
  v6 = *(a1 + *(v5 + 24));
  if (v6 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_18;
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v34 = v2;
    v10 = 0;
    v8 = v35;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CECE0F0](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      v18 = *(v35 + 16);
      v17 = *(v35 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v35 + 16) = v18 + 1;
      v19 = v35 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v7 != v10);
    v2 = v34;
LABEL_18:
    v20 = *(v2 + *(v5 + 24));
    if (v20 >> 62)
    {
      v21 = sub_219BF7214();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = MEMORY[0x277D84F90];
    if (!v21)
    {
LABEL_29:
      v33 = sub_219417FCC(v8, v22);

      return (v33 & 1);
    }

    v36 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v22 = v36;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x21CECE0F0](v23, v20);
        }

        else
        {
          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 identifier];
        v27 = sub_219BF5414();
        v29 = v28;

        v31 = *(v36 + 16);
        v30 = *(v36 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_21870B65C((v30 > 1), v31 + 1, 1);
        }

        ++v23;
        *(v36 + 16) = v31 + 1;
        v32 = v36 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
      }

      while (v21 != v23);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2190449E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipesSearchMoreFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SceneStateManagerBridge.__allocating_init(activityReceiver:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SceneStateManagerBridge.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_219044B20(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  v6 = sub_219BF53D4();
  [v5 *a3];
  swift_unknownObjectRelease();
}

void sub_219044BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *(v5 + 16);
  swift_unknownObjectRetain();
  v8 = sub_219BF53D4();
  [v7 *a5];
  swift_unknownObjectRelease();
}

void sub_219044CB4()
{
  v1 = v0;
  sub_2190457B8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    type metadata accessor for TagFeedViewerViewController();
    v7 = sub_219BE64F4();

    if (v7)
    {

      sub_219045940(v1 + OBJC_IVAR____TtC7NewsUI236TagFeedViewerBarCompressionAnimating_mastheadModel, v4, sub_2190457B8);
      v8 = type metadata accessor for SuperfeedMastheadModel();
      if ((*(*(v8 - 8) + 48))(v4, 1, v8) != 1)
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v9 = swift_unknownObjectWeakLoadStrong();
          if (!v9)
          {
LABEL_13:
            sub_219045A4C(v4, type metadata accessor for SuperfeedMastheadModel);
            return;
          }

          v10 = v9;
          v11 = [v9 view];

          if (v11)
          {
            [v11 safeAreaInsets];

            goto LABEL_13;
          }

          __break(1u);
        }

        else
        {
          sub_219045A4C(v4, type metadata accessor for SuperfeedMastheadModel);
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            sub_219A25E28(v31);

            if (v32)
            {
              v14 = v32;
              sub_2190459F8(v31);
              swift_getObjectType();
              if (swift_conformsToProtocol2())
              {
                sub_219BE90E4();
              }
            }

            else
            {
              sub_219045A4C(v31, sub_2190459A8);
            }
          }

          v15 = swift_unknownObjectWeakLoadStrong();
          if (v15)
          {
            v16 = v15;
            sub_219A25E28(v31);
            if (v32)
            {
              v17 = v32;
              sub_2190459F8(v31);
              type metadata accessor for TagFeedViewController();
              sub_219BF6584();

              v18 = v30;
              if (v30)
              {
                v19 = *&v30[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator];
                swift_unknownObjectRetain();

                if (v19)
                {
                  v20 = *(v19 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
                  swift_unknownObjectRelease();
                  v21 = [v20 searchBar];

                  [v21 frame];
                  v23 = v22;
                  v25 = v24;
                  v27 = v26;
                  v29 = v28;

                  v33.origin.x = v23;
                  v33.origin.y = v25;
                  v33.size.width = v27;
                  v33.size.height = v29;
                  CGRectGetHeight(v33);
                }
              }
            }

            else
            {

              sub_219045A4C(v31, sub_2190459A8);
            }
          }
        }
      }
    }
  }
}

void sub_219045058()
{
  sub_2190457B8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_219045940(v0 + OBJC_IVAR____TtC7NewsUI236TagFeedViewerBarCompressionAnimating_mastheadModel, v3, sub_2190457B8);
  v4 = type metadata accessor for SuperfeedMastheadModel();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
  {
    if (swift_getEnumCaseMultiPayload() > 2)
    {
      sub_219045A4C(v3, type metadata accessor for SuperfeedMastheadModel);
    }

    else
    {
      sub_219045A4C(v3, type metadata accessor for SuperfeedMastheadModel);
      sub_219044CB4();
      sub_219045940(v0 + 40, v8, sub_2190459A8);
      if (v9)
      {
        v5 = v9;
        sub_2190459F8(v8);
        v6 = [v5 view];

        if (v6)
        {
          [v6 safeAreaInsets];
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_219045A4C(v8, sub_2190459A8);
      }
    }
  }
}

id sub_219045294(char a1, double a2)
{
  v5 = sub_219BE8DD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v10 = Strong;
  v11 = *(v2 + 24);
  if (!v11)
  {
    v12 = Strong;
LABEL_11:

LABEL_12:
    (*(v6 + 104))(v8, *MEMORY[0x277D6E320], v5);
    sub_2190458E8();
    sub_219BE2114();
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v11;
  [v12 contentSize];
  v14 = v13;
  sub_219044CB4();
  v16 = v15;
  result = [v10 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v33.origin.x = v20;
    v33.origin.y = v22;
    v33.size.width = v24;
    v33.size.height = v26;
    Height = CGRectGetHeight(v33);
    sub_219044CB4();
    v29 = Height - v28;
    if (v16 > v29)
    {
      v29 = v16;
    }

    if (v29 < v14)
    {
      sub_219045058();
      if (a1)
      {
        (*(v6 + 104))(v8, *MEMORY[0x277D6E320], v5);
        sub_2190458E8();
      }

      else
      {
        if (v30 <= a2)
        {
          v31 = MEMORY[0x277D6E310];
        }

        else
        {
          *v8 = *(v2 + 112);
          v31 = MEMORY[0x277D6E328];
        }

        (*(v6 + 104))(v8, *v31, v5);
        sub_2190458E8();
      }

      sub_219BE2114();

      return (*(v6 + 8))(v8, v5);
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_2190455EC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  sub_219045A4C(v0 + 40, sub_2190459A8);
  sub_219045A4C(v0 + OBJC_IVAR____TtC7NewsUI236TagFeedViewerBarCompressionAnimating_mastheadModel, sub_2190457B8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagFeedViewerBarCompressionAnimating()
{
  result = qword_280E9A200;
  if (!qword_280E9A200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190456EC()
{
  sub_2190457B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2190457B8()
{
  if (!qword_280EC6940[0])
  {
    type metadata accessor for SuperfeedMastheadModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280EC6940);
    }
  }
}

double sub_219045810()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v1 = Strong;
  type metadata accessor for TagFeedViewerViewController();
  v2 = sub_219BE64F4();

  if (!v2)
  {
    return 0.0;
  }

  v3 = [v2 navigationBar];

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;

  return CGRectGetHeight(*&v12);
}

unint64_t sub_2190458E8()
{
  result = qword_280EE4750;
  if (!qword_280EE4750)
  {
    sub_219BE8DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4750);
  }

  return result;
}

uint64_t sub_219045940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2190459A8()
{
  if (!qword_280EBCC30)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EBCC30);
    }
  }
}

uint64_t sub_219045A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of MastheadAdSponsorshipProviderType.fetchAdSponsorship(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_219045BE0()
{
  v37 = v0;
  if (qword_280EE5FA0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[3];
  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62628);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_219BE5414();
  LOBYTE(v3) = sub_219BF61F4();

  v35 = v3;
  v9 = os_log_type_enabled(v8, v3);
  v10 = v0[31];
  v11 = v0[25];
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[12];
  v17 = v0[13];
  if (v9)
  {
    v30 = v0[31];
    v18 = swift_slowAlloc();
    v34 = v11;
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v18 = 136315394;
    v32 = v16;
    v33 = v15;
    v20 = sub_219BEC0F4();
    v22 = v21;
    (*(v14 + 8))(v12, v13);
    v23 = sub_2186D1058(v20, v22, &v36);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v30;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_2186C1000, v8, v35, "MastheadAdSponsorshipProviderType failed to fetch masthead sponsorship for type: %s, with error: %@", v18, 0x16u);
    sub_219046528(v19, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x21CECF960](v31, -1, -1);
    MEMORY[0x21CECF960](v18, -1, -1);

    (*(v17 + 8))(v33, v32);
    v26 = MEMORY[0x277D2D4B8];
    v27 = v34;
  }

  else
  {

    (*(v14 + 8))(v12, v13);
    (*(v17 + 8))(v15, v16);
    v26 = MEMORY[0x277D2D4B8];
    v27 = v11;
  }

  sub_219046528(v27, &qword_280EE3408, v26);
  (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_219045F88(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v30 = a2;
  v31 = sub_219BEC3A4();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEBFA4();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEBFD4();
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x28223BE20](v7);
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEBEB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEBED4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v11 + 104))(v13, *MEMORY[0x277D2D450], v10);
  sub_219BEBEC4();
  sub_218809044(&unk_280EE3430, MEMORY[0x277D2D460]);
  sub_219BEC144();
  (*(v15 + 8))(v17, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v24 + 16))(v23, v30, v25);
  (*(v29 + 104))(v26, *MEMORY[0x277D2D648], v31);
  sub_219BEC0E4();
  v18 = v22;
  sub_219BEBFC4();
  sub_218809044(&qword_280EE3400, MEMORY[0x277D2D4C8]);
  v19 = v27;
  sub_219BEC144();
  return (*(v28 + 8))(v18, v19);
}

uint64_t sub_2190463D4(uint64_t a1, uint64_t a2)
{
  sub_219046584(0, &qword_280EE3408, MEMORY[0x277D2D4B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219046454(void *a1)
{
  v3 = *(sub_219BEBFA4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BEC114() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_219045F88(a1, v1 + v4, v7);
}

uint64_t sub_219046528(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219046584(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219046584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2190466E4()
{
  if ([*(v0 + OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_featureAvailability) useFeedDifferentiationMode])
  {
    v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_bundleSubscriptionManager) cachedSubscription];
    if (objc_getAssociatedObject(v1, v1 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v2 = v14;
        v3 = [v14 integerValue];
        if (v3 == -1)
        {

          goto LABEL_25;
        }

        v4 = v3;
LABEL_11:
        if (objc_getAssociatedObject(v1, ~v4))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v15 = 0u;
          v16 = 0u;
        }

        v17 = v15;
        v18 = v16;
        if (*(&v16 + 1))
        {
          sub_21870AD58();
          if (swift_dynamicCast())
          {
            v5 = v14;
            v6 = [v5 integerValue];

            if ((v6 ^ v4))
            {
              goto LABEL_25;
            }

LABEL_20:
            if (qword_280EE5F18 != -1)
            {
              swift_once();
            }

            v7 = sub_219BE5434();
            __swift_project_value_buffer(v7, qword_280F62538);
            v8 = sub_219BE5414();
            v9 = sub_219BF6214();
            if (!os_log_type_enabled(v8, v9))
            {
              goto LABEL_32;
            }

            v10 = swift_slowAlloc();
            *v10 = 0;
            v11 = "RemoveShortcutCommandHandler is unable to run command, reason=user is not subscribed";
            goto LABEL_31;
          }
        }

        else
        {
          sub_218806FD0(&v17);
        }

        if (v4)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_218806FD0(&v17);
    }

    v2 = 0;
    v4 = 0;
    goto LABEL_11;
  }

LABEL_25:
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_offlineProvider), *(v0 + OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_offlineProvider + 24));
  if (sub_219BEED54())
  {
    return 1;
  }

  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F62538);
  v8 = sub_219BE5414();
  v9 = sub_219BF6214();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "RemoveShortcutCommandHandler is unable to run command, reason=user is offline";
LABEL_31:
    _os_log_impl(&dword_2186C1000, v8, v9, v11, v10, 2u);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

LABEL_32:

  return 0;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI234TagFeedViewerPresentationSelectionOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_219046AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 26))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 25);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_219046AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_219046B48(uint64_t a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v80) = a8;
  v78 = a5;
  v81 = a3;
  v82 = a4;
  v83 = a1;
  v84 = sub_219BE9CD4();
  v9 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881CC88(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v75 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v19 = type metadata accessor for TagFeedViewerLinkPresentation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - v24;
  v79 = a2;
  sub_21904732C(a2, v18);
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    v27 = v83;
    v28 = BYTE1(v80);
    sub_218B0A204(v18);
    if ((v28 - 1) < 2)
    {
      v47 = v27;
      if (sub_219BED0C4())
      {
        sub_2190473C0(0);
        v49 = v48;
        v50 = *(v48 + 64);
        *v27 = 0;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
        v51 = v77;
        sub_21904732C(v79, v77);
        if (v26(v51, 1, v19) == 1)
        {
          sub_218B0A204(v51);
          v52 = sub_219BE7A24();
          (*(*(v52 - 8) + 56))(v27 + v50, 1, 1, v52);
        }

        else
        {
          v61 = *(v19 + 28);
          v62 = v51;
          v63 = sub_219BE7A24();
          v64 = *(v63 - 8);
          v65 = v62 + v61;
          v47 = v27;
          (*(v64 + 16))(v27 + v50, v65, v63);
          sub_219047534(v62);
          (*(v64 + 56))(v27 + v50, 0, 1, v63);
        }

        v66 = v84;
        v67 = (v47 + *(v49 + 80));
        *v67 = 0;
        v67[1] = 0;
        (*(v9 + 104))(v47, *MEMORY[0x277D6E8B0], v66);
      }

      else
      {
        v53 = v78;
        v54 = sub_219BF6394();

        v55 = [v54 superfeedConfigResourceID];
        swift_unknownObjectRelease();
        if (v55)
        {

          sub_2190473C0(0);
          v57 = v56;
          v58 = *(v56 + 64);
          *v27 = 0;
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
          v59 = v76;
          sub_21904732C(v79, v76);
          if (v26(v59, 1, v19) == 1)
          {
            sub_218B0A204(v59);
            v60 = sub_219BE7A24();
            (*(*(v60 - 8) + 56))(v27 + v58, 1, 1, v60);
          }

          else
          {
            v69 = *(v19 + 28);
            v70 = v59;
            v71 = sub_219BE7A24();
            v72 = *(v71 - 8);
            v73 = v70 + v69;
            v47 = v27;
            (*(v72 + 16))(v27 + v58, v73, v71);
            sub_219047534(v70);
            (*(v72 + 56))(v27 + v58, 0, 1, v71);
          }

          v74 = (v47 + *(v57 + 80));
          *v74 = 0;
          v74[1] = 0;
          v68 = MEMORY[0x277D6E8B0];
        }

        else
        {
          v68 = MEMORY[0x277D6E8A8];
        }

        v66 = v84;
        (*(v9 + 104))(v47, *v68, v84);
      }

      (*(v9 + 56))(v47, 0, 1, v66);
    }

    else
    {
      if ((v28 - 3) < 2)
      {
        v29 = v27;
        v30 = v27;
        v31 = v84;
        (*(v9 + 104))(v30, *MEMORY[0x277D6E8B8], v84);
        (*(v9 + 56))(v29, 0, 1, v31);
        return 1;
      }

      (*(v9 + 56))(v27, 1, 1, v84);
    }
  }

  else
  {
    sub_219047590(v18, v25);
    sub_2190473C0(0);
    v34 = *(v33 + 64);
    v79 = &v11[*(v33 + 80)];
    v35 = *v25;
    v80 = *(v25 + 1);
    v36 = v80;
    *v11 = v35;
    *(v11 + 1) = v36;
    v11[16] = v25[16];
    v37 = *(v19 + 28);
    v38 = sub_219BE7A24();
    v39 = *(v38 - 8);
    (*(v39 + 16))(&v11[v34], &v25[v37], v38);
    (*(v39 + 56))(&v11[v34], 0, 1, v38);
    sub_219047590(v25, v23);
    v40 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v41 = swift_allocObject();
    sub_219047590(v23, v41 + v40);
    v42 = (v41 + ((v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    v43 = v82;
    *v42 = v81;
    v42[1] = v43;
    v44 = v79;
    *v79 = sub_219047868;
    v44[1] = v41;
    v45 = v84;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E8B0], v84);
    v46 = v83;
    (*(v9 + 32))(v83, v11, v45);
    (*(v9 + 56))(v46, 0, 1, v45);
  }

  return 0;
}

uint64_t sub_21904732C(uint64_t a1, uint64_t a2)
{
  sub_21881CC88(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2190473C0(uint64_t a1)
{
  if (!qword_280E8F868)
  {
    MEMORY[0x28223BE20](a1);
    sub_2186E3374();
    v1 = MEMORY[0x277D83D88];
    sub_21881CC88(255, &qword_280EE4FA8, MEMORY[0x277D6DC28], MEMORY[0x277D83D88]);
    sub_21881CC88(255, &unk_280E8B4C0, sub_218788800, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_280E8F868);
    }
  }
}

uint64_t sub_219047534(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedViewerLinkPresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219047590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedViewerLinkPresentation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190475F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  if (v4 >> 62)
  {
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    sub_2186C6148(0, &qword_280E8D9D0);
    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v8, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 name];
      sub_219BF5414();

      v12 = swift_allocObject();
      v12[2] = a2;
      v12[3] = a3;
      v12[4] = v10;

      v13 = 0;
      v14 = 0;
      v16 = sub_219047A10;
      v17 = v12;
      v15 = 0;
      sub_219BF6E14();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v5 != v8);
    v6 = v19;
  }

  if (v6 >> 62)
  {
    sub_2186C6148(0, &unk_280E8E710);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186C6148(0, &unk_280E8E710);
  }

  sub_2186C6148(0, &qword_280E8DAF0);
  return sub_219BF6BF4();
}

uint64_t sub_219047868()
{
  v1 = *(type metadata accessor for TagFeedViewerLinkPresentation() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_2190475F4(v0 + v2, v4, v5);
}

uint64_t sub_2190478F8(void *a1)
{
  if ([a1 feedConfiguration] != 3)
  {
    return 0;
  }

  v2 = [a1 alternativeFeedDescriptor];
  if (v2)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_219047958(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v8 = 0x2D736575737369;
    v3 = [a1 identifier];
    v4 = sub_219BF5414();
    v6 = v5;

    MEMORY[0x21CECC330](v4, v6);
  }

  else
  {
    v8 = 0x2D64656566;
    MEMORY[0x21CECC330]();
  }

  return v8;
}

uint64_t sub_219047A10()
{
  v1 = *(v0 + 16);
  sub_219BF6394();
  v1();

  return swift_unknownObjectRelease();
}

void *sub_219047A64(void *a1)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_21881CC88(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  v3 = sub_21988DFA0();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_219BF6214();
  sub_219BE5314();

  v6 = [a1 backingChannel];
  v7 = [a1 feedConfiguration];
  if (v6)
  {
    if (v7 < 2)
    {
      swift_unknownObjectRelease();
      v8 = [a1 backingSectionID];
      sub_219BF5414();

      return a1;
    }

    if (v7 == 2)
    {
      return a1;
    }

    swift_unknownObjectRelease();
  }

  v9 = [a1 alternativeFeedDescriptor];
  v10 = [a1 alternativeFeedDescriptor];
  if (!v10)
  {
    if (!v9)
    {
      return a1;
    }

LABEL_14:

    return a1;
  }

  v11 = v10;
  v12 = [v10 feedConfiguration];

  if (v9 && v12 != 5)
  {
    goto LABEL_14;
  }

  return a1;
}

uint64_t type metadata accessor for SportsLinksTagFeedGroupConfigData()
{
  result = qword_280EA1C68;
  if (!qword_280EA1C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219047D1C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21904824C(0, &qword_280E8C978, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190481F8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 15;
    v13 = type metadata accessor for SportsLinksTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219047F84(void *a1)
{
  v3 = v1;
  sub_21904824C(0, &qword_27CC15570, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190481F8();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsLinksTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219048150(uint64_t a1)
{
  v2 = sub_2190481F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21904818C(uint64_t a1)
{
  v2 = sub_2190481F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2190481F8()
{
  result = qword_280EA1CA8[0];
  if (!qword_280EA1CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1CA8);
  }

  return result;
}

void sub_21904824C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190481F8();
    v7 = a3(a1, &type metadata for SportsLinksTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190482C4()
{
  result = qword_27CC15578;
  if (!qword_27CC15578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15578);
  }

  return result;
}

unint64_t sub_21904831C()
{
  result = qword_280EA1C98;
  if (!qword_280EA1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1C98);
  }

  return result;
}

unint64_t sub_219048374()
{
  result = qword_280EA1CA0;
  if (!qword_280EA1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1CA0);
  }

  return result;
}

unint64_t sub_2190483CC()
{
  result = qword_280ED7480;
  if (!qword_280ED7480)
  {
    type metadata accessor for TodayLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7480);
  }

  return result;
}

uint64_t sub_219048424()
{
  v0 = sub_219BEF974();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TodayLayoutModel();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218879004();
  sub_219BE75E4();
  (*(v1 + 32))(v3, v6, v0);
  sub_219BEE5F4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_219048590()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186CFDE4(0, &unk_280EAEDF8);
  result = sub_219BE1E34();
  if (v11)
  {
    sub_2186CB1F0(&v10, v12);
    sub_2187C5110();
    sub_219BEA7A4();
    v2 = v10;
    if (((v10 >> 58) & 0x3C | (v10 >> 1) & 3) == 0x29 && (v3 = *((v10 & 0xFFFFFFFFFFFFFF9) + 0x18)) != 0)
    {
      v4 = *((v10 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v5 = v10;

      v2 = v5;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }

    sub_218932F9C(v2);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    *&v10 = v4;
    *(&v10 + 1) = v3;
    v8 = (*(v7 + 8))(&v10, v6, v7);
    sub_218DF5B4C(v4, v3);
    v9 = sub_219BEA784();
    v9(v8);

    __swift_destroy_boxed_opaque_existential_1(v12);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219048708()
{
  v1 = sub_219BE15B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDD0A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  sub_219BEA7B4();
  if (v19)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D2F4B0], v1);
      sub_219BDD094();
      (*(v2 + 8))(v4, v1);
      sub_219BDD204();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    sub_21874540C(v18, sub_21880702C);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186CFDE4(0, &qword_280EBA368);
  result = sub_219BE1E34();
  if (v17)
  {
    sub_2186CB1F0(&v16, v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = (*(v11 + 8))(v10, v11);
    v13 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v14 = sub_219BEA784();
    v15 = v13;
    v14();

    [v15 setModalInPresentation_];

    __swift_destroy_boxed_opaque_existential_1(v18);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219048A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v26 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v26);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BE15B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD0A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110();
  v29 = a1;
  sub_219BEA7B4();
  if (v33)
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v9 + 104))(v11, *MEMORY[0x277D2F4B0], v8);
      sub_219BDD094();
      (*(v9 + 8))(v11, v8);
      sub_219BDD204();

      (*(v13 + 8))(v15, v12);
    }
  }

  else
  {
    sub_21874540C(v32, sub_21880702C);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_2186CFDE4(0, qword_280EA4728);
  result = sub_219BE1E34();
  if (v31)
  {
    sub_2186CB1F0(&v30, v32);
    v17 = v33;
    v18 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v19 = v28;
    *v7 = v27;
    v7[1] = v19;
    swift_storeEnumTagMultiPayload();
    v20 = *(v18 + 8);

    v21 = v20(v7, v17, v18);
    sub_21874540C(v7, type metadata accessor for SportsDetailModel);
    v22 = objc_allocWithZone(sub_219BE79B4());
    v23 = [v22 initWithRootViewController_];
    v24 = sub_219BEA784();
    v25 = v23;
    v24();

    [v25 setModalInPresentation_];

    __swift_destroy_boxed_opaque_existential_1(v32);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219048E18(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186CFDE4(0, qword_280EBA210);
  result = sub_219BE1E34();
  if (v8)
  {
    sub_2186CB1F0(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_2194CF5B0(a2);
    sub_2187C5110();
    v6 = sub_219BEA784();
    v6(v5);

    __swift_destroy_boxed_opaque_existential_1(v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219048F14()
{
  if (!qword_280E920B0)
  {
    type metadata accessor for SportsEventTopicTagFeedGroupConfigData();
    sub_21904DA4C(&unk_280E97E60, type metadata accessor for SportsEventTopicTagFeedGroupConfigData);
    sub_21904DA4C(&qword_280E97E70, type metadata accessor for SportsEventTopicTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920B0);
    }
  }
}

uint64_t type metadata accessor for SportsEventTopicTagFeedGroupEmitter()
{
  result = qword_280E9C640;
  if (!qword_280E9C640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219049040()
{
  sub_219048F14();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsTopicClusteringService();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_219049110(uint64_t a1)
{
  v2 = v1;
  sub_218A59C84();
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v10 = *(v33 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v11 = sub_219BF6394();

  v12 = [v11 asSportsEvent];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_219BE3204();
    v31 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter;
    sub_21904DA94(v2, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsEventTopicTagFeedGroupEmitter);
    v13 = v2;
    v30 = v2;
    v14 = *(v7 + 80);
    v15 = (v14 + 24) & ~v14;
    v32 = v5;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    sub_21904C03C(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;

    swift_unknownObjectRetain();
    v17 = sub_219BE2E54();
    sub_219BE3054();

    v18 = v13;
    v19 = v31;
    sub_21904DA94(v18, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
    v20 = (v14 + 16) & ~v14;
    v21 = swift_allocObject();
    sub_21904C03C(v9, v21 + v20);
    *(v21 + ((v20 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

    v22 = sub_219BE2E54();
    sub_219BE2F64();

    sub_21904DA94(v30, v9, v19);
    v23 = swift_allocObject();
    sub_21904C03C(v9, v23 + v20);
    v24 = sub_219BE2E54();
    v25 = sub_219BE3054();
    swift_unknownObjectRelease();

    return v25;
  }

  else
  {
    v27 = sub_219BEEDD4();
    sub_21904DA4C(&qword_280E917E0, MEMORY[0x277D32430]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D323E8], v27);
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for TagFeedGroup();
    sub_21877D2B0();
    sub_219BEF194();

    sub_21904C3E0(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2190495F0@<X0>(unint64_t *a1@<X8>)
{
  sub_219048F14();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000002;
  return result;
}

uint64_t sub_219049670@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  a2[4] = sub_21904DA4C(qword_280EA1E38, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
  a2[5] = sub_21904DA4C(&qword_27CC155C0, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21904DA94(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
}

unint64_t sub_219049738(uint64_t a1)
{
  v3 = sub_219BF0BD4();
  v27 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SportsEventTopicTagFeedGroupEmitter() + 20);
  LOBYTE(v35) = 34;
  sub_2189AD5C8();
  v29 = v7;
  v30 = a1;
  v34 = sub_219BEE964();
  sub_21904C3E0(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v31 = v8;
  v9 = *(v8 - 8);
  v33 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = (v11 + v10);
  type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  sub_219BEF134();
  v13 = sub_219BEEDF4();
  v14 = *(v4 + 8);
  v26[1] = v4 + 8;
  v28 = v14;
  v14(v6, v3);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001BLL;
  v36 = 0x8000000219CE4670;
  sub_218A80DA8();
  v15 = sub_219BF5D54();
  MEMORY[0x21CECC330](v15);

  *(swift_allocObject() + 16) = v13;
  sub_21904BFBC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v16 = *MEMORY[0x277D32308];
  v17 = *(v9 + 104);
  v26[0] = v9 + 104;
  v18 = v12;
  v19 = v12;
  v20 = v31;
  v17(v18, v16, v31);
  sub_219BEF134();
  v21 = sub_219BEEDF4();
  v28(v6, v27);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001ELL;
  v36 = 0x8000000219CE4690;
  v22 = sub_219BF5D54();
  MEMORY[0x21CECC330](v22);

  *(swift_allocObject() + 16) = v21;
  swift_allocObject();
  v23 = sub_219BEFB94();
  v24 = v33;
  *(v19 + v33) = v23;
  v17((v19 + v24), v16, v20);
  v35 = v34;
  sub_2191EDA0C(v32);
  return v35;
}

uint64_t sub_219049BC4()
{
  sub_219048F14();

  return sub_219BEDCA4();
}

uint64_t sub_219049BF0@<X0>(uint64_t *a1@<X8>)
{
  sub_21904C3E0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219048F14();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21904DAFC(inited + 32, sub_2188317B0);
  sub_21904C3E0(0, &qword_27CC155C8, type metadata accessor for SportsEventTopicTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21904DB5C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219049D74()
{
  sub_21904DA4C(&unk_27CC15590, type metadata accessor for SportsEventTopicTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219049F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21904DA94(a3, v10, type metadata accessor for SportsEventTopicTagFeedGroupEmitter);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_21904C03C(v10, v13 + v11);
  *(v13 + v12) = a2;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

  swift_unknownObjectRetain();
  v14 = sub_219BE2E54();
  v15 = sub_219BE2F64();

  return v15;
}

void sub_21904A0B4(uint64_t a1, double *a2, void *a3)
{
  v77 = a2;
  v91 = a1;
  v79 = sub_219BF0354();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v82 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEFBD4();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v81 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v60 - v8;
  v92 = sub_219BF0BD4();
  v9 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21904C3E0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - v13;
  v74 = type metadata accessor for SportsTopicClusteringRequest();
  MEMORY[0x28223BE20](v74);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a3 eventCompetitorTags];
  *&v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
    sub_2186D85DC();
    *&v18 = COERCE_DOUBLE(sub_219BF5924());
  }

  v90 = v9;
  sub_2186F83B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C146A0;
  *(inited + 32) = [a3 eventLeagueTag];
  v100 = *&v18;
  sub_2191EE304(inited);
  v21 = v100;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v22 = qword_280F61708;
  sub_2186F20D4();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  v24 = sub_2186D85DC();
  v86 = v21;
  v25 = MEMORY[0x21CECC6D0](*&v21, v24);
  v27 = v26;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_2186FC3BC();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  sub_219BF6214();
  v73 = v22;
  sub_219BE5314();

  sub_219BEF0B4();
  v76 = *(v99 + 64);
  swift_unknownObjectRetain();

  sub_219BDBD24();
  v28 = sub_219BDBD34();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v14, 0, 1, v28);
  v30 = v83 + *(type metadata accessor for SportsEventTopicTagFeedGroupEmitter() + 20);
  v84 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  v85 = v30;
  sub_219BEF134();
  sub_219BEF524();
  v31 = v90 + 8;
  v32 = *(v90 + 8);
  v32(v11, v92);
  v33 = v100;
  v34 = 0;
  if ((*(v29 + 48))(v14, 1, v28) != 1)
  {
    v34 = sub_219BDBC04();
    (*(v29 + 8))(v14, v28);
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v34 timeInterval:v33];

  v75 = v35;
  if (v35)
  {
    sub_219BEF134();
    sub_219BEF524();
    v80 = v32;
    v32(v11, v92);
    v72 = v98[1];
    v36 = *MEMORY[0x277D30BC0];
    v37 = v89;
    v38 = v88[13];
    v38(v87, *MEMORY[0x277D329E0], v89);
    v38(v81, *MEMORY[0x277D329B8], v37);
    v100 = v77[11];
    v77 = v36;
    v73 = v73;
    sub_21904DA94(&v100, v98, sub_2186E2394);
    sub_219BEF204();
    sub_219BEF134();
    sub_219BEF524();

    v39 = v92;
    v40 = v80;
    v80(v11, v92);
    v71 = v98[0];
    sub_219BEF1E4();
    sub_219BEF134();
    sub_219BEF524();

    v40(v11, v39);
    v70 = v97;
    sub_219BEF1F4();
    sub_219BEF134();
    sub_219BEF524();

    v40(v11, v39);
    v69 = v96;
    sub_219BEF1B4();
    sub_219BEF134();
    sub_219BEF524();

    v40(v11, v39);
    v68 = v95;
    sub_219BEF1D4();
    sub_219BEF134();
    sub_219BEF524();

    v40(v11, v39);
    sub_219BEF134();
    sub_219BEF524();
    v90 = v31;
    v40(v11, v39);
    v67 = v94;
    sub_219BEF134();
    sub_219BEF524();
    v40(v11, v39);
    v66 = v93;
    *v16 = v86;
    v41 = *MEMORY[0x277D32C88];
    v42 = sub_219BF03B4();
    (*(*(v42 - 8) + 104))(v16, v41, v42);
    v43 = v74;
    v44 = v89;
    v45 = v88[2];
    v45(&v16[*(v74 + 48)], v87, v89);
    v46 = v81;
    v45(&v16[v43[13]], v81, v44);
    v47 = v78;
    v48 = v82;
    v49 = v79;
    (*(v78 + 16))(&v16[v43[24]], v82, v79);
    v61 = v43[15];
    *&v16[v61] = 1;
    v50 = v43[16];
    *&v16[v50] = 5;
    v62 = v43[17];
    *&v16[v62] = 1;
    v65 = v43[18];
    *&v16[v65] = 0x7FFFFFFFFFFFFFFFLL;
    v64 = v43[19];
    v16[v64] = 0;
    v63 = v43[28];
    *&v16[v63] = 0x7FFFFFFFFFFFFFFFLL;
    v51 = v43[29];
    v52 = *(v47 + 8);

    v52(v48, v49);
    v53 = v89;
    v54 = v88[1];
    v54(v46, v89);
    v54(v87, v53);
    *&v16[v51] = MEMORY[0x277D84F90];
    *&v16[v43[5]] = v76;
    *&v16[v43[6]] = v75;
    *&v16[v43[7]] = v72;
    *&v16[v43[8]] = v77;
    *&v16[v43[9]] = v73;
    *&v16[v43[10]] = 1;
    v16[v43[11]] = 1;
    *&v16[v43[14]] = v100;
    *&v16[v43[20]] = v71;
    *&v16[v43[21]] = v70;
    *&v16[v43[22]] = v69;
    *&v16[v43[23]] = v68;
    v16[v43[25]] = v67;
    v55 = &v16[v43[26]];
    *v55 = v66;
    v55[8] = 0;
    *&v16[v43[27]] = 1;
    *&v16[v61] = 0;
    *&v16[v50] = 0;
    sub_219BEF134();
    sub_219BEF524();
    v56 = v92;
    v57 = v80;
    v80(v11, v92);
    *&v16[v62] = v99;
    sub_219BEF134();
    sub_219BEF524();
    v58 = v57(v11, v56);
    *&v16[v65] = v99;
    *&v16[v63] = 0x7FFFFFFFFFFFFFFFLL;
    v16[v64] = 1;
    MEMORY[0x28223BE20](v58);
    *(&v60 - 2) = v83;
    *(&v60 - 1) = v16;
    sub_219BE3204();
    *(swift_allocObject() + 16) = v86;
    v59 = sub_219BE2E54();
    sub_219BE2F74();

    sub_21904DAFC(v16, type metadata accessor for SportsTopicClusteringRequest);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21904AE40(uint64_t a1, void *a2)
{
  v57 = a1;
  v5 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (!a2)
  {
    v43 = MEMORY[0x277D323C8];
LABEL_8:
    v44 = sub_219BEEDD4();
    sub_21904DA4C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *v43, v44);
    swift_willThrow();
    return v3;
  }

  if (!a2[2])
  {
    v43 = MEMORY[0x277D323A8];
    goto LABEL_8;
  }

  v52 = v7;
  v53 = v2;
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = qword_280E8D7F8;

  swift_unknownObjectRetain();

  if (v12 != -1)
  {
    swift_once();
  }

  v51 = qword_280F61708;
  sub_2186F20D4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  v14 = [v8 identifier];
  v48 = v8;
  v15 = v14;
  v16 = sub_219BF5414();
  v18 = v17;

  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v19);
  v21 = v57;
  v20 = v58;
  *(&v47 - 6) = v58;
  *(&v47 - 5) = v21;
  *(&v47 - 4) = v8;
  *(&v47 - 3) = v9;
  *(&v47 - 2) = v10;
  *(&v47 - 1) = v11;
  sub_219BF2754();
  v50 = sub_219BE3204();
  v51 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter;
  v22 = v20;
  v23 = v56;
  sub_21904DA94(v22, v56, type metadata accessor for SportsEventTopicTagFeedGroupEmitter);
  v24 = *(v52 + 80);
  v25 = (v24 + 16) & ~v24;
  v52 = v6 + 7;
  v54 = v11;
  v55 = v9;
  v26 = (v6 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
  v27 = v21;
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 39) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_21904C03C(v23, v30 + v25);
  *(v30 + v26) = v27;
  v31 = (v30 + v28);
  v32 = v48;
  v34 = v54;
  v33 = v55;
  *v31 = v48;
  v31[1] = v33;
  v31[2] = v10;
  v31[3] = v34;
  *(v30 + v29) = a2;

  swift_unknownObjectRetain();

  v35 = sub_219BE2E54();
  sub_218A59C84();
  v49 = sub_219BE2F64();

  v36 = v56;
  sub_21904DA94(v58, v56, v51);
  v37 = (v24 + 48) & ~v24;
  v38 = (v52 + v37) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v54;
  v41 = v55;
  v39[2] = v32;
  v39[3] = v41;
  v39[4] = v10;
  v39[5] = v40;
  sub_21904C03C(v36, v39 + v37);
  *(v39 + v38) = v57;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  swift_unknownObjectRetain();

  v42 = sub_219BE2E54();
  v3 = sub_219BE3054();

  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_21904B348()
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  sub_219BEF194();
  sub_21904C3E0(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21904B4A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsTopicClusteringRequest();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  sub_21904DA94(a2, v5, type metadata accessor for SportsTopicClusteringRequest);
  v6 = sub_218E54FE0(v5, 0, 0, 0);
  sub_21904DAFC(v5, type metadata accessor for SportsTopicClusteringRequest);
  return v6;
}

uint64_t sub_21904B598@<X0>(unint64_t a1@<X1>, char **a2@<X8>)
{
  v3 = v2;
  sub_2186F83B8(0, &qword_27CC155A8, &type metadata for SportsTopicCluster, MEMORY[0x277D83940]);
  sub_21904D97C();
  sub_21904D9F8();
  v6 = sub_219BF56C4();
  if (qword_280E8D7F8 != -1)
  {
LABEL_26:
    swift_once();
  }

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  sub_219BF6214();
  sub_219BE5314();

  if (a1 >> 62)
  {
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_28:
    v29 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_4:
  v11 = 0;
  v28 = v3;
  v29 = MEMORY[0x277D84F90];
  v27 = a2;
  do
  {
    a2 = v11;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](a2, a1);
        v11 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (a2 >= *(v30 + 16))
        {
          goto LABEL_25;
        }

        v12 = *(a1 + 8 * a2 + 32);
        swift_unknownObjectRetain();
        v11 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v3 = [v12 identifier];
      v13 = sub_219BF5414();
      v15 = v14;

      if (*(v6 + 16))
      {
        break;
      }

      swift_unknownObjectRelease();

LABEL_7:
      a2 = (a2 + 1);
      if (v11 == v10)
      {
        a2 = v27;
        goto LABEL_29;
      }
    }

    v16 = sub_21870F700(v13, v15);
    v3 = v17;

    if ((v3 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    v18 = (*(v6 + 56) + 32 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];

    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_2191F9198(0, *(v29 + 2) + 1, 1, v29);
    }

    v24 = *(v29 + 2);
    v23 = *(v29 + 3);
    if (v24 >= v23 >> 1)
    {
      v29 = sub_2191F9198((v23 > 1), v24 + 1, 1, v29);
    }

    *(v29 + 2) = v24 + 1;
    v25 = &v29[32 * v24];
    *(v25 + 4) = v19;
    *(v25 + 5) = v20;
    *(v25 + 6) = v21;
    *(v25 + 7) = v22;
    a2 = v27;
    v3 = v28;
  }

  while (v11 != v10);
LABEL_29:

  *a2 = v29;
  return result;
}

uint64_t sub_21904B904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  sub_218A59C84();
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21904C3E0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v31 = v29 - v10;
  v11 = sub_219BEF554();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v29[1] = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v29[2] = v29 - v14;
  v15 = sub_219BED8D4();
  v32 = *(v15 - 8);
  v33 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v30);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219048F14();

  v20 = sub_219BEDCB4();
  v29[3] = v21;
  v29[4] = v20;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v22 = sub_219BEE5D4();
  (*(*(v22 - 8) + 56))(v31, 1, 1, v22);

  sub_219BED834();
  (*(v32 + 32))(v19, v17, v33);
  swift_storeEnumTagMultiPayload();
  sub_2190F6E50(v35);
  if (v23)
  {
    v24 = v23;
    sub_218ACC140();
    v26 = (v37 + *(v25 + 48));
    sub_21904DA94(v19, v37, type metadata accessor for TagFeedGroup);
    v26[3] = &type metadata for SportsEventTopicTagFeedGroupEmitterCursor;
    *v26 = v24;
  }

  else
  {
    sub_21904DA94(v19, v37, type metadata accessor for TagFeedGroup);
  }

  swift_storeEnumTagMultiPayload();
  sub_21904C3E0(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v27 = sub_219BE3014();
  sub_21904DAFC(v19, type metadata accessor for TagFeedGroup);
  return v27;
}

uint64_t sub_21904BDD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = [a2 identifier];
  v11 = sub_219BF5414();
  v13 = v12;

  v14 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2186FC3BC();
  *(v9 + 64) = v15;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v9 + 96) = v14;
  *(v9 + 104) = v15;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_219BE5314();

  sub_2190F6E50(a7);
  v17 = sub_21904AE40(a6, v16);

  return v17;
}

void sub_21904BFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_21904C03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21904C0A0(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsEventTopicTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_219049F00(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21904C274(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsEventTopicTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21904B904(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 24), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21904C330(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsEventTopicTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21904BDD0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_21904C3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

size_t sub_21904C444(uint64_t a1, void *a2, unint64_t a3)
{
  v119 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_21904C3E0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = &v96 - v7;
  sub_21904C3E0(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v96 - v9;
  sub_21904C3E0(0, &qword_280E91A70, sub_2189AD5C8, v5);
  MEMORY[0x28223BE20](v10 - 8);
  v112 = &v96 - v11;
  v12 = sub_219BF2AB4();
  v121 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v120 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21904C3E0(0, &unk_280E8FF30, sub_218A42400, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v96 - v15;
  v107 = type metadata accessor for SportsEventTopicTagFeedGroupConfigData();
  v16 = MEMORY[0x28223BE20](v107);
  v106 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v96 - v18;
  v129 = sub_219BF1934();
  v118 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21904C3E0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  MEMORY[0x28223BE20](v20 - 8);
  v108 = &v96 - v21;
  v22 = sub_219BF2124();
  MEMORY[0x28223BE20](v22 - 8);
  v105 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BF3C84();
  v133 = *(v98 - 8);
  v24 = MEMORY[0x28223BE20](v98);
  v97 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v96 - v26;
  v116 = sub_219BF2034();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v127 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BDB954();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  v132 = sub_219BDB5E4();

  sub_2186F20D4();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C09BA0;
  v33 = [swift_unknownObjectRetain() compactDisplayName];
  v34 = sub_219BF5414();
  v36 = v35;

  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = sub_2186FC3BC();
  *(v32 + 32) = v34;
  *(v32 + 40) = v36;
  v37 = a2;
  v102 = sub_219BF5454();
  v103 = v38;

  v39 = [a2 identifier];
  if (!v39)
  {
    sub_219BF5414();
    v39 = sub_219BF53D4();
  }

  v40 = [objc_opt_self() nss:v39 NewsURLForTagID:?];

  sub_219BDB8B4();
  sub_2186F83B8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_219C146A0;
  *(v41 + 32) = v37;
  sub_21904C3E0(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v42 = *(sub_219BF3E84() - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v101 = *(v42 + 72);
  v99 = v43;
  v125 = swift_allocObject();
  v100 = xmmword_219C09EC0;
  *(v125 + 16) = xmmword_219C09EC0;
  if (a3 >> 62)
  {
    v44 = sub_219BF7214();
  }

  else
  {
    v44 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = v12;
  v124 = v29;
  v111 = v37;
  v104 = v41;
  if (v44)
  {
    v134 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v134;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v132 = a3;
      v47 = 0;
      LODWORD(v131) = *MEMORY[0x277D34128];
      v48 = (v133 + 104);
      v49 = v98;
      v50 = v130;
      do
      {
        *v50 = MEMORY[0x21CECE0F0](v47, v132);
        (*v48)(v50, v131, v49);
        v134 = v46;
        v52 = *(v46 + 16);
        v51 = *(v46 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_218C34A88(v51 > 1, v52 + 1, 1);
          v46 = v134;
        }

        ++v47;
        *(v46 + 16) = v52 + 1;
        (*(v133 + 32))(v46 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v52, v50, v49);
      }

      while (v44 != v47);
    }

    else
    {
      v54 = (a3 + 32);
      LODWORD(v132) = *MEMORY[0x277D34128];
      v55 = *(v133 + 104);
      v130 = (v133 + 32);
      v131 = v55;
      v56 = v98;
      v57 = v97;
      do
      {
        *v57 = *v54;
        (v131)(v57, v132, v56);
        v134 = v46;
        v59 = *(v46 + 16);
        v58 = *(v46 + 24);
        swift_unknownObjectRetain();
        if (v59 >= v58 >> 1)
        {
          sub_218C34A88(v58 > 1, v59 + 1, 1);
          v46 = v134;
        }

        *(v46 + 16) = v59 + 1;
        (*(v133 + 32))(v46 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v59, v57, v56);
        ++v54;
        --v44;
      }

      while (v44);
    }

    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v53);
  sub_218F0BA7C(v53);
  sub_218F0BB90(v53);
  sub_219BF3E74();
  sub_21904C3E0(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = v100;
  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BF20E4();
  sub_219BF14A4();
  sub_218F0B984(v53);
  sub_218F0BA7C(v53);
  sub_218F0BB90(v53);
  sub_219BF3E74();
  v103 = sub_219BEC004();
  v60 = *(v103 - 8);
  v102 = *(v60 + 56);
  v105 = (v60 + 56);
  v61 = v108;
  v102();
  sub_219A95188(v53);
  sub_219A95188(v53);
  sub_219A951A0(v53);
  sub_219A951B8(v53);
  sub_219A952CC(v53);
  sub_219A952E4(v53);
  sub_219A953F8(v53);
  sub_219BF2024();
  v130 = type metadata accessor for SportsEventTopicTagFeedGroupEmitter();
  v62 = (v126 + *(v130 + 6));
  v63 = v62[3];
  v132 = v62[4];
  v133 = v63;
  v131 = __swift_project_boxed_opaque_existential_1(v62, v63);
  sub_219048F14();
  v64 = v109;
  sub_219BEDD14();
  v65 = v107;
  v125 = *(v107 + 20);
  v66 = v106;
  sub_219BEDD14();
  v67 = *(v65 + 20);
  v68 = sub_219BF1704();
  v70 = v69;
  v118 = *(v118 + 8);
  (v118)(&v66[v67], v129);
  v134 = v68;
  v135 = v70;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v71 = v111;
  v72 = [v111 identifier];
  v73 = sub_219BF5414();
  v75 = v74;

  MEMORY[0x21CECC330](v73, v75);

  v76 = [v71 identifier];
  v111 = sub_219BF5414();

  v77 = v61;
  (v102)(v61, 1, 1, v103);
  sub_218A42400(0);
  v79 = v110;
  (*(*(v78 - 8) + 56))(v110, 1, 1, v78);
  v80 = v125;
  v81 = v118;
  sub_219BF1764();

  sub_21904D800(v79, &unk_280E8FF30, sub_218A42400);
  sub_21904D800(v77, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v81(&v64[v80], v129);
  v82 = *(v130 + 5);
  sub_2189AD5C8();
  v84 = v83;
  v85 = *(v83 - 8);
  v86 = v112;
  (*(v85 + 16))(v112, v126 + v82, v83);
  (*(v85 + 56))(v86, 0, 1, v84);
  sub_219BEF0B4();
  v87 = *(v134 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v88 = sub_219BF35D4();
  (*(*(v88 - 8) + 56))(v117, 1, 1, v88);
  LOBYTE(v136) = 34;
  sub_21904BFBC(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v89 = *(v136 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v90 = sub_219BF2774();
  (*(*(v90 - 8) + 56))(v123, 1, 1, v90);
  v91 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v91 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v92 = v120;
  sub_219BF2A84();
  v94 = v127;
  v93 = v128;
  v95 = sub_219BF2184();
  (*(v121 + 8))(v92, v122);
  v81(v93, v129);
  (*(v115 + 8))(v94, v116);
  (*(v113 + 8))(v124, v114);
  return v95;
}

uint64_t sub_21904D800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21904C3E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21904D870(_OWORD *a1)
{
  v3 = *(type metadata accessor for SportsEventTopicTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = a1[5];
  v11[4] = a1[4];
  v11[5] = v7;
  v8 = a1[7];
  v11[6] = a1[6];
  v11[7] = v8;
  v9 = a1[1];
  v11[0] = *a1;
  v11[1] = v9;
  v10 = a1[3];
  v11[2] = a1[2];
  v11[3] = v10;
  sub_21904A0B4(v5, v11, v6);
}

unint64_t sub_21904D97C()
{
  result = qword_27CC155B0;
  if (!qword_27CC155B0)
  {
    sub_2186F83B8(255, &qword_27CC155A8, &type metadata for SportsTopicCluster, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC155B0);
  }

  return result;
}

unint64_t sub_21904D9F8()
{
  result = qword_27CC155B8;
  if (!qword_27CC155B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC155B8);
  }

  return result;
}

uint64_t sub_21904DA4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21904DA94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21904DAFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21904DB5C()
{
  result = qword_27CC155D0;
  if (!qword_27CC155D0)
  {
    sub_21904C3E0(255, &qword_27CC155C8, type metadata accessor for SportsEventTopicTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC155D0);
  }

  return result;
}

unint64_t sub_21904DC0C()
{
  result = qword_27CC0F4E0;
  if (!qword_27CC0F4E0)
  {
    type metadata accessor for SportsNavigationLayoutSectionDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F4E0);
  }

  return result;
}

uint64_t sub_21904DC6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for SportsNavigationLayoutSectionDescriptor();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  sub_218952040();
  sub_219BE6934();
  sub_21904DE00(v16, v17, v18, a2, v10);
  swift_unknownObjectRelease();

  sub_21904E458(v10, v8);
  v14 = a2;
  v15 = a1;
  sub_218949C40(sub_21904E4BC, v13);
  sub_21904DC0C();
  sub_21895221C();
  sub_219BE8174();
  return sub_21904E538(v10, type metadata accessor for SportsNavigationLayoutSectionDescriptor);
}

uint64_t sub_21904DE00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for TitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v17 = [a1 identifier];
    v18 = sub_219BF5414();
    v30 = a4;
    v20 = v19;

    *&v31 = v18;
    *(&v31 + 1) = v20;
    *&v32 = a2;
    *(&v32 + 1) = a3;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
    v21 = sub_219BE8164();
    (*(*(v21 - 8) + 16))(v13, v30, v21);
    *&v13[v11[5]] = 0x4024000000000000;
    *&v13[v11[6]] = 0x4024000000000000;
    v13[v11[7]] = 4;
    sub_219459814(&v31, *&v13, v16);
    sub_21904E538(v13, type metadata accessor for TitleViewLayoutOptions);
    sub_218D57484();
    v23 = v22;
    v24 = *(v22 + 48);
    v25 = v34;
    *(a5 + 32) = v33;
    *(a5 + 48) = v25;
    *(a5 + 64) = v35;
    v26 = v32;
    *a5 = v31;
    *(a5 + 16) = v26;
    sub_218A52EFC(v16, a5 + v24);
    return (*(*(v23 - 8) + 56))(a5, 0, 1, v23);
  }

  else
  {
    sub_218D57484();
    v29 = *(*(v28 - 8) + 56);

    return v29(a5, 1, 1, v28);
  }
}

uint64_t sub_21904E0B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsTagLayoutOptions();
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189DADA8();
  sub_219BE5FC4();
  v7 = *&v16[26];
  v8 = sub_219BE8164();
  (*(*(v8 - 8) + 16))(v6, a2, v8);
  __asm { FMOV            V0.2D, #24.0 }

  *&v6[v4[10]] = _Q0;
  *&v6[v4[11]] = 0x4020000000000000;
  *&v6[v4[12]] = 0x4031000000000000;
  v6[v4[7]] = 5;
  v6[v4[8]] = 0;
  v6[v4[13]] = 1;
  v6[v4[9]] = 0;
  sub_219AE5AF0(v7, v6, &v18);
  v17 = v7;
  nullsub_1(&v17);
  sub_21904E4DC(&v17, v16);
  sub_21895221C();
  sub_219BE75D4();
  return sub_21904E538(v6, type metadata accessor for SportsTagLayoutOptions);
}

uint64_t sub_21904E254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_21904E31C, 0, 0);
}

uint64_t sub_21904E31C()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_2189498A8(sub_21904E438, v3);

  type metadata accessor for SportsNavigationLayoutSectionDescriptor();
  sub_21904DC0C();
  sub_21895221C();
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21904E458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsNavigationLayoutSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21904E538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ArticleContext.__allocating_init(url:title:sourceApplication:previousArticleID:previousArticleVersion:adPreviewSessionID:adPreviewID:adQToken:maximumAdRequestsForCurrentAdPreviewID:userActionDate:presentationReason:notificationID:notificationSenderChannelID:referral:shouldAutoPlayVideo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v25 = v24;
  v31 = objc_allocWithZone(v25);
  v32 = OBJC_IVAR___TSArticleContext_referral;
  *&v31[OBJC_IVAR___TSArticleContext_referral] = 0;
  v33 = a1;
  v34 = MEMORY[0x277CC9260];
  sub_21904F388(v33, &v31[OBJC_IVAR___TSArticleContext_url], &unk_280EE9D00, MEMORY[0x277CC9260]);
  v35 = &v31[OBJC_IVAR___TSArticleContext_title];
  *v35 = a2;
  v35[1] = a3;
  v36 = &v31[OBJC_IVAR___TSArticleContext_sourceApplication];
  *v36 = a4;
  v36[1] = a5;
  v37 = &v31[OBJC_IVAR___TSArticleContext_previousArticleID];
  *v37 = a6;
  v37[1] = a7;
  v38 = &v31[OBJC_IVAR___TSArticleContext_previousArticleVersion];
  *v38 = a8;
  v38[1] = a9;
  v39 = &v31[OBJC_IVAR___TSArticleContext_adPreviewSessionID];
  *v39 = a10;
  v39[1] = a11;
  v40 = &v31[OBJC_IVAR___TSArticleContext_adPreviewID];
  *v40 = a12;
  v40[1] = a13;
  v41 = &v31[OBJC_IVAR___TSArticleContext_adQToken];
  *v41 = a14;
  v41[1] = a15;
  *&v31[OBJC_IVAR___TSArticleContext_maximumAdRequestsForCurrentAdPreviewID] = a16;
  v42 = MEMORY[0x277CC9578];
  sub_21904F388(a17, &v31[OBJC_IVAR___TSArticleContext_userActionDate], &qword_280EE9C40, MEMORY[0x277CC9578]);
  *&v31[OBJC_IVAR___TSArticleContext_presentationReason] = a18;
  v43 = &v31[OBJC_IVAR___TSArticleContext_notificationID];
  *v43 = a19;
  v43[1] = a20;
  v44 = &v31[OBJC_IVAR___TSArticleContext_notificationSenderChannelID];
  *v44 = a21;
  v44[1] = a22;
  swift_beginAccess();
  *&v31[v32] = a23;
  v31[OBJC_IVAR___TSArticleContext_shouldAutoPlayVideo] = a24;
  v52.receiver = v31;
  v52.super_class = v51;
  v45 = objc_msgSendSuper2(&v52, sel_init);
  sub_218710520(a17, &qword_280EE9C40, v42);
  sub_218710520(a1, &unk_280EE9D00, v34);
  return v45;
}

unint64_t sub_21904E854@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21904FA54(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t ArticlePresentationStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t ArticleContext.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_title);

  return v1;
}

uint64_t ArticleContext.sourceApplication.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_sourceApplication);

  return v1;
}

uint64_t ArticleContext.previousArticleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_previousArticleID);

  return v1;
}

uint64_t ArticleContext.previousArticleVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_previousArticleVersion);

  return v1;
}

uint64_t ArticleContext.adPreviewSessionID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_adPreviewSessionID);

  return v1;
}

uint64_t ArticleContext.adPreviewID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_adPreviewID);

  return v1;
}

uint64_t ArticleContext.adQToken.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_adQToken);

  return v1;
}

uint64_t ArticleContext.notificationID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_notificationID);

  return v1;
}

id sub_21904EE38(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_219BF53D4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ArticleContext.notificationSenderChannelID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSArticleContext_notificationSenderChannelID);

  return v1;
}

void *sub_21904EF4C()
{
  v1 = OBJC_IVAR___TSArticleContext_referral;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21904EFF8(uint64_t a1)
{
  v3 = OBJC_IVAR___TSArticleContext_referral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21904F050(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TSArticleContext_referral;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ArticleContext.init(url:title:sourceApplication:previousArticleID:previousArticleVersion:adPreviewSessionID:adPreviewID:adQToken:maximumAdRequestsForCurrentAdPreviewID:userActionDate:presentationReason:notificationID:notificationSenderChannelID:referral:shouldAutoPlayVideo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v29 = OBJC_IVAR___TSArticleContext_referral;
  *&v24[OBJC_IVAR___TSArticleContext_referral] = 0;
  v45 = MEMORY[0x277CC9260];
  sub_21904F388(a1, &v24[OBJC_IVAR___TSArticleContext_url], &unk_280EE9D00, MEMORY[0x277CC9260]);
  v30 = &v24[OBJC_IVAR___TSArticleContext_title];
  *v30 = a2;
  v30[1] = a3;
  v31 = &v24[OBJC_IVAR___TSArticleContext_sourceApplication];
  *v31 = a4;
  v31[1] = a5;
  v32 = &v24[OBJC_IVAR___TSArticleContext_previousArticleID];
  *v32 = a6;
  v32[1] = a7;
  v33 = &v24[OBJC_IVAR___TSArticleContext_previousArticleVersion];
  *v33 = a8;
  v33[1] = a9;
  v34 = &v24[OBJC_IVAR___TSArticleContext_adPreviewSessionID];
  *v34 = a10;
  v34[1] = a11;
  v35 = &v24[OBJC_IVAR___TSArticleContext_adPreviewID];
  *v35 = a12;
  v35[1] = a13;
  v36 = &v24[OBJC_IVAR___TSArticleContext_adQToken];
  *v36 = a14;
  v36[1] = a15;
  *&v24[OBJC_IVAR___TSArticleContext_maximumAdRequestsForCurrentAdPreviewID] = a16;
  v37 = MEMORY[0x277CC9578];
  sub_21904F388(a17, &v24[OBJC_IVAR___TSArticleContext_userActionDate], &qword_280EE9C40, MEMORY[0x277CC9578]);
  *&v24[OBJC_IVAR___TSArticleContext_presentationReason] = a18;
  v38 = &v24[OBJC_IVAR___TSArticleContext_notificationID];
  *v38 = a19;
  v38[1] = a20;
  v39 = &v24[OBJC_IVAR___TSArticleContext_notificationSenderChannelID];
  *v39 = a21;
  v39[1] = a22;
  swift_beginAccess();
  *&v24[v29] = a23;
  v24[OBJC_IVAR___TSArticleContext_shouldAutoPlayVideo] = a24;
  v47.receiver = v24;
  v47.super_class = type metadata accessor for ArticleContext();
  v40 = objc_msgSendSuper2(&v47, sel_init);
  sub_218710520(a17, &qword_280EE9C40, v37);
  sub_218710520(a1, &unk_280EE9D00, v45);
  return v40;
}

uint64_t sub_21904F388(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186E578C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id ArticleContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArticleContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21904FA54(unint64_t result)
{
  if (result > 0x13)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ArticleContext()
{
  result = qword_27CC155F0;
  if (!qword_27CC155F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21904FAB4()
{
  result = qword_27CC155E0;
  if (!qword_27CC155E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC155E0);
  }

  return result;
}

unint64_t sub_21904FB0C()
{
  result = qword_27CC155E8;
  if (!qword_27CC155E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC155E8);
  }

  return result;
}

void sub_21904FB88()
{
  sub_2186E578C(319, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_2186E578C(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *sub_21904FDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  if (a5 >> 62)
  {
    goto LABEL_20;
  }

  v8 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v9 = v23;
      v22 = a6;
      a6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      while (1)
      {
        if ((a5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x21CECE0F0](v11, a5);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v8 = sub_219BF7214();
            goto LABEL_3;
          }

          if (v11 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v12 = *(a5 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = [v13 identifier];
        v15 = sub_219BF5414();
        v17 = v16;

        v19 = *(v23 + 16);
        v18 = *(v23 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21870B65C((v18 > 1), v19 + 1, 1);
        }

        ++v11;
        *(v23 + 16) = v19 + 1;
        v20 = v23 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        if (v8 == v11)
        {
          a6 = v22;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v21 = sub_218845F78(v9);

    sub_218F98498(v24, v21, a6);
  }

  return result;
}

uint64_t sub_21904FFA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v348 = a2;
  *&v349 = a1;
  v2 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  *&v342 = &v309 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  *&v341 = &v309 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v340 = &v309 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v339 = &v309 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v338 = &v309 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v337 = &v309 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v336 = &v309 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v335 = &v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v334 = &v309 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v331);
  v333 = &v309 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v332 = &v309 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v330 = &v309 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v329 = &v309 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v328 = &v309 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v325);
  v327 = &v309 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v326 = &v309 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v324 = &v309 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v34 - 8);
  v323 = &v309 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v36 - 8);
  v322 = &v309 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v321 = &v309 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v40 - 8);
  v320 = &v309 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v42 - 8);
  v319 = &v309 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v318 = &v309 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v314);
  v317 = &v309 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v316 = &v309 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v312);
  v315 = &v309 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v309);
  v313 = &v309 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v311 = &v309 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v53);
  v310 = &v309 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v309 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v309 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v309 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for IssueListTagFeedGroup();
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v309 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v309 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v70 - 8);
  v72 = &v309 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v345 = sub_219BF1904();
  *&v346 = *(v345 - 8);
  v73 = MEMORY[0x28223BE20](v345);
  *&v343 = &v309 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  *&v344 = &v309 - v75;
  v76 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v76 - 8);
  v78 = &v309 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v79);
  v81 = &v309 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219058474(v349, v81, type metadata accessor for TagFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21905831C(v81, v69, type metadata accessor for PromotedArticleListTagFeedGroup);
      v201 = v344;
      sub_219BED874();
      v202 = sub_219BF18D4();
      v203 = *(v346 + 8);
      v204 = v345;
      v203(v201, v345);
      v205 = v343;
      sub_219BED874();
      v206 = sub_219BF18C4();
      v203(v205, v204);
      sub_219052AE8(v202, v206, v350);

      v161 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v162 = v69;
      break;
    case 2u:
      sub_21905831C(v81, v66, type metadata accessor for IssueListTagFeedGroup);
      sub_2190533E8(*(v66 + 2), v350);
      v148 = type metadata accessor for IssueListTagFeedGroup;
      goto LABEL_31;
    case 3u:
      sub_21905831C(v81, v63, type metadata accessor for ChannelSectionTagFeedGroup);
      v175 = v344;
      sub_219BED874();
      v176 = sub_219BF18D4();
      v177 = *(v346 + 8);
      v178 = v345;
      v177(v175, v345);
      v179 = v343;
      sub_219BED874();
      v180 = sub_219BF18C4();
      v177(v179, v178);
      sub_219052AE8(v176, v180, v350);

      v161 = type metadata accessor for ChannelSectionTagFeedGroup;
      v162 = v63;
      break;
    case 4u:
      sub_21905831C(v81, v60, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v155 = v344;
      sub_219BED874();
      v156 = sub_219BF18D4();
      v157 = *(v346 + 8);
      v158 = v345;
      v157(v155, v345);
      v159 = v343;
      sub_219BED874();
      v160 = sub_219BF18C4();
      v157(v159, v158);
      sub_219052AE8(v156, v160, v350);

      v161 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v162 = v60;
      break;
    case 5u:
    case 6u:
    case 7u:
    case 0xDu:
    case 0x1Fu:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x27u:
    case 0x29u:
      sub_219058384(v81, type metadata accessor for TagFeedGroup);
      v83 = *(v347 + 14);
      v82 = *(v347 + 15);
      v84 = v347[5];
      v349 = v347[6];
      v346 = v84;
      v85 = v347[3];
      v345 = v347[4];
      v344 = v85;
      v86 = v347[1];
      v343 = v347[2];
      v342 = v86;
      v341 = *v347;
      result = sub_218A80CA4(v347, v350);
      v88 = v341;
      v89 = v342;
      v90 = v343;
      v91 = v344;
      v92 = v345;
      v93 = v346;
      v94 = v349;
      goto LABEL_42;
    case 8u:
      sub_21905831C(v81, v78, type metadata accessor for CuratedTagFeedGroup);
      v163 = v344;
      sub_219BED874();
      v164 = sub_219BF18D4();
      v165 = *(v346 + 8);
      v166 = v345;
      v165(v163, v345);
      v167 = v343;
      sub_219BED874();
      v168 = sub_219BF18C4();
      v165(v167, v166);
      sub_219052AE8(v164, v168, v350);

      v161 = type metadata accessor for CuratedTagFeedGroup;
      v162 = v78;
      break;
    case 9u:
      sub_21905831C(v81, v57, type metadata accessor for SportsRecordTagFeedGroup);
      v272 = v344;
      sub_219BED874();
      v273 = sub_219BF18D4();
      v274 = *(v346 + 8);
      v275 = v345;
      v274(v272, v345);
      v276 = v343;
      sub_219BED874();
      v277 = sub_219BF18C4();
      v274(v276, v275);
      sub_219052AE8(v273, v277, v350);

      v161 = type metadata accessor for SportsRecordTagFeedGroup;
      v162 = v57;
      break;
    case 0xAu:
      v95 = v310;
      sub_21905831C(v81, v310, type metadata accessor for SportsNavigationTagFeedGroup);
      v188 = v344;
      sub_219BED874();
      v189 = sub_219BF18D4();
      v190 = *(v346 + 8);
      v191 = v188;
      v192 = v345;
      v190(v191, v345);
      v193 = v343;
      sub_219BED874();
      v194 = sub_219BF18C4();
      v190(v193, v192);
      sub_219052AE8(v189, v194, v350);

      v102 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_40;
    case 0xBu:
      v95 = v311;
      sub_21905831C(v81, v311, type metadata accessor for SportsScheduleTagFeedGroup);
      v226 = v344;
      sub_219BED874();
      v227 = sub_219BF18D4();
      v228 = *(v346 + 8);
      v229 = v345;
      v228(v226, v345);
      v230 = v343;
      sub_219BED874();
      v231 = sub_219BF18C4();
      v228(v230, v229);
      sub_219052AE8(v227, v231, v350);

      v102 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_40;
    case 0xCu:
      v95 = v313;
      sub_21905831C(v81, v313, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v259 = v344;
      sub_219BED874();
      v260 = sub_219BF18D4();
      v261 = *(v346 + 8);
      v262 = v259;
      v263 = v345;
      v261(v262, v345);
      v264 = v343;
      sub_219BED874();
      v265 = sub_219BF18C4();
      v261(v264, v263);
      sub_219052AE8(v260, v265, v350);

      v102 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_40;
    case 0xEu:
      v95 = v315;
      sub_21905831C(v81, v315, type metadata accessor for SportsScoresTagFeedGroup);
      v213 = v344;
      sub_219BED874();
      v214 = sub_219BF18D4();
      v215 = *(v346 + 8);
      v216 = v213;
      v217 = v345;
      v215(v216, v345);
      v218 = v343;
      sub_219BED874();
      v219 = sub_219BF18C4();
      v215(v218, v217);
      sub_219052AE8(v214, v219, v350);

      v102 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_40;
    case 0xFu:
      v95 = v316;
      sub_21905831C(v81, v316, type metadata accessor for SportsLinksTagFeedGroup);
      v220 = v344;
      sub_219BED874();
      v221 = sub_219BF18D4();
      v222 = *(v346 + 8);
      v223 = v345;
      v222(v220, v345);
      v224 = v343;
      sub_219BED874();
      v225 = sub_219BF18C4();
      v222(v224, v223);
      sub_219052AE8(v221, v225, v350);

      v102 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_40;
    case 0x10u:
      v95 = v317;
      sub_21905831C(v81, v317, type metadata accessor for MySportsTopicTagFeedGroup);
      v250 = v344;
      sub_219BED874();
      v251 = sub_219BF18D4();
      v252 = *(v346 + 8);
      v253 = v250;
      v254 = v345;
      v252(v253, v345);
      v255 = v343;
      sub_219BED874();
      v256 = sub_219BF18C4();
      v252(v255, v254);
      sub_219052AE8(v251, v256, v350);

      v102 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_40;
    case 0x11u:
      v95 = v318;
      sub_21905831C(v81, v318, type metadata accessor for SportsStandingsTagFeedGroup);
      v278 = v344;
      sub_219BED874();
      v279 = sub_219BF18D4();
      v280 = *(v346 + 8);
      v281 = v345;
      v280(v278, v345);
      v282 = v343;
      sub_219BED874();
      v283 = sub_219BF18C4();
      v280(v282, v281);
      sub_219052AE8(v279, v283, v350);

      v102 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_40;
    case 0x12u:
      v95 = v319;
      sub_21905831C(v81, v319, type metadata accessor for SportsBracketTagFeedGroup);
      v169 = v344;
      sub_219BED874();
      v170 = sub_219BF18D4();
      v171 = *(v346 + 8);
      v172 = v345;
      v171(v169, v345);
      v173 = v343;
      sub_219BED874();
      v174 = sub_219BF18C4();
      v171(v173, v172);
      sub_219052AE8(v170, v174, v350);

      v102 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_40;
    case 0x13u:
      v95 = v320;
      sub_21905831C(v81, v320, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v149 = v344;
      sub_219BED874();
      v150 = sub_219BF18D4();
      v151 = *(v346 + 8);
      v152 = v345;
      v151(v149, v345);
      v153 = v343;
      sub_219BED874();
      v154 = sub_219BF18C4();
      v151(v153, v152);
      sub_219052AE8(v150, v154, v350);

      v102 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_40;
    case 0x14u:
      v95 = v321;
      sub_21905831C(v81, v321, type metadata accessor for SportsEventInfoTagFeedGroup);
      v302 = v344;
      sub_219BED874();
      v303 = sub_219BF18D4();
      v304 = *(v346 + 8);
      v305 = v345;
      v304(v302, v345);
      v306 = v343;
      sub_219BED874();
      v307 = sub_219BF18C4();
      v304(v306, v305);
      sub_219052AE8(v303, v307, v350);

      v102 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_40;
    case 0x15u:
      v95 = v322;
      sub_21905831C(v81, v322, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v122 = v344;
      sub_219BED874();
      v123 = sub_219BF18D4();
      v124 = *(v346 + 8);
      v125 = v345;
      v124(v122, v345);
      v126 = v343;
      sub_219BED874();
      v127 = sub_219BF18C4();
      v124(v126, v125);
      sub_219052AE8(v123, v127, v350);

      v102 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_40;
    case 0x16u:
      v95 = v323;
      sub_21905831C(v81, v323, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v284 = v344;
      sub_219BED874();
      v285 = sub_219BF18D4();
      v286 = *(v346 + 8);
      v287 = v345;
      v286(v284, v345);
      v288 = v343;
      sub_219BED874();
      v289 = sub_219BF18C4();
      v286(v288, v287);
      sub_219052AE8(v285, v289, v350);

      v102 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_40;
    case 0x17u:
      v95 = v324;
      sub_21905831C(v81, v324, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v290 = v344;
      sub_219BED874();
      v291 = sub_219BF18D4();
      v292 = *(v346 + 8);
      v293 = v345;
      v292(v290, v345);
      v294 = v343;
      sub_219BED874();
      v295 = sub_219BF18C4();
      v292(v294, v293);
      sub_219052AE8(v291, v295, v350);

      v102 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_40;
    case 0x18u:
      v95 = v326;
      sub_21905831C(v81, v326, type metadata accessor for HighlightsTagFeedGroup);
      v232 = v344;
      sub_219BED874();
      v233 = sub_219BF18D4();
      v234 = *(v346 + 8);
      v235 = v345;
      v234(v232, v345);
      v236 = v343;
      sub_219BED874();
      v237 = sub_219BF18C4();
      v234(v236, v235);
      sub_219052AE8(v233, v237, v350);

      v102 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_40;
    case 0x19u:
      v95 = v327;
      sub_21905831C(v81, v327, type metadata accessor for ForYouTagFeedGroup);
      v181 = v344;
      sub_219BED874();
      v182 = sub_219BF18D4();
      v183 = *(v346 + 8);
      v184 = v181;
      v185 = v345;
      v183(v184, v345);
      v186 = v343;
      sub_219BED874();
      v187 = sub_219BF18C4();
      v183(v186, v185);
      sub_219052AE8(v182, v187, v350);

      v102 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_40;
    case 0x1Au:
      v95 = v330;
      sub_21905831C(v81, v330, type metadata accessor for ChannelRecipesTagFeedGroup);
      v238 = v344;
      sub_219BED874();
      v239 = sub_219BF18D4();
      v240 = *(v346 + 8);
      v241 = v345;
      v240(v238, v345);
      v242 = v343;
      sub_219BED874();
      v243 = sub_219BF18C4();
      v240(v242, v241);
      sub_219052AE8(v239, v243, v350);

      v102 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x1Bu:
      v95 = v328;
      sub_21905831C(v81, v328, type metadata accessor for ForYouRecipesTagFeedGroup);
      v140 = v344;
      sub_219BED874();
      v141 = sub_219BF18D4();
      v142 = *(v346 + 8);
      v143 = v345;
      v142(v140, v345);
      v144 = v343;
      sub_219BED874();
      v145 = sub_219BF18C4();
      v142(v144, v143);
      sub_219052AE8(v141, v145, v350);

      v102 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x1Cu:
      v95 = v329;
      sub_21905831C(v81, v329, type metadata accessor for RecentStoriesTagFeedGroup);
      v128 = v344;
      sub_219BED874();
      v129 = sub_219BF18D4();
      v130 = *(v346 + 8);
      v131 = v345;
      v130(v128, v345);
      v132 = v343;
      sub_219BED874();
      v133 = sub_219BF18C4();
      v130(v132, v131);
      sub_219052AE8(v129, v133, v350);

      v102 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_40;
    case 0x1Du:
      v95 = v332;
      sub_21905831C(v81, v332, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v109 = v344;
      sub_219BED874();
      v110 = sub_219BF18D4();
      v111 = *(v346 + 8);
      v112 = v345;
      v111(v109, v345);
      v113 = v343;
      sub_219BED874();
      v114 = sub_219BF18C4();
      v111(v113, v112);
      sub_219052AE8(v110, v114, v350);

      v102 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x1Eu:
      v95 = v333;
      sub_21905831C(v81, v333, type metadata accessor for DateRangeTagFeedGroup);
      v115 = v344;
      sub_219BED874();
      v116 = sub_219BF18D4();
      v117 = *(v346 + 8);
      v118 = v115;
      v119 = v345;
      v117(v118, v345);
      v120 = v343;
      sub_219BED874();
      v121 = sub_219BF18C4();
      v117(v120, v119);
      sub_219052AE8(v116, v121, v350);

      v102 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_40;
    case 0x20u:
      v95 = v334;
      sub_21905831C(v81, v334, type metadata accessor for SportsMastheadTagFeedGroup);
      v103 = v344;
      sub_219BED874();
      v104 = sub_219BF18D4();
      v105 = *(v346 + 8);
      v106 = v345;
      v105(v103, v345);
      v107 = v343;
      sub_219BED874();
      v108 = sub_219BF18C4();
      v105(v107, v106);
      sub_219052AE8(v104, v108, v350);

      v102 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_40;
    case 0x21u:
      v95 = v335;
      sub_21905831C(v81, v335, type metadata accessor for SportsEventTopicTagFeedGroup);
      v296 = v344;
      sub_219BED874();
      v297 = sub_219BF18D4();
      v298 = *(v346 + 8);
      v299 = v345;
      v298(v296, v345);
      v300 = v343;
      sub_219BED874();
      v301 = sub_219BF18C4();
      v298(v300, v299);
      sub_219052AE8(v297, v301, v350);

      v102 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_40;
    case 0x25u:
      v66 = v336;
      sub_21905831C(v81, v336, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v257 = v344;
      sub_219BED874();
      v258 = sub_219BF18B4();
      (*(v346 + 8))(v257, v345);
      sub_219053788(v258, v350);

      v148 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_31;
    case 0x26u:
      v66 = v337;
      sub_21905831C(v81, v337, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v146 = v344;
      sub_219BED874();
      v147 = sub_219BF18B4();
      (*(v346 + 8))(v146, v345);
      sub_219053788(v147, v350);

      v148 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
LABEL_31:
      v161 = v148;
      v162 = v66;
      break;
    case 0x28u:
      v95 = v338;
      sub_21905831C(v81, v338, type metadata accessor for AffinityTagFeedGroup);
      v207 = v344;
      sub_219BED874();
      v208 = sub_219BF18D4();
      v209 = *(v346 + 8);
      v210 = v345;
      v209(v207, v345);
      v211 = v343;
      sub_219BED874();
      v212 = sub_219BF18C4();
      v209(v211, v210);
      sub_219052AE8(v208, v212, v350);

      v102 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_40;
    case 0x2Au:
      v95 = v339;
      sub_21905831C(v81, v339, type metadata accessor for LatestRecipesTagFeedGroup);
      v266 = v344;
      sub_219BED874();
      v267 = sub_219BF18D4();
      v268 = *(v346 + 8);
      v269 = v345;
      v268(v266, v345);
      v270 = v343;
      sub_219BED874();
      v271 = sub_219BF18C4();
      v268(v270, v269);
      sub_219052AE8(v267, v271, v350);

      v102 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x2Bu:
      v95 = v340;
      sub_21905831C(v81, v340, type metadata accessor for SavedRecipesTagFeedGroup);
      v96 = v344;
      sub_219BED874();
      v97 = sub_219BF18D4();
      v98 = *(v346 + 8);
      v99 = v345;
      v98(v96, v345);
      v100 = v343;
      sub_219BED874();
      v101 = sub_219BF18C4();
      v98(v100, v99);
      sub_219052AE8(v97, v101, v350);

      v102 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x2Cu:
      v95 = v341;
      sub_21905831C(v81, v341, type metadata accessor for TrendingRecipesTagFeedGroup);
      v134 = v344;
      sub_219BED874();
      v135 = sub_219BF18D4();
      v136 = *(v346 + 8);
      v137 = v345;
      v136(v134, v345);
      v138 = v343;
      sub_219BED874();
      v139 = sub_219BF18C4();
      v136(v138, v137);
      sub_219052AE8(v135, v139, v350);

      v102 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_40;
    case 0x2Du:
      v95 = v342;
      sub_21905831C(v81, v342, type metadata accessor for TopicRecipesTagFeedGroup);
      v244 = v344;
      sub_219BED874();
      v245 = sub_219BF18D4();
      v246 = *(v346 + 8);
      v247 = v345;
      v246(v244, v345);
      v248 = v343;
      sub_219BED874();
      v249 = sub_219BF18C4();
      v246(v248, v247);
      sub_219052AE8(v245, v249, v350);

      v102 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_40:
      v161 = v102;
      v162 = v95;
      break;
    default:
      sub_21905831C(v81, v72, type metadata accessor for ArticleListTagFeedGroup);
      v195 = v344;
      sub_219BED874();
      v196 = sub_219BF18D4();
      v197 = *(v346 + 8);
      v198 = v345;
      v197(v195, v345);
      v199 = v343;
      sub_219BED874();
      v200 = sub_219BF18C4();
      v197(v199, v198);
      sub_219052AE8(v196, v200, v350);

      v161 = type metadata accessor for ArticleListTagFeedGroup;
      v162 = v72;
      break;
  }

  result = sub_219058384(v162, v161);
  v83 = v351;
  v82 = v352;
  v93 = v350[5];
  v94 = v350[6];
  v91 = v350[3];
  v92 = v350[4];
  v89 = v350[1];
  v90 = v350[2];
  v88 = v350[0];
LABEL_42:
  v308 = v348;
  *v348 = v88;
  v308[1] = v89;
  v308[2] = v90;
  v308[3] = v91;
  v308[4] = v92;
  v308[5] = v93;
  v308[6] = v94;
  *(v308 + 14) = v83;
  *(v308 + 15) = v82;
  return result;
}

uint64_t sub_219052AE8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  sub_219058560(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v76 - v8);
  v10 = a1 >> 62;
  v91 = v3;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  v92 = a1;
  v13 = a2;
  v90 = v10;
  v89 = v9;
  if (v11)
  {
    v94[0] = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }

    v12 = v94[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v15, v92);
        v16 = [swift_unknownObjectRetain() identifier];
        v9 = sub_219BF5414();
        v18 = v17;
        swift_unknownObjectRelease_n();

        v94[0] = v12;
        a1 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (a1 >= v19 >> 1)
        {
          sub_21870B65C((v19 > 1), a1 + 1, 1);
          v12 = v94[0];
        }

        ++v15;
        *(v12 + 16) = a1 + 1;
        v20 = v12 + 16 * a1;
        *(v20 + 32) = v9;
        *(v20 + 40) = v18;
      }

      while (v11 != v15);
    }

    else
    {
      v21 = a1 + 32;
      do
      {
        v22 = [swift_unknownObjectRetain_n() identifier];
        v9 = sub_219BF5414();
        v24 = v23;
        swift_unknownObjectRelease_n();

        v94[0] = v12;
        a1 = *(v12 + 16);
        v25 = *(v12 + 24);
        if (a1 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), a1 + 1, 1);
          v12 = v94[0];
        }

        *(v12 + 16) = a1 + 1;
        v26 = v12 + 16 * a1;
        *(v26 + 32) = v9;
        *(v26 + 40) = v24;
        v21 += 8;
        --v11;
      }

      while (v11);
    }

    a2 = v13;
  }

  v27 = sub_218845F78(v12);

  if (a2 >> 62)
  {
    v28 = sub_219BF7214();
  }

  else
  {
    v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x277D84F90];
  v88 = a3;
  if (v28)
  {
    v94[0] = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v87 = v27;
      v30 = 0;
      v29 = v94[0];
      v31 = a2;
      v10 = a2 & 0xC000000000000001;
      a3 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v32 = MEMORY[0x21CECE0F0](v30, v31);
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            v11 = sub_219BF7214();
            goto LABEL_3;
          }

          if (v30 >= *(a3 + 16))
          {
            goto LABEL_56;
          }

          v32 = *(v31 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v33 identifier];
        a2 = sub_219BF5414();
        v9 = v35;

        v94[0] = v29;
        a1 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (a1 >= v36 >> 1)
        {
          sub_21870B65C((v36 > 1), a1 + 1, 1);
          v29 = v94[0];
        }

        ++v30;
        *(v29 + 16) = a1 + 1;
        v37 = v29 + 16 * a1;
        *(v37 + 32) = a2;
        *(v37 + 40) = v9;
        v31 = v13;
        if (v28 == v30)
        {
          a2 = v13;
          v27 = v87;
          goto LABEL_30;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_30:
  v87 = sub_218845F78(v29);

  v38 = v91;
  v39 = *v91;
  v40 = swift_allocObject();
  v41 = v92;
  *(v40 + 16) = v92;
  v86 = v39;

  v42 = sub_219BE2E54();
  v85 = sub_219BE2F74();

  v43 = *(v38 + 24);
  *(swift_allocObject() + 16) = a2;
  v84 = v43;

  v44 = sub_219BE2E54();
  v83 = sub_219BE2F74();

  v45 = sub_219BF5BF4();
  v46 = v89;
  (*(*(v45 - 8) + 56))(v89, 1, 1, v45);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = *(v38 + 80);
  *(v47 + 96) = *(v38 + 64);
  *(v47 + 112) = v48;
  v49 = *(v38 + 112);
  *(v47 + 128) = *(v38 + 96);
  *(v47 + 144) = v49;
  v50 = *(v38 + 16);
  *(v47 + 32) = *v38;
  *(v47 + 48) = v50;
  v51 = *(v38 + 48);
  *(v47 + 64) = *(v38 + 32);
  *(v47 + 80) = v51;
  *(v47 + 160) = a2;

  sub_218A80CA4(v38, v94);
  v89 = sub_2195E76C4(0, 0, v46, &unk_219C55C70, v47);
  v52 = *(v38 + 48);
  v53 = *(v38 + 56);
  v54 = *(v38 + 64);
  v55 = *(v38 + 72);
  *(swift_allocObject() + 16) = v27;
  v82 = v52;

  v81 = v53;

  v80 = v54;

  v79 = v55;

  v56 = sub_219BE2E54();
  sub_2190586E4();
  v78 = sub_219BE2F74();

  v94[0] = *(v38 + 120);
  v57 = *(v38 + 8);
  v58 = *(v38 + 88);
  sub_219057D44(v94, &v95);
  v77 = v57;

  v76 = sub_2194796A0(v27, v58);
  a1 = v41 & 0xFFFFFFFFFFFFFF8;
  if (v90)
  {
    a2 = sub_219BF7214();
  }

  else
  {
    a2 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = *(v38 + 96);

  if (a2)
  {
    v10 = 0;
    v60 = v41 & 0xC000000000000001;
    v61 = MEMORY[0x277D84F90];
    v9 = &selRef_boldSystemFontOfSize_;
    do
    {
      a3 = v10;
      while (1)
      {
        if (v60)
        {
          v62 = MEMORY[0x21CECE0F0](a3, v41);
          v10 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (a3 >= *(a1 + 16))
          {
            goto LABEL_54;
          }

          v62 = *(v41 + 8 * a3 + 32);
          swift_unknownObjectRetain();
          v10 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        v63 = [v62 clusterID];
        if (v63)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++a3;
        v41 = v92;
        if (v10 == a2)
        {
          goto LABEL_52;
        }
      }

      v64 = v63;
      v65 = sub_219BF5414();
      v90 = v66;

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_218840D24(0, *(v61 + 2) + 1, 1, v61);
      }

      v68 = *(v61 + 2);
      v67 = *(v61 + 3);
      if (v68 >= v67 >> 1)
      {
        v61 = sub_218840D24((v67 > 1), v68 + 1, 1, v61);
      }

      *(v61 + 2) = v68 + 1;
      v69 = &v61[16 * v68];
      v70 = v90;
      *(v69 + 4) = v65;
      *(v69 + 5) = v70;
      v41 = v92;
    }

    while (v10 != a2);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

LABEL_52:
  v71 = sub_2194B1FF0(v61, v59);

  v72 = *(v91 + 112);
  v95 = *(v91 + 104);
  sub_219058474(&v95, v93, sub_2186E2394);

  result = sub_2194796A0(v87, v72);
  v73 = v94[0];
  v74 = v95;
  v75 = v88;
  *v88 = v86;
  v75[1] = v77;
  v75[2] = v85;
  v75[3] = v84;
  v75[4] = v83;
  v75[5] = v89;
  v75[6] = v82;
  v75[7] = v81;
  v75[8] = v80;
  v75[9] = v79;
  v75[10] = v78;
  v75[11] = v76;
  v75[12] = v71;
  v75[13] = v74;
  v75[14] = result;
  v75[15] = v73;
  return result;
}

uint64_t sub_2190533E8@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (a1 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v47 = a2;
  if (!v6)
  {
LABEL_15:
    v26 = sub_218845F78(v7);

    *(swift_allocObject() + 16) = v26;
    v27 = sub_219BE2E54();
    sub_218DDCE9C();
    v46 = sub_219BE30F4();

    v28 = *(v3 + 8);
    v29 = *(v3 + 16);
    v39 = *(v3 + 32);
    v45 = *(v3 + 40);
    v31 = *(v3 + 48);
    v30 = *(v3 + 56);
    v32 = *(v3 + 64);
    v33 = *(v3 + 72);
    v34 = *(v3 + 112);
    v53 = *(v3 + 120);
    v44 = v53;
    v54 = v45;
    v35 = *v3;
    v36 = *(v3 + 80);
    v42 = v34;
    v43 = *(v3 + 88);
    v37 = *(v3 + 104);
    v51 = *(v3 + 96);
    v41 = v51;
    v52 = v43;
    v49 = v34;
    v50 = v37;
    v40 = v35;

    sub_219058474(&v54, v48, sub_219058404);

    sub_219057D44(&v53, v48);
    v38 = v28;
    sub_219058474(&v52, v48, sub_2186E2394);
    sub_219058474(&v51, v48, sub_2186E2394);
    sub_219058474(&v50, v48, sub_2186E2394);
    result = sub_219058474(&v49, v48, sub_2186E2394);
    *v47 = v40;
    v47[1] = v38;
    v47[2] = v29;
    v47[3] = v46;
    v47[4] = v39;
    v47[5] = v45;
    v47[6] = v31;
    v47[7] = v30;
    v47[8] = v32;
    v47[9] = v33;
    v47[10] = v36;
    v47[11] = v43;
    v47[12] = v41;
    v47[13] = v37;
    v47[14] = v42;
    v47[15] = v44;
    return result;
  }

  v54 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v54;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v9, a1);
        v10 = [swift_unknownObjectRetain() identifier];
        v11 = sub_219BF5414();
        v13 = v12;
        swift_unknownObjectRelease_n();

        v54 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21870B65C((v14 > 1), v15 + 1, 1);
          v7 = v54;
        }

        ++v9;
        *(v7 + 16) = v15 + 1;
        v16 = v7 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v6 != v9);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v19 = [v18 identifier];
        v20 = sub_219BF5414();
        v22 = v21;

        v54 = v7;
        v24 = *(v7 + 16);
        v23 = *(v7 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21870B65C((v23 > 1), v24 + 1, 1);
          v7 = v54;
        }

        *(v7 + 16) = v24 + 1;
        v25 = v7 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        ++v17;
        --v6;
      }

      while (v6);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_219053788@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (a1 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v48 = a2;
  if (!v6)
  {
LABEL_15:
    v25 = sub_218845F78(v7);

    v46 = v25;
    *(swift_allocObject() + 16) = v25;

    v26 = sub_219BE2E54();
    sub_2190584DC();
    v47 = sub_219BE30F4();

    v43 = *(v3 + 24);
    v44 = *(v3 + 16);
    v28 = *(v3 + 32);
    v27 = *(v3 + 40);
    v29 = *(v3 + 56);
    v30 = *(v3 + 64);
    v31 = *(v3 + 72);
    v32 = *(v3 + 80);
    v52 = *(v3 + 120);
    v53 = v27;
    v33 = *(v3 + 88);
    v50 = *(v3 + 96);
    v51 = v33;
    v34 = *(v3 + 8);
    v35 = *(v3 + 104);
    v45 = *v3;

    sub_219058474(&v53, v49, sub_219058404);

    sub_219057D44(&v52, v49);
    v36 = v34;
    sub_219058474(&v51, v49, sub_2186E2394);
    sub_219058474(&v50, v49, sub_2186E2394);

    v37 = sub_2194796A0(v46, v35);
    v38 = *(v3 + 112);
    v40 = v52;
    v39 = v53;
    v42 = v50;
    v41 = v51;
    *v48 = v45;
    v48[1] = v36;
    v48[2] = v44;
    v48[3] = v43;
    v48[4] = v28;
    v48[5] = v39;
    v48[6] = v47;
    v48[7] = v29;
    v48[8] = v30;
    v48[9] = v31;
    v48[10] = v32;
    v48[11] = v41;
    v48[12] = v42;
    v48[13] = v37;
    v48[14] = v38;
    v48[15] = v40;
  }

  v53 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v53;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v9, a1);
        v10 = [swift_unknownObjectRetain() identifier];
        v11 = sub_219BF5414();
        v13 = v12;
        swift_unknownObjectRelease_n();

        v53 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21870B65C((v14 > 1), v15 + 1, 1);
          v7 = v53;
        }

        ++v9;
        *(v7 + 16) = v15 + 1;
        v16 = v7 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v6 != v9);
    }

    else
    {
      v17 = a1 + 32;
      do
      {
        v18 = [swift_unknownObjectRetain_n() identifier];
        v19 = sub_219BF5414();
        v21 = v20;
        swift_unknownObjectRelease_n();

        v53 = v7;
        v23 = *(v7 + 16);
        v22 = *(v7 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21870B65C((v22 > 1), v23 + 1, 1);
          v7 = v53;
        }

        *(v7 + 16) = v23 + 1;
        v24 = v7 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v17 += 8;
        --v6;
      }

      while (v6);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_219053B20(uint64_t a1)
{
  v2[853] = v1;
  v2[847] = a1;
  v3 = sub_219BF4AC4();
  v2[859] = v3;
  v2[865] = *(v3 - 8);
  v2[871] = swift_task_alloc();
  v2[877] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219053BF0, 0, 0);
}

uint64_t sub_219053BF0()
{
  v1 = [**(v0 + 6824) feedConfiguration];
  v2 = 0;
  if (v1 > 6)
  {
    if (v1 <= 8)
    {
      if (v1 != 7)
      {
        v23 = *(v0 + 6824);
        v24 = *(*(v0 + 6776) + 120);
        *(v0 + 6728) = v24;
        v25 = *(v23 + 120);
        *(v0 + 6344) = v25;
        if (v24)
        {
          if (v25)
          {
            v26 = *(v0 + 7016);
            v27 = *(v0 + 6968);
            v28 = *(v0 + 6920);
            v29 = *(v0 + 6872);
            sub_219057D44(v0 + 6344, v0 + 6296);
            sub_219057D44(v0 + 6728, v0 + 6392);
            sub_219BF4404();
            sub_219BF3FA4();

            sub_219BF4A64();
            v30 = *(v28 + 8);
            v30(v26, v29);
            sub_219BF4404();
            sub_219BF3FA4();

            sub_219BF4A64();
            v30(v27, v29);
            v31 = sub_219BF1F64();
            v33 = v32;
            if (v31 == sub_219BF1F64() && v33 == v34)
            {
              sub_219057DC4(v0 + 6344);
              sub_219057DC4(v0 + 6728);

              v2 = 0;
            }

            else
            {
              v85 = sub_219BF78F4();
              sub_219057DC4(v0 + 6344);
              sub_219057DC4(v0 + 6728);

              v2 = v85 ^ 1;
            }
          }

          else
          {
            v2 = 0;
          }
        }

        else
        {
          v2 = v25 != 0;
        }
      }

      goto LABEL_30;
    }

    switch(v1)
    {
      case 9:
LABEL_30:
        sub_2187FABEC(0);
        sub_2187FABEC(0);
        sub_2187FABEC(0);
        sub_2187FABEC(0);
        sub_2187FABEC(0);

        v86 = *(v0 + 8);

        return v86(v2 & 1);
      case 10:
        v3 = 6680;
        v4 = 6640;
        v53 = *(v0 + 6824);
        v54 = *(v0 + 6776);
        v55 = swift_allocObject();
        *(v0 + 7736) = v55;
        v56 = v53[3];
        v58 = *v53;
        v57 = v53[1];
        v55[3] = v53[2];
        v55[4] = v56;
        v55[1] = v58;
        v55[2] = v57;
        v59 = v53[7];
        v61 = v53[4];
        v60 = v53[5];
        v55[7] = v53[6];
        v55[8] = v59;
        v55[5] = v61;
        v55[6] = v60;
        sub_218A80CA4(v53, v0 + 5176);
        sub_218799690(0, &qword_280E8ECA0, &qword_280E8E430, &protocolRef_FCPuzzleProviding, sub_2186D6710);
        swift_asyncLet_begin();
        v62 = swift_allocObject();
        *(v0 + 7784) = v62;
        v63 = v54[3];
        v65 = *v54;
        v64 = v54[1];
        v62[3] = v54[2];
        v62[4] = v63;
        v62[1] = v65;
        v62[2] = v64;
        v66 = v54[7];
        v68 = v54[4];
        v67 = v54[5];
        v62[7] = v54[6];
        v62[8] = v66;
        v62[5] = v68;
        v62[6] = v67;
        sub_218A80CA4(v54, v0 + 6072);
        swift_asyncLet_begin();
        v21 = sub_219055160;
        v22 = v0 + 4496;
        goto LABEL_22;
      case 11:
        goto LABEL_30;
    }

LABEL_26:
    v2 = 1;
    goto LABEL_30;
  }

  if (v1 > 2)
  {
    v2 = (v1 - 3) >= 2;
    goto LABEL_30;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 6440;
      v4 = 7696;
      v69 = *(v0 + 6824);
      v70 = *(v0 + 6776);
      v71 = swift_allocObject();
      *(v0 + 7896) = v71;
      v72 = v69[3];
      v74 = *v69;
      v73 = v69[1];
      v71[3] = v69[2];
      v71[4] = v72;
      v71[1] = v74;
      v71[2] = v73;
      v75 = v69[7];
      v77 = v69[4];
      v76 = v69[5];
      v71[7] = v69[6];
      v71[8] = v75;
      v71[5] = v77;
      v71[6] = v76;
      sub_218A80CA4(v69, v0 + 5432);
      sub_2186C6148(0, &qword_280E8DBC0);
      swift_asyncLet_begin();
      v78 = swift_allocObject();
      *(v0 + 7904) = v78;
      v79 = v70[3];
      v81 = *v70;
      v80 = v70[1];
      v78[3] = v70[2];
      v78[4] = v79;
      v78[1] = v81;
      v78[2] = v80;
      v82 = v70[7];
      v84 = v70[4];
      v83 = v70[5];
      v78[7] = v70[6];
      v78[8] = v82;
      v78[5] = v84;
      v78[6] = v83;
      sub_218A80CA4(v70, v0 + 5688);
      swift_asyncLet_begin();
      v21 = sub_219055704;
      v22 = v0 + 1296;
      goto LABEL_22;
    }

    if (v1 == 2)
    {
      v3 = 6584;
      v4 = 7312;
      v5 = *(v0 + 6824);
      v6 = *(v0 + 6776);
      v7 = swift_allocObject();
      *(v0 + 7496) = v7;
      v8 = v5[3];
      v10 = *v5;
      v9 = v5[1];
      v7[3] = v5[2];
      v7[4] = v8;
      v7[1] = v10;
      v7[2] = v9;
      v11 = v5[7];
      v13 = v5[4];
      v12 = v5[5];
      v7[7] = v5[6];
      v7[8] = v11;
      v7[5] = v13;
      v7[6] = v12;
      sub_218A80CA4(v5, v0 + 5944);
      sub_218799690(0, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, sub_2186C6148);
      swift_asyncLet_begin();
      v14 = swift_allocObject();
      *(v0 + 7544) = v14;
      v15 = v6[3];
      v17 = *v6;
      v16 = v6[1];
      v14[3] = v6[2];
      v14[4] = v15;
      v14[1] = v17;
      v14[2] = v16;
      v18 = v6[7];
      v20 = v6[4];
      v19 = v6[5];
      v14[7] = v6[6];
      v14[8] = v18;
      v14[5] = v20;
      v14[6] = v19;
      sub_218A80CA4(v6, v0 + 5816);
      swift_asyncLet_begin();
      v21 = sub_219054BF0;
      v22 = v0 + 3216;
LABEL_22:
      v51 = v0 + v3;
      v52 = v0 + v4;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v35 = *(v0 + 6824);
  v36 = *(v0 + 6776);
  v37 = swift_allocObject();
  *(v0 + 7064) = v37;
  v38 = v35[3];
  v40 = *v35;
  v39 = v35[1];
  v37[3] = v35[2];
  v37[4] = v38;
  v37[1] = v40;
  v37[2] = v39;
  v41 = v35[7];
  v43 = v35[4];
  v42 = v35[5];
  v37[7] = v35[6];
  v37[8] = v41;
  v37[5] = v43;
  v37[6] = v42;
  sub_218A80CA4(v35, v0 + 5560);
  swift_asyncLet_begin();
  v44 = swift_allocObject();
  *(v0 + 7112) = v44;
  v45 = v36[3];
  v47 = *v36;
  v46 = v36[1];
  v44[3] = v36[2];
  v44[4] = v45;
  v44[1] = v47;
  v44[2] = v46;
  v48 = v36[7];
  v50 = v36[4];
  v49 = v36[5];
  v44[7] = v36[6];
  v44[8] = v48;
  v44[5] = v50;
  v44[6] = v49;
  sub_218A80CA4(v36, v0 + 5304);
  swift_asyncLet_begin();
  v21 = sub_21905441C;
  v22 = v0 + 656;
  v51 = v0 + 6248;
  v52 = v0 + 6304;
LABEL_23:

  return MEMORY[0x282200930](v22, v51, v21, v52);
}

uint64_t sub_21905441C()
{
  v1[895] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 2, v1 + 775, sub_219056334, v1 + 974);
  }

  else
  {
    v1[901] = v1[781];
    v1[907] = v1[782];
    v1[913] = v1[783];
    v2 = v1[784];
    v1[919] = v2;
    v3 = v1[785];
    v1[925] = v3;

    sub_2189EEB80(v2, v3);

    return MEMORY[0x282200930](v1 + 2, v1 + 775, sub_219054530, v1 + 896);
  }
}

uint64_t sub_219054530()
{
  *(v1 + 7448) = v0;
  if (v0)
  {
    v2 = sub_219056458;
  }

  else
  {
    v2 = sub_219054564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219054564()
{
  v1 = v0[775];
  v2 = v0[777];
  v3 = v0[778];
  v4 = v0[779];
  v5 = v2;
  if (v2 >> 62)
  {
    v56 = v1;
    v57 = sub_219BF7214();
    v2 = v5;
    v6 = v57;
    v1 = v56;
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v2;
  v64 = v1;
  v60 = v4;
  v61 = v3;
  if (v6)
  {
    v7 = MEMORY[0x277D84F90];

    sub_2189EEB80(v3, v4);
    v8 = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    v12 = 0;
    v13 = v7;
    v14 = v5;
    v15 = v5 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        MEMORY[0x21CECE0F0](v12, v14);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v16 = [swift_unknownObjectRetain() identifier];
      v17 = sub_219BF5414();
      v19 = v18;

      swift_unknownObjectRelease_n();
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
      }

      ++v12;
      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v14 = v63;
    }

    while (v6 != v12);
    v23 = v64;
    if (!(v64 >> 62))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v53 = v1;

    sub_2189EEB80(v3, v4);
    v23 = v53;
    v13 = MEMORY[0x277D84F90];
    if (!(v53 >> 62))
    {
LABEL_13:
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }
  }

  v54 = v23;
  v55 = sub_219BF7214();
  v23 = v54;
  v24 = v55;
LABEL_14:
  v25 = MEMORY[0x277D84F90];
  if (!v24)
  {
    goto LABEL_23;
  }

  v26 = v23;
  v65 = MEMORY[0x277D84F90];
  v8 = sub_21870B65C(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = 0;
  v25 = v65;
  v28 = v26;
  v29 = v26 & 0xC000000000000001;
  do
  {
    if (v29)
    {
      MEMORY[0x21CECE0F0](v27, v28);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v30 = [swift_unknownObjectRetain() identifier];
    v31 = sub_219BF5414();
    v33 = v32;

    swift_unknownObjectRelease_n();
    v35 = *(v65 + 16);
    v34 = *(v65 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_21870B65C((v34 > 1), v35 + 1, 1);
    }

    ++v27;
    *(v65 + 16) = v35 + 1;
    v36 = v65 + 16 * v35;
    *(v36 + 32) = v31;
    *(v36 + 40) = v33;
    v28 = v64;
  }

  while (v24 != v27);
LABEL_23:
  v37 = *(v62 + 7208);
  sub_2191ED3E8(v25);
  v38 = sub_218845F78(v13);

  if (v37 >> 62)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D84F90];
  v59 = v38;
  if (v39)
  {
    v66 = MEMORY[0x277D84F90];
    v8 = sub_21870B65C(0, v39 & ~(v39 >> 63), 0);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      v40 = v66;
      v42 = v37 & 0xC000000000000001;
      do
      {
        if (v42)
        {
          MEMORY[0x21CECE0F0](v41, *(v62 + 7208));
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v43 = [swift_unknownObjectRetain() identifier];
        v44 = sub_219BF5414();
        v46 = v45;

        swift_unknownObjectRelease_n();
        v48 = *(v66 + 16);
        v47 = *(v66 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21870B65C((v47 > 1), v48 + 1, 1);
        }

        ++v41;
        *(v66 + 16) = v48 + 1;
        v49 = v66 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
      }

      while (v39 != v41);
      goto LABEL_34;
    }

LABEL_43:
    __break(1u);
    return MEMORY[0x282200920](v8, v9, v10, v11);
  }

LABEL_34:
  v50 = *(v62 + 7400);
  v51 = *(v62 + 7352);
  v52 = sub_218845F78(v40);

  *(v62 + 7936) = sub_219057B68(v59, v52) & 1;

  sub_2189EEBC0(v51, v50);

  sub_2189EEBC0(v61, v60);
  v10 = sub_219054AB4;
  v8 = (v62 + 16);
  v9 = v62 + 6200;
  v11 = v62 + 6352;

  return MEMORY[0x282200920](v8, v9, v10, v11);
}

uint64_t sub_219054B14()
{

  v1 = *(v0 + 7936);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v2 = *(v0 + 8);

  return v2((v1 & 1) == 0);
}

uint64_t sub_219054BF0()
{
  v1[949] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 322, v1 + 817, sub_21905662C, v1 + 920);
  }

  else
  {
    v1[955] = v1[823];

    return MEMORY[0x282200930](v1 + 322, v1 + 817, sub_219054CB0, v1 + 932);
  }
}

uint64_t sub_219054CB0()
{
  *(v1 + 7688) = v0;
  if (v0)
  {
    v2 = sub_219056750;
  }

  else
  {
    v2 = sub_219054CE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219054CE4()
{
  v1 = *(v0 + 6536);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];

    v4 = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v8 = 0;
    v9 = v38;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, v1);
      }

      else
      {
        v10 = *(v1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 identifier];
      v13 = sub_219BF5414();
      v15 = v14;

      v17 = *(v38 + 16);
      v16 = *(v38 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21870B65C((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v38 + 16) = v17 + 1;
      v18 = v38 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v2 != v8);

    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v19 = *(v0 + 7640);
  v20 = sub_218845F78(v9);

  if (v19 >> 62)
  {
    v21 = sub_219BF7214();
    if (v21)
    {
LABEL_16:
      v39 = v3;
      v4 = sub_21870B65C(0, v21 & ~(v21 >> 63), 0);
      if ((v21 & 0x8000000000000000) == 0)
      {
        v37 = v20;
        v22 = 0;
        v23 = v39;
        v24 = v19 & 0xC000000000000001;
        v25 = *(v0 + 7640) + 32;
        do
        {
          if (v24)
          {
            v26 = MEMORY[0x21CECE0F0](v22, *(v0 + 7640));
          }

          else
          {
            v26 = *(v25 + 8 * v22);
          }

          v27 = v26;
          v28 = [v27 identifier];
          v29 = sub_219BF5414();
          v31 = v30;

          v33 = *(v39 + 16);
          v32 = *(v39 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_21870B65C((v32 > 1), v33 + 1, 1);
          }

          ++v22;
          *(v39 + 16) = v33 + 1;
          v34 = v39 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
        }

        while (v21 != v22);

        v20 = v37;
        goto LABEL_28;
      }

LABEL_32:
      __break(1u);
      return MEMORY[0x282200920](v4, v5, v6, v7);
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_28:
  v35 = sub_218845F78(v23);

  *(v0 + 7937) = sub_219057B68(v20, v35) & 1;

  v6 = sub_219055020;
  v4 = (v0 + 2576);
  v5 = v0 + 6536;
  v7 = v0 + 7600;

  return MEMORY[0x282200920](v4, v5, v6, v7);
}

uint64_t sub_219055080()
{

  v1 = *(v0 + 7937);
  sub_2187FABEC(&unk_219C55C40);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v2 = *(v0 + 8);

  return v2((v1 & 1) == 0);
}

uint64_t sub_219055160()
{
  v1[979] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 482, v1 + 829, sub_2190568E8, v1 + 836);
  }

  else
  {
    v1[985] = v1[835];

    return MEMORY[0x282200930](v1 + 482, v1 + 829, sub_219055220, v1 + 848);
  }
}

uint64_t sub_219055220()
{
  *(v1 + 7888) = v0;
  if (v0)
  {
    v2 = sub_219056A20;
  }

  else
  {
    v2 = sub_219055254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219055254()
{
  v1 = *(v0 + 6632);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];

    v4 = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v8 = 0;
    v9 = v33;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v8, v1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v10 = [swift_unknownObjectRetain() identifier];
      v11 = sub_219BF5414();
      v13 = v12;

      swift_unknownObjectRelease_n();
      v15 = *(v33 + 16);
      v14 = *(v33 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v33 + 16) = v15 + 1;
      v16 = v33 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v2 != v8);

    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v17 = *(v0 + 7880);
  v18 = sub_218845F78(v9);

  if (v17 >> 62)
  {
    v19 = sub_219BF7214();
    if (v19)
    {
LABEL_16:
      v34 = v3;
      v4 = sub_21870B65C(0, v19 & ~(v19 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v32 = v18;
        v20 = 0;
        v21 = v34;
        v22 = v17 & 0xC000000000000001;
        do
        {
          if (v22)
          {
            MEMORY[0x21CECE0F0](v20, *(v0 + 7880));
          }

          else
          {
            swift_unknownObjectRetain();
          }

          v23 = [swift_unknownObjectRetain() identifier];
          v24 = sub_219BF5414();
          v26 = v25;

          swift_unknownObjectRelease_n();
          v28 = *(v34 + 16);
          v27 = *(v34 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_21870B65C((v27 > 1), v28 + 1, 1);
          }

          ++v20;
          *(v34 + 16) = v28 + 1;
          v29 = v34 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
        }

        while (v19 != v20);

        v18 = v32;
        goto LABEL_28;
      }

LABEL_32:
      __break(1u);
      return MEMORY[0x282200920](v4, v5, v6, v7);
    }
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_16;
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_28:
  v30 = sub_218845F78(v21);

  *(v0 + 7938) = sub_219057B68(v18, v30) & 1;

  v6 = sub_2190555A8;
  v4 = (v0 + 3856);
  v5 = v0 + 6632;
  v7 = v0 + 6928;

  return MEMORY[0x282200920](v4, v5, v6, v7);
}

uint64_t sub_21905560C()
{
  v1 = *(v0 + 7938);
  sub_2187FABEC(0);
  sub_2187FABEC(&unk_219C55C10);
  sub_2187FABEC(&unk_219C55C20);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v2 = *(v0 + 8);

  return v2((v1 & 1) == 0);
}

uint64_t sub_219055704()
{
  v1[989] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 242, v1 + 811, sub_219056BCC, v1 + 908);
  }

  else
  {
    v2 = v1[805];
    v1[990] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 242, v1 + 811, sub_2190557C4, v1 + 890);
  }
}

uint64_t sub_2190557C4()
{
  *(v1 + 7928) = v0;
  if (v0)
  {
    v2 = sub_219056D0C;
  }

  else
  {
    v2 = sub_2190557F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2190557F8()
{
  v65 = isUniquelyReferenced_nonNull_native[811];
  v1 = [v65 sectionHeadlinesGroups];
  sub_2186C6148(0, &qword_280E8DB70);
  v2 = sub_219BF5924();

  if (v2 >> 62)
  {
    goto LABEL_37;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v67 = isUniquelyReferenced_nonNull_native;
  v68 = v2;
  while (v3)
  {
    v4 = 0;
    v72 = v2 & 0xFFFFFFFFFFFFFF8;
    v73 = v2 & 0xC000000000000001;
    v71 = v2 + 32;
    v5 = MEMORY[0x277D84F98];
    v70 = v3;
    while (1)
    {
      if (v73)
      {
        v6 = MEMORY[0x21CECE0F0](v4, v68);
      }

      else
      {
        if (v4 >= *(v72 + 16))
        {
          goto LABEL_34;
        }

        v6 = *(v71 + 8 * v4);
      }

      v2 = v6;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = [objc_msgSend(v6 section)];
      swift_unknownObjectRelease();
      v8 = sub_219BF5414();
      v10 = v9;

      v11 = [v2 headlines];
      sub_2186D6710(0, &qword_280E8E260);
      v12 = sub_219BF5924();

      if (v12 >> 62)
      {
        v13 = sub_219BF7214();
        if (!v13)
        {
LABEL_23:

          v15 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v81 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_36;
      }

      v74 = v8;
      v76 = v10;
      v78 = v2;
      v14 = 0;
      v15 = v81;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v14, v12);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v16 = [swift_unknownObjectRetain() identifier];
        v17 = sub_219BF5414();
        v19 = v18;

        swift_unknownObjectRelease_n();
        v21 = *(v81 + 16);
        v20 = *(v81 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21870B65C((v20 > 1), v21 + 1, 1);
        }

        ++v14;
        *(v81 + 16) = v21 + 1;
        v22 = v81 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v13 != v14);

      v2 = v78;
      v3 = v70;
      v8 = v74;
      v10 = v76;
LABEL_24:
      v23 = sub_218845F78(v15);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_21870F700(v8, v10);
      v26 = v5[2];
      v27 = (v25 & 1) == 0;
      v7 = __OFADD__(v26, v27);
      v28 = v26 + v27;
      if (v7)
      {
        goto LABEL_35;
      }

      v29 = v25;
      if (v5[3] < v28)
      {
        sub_219482D74(v28, isUniquelyReferenced_nonNull_native);
        v24 = sub_21870F700(v8, v10);
        if ((v29 & 1) != (v30 & 1))
        {
LABEL_71:

          return sub_219BF79A4();
        }

LABEL_29:
        if (v29)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = v24;
      sub_21949342C();
      v24 = isUniquelyReferenced_nonNull_native;
      if (v29)
      {
LABEL_30:
        *(v5[7] + 8 * v24) = v23;

        goto LABEL_5;
      }

LABEL_4:
      sub_2194B7E50();
LABEL_5:

      if (v4 == v3)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v3 = sub_219BF7214();
    v67 = isUniquelyReferenced_nonNull_native;
    v68 = v2;
  }

  v5 = MEMORY[0x277D84F98];
LABEL_39:
  v31 = v67[990];

  v32 = [v31 sectionHeadlinesGroups];
  v33 = sub_219BF5924();

  if (v33 >> 62)
  {
    goto LABEL_78;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v33;
  if (v34)
  {
LABEL_41:
    v35 = 0;
    v36 = MEMORY[0x277D84F98];
    v80 = v5;
    v69 = v34;
    while (1)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x21CECE0F0](v35, v66);
      }

      else
      {
        if (v35 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v37 = *(v66 + 32 + 8 * v35);
      }

      v38 = v37;
      v7 = __OFADD__(v35++, 1);
      if (v7)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v34 = sub_219BF7214();
        v66 = v33;
        if (!v34)
        {
          break;
        }

        goto LABEL_41;
      }

      v33 = [objc_msgSend(v37 section)];
      swift_unknownObjectRelease();
      v77 = sub_219BF5414();
      v79 = v39;

      v40 = [v38 headlines];
      sub_2186D6710(0, &qword_280E8E260);
      v41 = sub_219BF5924();

      if (v41 >> 62)
      {
        v42 = sub_219BF7214();
        v75 = v38;
        if (!v42)
        {
LABEL_61:

          v44 = MEMORY[0x277D84F90];
          goto LABEL_62;
        }
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v75 = v38;
        if (!v42)
        {
          goto LABEL_61;
        }
      }

      v82 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v42 & ~(v42 >> 63), 0);
      if (v42 < 0)
      {
        goto LABEL_77;
      }

      v43 = 0;
      v44 = v82;
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v43, v41);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v45 = [swift_unknownObjectRetain() identifier];
        v46 = sub_219BF5414();
        v48 = v47;

        swift_unknownObjectRelease_n();
        v50 = *(v82 + 16);
        v49 = *(v82 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_21870B65C((v49 > 1), v50 + 1, 1);
        }

        ++v43;
        *(v82 + 16) = v50 + 1;
        v51 = v82 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
      }

      while (v42 != v43);

      v34 = v69;
LABEL_62:
      v52 = sub_218845F78(v44);

      v33 = swift_isUniquelyReferenced_nonNull_native();
      v53 = sub_21870F700(v77, v79);
      v55 = v36[2];
      v56 = (v54 & 1) == 0;
      v7 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      v5 = v80;
      if (v7)
      {
        goto LABEL_76;
      }

      v58 = v54;
      if (v36[3] < v57)
      {
        sub_219482D74(v57, v33);
        v53 = sub_21870F700(v77, v79);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_71;
        }

LABEL_67:
        if (v58)
        {
          goto LABEL_68;
        }

        goto LABEL_42;
      }

      if (v33)
      {
        goto LABEL_67;
      }

      v33 = v53;
      sub_21949342C();
      v53 = v33;
      if (v58)
      {
LABEL_68:
        *(v36[7] + 8 * v53) = v52;

        goto LABEL_43;
      }

LABEL_42:
      sub_2194B7E50();
LABEL_43:

      if (v35 == v34)
      {
        goto LABEL_80;
      }
    }
  }

  v36 = MEMORY[0x277D84F98];
LABEL_80:
  v61 = v67[990];

  v62 = sub_21931E3F8(v36, v5);

  if (v62)
  {
    v63 = 800;
    v64 = sub_2190560AC;
  }

  else
  {
    v63 = 818;
    v64 = sub_2190561F0;
  }

  return MEMORY[0x282200920](v67 + 242, v67 + 811, v64, &v67[v63]);
}

uint64_t sub_21905610C()
{
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(&unk_219C55BF0);
  sub_2187FABEC(&unk_219C55C00);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056250()
{
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(&unk_219C55BF0);
  sub_2187FABEC(&unk_219C55C00);

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_219056394()
{

  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056458()
{
  v1 = *(v0 + 7400);
  v2 = *(v0 + 7352);

  sub_2189EEBC0(v2, v1);

  return MEMORY[0x282200920](v0 + 16, v0 + 6200, sub_219056508, v0 + 7024);
}

uint64_t sub_219056568()
{

  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21905668C()
{

  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056750()
{

  return MEMORY[0x282200920](v0 + 2576, v0 + 6536, sub_2190567C4, v0 + 7504);
}

uint64_t sub_219056824()
{

  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21905694C()
{
  sub_2187FABEC(&unk_219C55C10);
  sub_2187FABEC(&unk_219C55C20);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056A20()
{

  return MEMORY[0x282200920](v0 + 3856, v0 + 6632, sub_219056A94, v0 + 6832);
}

uint64_t sub_219056AF8()
{
  sub_2187FABEC(&unk_219C55C10);
  sub_2187FABEC(&unk_219C55C20);
  sub_2187FABEC(0);
  sub_2187FABEC(0);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056C2C()
{
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(&unk_219C55BF0);
  sub_2187FABEC(&unk_219C55C00);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056D0C()
{

  return MEMORY[0x282200920](v0 + 1936, v0 + 6488, sub_219056D80, v0 + 7072);
}

uint64_t sub_219056DE0()
{
  sub_2187FABEC(0);
  sub_2187FABEC(0);
  sub_2187FABEC(&unk_219C55BF0);
  sub_2187FABEC(&unk_219C55C00);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_219056EC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_219056F60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_219057000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_2190570A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return MEMORY[0x2821D23D8](a1);
}

uint64_t sub_219057140(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return MEMORY[0x2821D23D8](a1);
}

id sub_2190571E0@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = sub_219873AA0(*a1, a2);

  sub_2191ED6C8(v10);
  *a3 = v9;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
  return sub_2189EEB80(v6, v7);
}

uint64_t sub_219057284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a1;
  v5[4] = a5;
  v7 = sub_219BEFC44();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v8 = swift_task_alloc();
  v5[7] = v8;
  v9 = *(a4 + 40);
  v10 = swift_task_alloc();
  v5[8] = v10;
  v11 = sub_218A450F0();
  *v10 = v5;
  v10[1] = sub_2190573B4;
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v8, v9, v7, v11, v12);
}

uint64_t sub_2190573B4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2190575BC;
  }

  else
  {
    v2 = sub_2190574C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2190574C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v0[4];
  sub_218799690(0, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
  sub_219058734();
  sub_219BEFC24();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2190575BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219057620@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v27 = *(*result + 16);
  if (v27)
  {
    v5 = 0;
    v25 = v3 + 32;
    v6 = a2 + 56;
    v7 = MEMORY[0x277D84F90];
    v26 = *result;
    do
    {
      v28 = v7;
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = (v25 + 24 * v5);
        v9 = v8[1];
        v10 = v8[2];
        ++v5;
        v29 = *v8;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v11 = [swift_unknownObjectRetain() identifier];
        v12 = sub_219BF5414();
        v14 = v13;

        if (!*(a2 + 16))
        {
          break;
        }

        sub_219BF7AA4();
        sub_219BF5524();
        v15 = sub_219BF7AE4();
        v16 = -1 << *(a2 + 32);
        v17 = v15 & ~v16;
        if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          break;
        }

        v18 = ~v16;
        while (1)
        {
          v19 = (*(a2 + 48) + 16 * v17);
          v20 = *v19 == v12 && v19[1] == v14;
          if (v20 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v3 = v26;
        v7 = v28;
        if (v5 == v27)
        {
          goto LABEL_22;
        }
      }

LABEL_15:

      v7 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218C368D0(0, *(v28 + 16) + 1, 1);
        v7 = v28;
      }

      v3 = v26;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_218C368D0((v21 > 1), v22 + 1, 1);
        v7 = v28;
      }

      *(v7 + 16) = v22 + 1;
      v23 = (v7 + 24 * v22);
      v23[4] = v29;
      v23[5] = v9;
      v23[6] = v10;
    }

    while (v5 != v27);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_22:
  *a3 = v7;
  return result;
}

BOOL sub_219057878(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  LOBYTE(a2) = sub_2188537B8(v4, v6, a2);

  return (a2 & 1) == 0;
}

double sub_219057908@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v24 = v2[4];
  v25 = v4;
  v5 = v2[7];
  v26 = v2[6];
  v27 = v5;
  v6 = v2[1];
  v20 = *v2;
  v21 = v6;
  v7 = v2[3];
  v22 = v2[2];
  v23 = v7;
  sub_21904FFA0(a1, v13);
  v8 = v17;
  a2[4] = v16;
  a2[5] = v8;
  v9 = v19;
  a2[6] = v18;
  a2[7] = v9;
  v10 = v13[1];
  *a2 = v13[0];
  a2[1] = v10;
  result = *&v14;
  v12 = v15;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_219057988(_OWORD *a1)
{
  v3 = a1[5];
  *(v2 + 208) = a1[4];
  *(v2 + 224) = v3;
  v4 = a1[7];
  *(v2 + 240) = a1[6];
  *(v2 + 256) = v4;
  v5 = a1[1];
  *(v2 + 144) = *a1;
  *(v2 + 160) = v5;
  v6 = a1[3];
  *(v2 + 176) = a1[2];
  *(v2 + 192) = v6;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v9;
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v12;
  *(v2 + 80) = v10;
  *(v2 + 96) = v11;
  v13 = swift_task_alloc();
  *(v2 + 272) = v13;
  *v13 = v2;
  v13[1] = sub_219057A60;

  return sub_219053B20(v2 + 144);
}

uint64_t sub_219057A60(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_219057B68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_219BF7AA4();

      sub_219BF5524();
      v15 = sub_219BF7AE4();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_219057D44(uint64_t a1, uint64_t a2)
{
  sub_219058560(0, &unk_280E8FE30, MEMORY[0x277D34410]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219057DC4(uint64_t a1)
{
  sub_219058560(0, &unk_280E8FE30, MEMORY[0x277D34410]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219057E3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057140(a1);
}

uint64_t sub_219057ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057140(a1);
}

uint64_t sub_219057F74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_2190570A0(a1);
}

uint64_t sub_219058010(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_2190570A0(a1);
}

uint64_t sub_2190580AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057000(a1);
}

uint64_t sub_219058148(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057000(a1);
}

uint64_t sub_2190581E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219056EC0(a1);
}

uint64_t sub_219058280(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_219056F60(a1);
}

uint64_t sub_21905831C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219058384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219058404()
{
  if (!qword_27CC15600)
  {
    sub_219BEFC44();
    sub_218A450F0();
    v0 = sub_219BF5C24();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15600);
    }
  }
}

uint64_t sub_219058474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2190584DC()
{
  result = qword_27CC15608;
  if (!qword_27CC15608)
  {
    sub_218799690(255, &qword_280E8ECA0, &qword_280E8E430, &protocolRef_FCPuzzleProviding, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15608);
  }

  return result;
}

void sub_219058560(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_219058608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_219057284(a1, v4, v5, (v1 + 4), v6);
}