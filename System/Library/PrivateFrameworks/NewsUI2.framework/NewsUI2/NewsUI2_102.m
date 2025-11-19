uint64_t sub_2192265C0(uint64_t a1)
{
  v2 = v1;
  v146 = a1;
  v143 = type metadata accessor for EngagementUpsellTriggerState(0);
  v3 = *(v143 - 8);
  v4 = MEMORY[0x28223BE20](v143);
  v129 = &v112[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v138 = &v112[-v6];
  sub_2186DCF58();
  MEMORY[0x28223BE20](v7 - 8);
  v133 = &v112[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_219BDBD34();
  v9 = *(v137 - 8);
  v10 = MEMORY[0x28223BE20](v137);
  v140 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v141 = &v112[-v12];
  sub_2187A3D34(0);
  v128 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v132 = &v112[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v112[-v17];
  MEMORY[0x28223BE20](v16);
  v139 = &v112[-v18];
  v130 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  MEMORY[0x28223BE20](v130);
  v142 = &v112[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187A3C38(0);
  MEMORY[0x28223BE20](v20 - 8);
  v145 = &v112[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_219BE3754();
  v151 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v23 = &v112[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21875A120(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v150 = &v112[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v112[-v27];
  v29 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = *(v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v31 = *(v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  v152 = (v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v30);
  (*(v31 + 8))(&v162, v30, v31);
  v32 = v162;
  if (v162)
  {
    v33 = v163;
  }

  else
  {
    v32 = sub_2194AF0A8(MEMORY[0x277D84F90]);
    sub_219BE1AD4();
    sub_219BE1B04();
    swift_allocObject();
    v33 = sub_219BE1AF4();
  }

  v134 = v1;
  v35 = *(v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_featureSettings);
  v34 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_featureSettings + 8);
  ObjectType = swift_getObjectType();
  v149 = v35;
  v158 = ObjectType;
  v159 = v34;
  sub_219BE3934();
  v37 = sub_219BE3684();
  v38 = *(v37 - 8);
  v156 = *(v38 + 48);
  v157 = v38 + 48;
  if (v156(v28, 1, v37) == 1)
  {
    sub_2187A3C6C(v28, sub_21875A120);
LABEL_45:
    v109 = v152[3];
    v110 = v152[4];
    __swift_project_boxed_opaque_existential_1(v152, v109);
    v162 = v32;
    v163 = v33;
    v111 = *(v110 + 24);

    v111(&v162, v109, v110);
  }

  v135 = v33;
  v136 = v32;
  v39 = sub_219BE3674();
  v40 = *(v38 + 8);
  v153 = v37;
  v147 = v40;
  v148 = v38 + 8;
  v40(v28, v37);
  v41 = v39 + 64;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v39 + 64);
  v122 = OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_lock;
  v45 = (v42 + 63) >> 6;
  v127 = v151 + 16;
  v126 = v151 + 8;
  v118 = (v3 + 56);
  v121 = (v3 + 48);
  v123 = (v9 + 48);
  v117 = (v9 + 32);
  v124 = (v9 + 56);
  v125 = (v9 + 16);
  v120 = (v9 + 8);
  v155 = v39;

  v47 = 0;
  *&v48 = 136315138;
  v119 = v48;
LABEL_9:
  v49 = v47;
  v50 = v150;
  if (!v44)
  {
    goto LABEL_13;
  }

  do
  {
    while (1)
    {
      v47 = v49;
LABEL_16:
      v51 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v52 = (*(v155 + 48) + ((v47 << 10) | (16 * v51)));
      v53 = v52[1];
      v154 = *v52;

      sub_219BE3934();
      v54 = v153;
      if (v156(v50, 1, v153) != 1)
      {
        break;
      }

      result = sub_2187A3C6C(v50, sub_21875A120);
      v49 = v47;
      if (!v44)
      {
        goto LABEL_13;
      }
    }

    v55 = sub_219BE3674();
    v147(v50, v54);
    if (*(v55 + 16))
    {
      v56 = sub_21870F700(v154, v53);
      if (v57)
      {
        v58 = v23;
        v59 = v151;
        v60 = v144;
        (*(v151 + 16))(v58, *(v55 + 56) + *(v151 + 72) * v56, v144);

        v61 = v145;
        sub_219BE36E4();
        v62 = *(v59 + 8);
        v23 = v58;
        v62(v58, v60);
        v63 = sub_219BE3864();
        v64 = (*(*(v63 - 8) + 48))(v61, 1, v63);
        sub_2187A3C6C(v61, sub_2187A3C38);
        if (v64 == 1)
        {

          goto LABEL_9;
        }

        v65 = *(v130 + 20);
        v66 = sub_219BE3514();
        v67 = v142;
        (*(*(v66 - 8) + 16))(v142 + v65, v146, v66);
        *v67 = v154;
        v67[1] = v53;
        v68 = v152[3];
        v69 = v152[4];
        __swift_project_boxed_opaque_existential_1(v152, v68);
        v70 = (*(v69 + 8))(&v162, v68, v69);
        v71 = v162;
        if (v162)
        {
          v154 = v112;
          v72 = v163;
          v160 = v163;
          MEMORY[0x28223BE20](v70);
          *&v112[-32] = v71;
          *&v112[-24] = v72;
          *&v112[-16] = v73;
          v116 = sub_219BE1B04();

          v74 = v139;
          sub_219BE2D34();
          v75 = v74;
          sub_2187A9CC4(v71);

          v76 = v143;
        }

        else
        {
          v75 = v139;
          v76 = v143;
          (*v118)(v139, 1, 1, v143);
        }

        v77 = v121;
        v78 = v131;
        sub_2187A3CCC(v75, v131, sub_2187A3D34);
        v79 = *v77;
        v80 = (*v77)(v78, 1, v76);
        v81 = sub_2187A3D34;
        v82 = v140;
        if (v80 == 1)
        {
          v154 = 0;
        }

        else
        {
          v154 = *&v78[*(v76 + 32)];
          v81 = type metadata accessor for EngagementUpsellTriggerState;
        }

        sub_2187A3C6C(v78, v81);
        sub_219BDBD24();
        v83 = v132;
        sub_2187A3CCC(v139, v132, sub_2187A3D34);
        if (v79(v83, 1, v76) == 1)
        {
          sub_2187A3C6C(v83, sub_2187A3D34);
          v84 = v133;
          v85 = v137;
          (*v124)(v133, 1, 1, v137);
        }

        else
        {
          v84 = v133;
          sub_2187A3CCC(&v83[*(v76 + 20)], v133, sub_2186DCF58);
          sub_2187A3C6C(v83, type metadata accessor for EngagementUpsellTriggerState);
          v85 = v137;
          if ((*v123)(v84, 1, v137) != 1)
          {
            v86 = (*v117)(v82, v84, v85);
LABEL_35:
            v116 = v112;
            v160 = *(v134 + v122);
            MEMORY[0x28223BE20](v86);
            v87 = v142;
            *&v112[-16] = v88;
            *&v112[-8] = v87;
            v115 = sub_219BE1B04();
            sub_2186DEEA0(0, &qword_280E8E900);

            sub_219BE2D34();

            v114 = v162;
            v113 = v163;
            v89 = *(v143 + 20);
            v116 = *v125;
            v90 = v138;
            (v116)(v138 + v89, v140, v85);
            v115 = *v124;
            v115(v90 + v89, 0, 1, v85);
            v91 = *(v143 + 24);
            (v116)(v90 + v91, v141, v85);
            v92 = v90 + v91;
            v93 = v143;
            v94 = v115;
            v115(v92, 0, 1, v85);
            result = v94(v90 + *(v93 + 28), 1, 1, v85);
            v95 = v154 + 1;
            if (__OFADD__(v154, 1))
            {
              goto LABEL_47;
            }

            v96 = v114;
            if (v113)
            {
              v96 = 0;
            }

            *v90 = v96;
            *(v90 + *(v93 + 32)) = v95;
            v97 = v129;
            if (qword_280EE60A0 != -1)
            {
              swift_once();
            }

            v98 = sub_219BE5434();
            __swift_project_value_buffer(v98, qword_280F627F0);
            sub_2187A3CCC(v90, v97, type metadata accessor for EngagementUpsellTriggerState);
            v99 = sub_219BE5414();
            v100 = sub_219BF6214();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v162 = v154;
              *v101 = v119;
              v116 = sub_2192435EC();
              v103 = v102;
              sub_2187A3C6C(v97, type metadata accessor for EngagementUpsellTriggerState);
              v104 = sub_2186D1058(v116, v103, &v162);

              *(v101 + 4) = v104;
              _os_log_impl(&dword_2186C1000, v99, v100, "EngagementUpsellTriggerStateManager: recording display event: %s", v101, 0xCu);
              v105 = v154;
              __swift_destroy_boxed_opaque_existential_1(v154);
              MEMORY[0x21CECF960](v105, -1, -1);
              MEMORY[0x21CECF960](v101, -1, -1);
            }

            else
            {

              sub_2187A3C6C(v97, type metadata accessor for EngagementUpsellTriggerState);
            }

            v160 = v136;
            v161 = v135;

            v106 = v138;
            sub_21924261C(v142, v138, 1, &v162);

            sub_2187A3C6C(v106, type metadata accessor for EngagementUpsellTriggerState);
            v107 = *v120;
            v108 = v137;
            (*v120)(v140, v137);
            v107(v141, v108);
            sub_2187A3C6C(v139, sub_2187A3D34);

            result = sub_2187A3C6C(v142, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
            v136 = v162;
            v135 = v163;
            goto LABEL_9;
          }
        }

        (*v125)(v82, v141, v85);
        v86 = (*v123)(v84, 1, v85);
        if (v86 != 1)
        {
          v86 = sub_2187A3C6C(v84, sub_2186DCF58);
        }

        goto LABEL_35;
      }
    }

    v49 = v47;
  }

  while (v44);
LABEL_13:
  while (1)
  {
    v47 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      v32 = v136;
      v33 = v135;
      goto LABEL_45;
    }

    v44 = *(v41 + 8 * v47);
    ++v49;
    if (v44)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_219227798(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EngagementUpsellTriggerState(0);
  v5 = MEMORY[0x28223BE20](v4);
  v93 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = (&v81 - v7);
  v96 = sub_219BDBD34();
  v8 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v98 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  MEMORY[0x28223BE20](v92);
  v95 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187A3C38(0);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE3754();
  v106 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875A120(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v105 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v81 - v17;
  v19 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = *(v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v21 = *(v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  v107 = (v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v20);
  (*(v21 + 8))(&v117, v20, v21);
  v22 = v117;
  if (v117)
  {
    v23 = v118;
  }

  else
  {
    v22 = sub_2194AF0A8(MEMORY[0x277D84F90]);
    sub_219BE1AD4();
    sub_219BE1B04();
    swift_allocObject();
    v23 = sub_219BE1AF4();
  }

  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_featureSettings);
  v25 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_featureSettings + 8);
  ObjectType = swift_getObjectType();
  v104 = v24;
  v113 = ObjectType;
  v114 = v25;
  sub_219BE3934();
  v27 = sub_219BE3684();
  v28 = *(v27 - 8);
  v111 = *(v28 + 48);
  v112 = v28 + 48;
  if (v111(v18, 1, v27) == 1)
  {
    sub_2187A3C6C(v18, sub_21875A120);
    v29 = v107;
LABEL_33:
    v78 = v29[3];
    v79 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v78);
    v117 = v22;
    v118 = v23;
    v80 = *(v79 + 24);

    v80(&v117, v78, v79);
  }

  else
  {
    v94 = v23;
    v86 = v4;
    v91 = a1;
    v87 = v2;
    v30 = sub_219BE3674();
    v102 = *(v28 + 8);
    v103 = v28 + 8;
    v108 = v27;
    v102(v18, v27);
    v31 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v30 + 64);
    v85 = OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_lock;
    v35 = (v32 + 63) >> 6;
    v90 = v106 + 16;
    v89 = v106 + 8;
    v84 = (v8 + 56);
    v83 = (v8 + 16);
    v82 = (v8 + 8);
    v110 = v30;

    v37 = 0;
    *&v38 = 136315138;
    v81 = v38;
LABEL_9:
    v39 = v37;
    v40 = v105;
LABEL_10:
    if (!v34)
    {
      goto LABEL_14;
    }

    do
    {
      while (1)
      {
        v37 = v39;
LABEL_17:
        v41 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v42 = (*(v110 + 48) + ((v37 << 10) | (16 * v41)));
        v43 = v42[1];
        v109 = *v42;

        sub_219BE3934();
        v44 = v108;
        if (v111(v40, 1, v108) != 1)
        {
          break;
        }

        result = sub_2187A3C6C(v40, sub_21875A120);
        v39 = v37;
        if (!v34)
        {
          goto LABEL_14;
        }
      }

      v45 = sub_219BE3674();
      v102(v40, v44);
      if (*(v45 + 16))
      {
        v46 = sub_21870F700(v109, v43);
        if (v47)
        {
          v88 = v22;
          v49 = v99;
          v48 = v100;
          v50 = v106;
          (*(v106 + 16))(v99, *(v45 + 56) + *(v106 + 72) * v46, v100);

          v51 = v101;
          sub_219BE36E4();
          (*(v50 + 8))(v49, v48);
          v52 = sub_219BE3864();
          v53 = (*(*(v52 - 8) + 48))(v51, 1, v52);
          sub_2187A3C6C(v51, sub_2187A3C38);
          if (v53 == 1)
          {

            v39 = v37;
            v40 = v105;
            v22 = v88;
            goto LABEL_10;
          }

          v54 = *(v92 + 20);
          v55 = sub_219BE3514();
          v56 = v95;
          (*(*(v55 - 8) + 16))(v95 + v54, v91, v55);
          *v56 = v109;
          v56[1] = v43;
          v57 = sub_219BDBD24();
          v115 = *(v87 + v85);
          MEMORY[0x28223BE20](v57);
          *(&v81 - 2) = v58;
          *(&v81 - 1) = v56;
          sub_219BE1B04();
          sub_2186DEEA0(0, &qword_280E8E900);

          sub_219BE2D34();

          v59 = v117;
          if (v118)
          {
            v59 = 0;
          }

          v109 = v59;
          v60 = v86;
          v61 = *v84;
          v62 = v97;
          v63 = v96;
          (*v84)(v97 + v86[5], 1, 1, v96);
          v61(v62 + v60[6], 1, 1, v63);
          v64 = v60[7];
          (*v83)(v62 + v64, v98, v63);
          v61(v62 + v64, 0, 1, v63);
          *v62 = v109;
          *(v62 + v60[8]) = 0;
          v65 = v88;
          if (qword_280EE60A0 != -1)
          {
            swift_once();
          }

          v66 = sub_219BE5434();
          __swift_project_value_buffer(v66, qword_280F627F0);
          v67 = v93;
          sub_2187A3CCC(v62, v93, type metadata accessor for EngagementUpsellTriggerState);
          v68 = sub_219BE5414();
          v69 = sub_219BF6214();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v71 = v117;
            *v70 = v81;
            v109 = sub_2192435EC();
            v73 = v72;
            sub_2187A3C6C(v67, type metadata accessor for EngagementUpsellTriggerState);
            v74 = sub_2186D1058(v109, v73, &v117);

            *(v70 + 4) = v74;
            _os_log_impl(&dword_2186C1000, v68, v69, "EngagementUpsellTriggerStateManager: recording user interaction: %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v71);
            v75 = v71;
            v65 = v88;
            MEMORY[0x21CECF960](v75, -1, -1);
            MEMORY[0x21CECF960](v70, -1, -1);
          }

          else
          {

            sub_2187A3C6C(v67, type metadata accessor for EngagementUpsellTriggerState);
          }

          v115 = v65;
          v116 = v94;

          v76 = v95;
          v77 = v97;
          sub_21924261C(v95, v97, 1, &v117);

          sub_2187A3C6C(v77, type metadata accessor for EngagementUpsellTriggerState);
          (*v82)(v98, v96);

          result = sub_2187A3C6C(v76, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
          v22 = v117;
          v94 = v118;
          goto LABEL_9;
        }
      }

      v39 = v37;
    }

    while (v34);
LABEL_14:
    while (1)
    {
      v37 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        v29 = v107;
        v23 = v94;
        goto LABEL_33;
      }

      v34 = *(v31 + 8 * v37);
      ++v39;
      if (v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2192283C8()
{
  sub_2187A3C6C(v0 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_appVersion, sub_2187089D4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_dateProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_conditionEvaluator);

  return swift_deallocClassInstance();
}

uint64_t sub_219228548()
{
  v1 = OBJC_IVAR____TtC7NewsUI246ArticleListSharedWithYouFeedGroupEmitterCursor_formatGroup;
  v2 = sub_219BED8D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21922860C()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21922869C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticleListSharedWithYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAADC();
  sub_219BEDD14();
  v6 = sub_21922878C(a2, v5);
  v7 = sub_219BF1934();
  (*(*(v7 - 8) + 8))(v5, v7);
  return v6;
}

uint64_t sub_21922878C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  sub_21922A844(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_219BF2034();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84560];
  sub_21922A844(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  sub_219BF3E84();
  v9 = swift_allocObject();
  v19 = xmmword_219C09BA0;
  *(v9 + 16) = xmmword_219C09BA0;
  sub_21922A844(0, &unk_280E8B7A0, MEMORY[0x277D34138], v8);
  v10 = sub_219BF3C84();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v19;
  sub_219BF2144();
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277D340F0], v10);
  v14 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  v15 = sub_219BEC004();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_219A95188(v14);
  sub_219A95188(v14);
  sub_219A951A0(v14);
  sub_219A951B8(v14);
  sub_219A952CC(v14);
  sub_219A952E4(v14);
  sub_219A953F8(v14);
  sub_219BF2024();
  v25 = v20;
  v26 = v21;
  v27 = v7;
  v28 = v22;
  sub_219BF1904();
  sub_219BE3204();

  v16 = sub_219BE2E54();
  sub_219BED8D4();
  v17 = sub_219BE2F74();

  (*(v23 + 8))(v7, v24);
  return v17;
}

uint64_t sub_219228C34(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor(0);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7NewsUI246ArticleListSharedWithYouFeedGroupEmitterCursor_formatGroup, v5, v2);
  v9[3] = v6;
  v9[0] = v7;
  sub_21922A844(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219228DA4()
{
  type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor(0);
  sub_219BE3204();

  v1 = sub_219BE2E54();
  sub_21922A5B0();
  sub_219BE2F64();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_21922A618;
  *(v2 + 24) = v0;

  v3 = sub_219BE2E54();
  sub_21922A6D8(0, &qword_27CC17C40, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor);
  sub_219BE2F64();

  v4 = sub_219BE2E54();
  sub_21922A65C(0);
  sub_219BE2F64();

  v5 = sub_219BE2E54();
  v6 = sub_219BE3054();

  return v6;
}

uint64_t sub_219228F78()
{
  sub_219BEF0C4();

  v0 = sub_219BE2E54();
  sub_21922A5B0();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_219229014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a1;

  v7 = sub_219BE2E54();
  sub_21922A6D8(0, &qword_27CC17C40, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor);
  v8 = sub_219BE2F74();

  return v8;
}

uint64_t sub_2192290D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_219BDBD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_21922A6D8(0, &qword_27CC17C40, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor);
    v24[1] = v3;
    v13 = *(v12 + 48);
    sub_219BDBD54();
    v14 = sub_219BDBD44();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    v17 = OBJC_IVAR____TtC7NewsUI246ArticleListSharedWithYouFeedGroupEmitterCursor_formatGroup;
    v18 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
    v19 = *(v18 + 20);
    v20 = sub_219BED8D4();
    (*(*(v20 - 8) + 16))(a3 + v19, a2 + v17, v20);
    *a3 = v14;
    a3[1] = v16;
    *(a3 + *(v18 + 24)) = v11;
    *(a3 + v13) = a2;
  }

  v22 = sub_219BEEDD4();
  sub_2186EA358(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D323A8], v22);
  return swift_willThrow();
}

uint64_t sub_21922933C(uint64_t a1)
{
  sub_21922A65C(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922A6D8(0, &qword_27CC17C40, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor);
  v6 = *(a1 + *(v5 + 48));
  sub_21922A6D8(0, &qword_27CC17C58, sub_21880702C);
  v8 = &v4[*(v7 + 48)];
  sub_218C60F58(a1, v4);
  *(v8 + 3) = type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor(0);
  *v8 = v6;
  swift_storeEnumTagMultiPayload();
  sub_21922A844(0, &qword_27CC17C50, sub_21922A65C, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2192294A4(uint64_t a1)
{
  sub_21922A65C(0);
  v10 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v13 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v7 = v11;
  v6 = v12;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  sub_219BE5314();

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219D12130);
  v13 = a1;
  sub_219BF7484();
  v8 = v12;
  *v4 = v11;
  v4[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_21922A844(0, &qword_27CC17C50, sub_21922A65C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2192296F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v42 = a2;
  v43 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_21922A844(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v34 - v7;
  sub_21922A844(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  sub_21922A844(0, &qword_27CC0FE98, sub_2186EF13C, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v34 = type metadata accessor for SharedWithYouFeedServiceConfig;
  sub_21922A7C4(0, &qword_27CC17C60, type metadata accessor for SharedWithYouFeedServiceConfig, sub_21922A4E4, MEMORY[0x277D31C68]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = sub_219BF2AB4();
  v40 = *(v19 - 8);
  v41 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = *(a1 + OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_formatService + 24);
  v37 = *(a1 + OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_formatService + 32);
  v38 = v23;
  v36 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_formatService), v23);
  (*(v16 + 16))(v18, v35, v15);
  v24 = OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_knobs;
  sub_2186EF13C();
  v26 = v25;
  v27 = *(v25 - 8);
  (*(v27 + 16))(v13, v22 + v24, v25);
  (*(v27 + 56))(v13, 0, 1, v26);
  v28 = sub_219BF35D4();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  sub_21922A7C4(0, &qword_27CC17C68, v34, sub_21922A4E4, MEMORY[0x277D33F88]);
  swift_allocObject();
  v29 = v39;
  sub_219BF38E4();
  v30 = sub_219BF2774();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v31 = qword_280E8D890;
  *MEMORY[0x277D30BA0];
  if (v31 != -1)
  {
    swift_once();
  }

  qword_280F61760;
  sub_219BF2A84();
  v32 = sub_219BF2194();
  (*(v40 + 8))(v21, v41);
  return v32;
}

uint64_t sub_219229C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  sub_21922A844(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = sub_219BEF554();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = sub_219BF1904();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2186FAADC();
  sub_219BEDCB4();
  v14[0] = v11;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v12 = sub_219BEE5D4();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  return sub_219BED854();
}

uint64_t sub_219229EC4()
{
  v1 = OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_config;
  sub_2186FAADC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21922A930(v0 + OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_knobs, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

void sub_219229FBC()
{
  sub_2186FAADC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21922A090()
{
  sub_219BED8D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21880702C();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_21922A15C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI240ArticleListSharedWithYouFeedGroupEmitter_config;
  sub_2186FAADC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21922A214@<X0>(uint64_t *a1@<X8>)
{
  sub_21922A844(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FAADC();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21922A930(inited + 32, sub_2188317B0);
  sub_21922A844(0, &qword_27CC17C70, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21922A8A8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21922A39C()
{
  sub_2186EA358(&qword_27CC17C28, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_21922A5B0()
{
  if (!qword_27CC17C38)
  {
    type metadata accessor for ArticleListSharedWithYouFeedGroupEmitterCursor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC17C38);
    }
  }
}

void sub_21922A6D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for SharedWithYouFeedGroup();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_21922A7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21922A844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21922A8A8()
{
  result = qword_27CC17C78;
  if (!qword_27CC17C78)
  {
    sub_21922A844(255, &qword_27CC17C70, type metadata accessor for ArticleListSharedWithYouFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17C78);
  }

  return result;
}

uint64_t sub_21922A930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SportsSyncFavoritesFetchResult()
{
  result = qword_280EAAF20;
  if (!qword_280EAAF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21922AA04()
{
  sub_2186D0BA8();
  if (v0 <= 0x3F)
  {
    sub_2186DCF58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21922AA98(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v33 = sub_219BE6DF4();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21922B7AC(0, &unk_280EE4AF8, MEMORY[0x277D6DF88]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_218DC260C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_21922B7AC(0, &qword_280EE3638, MEMORY[0x277D6EC60]);
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v37 = v4;
  v32 = a1;
  v14 = sub_218F8FEF8(sub_21922B8A0, v36);
  sub_218954178();
  v16 = v15;
  v17 = sub_2186FF8C4(&qword_280EE5978, sub_218954178);
  v18 = sub_2186FF8C4(&qword_280EE5988, sub_218954178);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for HistoryFeedSectionDescriptor();
  type metadata accessor for HistoryFeedModel(0);
  sub_2186FF8C4(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
  sub_2186FF8C4(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
  sub_219BEB2D4();
  type metadata accessor for HistoryFeedServiceConfig();
  sub_2186FF8C4(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v19 = sub_219BEEFC4();

  v20 = 0;
  if (v19)
  {
    v20 = sub_219BEDC74();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38 = v19;
  v41 = v20;
  v21 = v27;
  sub_219BEB2C4();

  v23 = v30;
  v22 = v31;
  v24 = v33;
  (*(v31 + 104))(v30, *MEMORY[0x277D6D868], v33);
  sub_2186FF8C4(&qword_280EB41F8, type metadata accessor for HistoryFeedSectionDescriptor);
  sub_219BE85E4();
  (*(v22 + 8))(v23, v24);
  v35(v9);
  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v13, v21);
}

uint64_t sub_21922AFD0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for HistoryFeedGapLocation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BF0BD4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleListHistoryFeedGroup();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = type metadata accessor for HistoryFeedSectionDescriptor();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954178();
  v21 = v20;
  sub_219BE6934();
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    v22 = v47;
    type metadata accessor for HistoryFeedServiceConfig();
    sub_2186FF8C4(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
    sub_219BEF3D4();
    if (sub_219BEF394())
    {
      if ((sub_219BEE854() & 1) == 0)
      {
        (*(*(v21 - 8) + 56))(v22, 1, 1, v21);
      }

      v23 = swift_allocObject();
      sub_21922B8BC(0, &qword_280E91AD8, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v23 + 16) = sub_219BEE874();
      *v5 = v23;
      v24 = MEMORY[0x277D33068];
    }

    else
    {
      v35 = swift_allocObject();
      sub_21922B8BC(0, &qword_280E91AD8, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v35 + 16) = sub_219BEE874();
      *v5 = v35;
      v24 = MEMORY[0x277D33090];
    }

    v36 = *v24;
    sub_21922B8BC(0, &qword_280E909F0, MEMORY[0x277D33098]);
    v38 = v37;
    v39 = *(v37 - 8);
    (*(v39 + 104))(v5, v36, v37);
    (*(v39 + 56))(v5, 0, 1, v38);
    sub_219B7B44C(v5, v22);

    v34 = type metadata accessor for HistoryFeedGapLocation;
    v33 = v5;
  }

  else
  {
    sub_218B73F4C(v19, v16);
    v42 = a1[2];
    v25 = sub_2198D55E8(v42);
    v26 = *v16;
    v27 = *(v16 + 1);
    v28 = *(v10 + 20);
    v29 = sub_219BED8D4();
    (*(*(v29 - 8) + 16))(&v14[v28], &v16[v28], v29);
    v48 = *&v16[*(v10 + 24)];

    sub_2191ED6C8(v25);
    v30 = v48;
    *v14 = v26;
    *(v14 + 1) = v27;
    *&v14[*(v10 + 24)] = v30;
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    v31 = v43;
    sub_218CFCC10(v14, v43);
    type metadata accessor for HistoryFeedServiceConfig();
    sub_2186FF8C4(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
    sub_219BEF3D4();
    v32 = v44;
    sub_219BEE7A4();

    v22 = v47;
    sub_2195D2344(v31, v32, v47);
    (*(v45 + 8))(v32, v46);
    sub_21922B958(v31, type metadata accessor for HistoryFeedGroup);
    sub_21922B958(v14, type metadata accessor for ArticleListHistoryFeedGroup);
    v33 = v16;
    v34 = type metadata accessor for ArticleListHistoryFeedGroup;
  }

  sub_21922B958(v33, v34);
  return (*(*(v21 - 8) + 56))(v22, 0, 1, v21);
}

uint64_t sub_21922B688(uint64_t a1)
{
  v2 = sub_21922B9B8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21922B6C8()
{
  result = qword_280EA05F8;
  if (!qword_280EA05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA05F8);
  }

  return result;
}

void sub_21922B7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2186FF8C4(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    v8[3] = sub_2186FF8C4(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21922B8BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HistoryFeedServiceConfig();
    v7 = sub_2186FF8C4(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21922B958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21922B9B8()
{
  result = qword_280EA0600[0];
  if (!qword_280EA0600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA0600);
  }

  return result;
}

double sub_21922BA0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21922C6A0();
  v104 = sub_21922C4D8();
  v85 = v7;
  v9 = v8;
  v10 = *(a1 + 64);
  v102 = *(v2 + 240);
  v103 = v11;
  v83 = *(v2 + 248);
  v12 = *(v2 + 224);
  v101 = *(v2 + 232);
  __swift_project_boxed_opaque_existential_1((v2 + 184), *(v2 + 208));
  v13 = sub_21900EE8C();
  sub_2190101D0(v13);
  v79 = v14;
  [v13 boundingRectWithSize:1 options:0 context:{v12, 1.79769313e308}];
  Height = CGRectGetHeight(v105);

  v92 = sub_21922C3B8();
  v99 = v17;
  v100 = v16;
  v98 = v18;
  v19 = *(v3 + 144);
  v81 = sub_21922BF6C();
  v20 = *(v3 + 136);
  v106.origin.x = 0.0;
  v106.origin.y = 0.0;
  v106.size.width = v20;
  v94 = v19;
  v106.size.height = v19;
  Width = CGRectGetWidth(v106);
  v95 = sub_21922BF6C();
  v93 = *(v3 + 296);
  v96 = *(v3 + 320);
  v75 = sub_21922BF6C();
  v91 = *(v3 + 328);
  v77 = *(v3 + 168);
  sub_21922C1FC();
  v89 = v22;
  v90 = v21;
  v87 = v24;
  v88 = v23;
  __swift_project_boxed_opaque_existential_1((v3 + 184), *(v3 + 208));
  v25 = sub_21900F554(*(v3 + 64));
  sub_218A293AC();
  [objc_opt_self() systemFontSize];
  v26 = sub_219BF6BD4();
  [v26 pointSize];
  v28 = v27;

  v73 = v12;
  if ((sub_219BED0C4() & 1) != 0 || v28 >= 20.0)
  {
    [v25 boundingRectWithSize:3 options:0 context:{v12, 1.79769313e308}];
    v68 = v36;
    v70 = v35;
    rect = v37;
    v33 = v38;
    v34 = v12;
  }

  else
  {
    [v25 boundingRectWithSize:3 options:0 context:{*(v3 + 272), 1.79769313e308}];
    v68 = v30;
    v70 = v29;
    rect = v31;
    v33 = v32;
    v34 = *(v3 + 272);
  }

  v74 = v34;
  v39 = v9;
  v40 = v6 - v9 * 0.5;
  if ((v10 - 2) >= 3)
  {
    v40 = v85;
  }

  v72 = v40;
  v86 = (v20 - v34) * 0.5;
  v80 = v79 + Height;
  v84 = v102 + v83;
  sub_21922C1FC();
  MaxY = CGRectGetMaxY(v107);
  v42 = [objc_opt_self() defaultMetrics];
  v43 = *(v3 + 304);
  [v42 scaledValueForValue_];
  v65 = v6;
  v45 = v44;

  v46 = v43 * 1.3;
  if (v43 * 1.3 >= v45)
  {
    v46 = v45;
  }

  v64 = v94 - v81;
  v76 = v75 - v91 + -27.0 - v77;
  v82 = MaxY + v46;
  v108.origin.y = v68;
  v108.origin.x = v70;
  v108.size.width = rect;
  v108.size.height = v33;
  v78 = CGRectGetHeight(v108);

  v47 = sub_21922C2AC();
  v69 = v48;
  v71 = v47;
  recta = v49;
  v62 = *(v3 + 264);
  v63 = v50;
  v51 = sub_21922C88C();
  v60 = v52;
  v61 = v51;
  v59 = v53;
  v55 = v54;
  sub_21922BEC0();
  v57 = v56 + sub_21922BF6C();
  v109.origin.x = 0.0;
  v109.origin.y = 0.0;
  v109.size.width = v20;
  v109.size.height = v94;
  *(a2 + 64) = CGRectGetWidth(v109);
  *(a2 + 72) = v57;
  *(a2 + 80) = v104;
  *(a2 + 88) = v72;
  *(a2 + 96) = v103;
  *(a2 + 104) = v39;
  *(a2 + 128) = v101;
  *(a2 + 136) = v102;
  *(a2 + 152) = v84;
  *(a2 + 160) = v73;
  *(a2 + 168) = v80;
  *(a2 + 176) = v92;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v20;
  *(a2 + 24) = v94;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v20;
  *(a2 + 56) = v94;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 144) = 0;
  *(a2 + 184) = v100;
  *(a2 + 192) = v99;
  *(a2 + 200) = v98;
  *(a2 + 208) = v65;
  *(a2 + 216) = 0;
  *(a2 + 224) = v64;
  *(a2 + 232) = Width;
  *(a2 + 240) = v95;
  *(a2 + 248) = v93;
  *(a2 + 256) = v20 * 0.5 - v96 * 0.5;
  *(a2 + 264) = v76;
  *(a2 + 272) = v96;
  *(a2 + 280) = v91;
  *(a2 + 288) = v90;
  *(a2 + 296) = v89;
  *(a2 + 304) = v88;
  *(a2 + 312) = v87;
  *(a2 + 320) = v86;
  *(a2 + 328) = v82;
  *(a2 + 336) = v74;
  *(a2 + 344) = v78;
  *(a2 + 352) = v71;
  *(a2 + 360) = v69;
  *(a2 + 368) = recta;
  *(a2 + 376) = v63;
  *(a2 + 384) = v62;
  *(a2 + 392) = v61;
  result = v59;
  *(a2 + 400) = v60;
  *(a2 + 408) = v59;
  *(a2 + 416) = v55;
  return result;
}

void sub_21922BEC0()
{
  sub_21922BF6C();
  sub_21922C6A0();
  v1.origin.x = sub_21922C4D8();
  CGRectGetHeight(v1);
  v0 = [objc_opt_self() defaultMetrics];
  [v0 scaledValueForValue_];

  sub_21922BF6C();
}

double sub_21922BF6C()
{
  v1 = v0;
  v36 = *(v0 + 288);
  v2 = objc_opt_self();
  v3 = [v2 defaultMetrics];
  v4 = *(v1 + 280);
  [v3 scaledValueForValue_];
  v6 = v5;

  sub_21922C1FC();
  v8 = v7;
  __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
  v9 = sub_21900F554(*(v1 + 64));
  sub_218A293AC();
  [objc_opt_self() systemFontSize];
  v10 = sub_219BF6BD4();
  [v10 pointSize];
  v12 = v11;

  v13 = (sub_219BED0C4() & 1 | (v12 >= 20.0)) == 0;
  v14 = 272;
  if (!v13)
  {
    v14 = 224;
  }

  if (v4 * 1.3 >= v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = v4 * 1.3;
  }

  [v9 boundingRectWithSize:3 options:0 context:{*(v1 + v14), 1.79769313e308}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_21922C1FC();
  v24 = [v2 defaultMetrics];
  v25 = *(v1 + 304);
  [v24 scaledValueForValue_];

  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  Height = CGRectGetHeight(v38);

  v27 = [v2 defaultMetrics];
  v28 = *(v1 + 312);
  [v27 scaledValueForValue_];
  v30 = v29;

  if (v28 * 1.3 < v30)
  {
    v30 = v28 * 1.3;
  }

  v31 = [v2 defaultMetrics];
  [v31 scaledValueForValue_];
  v33 = v32;

  v34 = v25 * 1.3;
  if (v25 * 1.3 >= v33)
  {
    v34 = v33;
  }

  return *(v1 + 168) + *(v1 + 344) + v36 + v15 + v8 + Height + v30 + v34;
}

id sub_21922C1FC()
{
  v1 = *(v0 + 56);
  result = [v1 size];
  if (v3 > 0.0)
  {
    [v1 size];
    [v1 size];
    return sub_219BED0C4();
  }

  return result;
}

double sub_21922C2AC()
{
  v1 = v0[17];
  v2 = v0[34];
  sub_21922BF6C();
  v3 = objc_opt_self();
  v4 = [v3 defaultMetrics];
  v5 = v0[35];
  [v4 scaledValueForValue_];

  v6 = [v3 defaultMetrics];
  [v6 scaledValueForValue_];

  return (v1 - v2) * 0.5;
}

double sub_21922C3B8()
{
  v1 = v0;
  v2 = *(v0 + 240) + *(v0 + 248);
  v3 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
  v4 = sub_21900EE8C();
  sub_2190101D0(v4);
  v6 = v5;
  [v4 boundingRectWithSize:1 options:0 context:{v3, 1.79769313e308}];
  Height = CGRectGetHeight(v10);

  v11.size.height = v6 + Height;
  v11.origin.x = 0.0;
  v11.origin.y = v2;
  v11.size.width = v3;
  CGRectGetHeight(v11);
  __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
  v8 = sub_21900F270();
  [v8 boundingRectWithSize:1 options:0 context:{v3, 1.79769313e308}];
  CGRectGetHeight(v12);

  return 0.0;
}

double sub_21922C4D8()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
  v2 = sub_21900EE8C();
  sub_2190101D0(v2);
  v3 = *(v1 + 224);
  [v2 boundingRectWithSize:1 options:0 context:{v3, 1.79769313e308}];
  CGRectGetHeight(v12);

  v4 = (*(v1 + 136) - v3) * 0.5;
  v5 = *(v1 + 248) + *(v1 + 240);
  __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
  v6 = sub_21900EE8C();
  sub_2190101D0(v6);
  v8 = v7;
  [v6 boundingRectWithSize:1 options:0 context:{v3, 1.79769313e308}];
  Height = CGRectGetHeight(v13);

  v14.size.height = v8 + Height;
  v14.origin.x = 0.0;
  v14.origin.y = v5;
  v14.size.width = v3;
  CGRectGetHeight(v14);
  __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
  v10 = sub_21900F270();
  [v10 boundingRectWithSize:1 options:0 context:{v3, 1.79769313e308}];
  CGRectGetHeight(v15);

  return v4;
}

double sub_21922C6A0()
{
  v1 = v0;
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = (v2 + v3 - sub_21922BF6C()) * 0.5;
  v23.origin.x = sub_21922C4D8();
  MinY = CGRectGetMinY(v23);
  v6 = *(v0 + 240) + *(v0 + 248);
  v7 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
  v8 = sub_21900EE8C();
  sub_2190101D0(v8);
  v10 = v9;
  [v8 boundingRectWithSize:1 options:0 context:{v7, 1.79769313e308}];
  Height = CGRectGetHeight(v24);

  v25.size.height = v10 + Height;
  v25.origin.x = 0.0;
  v25.origin.y = v6;
  v25.size.width = v7;
  v12 = MinY + CGRectGetMinY(v25);
  __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
  v13 = sub_21900EE8C();
  sub_2190101D0(v13);
  v15 = v14;
  [v13 boundingRectWithSize:1 options:0 context:{v7, 1.79769313e308}];
  v16 = CGRectGetHeight(v26);

  v27.size.height = v15 + v16;
  v27.origin.x = 0.0;
  v27.origin.y = v6;
  v27.size.width = v7;
  v17 = v12 + CGRectGetHeight(v27) * 0.5;
  v28.origin.x = sub_21922C4D8();
  v18 = v17 - CGRectGetMinY(v28);
  v29.origin.x = sub_21922C4D8();
  v19 = CGRectGetHeight(v29) * 0.5 + 40.0;
  if (v4 - v18 >= 40.0)
  {
    v30.origin.x = sub_21922C4D8();
    v20 = v18 + CGRectGetHeight(v30) * -0.5;
    if (v20 > 0.0)
    {
      v20 = -v20;
    }

    v21 = v4 + v20;
    if (v19 <= v21)
    {
      return v21;
    }
  }

  return v19;
}

double sub_21922C88C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
  v1 = sub_21900FC90();
  v2 = *(v0 + 136);
  v3 = [objc_opt_self() defaultMetrics];
  v16.origin.x = sub_21922C2AC();
  [v3 scaledValueForValue_];
  v5 = v4;

  v17.origin.x = sub_21922C2AC();
  v6 = CGRectGetWidth(v17) * 1.5;
  if (v6 >= v5)
  {
    v6 = v5;
  }

  if (v6 >= v2 + -40.0)
  {
    v7 = v2 + -40.0;
  }

  else
  {
    v7 = v6;
  }

  [v1 boundingRectWithSize:1 options:0 context:{v7, 1.79769313e308}];
  Height = CGRectGetHeight(v18);
  v9 = v2 * 0.5;
  v10 = *(v0 + 320);
  v11 = sub_21922BF6C();
  v12 = *(v0 + 328);
  v13 = *(v0 + 168);
  v19.origin.y = v11 - v12 + -27.0 - v13;
  v19.origin.x = v9 - v10 * 0.5;
  v19.size.width = v10;
  v19.size.height = v12;
  v14 = Height + CGRectGetMinY(v19);
  if (sub_21922BF6C() >= v14)
  {
    v20.origin.y = sub_21922BF6C() - v12 + -27.0 - v13;
    v20.origin.x = v9 - v10 * 0.5;
    v20.size.width = v10;
    v20.size.height = v12;
    CGRectGetMinY(v20);
  }

  return v9 + v7 * -0.5;
}

uint64_t sub_21922CA3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_21922CA84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21922CB44()
{
  if (!qword_280EE6510)
  {
    sub_219BE3C04();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6510);
    }
  }
}

uint64_t type metadata accessor for EngagementDismissal()
{
  result = qword_280ED16A0;
  if (!qword_280ED16A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21922CBFC()
{
  sub_219BE3514();
  if (v0 <= 0x3F)
  {
    sub_219BE3794();
    if (v1 <= 0x3F)
    {
      sub_2186E3374();
      if (v2 <= 0x3F)
      {
        sub_21922CB44();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21922CCB8(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v48 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v65 = type metadata accessor for MagazineCategoryConfig(0);
  v13 = *(v65 - 1);
  MEMORY[0x28223BE20](v65);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v46 = v8;
    v66 = MEMORY[0x277D84F90];
    sub_218C35080(0, v16, 0);
    result = v66;
    v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v44 = *(v13 + 72);
    v19 = (v3 + 48);
    v49 = (v3 + 8);
    v50 = (v3 + 32);
    v47 = v2;
    v45 = v12;
    v51 = (v3 + 48);
    do
    {
      v63 = result;
      sub_21922D2AC(v18, v15, type metadata accessor for MagazineCategoryConfig);
      v20 = v15[3];
      v62 = v15[2];
      v21 = v15[1];
      v60 = *v15;
      sub_21922D2AC(v15 + v65[6], v12, sub_21873F65C);
      v22 = *v19;
      v23 = (*v19)(v12, 1, v2);
      v64 = v21;
      v61 = v20;
      if (v23 == 1)
      {

        v58 = 0;
        v59 = 0;
        v57 = 0;
      }

      else
      {
        v24 = v52;
        (*v50)(v52, v12, v2);
        __swift_project_boxed_opaque_existential_1((v53 + 16), *(v53 + 40));

        v25 = sub_219BF2FB4();
        v19 = v51;
        v59 = v25;
        v58 = sub_21897A4D4();
        v57 = sub_2189EB528();
        (*v49)(v24, v2);
      }

      v26 = v48;
      sub_21922D2AC(v15 + v65[7], v48, sub_21873F65C);
      if (v22(v26, 1, v2) == 1)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
      }

      else
      {
        v27 = v52;
        (*v50)(v52, v26, v2);
        __swift_project_boxed_opaque_existential_1((v53 + 16), *(v53 + 40));
        v28 = sub_219BF2FB4();
        v19 = v51;
        v56 = v28;
        v55 = sub_21897A4D4();
        v54 = sub_2189EB528();
        (*v49)(v27, v2);
      }

      v29 = v46;
      sub_21922D2AC(v15 + v65[8], v46, sub_21873F65C);
      if (v22(v29, 1, v2) == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v33 = v52;
        (*v50)(v52, v29, v2);
        __swift_project_boxed_opaque_existential_1((v53 + 16), *(v53 + 40));
        v34 = sub_219BF2FB4();
        v19 = v51;
        v32 = v34;
        v31 = sub_21897A4D4();
        v30 = sub_2189EB528();
        (*v49)(v33, v2);
      }

      v35 = v61;

      sub_21922D314(v15);
      result = v63;
      v66 = v63;
      v37 = *(v63 + 16);
      v36 = *(v63 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_218C35080((v36 > 1), v37 + 1, 1);
        v19 = v51;
        result = v66;
      }

      *(result + 16) = v37 + 1;
      v38 = result + 176 * v37;
      v39 = v62;
      *(v38 + 32) = v62;
      *(v38 + 40) = v35;
      v40 = v64;
      *(v38 + 48) = v60;
      *(v38 + 56) = v40;
      v41 = v58;
      *(v38 + 64) = v59;
      *(v38 + 72) = 0;
      *(v38 + 80) = 0;
      *(v38 + 88) = v41;
      v42 = v56;
      *(v38 + 96) = v57;
      *(v38 + 104) = v42;
      *(v38 + 112) = 0;
      *(v38 + 120) = 0;
      v43 = v54;
      *(v38 + 128) = v55;
      *(v38 + 136) = v43;
      *(v38 + 144) = v32;
      *(v38 + 152) = 0;
      *(v38 + 160) = 0;
      *(v38 + 168) = v31;
      *(v38 + 176) = v30;
      *(v38 + 184) = v39;
      *(v38 + 192) = v35;
      v18 += v44;
      *(v38 + 200) = 0;
      --v16;
      v2 = v47;
      v12 = v45;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_21922D2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21922D314(uint64_t a1)
{
  v2 = type metadata accessor for MagazineCategoryConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21922D3B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsManagementDetailModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SportsManagementDetailModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21922D468()
{
  type metadata accessor for SportsManagementDetailViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_27CC17C80);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17C88);
  sub_219BE2914();
  type metadata accessor for SportsManagementDetailRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC17C90);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17C98);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17CA0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17CA8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17CB0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC17CB8);
  sub_219BE2914();

  sub_218987558();
  sub_219BE2904();

  type metadata accessor for SportsManagementDetailBlueprintModifierFactory();
  sub_219BE2904();

  sub_219231A68();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219232230();
  sub_219BE2904();

  sub_219231B54();
  sub_219BE2904();

  sub_219231F98();
  sub_219BE2904();

  type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_21923231C();
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E828);
  sub_219BE2904();

  sub_219231C90();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();

  sub_219231E0C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219232084();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219232210(0);
  sub_219BE2904();

  type metadata accessor for SportsManagementDetailBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsManagementDetailBlueprintViewHeaderProvider();
  sub_219BE2904();

  sub_219232544(0, &qword_27CC17D58, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219232458();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_21922DD38(void *a1)
{
  sub_2192325E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17C80);
  result = sub_219BE1E34();
  if (!v63)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17C90);
  result = sub_219BE1E34();
  v6 = v60;
  if (!v60)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v61;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21923231C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for SportsDetailModel();
  sub_219BE1E34();
  result = (*(*(v9 - 8) + 48))(v4, 1, v9);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v7;
  v47 = v8;
  v48 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17CB0);
  result = sub_219BE1E34();
  if (v59)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v45 = &v42;
    MEMORY[0x28223BE20](v10);
    v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v44 = &v42;
    MEMORY[0x28223BE20](v14);
    v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v12;
    v19 = *v16;
    v20 = type metadata accessor for SportsManagementDetailStyler();
    v56 = v20;
    v57 = &off_282A36230;
    v55[0] = v18;
    v21 = type metadata accessor for SportsManagementTitleViewRenderer();
    v53 = v21;
    v54 = &off_282A3B968;
    v52[0] = v19;
    v22 = type metadata accessor for SportsManagementDetailViewController();
    v23 = objc_allocWithZone(v22);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v43 = &v42;
    MEMORY[0x28223BE20](v24);
    v26 = (&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v42 = &v42;
    MEMORY[0x28223BE20](v28);
    v30 = (&v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v26;
    v33 = *v30;
    v51[3] = v20;
    v51[4] = &off_282A36230;
    v50[4] = &off_282A3B968;
    v51[0] = v32;
    v50[3] = v21;
    v50[0] = v33;
    *&v23[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_selectionProvider + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_218718690(v51, &v23[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_styler]);
    v34 = &v23[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler];
    v35 = v47;
    v36 = v46;
    *v34 = v48;
    *(v34 + 1) = v36;
    *&v23[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_blueprintViewController] = v35;
    sub_218A3A494(v4, &v23[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_model]);
    sub_218718690(v50, &v23[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_titleViewRenderer]);
    v49.receiver = v23;
    v49.super_class = v22;
    swift_unknownObjectRetain();
    v37 = v35;
    v38 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0, v42, v43, v44, v45);
    *(*&v38[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_eventHandler] + 24) = &off_282A629B0;
    swift_unknownObjectWeakAssign();
    v39 = *&v38[OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_blueprintViewController];
    v40 = v38;
    v41 = v39;
    sub_219BE8744();
    swift_unknownObjectRelease();

    sub_2191BBAA0(v4);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return v40;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21922E3CC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219232458();
  result = sub_219BE1E24();
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI236SportsManagementDetailViewController_selectionProvider + 8) = sub_219231A20(&qword_27CC17D98, sub_219232458);
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21922E494@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_219231A20(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SportsManagementDetailStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A36230;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21922E6F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsManagementDetailRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A7DD78;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21922E7B0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementDetailViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21922E830@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17C98);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17C88);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17CA0);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_2192329A4(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A84508;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21922EAE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2192325E8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17CA8);
  result = sub_219BE1E34();
  v8 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231A68();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementDetailBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = type metadata accessor for SportsDetailModel();
  sub_219BE1E34();
  result = (*(*(v12 - 8) + 48))(v6, 1, v12);
  if (result != 1)
  {
    sub_219232818();
    v13 = swift_allocObject();
    v13[3] = 0;
    swift_unknownObjectWeakInit();
    v13[6] = v8;
    v13[7] = v9;
    v13[4] = v10;
    v13[5] = v11;
    sub_2186CB1F0(&v15, (v13 + 8));
    sub_218FA8DDC(v6, v13 + *(*v13 + 136));
    *(v8 + 24) = &off_282A85558;
    result = swift_unknownObjectWeakAssign();
    *a2 = v13;
    a2[1] = &off_282A85560;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21922ED78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsManagementDetailTracker();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A8A518;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21922EE6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2192325E8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for SportsDetailModel();
  sub_219BE1E34();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v9 = v38;
  if (!v38)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v39;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6120);
  result = sub_219BE1E34();
  if (!v37)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA1BE0);
  result = sub_219BE1E34();
  if (!v35)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v33)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (v31)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    MEMORY[0x28223BE20](v11);
    v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for SportsManagementConfigManager();
    v29[3] = v16;
    v29[4] = &off_282AA00C0;
    v29[0] = v15;
    type metadata accessor for SportsManagementDetailDataManager();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v16);
    MEMORY[0x28223BE20](v18);
    v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v27 = v16;
    v28 = &off_282AA00C0;
    *&v26 = v22;
    *(v17 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_218FA8DDC(v6, v17 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model);
    v23 = (v17 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_tagService);
    *v23 = v9;
    v23[1] = v10;
    sub_2186CB1F0(&v36, v17 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_recommendationService);
    sub_2186CB1F0(&v26, v17 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager);
    sub_2186CB1F0(&v32, v17 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsOnboardingManager);
    sub_2186CB1F0(&v30, v17 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager);
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = __swift_destroy_boxed_opaque_existential_1(v34);
    v24 = v25;
    *v25 = v17;
    v24[1] = &off_282A4E108;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21922F330@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC17CB8);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SportsManagementTitleViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A6A4E0;
    v17[0] = v8;
    v10 = type metadata accessor for SportsManagementTitleViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A6A4E0;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A3B968;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21922F55C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SportsManagementTitleViewStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A6A4E0;
  *a1 = result;
  return result;
}

uint64_t sub_21922F5D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E97BA0);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for SportsManagementDetailBlueprintModifierFactory();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21922F670(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987558();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219231B54();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219231A68();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21922F750(uint64_t a1, void *a2)
{
  sub_219232640();
  swift_allocObject();
  sub_219BE96E4();
  sub_21923272C();
  swift_allocObject();
  sub_219231A20(&qword_27CC17DB8, sub_219232640);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219232230();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_219231A20(&qword_27CC17DC0, sub_219232230);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21922F8CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231F98();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219232230();
    swift_allocObject();
    return sub_219BE9984();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21922FA10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231C90();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219231B54();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21922FB3C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_21922FB80(void *a1)
{
  sub_2192325E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A3C0);
  result = sub_219BE1E34();
  if (!v38)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A130);
  result = sub_219BE1E34();
  if (!v36)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = type metadata accessor for SportsDetailModel();
  sub_219BE1E34();
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result != 1)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    v30[2] = v30;
    MEMORY[0x28223BE20](v7);
    v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v30[1] = v30;
    MEMORY[0x28223BE20](v11);
    v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v9;
    v16 = *v13;
    v17 = type metadata accessor for SportsTagLayoutAttributesFactory();
    v34[3] = v17;
    v34[4] = &off_282A9D098;
    v34[0] = v15;
    v18 = type metadata accessor for TitleViewLayoutAttributesFactory();
    v32 = v18;
    v33 = &off_282A72438;
    v31[0] = v16;
    type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v17);
    MEMORY[0x28223BE20](v20);
    v22 = (v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x28223BE20](v24);
    v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v22;
    v29 = *v26;
    v19[5] = v17;
    v19[6] = &off_282A9D098;
    v19[7] = v29;
    v19[2] = v28;
    v19[10] = v18;
    v19[11] = &off_282A72438;
    sub_218FA8DDC(v4, v19 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model);
    __swift_destroy_boxed_opaque_existential_1(v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219230064(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987558();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231C90();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219232544(0, &qword_27CC17D58, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219231A20(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21923231C();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219230380(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E828);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231E0C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219232084();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219232210(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219231C90();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2192304EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231C90();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192305A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987558();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231F98();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementDetailBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    *&v8[0] = v3;
    sub_219231E0C();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9374();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219230708(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E828);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219230818(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_219BEA274();
    sub_219BE9384();

    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for SportsManagementDetailViewController();
    result = sub_219BE1E24();
    if (result)
    {
      return sub_219BE9394();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219230934(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987558();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231F98();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementDetailBlueprintViewHeaderProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219232544(0, &qword_27CC17D58, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_219231A20(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_219232084();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8FF4();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_219230BD8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9004();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219232458();
  if (sub_219BE1E24())
  {
    sub_219231A20(&qword_27CC17D98, sub_219232458);
  }

  sub_219BE9014();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21923231C();
  sub_219BE1E24();
  sub_219BE8FE4();
  v3 = sub_219BE8FD4();
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementDetailViewController();
  v5 = sub_219BE1E24();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addDelegate_];
}

uint64_t sub_219230D8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987558();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219232210(0);
    return sub_219BE95E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219230E04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02C0);
  result = sub_219BE1E34();
  v3 = v20;
  if (v20)
  {
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EC9998);
    result = sub_219BE1E34();
    if (v19)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x28223BE20](v5);
      v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for SportsTagRenderer();
      v17[3] = v10;
      v17[4] = &off_282A4A4D8;
      v17[0] = v9;
      type metadata accessor for SportsManagementDetailBlueprintViewCellProvider();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
      MEMORY[0x28223BE20](v12);
      v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[9] = v10;
      v11[10] = &off_282A4A4D8;
      v11[6] = v16;
      v11[3] = 0;
      swift_unknownObjectWeakInit();
      v11[4] = v3;
      v11[5] = v4;
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219231088(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementDetailViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A629A8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21923111C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC9540);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TitleViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A6AF80;
    v14[0] = v6;
    type metadata accessor for SportsManagementDetailBlueprintViewHeaderProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A6AF80;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21923132C(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_219232544(0, &qword_27CC17D90, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987558();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219232544(0, &qword_27CC17D58, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192315B8(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219232458();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_219231A20(&qword_27CC17D88, sub_219232458);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192316F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231C90();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218987558();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219232458();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219231808(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219231C90();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192318C4(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21923231C();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_219231A20(a3, sub_21923231C);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_219231978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21923231C();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_219231A20(&qword_27CC17D70, sub_21923231C);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219231A20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219231A68()
{
  if (!qword_27CC17CC0)
  {
    sub_218987558();
    sub_219231B54();
    sub_219231A20(&qword_27CC0B848, sub_218987558);
    sub_219231A20(&qword_27CC17D38, sub_219231B54);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17CC0);
    }
  }
}

void sub_219231B54()
{
  if (!qword_27CC17CC8)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_219231C90();
    sub_219231A20(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_219231A20(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    sub_219231A20(&qword_27CC17D30, sub_219231C90);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17CC8);
    }
  }
}

void sub_219231C90()
{
  if (!qword_27CC17CD0)
  {
    sub_2186C6148(255, &qword_280E8E828);
    sub_219231E0C();
    sub_219232084();
    sub_219232210(255);
    type metadata accessor for SportsManagementDetailViewController();
    sub_219231A20(&qword_27CC17D18, sub_219231E0C);
    sub_219231A20(&qword_27CC17D20, sub_219232084);
    sub_219231A20(&qword_27CC17D28, sub_219232210);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17CD0);
    }
  }
}

void sub_219231E0C()
{
  if (!qword_27CC17CD8)
  {
    sub_218987558();
    sub_219231F98();
    type metadata accessor for SportsManagementDetailBlueprintViewCellProvider();
    type metadata accessor for SportsManagementDetailViewController();
    sub_219231A20(&qword_27CC0B848, sub_218987558);
    sub_219231A20(&qword_27CC17CE8, sub_219231F98);
    sub_219231A20(&qword_27CC17CF0, type metadata accessor for SportsManagementDetailBlueprintViewCellProvider);
    sub_219231A20(&qword_27CC17CF8, type metadata accessor for SportsManagementDetailViewController);
    v0 = sub_219BE93A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17CD8);
    }
  }
}

void sub_219231F98()
{
  if (!qword_27CC17CE0)
  {
    type metadata accessor for SportsManagementDetailLayoutSectionDescriptor();
    type metadata accessor for SportsManagementDetailLayoutModel();
    sub_219231A20(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
    sub_219231A20(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17CE0);
    }
  }
}

void sub_219232084()
{
  if (!qword_27CC17D00)
  {
    sub_218987558();
    sub_219231F98();
    type metadata accessor for SportsManagementDetailBlueprintViewHeaderProvider();
    type metadata accessor for SportsManagementDetailViewController();
    sub_219231A20(&qword_27CC0B848, sub_218987558);
    sub_219231A20(&qword_27CC17CE8, sub_219231F98);
    sub_219231A20(&qword_27CC17D08, type metadata accessor for SportsManagementDetailBlueprintViewHeaderProvider);
    sub_219231A20(&qword_27CC17CF8, type metadata accessor for SportsManagementDetailViewController);
    v0 = sub_219BE9024();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17D00);
    }
  }
}

void sub_219232230()
{
  if (!qword_27CC17D40)
  {
    sub_219231F98();
    type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder();
    sub_219231A20(&qword_27CC17CE8, sub_219231F98);
    sub_219231A20(&qword_27CC17D48, type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder);
    v0 = sub_219BE9994();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17D40);
    }
  }
}

void sub_21923231C()
{
  if (!qword_27CC17D50)
  {
    sub_218987558();
    sub_219231C90();
    type metadata accessor for SportsManagementDetailViewController();
    sub_219231A20(&qword_27CC0B848, sub_218987558);
    sub_219231A20(&qword_27CC17D30, sub_219231C90);
    sub_219231A20(&qword_27CC17CF8, type metadata accessor for SportsManagementDetailViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17D50);
    }
  }
}

void sub_219232458()
{
  if (!qword_27CC17D60)
  {
    sub_219231C90();
    sub_218987558();
    sub_219231A20(&qword_27CC17D30, sub_219231C90);
    sub_219231A20(&qword_27CC17D68, sub_218987558);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17D60);
    }
  }
}

void sub_219232544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218987558();
    v7 = v6;
    v8 = sub_219231A20(&qword_27CC0B848, sub_218987558);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2192325E8()
{
  if (!qword_27CC17DA0)
  {
    type metadata accessor for SportsDetailModel();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17DA0);
    }
  }
}

void sub_219232640()
{
  if (!qword_27CC17DA8)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_219231A20(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_219231A20(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BE96F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17DA8);
    }
  }
}

void sub_21923272C()
{
  if (!qword_27CC17DB0)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_219231A20(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_219231A20(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BE8FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17DB0);
    }
  }
}

void sub_219232818()
{
  if (!qword_27CC17DC8)
  {
    type metadata accessor for SportsManagementDetailBlueprintModifierFactory();
    sub_219231A20(&unk_27CC17DD0, type metadata accessor for SportsManagementDetailBlueprintModifierFactory);
    v0 = type metadata accessor for SportsManagementDetailInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17DC8);
    }
  }
}

void *sub_2192328AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for SportsManagementDetailRouter();
  v15[4] = &off_282A7DD78;
  v15[0] = a3;
  v14[3] = type metadata accessor for SportsManagementDetailTracker();
  v14[4] = &off_282A8A518;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A844D8, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_2192329A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for SportsManagementDetailRouter();
  v25 = &off_282A7DD78;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A8A518;
  v20[0] = a4;
  type metadata accessor for SportsManagementDetailEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2192328AC(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_219232BC0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219232C80()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219232D44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_219BF5454();

  return v7;
}

uint64_t sub_219232E7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_219BF5454();

  return v7;
}

void sub_219232FE4(void *a1, void (*a2)(void))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v16 = 0;
  v17 = 0xE000000000000000;

  v5 = sub_219BF53D4();

  v6 = [a1 objectForKey_];

  if (v6)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v14, &v15);
    type metadata accessor for TodayViewController();
    swift_dynamicCast();
    v7 = [v13 description];
    v8 = sub_219BF5414();
    v10 = v9;

    MEMORY[0x21CECC330](v8, v10);

    v11 = v16;
    v12 = v17;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v11;
    *(v4 + 40) = v12;
    sub_219BE5314();

    a2(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_21923329C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v25 = 0;
  v26 = 0xE000000000000000;

  v5 = sub_219BF53D4();

  v6 = [a1 objectForKey_];

  if (v6)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v23, v24);
    type metadata accessor for TodayViewController();
    swift_dynamicCast();
    v7 = [v22 description];
    v8 = sub_219BF5414();
    v10 = v9;

    MEMORY[0x21CECC330](v8, v10);

    v11 = v25;
    v12 = v26;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v11;
    *(v4 + 40) = v12;
    sub_219BE5314();

    v13 = sub_219BF53D4();

    v14 = [a1 objectForKey_];

    if (v14)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v23, v24);
      swift_dynamicCast();
      v15 = v25;
      v16 = swift_allocObject();
      v16[2] = a1;
      v16[3] = a2;
      v16[4] = a3;
      v17 = swift_allocObject();
      v17[2] = v15;
      v17[3] = sub_2192335C4;
      v17[4] = v16;
      v18 = a1;

      v19 = v15;

      sub_219BE3494();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2192335DC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + 16);
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D74418];
  v9 = [v7 systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
  v10 = [v6 scaledFontForFont:v9 maximumPointSize:48.0];

  [a1 setFont_];
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = v12;
  v14 = [v7 systemFontOfSize:16.0 weight:v8];
  v15 = [v6 scaledFontForFont:v14 maximumPointSize:48.0];

  v16 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v15;
  v17 = *MEMORY[0x277D740C0];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 blackColor];
  v21 = [v18 whiteColor];
  v22 = [v18 ts:v20 dynamicColor:v21 withDarkStyleVariant:?];

  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v22;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v25 = sub_219BF5204();

  v26 = [v23 initWithString:v24 attributes:v25];

  [a1 setAttributedText_];
  v27 = [v18 labelColor];
  [a1 setTextColor_];

  [a1 setNumberOfLines_];
  if (a4)
  {
    LODWORD(v28) = 1036831949;
    [a1 ts:v28 setHyphenationFactor:?];
  }

  return [a1 setLineBreakMode_];
}

uint64_t sub_219233964(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_219BF5454();

  return v7;
}

uint64_t sub_219233AA0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219233B70()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219233C38()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for PuzzleStreakCheckNotificationCoordinator();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    type metadata accessor for PuzzleStreakNotificationBackgroundAppRefreshRequester();
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      sub_2191FCE08();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_219C09EC0;
      v5 = sub_219233D70(&qword_27CC17DF8, type metadata accessor for PuzzleStreakCheckNotificationCoordinator);
      *(v4 + 32) = v2;
      *(v4 + 40) = v5;
      v6 = sub_219233D70(&unk_27CC17E00, type metadata accessor for PuzzleStreakNotificationBackgroundAppRefreshRequester);
      *(v4 + 48) = v3;
      *(v4 + 56) = v6;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219233D70(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_219233DB8(void *a1, SEL *a2)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 != 1)
  {
LABEL_7:
    sub_2188382C8(v4, v5);
    return v6;
  }

  v8 = [*(v2 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_configurationManager) possiblyUnfetchedAppConfiguration];
  result = [v8 respondsToSelector_];
  if (result)
  {
    v10 = [v8 *a2];
    swift_unknownObjectRelease();
    if (v10)
    {
      v6 = sub_219BF5414();
      v12 = v11;
    }

    else
    {
      v6 = 0;
      v12 = 0;
    }

    v13 = *v3;
    v14 = v3[1];
    *v3 = v6;
    v3[1] = v12;

    sub_2188398B4(v13, v14);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_219233EBC(uint64_t a1)
{
  v2 = sub_219233FA4(a1);
  v3 = sub_219234804(a1);
  v4 = sub_21923512C(a1, &OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___inConversationsAudioTagID, &selRef_inConversationsAudioTagID, &OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromInConversationsDate);
  result = sub_21923512C(a1, &OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___businessAudioTagID, &selRef_businessAudioTagID, &OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromBusinessDate);
  if ((v2 & 1) == 0 && (v3 & 1) == 0 && (v4 & 1) == 0 && (result & 1) == 0)
  {
    v6 = 0;
LABEL_11:
    sub_218C10298();
    swift_allocError();
    *v7 = v6;
    return swift_willThrow();
  }

  if ((v2 & 0x100) == 0 && (v3 & 0x100) == 0 && (v4 & 0x100) == 0 && (result & 0x100) == 0)
  {
    v6 = 1;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_219233FA4(uint64_t a1)
{
  v69 = a1;
  v1 = sub_219BDBD34();
  v66 = *(v1 - 8);
  v67 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694();
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDD2D4();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE13C4();
  v61 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_219BDF0E4();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDFBD4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v62 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  MEMORY[0x28223BE20](v26);
  v64 = &v53 - v29;
  sub_219236804(v69, v22, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    v36 = type metadata accessor for EngagementEvent;
    v37 = v22;
LABEL_15:
    sub_2192368D0(v37, v36);
    v48 = 0;
    return v48 | (EnumCaseMultiPayload == 3);
  }

  LODWORD(v69) = 3;
  v53 = v17;
  v31 = *(v17 + 32);
  v54 = v16;
  v31(v19, v22, v16);
  sub_219BDFB84();
  sub_219BDF0C4();
  (*(v59 + 8))(v15, v60);
  v32 = v61;
  (*(v61 + 104))(v10, *MEMORY[0x277D2F210], v7);
  sub_219236930(&unk_27CC17E10, MEMORY[0x277D2F218]);
  v33 = sub_219BF53A4();
  v34 = *(v32 + 8);
  v34(v10, v7);
  v34(v12, v7);
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    v38 = v56;
    sub_219BDFBC4();
    sub_219BDD2C4();
    (*(v57 + 8))(v38, v58);
    v35 = 0;
  }

  v40 = v67;
  v39 = v68;
  v42 = v65;
  v41 = v66;
  v43 = v62;
  (*(v53 + 8))(v19, v54);
  (*(v41 + 56))(v28, v35, 1, v40);
  v44 = v64;
  sub_218A5DD60(v28, v64);
  v45 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedDate;
  swift_beginAccess();
  v46 = *(v63 + 48);
  sub_219236804(v39 + v45, v42, sub_2186DCF58);
  sub_219236804(v44, v42 + v46, sub_2186DCF58);
  v47 = *(v41 + 48);
  if (v47(v42, 1, v40) == 1)
  {
    if (v47(v42 + v46, 1, v40) == 1)
    {
      sub_2192368D0(v42, sub_2186DCF58);
      EnumCaseMultiPayload = v69;
LABEL_14:
      v36 = sub_2186DCF58;
      v37 = v44;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_219236804(v42, v43, sub_2186DCF58);
  if (v47(v42 + v46, 1, v40) == 1)
  {
    (*(v41 + 8))(v43, v40);
LABEL_11:
    sub_2192368D0(v42, sub_218C82694);
    EnumCaseMultiPayload = v69;
    goto LABEL_12;
  }

  v49 = v55;
  (*(v41 + 32))(v55, v42 + v46, v40);
  sub_219236930(&qword_280EE9C80, MEMORY[0x277CC9578]);
  v50 = sub_219BF53A4();
  v51 = *(v41 + 8);
  v51(v49, v40);
  v51(v43, v40);
  sub_2192368D0(v42, sub_2186DCF58);
  EnumCaseMultiPayload = v69;
  if (v50)
  {
    goto LABEL_14;
  }

LABEL_12:
  swift_beginAccess();
  sub_21923686C(v44, v39 + v45);
  swift_endAccess();
  sub_2192368D0(v44, sub_2186DCF58);
  v48 = 256;
  return v48 | (EnumCaseMultiPayload == 3);
}

uint64_t sub_219234804(uint64_t a1)
{
  v71 = a1;
  v1 = sub_219BDBD34();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694();
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDD2D4();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE13C4();
  v63 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v62 = sub_219BDF0E4();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDFBD4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v58 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v64 = &v53 - v27;
  MEMORY[0x28223BE20](v26);
  v66 = &v53 - v28;
  sub_219236804(v71, v22, type metadata accessor for EngagementEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    LODWORD(v71) = 3;
    v55 = v17;
    v30 = *(v17 + 32);
    v56 = v16;
    v30(v19, v22, v16);
    v54 = v19;
    sub_219BDFB84();
    sub_219BDF0C4();
    (*(v13 + 8))(v15, v62);
    v31 = v63;
    (*(v63 + 104))(v10, *MEMORY[0x277D2F210], v7);
    sub_219236930(&unk_27CC17E20, MEMORY[0x277D2F218]);
    sub_219BF5874();
    sub_219BF5874();
    if (v74 == v72 && v75 == v73)
    {
      v32 = *(v31 + 8);
      v32(v10, v7);
      v32(v12, v7);

      v33 = v70;
      v34 = v68;
    }

    else
    {
      v36 = sub_219BF78F4();
      v37 = *(v31 + 8);
      v37(v10, v7);
      v37(v12, v7);

      v33 = v70;
      v34 = v68;
      if ((v36 & 1) == 0)
      {
        v41 = 1;
        v42 = v69;
        v44 = v66;
        v43 = v67;
        v39 = v54;
        v40 = v64;
LABEL_9:
        (*(v55 + 8))(v39, v56);
        (*(v34 + 56))(v40, v41, 1, v42);
        sub_218A5DD60(v40, v44);
        v45 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastDailyBriefingPlayedDate;
        swift_beginAccess();
        v46 = *(v65 + 48);
        sub_219236804(v33 + v45, v43, sub_2186DCF58);
        sub_219236804(v44, v43 + v46, sub_2186DCF58);
        v47 = *(v34 + 48);
        if (v47(v43, 1, v42) == 1)
        {
          if (v47(v43 + v46, 1, v42) == 1)
          {
            sub_2192368D0(v43, sub_2186DCF58);
LABEL_17:
            sub_2192368D0(v44, sub_2186DCF58);
            v35 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v48 = v58;
          sub_219236804(v43, v58, sub_2186DCF58);
          if (v47(v43 + v46, 1, v42) != 1)
          {
            v49 = v57;
            (*(v34 + 32))(v57, v43 + v46, v42);
            sub_219236930(&qword_280EE9C80, MEMORY[0x277CC9578]);
            v50 = sub_219BF53A4();
            v51 = *(v34 + 8);
            v51(v49, v42);
            v51(v48, v42);
            sub_2192368D0(v43, sub_2186DCF58);
            if (v50)
            {
              goto LABEL_17;
            }

LABEL_15:
            swift_beginAccess();
            sub_21923686C(v44, v33 + v45);
            swift_endAccess();
            sub_2192368D0(v44, sub_2186DCF58);
            v35 = 256;
LABEL_18:
            EnumCaseMultiPayload = v71;
            return v35 | (EnumCaseMultiPayload == 3);
          }

          (*(v34 + 8))(v48, v42);
        }

        sub_2192368D0(v43, sub_218C82694);
        goto LABEL_15;
      }
    }

    v38 = v59;
    v39 = v54;
    sub_219BDFBC4();
    v40 = v64;
    sub_219BDD2C4();
    (*(v60 + 8))(v38, v61);
    v41 = 0;
    v42 = v69;
    v44 = v66;
    v43 = v67;
    goto LABEL_9;
  }

  sub_2192368D0(v22, type metadata accessor for EngagementEvent);
  v35 = 0;
  return v35 | (EnumCaseMultiPayload == 3);
}

uint64_t sub_21923512C(uint64_t a1, void *a2, SEL *a3, uint64_t *a4)
{
  v80 = a4;
  v84 = a2;
  v85 = a3;
  v87 = a1;
  v4 = sub_219BDBD34();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694();
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BDD2D4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE13C4();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v65 - v12;
  v73 = sub_219BDF0E4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF104();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFBD4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v69 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v78 = &v65 - v32;
  sub_219236804(v87, v25, type metadata accessor for EngagementEvent);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v66 = v20;
    v33 = *(v20 + 32);
    v87 = v19;
    v33(v22, v25, v19);
    v34 = sub_219233DB8(v84, v85);
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      sub_219BDFB94();
      v38 = sub_219BDF0F4();
      v40 = v39;
      (*(v16 + 8))(v18, v15);
      if (v38 == v36 && v37 == v40)
      {

        goto LABEL_8;
      }

      v41 = sub_219BF78F4();

      if (v41)
      {
LABEL_8:
        sub_219BDFB84();
        v42 = v74;
        sub_219BDF0C4();
        (*(v72 + 8))(v14, v73);
        v44 = v75;
        v43 = v76;
        v45 = v77;
        (*(v76 + 104))(v75, *MEMORY[0x277D2F210], v77);
        sub_219236930(&unk_27CC17E10, MEMORY[0x277D2F218]);
        v46 = sub_219BF53A4();
        v47 = *(v43 + 8);
        v47(v44, v45);
        v47(v42, v45);
        if (v46)
        {
          v48 = 1;
        }

        else
        {
          v51 = v68;
          sub_219BDFBC4();
          sub_219BDD2C4();
          (*(v70 + 8))(v51, v71);
          v48 = 0;
        }

        v52 = v86;
        v54 = v82;
        v53 = v83;
        v55 = v81;
        (*(v66 + 8))(v22, v87);
        (*(v54 + 56))(v31, v48, 1, v53);
        v56 = v78;
        sub_218A5DD60(v31, v78);
        v57 = *v80;
        swift_beginAccess();
        v58 = *(v79 + 48);
        sub_219236804(v52 + v57, v55, sub_2186DCF58);
        sub_219236804(v56, v55 + v58, sub_2186DCF58);
        v59 = *(v54 + 48);
        if (v59(v55, 1, v53) == 1)
        {
          if (v59(v55 + v58, 1, v53) == 1)
          {
            sub_2192368D0(v55, sub_2186DCF58);
LABEL_21:
            sub_2192368D0(v56, sub_2186DCF58);
            v50 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          v60 = v69;
          sub_219236804(v55, v69, sub_2186DCF58);
          if (v59(v55 + v58, 1, v53) != 1)
          {
            v61 = v67;
            (*(v54 + 32))(v67, v55 + v58, v53);
            sub_219236930(&qword_280EE9C80, MEMORY[0x277CC9578]);
            v62 = sub_219BF53A4();
            v63 = *(v54 + 8);
            v63(v61, v53);
            v63(v60, v53);
            sub_2192368D0(v55, sub_2186DCF58);
            if (v62)
            {
              goto LABEL_21;
            }

LABEL_19:
            swift_beginAccess();
            sub_21923686C(v56, v52 + v57);
            swift_endAccess();
            sub_2192368D0(v56, sub_2186DCF58);
            v50 = 256;
LABEL_22:
            v49 = 1;
            return v50 | v49;
          }

          (*(v54 + 8))(v60, v53);
        }

        sub_2192368D0(v55, sub_218C82694);
        goto LABEL_19;
      }
    }

    (*(v66 + 8))(v22, v87);
  }

  else
  {
    sub_2192368D0(v25, type metadata accessor for EngagementEvent);
  }

  v49 = 0;
  v50 = 0;
  return v50 | v49;
}

uint64_t sub_219235B08()
{
  v1 = v0;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BE5294();
  if (*(v5 + 16))
  {
    v6 = sub_21870F700(0xD00000000000001CLL, 0x8000000219D12750);
    if (v7)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v6, v24);
      if (swift_dynamicCast())
      {
        sub_219BDBC74();
        v8 = sub_219BDBD34();
        (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
        v9 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedDate;
        swift_beginAccess();
        sub_218B9E4D4(v4, v1 + v9);
        swift_endAccess();
      }
    }
  }

  if (*(v5 + 16))
  {
    v10 = sub_21870F700(0xD00000000000002FLL, 0x8000000219D12720);
    if (v11)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v10, v24);
      if (swift_dynamicCast())
      {
        sub_219BDBC74();
        v12 = sub_219BDBD34();
        (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
        v13 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromInConversationsDate;
        swift_beginAccess();
        sub_218B9E4D4(v4, v1 + v13);
        swift_endAccess();
      }
    }
  }

  if (*(v5 + 16))
  {
    v14 = sub_21870F700(0xD000000000000028, 0x8000000219D126F0);
    if (v15)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v14, v24);
      if (swift_dynamicCast())
      {
        sub_219BDBC74();
        v16 = sub_219BDBD34();
        (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
        v17 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromBusinessDate;
        swift_beginAccess();
        sub_218B9E4D4(v4, v1 + v17);
        swift_endAccess();
      }
    }
  }

  if (!*(v5 + 16))
  {
  }

  v18 = sub_21870F700(0xD000000000000024, 0x8000000219D126C0);
  if ((v19 & 1) == 0)
  {
  }

  sub_2186D1230(*(v5 + 56) + 32 * v18, v24);

  result = swift_dynamicCast();
  if (result)
  {
    sub_219BDBC74();
    v21 = sub_219BDBD34();
    (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
    v22 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastDailyBriefingPlayedDate;
    swift_beginAccess();
    sub_218B9E4D4(v4, v1 + v22);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_219235F50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  sub_2186DCF58();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v51 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = sub_219BDBD34();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v52 = &v51 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedDate;
  swift_beginAccess();
  sub_219236804(v2 + v24, v12, sub_2186DCF58);
  v25 = *(v14 + 48);
  v26 = v25(v12, 1, v13);
  v27 = MEMORY[0x277D839F8];
  if (v26 == 1)
  {
    sub_2192368D0(v12, sub_2186DCF58);
    v28 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    v51 = v21;
    sub_219BDBC84();
    v60 = v27;
    *&v59 = v29 * 1000.0;
    sub_218751558(&v59, v58);
    v30 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v30;
    v21 = v51;
    sub_21948CB08(v58, 0xD00000000000001CLL, 0x8000000219D12750, isUniquelyReferenced_nonNull_native);
    (*(v14 + 8))(v23, v13);
    v28 = v63;
  }

  v32 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromInConversationsDate;
  swift_beginAccess();
  sub_219236804(v2 + v32, v10, sub_2186DCF58);
  if (v25(v10, 1, v13) == 1)
  {
    sub_2192368D0(v10, sub_2186DCF58);
  }

  else
  {
    (*(v14 + 32))(v21, v10, v13);
    sub_219BDBC84();
    v60 = MEMORY[0x277D839F8];
    *&v59 = v33 * 1000.0;
    sub_218751558(&v59, v58);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v28;
    sub_21948CB08(v58, 0xD00000000000002FLL, 0x8000000219D12720, v34);
    (*(v14 + 8))(v21, v13);
    v28 = v62;
  }

  v35 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromBusinessDate;
  swift_beginAccess();
  v36 = v2 + v35;
  v37 = v54;
  sub_219236804(v36, v54, sub_2186DCF58);
  if (v25(v37, 1, v13) == 1)
  {
    sub_2192368D0(v37, sub_2186DCF58);
    v38 = MEMORY[0x277D839F8];
  }

  else
  {
    v39 = v52;
    (*(v14 + 32))(v52, v37, v13);
    sub_219BDBC84();
    v38 = MEMORY[0x277D839F8];
    v60 = MEMORY[0x277D839F8];
    *&v59 = v40 * 1000.0;
    sub_218751558(&v59, v58);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v28;
    sub_21948CB08(v58, 0xD000000000000028, 0x8000000219D126F0, v41);
    (*(v14 + 8))(v39, v13);
    v28 = v61;
  }

  v42 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastDailyBriefingPlayedDate;
  swift_beginAccess();
  v43 = v2 + v42;
  v44 = v55;
  sub_219236804(v43, v55, sub_2186DCF58);
  if (v25(v44, 1, v13) == 1)
  {
    sub_2192368D0(v44, sub_2186DCF58);
  }

  else
  {
    v45 = v53;
    (*(v14 + 32))(v53, v44, v13);
    sub_219BDBC84();
    v60 = v38;
    *&v59 = v46 * 1000.0;
    sub_218751558(&v59, v58);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v28;
    sub_21948CB08(v58, 0xD000000000000024, 0x8000000219D126C0, v47);
    (*(v14 + 8))(v45, v13);
  }

  v48 = v56;
  sub_219BE52B4();
  v49 = sub_219BE52A4();
  return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
}

uint64_t sub_219236680()
{

  v1 = OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_configuration;
  v2 = sub_219BE5244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2192368D0(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedDate, sub_2186DCF58);
  sub_2192368D0(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromInConversationsDate, sub_2186DCF58);
  sub_2192368D0(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastAudioPlayedFromBusinessDate, sub_2186DCF58);
  sub_2192368D0(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty_lastDailyBriefingPlayedDate, sub_2186DCF58);
  sub_2188398B4(*(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___inConversationsAudioTagID), *(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___inConversationsAudioTagID + 8));
  sub_2188398B4(*(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___businessAudioTagID), *(v0 + OBJC_IVAR____TtC7NewsUI241QueryNewsPlusAudioEngagementDonorProperty____lazy_storage___businessAudioTagID + 8));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_219236784()
{
  sub_219236680();

  return swift_deallocClassInstance();
}

uint64_t sub_219236804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21923686C(uint64_t a1, uint64_t a2)
{
  sub_2186DCF58();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192368D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219236930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219236978()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_219236A24()
{
  v1 = v0;
  sub_21896FA3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v75 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v81 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  v13 = sub_219BF30A4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219BF3974();
  if (result)
  {
    v77 = v3;
    v78 = v8;
    v18 = *(v0 + 32);
    v19 = result;
    swift_getObjectType();
    v80 = v19;
    v20 = sub_218E97A64(v19, v18);
    sub_219BF3944();
    v21 = (*(v14 + 88))(v16, v13);
    if (v21 == *MEMORY[0x277D33C90])
    {
      v22 = *(v0 + 16);
      v23 = v20[2];
      v24 = objc_allocWithZone(type metadata accessor for FeedViewContext());
      swift_unknownObjectRetain();
      v25 = [v24 init];
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      *(v26 + 32) = MEMORY[0x277D84F90];
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0u;
      *(v26 + 72) = 0u;
      *(v26 + 88) = 0;
      *(v26 + 96) = -1;
      v27 = v26 | 0x2000000000000006;
      v28 = *(v1 + 24);
      v29 = sub_219BDFA44();
      v30 = v12;
      (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
      *&v96 = 0;
      v94 = 0u;
      v95 = 0u;
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      v87[0] = v22;
      sub_2187B14CC(&v82, &v88, &unk_280EE7DB0, &qword_280EE7DC0);
      v76 = v20;
      if (*(&v89 + 1))
      {
        sub_21875F93C(&v88, &v91);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v32 = qword_280ED32D8;
        v31 = qword_280ED32E0;
        v33 = qword_280ED32E8;

        v79 = v31;
        v75 = v33;
        sub_2188202A8(v31);
        __swift_destroy_boxed_opaque_existential_1(&v91);
      }

      else
      {
        sub_2187448D0(&v88, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v32 = qword_280ED32D8;
        v47 = qword_280ED32E0;
        v48 = qword_280ED32E8;

        v79 = v47;
        v75 = v48;
        sub_2188202A8(v47);
      }

      v49 = v77;
      *&v85 = v27;
      *(&v89 + 1) = sub_219BDD274();
      *&v88 = v28;
      v50 = v12;
      v51 = v81;
      sub_2189B4E2C(v50, v81);
      sub_2187B14CC(&v94, &v91, &qword_280EE33A0, &qword_280EE33B0);
      v52 = *(v49 + 80);
      v78 = v30;
      v53 = (v52 + 24) & ~v52;
      v54 = (v4 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 47) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      *(v56 + 16) = v28;
      sub_2189B4EAC(v51, v56 + v53);
      v57 = v56 + v54;
      v58 = v92;
      *v57 = v91;
      *(v57 + 16) = v58;
      *(v57 + 32) = v93;
      v59 = (v56 + v55);
      v60 = (v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v59 = 0;
      v59[1] = 0;
      v61 = v79;
      *v60 = v32;
      v60[1] = v61;
      v60[2] = v75;
      swift_retain_n();

      sub_2188202A8(v61);
      sub_2186CF94C();
      sub_2189B4DD4();
      sub_219BEB464();

      swift_unknownObjectRelease();

      sub_2187FABEC(v61);
      sub_2187448D0(&v82, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v94, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v78);
      sub_2187448D0(&v88, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }

    else if (v21 == *MEMORY[0x277D33C88])
    {
      v76 = v20;
      v34 = v20[2];
      v35 = objc_allocWithZone(type metadata accessor for FeedViewContext());
      swift_unknownObjectRetain();
      v36 = [v35 init];
      *&v94 = v34;
      *(&v94 + 1) = v36;
      v95 = MEMORY[0x277D84F90];
      LOBYTE(v96) = 0;
      *(&v96 + 1) = v82;
      DWORD1(v96) = *(&v82 + 3);
      *(&v96 + 1) = 2;
      v97 = 0u;
      v98 = 0u;
      v99 = -1;
      v37 = *(v1 + 16);
      v38 = swift_allocObject();
      v39 = v97;
      *(v38 + 48) = v96;
      *(v38 + 64) = v39;
      *(v38 + 80) = v98;
      *(v38 + 96) = v99;
      v40 = v95;
      *(v38 + 16) = v94;
      *(v38 + 32) = v40;
      v41 = v38 | 0x2000000000000006;
      v42 = *(v1 + 24);
      v43 = sub_219BDFA44();
      (*(*(v43 - 8) + 56))(v78, 1, 1, v43);
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v87[5] = v37;
      sub_2187B14CC(&v88, &v85, &unk_280EE7DB0, &qword_280EE7DC0);
      if (v86)
      {
        sub_21875F93C(&v85, v87);
        sub_218B5A004(&v94, &v82);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v45 = qword_280ED32D8;
        v44 = qword_280ED32E0;
        v46 = qword_280ED32E8;

        v81 = v44;
        v75 = v46;
        sub_2188202A8(v44);
        __swift_destroy_boxed_opaque_existential_1(v87);
      }

      else
      {
        sub_218B5A004(&v94, &v82);
        sub_2187448D0(&v85, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v45 = qword_280ED32D8;
        v62 = qword_280ED32E0;
        v63 = qword_280ED32E8;

        v81 = v62;
        v75 = v63;
        sub_2188202A8(v62);
      }

      v64 = v78;
      *&v85 = v41;
      v87[3] = sub_219BDD274();
      v87[0] = v42;
      v65 = v79;
      sub_2189B4E2C(v64, v79);
      sub_2187B14CC(&v91, &v82, &qword_280EE33A0, &qword_280EE33B0);
      v66 = (*(v77 + 80) + 24) & ~*(v77 + 80);
      v67 = (v4 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = (v67 + 47) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      *(v69 + 16) = v42;
      sub_2189B4EAC(v65, v69 + v66);
      v70 = v69 + v67;
      v71 = v83;
      *v70 = v82;
      *(v70 + 16) = v71;
      *(v70 + 32) = v84;
      v72 = (v69 + v68);
      v73 = (v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v72 = 0;
      v72[1] = 0;
      v74 = v81;
      *v73 = v45;
      v73[1] = v74;
      v73[2] = v75;
      swift_retain_n();

      sub_2188202A8(v74);
      sub_2186CF94C();
      sub_2189B4DD4();
      sub_219BEB464();

      swift_unknownObjectRelease();

      sub_2187FABEC(v74);
      sub_218B5A060(&v94);
      sub_2187448D0(&v88, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v91, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v78);
      sub_2187448D0(v87, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }

    else
    {

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_219237788()
{
  if ([*(v0 + 48) useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    if (sub_219BEED44())
    {
      return 0;
    }
  }

  v1 = sub_219BF3954();
  if (v1)
  {
    v2 = [v1 disableTapToChannel];
    swift_unknownObjectRelease();
    if (v2)
    {
      return 0;
    }
  }

  result = sub_219BF3974();
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

void sub_219237840()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x28223BE20](Strong);
    type metadata accessor for NotificationSettings();
    sub_219BE3204();
    v2 = sub_219BE2E54();
    type metadata accessor for FollowingNotificationsDataManager();
    sub_219BE2F94();

    v3 = sub_219BE2E54();
    sub_219BE2FE4();
  }
}

uint64_t sub_219237994(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_notificationService);
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_notificationService + 24);
  v3 = *(a1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_notificationService), v2);
  if ((*(v3 + 16))(v2, v3))
  {
    sub_2192387F8();
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v5 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v5);
    return (*(v6 + 24))(v5, v6);
  }
}

uint64_t sub_219237A60(void *a1, uint64_t a2)
{
  v3 = *(*a1 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
  v4 = a2 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a2, &off_282A64D40, v3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219237B08(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a2, &off_282A64D40, 0, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219237D68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_219BE2E54();
  sub_219BE2F74();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_219BE2E54();
  sub_219BE2FD4();
}

void sub_219237EA4()
{
  swift_getObjectType();
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F94();

  v1 = sub_219BE2E54();
  sub_219BE2FE4();
}

uint64_t sub_219237FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v5, &off_282A64D40, a3, a5, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21923818C(void *a1, char a2)
{
  swift_getObjectType();
  if (a2)
  {
    v5 = [objc_msgSend(*(v2 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_configurationManager) possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    v6 = [v5 puzzleHubTagID];

    if (v6)
    {
      sub_219BF5414();

      MEMORY[0x28223BE20](v7);
      type metadata accessor for TagModel();
      sub_219BE3204();

      *(swift_allocObject() + 16) = a1;
      v8 = a1;
      v9 = sub_219BE2E54();
      sub_219BE2F94();
    }
  }
}

uint64_t sub_219238330(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = [*(*a1 + 16) displayName];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = *(v5 + 16);
  swift_unknownObjectRetain();
  if ([a3 puzzleNotificationsEnabled])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *&v21 = v7;
  *(&v21 + 1) = v9;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = v10;
  *v23 = 0;
  v23[8] = 3;
  *&v23[16] = 1;
  v23[24] = v11;
  v23[25] = 1;
  v12 = a2 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_219239038(&v21);
  }

  v13 = *(v12 + 8);
  ObjectType = swift_getObjectType();
  v20[3] = &type metadata for NotificationsPuzzlesRowModel;
  v20[4] = &off_282A5B9F8;
  v15 = swift_allocObject();
  v20[0] = v15;
  v16 = v22;
  v15[1] = v21;
  v15[2] = v16;
  v15[3] = *v23;
  *(v15 + 58) = *&v23[10];
  v17 = *(v13 + 32);
  sub_219238FDC(&v21, v19);
  v17(a2, &off_282A64D40, v20, ObjectType, v13);
  sub_219239038(&v21);
  swift_unknownObjectRelease();
  return sub_219238EF0(v20);
}

uint64_t sub_219238534(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = [*(*a1 + 16) displayName];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = *(v5 + 16);
  swift_unknownObjectRetain();
  if ([a3 sportsTopicNotificationsEnabledState] == 3)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *&v21 = v7;
  *(&v21 + 1) = v9;
  LOBYTE(v22) = 6;
  *(&v22 + 1) = v10;
  *v23 = 0;
  v23[8] = 3;
  *&v23[16] = 0;
  v23[24] = v11;
  v23[25] = 1;
  v12 = a2 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_218A26648(&v21);
  }

  v13 = *(v12 + 8);
  ObjectType = swift_getObjectType();
  v20[3] = &type metadata for NotificationsSportsRowModel;
  v20[4] = &off_282A5BA28;
  v15 = swift_allocObject();
  v20[0] = v15;
  v16 = v22;
  v15[1] = v21;
  v15[2] = v16;
  v15[3] = *v23;
  *(v15 + 58) = *&v23[10];
  v17 = *(v13 + 32);
  sub_218A265EC(&v21, v19);
  v17(a2, &off_282A64D40, v20, ObjectType, v13);
  sub_218A26648(&v21);
  swift_unknownObjectRelease();
  return sub_219238EF0(v20);
}

void sub_2192387F8()
{
  if (!qword_280EE6E78)
  {
    type metadata accessor for NotificationSettings();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6E78);
    }
  }
}

uint64_t sub_2192388DC(void *a1)
{
  if ([a1 marketingNotificationsEnabled])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  sub_2190962D4(v2, v12);
  v3 = v1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_219239248(v12);
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v11[3] = &type metadata for NotificationsMarketingRowModel;
  v11[4] = &off_282A5B968;
  v6 = swift_allocObject();
  v11[0] = v6;
  v7 = v12[1];
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v13[0];
  *(v6 + 58) = *(v13 + 10);
  v8 = *(v4 + 32);
  sub_2192391EC(v12, v10);
  v8(v1, &off_282A64D40, v11, ObjectType, v4);
  sub_219239248(v12);
  swift_unknownObjectRelease();
  return sub_219238EF0(v11);
}

uint64_t sub_219238A00(void *a1)
{
  if ([a1 newIssueNotificationsEnabled])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  sub_219096410(v2, v12);
  v3 = v1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_219239198(v12);
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v11[3] = &type metadata for NotificationsNewIssuesRowModel;
  v11[4] = &off_282A5B998;
  v6 = swift_allocObject();
  v11[0] = v6;
  v7 = v12[1];
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v13[0];
  *(v6 + 58) = *(v13 + 10);
  v8 = *(v4 + 32);
  sub_21923913C(v12, v10);
  v8(v1, &off_282A64D40, v11, ObjectType, v4);
  sub_219239198(v12);
  swift_unknownObjectRelease();
  return sub_219238EF0(v11);
}

uint64_t sub_219238B24(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_configurationManager) appConfiguration];
  if ([v3 respondsToSelector_])
  {
    v4 = [v3 paidBundleConfig];
    swift_unknownObjectRelease();
    v5 = [v4 audioDailyBriefingFeatureName];

    if (v5)
    {
      v6 = sub_219BF5414();
      v8 = v7;

      goto LABEL_6;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v6 = 0;
  v8 = 0xE000000000000000;
LABEL_6:
  if ([a1 endOfAudioTrackNotificationsEnabled])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (qword_27CC08428 != -1)
  {
    swift_once();
  }

  v10 = qword_27CCD88C8;
  LOBYTE(v22) = 4;
  *(&v22 + 1) = qword_27CCD88C8;
  *&v23 = 0;
  BYTE8(v23) = 1;
  *v24 = 4;
  *&v24[8] = v6;
  *&v24[16] = v8;
  v24[24] = v9;
  v24[25] = 1;
  v11 = v1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v21[3] = &type metadata for NotificationsEndOfAudioTrackRowModel;
    v21[4] = &off_282A5B9C8;
    v14 = swift_allocObject();
    v21[0] = v14;
    v15 = v23;
    v14[1] = v22;
    v14[2] = v15;
    v14[3] = *v24;
    *(v14 + 58) = *&v24[10];
    v16 = *(v12 + 32);
    v17 = v10;
    sub_21923908C(&v22, v20);
    v16(v1, &off_282A64D40, v21, ObjectType, v12);
    sub_2192390E8(&v22);
    swift_unknownObjectRelease();
    return sub_219238EF0(v21);
  }

  else
  {
    v19 = v10;
    return sub_2192390E8(&v22);
  }
}

void sub_219238D58(void *a1)
{
  swift_getObjectType();
  v3 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_configurationManager) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    type metadata accessor for TagModel();
    sub_219BE3204();

    *(swift_allocObject() + 16) = a1;
    v5 = a1;
    v6 = sub_219BE2E54();
    sub_219BE2F94();
  }
}

uint64_t sub_219238F38()
{
  v0 = off_282A4D750[0];
  type metadata accessor for TagService();
  return v0();
}

uint64_t sub_219239300()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2192393C8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219239494()
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_219BDB5E4();

  sub_219BDB914();

  v6 = sub_219BDB954();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v2, 1, v6);
  sub_218838478(v2);
  result = 0;
  if (v5 != 1)
  {
    v8 = [v4 bundleForClass_];
    v9 = sub_219BDB5E4();

    return v9;
  }

  return result;
}

uint64_t sub_21923969C@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v9 = (2 * v5) | 1;
    v10 = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
    sub_218B66BA0(v4, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), 1, v9);
    v4 = v11;
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v6 = *(type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor() + 24);
  v7 = sub_219BEE6F4();
  result = (*(*(v7 - 8) + 16))(&a1[v6], &v1[v6], v7);
  *a1 = v3;
  *(a1 + 1) = v4;
  return result;
}

uint64_t type metadata accessor for ChannelSectionTagFeedGroupEmitterCursor()
{
  result = qword_27CC17E68;
  if (!qword_27CC17E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21923980C()
{
  sub_2186D80B0();
  if (v0 <= 0x3F)
  {
    sub_218DA2540(319);
    if (v1 <= 0x3F)
    {
      sub_219BEE6F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2192398EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(*(v1 + 32), ObjectType, v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v19 = v0;
    v20 = MEMORY[0x277D84F90];
    v6 = v4;
    sub_218C36CE0(0, v5, 0);
    v7 = v6;
    v8 = 0;
    v9 = v20;
    v10 = *(v20 + 16);
    v11 = 16 * v10;
    do
    {
      v12 = v7;
      v14 = *(v7 + v8 + 32);
      v13 = *(v7 + v8 + 40);
      v15 = *(v20 + 24);

      if (v10 >= v15 >> 1)
      {
        sub_218C36CE0((v15 > 1), v10 + 1, 1);
      }

      *(v20 + 16) = v10 + 1;
      v16 = v20 + v11 + v8;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      v8 += 16;
      ++v10;
      --v5;
      v7 = v12;
    }

    while (v5);

    v0 = v19;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v17 = *(v0 + 8);

  return v17(v9);
}

uint64_t sub_219239A64()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219239AC0(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedServiceContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218F004A8();
  sub_219BE3204();
  sub_21923A67C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagazineFeedServiceContext);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_21923A850(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MagazineFeedServiceContext);
  v8 = sub_219BE2E54();
  type metadata accessor for MagazineFeedServiceConfig();
  v9 = sub_219BE2F94();

  return v9;
}

uint64_t sub_219239CFC(void *a1)
{
  swift_getObjectType();
  sub_219BF6A64();
  v2 = a1[8];
  v3 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v2);
  (*(v3 + 24))(v2, v3);
  v4 = a1[8];
  v5 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v4);
  (*(v5 + 40))(v4, v5);
  swift_getObjectType();
  sub_219BE4594();
  v6 = sub_219BE31A4();

  return v6;
}

uint64_t sub_219239E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a4;
  v60 = a3;
  v61 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186DDA60(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v55 - v7;
  v8 = sub_219BEEA84();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DDA60(0, qword_280EDC500, type metadata accessor for MagazineConfig, v5);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for MagazineFeedServiceContext();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F004A8();
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for MagazineConfig();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v58 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v55 - v29;
  sub_21923A67C(a1, v21, sub_218F004A8);
  v31 = v19[14];
  v32 = *(v21 + v19[18]);
  v56 = *v21;
  v57 = v32;

  sub_21923A850(v21 + v31, v30, type metadata accessor for MagazineConfig);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186DDA60(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v34 = MEMORY[0x277D83A80];
  *(v33 + 56) = MEMORY[0x277D839F8];
  *(v33 + 64) = v34;
  *(v33 + 32) = v35;
  sub_219BF6214();
  sub_219BE5314();

  sub_21923A67C(v60, v17, type metadata accessor for MagazineFeedServiceContext);
  v60 = v30;
  sub_21923A67C(v30, v28, type metadata accessor for MagazineConfig);
  (*(v23 + 56))(v14, 1, 1, v22);
  v36 = *(v61 + 12);
  (*(v66 + 104))(v65, *MEMORY[0x277D32220], v67);
  type metadata accessor for MagazineFeedServiceConfig();
  v37 = swift_allocObject();
  *(v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_appConfig) = v56;
  v61 = v17;
  sub_21923A67C(v17, v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_context, type metadata accessor for MagazineFeedServiceContext);
  sub_21923A67C(v28, v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_contentConfig, type metadata accessor for MagazineConfig);
  v38 = v59;
  sub_21923A770(v14, v59, qword_280EDC500, type metadata accessor for MagazineConfig);
  v39 = *(v23 + 48);
  if (v39(v38, 1, v22) == 1)
  {
    v40 = v58;
    sub_21923A67C(v28, v58, type metadata accessor for MagazineConfig);
    v41 = v39(v38, 1, v22);
    v42 = v36;
    if (v41 != 1)
    {
      sub_21923A6E4(v38);
    }
  }

  else
  {
    v40 = v58;
    sub_21923A850(v38, v58, type metadata accessor for MagazineConfig);
    v43 = v36;
  }

  sub_21923A850(v40, v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_baseContentConfig, type metadata accessor for MagazineConfig);
  v44 = v57;
  *(v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_paidBundleConfig) = v57;
  *(v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_subscriptionController) = v36;
  v46 = v65;
  v45 = v66;
  v47 = v67;
  (*(v66 + 16))(v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_cachePolicy, v65, v67);
  v48 = [v44 feedAutoRefreshMinimumInterval];
  *(v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_refreshInterval) = v48;
  v49 = type metadata accessor for MagazineFeedConfig();
  sub_21923A770(&v28[*(v49 + 20)], v62, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v50 = sub_219BF5484();
  v52 = v51;
  (*(v45 + 8))(v46, v47);
  sub_21923A6E4(v14);
  sub_21923A7F0(v28, type metadata accessor for MagazineConfig);
  sub_21923A7F0(v61, type metadata accessor for MagazineFeedServiceContext);
  result = sub_21923A7F0(v60, type metadata accessor for MagazineConfig);
  v54 = (v37 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_cacheKey);
  *v54 = v50;
  v54[1] = v52;
  *v64 = v37;
  return result;
}

uint64_t sub_21923A5B8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21923A67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21923A6E4(uint64_t a1)
{
  sub_2186DDA60(0, qword_280EDC500, type metadata accessor for MagazineConfig, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21923A770(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DDA60(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21923A7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21923A850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MagazineFeedFailedBlueprintModifier()
{
  result = qword_27CC17E78;
  if (!qword_27CC17E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21923A92C()
{
  result = type metadata accessor for MagazineFeedFailedData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21923A998(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v91 = a3;
  v92 = a2;
  v89 = sub_219BE6DF4();
  v83 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21923B838(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v88 = v6;
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v87 = (&v64 - v7);
  sub_218BB8698();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v81);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v80);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BF0644();
  v79 = *(v68 - 8);
  v12 = MEMORY[0x28223BE20](v68);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v64 - v14;
  v15 = type metadata accessor for MagazineFeedGapLocation(0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EBE2C();
  v18 = *(v17 - 8);
  v84 = v17;
  v85 = v18;
  MEMORY[0x28223BE20](v17);
  v78 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21923B838(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  sub_218D51CC0();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v70 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v64 - v33;
  sub_219BEB244();
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_21923B980(v27, sub_218D51CC0);
    sub_21923B92C();
    v35 = swift_allocError();
    v37 = v87;
    v36 = v88;
    *v87 = v35;
    v38 = v90;
    (*(v90 + 104))(v37, *MEMORY[0x277D6DF68], v36);
    v92(v37);
    return (*(v38 + 8))(v37, v36);
  }

  (*(v30 + 32))(v34, v27, v29);
  (*(v22 + 16))(v24, a1, v21);
  v40 = type metadata accessor for MagazineFeedFailedData();
  v41 = v86;
  sub_218BB8764(v3 + *(v40 + 20), v86);
  v42 = v85;
  v43 = v41;
  v44 = v84;
  v45 = (*(v85 + 48))(v43, 1, v84);
  v66 = a1;
  v65 = v22;
  v74 = v29;
  v64 = v30;
  v75 = v34;
  v69 = v21;
  v67 = v24;
  if (v45 == 1)
  {
    sub_21923B980(v86, type metadata accessor for MagazineFeedGapLocation);
LABEL_5:
    v46 = v87;
    swift_storeEnumTagMultiPayload();
    sub_21923B9E0(0, &unk_280E8BFA8, sub_218953870, MEMORY[0x277D84560]);
    sub_218953870();
    v48 = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_219C09BA0;
    if (qword_27CC08778 != -1)
    {
      swift_once();
    }

    v50 = sub_219BF1584();
    v51 = __swift_project_value_buffer(v50, qword_27CCD8DD8);
    (*(*(v50 - 8) + 16))(v71, v51, v50);
    swift_storeEnumTagMultiPayload();
    sub_21923BA44(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    sub_219BE5FB4();
    v52 = sub_21923BA44(&qword_280EE5BB8, sub_218953870);
    v53 = sub_21923BA44(&unk_280EE5BC0, sub_218953870);
    MEMORY[0x21CEB9150](v49, v48, v52, v53);
    sub_21923BA44(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v54 = v70;
    sub_219BE6924();
    sub_219BEB234();
    v55 = v64;
    (*(v64 + 8))(v54, v74);
    v56 = v90;
    goto LABEL_13;
  }

  (*(v42 + 32))(v78, v86, v44);
  sub_219BF0F74();
  v57 = v68;
  (*(v79 + 104))(v76, *MEMORY[0x277D32EF8], v68);
  sub_21923BA44(&qword_280E90ED0, MEMORY[0x277D32F00]);
  sub_219BF5874();
  sub_219BF5874();
  if (v95 == v93 && v96 == v94)
  {
    v58 = *(v79 + 8);
    v58(v76, v57);
    v58(v77, v57);
  }

  else
  {
    v59 = sub_219BF78F4();
    v60 = *(v79 + 8);
    v60(v76, v57);
    v60(v77, v57);

    if ((v59 & 1) == 0)
    {
      (*(v85 + 8))(v78, v84);
      goto LABEL_5;
    }
  }

  sub_219BE6944();
  sub_219BEB214();

  (*(v85 + 8))(v78, v84);
  v56 = v90;
  v46 = v87;
  v55 = v64;
LABEL_13:
  v61 = v82;
  v62 = v83;
  (*(v83 + 104))(v82, *MEMORY[0x277D6D868], v89);
  sub_21923BA44(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_21923BA44(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  sub_21923BA44(&unk_280EB0340, type metadata accessor for MagazineFeedSectionDescriptor);
  v63 = v67;
  sub_219BE85E4();
  (*(v62 + 8))(v61, v89);
  v92(v46);
  (*(v56 + 8))(v46, v88);
  (*(v65 + 8))(v63, v69);
  return (*(v55 + 8))(v75, v74);
}

uint64_t sub_21923B6F4(uint64_t a1)
{
  v2 = sub_21923BA44(&qword_27CC0EB40, type metadata accessor for MagazineFeedFailedBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_21923B838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_21923BA44(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_21923BA44(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21923B92C()
{
  result = qword_27CC17E90;
  if (!qword_27CC17E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17E90);
  }

  return result;
}

uint64_t sub_21923B980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21923B9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21923BA44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21923BAA0()
{
  result = qword_27CC17E98;
  if (!qword_27CC17E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17E98);
  }

  return result;
}

void sub_21923BAF4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  v1 = sub_219BE7174();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootViewController];

    if (v3)
    {
      v4 = sub_219BF6534();

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        [v4 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

void sub_21923BBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_218760638();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v12 = sub_219BE7174();
  if (v12 && (v13 = v12, v14 = [v12 rootViewController], v13, v14))
  {
    v15 = sub_219BF6534();

    v16 = sub_219BF5BF4();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_21923CC10(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;
    v18[5] = a2;
    sub_21923CC74(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;

    sub_218AB3D80(0, 0, v11, &unk_219C68720, v18);
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v19 = sub_219BE5434();
    __swift_project_value_buffer(v19, qword_280F625E0);
    v24 = sub_219BE5414();
    v20 = sub_219BF61F4();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2186C1000, v24, v20, "PuzzleGameCenterOpenLeaderboardCommandHandler: Couldn't get presenter", v21, 2u);
      MEMORY[0x21CECF960](v21, -1, -1);
    }

    v22 = v24;
  }
}

void sub_21923BEDC()
{
  sub_218760638();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  v4 = sub_219BE7174();
  if (v4 && (v5 = v4, v6 = [v4 rootViewController], v5, v6))
  {
    v7 = sub_219BF6534();

    v8 = sub_219BF5BF4();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_219BF5BD4();
    v9 = v7;
    v10 = sub_219BF5BC4();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_218AB3D80(0, 0, v3, &unk_219C68730, v11);
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F625E0);
    v18 = sub_219BE5414();
    v14 = sub_219BF61F4();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2186C1000, v18, v14, "PuzzleGameCenterOpenLeaderboardCommandHandler: Couldn't get presenter", v15, 2u);
      MEMORY[0x21CECF960](v15, -1, -1);
    }

    v16 = v18;
  }
}

uint64_t sub_21923C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_219BF5BD4();
  *(v4 + 24) = sub_219BF5BC4();
  v6 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21923C1C0, v6, v5);
}

uint64_t sub_21923C1C0()
{

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzleGameCenterOpenLeaderboardCommandHandler: will present GC privacy alert", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_21923D0CC();
  sub_219BEA744();
  swift_allocObject();
  sub_219BEA6C4();
  sub_219BEA6F4();

  sub_219BEA6D4();

  v5 = *(v0 + 8);

  return v5();
}

id sub_21923C354()
{
  v0 = objc_opt_self();

  return [v0 openNewsSettings];
}

uint64_t sub_21923C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21923C3B0, 0, 0);
}

uint64_t sub_21923C3B0()
{
  v1 = v0[2];
  v0[6] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[7] = v2;
  ObjectType = swift_getObjectType();
  v0[8] = ObjectType;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21923C474;

  return MEMORY[0x2821930E0](ObjectType, v2);
}

uint64_t sub_21923C474(char a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_21923C574, 0, 0);
}

uint64_t sub_21923C574()
{
  if (*(v0 + 88))
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F625E0);
    v2 = sub_219BE5414();
    v3 = sub_219BF61F4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2186C1000, v2, v3, "PuzzleGameCenterOpenLeaderboardCommandHandler: already presenting Game Center dashboard, skipping presentation...", v4, 2u);
      MEMORY[0x21CECF960](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_21923CE10(*(v0 + 24));
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_21923C714;
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 40);
    v11 = *(v0 + 32);

    return MEMORY[0x2821930E8](v11, v10, v8, v9);
  }
}

uint64_t sub_21923C714()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_21923C814()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21923C8DC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21923C9A4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21923CA74()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void sub_21923CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21923BAF4();
  swift_getObjectType();
  if (sub_219BF3D24())
  {
    sub_21923BBD0(a4, a5);
  }

  else
  {
    sub_21923BEDC();
  }
}

uint64_t sub_21923CBA8()
{
  sub_219BE0A74();
  sub_21923CFC0();
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

uint64_t sub_21923CC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21923CC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21923CCD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2187608D4;

  return sub_21923C38C(a1, v7, v8, v9, v10, v1 + v6, v11);
}

void sub_21923CE10(uint64_t a1)
{
  if (a1 && (sub_219BE82E4(), sub_21923CF5C(), sub_219BDD274(), (swift_dynamicCast() & 1) != 0))
  {
    sub_219BDD154();
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F625E0);
    v2 = sub_219BE5414();
    v3 = sub_219BF61F4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2186C1000, v2, v3, "PuzzleGameCenterOpenLeaderboardCommandHandler: No available tracker", v4, 2u);
      MEMORY[0x21CECF960](v4, -1, -1);
    }
  }
}

unint64_t sub_21923CF5C()
{
  result = qword_280EE5AE0;
  if (!qword_280EE5AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5AE0);
  }

  return result;
}

unint64_t sub_21923CFC0()
{
  result = qword_27CC17EA0;
  if (!qword_27CC17EA0)
  {
    sub_219BE0A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EA0);
  }

  return result;
}

uint64_t sub_21923D018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21923C128(a1, v4, v5, v6);
}

unint64_t sub_21923D0CC()
{
  result = qword_27CC17EA8;
  if (!qword_27CC17EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EA8);
  }

  return result;
}

uint64_t sub_21923D130(uint64_t a1)
{
  sub_21923DAD0(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = v3;
  v5 = *(v3 - 8);
  v25 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - v6;
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE22F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + 32);
  sub_219BE2594();
  sub_219BE22A4();
  (*(v12 + 8))(v14, v11);
  v15 = sub_219BDB854();
  (*(v8 + 8))(v10, v7);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v23;
  (*(v5 + 16))(v23, a1, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v5 + 32))(v19 + v18, v17, v4);
  aBlock[4] = sub_21923DA1C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21923D780;
  aBlock[3] = &block_descriptor_106;
  v20 = _Block_copy(aBlock);

  [v24 resolveURL:v15 withQualityOfService:25 completion:v20];
  _Block_release(v20);

  return 0;
}

uint64_t sub_21923D4A0(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_21923DAD0(0, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  sub_21923DAD0(0, &unk_280EE9D00, MEMORY[0x277CC9260], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_weakLoadStrong())
    {
      sub_2188383F8(a1, v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        return sub_2187BC758(v8, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }

      else
      {
        (*(v10 + 32))(v12, v8, v9);
        sub_219BE2554();
        sub_219BE2544();
        sub_219BE25C4();

        sub_2187BC758(v5, &qword_280EE59D8, MEMORY[0x277D6D700]);
        return (*(v10 + 8))(v12, v9);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21923D780(uint64_t a1, uint64_t a2, void *a3)
{
  sub_21923DAD0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_219BDB8B4();
    v10 = sub_219BDB954();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_219BDB954();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_2187BC758(v8, &unk_280EE9D00, MEMORY[0x277CC9260]);
}

uint64_t sub_21923D904()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_21923D970(uint64_t a1)
{
  sub_21923D130(a1);
  sub_21874D974();
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_21923D9C8()
{
  result = qword_280EB6000[0];
  if (!qword_280EB6000[0])
  {
    type metadata accessor for UnrecognizedURLRetryHandler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB6000);
  }

  return result;
}

uint64_t sub_21923DA1C(uint64_t a1)
{
  sub_21923DAD0(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);

  return sub_21923D4A0(a1);
}

void sub_21923DAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21923DB34()
{
  v1 = v0;
  v2 = sub_219BE4CF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE4DD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D34AB0])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = sub_21923DF1C();
    v18 = 2831206;
    v19 = 0xE300000000000000;
    MEMORY[0x21CECC330](v11);

    v12 = v18;
    (*(v3 + 8))(v5, v2);
    return v12;
  }

  if (v10 == *MEMORY[0x277D34AB8])
  {
    (*(v7 + 8))(v9, v6);
    return 12390;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_219BF7484();
  v16 = v18;
  v15 = v19;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_2186FC3BC();
  *(v14 + 32) = v16;
  *(v14 + 40) = v15;

  sub_219BE5314();

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000050, 0x8000000219D12ED0);
  sub_219BF7484();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21923DF1C()
{
  v1 = sub_219BE4CE4();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE4CC4();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE4CA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE4CF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 16);
  v25 = v0;
  v15(v14, v0, v11);
  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == *MEMORY[0x277D34A48])
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    v17 = sub_219BE4C94();
    (*(v8 + 8))(v10, v7);
    return v17;
  }

  if (v16 == *MEMORY[0x277D34A18])
  {
    (*(v12 + 96))(v14, v11);
    v18 = v26;
    (*(v26 + 32))(v6, v14, v4);
    sub_2192402A8();
    v17 = 0xD000000000000017;
    (*(v18 + 8))(v6, v4);
    return v17;
  }

  if (v16 == *MEMORY[0x277D34A40])
  {
    (*(v12 + 96))(v14, v11);
    v20 = v27;
    v19 = v28;
    (*(v27 + 32))(v3, v14, v28);
    sub_2192406C0();
    (*(v20 + 8))(v3, v19);
    return 0xD000000000000017;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_219BF7484();
  v23 = v31;
  v24 = v32;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2186FC3BC();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;

  sub_219BE5314();

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000004BLL, 0x8000000219D12F90);
  sub_219BF7484();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21923E494(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_219BE4A14();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = v42 - v6;
  sub_2186E819C(0, &qword_27CC0C308, MEMORY[0x277D34AA8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_219BE4DD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE4A54();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v48 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE4A64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 16);
  v42[1] = v2;
  v20(v19, v2, v16);
  v21 = (*(v17 + 88))(v19, v16);
  if (v21 == *MEMORY[0x277D34900])
  {
    return (*(v17 + 96))(v19, v16);
  }

  if (v21 != *MEMORY[0x277D348F8])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_219BF7484();
    v35 = v52;
    v34 = v53;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_2186FC3BC();
    *(v33 + 32) = v35;
    *(v33 + 40) = v34;

    sub_219BE5314();

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000055, 0x8000000219D13400);
    sub_219BF7484();
    goto LABEL_15;
  }

  (*(v17 + 96))(v19, v16);
  v23 = v48;
  v24 = v49;
  (*(v49 + 32))(v48, v19, v14);
  sub_219BE4A44();
  sub_219BE4A34();
  sub_2189D7594(v9, &v54);
  sub_2189D7C08(v9);
  v25 = *(v11 + 8);
  v25(v13, v10);
  if (v55)
  {
    sub_219BE4A44();
    v26 = sub_21923DB34();
    v27 = v23;
    v29 = v28;
    v25(v13, v10);
    sub_219241008();
    swift_allocError();
    *v30 = v26;
    v30[1] = v29;
    swift_willThrow();
    return (*(v24 + 8))(v27, v14);
  }

  else
  {
    v31 = v44;
    sub_219BE4A24();
    v32 = (*(v45 + 88))(v31, v46);
    if (v32 != *MEMORY[0x277D348E8] && v32 != *MEMORY[0x277D348D8] && v32 != *MEMORY[0x277D348F0] && v32 != *MEMORY[0x277D348E0])
    {
      while (1)
      {
        if (qword_280E8D830 != -1)
        {
          swift_once();
        }

        v56 = qword_280F61728;
        sub_219BF61F4();
        sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_219C09BA0;
        v52 = 0;
        v53 = 0xE000000000000000;
        v37 = v43;
        sub_219BE4A24();
        v38 = v46;
        sub_219BF7484();
        v39 = *(v45 + 8);
        v39(v37, v38);
        v41 = v52;
        v40 = v53;
        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = sub_2186FC3BC();
        *(v36 + 32) = v41;
        *(v36 + 40) = v40;

        sub_219BE5314();

        v50 = 0;
        v51 = 0xE000000000000000;
        sub_219BF7314();
        MEMORY[0x21CECC330](0xD000000000000062, 0x8000000219D134D0);
        sub_219BE4A24();
        sub_219BF7484();
        v39(v37, v38);
LABEL_15:
        sub_219BF7514();
        __break(1u);
      }
    }

    return (*(v49 + 8))(v23, v14);
  }
}

uint64_t sub_21923ED80()
{
  v1 = v0;
  v2 = sub_219BE4B64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = sub_21923EFD8;
  if (v6 == *MEMORY[0x277D34908])
  {
    return v7;
  }

  v7 = sub_21923EFE4;
  if (v6 == *MEMORY[0x277D34928])
  {
    return v7;
  }

  v7 = sub_21923F008;
  if (v6 == *MEMORY[0x277D34920])
  {
    return v7;
  }

  v7 = sub_21923EFF0;
  if (v6 == *MEMORY[0x277D34910])
  {
    return v7;
  }

  v7 = sub_21923EFFC;
  if (v6 == *MEMORY[0x277D34930])
  {
    return v7;
  }

  v7 = sub_21923F014;
  if (v6 == *MEMORY[0x277D34918])
  {
    return v7;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000059, 0x8000000219D13340);
  sub_219BF7484();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

BOOL sub_21923F020()
{
  sub_2186E819C(0, &qword_27CC0C308, MEMORY[0x277D34AA8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = sub_219BE4DD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE4E44();
  sub_219BE4E34();
  v7 = sub_2189D6B48(v2);
  v8 = sub_21923DB34();
  if (*(v7 + 16))
  {
    sub_21870F700(v8, v9);
    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  sub_2189D7C08(v2);
  (*(v4 + 8))(v6, v3);

  return ((v11 ^ sub_219BE4E24()) & 1) == 0;
}

uint64_t sub_21923F204(uint64_t a1)
{
  v77 = a1;
  v1 = sub_219BE4B64();
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x28223BE20](v1);
  v63 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BE4A64();
  v68 = *(v70 - 8);
  v3 = MEMORY[0x28223BE20](v70);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v59 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - v7;
  v9 = sub_219BE4E14();
  v69 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE4E54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE4E64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v72, v16);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == *MEMORY[0x277D34AC8])
  {
    v22 = *(v17 + 96);
    v21 = v17 + 96;
    v22(v19, v16);
    v23 = v69;
    (*(v69 + 32))(v11, v19, v9);
    sub_219BE4DF4();
    v24 = v71;
    sub_21923E494(v77);
    if (v24)
    {
      (*(v68 + 8))(v8, v70);
      (*(v23 + 8))(v11, v9);
    }

    else
    {
      v29 = v25;
      v71 = v9;
      v62 = v11;
      v68 = *(v68 + 8);
      (v68)(v8, v70);
      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      v72 = qword_280F61728;
      v61 = sub_219BF6214();
      sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v60 = v30;
      v31 = swift_allocObject();
      v59 = xmmword_219C09EC0;
      *(v31 + 16) = xmmword_219C09EC0;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_219BF5CB4();
      v32 = v75;
      v33 = v76;
      v34 = MEMORY[0x277D837D0];
      *(v31 + 56) = MEMORY[0x277D837D0];
      v35 = sub_2186FC3BC();
      *(v31 + 64) = v35;
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;
      v75 = 0;
      v76 = 0xE000000000000000;
      v36 = v67;
      sub_219BE4DF4();
      v37 = v70;
      sub_219BF7484();
      v38 = v68;
      (v68)(v36, v37);
      v39 = v75;
      v40 = v76;
      *(v31 + 96) = v34;
      *(v31 + 104) = v35;
      v41 = v35;
      *(v31 + 72) = v39;
      *(v31 + 80) = v40;
      sub_219BE5314();

      v42 = v66;
      sub_219BE4E04();
      sub_21923E494(v77);
      v43 = v37;
      v45 = v44;
      v38(v42, v37);
      LODWORD(v77) = sub_219BF6214();
      v46 = swift_allocObject();
      *(v46 + 16) = v59;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_219BF5CB4();
      v47 = v75;
      v48 = v76;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = v41;
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;
      v75 = 0;
      v76 = 0xE000000000000000;
      v49 = v62;
      sub_219BE4E04();
      sub_219BF7484();
      v38(v36, v43);
      v50 = v75;
      v51 = v76;
      *(v46 + 96) = MEMORY[0x277D837D0];
      *(v46 + 104) = v41;
      *(v46 + 72) = v50;
      *(v46 + 80) = v51;
      sub_219BE5314();

      v52 = v63;
      sub_219BE4DE4();
      v53 = v49;
      v54 = sub_21923ED80();
      (*(v64 + 8))(v52, v65);
      v21 = v54(v29, v45);
      (*(v69 + 8))(v53, v71);
    }

    return v21 & 1;
  }

  v26 = v71;
  if (v20 == *MEMORY[0x277D34AC0])
  {
    v27 = *(v17 + 96);
    v21 = v17 + 96;
    v27(v19, v16);
    (*(v13 + 32))(v15, v19, v12);
    v28 = sub_21923F020();
    if (!v26)
    {
      v21 = v28;
    }

    (*(v13 + 8))(v15, v12);
    return v21 & 1;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C09BA0;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_219BF7484();
  v58 = v75;
  v57 = v76;
  *(v56 + 56) = MEMORY[0x277D837D0];
  *(v56 + 64) = sub_2186FC3BC();
  *(v56 + 32) = v58;
  *(v56 + 40) = v57;

  sub_219BE5314();

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000020, 0x8000000219D12E00);
  sub_219BF7484();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21923FB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22[0] = a1;
  v22[1] = a2;
  v4 = sub_219BE4CF4();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE49C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_219BF7484();
  v12 = v25;
  v13 = v26;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_219BE5314();

  (*(v8 + 16))(v10, v3, v7);
  v14 = (*(v8 + 88))(v10, v7);
  if (v14 == *MEMORY[0x277D34888])
  {
    (*(v8 + 96))(v10, v7);
    v16 = v23;
    v15 = v24;
    (*(v23 + 32))(v6, v10, v24);
    v17 = sub_21923DF1C();
    v19 = sub_21923FF70(v17, v18);

    (*(v16 + 8))(v6, v15);
    return v19;
  }

  if (v14 == *MEMORY[0x277D34890])
  {
    v20 = swift_allocObject();
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    v25 = v20 | 0x4000000000000002;
    sub_21924105C();
    swift_allocObject();
    v19 = sub_219BE3014();
    (*(v8 + 8))(v10, v7);
    return v19;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21923FF70(uint64_t a1, uint64_t a2)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_219BE5314();

  v5 = off_282A4D750[0];
  type metadata accessor for TagService();
  v5();
  v6 = sub_219BE1C44();
  v7 = sub_219BE2F74();

  return v7;
}

double sub_219240104@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = TagModel.description.getter();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_219BE5314();

  v8 = *(v3 + 16);
  v9 = objc_allocWithZone(type metadata accessor for FeedViewContext());
  swift_unknownObjectRetain();
  v10 = [v9 init];
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  result = 0.0;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0;
  *(v11 + 96) = -1;
  *a2 = v11 | 0x2000000000000004;
  return result;
}

uint64_t sub_2192402A8()
{
  v1 = v0;
  v2 = sub_219BE4CC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D349E8] || v6 == *MEMORY[0x277D34A10] || v6 == *MEMORY[0x277D349C8] || v6 == *MEMORY[0x277D349C0] || v6 == *MEMORY[0x277D349D8] || v6 == *MEMORY[0x277D34A00] || v6 == *MEMORY[0x277D349B8] || v6 == *MEMORY[0x277D349B0] || v6 == *MEMORY[0x277D34A08] || v6 == *MEMORY[0x277D349D0] || v6 == *MEMORY[0x277D349E0] || v6 == *MEMORY[0x277D349F8] || v6 == *MEMORY[0x277D349F0])
  {
    return 0xD000000000000017;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = sub_219BE4CB4();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;

  sub_219BE5314();

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000004ALL, 0x8000000219D13040);
  v12 = sub_219BE4CB4();
  MEMORY[0x21CECC330](v12);

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2192406C0()
{
  v1 = v0;
  v2 = sub_219BE4CE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D34A28] || v6 == *MEMORY[0x277D34A20] || v6 == *MEMORY[0x277D34A30] || v6 == *MEMORY[0x277D34A38])
  {
    return 0xD000000000000017;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = sub_219BE4CD4();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;

  sub_219BE5314();

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000004FLL, 0x8000000219D13290);
  v12 = sub_219BE4CD4();
  MEMORY[0x21CECC330](v12);

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2192409B8(void *a1, uint64_t a2)
{
  v4 = sub_219BE4C14();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE4CF4();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_219BE4BF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE4C24();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 16);
  v47 = a2;
  v20(v19, a2, v16);
  v21 = (*(v17 + 88))(v19, v16);
  if (v21 == *MEMORY[0x277D34988])
  {
    (*(v17 + 96))(v19, v16);
    (*(v13 + 32))(v15, v19, v12);
    v22 = [a1 topicIDs];
    if (v22)
    {
      v23 = v22;
      v24 = sub_219BF5924();

      MEMORY[0x21CEBB980]();
      v25 = sub_21923DF1C();
      v27 = v26;
      v28 = (*(v50 + 8))(v11, v51);
      v52 = v25;
      v53 = v27;
      MEMORY[0x28223BE20](v28);
      *(&v45 - 2) = &v52;
      v29 = sub_2186D128C(sub_2186D1338, (&v45 - 4), v24);

      (*(v13 + 8))(v15, v12);

      return v29 & 1;
    }

    (*(v13 + 8))(v15, v12);
LABEL_17:
    v29 = 0;
    return v29 & 1;
  }

  if (v21 != *MEMORY[0x277D34990])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186E819C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09BA0;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_219BF7484();
    v39 = v52;
    v40 = v53;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_2186FC3BC();
    *(v38 + 32) = v39;
    *(v38 + 40) = v40;
    sub_219BE5314();

    (*(v17 + 8))(v19, v16);
    goto LABEL_17;
  }

  (*(v17 + 96))(v19, v16);
  v31 = v48;
  v30 = v49;
  v32 = v46;
  (*(v48 + 32))(v46, v19, v49);
  v33 = [a1 publisherID];
  if (v33)
  {
    v34 = v33;
    v35 = sub_219BF5414();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  MEMORY[0x21CEBB9A0]();
  v41 = sub_21923DF1C();
  v43 = v42;
  (*(v50 + 8))(v9, v51);
  if (!v37)
  {
    (*(v31 + 8))(v32, v30);

    goto LABEL_17;
  }

  if (v35 == v41 && v37 == v43)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_219BF78F4();
  }

  (*(v31 + 8))(v32, v30);
  return v29 & 1;
}

unint64_t sub_219241008()
{
  result = qword_27CC17EB0;
  if (!qword_27CC17EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EB0);
  }

  return result;
}

void sub_21924105C()
{
  if (!qword_27CC17EB8)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17EB8);
    }
  }
}

unint64_t sub_2192410F8()
{
  result = qword_27CC17EC0;
  if (!qword_27CC17EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EC0);
  }

  return result;
}

unint64_t sub_219241150()
{
  result = qword_27CC17EC8;
  if (!qword_27CC17EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EC8);
  }

  return result;
}

unint64_t sub_2192411A8()
{
  result = qword_27CC17ED0;
  if (!qword_27CC17ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17ED0);
  }

  return result;
}

unint64_t sub_219241200()
{
  result = qword_27CC17ED8;
  if (!qword_27CC17ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17ED8);
  }

  return result;
}

unint64_t sub_21924126C()
{
  result = qword_280ECA618;
  if (!qword_280ECA618)
  {
    type metadata accessor for OfflineContentRequest.Source(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA618);
  }

  return result;
}

uint64_t sub_2192412C8()
{
  v1 = type metadata accessor for OfflineContentRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189506A8(v0, v3, type metadata accessor for OfflineContentRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v5 = *(v3 + 2);
  if (EnumCaseMultiPayload <= 1)
  {
    v6 = &unk_280E8F880;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = &qword_280E8F8B0;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = &unk_280E8F8A0;
  }

  else
  {
    v6 = &unk_280E8F890;
  }

  sub_21872E994(0, v6);
  sub_219242288(&v3[*(v7 + 64)], type metadata accessor for OfflineContentRequest.Source);
  return v5;
}

uint64_t sub_21924140C()
{
  v1 = type metadata accessor for OfflineContentRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189506A8(v0, v3, type metadata accessor for OfflineContentRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_280E8F8B0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v6 = &unk_280E8F8A0;
    }

    else
    {
      v6 = &unk_280E8F890;
    }

    goto LABEL_9;
  }

  v6 = &unk_280E8F880;
  if (!EnumCaseMultiPayload)
  {
LABEL_9:
    sub_21872E994(0, v6);
    v11 = v3 + *(v12 + 64);
    goto LABEL_10;
  }

  sub_21872E994(0, &unk_280E8F880);
  v8 = v3 + *(v7 + 64);
  v9 = sub_219BF53D4();

  v10 = NDAudioContentIDFromArticleID();

  v5 = sub_219BF5414();
  v11 = v8;
LABEL_10:
  sub_219242288(v11, type metadata accessor for OfflineContentRequest.Source);
  return v5;
}

uint64_t sub_2192415B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfflineContentRequest.Source(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192422E8(0, &qword_27CC17EE8, type metadata accessor for OfflineContentRequest.Source);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_2189506A8(a1, &v20 - v12, type metadata accessor for OfflineContentRequest.Source);
  sub_2189506A8(a2, &v13[v15], type metadata accessor for OfflineContentRequest.Source);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2189506A8(v13, v10, type metadata accessor for OfflineContentRequest.Source);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_219BDBC94();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_219242288(v13, type metadata accessor for OfflineContentRequest.Source);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_219242348(v13, &qword_27CC17EE8, type metadata accessor for OfflineContentRequest.Source);
    v17 = 0;
    return v17 & 1;
  }

  sub_219242288(v13, type metadata accessor for OfflineContentRequest.Source);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_2192418AC(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v117 = a2;
  v2 = type metadata accessor for OfflineContentRequest.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v106 - v5;
  MEMORY[0x28223BE20](v6);
  v109 = &v106 - v7;
  MEMORY[0x28223BE20](v8);
  v110 = &v106 - v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v106 - v11;
  MEMORY[0x28223BE20](v12);
  v108 = &v106 - v13;
  MEMORY[0x28223BE20](v14);
  v115 = &v106 - v15;
  MEMORY[0x28223BE20](v16);
  v114 = &v106 - v17;
  MEMORY[0x28223BE20](v18);
  v113 = &v106 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v106 - v21;
  v23 = type metadata accessor for OfflineContentRequest(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v28 = (&v106 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v106 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v106 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = (&v106 - v36);
  sub_2192422E8(0, &qword_27CC17EE0, type metadata accessor for OfflineContentRequest);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v106 - v39;
  v42 = &v106 + *(v41 + 56) - v39;
  sub_2189506A8(v116, &v106 - v39, type metadata accessor for OfflineContentRequest);
  v116 = v42;
  sub_2189506A8(v117, v42, type metadata accessor for OfflineContentRequest);
  v117 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v60 = v113;
    v61 = v114;
    v62 = v115;
    if (!EnumCaseMultiPayload)
    {
      sub_2189506A8(v40, v37, type metadata accessor for OfflineContentRequest);
      v63 = *v37;
      v64 = v37[1];
      v65 = v37[2];
      sub_21872E994(0, &unk_280E8F880);
      v67 = *(v66 + 64);
      v50 = v37 + v67;
      v68 = v116;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_25;
      }

      v112 = v40;
      v95 = *v68;
      v96 = v68[1];
      v117 = v68[2];
      sub_219242224(v50, v22);
      sub_219242224(v68 + v67, v60);
      if (v63 == v95 && v64 == v96)
      {
      }

      else
      {
        v104 = sub_219BF78F4();

        if ((v104 & 1) == 0)
        {
LABEL_42:
          sub_219242288(v60, type metadata accessor for OfflineContentRequest.Source);
          v103 = v22;
          goto LABEL_43;
        }
      }

      if (v65 == v117)
      {
        v98 = sub_2192415B8(v22, v60);
        sub_219242288(v60, type metadata accessor for OfflineContentRequest.Source);
        v102 = v22;
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    v112 = v40;
    sub_2189506A8(v40, v34, type metadata accessor for OfflineContentRequest);
    v84 = *v34;
    v83 = v34[1];
    v85 = v34[2];
    sub_21872E994(0, &unk_280E8F880);
    v87 = *(v86 + 64);
    v50 = v34 + v87;
    v88 = v116;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = v112;
      goto LABEL_25;
    }

    v89 = v83;
    v91 = *v88;
    v90 = v88[1];
    v117 = v88[2];
    sub_219242224(v50, v61);
    v92 = v88 + v87;
    v93 = v62;
    sub_219242224(v92, v62);
    if (v84 == v91 && v89 == v90)
    {
    }

    else
    {
      v101 = sub_219BF78F4();

      if ((v101 & 1) == 0)
      {
LABEL_36:
        sub_219242288(v93, type metadata accessor for OfflineContentRequest.Source);
        v103 = v61;
LABEL_43:
        sub_219242288(v103, type metadata accessor for OfflineContentRequest.Source);
        v100 = v112;
        goto LABEL_44;
      }
    }

    if (v85 == v117)
    {
      v98 = sub_2192415B8(v61, v93);
      sub_219242288(v93, type metadata accessor for OfflineContentRequest.Source);
      v102 = v61;
LABEL_40:
      sub_219242288(v102, type metadata accessor for OfflineContentRequest.Source);
      v99 = v112;
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v44 = v116;
    if (EnumCaseMultiPayload == 3)
    {
      sub_2189506A8(v40, v28, type metadata accessor for OfflineContentRequest);
      v45 = *v28;
      v46 = v28[1];
      v47 = v28[2];
      sub_21872E994(0, &unk_280E8F8A0);
      v49 = *(v48 + 64);
      v50 = v28 + v49;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v51 = v40;
        v52 = v46;
        v54 = *v44;
        v53 = v44[1];
        v55 = v44[2];
        v56 = v50;
        v57 = v110;
        sub_219242224(v56, v110);
        v58 = v44 + v49;
        v59 = v109;
        goto LABEL_11;
      }
    }

    else
    {
      sub_2189506A8(v40, v25, type metadata accessor for OfflineContentRequest);
      v74 = *v25;
      v75 = v25[1];
      v47 = v25[2];
      sub_21872E994(0, &unk_280E8F890);
      v77 = *(v76 + 64);
      v50 = v25 + v77;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v51 = v40;
        v78 = v75;
        v80 = *v44;
        v79 = v44[1];
        v55 = v44[2];
        v81 = v50;
        v57 = v112;
        sub_219242224(v81, v112);
        v82 = v44 + v77;
        v59 = v111;
        sub_219242224(v82, v111);
        if (v74 == v80 && v78 == v79)
        {
          goto LABEL_17;
        }

        v97 = sub_219BF78F4();

        if ((v97 & 1) == 0)
        {
LABEL_32:
          sub_219242288(v59, type metadata accessor for OfflineContentRequest.Source);
          sub_219242288(v57, type metadata accessor for OfflineContentRequest.Source);
          v100 = v51;
LABEL_44:
          sub_219242288(v100, type metadata accessor for OfflineContentRequest);
          goto LABEL_45;
        }

        goto LABEL_30;
      }
    }

LABEL_25:
    sub_219242288(v50, type metadata accessor for OfflineContentRequest.Source);

    sub_219242348(v40, &qword_27CC17EE0, type metadata accessor for OfflineContentRequest);
LABEL_45:
    v98 = 0;
    return v98 & 1;
  }

  sub_2189506A8(v40, v31, type metadata accessor for OfflineContentRequest);
  v45 = *v31;
  v69 = v31[1];
  v47 = v31[2];
  sub_21872E994(0, &qword_280E8F8B0);
  v71 = *(v70 + 64);
  v50 = v31 + v71;
  v72 = v116;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_25;
  }

  v51 = v40;
  v52 = v69;
  v54 = *v72;
  v53 = v72[1];
  v55 = v72[2];
  v73 = v50;
  v57 = v108;
  sub_219242224(v73, v108);
  v58 = v72 + v71;
  v59 = v107;
LABEL_11:
  sub_219242224(v58, v59);
  if (v45 == v54 && v52 == v53)
  {
LABEL_17:

    goto LABEL_30;
  }

  v94 = sub_219BF78F4();

  if ((v94 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (v47 != v55)
  {
    goto LABEL_32;
  }

  v98 = sub_2192415B8(v57, v59);
  sub_219242288(v59, type metadata accessor for OfflineContentRequest.Source);
  sub_219242288(v57, type metadata accessor for OfflineContentRequest.Source);
  v99 = v51;
LABEL_41:
  sub_219242288(v99, type metadata accessor for OfflineContentRequest);
  return v98 & 1;
}

uint64_t sub_219242224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineContentRequest.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219242288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2192422E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219242348(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2192422E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2192423A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_2192422E8(0, &qword_27CC17EE8, type metadata accessor for OfflineContentRequest.Source);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_2189506A8(a1, &v22 - v13, type metadata accessor for OfflineContentRequest.Source);
  sub_2189506A8(a2, &v14[v15], type metadata accessor for OfflineContentRequest.Source);
  v16 = *(v5 + 48);
  LODWORD(a2) = v16(v14, 1, v4);
  v17 = v16(&v14[v15], 1, v4);
  if (a2 == 1)
  {
    if (v17 != 1)
    {
      sub_219242288(&v14[v15], type metadata accessor for OfflineContentRequest.Source);
    }

    v18 = 0;
  }

  else if (v17 == 1)
  {
    (*(v5 + 8))(v14, v4);
    v18 = 1;
  }

  else
  {
    v19 = *(v5 + 32);
    v19(v10, v14, v4);
    v19(v8, &v14[v15], v4);
    v18 = sub_219BDBC14();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
  }

  return v18 & 1;
}

uint64_t sub_21924261C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v105 = a3;
  v106 = a2;
  v7 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  v118 = *(v107 - 8);
  v10 = MEMORY[0x28223BE20](v107);
  v116 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v121 = (&v102 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v102 - v15);
  MEMORY[0x28223BE20](v14);
  v109 = &v102 - v17;
  sub_2186DDAC4(0, &qword_280E9BA40, sub_2192451FC);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v114 = &v102 - v22;
  v23 = type metadata accessor for EngagementUpsellTriggerState(0);
  v120 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v112 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v117 = &v102 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v104 = (&v102 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v122 = &v102 - v31;
  MEMORY[0x28223BE20](v30);
  v110 = &v102 - v32;
  sub_2186DDAC4(0, qword_280EB46F0, type metadata accessor for EngagementUpsellTriggerState);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v102 - v34;
  v36 = *v4;
  v37 = *(*v4 + 16);
  v119 = a1;
  v103 = a4;
  v102 = v9;
  v115 = v21;
  if (v37 && (v38 = sub_2187A9070(a1), (v39 & 1) != 0))
  {
    v40 = v120;
    sub_2187A7970(*(v36 + 56) + *(v120 + 72) * v38, v35, type metadata accessor for EngagementUpsellTriggerState);
    (*(v40 + 56))(v35, 0, 1, v23);
    sub_2187106CC(v35, qword_280EB46F0, type metadata accessor for EngagementUpsellTriggerState);
    v41 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v120 + 56))(v35, 1, 1, v23);
    sub_2187106CC(v35, qword_280EB46F0, type metadata accessor for EngagementUpsellTriggerState);
    v42 = v110;
    sub_2187A7970(v106, v110, type metadata accessor for EngagementUpsellTriggerState);
    v43 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v43;
    sub_21948C544(v42, a1, isUniquelyReferenced_nonNull_native);
    v41 = v125;
  }

  v45 = v36 + 64;
  v46 = 1 << *(v36 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v36 + 64);
  v49 = v36;
  v50 = (v46 + 63) >> 6;
  v111 = v49;

  v51 = 0;
  v108 = v16;
  v113 = v45;
  while (v48)
  {
    v53 = v51;
LABEL_21:
    v56 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v57 = v56 | (v53 << 6);
    v58 = v111;
    v59 = v109;
    sub_2187A7970(*(v111 + 48) + *(v118 + 72) * v57, v109, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    v60 = *(v58 + 56) + *(v120 + 72) * v57;
    v61 = v110;
    sub_2187A7970(v60, v110, type metadata accessor for EngagementUpsellTriggerState);
    sub_2192451FC();
    v63 = v62;
    v64 = *(v62 + 48);
    v65 = v59;
    v66 = v115;
    sub_219245270(v65, v115, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    sub_219245270(v61, v66 + v64, type metadata accessor for EngagementUpsellTriggerState);
    (*(*(v63 - 8) + 56))(v66, 0, 1, v63);
    v16 = v108;
LABEL_22:
    v67 = v66;
    v68 = v114;
    sub_21870EC50(v67, v114, &qword_280E9BA40, sub_2192451FC);
    sub_2192451FC();
    if ((*(*(v63 - 8) + 48))(v68, 1, v63) == 1)
    {

      sub_219BE1AD4();
      sub_219BE1B04();
      swift_allocObject();
      result = sub_219BE1AF4();
      v101 = v103;
      *v103 = v41;
      v101[1] = result;
      return result;
    }

    v69 = *(v63 + 48);
    sub_219245270(v68, v16, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    sub_219245270(v68 + v69, v122, type metadata accessor for EngagementUpsellTriggerState);
    if ((*v16 != *v119 || v16[1] != v119[1]) && (sub_219BF78F4() & 1) == 0)
    {
LABEL_32:
      v73 = v116;
      sub_2187A7970(v16, v116, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      sub_2187A7970(v122, v112, type metadata accessor for EngagementUpsellTriggerState);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v41;
      v75 = sub_2187A9070(v73);
      v77 = v41[2];
      v78 = (v76 & 1) == 0;
      v79 = __OFADD__(v77, v78);
      v80 = v77 + v78;
      if (v79)
      {
        goto LABEL_57;
      }

      v81 = v76;
      if (v41[3] < v80)
      {
        sub_21948040C(v80, v74);
        v75 = sub_2187A9070(v116);
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_60;
        }

        goto LABEL_48;
      }

      if (v74)
      {
LABEL_48:
        v41 = v125;
        if (v81)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v96 = v75;
        sub_2194918E0();
        v75 = v96;
        v41 = v125;
        if (v81)
        {
LABEL_49:
          sub_2192452D8(v112, v41[7] + *(v120 + 72) * v75);
          v52 = v116;
          goto LABEL_9;
        }
      }

      v41[(v75 >> 6) + 8] |= 1 << v75;
      v97 = v75;
      v98 = v116;
      sub_2187A7970(v116, v41[6] + *(v118 + 72) * v75, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      sub_219245270(v112, v41[7] + *(v120 + 72) * v97, type metadata accessor for EngagementUpsellTriggerState);
      sub_2187A79D8(v98, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      sub_2187A79D8(v122, type metadata accessor for EngagementUpsellTriggerState);
      v99 = v41[2];
      v79 = __OFADD__(v99, 1);
      v94 = v99 + 1;
      if (v79)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    sub_219BE3514();
    sub_2187A5098(&unk_280EE6680, MEMORY[0x277D31550]);
    v70 = v16;
    sub_219BF5874();
    sub_219BF5874();
    if (v125 == v123 && v126 == v124)
    {
    }

    else
    {
      v71 = sub_219BF78F4();

      if ((v71 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    sub_2187A7970(v16, v121, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    v72 = v104;
    if (v105)
    {
      sub_219243BC8(v106, v104);
    }

    else
    {
      sub_2187A7970(v106, v104, type metadata accessor for EngagementUpsellTriggerState);
    }

    sub_219245270(v72, v117, type metadata accessor for EngagementUpsellTriggerState);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v41;
    v85 = sub_2187A9070(v121);
    v86 = v41[2];
    v87 = (v84 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_56;
    }

    v89 = v84;
    if (v41[3] >= v88)
    {
      if ((v83 & 1) == 0)
      {
        sub_2194918E0();
      }
    }

    else
    {
      sub_21948040C(v88, v83);
      v90 = sub_2187A9070(v121);
      if ((v89 & 1) != (v91 & 1))
      {
        goto LABEL_60;
      }

      v85 = v90;
    }

    v16 = v70;
    v41 = v125;
    if (v89)
    {
      sub_2192452D8(v117, v125[7] + *(v120 + 72) * v85);
      v52 = v121;
LABEL_9:
      sub_2187A79D8(v52, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      sub_2187A79D8(v122, type metadata accessor for EngagementUpsellTriggerState);
      goto LABEL_10;
    }

    v125[(v85 >> 6) + 8] |= 1 << v85;
    v92 = v121;
    sub_2187A7970(v121, v41[6] + *(v118 + 72) * v85, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    sub_219245270(v117, v41[7] + *(v120 + 72) * v85, type metadata accessor for EngagementUpsellTriggerState);
    sub_2187A79D8(v92, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    sub_2187A79D8(v122, type metadata accessor for EngagementUpsellTriggerState);
    v93 = v41[2];
    v79 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v79)
    {
      goto LABEL_58;
    }

LABEL_53:
    v41[2] = v94;
LABEL_10:
    v45 = v113;
    sub_2187A79D8(v16, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
  }

  if (v50 <= v51 + 1)
  {
    v54 = v51 + 1;
  }

  else
  {
    v54 = v50;
  }

  v55 = v54 - 1;
  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      sub_2192451FC();
      v63 = v95;
      v66 = v115;
      (*(*(v95 - 8) + 56))(v115, 1, 1, v95);
      v48 = 0;
      v51 = v55;
      goto LABEL_22;
    }

    v48 = *(v45 + 8 * v53);
    ++v51;
    if (v48)
    {
      v51 = v53;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2192432B0(void *a1)
{
  sub_2187A4BE4(0, &qword_280E8C458, sub_2187A80B4, &type metadata for EngagementUpsellTriggerState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A80B4();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF7824();
  if (!v1)
  {
    type metadata accessor for EngagementUpsellTriggerState(0);
    v13 = 1;
    sub_219BDBD34();
    sub_2187A5098(&qword_280EE9CA0, MEMORY[0x277CC9578]);
    sub_219BF77E4();
    v12 = 2;
    sub_219BF77E4();
    v11 = 3;
    sub_219BF77E4();
    v10 = 4;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219243534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2192453A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21924355C(uint64_t a1)
{
  v2 = sub_2187A80B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219243598(uint64_t a1)
{
  v2 = sub_2187A80B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2192435EC()
{
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219D13680);
  v40 = *v0;
  v17 = sub_219BF7894();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](0xD00000000000001BLL, 0x8000000219D136B0);
  v18 = type metadata accessor for EngagementUpsellTriggerState(0);
  v38 = v0;
  v39 = v18;
  sub_2187D96F4(v0 + *(v18 + 20), v8);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    sub_219BDBBB4();
    if (v19(v8, 1, v9) != 1)
    {
      sub_2187106CC(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
  }

  sub_2187A5098(&qword_280EE9C60, MEMORY[0x277CC9578]);
  v20 = sub_219BF7894();
  MEMORY[0x21CECC330](v20);

  v21 = v10;
  v22 = *(v10 + 8);
  v22(v16, v9);
  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219D136D0);
  v23 = v38;
  sub_2187D96F4(v38 + v39[6], v6);
  v24 = v19(v6, 1, v9);
  v34 = v21;
  if (v24 == 1)
  {
    v25 = v35;
    sub_219BDBBB4();
    if (v19(v6, 1, v9) != 1)
    {
      sub_2187106CC(v6, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v26 = *(v21 + 32);
    v25 = v35;
    v26(v35, v6, v9);
  }

  v27 = sub_219BF7894();
  MEMORY[0x21CECC330](v27);

  v22(v25, v9);
  MEMORY[0x21CECC330](0xD00000000000001BLL, 0x8000000219D136F0);
  v28 = v37;
  sub_2187D96F4(v23 + v39[7], v37);
  if (v19(v28, 1, v9) == 1)
  {
    v29 = v36;
    sub_219BDBBB4();
    if (v19(v28, 1, v9) != 1)
    {
      sub_2187106CC(v28, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v29 = v36;
    (*(v34 + 32))(v36, v28, v9);
  }

  v30 = sub_219BF7894();
  MEMORY[0x21CECC330](v30);

  v22(v29, v9);
  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219D13710);
  v40 = *(v23 + v39[8]);
  v31 = sub_219BF7894();
  MEMORY[0x21CECC330](v31);

  return v41;
}

uint64_t sub_219243BC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v111 = a1;
  v104 = a2;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v97 = &v91 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v91 - v10;
  MEMORY[0x28223BE20](v9);
  v93 = &v91 - v11;
  v109 = MEMORY[0x277CC9578];
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v103 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v102 = &v91 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v91 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v101 = &v91 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v91 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v91 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v91 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v99 = &v91 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v92 = &v91 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v91 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v91 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v91 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v108 = &v91 - v41;
  MEMORY[0x28223BE20](v40);
  v107 = &v91 - v42;
  v43 = type metadata accessor for EngagementUpsellTriggerState(0);
  v44 = *(v43 + 24);
  v110 = v2;
  v45 = v2 + v44;
  v46 = v4;
  sub_2187D96F4(v45, v39);
  v47 = *(v4 + 48);
  v48 = v47(v39, 1, v3);
  v49 = v39;
  v50 = v43;
  sub_2187106CC(v49, &qword_280EE9C40, v109);
  v105 = v47;
  v106 = v4;
  v109 = v43;
  if (v48 != 1 || (sub_2187D96F4(v111 + *(v43 + 24), v36), v51 = 1, v52 = v47(v36, 1, v3), sub_2187106CC(v36, &qword_280EE9C40, MEMORY[0x277CC9578]), v58 = v52 == 1, v50 = v109, !v58))
  {
    sub_2187D96F4(v110 + v44, v33);
    if (v47(v33, 1, v3) == 1)
    {
      v53 = v93;
      sub_219BDBBB4();
      v54 = v47(v33, 1, v3);
      v55 = v92;
      if (v54 != 1)
      {
        sub_2187106CC(v33, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v53 = v93;
      (*(v4 + 32))(v93, v33, v3);
      v55 = v92;
    }

    sub_2187D96F4(v111 + *(v50 + 6), v55);
    if (v47(v55, 1, v3) == 1)
    {
      v56 = v94;
      sub_219BDBBB4();
      if (v47(v55, 1, v3) != 1)
      {
        sub_2187106CC(v55, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v56 = v94;
      (*(v4 + 32))(v94, v55, v3);
    }

    sub_2187A5098(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v57 = sub_219BF5344();
    v46 = v106;
    v58 = (v57 & 1) == 0;
    if (v57)
    {
      v59 = v53;
    }

    else
    {
      v59 = v56;
    }

    if (v58)
    {
      v56 = v53;
    }

    (*(v106 + 8))(v59, v3);
    (*(v46 + 32))(v107, v56, v3);
    v51 = 0;
    v47 = v105;
  }

  v60 = *(v46 + 56);
  v60(v107, v51, 1, v3);
  v61 = *(v50 + 7);
  v62 = v99;
  sub_2187D96F4(v110 + v61, v99);
  v63 = v47(v62, 1, v3);
  sub_2187106CC(v62, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v63 != 1 || (v64 = v91, sub_2187D96F4(v111 + *(v109 + 7), v91), v65 = v47(v64, 1, v3), sub_2187106CC(v64, &qword_280EE9C40, MEMORY[0x277CC9578]), v65 != 1))
  {
    v66 = v95;
    sub_2187D96F4(v110 + v61, v95);
    if (v47(v66, 1, v3) == 1)
    {
      v67 = v97;
      sub_219BDBBB4();
      v68 = v47(v66, 1, v3);
      v69 = v98;
      v70 = v96;
      if (v68 != 1)
      {
        sub_2187106CC(v66, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v67 = v97;
      (*(v46 + 32))(v97, v66, v3);
      v69 = v98;
      v70 = v96;
    }

    sub_2187D96F4(v111 + *(v109 + 7), v70);
    if (v47(v70, 1, v3) == 1)
    {
      sub_219BDBBB4();
      if (v47(v70, 1, v3) != 1)
      {
        sub_2187106CC(v70, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (*(v46 + 32))(v69, v70, v3);
    }

    sub_2187A5098(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v71 = sub_219BF5344();
    v46 = v106;
    v72 = (v71 & 1) == 0;
    if (v71)
    {
      v73 = v67;
    }

    else
    {
      v73 = v69;
    }

    if (v72)
    {
      v69 = v67;
    }

    (*(v106 + 8))(v73, v3);
    (*(v46 + 32))(v108, v69, v3);
    v63 = 0;
    v47 = v105;
  }

  v60(v108, v63, 1, v3);
  v74 = *v110;
  v75 = *v111;
  v76 = v109;
  v77 = v100;
  sub_2187D96F4(v110 + *(v109 + 5), v100);
  if (v47(v77, 1, v3) == 1)
  {
    v78 = v101;
    sub_2187D96F4(v111 + *(v76 + 5), v101);
    if (v47(v77, 1, v3) != 1)
    {
      sub_2187106CC(v77, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v79 = v77;
    v80 = v101;
    (*(v46 + 32))(v101, v79, v3);
    v60(v80, 0, 1, v3);
    v78 = v80;
  }

  if (v75 <= v74)
  {
    v75 = v74;
  }

  v81 = MEMORY[0x277CC9578];
  v82 = v102;
  sub_21870EC50(v107, v102, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v83 = v103;
  sub_21870EC50(v108, v103, &qword_280EE9C40, v81);
  v84 = v109;
  v85 = *(v109 + 8);
  v86 = *(v110 + v85);
  v87 = *(v111 + v85);
  if (v87 <= v86)
  {
    v88 = v86;
  }

  else
  {
    v88 = v87;
  }

  v89 = v104;
  *v104 = v75;
  sub_21870EC50(v78, v89 + v84[5], &qword_280EE9C40, v81);
  sub_21870EC50(v82, v89 + v84[6], &qword_280EE9C40, v81);
  result = sub_21870EC50(v83, v89 + v84[7], &qword_280EE9C40, v81);
  *(v89 + v84[8]) = v88;
  return result;
}

uint64_t sub_2192446A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5472656767697274 && a2 == 0xEB00000000657079;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_219244790(uint64_t a1)
{
  v2 = sub_2187A5F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192447CC(uint64_t a1)
{
  v2 = sub_2187A5F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellTriggerGroupStateKey.encode(to:)(void *a1)
{
  sub_2187A4BE4(0, &qword_280E8C268, sub_2187A5F7C, &type metadata for EngagementUpsellTriggerGroupStateKey.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A5F7C();
  sub_219BF7B44();
  v11 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
    v10 = 1;
    sub_219BE3514();
    sub_2187A5098(&unk_280EE66A8, MEMORY[0x277D31550]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EngagementUpsellTriggerGroupStateKey.hash(into:)()
{
  sub_219BF5524();
  type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550]);
  return sub_219BF52F4();
}

uint64_t EngagementUpsellTriggerGroupStateKey.hashValue.getter()
{
  sub_219BF7AA4();
  sub_219BF5524();
  type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_219244B44()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_219244BEC()
{
  sub_219BF5524();
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550]);
  return sub_219BF52F4();
}

uint64_t sub_219244C78()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219244CDC()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219244D28@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219244D94@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219244DEC(uint64_t a1)
{
  v2 = sub_2187A4C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219244E28(uint64_t a1)
{
  v2 = sub_2187A4C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellTriggerGroupState.encode(to:)(void *a1)
{
  sub_2187A4BE4(0, &qword_280E8C318, sub_2187A4C4C, &type metadata for EngagementUpsellTriggerGroupState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A4C4C();

  sub_219BF7B44();
  v10[3] = v8;
  sub_2187A4FA4();
  sub_219245014();
  sub_219BF7834();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219245014()
{
  result = qword_280E8FC38;
  if (!qword_280E8FC38)
  {
    sub_2187A4FA4();
    sub_2187A5098(&qword_280E9BA38, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    sub_2187A5098(&qword_280EB4748, type metadata accessor for EngagementUpsellTriggerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC38);
  }

  return result;
}

unint64_t sub_219245150()
{
  result = qword_27CC17EF0;
  if (!qword_27CC17EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EF0);
  }

  return result;
}

unint64_t sub_2192451A8()
{
  result = qword_27CC17EF8;
  if (!qword_27CC17EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EF8);
  }

  return result;
}

void sub_2192451FC()
{
  if (!qword_280E9BA48)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(255);
    type metadata accessor for EngagementUpsellTriggerState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E9BA48);
    }
  }
}

uint64_t sub_219245270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2192452D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellTriggerState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_219245350()
{
  result = qword_27CC17F00;
  if (!qword_27CC17F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17F00);
  }

  return result;
}

uint64_t sub_2192453A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D13730 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D13750 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D13770 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D13790 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

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