uint64_t sub_25B11B1C8(uint64_t result)
{
  if (result)
  {
    sub_25B161274();

    return sub_25B161274();
  }

  return result;
}

uint64_t sub_25B11B208(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25B11B268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B11B2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B11B340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t HMServiceGroup.widgetSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B1616A4();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v160 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v160 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v160 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v189 = &v160 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v194 = &v160 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v160 - v21;
  v167 = v23;
  v24 = (v23 + 56);
  v25 = *(v23 + 56);
  v166 = a1;
  v25(a1, 1, 1, v3);
  v190 = v1;
  v26 = [v1 services];
  sub_25B11C668();
  v27 = sub_25B161C64();

  v29 = v27;
  if (v27 >> 62)
  {
LABEL_48:
    v159 = v29;
    v30 = sub_25B161E54();
    v29 = v159;
    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_3:
      v162 = v16;
      v163 = v13;
      v160 = v10;
      v161 = v7;
      v164 = v25;
      v165 = v24;
      v10 = 0;
      v186 = v29 & 0xC000000000000001;
      v184 = *MEMORY[0x277D15810];
      v169 = v29 & 0xFFFFFFFFFFFFFF8;
      v181 = *MEMORY[0x277D15760];
      v185 = "accessory entity";
      v188 = (v167 + 16);
      v183 = (v167 + 88);
      v180 = *MEMORY[0x277D158D0];
      v179 = *MEMORY[0x277D156D8];
      v178 = *MEMORY[0x277D15870];
      v177 = *MEMORY[0x277D15888];
      v16 = (v167 + 8);
      v171 = (v167 + 104);
      v192 = *MEMORY[0x277D15640];
      v175 = *MEMORY[0x277D15718];
      v174 = *MEMORY[0x277D15898];
      v172 = *MEMORY[0x277D15720];
      *&v28 = 136315906;
      v173 = v28;
      *&v28 = 136315650;
      v168 = v28;
      v187 = v3;
      v191 = v22;
      v182 = v29;
      v176 = v30;
      v193 = (v167 + 8);
      while (1)
      {
        if (v186)
        {
          v31 = MEMORY[0x25F862410](v10);
        }

        else
        {
          if (v10 >= *(v169 + 16))
          {
            goto LABEL_47;
          }

          v31 = *(v29 + 8 * v10 + 32);
        }

        v32 = v31;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (qword_27FA39AF0 != -1)
        {
          swift_once();
        }

        v33 = sub_25B161A14();
        v34 = __swift_project_value_buffer(v33, qword_27FA3A058);
        v35 = v32;
        v7 = v190;
        v196 = v34;
        v36 = sub_25B1619F4();
        v37 = sub_25B161D64();

        v38 = os_log_type_enabled(v36, v37);
        v195 = (v10 + 1);
        if (v38)
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v199[0] = v40;
          *v39 = v173;
          *(v39 + 4) = sub_25B108480(0xD00000000000001CLL, v185 | 0x8000000000000000, v199);
          *(v39 + 12) = 2080;
          v41 = [v35 name];
          v42 = sub_25B161B34();
          v44 = v43;

          v45 = sub_25B108480(v42, v44, v199);

          *(v39 + 14) = v45;
          *(v39 + 22) = 2080;
          v46 = [v35 serviceType];
          v47 = sub_25B161B34();
          v49 = v48;

          v50 = sub_25B108480(v47, v49, v199);

          *(v39 + 24) = v50;
          *(v39 + 32) = 2080;
          v51 = [v7 name];
          v52 = sub_25B161B34();
          v54 = v53;

          v55 = sub_25B108480(v52, v54, v199);
          v3 = v187;

          *(v39 + 34) = v55;
          _os_log_impl(&dword_25B105000, v36, v37, "%s: Checking service %s of type %s for accessory %s", v39, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v40, -1, -1);
          v56 = v39;
          v22 = v191;
          MEMORY[0x25F862BF0](v56, -1, -1);
        }

        v16 = v193;
        sub_25B161DD4();
        v24 = *v188;
        v57 = v194;
        (*v188)(v194, v22, v3);
        v58 = (*v183)(v57, v3);
        if (v58 == v184 || v58 == v181 || v58 == v180 || v58 == v179 || v58 == v178 || v58 == v177 || v58 == v192 || v58 == v175 || v58 == v174 || v58 == v172)
        {
          (*v171)(v189, v192, v3);
          sub_25B11DA20(&qword_27FA39E18);
          sub_25B161C14();
          sub_25B161C14();
          if (v199[0] == v197 && v199[1] == v198)
          {
            v78 = 1;
          }

          else
          {
            v78 = sub_25B161FA4();
          }

          v59 = *v16;
          (*v16)(v189, v3);

          if (v78)
          {
            v170 = v59;

            v94 = v162;
            v95 = v191;
            v24(v162, v191, v3);
            v96 = v163;
            v24(v163, v95, v3);
            v97 = v7;
            v98 = sub_25B1619F4();
            v99 = sub_25B161D64();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v199[0] = v101;
              *v100 = v173;
              *(v100 + 4) = sub_25B108480(0xD00000000000001CLL, v185 | 0x8000000000000000, v199);
              *(v100 + 12) = 2080;
              v102 = ServiceKind.debugDescription.getter();
              LODWORD(v196) = v99;
              v103 = v102;
              v105 = v104;
              v106 = v94;
              v107 = v170;
              v170(v106, v187);
              v108 = sub_25B108480(v103, v105, v199);

              *(v100 + 14) = v108;
              *(v100 + 22) = 2080;
              v109 = sub_25B161694();
              v111 = v110;
              v107(v96, v187);
              v112 = sub_25B108480(v109, v111, v199);

              *(v100 + 24) = v112;
              *(v100 + 32) = 2080;
              v113 = v191;
              v114 = [v97 name];
              v115 = sub_25B161B34();
              v117 = v116;

              v118 = sub_25B108480(v115, v117, v199);

              *(v100 + 34) = v118;
              _os_log_impl(&dword_25B105000, v98, v196, "%s: Found supported service kind %s(%s) for serviceGroup %s", v100, 0x2Au);
              swift_arrayDestroy();
              v119 = v101;
              v3 = v187;
              MEMORY[0x25F862BF0](v119, -1, -1);
              v120 = v100;
              v95 = v113;
              MEMORY[0x25F862BF0](v120, -1, -1);
            }

            else
            {

              v154 = v170;
              v170(v96, v3);
              v154(v94, v3);
            }

            v155 = v166;
            sub_25B11D9B8(v166);
            (*(v167 + 32))(v155, v95, v3);
            return (v164)(v155, 0, 1, v3);
          }

          v79 = HMService.primaryControlCharacteristic.getter();
          if (v79)
          {
            v121 = v7;
            v122 = v59;
            v123 = v79;

            v124 = v160;
            v125 = v191;
            v24(v160, v191, v3);
            v126 = v161;
            v24(v161, v125, v3);
            v127 = v35;
            v128 = v121;
            v129 = sub_25B1619F4();
            v130 = sub_25B161D64();

            if (os_log_type_enabled(v129, v130))
            {
              v131 = v124;
              v132 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v199[0] = v196;
              *v132 = 136316162;
              *(v132 + 4) = sub_25B108480(0xD00000000000001CLL, v185 | 0x8000000000000000, v199);
              *(v132 + 12) = 2080;
              LODWORD(v195) = v130;
              v133 = ServiceKind.debugDescription.getter();
              v194 = v127;
              v134 = v133;
              v136 = v135;
              v122(v131, v3);
              v137 = sub_25B108480(v134, v136, v199);

              *(v132 + 14) = v137;
              *(v132 + 22) = 2080;
              v138 = sub_25B161694();
              v140 = v139;
              v122(v126, v3);
              v141 = sub_25B108480(v138, v140, v199);

              *(v132 + 24) = v141;
              *(v132 + 32) = 2080;
              v142 = v194;
              v143 = [v194 name];
              v144 = sub_25B161B34();
              v146 = v145;

              v147 = sub_25B108480(v144, v146, v199);

              *(v132 + 34) = v147;
              *(v132 + 42) = 2080;
              v148 = [v128 name];
              v149 = sub_25B161B34();
              v151 = v150;

              v152 = sub_25B108480(v149, v151, v199);

              *(v132 + 44) = v152;
              _os_log_impl(&dword_25B105000, v129, v195, "%s: Found supported service kind %s(%s) having a primary control characteristic with service %s for serviceGroup %s", v132, 0x34u);
              v153 = v196;
              swift_arrayDestroy();
              MEMORY[0x25F862BF0](v153, -1, -1);
              MEMORY[0x25F862BF0](v132, -1, -1);
            }

            else
            {

              v122(v126, v3);
              v122(v124, v3);
            }

            v157 = v166;
            sub_25B11D9B8(v166);
            v158 = v164;
            (*(v167 + 32))(v157, v191, v3);
            return (v158)(v157, 0, 1, v3);
          }

          v13 = v35;
          v80 = v7;
          v81 = sub_25B1619F4();
          v25 = sub_25B161D64();

          if (os_log_type_enabled(v81, v25))
          {
            v7 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v199[0] = v82;
            *v7 = v168;
            *(v7 + 1) = sub_25B108480(0xD00000000000001CLL, v185 | 0x8000000000000000, v199);
            *(v7 + 6) = 2080;
            v83 = [v13 name];
            v170 = v59;
            v84 = v83;
            v85 = sub_25B161B34();
            v87 = v86;

            v88 = sub_25B108480(v85, v87, v199);
            v16 = v193;

            *(v7 + 14) = v88;
            *(v7 + 11) = 2080;
            v89 = [v80 name];
            v24 = sub_25B161B34();
            v91 = v90;

            v92 = sub_25B108480(v24, v91, v199);

            *(v7 + 3) = v92;
            _os_log_impl(&dword_25B105000, v81, v25, "%s: Did not find primary control characteristic for service %s for serviceGroup %s, continuing to next service", v7, 0x20u);
            swift_arrayDestroy();
            v93 = v82;
            v3 = v187;
            MEMORY[0x25F862BF0](v93, -1, -1);
            MEMORY[0x25F862BF0](v7, -1, -1);

            v22 = v191;
            v170(v191, v3);
            goto LABEL_6;
          }

          v22 = v191;
        }

        else
        {
          v59 = *v16;
          (*v16)(v194, v3);
          v13 = v35;
          v25 = v7;
          v60 = sub_25B1619F4();
          v7 = sub_25B161D64();

          if (os_log_type_enabled(v60, v7))
          {
            v61 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            v199[0] = v170;
            *v61 = v173;
            *(v61 + 4) = sub_25B108480(0xD00000000000001CLL, v185 | 0x8000000000000000, v199);
            *(v61 + 12) = 2080;
            v62 = [v13 serviceType];
            v196 = v59;
            v63 = v62;
            v64 = sub_25B161B34();
            v66 = v65;

            v67 = sub_25B108480(v64, v66, v199);

            *(v61 + 14) = v67;
            *(v61 + 22) = 2080;
            v68 = [v13 name];
            v69 = sub_25B161B34();
            v71 = v70;

            v72 = sub_25B108480(v69, v71, v199);
            v16 = v193;

            *(v61 + 24) = v72;
            *(v61 + 32) = 2080;
            v73 = [v25 name];
            v24 = sub_25B161B34();
            v25 = v74;

            v75 = sub_25B108480(v24, v25, v199);

            *(v61 + 34) = v75;
            _os_log_impl(&dword_25B105000, v60, v7, "%s: ServiceType %s for service %s for serviceGroup %s is not supported.", v61, 0x2Au);
            v76 = v170;
            swift_arrayDestroy();
            v22 = v191;
            MEMORY[0x25F862BF0](v76, -1, -1);
            v77 = v61;
            v3 = v187;
            MEMORY[0x25F862BF0](v77, -1, -1);

            v196(v22, v3);
            goto LABEL_6;
          }
        }

        v59(v22, v3);
LABEL_6:
        ++v10;
        v29 = v182;
        if (v195 == v176)
        {
        }
      }
    }
  }
}

unint64_t sub_25B11C668()
{
  result = qword_27FA39E58;
  if (!qword_27FA39E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA39E58);
  }

  return result;
}

uint64_t HMServiceGroup.controlSupportedServiceKind()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B1616A4();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v122 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v141 = &v122 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v151 = &v122 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v122 - v16;
  v127 = v18;
  v19 = v18 + 56;
  v20 = *(v18 + 56);
  (v20)(a1, 1, 1, v4);
  v152 = v2;
  v21 = [v2 services];
  sub_25B11C668();
  v22 = sub_25B161C64();

  if (v22 >> 62)
  {
LABEL_43:
    v24 = sub_25B161E54();
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_3:
      v124 = v8;
      v125 = v20;
      v126 = v19;
      v123 = a1;
      v19 = 0;
      v148 = v22 & 0xC000000000000001;
      v154 = *MEMORY[0x277D15640];
      v130 = v22 & 0xFFFFFFFFFFFFFF8;
      v139 = *MEMORY[0x277D15810];
      v147 = "widgetSupportedServiceKind()";
      v145 = (v127 + 104);
      v158 = (v127 + 8);
      v137 = *MEMORY[0x277D15760];
      v140 = (v127 + 16);
      v138 = (v127 + 88);
      v136 = *MEMORY[0x277D158D0];
      v135 = *MEMORY[0x277D156D8];
      v134 = *MEMORY[0x277D15870];
      v133 = *MEMORY[0x277D15888];
      v132 = *MEMORY[0x277D15718];
      v131 = *MEMORY[0x277D15898];
      v129 = *MEMORY[0x277D15720];
      *&v23 = 136315906;
      v142 = v23;
      *&v23 = 136315650;
      v128 = v23;
      v149 = v17;
      v150 = v4;
      v143 = v24;
      v144 = v11;
      v146 = v22;
      while (1)
      {
        if (v148)
        {
          v25 = MEMORY[0x25F862410](v19, v22);
        }

        else
        {
          if (v19 >= *(v130 + 16))
          {
            goto LABEL_42;
          }

          v25 = *(v22 + 8 * v19 + 32);
        }

        v26 = v25;
        v20 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (qword_27FA39B08 != -1)
        {
          swift_once();
        }

        v27 = sub_25B161A14();
        v28 = __swift_project_value_buffer(v27, qword_27FA3A0A0);
        v29 = v26;
        v30 = v152;
        v157 = v28;
        v31 = sub_25B1619F4();
        v8 = sub_25B161D64();

        v32 = os_log_type_enabled(v31, v8);
        v155 = v19 + 1;
        v156 = v19;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v159 = v20;
          *v33 = v142;
          *(v33 + 4) = sub_25B108480(0xD00000000000001DLL, v147 | 0x8000000000000000, &v159);
          *(v33 + 12) = 2080;
          v34 = [v29 name];
          v35 = sub_25B161B34();
          v37 = v36;

          v38 = sub_25B108480(v35, v37, &v159);

          *(v33 + 14) = v38;
          *(v33 + 22) = 2080;
          v39 = [v29 serviceType];
          v40 = sub_25B161B34();
          v42 = v41;

          v43 = sub_25B108480(v40, v42, &v159);

          *(v33 + 24) = v43;
          *(v33 + 32) = 2080;
          v44 = v30;
          v45 = [v30 name];
          v46 = sub_25B161B34();
          v48 = v47;

          v49 = v46;
          v4 = v150;
          v50 = sub_25B108480(v49, v48, &v159);
          v11 = v144;

          *(v33 + 34) = v50;
          _os_log_impl(&dword_25B105000, v31, v8, "%s: Checking service %s of type %s for accessory %s", v33, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25F862BF0](v20, -1, -1);
          v51 = v33;
          v17 = v149;
          MEMORY[0x25F862BF0](v51, -1, -1);
        }

        else
        {
          v44 = v30;
        }

        sub_25B161DD4();
        v52 = v151;
        (*v145)(v151, v154, v4);
        sub_25B11DA20(&qword_27FA39D80);
        v53 = sub_25B161AA4();
        v54 = *v158;
        (*v158)(v52, v4);
        if ((v53 & 1) == 0)
        {
          v55 = v141;
          v56 = *v140;
          (*v140)(v141, v17, v4);
          v57 = (*v138)(v55, v4);
          if (v57 == v139 || v57 == v137 || v57 == v136 || v57 == v135 || v57 == v134 || v57 == v133 || v57 == v154 || v57 == v132 || v57 == v131 || v57 == v129)
          {
            v78 = HMService.primaryControlCharacteristic.getter();
            if (v78)
            {
              v93 = v78;

              v56(v11, v17, v4);
              v94 = v124;
              v56(v124, v17, v4);
              v95 = v29;
              v96 = v44;
              v97 = sub_25B1619F4();
              v98 = sub_25B161D64();

              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                v159 = v157;
                *v99 = 136316162;
                *(v99 + 4) = sub_25B108480(0xD00000000000001DLL, v147 | 0x8000000000000000, &v159);
                *(v99 + 12) = 2080;
                v100 = ServiceKind.debugDescription.getter();
                v102 = v101;
                v54(v11, v150);
                v103 = sub_25B108480(v100, v102, &v159);

                *(v99 + 14) = v103;
                *(v99 + 22) = 2080;
                v104 = sub_25B161694();
                v106 = v105;
                v54(v94, v150);
                v107 = sub_25B108480(v104, v106, &v159);

                *(v99 + 24) = v107;
                *(v99 + 32) = 2080;
                v108 = [v95 name];
                v109 = sub_25B161B34();
                v111 = v110;

                v112 = sub_25B108480(v109, v111, &v159);

                *(v99 + 34) = v112;
                *(v99 + 42) = 2080;
                v113 = [v96 name];
                v114 = sub_25B161B34();
                v116 = v115;

                v117 = sub_25B108480(v114, v116, &v159);

                *(v99 + 44) = v117;
                _os_log_impl(&dword_25B105000, v97, v98, "%s: Found supported service kind %s(%s) having a primary control characteristic with service %s for serviceGroup %s", v99, 0x34u);
                v118 = v157;
                swift_arrayDestroy();
                MEMORY[0x25F862BF0](v118, -1, -1);
                v119 = v99;
                v4 = v150;
                MEMORY[0x25F862BF0](v119, -1, -1);
              }

              else
              {

                v54(v94, v4);
                v54(v11, v4);
              }

              v120 = v123;
              sub_25B11D9B8(v123);
              (*(v127 + 32))(v120, v149, v4);
              return v125(v120, 0, 1, v4);
            }

            v153 = v54;
            v58 = v29;
            v79 = v44;
            v59 = sub_25B1619F4();
            a1 = sub_25B161D64();

            if (os_log_type_enabled(v59, a1))
            {
              v20 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v159 = v80;
              *v20 = v128;
              *(v20 + 4) = sub_25B108480(0xD00000000000001DLL, v147 | 0x8000000000000000, &v159);
              *(v20 + 6) = 2080;
              v8 = &off_279932000;
              v81 = [v58 name];
              v82 = sub_25B161B34();
              v84 = v83;

              v85 = sub_25B108480(v82, v84, &v159);

              *(v20 + 14) = v85;
              *(v20 + 11) = 2080;
              v86 = [v79 name];
              v87 = sub_25B161B34();
              v89 = v88;

              v90 = v87;
              v4 = v150;
              v91 = sub_25B108480(v90, v89, &v159);
              v11 = v144;

              *(v20 + 3) = v91;
              _os_log_impl(&dword_25B105000, v59, a1, "%s: Did not find primary control characteristic for service %s for serviceGroup %s, continuing to next service", v20, 0x20u);
              swift_arrayDestroy();
              v92 = v80;
              v17 = v149;
              MEMORY[0x25F862BF0](v92, -1, -1);
              v77 = v20;
LABEL_33:
              MEMORY[0x25F862BF0](v77, -1, -1);
            }

            else
            {
            }

            v153(v17, v4);
            goto LABEL_5;
          }

          v54(v141, v4);
        }

        v58 = v29;
        v20 = v44;
        v59 = sub_25B1619F4();
        a1 = sub_25B161D64();

        if (os_log_type_enabled(v59, a1))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v159 = v61;
          *v60 = v142;
          *(v60 + 4) = sub_25B108480(0xD00000000000001DLL, v147 | 0x8000000000000000, &v159);
          *(v60 + 12) = 2080;
          v62 = [v58 serviceType];
          v63 = sub_25B161B34();
          v153 = v54;
          v65 = v64;

          v66 = sub_25B108480(v63, v65, &v159);

          *(v60 + 14) = v66;
          *(v60 + 22) = 2080;
          v8 = &off_279932000;
          v67 = [v58 name];
          v68 = sub_25B161B34();
          v70 = v69;

          v71 = sub_25B108480(v68, v70, &v159);

          *(v60 + 24) = v71;
          *(v60 + 32) = 2080;
          v72 = [v20 name];
          v20 = sub_25B161B34();
          v74 = v73;

          v75 = sub_25B108480(v20, v74, &v159);
          v11 = v144;

          *(v60 + 34) = v75;
          _os_log_impl(&dword_25B105000, v59, a1, "%s: ServiceType %s for service %s for serviceGroup %s is not supported.", v60, 0x2Au);
          swift_arrayDestroy();
          v76 = v61;
          v17 = v149;
          MEMORY[0x25F862BF0](v76, -1, -1);
          v77 = v60;
          v4 = v150;
          goto LABEL_33;
        }

        v54(v17, v4);
LABEL_5:
        v19 = v156 + 1;
        v22 = v146;
        if (v155 == v143)
        {
        }
      }
    }
  }
}

HMService_optional __swiftcall HMServiceGroup.serviceWithPrimaryControlCharacteristic()()
{
  v1 = v0;
  v2 = sub_25B1616A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v29 = &v23 - v7;
  v8 = [v1 services];
  sub_25B11C668();
  v9 = sub_25B161C64();

  if (v9 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v11 = 0;
    v28 = v9 & 0xC000000000000001;
    v27 = v9 & 0xFFFFFFFFFFFFFF8;
    v26 = *MEMORY[0x277D15640];
    v24 = i;
    v25 = (v3 + 104);
    v12 = (v3 + 8);
    while (1)
    {
      if (v28)
      {
        v13 = MEMORY[0x25F862410](v11, v9);
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = HMService.primaryControlCharacteristic.getter();
      if (v16)
      {
        v19 = v16;

        goto LABEL_22;
      }

      sub_25B161DD4();
      (*v25)(v30, v26, v2);
      sub_25B11DA20(&qword_27FA39E18);
      sub_25B161C14();
      sub_25B161C14();
      v3 = v32;
      if (v33 == v31 && v34 == v32)
      {
        v21 = *v12;
        (*v12)(v30, v2);
        v21(v29, v2);

LABEL_17:

        goto LABEL_22;
      }

      v17 = sub_25B161FA4();
      v18 = *v12;
      (*v12)(v30, v2);
      v18(v29, v2);

      if (v17)
      {
        goto LABEL_17;
      }

      ++v11;
      if (v15 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v14 = 0;
LABEL_22:
  v22 = v14;
  result.value.super.isa = v22;
  result.is_nil = v20;
  return result;
}

HMService_optional __swiftcall HMServiceGroup.primaryService()()
{
  v1 = [v0 services];
  sub_25B11C668();
  v2 = sub_25B161C64();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isPrimaryService])
      {

        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v6 = 0;
LABEL_17:
  v9 = v6;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

uint64_t sub_25B11D9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39E08, &qword_25B1637D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B11DA20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25B1616A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B11DA80()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA39E60);
  __swift_project_value_buffer(v0, qword_27FA39E60);
  return sub_25B1613E4();
}

uint64_t (*static EnergyForecastIntent.title.modify())()
{
  if (qword_27FA39A80 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161414();
  __swift_project_value_buffer(v0, qword_27FA39E60);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B11DBF4()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA39E78);
  __swift_project_value_buffer(v0, qword_27FA39E78);
  return sub_25B1611C4();
}

uint64_t sub_25B11DC80@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_25B11DD6C(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static EnergyForecastIntent.description.modify())()
{
  if (qword_27FA39A88 != -1)
  {
    swift_once();
  }

  v0 = sub_25B1611D4();
  __swift_project_value_buffer(v0, qword_27FA39E78);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B11DEEC@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_25B11DFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (*a5 == -1)
  {
    v9 = a6(0);
  }

  else
  {
    swift_once();
    v9 = a6(0);
  }

  v10 = v9;
  v11 = __swift_project_value_buffer(v9, a7);
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  return swift_endAccess();
}

uint64_t (*EnergyForecastIntent.homeIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__homeIdentifier);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

id sub_25B11E13C(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;
  sub_25B161274();
  sub_25B161144();

  if (v7)
  {
    v5 = sub_25B161B24();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_25B11E1D4(void *a1)
{
  v2 = *(v1 + *a1);
  sub_25B161274();
  sub_25B161144();

  return v4;
}

void sub_25B11E228(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_25B161B34();
  }

  v6 = *&a1[*a4];
  v7 = a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B11E2A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);
  sub_25B161274();
  sub_25B161154();
}

double sub_25B11E2F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOEnergyForecastIntent__homeName);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B11E348(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOEnergyForecastIntent__homeName);
  v4 = *a1;
  v5 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*EnergyForecastIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t EnergyForecastIntent.useCurrentLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t sub_25B11E484@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B11E4DC(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t EnergyForecastIntent.useCurrentLocation.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation);
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*EnergyForecastIntent.useCurrentLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t EnergyForecastIntent.home.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  sub_25B161274();
  sub_25B161144();
}

double sub_25B11E664@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B11E6BC(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  v4 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t EnergyForecastIntent.home.setter(__int128 *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*EnergyForecastIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

void sub_25B11E7F8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_25B11E858(void *a1)
{
  v2 = *(v1 + *a1);
  sub_25B161274();
  v3 = sub_25B161164();

  return v3;
}

uint64_t static EnergyForecastIntent.parameterSummary.getter()
{
  v0 = sub_25B161374();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA468], v0);
  v6[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EB0, &qword_25B163858);
  sub_25B12063C(&qword_27FA39EB8);
  sub_25B11AEBC(&qword_27FA39EC0, &qword_27FA39EB0, &qword_25B163858);
  sub_25B11AEBC(&qword_27FA39EC8, &qword_27FA39ED0, &unk_25B163860);
  return sub_25B1613A4();
}

uint64_t sub_25B11EAD4()
{
  swift_getKeyPath();
  sub_25B12063C(&qword_27FA39EB8);
  v0 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B163810;
  *(v1 + 32) = v0;
  type metadata accessor for EnergyForecastIntent();
  sub_25B161274();
  v2 = sub_25B161264();

  return v2;
}

uint64_t sub_25B11EBC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EB0, &qword_25B163858);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = type metadata accessor for EnergyForecastIntent();
  sub_25B12063C(&qword_27FA39EB8);
  sub_25B161284();
  v9 = sub_25B11AEBC(&qword_27FA39EC0, &qword_27FA39EB0, &qword_25B163858);
  MEMORY[0x25F861800](v5, v8, v0, v9);
  v10 = *(v1 + 8);
  v10(v5, v0);
  MEMORY[0x25F8617F0](v7, v8, v0, v9);
  return (v10)(v7, v0);
}

uint64_t sub_25B11EDA8()
{
  swift_getKeyPath();
  sub_25B12063C(&qword_27FA39EB8);
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for EnergyForecastIntent();
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

id EnergyForecastIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EnergyForecastIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = &v51 - v2;
  v3 = sub_25B161584();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_25B1613F4();
  v57 = *(v68 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B161B14();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25B161294();
  v11 = *(v76 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v51 - v26;
  v67 = &v51 - v26;
  v28 = sub_25B161414();
  v73 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v66 = OBJC_IVAR___NHOEnergyForecastIntent__homeIdentifier;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v71 = *(v29 + 56);
  v72 = v29 + 56;
  v71(v27, 1, 1, v28);
  v64 = sub_25B161AB4();
  v78 = 0;
  v79 = 0;
  v31 = *(v64 - 8);
  v63 = *(v31 + 56);
  v65 = (v31 + 56);
  v52 = v23;
  v63(v23, 1, 1, v64);
  v32 = sub_25B1610C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v33 + 56;
  v61 = v19;
  v34(v19, 1, 1, v32);
  v36 = *MEMORY[0x277CBA308];
  v37 = *(v11 + 104);
  v75 = v11 + 104;
  v37(v74, v36, v76);
  v38 = v67;
  v39 = sub_25B161194();
  v40 = v70;
  *&v70[v66] = v39;
  v53 = OBJC_IVAR___NHOEnergyForecastIntent__homeName;
  sub_25B1613E4();
  v71(v38, 1, 1, v73);
  v78 = 0;
  v79 = 0;
  v63(v52, 1, 1, v64);
  v41 = v61;
  v65 = v34;
  v66 = v32;
  v54 = v35;
  v34(v61, 1, 1, v32);
  LODWORD(v64) = v36;
  v63 = v37;
  v37(v74, v36, v76);
  *&v40[v53] = sub_25B161194();
  v62 = OBJC_IVAR___NHOEnergyForecastIntent__useCurrentLocation;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v52 = "HOME_ACCESSORY_ENTITY_TITLE";
  v42 = v68;
  v51 = __swift_project_value_buffer(v68, qword_27FA3E770);
  v57 = *(v57 + 16);
  (v57)(v69, v51, v42);
  sub_25B161574();
  sub_25B161424();
  v43 = v67;
  v71(v67, 1, 1, v73);
  LOBYTE(v78) = 1;
  v44 = sub_25B161CB4();
  (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
  v65(v41, 1, 1, v66);
  v45 = v74;
  (v63)(v74, v64, v76);
  v46 = sub_25B1611A4();
  v47 = v70;
  *&v70[v62] = v46;
  v62 = OBJC_IVAR___NHOEnergyForecastIntent__home;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  (v57)(v69, v51, v68);
  sub_25B161574();
  sub_25B161424();
  v71(v43, 1, 1, v73);
  v78 = 0;
  v79 = 0;
  v49 = v65;
  v48 = v66;
  v65(v61, 1, 1, v66);
  v49(v56, 1, 1, v48);
  (v63)(v45, v64, v76);
  sub_25B120304();
  *&v47[v62] = sub_25B161184();
  v77.receiver = v47;
  v77.super_class = ObjectType;
  return objc_msgSendSuper2(&v77, sel_init);
}

char *EnergyForecastIntent.__allocating_init(homeIdentifier:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOEnergyForecastIntent__home];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

char *EnergyForecastIntent.__allocating_init(homeIdentifier:homeName:)()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  v4 = v3;
  sub_25B1613E4();
  sub_25B161124();
  sub_25B1613E4();
  sub_25B161124();
  sub_25B161104();
  sub_25B161104();
  v5 = *&v4[OBJC_IVAR___NHOEnergyForecastIntent__home];
  sub_25B161274();
  sub_25B161154();

  return v4;
}

id EnergyForecastIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B11FC54@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39A80 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA39E60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B11FD34()
{
  v0 = sub_25B161374();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA468], v0);
  v6[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EB0, &qword_25B163858);
  sub_25B11AEBC(&qword_27FA39EC0, &qword_27FA39EB0, &qword_25B163858);
  sub_25B11AEBC(&qword_27FA39EC8, &qword_27FA39ED0, &unk_25B163860);
  return sub_25B1613A4();
}

uint64_t sub_25B11FF20(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3A8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25B12063C(&qword_27FA39F38);
  *v5 = v2;
  v5[1] = sub_25B11FFE8;

  return MEMORY[0x28210C3E0](a2, v6);
}

uint64_t sub_25B11FFE8()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

id sub_25B1200F0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

void sub_25B120128()
{
  sub_25B12063C(&qword_27FA39F30);

  JUMPOUT(0x25F861550);
}

uint64_t EnergyForecastIntent.configuredHomeID.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__homeIdentifier);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

uint64_t EnergyForecastIntent.configuredHomeName.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NHOEnergyForecastIntent__home);
  sub_25B161274();
  sub_25B161144();

  if (v6)
  {
    sub_25B161274();
    sub_25B161274();
    sub_25B120358(v6);
    sub_25B1610F4();
    sub_25B120358(v6);
    return v5;
  }

  else
  {
    sub_25B120358(0);
    v4 = *(v1 + OBJC_IVAR___NHOEnergyForecastIntent__homeName);
    sub_25B161274();
    sub_25B161144();

    return 0;
  }
}

unint64_t sub_25B120304()
{
  result = qword_27FA39F00;
  if (!qword_27FA39F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39F00);
  }

  return result;
}

uint64_t sub_25B120358(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B120438()
{
  result = qword_27FA39F18;
  if (!qword_27FA39F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39F18);
  }

  return result;
}

uint64_t sub_25B12063C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnergyForecastIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t HMActionSet.iconSymbolName.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_25B161B24();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F48, &qword_25B163A50), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v13 = 0;
  }

  v4 = sub_25B161B24();
  v5 = [v1 objectForKeyedSubscript_];

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F48, &qword_25B163A50);
    if (swift_dynamicCast())
    {
      if (!v13 && (sub_25B161BF4() & 1) != 0)
      {
        v6 = sub_25B161B24();

        v7 = HFImageIconIdentifier.symbolMapping.getter();
        v9 = v8;

        v12 = v7;
        v13 = v9;
      }
    }
  }

  v10 = sub_25B1208C0();

  if (v13)
  {
    v10 = v12;
    sub_25B161264();
  }

  return v10;
}

unint64_t sub_25B1208C0()
{
  v0 = 0x69662E6573756F68;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  sub_25B161D54();
  v8 = sub_25B161D44();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_25B121660(v7, v5);
    v10 = (*(v9 + 88))(v5, v8);
    if (v10 == *MEMORY[0x277D16EF0])
    {
      v0 = 0xD000000000000013;
    }

    else if (v10 == *MEMORY[0x277D16F10])
    {
      v0 = 0xD000000000000015;
    }

    else if (v10 == *MEMORY[0x277D16F38])
    {
      v0 = 0x2E78616D2E6E7573;
    }

    else if (v10 == *MEMORY[0x277D16F28])
    {
      v0 = 0x6174732E6E6F6F6DLL;
    }

    else
    {
      (*(v9 + 8))(v5, v8);
    }
  }

  sub_25B1215F8(v7);
  return v0;
}

uint64_t HMActionSet.iconTintColor.getter()
{
  v1 = sub_25B161A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 applicationData];
  v7 = [v6 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F48, &qword_25B163A50);
  v8 = sub_25B161A84();

  if (!*(v8 + 16) || (v9 = sub_25B108A28(0xD00000000000001FLL, 0x800000025B166950), (v10 & 1) == 0))
  {
LABEL_11:

    return HMActionSet.defaultTint.getter();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_unknownObjectRetain();

  v23[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F50, &qword_25B163A58);
  if (swift_dynamicCast())
  {
    v12 = v23[0];
    if (*(v23[0] + 16))
    {
      v13 = sub_25B108A28(114, 0xE100000000000000);
      if (v14)
      {
        if (*(v12 + 16))
        {
          v15 = *(*(v12 + 56) + 8 * v13);
          v16 = sub_25B108A28(103, 0xE100000000000000);
          if (v17)
          {
            if (*(v12 + 16))
            {
              v18 = *(*(v12 + 56) + 8 * v16);
              v19 = sub_25B108A28(98, 0xE100000000000000);
              if (v20)
              {
                v21 = *(*(v12 + 56) + 8 * v19);

                (*(v2 + 104))(v5, *MEMORY[0x277CE0EE0], v1);
                return sub_25B161A54();
              }
            }
          }
        }
      }
    }

    goto LABEL_11;
  }

  return HMActionSet.defaultTint.getter();
}

uint64_t HMActionSet.defaultTint.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_25B161D54();
  v7 = sub_25B161D44();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_2;
  }

  sub_25B121660(v6, v4);
  v10 = (*(v8 + 88))(v4, v7);
  if (v10 == *MEMORY[0x277D16EF0] || v10 == *MEMORY[0x277D16F10])
  {
    v11 = [objc_opt_self() systemOrangeColor];
LABEL_10:
    v12 = v11;
    v9 = sub_25B161A64();
    goto LABEL_11;
  }

  if (v10 == *MEMORY[0x277D16F38])
  {
    v11 = [objc_opt_self() systemYellowColor];
    goto LABEL_10;
  }

  if (v10 == *MEMORY[0x277D16F28])
  {
    v11 = [objc_opt_self() systemIndigoColor];
    goto LABEL_10;
  }

  (*(v8 + 8))(v4, v7);
LABEL_2:
  v9 = _sSo11HMActionSetC15NanoHomeIntentsE15backupTintColor7SwiftUI0H0Vvg_0();
LABEL_11:
  v13 = v9;
  sub_25B1215F8(v6);
  return v13;
}

uint64_t HMActionSet.umbrellaCategories.getter()
{
  v1 = [v0 actions];
  sub_25B1216D0();
  sub_25B12171C();
  v2 = sub_25B161D04();

  sub_25B121064(MEMORY[0x277D84FA0], v2);
  v4 = v3;

  return v4;
}

void sub_25B121064(void *a1, uint64_t a2)
{
  v59 = sub_25B1616A4();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_25B161884();
  v60 = *(v57 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v56 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = v51 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v54 = v51 - v13;
  MEMORY[0x28223BE20](v12);
  v61 = v51 - v14;
  v64 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_25B161264();
    sub_25B161264();
    sub_25B161E44();
    sub_25B1216D0();
    sub_25B12171C();
    sub_25B161D24();
    v15 = v68;
    v64 = v67;
    v16 = v69;
    v17 = v70;
    v18 = v71;
  }

  else
  {
    v19 = -1 << *(v64 + 32);
    v15 = v64 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v64 + 56);
    sub_25B161264();
    sub_25B161264();
    v17 = 0;
  }

  v51[0] = v16;
  v65 = (v16 + 64) >> 6;
  v51[4] = v60 + 32;
  v52 = (v4 + 8);
  v51[3] = v60 + 16;
  v51[2] = v60 + 8;
  v22 = 0x277CD1000uLL;
  v23 = &off_279932000;
  v24 = &off_279932000;
  v53 = v15;
  while (v64 < 0)
  {
    v30 = sub_25B161E64();
    if (!v30 || (v66 = v30, sub_25B1216D0(), swift_dynamicCast(), v29 = v72, v28 = v17, v25 = v18, !v72))
    {
LABEL_22:
      sub_25B11A930();
      return;
    }

LABEL_19:
    v31 = v29;
    v32 = *(v22 + 2472);
    objc_opt_self();
    v63 = v31;
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v62 = v25;
      v34 = [v33 v23[268]];
      v35 = [v34 v24[269]];

      if (v35)
      {
        v36 = v58;
        sub_25B161DD4();

        v37 = v54;
        sub_25B161674();
        (*v52)(v36, v59);
        v39 = v60;
        v38 = v61;
        v40 = v37;
        v41 = v57;
        (*(v60 + 32))(v61, v40, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F70, &unk_25B163A70);
        v42 = *(v39 + 72);
        v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v44 = swift_allocObject();
        v45 = *(v39 + 16);
        v45(v44 + v43, v38, v41);
        v72 = a1;
        sub_25B161264();
        v46 = v56;
        v45(v56, (v44 + v43), v41);
        v47 = v55;
        sub_25B13E148(v55, v46);
        v48 = *(v39 + 8);
        v23 = &off_279932000;
        v48(v47, v41);
        v49 = v72;
        swift_setDeallocating();
        v48(v44 + v43, v41);
        swift_deallocClassInstance();
        v50 = v41;
        v15 = v53;
        v48(v61, v50);
        v22 = 0x277CD1000;

        a1 = v49;
        v24 = &off_279932000;
      }

      v25 = v62;
    }

    v17 = v28;
    v18 = v25;
  }

  v26 = v17;
  v27 = v18;
  v28 = v17;
  if (v18)
  {
LABEL_15:
    v25 = (v27 - 1) & v27;
    v29 = *(*(v64 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v29)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v65)
    {
      goto LABEL_22;
    }

    v27 = *(v15 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_25B1215F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B121660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F58, &qword_25B163A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B1216D0()
{
  result = qword_27FA39F60;
  if (!qword_27FA39F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA39F60);
  }

  return result;
}

unint64_t sub_25B12171C()
{
  result = qword_27FA39F68;
  if (!qword_27FA39F68)
  {
    sub_25B1216D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39F68);
  }

  return result;
}

uint64_t sub_25B121774()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0x4C5F544547444957, 0xEF524548434E5541);
  qword_27FA39F78 = result;
  unk_27FA39F80 = v1;
  return result;
}

uint64_t sub_25B12180C()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001DLL, 0x800000025B166BD0);
  qword_27FA39F88 = result;
  unk_27FA39F90 = v1;
  return result;
}

uint64_t sub_25B121898()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001DLL, 0x800000025B166BB0);
  qword_27FA39F98 = result;
  unk_27FA39FA0 = v1;
  return result;
}

uint64_t sub_25B121924()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B166B90);
  qword_27FA39FA8 = result;
  unk_27FA39FB0 = v1;
  return result;
}

uint64_t sub_25B1219B0()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000017, 0x800000025B166B70);
  qword_27FA39FB8 = result;
  unk_27FA39FC0 = v1;
  return result;
}

uint64_t static NHOIntentLocalization.homeSpecificEnergyWidgetName(homeName:)(uint64_t a1, uint64_t a2)
{
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000014, 0x800000025B1669B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_25B1224A8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_25B161264();
  v5 = sub_25B161B44();

  return v5;
}

uint64_t sub_25B121C00()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B166B50);
  qword_27FA39FC8 = result;
  unk_27FA39FD0 = v1;
  return result;
}

uint64_t static NHOIntentLocalization.homeSpecificElectricityUsageWidgetName(homeName:)(uint64_t a1, uint64_t a2)
{
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000020, 0x800000025B1669D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_25B1224A8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_25B161264();
  v5 = sub_25B161B44();

  return v5;
}

uint64_t sub_25B121E50()
{
  result = _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD00000000000001CLL, 0x800000025B166B30);
  qword_27FA39FD8 = result;
  unk_27FA39FE0 = v1;
  return result;
}

uint64_t sub_25B121EB4(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;
  sub_25B161264();
  return v3;
}

id sub_25B121F38(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v9 = a5;
    v10 = a4;
    swift_once();
    a4 = v10;
    a5 = v9;
  }

  v5 = *a4;
  v6 = *a5;
  v7 = sub_25B161B24();

  return v7;
}

uint64_t static NHOIntentLocalization.homeSpecificElectricityRatesWidgetName(homeName:)(uint64_t a1, uint64_t a2)
{
  _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000020, 0x800000025B166A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B162FE0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_25B1224A8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_25B161264();
  v5 = sub_25B161B44();

  return v5;
}

id NHOIntentLocalization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOIntentLocalization.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOIntentLocalization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B122248()
{
  v0 = sub_25B1613F4();
  __swift_allocate_value_buffer(v0, qword_27FA3E770);
  v1 = __swift_project_value_buffer(v0, qword_27FA3E770);
  *v1 = type metadata accessor for NHOIntentLocalization();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B161B24();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (v5)
  {
    v6 = sub_25B161B24();
    v7 = sub_25B161B24();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = sub_25B161B34();
    v11 = v10;

    v12 = v9 == a1 && v11 == a2;
    if (v12 || (sub_25B161FA4() & 1) != 0)
    {

      v13 = sub_25B161B24();
      v14 = sub_25B161B24();
      v15 = [v5 localizedStringForKey:v13 value:0 table:v14];

      a1 = sub_25B161B34();
    }

    else
    {

      return v9;
    }
  }

  else
  {
    sub_25B161264();
  }

  return a1;
}

unint64_t sub_25B1224A8()
{
  result = qword_27FA39FF0;
  if (!qword_27FA39FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39FF0);
  }

  return result;
}

uint64_t sub_25B1226BC()
{
  v0 = sub_25B161A14();
  __swift_allocate_value_buffer(v0, qword_27FA3A070);
  __swift_project_value_buffer(v0, qword_27FA3A070);
  return sub_25B161A04();
}

uint64_t sub_25B1227CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25B161A14();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25B161A04();
}

uint64_t sub_25B122868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t NHOSmartStackAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F737365636361;
  v3 = 0x746867694C6C6C61;
  v4 = 0x6B616570536C6C61;
  if (v1 != 3)
  {
    v4 = 0x736B636F4C6C6C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65536E6F69746361;
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

NanoHomeIntents::NHOSmartStackAction_optional __swiftcall NHOSmartStackAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25B161F64();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25B122A00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65536E6F69746361;
    }

    else
    {
      v4 = 0x726F737365636361;
    }

    if (v3)
    {
      v5 = 0xE900000000000074;
    }

    else
    {
      v5 = 0xE900000000000079;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x746867694C6C6C61;
    v5 = 0xE900000000000073;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x6B616570536C6C61;
    }

    else
    {
      v4 = 0x736B636F4C6C6C61;
    }

    if (v3 == 3)
    {
      v5 = 0xEB00000000737265;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x65536E6F69746361;
    }

    else
    {
      v6 = 0x726F737365636361;
    }

    if (a2)
    {
      v2 = 0xE900000000000074;
    }

    else
    {
      v2 = 0xE900000000000079;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    if (v4 != 0x746867694C6C6C61)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEB00000000737265;
    if (v4 != 0x6B616570536C6C61)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    if (v4 != 0x736B636F4C6C6C61)
    {
LABEL_34:
      v7 = sub_25B161FA4();
      goto LABEL_35;
    }
  }

  if (v5 != v2)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_25B122BB8()
{
  v1 = *v0;
  sub_25B162024();
  sub_25B161BA4();

  return sub_25B162044();
}

uint64_t sub_25B122CA4()
{
  *v0;
  *v0;
  sub_25B161BA4();
}

uint64_t sub_25B122D7C()
{
  v1 = *v0;
  sub_25B162024();
  sub_25B161BA4();

  return sub_25B162044();
}

void sub_25B122E70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x726F737365636361;
  v5 = 0x746867694C6C6C61;
  v6 = 0xEB00000000737265;
  v7 = 0x6B616570536C6C61;
  if (v2 != 3)
  {
    v7 = 0x736B636F4C6C6C61;
    v6 = 0xE800000000000000;
  }

  if (v2 == 2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65536E6F69746361;
    v3 = 0xE900000000000074;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v6;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t sub_25B122FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A1F8, &qword_25B163F88);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A200, &qword_25B163F90);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25B163AC0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_25B161204();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_25B161204();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_25B161204();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_25B161204();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_25B161204();
  v10 = sub_25B1266D8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FA3A0B8 = v10;
  return result;
}

uint64_t static NHOSmartStackAction.caseDisplayRepresentations.getter()
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_25B161264();
}

uint64_t static NHOSmartStackAction.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FA3A0B8 = a1;
}

uint64_t (*static NHOSmartStackAction.caseDisplayRepresentations.modify())()
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B123394(uint64_t a1)
{
  v2 = sub_25B125578();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25B1233E0()
{
  if (qword_27FA39B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_25B161264();
}

uint64_t sub_25B123458(uint64_t a1)
{
  v2 = sub_25B125E84();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25B1234B4()
{
  v0 = sub_25B161414();
  __swift_allocate_value_buffer(v0, qword_27FA3A0C0);
  __swift_project_value_buffer(v0, qword_27FA3A0C0);
  return sub_25B1613E4();
}

uint64_t (*static NHOSmartStackActionIntent.title.modify())()
{
  if (qword_27FA39B18 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161414();
  __swift_project_value_buffer(v0, qword_27FA3A0C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B12361C()
{
  v0 = sub_25B1611D4();
  __swift_allocate_value_buffer(v0, qword_27FA3A0D8);
  __swift_project_value_buffer(v0, qword_27FA3A0D8);
  return sub_25B1611C4();
}

uint64_t (*static NHOSmartStackActionIntent.description.modify())()
{
  if (qword_27FA39B20 != -1)
  {
    swift_once();
  }

  v0 = sub_25B1611D4();
  __swift_project_value_buffer(v0, qword_27FA3A0D8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*NHOSmartStackActionIntent.homeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__homeID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__homeName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOSmartStackActionIntent.smartStackAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction);
  sub_25B161274();
  sub_25B161144();
}

uint64_t sub_25B123964@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t NHOSmartStackActionIntent.smartStackAction.setter(char *a1)
{
  v2 = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.smartStackAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.actionID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__actionID);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.actionName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__actionName);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__icon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOSmartStackActionIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t NHOSmartStackActionIntent.useHomeKitRecommendations.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B123E44@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B123E9C(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  v4 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B11E120;
}

uint64_t NHOSmartStackActionIntent.accessoriesAndScenes.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t NHOSmartStackActionIntent.accessoriesAndScenes.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B124104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B12415C(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  v4 = *a1;
  v5 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t (*NHOSmartStackActionIntent.requestConfirmationText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationText);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

double sub_25B124308@<D0>(void *a1@<X0>, void *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_25B161274();
  sub_25B161144();

  result = *&v6;
  *a3 = v6;
  return result;
}

uint64_t (*NHOSmartStackActionIntent.requestConfirmationIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationIcon);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

uint64_t NHOSmartStackActionIntent.isSmartStack.getter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  return v3;
}

uint64_t sub_25B12444C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack);
  sub_25B161274();
  sub_25B161144();

  *a2 = v5;
  return result;
}

uint64_t sub_25B1244A4(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOSmartStackActionIntent.isSmartStack.setter()
{
  v1 = *(v0 + OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack);
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*NHOSmartStackActionIntent.isSmartStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack);
  sub_25B161274();
  *(v4 + 40) = sub_25B161134();
  return sub_25B12069C;
}

id NHOSmartStackActionIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NHOSmartStackActionIntent.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v89 = &v83 - v2;
  v3 = sub_25B161294();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE8, &unk_25B163AE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v83 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v83 - v20;
  v22 = sub_25B161414();
  v109 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v94 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = OBJC_IVAR___NHOSmartStackActionIntent__homeID;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF0, &qword_25B163AF0);
  sub_25B1613E4();
  v26 = *(v23 + 56);
  v102 = v23 + 56;
  v108 = v26;
  v26(v21, 1, 1, v22);
  v98 = sub_25B161AB4();
  v111 = 0;
  v112 = 0;
  v27 = *(v98 - 8);
  v96 = *(v27 + 56);
  v104 = v27 + 56;
  v96(v17, 1, 1, v98);
  v107 = sub_25B1610C4();
  v28 = *(v107 - 8);
  v101 = *(v28 + 56);
  v29 = v28 + 56;
  v30 = v13;
  v101(v13, 1, 1, v107);
  v100 = v29;
  v106 = *MEMORY[0x277CBA308];
  v31 = *(v4 + 104);
  v103 = v4 + 104;
  v105 = v31;
  v32 = v3;
  v95 = v3;
  v31(v7);
  v33 = v21;
  v34 = v30;
  v35 = sub_25B161194();
  v36 = v99;
  *&v99[v86] = v35;
  v86 = OBJC_IVAR___NHOSmartStackActionIntent__homeName;
  sub_25B1613E4();
  v108(v33, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v92 = v17;
  v96(v17, 1, 1, v98);
  v101(v30, 1, 1, v107);
  v37 = v105;
  v105(v7, v106, v32);
  *&v36[v86] = sub_25B161194();
  v86 = OBJC_IVAR___NHOSmartStackActionIntent__smartStackAction;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A148, &unk_25B163AF8);
  sub_25B1613E4();
  v108(v33, 1, 1, v109);
  LOBYTE(v111) = 5;
  v38 = v107;
  v39 = v101;
  v101(v34, 1, 1, v107);
  v39(v87, 1, 1, v38);
  v97 = v7;
  v40 = v95;
  v37(v7, v106, v95);
  sub_25B125578();
  v91 = v33;
  *&v99[v86] = sub_25B161174();
  v87 = OBJC_IVAR___NHOSmartStackActionIntent__actionID;
  sub_25B1613E4();
  v41 = v108;
  v108(v33, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v42 = v92;
  v43 = v98;
  v44 = v96;
  v96(v92, 1, 1, v98);
  v45 = v101;
  v101(v34, 1, 1, v107);
  v46 = v40;
  v47 = v105;
  v105(v97, v106, v46);
  v48 = v91;
  *&v87[v99] = sub_25B161194();
  v87 = OBJC_IVAR___NHOSmartStackActionIntent__actionName;
  sub_25B1613E4();
  v41(v48, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v44(v42, 1, 1, v43);
  v49 = v107;
  v45(v34, 1, 1, v107);
  v50 = v95;
  v47(v97, v106, v95);
  v51 = v91;
  v52 = sub_25B161194();
  v53 = v99;
  *&v87[v99] = v52;
  v87 = OBJC_IVAR___NHOSmartStackActionIntent__icon;
  sub_25B1613E4();
  v54 = v109;
  v108(v51, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v96(v42, 1, 1, v98);
  v101(v34, 1, 1, v49);
  v55 = v97;
  v105(v97, v106, v50);
  *&v87[v53] = sub_25B161194();
  v84 = OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED0, &unk_25B163860);
  sub_25B1613E4();
  v56 = v108;
  v108(v51, 1, 1, v54);
  LOBYTE(v111) = 2;
  v86 = sub_25B161CB4();
  v57 = *(v86 - 8);
  v85 = *(v57 + 56);
  v87 = (v57 + 56);
  v85(v89, 1, 1, v86);
  v90 = v34;
  v58 = v101;
  v101(v34, 1, 1, v107);
  v59 = v106;
  v105(v55, v106, v95);
  *(v53 + v84) = sub_25B1611A4();
  v84 = OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A158, &qword_25B163B08);
  sub_25B1613E4();
  v56(v51, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v60 = v96;
  v96(v92, 1, 1, v98);
  v61 = v107;
  v58(v90, 1, 1, v107);
  v62 = v59;
  v63 = v95;
  v105(v97, v62, v95);
  v64 = v91;
  v65 = sub_25B161194();
  v66 = v99;
  *&v99[v84] = v65;
  v84 = OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationText;
  sub_25B1613E4();
  v108(v64, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v60(v92, 1, 1, v98);
  v67 = v101;
  v101(v90, 1, 1, v61);
  v68 = v106;
  v69 = v63;
  v70 = v105;
  v105(v97, v106, v69);
  v71 = v91;
  *&v66[v84] = sub_25B161194();
  v84 = OBJC_IVAR___NHOSmartStackActionIntent__requestConfirmationIcon;
  sub_25B1613E4();
  v108(v71, 1, 1, v109);
  v111 = 0;
  v112 = 0;
  v96(v92, 1, 1, v98);
  v72 = v90;
  v67(v90, 1, 1, v107);
  v73 = v97;
  v74 = v95;
  v70(v97, v68, v95);
  v75 = sub_25B161194();
  v76 = v99;
  *&v99[v84] = v75;
  v77 = OBJC_IVAR___NHOSmartStackActionIntent__isSmartStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B1613E4();
  v108(v71, 1, 1, v109);
  LOBYTE(v111) = 2;
  v85(v89, 1, 1, v86);
  v101(v72, 1, 1, v107);
  v105(v73, v106, v74);
  *&v76[v77] = sub_25B1611A4();
  v110.receiver = v76;
  v110.super_class = ObjectType;
  v78 = objc_msgSendSuper2(&v110, sel_init);
  v79 = *&v78[OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes];
  v111 = 0xD000000000000024;
  v112 = 0x800000025B166D10;
  v80 = v78;
  sub_25B161274();
  sub_25B161154();

  v81 = *&v80[OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations];
  LOBYTE(v111) = 1;
  sub_25B161274();
  sub_25B161154();

  return v80;
}

unint64_t sub_25B125578()
{
  result = qword_27FA3A150;
  if (!qword_27FA3A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A150);
  }

  return result;
}

char *NHOSmartStackActionIntent.__allocating_init(homeID:homeName:actionID:actionName:icon:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = [objc_allocWithZone(v10) init];
  v12 = *&v11[OBJC_IVAR___NHOSmartStackActionIntent__homeID];
  v13 = v11;
  sub_25B161274();
  sub_25B161154();

  v14 = *&v13[OBJC_IVAR___NHOSmartStackActionIntent__homeName];
  sub_25B161274();
  sub_25B161154();

  v15 = *&v13[OBJC_IVAR___NHOSmartStackActionIntent__actionID];
  sub_25B161264();
  sub_25B161274();
  sub_25B161154();

  v16 = *&v13[OBJC_IVAR___NHOSmartStackActionIntent__actionName];
  sub_25B161274();
  sub_25B161154();

  v17 = *&v13[OBJC_IVAR___NHOSmartStackActionIntent__icon];
  sub_25B161274();
  sub_25B161154();

  v18 = *&v13[OBJC_IVAR___NHOSmartStackActionIntent__accessoriesAndScenes];
  sub_25B161274();
  sub_25B161154();

  v19 = *&v13[OBJC_IVAR___NHOSmartStackActionIntent__useHomeKitRecommendations];
  sub_25B161274();
  sub_25B161154();

  return v13;
}

uint64_t sub_25B1257CC()
{
  v10 = v0;
  if (qword_27FA39AD0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B161A14();
  __swift_project_value_buffer(v1, qword_27FA39FF8);
  v2 = sub_25B1619F4();
  v3 = sub_25B161D94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25B108480(0x286D726F66726570, 0xE900000000000029, &v9);
    _os_log_impl(&dword_25B105000, v2, v3, "%s Perform method is only supported on watchOS", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F862BF0](v5, -1, -1);
    MEMORY[0x25F862BF0](v4, -1, -1);
  }

  v6 = *(v0 + 16);
  sub_25B1610D4();
  v7 = *(v0 + 8);

  return v7();
}

id NHOSmartStackActionIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B125A60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B18 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A0C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B125B28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOSmartStackActionIntent.perform()(a1);
}

uint64_t sub_25B125BC0()
{
  v1 = sub_25B126134(&qword_27FA3A1D0);

  return MEMORY[0x28210B538](v0, v1);
}

unint64_t sub_25B125C10()
{
  result = qword_27FA3A168;
  if (!qword_27FA3A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A168);
  }

  return result;
}

unint64_t sub_25B125C68()
{
  result = qword_27FA3A170;
  if (!qword_27FA3A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A170);
  }

  return result;
}

unint64_t sub_25B125CC0()
{
  result = qword_27FA3A178;
  if (!qword_27FA3A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A178);
  }

  return result;
}

unint64_t sub_25B125D18()
{
  result = qword_27FA3A180;
  if (!qword_27FA3A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A180);
  }

  return result;
}

unint64_t sub_25B125D7C()
{
  result = qword_27FA3A188;
  if (!qword_27FA3A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A188);
  }

  return result;
}

unint64_t sub_25B125DD4()
{
  result = qword_27FA3A190;
  if (!qword_27FA3A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A190);
  }

  return result;
}

unint64_t sub_25B125E2C()
{
  result = qword_27FA3A198;
  if (!qword_27FA3A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A198);
  }

  return result;
}

unint64_t sub_25B125E84()
{
  result = qword_27FA3A1A0;
  if (!qword_27FA3A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1A0);
  }

  return result;
}

unint64_t sub_25B125F2C()
{
  result = qword_27FA3A1A8;
  if (!qword_27FA3A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1A8);
  }

  return result;
}

unint64_t sub_25B125F84()
{
  result = qword_27FA3A1B0;
  if (!qword_27FA3A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1B0);
  }

  return result;
}

unint64_t sub_25B125FDC()
{
  result = qword_27FA3A1B8;
  if (!qword_27FA3A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A1B8);
  }

  return result;
}

uint64_t sub_25B126134(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NHOSmartStackActionIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NHOSmartStackAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NHOSmartStackAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25B1266D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A200, &qword_25B163F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A208, &qword_25B163F98);
    v8 = sub_25B161F54();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_25B161274();
    while (1)
    {
      sub_25B1268AC(v10, v6);
      result = sub_25B108AA0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_25B161244();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
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

uint64_t sub_25B1268AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A200, &qword_25B163F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *NHOFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "rvc";
  }

  else
  {
    return "EagleRoost";
  }
}

uint64_t NHOFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for NHOFeatureFlags;
  v4[4] = sub_25B1269C0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_25B1269C0()
{
  result = qword_27FA3A210;
  if (!qword_27FA3A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A210);
  }

  return result;
}

uint64_t NHOFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_25B162024();
  MEMORY[0x25F862580](v1);
  return sub_25B162044();
}

const char *sub_25B126ACC()
{
  if (*v0)
  {
    return "rvc";
  }

  else
  {
    return "EagleRoost";
  }
}

uint64_t RestrictedGuestFeatureFlags.isEnabled.getter()
{
  v2[3] = &type metadata for RestrictedGuestFeatureFlags;
  v2[4] = sub_25B126B74();
  v0 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_25B126B74()
{
  result = qword_27FA3A218;
  if (!qword_27FA3A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A218);
  }

  return result;
}

uint64_t RestrictedGuestFeatureFlags.hashValue.getter()
{
  sub_25B162024();
  MEMORY[0x25F862580](0);
  return sub_25B162044();
}

uint64_t sub_25B126C44()
{
  sub_25B162024();
  MEMORY[0x25F862580](0);
  return sub_25B162044();
}

uint64_t sub_25B126CB0()
{
  sub_25B162024();
  MEMORY[0x25F862580](0);
  return sub_25B162044();
}

uint64_t sub_25B126D18()
{
  v2[3] = &type metadata for NHOFeatureFlags;
  v2[4] = sub_25B1269C0();
  LOBYTE(v2[0]) = 0;
  v0 = sub_25B1615B4();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

id NHOFeatureFlagsObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NHOFeatureFlagsObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOFeatureFlagsObjC();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NHOFeatureFlagsObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NHOFeatureFlagsObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25B126EC4()
{
  result = qword_27FA3A220;
  if (!qword_27FA3A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A220);
  }

  return result;
}

unint64_t sub_25B126F1C()
{
  result = qword_27FA3A228;
  if (!qword_27FA3A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NHOFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NHOFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictedGuestFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RestrictedGuestFeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t sub_25B1271E0()
{
  v0 = sub_25B161584();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_25B1613F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B161B14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_25B161414();
  __swift_allocate_value_buffer(v9, qword_27FA3A230);
  __swift_project_value_buffer(v9, qword_27FA3A230);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_27FA3E770);
  (*(v3 + 16))(v6, v10, v2);
  sub_25B161574();
  return sub_25B161424();
}

uint64_t static ActionSetControlIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B28 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActionSetControlIntent.home.setter(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_25B161154();
}

uint64_t (*ActionSetControlIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t sub_25B1275CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = a1[1];
  v7 = a1[2];
  sub_25B12908C(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t ActionSetControlIntent.accessoriesAndScenes.setter(__int128 *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 2);
  return sub_25B161154();
}

uint64_t (*ActionSetControlIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B161134();
  return sub_25B11B3F4;
}

uint64_t ActionSetControlIntent.useHomeKitRecommendations.getter()
{
  v1 = *(v0 + 16);
  sub_25B161144();
  return v3;
}

uint64_t sub_25B127760(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t (*ActionSetControlIntent.useHomeKitRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_25B161134();
  return sub_25B10BAFC;
}

uint64_t static ActionSetControlIntent.parameterSummary.getter()
{
  sub_25B1279F0();

  return sub_25B161284();
}

uint64_t sub_25B1278FC()
{
  swift_getKeyPath();
  sub_25B1279F0();
  v0 = sub_25B161274();

  swift_getKeyPath();
  sub_25B161274();
  v1 = sub_25B161274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25B163820;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_25B161274();
  v3 = sub_25B161264();

  return v3;
}

unint64_t sub_25B1279F0()
{
  result = qword_27FA3A248;
  if (!qword_27FA3A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A248);
  }

  return result;
}

uint64_t ActionSetControlIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v48 - v3;
  v69 = sub_25B161294();
  v72 = *(v69 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - v13;
  v15 = sub_25B161584();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B1613F4();
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25B161B14();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_25B161414();
  v27 = *(v71 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v71);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v66 = "HOME_ACCESSORY_ENTITY_TITLE";
  v67 = __swift_project_value_buffer(v19, qword_27FA3E770);
  v62 = *(v73 + 16);
  v73 += 16;
  v51 = v22;
  v62(v22, v67, v19);
  sub_25B161574();
  v59 = v26;
  sub_25B161424();
  v31 = *(v27 + 56);
  v64 = v27 + 56;
  v65 = v31;
  v31(v14, 1, 1, v71);
  v32 = sub_25B1610C4();
  v61 = v19;
  v33 = v32;
  v74 = 0;
  v75 = 0;
  v34 = *(v32 - 8);
  v49 = v14;
  v50 = v18;
  v35 = v30;
  v36 = *(v34 + 56);
  v37 = v34 + 56;
  v38 = v56;
  v36(v56, 1, 1, v32);
  v36(v68, 1, 1, v33);
  v60 = *MEMORY[0x277CBA308];
  v63 = *(v72 + 104);
  v72 += 104;
  v39 = v57;
  v40 = v69;
  v63(v57);
  sub_25B120304();
  v48 = v35;
  v41 = v40;
  *v70 = sub_25B161184();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v42 = v51;
  v62(v51, v67, v61);
  sub_25B161574();
  sub_25B161424();
  v43 = v49;
  v65(v49, 1, 1, v71);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v52 = v33;
  v53 = v36;
  v54 = v37;
  v36(v38, 1, 1, v33);
  v36(v68, 1, 1, v33);
  (v63)(v39, v60, v41);
  sub_25B1282D4();
  v44 = sub_25B161184();
  v45 = v70;
  v70[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v62(v42, v67, v61);
  sub_25B161574();
  sub_25B161424();
  v65(v43, 1, 1, v71);
  LOBYTE(v74) = 2;
  v46 = sub_25B161CB4();
  (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
  v53(v38, 1, 1, v52);
  (v63)(v39, v60, v69);
  result = sub_25B1611A4();
  v45[2] = result;
  return result;
}

unint64_t sub_25B1282D4()
{
  result = qword_27FA3A258;
  if (!qword_27FA3A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A258);
  }

  return result;
}

uint64_t ActionSetControlIntent.init(home:actionSet:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39ED8, &unk_25B163AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v52 - v7;
  v71 = sub_25B161294();
  v76 = *(v71 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v71);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EE0, &unk_25B163870);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v54 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v52 - v17;
  v19 = sub_25B161584();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_25B1613F4();
  v22 = *(v21 - 8);
  v74 = v21;
  v75 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25B161B14();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v73 = sub_25B161414();
  v28 = *(v73 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v73);
  v30 = a2[1];
  v31 = a2[2];
  sub_25B128C68(*a2);
  v32 = a1[1];
  v57 = *a1;
  v56 = v32;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39EF8, &unk_25B163880);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v67 = "HOME_ACCESSORY_ENTITY_TITLE";
  v33 = v74;
  v34 = __swift_project_value_buffer(v74, qword_27FA3E770);
  v35 = *(v75 + 16);
  v75 += 16;
  v68 = v34;
  v69 = v35;
  v59 = v25;
  v35(v25, v34, v33);
  sub_25B161574();
  sub_25B161424();
  v36 = *(v28 + 56);
  v65 = v28 + 56;
  v66 = v36;
  v36(v18, 1, 1, v73);
  v37 = sub_25B1610C4();
  v60 = v37;
  v79 = 0uLL;
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v63 = v39;
  v40 = v18;
  v62 = v38 + 56;
  v41 = v70;
  v39(v70, 1, 1, v37);
  v42 = v54;
  v39(v54, 1, 1, v37);
  v61 = *MEMORY[0x277CBA308];
  v64 = *(v76 + 104);
  v76 += 104;
  v43 = v55;
  v64(v55);
  sub_25B120304();
  v53 = sub_25B161184();
  *v72 = v53;
  v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A250, &unk_25B164140);
  sub_25B161AC4();
  v69(v59, v68, v74);
  sub_25B161574();
  sub_25B161424();
  v66(v18, 1, 1, v73);
  v79 = 0uLL;
  v80 = 0;
  v44 = v41;
  v45 = v60;
  v46 = v63;
  v63(v44, 1, 1, v60);
  v46(v42, 1, 1, v45);
  v47 = v71;
  (v64)(v43, v61, v71);
  sub_25B1282D4();
  v48 = sub_25B161184();
  v49 = v72;
  v72[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A160, &qword_25B163B10);
  sub_25B161AC4();
  v69(v59, v68, v74);
  sub_25B161574();
  sub_25B161424();
  v66(v40, 1, 1, v73);
  LOBYTE(v79) = 2;
  v50 = sub_25B161CB4();
  (*(*(v50 - 8) + 56))(v58, 1, 1, v50);
  v63(v70, 1, 1, v60);
  (v64)(v43, v61, v47);
  v49[2] = sub_25B1611A4();
  *&v79 = v57;
  *(&v79 + 1) = v56;
  sub_25B161154();
  sub_25B161144();
  v77 = v79;
  v78 = v80;
  sub_25B161154();
  LOBYTE(v79) = 0;
  return sub_25B161154();
}

uint64_t sub_25B128C68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25B128CD4()
{
  v1 = *(v0 + 16);
  sub_25B1610D4();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_25B128D40()
{
  result = qword_27FA3A260;
  if (!qword_27FA3A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A260);
  }

  return result;
}

unint64_t sub_25B128D98()
{
  result = qword_27FA3A268;
  if (!qword_27FA3A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A268);
  }

  return result;
}

uint64_t sub_25B128E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B28 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161414();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25B128F28(uint64_t a1)
{
  v2 = sub_25B1279F0();

  return MEMORY[0x28210B538](a1, v2);
}

double sub_25B128F6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_25B128FB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_25B161144();
  *a2 = v5;
  return result;
}

uint64_t sub_25B12908C(uint64_t result)
{
  if (result)
  {
    sub_25B161274();
    sub_25B161274();

    return sub_25B161274();
  }

  return result;
}

uint64_t sub_25B1290DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t Color.init(hex:)(uint64_t a1, unint64_t a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ((sub_25B161BF4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_25B161BC4();
  v5 = sub_25B1292F8(v4, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  MEMORY[0x25F8620E0](v5, v7, v9, v11);

  if (sub_25B161BB4() != 8)
  {
LABEL_5:

LABEL_6:
    result = _sSo11HMActionSetC15NanoHomeIntentsE15backupTintColor7SwiftUI0H0Vvg_0();
    goto LABEL_7;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v13 = sub_25B161B24();

  v14 = [v12 initWithString_];

  v18[0] = 0;
  if (![v14 scanHexLongLong_])
  {

    goto LABEL_6;
  }

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:BYTE3(v18[0]) / 255.0 green:BYTE2(v18[0]) / 255.0 blue:BYTE1(v18[0]) / 255.0 alpha:LOBYTE(v18[0]) / 255.0];
  v15 = sub_25B161A64();

  result = v15;
LABEL_7:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B1292F8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

Swift::String __swiftcall Color.toHexString()()
{
  sub_25B129504();
  sub_25B161274();
  v0 = sub_25B161DB4();
  v1 = [v0 CGColor];
  v2 = sub_25B161D34();

  if (!v2)
  {
    v13 = 255.0;
    v12 = 255.0;
    v11 = 255.0;
    v10 = 255.0;
    goto LABEL_8;
  }

  v5 = *(v2 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 == 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);

  v10 = v6 * 255.0;
  v11 = v7 * 255.0;
  v12 = v8 * 255.0;
  v13 = v9 * 255.0;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39FE8, &qword_25B163A80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25B164320;
  v15 = lroundf(v10);
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v14 + 56) = MEMORY[0x277D83B88];
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  v18 = lroundf(v11);
  *(v14 + 96) = v16;
  *(v14 + 104) = v17;
  *(v14 + 72) = v18;
  v19 = lroundf(v12);
  *(v14 + 136) = v16;
  *(v14 + 144) = v17;
  *(v14 + 112) = v19;
  v20 = lroundf(v13);
  *(v14 + 176) = v16;
  *(v14 + 184) = v17;
  *(v14 + 152) = v20;
  v21 = sub_25B161B44();
  v23 = v22;

  v3 = v21;
  v4 = v23;
LABEL_13:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_25B129504()
{
  result = qword_27FA3A280;
  if (!qword_27FA3A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA3A280);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25B12955C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25B1295A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B1295F4()
{
  result = qword_27FA3A288;
  if (!qword_27FA3A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A288);
  }

  return result;
}

uint64_t sub_25B129648()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25B161264();
  return v1;
}

uint64_t sub_25B129694(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161154();
}

uint64_t sub_25B129714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *&xmmword_27FA3A290 = sub_25B161304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C8, &qword_25B164498);
  swift_getKeyPath();
  *(&xmmword_27FA3A290 + 1) = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2D0, &qword_25B1644C8);
  swift_getKeyPath();
  result = sub_25B161324();
  qword_27FA3A2A0 = result;
  return result;
}

uint64_t NHOActionSetQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B161304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C8, &qword_25B164498);
  swift_getKeyPath();
  a1[1] = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2D0, &qword_25B1644C8);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t static NHOActionSetEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A290 + 1);
  v3 = qword_27FA3A2A0;
  *a1 = xmmword_27FA3A290;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t static NHOActionSetEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FA3A290 = v3;
  qword_27FA3A2A0 = v1;
}

uint64_t (*static NHOActionSetEntity.defaultQuery.modify())()
{
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25B129ACC@<X0>(void *a1@<X8>)
{
  if (qword_27FA39B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FA3A290 + 1);
  v3 = qword_27FA3A2A0;
  *a1 = xmmword_27FA3A290;
  a1[1] = v2;
  a1[2] = v3;
  sub_25B161274();
  sub_25B161274();
  return sub_25B161274();
}

uint64_t sub_25B129B6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = qword_27FA39B30;
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27FA3A290 = v1;
  *(&xmmword_27FA3A290 + 1) = v2;
  qword_27FA3A2A0 = v3;
}

uint64_t sub_25B129C30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v18[0] = v18 - v2;
  v3 = sub_25B161584();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_25B1613F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B161B14();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_25B161414();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_25B161354();
  __swift_allocate_value_buffer(v15, qword_27FA3A2A8);
  __swift_project_value_buffer(v15, qword_27FA3A2A8);
  sub_25B161AC4();
  if (qword_27FA39AC8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_27FA3E770);
  (*(v6 + 16))(v9, v16, v5);
  sub_25B161574();
  sub_25B161424();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_25B161344();
}

uint64_t static NHOActionSetEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static NHOActionSetEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static NHOActionSetEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v0 = sub_25B161354();
  __swift_project_value_buffer(v0, qword_27FA3A2A8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25B12A1A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25B12A268(uint64_t a1)
{
  if (qword_27FA39B38 != -1)
  {
    swift_once();
  }

  v2 = sub_25B161354();
  v3 = __swift_project_value_buffer(v2, qword_27FA3A2A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t NHOActionSetEntity.id.getter()
{
  v1 = *v0;
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B12A364(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOActionSetEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B10BAFC;
}

uint64_t NHOActionSetEntity.name.getter()
{
  v1 = *(v0 + 8);
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B12A4DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOActionSetEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOActionSetEntity.icon.getter()
{
  v1 = *(v0 + 16);
  sub_25B1610F4();
  return v3;
}

uint64_t sub_25B12A654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_25B161264();
  sub_25B161274();
  sub_25B161274();
  sub_25B161274();
  sub_25B161104();
}

uint64_t (*NHOActionSetEntity.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_25B1610E4();
  return sub_25B11B3F4;
}

uint64_t NHOActionSetEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C48, &qword_25B163148);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_25B161414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_25B161B04();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *(v0 + 8);
  v15 = *(v0 + 16);
  sub_25B161AF4();
  sub_25B161AE4();
  sub_25B1610F4();
  sub_25B161AD4();

  sub_25B161AE4();
  sub_25B161404();
  (*(v10 + 56))(v8, 1, 1, v9);
  sub_25B1610F4();
  sub_25B161214();
  v16 = sub_25B161224();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  return sub_25B161234();
}

uint64_t sub_25B12AA24(uint64_t a1)
{
  v2 = sub_25B1282D4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25B12AA74(uint64_t a1)
{
  v2 = sub_25B130AE0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t NHOActionSetQuery.defaultResult()(uint64_t a1)
{
  v2[14] = a1;
  v3 = *(*(sub_25B161414() - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[15] = v4;
  v2[16] = v5;

  return MEMORY[0x2822009F8](sub_25B12AB54, 0, 0);
}

uint64_t sub_25B12AB54()
{
  v1 = v0[16];
  if (!sub_25B1612E4())
  {
    goto LABEL_8;
  }

  v2 = v0[16];
  swift_getKeyPath();
  sub_25B114F98();
  sub_25B1611B4();

  v4 = v0[2];
  v3 = v0[3];
  if (!sub_25B1612E4())
  {
LABEL_7:

LABEL_8:
    v10 = v0[14];
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    goto LABEL_9;
  }

  v5 = v0[16];
  swift_getKeyPath();
  sub_25B1611B4();

  v6 = v0[4];
  v7 = v0[5];
  if (!sub_25B1612E4())
  {
LABEL_6:

    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_25B1611B4();

  v8 = v0[6];
  v9 = v0[7];
  if (sub_25B161BF4())
  {

    goto LABEL_6;
  }

  v15 = v0[14];
  v14 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
  sub_25B1613E4();
  v19 = sub_25B161124();
  sub_25B1613E4();
  v16 = v6;
  v17 = sub_25B161124();
  sub_25B1613E4();
  v18 = sub_25B161124();
  v0[8] = v4;
  v0[9] = v3;
  sub_25B161104();
  v0[10] = v16;
  v0[11] = v7;
  sub_25B161104();
  v0[12] = v8;
  v0[13] = v9;
  sub_25B161104();
  *v15 = v19;
  v15[1] = v17;
  v15[2] = v18;
LABEL_9:
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t NHOActionSetQuery.entities(for:)(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  *(v2 + 216) = a1;
  v3 = *(*(sub_25B161414() - 8) + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v4 = sub_25B1619A4();
  *(v2 + 232) = v4;
  v5 = *(v4 - 8);
  *(v2 + 240) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  v7 = sub_25B1619B4();
  *(v2 + 256) = v7;
  v8 = *(v7 - 8);
  *(v2 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v10 = sub_25B161514();
  *(v2 + 280) = v10;
  v11 = *(v10 - 8);
  *(v2 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  v13 = sub_25B161864();
  *(v2 + 304) = v13;
  v14 = *(v13 - 8);
  *(v2 + 312) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  v16 = sub_25B161944();
  *(v2 + 344) = v16;
  v17 = *(v16 - 8);
  *(v2 + 352) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 360) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0) - 8) + 64) + 15;
  *(v2 + 368) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 376) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v2 + 384) = swift_task_alloc();
  v22 = sub_25B161724();
  *(v2 + 392) = v22;
  v23 = *(v22 - 8);
  *(v2 + 400) = v23;
  v24 = *(v23 + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = *v1;
  *(v2 + 432) = *(v1 + 16);
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25B12B194, 0, 0);
}

uint64_t sub_25B12B194()
{
  v54 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v1 = v0[52];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    v3 = v0[22];
    v2 = v0[23];
    sub_25B1610F4();

    v4 = v0[24];
    v5 = v0[25];
    v6 = qword_27FA39B00;
    sub_25B161264();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_25B161A14();
    __swift_project_value_buffer(v7, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v53);
      *(v10 + 12) = 2080;
      v12 = sub_25B108480(v4, v5, v53);

      *(v10 + 14) = v12;
      v13 = "%s: [NHOActionSetQuery] Using homeID %s from homeActionSetIntent.";
LABEL_16:
      _os_log_impl(&dword_25B105000, v8, v9, v13, v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v11, -1, -1);
      MEMORY[0x25F862BF0](v10, -1, -1);
LABEL_18:

      v0[55] = v4;
      v0[56] = v5;
      v0[57] = sub_25B161624();
      sub_25B1616C4();
      v0[58] = sub_25B1616B4();
      sub_25B130E18(&qword_27FA39CA8, MEMORY[0x277D15960]);
      v26 = sub_25B161CC4();
      v28 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](sub_25B12BA5C, v26, v27);
    }

    goto LABEL_17;
  }

  v14 = v0[54];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    v16 = v0[18];
    v15 = v0[19];
    sub_25B1610F4();

    v4 = v0[20];
    v5 = v0[21];
    v17 = qword_27FA39B00;
    sub_25B161264();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v53);
      *(v10 + 12) = 2080;
      v19 = sub_25B108480(v4, v5, v53);

      *(v10 + 14) = v19;
      v13 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlToggleIntent.";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v20 = v0[53];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    v22 = v0[6];
    v21 = v0[7];
    sub_25B1610F4();

    v4 = v0[8];
    v5 = v0[9];
    v23 = qword_27FA39B00;
    sub_25B161264();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_25B161A14();
    __swift_project_value_buffer(v24, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v53);
      *(v10 + 12) = 2080;
      v25 = sub_25B108480(v4, v5, v53);

      *(v10 + 14) = v25;
      v13 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlSelectIntent.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v29 = sub_25B161A14();
  __swift_project_value_buffer(v29, qword_27FA3A088);
  v30 = sub_25B1619F4();
  v31 = sub_25B161D84();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v53);
    _os_log_impl(&dword_25B105000, v30, v31, "%s: [NHOActionSetQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25F862BF0](v33, -1, -1);
    MEMORY[0x25F862BF0](v32, -1, -1);
  }

  v34 = sub_25B1619F4();
  v35 = sub_25B161D94();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v53[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v53);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_25B108480(7104878, 0xE300000000000000, v53);
    _os_log_impl(&dword_25B105000, v34, v35, "%s: [NHOActionSetQuery] Could not find HMHome for %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v37, -1, -1);
    MEMORY[0x25F862BF0](v36, -1, -1);
  }

  v38 = v0[51];
  v39 = v0[48];
  v41 = v0[45];
  v40 = v0[46];
  v43 = v0[41];
  v42 = v0[42];
  v44 = v0[40];
  v45 = v0[37];
  v46 = v0[34];
  v47 = v0[31];
  v52 = v0[28];

  v48 = v0[1];
  v49 = *MEMORY[0x277D85DE8];
  v50 = MEMORY[0x277D84F90];

  return v48(v50);
}

uint64_t sub_25B12BA5C()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = v0[57];
  v1 = v0[58];

  v0[59] = sub_25B161614();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25B12BAF8, 0, 0);
}

uint64_t sub_25B12BAF8()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v2 = v0[56];
  v22 = v0[48];
  v23 = v0[47];
  v3 = v0[45];
  v4 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25B162FE0;
  sub_25B161924();
  v0[26] = v12;
  sub_25B130E18(&qword_27FA39CB8, MEMORY[0x277D16690]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0);
  sub_25B161E34();
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v15 = *(MEMORY[0x277D15208] + 4);
  v16 = swift_task_alloc();
  v0[60] = v16;
  *v16 = v0;
  v16[1] = sub_25B12BD48;
  v17 = v0[59];
  v18 = v0[51];
  v19 = v0[48];
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28216E6A8](v18, v19, v13, v14);
}

uint64_t sub_25B12BD48()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[59];
  if (v0)
  {
    v6 = v2[56];

    v7 = sub_25B12C944;
  }

  else
  {

    v7 = sub_25B12BEC4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B12BEC4()
{
  v129 = v0;
  v128[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = sub_25B1616F4();
  v3 = sub_25B12F128(v2);
  v4 = v3;
  v5 = *(v3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v127 = v0;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_25B161264();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_2:
    v121 = &v108;
    v122 = v6;
    v7 = *(v0 + 312);
    MEMORY[0x28223BE20](v3);
    v123 = &v108 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v123, v8);
    v0 = 0;
    v9 = v4;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v6 = v12 & *(v4 + 56);
    v4 = (v11 + 63) >> 6;
    v126 = v7 + 16;
    v124 = 0;
    v125 = (v7 + 8);
    while (v6)
    {
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_12:
      v16 = v13 | (v0 << 6);
      v17 = v127[42];
      v18 = v127[38];
      (*(v7 + 16))(v17, *(v9 + 48) + *(v7 + 72) * v16, v18);
      v19 = sub_25B161824();
      (*(v7 + 8))(v17, v18);
      if ((v19 & 1) == 0)
      {
        *&v123[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        v20 = __OFADD__(v124, 1);
        v124 = (v124 + 1);
        if (v20)
        {
          __break(1u);
LABEL_16:
          v21 = sub_25B12F62C(v123, v122, v124, v9);
          v0 = v127;
          v22 = v127[61];
          goto LABEL_17;
        }
      }
    }

    v14 = v0;
    while (1)
    {
      v0 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v0 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v10 + 8 * v0);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v6 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  v105 = *(v0 + 488);
  v106 = swift_slowAlloc();
  v21 = sub_25B12F59C(v106, v6, v4, sub_25B130E60);

  result = MEMORY[0x25F862BF0](v106, -1, -1);
  if (!v105)
  {
LABEL_17:
    v23 = *(v0 + 448);

    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v124 = (v0 + 80);
    v24 = sub_25B161A14();
    v25 = __swift_project_value_buffer(v24, qword_27FA3A088);
    sub_25B161274();
    v26 = sub_25B1619F4();
    v27 = sub_25B161D94();
    v28 = os_log_type_enabled(v26, v27);
    v116 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v128[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v128);
      *(v29 + 12) = 2048;
      *(v29 + 14) = *(v21 + 16);

      _os_log_impl(&dword_25B105000, v26, v27, "%s: [NHOActionSetQuery] Home has %ld actionSets.", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F862BF0](v30, -1, -1);
      MEMORY[0x25F862BF0](v29, -1, -1);
    }

    else
    {
    }

    v4 = 0;
    v126 = v21;
    v31 = (v21 + 56);
    v32 = -1;
    v33 = -1 << *(v21 + 32);
    v34 = *(v0 + 312);
    v35 = *(v0 + 288);
    v36 = *(v0 + 264);
    v37 = *(v0 + 240);
    if (-v33 < 64)
    {
      v32 = ~(-1 << -v33);
    }

    v6 = v32 & *(v21 + 56);
    v38 = (63 - v33) >> 6;
    v119 = v34 + 32;
    v120 = v34 + 16;
    v125 = (v35 + 8);
    v122 = v34;
    v118 = (v34 + 8);
    v115 = (v36 + 8);
    v117 = MEMORY[0x277D84F90];
    v114 = (v37 + 8);
    v123 = (v21 + 56);
    v121 = v38;
LABEL_25:
    v39 = v4;
    if (!v6)
    {
      goto LABEL_27;
    }

    do
    {
      v4 = v39;
LABEL_30:
      v41 = *(v0 + 320);
      v40 = *(v0 + 328);
      v42 = *(v0 + 304);
      v43 = v127[37];
      v44 = v127[35];
      v45 = v127[27];
      v46 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v47 = v122;
      (*(v122 + 16))(v40, *(v126 + 48) + *(v122 + 72) * (v46 | (v4 << 6)), v42);
      (*(v47 + 32))(v41, v40, v42);
      sub_25B161834();
      v48 = sub_25B1614F4();
      v50 = v49;
      v51 = *v125;
      v0 = v127;
      (*v125)(v43, v44);
      *(v0 + 80) = v48;
      *(v0 + 88) = v50;
      v52 = swift_task_alloc();
      *(v52 + 16) = v124;
      LOBYTE(v45) = sub_25B12EF38(sub_25B1307D4, v52, v45);

      if (v45)
      {
        v53 = *(v0 + 296);
        v55 = *(v0 + 272);
        v54 = *(v0 + 280);
        v56 = *(v0 + 320);
        sub_25B161834();
        v57 = sub_25B1614F4();
        v112 = v58;
        v113 = v57;
        v51(v53, v54);
        v59 = sub_25B161844();
        v61 = v60;
        LOBYTE(v53) = sub_25B161814();
        v62 = v127;
        sub_25B161854();
        v63 = v62[34];
        v64 = v62[31];
        v110 = v61;
        v111 = v59;
        if (v53)
        {
          sub_25B161974();
        }

        else
        {
          sub_25B161984();
        }

        v65 = v62[31];
        v67 = v62[28];
        v66 = v62[29];
        (*v115)(v62[34], v62[32]);
        v68 = sub_25B161994();
        v109 = v69;
        (*v114)(v65, v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
        sub_25B1613E4();
        v70 = sub_25B161124();
        sub_25B1613E4();
        v71 = sub_25B161124();
        sub_25B1613E4();
        v72 = sub_25B161124();
        v73 = v112;
        v62[12] = v113;
        v62[13] = v73;
        sub_25B161104();
        v74 = v110;
        v62[14] = v111;
        v62[15] = v74;
        sub_25B161104();
        v75 = v109;
        v62[16] = v68;
        v62[17] = v75;
        sub_25B161104();
        v76 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_25B1154A8(0, *(v76 + 2) + 1, 1, v76);
        }

        v31 = v123;
        v78 = *(v76 + 2);
        v77 = *(v76 + 3);
        if (v78 >= v77 >> 1)
        {
          v117 = sub_25B1154A8((v77 > 1), v78 + 1, 1, v76);
        }

        else
        {
          v117 = v76;
        }

        v0 = v127;
        (*v118)(v127[40], v127[38]);
        v79 = v117;
        *(v117 + 2) = v78 + 1;
        v80 = &v79[24 * v78];
        *(v80 + 4) = v70;
        *(v80 + 5) = v71;
        *(v80 + 6) = v72;
        v38 = v121;
        goto LABEL_25;
      }

      (*v118)(*(v0 + 320), *(v0 + 304));
      v39 = v4;
      v31 = v123;
      v38 = v121;
    }

    while (v6);
LABEL_27:
    while (1)
    {
      v4 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_49;
      }

      if (v4 >= v38)
      {

        v81 = v117;
        sub_25B161264();
        v82 = sub_25B1619F4();
        v83 = sub_25B161D94();
        v84 = os_log_type_enabled(v82, v83);
        v86 = *(v0 + 400);
        v85 = *(v0 + 408);
        v87 = *(v0 + 392);
        if (v84)
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v128[0] = v89;
          *v88 = 136315394;
          *(v88 + 4) = sub_25B108480(0x7365697469746E65, 0xEE00293A726F6628, v128);
          *(v88 + 12) = 2048;
          *(v88 + 14) = *(v81 + 2);

          _os_log_impl(&dword_25B105000, v82, v83, "%s: [NHOActionSetQuery] Returning %ld matching actionSets.", v88, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v89);
          MEMORY[0x25F862BF0](v89, -1, -1);
          MEMORY[0x25F862BF0](v88, -1, -1);

          (*(v86 + 8))(v85, v87);
        }

        else
        {

          (*(v86 + 8))(v85, v87);
        }

        v90 = *(v0 + 408);
        v91 = *(v0 + 384);
        v93 = *(v0 + 360);
        v92 = *(v0 + 368);
        v95 = *(v0 + 328);
        v94 = *(v0 + 336);
        v96 = *(v0 + 320);
        v97 = v127[37];
        v98 = v127[34];
        v99 = v127[31];
        v126 = v127[28];

        v100 = v127;

        v101 = v100[1];
        v102 = *MEMORY[0x277D85DE8];
        v103 = v117;

        return v101(v103);
      }

      v6 = *&v31[8 * v4];
      ++v39;
      if (v6)
      {
        goto LABEL_30;
      }
    }
  }

  v107 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B12C944()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[51];
  v2 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v15 = v0[28];

  v11 = v0[1];
  v12 = v0[61];
  v13 = *MEMORY[0x277D85DE8];

  return v11();
}

double sub_25B12CA68@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___NHOActionSetIntent__home);
  sub_25B161274();
  sub_25B161144();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25B12CAC0(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___NHOActionSetIntent__home);
  v4 = a1[1];
  sub_25B11B1C8(*a1);
  sub_25B161274();
  sub_25B161154();
}

uint64_t NHOActionSetQuery.suggestedEntities()(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  *(v2 + 200) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C50, &qword_25B163150) - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39DB8, &qword_25B1637A0);
  *(v2 + 216) = v4;
  v5 = *(v4 - 8);
  *(v2 + 224) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v7 = sub_25B161414();
  *(v2 + 248) = v7;
  v8 = *(v7 - 8);
  *(v2 + 256) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  v10 = sub_25B1619A4();
  *(v2 + 272) = v10;
  v11 = *(v10 - 8);
  *(v2 + 280) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  v13 = sub_25B1619B4();
  *(v2 + 296) = v13;
  v14 = *(v13 - 8);
  *(v2 + 304) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 312) = swift_task_alloc();
  v16 = sub_25B161514();
  *(v2 + 320) = v16;
  v17 = *(v16 - 8);
  *(v2 + 328) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 336) = swift_task_alloc();
  v19 = sub_25B161864();
  *(v2 + 344) = v19;
  v20 = *(v19 - 8);
  *(v2 + 352) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  v22 = sub_25B161944();
  *(v2 + 384) = v22;
  v23 = *(v22 - 8);
  *(v2 + 392) = v23;
  v24 = *(v23 + 64) + 15;
  *(v2 + 400) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C68, &unk_25B1645B0) - 8) + 64) + 15;
  *(v2 + 408) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C70, &qword_25B163250);
  *(v2 + 416) = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  *(v2 + 424) = swift_task_alloc();
  v28 = sub_25B161724();
  *(v2 + 432) = v28;
  v29 = *(v28 - 8);
  *(v2 + 440) = v29;
  v30 = *(v29 + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = *v1;
  *(v2 + 472) = *(v1 + 16);
  v31 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25B12CF88, 0, 0);
}

uint64_t sub_25B12CF88()
{
  v57 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v1 = v0[57];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    v3 = v0[20];
    v2 = v0[21];
    sub_25B1610F4();

    v4 = v0[22];
    v5 = v0[23];
    v6 = qword_27FA39B00;
    sub_25B161264();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_25B161A14();
    __swift_project_value_buffer(v7, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v56);
      *(v10 + 12) = 2080;
      v12 = sub_25B108480(v4, v5, v56);

      *(v10 + 14) = v12;
      v13 = "%s: [NHOActionSetQuery] Using homeID %s from homeActionSetIntent.";
LABEL_16:
      _os_log_impl(&dword_25B105000, v8, v9, v13, v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F862BF0](v11, -1, -1);
      MEMORY[0x25F862BF0](v10, -1, -1);
LABEL_18:

      v0[60] = v4;
      v0[61] = v5;
      v0[62] = sub_25B161624();
      sub_25B1616C4();
      v0[63] = sub_25B1616B4();
      sub_25B130E18(&qword_27FA39CA8, MEMORY[0x277D15960]);
      v26 = sub_25B161CC4();
      v28 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](sub_25B12D8A0, v26, v27);
    }

    goto LABEL_17;
  }

  v14 = v0[59];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    v16 = v0[16];
    v15 = v0[17];
    sub_25B1610F4();

    v4 = v0[18];
    v5 = v0[19];
    v17 = qword_27FA39B00;
    sub_25B161264();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_25B161A14();
    __swift_project_value_buffer(v18, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v56);
      *(v10 + 12) = 2080;
      v19 = sub_25B108480(v4, v5, v56);

      *(v10 + 14) = v19;
      v13 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlToggleIntent.";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v20 = v0[58];
  if (sub_25B1612E4())
  {
    swift_getKeyPath();
    sub_25B12EEB4();
    sub_25B1611B4();

    v22 = v0[6];
    v21 = v0[7];
    sub_25B1610F4();

    v4 = v0[8];
    v5 = v0[9];
    v23 = qword_27FA39B00;
    sub_25B161264();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_25B161A14();
    __swift_project_value_buffer(v24, qword_27FA3A088);
    sub_25B161264();
    v8 = sub_25B1619F4();
    v9 = sub_25B161D94();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v56[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v56);
      *(v10 + 12) = 2080;
      v25 = sub_25B108480(v4, v5, v56);

      *(v10 + 14) = v25;
      v13 = "%s: [NHOActionSetQuery] Using homeID %s from actionSetControlSelectIntent.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (qword_27FA39B00 != -1)
  {
    swift_once();
  }

  v29 = sub_25B161A14();
  __swift_project_value_buffer(v29, qword_27FA3A088);
  v30 = sub_25B1619F4();
  v31 = sub_25B161D84();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v56[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v56);
    _os_log_impl(&dword_25B105000, v30, v31, "%s: [NHOActionSetQuery] We have no intent (from IntentParameterDependency) to retrieve the homeID from.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25F862BF0](v33, -1, -1);
    MEMORY[0x25F862BF0](v32, -1, -1);
  }

  v34 = sub_25B1619F4();
  v35 = sub_25B161D94();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v56);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_25B108480(7104878, 0xE300000000000000, v56);
    _os_log_impl(&dword_25B105000, v34, v35, "%s: [NHOActionSetQuery] Could not find HMHome for %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F862BF0](v37, -1, -1);
    MEMORY[0x25F862BF0](v36, -1, -1);
  }

  v38 = v0[25];
  (*(v0[32] + 56))(v0[26], 1, 1, v0[31]);
  sub_25B130874();
  sub_25B1611F4();
  v39 = v0[56];
  v40 = v0[53];
  v42 = v0[50];
  v41 = v0[51];
  v44 = v0[46];
  v43 = v0[47];
  v45 = v0[45];
  v46 = v0[42];
  v47 = v0[39];
  v48 = v0[36];
  v52 = v0[33];
  v53 = v0[30];
  v54 = v0[29];
  v55 = v0[26];

  v49 = v0[1];
  v50 = *MEMORY[0x277D85DE8];

  return v49();
}

uint64_t sub_25B12D8A0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = v0[62];
  v1 = v0[63];

  v0[64] = sub_25B161614();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25B12D93C, 0, 0);
}

uint64_t sub_25B12D93C()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  v2 = v0[61];
  v22 = v0[53];
  v23 = v0[52];
  v3 = v0[50];
  v4 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  sub_25B1614E4();
  v0[2] = sub_25B1616D4();
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CB0, &unk_25B1645F0);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25B162FE0;
  sub_25B161924();
  v0[24] = v12;
  sub_25B130E18(&qword_27FA39CB8, MEMORY[0x277D16690]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39CC0, &qword_25B1632C0);
  sub_25B11AEBC(&qword_27FA39CC8, &qword_27FA39CC0, &qword_25B1632C0);
  sub_25B161E34();
  v13 = MEMORY[0x277D159D8];
  v14 = MEMORY[0x277D159D0];
  sub_25B161764();
  swift_storeEnumTagMultiPayload();
  v15 = *(MEMORY[0x277D15208] + 4);
  v16 = swift_task_alloc();
  v0[65] = v16;
  *v16 = v0;
  v16[1] = sub_25B12DB8C;
  v17 = v0[64];
  v18 = v0[56];
  v19 = v0[53];
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28216E6A8](v18, v19, v13, v14);
}

uint64_t sub_25B12DB8C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[64];
  if (v0)
  {
    v6 = v2[61];

    v7 = sub_25B12E7E8;
  }

  else
  {

    v7 = sub_25B12DD08;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B12DD08()
{
  v126 = v0;
  v125[1] = *MEMORY[0x277D85DE8];
  v1 = v0[56];
  v2 = sub_25B1616F4();
  v3 = sub_25B12F128(v2);
  v4 = v3;
  v5 = *(v3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_25B161264();
    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_2:
      v118 = v109;
      v119 = v6;
      v7 = v0[44];
      MEMORY[0x28223BE20](v3);
      v120 = v109 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v120, v8);
      v6 = 0;
      v124 = v4;
      v10 = *(v4 + 56);
      v4 += 56;
      v9 = v10;
      v11 = 1 << *(v4 - 24);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & v9;
      v14 = (v11 + 63) >> 6;
      v123 = v7 + 16;
      v121 = 0;
      v122 = v7 + 8;
      while (v13)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = v15 | (v6 << 6);
        v19 = v0[47];
        v20 = v0[43];
        (*(v7 + 16))(v19, *(v124 + 48) + *(v7 + 72) * v18, v20);
        v21 = sub_25B161824();
        (*(v7 + 8))(v19, v20);
        if ((v21 & 1) == 0)
        {
          *&v120[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          if (__OFADD__(v121++, 1))
          {
            __break(1u);
LABEL_16:
            v23 = sub_25B12F62C(v120, v119, v121, v124);
            goto LABEL_17;
          }
        }
      }

      v16 = v6;
      while (1)
      {
        v6 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v6 >= v14)
        {
          goto LABEL_16;
        }

        v17 = *(v4 + 8 * v6);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v106 = v0[66];
    v107 = swift_slowAlloc();
    v23 = sub_25B12F59C(v107, v6, v4, sub_25B130E60);

    result = MEMORY[0x25F862BF0](v107, -1, -1);
    if (v106)
    {
      break;
    }

    v109[1] = 0;
LABEL_17:
    v24 = v0[61];

    if (qword_27FA39B00 != -1)
    {
      swift_once();
    }

    v25 = sub_25B161A14();
    v26 = __swift_project_value_buffer(v25, qword_27FA3A088);
    sub_25B161274();
    v27 = sub_25B1619F4();
    v28 = sub_25B161D94();
    v29 = os_log_type_enabled(v27, v28);
    v109[2] = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v125[0] = v4;
      *v30 = 136315394;
      *(v30 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v125);
      *(v30 + 12) = 2048;
      *(v30 + 14) = *(v23 + 16);

      _os_log_impl(&dword_25B105000, v27, v28, "%s: [NHOActionSetQuery] Home has %ld actionSets.", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x25F862BF0](v4, -1, -1);
      MEMORY[0x25F862BF0](v30, -1, -1);
    }

    else
    {
    }

    v31 = v0[44];
    v32 = v0[41];
    v33 = v0[38];
    v34 = v23 + 56;
    v35 = -1;
    v36 = -1 << *(v23 + 32);
    if (-v36 < 64)
    {
      v35 = ~(-1 << -v36);
    }

    v37 = v35 & *(v23 + 56);
    v38 = v0[35];
    v6 = (63 - v36) >> 6;
    v114 = v31 + 32;
    v115 = v31 + 16;
    v112 = (v33 + 8);
    v113 = (v32 + 8);
    v118 = v31;
    v110 = (v31 + 8);
    v111 = (v38 + 8);
    sub_25B161274();
    v39 = 0;
    v40 = MEMORY[0x277D84F90];
    v119 = v23;
    v116 = v6;
    for (i = v23 + 56; v37; v34 = i)
    {
      v124 = v40;
LABEL_30:
      v42 = v0[45];
      v43 = v0[46];
      v45 = v0[42];
      v44 = v0[43];
      v47 = v0[39];
      v46 = v0[40];
      v48 = *(v23 + 48);
      v49 = v118;
      (v118[2])(v43, v48 + v118[9] * (__clz(__rbit64(v37)) | (v39 << 6)), v44);
      (v49[4])(v42, v43, v44);
      sub_25B161834();
      v50 = sub_25B1614F4();
      v122 = v51;
      v123 = v50;
      (*v113)(v45, v46);
      v52 = sub_25B161844();
      v120 = v53;
      v121 = v52;
      LOBYTE(v45) = sub_25B161814();
      sub_25B161854();
      v54 = v0[39];
      v55 = v0[36];
      if (v45)
      {
        sub_25B161974();
      }

      else
      {
        sub_25B161984();
      }

      v56 = v0[36];
      v58 = v0[33];
      v57 = v0[34];
      (*v112)(v0[39], v0[37]);
      v59 = sub_25B161994();
      v61 = v60;
      (*v111)(v56, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      sub_25B1613E4();
      v62 = sub_25B161124();
      sub_25B1613E4();
      v63 = sub_25B161124();
      sub_25B1613E4();
      v64 = sub_25B161124();
      v65 = v122;
      v0[10] = v123;
      v0[11] = v65;
      sub_25B161104();
      v66 = v120;
      v0[12] = v121;
      v0[13] = v66;
      sub_25B161104();
      v0[14] = v59;
      v0[15] = v61;
      sub_25B161104();
      v40 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_25B1154A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v4 = *(v40 + 2);
      v67 = *(v40 + 3);
      v23 = v119;
      if (v4 >= v67 >> 1)
      {
        v40 = sub_25B1154A8((v67 > 1), v4 + 1, 1, v40);
      }

      v37 &= v37 - 1;
      (*v110)(v0[45], v0[43]);
      *(v40 + 2) = v4 + 1;
      v68 = &v40[24 * v4];
      *(v68 + 4) = v62;
      *(v68 + 5) = v63;
      *(v68 + 6) = v64;
      v6 = v116;
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v6)
      {

        sub_25B161274();
        v69 = sub_25B1619F4();
        v70 = sub_25B161D94();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v125[0] = v72;
          *v71 = 136315394;
          *(v71 + 4) = sub_25B108480(0xD000000000000013, 0x800000025B1665E0, v125);
          *(v71 + 12) = 2048;
          v73 = v40;
          v74 = *(v23 + 16);

          *(v71 + 14) = v74;
          v40 = v73;

          _os_log_impl(&dword_25B105000, v69, v70, "%s: [NHOActionSetQuery] Home has %ld actionSets.", v71, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x25F862BF0](v72, -1, -1);
          MEMORY[0x25F862BF0](v71, -1, -1);
        }

        else
        {
        }

        if (*(v40 + 2))
        {
          v75 = v0[33];
          v77 = v0[29];
          v76 = v0[30];
          v78 = v0[27];
          v79 = v0[28];
          _s15NanoHomeIntents21NHOIntentLocalizationC15localizedStringyS2SFZ_0(0xD000000000000019, 0x800000025B166FF0);
          sub_25B1613E4();
          sub_25B130874();
          sub_25B1611E4();
          (*(v79 + 16))(v77, v76, v78);
          v80 = sub_25B1155C8(0, 1, 1, MEMORY[0x277D84F90]);
          v82 = v80[2];
          v81 = v80[3];
          if (v82 >= v81 >> 1)
          {
            v80 = sub_25B1155C8(v81 > 1, v82 + 1, 1, v80);
          }

          v83 = v0[29];
          v84 = v0[27];
          v85 = v0[28];
          (*(v85 + 8))(v0[30], v84);
          v80[2] = v82 + 1;
          (*(v85 + 32))(v80 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v82, v83, v84);
        }

        else
        {
        }

        v87 = v0[55];
        v86 = v0[56];
        v88 = v0[54];
        v89 = v0[25];
        (*(v0[32] + 56))(v0[26], 1, 1, v0[31]);
        sub_25B130874();
        sub_25B1611F4();
        (*(v87 + 8))(v86, v88);
        v90 = v0[56];
        v91 = v0[53];
        v93 = v0[50];
        v92 = v0[51];
        v95 = v0[46];
        v94 = v0[47];
        v96 = v0[45];
        v97 = v0[42];
        v98 = v0[39];
        v99 = v0[36];
        v101 = v0[29];
        v100 = v0[30];
        v121 = v0[33];
        v122 = v100;
        v102 = v0[26];
        v123 = v101;
        v124 = v102;

        v103 = v0[1];
        v104 = *MEMORY[0x277D85DE8];

        return v103();
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v124 = v40;
        v39 = v41;
        goto LABEL_30;
      }
    }

LABEL_51:
    __break(1u);
  }

  v108 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B12E7E8()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[56];
  v2 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v8 = v0[42];
  v9 = v0[39];
  v10 = v0[36];
  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[26];

  v11 = v0[1];
  v12 = v0[66];
  v13 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_25B12E964@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C0, &qword_25B1643F0);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  *a1 = sub_25B161304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2C8, &qword_25B164498);
  swift_getKeyPath();
  a1[1] = sub_25B161324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A2D0, &qword_25B1644C8);
  swift_getKeyPath();
  result = sub_25B161324();
  a1[2] = result;
  return result;
}

uint64_t sub_25B12EA58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B11B408;

  return NHOActionSetQuery.entities(for:)(a1);
}

uint64_t sub_25B12EAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOActionSetQuery.suggestedEntities()(a1);
}

uint64_t sub_25B12EB84(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_25B1309D4();
  *v6 = v2;
  v6[1] = sub_25B11B3EC;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_25B12EC38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25B114758;

  return NHOActionSetQuery.defaultResult()(a1);
}

uint64_t sub_25B12ED5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B161164();
  *a2 = result;
  return result;
}

uint64_t sub_25B12ED88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B161164();
  *a2 = result;
  return result;
}

double sub_25B12EE74@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  return result;
}

unint64_t sub_25B12EEB4()
{
  result = qword_27FA39C78;
  if (!qword_27FA39C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA39C80, &qword_25B163280);
    sub_25B115CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA39C78);
  }

  return result;
}

uint64_t sub_25B12EF38(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_25B161264();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25B12F000(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25F862410](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_25B161E54();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25B12F128(uint64_t a1)
{
  v2 = sub_25B161864();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80]);
  result = MEMORY[0x25F862260](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_25B12F954(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B12F33C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_25B161864();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;
        sub_25B161274();
        return sub_25B12F62C(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25B12F59C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_25B12F33C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25B12F62C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_25B161864();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  result = sub_25B161E94();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80]);
    result = sub_25B161A94();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25B12F954(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25B161864();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80]);
  v36 = a2;
  v13 = sub_25B161A94();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25B130E18(&qword_27FA3A368, MEMORY[0x277D15D80]);
      v23 = sub_25B161AA4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25B12FC34(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25B12FC34(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_25B161864();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_25B130420(v13);
    }

    else
    {
      sub_25B130104(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80]);
    v16 = sub_25B161A94();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25B130E18(&qword_27FA3A368, MEMORY[0x277D15D80]);
        v24 = sub_25B161AA4();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_25B12FECC();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_25B161FC4();
  __break(1u);
  return result;
}

void *sub_25B12FECC()
{
  v1 = v0;
  v2 = sub_25B161864();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  v7 = *v0;
  v8 = sub_25B161E74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_25B130104(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25B161864();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  v10 = sub_25B161E84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80]);
      result = sub_25B161A94();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25B130420(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25B161864();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3A358, &qword_25B164A48);
  result = sub_25B161E84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25B130E18(&qword_27FA3A360, MEMORY[0x277D15D80]);
      result = sub_25B161A94();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25B13077C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B161FA4() & 1;
  }
}

uint64_t sub_25B1307D4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25B161FA4() & 1;
  }
}

double sub_25B13082C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_25B161144();
  result = *&v5;
  *a2 = v5;
  return result;
}

unint64_t sub_25B130874()
{
  result = qword_27FA3A2D8;
  if (!qword_27FA3A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2D8);
  }

  return result;
}

unint64_t sub_25B1308CC()
{
  result = qword_27FA3A2E0;
  if (!qword_27FA3A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2E0);
  }

  return result;
}

unint64_t sub_25B130924()
{
  result = qword_27FA3A2E8;
  if (!qword_27FA3A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2E8);
  }

  return result;
}

unint64_t sub_25B13097C()
{
  result = qword_27FA3A2F0;
  if (!qword_27FA3A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2F0);
  }

  return result;
}

unint64_t sub_25B1309D4()
{
  result = qword_27FA3A2F8;
  if (!qword_27FA3A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A2F8);
  }

  return result;
}

unint64_t sub_25B130A2C()
{
  result = qword_27FA3A300;
  if (!qword_27FA3A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A300);
  }

  return result;
}

unint64_t sub_25B130A84()
{
  result = qword_27FA3A308;
  if (!qword_27FA3A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A308);
  }

  return result;
}

unint64_t sub_25B130AE0()
{
  result = qword_27FA3A310;
  if (!qword_27FA3A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A310);
  }

  return result;
}

unint64_t sub_25B130B7C()
{
  result = qword_27FA3A328;
  if (!qword_27FA3A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A328);
  }

  return result;
}

unint64_t sub_25B130BD4()
{
  result = qword_27FA3A330;
  if (!qword_27FA3A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A330);
  }

  return result;
}

unint64_t sub_25B130C2C()
{
  result = qword_27FA3A338;
  if (!qword_27FA3A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A338);
  }

  return result;
}

unint64_t sub_25B130C88()
{
  result = qword_27FA3A340;
  if (!qword_27FA3A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3A340);
  }

  return result;
}

uint64_t sub_25B130D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B130D70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B130DB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_25B1610F4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B130E18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25B130EA8()
{
  v0 = type metadata accessor for HomeManagerActor();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = MEMORY[0x277D84F90];
  sub_25B132284(0, &qword_27FA3A3E8, 0x277CD1C60);
  v2 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v2 setCachePolicy_];
  [v2 setDiscretionary_];
  [v2 setOptions_];
  [v2 setAdaptive_];
  *(v1 + 112) = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  v6.receiver = v1;
  v6.super_class = v0;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3[14];
  v5 = v3;
  [v4 setDelegate_];

  qword_27FA3E788 = v5;
}

void *sub_25B130FE4()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = MEMORY[0x277D84F90];
  sub_25B132284(0, &qword_27FA3A3E8, 0x277CD1C60);
  v2 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v2 setCachePolicy_];
  [v2 setDiscretionary_];
  [v2 setOptions_];
  [v2 setAdaptive_];
  *(v1 + 112) = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  v7.receiver = v1;
  v7.super_class = v0;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3[14];
  v5 = v3;
  [v4 setDelegate_];

  return v5;
}

void *sub_25B131118()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 128) = MEMORY[0x277D84F90];
  sub_25B132284(0, &qword_27FA3A3E8, 0x277CD1C60);
  v1 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v1 setCachePolicy_];
  [v1 setDiscretionary_];
  [v1 setOptions_];
  [v1 setAdaptive_];
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HomeManagerActor();
  v2 = objc_msgSendSuper2(&v6, sel_init);
  v3 = v2[14];
  v4 = v2;
  [v3 setDelegate_];

  return v4;
}

uint64_t HomeManagerActor.deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HomeManagerActor.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static HomeManagerActor.homeManager.getter()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_25B132284(0, &qword_27FA3A370, 0x277CD1A90);
  *v2 = v0;
  v2[1] = sub_25B1313DC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_25B1314F0, 0, v3);
}

uint64_t sub_25B1313DC()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B1314D8, 0, 0);
}

uint64_t sub_25B1314F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_25B161CF4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_25B131B20(0, 0, v10, &unk_25B164B28, v13);
}

uint64_t sub_25B1316CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B1317AC, 0, 0);
}

uint64_t sub_25B1317AC()
{
  if (qword_27FA39B40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = qword_27FA3E788;
  v0[12] = qword_27FA3E788;
  v8 = *(v4 + 16);
  v8(v2, v5, v6);
  v8(v1, v2, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[13] = v10;
  (*(v4 + 32))(v10 + v9, v2, v6);

  return MEMORY[0x2822009F8](sub_25B1318E0, v7, 0);
}

uint64_t sub_25B1318E0()
{
  v1 = v0[12];
  if (*(v1 + 120) == 1)
  {
    v2 = *(v1 + 112);
    v0[5] = v2;
    v3 = v0[13];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = v2;
    sub_25B161CD4();

    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v0[13];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_25B13299C;
    *(v9 + 24) = v8;
    swift_beginAccess();
    v10 = *(v1 + 128);
    sub_25B161274();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 128) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_25B1155EC(0, v10[2] + 1, 1, v10);
      *(v1 + 128) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_25B1155EC((v12 > 1), v13 + 1, 1, v10);
    }

    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[7];
    v17 = v0[8];
    v10[2] = v13 + 1;
    v18 = &v10[2 * v13];
    v18[4] = sub_25B132A18;
    v18[5] = v9;
    *(v1 + 128) = v10;
    swift_endAccess();

    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_25B131AD0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  return sub_25B161CD4();
}

uint64_t sub_25B131B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25B1322CC(a3, v27 - v11);
  v13 = sub_25B161CF4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_25B161274();
  if (v15 == 1)
  {
    sub_25B13233C(v12);
  }

  else
  {
    sub_25B161CE4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25B161CC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25B161B74() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_25B161274();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_25B13233C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25B13233C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall HomeManagerActor.homeManagerDidUpdateHomes(_:)(HMHomeManager a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_25B161CF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_25B161274();
  sub_25B131B20(0, 0, v5, &unk_25B164A68, v7);
}

uint64_t sub_25B131F08()
{
  v1 = *(v0 + 16);
  sub_25B13205C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25B131F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B11B3EC;

  return sub_25B131EE8(a1, v4, v5, v6);
}

uint64_t sub_25B13205C()
{
  v1 = v0;
  *(v0 + 120) = 1;
  swift_beginAccess();
  v2 = *(v0 + 128);
  v3 = *(v2 + 16);
  result = sub_25B161264();
  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 40);
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v1 + 112);
      sub_25B161274();
      v8(&v10);

      v6 += 2;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v9 = *(v1 + 128);
    *(v1 + 128) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B132284(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25B1322CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B13233C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B1323A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B13249C;

  return v7(a1);
}

uint64_t sub_25B13249C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25B132594()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B1325CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B11B3EC;

  return sub_25B1323A4(a1, v5);
}

uint64_t sub_25B132684(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B114758;

  return sub_25B1323A4(a1, v5);
}

uint64_t sub_25B13273C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B13280C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B114758;

  return sub_25B1316CC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25B132908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B13299C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A3F0, &qword_25B164B18) - 8) + 80);

  return sub_25B131AD0(a1);
}

uint64_t sub_25B132A18(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t static HMHome.home(homeID:fallbackToCurrentHome:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B132B10;

  return sub_25B135748(a1, a2, a3);
}

uint64_t sub_25B132B10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t HMHome.pickableEnergyForecastIntents.getter()
{
  v1[4] = v0;
  v2 = sub_25B161514();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B132CCC, 0, 0);
}

uint64_t sub_25B132CCC()
{
  v1 = type metadata accessor for NHOHomeUserCapabilities();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  receiver = v0[2].receiver;
  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v2[v3], v6, v5);
  v2[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v2[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v2[OBJC_IVAR___NHOHomeUserCapabilities_home] = receiver;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v7 = receiver;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = swift_task_alloc();
  v0[4].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_25B132E54;

  return sub_25B1498F4();
}

uint64_t sub_25B132E54()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B132F50, 0, 0);
}

uint64_t sub_25B132F50()
{
  if (sub_25B14B444())
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    type metadata accessor for EnergyForecastIntent();
    v5 = [v4 uniqueIdentifier];
    sub_25B161504();

    sub_25B1614F4();
    (*(v2 + 8))(v1, v3);
    v6 = [v4 name];
    sub_25B161B34();

    v7 = EnergyForecastIntent.__allocating_init(homeIdentifier:homeName:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25B163810;
    *(v8 + 32) = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 56);

  v10 = *(v0 + 8);

  return v10(v8);
}

uint64_t HMHome.pickableElectricityUsageIntents.getter()
{
  v1[4] = v0;
  v2 = sub_25B161514();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B133184, 0, 0);
}

uint64_t sub_25B133184()
{
  v1 = type metadata accessor for NHOHomeUserCapabilities();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  receiver = v0[2].receiver;
  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v2[v3], v6, v5);
  v2[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v2[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v2[OBJC_IVAR___NHOHomeUserCapabilities_home] = receiver;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v7 = receiver;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = swift_task_alloc();
  v0[4].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_25B13330C;

  return sub_25B1498F4();
}

uint64_t sub_25B13330C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B133408, 0, 0);
}

uint64_t sub_25B133408()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) & 1) != 0 || (sub_25B1494D8())
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    type metadata accessor for ElectricityUsageIntent();
    v6 = [v5 uniqueIdentifier];
    sub_25B161504();

    sub_25B1614F4();
    (*(v3 + 8))(v2, v4);
    v7 = [v5 name];
    sub_25B161B34();

    v8 = ElectricityUsageIntent.__allocating_init(homeIdentifier:homeName:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25B163810;
    *(v9 + 32) = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t HMHome.pickableElectricityRatesIntents.getter()
{
  v1[4] = v0;
  v2 = sub_25B161514();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B133660, 0, 0);
}

uint64_t sub_25B133660()
{
  v1 = type metadata accessor for NHOHomeUserCapabilities();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  if (qword_27FA39AF8 != -1)
  {
    swift_once();
  }

  receiver = v0[2].receiver;
  v5 = sub_25B161A14();
  v6 = __swift_project_value_buffer(v5, qword_27FA3A070);
  (*(*(v5 - 8) + 16))(&v2[v3], v6, v5);
  v2[OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded] = 0;
  v2[OBJC_IVAR___NHOHomeUserCapabilities_hasMockData] = 0;
  *&v2[OBJC_IVAR___NHOHomeUserCapabilities_home] = receiver;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v7 = receiver;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = swift_task_alloc();
  v0[4].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_25B1337E8;

  return sub_25B1498F4();
}

uint64_t sub_25B1337E8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B1338E4, 0, 0);
}

uint64_t sub_25B1338E4()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || (*(v1 + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) & 1) != 0 || (sub_25B1494D8())
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    type metadata accessor for ElectricityRatesIntent();
    v6 = [v5 uniqueIdentifier];
    sub_25B161504();

    sub_25B1614F4();
    (*(v3 + 8))(v2, v4);
    v7 = [v5 name];
    sub_25B161B34();

    v8 = ElectricityRatesIntent.__allocating_init(homeIdentifier:homeName:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39F40, &qword_25B163A38);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25B163810;
    *(v9 + 32) = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t HMHome.actionSetsWithActions()()
{
  v1 = [v0 actionSets];
  sub_25B132284(0, &qword_27FA3A460, 0x277CD1800);
  v2 = sub_25B161C64();

  v14 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 actions];
      sub_25B132284(0, &qword_27FA39F60, 0x277CD17F8);
      sub_25B12171C();
      v9 = sub_25B161D04();

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = sub_25B161E54();
      }

      else
      {
        v10 = *(v9 + 16);
      }

      if (v10 <= 0)
      {
      }

      else
      {
        sub_25B161EE4();
        v11 = *(v14 + 16);
        sub_25B161F04();
        sub_25B161F14();
        sub_25B161EF4();
      }

      ++v4;
      if (v7 == i)
      {
        v12 = v14;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  return v12;
}

uint64_t HMHome.pickableActionSetIntents.getter()
{
  v1 = sub_25B161414();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25B161514();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v64);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v8;
  v65 = v0;
  v9 = HMHome.actionSetsWithActions()();
  v10 = v9;
  v84 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v12 = 0;
    v60 = v10 & 0xC000000000000001;
    v59 = v10 & 0xFFFFFFFFFFFFFF8;
    v56 = (v4 + 8);
    v58 = v10;
    v57 = i;
    while (1)
    {
      if (v60)
      {
        v13 = MEMORY[0x25F862410](v12, v10);
      }

      else
      {
        if (v12 >= *(v59 + 16))
        {
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v76 = v12;
      v78 = v12 + 1;
      v15 = v65;
      v16 = [v65 uniqueIdentifier];
      v17 = v62;
      sub_25B161504();

      v79 = sub_25B1614F4();
      v19 = v18;
      v20 = *v56;
      v21 = v64;
      (*v56)(v17, v64);
      v22 = [v15 name];
      v80 = sub_25B161B34();
      v24 = v23;

      v25 = [v14 uniqueIdentifier];
      v26 = v63;
      sub_25B161504();

      v73 = sub_25B1614F4();
      v70 = v27;
      v20(v26, v21);
      v28 = [v14 name];
      v72 = sub_25B161B34();
      v30 = v29;

      v71 = HMActionSet.iconSymbolName.getter();
      v67 = v31;
      HMActionSet.iconTintColor.getter();
      v32 = Color.toHexString()();
      object = v32._object;
      countAndFlagsBits = v32._countAndFlagsBits;

      v33 = [objc_allocWithZone(type metadata accessor for NHOActionSetIntent()) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA39C60, &qword_25B1645A0);
      v77 = v14;
      v34 = v33;
      v68 = v19;
      sub_25B161264();
      v69 = v24;
      sub_25B161264();
      sub_25B1613E4();
      v35 = sub_25B161124();
      sub_25B1613E4();
      v36 = sub_25B161124();
      v81 = v79;
      v82 = v19;
      sub_25B161104();
      v81 = v80;
      v82 = v24;
      sub_25B161104();
      v37 = *&v34[OBJC_IVAR___NHOActionSetIntent__home];
      v81 = v35;
      v82 = v36;
      sub_25B161274();
      sub_25B161154();

      v38 = v70;
      sub_25B161264();
      v39 = v30;
      v66 = v30;
      sub_25B161264();
      v40 = v67;
      sub_25B161264();
      sub_25B1613E4();
      v4 = sub_25B161124();
      sub_25B1613E4();
      v41 = sub_25B161124();
      sub_25B1613E4();
      v42 = sub_25B161124();
      v43 = v73;
      v81 = v73;
      v82 = v38;
      sub_25B161104();
      v44 = v72;
      v81 = v72;
      v82 = v39;
      sub_25B161104();
      v45 = v71;
      v81 = v71;
      v82 = v40;
      sub_25B161104();
      v46 = *&v34[OBJC_IVAR___NHOActionSetIntent__accessoriesAndScenes];
      v81 = v4;
      v82 = v41;
      v83 = v42;
      sub_25B161274();
      sub_25B161154();

      v47 = *&v34[OBJC_IVAR___NHOActionSetIntent__homeID];
      v81 = v79;
      v82 = v68;
      sub_25B161274();
      sub_25B161154();

      v48 = *&v34[OBJC_IVAR___NHOActionSetIntent__homeName];
      v81 = v80;
      v82 = v69;
      sub_25B161274();
      sub_25B161154();

      v49 = *&v34[OBJC_IVAR___NHOActionSetIntent__actionSetID];
      v81 = v43;
      v82 = v38;
      sub_25B161274();
      sub_25B161154();

      v50 = *&v34[OBJC_IVAR___NHOActionSetIntent__actionSetName];
      v81 = v44;
      v82 = v66;
      sub_25B161274();
      sub_25B161154();

      v51 = *&v34[OBJC_IVAR___NHOActionSetIntent__icon];
      v81 = v45;
      v82 = v40;
      sub_25B161274();
      sub_25B161154();

      v52 = *&v34[OBJC_IVAR___NHOActionSetIntent__iconTintColor];
      v81 = countAndFlagsBits;
      v82 = object;
      sub_25B161274();
      sub_25B161154();

      v53 = *&v34[OBJC_IVAR___NHOActionSetIntent__useHomeKitRecommendations];
      LOBYTE(v81) = 0;
      sub_25B161274();
      sub_25B161154();

      MEMORY[0x25F862190]();
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25B161C84();
      }

      sub_25B161CA4();
      v12 = v76 + 1;
      v10 = v58;
      if (v78 == v57)
      {
        v54 = v84;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_17:

  return v54;
}

uint64_t HMHome.pickableAccessoryIntents(forRoom:)(void *a1)
{
  v59 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v1 = [a1 accessories];
  sub_25B132284(0, &qword_27FA3A468, 0x277CD1650);
  v2 = sub_25B161C64();

  if (v2 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B161E54())
  {
    v4 = 0;
    v48 = v2 & 0xC000000000000001;
    v41 = v2 & 0xFFFFFFFFFFFFFF8;
    v40 = v2 + 32;
    v42 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
    v44 = i;
    v45 = v2;
    while (1)
    {
      if (v48)
      {
        v5 = MEMORY[0x25F862410](v4, v2);
      }

      else
      {
        if (v4 >= *(v41 + 16))
        {
          goto LABEL_56;
        }

        v5 = *(v40 + 8 * v4);
      }

      v6 = v5;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v8 = [v5 home];
      if (v8)
      {
        v50 = v4;
        v9 = v8;
        v10 = [v8 serviceGroups];

        sub_25B132284(0, &qword_27FA3A470, 0x277CD1D98);
        v11 = sub_25B161C64();

        v12 = [v6 services];
        v56 = sub_25B132284(0, &qword_27FA39E58, 0x277CD1D90);
        v2 = sub_25B161C64();

        if (v2 >> 62)
        {
          v13 = sub_25B161E54();
          if (v13)
          {
LABEL_14:
            v55 = v11 & 0xFFFFFFFFFFFFFF8;
            if (v11 >> 62)
            {
              v57 = sub_25B161E54();
            }

            else
            {
              v57 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v14 = 0;
            v52 = v6;
            v53 = v2 & 0xC000000000000001;
            v46 = v2 + 32;
            v47 = v2 & 0xFFFFFFFFFFFFFF8;
            v51 = v2;
            v49 = v13;
            while (1)
            {
              if (v53)
              {
                v15 = MEMORY[0x25F862410](v14, v2);
              }

              else
              {
                if (v14 >= *(v47 + 16))
                {
                  goto LABEL_55;
                }

                v15 = *(v46 + 8 * v14);
              }

              v16 = v14;
              v17 = v15;
              v54 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              if (v57)
              {
                break;
              }

LABEL_17:

              v14 = v54;
              v2 = v51;
              v6 = v52;
              if (v54 == v49)
              {
                goto LABEL_44;
              }
            }

            v18 = 0;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x25F862410](v18, v11);
              }

              else
              {
                if (v18 >= *(v55 + 16))
                {
                  goto LABEL_52;
                }

                v19 = *(v11 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              v22 = [v19 services];
              v23 = sub_25B161C64();

              v58 = v17;
              MEMORY[0x28223BE20](v24);
              v39 = &v58;
              v2 = sub_25B130E80(sub_25B1361EC, v38, v23);

              if (v2)
              {
                break;
              }

              ++v18;
              if (v21 == v57)
              {
                goto LABEL_17;
              }
            }

            v58 = v20;
            MEMORY[0x28223BE20](v25);
            v39 = &v58;
            if (sub_25B130E80(sub_25B136218, v38, v43))
            {

              i = v44;
              v2 = v45;
LABEL_41:
              v4 = v50;
              goto LABEL_5;
            }

            v26 = v20;
            MEMORY[0x25F862190]();
            i = v44;
            v2 = v45;
            v4 = v50;
            v27 = v52;
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v34 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_25B161C84();
              v4 = v50;
            }

            sub_25B161CA4();
            v43 = v59;
            v28 = sub_25B1349DC(v26, HMServiceGroup.widgetSupportedServiceKind(), HMServiceGroup.primaryService());
            if (v28)
            {
              v29 = v28;
              MEMORY[0x25F862190]();
              if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v35 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_25B161C84();
              }

              sub_25B161CA4();

              v42 = v60;
              goto LABEL_41;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_14;
          }
        }

LABEL_44:

        i = v44;
        v2 = v45;
        v4 = v50;
      }

      v30 = sub_25B1349DC(v6, HMAccessory.widgetSupportedServiceKind(), HMAccessory.primaryService());
      if (v30)
      {
        v31 = v30;
        MEMORY[0x25F862190]();
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v4;
          v33 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25B161C84();
          v4 = v32;
        }

        sub_25B161CA4();

        v42 = v60;
      }

      else
      {
      }

LABEL_5:
      if (v4 == i)
      {

        v36 = v42;
        goto LABEL_59;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_59:

  return v36;
}