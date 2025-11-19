uint64_t sub_1D42E4940(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a2, v6);
  swift_beginAccess();
  sub_1D42DA90C(2, v9);
  swift_endAccess();
  v10(v9, a2, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  swift_beginAccess();
  sub_1D42DAC84(v5, v9);
  swift_endAccess();
  v10(v9, a2, v6);
  swift_beginAccess();
  sub_1D42DAAC8(0, 0, 1, v9);
  return swift_endAccess();
}

uint64_t sub_1D42E4B7C()
{

  return swift_deallocClassInstance();
}

BOOL sub_1D42E4BCC(void *a1)
{
  if ([a1 object])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1D41769C4(v15, &qword_1EC7C9720);
    return 0;
  }

  sub_1D41766C0(0, &qword_1EDE32440);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong styler];

      if (v3)
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        v5 = [v4 note];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 objectID];

          if (v7)
          {
            v8 = [v12 objectID];
            v9 = v7;
            v10 = [v8 isEqual_];

            swift_unknownObjectRelease();
            return (v10 & 1) != 0;
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

void sub_1D42E4DD4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a1) = sub_1D42E4BCC(v6);

  if (a1)
  {
    v7[OBJC_IVAR___OutlineController_isPerformingMerge] = a4;
  }
}

void sub_1D42E4E54(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = a1;
  if (!Strong)
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D441A8C4())
    {
      sub_1D42D6274(MEMORY[0x1E69E7CC0]);
      v5 = v10;
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CD0];
      if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    v8 = 0;
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v5 + 56);
    goto LABEL_13;
  }

  v3 = Strong;
  v4 = [Strong textLayoutManagers];

  sub_1D41766C0(0, &qword_1EC7C9858);
  sub_1D42ED504();
  v5 = sub_1D441A064();

  if ((v5 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1D441A874();
  sub_1D41766C0(0, &qword_1EC7C9858);
  sub_1D42ED504();
  sub_1D441A0A4();
  v5 = v28;
  v6 = v29;
  v7 = v30;
  v8 = v31;
  v9 = v32;
LABEL_13:
  v25 = v7;
  v14 = (v7 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_1D441A8F4() || (sub_1D41766C0(0, &qword_1EC7C9858), swift_dynamicCast(), v15 = v27, v18 = v8, v19 = v9, !v27))
    {
LABEL_29:
      sub_1D419FA48();
      v23 = [objc_opt_self() defaultCenter];
      v24 = sub_1D4419C14();
      [v23 postNotificationName:v24 object:v26];

      return;
    }

LABEL_25:
    v20 = [v15 textViewportLayoutController];
    v21 = [v20 viewportRange];
    if (v21)
    {
      v22 = v21;
      if (![v21 isEmpty])
      {
        [v20 setNeedsLayout];
      }

      v15 = v20;
    }

    else
    {
      v22 = v20;
    }

    v8 = v18;
    v9 = v19;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_21:
    v19 = (v17 - 1) & v17;
    v15 = *(*(v5 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_1D42E51C4(void *a1, void *a2, void *a3)
{
  v125 = a3;
  v5 = sub_1D4417494();
  v155 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v127 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v162 = v124 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v158 = v124 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v167 = v124 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v145 = v124 - v14;
  v143 = OBJC_IVAR___OutlineController__index;
  v151 = a1;

  sub_1D441A2E4();
  v152 = 0;

  v157 = aBlock;
  v146 = v171;
  v137 = v172;
  v138 = v170;
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1D417AEAC(MEMORY[0x1E69E7CC0]);
  v18 = sub_1D417AEAC(v16);
  v19 = sub_1D417B09C(v16);
  v15[2] = v17;
  v160 = v15 + 2;
  v15[3] = v18;
  v15[4] = v19;
  v20 = MEMORY[0x1E69E7CD0];
  v154 = v15;
  v15[5] = MEMORY[0x1E69E7CD0];
  v148 = v15 + 5;
  v150 = swift_allocObject();
  *(v150 + 16) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v153 = v22 + 16;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v166 = v23 + 16;
  v24 = swift_allocObject();
  v25 = v16;
  v26 = v24;
  *(v24 + 16) = sub_1D417B09C(v25);
  v165 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  v135 = (v27 + 16);
  v28 = [a2 string];
  if (!v28)
  {
    sub_1D4419C54();
    v28 = sub_1D4419C14();
  }

  v159 = v28;
  v29 = [a2 ic_range];
  v163 = v30;
  v164 = v29;
  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = v26;
  v31[4] = v27;
  v31[5] = v22;
  v149 = v23;
  v31[6] = v23;
  v31[7] = v21;
  v33 = v150;
  v32 = v151;
  v31[8] = v151;
  v31[9] = v33;
  v34 = v154;
  v31[10] = v154;
  v173 = sub_1D42ED590;
  v174 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v170 = 1107296256;
  v171 = sub_1D417C928;
  v172 = &block_descriptor_252;
  v35 = _Block_copy(&aBlock);
  v36 = a2;
  v37 = v35;
  v156 = v174;
  v38 = v36;

  v139 = v27;

  v141 = v22;

  v39 = v149;

  v142 = v21;

  v161 = v32;

  v40 = v159;
  [v159 ic:v164 enumerateParagraphsInRange:v163 usingBlock:v37];
  _Block_release(v37);

  swift_beginAccess();
  v140 = v26;
  v41 = *(v26 + 16);
  swift_beginAccess();
  v34[4] = v41;

  swift_beginAccess();
  v42 = *(v39 + 16);
  v43 = v34;
  if ((v42 & 1) == 0)
  {
    swift_beginAccess();
    swift_beginAccess();

    sub_1D4390CF0(v44);
    swift_endAccess();
  }

  if ((v161[OBJC_IVAR___OutlineController_isPerformingMerge] & 1) != 0 || !*(v157 + 16))
  {
  }

  else
  {
    v168 = MEMORY[0x1E69E7CD0];
    v45 = OBJC_IVAR___OutlineController__collapsedUUIDs;
    swift_beginAccess();
    v133 = v45;

    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
    v46 = v152;
    sub_1D441A2E4();
    v152 = v46;

    v48 = aBlock + 56;
    v47 = *(aBlock + 56);
    v136 = aBlock;
    v49 = 1 << *(aBlock + 32);
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v153 = v50 & v47;
    v124[1] = OBJC_IVAR___OutlineController_textStorage;
    swift_beginAccess();
    swift_beginAccess();
    v51 = 0;
    v52 = (v49 + 63) >> 6;
    v166 = v155 + 16;
    v129 = v48;
    v130 = v155 + 32;
    v164 = v155 + 8;
    v53 = v158;
    v54 = v167;
    v128 = v52;
    while (1)
    {
      v60 = v153;
      if (!v153)
      {
        break;
      }

      v61 = v43;
LABEL_21:
      v63 = v60;
      v64 = __clz(__rbit64(v60));
      v65 = *(v136 + 48);
      v66 = v155;
      v163 = *(v155 + 72);
      v67 = v145;
      v165 = *(v155 + 16);
      v165(v145, v65 + v163 * (v64 | (v51 << 6)), v5);
      (*(v66 + 32))(v54, v67, v5);
      swift_beginAccess();
      v68 = v61[3];
      if (*(v68 + 16) && (v69 = sub_1D417DAA4(v54), (v70 & 1) != 0))
      {
        v71 = (*(v68 + 56) + 16 * v69);
        v73 = *v71;
        v72 = v71[1];
        swift_endAccess();

        v74 = v72;
      }

      else
      {
        swift_endAccess();
        sub_1D417E7FC(MEMORY[0x1E69E7CC0]);
        v73 = v75;
      }

      v153 = (v63 - 1) & v63;
      v76 = *(v74 + 16);
      v77 = v164;
      v134 = v164 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v76)
      {
        v131 = v73;
        v78 = 0;
        v79 = v74 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
        v43 = v61;
        v144 = v74;
        v126 = v79;
        while (v78 < v76)
        {
          v80 = v43;
          v159 = v78;
          v165(v53, v79 + v78 * v163, v5);
          v81 = v157;
          if (*(v157 + 16) && (v82 = sub_1D417DAA4(v53), (v83 & 1) != 0))
          {
            v84 = (*(v81 + 56) + 16 * v82);
            v85 = *v84;
            v86 = v84[1];
          }

          else
          {
            sub_1D417E7FC(MEMORY[0x1E69E7CC0]);
            v85 = v87;
            v86 = v88;
          }

          v89 = v152;
          sub_1D441A2E4();
          v152 = v89;

          v147 = v85;
          v156 = v86;
          v90 = *(sub_1D418396C(v85, v86, aBlock) + 16);

          v43 = v80;
          if (!v90)
          {
            goto LABEL_55;
          }

          v91 = *v148;
          if (!*(*v148 + 16))
          {
            goto LABEL_55;
          }

          sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);

          v92 = sub_1D4419B84();
          v93 = -1 << *(v91 + 32);
          v94 = v92 & ~v93;
          if (((*(v91 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
          {
LABEL_54:

            v43 = v154;
            v54 = v167;
LABEL_55:
            Strong = swift_unknownObjectWeakLoadStrong();
            v53 = v158;
            if (!Strong || (v109 = Strong, v110 = [Strong alwaysEnumerateTrailingParagraph], v109, v110)) && (v111 = *v135, , v112 = sub_1D4190A40(v53, v111), , (v112))
            {

              v58 = *v164;
              (*v164)(v53, v5);
            }

            else
            {
              v55 = v127;
              v165(v127, v54, v5);
              v56 = v162;
              v57 = v55;
              v53 = v158;
              sub_1D417CFFC(v162, v57);

              v58 = *v164;
              v59 = v56;
              v54 = v167;
              (*v164)(v59, v5);
              v58(v53, v5);
            }

            v58(v54, v5);
            goto LABEL_14;
          }

          ++v159;
          v95 = ~v93;
          while (1)
          {
            v96 = v162;
            v165(v162, *(v91 + 48) + v94 * v163, v5);
            sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
            v97 = sub_1D4419BE4();
            v98 = *v164;
            (*v164)(v96, v5);
            if (v97)
            {
              break;
            }

            v94 = (v94 + 1) & v95;
            if (((*(v91 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          v43 = v154;
          v54 = v167;
          if (!*(v156 + 16))
          {
            goto LABEL_55;
          }

          swift_beginAccess();
          v99 = v43[4];
          if (*(v99 + 16))
          {
            v100 = v158;
            v101 = sub_1D417DAA4(v158);
            if (v102)
            {
              v103 = *(*(v99 + 56) + 8 * v101);
            }

            else
            {
              v103 = 0;
            }
          }

          else
          {
            v103 = 0;
            v100 = v158;
          }

          v104 = v146;
          swift_endAccess();
          if (v104[2] && (v105 = sub_1D417DAA4(v100), (v106 & 1) != 0))
          {
            v107 = *(v104[7] + 8 * v105) < v103;
            v54 = v167;
            if (v107)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v107 = v103 <= 0;
            v54 = v167;
            if (!v107)
            {
              goto LABEL_55;
            }
          }

          v53 = v158;
          v98(v158, v5);

          v76 = *(v144 + 16);
          v78 = v159;
          v79 = v126;
          if (v159 == v76)
          {

            goto LABEL_60;
          }
        }

LABEL_68:
        __break(1u);
        return;
      }

      v98 = *v77;
      v43 = v61;
LABEL_60:
      v98(v54, v5);
LABEL_14:
      v52 = v128;
      v48 = v129;
    }

    while (1)
    {
      v62 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v62 >= v52)
      {
        break;
      }

      v60 = *(v48 + 8 * v62);
      ++v51;
      if (v60)
      {
        v61 = v43;
        v51 = v62;
        goto LABEL_21;
      }
    }

    v113 = v168;
    if (*(v168 + 16))
    {
      v114 = OBJC_IVAR___OutlineController_isAsynchronous;
      v115 = v161;
      swift_beginAccess();
      if (v115[v114] == 1)
      {
        v116 = swift_allocObject();
        v117 = v125;
        *(v116 + 16) = v125;
        *(v116 + 24) = v113;
        v173 = sub_1D42ED5D8;
        v174 = v116;
        aBlock = MEMORY[0x1E69E9820];
        v170 = 1107296256;
        v171 = sub_1D417BEE4;
        v172 = &block_descriptor_260;
        v118 = _Block_copy(&aBlock);
        v119 = v117;

        performBlockOnMainThread();
        _Block_release(v118);
      }

      else
      {
        sub_1D42DEF54(v113);
      }
    }

    else
    {
    }
  }

  v120 = v161;
  v121 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v121);
  v122 = v160;
  v124[-2] = v160;

  sub_1D417FB40(sub_1D42ED5C8, &v124[-4]);

  MEMORY[0x1EEE9AC00](v123);
  v124[-2] = v120;
  v124[-1] = v122;

  sub_1D4181840(sub_1D42ED5D0, &v124[-4]);
}

void sub_1D42E60E0(void (**a1)(uint64_t, NSObject *), unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, unint64_t a8, uint64_t a9, void *a10, uint64_t a11, _OWORD *a12, uint64_t a13)
{
  v227 = a8;
  v223 = a7;
  v231 = a6;
  v214 = a12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v234 = &v204 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v204 - v22;
  v24 = sub_1D4417494();
  v225 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v217 = &v204 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v224 = &v204 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v204 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v222 = &v204 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v228 = &v204 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v233 = &v204 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v229 = &v204 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v226 = &v204 - v43;
  v44 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    swift_once();
LABEL_8:
    v48 = sub_1D44181B4();
    __swift_project_value_buffer(v48, qword_1EDE33B90);
    v49 = a5;
    v235 = sub_1D44181A4();
    v50 = sub_1D441A164();

    if (os_log_type_enabled(v235, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&aBlock = v52;
      *v51 = 134218498;
      *(v51 + 4) = a1;
      *(v51 + 12) = 2048;
      *(v51 + 14) = a2;
      *(v51 + 22) = 2080;
      [v49 ic_range];
      v53 = sub_1D441A6D4();
      v55 = sub_1D42E9410(v53, v54, &aBlock);

      *(v51 + 24) = v55;
      _os_log_impl(&dword_1D4171000, v235, v50, "Paragraph start exceeds attributed string range. Paragraph start: %ld Paragraph end: %ld String range: %s", v51, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x1DA6D8690](v52, -1, -1);
      MEMORY[0x1DA6D8690](v51, -1, -1);
    }

    else
    {
      v56 = v235;
    }

    return;
  }

  v220 = a9;
  v221 = a10;
  v232 = v23;
  v218 = v42;
  v235 = v41;
  v45 = [a5 string];
  if (!v45)
  {
    sub_1D4419C54();
    v45 = sub_1D4419C14();
  }

  v46 = [v45 ic:a1 rangeIsValid:a2 - a1];

  if (!v46)
  {
    if (qword_1EDE33B88 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

  v47 = *MEMORY[0x1E69B7600];
  if ([a5 attribute:*MEMORY[0x1E69B7600] atIndex:a1 effectiveRange:0])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v246 = 0u;
    v247 = 0u;
  }

  aBlock = v246;
  v241 = v247;
  if (!*(&v247 + 1))
  {
    sub_1D41769C4(&aBlock, &qword_1EC7C9720);
    return;
  }

  v230 = v31;
  sub_1D41766C0(0, &qword_1EDE33C88);
  p_aBlock = &aBlock;
  if (swift_dynamicCast())
  {
    v215 = a13;
    v58 = (v231 + 16);
    v207 = v239;
    v209 = [v239 style];
    v245 = MEMORY[0x1E69E7CD0];
    v244 = MEMORY[0x1E69E7CC0];
    v59 = swift_allocObject();
    v59[2] = &v244;
    v59[3] = &v245;
    v59[4] = v58;
    v59[5] = a1;
    v59[6] = v44;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1D42ED600;
    *(v60 + 24) = v59;
    v208 = v59;
    v242 = sub_1D417CA4C;
    v243 = v60;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v241 = sub_1D417C9A0;
    *(&v241 + 1) = &block_descriptor_270;
    v61 = _Block_copy(&aBlock);
    v62 = v47;

    [a5 enumerateAttribute:v62 inRange:a1 options:v44 usingBlock:{0, v61}];

    _Block_release(v61);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if (v62)
    {
      __break(1u);
      goto LABEL_79;
    }

    v63 = v245;
    v64 = v223;
    swift_beginAccess();
    *(v64 + 16) = v63;

    v65 = [a5 string];
    if (!v65)
    {
      goto LABEL_168;
    }

    v66 = v65;
    v67 = [v65 substringWithRange_];

    v68 = v209;
    if (!v67)
    {
      sub_1D4419C54();
      v67 = sub_1D4419C14();
    }

    v69 = [v67 ic_containsNonWhitespaceCharacters];

    v70 = [a5 ic:a1 containsBlockAttachmentsInRange:v44];
    a1 = v70;
    v212 = v69;
    v231 = v19;
    if (v68 || !v69 || (v70 & 1) != 0)
    {
      v81 = v221;
      swift_beginAccess();
      *(v81 + 16) = 1;
      goto LABEL_36;
    }

    LODWORD(v216) = v70;
    a2 = v245;
    v71 = v245 + 56;
    a5 = 1 << *(v245 + 32);
    v72 = -1;
    if (a5 < 64)
    {
      v72 = ~(-1 << a5);
    }

    v73 = v72 & *(v245 + 56);
    swift_beginAccess();
    v74 = (a5 + 63) >> 6;
    v223 = v225 + 16;
    v219 = v225 + 8;

    v75 = 0;
    v76 = v226;
    for (i = v229; v73; v19 = v231)
    {
      v78 = v75;
LABEL_31:
      v79 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      a1 = v225;
      v80 = v235;
      (*(v225 + 16))(v76, *(a2 + 48) + *(v225 + 72) * (v79 | (v78 << 6)), v235);
      a5 = v227 + 16;
      sub_1D417CFFC(i, v76);
      a1[1](i, v80);
    }

    while (1)
    {
      v78 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v78 >= v74)
      {
        swift_endAccess();

        v82 = v221;
        swift_beginAccess();
        LOBYTE(v82) = *(v82 + 16);
        v83 = v220;
        swift_beginAccess();
        *(v83 + 16) = v82;
        v68 = v209;
        v69 = v212;
        LODWORD(a1) = v216;
LABEL_36:
        v84 = (v68 > 2) | v69 ^ 1 | a1;
        a1 = MEMORY[0x1E69E7CC0];
        if (v84)
        {
          a5 = &unk_1F4F8C0F8;
          if (!qword_1F4F8C108)
          {

            v85 = v214;
            swift_beginAccess();
            *(v85 + 2) = a1;

            goto LABEL_159;
          }
        }

        else
        {
          v86 = &unk_1F4F8C0D0;
          if (v68 != 2)
          {
            v86 = MEMORY[0x1E69E7CC0];
          }

          if (v68 == 1)
          {
            a5 = &unk_1F4F8C0A8;
          }

          else
          {
            a5 = v86;
          }
        }

        v206 = v84;
        v87 = v214;
        swift_beginAccess();
        v88 = *(v87 + 2);
        v89 = *(v88 + 16);
        if (v89)
        {
          v90 = 0;
          v91 = v88 + 32;
          do
          {
            v92 = *(a5 + 16);
            v93 = 32;
            while (v92)
            {
              v94 = *(a5 + v93);
              v93 += 4;
              --v92;
              if (v94 == *(v91 + 16 * v90))
              {
                v205 = v90;

                p_aBlock = v214;
                swift_beginAccess();
                v96 = *(p_aBlock + 2);
                v97 = *(v96 + 16);
                if (v97 >= v205)
                {
                  a1 = 0;
                  v98 = sub_1D42ED630(v96 + 32, v205, (2 * v97) | 1);
                  a5 = v98;
                  p_aBlock = v230;
                  if (!(v98 >> 62))
                  {
                    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v99)
                    {
LABEL_55:
                      a2 = 0;
                      v227 = a5 & 0xC000000000000001;
                      v226 = (a5 & 0xFFFFFFFFFFFFFF8);
                      v100 = (v225 + 56);
                      v101 = (v225 + 48);
                      v221 = MEMORY[0x1E69E7CC0];
                      v102 = (v225 + 32);
                      v223 = v99;
                      while (1)
                      {
                        if (v227)
                        {
                          v105 = MEMORY[0x1DA6D6410](a2, a5);
                          v106 = a2 + 1;
                          if (__OFADD__(a2, 1))
                          {
                            goto LABEL_74;
                          }
                        }

                        else
                        {
                          if (a2 >= *(v226 + 2))
                          {
                            goto LABEL_75;
                          }

                          v105 = *(a5 + 8 * a2 + 32);
                          v106 = a2 + 1;
                          if (__OFADD__(a2, 1))
                          {
                            goto LABEL_74;
                          }
                        }

                        a1 = v105;
                        v107 = [a1 uuid];
                        if (v107)
                        {
                          v108 = v107;
                          sub_1D4417474();

                          v109 = 0;
                        }

                        else
                        {
                          v109 = 1;
                        }

                        v110 = v19;
                        v111 = v19;
                        v112 = v235;
                        (*v100)(v110, v109, 1, v235);
                        v113 = v111;
                        v114 = v234;
                        sub_1D417E588(v113, v234);
                        v115 = v232;
                        sub_1D417E588(v114, v232);

                        if ((*v101)(v115, 1, v112) == 1)
                        {
                          sub_1D41769C4(v115, &unk_1EC7CA4F0);
                          v103 = v223;
                        }

                        else
                        {
                          v116 = *v102;
                          (*v102)(v233, v115, v112);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v221 = sub_1D417E5F8(0, v221[2] + 1, 1, v221);
                          }

                          v103 = v223;
                          v118 = v221[2];
                          v117 = v221[3];
                          a1 = (v118 + 1);
                          if (v118 >= v117 >> 1)
                          {
                            v221 = sub_1D417E5F8(v117 > 1, v118 + 1, 1, v221);
                          }

                          v119 = v221;
                          v221[2] = a1;
                          v116(&v119[((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v118], v233, v235);
                        }

                        ++a2;
                        v104 = v106 == v103;
                        p_aBlock = v230;
                        v19 = v231;
                        if (v104)
                        {
                          goto LABEL_82;
                        }
                      }
                    }

LABEL_81:
                    v221 = MEMORY[0x1E69E7CC0];
LABEL_82:

                    v120 = v245 + 56;
                    v121 = 1 << *(v245 + 32);
                    v122 = -1;
                    if (v121 < 64)
                    {
                      v122 = ~(-1 << v121);
                    }

                    v123 = v122 & *(v245 + 56);
                    v124 = (v121 + 63) >> 6;
                    v234 = v225 + 16;
                    v231 = (v225 + 8);
                    v227 = v245;

                    v125 = 0;
                    v126 = v235;
                    while (1)
                    {
                      if (v123)
                      {
                        goto LABEL_92;
                      }

                      do
                      {
                        v129 = v125 + 1;
                        if (__OFADD__(v125, 1))
                        {
                          goto LABEL_162;
                        }

                        if (v129 >= v124)
                        {

                          v154 = v221;
                          v155 = v221[2];
                          if (v155)
                          {
                            v156 = 0;
                            v216 = (*(v225 + 80) + 32) & ~*(v225 + 80);
                            v157 = v221 + v216;
                            v227 = v225 + 32;
                            v158 = v215;
                            v159 = v218;
                            v160 = v212;
                            v211 = v155;
                            v210 = v221 + v216;
                            while (1)
                            {
                              if (v156 >= v154[2])
                              {
                                goto LABEL_163;
                              }

                              v232 = *(v225 + 72);
                              v233 = *(v225 + 16);
                              (v233)(v159, &v157[v232 * v156], v126);
                              if (v160)
                              {
                                break;
                              }

                              (*v231)(v159, v126);
LABEL_104:
                              if (++v156 == v155)
                              {
                                goto LABEL_153;
                              }
                            }

                            swift_beginAccess();
                            v161 = *(v158 + 24);
                            v162 = *(v161 + 16);
                            v213 = v156;
                            if (v162 && (v163 = sub_1D417DAA4(v159), (v164 & 1) != 0))
                            {
                              v165 = (*(v161 + 56) + 16 * v163);
                              v167 = *v165;
                              v166 = v165[1];

                              v228 = v166;
                            }

                            else
                            {
                              sub_1D417E7FC(MEMORY[0x1E69E7CC0]);
                              v167 = v168;
                              v228 = v169;
                            }

                            v170 = v216;
                            swift_endAccess();
                            v171 = v245 + 56;
                            v172 = 1 << *(v245 + 32);
                            if (v172 < 64)
                            {
                              v173 = ~(-1 << v172);
                            }

                            else
                            {
                              v173 = -1;
                            }

                            v174 = v173 & *(v245 + 56);
                            v175 = (v172 + 63) >> 6;
                            v223 = v245;

                            v176 = 0;
                            v220 = v167;
                            while (2)
                            {
                              if (!v174)
                              {
                                while (1)
                                {
                                  v180 = v176 + 1;
                                  if (__OFADD__(v176, 1))
                                  {
                                    break;
                                  }

                                  if (v180 >= v175)
                                  {

                                    v158 = v215;
                                    swift_beginAccess();

                                    v197 = v228;

                                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                    v236 = *(v158 + 24);
                                    *(v158 + 24) = 0x8000000000000000;
                                    v159 = v218;
                                    sub_1D417F254(v167, v197, v218, isUniquelyReferenced_nonNull_native);
                                    *(v158 + 24) = v236;
                                    v199 = v217;
                                    (v233)(v217, v159, v126);
                                    v200 = v229;
                                    sub_1D417CFFC(v229, v199);
                                    swift_endAccess();
                                    v201 = *v231;
                                    (*v231)(v200, v126);
                                    v201(v159, v126);
                                    p_aBlock = v230;

                                    v160 = v212;
                                    v154 = v221;
                                    v155 = v211;
                                    v156 = v213;
                                    v157 = v210;
                                    goto LABEL_104;
                                  }

                                  v174 = *(v171 + 8 * v180);
                                  ++v176;
                                  if (v174)
                                  {
                                    v176 = v180;
                                    goto LABEL_127;
                                  }
                                }

                                __break(1u);
LABEL_162:
                                __break(1u);
LABEL_163:
                                __break(1u);
LABEL_164:
                                __break(1u);
LABEL_165:
                                __break(1u);
LABEL_166:
                                __break(1u);
LABEL_167:
                                __break(1u);
LABEL_168:
                                __break(1u);
LABEL_169:
                                sub_1D441ADE4();
                                __break(1u);
                                return;
                              }

LABEL_127:
                              v181 = v222;
                              (v233)(v222, *(v223 + 48) + (__clz(__rbit64(v174)) | (v176 << 6)) * v232, v126);
                              v226 = *v227;
                              (v226)(p_aBlock, v181, v126);
                              v182 = v228 + v170;
                              v183 = *(v228 + 16);
                              if (v167)
                              {

                                sub_1D42EA19C(p_aBlock, v182, v183, (v167 + 16), v167 + 32);
                                v185 = v184;
                                v187 = v186;

                                if (v185)
                                {
                                  v188 = v235;
                                  goto LABEL_134;
                                }

LABEL_120:
                                v126 = v235;
LABEL_121:
                                v174 &= v174 - 1;
                                (*v231)(p_aBlock, v126);
                                continue;
                              }

                              break;
                            }

                            if (v183)
                            {
                              while (1)
                              {
                                v189 = v229;
                                v190 = v235;
                                (v233)(v229, v182, v235);
                                sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
                                v191 = sub_1D4419BE4();
                                (*v231)(v189, v190);
                                if (v191)
                                {
                                  break;
                                }

                                v182 += v232;
                                --v183;
                                p_aBlock = v230;
                                if (!v183)
                                {
                                  goto LABEL_133;
                                }
                              }

                              v167 = 0;
                              v126 = v235;
                              p_aBlock = v230;
                              v170 = v216;
                              goto LABEL_121;
                            }

LABEL_133:
                            v187 = 0;
                            v188 = v235;
                            v170 = v216;
LABEL_134:
                            (v233)(v224, p_aBlock, v188);
                            v192 = v228;
                            v193 = swift_isUniquelyReferenced_nonNull_native();
                            v238 = v192;
                            v219 = v187;
                            if ((v193 & 1) == 0)
                            {
                              sub_1D417F210(0, *(v192 + 16) + 1, 1);
                              v192 = v238;
                            }

                            v195 = *(v192 + 16);
                            v194 = *(v192 + 24);
                            if (v195 >= v194 >> 1)
                            {
                              sub_1D417F210(v194 > 1, v195 + 1, 1);
                              v192 = v238;
                            }

                            *(v192 + 16) = v195 + 1;
                            v228 = v192;
                            (v226)(v192 + v170 + v195 * v232, v224, v235);
                            if (v167)
                            {
                              swift_beginAccess();
                              if (MEMORY[0x1DA6D3980](*(v167 + 16) & 0x3FLL) > v195)
                              {
                                v167 = v220;
                                if (swift_isUniquelyReferenced_native())
                                {
                                  v126 = v235;
                                }

                                else
                                {
                                  v126 = v235;
                                  if (!v167)
                                  {
                                    goto LABEL_167;
                                  }

                                  v196 = sub_1D4417F84();

                                  v167 = v196;
                                }

                                if (!v167)
                                {
                                  goto LABEL_166;
                                }

                                sub_1D4417F34();
                                v220 = v167;
                                goto LABEL_121;
                              }

                              v179 = *(v167 + 24) & 0x3FLL;
                              if (v195 <= 0xE && !v179)
                              {

                                v220 = 0;
                                v167 = 0;
                                goto LABEL_120;
                              }

LABEL_115:
                              v177 = MEMORY[0x1DA6D39A0](v195 + 1);
                              if (v179 <= v177)
                              {
                                v178 = v177;
                              }

                              else
                              {
                                v178 = v179;
                              }

                              v179 = sub_1D42E9E68(v228, v178, 0, v179);

                              v220 = v179;
                            }

                            else
                            {
                              v179 = 0;
                              if (v195 > 0xE)
                              {
                                goto LABEL_115;
                              }
                            }

                            v167 = v179;
                            goto LABEL_120;
                          }

LABEL_153:

                          v68 = v209;
                          v202 = v205;
                          if (v205)
                          {
                            swift_beginAccess();
                            sub_1D42ED940(0, v202);
                            swift_endAccess();
                          }

LABEL_155:
                          if (v206)
                          {
                          }

                          else
                          {
                            v203 = v244;
                            swift_beginAccess();

                            sub_1D417E268(0, 0, v68, v203);
                            swift_endAccess();
                          }

LABEL_159:

                          return;
                        }

                        v123 = *(v120 + 8 * v129);
                        ++v125;
                      }

                      while (!v123);
                      v125 = v129;
LABEL_92:
                      v130 = *(v225 + 72);
                      v131 = *(v225 + 16);
                      v132 = v228;
                      v131(v228, *(v227 + 48) + v130 * (__clz(__rbit64(v123)) | (v125 << 6)), v126);

                      sub_1D417E7FC(v133);
                      v232 = v134;
                      v233 = v135;
                      v136 = v215;
                      swift_beginAccess();
                      v137 = swift_isUniquelyReferenced_nonNull_native();
                      v237 = *(v136 + 16);
                      v138 = v237;
                      *(v136 + 16) = 0x8000000000000000;
                      v139 = sub_1D417DAA4(v132);
                      v141 = v138[2];
                      v142 = (v140 & 1) == 0;
                      v143 = __OFADD__(v141, v142);
                      v144 = v141 + v142;
                      if (v143)
                      {
                        goto LABEL_164;
                      }

                      v145 = v140;
                      if (v138[3] >= v144)
                      {
                        if ((v137 & 1) == 0)
                        {
                          v153 = v139;
                          sub_1D42D4664();
                          v139 = v153;
                        }
                      }

                      else
                      {
                        sub_1D417EC48(v144, v137);
                        v139 = sub_1D417DAA4(v228);
                        if ((v145 & 1) != (v146 & 1))
                        {
                          goto LABEL_169;
                        }
                      }

                      v147 = v237;
                      if (v145)
                      {
                        v127 = (v237[7] + 16 * v139);
                        v128 = v233;
                        *v127 = v232;
                        v127[1] = v128;

                        v126 = v235;
                      }

                      else
                      {
                        v237[(v139 >> 6) + 8] |= 1 << v139;
                        v148 = v139;
                        v126 = v235;
                        v131(v147[6] + v139 * v130, v228, v235);
                        v149 = (v147[7] + 16 * v148);
                        v150 = v233;
                        *v149 = v232;
                        v149[1] = v150;
                        v151 = v147[2];
                        v143 = __OFADD__(v151, 1);
                        v152 = v151 + 1;
                        if (v143)
                        {
                          goto LABEL_165;
                        }

                        v147[2] = v152;
                      }

                      p_aBlock = v230;
                      v123 &= v123 - 1;
                      (*v231)(v228, v126);
                      *(v215 + 16) = v147;
                      swift_endAccess();
                    }
                  }

LABEL_80:
                  v99 = sub_1D441A8C4();
                  if (v99)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_81;
                }

LABEL_79:
                __break(1u);
                goto LABEL_80;
              }
            }

            ++v90;
          }

          while (v90 != v89);
        }

        v95 = v214;
        swift_beginAccess();
        *(v95 + 2) = a1;

        goto LABEL_155;
      }

      v73 = *(v71 + 8 * v78);
      ++v75;
      if (v73)
      {
        v75 = v78;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }
}

void sub_1D42E7AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v12 = sub_1D4417494();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v41 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v41 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v41 - v26;
  sub_1D417CF94(a1, v45, &qword_1EC7C9720);
  if (v46)
  {
    sub_1D41766C0(0, &qword_1EDE33C88);
    if (swift_dynamicCast())
    {
      v42 = a7;
      v28 = v44;
      v29 = [v44 uuid];
      if (v29)
      {
        v30 = v29;
        sub_1D4417474();

        (*(v13 + 32))(v27, v25, v12);
        v31 = v28;
        MEMORY[0x1DA6D5820]();
        if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
        }

        v41 = v31;
        sub_1D4419EB4();
        v32 = *(v13 + 16);
        v32(v19, v27, v12);
        sub_1D417CFFC(v22, v19);
        v33 = *(v13 + 8);
        v33(v22, v12);
        v32(v16, v27, v12);
        v34 = v42;
        swift_beginAccess();
        v35 = *v34;
        if (*(v35 + 16) && (v36 = sub_1D417DAA4(v27), (v37 & 1) != 0))
        {
          v38 = *(*(v35 + 56) + 8 * v36);
        }

        else
        {
          v38 = 0;
        }

        swift_endAccess();
        if (__OFADD__(v38, a9))
        {
          __break(1u);
        }

        else
        {
          v39 = v42;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *v39;
          *v39 = 0x8000000000000000;
          sub_1D417D908(v38 + a9, v16, isUniquelyReferenced_nonNull_native);
          v33(v16, v12);
          *v39 = v44;
          swift_endAccess();

          v33(v27, v12);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1D41769C4(v45, &qword_1EC7C9720);
  }
}

uint64_t sub_1D42E7E54(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();

  v4 = sub_1D417FE80(v3, v2);

  *a1 = v4;
  return result;
}

uint64_t sub_1D42E7EC4(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_1D4419434();
  sub_1D441A2D4();
  (*(v6 + 8))(v8, v5);

  swift_beginAccess();
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
}

void sub_1D42E809C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6, void *a7)
{
  v51 = a6;
  v52 = a7;
  v49 = a2;
  v50 = a3;
  v10 = sub_1D4417494();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99F0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  sub_1D417CF94(a1, v60, &qword_1EC7C9720);
  if (!v60[3])
  {
    sub_1D41769C4(v60, &qword_1EC7C9720);
    return;
  }

  sub_1D41766C0(0, &qword_1EDE33C88);
  if (swift_dynamicCast())
  {
    v48 = v58;
    v25 = [v58 uuid];
    v46 = v12;
    v47 = a4;
    if (v25)
    {
      v26 = v25;
      sub_1D4417474();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v53;
    v29 = *(v53 + 56);
    v29(v24, v27, 1, v10);
    (*(v28 + 16))(v22, a5, v10);
    v29(v22, 0, 1, v10);
    v30 = *(v13 + 48);
    sub_1D417CF94(v24, v15, &unk_1EC7CA4F0);
    sub_1D417CF94(v22, &v15[v30], &unk_1EC7CA4F0);
    v31 = *(v28 + 48);
    if (v31(v15, 1, v10) == 1)
    {
      sub_1D41769C4(v22, &unk_1EC7CA4F0);
      sub_1D41769C4(v24, &unk_1EC7CA4F0);
      if (v31(&v15[v30], 1, v10) == 1)
      {
        sub_1D41769C4(v15, &unk_1EC7CA4F0);
LABEL_14:
        v36 = [v52 string];
        if (!v36)
        {
          __break(1u);
          return;
        }

        v37 = v36;
        v38 = [v36 substringWithRange_];

        v39 = v47;
        if (!v38)
        {
          sub_1D4419C54();
          v38 = sub_1D4419C14();
        }

        v40 = [v38 ic_trimmedString];

        v41 = sub_1D4419C54();
        v43 = v42;

        v58 = v41;
        v59 = v43;
        v56 = 10;
        v57 = 0xE100000000000000;
        v54 = 28252;
        v55 = 0xE200000000000000;
        sub_1D42ED2C0();
        sub_1D42ED314();
        sub_1D441A104();

        v44 = v60[1];
        v45 = v51;
        *v51 = v60[0];
        v45[1] = v44;

        *v39 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      sub_1D417CF94(v15, v19, &unk_1EC7CA4F0);
      if (v31(&v15[v30], 1, v10) != 1)
      {
        v32 = v53;
        v33 = v46;
        (*(v53 + 32))(v46, &v15[v30], v10);
        sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v34 = sub_1D4419BE4();
        v35 = *(v32 + 8);
        v35(v33, v10);
        sub_1D41769C4(v22, &unk_1EC7CA4F0);
        sub_1D41769C4(v24, &unk_1EC7CA4F0);
        v35(v19, v10);
        sub_1D41769C4(v15, &unk_1EC7CA4F0);
        if (v34)
        {
          goto LABEL_14;
        }

LABEL_18:

        return;
      }

      sub_1D41769C4(v22, &unk_1EC7CA4F0);
      sub_1D41769C4(v24, &unk_1EC7CA4F0);
      (*(v53 + 8))(v19, v10);
    }

    sub_1D41769C4(v15, &qword_1EC7C99F0);
    goto LABEL_18;
  }
}

uint64_t sub_1D42E86E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D4417884();
    return a2;
  }

  return result;
}

uint64_t sub_1D42E8778(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v20 = MEMORY[0x1E69E7CC0];
    v5 = *MEMORY[0x1E69B7600];
    v6 = [v4 ic_range];
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = a1 & 1;
    *(v9 + 32) = &v20;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D42ED4EC;
    *(v10 + 24) = v9;
    v19[4] = sub_1D417CA4C;
    v19[5] = v10;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1D417C9A0;
    v19[3] = &block_descriptor_200;
    v11 = _Block_copy(v19);
    v12 = v1;

    [v4 enumerateAttribute:v5 inRange:v6 options:v8 usingBlock:{0, v11}];

    _Block_release(v11);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      v13 = v20;

      return v13;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDE33B88 != -1)
  {
LABEL_10:
    swift_once();
  }

  v14 = sub_1D44181B4();
  __swift_project_value_buffer(v14, qword_1EDE33B90);
  v15 = sub_1D44181A4();
  v16 = sub_1D441A164();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D4171000, v15, v16, "Unable to return ranges for visiblity due to missing text storage", v17, 2u);
    MEMORY[0x1DA6D8690](v17, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D42E8A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, int a6, char **a7)
{
  v13 = sub_1D4417494();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  sub_1D417CF94(a1, v41, &qword_1EC7C9720);
  if (v42)
  {
    sub_1D41766C0(0, &qword_1EDE33C88);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = [v40 uuid];
      if (!v21)
      {
LABEL_7:

        return;
      }

      v38 = a3;
      v39 = a2;
      v37 = a7;
      v22 = v21;
      sub_1D4417474();

      v23 = (*(v14 + 32))(v19, v17, v13);
      v24 = MEMORY[0x1EEE9AC00](v23);
      *(&v37 - 2) = a5;
      *(&v37 - 1) = v19;
      MEMORY[0x1EEE9AC00](v24);
      *(&v37 - 2) = a5;
      *(&v37 - 1) = v19;

      sub_1D4183210(v19, sub_1D42EDB44, (&v37 - 4), sub_1D42EDB48, (&v37 - 4));
      v26 = v25;

      if (((v26 ^ a6) & 1) == 0 || (v27 = sub_1D4416D44(), v28 = v39, v27 == v39))
      {
        (*(v14 + 8))(v19, v13);
        goto LABEL_7;
      }

      v29 = v37;
      v30 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v29 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1D438CD7C(0, *(v30 + 2) + 1, 1, v30);
        *v29 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        *v29 = sub_1D438CD7C((v32 > 1), v33 + 1, 1, v30);
      }

      v34 = *v29;
      *(v34 + 2) = v33 + 1;
      v35 = &v34[16 * v33];
      v36 = v38;
      *(v35 + 4) = v28;
      *(v35 + 5) = v36;
      (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    sub_1D41769C4(v41, &qword_1EC7C9720);
  }
}

uint64_t sub_1D42E8D78(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v20 = MEMORY[0x1E69E7CC0];
    v5 = *MEMORY[0x1E69B7600];
    v6 = [v4 ic_range];
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = a1 & 1;
    *(v9 + 32) = &v20;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D42ED4DC;
    *(v10 + 24) = v9;
    v19[4] = sub_1D417CA4C;
    v19[5] = v10;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1D417C9A0;
    v19[3] = &block_descriptor_189;
    v11 = _Block_copy(v19);
    v12 = v1;

    [v4 enumerateAttribute:v5 inRange:v6 options:v8 usingBlock:{0, v11}];

    _Block_release(v11);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      v13 = v20;

      return v13;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDE33B88 != -1)
  {
LABEL_10:
    swift_once();
  }

  v14 = sub_1D44181B4();
  __swift_project_value_buffer(v14, qword_1EDE33B90);
  v15 = sub_1D44181A4();
  v16 = sub_1D441A164();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D4171000, v15, v16, "Unable to return ranges containg ranges due to missing text storage", v17, 2u);
    MEMORY[0x1DA6D8690](v17, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D42E9030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char **a7)
{
  v12 = sub_1D4417494();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  sub_1D417CF94(a1, v34, &qword_1EC7C9720);
  if (v35)
  {
    sub_1D41766C0(0, &qword_1EDE33C88);
    if (swift_dynamicCast())
    {
      v19 = v33;
      v20 = [v33 uuid];
      if (!v20)
      {
LABEL_8:

        return;
      }

      v32 = a3;
      v21 = v20;
      sub_1D4417474();

      (*(v13 + 32))(v18, v16, v12);
      v22 = *(sub_1D42E24A4(v18) + 16);

      if (!v22 || (swift_beginAccess(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948), sub_1D441A2E4(), , v23 = sub_1D4190A40(v18, v33), , ((v23 ^ a6) & 1) != 0) || sub_1D4416D44() == a2)
      {
        (*(v13 + 8))(v18, v12);
        goto LABEL_8;
      }

      v24 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1D438CD7C(0, *(v24 + 2) + 1, 1, v24);
        *a7 = v24;
      }

      v26 = v32;
      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        *a7 = sub_1D438CD7C((v27 > 1), v28 + 1, 1, v24);
      }

      (*(v13 + 8))(v18, v12);
      v29 = *a7;
      *(v29 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = a2;
      *(v30 + 5) = v26;
    }
  }

  else
  {
    sub_1D41769C4(v34, &qword_1EC7C9720);
  }
}

id OutlineController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D42E9410(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D42E94DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D42D5D14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D42E94DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D42E95E8(a5, a6);
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
    result = sub_1D441AA84();
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

uint64_t sub_1D42E95E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D42E9634(a1, a2);
  sub_1D42E9764(&unk_1F4F8C080);
  return v3;
}

uint64_t sub_1D42E9634(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D42E9850(v5, 0);
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

  result = sub_1D441AA84();
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
        v10 = sub_1D4419D44();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D42E9850(v10, 0);
        result = sub_1D441A9A4();
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

uint64_t sub_1D42E9764(uint64_t result)
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

  result = sub_1D42E98C4(result, v11, 1, v3);
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

void *sub_1D42E9850(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D42E98C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t *sub_1D42E99B8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = sub_1D42EB098(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_1D42E9A50(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = sub_1D42EBC14(v9, a2, a3, v10, a5);

    return v11;
  }

  return result;
}

void *sub_1D42E9AF0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D4180044(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D42E9B80(uint64_t a1)
{
  v3 = sub_1D4417494();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = v1 + 1;
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D417F210(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1D417F210(v10 > 1, v11 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v11 + 1;
  result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
  v1[1] = v8;
  v13 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x1DA6D3980](*(v13 + 16) & 0x3FLL) > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v1;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_1D4417F84();

        *v1 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_1D4417F34();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1D42E9DC8();
}

uint64_t sub_1D42E9DC8()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1DA6D39A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1D42E9E68(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1D42E9E68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1DA6D39A0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1DA6D39B0](v8, a4);
    sub_1D42E9EE8(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1D42E9F84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = sub_1D4417494();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
        result = sub_1D4419B84();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = sub_1D4417F24();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          sub_1D4417F64();
        }

        result = sub_1D4417F54();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D42EA19C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v28[1] = a1;
  result = sub_1D4419B84();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_1D4417F24();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_1D4417F44();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v26 = sub_1D4419BE4();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_1D4417F64();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_1D4417F44();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t sub_1D42EA3EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v42 = a1;
  v7 = sub_1D4417494();
  v35 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v31 = v4;
    v14 = 0;
    v15 = (v35 + 8);
    v33 = a2;
    v32 = a3;
    while (1)
    {
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v36 = v14 + 1;
      v16 = *(v35 + 72);
      v41 = v14;
      v52 = v16;
      v17 = *(v35 + 16);
      v43 = v42 + v16 * v14;
      v17(v13);
      sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v18 = 1 << *a3;
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        goto LABEL_15;
      }

      v40 = v20 & result;
      v21 = v34;
      v22 = sub_1D4417F24();
      v38 = v23;
      v39 = v22;
      v37 = v24;
      v25 = *v15;
      (*v15)(v13, v7);
      *&v44 = a3;
      *(&v44 + 1) = v21;
      *&v45 = v40;
      *(&v45 + 1) = v39;
      *&v46 = v38;
      *(&v46 + 1) = v37;
      v47 = 0;
      v51 = 0;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v26 = sub_1D4417F44();
      v27 = v42;
      if ((v28 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1D4417F54();
      v14 = v36;
      a3 = v32;
      if (v36 == v33)
      {
        return 1;
      }
    }

    while (1)
    {
      (v17)(v13, v27 + v26 * v52, v7);
      (v17)(v10, v43, v7);
      sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
      v29 = sub_1D4419BE4();
      v25(v10, v7);
      v25(v13, v7);
      if (v29)
      {
        return 0;
      }

      sub_1D4417F64();
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v26 = sub_1D4417F44();
      if (v30)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D42EA78C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  *a1 = 0x8000000000000000;
  sub_1D432DB2C(v5, v6, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
}

unint64_t sub_1D42EA814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9780);
    v3 = sub_1D441AC24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D417CF94(v4, &v13, &unk_1EC7CB710);
      v5 = v13;
      v6 = v14;
      result = sub_1D418DA8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D417CF84(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D42EA944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99E0);
    v3 = sub_1D441AC24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D417CF94(v4, &v11, &qword_1EC7C99E8);
      v5 = v11;
      result = sub_1D4189DF0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D417CF84(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D42EAA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99D8);
    v3 = sub_1D441AC24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D417CF94(v4, v13, &qword_1EC7C9FE0);
      result = sub_1D42D00F4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D417CF84(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D42EABA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99D0);
    v3 = sub_1D441AC24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D417CF94(v4, &v11, &unk_1EC7CAE60);
      v5 = v11;
      result = sub_1D4189DF0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D417CF84(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D42EACD0()
{
  v1 = v0 + *(*v0 + 112);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1D42EAD24(uint64_t a1)
{
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  return sub_1D42DBDE0(sub_1D42EDA48, v3);
}

char *sub_1D42EAD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = a2;
  v7 = *v3;
  v16 = sub_1D441A2B4();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D441A254();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1D4419484();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = &v3[*(v7 + 112)];
  *v13 = 0;
  *(v13 + 1) = 0;
  (*(*(*(v7 + 80) - 8) + 16))(&v3[*(*v3 + 104)], a1);
  *(v3 + 2) = a2;
  *(v3 + 3) = a3;
  v15[1] = a3;
  v15[2] = sub_1D41766C0(0, &qword_1EDE33D70);

  sub_1D4419464();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D417A7A4(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  sub_1D417645C(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v16);
  *(v3 + 4) = sub_1D441A314();
  return v3;
}

uint64_t sub_1D42EB098(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v39 = a1;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v36 - v13;
  v43 = a4;
  v44 = a3;
  v14 = *(a3 + 56);
  v38 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v41 = OBJC_IVAR___OutlineController__collapsedUUIDs;
  result = swift_beginAccess();
  v45 = 0;
  v19 = 0;
  v20 = (v15 + 63) >> 6;
  v42 = v9;
  v51 = (v9 + 8);
  v52 = v9 + 16;
  v40 = v20;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v47 = (v17 - 1) & v17;
LABEL_13:
    v24 = v21 | (v19 << 6);
    v25 = *(v44 + 48);
    v26 = *(v42 + 72);
    v46 = v24;
    v49 = *(v42 + 16);
    v50 = v26;
    v49(v53, v25 + v26 * v24, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
    sub_1D441A2E4();
    v48 = v5;

    v27 = v54;
    if (*(v54 + 16) && (sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]), v28 = sub_1D4419B84(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
    {
      v31 = ~v29;
      while (1)
      {
        v49(v12, *(v27 + 48) + v30 * v50, v8);
        sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v32 = sub_1D4419BE4();
        v33 = *v51;
        (*v51)(v12, v8);
        if (v32)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = v33(v53, v8);
      v17 = v47;
      v5 = v48;
      v20 = v40;
    }

    else
    {
LABEL_18:

      result = (*v51)(v53, v8);
      v17 = v47;
      *(v39 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v34 = __OFADD__(v45++, 1);
      v5 = v48;
      v20 = v40;
      if (v34)
      {
        __break(1u);
LABEL_21:
        v35 = v44;

        return sub_1D4180E4C(v39, v37, v45, v35);
      }
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_21;
    }

    v23 = *(v38 + 8 * v19);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v47 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D42EB4D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v59 = *MEMORY[0x1E69E9840];
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = v39 - v10;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v40 = ((1 << v11) + 63) >> 6;
  v13 = 8 * v40;
  v14 = a2;
  v15 = v14;
  if (v12 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v39[1] = v39;
    MEMORY[0x1EEE9AC00](v14);
    v42 = v39 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v13);
    v16 = *(a1 + 56);
    v41 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v17 = v13 < 64 ? ~(-1 << v13) : -1;
    v18 = v17 & v16;
    v44 = OBJC_IVAR___OutlineController__collapsedUUIDs;
    swift_beginAccess();
    v47 = a1;
    v48 = 0;
    v19 = 0;
    v20 = (v13 + 63) >> 6;
    v55 = (v7 + 8);
    v56 = v7 + 16;
    v43 = v20;
    v45 = v15;
    v46 = v7;
    v21 = v52;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v50 = (v18 - 1) & v18;
LABEL_14:
      v25 = v22 | (v19 << 6);
      v26 = *(a1 + 48);
      v27 = *(v7 + 72);
      v49 = v25;
      v53 = *(v7 + 16);
      v54 = v27;
      v53(v57, v26 + v27 * v25, v6);
      v13 = *(*&v15[v44] + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
      sub_1D441A2E4();
      v51 = v3;

      v28 = v58;
      if (*(v58 + 16) && (sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]), v13 = v57, v29 = sub_1D4419B84(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (1)
        {
          v53(v21, *(v28 + 48) + v31 * v54, v6);
          sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
          v13 = sub_1D4419BE4();
          v33 = *v55;
          (*v55)(v21, v6);
          if (v13)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v33(v57, v6);
        v18 = v50;
        v3 = v51;
        v7 = v46;
        a1 = v47;
        v15 = v45;
        v20 = v43;
      }

      else
      {
LABEL_19:

        (*v55)(v57, v6);
        v18 = v50;
        *&v42[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        a1 = v47;
        v34 = __OFADD__(v48++, 1);
        v3 = v51;
        v15 = v45;
        v7 = v46;
        v20 = v43;
        if (v34)
        {
          __break(1u);
LABEL_22:
          v35 = sub_1D4180E4C(v42, v40, v48, a1);

          return v35;
        }
      }
    }

    v23 = v19;
    while (1)
    {
      v19 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v19 >= v20)
      {
        goto LABEL_22;
      }

      v24 = *(v41 + 8 * v19);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = v15;
  v35 = sub_1D42E99B8(v37, v40, a1, v38);

  MEMORY[0x1DA6D8690](v37, -1, -1);

  return v35;
}

uint64_t sub_1D42EBA4C(uint64_t *a1)
{
  v2 = *a1;

  result = sub_1D42DE3E0(v3, v2, MEMORY[0x1E69695A8], sub_1D417CFFC);
  *a1 = result;
  return result;
}

uint64_t sub_1D42EBAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_1D417CFFC(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

uint64_t sub_1D42EBC14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v6 = v5;
  v36 = a2;
  v37 = a1;
  v8 = sub_1D4417494();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v54 = &v36 - v14;
  v15 = 0;
  v46 = a3;
  v16 = *(a3 + 56);
  v38 = a3 + 56;
  v39 = 0;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v42 = OBJC_IVAR___OutlineController__index;
  v43 = v13;
  v20 = (v17 + 63) >> 6;
  v51 = (v13 + 8);
  v52 = v13 + 16;
  v41 = v20;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v47 = (v19 - 1) & v19;
LABEL_13:
    v24 = v21 | (v15 << 6);
    v25 = *(v46 + 48);
    v26 = *(v43 + 72);
    v40 = v24;
    v49 = *(v43 + 16);
    v50 = v26;
    v49(v54, v25 + v26 * v24, v8);

    sub_1D441A2E4();
    v48 = v6;

    v27 = v53;

    if (*(v27 + 16) && (sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]), v28 = sub_1D4419B84(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
    {
      v31 = ~v29;
      while (1)
      {
        v49(v11, *(v27 + 48) + v30 * v50, v8);
        sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v32 = sub_1D4419BE4();
        v33 = *v51;
        (*v51)(v11, v8);
        if (v32)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = v33(v54, v8);
      *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v34 = __OFADD__(v39++, 1);
      v19 = v47;
      v6 = v48;
      v20 = v41;
      if (v34)
      {
        __break(1u);
LABEL_22:
        v35 = v46;

        return sub_1D4180E4C(v37, v36, v39, v35);
      }
    }

    else
    {
LABEL_5:

      result = (*v51)(v54, v8);
      v19 = v47;
      v6 = v48;
      v20 = v41;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_22;
    }

    v23 = *(v38 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v47 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D42EC02C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v48 = a3;
  v6 = v4;
  v62 = *MEMORY[0x1E69E9840];
  v9 = sub_1D4417494();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v40 - v13;
  v14 = *(a1 + 32);
  v15 = v14 & 0x3F;
  v41 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v41;
  v17 = a2;
  v50 = v17;
  if (v15 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v38 = swift_slowAlloc();
      v39 = v50;
      v36 = sub_1D42E9A50(v38, v41, a1, v39, a4);

      MEMORY[0x1DA6D8690](v38, -1, -1);

      return v36;
    }
  }

  v53 = v6;
  v40 = &v40;
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v40 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v16);
  v18 = 0;
  v6 = 0;
  v49 = a1;
  v20 = *(a1 + 56);
  a1 += 56;
  v19 = v20;
  v43 = a1;
  v21 = 1 << *(a1 - 24);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v46 = OBJC_IVAR___OutlineController__index;
  v24 = (v21 + 63) >> 6;
  v51 = v10;
  v57 = (v10 + 8);
  v58 = v10 + 16;
  v47 = v24;
  while (2)
  {
    v44 = v18;
    while (1)
    {
      if (!v23)
      {
        v26 = v6;
        while (1)
        {
          v6 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v6 >= v24)
          {
            goto LABEL_24;
          }

          v27 = *(v43 + 8 * v6);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v52 = (v27 - 1) & v27;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v25 = __clz(__rbit64(v23));
      v52 = (v23 - 1) & v23;
LABEL_15:
      v28 = v25 | (v6 << 6);
      v29 = *(v49 + 48);
      v30 = *(v51 + 72);
      v45 = v28;
      v55 = *(v51 + 16);
      v56 = v30;
      v55(v59, v29 + v30 * v28, v9);

      v31 = v53;
      sub_1D441A2E4();
      v53 = v31;

      a4 = v60;
      v16 = v61;

      if (*(v16 + 16))
      {
        sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
        a4 = v59;
        v32 = sub_1D4419B84();
        v33 = -1 << *(v16 + 32);
        v34 = v32 & ~v33;
        if ((*(v16 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          break;
        }
      }

LABEL_7:

      (*v57)(v59, v9);
      v24 = v47;
      v23 = v52;
    }

    v10 = ~v33;
    while (1)
    {
      a1 = v54;
      v55(v54, *(v16 + 48) + v34 * v56, v9);
      sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
      v35 = sub_1D4419BE4();
      a4 = *v57;
      (*v57)(a1, v9);
      if (v35)
      {
        break;
      }

      v34 = (v34 + 1) & v10;
      if (((*(v16 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    a4(v59, v9);
    *&v42[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
    v18 = v44 + 1;
    v24 = v47;
    v23 = v52;
    if (!__OFADD__(v44, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v36 = sub_1D4180E4C(v42, v41, v44, v49);

  return v36;
}

uint64_t sub_1D42EC628(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D4419CF4();

    return sub_1D4419DC4();
  }

  return result;
}

unint64_t sub_1D42EC6C4()
{
  result = qword_1EC7C9998;
  if (!qword_1EC7C9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9998);
  }

  return result;
}

void sub_1D42EC718(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(sub_1D4417494() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D42E809C(a1, a2, a3, a4, v4 + v10, v12, v13);
}

unint64_t sub_1D42ED2C0()
{
  result = qword_1EC7C99F8;
  if (!qword_1EC7C99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C99F8);
  }

  return result;
}

unint64_t sub_1D42ED314()
{
  result = qword_1EC7C9A00;
  if (!qword_1EC7C9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9A00);
  }

  return result;
}

uint64_t sub_1D42ED3A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D42E4358(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

void sub_1D42ED3FC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = *(sub_1D4417494() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D42E0DF4(a1, a2, a3, a4, v4 + v10, v11);
}

unint64_t sub_1D42ED504()
{
  result = qword_1EC7C9A30;
  if (!qword_1EC7C9A30)
  {
    sub_1D41766C0(255, &qword_1EC7C9858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9A30);
  }

  return result;
}

uint64_t sub_1D42ED630(uint64_t result, uint64_t a2, unint64_t a3)
{
  v29 = result;
  v3 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a2;
  v4 = MEMORY[0x1E69E7CC0];
  if (a2 <= v3)
  {
    v6 = a3 >> 1;
  }

  else
  {
    v6 = a2;
  }

  v28 = v6;
  v26 = a3 >> 1;
  while (v5 != v28)
  {
    v7 = *(v29 + 16 * v5 + 8);
    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      v9 = sub_1D441A8C4();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      result = sub_1D441A8C4();
      v11 = result + v9;
      if (__OFADD__(result, v9))
      {
LABEL_39:
        __break(1u);
        break;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = result + v9;
      if (__OFADD__(result, v9))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

LABEL_21:
      sub_1D441A8C4();
      goto LABEL_22;
    }

    if (v10)
    {
      goto LABEL_21;
    }

    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = v9;
      goto LABEL_23;
    }

LABEL_22:
    v13 = v9;
    result = sub_1D441AA14();
    v4 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v8)
    {
      v17 = v12;
      result = sub_1D441A8C4();
      v12 = v17;
      v16 = result;
      if (result)
      {
LABEL_27:
        if (((v15 >> 1) - v14) < v13)
        {
          goto LABEL_42;
        }

        v32 = v13;
        v30 = v4;
        v18 = v12 + 8 * v14 + 32;
        v27 = v12;
        if (v8)
        {
          if (v16 < 1)
          {
            goto LABEL_44;
          }

          sub_1D417645C(&qword_1EC7C9A88, &qword_1EC7C9A80);
          for (i = 0; i != v16; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A80);
            v20 = sub_1D4391270(v31, i, v7);
            v22 = *v21;
            (v20)(v31, 0);
            *(v18 + 8 * i) = v22;
          }
        }

        else
        {
          sub_1D41766C0(0, &qword_1EDE33C88);
          swift_arrayInitWithCopy();
        }

        v3 = v26;
        v4 = v30;
        if (v32 >= 1)
        {
          v23 = *(v27 + 16);
          v24 = __OFADD__(v23, v32);
          v25 = v23 + v32;
          if (v24)
          {
            goto LABEL_43;
          }

          *(v27 + 16) = v25;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_27;
      }
    }

    if (v13 > 0)
    {
      goto LABEL_41;
    }

LABEL_9:
    if (++v5 == v3)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_1D42ED940(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D417E344(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D42F8368(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1D42EDA00(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
}

uint64_t sub_1D42EDA48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v7 = *(v4 - 8);
  (*(v7 + 8))(a1, v4);
  v5 = *(v7 + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1D42EDC04()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  v2 = *(*(v0 + 40) + 16);
  swift_getKeyPath();
  sub_1D4417DE4();

  swift_beginAccess();
  if (!v2)
  {
  }

  v3 = *(v1 + 32);
  swift_getKeyPath();

  sub_1D4417DE4();

  sub_1D42EF694(v4);
  return v3;
}

uint64_t sub_1D42EDD90()
{
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  return *(v0 + 24);
}

uint64_t sub_1D42EDE30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D42EDED8(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
    sub_1D4417DD4();
  }

  return result;
}

uint64_t sub_1D42EDFE8()
{
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  swift_beginAccess();
}

uint64_t sub_1D42EE0A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D42EE160(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_1D42EE1C8()
{
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();
}

uint64_t sub_1D42EE26C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  *a2 = *(v3 + 40);
}

uint64_t sub_1D42EE318()
{
  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DD4();
}

uint64_t AudioWaveformGenerator.__allocating_init(attachment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = v3;
  sub_1D4417E14();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t AudioWaveformGenerator.init(attachment:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v3;
  sub_1D4417E14();
  *(v1 + 16) = a1;
  return v1;
}

void sub_1D42EE498()
{
  v1 = v0;
  v2 = sub_1D44181B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = &v21 - v7;
  swift_getKeyPath();
  v23 = v0;
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  if (*(v0 + 24))
  {
    sub_1D4418134();
    v8 = sub_1D44181A4();
    v9 = sub_1D441A164();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D4171000, v8, v9, "Already started. Not generating waveform again.", v10, 2u);
      MEMORY[0x1DA6D8690](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 1;
    v23 = v0;
    sub_1D4417DD4();

    v12 = [*(v0 + 16) audioModel];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 composedAudioAssetURLs];

      if (v14)
      {
        sub_1D4417234();
        v15 = sub_1D4419E44();

        v16 = sub_1D4419F94();
        v17 = v22;
        (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
        sub_1D4419F54();

        v18 = sub_1D4419F44();
        v19 = swift_allocObject();
        v20 = MEMORY[0x1E69E85E0];
        v19[2] = v18;
        v19[3] = v20;
        v19[4] = v15;
        v19[5] = v1;
        sub_1D42F05B0(0, 0, v17, &unk_1D4436238, v19);
      }
    }
  }
}

uint64_t sub_1D42EE858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9AC0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B78);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B80);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_1D4417234();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_1D4419F54();
  v5[26] = sub_1D4419F44();
  v11 = sub_1D4419F04();
  v5[27] = v11;
  v5[28] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D42EEA88, v11, v10);
}

uint64_t sub_1D42EEA88()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v0 + 184);
    v23 = *(v0 + 136);
    v4 = *(v0 + 112);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9AC8);
    v5 = OBJC_IVAR____TtC7NotesUI22AudioWaveformGenerator___observationRegistrar;
    *(v0 + 240) = v22;
    *(v0 + 248) = v5;
    LODWORD(v5) = *(v3 + 80);
    *(v0 + 304) = v5;
    v19 = *MEMORY[0x1E69E8790];
    *(v0 + 308) = *MEMORY[0x1E69E8790];
    *(v0 + 256) = *(v3 + 72);
    v6 = *(v3 + 16);
    *(v0 + 264) = v6;
    *(v0 + 272) = 0;
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    v20 = *(v0 + 144);
    v9 = *(v0 + 120);
    v21 = *(v0 + 128);
    v18 = *(v0 + 104);
    v6(v7, v1 + ((v5 + 32) & ~v5), v8);
    type metadata accessor for AudioWaveformSource(0);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer) = 0;
    *(v10 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_targetSampleRate) = 0x40E7700000000000;
    *(v10 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_samplesPerWaveformSlice) = 1920;
    *(v10 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_progressThreshold) = 100;
    *(v0 + 280) = v10;
    (*(v3 + 32))(v10 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url, v7, v8);
    *(v10 + 16) = 1;
    (*(v4 + 104))(v9, v19, v18);
    v6(v7, v10 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url, v8);
    v11 = swift_task_alloc();
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    sub_1D441A034();

    (*(v3 + 8))(v7, v8);
    sub_1D4419FC4();
    (*(v23 + 8))(v20, v21);
    v12 = sub_1D4419F44();
    *(v0 + 288) = v12;
    v13 = swift_task_alloc();
    *(v0 + 296) = v13;
    *v13 = v0;
    v13[1] = sub_1D42EEDE8;
    v14 = *(v0 + 152);
    v15 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DB90](v0 + 40, v12, v15, v14, v0 + 48);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1D42EEDE8()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1D42EF4FC;
  }

  else
  {
    v5 = sub_1D42EEF08;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D42EEF08()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      *(v0 + 56) = MEMORY[0x1E69E7CC0];
      sub_1D43CF18C(0, v2, 0);
      v3 = *(v0 + 56);
      v4 = v3[2];
      v5 = v4;
      v6 = 32;
      do
      {
        v7 = *(v1 + v6);
        *(v0 + 56) = v3;
        v8 = v3[3];
        v9 = v4 + 1;
        if (v4 >= v8 >> 1)
        {
          sub_1D43CF18C((v8 > 1), v4 + 1, 1);
          v3 = *(v0 + 56);
        }

        v3[2] = v9;
        v10 = &v3[v5];
        *(v10 + 8) = v7;
        *(v10 + 36) = 0;
        ++v5;
        v6 += 4;
        v4 = v9;
        --v2;
      }

      while (v2);
    }

    else
    {

      v3 = MEMORY[0x1E69E7CC0];
    }

    v15 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 64) = v15;
    sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
    sub_1D4417DE4();

    *(v0 + 72) = v15;
    swift_getKeyPath();
    sub_1D4417E04();

    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v21 = v3[2];
    v22 = *(v15 + 32);
    v23 = *(v22 + 2);
    v24 = v23 + v21;
    if (__OFADD__(v23, v21))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 32) = v22;
      if (isUniquelyReferenced_nonNull_native && v24 <= *(v22 + 3) >> 1)
      {
        if (v3[2])
        {
          goto LABEL_17;
        }
      }

      else
      {
        v30 = *(v0 + 96);
        if (v23 <= v24)
        {
          v31 = v23 + v21;
        }

        else
        {
          v31 = v23;
        }

        isUniquelyReferenced_nonNull_native = sub_1D438CE8C(isUniquelyReferenced_nonNull_native, v31, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
        *(v30 + 32) = isUniquelyReferenced_nonNull_native;
        if (v3[2])
        {
LABEL_17:
          v26 = *(v22 + 2);
          if ((*(v22 + 3) >> 1) - v26 >= v21)
          {
            memcpy(&v22[8 * v26 + 32], v3 + 4, 8 * v21);

            if (!v21)
            {
LABEL_26:
              v32 = *(v0 + 96);
              *(v32 + 32) = v22;
              swift_endAccess();
              *(v0 + 80) = v32;
              swift_getKeyPath();
              sub_1D4417DF4();

              goto LABEL_28;
            }

            v27 = *(v22 + 2);
            v28 = __OFADD__(v27, v21);
            v29 = v27 + v21;
            if (!v28)
            {
              *(v22 + 2) = v29;
              goto LABEL_26;
            }

LABEL_34:
            __break(1u);
            return MEMORY[0x1EEE6DB90](isUniquelyReferenced_nonNull_native, v17, v18, v19, v20);
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      if (!v21)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 272) + 1;
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  if (v12 != v11)
  {
    v33 = *(v0 + 264);
    v34 = *(v0 + 272) + 1;
    *(v0 + 272) = v34;
    v45 = v33;
    v46 = *(v0 + 308);
    v36 = *(v0 + 184);
    v35 = *(v0 + 192);
    v37 = *(v0 + 176);
    v47 = *(v0 + 144);
    v49 = *(v0 + 136);
    v38 = *(v0 + 120);
    v48 = *(v0 + 128);
    v39 = *(v0 + 112);
    v44 = *(v0 + 104);
    v33(v35, *(v0 + 88) + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v0 + 256) * v34, v37);
    type metadata accessor for AudioWaveformSource(0);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer) = 0;
    *(v40 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_targetSampleRate) = 0x40E7700000000000;
    *(v40 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_samplesPerWaveformSlice) = 1920;
    *(v40 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_progressThreshold) = 100;
    *(v0 + 280) = v40;
    (*(v36 + 32))(v40 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url, v35, v37);
    *(v40 + 16) = 1;
    (*(v39 + 104))(v38, v46, v44);
    v45(v35, v40 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url, v37);
    v41 = swift_task_alloc();
    *(v41 + 16) = v35;
    *(v41 + 24) = v40;
    sub_1D441A034();

    (*(v36 + 8))(v35, v37);
    sub_1D4419FC4();
    (*(v49 + 8))(v47, v48);
LABEL_28:
    v42 = sub_1D4419F44();
    *(v0 + 288) = v42;
    v43 = swift_task_alloc();
    *(v0 + 296) = v43;
    *v43 = v0;
    v43[1] = sub_1D42EEDE8;
    v19 = *(v0 + 152);
    v18 = MEMORY[0x1E69E85E0];
    v20 = v0 + 48;
    isUniquelyReferenced_nonNull_native = (v0 + 40);
    v17 = v42;

    return MEMORY[0x1EEE6DB90](isUniquelyReferenced_nonNull_native, v17, v18, v19, v20);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D42EF4FC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t AudioWaveformSource.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer) = 0;
  *(v2 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_targetSampleRate) = 0x40E7700000000000;
  *(v2 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_samplesPerWaveformSlice) = 1920;
  *(v2 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_progressThreshold) = 100;
  v3 = OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url;
  v4 = sub_1D4417234();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t sub_1D42EF694(uint64_t result)
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

  result = sub_1D438CE8C(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_1D42EF790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D41775C8;

  return sub_1D42EE858(a1, v4, v5, v7, v6);
}

uint64_t sub_1D42EF850(uint64_t result)
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

  result = sub_1D438CF8C(result, v11, 1, v3);
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

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_1D42EF93C(uint64_t a1)
{
  v7 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1D441A8C4();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1D441A8C4();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1D42F4130(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_1D43C15DC(&v34, (v3 + 8 * v13 + 32), v14, a1);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_1D419FA48();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v3 = *(v3 + 16);
  v9 = v34;
  v4 = v35;
  v6 = v37;
  v31 = v36;
  v5 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_1D441A8F4())
    {
      goto LABEL_11;
    }

    sub_1D44198E4();
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= (v37 + 1))
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v5 = 0;
        goto LABEL_30;
      }

      v5 = *(v35 + 8 * v18);
      ++v6;
      if (v5)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v5));
  v5 &= v5 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));

  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v5;
  v6 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1D4419E94();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v3 > v25)
  {
    v25 = v3;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v3 == v32)
      {
        v3 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v3++) = v19;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1D441A8F4())
      {
        sub_1D44198E4();
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v5)
    {
      break;
    }

    v26 = v6;
LABEL_54:
    v29 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v19 = *(*(v9 + 48) + ((v26 << 9) | (8 * v29)));

    v28 = v26;
LABEL_39:
    v34 = v9;
    v35 = v4;
    v36 = v31;
    v37 = v28;
    v6 = v28;
    v38 = v5;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v3;
      goto LABEL_11;
    }
  }

  if (v24 <= (v6 + 1))
  {
    v27 = v6 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v5 = 0;
      goto LABEL_39;
    }

    v5 = *(v4 + 8 * v26);
    ++v6;
    if (v5)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1D42EFCEC(uint64_t result)
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

  v3 = sub_1D438D5A0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_1D4417884();
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

uint64_t sub_1D42EFE18(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D438D2B4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D42EFF24(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D441A8C4();
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

  v15 = sub_1D441A8C4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D42F4130(result);
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

uint64_t sub_1D42F0044(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1D42F0164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v5;
  v11 = *(*v5 + 16);
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a3;
  v7 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v14 = v4[3] >> 1, v14 < v12))
  {
    if (v11 <= v12)
    {
      v15 = v11 + v10;
    }

    else
    {
      v15 = v11;
    }

    result = sub_1D438D3E4(result, v15, 1, v4);
    v4 = result;
    v14 = result[3] >> 1;
  }

  v16 = v14 - v4[2];
  if (v9 == v6)
  {
    if (v10 <= 0)
    {
      v10 = 0;
      v8 = v6;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 < v10)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B48);
    result = swift_arrayInitWithCopy();
    if (v10 <= 0)
    {
LABEL_16:
      v8 = v9;
LABEL_17:
      if (v10 != v16)
      {
        result = swift_unknownObjectRelease();
LABEL_19:
        *v5 = v4;
        return result;
      }

LABEL_23:
      v20 = v4[2];
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      sub_1D417CF94(&v31, &v29, &qword_1EC7C9B50);
      while (v30)
      {
        sub_1D41769C4(&v29, &qword_1EC7C9B50);
        v22 = v4[3];
        v23 = v22 >> 1;
        if ((v22 >> 1) < v20 + 1)
        {
          v4 = sub_1D438D3E4((v22 > 1), v20 + 1, 1, v4);
          v23 = v4[3] >> 1;
        }

        sub_1D417CF94(&v31, &v27, &qword_1EC7C9B50);
        if (v28)
        {
          if (v20 <= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v20;
          }

          v26 = v24;
          v25 = &v4[5 * v20 + 4];
          while (1)
          {
            sub_1D419FAA8(&v27, &v29);
            if (v26 == v20)
            {
              break;
            }

            sub_1D41769C4(&v31, &qword_1EC7C9B50);
            result = sub_1D419FAA8(&v29, v25);
            if (v8 == v9)
            {
              v33 = 0;
              v8 = v9;
              v31 = 0u;
              v32 = 0u;
            }

            else
            {
              if (v8 < v6 || v8 >= v9)
              {
                goto LABEL_45;
              }

              sub_1D42D73C8(v7 + 40 * v8++, &v31);
            }

            sub_1D417CF94(&v31, &v27, &qword_1EC7C9B50);
            v25 += 40;
            ++v20;
            if (!v28)
            {
              goto LABEL_25;
            }
          }

          __swift_destroy_boxed_opaque_existential_0(&v29);
          v21 = v26;
          v20 = v26;
        }

        else
        {
LABEL_25:
          sub_1D41769C4(&v27, &qword_1EC7C9B50);
          v21 = v20;
        }

        v4[2] = v21;
        sub_1D417CF94(&v31, &v29, &qword_1EC7C9B50);
      }

      sub_1D41769C4(&v31, &qword_1EC7C9B50);
      swift_unknownObjectRelease();
      result = sub_1D41769C4(&v29, &qword_1EC7C9B50);
      goto LABEL_19;
    }

    v17 = v4[2];
    v18 = __OFADD__(v17, v10);
    v19 = v17 + v10;
    if (!v18)
    {
      v4[2] = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D42F04C4(uint64_t result)
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

  result = sub_1D438D814(result, v11, 1, v3);
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

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

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

uint64_t sub_1D42F05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D417CF94(a3, v22 - v9, &qword_1EC7C9F60);
  v11 = sub_1D4419F94();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D41769C4(v10, &qword_1EC7C9F60);
  }

  else
  {
    sub_1D4419F84();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D4419F04();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D4419CA4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1D41769C4(a3, &qword_1EC7C9F60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D41769C4(a3, &qword_1EC7C9F60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D42F0884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  sub_1D417CF94(a3, v24 - v11, &qword_1EC7C9F60);
  v13 = sub_1D4419F94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D41769C4(v12, &qword_1EC7C9F60);
  }

  else
  {
    sub_1D4419F84();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D4419F04();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D4419CA4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D41769C4(a3, &qword_1EC7C9F60);

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

  sub_1D41769C4(a3, &qword_1EC7C9F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D42F0B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D43CF18C(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    v5 = *(v12 + 16);
    v6 = 8 * v5;
    do
    {
      v7 = *v4;
      v8 = *(v12 + 24);
      v9 = v5 + 1;
      if (v5 >= v8 >> 1)
      {
        sub_1D43CF18C((v8 > 1), v5 + 1, 1);
      }

      *(v12 + 16) = v9;
      v10 = v12 + v6;
      *(v10 + 32) = v7;
      *(v10 + 36) = 1;
      v6 += 8;
      ++v4;
      v5 = v9;
      --v1;
    }

    while (v1);
  }

  swift_getKeyPath();
  sub_1D42F480C(&qword_1EC7C9A98, type metadata accessor for AudioWaveformGenerator);
  sub_1D4417DE4();

  swift_getKeyPath();
  sub_1D4417E04();

  sub_1D42EF694(v2);
  swift_getKeyPath();
  sub_1D4417DF4();
}

uint64_t AudioWaveformGenerator.deinit()
{

  v1 = OBJC_IVAR____TtC7NotesUI22AudioWaveformGenerator___observationRegistrar;
  v2 = sub_1D4417E24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioWaveformGenerator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7NotesUI22AudioWaveformGenerator___observationRegistrar;
  v2 = sub_1D4417E24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AudioWaveformSource.init(url:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer) = 0;
  *(v1 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_targetSampleRate) = 0x40E7700000000000;
  *(v1 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_samplesPerWaveformSlice) = 1920;
  *(v1 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_progressThreshold) = 100;
  v3 = OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url;
  v4 = sub_1D4417234();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_1D42F0ED4()
{
  v1 = sub_1D4417234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9AC0);
  result = MEMORY[0x1EEE9AC00](v5);
  if (*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = 1;
    (*(v8 + 104))(&v10 - v7, *MEMORY[0x1E69E8790]);
    v9 = (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url, v1);
    MEMORY[0x1EEE9AC00](v9);
    *(&v10 - 2) = v4;
    *(&v10 - 1) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9AC8);
    sub_1D441A034();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1D42F10E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v24 = &v23 - v7;
  v9 = sub_1D4417234();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  sub_1D4419F64();
  v16 = sub_1D4419F94();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v10 + 16))(v12, v25, v9);
  v17 = a1;
  v18 = v4;
  (*(v5 + 16))(v8, v17, v4);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v19, v12, v9);
  (*(v5 + 32))(v21 + v20, v24, v18);
  *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;

  sub_1D42F1B3C(0, 0, v15, &unk_1D44363C0, v21);

  return sub_1D41769C4(v15, &qword_1EC7C9F60);
}

uint64_t sub_1D42F13D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1D44181B4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9900);
  v6[15] = swift_task_alloc();
  v8 = sub_1D4417054();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_1D4418034();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68);
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v6[25] = *(v11 + 64);
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D42F1608, 0, 0);
}

uint64_t sub_1D42F1608()
{
  sub_1D4417204();
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v3 + 16))(v1, v0[10], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  (*(v3 + 32))(v5 + v4, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  v7 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v8 = v7;
  sub_1D42D6080(inited);
  swift_setDeallocating();
  sub_1D42DA77C(inited + 32);
  sub_1D4417194();
  v9 = v0[19];
  v10 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];

  sub_1D4417044();
  (*(v12 + 8))(v11, v13);
  if ((*(v10 + 48))(v14, 1, v9) == 1)
  {
    sub_1D41769C4(v0[15], &qword_1EC7C9900);
LABEL_7:
    sub_1D42F2A60(v0[9], sub_1D42F4AA8, v5);
    goto LABEL_5;
  }

  v15 = v0[21];
  v16 = v0[19];
  v17 = v0[20];
  (*(v17 + 32))(v0[22], v0[15], v16);
  sub_1D4418014();
  v18 = sub_1D4418024();
  v19 = *(v17 + 8);
  v19(v15, v16);
  if ((v18 & 1) == 0)
  {
    v19(v0[22], v0[19]);
    goto LABEL_7;
  }

  sub_1D42F1DFC(v0[9], sub_1D42F4AA8, v5);
  v19(v0[22], v0[19]);
LABEL_5:
  v0[8] = 0;
  sub_1D441A004();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D42F1A38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68);
  sub_1D4419FF4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D42F1B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D417CF94(a3, v25 - v10, &qword_1EC7C9F60);
  v12 = sub_1D4419F94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D41769C4(v11, &qword_1EC7C9F60);
  }

  else
  {
    sub_1D4419F84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D4419F04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D4419CA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1D42F1DFC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v102 = a3;
  v106[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1D44181B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v93 - v14;
  v16 = sub_1D4417234();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);
  v20 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v21 = sub_1D42F3C68(v18);
  if (v3)
  {
    return;
  }

  v22 = v21;
  v23 = v15;
  v97 = v7;
  v98 = a2;
  v94 = v10;
  v95 = v13;
  v99 = 0;
  v24 = [v21 processingFormat];
  [v24 sampleRate];
  v26 = v25;

  v96 = v6;
  if (v26 == 48000.0)
  {
    v27 = 0;
    v103 = 0;
    goto LABEL_11;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:1 channels:48000.0];
  v29 = v6;
  v30 = v23;
  if (v28)
  {
    v31 = v28;
    v32 = [v22 processingFormat];
    v33 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v32 toFormat:v31];

    v103 = v33;
    if (v33)
    {
      [v103 setSampleRateConverterQuality_];
      v27 = [objc_allocWithZone(MEMORY[0x1E6958440]) &selRef:v31 startSessionAtSourceTime:1920 + 3];

      goto LABEL_11;
    }
  }

  sub_1D4418134();
  v34 = v22;

  v35 = sub_1D44181A4();
  v36 = sub_1D441A164();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412546;
    v39 = [v34 processingFormat];
    *(v37 + 4) = v39;
    *v38 = v39;
    *(v37 + 12) = 2048;
    *(v37 + 14) = 0x40E7700000000000;
    _os_log_impl(&dword_1D4171000, v35, v36, "AudioWaveformSource: Failed to create AVAudioConverter from %@ to standard format with sample rate: %f; will continue without sample rate conversion", v37, 0x16u);
    sub_1D41769C4(v38, &qword_1EC7C9918);
    v40 = v38;
    v29 = v96;
    MEMORY[0x1DA6D8690](v40, -1, -1);
    MEMORY[0x1DA6D8690](v37, -1, -1);
  }

  (*(v97 + 8))(v30, v29);
  v27 = 0;
  v103 = 0;
LABEL_11:
  v41 = [v22 processingFormat];
  v42 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v41 frameCapacity:1920];

  if (v42)
  {
    v43 = &selRef_initWithAttributedString_range_;
    v44 = [v22 framePosition];
    v45 = &selRef_isCalculateGraphExpressionAttachment;
    if (v44 >= [v22 length])
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v101 = v106;
      if (v103)
      {
        v46 = v27 == 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = v46;
      LODWORD(v104) = v47;
      v48 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v93 = v48;
        while (1)
        {
          if (v104)
          {
            aBlock[0] = 0;
            v49 = [v22 readIntoBuffer:v42 error:aBlock];
            v50 = aBlock[0];
            if (!v49)
            {
              v85 = aBlock[0];

              sub_1D4417104();

              swift_willThrow();
              return;
            }

            if (v27)
            {
              v51 = aBlock[0];
              v52 = v27;
            }

            else
            {
              v52 = v42;
              v61 = v50;
            }
          }

          else
          {
            v53 = swift_allocObject();
            *(v53 + 16) = v22;
            *(v53 + 24) = v42;
            v106[2] = sub_1D42F4854;
            v106[3] = v53;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v106[0] = sub_1D42F29F4;
            v106[1] = &block_descriptor_1;
            v54 = _Block_copy(aBlock);
            v55 = v22;
            v100 = v22;
            v56 = v103;
            v52 = v27;
            v57 = v42;

            aBlock[0] = 0;
            v58 = [v56 convertToBuffer:v52 error:aBlock withInputFromBlock:v54];
            v59 = v56;
            _Block_release(v54);
            v60 = aBlock[0];

            if (v58 == 3)
            {
              v104 = v59;
              v75 = v100;
              v76 = v52;

              if (v60)
              {
                v77 = v60;
                sub_1D4418134();
                v78 = v77;
                v79 = sub_1D44181A4();
                v80 = sub_1D441A164();
                v81 = v78;

                if (os_log_type_enabled(v79, v80))
                {
                  v82 = swift_slowAlloc();
                  v83 = swift_slowAlloc();
                  *v82 = 138412290;
                  *(v82 + 4) = v81;
                  *v83 = v60;
                  v84 = v81;
                  _os_log_impl(&dword_1D4171000, v79, v80, "AudioWaveformSource: Failed to convert buffer: %@", v82, 0xCu);
                  sub_1D41769C4(v83, &qword_1EC7C9918);
                  MEMORY[0x1DA6D8690](v83, -1, -1);
                  MEMORY[0x1DA6D8690](v82, -1, -1);
                }

                (*(v97 + 8))(v95, v96);
                swift_willThrow();
              }

              else
              {
                v86 = v94;
                sub_1D4418134();
                v87 = sub_1D44181A4();
                v88 = sub_1D441A164();
                v89 = os_log_type_enabled(v87, v88);
                v90 = v96;
                if (v89)
                {
                  v91 = swift_slowAlloc();
                  *v91 = 0;
                  _os_log_impl(&dword_1D4171000, v87, v88, "AudioWaveformSource: Failed to convert buffer", v91, 2u);
                  MEMORY[0x1DA6D8690](v91, -1, -1);
                }

                (*(v97 + 8))(v86, v90);
                sub_1D42F46DC();
                swift_allocError();
                *v92 = 2;
                swift_willThrow();
              }

              return;
            }

            v22 = v55;
            v43 = &selRef_initWithAttributedString_range_;
            v45 = &selRef_isCalculateGraphExpressionAttachment;
          }

          v62 = v27;
          if ([v52 frameLength] == 1920)
          {
            break;
          }

          v63 = [v22 v43[177]];
          if (v63 >= [v22 v45[270]])
          {
            v48 = v93;
            if (*(v93 + 2))
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          }
        }

        v64 = [v52 floatChannelData];
        v100 = v52;
        if (v64)
        {
          v65 = *v64;
          v66 = [v52 frameLength];
          vDSP_vabs(v65, 1, v65, 1, v66);
          LODWORD(aBlock[0]) = 2143289344;
          vDSP_maxv(v65, 1, aBlock, v66);
          v67 = aBlock[0];
        }

        else
        {
          v67 = 0;
        }

        v68 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1D438CF8C(0, *(v68 + 2) + 1, 1, v68);
        }

        v69 = v98;
        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        v48 = v68;
        if (v71 >= v70 >> 1)
        {
          v73 = sub_1D438CF8C((v70 > 1), v71 + 1, 1, v68);
          v69 = v98;
          v48 = v73;
        }

        *(v48 + 2) = v71 + 1;
        *&v48[4 * v71 + 32] = v67;
        if (v71 < 0x64)
        {
        }

        else
        {
          v69(v48);

          v48 = MEMORY[0x1E69E7CC0];
        }

        v45 = &selRef_isCalculateGraphExpressionAttachment;
        v72 = [v22 v43[177]];
        if (v72 < [v22 length])
        {
          continue;
        }

        break;
      }
    }

    if (*(v48 + 2))
    {
LABEL_46:
      v98(v48);
    }

LABEL_47:
  }

  else
  {
    sub_1D42F46DC();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
  }
}

void *sub_1D42F28F8(uint64_t a1, void *a2, id a3, void *a4)
{
  v4 = a4;
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  if ([a3 readIntoBuffer:a4 frameCount:a1 error:v13])
  {
    v7 = v13[0];
    v8 = [a3 framePosition];
    *a2 = 2 * (v8 >= [a3 length]);
    v9 = v4;
  }

  else
  {
    v10 = v13[0];
    v11 = sub_1D4417104();

    swift_willThrow();
    return 0;
  }

  return v4;
}

id sub_1D42F29F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

void sub_1D42F2A60(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v83 = a3;
  v84 = a2;
  v94[45] = *MEMORY[0x1E69E9840];
  v4 = sub_1D441A234();
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D44181B4();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v85 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  *(inited + 32) = sub_1D4419C54();
  *(inited + 40) = v15;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  sub_1D42EA814(inited);
  swift_setDeallocating();
  sub_1D41769C4(inited + 32, &unk_1EC7CB710);
  v16 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v17 = sub_1D44171C4();
  v18 = sub_1D4419B54();

  v19 = [v16 initWithURL:v17 options:v18];

  v20 = *MEMORY[0x1E69875A0];
  v92 = v19;
  v21 = [v92 tracksWithMediaType_];
  if (!v21)
  {
    sub_1D41766C0(0, &qword_1EC7C9B00);
    sub_1D4419E44();
    v21 = sub_1D4419E24();
  }

  sub_1D41766C0(0, &qword_1EC7C9B00);
  v22 = sub_1D4419E44();
  v23 = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:1 channels:48000.0];
  if (!v23)
  {

    __break(1u);
  }

  v24 = v23;
  v25 = swift_initStackObject();
  v25[1] = xmmword_1D44361A0;
  *(v25 + 4) = sub_1D4419C54();
  *(v25 + 5) = v26;
  v27 = MEMORY[0x1E69E7668];
  *(v25 + 9) = MEMORY[0x1E69E7668];
  *(v25 + 12) = 1819304813;
  *(v25 + 10) = sub_1D4419C54();
  *(v25 + 11) = v28;
  [v24 sampleRate];
  *(v25 + 15) = MEMORY[0x1E69E63B0];
  *(v25 + 12) = v29;
  *(v25 + 16) = sub_1D4419C54();
  *(v25 + 17) = v30;
  v91 = v24;
  v31 = [v24 channelCount];
  *(v25 + 21) = v27;
  *(v25 + 36) = v31;
  *(v25 + 22) = sub_1D4419C54();
  *(v25 + 23) = v32;
  *(v25 + 27) = MEMORY[0x1E69E6530];
  *(v25 + 24) = 32;
  *(v25 + 28) = sub_1D4419C54();
  *(v25 + 29) = v33;
  *(v25 + 33) = MEMORY[0x1E69E6370];
  *(v25 + 240) = 1;
  v34 = sub_1D42EA814(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB710);
  swift_arrayDestroy();
  if (v22 >> 62)
  {
    v35 = sub_1D441A8C4();
  }

  else
  {
    v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v92;
  if (v35 == 1)
  {

    if ((v22 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1DA6D6410](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_56;
      }

      v37 = *(v22 + 32);
    }

    v21 = v37;

    v38 = &selRef_initWithTrack_outputSettings_;
    v39 = 0x1E6987EA8;
  }

  else
  {

    if (v35 <= 1)
    {

      sub_1D4418134();
      v54 = sub_1D44181A4();
      v55 = sub_1D441A164();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1D4171000, v54, v55, "AudioWaveformSource: Source asset has no audio tracks", v56, 2u);
        MEMORY[0x1DA6D8690](v56, -1, -1);
      }

      (*(v89 + 8))(v13, v90);
      sub_1D42F46DC();
      swift_allocError();
      *v57 = 3;
      swift_willThrow();

      goto LABEL_51;
    }

    v38 = &selRef_initWithAudioTracks_audioSettings_;
    v39 = 0x1E6987E80;
  }

  v40 = objc_allocWithZone(*v39);
  v41 = sub_1D4419B54();

  v22 = [v40 *v38];

  v42 = objc_allocWithZone(MEMORY[0x1E6987E78]);
  v94[0] = 0;
  v43 = [v42 initWithAsset:v36 error:v94];
  if (!v43)
  {
    v53 = v94[0];
    sub_1D4417104();

    swift_willThrow();
    return;
  }

  v13 = v43;
  v44 = v94[0];

  if (([v13 canAddOutput_] & 1) == 0)
  {
    v58 = v88;
    sub_1D4418134();
    v59 = sub_1D44181A4();
    v60 = sub_1D441A164();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1D4171000, v59, v60, "AudioWaveformSource: Can't add AVAssetReaderOutput", v61, 2u);
      MEMORY[0x1DA6D8690](v61, -1, -1);
    }

    (*(v89 + 8))(v58, v90);
    sub_1D42F46DC();
    swift_allocError();
    *v62 = 4;
    swift_willThrow();

    goto LABEL_51;
  }

  [v13 addOutput_];
  if (![v13 startReading])
  {
    v63 = v85;
    sub_1D4418134();
    v64 = v13;
    v65 = sub_1D44181A4();
    v66 = sub_1D441A164();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = [v64 error];
      if (v69)
      {
        v69 = _swift_stdlib_bridgeErrorToNSError();
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      *(v67 + 4) = v69;
      *v68 = v70;
      _os_log_impl(&dword_1D4171000, v65, v66, "AudioWaveformSource: AVAssetReader failed to start with error: %@", v67, 0xCu);
      sub_1D41769C4(v68, &qword_1EC7C9918);
      MEMORY[0x1DA6D8690](v68, -1, -1);
      MEMORY[0x1DA6D8690](v67, -1, -1);
      v36 = v92;
    }

    (*(v89 + 8))(v63, v90);
    v77 = [v64 error];
    sub_1D42F46DC();
    swift_allocError();
    *v78 = v77;
    swift_willThrow();

LABEL_51:
    return;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v94[0] = MEMORY[0x1E69E7CC0];
  v46 = [v22 copyNextSampleBuffer];
  if (!v46)
  {
    v34 = v45;
    v48 = v87;
LABEL_37:
    v71 = *(v86 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer);
    if (!v71)
    {
      v36 = v91;
      v25 = v92;
      if (!*(v34 + 2))
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    v21 = v71;
    v72 = [v21 frameLength];
    v36 = v91;
    v25 = v92;
    if (!v72)
    {
LABEL_43:

      if (!*(v34 + 2))
      {
LABEL_45:

        return;
      }

LABEL_44:
      v84(v34);
      goto LABEL_45;
    }

    v73 = sub_1D42F4730(v21);
    v3 = LODWORD(v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v48;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_40:
      v76 = *(v34 + 2);
      v75 = *(v34 + 3);
      if (v76 >= v75 >> 1)
      {
        v34 = sub_1D438CF8C((v75 > 1), v76 + 1, 1, v34);
      }

      *(v34 + 2) = v76 + 1;
      *&v34[4 * v76 + 32] = v3;
      [v21 setFrameLength_];
      goto LABEL_43;
    }

LABEL_56:
    v34 = sub_1D438CF8C(0, *(v34 + 2) + 1, 1, v34);
    goto LABEL_40;
  }

  v47 = v46;
  v89 = *MEMORY[0x1E695E480];
  v90 = (v82 + 8);
  v34 = v45;
  v48 = v87;
  while (1)
  {
    v49 = sub_1D441A204();
    if (v49)
    {
      break;
    }

LABEL_20:
    v47 = [v22 copyNextSampleBuffer];
    if (!v47)
    {
      goto LABEL_37;
    }
  }

  v88 = &v79;
  MEMORY[0x1EEE9AC00](v49);
  v87 = &v79 - 6;
  v50 = v86;
  *(&v79 - 4) = v91;
  *(&v79 - 3) = v50;
  *(&v79 - 2) = v94;
  v93 = v45;
  v85 = sub_1D42F480C(&qword_1EC7C9B10, MEMORY[0x1E69E7ED0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B18);
  sub_1D417645C(&qword_1EC7C9B20, &qword_1EC7C9B18);
  v51 = v80;
  v52 = v81;
  sub_1D441A814();
  sub_1D441A1F4();
  if (!v48)
  {
    (*v90)(v51, v52);
    v34 = v94[0];
    if (*(v94[0] + 2) < 0x65uLL)
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v84(v94[0]);

      v45 = MEMORY[0x1E69E7CC0];
      v94[0] = MEMORY[0x1E69E7CC0];
      v34 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_20;
  }

  (*v90)(v51, v52);
}

void sub_1D42F375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:a3 bufferListNoCopy:sub_1D4419AE4() deallocator:0];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D42F37E8(v3);
    sub_1D42EF850(v5);
  }
}

char *sub_1D42F37E8(id a1)
{
  v2 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v38 = OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer;
  if (!*(v1 + OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_processingBuffer))
  {
    v3 = [a1 format];
    v4 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v3 frameCapacity:1920];

    v5 = *(v37 + v38);
    *(v37 + v38) = v4;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_forcesLightMode;
  while (v6 < [v2 v8[16]])
  {
    v10 = *(v37 + v38);
    if (!v10)
    {
      break;
    }

    if (v6 >= 0xFFFFF880)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v11 = v10;
    v12 = [v2 v8[16]];
    v13 = v12 - v6;
    if (v12 < v6)
    {
      goto LABEL_32;
    }

    v14 = [v11 v8[16]];
    v15 = 1920 - v14;
    if (v14 > 0x780)
    {
      goto LABEL_33;
    }

    if (v13 >= v6 + 1920)
    {
      v16 = v6 + 1920;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v18 = [v11 floatChannelData];
    if (v18)
    {
      v19 = *v18;
      v20 = [v2 floatChannelData];
      if (v20)
      {
        v36 = v7;
        v21 = *v20;
        v22 = [v11 v8[16]];
        v23 = v2;
        v24 = [v2 format];
        v25 = [v24 streamDescription];

        v26 = v25[6] * v17;
        if ((v17 * v25[6]) >> 64 != v26 >> 63)
        {
          goto LABEL_36;
        }

        memcpy((v19 + 4 * v22), (v21 + 4 * v6), v26);
        v2 = v23;
        v7 = v36;
        v8 = &selRef_forcesLightMode;
      }
    }

    v27 = [v11 v8[16]];
    if (__CFADD__(v27, v17))
    {
      goto LABEL_34;
    }

    [v11 setFrameLength_];
    v28 = [v11 v8[16]];
    if (v28 == [v11 frameCapacity])
    {
      v29 = [v11 floatChannelData];
      if (v29)
      {
        v30 = *v29;
        v31 = [v11 v8[16]];
        vDSP_vabs(v30, 1, v30, 1, v31);
        __C = NAN;
        vDSP_maxv(v30, 1, &__C, v31);
        v32 = __C;
      }

      else
      {
        v32 = 0.0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D438CF8C(0, *(v7 + 2) + 1, 1, v7);
      }

      v8 = &selRef_forcesLightMode;
      v34 = *(v7 + 2);
      v33 = *(v7 + 3);
      if (v34 >= v33 >> 1)
      {
        v7 = sub_1D438CF8C((v33 > 1), v34 + 1, 1, v7);
      }

      *(v7 + 2) = v34 + 1;
      *&v7[4 * v34 + 32] = v32;
      [v11 setFrameLength_];
    }

    v9 = __CFADD__(v6, v17);
    v6 += v17;
    if (v9)
    {
      goto LABEL_35;
    }
  }

  return v7;
}

uint64_t AudioWaveformSource.deinit()
{
  v1 = OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url;
  v2 = sub_1D4417234();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AudioWaveformSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7NotesUI19AudioWaveformSource_url;
  v2 = sub_1D4417234();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1D42F3C68(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D44171C4();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1D4417234();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1D4417104();

    swift_willThrow();
    v11 = sub_1D4417234();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1D42F3DC4()
{
  result = sub_1D4417E24();
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioWaveformGenerator.Sample(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioWaveformGenerator.Sample(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D42F401C()
{
  result = sub_1D4417234();
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

uint64_t sub_1D42F4130(uint64_t a1)
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

  sub_1D441A8C4();
LABEL_9:
  result = sub_1D441AA14();
  *v1 = result;
  return result;
}

uint64_t sub_1D42F41D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D441A8C4();
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
      result = sub_1D441A8C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D417645C(&unk_1EC7CB700, &qword_1EC7C9B58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B58);
            v9 = sub_1D43912F0(v13, i, a3);
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
        sub_1D44198E4();
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

uint64_t sub_1D42F4374(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D441A8C4();
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
      result = sub_1D441A8C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D417645C(&qword_1EC7C9AF8, &qword_1EC7C9AF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9AF0);
            v9 = sub_1D4391270(v13, i, a3);
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
        sub_1D41766C0(0, &qword_1EDE32740);
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

uint64_t sub_1D42F4528(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D441A8C4();
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
      result = sub_1D441A8C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D417645C(&qword_1EC7C9B38, &qword_1EC7C9B30);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B30);
            v9 = sub_1D4391378(v13, i, a3);
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
        sub_1D41766C0(0, &qword_1EDE32768);
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

unint64_t sub_1D42F46DC()
{
  result = qword_1EC7C9B08;
  if (!qword_1EC7C9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9B08);
  }

  return result;
}

double sub_1D42F4730(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [a1 floatChannelData];
  if (!v2)
  {
    return 0.0;
  }

  v3 = *v2;
  v4 = [a1 frameLength];
  vDSP_vabs(v3, 1, v3, 1, v4);
  __C = NAN;
  vDSP_maxv(v3, 1, &__C, v4);
  *&result = __C;
  return result;
}

uint64_t sub_1D42F480C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D42F485C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D4417234() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D41775C8;

  return sub_1D42F13D8(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1D42F49F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return sub_1D4176ADC(a1, v4);
}

uint64_t sub_1D42F4AA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B68);

  return sub_1D42F1A38(a1);
}

uint64_t sub_1D42F4B40()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t get_enum_tag_for_layout_string_7NotesUI19AudioWaveformSourceC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D42F4BA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D42F4C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void sub_1D42F4C7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = sub_1D4417234();
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BE0);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  v11 = [objc_opt_self() sharedInstance];
  v12 = *MEMORY[0x1E6958060];
  v13 = *MEMORY[0x1E6958130];
  aBlock[0] = 0;
  v14 = [v11 setCategory:v12 mode:v13 options:524292 error:aBlock];
  v15 = aBlock[0];
  if (!v14)
  {
    v35 = aBlock[0];
    sub_1D4417104();

LABEL_9:
    swift_willThrow();

    return;
  }

  v46 = v3;
  aBlock[0] = 0;
  v16 = v15;
  if (![v11 setActive:1 withOptions:1 error:aBlock])
  {
    v36 = aBlock[0];
    sub_1D4417104();

    goto LABEL_9;
  }

  v45 = a2;
  v17 = *&v2[OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_audioEngine];
  v18 = aBlock[0];
  v19 = [v17 inputNode];
  [v19 removeTapOnBus_];

  v20 = v17;
  v21 = [v17 inputNode];
  v22 = [v21 inputFormatForBus_];

  [v22 sampleRate];
  if (v23 <= 0.0 || ![v22 channelCount])
  {
    sub_1D42F90C8();
    swift_allocError();
    *v37 = v22;
    goto LABEL_9;
  }

  v44 = v20;
  v43 = [v20 inputNode];
  sub_1D4417BF4();
  v24 = v2;
  v42 = sub_1D4417BE4();
  aBlock[4] = sub_1D42F911C;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D42F570C;
  aBlock[3] = &block_descriptor_45;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  v27 = v43;
  [v43 installTapOnBus:0 bufferSize:v42 format:v26 block:v25];
  _Block_release(v25);

  [v44 prepare];
  sub_1D4417D94();
  (*(v47 + 104))(v10, *MEMORY[0x1E69E8650], v8);
  v28 = v45;
  v29 = v24;
  v30 = v26;
  sub_1D4419FE4();
  v31 = sub_1D42F8438(v26);
  (*(v48 + 16))(v7, v49, v5);
  type metadata accessor for AudioAssetWriter();
  v32 = swift_allocObject();
  v33 = v46;
  sub_1D42F64D8(v7, v31);
  if (v33)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BF0);
    (*(*(v34 - 8) + 8))(v28, v34);
LABEL_13:

    return;
  }

  *&v29[OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_assetWriter] = v32;

  aBlock[0] = 0;
  if ([v44 startAndReturnError_])
  {
    v38 = aBlock[0];
    goto LABEL_13;
  }

  v39 = aBlock[0];
  sub_1D4417104();

  swift_willThrow();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BF0);
  (*(*(v40 - 8) + 8))(v45, v40);
}

uint64_t sub_1D42F5258(void *a1, void *a2, uint64_t a3)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1D4417D94();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BF8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_outputContinuation;
  swift_beginAccess();
  v17 = 1;
  if (!(*(v10 + 48))(a3 + v16, 1, v9))
  {
    (*(v10 + 16))(v12, a3 + v16, v9);
    v18 = a1;
    v19 = v27;
    sub_1D4417D74();
    sub_1D4419FA4();
    (*(v10 + 8))(v12, v9);
    v17 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C00);
  (*(*(v20 - 8) + 56))(v15, v17, 1, v20);
  sub_1D41769C4(v15, &qword_1EC7C9BF8);
  v21 = sub_1D4419F94();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_1D4419F54();
  v22 = a1;

  v23 = sub_1D4419F44();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a3;
  v24[5] = v22;
  sub_1D435F724(0, 0, v7, &unk_1D4436648, v24);
}

uint64_t sub_1D42F55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1D4419F54();
  v5[5] = sub_1D4419F44();
  v7 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D42F566C, v7, v6);
}

uint64_t sub_1D42F566C()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_assetWriter);
  if (v2)
  {
    v3 = *(v0 + 32);

    sub_1D42F6AF0(v3);
  }

  **(v0 + 16) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_1D42F570C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_1D42F5790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BB8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_outputContinuation;
  swift_beginAccess();
  sub_1D42F8E00(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_1D42F58C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BB8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_audioEngine);
  [v12 stop];
  v13 = [v12 inputNode];
  [v13 removeTapOnBus_];

  v14 = OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_outputContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v1 + v14, 1, v8))
  {
    (*(v9 + 16))(v11, v1 + v14, v8);
    sub_1D4419FB4();
    (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  sub_1D42F8E00(v7, v1 + v14);
  swift_endAccess();
  v15 = sub_1D4419F94();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1D4419F54();

  v16 = sub_1D4419F44();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v1;
  sub_1D435F9F8(0, 0, v4, &unk_1D44365F8, v17);
}

uint64_t sub_1D42F5BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D44181B4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D4419F54();
  v4[6] = sub_1D4419F44();
  v7 = sub_1D4419F04();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D42F5CD8, v7, v6);
}

uint64_t sub_1D42F5CD8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_assetWriter;
  v0[9] = OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_assetWriter;
  v3 = *(v1 + v2);
  v0[10] = v3;
  if (v3)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D42F5DB4, 0, 0);
  }

  else
  {

    *(v0[2] + v0[9]) = 0;

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D42F5DB4()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D42F5E94;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D42F5E94()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D42F608C;
  }

  else
  {
    v2 = sub_1D42F5FA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D42F5FA8()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D42F600C, v1, v2);
}

uint64_t sub_1D42F600C()
{

  *(v0[2] + v0[9]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D42F608C()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D42F60F0, v1, v2);
}

uint64_t sub_1D42F60F0()
{
  v1 = v0[12];

  sub_1D4418134();
  v2 = v1;
  v3 = sub_1D44181A4();
  v4 = sub_1D441A164();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D4171000, v3, v4, "Failed to finish writing audio file: %@", v7, 0xCu);
    sub_1D41769C4(v8, &qword_1EC7C9918);
    MEMORY[0x1DA6D8690](v8, -1, -1);
    MEMORY[0x1DA6D8690](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  *(v0[2] + v0[9]) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D42F6294()
{
  sub_1D41769C4(v0 + OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_outputContinuation, &qword_1EC7C9BD0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVAudioEngineRecordingMethod()
{
  result = qword_1EC7C9BA0;
  if (!qword_1EC7C9BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D42F637C()
{
  sub_1D42F6424();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D42F6424()
{
  if (!qword_1EC7C9BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9BB8);
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7C9BB0);
    }
  }
}

uint64_t sub_1D42F6488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D44182E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D42F64D8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = sub_1D4417234();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D441A2B4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D441A254();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1D4419484();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v2 + 32) = xmmword_1D4436490;
  v10 = sub_1D41766C0(0, &qword_1EDE33D70);
  v37[2] = "CMBuffer8@AVAudioTime16";
  v37[3] = v10;
  sub_1D4419464();
  v45.value = MEMORY[0x1E69E7CC0];
  sub_1D42F912C(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  v11 = v40;
  sub_1D418D674(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  (*(v38 + 104))(v7, *MEMORY[0x1E69E8090], v39);
  v12 = v37[4];
  *(v12 + 48) = sub_1D441A314();
  *(v12 + 56) = 0x4000000000000000;
  *(v12 + 64) = MEMORY[0x1E69E7CC0];
  v13 = sub_1D4417174();
  if ((v14 & 1) != 0 || v13)
  {
    v19 = v43;
    v18 = v44;
    goto LABEL_6;
  }

  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1D44171C4();
  v45.value = 0;
  v17 = [v15 removeItemAtURL:v16 error:&v45];

  v18 = v44;
  v19 = v43;
  if (v17)
  {
    v20 = v45.value;
LABEL_6:
    v21 = v37[1];
    goto LABEL_8;
  }

  v22 = v45.value;
  v23 = sub_1D4417104();

  swift_willThrow();
  v21 = 0;
LABEL_8:
  v24 = v41;
  (*(v19 + 16))(v41, v11, v18);
  v25 = *MEMORY[0x1E6987478];
  v26 = objc_allocWithZone(MEMORY[0x1E6987ED8]);
  v27 = v25;
  v28 = sub_1D42F86FC(v24, v27);
  if (v21)
  {

    (*(v19 + 8))(v11, v18);
    sub_1D42F8D70(*(v12 + 32));

    type metadata accessor for AudioAssetWriter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v28;

    *(v12 + 16) = v29;
    v30 = v29;
    CMTimeMakeWithSeconds(&v45, 2.0, 600);
    [v30 setMovieFragmentInterval_];

    v31 = *MEMORY[0x1E69875A0];
    v32 = objc_allocWithZone(MEMORY[0x1E6987EE0]);
    v33 = sub_1D4419B54();

    v34 = [v32 initWithMediaType:v31 outputSettings:v33 sourceFormatHint:0];

    *(v12 + 24) = v34;
    [v34 setExpectsMediaDataInRealTime_];
    if ([*(v12 + 16) canAddInput_])
    {
      [*(v12 + 16) addInput_];
      (*(v19 + 8))(v11, v18);
    }

    else
    {
      sub_1D42F8D84();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();
      (*(v19 + 8))(v11, v18);
    }
  }

  return v12;
}

uint64_t sub_1D42F6AF0(void *a1)
{
  v2 = v1;
  v4 = sub_1D4419444();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D4419484();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1D42F8DD8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_1D4419464();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D42F912C(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D418D674(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

void sub_1D42F6DB4(void *a1)
{
  v2 = v1;
  v50 = sub_1D44181B4();
  v4 = *(v50 - 8);
  v5 = MEMORY[0x1EEE9AC00](v50);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = sub_1D44194D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 48);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = sub_1D4419504();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (*(v2 + 32) != 1)
    {
LABEL_5:
      swift_beginAccess();
      while (1)
      {
        v19 = *(v2 + 64);
        if (v19 >> 62)
        {
          if (!sub_1D441A8C4())
          {
LABEL_35:
            if ([*(v2 + 24) isReadyForMoreMediaData])
            {
              sub_1D42F7510(a1);
              return;
            }

            [a1 copy];
            sub_1D441A804();
            swift_unknownObjectRelease();
            sub_1D41766C0(0, &qword_1EC7C9BC0);
            swift_dynamicCast();
            v36 = swift_beginAccess();
            MEMORY[0x1DA6D5820](v36);
            if (*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_53;
            }

            goto LABEL_41;
          }
        }

        else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        if (([*(v2 + 24) isReadyForMoreMediaData] & 1) == 0)
        {
          goto LABEL_35;
        }

        swift_beginAccess();
        v20 = *(v2 + 64);
        v21 = v20 >> 62;
        if (v20 >> 62)
        {
          if (!sub_1D441A8C4())
          {
            __break(1u);
LABEL_55:
            __break(1u);
            return;
          }

          if (!sub_1D441A8C4())
          {
            goto LABEL_55;
          }
        }

        else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1DA6D6410](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v22 = *(v20 + 32);
        }

        v23 = v22;
        if (v21)
        {
          if (!sub_1D441A8C4())
          {
            goto LABEL_50;
          }

          if (sub_1D441A8C4() < 1)
          {
            goto LABEL_51;
          }

          v24 = sub_1D441A8C4();
        }

        else
        {
          v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v24)
          {
            goto LABEL_50;
          }
        }

        v25 = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v2 + 64) = v20;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          break;
        }

        if (v21)
        {
          goto LABEL_26;
        }

LABEL_27:
        v20 = sub_1D441AA14();
        *(v2 + 64) = v20;
LABEL_28:
        sub_1D42F8850(0, 1, 0);
        *(v2 + 64) = v20;
        swift_endAccess();
        sub_1D42F7510(v23);
      }

      if (!v21)
      {
        if (v25 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_26:
      sub_1D441A8C4();
      goto LABEL_27;
    }

    v16 = *(v2 + 16);
    if ([v16 startWriting])
    {
      v17 = *(MEMORY[0x1E6960CC0] + 16);
      v51[0] = *MEMORY[0x1E6960CC0];
      v51[1] = *(MEMORY[0x1E6960CC0] + 8);
      v51[2] = v17;
      [v16 startSessionAtSourceTime_];
      v18 = *(v2 + 32);
      *(v2 + 32) = 2;
      sub_1D42F8D70(v18);
      goto LABEL_5;
    }

    v27 = [v16 error];
    sub_1D4418134();
    v28 = v27;
    v29 = sub_1D44181A4();
    v30 = sub_1D441A164();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      if (v28)
      {
        v33 = v28;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      *(v31 + 4) = v34;
      *v32 = v35;
      _os_log_impl(&dword_1D4171000, v29, v30, "Failed to start writing asset: %@", v31, 0xCu);
      sub_1D41769C4(v32, &qword_1EC7C9918);
      MEMORY[0x1DA6D8690](v32, -1, -1);
      MEMORY[0x1DA6D8690](v31, -1, -1);
    }

    v37 = v50;
    (*(v4 + 8))(v9, v50);
    sub_1D42F8D84();
    v38 = swift_allocError();
    *v39 = v27;
    swift_willThrow();
    v40 = v38;
    sub_1D4418134();
    v41 = v38;
    v42 = sub_1D44181A4();
    v43 = sub_1D441A164();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = v40;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_1D4171000, v42, v43, "Failed to append sample buffer: %@", v44, 0xCu);
      sub_1D41769C4(v45, &qword_1EC7C9918);
      MEMORY[0x1DA6D8690](v45, -1, -1);
      MEMORY[0x1DA6D8690](v44, -1, -1);
    }

    (*(v4 + 8))(v7, v37);
    v48 = *(v2 + 32);
    *(v2 + 32) = v40;
    sub_1D42F8D70(v48);
  }

  else
  {
LABEL_52:
    __break(1u);
LABEL_53:
    sub_1D4419E94();
LABEL_41:
    sub_1D4419EB4();
    swift_endAccess();
  }
}

void sub_1D42F7510(void *a1)
{
  v4 = *(v1 + 40);
  v5 = [a1 format];
  [v5 sampleRate];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 2147483650.0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  CMTimeMake(&v16, v4, v7);
  sub_1D42F8960(a1, v16.value, *&v16.timescale, v16.epoch);
  if (!v2)
  {
    v10 = v9;
    if ([*(v1 + 24) appendSampleBuffer_])
    {
      v11 = [a1 frameLength];

      v12 = *(v1 + 40);
      v13 = __OFADD__(v12, v11);
      v14 = v12 + v11;
      if (!v13)
      {
        *(v1 + 40) = v14;
        return;
      }

      goto LABEL_16;
    }

    v15 = *(v1 + 16);
    if ([v15 status] == 3 && objc_msgSend(v15, sel_error))
    {
      swift_willThrow();
    }

    else
    {
    }
  }
}

uint64_t sub_1D42F7698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4419444();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D4419484();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  v18[1] = *(a2 + 48);
  (*(v11 + 16))(v18 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1D42F8F2C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_30_0;
  v16 = _Block_copy(aBlock);

  sub_1D4419464();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D42F912C(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D418D674(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void sub_1D42F7A28(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  if (a1[4] != 2 || (v8 = a1[2], [v8 status] != 1))
  {
    sub_1D4419F24();
    return;
  }

  v25 = v5;
  v26 = v8;
  v27 = a2;
  v9 = a1[4];
  a1[4] = 3;
  sub_1D42F8D70(v9);
  swift_beginAccess();
  while (1)
  {
    do
    {
      v11 = a1[8];
      if (v11 >> 62)
      {
        v19 = sub_1D441A8C4();
        v12 = a1[3];
        if (!v19)
        {
LABEL_35:
          [v12 markAsFinished];
          v20 = v25;
          (*(v25 + 16))(v7, v27, v4);
          v21 = (*(v20 + 80) + 24) & ~*(v20 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = a1;
          (*(v20 + 32))(v22 + v21, v7, v4);
          aBlock[4] = sub_1D42F8F44;
          aBlock[5] = v22;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D417BEE4;
          aBlock[3] = &block_descriptor_36;
          v23 = _Block_copy(aBlock);

          [v26 finishWritingWithCompletionHandler_];
          _Block_release(v23);
          return;
        }
      }

      else
      {
        v12 = a1[3];
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }
    }

    while (([v12 isReadyForMoreMediaData] & 1) == 0);
    swift_beginAccess();
    v10 = a1[8];
    v13 = v10 >> 62;
    if (!(v10 >> 62))
    {
      break;
    }

    if (!sub_1D441A8C4())
    {
      goto LABEL_41;
    }

    if (!sub_1D441A8C4())
    {
      goto LABEL_42;
    }

LABEL_13:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1DA6D6410](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v14 = *(v10 + 32);
    }

    v15 = v14;
    if (v13)
    {
      if (!sub_1D441A8C4())
      {
        goto LABEL_39;
      }

      if (sub_1D441A8C4() < 1)
      {
        goto LABEL_40;
      }

      v16 = sub_1D441A8C4();
    }

    else
    {
      v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_39;
      }
    }

    v17 = v16 - 1;
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    a1[8] = v10;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v13)
      {
LABEL_5:
        sub_1D441A8C4();
      }

LABEL_6:
      v10 = sub_1D441AA14();
      a1[8] = v10;
      goto LABEL_7;
    }

    if (v13)
    {
      goto LABEL_5;
    }

    if (v17 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_1D42F8850(0, 1, 0);
    a1[8] = v10;
    swift_endAccess();
    sub_1D42F7510(v15);
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
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
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1D42F7E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4419444();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D4419484();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  v18[1] = *(a1 + 48);
  (*(v11 + 16))(v18 - v12, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_1D42F902C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_42;
  v16 = _Block_copy(aBlock);

  sub_1D4419464();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D42F912C(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D418D674(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_1D42F81FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ([v2 status] == 3 && (v3 = objc_msgSend(v2, sel_error)) != 0)
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = v3;
    v3;
    sub_1D42F8D70(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8);
    return sub_1D4419F14();
  }

  else
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    sub_1D42F8D70(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8);
    return sub_1D4419F24();
  }
}

uint64_t sub_1D42F82D0()
{
  sub_1D42F8D70(v0[4]);

  return swift_deallocClassInstance();
}

unint64_t sub_1D42F8368(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C08);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D42F8438(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D44364A0;
  *(inited + 32) = sub_1D4419C54();
  *(inited + 40) = v3;
  *(inited + 72) = MEMORY[0x1E69E7668];
  *(inited + 48) = 1633772320;
  *(inited + 80) = sub_1D4419C54();
  *(inited + 88) = v4;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = 96;
  v6 = sub_1D42EA814(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB710);
  swift_arrayDestroy();
  outPropertyDataSize = 0;
  inSpecifier = 1633772320;
  AudioFormatGetPropertyInfo(0x61657372u, 4u, &inSpecifier, &outPropertyDataSize);
  v7 = outPropertyDataSize;
  v8 = 16 * (outPropertyDataSize >> 4);
  v9 = swift_slowAlloc();
  AudioFormatGetProperty(0x61657372u, 4u, &inSpecifier, &outPropertyDataSize, v9);
  if (v7 >= 0x10)
  {
    v11 = 1.79769313e308;
    v10 = 44100.0;
    do
    {
      v12 = *v9;
      v9 += 2;
      v13 = v12;
      [a1 sampleRate];
      v15 = vabdd_f64(v12, v14);
      if (v15 < v11)
      {
        v10 = v13;
        v11 = v15;
      }

      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v10 = 44100.0;
  }

  v16 = sub_1D4419C54();
  v18 = v17;
  v31 = MEMORY[0x1E69E63B0];
  v30[0] = v10;
  sub_1D417CF84(v30, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D432DECC(v29, v16, v18, isUniquelyReferenced_nonNull_native);

  v20 = sub_1D4419C54();
  v22 = v21;
  v23 = [a1 channelCount];
  v24 = 1;
  if (v23 > 1)
  {
    v24 = 2;
  }

  v31 = v5;
  *&v30[0] = v24;
  sub_1D417CF84(v30, v29);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D432DECC(v29, v20, v22, v25);

  return v6;
}

id sub_1D42F86FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D44171C4();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 fileType:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1D4417234();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1D4417104();

    swift_willThrow();
    v13 = sub_1D4417234();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1D42F8850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1D41766C0(0, &qword_1EC7C9BC0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D441A8C4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D441A8C4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1D42F8960(void *a1, CMTimeValue a2, unint64_t a3, CMTimeEpoch a4)
{
  v5 = a3;
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(a3);
  v9 = sub_1D441A214();
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v22 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D441A234();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = 0;
  v14 = [a1 format];
  v15 = [v14 formatDescription];

  v16 = [a1 frameLength];
  presentationTimeStamp.value = a2;
  presentationTimeStamp.timescale = v5;
  presentationTimeStamp.flags = v8;
  presentationTimeStamp.epoch = a4;
  v17 = CMAudioSampleBufferCreateWithPacketDescriptions(0, 0, 0, 0, 0, v15, v16, &presentationTimeStamp, 0, v28);

  if (v17 != sub_1D4418204())
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:0];
    swift_willThrow();
    goto LABEL_6;
  }

  if (!v28[0])
  {
    __break(1u);
    goto LABEL_12;
  }

  [a1 audioBufferList];
  presentationTimeStamp.value = MEMORY[0x1E69E7CC0];
  sub_1D42F912C(&qword_1EC7C9B10, MEMORY[0x1E69E7ED0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B18);
  sub_1D418D674(&qword_1EC7C9B20, &qword_1EC7C9B18);
  sub_1D441A814();
  v18 = v26;
  sub_1D441A1E4();
  if (v18)
  {
    (*(v25 + 8))(v13, v11);
LABEL_6:

    return;
  }

  (*(v25 + 8))(v13, v11);
  if (!v28[0])
  {
LABEL_12:
    __break(1u);
    return;
  }

  v20 = v22;
  v19 = v23;
  v21 = v24;
  (*(v23 + 104))(v22, *MEMORY[0x1E69E7EC8], v24);
  sub_1D441A224();
  (*(v19 + 8))(v20, v21);
  if (!v28[0])
  {
    __break(1u);
  }
}

void sub_1D42F8D70(id a1)
{
  if (a1 - 1 >= 3)
  {
  }
}

unint64_t sub_1D42F8D84()
{
  result = qword_1EC7C9BC8;
  if (!qword_1EC7C9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9BC8);
  }

  return result;
}

uint64_t sub_1D42F8E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D42F8E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D41775C8;

  return sub_1D42F5BE4(a1, v4, v5, v6);
}

uint64_t objectdestroy_26Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D42F9044(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BD8) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_1D42F90C8()
{
  result = qword_1EC7C9BE8;
  if (!qword_1EC7C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9BE8);
  }

  return result;
}

uint64_t sub_1D42F912C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D42F9174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D4177CAC;

  return sub_1D42F55D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D42F9234(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D42F927C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D42F92D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D42F932C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D42F93CC()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7C9C10);
  __swift_project_value_buffer(v0, qword_1EC7C9C10);
  return sub_1D4418134();
}

uint64_t sub_1D42F9418()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();
}

uint64_t sub_1D42F9494(uint64_t a1, void **a2)
{
  v4 = sub_1D44178A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v8, v10, v4);
  v13 = v12;
  sub_1D4418374();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1D42F9600()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();
}

uint64_t sub_1D42F9678(uint64_t a1)
{
  v3 = sub_1D44178A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);
  v7 = v1;
  sub_1D4418374();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1D42F979C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D42F9840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C38);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D42F99E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C30);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D42F9B18(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C38);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__recordingState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C30);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}