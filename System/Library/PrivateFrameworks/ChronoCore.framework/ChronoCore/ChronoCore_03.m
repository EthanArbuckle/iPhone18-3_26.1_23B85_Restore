uint64_t sub_224A75914()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A759D8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_224DACC88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_224A75AB0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v186 = v177 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v178 = *(v9 - 8);
  v10 = *(v178 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v181 = v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v183 = v177 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v177 - v16;
  MEMORY[0x28223BE20](v15);
  v205 = v177 - v18;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v182 = *(v198 - 8);
  v19 = v182[8];
  v20 = MEMORY[0x28223BE20](v198);
  v185 = v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v200 = v177 - v23;
  MEMORY[0x28223BE20](v22);
  v202 = v177 - v24;
  if (a1 >> 62)
  {
    goto LABEL_117;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v204 = v9;
    if (i)
    {
      goto LABEL_7;
    }

    if (a2 >> 62)
    {
      if (sub_224DAF838())
      {
        goto LABEL_7;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    v26 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
    swift_beginAccess();
    if (!*(*&v3[v26] + 16))
    {
      if (qword_281351610 == -1)
      {
LABEL_105:
        v170 = sub_224DAB258();
        __swift_project_value_buffer(v170, qword_281364FD0);
        v171 = sub_224DAB228();
        v172 = sub_224DAF2A8();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_224A2F000, v171, v172, "Tearing down existing process monitor because we have nothing to observe.", v173, 2u);
          MEMORY[0x22AA5EED0](v173, -1, -1);
        }

        v174 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processMonitor;
        swift_beginAccess();
        sub_224A3796C(&v3[v174], &v206, &qword_27D6F4160, &unk_224DB5BF0);
        if (*(&v207 + 1))
        {
          sub_224A3317C(&v206, &v211);
          sub_224A3311C(&v206, &qword_27D6F4160, &unk_224DB5BF0);
          v175 = *(&v212 + 1);
          v176 = v213;
          __swift_project_boxed_opaque_existential_1(&v211, *(&v212 + 1));
          (*(v176 + 16))(v175, v176);
          __swift_destroy_boxed_opaque_existential_1(&v211);
        }

        else
        {
          sub_224A3311C(&v206, &qword_27D6F4160, &unk_224DB5BF0);
        }

        v208 = 0;
        v206 = 0u;
        v207 = 0u;
        swift_beginAccess();
        sub_224A838C0(&v206, &v3[v174], &qword_27D6F4160, &unk_224DB5BF0);
        return swift_endAccess();
      }

LABEL_123:
      swift_once();
      goto LABEL_105;
    }

LABEL_7:
    v215 = MEMORY[0x277D84FA0];
    v216 = MEMORY[0x277D84FA0];
    v214 = MEMORY[0x277D84FA0];
    v27 = sub_224A7B5CC(a1);
    a1 = v27;
    v177[1] = 0;
    if (v27 >> 62)
    {
      v9 = sub_224DAF838();
    }

    else
    {
      v9 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v191 = a2 >> 62;
    v29 = &unk_224DB3000;
    v179 = v3;
    v195 = v17;
    v193 = a2;
    if (v9)
    {
      v30 = 0;
      v196 = &v3[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager];
      v201 = (a1 & 0xC000000000000001);
      v199 = a1 & 0xFFFFFFFFFFFFFF8;
      v203 = MEMORY[0x277D84F90];
      *&v28 = 138543362;
      v192 = v28;
      v197 = a1;
      v194 = v9;
      while (1)
      {
        if (v201)
        {
          v31 = MEMORY[0x22AA5DCC0](v30, a1);
        }

        else
        {
          if (v30 >= *(v199 + 16))
          {
            goto LABEL_113;
          }

          v31 = *(a1 + 8 * v30 + 32);
        }

        v32 = v31;
        v17 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          goto LABEL_112;
        }

        v33 = [v31 extensionIdentity];
        v34 = *(v196 + 4);
        __swift_project_boxed_opaque_existential_1(v196, *(v196 + 3));
        sub_224DAC6D8();
        if (*(&v207 + 1))
        {
          sub_224A36F98(&v206, &v211);
        }

        else
        {
          sub_224A3311C(&v206, &unk_27D6F4700, &unk_224DB3A10);
          if (qword_281351610 != -1)
          {
            swift_once();
          }

          v35 = sub_224DAB258();
          __swift_project_value_buffer(v35, qword_281364FD0);
          v36 = v33;
          v37 = sub_224DAB228();
          v3 = sub_224DAF2A8();

          if (os_log_type_enabled(v37, v3))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = v192;
            *(v38 + 4) = v36;
            *v39 = v36;
            v40 = v36;
            _os_log_impl(&dword_224A2F000, v37, v3, "Ignoring configured descriptor for unknown extension: %{public}@", v38, 0xCu);
            sub_224A3311C(v39, &unk_27D6F69F0, &unk_224DB3900);
            v41 = v39;
            a2 = v193;
            MEMORY[0x22AA5EED0](v41, -1, -1);
            MEMORY[0x22AA5EED0](v38, -1, -1);
          }

          v213 = 0;
          v211 = 0u;
          v212 = 0u;
          v29 = &unk_224DB3000;
        }

        if (*(&v212 + 1))
        {
          sub_224A36F98(&v211, &v206);
          v42 = v203;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v210[0] = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v203 = sub_224A5C040(0, v203[2] + 1, 1, v203);
            v210[0] = v203;
          }

          v45 = v203[2];
          v44 = v203[3];
          if (v45 >= v44 >> 1)
          {
            v203 = sub_224A5C040((v44 > 1), v45 + 1, 1, v203);
            v210[0] = v203;
          }

          v46 = *(&v207 + 1);
          v47 = v208;
          v48 = __swift_mutable_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
          v49 = *(*(v46 - 8) + 64);
          MEMORY[0x28223BE20](v48);
          v51 = v177 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v52 + 16))(v51);
          sub_224A5C064(v45, v51, v210, v46, v47);
          __swift_destroy_boxed_opaque_existential_1(&v206);
          v29 = &unk_224DB3000;
        }

        else
        {
          sub_224A3311C(&v211, &unk_27D6F4700, &unk_224DB3A10);
        }

        v9 = v194;
        ++v30;
        a1 = v197;
        if (v17 == v194)
        {
          goto LABEL_32;
        }
      }
    }

    v203 = MEMORY[0x277D84F90];
LABEL_32:

    v54 = v191 ? sub_224DAF838() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v194 = v54;
    if (!v54)
    {
      break;
    }

    v55 = 0;
    v196 = &v179[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager];
    v199 = a2 & 0xC000000000000001;
    v197 = a2 & 0xFFFFFFFFFFFFFF8;
    v201 = MEMORY[0x277D84F90];
    *&v53 = v29[194];
    v192 = v53;
    v3 = v194;
    while (1)
    {
      if (v199)
      {
        v56 = MEMORY[0x22AA5DCC0](v55, a2);
      }

      else
      {
        if (v55 >= *(v197 + 16))
        {
          goto LABEL_115;
        }

        v56 = *(a2 + 8 * v55 + 32);
      }

      v57 = v56;
      v17 = (v55 + 1);
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v58 = [v56 controlIdentity];
      v9 = [v58 extensionIdentity];

      v59 = *(v196 + 4);
      a1 = __swift_project_boxed_opaque_existential_1(v196, *(v196 + 3));
      sub_224DAC6D8();
      if (*(&v207 + 1))
      {
        sub_224A36F98(&v206, &v211);
      }

      else
      {
        sub_224A3311C(&v206, &unk_27D6F4700, &unk_224DB3A10);
        if (qword_281351610 != -1)
        {
          swift_once();
        }

        v60 = sub_224DAB258();
        a1 = __swift_project_value_buffer(v60, qword_281364FD0);
        v61 = v9;
        v62 = sub_224DAB228();
        v63 = sub_224DAF2A8();

        if (os_log_type_enabled(v62, v63))
        {
          a1 = swift_slowAlloc();
          v64 = v57;
          v65 = swift_slowAlloc();
          *a1 = v192;
          *(a1 + 4) = v61;
          *v65 = v61;
          v66 = v61;
          _os_log_impl(&dword_224A2F000, v62, v63, "Ignoring configured descriptor for unknown extension: %{public}@", a1, 0xCu);
          sub_224A3311C(v65, &unk_27D6F69F0, &unk_224DB3900);
          v67 = v65;
          v57 = v64;
          v3 = v194;
          MEMORY[0x22AA5EED0](v67, -1, -1);
          MEMORY[0x22AA5EED0](a1, -1, -1);
        }

        v213 = 0;
        v211 = 0u;
        v212 = 0u;
        a2 = v193;
      }

      if (*(&v212 + 1))
      {
        sub_224A36F98(&v211, &v206);
        v68 = v201;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v210[0] = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_224A5C040(0, v68[2] + 1, 1, v68);
          v210[0] = v68;
        }

        a1 = v68[2];
        v70 = v68[3];
        if (a1 >= v70 >> 1)
        {
          v201 = sub_224A5C040((v70 > 1), a1 + 1, 1, v68);
          v210[0] = v201;
        }

        else
        {
          v201 = v68;
        }

        v9 = *(&v207 + 1);
        v71 = v208;
        v72 = __swift_mutable_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
        v73 = *(*(v9 - 8) + 64);
        MEMORY[0x28223BE20](v72);
        v75 = v177 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v76 + 16))(v75);
        sub_224A5C064(a1, v75, v210, v9, v71);
        __swift_destroy_boxed_opaque_existential_1(&v206);
        v3 = v194;
      }

      else
      {
        sub_224A3311C(&v211, &unk_27D6F4700, &unk_224DB3A10);
      }

      ++v55;
      if (v17 == v3)
      {
        goto LABEL_58;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    ;
  }

  v201 = MEMORY[0x277D84F90];
LABEL_58:
  *&v206 = v203;
  sub_224A85B54(v201);
  v77 = v206;
  v191 = *(v206 + 16);
  if (v191)
  {
    a1 = 0;
    v201 = v182 + 2;
    v187 = (v178 + 16);
    v184 = (v178 + 48);
    v180 = (v178 + 32);
    v199 = (v182 + 1);
    v188 = (v182 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v189 = v206 + 32;
    v190 = v206;
    v194 = (v178 + 8);
    while (a1 < *(v77 + 16))
    {
      v196 = a1;
      sub_224A3317C(v189 + 40 * a1, &v206);
      __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
      v78 = sub_224DAE338();
      v79 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v9 = *v201;
      v80 = &v78[v79];
      v17 = v198;
      (*v201)(v202, v80, v198);

      v81 = v215;
      if (*(v215 + 16) && (v82 = *(v215 + 40), sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0), v83 = sub_224DAED88(), v84 = -1 << *(v81 + 32), v85 = v83 & ~v84, ((*(v81 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) != 0))
      {
        v86 = ~v84;
        a2 = v182[9];
        while (1)
        {
          v87 = v200;
          (v9)(v200, *(v81 + 48) + a2 * v85, v17);
          sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0);
          v88 = sub_224DAEDD8();
          v89 = v87;
          v3 = *v199;
          (*v199)(v89, v17);
          if (v88)
          {
            break;
          }

          v85 = (v85 + 1) & v86;
          if (((*(v81 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
LABEL_68:
        v90 = v185;
        (v9)(v185, v202, v17);
        v91 = v200;
        sub_224A85C9C(v200, v90);
        v193 = *v199;
        (v193)(v91, v17);
        __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
        sub_224DAE228();
        v92 = v204;
        v94 = v194;
        v93 = v195;
        if (v95)
        {
          v96 = v205;
          sub_224DA9FF8();
          v97 = v183;
          (*v187)(v183, v96, v92);
          sub_224A3A634(v93, v97);
          v98 = *v94;
          (*v94)(v93, v92);
          v98(v96, v92);
        }

        __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
        v99 = sub_224DAE338();
        v100 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        v101 = v99 + v100;
        v9 = v186;
        sub_224A3796C(v101, v186, &unk_27D6F5060, &qword_224DB5620);

        if ((*v184)(v9, 1, v92) == 1)
        {
          sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
          v102 = 0x277D46000;
          v103 = &off_27853F000;
        }

        else
        {
          v104 = v181;
          (*v180)(v181, v9, v92);
          (*v187)(v93, v104, v92);
          v105 = v205;
          sub_224A3A634(v205, v93);
          v9 = *v94;
          (*v94)(v105, v92);
          sub_224DA9FE8();
          v106 = sub_224DAEDE8();

          v102 = 0x277D46000uLL;
          v103 = &off_27853F000;
          v107 = [objc_opt_self() predicateMatchingBundleIdentifier_];

          sub_224A85F80(&v211, v107);
          (v9)(v104, v92);
        }

        sub_224DA9FE8();
        v108 = sub_224DAEDE8();

        v109 = *(v102 + 4000);
        v110 = objc_opt_self();
        v111 = v103[354];
        v203 = v110;
        v112 = [v110 v111];

        *&v192 = v112;
        sub_224A85F80(&v211, v192);

        a2 = v208;
        __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
        v197 = sub_224DAE378();
        v113 = *(v197 + 16);
        v115 = v194;
        v114 = v195;
        if (v113)
        {
          a2 = v103;
          v116 = (v197 + 40);
          do
          {
            v117 = a2;
            v119 = *(v116 - 1);
            v118 = *v116;
            swift_bridgeObjectRetain_n();
            sub_224DA9FF8();
            v120 = v205;
            sub_224A3A634(v205, v114);
            (*v115)(v120, v204);
            a2 = v117;
            v121 = sub_224DAEDE8();

            v9 = [v203 v117 + 1081];

            sub_224A85F80(&v211, v9);
            v116 += 2;
            --v113;
          }

          while (v113);
        }

        v17 = v198;
        v3 = v193;
      }

      a1 = (v196 + 1);
      (v3)(v202, v17);
      __swift_destroy_boxed_opaque_existential_1(&v206);
      v77 = v190;
      if (a1 == v191)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_116;
  }

LABEL_77:

  v122 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
  v123 = v179;
  swift_beginAccess();
  a1 = *&v123[v122];
  v3 = (a1 + 64);
  v124 = 1 << *(a1 + 32);
  v125 = -1;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  v9 = v125 & *(a1 + 64);
  v17 = ((v124 + 63) >> 6);
  v201 = (v178 + 8);

  v126 = 0;
  v202 = a1;
  if (v9)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_83:
    v131 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (v131 >= v17)
    {
      break;
    }

    v9 = *&v3[8 * v131];
    ++v126;
    if (v9)
    {
      while (1)
      {
        v132 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v133 = *(*(a1 + 48) + ((v131 << 9) | (8 * v132)));
        v134 = [v133 bundleIdentifier];
        if (v134)
        {
          v127 = v134;
          v203 = sub_224DAEE18();
          v128 = [objc_opt_self() predicateMatchingBundleIdentifier_];

          a2 = v128;
          sub_224A85F80(&v206, a2);

          v129 = v195;
          sub_224DA9FF8();
          v130 = v205;
          sub_224A3A634(v205, v129);
          a1 = v202;

          (*v201)(v130, v204);
          v126 = v131;
          if (!v9)
          {
            goto LABEL_83;
          }
        }

        else
        {

          v126 = v131;
          if (!v9)
          {
            goto LABEL_83;
          }
        }

LABEL_82:
        v131 = v126;
      }
    }
  }

  v135 = v215;
  v3 = v179;
  swift_beginAccess();

  sub_224C70A64(v136);
  swift_endAccess();
  v137 = v216;
  swift_beginAccess();

  sub_224C70A8C(v138);
  swift_endAccess();
  v139 = sub_224A861C4(v135, &unk_27D6F3920, &qword_224DB35B0);
  v140 = sub_224A861C4(v137, &qword_27D6F3900, &unk_224DB4640);

  *&v206 = v139;
  sub_224A864D0(v140);
  v141 = v206;
  v142 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processMonitor;
  swift_beginAccess();
  sub_224A3796C(&v3[v142], &v211, &qword_27D6F4160, &unk_224DB5BF0);
  if (!*(&v212 + 1))
  {
    sub_224A3311C(&v211, &qword_27D6F4160, &unk_224DB5BF0);
    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v152 = sub_224DAB258();
    __swift_project_value_buffer(v152, qword_281364FD0);

    v153 = sub_224DAB228();
    v154 = sub_224DAF2A8();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *&v206 = v156;
      *v155 = 136446210;
      v157 = MEMORY[0x22AA5D380](v141, MEMORY[0x277D837D0]);
      v159 = v158;

      v160 = sub_224A33F74(v157, v159, &v206);

      *(v155 + 4) = v160;
      _os_log_impl(&dword_224A2F000, v153, v154, "Creating a process monitor for bundle identifiers: %{public}s", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v156);
      v161 = v156;
      v3 = v179;
      MEMORY[0x22AA5EED0](v161, -1, -1);
      MEMORY[0x22AA5EED0](v155, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v164);
    v177[-2] = v3;
    v177[-1] = &v214;
    v165 = swift_allocObject();
    *(v165 + 16) = sub_224B486E4;
    *(v165 + 24) = &v177[-4];
    v208 = sub_224A37E94;
    v209 = v165;
    *&v206 = MEMORY[0x277D85DD0];
    *(&v206 + 1) = 1107296256;
    *&v207 = sub_224A37E38;
    *(&v207 + 1) = &block_descriptor_95;
    v166 = _Block_copy(&v206);
    v167 = objc_opt_self();

    v168 = [v167 monitorWithConfiguration_];
    _Block_release(v166);

    LOBYTE(v166) = swift_isEscapingClosureAtFileLocation();

    if ((v166 & 1) == 0)
    {
      *(&v207 + 1) = sub_224A3B79C(0, &unk_281350A60, 0x277D46F80);
      v208 = &off_28382A9B0;
      *&v206 = v168;
      swift_beginAccess();
      sub_224A838C0(&v206, &v3[v142], &qword_27D6F4160, &unk_224DB5BF0);
      swift_endAccess();
    }

    __break(1u);
    goto LABEL_123;
  }

  sub_224A36F98(&v211, &v206);
  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v143 = sub_224DAB258();
  __swift_project_value_buffer(v143, qword_281364FD0);

  v144 = sub_224DAB228();
  v145 = sub_224DAF2A8();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v211 = v147;
    *v146 = 136446210;
    v148 = MEMORY[0x22AA5D380](v141, MEMORY[0x277D837D0]);
    v150 = v149;

    v151 = sub_224A33F74(v148, v150, &v211);

    *(v146 + 4) = v151;
    _os_log_impl(&dword_224A2F000, v144, v145, "Updating existing process monitor for bundle identifiers: %{public}s", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v147);
    MEMORY[0x22AA5EED0](v147, -1, -1);
    MEMORY[0x22AA5EED0](v146, -1, -1);
  }

  else
  {
  }

  v162 = v208;
  v163 = __swift_project_boxed_opaque_existential_1(&v206, *(&v207 + 1));
  MEMORY[0x28223BE20](v163);
  v177[-2] = &v214;
  (*(v162 + 1))(sub_224A867EC);
  __swift_destroy_boxed_opaque_existential_1(&v206);
}

void sub_224A77578(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAA7B8();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAA7C8();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAA7D8();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAA7F8();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224A77A04;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_91;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224CCBC28;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_99;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224CCBC30;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_107_0;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

uint64_t sub_224A7799C()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224A77A04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224A77A0C(a1);
}

void sub_224A77A0C(void *a1)
{
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EC8);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v22);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono render service connection from %{public}s activated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue];
      BSDispatchQueueAssert();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      v21 = v18;
      sub_224A77CC8(sub_224A77FC8, v20);
    }

    else
    {
    }
  }
}

uint64_t sub_224A77C90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A77CC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB848();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_224A73B80;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_45;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_224DAB7E8();
  v20 = MEMORY[0x277D84F90];
  sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_224A77FD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_224A78024(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_224A78078(char *a1, id a2, uint64_t a3, id a4)
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v86 - v12;
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion;
  if (*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion])
  {
    goto LABEL_2;
  }

  v88 = v11;
  v89 = a2;
  v16 = __swift_project_boxed_opaque_existential_1((*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 408), *(*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 432));
  v17 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__processHandle];
  v18 = *v16;
  v19 = *(*v16 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v19 + 16));
  v20 = [v17 bundleIdentifier];
  v90 = a3;
  if (v20)
  {
    v87 = a1;
    v21 = v20;
    sub_224DAEE18();

    v22 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v23 = *(v18 + v22);

    sub_224DA9FF8();
    v24 = sub_224A33924(v13, v23);
    a1 = v87;

    (*(v9 + 8))(v13, v88);
    os_unfair_lock_unlock(*(v19 + 16));
    a2 = v89;
    if (v24)
    {
LABEL_2:
      (a2)(a4);
      goto LABEL_3;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v19 + 16));
    a2 = v89;
  }

  v25 = [objc_opt_self() targetWithPid_];
  v26 = sub_224DAEDE8();
  v27 = sub_224DAEDE8();
  v28 = [objc_opt_self() attributeWithDomain:v26 name:v27];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_224DB2780;
  *(v29 + 32) = v28;
  v30 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v31 = v25;
  v32 = v28;
  v33 = sub_224DAEDE8();
  sub_224A3B79C(0, &qword_281350B00, 0x277D46DD8);
  v34 = sub_224DAEFF8();

  v35 = [v30 initWithExplanation:v33 target:v31 attributes:v34];

  aBlock = 0;
  v36 = [v35 acquireWithError_];
  v37 = aBlock;
  if (v36)
  {
    v89 = v32;
    v38 = *&a1[v86];
    *&a1[v86] = v35;
    v39 = v37;
    v40 = v35;

    aBlock = 0;
    v92 = 0xE000000000000000;
    sub_224DAF938();

    aBlock = 0x705B746567726154;
    v92 = 0xEB000000003D6469;
    v41 = [v31 description];
    v42 = sub_224DAEE18();
    v44 = v43;

    MEMORY[0x22AA5D210](v42, v44);

    MEMORY[0x22AA5D210](0xD000000000000018, 0x8000000224DCDAB0);
    v45 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
    v46 = sub_224DAEDE8();

    v47 = [v45 initWithIdentifier_];

    v48 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v31;
    v95 = sub_224CCBBD0;
    v96 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_224A3837C;
    v94 = &block_descriptor_57;
    v51 = _Block_copy(&aBlock);
    v52 = v31;

    [v47 scheduleWithFireInterval:v48 leewayInterval:v51 queue:10.0 handler:1.0];
    _Block_release(v51);
    v53 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer];
    *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer] = v47;
    v54 = v47;

    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v55 = sub_224DAB258();
    __swift_project_value_buffer(v55, qword_281364EC8);
    v56 = v52;
    v57 = a1;
    v58 = sub_224DAB228();
    v59 = sub_224DAF2A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v88 = v40;
      v61 = a4;
      v62 = v60;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v62 = 136446466;
      *(v62 + 4) = sub_224A33F74(*&v57[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v57[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &aBlock);
      *(v62 + 12) = 2114;
      *(v62 + 14) = v56;
      *v63 = v56;
      v65 = v56;
      _os_log_impl(&dword_224A2F000, v58, v59, "[%{public}s] Acquired runtime assertion for target: %{public}@", v62, 0x16u);
      sub_224A3311C(v63, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x22AA5EED0](v64, -1, -1);
      v66 = v62;
      a4 = v61;
      v40 = v88;
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }

    (a2)(a4);
  }

  else
  {
    v67 = a1;
    v68 = aBlock;
    v69 = sub_224DA9528();

    swift_willThrow();
    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v70 = sub_224DAB258();
    __swift_project_value_buffer(v70, qword_281364EC8);
    v71 = v31;
    v72 = v67;
    v73 = v69;
    v74 = sub_224DAB228();
    v75 = sub_224DAF288();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v88 = a4;
      v77 = v76;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v89 = v32;
      v80 = v79;
      aBlock = v79;
      *v77 = 136446722;
      *(v77 + 4) = sub_224A33F74(*&v72[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v72[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &aBlock);
      *(v77 + 12) = 2114;
      *(v77 + 14) = v71;
      *v78 = v71;
      *(v77 + 22) = 2114;
      v81 = v71;
      v82 = v69;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 24) = v83;
      v78[1] = v83;
      _os_log_impl(&dword_224A2F000, v74, v75, "[%{public}s] Unable to acquire runtime assertion for target: %{public}@ - error: %{public}@", v77, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v84 = v80;
      v32 = v89;
      MEMORY[0x22AA5EED0](v84, -1, -1);
      v85 = v77;
      a4 = v88;
      MEMORY[0x22AA5EED0](v85, -1, -1);
    }

    (a2)(a4);
  }

LABEL_3:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224A78A08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A78A48(void *a1, uint64_t a2)
{
  v4 = sub_224DAE4F8();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  isUniquelyReferenced_nonNull_native = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB728();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v15 = *(*(v92 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v92);
  v96 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v78 - v19;
  MEMORY[0x28223BE20](v18);
  v97 = &v78 - v20;
  v21 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services);
  sub_224A3317C(v21 + 96, v104);
  v22 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v23 = *(*(v22 + 8) + 8);
  v24 = sub_224DACA48();
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
  sub_224A7E76C(v25);
  v81 = v26;

  v80 = v21;
  sub_224A3317C(v21 + 136, v101);
  v27 = v102;
  v28 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  (*(v28 + 32))(v104, 769, v27, v28);
  v84 = a1;
  if (!v107)
  {
    __swift_destroy_boxed_opaque_existential_1(v101);
    sub_224A3311C(v104, &qword_27D6F50E0, &qword_224DB41A0);
    goto LABEL_29;
  }

  v29 = sub_224A86CAC();
  sub_224A699F0(v104);
  if (!v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v101);
LABEL_29:
    sub_224A876C0(MEMORY[0x277D84F90]);
LABEL_30:
    sub_224A3317C(v80 + 56, v104);
    __swift_project_boxed_opaque_existential_1(v104, v105);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v101, v102);
    sub_224DAD168();
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    v66 = sub_224DA9508();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    sub_224DA94F8();
    (*(v9 + 16))(v82, v14, v8);
    sub_224DAE4D8();
    sub_224A7940C(&qword_281350C60, MEMORY[0x277CE3AB8]);
    v69 = sub_224DA94E8();
    v71 = v70;
    (*(v83 + 8))(isUniquelyReferenced_nonNull_native, v4);

    v72 = objc_allocWithZone(MEMORY[0x277D7BC18]);
    sub_224A77FD0(v69, v71);
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    sub_224A87A80();
    v73 = sub_224DAF1A8();

    sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
    v74 = sub_224DAECC8();

    v75 = sub_224DA96B8();
    v76 = [v72 initWithExtensions:v73 configurations:v74 systemEnvironment:v75];

    sub_224A78024(v69, v71);
    [v84 initializeConnection_];

    sub_224A78024(v69, v71);
    return (*(v9 + 8))(v14, v8);
  }

  v78 = v9;
  v79 = v8;
  v30 = sub_224A876C0(MEMORY[0x277D84F90]);
  v31 = v29 + 64;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v29 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v89 = v14;
  v88 = v4;
  v90 = isUniquelyReferenced_nonNull_native;
  v86 = v29 + 64;
  v85 = v35;
  v87 = v29;
  while (v34)
  {
    v95 = v30;
LABEL_17:
    v40 = __clz(__rbit64(v34)) | (v36 << 6);
    v41 = *(v29 + 48);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v43 = *(v42 - 8);
    v44 = v97;
    (*(v43 + 16))(v97, v41 + *(v43 + 72) * v40, v42);
    v45 = *(*(v29 + 56) + 8 * v40);
    v46 = v92;
    *(v44 + *(v92 + 48)) = v45;
    v47 = v91;
    sub_224A3796C(v44, v91, &qword_27D6F38A8, &unk_224DB4650);
    v48 = *(v47 + *(v46 + 48));
    v49 = v45;

    sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAEFA8();
    v50 = v99;
    v4 = v100;
    v93 = *(v43 + 8);
    v93(v47, v42);
    v51 = v96;
    sub_224A3796C(v44, v96, &qword_27D6F38A8, &unk_224DB4650);
    v94 = *(v51 + *(v46 + 48));
    v52 = v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v52;
    v54 = sub_224A3A40C(v50, v4);
    v55 = v52[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_32;
    }

    v58 = v53;
    if (v52[3] >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B28008();
      }
    }

    else
    {
      sub_224A87A6C(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_224A3A40C(v50, v4);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_34;
      }

      v54 = v59;
    }

    isUniquelyReferenced_nonNull_native = v90;
    if (v58)
    {

      v30 = v98;
      v37 = v98[7];
      v38 = *(v37 + 8 * v54);
      *(v37 + 8 * v54) = v94;

      sub_224A3311C(v97, &qword_27D6F38A8, &unk_224DB4650);
    }

    else
    {
      v61 = v97;
      v30 = v98;
      v98[(v54 >> 6) + 8] |= 1 << v54;
      v62 = (v30[6] + 16 * v54);
      *v62 = v50;
      v62[1] = v4;
      *(v30[7] + 8 * v54) = v94;
      sub_224A3311C(v61, &qword_27D6F38A8, &unk_224DB4650);
      v63 = v30[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_33;
      }

      v30[2] = v65;
    }

    v34 &= v34 - 1;
    v93(v96, v42);
    v14 = v89;
    v4 = v88;
    v29 = v87;
    v31 = v86;
    v35 = v85;
  }

  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v35)
    {

      __swift_destroy_boxed_opaque_existential_1(v101);
      v8 = v79;
      v9 = v78;
      goto LABEL_30;
    }

    v34 = *(v31 + 8 * v39);
    ++v36;
    if (v34)
    {
      v95 = v30;
      v36 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_224DAFDD8();
  __break(1u);
  (*(v83 + 8))(isUniquelyReferenced_nonNull_native, v4);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_224A7940C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A79454(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  v104 = a5;
  v105 = a4;
  v97 = a3;
  v101 = sub_224DAE6C8();
  v100 = *(v101 - 1);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAC268();
  v108 = *(v115 - 8);
  v9 = *(v108 + 64);
  v10 = MEMORY[0x28223BE20](v115);
  v98 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v94 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v94 - v16;
  MEMORY[0x28223BE20](v15);
  v102 = &v94 - v18;
  v19 = sub_224DAB258();
  v106 = *(v19 - 8);
  v20 = *(v106 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v94 - v25;
  MEMORY[0x28223BE20](v24);
  v103 = &v94 - v27;
  v28 = a1;
  v29 = *(a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager + 8);
  v30 = *(a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager);
  swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v107;
  sub_224DAC418();
  if (!v32)
  {
    v94 = v17;
    v95 = v26;
    v96 = v23;
    v102 = v14;
    v49 = v106;
    v103 = 0;
    sub_224A36F98(&v111, v114);
    v50 = *(a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager), *(a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager + 24));
    v104 = a2;
    v51 = sub_224DAC248();
    v52 = [v51 extensionIdentity];

    sub_224DAC6D8();
    if (v110)
    {
      sub_224A36F98(&v109, &v111);
      __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v53 = v99;
      sub_224DAEAA8();
      v54 = sub_224DAE6B8();
      v56 = v55;
      (*(v100 + 8))(v53, v101);
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v57 = sub_224DAE398();
      v59 = v108;
      if (v54 == v57 && v56 == v58)
      {

        v60 = v49;
LABEL_12:
        v64 = *(v60 + 16);
        v65 = v95;
        v107 = v19;
        v64(v95, v28 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v19);
        v66 = v94;
        v67 = v115;
        v106 = *(v59 + 16);
        (v106)(v94, v104, v115);
        v68 = sub_224DAB228();
        v69 = sub_224DAF268();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = v66;
          v105 = swift_slowAlloc();
          *&v109 = v105;
          *v70 = 136446210;
          sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978]);
          v72 = sub_224DAFD28();
          v73 = v60;
          v75 = v74;
          (*(v59 + 8))(v71, v115);
          v76 = sub_224A33F74(v72, v75, &v109);

          *(v70 + 4) = v76;
          _os_log_impl(&dword_224A2F000, v68, v69, "%{public}s Cache hit", v70, 0xCu);
          v77 = v105;
          __swift_destroy_boxed_opaque_existential_1(v105);
          MEMORY[0x22AA5EED0](v77, -1, -1);
          v78 = v70;
          v67 = v115;
          MEMORY[0x22AA5EED0](v78, -1, -1);

          (*(v73 + 8))(v95, v107);
        }

        else
        {

          (*(v59 + 8))(v66, v67);
          (*(v60 + 8))(v65, v107);
        }

        v79 = v102;
        (v106)(v102, v104, v67);
        sub_224A3317C(v114, &v109);
        sub_224A61F30(&v109, v79);
        __swift_destroy_boxed_opaque_existential_1(&v111);
        return __swift_destroy_boxed_opaque_existential_1(v114);
      }

      v63 = sub_224DAFD88();

      v60 = v49;
      if (v63)
      {
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(&v111);
      v62 = v115;
    }

    else
    {
      sub_224A3311C(&v109, &unk_27D6F4700, &unk_224DB3A10);
      v60 = v49;
      v62 = v115;
      v59 = v108;
    }

    v80 = v96;
    (*(v60 + 16))(v96, v28 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v19);
    v81 = v98;
    (*(v59 + 16))(v98, v104, v62);
    v82 = sub_224DAB228();
    v83 = sub_224DAF2A8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v107 = v19;
      v85 = v62;
      v86 = v84;
      v87 = swift_slowAlloc();
      *&v111 = v87;
      *v86 = 136446210;
      sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978]);
      v88 = sub_224DAFD28();
      v89 = v81;
      v90 = v60;
      v92 = v91;
      (*(v59 + 8))(v89, v85);
      v93 = sub_224A33F74(v88, v92, &v111);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_224A2F000, v82, v83, "%{public}s Cache miss for extension bundle version difference (or extension didn't exist)", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x22AA5EED0](v87, -1, -1);
      MEMORY[0x22AA5EED0](v86, -1, -1);

      (*(v90 + 8))(v96, v107);
    }

    else
    {

      (*(v59 + 8))(v81, v62);
      (*(v60 + 8))(v80, v19);
    }

    *v105 = 1;
    return __swift_destroy_boxed_opaque_existential_1(v114);
  }

  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  sub_224A3311C(&v111, &unk_27D6F3CB0, &unk_224DB7860);
  v33 = v106;
  v34 = v103;
  (*(v106 + 16))(v103, a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v19);
  v35 = v108;
  v36 = v102;
  v37 = v115;
  (*(v108 + 16))(v102, a2, v115);
  v38 = sub_224DAB228();
  v39 = sub_224DAF268();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v37;
    v41 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v114[0] = v101;
    *v41 = 136446210;
    sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978]);
    LODWORD(v100) = v39;
    v42 = sub_224DAFD28();
    v107 = v19;
    v43 = v33;
    v45 = v44;
    (*(v35 + 8))(v36, v40);
    v46 = sub_224A33F74(v42, v45, v114);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_224A2F000, v38, v100, "%{public}s Cache miss", v41, 0xCu);
    v47 = v101;
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x22AA5EED0](v47, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);

    result = (*(v43 + 8))(v34, v107);
  }

  else
  {

    (*(v35 + 8))(v36, v37);
    result = (*(v33 + 8))(v34, v19);
  }

  v61 = v104;
  *v105 = 1;
  *v61 = 1;
  return result;
}

uint64_t sub_224A79F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A79FA8(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v2 = *(*(v57 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - v5;
  v6 = *(a1 + 64);
  v52 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v51 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v54 = a1;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v62 = v9;
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = *(a1 + 48);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v18 = *(v17 - 8);
    v19 = v55;
    (*(v18 + 16))(v55, v16 + *(v18 + 72) * v15, v17);
    v20 = *(*(a1 + 56) + 8 * v15);
    v22 = v56;
    v21 = v57;
    *(v19 + *(v57 + 48)) = v20;
    sub_224A7B960(v19, v22);
    v23 = *(v22 + *(v21 + 48));
    v24 = *(v23 + *(*v23 + 104));

    v25 = v24;

    v26 = [v25 containerDescriptors];

    v59 = sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v27 = sub_224DAF008();

    v28 = v27;
    (*(v18 + 8))(v22, v17);
    sub_224A3311C(v19, &qword_27D6F34A0, &unk_224DB3A20);
    v29 = v27 >> 62;
    v30 = v28;
    if (v29)
    {
      v31 = sub_224DAF838();
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v13;
    v32 = v13 >> 62;
    v33 = v62;
    if (v13 >> 62)
    {
      result = sub_224DAF838();
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v31;
    v34 = __OFADD__(result, v31);
    v35 = result + v31;
    if (v34)
    {
      goto LABEL_42;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v32)
      {
LABEL_23:
        sub_224DAF838();
        v37 = v30;
      }

      else
      {
        v36 = v13 & 0xFFFFFFFFFFFFFF8;
        v37 = v30;
LABEL_22:
        v38 = *(v36 + 16);
      }

      result = sub_224DAF968();
      v12 = result;
      v36 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v32)
    {
      goto LABEL_23;
    }

    v36 = v13 & 0xFFFFFFFFFFFFFF8;
    v37 = v30;
    if (v35 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v39 = *(v36 + 16);
    v40 = *(v36 + 24);
    if (v29)
    {
      v42 = v36;
      result = sub_224DAF838();
      v36 = v42;
      v41 = result;
    }

    else
    {
      v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = (v33 - 1) & v33;
    if (v41)
    {
      if (((v40 >> 1) - v39) < v60)
      {
        goto LABEL_44;
      }

      v43 = v36 + 8 * v39 + 32;
      v58 = v12;
      v62 = v9;
      v53 = v36;
      if (v29)
      {
        if (v41 < 1)
        {
          goto LABEL_46;
        }

        sub_224A33088(&qword_281350B60, &qword_27D6F34A8, &qword_224DB3A30);
        for (i = 0; i != v41; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A8, &qword_224DB3A30);
          v45 = sub_224A6996C(v61, i, v37);
          v47 = *v46;
          (v45)(v61, 0);
          *(v43 + 8 * i) = v47;
        }
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      a1 = v54;
      v12 = v58;
      v9 = v62;
      if (v60 >= 1)
      {
        v48 = *(v53 + 16);
        v34 = __OFADD__(v48, v60);
        v49 = v48 + v60;
        if (v34)
        {
          goto LABEL_45;
        }

        *(v53 + 16) = v49;
      }
    }

    else
    {

      a1 = v54;
      if (v60 > 0)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v51)
    {

      return v12;
    }

    v9 = *(v52 + 8 * v14);
    ++v11;
    if (v9)
    {
      v13 = v12;
      v11 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_224A7A514()
{
  v1 = *(v0 + qword_28135C9F0);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = qword_28135CA28;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v5 = sub_224A7A628(v4, sub_224A7A9FC);

  if (*(v5 + 16))
  {
    v6 = sub_224A7AA1C(v5);

    v7 = sub_224A7B1DC(v6);
    os_unfair_lock_unlock(*(v1 + 16));
    if (v7)
    {
      v8 = sub_224A7AE9C(v7);

      return v8;
    }
  }

  else
  {

    os_unfair_lock_unlock(*(v1 + 16));
  }

  return 0;
}

uint64_t sub_224A7A628(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_224A7A7A8(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_224CB34D4(v11, v6, v4, a2);
  result = MEMORY[0x22AA5EED0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224A7A7A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(*(v34 - 8) + 64);
  result = MEMORY[0x28223BE20](v34);
  v32 = &v26 - v8;
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = v36;
    v21 = v33;
    v22 = v34;
    (*(v33 + 16))(v15, v36[6] + *(v33 + 72) * v19, v34);
    v23 = v19;
    v24 = *(v20[7] + 8 * v19);

    LOBYTE(v19) = v35(v15, v24);

    result = (*(v21 + 8))(v15, v22);
    v13 = v37;
    if (v19)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_224A7AA08(v27, v26, v28, v36);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_224A7AA08(v27, v26, v28, v36);
    }

    v18 = *(v29 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A7AA1C(uint64_t a1)
{
  v53 = sub_224DAA428();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v41 = v1;
    v56 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v11 = a1 + 64;
    v12 = -1 << *(a1 + 32);
    result = sub_224DAF798();
    v13 = result;
    v14 = 0;
    v55 = *(a1 + 36);
    v47 = (v3 + 16);
    v48 = (v6 + 16);
    v45 = (v3 + 32);
    v46 = (v6 + 32);
    v42 = a1 + 72;
    v43 = a1 + 64;
    v49 = a1;
    v44 = v9;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_21;
      }

      if (v55 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v54 = v14;
      v17 = *(*(a1 + 56) + 8 * v13);
      v19 = v50;
      v18 = v51;
      (*v48)(v50, v17 + qword_281365430, v51);
      v20 = *(*v17 + 104);
      swift_beginAccess();
      v21 = *(v17 + v20);
      v22 = *(*v17 + 112);
      swift_beginAccess();
      v23 = v17 + v22;
      v24 = v52;
      v25 = v53;
      (*v47)(v52, v23, v53);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40A8, &qword_224DB5688);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      v30 = v18;
      a1 = v49;
      (*v46)(v29 + qword_281365418, v19, v30);
      *(v29 + *(*v29 + 104)) = v21;
      (*v45)(v29 + *(*v29 + 112), v24, v25);
      v31 = v21;
      sub_224DAF9B8();
      v32 = *(v56 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v15 = 1 << *(a1 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v11 = v43;
      v33 = v44;
      v34 = *(v43 + 8 * v16);
      if ((v34 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v55 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v35 = v34 & (-2 << (v13 & 0x3F));
      if (v35)
      {
        v15 = __clz(__rbit64(v35)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v16 << 6;
        v37 = v16 + 1;
        v38 = (v42 + 8 * v16);
        while (v37 < (v15 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_224A3E204(v13, v55, 0);
            v15 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v13, v55, 0);
      }

LABEL_4:
      v14 = v54 + 1;
      v13 = v15;
      if (v54 + 1 == v33)
      {
        return v56;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224A7AE9C(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v32 = *(isUniquelyReferenced_nonNull_native - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v37 = &v31 - v4;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v6 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1 & 0xC000000000000001;
    v36 = (v32 + 16);
    v34 = (v32 + 8);
    v7 = MEMORY[0x277D84F98];
    v33 = a1;
    while (v35)
    {
      v10 = MEMORY[0x22AA5DCC0](v6, a1);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      v12 = v37;
      a1 = *v36;
      v13 = isUniquelyReferenced_nonNull_native;
      (*v36)(v37, v10 + qword_281365418, isUniquelyReferenced_nonNull_native);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v7;
      v14 = sub_224A683FC(v12);
      v16 = v7[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_22;
      }

      v20 = v15;
      if (v7[3] >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v14;
          sub_224B250B4();
          v14 = v29;
        }
      }

      else
      {
        sub_224A7B1F4(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_224A683FC(v37);
        if ((v20 & 1) != (v21 & 1))
        {
          result = sub_224DAFDD8();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v13;
      v7 = v38;
      if (v20)
      {
        v8 = v38[7];
        v9 = *(v8 + 8 * v14);
        *(v8 + 8 * v14) = v10;

        (*v34)(v37, v13);
      }

      else
      {
        v38[(v14 >> 6) + 8] |= 1 << v14;
        v22 = v32;
        v23 = v14;
        v24 = isUniquelyReferenced_nonNull_native;
        v25 = v37;
        (a1)(v7[6] + *(v32 + 72) * v14, v37, v24);
        *(v7[7] + 8 * v23) = v10;

        v26 = v25;
        isUniquelyReferenced_nonNull_native = v24;
        (*(v22 + 8))(v26, v24);
        v27 = v7[2];
        v18 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v18)
        {
          goto LABEL_23;
        }

        v7[2] = v28;
      }

      ++v6;
      a1 = v33;
      if (v11 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(v31 + 16))
    {
      goto LABEL_24;
    }

    v10 = *(a1 + 8 * v6 + 32);

    v11 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_224A7B208(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v40 = v6;
  v41 = v2;
  v38 = result;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          goto LABEL_39;
        }

        v5 = *(v2 + 8 * v10);
        ++v8;
        if (v5)
        {
          v8 = v10;
          goto LABEL_10;
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

LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = *(v11 + *(*v11 + 104));

    v13 = [v12 controlItems];
    sub_224DAF5D8();
    v14 = sub_224DAF008();

    v15 = v14 >> 62;
    v16 = v14;
    v17 = v14 >> 62 ? sub_224DAF838() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v19 + v17;
    if (__OFADD__(v19, v17))
    {
      goto LABEL_38;
    }

LABEL_14:
    v43 = v17;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v18)
      {
        v21 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = v9;
          v22 = v16;
          v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v15)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    else if (!v18)
    {
      v21 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v22 = v16;
      v26 = *(v21 + 16);
      goto LABEL_23;
    }

    sub_224DAF838();
    v22 = v16;
LABEL_23:
    v42 = sub_224DAF968();
    v21 = v42 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (!v15)
    {
LABEL_24:
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_25;
    }

LABEL_18:
    v25 = v21;
    result = sub_224DAF838();
    v21 = v25;
LABEL_25:
    v5 &= v5 - 1;
    if (result)
    {
      if (((v24 >> 1) - v23) < v43)
      {
        goto LABEL_42;
      }

      v27 = v21 + 8 * v23 + 32;
      v39 = v21;
      if (v15)
      {
        if (result < 1)
        {
          goto LABEL_44;
        }

        v45 = result;
        sub_224A33088(&qword_27D6F4068, &qword_27D6F4060, &unk_224DC1AA0);
        v28 = 0;
        v29 = v16;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4060, &unk_224DC1AA0);
          v30 = sub_224A6996C(v44, v28, v29);
          v32 = *v31;
          (v30)(v44, 0);
          *(v27 + 8 * v28++) = v32;
        }

        while (v45 != v28);
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v9 = v42;
      v1 = v38;
      v6 = v40;
      v2 = v41;
      if (v43 >= 1)
      {
        v33 = *(v39 + 16);
        v34 = __OFADD__(v33, v43);
        v35 = v33 + v43;
        if (v34)
        {
          goto LABEL_43;
        }

        *(v39 + 16) = v35;
      }
    }

    else
    {

      v9 = v42;
      v6 = v40;
      v2 = v41;
      if (v43 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v36 = v17;
  v37 = sub_224DAF838();
  v17 = v36;
  v34 = __OFADD__(v37, v36);
  v20 = v37 + v36;
  if (!v34)
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  return v9;
}

unint64_t sub_224A7B5CC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v8 = sub_224DAF008();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_224DAF838();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_224DAF838();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_224A33088(&qword_281350B68, &qword_27D6F4040, &qword_224DB8D20);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
              v20 = sub_224A6996C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224A7B960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_224A7B9D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a3;
  v7 = sub_224DAB258();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  LOBYTE(v46) = 0;
  v15 = v8[2];
  v41 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v42 = v15;
  v15(&v38 - v13, v4 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v7);
  v16 = a1;
  v17 = sub_224DAB228();
  v18 = sub_224DAF268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = a2;
    v22 = v21;
    *v20 = 138543362;
    *(v20 + 4) = v16;
    *v21 = v16;
    v23 = v16;
    _os_log_impl(&dword_224A2F000, v17, v18, "%{public}@ Trying cache", v20, 0xCu);
    sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
    v24 = v22;
    a2 = v39;
    MEMORY[0x22AA5EED0](v24, -1, -1);
    v25 = v20;
    v12 = v40;
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  v26 = v8[1];
  v26(v14, v7);
  v45 = sub_224A60D5C(MEMORY[0x277D84F90]);
  if (sub_224A87AE8(v16, v43))
  {
    v27 = *(a2 + 16);
    if (v27)
    {
      v28 = *(sub_224DAC268() - 8);
      v29 = (a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80)));
      v30 = *(v28 + 72);
      v31 = v27 - 1;
      do
      {
        v32 = v31;
        v44 = 0;
        v33 = MEMORY[0x22AA5E4C0]();
        sub_224A79454(v4, v29, &v45, &v46, &v44);
        objc_autoreleasePoolPop(v33);
        if (v44)
        {
          break;
        }

        v31 = v32 - 1;
        v29 += v30;
      }

      while (v32);
    }
  }

  else
  {
    LOBYTE(v46) = 1;
    v42(v12, v4 + v41, v7);
    v34 = sub_224DAB228();
    v35 = sub_224DAF268();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_224A2F000, v34, v35, "Cache should not be consulted", v36, 2u);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    v26(v12, v7);
  }

  return (v46 & 1) == 0;
}

uint64_t sub_224A7BD70(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v80 = a4;
  v81 = a5;
  v82 = a3;
  v8 = sub_224DAE6E8();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = v75[8];
  MEMORY[0x28223BE20](v8);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB98();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACC88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB258();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v70 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - v23;
  v25 = *(a2 + 16);
  if (v25)
  {
    v66 = v5;
    v67 = a1;
    v68 = v15;
    v77 = &v65 - v23;
    v78 = v18;
    v69 = v19;
    v26 = sub_224A61A78(v25, 0);
    v27 = *(sub_224DAC268() - 8);
    v28 = sub_224A61B9C(&v83, (v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80))), v25, a2);

    result = sub_224A3B7E4();
    if (v28 != v25)
    {
      __break(1u);
      return result;
    }

    v24 = v77;
    v18 = v78;
    v15 = v68;
    v19 = v69;
    a1 = v67;
    v5 = v66;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v30 = v82;
  v31 = sub_224A7B9D0(a1, v26, v82);
  v33 = v79;
  if (v31)
  {
    v76 = v32;

    (*(v19 + 16))(v24, v5 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v18);
    (*(v15 + 16))(v33, v30, v14);
    v34 = a1;
    v35 = v24;
    v36 = sub_224DAB228();
    v37 = sub_224DAF268();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v78 = v18;
      v39 = v38;
      v40 = swift_slowAlloc();
      v75 = v40;
      v82 = swift_slowAlloc();
      v83 = v82;
      *v39 = 138543618;
      *(v39 + 4) = v34;
      *v40 = v34;
      *(v39 + 12) = 2082;
      v41 = v34;
      v42 = v71;
      v77 = v35;
      LODWORD(v74) = v37;
      sub_224DACC68();
      sub_224A79F60(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v43 = v14;
      v44 = v33;
      v45 = v73;
      v46 = sub_224DAFD28();
      v47 = v19;
      v49 = v48;
      (*(v72 + 8))(v42, v45);
      (*(v15 + 8))(v44, v43);
      v50 = sub_224A33F74(v46, v49, &v83);

      *(v39 + 14) = v50;
      _os_log_impl(&dword_224A2F000, v36, v74, "%{public}@ Fetched from cache for %{public}s", v39, 0x16u);
      v51 = v75;
      sub_224A3311C(v75, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      v52 = v82;
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x22AA5EED0](v52, -1, -1);
      MEMORY[0x22AA5EED0](v39, -1, -1);

      (*(v47 + 8))(v77, v78);
    }

    else
    {

      (*(v15 + 8))(v33, v14);
      (*(v19 + 8))(v35, v18);
    }

    v80(v76, 0);

    return 0;
  }

  if ([a1 isRemote])
  {

    v53 = v19;
    v54 = v70;
    (*(v19 + 16))(v70, v5 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v18);
    v55 = a1;
    v56 = sub_224DAB228();
    v57 = sub_224DAF268();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v18;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138543362;
      *(v59 + 4) = v55;
      *v60 = v55;
      v61 = v55;
      _os_log_impl(&dword_224A2F000, v56, v57, "%{public}@ Failed to fetch from cache", v59, 0xCu);
      sub_224A3311C(v60, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v60, -1, -1);
      v62 = v59;
      v18 = v58;
      MEMORY[0x22AA5EED0](v62, -1, -1);
    }

    (*(v53 + 8))(v54, v18);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (v75[13])(v74, *MEMORY[0x277CE3BF0], v76);
    v63 = sub_224DAF638();
    v80(v63, 1);

    return 0;
  }

  v64 = (*(*v5 + 176))(a1, v26, v82, v80, v81);

  return v64;
}

void sub_224A7C56C(uint64_t *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  v3 = *v1;
  v4 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_224A7D63C();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_224A7C5F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a4;
  v144 = a3;
  v136 = a5;
  v119 = sub_224DACB08();
  v118 = *(v119 - 8);
  v7 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v120 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_224DACB28();
  v125 = *(v126 - 8);
  v9 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E0, &unk_224DBE988);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v117 = &v109 - v13;
  v133 = sub_224DAE4F8();
  v141 = *(v133 - 8);
  v14 = *(v141 + 64);
  MEMORY[0x28223BE20](v133);
  v132 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_224DAB728();
  v140 = *(v131 - 8);
  v16 = *(v140 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_224DAE928();
  v135 = *(v150 - 8);
  v18 = *(v135 + 64);
  v19 = MEMORY[0x28223BE20](v150);
  v143 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v145 = &v109 - v21;
  v22 = sub_224DACB98();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v116 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v109 - v31;
  swift_beginAccess();
  sub_224A7D664(a2);
  swift_endAccess();
  swift_beginAccess();
  v114 = a1;
  v113 = a2;
  sub_224B0E020(a2, v32);
  sub_224A3311C(v32, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();
  v33 = sub_224DACC88();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v115 = v33;
  v122 = v35;
  v121 = v34 + 56;
  (v35)(v136, 1, 1);
  sub_224DACC68();
  LODWORD(a1) = (*(v23 + 88))(v28, v22);
  v36 = *MEMORY[0x277CF9BF0];
  v123 = v23;
  v37 = *(v23 + 8);
  v124 = v22;
  result = v37(v28, v22);
  if (a1 != v36)
  {
    return result;
  }

  v39 = v138;
  v40 = v138 + 64;
  v41 = 1 << *(v138 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v138 + 64);
  v44 = (v41 + 63) >> 6;
  v129 = *MEMORY[0x277CE3D90];
  v45 = v135;
  v128 = (v135 + 104);
  v142 = v135 + 16;
  v144 = (v135 + 8);
  v112 = (v140 + 8);
  v111 = (v141 + 8);

  v46 = 0;
  v47 = v150;
  v110 = v40;
  v109 = v44;
  while (v43)
  {
LABEL_11:
    v49 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v50 = *(*(v39 + 56) + ((v46 << 9) | (8 * v49)));
    sub_224DABE68();
    if (v147)
    {
      sub_224A39D14(&v146, &v148);
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v51 = sub_224DAEA98();
      v52 = v145;
      (*v128)(v145, v129, v47);
      v53 = *(v51 + 16);
      v134 = v50;
      if (v53)
      {
        v54 = *(v51 + 40);
        sub_224CFEA04(&qword_281350C20, MEMORY[0x277CE3DA0]);
        v55 = sub_224DAED88();
        v56 = -1 << *(v51 + 32);
        v57 = v55 & ~v56;
        v141 = v51 + 56;
        if ((*(v51 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
        {
          v139 = ~v56;
          v140 = *(v45 + 72);
          v58 = *(v45 + 16);
          while (1)
          {
            v59 = v51;
            v60 = *(v51 + 48) + v140 * v57;
            v61 = v143;
            v62 = v150;
            v58(v143, v60, v150);
            sub_224CFEA04(&qword_281350C18, MEMORY[0x277CE3DA0]);
            v63 = sub_224DAEDD8();
            v64 = *v144;
            (*v144)(v61, v62);
            if (v63)
            {
              break;
            }

            v57 = (v57 + 1) & v139;
            v52 = v145;
            v51 = v59;
            if (((*(v141 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v64(v145, v150);
          v89 = v113;
          v90 = sub_224DAB228();
          v91 = sub_224DAF2A8();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *v92 = 138543362;
            *(v92 + 4) = v89;
            *v93 = v89;
            v94 = v89;
            _os_log_impl(&dword_224A2F000, v90, v91, "%{public}@ Placeholder will reload since it is stale", v92, 0xCu);
            sub_224A3311C(v93, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v93, -1, -1);
            MEMORY[0x22AA5EED0](v92, -1, -1);
          }

          v95 = v136;
          goto LABEL_63;
        }
      }

LABEL_17:

      v47 = v150;
      (*v144)(v52, v150);
      v65 = v134;
      sub_224DABE38();
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v66 = v130;
      sub_224DAD168();
      v140 = sub_224DAB668();
      v141 = v67;
      (*v112)(v66, v131);
      __swift_destroy_boxed_opaque_existential_1(&v146);
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v68 = v132;
      sub_224DAEA78();
      swift_getKeyPath();
      v69 = sub_224DAE4A8();

      result = (*v111)(v68, v133);
      if (v69)
      {
        if (v69[2])
        {
          v71 = v69[4];
          v70 = v69[5];
          sub_224A77FD0(v71, v70);
        }

        else
        {
          v71 = 0;
          v70 = 0xF000000000000000;
        }

        v72 = v141;

        v39 = v138;
      }

      else
      {
        v71 = 0;
        v70 = 0xF000000000000000;
        v39 = v138;
        v72 = v141;
      }

      v73 = v140;
      if (v72 >> 60 != 15)
      {
        if (v70 >> 60 == 15)
        {
LABEL_65:
          sub_224A77FD0(v140, v72);
          sub_224AECAB0(v71, v70);
          sub_224AC1D9C(v73, v72);
          v102 = v71;
          v103 = v70;
          goto LABEL_67;
        }

        v76 = v72 >> 62;
        v77 = v70 >> 62;
        if (v72 >> 62 == 3)
        {
          v78 = 0;
          if (!v140 && v72 == 0xC000000000000000 && v70 >> 62 == 3)
          {
            v78 = 0;
            if (!v71 && v70 == 0xC000000000000000)
            {
              v79 = 0;
              sub_224A77FD0(0, 0xC000000000000000);
              sub_224AECAB0(0, 0xC000000000000000);
              v80 = 0;
              v81 = 0xC000000000000000;
              goto LABEL_56;
            }
          }
        }

        else if (v76)
        {
          if (v76 == 1)
          {
            LODWORD(v78) = HIDWORD(v140) - v140;
            if (__OFSUB__(HIDWORD(v140), v140))
            {
              goto LABEL_74;
            }

            v78 = v78;
          }

          else
          {
            v83 = *(v140 + 16);
            v82 = *(v140 + 24);
            v84 = __OFSUB__(v82, v83);
            v78 = v82 - v83;
            if (v84)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v78 = BYTE6(v72);
        }

        if (v77 > 1)
        {
          if (v77 == 2)
          {
            v87 = *(v71 + 16);
            v86 = *(v71 + 24);
            v84 = __OFSUB__(v86, v87);
            v85 = v86 - v87;
            if (v84)
            {
              goto LABEL_72;
            }

            goto LABEL_50;
          }

          if (v78)
          {
LABEL_66:
            sub_224A77FD0(v140, v72);
            sub_224AECAB0(v71, v70);
            sub_224AC1D9C(v71, v70);
            v102 = v73;
            v103 = v72;
LABEL_67:
            sub_224AC1D9C(v102, v103);
LABEL_68:
            v104 = v113;
            v90 = sub_224DAB228();
            v105 = sub_224DAF2A8();

            if (os_log_type_enabled(v90, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *v106 = 138543362;
              *(v106 + 4) = v104;
              *v107 = v104;
              v108 = v104;
              _os_log_impl(&dword_224A2F000, v90, v105, "%{public}@ Placeholder will reload since its locale token is out of date", v106, 0xCu);
              sub_224A3311C(v107, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v107, -1, -1);
              MEMORY[0x22AA5EED0](v106, -1, -1);
            }

            sub_224A78024(v140, v141);
            sub_224AC1D9C(v71, v70);
            v95 = v136;
LABEL_63:
            v96 = v120;
            v97 = v119;
            v98 = v118;
            v99 = v117;
            v100 = v116;
            v101 = v115;

            (*(v125 + 104))(v127, *MEMORY[0x277CF9B50], v126);
            (*(v98 + 104))(v96, *MEMORY[0x277CF9B40], v97);
            (*(v123 + 104))(v100, *MEMORY[0x277CF9BE8], v124);
            sub_224DACC48();
            sub_224DACC38();

            sub_224A3311C(v95, &qword_27D6F61E0, &unk_224DBE988);
            v122(v99, 0, 1, v101);
            sub_224A64134(v99, v95);
            return __swift_destroy_boxed_opaque_existential_1(&v148);
          }
        }

        else
        {
          if (v77)
          {
            LODWORD(v85) = HIDWORD(v71) - v71;
            if (__OFSUB__(HIDWORD(v71), v71))
            {
              goto LABEL_73;
            }

            v85 = v85;
          }

          else
          {
            v85 = BYTE6(v70);
          }

LABEL_50:
          if (v78 != v85)
          {
            goto LABEL_66;
          }

          if (v78 >= 1)
          {
            sub_224A77FD0(v140, v72);
            sub_224A77FD0(v73, v72);
            sub_224AECAB0(v71, v70);
            sub_224AECAB0(v71, v70);
            v88 = v137;
            LODWORD(v139) = sub_224CFE41C(v73, v72, v71, v70);
            v137 = v88;
            sub_224A78024(v73, v72);
            sub_224AC1D9C(v71, v70);
            sub_224AC1D9C(v73, v72);
            if ((v139 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_57;
          }
        }

        sub_224A77FD0(v140, v72);
        sub_224AECAB0(v71, v70);
        v79 = v71;
        v80 = v71;
        v81 = v70;
LABEL_56:
        sub_224AC1D9C(v80, v81);
        sub_224AC1D9C(v73, v72);
        v71 = v79;
        v39 = v138;
LABEL_57:

        sub_224A78024(v73, v72);
        v74 = v71;
        v75 = v70;
        goto LABEL_58;
      }

      if (v70 >> 60 != 15)
      {
        goto LABEL_65;
      }

      v74 = v73;
      v75 = v72;
LABEL_58:
      sub_224AC1D9C(v74, v75);
      result = __swift_destroy_boxed_opaque_existential_1(&v148);
      v45 = v135;
      v40 = v110;
      v44 = v109;
    }

    else
    {

      result = sub_224A3311C(&v146, &unk_27D6F3CB0, &unk_224DB7860);
    }
  }

  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v44)
    {
    }

    v43 = *(v40 + 8 * v48);
    ++v46;
    if (v43)
    {
      v46 = v48;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_224A7D5AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB668();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_224A7D63C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_224A7D664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_224A3E7EC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224B2993C();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_224A58C3C(v6, v9);
  *v2 = v9;
  return v10;
}

uint64_t sub_224A7D70C@<X0>(void *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_224DAC378();
  v15 = *(v14 - 8);
  v97 = v14;
  v98 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v95 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v18 = *(*(v96 - 1) + 64);
  MEMORY[0x28223BE20](v96);
  v20 = &v87 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v99 = &v87 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v100 = &v87 - v29;
  result = MEMORY[0x28223BE20](v28);
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  v90 = &v87 - v31;
  v91 = v34;
  v87 = v33;
  v88 = v32;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v35 = sub_224DAB258();
  v36 = __swift_project_value_buffer(v35, qword_281364D60);
  v37 = a2;
  v89 = v36;
  v38 = sub_224DAB228();
  v39 = sub_224DAF278();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543362;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    _os_log_impl(&dword_224A2F000, v38, v39, a3, v40, 0xCu);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  v43 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v44 = sub_224A71E2C(v37, *(a1 + v43), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  if (v44)
  {
    swift_endAccess();
    v45 = v44;
    goto LABEL_19;
  }

  swift_endAccess();
  v46 = v90;
  (*(v98 + 56))(v90, 1, 1, v97);
  v47 = type metadata accessor for ExtensionInfo(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = v37;

  v45 = sub_224D2EC44(v50, a1, v46);

  v51 = *(v45 + 16);
  swift_beginAccess();
  v52 = *(a1 + v43);
  if ((v52 & 0xC000000000000001) == 0)
  {
    v55 = *(a1 + v43);
    swift_retain_n();
    v56 = v51;
    goto LABEL_16;
  }

  if (v52 < 0)
  {
    v53 = *(a1 + v43);
  }

  else
  {
    v53 = v52 & 0xFFFFFFFFFFFFFF8;
  }

  swift_retain_n();
  v54 = v51;
  result = sub_224DAF838();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v43) = sub_224D2CDF0(v53, result + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(a1 + v43);
    sub_224B237E0(v45, v51, isUniquelyReferenced_nonNull_native);
    *(a1 + v43) = v101;

    swift_endAccess();

    v58 = sub_224DAB228();
    v59 = sub_224DAF2A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138543362;
      v62 = *(v45 + 16);
      *(v60 + 4) = v62;
      *v61 = v62;
      v63 = v62;
      _os_log_impl(&dword_224A2F000, v58, v59, "[ext:%{public}@] started tracking", v60, 0xCu);
      sub_224A3311C(v61, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v61, -1, -1);
      MEMORY[0x22AA5EED0](v60, -1, -1);
    }

LABEL_19:
    v64 = v99;

    sub_224A71B08(v64);
    *(v45 + 32) = 0;
    sub_224A7F4C8(v45, a1, a4);
    v65 = *(v45 + 32);
    *(v45 + 32) = 2;
    if ((v65 & 1) == 0)
    {

      v70 = v100;
      sub_224A71DBC(v64, v100);
      goto LABEL_28;
    }

    sub_224A6FDF8();
    v66 = v91;
    sub_224A71B08(v91);
    sub_224A3796C(v66, v100, &qword_27D6F3948, &qword_224DB5C10);
    v67 = *(v96 + 12);
    sub_224A3796C(v64, v20, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3796C(v66, &v20[v67], &qword_27D6F3948, &qword_224DB5C10);
    v68 = v97;
    v69 = *(v98 + 48);
    if (v69(v20, 1, v97) == 1)
    {

      sub_224A3311C(v66, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v64, &qword_27D6F3948, &qword_224DB5C10);
      if (v69(&v20[v67], 1, v68) == 1)
      {
        sub_224A3311C(v20, &qword_27D6F3948, &qword_224DB5C10);
        v70 = v100;
LABEL_28:
        v75 = sub_224DAC198();
        v76 = swift_allocObject();
        swift_weakInit();
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *(v77 + 24) = v45;

        v78 = sub_224DAC1A8();
        v79 = MEMORY[0x277CF9950];
        v80 = v94;
        v94[3] = v75;
        v80[4] = v79;

        *v80 = v78;
        return sub_224A3311C(v70, &qword_27D6F3948, &qword_224DB5C10);
      }
    }

    else
    {
      v71 = v87;
      sub_224A3796C(v20, v87, &qword_27D6F3948, &qword_224DB5C10);
      if (v69(&v20[v67], 1, v68) != 1)
      {
        v81 = v98;
        v82 = v95;
        (*(v98 + 32))(v95, &v20[v67], v68);
        sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
        v96 = v20;
        v83 = v71;
        v84 = v68;
        v85 = sub_224DAEDD8();

        v86 = *(v81 + 8);
        v86(v82, v84);
        sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v99, &qword_27D6F3948, &qword_224DB5C10);
        v86(v83, v84);
        sub_224A3311C(v96, &qword_27D6F3948, &qword_224DB5C10);
        v70 = v100;
        if (v85)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v99, &qword_27D6F3948, &qword_224DB5C10);
      (*(v98 + 8))(v71, v68);
    }

    sub_224A3311C(v20, &qword_27D6F6938, &qword_224DC0A70);
    v70 = v100;
LABEL_27:
    v72 = *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
    v100 = *(v45 + 16);
    v73 = v90;
    sub_224A3796C(v70, v90, &qword_27D6F3948, &qword_224DB5C10);
    v74 = v88;
    sub_224A3796C(v73, v88, &qword_27D6F3948, &qword_224DB5C10);
    swift_beginAccess();

    sub_224A83A8C(v74, v100);
    swift_endAccess();

    sub_224A3311C(v73, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A83EBC();
    sub_224A843F0();
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A7E1D0(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = sub_224DAD158();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_281364EB0);
  v16 = a1;
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v49 = v5;
    v5 = v19;
    v20 = swift_slowAlloc();
    v48 = a3;
    v21 = v20;
    *v5 = 138543362;
    *(v5 + 4) = v16;
    *v20 = v16;
    v22 = v16;
    _os_log_impl(&dword_224A2F000, v17, v18, "[%{public}@] Initialized", v5, 0xCu);
    sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
    v23 = v21;
    a3 = v48;
    MEMORY[0x22AA5EED0](v23, -1, -1);
    v24 = v5;
    LOBYTE(v5) = v49;
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  (*(v11 + 16))(v14, a3, v10);
  v25 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v11 + 24))(a2 + v25, v14, v10);
  swift_endAccess();
  sub_224A81084();
  (*(v11 + 8))(v14, v10);
  v26 = [v16 widget];
  v27 = [v26 extensionIdentity];

  sub_224A3317C((a4 + 46), &v52);
  v28 = a4[38];
  v29 = a4[40];
  v30 = __swift_project_boxed_opaque_existential_1(a4 + 35, v28);
  *(&v56 + 1) = v28;
  v57 = *(v29 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
  type metadata accessor for ExtensionVisibilityAssertion();
  v32 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v33 + 16) = v34;
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0u;
  *(v32 + 200) = 0u;
  *(v32 + 216) = 0u;
  *(v32 + 232) = 0u;
  *(v32 + 248) = 0u;
  *(v32 + 152) = 0u;
  *(v32 + 257) = 0u;
  *(v32 + 16) = v27;
  v35 = v53;
  *(v32 + 24) = v52;
  *(v32 + 40) = v35;
  *(v32 + 56) = v54;
  *(v32 + 96) = v57;
  v36 = v56;
  *(v32 + 64) = v55;
  *(v32 + 80) = v36;
  *(v32 + 104) = 0u;
  *(v32 + 120) = 0u;
  *(v32 + 136) = 0;
  *(v32 + 144) = v33;
  v37 = *(a2 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion);
  *(a2 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion) = v32;

  v38 = *(v32 + 144);
  os_unfair_lock_lock(*(v38 + 16));
  sub_224A71EF0(v32, v5 & 1);
  os_unfair_lock_unlock(*(v38 + 16));

  sub_224B44674(*(a2 + 16) + 232, &v52);
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v39 = *(a2 + 40);
  v40 = *(a2 + 32);
  v41 = v39;
  sub_224DAD7C8();

  __swift_destroy_boxed_opaque_existential_1(&v52);
  sub_224A816F0(v51);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  v42 = *(a2 + 40);
  v43 = *(a2 + 32);
  v44 = v42;
  sub_224DAD7C8();

  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3690, &qword_224DB3C68);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_224DB3100;
  sub_224A3317C(&v55, v45 + 32);
  sub_224DAE208();

  __swift_destroy_boxed_opaque_existential_1(&v55);
  v46 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion;
  swift_beginAccess();
  sub_224A71D4C(&v52, a2 + v46);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v50);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

void sub_224A7E76C(unint64_t a1)
{
  v1 = a1;
  v14[1] = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    sub_224A87A80();
    sub_224DAF1F8();
    v1 = v14[2];
    v2 = v14[3];
    v3 = v14[4];
    v4 = v14[5];
    v5 = v14[6];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));

    v4 = 0;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_20:
      sub_224A3B7E4();
      return;
    }

    while (1)
    {
      if (qword_2813589F8 != -1)
      {
        swift_once();
      }

      sub_224A5EAA4(v14, [v13 copyFilteredToOptions_]);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_224A7E9B8(uint64_t a1, char *a2, _BYTE *a3, void (**a4)(void, void, id))
{
  v65 = a4;
  v63 = a3;
  v5 = sub_224DA9F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v10;
  v11 = sub_224DAD158();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAA818();
  v16 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v17 = *&a2[v16];

  v18 = sub_224A71D20(v15, v17);

  if (v18)
  {

    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281364EC8);
    v20 = v15;
    v21 = a2;
    v22 = sub_224DAB228();
    v23 = sub_224DAF288();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66 = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_224A33F74(*&v21[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v21[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v66);
      *(v24 + 12) = 2114;
      *(v24 + 14) = v20;
      *v25 = v20;
      v27 = v20;
      _os_log_impl(&dword_224A2F000, v22, v23, "[%{public}s] Error subscribing to session: Cannot stomp an existing session: %{public}@", v24, 0x16u);
      sub_224A3311C(v25, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    *v63 = 1;
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v29 = sub_224DAEDE8();
    v30 = [v28 initWithDomain:v29 code:23 userInfo:0];

    v31 = sub_224DA9518();
    v32 = v65;
    v65[2](v65, 0, v31);

    goto LABEL_15;
  }

  v57 = *&a2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services];
  v33 = v15;
  v63 = sub_224DAA828();
  sub_224DAA848();
  v59 = sub_224DAA838();
  v34 = type metadata accessor for WidgetRendererSession();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v38 = swift_allocObject();
  v39 = swift_slowAlloc();
  *v39 = 0;
  *(v38 + 16) = v39;
  *(v37 + 6) = v38;
  v40 = *MEMORY[0x277CF9F28];
  v41 = *(v6 + 104);
  v58 = v5;
  v41(&v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority], v40, v5);
  v42 = &v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion];
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *(v42 + 4) = 0;
  *&v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion] = 0;
  v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled] = 0;
  *&v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion] = 0;
  sub_224DAD148();
  v43 = v57;
  *(v37 + 2) = v57;

  *(v37 + 4) = [v33 widget];
  *(v37 + 5) = [v33 metrics];
  *(v37 + 3) = v33;
  *&v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType] = v63;
  LODWORD(v38) = v59 & 1;
  v37[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled] = v38;
  v31 = v33;
  sub_224A7E1D0(v31, v37, v14, v43, v38);

  (*(v60 + 8))(v14, v61);
  v44 = v64;
  sub_224DAA858();
  v45 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v46 = v62;
  v47 = v58;
  (*(v6 + 16))(v62, &v37[v45], v58);
  swift_beginAccess();
  (*(v6 + 24))(&v37[v45], v44, v47);
  swift_endAccess();
  sub_224A7F0A8();
  v48 = *(v6 + 8);
  v48(v46, v47);
  v48(v64, v47);
  swift_beginAccess();
  v49 = *&a2[v16];
  if ((v49 & 0xC000000000000001) == 0)
  {
    v53 = *&a2[v16];
    v54 = v31;

    goto LABEL_14;
  }

  if (v49 < 0)
  {
    v50 = *&a2[v16];
  }

  else
  {
    v50 = v49 & 0xFFFFFFFFFFFFFF8;
  }

  v51 = v31;

  v52 = sub_224DAF838();
  if (!__OFADD__(v52, 1))
  {
    *&a2[v16] = sub_224D2D01C(v50, v52 + 1);
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *&a2[v16];
    sub_224A73070(v37, v31, isUniquelyReferenced_nonNull_native);
    *&a2[v16] = v67;

    swift_endAccess();

    v32 = v65;
LABEL_15:

    _Block_release(v32);
    return;
  }

  __break(1u);
}

uint64_t sub_224A7F0A8()
{
  v1 = v0;
  v2 = sub_224DA9F08();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v8 = v3[2];
  v8(v6, v0 + v7, v2);
  sub_224A80F48(&qword_2813519D8, MEMORY[0x277CF9F40]);
  v9 = sub_224DAEDD8();
  v10 = v3[1];
  result = v10(v6, v2);
  if ((v9 & 1) == 0)
  {
    v37 = v10;
    if (qword_281351528 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364EB0);

    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v36 = v8;
      v16 = v15;
      v17 = swift_slowAlloc();
      v34 = v17;
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v16 = 138543618;
      v33 = v13;
      v18 = *(v1 + 24);
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2082;
      v36(v6, v1 + v7, v2);
      v19 = v18;
      v20 = sub_224DA9EC8();
      v22 = v21;
      v37(v6, v2);
      v23 = sub_224A33F74(v20, v22, v39);

      *(v16 + 14) = v23;
      v13 = v33;
      _os_log_impl(&dword_224A2F000, v33, v14, "[%{public}@] Task priority did change: %{public}s", v16, 0x16u);
      v24 = v34;
      sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v24, -1, -1);
      v25 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      v26 = v16;
      v8 = v36;
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    sub_224A3317C(*(v1 + 16) + 16, v39);
    v27 = v40;
    v28 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v8(v6, v1 + v7, v2);
    v29 = *(v1 + 24);
    v38[3] = sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    v38[4] = sub_224A3B758(&unk_2813508F0, &qword_2813508E8, 0x277D7BC20);
    v38[0] = v29;
    v30 = *(v28 + 8);
    v31 = *(v30 + 8);
    v32 = v29;
    v31(v6, v38, v27, v30);
    v37(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t sub_224A7F4C8(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(a1 + v6, v17, &unk_27D6F4700, &unk_224DB3A10);
  v7 = v17[3];
  result = sub_224A3311C(v17, &unk_27D6F4700, &unk_224DB3A10);
  if (!v7)
  {
    v9 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    v10 = *(a1 + 16);
    sub_224DAC6D8();
    if (v16)
    {
      sub_224A36F98(&v15, v17);
      sub_224A3317C(v17, &v15);
      sub_224A3796C(a1 + v6, v14, &unk_27D6F4700, &unk_224DB3A10);
      swift_beginAccess();
      sub_224C4D398(&v15, a1 + v6, &unk_27D6F4700, &unk_224DB3A10);
      swift_endAccess();
      sub_224D25314(v14);
      sub_224A3311C(v14, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3311C(&v15, &unk_27D6F4700, &unk_224DB3A10);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      result = sub_224A3311C(&v15, &unk_27D6F4700, &unk_224DB3A10);
    }
  }

  v11 = *(a1 + *a3);
  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a1 + *a3) = v13;
    if (*(a1 + 32) == 2)
    {
      return sub_224A6FDF8();
    }

    else if (v13 == 1)
    {
      *(a1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_224A7F6A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24[1] = a3;
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAC268();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - v18;
  v20 = a1;
  v21 = a2;
  sub_224DAC238();
  (*(v13 + 16))(v17, v19, v12);
  sub_224DABD88();
  v22 = *(v4 + 232);
  sub_224DAD288();
  v24[4] = v11;
  v24[5] = v19;
  v24[6] = v4;
  sub_224DAC128();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v19, v12);
}

void sub_224A7F8C0(uint64_t a1, void *a2)
{
  v5 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_lock(*(v5 + 16));
  sub_224A7F964(v2, a2, a1);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_224A7F964(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000] & *a1;
  v9 = sub_224DA9F08();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = &type metadata for FeatureFlags.Widgets;
  v44[4] = sub_224A80FFC();
  LOBYTE(v44[0]) = 18;
  v13 = sub_224DA9C98();
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (v13)
  {
    v14 = *((*v7 & *v6) + 0xA0);
    swift_beginAccess();
    v39 = v6;
    v15 = *(v6 + v14);
    sub_224DA9908();
    v17 = *(v8 + 80);
    v16 = *(v8 + 88);
    type metadata accessor for TaskSession();
    v41 = a3;
    v18 = sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0]);
    v38 = &v35;
    v45 = v15;
    MEMORY[0x28223BE20](v18);
    v35 = v16;
    v36 = v17;
    *(&v35 - 4) = v17;
    *(&v35 - 3) = v16;
    v37 = a2;
    *(&v35 - 2) = a2;
    sub_224DAED38();

    swift_getWitnessTable();
    v19 = sub_224DAEF68();
    v40 = v3;
    v20 = *MEMORY[0x277CF9F30];
    v21 = v42;
    v38 = *(v42 + 104);
    (v38)(v12, v20, v9);
    sub_224A43A04(&unk_2813519C8, MEMORY[0x277CF9F40]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v22 = *(v21 + 8);
    v42 = v21 + 8;
    v22(v12, v9);
    if (v45 == v43 || ((v38)(v12, *MEMORY[0x277CF9F38], v9), sub_224DAEFA8(), sub_224DAEFA8(), v23 = (v22)(v12, v9), v45 == v43))
    {
      v24 = 1;
    }

    else
    {
      v45 = v19;
      MEMORY[0x28223BE20](v23);
      v25 = v35;
      *(&v35 - 2) = v36;
      *(&v35 - 1) = v25;
      sub_224DAF0B8();
      swift_getWitnessTable();
      v26 = v40;
      v24 = sub_224DAEF88();
      v40 = v26;
    }

    v6 = v39;
    if (sub_224DAF088())
    {
      v27 = 4;
      do
      {
        v28 = v27 - 4;
        v29 = sub_224DAF068();
        sub_224DAF028();
        if (v29)
        {
          v30 = *(v19 + 8 * v27);

          v31 = __OFADD__(v28, 1);
          v32 = v27 - 3;
          if (v31)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_224DAF948();
          v31 = __OFADD__(v28, 1);
          v32 = v27 - 3;
          if (v31)
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        sub_224D42810(v24 & 1);

        ++v27;
      }

      while (v32 != sub_224DAF088());
    }

    a3 = v41;
    a2 = v37;
    v7 = MEMORY[0x277D85000];
  }

  v33 = *(v6 + *((*v7 & *v6) + 0x98));

  sub_224A72D60(a3, a2);
}

const char *sub_224A7FEB4(char a1)
{
  result = "BackgroundAbsentCheck";
  switch(a1)
  {
    case 1:
      result = "AnimatedTransition";
      break;
    case 2:
      result = "InteractiveWidgets";
      break;
    case 3:
      result = "PrefetchRemoteSnapshots2";
      break;
    case 4:
      result = "InteractiveSystemSmall";
      break;
    case 5:
      result = "FirstPartyContentMargins";
      break;
    case 6:
      result = "InteractiveWatchOS";
      break;
    case 7:
      result = "AnimatedTransitionWatchOS";
      break;
    case 8:
      result = "RelevanceDuringTimelineReload";
      break;
    case 9:
      result = "ContextualWidgets";
      break;
    case 10:
      result = "ControlsBuildAndRunHack";
      break;
    case 11:
      result = "IntelligentWidgets";
      break;
    case 12:
      result = "RemoteControls";
      break;
    case 13:
      result = "ReverseRemoteWidgetSource";
      break;
    case 14:
      result = "FFGatedWidgets";
      break;
    case 15:
      result = "CorrectDominoContentMargins";
      break;
    case 16:
      result = "ForceLayerSeparation";
      break;
    case 17:
      result = "GlassPrototype";
      break;
    case 18:
      result = "WidgetExtensionRunQOSUtility";
      break;
    case 19:
      result = "UIIntelligence";
      break;
    default:
      return result;
  }

  return result;
}

void sub_224A80094(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v117 = a4;
  v105 = sub_224DACB98();
  v103 = *(v105 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_224DACB08();
  v100 = *(v101 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_224DACB28();
  v96 = *(v97 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_224DACC88();
  v106 = *(v107 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v115 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v95 = &v83 - v17;
  v116 = sub_224DAE918();
  v114 = *(v116 - 8);
  v18 = *(v114 + 64);
  v19 = MEMORY[0x28223BE20](v116);
  v99 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v83 - v21;
  v113 = sub_224DAC268();
  v112 = *(v113 - 8);
  v23 = *(v112 + 8);
  v24 = MEMORY[0x28223BE20](v113);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v111 = &v83 - v27;
  v110 = sub_224DABE18();
  v109 = *(v110 - 8);
  v28 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DAB258();
  v93 = *(v94 - 8);
  v30 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD3D8();
  if (v122)
  {

    return;
  }

  v88 = v26;
  v92 = v22;
  v89 = a1;
  v34 = v93;
  v35 = v32;
  v36 = v94;
  (*(v93 + 16))(v32, v117 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v94);
  v37 = a2;
  (*(v109 + 16))(v108, a2, v110);
  v38 = *(v112 + 2);
  v91 = a3;
  v39 = v113;
  v87 = v112 + 16;
  v86 = v38;
  v38(v111, a3, v113);
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  v42 = os_log_type_enabled(v40, v41);
  v90 = v37;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v84 = v41;
    v44 = v43;
    v85 = swift_slowAlloc();
    v121[0] = v85;
    *v44 = 136446466;
    sub_224A94F2C(&qword_281350E70, MEMORY[0x277CF98E0]);
    v83 = v40;
    v45 = v108;
    v46 = v110;
    v47 = sub_224DAFD28();
    v49 = v48;
    (*(v109 + 8))(v45, v46);
    v50 = sub_224A33F74(v47, v49, v121);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2082;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978]);
    v51 = v111;
    v52 = sub_224DAFD28();
    v54 = v53;
    (*(v112 + 1))(v51, v39);
    v55 = sub_224A33F74(v52, v54, v121);

    *(v44 + 14) = v55;
    v56 = v83;
    _os_log_impl(&dword_224A2F000, v83, v84, "%{public}s:%{public}s Creating entry", v44, 0x16u);
    v57 = v85;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v57, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);
  }

  else
  {

    (*(v112 + 1))(v111, v39);
    (*(v109 + 8))(v108, v110);
  }

  (*(v34 + 8))(v35, v36);
  v58 = v102;
  v59 = v95;
  v60 = sub_224DAC248();
  v61 = [v60 extensionIdentity];

  v62 = v117;
  sub_224A3317C(v117 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_protectionLevelProvider, v121);
  __swift_project_boxed_opaque_existential_1(v121, v121[3]);
  v112 = v61;
  v63 = v118;
  sub_224DADBE8();
  v64 = v100;
  if (v63)
  {

    __swift_destroy_boxed_opaque_existential_1(v121);
    v65 = v114;
    v66 = v116;
    (*(v114 + 56))(v59, 1, 1, v116);
    v118 = 0;
    v67 = v92;
    v68 = v103;
    v69 = v99;
    goto LABEL_10;
  }

  v118 = 0;
  v65 = v114;
  v66 = v116;
  (*(v114 + 56))(v59, 0, 1, v116);
  __swift_destroy_boxed_opaque_existential_1(v121);
  v70 = (*(v65 + 48))(v59, 1, v66);
  v68 = v103;
  v69 = v99;
  if (v70 == 1)
  {
    v67 = v92;
LABEL_10:
    (*(v65 + 104))(v67, *MEMORY[0x277CE3D50], v66);
    if ((*(v65 + 48))(v59, 1, v66) != 1)
    {
      sub_224A3311C(v59, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_13;
  }

  (*(v65 + 32))(v92, v59, v66);
LABEL_13:
  v71 = v105;
  v72 = v104;
  (*(v96 + 104))(v98, *MEMORY[0x277CF9B50], v97);
  (*(v64 + 104))(v58, *MEMORY[0x277CF9B40], v101);
  (*(v68 + 104))(v72, *MEMORY[0x277CF9BF0], v71);
  sub_224DACC48();
  sub_224DACC38();
  v73 = v62[28];
  __swift_project_boxed_opaque_existential_1(v62 + 24, v62[27]);
  v74 = sub_224DABDB8();
  sub_224DADA58();

  sub_224DABE88();
  v86(v88, v91, v113);
  v75 = v114;
  v76 = v69;
  v77 = v92;
  (*(v114 + 16))(v76, v92, v116);
  sub_224A3317C(v121, &v120);
  sub_224A3317C(v117 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorObserver, v119);
  v78 = sub_224DABE48();
  v79 = v89;
  v80 = v89[4];
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  v120 = v78;
  sub_224DAD3B8();
  v81 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v82 = v115;
  sub_224DAD3E8();

  __swift_destroy_boxed_opaque_existential_1(v121);
  (*(v106 + 8))(v82, v107);
  (*(v75 + 8))(v77, v116);
}

uint64_t sub_224A80D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A80F90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224A80FFC()
{
  result = qword_28135C2F0;
  if (!qword_28135C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135C2F0);
  }

  return result;
}

uint64_t sub_224A81084()
{
  v1 = v0;
  v54 = sub_224DAC268();
  v53 = *(v54 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224DAD158();
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364EB0);

  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();

  v10 = os_log_type_enabled(v8, v9);
  v55 = v4;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v11 = 138543618;
    v13 = *(v0 + 24);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2082;
    v14 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
    swift_beginAccess();
    v15 = v51;
    v16 = v0 + v14;
    v17 = v50;
    v18 = v52;
    (*(v51 + 16))(v50, v16, v52);
    v19 = v13;
    v20 = sub_224DAD008();
    v22 = v21;
    (*(v15 + 8))(v17, v18);
    v23 = sub_224A33F74(v20, v22, &v56);

    *(v11 + 14) = v23;
    _os_log_impl(&dword_224A2F000, v8, v9, "[%{public}@] Environment modifiers did change: %{public}s", v11, 0x16u);
    v24 = v48;
    sub_224A3311C(v48, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    v25 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  v26 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion;
  v27 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion);
  v28 = *(v1 + 24);

  v29 = [v28 widget];
  v30 = [v28 metrics];
  sub_224DAC238();
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_224DAF938();

  v56 = 0x6552746567646957;
  v57 = 0xEF2D72657265646ELL;
  v31 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType;
  v32 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType);
  v33 = NSStringFromCHSWidgetContentType();
  v34 = sub_224DAEE18();
  v36 = v35;

  MEMORY[0x22AA5D210](v34, v36);

  MEMORY[0x22AA5D210](45, 0xE100000000000000);
  v37 = [v28 identifier];
  v38 = sub_224DAEE18();
  v40 = v39;

  MEMORY[0x22AA5D210](v38, v40);

  sub_224A816F0(v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AE0, &qword_224DB9A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AE8, &qword_224DB9A90);
  if (swift_dynamicCast())
  {
    sub_224A36F98(v59, &v56);
    __swift_project_boxed_opaque_existential_1(&v56, v58);
    v41 = sub_224DAE068();

    v42 = *(v1 + v26);
    *(v1 + v26) = v41;

    v43 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
    swift_beginAccess();
    (*(v51 + 16))(v50, v1 + v43, v52);
    sub_224DADCB8();

    __swift_destroy_boxed_opaque_existential_1(&v56);
    if (*(v1 + v31))
    {
      goto LABEL_10;
    }
  }

  else
  {

    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_224A3311C(v59, &qword_27D6F4AF0, &qword_224DB9A98);
    if (*(v1 + v31))
    {
      goto LABEL_10;
    }
  }

  sub_224B44674(*(v1 + 16) + 280, &v56);
  __swift_project_boxed_opaque_existential_1(&v56, v58);
  v44 = *(v1 + 32);
  sub_224DAC7E8();

  __swift_destroy_boxed_opaque_existential_1(&v56);
LABEL_10:
  v45 = v55;
  if (v27)
  {

    sub_224DADCC8();
  }

  return (*(v53 + 8))(v45, v54);
}

uint64_t sub_224A816F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType);
  v4 = *(v1 + 16);
  if (v3 == 2)
  {
    v5 = v4[32];
    v8 = v4[34];
    v9 = v4 + 29;
  }

  else
  {
    if (v3 != 1)
    {
      v5 = v4[38];
      v6 = v4[40];
      v7 = __swift_project_boxed_opaque_existential_1(v4 + 35, v5);
      a1[3] = v5;
      a1[4] = *(v6 + 64);
      goto LABEL_7;
    }

    v5 = v4[25];
    v8 = v4[27];
    v9 = v4 + 22;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v9, v5);
  a1[3] = v5;
  a1[4] = v8;
LABEL_7:
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v11 = *(*(v5 - 8) + 16);

  return v11(boxed_opaque_existential_1, v7, v5);
}

uint64_t sub_224A817D0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentModificationContext);

  v2 = sub_224DADDD8();

  return v2;
}

uint64_t sub_224A81838(void *a1)
{
  v3 = sub_224DABE18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 232);
  v9 = a1;
  sub_224DABDE8();
  sub_224DAC0F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_224A8193C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = sub_224DAC268();
  v48 = *(v22 - 8);
  v49 = v22;
  v23 = *(v48 + 64);
  MEMORY[0x28223BE20](v22);
  v47 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v7 + 56);
  v25(v21, 1, 1, v6);
  v26 = [a1 intentReference];
  if (v26)
  {

    v27 = [a1 widgetByReplacingIntent_];
  }

  else
  {
    v27 = a1;
  }

  v28 = v27;
  v25(v19, 1, 1, v6);
  sub_224A3796C(v21, v16, &qword_27D6F56C0, &unk_224DB3580);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    v29 = v28;
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
  }

  else
  {
    v42 = v25;
    v43 = a2;
    v44 = v3;
    v30 = v45;
    v41 = *(v7 + 32);
    v41(v45, v16, v6);
    v31 = v28;
    sub_224DAA1F8();
    v32 = sub_224DAA048();

    if (v32)
    {
      sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
      v41(v19, v30, v6);
      v42(v19, 0, 1, v6);
    }

    else
    {
      (*(v7 + 8))(v30, v6);
    }

    a2 = v43;
    v3 = v44;
  }

  sub_224A3796C(v19, v46, &qword_27D6F56C0, &unk_224DB3580);
  v33 = a2;
  v34 = v47;
  sub_224DAC228();

  sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
  v35 = sub_224A3311C(v21, &qword_27D6F56C0, &unk_224DB3580);
  v36 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  MEMORY[0x28223BE20](v35);
  *(&v40 - 2) = v3;
  *(&v40 - 1) = v34;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
  sub_224DAF3E8();

  return (*(v48 + 8))(v34, v49);
}

uint64_t sub_224A81E14@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = sub_224DAC268();
  v54 = *(v20 - 8);
  v55 = v20;
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v53 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DAB8C8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v29 = v28;
  LOBYTE(v28) = sub_224DAB8F8();
  result = (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v31 = sub_224DAC248();
    v48 = sub_224DAC258();
    sub_224DAC218();
    v32 = [v31 intentReference];
    v57 = v19;
    v49 = v31;
    if (v32)
    {

      v33 = [v31 widgetByReplacingIntent_];
    }

    else
    {
      v33 = v31;
    }

    v34 = v33;
    v36 = v50;
    v35 = v51;
    v37 = *(v50 + 56);
    v37(v17, 1, 1, v5);
    sub_224A3796C(v57, v14, &qword_27D6F56C0, &unk_224DB3580);
    if ((*(v36 + 48))(v14, 1, v5) == 1)
    {
      v38 = v34;
      sub_224A3311C(v14, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v50 = v3;
      v51 = a1;
      v47 = *(v36 + 32);
      v47(v35, v14, v5);
      v39 = v34;
      sub_224DAA1F8();
      v40 = sub_224DAA048();

      if (v40)
      {
        sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
        v47(v17, v35, v5);
        v37(v17, 0, 1, v5);
      }

      else
      {
        (*(v36 + 8))(v35, v5);
      }

      v3 = v50;
      a1 = v51;
    }

    sub_224A3796C(v17, v52, &qword_27D6F56C0, &unk_224DB3580);
    v41 = v53;
    sub_224DAC228();

    sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v57, &qword_27D6F56C0, &unk_224DB3580);

    v42 = sub_224DAC248();
    v43 = [v42 extensionIdentity];

    v44 = *(v3 + 176);
    v58 = v43;
    v45 = sub_224DAD288();
    MEMORY[0x28223BE20](v45);
    *(&v46 - 4) = v43;
    *(&v46 - 3) = v41;
    *(&v46 - 2) = v3;
    *(&v46 - 1) = a1;
    sub_224DAC128();

    return (*(v54 + 8))(v41, v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224A823C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_224A81E14(v2, a1);
}

uint64_t sub_224A82414(uint64_t *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  v4 = *v1;
  v5 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_224A828D4(&v6);
  os_unfair_lock_unlock(v2 + 4);
  return v6;
}

uint64_t sub_224A82494@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v34 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates;
  result = swift_beginAccess();
  v19 = *(a1 + v17);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v17);

    v21 = sub_224A3E7EC(a2);
    if (v22)
    {
      v35 = a2;
      (*(v10 + 16))(v16, *(v19 + 56) + *(v10 + 72) * v21, v9);

      sub_224DAC2F8();
      sub_224CFEA04(&qword_281350DF0, MEMORY[0x277CF9A10]);
      v23 = sub_224DAEDB8();
      v24 = *(v10 + 8);
      v24(v14, v9);
      if (v23)
      {
        v25 = v24;
        v26 = v35;
        v27 = sub_224DAB228();
        v28 = sub_224DAF2A8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&dword_224A2F000, v27, v28, "%{public}@ Disallowing reload due to bad extension", v29, 0xCu);
          sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v30, -1, -1);
          MEMORY[0x22AA5EED0](v29, -1, -1);
        }

        result = v25(v16, v9);
        v32 = 0;
      }

      else
      {
        v33 = *(v10 + 56);
        v34[1] = v10 + 8;
        v32 = 1;
        v33(v8, 1, 1, v9);
        swift_beginAccess();
        sub_224A83A8C(v8, v35);
        swift_endAccess();
        result = (v24)(v16, v9);
      }
    }

    else
    {

      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
  }

  *v36 = v32;
  return result;
}

void *sub_224A82874@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_224A828F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A8295C(uint64_t a1)
{
  v2 = v1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v4 = *(*(v46 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v10 = *__swift_project_boxed_opaque_existential_1((*&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 232), *(*&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 256));
  result = sub_224A83048(a1);
  if (result)
  {
    v12 = result;
    if (*(result + 16))
    {
      *v50 = 0;
      v13 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
      os_unfair_lock_lock(*(v13 + 16));
      sub_224A830AC(v2, a1, &v50[1], v50);
      os_unfair_lock_unlock(*(v13 + 16));
      if (qword_281351580 != -1)
      {
LABEL_28:
        swift_once();
      }

      v14 = sub_224DAB258();
      __swift_project_value_buffer(v14, qword_281364EC8);
      v15 = v2;
      v16 = a1;
      v17 = sub_224DAB228();
      v18 = sub_224DAF278();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v49 = v21;
        *v19 = 136446978;
        *(v19 + 4) = sub_224A33F74(*&v15[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v15[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v49);
        *(v19 + 12) = 2114;
        *(v19 + 14) = v16;
        *v20 = v16;
        *(v19 + 22) = 1026;
        swift_beginAccess();
        *(v19 + 24) = v50[1];
        *(v19 + 28) = 1026;
        swift_beginAccess();
        *(v19 + 30) = v50[0];
        v22 = v16;
        _os_log_impl(&dword_224A2F000, v17, v18, "[%{public}s]: Placeholder reload detected - key[%{public}@]: matchesSession=%{BOOL,public}d, matchesConfiguration=%{BOOL,public}d", v19, 0x22u);
        sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v19, -1, -1);
      }

      swift_beginAccess();
      if ((v50[1] & 1) != 0 || (swift_beginAccess(), v50[0] == 1))
      {
        v23 = *(v12 + 16);
        if (v23)
        {
          v40 = v15;
          v48 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          v24 = -1 << *(v12 + 32);
          v25 = sub_224DAF798();
          v42 = v12;
          v41 = v12 + 64;
          do
          {
            v47 = v23;
            a1 = *(v12 + 36);
            v26 = v43;
            v27 = sub_224A837F0(v43, v25, *(v12 + 36), 0, v12);
            v28 = sub_224DAC268();
            v29 = *(v28 - 8);
            v30 = v45;
            (*(v29 + 32))(v45, v26, v28);
            v31 = v46;
            *(v30 + *(v46 + 48)) = v27;
            v32 = v44;
            sub_224A3796C(v30, v44, &qword_27D6F47F8, &unk_224DC2000);

            v33 = sub_224DAC248();
            v34 = *(v29 + 8);
            v34(v32, v28);
            v35 = [v33 widgetByReplacingIntent_];

            sub_224A3796C(v30, v32, &qword_27D6F47F8, &unk_224DC2000);
            v36 = sub_224DAC258();
            v34(v32, v28);
            [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v35 metrics:v36];

            v37 = v30;
            v12 = v42;
            sub_224A3311C(v37, &qword_27D6F47F8, &unk_224DC2000);
            sub_224DAF9B8();
            v2 = *(v48 + 16);
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
            if (v25 < 0 || v25 >= -(-1 << *(v12 + 32)))
            {
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            if (((*(v41 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_26;
            }

            if (a1 != *(v12 + 36))
            {
              goto LABEL_27;
            }

            v25 = sub_224DAF7B8();
            v23 = v47 - 1;
          }

          while (v47 != 1);

          v38 = v48;
          if (v48 >> 62)
          {
            goto LABEL_22;
          }

LABEL_16:
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_17:
            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            sub_224A77CC8(sub_224A73980, v39);
          }
        }

        v38 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_16;
        }

LABEL_22:
        if (sub_224DAF838())
        {
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_224A8300C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A83048(uint64_t a1)
{
  v3 = *(v1 + 176);
  v4 = sub_224DAC148();
  if (*(v4 + 16) && (v5 = sub_224A3E7EC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_224A830AC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v54 = a4;
  v61 = a3;
  v71 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v55 = *(v56 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - v9;
  v11 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v58 = a1;
  v12 = *(a1 + v11);
  v57 = v10;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_224DAFA68();
    v63 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v13 | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v14 = ~v17;
    v18 = *(v12 + 64);
    v63 = v12 + 64;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v15 = v20 & v18;
    v16 = v12;
  }

  v21 = 0;
  v60 = v14;
  v62 = (v14 + 64) >> 6;
  while (1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      v30 = v21;
      v31 = v15;
      if (!v15)
      {
        while (1)
        {
          v21 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v21 >= v62)
          {
            goto LABEL_18;
          }

          v31 = *(v63 + 8 * v21);
          ++v30;
          if (v31)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_8:
      v22 = (v31 - 1) & v31;
      v23 = (v21 << 9) | (8 * __clz(__rbit64(v31)));
      v24 = *(*(v16 + 56) + v23);
      v25 = *(*(v16 + 48) + v23);

      if (!v25)
      {
        break;
      }

      goto LABEL_9;
    }

    v32 = sub_224DAFB18();
    if (!v32)
    {
      break;
    }

    v34 = v33;
    *&v64[0] = v32;
    sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    swift_dynamicCast();
    v25 = *&v69[0];
    *&v64[0] = v34;
    type metadata accessor for WidgetRendererSession();
    swift_dynamicCast();
    v22 = v15;
    if (!v25)
    {
      break;
    }

LABEL_9:

    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v15 = v22;
    v26 = [v25 widget];
    v27 = v16;
    v28 = [v26 extensionIdentity];

    v29 = sub_224DAF6A8();
    v16 = v27;

    if (v29)
    {
      result = sub_224A3B7E4();
      v53 = &v72;
      goto LABEL_27;
    }
  }

LABEL_18:
  result = sub_224A3B7E4();
  if (*v61)
  {
    return result;
  }

  sub_224A3317C(*(v58 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services) + 136, v66);
  v36 = v67;
  v37 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  (*(v37 + 32))(v64, 257, v36, v37);
  if (!*(&v65 + 1))
  {
    sub_224A3311C(v64, &qword_27D6F50E0, &qword_224DB41A0);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v69[0] = v64[0];
  v69[1] = v64[1];
  v69[2] = v65;
  __swift_destroy_boxed_opaque_existential_1(v66);
  v38 = *MEMORY[0x277CFA138];
  v39 = v71;
  swift_beginAccess();
  v40 = v55;
  v41 = v56;
  (*(v55 + 16))(v59, v39 + v38, v56);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = v57;
  (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
  v43 = type metadata accessor for HostDescriptorPredicate();
  *(v15 + v43[5]) = 3;
  *(v15 + v43[6]) = 3;
  v44 = v43[7];
  v45 = *(v40 + 56);
  v45(v15 + v44, 1, 1, v41);
  v46 = v43[8];
  v47 = sub_224DABE18();
  (*(*(v47 - 8) + 56))(v15 + v46, 1, 1, v47);
  v48 = v43[9];
  v49 = sub_224DAC268();
  (*(*(v49 - 8) + 56))(v15 + v48, 1, 1, v49);
  v50 = v15 + v43[10];
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_224A3311C(v15 + v44, &unk_27D6F6140, qword_224DBB6B0);
  (*(v40 + 32))(v15 + v44, v59, v41);
  v45(v15 + v44, 0, 1, v41);
  (*(*(v43 - 1) + 56))(v15, 0, 1, v43);
  v51 = sub_224A6BAF8(v15);
  if (v51)
  {
    if (!(v51 >> 62))
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

LABEL_31:
    v52 = sub_224DAF838();
LABEL_23:

    sub_224A699F0(v69);
    result = sub_224A3311C(v15, &qword_27D6F46D0, &unk_224DBD6D0);
    if (!v52)
    {
      return result;
    }

    v53 = &v70;
LABEL_27:
    **(v53 - 32) = 1;
    return result;
  }

  sub_224A699F0(v69);
  return sub_224A3311C(v15, &qword_27D6F46D0, &unk_224DBD6D0);
}

id sub_224A837F0(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_224DAC268();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

uint64_t sub_224A838C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_224A8392C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224DA9FE8();
  v1 = sub_224DAEDE8();

  v2 = sub_224DAEDE8();
  v3 = [ObjCClassFromMetadata newAssertionForBundleIdentifier:v1 withReason:v2 level:2];

  return v3;
}

uint64_t sub_224A839FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A83A44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_224A83A8C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3948, &qword_224DB5C10);
    sub_224B0E020(a2, v8);

    sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_224B22D18(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

id sub_224A83C50(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v33[0] = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v33[1] = v38 + 32;
    v33[2] = v38 + 16;
    for (i = v9; v20; v9 = i)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = v22 | (v16 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v28 = v38;
      v29 = *(v38 + 72) * v25;
      v31 = v35;
      v30 = v36;
      (*(v38 + 16))(v35, v26 + v29, v36);
      v32 = v37;
      *(*(v37 + 48) + 8 * v25) = v27;
      (*(v28 + 32))(*(v32 + 56) + v29, v31, v30);
      result = v27;
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v33[0];
        v11 = v37;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void sub_224A83EBC()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB878();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v33 = v2;
  v2 = v12;
  v12 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending))
  {
    return;
  }

  v30 = v8;
  v32 = v3;
  if (qword_281351430 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v29 = v6;
  v31 = v7;
  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281364D60);
  v20 = sub_224DAB228();
  v21 = sub_224DAF278();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_224A2F000, v20, v21, "[service] enqueueing graceStore flush", v22, 2u);
    MEMORY[0x22AA5EED0](v22, -1, -1);
  }

  *(v1 + v12) = 1;
  v27[1] = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
  sub_224DAB858();
  MEMORY[0x22AA59C40](v16, v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushInterval);
  v34 = *(v34 + 8);
  v28 = v2;
  (v34)(v16, v2);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_224A8CF8C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_53;
  v24 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v35 = MEMORY[0x277D84F90];
  sub_224A83A44(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v25 = v29;
  v26 = v33;
  sub_224DAF788();
  MEMORY[0x22AA5D6A0](v18, v11, v25, v24);
  _Block_release(v24);
  (*(v32 + 8))(v25, v26);
  (*(v30 + 8))(v11, v31);
  (v34)(v18, v28);
}

uint64_t sub_224A843B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224A843F0()
{
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v97 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v88 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v87 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v89 = &v87 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v100 = &v87 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v101 = &v87 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - v26;
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_31;
  }

  v94 = v7;
  v87 = v6;
  v90 = v16;
  v95 = v2;
  v96 = v21;
  v28 = *(v3 + 56);
  v102 = v27;
  v92 = v28;
  v93 = v3 + 56;
  v28(v27, 1, 1, v2);
  v29 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v30 = *(v0 + v29);
  v98 = v0;
  v99 = v3;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v7 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v34 = -1 << *(v30 + 32);
    v32 = ~v34;
    v31 = v30 + 64;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v30 + 64);
    v7 = v30;
  }

  v37 = 0;
  v91 = v32;
  v1 = (v32 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v38 = v37;
    v39 = v33;
    v6 = v37;
    if (!v33)
    {
      while (1)
      {
        v6 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v6 >= v1)
        {
          goto LABEL_19;
        }

        v39 = *(v31 + 8 * v6);
        ++v38;
        if (v39)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_13:
    v40 = (v39 - 1) & v39;
    v41 = (v6 << 9) | (8 * __clz(__rbit64(v39)));
    v42 = *(*(v7 + 56) + v41);
    v43 = *(*(v7 + 48) + v41);

    if (!v43)
    {
      break;
    }

    while (1)
    {

      v47 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      swift_beginAccess();
      v103 = v40;
      v48 = v31;
      v49 = v7;
      v50 = v100;
      sub_224A3796C(v42 + v47, v100, &qword_27D6F3948, &qword_224DB5C10);
      v52 = v101;
      v51 = v102;
      sub_224DAF718();

      v53 = v50;
      v7 = v49;
      v31 = v48;
      sub_224A3311C(v53, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v51, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A71DBC(v52, v51);
      v37 = v6;
      v33 = v103;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      v44 = sub_224DAFB18();
      if (v44)
      {
        v46 = v45;
        v104 = v44;
        sub_224DAF538();
        swift_dynamicCast();
        v43 = v105;
        v104 = v46;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v42 = v105;
        v6 = v37;
        v40 = v33;
        if (v43)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_19:
  sub_224A3B7E4();
  v6 = v98;
  v103 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer;
  if (*(v98 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer))
  {
    v54 = *(v98 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer);

    v7 = v96;
    sub_224DAC628();

    v55 = 0;
  }

  else
  {
    v55 = 1;
    v7 = v96;
  }

  v1 = v102;
  v56 = v95;
  v57 = v99;
  v92(v7, v55, 1, v95);
  v58 = *(v94 + 48);
  v59 = v97;
  sub_224A3796C(v1, v97, &qword_27D6F3948, &qword_224DB5C10);
  v60 = v59;
  sub_224A3796C(v7, v59 + v58, &qword_27D6F3948, &qword_224DB5C10);
  v61 = *(v57 + 48);
  if (v61(v60, 1, v56) == 1)
  {
    if (v61(v60 + v58, 1, v56) == 1)
    {
      sub_224A3311C(v60, &qword_27D6F3948, &qword_224DB5C10);
LABEL_41:
      sub_224A3311C(v1, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
      return;
    }

    goto LABEL_27;
  }

  v62 = v89;
  sub_224A3796C(v60, v89, &qword_27D6F3948, &qword_224DB5C10);
  if (v61(v60 + v58, 1, v56) == 1)
  {
    (*(v99 + 8))(v62, v56);
LABEL_27:
    sub_224A3311C(v60, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_28;
  }

  v77 = v99;
  v78 = v87;
  (*(v99 + 32))(v87, v60 + v58, v56);
  sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
  v79 = v60;
  v80 = sub_224DAEDD8();
  v81 = *(v77 + 8);
  v81(v78, v56);
  v81(v62, v56);
  v6 = v98;
  v1 = v102;
  sub_224A3311C(v79, &qword_27D6F3948, &qword_224DB5C10);
  if (v80)
  {
    goto LABEL_41;
  }

LABEL_28:
  v63 = v90;
  sub_224A3796C(v1, v90, &qword_27D6F3948, &qword_224DB5C10);
  v64 = v61(v63, 1, v56);
  sub_224A3311C(v63, &qword_27D6F3948, &qword_224DB5C10);
  v65 = v61(v7, 1, v56);
  if (v64 != 1)
  {
    if (v65 == 1)
    {
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v72 = sub_224DAB258();
      __swift_project_value_buffer(v72, qword_281364D60);
      v73 = sub_224DAB228();
      v74 = sub_224DAF278();
      if (!os_log_type_enabled(v73, v74))
      {
        goto LABEL_47;
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "[service] scheduling timeout";
    }

    else
    {
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v82 = sub_224DAB258();
      __swift_project_value_buffer(v82, qword_281364D60);
      v73 = sub_224DAB228();
      v74 = sub_224DAF278();
      if (!os_log_type_enabled(v73, v74))
      {
        goto LABEL_47;
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "[service] rescheduling timeout";
    }

    _os_log_impl(&dword_224A2F000, v73, v74, v76, v75, 2u);
    MEMORY[0x22AA5EED0](v75, -1, -1);
LABEL_47:

    if (*(v6 + v103))
    {
      v83 = *(v6 + v103);

      sub_224DAC5F8();
    }

    v84 = v88;
    sub_224A3796C(v1, v88, &qword_27D6F3948, &qword_224DB5C10);
    if (v61(v84, 1, v56) != 1)
    {
      sub_224DAC648();
      sub_224DAC618();
      v85 = sub_224DAC608();
      v86 = *(v6 + v103);
      *(v6 + v103) = v85;

      swift_allocObject();
      swift_weakInit();

      sub_224DAC638();

      sub_224A3311C(v1, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v65 == 1)
  {
    goto LABEL_41;
  }

  if (qword_281351430 != -1)
  {
    goto LABEL_54;
  }

LABEL_31:
  v66 = sub_224DAB258();
  __swift_project_value_buffer(v66, qword_281364D60);
  v67 = sub_224DAB228();
  v68 = sub_224DAF278();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_224A2F000, v67, v68, "[service] cancelling timeout", v69, 2u);
    MEMORY[0x22AA5EED0](v69, -1, -1);
  }

  if (!*(v6 + v103))
  {
LABEL_56:
    __break(1u);
    return;
  }

  v70 = *(v6 + v103);

  sub_224DAC5F8();

  sub_224A3311C(v1, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
  v71 = *(v6 + v103);
  *(v6 + v103) = 0;
LABEL_51:
}

void sub_224A85004(void *a1, void *a2)
{
  v5 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  v6 = [a2 unsignedIntegerValue];
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364EC8);
  v8 = v2;
  v9 = a1;
  v10 = sub_224DAB228();
  v11 = sub_224DAF278();

  v25 = v6;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v12 = 136446722;
    *(v12 + 4) = sub_224A33F74(*&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v26);
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v9;
    *(v12 + 22) = 2082;
    v15 = v9;
    v16 = NSStringFromWRReloadReason();
    v17 = sub_224DAEE18();
    v19 = v18;

    v20 = sub_224A33F74(v17, v19, v26);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s] Received message to reload %{public}@ for reason: %{public}s", v12, 0x20u);
    sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  v21 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v21 + 16));
  v22 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v23 = *&v8[v22];

  v24 = sub_224A71D20(v9, v23);

  if (v24)
  {
    sub_224A852B0(v25);
  }

  os_unfair_lock_unlock(*(v21 + 16));
}

void sub_224A852B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364EB0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();

  v12 = os_log_type_enabled(v10, v11);
  v39 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v38 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v5;
    v43[0] = v36;
    *v14 = 138543618;
    v16 = *(v2 + 24);
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2082;
    v17 = v16;
    v18 = NSStringFromWRReloadReason();
    v19 = sub_224DAEE18();
    v21 = v20;

    v22 = sub_224A33F74(v19, v21, v43);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}@] Reload widget for reason: %{public}s", v14, 0x16u);
    sub_224A3311C(v15, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    v23 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v5 = v37;
    MEMORY[0x22AA5EED0](v23, -1, -1);
    v24 = v14;
    v4 = v38;
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  sub_224A816F0(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AE0, &qword_224DB9A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B08, &qword_224DB9AC0);
  if (swift_dynamicCast())
  {
    sub_224A36F98(v40, v43);
    v25 = v44;
    v26 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v27 = *(v2 + 40);
    v28 = *(v2 + 32);
    v29 = v27;
    sub_224DAC238();
    (*(v26 + 24))(v8, v39, v25, v26);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_224A3311C(v40, &qword_27D6F4B10, &qword_224DB9AC8);

    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      v34 = *(v2 + 24);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&dword_224A2F000, v30, v31, "[%{public}@] Reload widget ignored because service doesn't support reloading.", v32, 0xCu);
      sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }
  }
}

uint64_t sub_224A8571C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v22[0] = sub_224DACB08();
  v3 = *(v22[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22[0]);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACB98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v22 - v18;
  sub_224A859B0(a1, (v22 - v18));
  if (a1 > 3)
  {
    v20 = MEMORY[0x277CF9B48];
  }

  else
  {
    v20 = qword_27853F208[a1];
  }

  (*(v8 + 104))(v11, *MEMORY[0x277CF9B50], v7);
  (*(v3 + 104))(v6, *v20, v22[0]);
  (*(v13 + 16))(v17, v19, v12);
  sub_224DACC48();
  sub_224DACC38();
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_224A859B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = *MEMORY[0x277CF9BE8];
      goto LABEL_16;
    }

    if (a1 == 1)
    {
      v4 = swift_allocObject();
      v5 = 0x8000000224DD0530;
      v6 = 0xD000000000000016;
LABEL_13:
      *(v4 + 16) = v6;
      *(v4 + 24) = v5;
      goto LABEL_14;
    }

LABEL_12:
    v4 = swift_allocObject();
    v5 = 0x8000000224DD0510;
    v6 = 0xD00000000000001ALL;
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v4 = swift_allocObject();
    strcpy((v4 + 16), "metricsChanged");
    *(v4 + 31) = -18;
LABEL_14:
    *a2 = v4;
    v3 = MEMORY[0x277CF9B70];
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    v3 = MEMORY[0x277CF9BB0];
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v3 = MEMORY[0x277CF9B88];
LABEL_15:
  v7 = *v3;
LABEL_16:
  v8 = sub_224DACB98();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t sub_224A85B1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A85B7C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_224A85C9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  v34 = a2;
  v13 = sub_224DAED88();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0);
      v21 = sub_224DAEDD8();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224AE2B44(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224A85FA4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, char *))
{
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[2] = v6 + 32;
  v27[3] = v6 + 16;
  v27[1] = v6 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v6 + 16))(v16, *(v29 + 48) + *(v6 + 72) * (v26 | (v25 << 6)), v5);
      (*(v6 + 32))(v10, v16, v5);
      v28(v13, v10);
      result = (*(v6 + 8))(v13, v5);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A861C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32 = v3;
    v44 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v8, 0);
    v43 = v44;
    v10 = a1 + 56;
    v11 = -1 << *(a1 + 32);
    result = sub_224DAF798();
    v12 = result;
    v13 = 0;
    v37 = v5 + 8;
    v38 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v39;
      v17 = v40;
      (*(v5 + 16))(v39, *(a1 + 48) + *(v5 + 72) * v12, v40);
      v18 = sub_224DA9FE8();
      v42 = v19;
      result = (*(v5 + 8))(v16, v17);
      v20 = v43;
      v44 = v43;
      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_224A3DFD8((v21 > 1), v22 + 1, 1);
        v20 = v44;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      v24 = v42;
      *(v23 + 32) = v18;
      *(v23 + 40) = v24;
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v25 = *(v36 + 8 * v15);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v20;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v14 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_224A3E204(v12, v41, 0);
            v14 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v12, v41, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v34)
      {
        return v43;
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
  }

  return result;
}

uint64_t sub_224A864D0(uint64_t result)
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
  v7 = *v1;
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

  result = sub_224A865C4(result, v11, 1, v3);
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

char *sub_224A865C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_224A866D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_224A867F4;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_224A37E38;
  v9[3] = &block_descriptor_134;
  v7 = _Block_copy(v9);

  [v5 updateConfiguration_];
  _Block_release(v7);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_224A867F8(void *a1, uint64_t *a2)
{
  v3 = *a2;

  sub_224A869EC(v4);

  sub_224A3B79C(0, &qword_2813509C0, 0x277D46FA0);
  v5 = sub_224DAEFF8();

  [a1 setPredicates_];
}

char *sub_224A8689C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_224DAF838();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_224A3B7E4();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void *sub_224A8695C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
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

uint64_t *sub_224A86A34(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_224DAF7E8();
  sub_224A3B79C(0, a5, a6);
  sub_224A5D644(a7, a5, a6);
  result = sub_224DAF1F8();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_224DAF878())
      {
        goto LABEL_30;
      }

      sub_224A3B79C(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_224A86C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224A86CAC()
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v1 = *(*(v49 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v49);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v55 = &v45 - v6;
  MEMORY[0x28223BE20](v5);
  v54 = &v45 - v7;
  v8 = *(v0 + 40);
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_224A870EC(MEMORY[0x277D84F90]);
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v46 = v14;
  v47 = v8 + 64;
  v53 = v4;
  v48 = v8;
  while (v13)
  {
LABEL_12:
    v20 = __clz(__rbit64(v13)) | (v15 << 6);
    v21 = *(v8 + 48);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v23 = *(v22 - 8);
    v50 = v23[9];
    v24 = v54;
    v51 = v23[2];
    v52 = v22;
    v51(v54, v21 + v50 * v20);
    v25 = v49;
    *(v24 + *(v49 + 48)) = *(*(v8 + 56) + 8 * v20);
    v26 = v55;
    sub_224A3796C(v24, v55, &qword_27D6F34A0, &unk_224DB3A20);
    v27 = *(v26 + *(v25 + 48));

    v28 = v53;
    sub_224A3796C(v24, v53, &qword_27D6F34A0, &unk_224DB3A20);
    v29 = *(v28 + *(v25 + 48));
    v30 = *(v29 + *(*v29 + 104));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v9;
    v33 = sub_224A683FC(v26);
    v34 = v9[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_27;
    }

    v37 = v32;
    if (v9[3] >= v36)
    {
      v40 = v52;
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v56;
        if (v32)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_224B25EF4();
        v9 = v56;
        if (v37)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_224A872E0(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_224A683FC(v55);
      v40 = v52;
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_29;
      }

      v33 = v38;
      v9 = v56;
      if (v37)
      {
LABEL_5:
        v16 = v9[7];
        v17 = *(v16 + 8 * v33);
        *(v16 + 8 * v33) = v30;

        sub_224A3311C(v54, &qword_27D6F34A0, &unk_224DB3A20);
        goto LABEL_6;
      }
    }

    v9[(v33 >> 6) + 8] |= 1 << v33;
    (v51)(v9[6] + v33 * v50, v55, v40);
    *(v9[7] + 8 * v33) = v30;
    sub_224A3311C(v54, &qword_27D6F34A0, &unk_224DB3A20);
    v41 = v9[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_28;
    }

    v9[2] = v43;
LABEL_6:
    v13 &= v13 - 1;
    v18 = v23[1];
    v18(v55, v40);
    v18(v53, v40);
    v10 = v47;
    v8 = v48;
    v14 = v46;
  }

  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v19);
    ++v15;
    if (v13)
    {
      v15 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

unint64_t sub_224A870EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FC0, &qword_224DC3B68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B0, &unk_224DC3B70);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F6FC0, &qword_224DC3B68);
      result = sub_224A683FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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

uint64_t sub_224A872E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B0, &unk_224DC3B70);
  v43 = a2;
  result = sub_224DAFB98();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
      result = sub_224DAED88();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_224A876D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_224A3A40C(v7, v8);
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

uint64_t sub_224A877D0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_224DAFB98();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_224DAFE68();
      sub_224DAEE78();
      result = sub_224DAFEA8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_224A87A80()
{
  result = qword_281350A30;
  if (!qword_281350A30)
  {
    sub_224A3B79C(255, &qword_281350A40, 0x277CFA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350A30);
  }

  return result;
}

uint64_t sub_224A87AE8(uint64_t *a1, uint64_t a2)
{
  v78 = a1;
  v79 = sub_224DACC88();
  v75 = *(v79 - 8);
  v3 = *(v75 + 64);
  v4 = MEMORY[0x28223BE20](v79);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - v6;
  v7 = sub_224DAB258();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v71 - v13);
  v15 = sub_224DACB98();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  sub_224DACC68();
  v23 = v16[13];
  v23(v20, *MEMORY[0x277CF9BF0], v15);
  v24 = sub_224DACB88();
  v25 = v16[1];
  v25(v20, v15);
  v76 = v25;
  v25(v22, v15);
  if (v24 & 1) != 0 || (sub_224DACC68(), v23(v20, *MEMORY[0x277CF9B60], v15), v26 = sub_224DACB88(), v27 = v20, v28 = v76, v76(v27, v15), v28(v22, v15), (v26))
  {
    v29 = v80;
    (*(v80 + 16))(v14, &v77[OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger], v81);
    v31 = v74;
    v30 = v75;
    v32 = v79;
    (*(v75 + 16))(v74, a2, v79);
    v33 = v78;
    v78 = v14;
    v34 = sub_224DAB228();
    v35 = sub_224DAF2A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v82 = v77;
      *v36 = 138543618;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2082;
      v38 = v33;
      LODWORD(v73) = v35;
      sub_224DACC68();
      sub_224A79F60(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v39 = sub_224DAFD28();
      v41 = v40;
      v76(v22, v15);
      (*(v30 + 8))(v31, v79);
      v42 = sub_224A33F74(v39, v41, &v82);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_224A2F000, v34, v73, "%{public}@ Checking cache because config reason is %{public}s", v36, 0x16u);
      sub_224A3311C(v37, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v37, -1, -1);
      v43 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);

      (*(v80 + 8))(v78, v81);
    }

    else
    {

      (*(v30 + 8))(v31, v32);
      (*(v29 + 8))(v78, v81);
    }

    return 1;
  }

  v44 = v78;
  v45 = [v78 isRemote];
  v46 = *(v80 + 16);
  if (v45)
  {
    v47 = v71;
    v48 = v81;
    v46(v71, &v77[OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger], v81);
    v49 = v44;
    v50 = sub_224DAB228();
    v51 = sub_224DAF2A8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_224A2F000, v50, v51, "%{public}@ Checking cache because extension is remote", v52, 0xCu);
      sub_224A3311C(v53, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v53, -1, -1);
      MEMORY[0x22AA5EED0](v52, -1, -1);
    }

    (*(v80 + 8))(v47, v48);
    return 1;
  }

  v56 = v73;
  v46(v73, &v77[OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger], v81);
  v57 = v75;
  v58 = v72;
  v59 = v79;
  (*(v75 + 16))(v72, a2, v79);
  v60 = v44;
  v61 = sub_224DAB228();
  v62 = sub_224DAF2A8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = v78;
    *v63 = 138543618;
    *(v63 + 4) = v60;
    *v64 = v60;
    *(v63 + 12) = 2082;
    v65 = v60;
    LODWORD(v77) = v62;
    sub_224DACC68();
    sub_224A79F60(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v66 = sub_224DAFD28();
    v68 = v67;
    v76(v22, v15);
    (*(v57 + 8))(v58, v79);
    v69 = sub_224A33F74(v66, v68, &v82);

    *(v63 + 14) = v69;
    _os_log_impl(&dword_224A2F000, v61, v77, "%{public}@ Not checking cache (%{public}s)", v63, 0x16u);
    sub_224A3311C(v64, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v64, -1, -1);
    v70 = v78;
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x22AA5EED0](v70, -1, -1);
    MEMORY[0x22AA5EED0](v63, -1, -1);

    (*(v80 + 8))(v73, v81);
  }

  else
  {

    (*(v57 + 8))(v58, v59);
    (*(v80 + 8))(v56, v81);
  }

  return 0;
}

uint64_t sub_224A883DC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224A8850C(v4, a1, a2 & 1, &v16);
  os_unfair_lock_unlock(*(v8 + 16));
  v9 = v16;
  if (v18)
  {
    v10 = OBJC_IVAR____TtC10ChronoCore15LocationService__visibilityReloadPublisher;
  }

  else
  {
    if (!v17)
    {
      goto LABEL_6;
    }

    v10 = OBJC_IVAR____TtC10ChronoCore15LocationService__significantLocationChangedPublisher;
  }

  v11 = *(v4 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_224DB2780;
  *(v12 + 32) = a1;
  v16 = v12;
  v13 = a1;
  sub_224DAB348();

LABEL_6:
  result = 0;
  if (v9)
  {
    result = sub_224DAC198();
    v15 = MEMORY[0x277CF9950];
  }

  else
  {
    v15 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v9;
  a3[3] = result;
  a3[4] = v15;
  return result;
}

uint64_t sub_224A8850C@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v136 = &v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v120 - v14;
  v16 = sub_224DAC378();
  v134 = *(v16 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v20 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v135 = &v120 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v120 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v29);
  v137 = &v120 - v31;
  result = MEMORY[0x28223BE20](v30);
  v140 = a1;
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    return result;
  }

  v126 = v28;
  v131 = v36;
  v121 = v35;
  v125 = &v120 - v33;
  v122 = v34;
  v124 = v15;
  v129 = a4;
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v37 = sub_224DAB258();
  __swift_project_value_buffer(v37, qword_281364D60);
  v38 = a2;
  v39 = sub_224DAB228();
  v40 = sub_224DAF278();

  v41 = os_log_type_enabled(v39, v40);
  v133 = v12;
  v130 = v11;
  v127 = v16;
  v120 = v19;
  v128 = a3;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v139 = v44;
    *v42 = 138543618;
    *(v42 + 4) = v38;
    *v43 = v38;
    *(v42 + 12) = 2082;
    v45 = (a3 & 1) == 0;
    if (a3)
    {
      v46 = 0x7465736572;
    }

    else
    {
      v46 = 1701736302;
    }

    if (v45)
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = v38;
    v49 = sub_224A33F74(v46, v47, &v139);

    *(v42 + 14) = v49;
    _os_log_impl(&dword_224A2F000, v39, v40, "[ext:%{public}@] new assertion marking visible with grace policy %{public}s", v42, 0x16u);
    sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
    v50 = v43;
    v11 = v130;
    MEMORY[0x22AA5EED0](v50, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  v51 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  v52 = v140;
  swift_beginAccess();
  v53 = sub_224A71E2C(v38, *(v52 + v51), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  if (v53)
  {
    swift_endAccess();
    v54 = v53;
    goto LABEL_25;
  }

  swift_endAccess();
  v55 = v125;
  (*(v134 + 56))(v125, 1, 1, v127);
  v56 = type metadata accessor for ExtensionInfo(0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = v38;
  v60 = v140;

  v54 = sub_224D2EC44(v59, v60, v55);

  v61 = *(v54 + 16);
  swift_beginAccess();
  v62 = *(v60 + v51);
  if ((v62 & 0xC000000000000001) == 0)
  {
    v66 = *(v60 + v51);
    swift_retain_n();
    v67 = v61;
    goto LABEL_22;
  }

  if (v62 < 0)
  {
    v63 = *(v60 + v51);
  }

  else
  {
    v63 = v62 & 0xFFFFFFFFFFFFFF8;
  }

  swift_retain_n();
  v64 = v61;
  result = sub_224DAF838();
  if (!__OFADD__(result, 1))
  {
    v65 = sub_224D2CDF0(v63, result + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
    *(v140 + v51) = v65;
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v140;
    v138 = *(v140 + v51);
    sub_224B237E0(v54, v61, isUniquelyReferenced_nonNull_native);
    *(v69 + v51) = v138;

    swift_endAccess();

    v70 = sub_224DAB228();
    v71 = sub_224DAF2A8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v123 = v38;
      v74 = v11;
      v75 = v73;
      *v72 = 138543362;
      v76 = *(v54 + 16);
      *(v72 + 4) = v76;
      *v73 = v76;
      v77 = v76;
      _os_log_impl(&dword_224A2F000, v70, v71, "[ext:%{public}@] started tracking", v72, 0xCu);
      sub_224A3311C(v75, &unk_27D6F69F0, &unk_224DB3900);
      v78 = v75;
      v11 = v74;
      v38 = v123;
      MEMORY[0x22AA5EED0](v78, -1, -1);
      MEMORY[0x22AA5EED0](v72, -1, -1);
    }

LABEL_25:
    v79 = v133;

    v80 = v131;
    sub_224A71B08(v131);
    *(v54 + 32) = 0;
    LODWORD(v81) = v128 & 1;
    sub_224A8935C(v54, v140, v38, v128 & 1);
    v82 = *(v54 + 32);
    *(v54 + 32) = 2;
    if ((v82 & 1) == 0)
    {

      sub_224A71DBC(v80, v137);
      goto LABEL_34;
    }

    v128 = v81;
    v123 = v38;
    sub_224A6FDF8();
    v81 = v126;
    sub_224A71B08(v126);
    sub_224A3796C(v81, v137, &qword_27D6F3948, &qword_224DB5C10);
    v83 = *(v132 + 48);
    v84 = v135;
    sub_224A3796C(v80, v135, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3796C(v81, v84 + v83, &qword_27D6F3948, &qword_224DB5C10);
    v85 = *(v134 + 48);
    v86 = v127;
    if (v85(v84, 1, v127) == 1)
    {

      sub_224A3311C(v81, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v80, &qword_27D6F3948, &qword_224DB5C10);
      v87 = v85(v135 + v83, 1, v86);
      v11 = v130;
      v79 = v133;
      LOBYTE(v81) = v128;
      if (v87 == 1)
      {
        sub_224A3311C(v135, &qword_27D6F3948, &qword_224DB5C10);
        v38 = v123;
        goto LABEL_34;
      }
    }

    else
    {
      v88 = v135;
      v81 = v121;
      sub_224A3796C(v135, v121, &qword_27D6F3948, &qword_224DB5C10);
      if (v85(v88 + v83, 1, v86) != 1)
      {
        v109 = v134;
        v110 = v135;
        v111 = v120;
        (*(v134 + 32))(v120, v135 + v83, v86);
        sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
        v112 = sub_224DAEDD8();

        v113 = *(v109 + 8);
        v113(v111, v86);
        sub_224A3311C(v126, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v131, &qword_27D6F3948, &qword_224DB5C10);
        v113(v81, v86);
        sub_224A3311C(v110, &qword_27D6F3948, &qword_224DB5C10);
        v11 = v130;
        v79 = v133;
        v38 = v123;
        LOBYTE(v81) = v128;
        if (v112)
        {
LABEL_34:
          v95 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          v96 = v38 + v95;
          v97 = v136;
          sub_224A3796C(v96, v136, &unk_27D6F5060, &qword_224DB5620);
          if ((*(v79 + 48))(v97, 1, v11) == 1)
          {
            sub_224A3311C(v136, &unk_27D6F5060, &qword_224DB5620);
          }

          else
          {
            v98 = v124;
            (*(v79 + 32))(v124, v136, v11);
            v99 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
            v100 = v140;
            swift_beginAccess();
            v101 = *(v100 + v99);
            if (*(v101 + 16) && (v102 = sub_224A89A08(v98), (v103 & 1) != 0))
            {
              v104 = *(*(v101 + 56) + 8 * v102);
              swift_endAccess();
              v105 = *&v104[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
              v106 = *(v105 + 16);
              v107 = v104;
              os_unfair_lock_lock(v106);
              v108 = v107[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status];
              if (v108 == 2)
              {
                os_unfair_lock_unlock(*(v105 + 16));
              }

              else
              {
                os_unfair_lock_unlock(*(v105 + 16));
                if (v108)
                {
                  v114 = sub_224D27494(0x697620796C77656ELL, 0xED0000656C626973);

                  (*(v133 + 8))(v124, v11);
LABEL_47:
                  v115 = sub_224A89A2C(0x697620796C77656ELL, 0xED0000656C626973);
                  sub_224DAC198();
                  v116 = swift_allocObject();
                  swift_weakInit();
                  v117 = swift_allocObject();
                  *(v117 + 16) = v116;
                  *(v117 + 24) = v54;
                  *(v117 + 32) = v81;

                  v118 = sub_224DAC1A8();
                  sub_224A3311C(v137, &qword_27D6F3948, &qword_224DB5C10);

                  v119 = v129;
                  *v129 = v118;
                  *(v119 + 8) = v114 & 1;
                  *(v119 + 9) = v115 & 1;
                  return result;
                }
              }

              (*(v133 + 8))(v124, v11);
            }

            else
            {
              swift_endAccess();
              (*(v79 + 8))(v98, v11);
            }
          }

          v114 = 0;
          goto LABEL_47;
        }

LABEL_33:
        v89 = *(v140 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
        v90 = *(v54 + 16);
        v91 = v125;
        sub_224A3796C(v137, v125, &qword_27D6F3948, &qword_224DB5C10);
        v92 = v122;
        sub_224A3796C(v91, v122, &qword_27D6F3948, &qword_224DB5C10);
        swift_beginAccess();

        v93 = v90;
        v94 = v92;
        v38 = v123;
        sub_224A83A8C(v94, v93);
        swift_endAccess();

        v79 = v133;
        sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A83EBC();
        LOBYTE(v81) = v128;
        sub_224A843F0();
        goto LABEL_34;
      }

      sub_224A3311C(v126, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v131, &qword_27D6F3948, &qword_224DB5C10);
      (*(v134 + 8))(v81, v86);
      v11 = v130;
    }

    sub_224A3311C(v135, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_224A8935C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(a1 + v7, v13, &unk_27D6F4700, &unk_224DB3A10);
  v8 = v13[3];
  sub_224A3311C(v13, &unk_27D6F4700, &unk_224DB3A10);
  if (!v8)
  {
    v9 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_224DAC6D8();
    if (v12)
    {
      sub_224A36F98(&v11, v13);
      sub_224A3317C(v13, &v11);
      sub_224A3796C(a1 + v7, v10, &unk_27D6F4700, &unk_224DB3A10);
      swift_beginAccess();
      sub_224C4D398(&v11, a1 + v7, &unk_27D6F4700, &unk_224DB3A10);
      swift_endAccess();
      sub_224D25314(v10);
      sub_224A3311C(v10, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3311C(&v11, &unk_27D6F4700, &unk_224DB3A10);
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      sub_224A3311C(&v11, &unk_27D6F4700, &unk_224DB3A10);
    }
  }

  sub_224A89504(a4 & 1);
}

void sub_224A89504(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  if (*(v1 + 32) == 2)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = *(v1 + 40);
  if (!v10 || (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_refreshVisibility) & 1) == 0)
  {
    *(v1 + 32) = 1;
  }

  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    goto LABEL_25;
  }

  *(v1 + 40) = v12;
  *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_refreshVisibility) = 1;
  if (a1)
  {
    if (!*(v1 + 48))
    {
      v13 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v1 + v13, &v35, &unk_27D6F4700, &unk_224DB3A10);
      if (!v36)
      {
        sub_224A3311C(&v35, &unk_27D6F4700, &unk_224DB3A10);
        if (qword_281351430 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_27;
      }

      sub_224A36F98(&v35, v37);
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      if (sub_224DAE278())
      {
        v14 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v1 + v14, v9, &qword_27D6F3948, &qword_224DB5C10);
        v15 = sub_224DAC378();
        v16 = *(v15 - 8);
        v17 = (*(v16 + 48))(v9, 1, v15);
        sub_224A3311C(v9, &qword_27D6F3948, &qword_224DB5C10);
        if (v17 != 1)
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v18 = sub_224DAB258();
          __swift_project_value_buffer(v18, qword_281364D60);

          v19 = sub_224DAB228();
          v20 = sub_224DAF2A8();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            *v21 = 138543362;
            v23 = *(v1 + 16);
            *(v21 + 4) = v23;
            *v22 = v23;
            v24 = v23;
            _os_log_impl(&dword_224A2F000, v19, v20, "[ext:%{public}@] resetting grace period", v21, 0xCu);
            sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v22, -1, -1);
            MEMORY[0x22AA5EED0](v21, -1, -1);
          }

          (*(v16 + 56))(v7, 1, 1, v15);
          swift_beginAccess();
          sub_224A838C0(v7, v1 + v14, &qword_27D6F3948, &qword_224DB5C10);
          swift_endAccess();
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    while (1)
    {
      v32 = *(v1 + 48);
      v11 = __CFADD__(v32, 1);
      v33 = v32 + 1;
      if (!v11)
      {
        break;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
LABEL_18:
      v25 = sub_224DAB258();
      __swift_project_value_buffer(v25, qword_281364D60);

      v26 = sub_224DAB228();
      v27 = sub_224DAF2A8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        v30 = *(v1 + 16);
        *(v28 + 4) = v30;
        *v29 = v30;
        v31 = v30;
        _os_log_impl(&dword_224A2F000, v26, v27, "[ext:%{public}@] not resetting grace period because wantsLocation is ambiguous", v28, 0xCu);
        sub_224A3311C(v29, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v29, -1, -1);
        MEMORY[0x22AA5EED0](v28, -1, -1);
      }
    }

    *(v1 + 48) = v33;
  }
}

uint64_t sub_224A89A48(uint64_t a1, unint64_t a2, uint64_t *a3, const char *a4, const char *a5)
{
  if (!*(v5 + 40))
  {
    return 0;
  }

  v6 = *a3;
  if (*(v5 + *a3) != 1)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v5 + v11, &v30, &unk_27D6F4700, &unk_224DB3A10);
  if (!v31)
  {
    sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364D60);

    v22 = v5;
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v25 = 138543618;
      v28 = *(v22 + 16);
      *(v25 + 4) = v28;
      *v26 = v28;
      *(v25 + 12) = 2082;
      v29 = v28;
      *(v25 + 14) = sub_224A33F74(a1, a2, v32);
      _os_log_impl(&dword_224A2F000, v23, v24, a5, v25, 0x16u);
      sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    return 0;
  }

  sub_224A36F98(&v30, v32);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  if ((sub_224DAE278() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    return 0;
  }

  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281364D60);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v30 = v17;
    *v15 = 138543618;
    v18 = *(v5 + 16);
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2082;
    v19 = v18;
    *(v15 + 14) = sub_224A33F74(a1, a2, &v30);
    _os_log_impl(&dword_224A2F000, v13, v14, a4, v15, 0x16u);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  *(v5 + v6) = 0;
  __swift_destroy_boxed_opaque_existential_1(v32);
  return 1;
}

void sub_224A89E40(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v5 + 240);
  os_unfair_lock_lock(*(v6 + 16));
  sub_224A89EC4(v5, a1, a2);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_224A89EC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_224A3E7EC(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v12 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    sub_224A8A0B0(v10 + 1, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v19;
    swift_endAccess();
    v14 = sub_224DAC198();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a2;
    v17 = a2;
    result = sub_224DAC1A8();
    v18 = MEMORY[0x277CF9950];
    a3[3] = v14;
    a3[4] = v18;
    *a3 = result;
  }

  return result;
}

uint64_t sub_224A8A038()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A8A070()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_224A8A0B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_224A3E7EC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224B180DC(v13, a3 & 1);
      v17 = *v4;
      result = sub_224A3E7EC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_224DAF538();
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_224B2993C();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

uint64_t sub_224A8A208(uint64_t a1)
{
  v2 = sub_224DABE18();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = sub_224DACB98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_224DABDB8();
  v17 = &v16[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v18 = *(v17 + 1);

  if (!v18)
  {
    return 1;
  }

  sub_224DACC68();
  (*(v9 + 32))(v13, v15, v8);
  v19 = (*(v9 + 88))(v13, v8);
  v20 = v19 == *MEMORY[0x277CF9BF0] || v19 == *MEMORY[0x277CF9B68];
  if (v20 || v19 == *MEMORY[0x277CF9B60])
  {
    return 1;
  }

  (*(v9 + 8))(v13, v8);
  if (qword_27D6F2C80 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_27D6F3478);
  v24 = v42;
  v25 = *(v42 + 16);
  v25(v7, a1, v2);
  v26 = v41;
  v25(v41, a1, v2);
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v29 = 138543618;
    v31 = sub_224DABDB8();
    v32 = *(v24 + 8);
    v32(v7, v2);
    *(v29 + 4) = v31;
    *v30 = v31;
    *(v29 + 12) = 2082;
    v33 = sub_224DABDD8();
    v35 = v34;
    v32(v26, v2);
    v36 = sub_224A33F74(v33, v35, &v43);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_224A2F000, v27, v28, "Forbidding reload of remote widget %{public}@:%{public}s.", v29, 0x16u);
    sub_224AD68CC(v30);
    MEMORY[0x22AA5EED0](v30, -1, -1);
    v37 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x22AA5EED0](v37, -1, -1);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  else
  {

    v38 = *(v24 + 8);
    v38(v26, v2);
    v38(v7, v2);
  }

  return 0;
}

uint64_t sub_224A8A6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  v5 = v3;
  v8 = sub_224DACB98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277CF9B90])
  {
    (*(v9 + 96))(v12, v8);
    v13 = *(*v12 + 16);
    v14 = v13;

    v15 = *(v5 + qword_2813548C0);
    os_unfair_lock_lock(*(v15 + 16));
    v16 = a3(a1, a2, v13);
    os_unfair_lock_unlock(*(v15 + 16));
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t sub_224A8A840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_224A8A868()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_224DA9908() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_224A8A8E8(v4, v5);
}

void sub_224A8A8E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_224A8A944(a2);
  }
}

void sub_224A8A944(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_assert_not_owner(*(v5 + 16));
  os_unfair_lock_lock(*(v5 + 16));
  sub_224A8AC8C(v2, a1, &v26);
  os_unfair_lock_unlock(*(v5 + 16));
  v6 = v26;
  if (v26)
  {
    v7 = qword_2813516B8;
    v8 = v26;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281365108);
    v25 = v8;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v12 = 136446466;
      v15 = *&v25[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      v16 = *&v25[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

      v17 = sub_224A33F74(v15, v16, &v26);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v25;
      *v13 = v6;
      v18 = v25;
      _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s]: cancelling %{public}@", v12, 0x16u);
      sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    v19 = *&v25[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    if (v19)
    {
      v20 = *&v25[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
      sub_224A8B22C();
      v21 = swift_allocError();
      *v22 = 0;

      v19(0, 1, v21);

      sub_224A8B340(v19);
    }

    v23 = (v2 + *((*v4 & *v2) + 0xA8));
    v24 = *__swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_224A8B344(&v25[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier]);
  }
}

uint64_t sub_224A8AC8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x277D85000];
  v7 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));

  v8 = sub_224A4B0F4(a2);

  if (v8)
  {
    sub_224A57680(v8);
    result = sub_224B3EEC4();
  }

  else
  {
    v10 = *((*v6 & *a1) + 0x90);
    swift_beginAccess();
    v8 = sub_224A49CC8(a2, sub_224A438E8, MEMORY[0x277CC95F0], sub_224A4ADF4, sub_224B263CC);
    result = swift_endAccess();
    if (v8)
    {
      result = sub_224A57680(v8);
    }
  }

  *a3 = v8;
  return result;
}

id CHDCreateATXInfoTimelineEntries(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v3)
  {
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        if ([v6 hasRelevance])
        {
          v30 = 0;
          v31 = &v30;
          v32 = 0x2050000000;
          v7 = getATXInfoTimelineEntryRelevanceClass_softClass;
          v33 = getATXInfoTimelineEntryRelevanceClass_softClass;
          if (!getATXInfoTimelineEntryRelevanceClass_softClass)
          {
            v25 = MEMORY[0x277D85DD0];
            v26 = 3221225472;
            v27 = __getATXInfoTimelineEntryRelevanceClass_block_invoke;
            v28 = &unk_27853F118;
            v29 = &v30;
            __getATXInfoTimelineEntryRelevanceClass_block_invoke(&v25);
            v7 = v31[3];
          }

          v8 = v7;
          _Block_object_dispose(&v30, 8);
          [v6 score];
          v10 = v9;
          [v6 duration];
          v12 = [v7 relevanceWithScore:v10 duration:v11];
        }

        else
        {
          v12 = 0;
        }

        v30 = 0;
        v31 = &v30;
        v32 = 0x2050000000;
        v13 = getATXInfoTimelineEntryClass_softClass;
        v33 = getATXInfoTimelineEntryClass_softClass;
        if (!getATXInfoTimelineEntryClass_softClass)
        {
          v25 = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __getATXInfoTimelineEntryClass_block_invoke;
          v28 = &unk_27853F118;
          v29 = &v30;
          __getATXInfoTimelineEntryClass_block_invoke(&v25);
          v13 = v31[3];
        }

        v14 = v13;
        _Block_object_dispose(&v30, 8);
        v15 = [v13 alloc];
        v16 = [v6 date];
        v17 = [v15 initWithDate:v16 relevance:v12];

        if (v17)
        {
          [v2 addObject:v17];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v3);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_224A8B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_224A8B0FC()
{
  result = qword_28135B210;
  if (!qword_28135B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B210);
  }

  return result;
}

unint64_t sub_224A8B150()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAF938();

  MEMORY[0x22AA5D210](v1, v2);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0xD000000000000026;
}

unint64_t sub_224A8B22C()
{
  result = qword_281351B30[0];
  if (!qword_281351B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281351B30);
  }

  return result;
}

void sub_224A8B290(int a1, int a2, id a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = a3;
    a4(a3, 1);
  }

  else
  {
    swift_beginAccess();
    v10 = *(a6 + 16);

    a4(v11, 0);
  }
}

void sub_224A8B344(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock);
  os_unfair_lock_lock(*(v9 + 16));
  swift_beginAccess();
  v10 = sub_224A55124(a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v9 + 16));
  if (v10)
  {
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281364F88);
    (*(v5 + 16))(v8, a1, v4);
    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v35 = v14;
      v37 = swift_slowAlloc();
      v39 = v37;
      *v14 = 136446210;
      v36 = v12;
      v38 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v15 = sub_224A3D19C(8);
      v17 = v16;
      v19 = v18;
      HIDWORD(v34) = v13;
      v20 = v10;
      v22 = v21;

      v23 = MEMORY[0x22AA5D1C0](v15, v17, v19, v22);
      v25 = v24;
      v10 = v20;

      (*(v5 + 8))(v8, v4);
      v26 = sub_224A33F74(v23, v25, &v39);

      v27 = v35;
      v28 = v36;
      *(v35 + 1) = v26;
      v29 = v27;
      _os_log_impl(&dword_224A2F000, v28, BYTE4(v34), "[%{public}s]: activity cancelled", v27, 0xCu);
      v30 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v31 = (v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider);
    v32 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24);
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v33 + 40))(v10, v32, v33);
  }
}