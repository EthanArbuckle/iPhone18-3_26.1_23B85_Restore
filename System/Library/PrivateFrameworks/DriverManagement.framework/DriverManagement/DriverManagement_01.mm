void sub_21C576678(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_21C57CA6C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_21C57AB00(v4);
  *a1 = v2;
}

void sub_21C5766F0(uint64_t a1, uint64_t a2)
{
  v159[3] = *MEMORY[0x277D85DE8];
  v148 = type metadata accessor for SettingsApplicationRecord();
  v4 = *(*(v148 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v148);
  v152 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v136 - v7;
  v157 = type metadata accessor for DriverKitDriverApp();
  v9 = *(v157 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v157);
  v150 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v149 = (&v136 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v153 = (&v136 - v16);
  MEMORY[0x28223BE20](v15);
  v154 = &v136 - v17;
  v18 = type metadata accessor for DriverKitDriverSource();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v22 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v24 = &v136 - v23;
  v25 = type metadata accessor for DriverKitDriver();
  v26 = *(*(v25 - 1) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v32 = (&v136 - v31);
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16) || !v33 || a1 == a2)
  {
LABEL_156:
    v135 = *MEMORY[0x277D85DE8];
    return;
  }

  v147 = v21;
  v142 = v8;
  v141 = 0;
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *(v30 + 72);
  v144 = &v136 - v31;
  v145 = v37;
  v151 = (v9 + 48);
  v143 = v24;
  v146 = v25;
  while (1)
  {
    v155 = v35;
    sub_21C57D47C(v35, v32, type metadata accessor for DriverKitDriver);
    sub_21C57D47C(v36, v29, type metadata accessor for DriverKitDriver);
    v38 = *v32 == *v29 && v32[1] == v29[1];
    if (!v38 && (sub_21C5824AC() & 1) == 0)
    {
      goto LABEL_155;
    }

    v39 = v25[5];
    v40 = *(v156 + 48);
    sub_21C57D47C(v32 + v39, v24, type metadata accessor for DriverKitDriverSource);
    v41 = v29 + v39;
    v42 = v151;
    sub_21C57D47C(v41, &v24[v40], type metadata accessor for DriverKitDriverSource);
    v43 = *v42;
    v44 = v157;
    if ((*v42)(v24, 1, v157) == 1)
    {
      v45 = v43(&v24[v40], 1, v44);
      v25 = v146;
      if (v45 != 1)
      {
        goto LABEL_146;
      }

      goto LABEL_131;
    }

    v46 = v147;
    sub_21C57D47C(v24, v147, type metadata accessor for DriverKitDriverSource);
    if (v43(&v24[v40], 1, v44) == 1)
    {
      sub_21C57D4E4(v46, type metadata accessor for DriverKitDriverApp);
      v32 = v144;
LABEL_146:
      sub_21C57D5B4(v24, &qword_27CDDE840, &unk_21C582F70);
LABEL_155:
      sub_21C57D4E4(v29, type metadata accessor for DriverKitDriver);
      sub_21C57D4E4(v32, type metadata accessor for DriverKitDriver);
      goto LABEL_156;
    }

    v47 = &v24[v40];
    v48 = v154;
    sub_21C57D544(v47, v154, type metadata accessor for DriverKitDriverApp);
    v49 = v153;
    sub_21C57D47C(v46, v153, type metadata accessor for DriverKitDriverApp);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = *v49;
      v51 = v49[1];
      v52 = v149;
      sub_21C57D47C(v48, v149, type metadata accessor for DriverKitDriverApp);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = *v52;
        v54 = v52[1];
        v55 = v51 >> 62;
        v56 = v54 >> 62;
        v24 = v143;
        if (v51 >> 62 == 3)
        {
          v57 = 0;
          v25 = v146;
          v32 = v144;
          if (!v50 && v51 == 0xC000000000000000 && v54 >> 62 == 3)
          {
            v57 = 0;
            if (!v53 && v54 == 0xC000000000000000)
            {
              sub_21C567950(0, 0xC000000000000000);
              v58 = 0;
              v59 = 0xC000000000000000;
              goto LABEL_73;
            }
          }
        }

        else
        {
          v25 = v146;
          v32 = v144;
          if (v55 > 1)
          {
            if (v55 != 2)
            {
              v57 = 0;
              if (v56 <= 1)
              {
LABEL_63:
                if (v56)
                {
                  LODWORD(v79) = HIDWORD(v53) - v53;
                  if (__OFSUB__(HIDWORD(v53), v53))
                  {
                    goto LABEL_159;
                  }

                  v79 = v79;
                }

                else
                {
                  v79 = BYTE6(v54);
                }

                goto LABEL_67;
              }

              goto LABEL_37;
            }

            v84 = *(v50 + 16);
            v83 = *(v50 + 24);
            v78 = __OFSUB__(v83, v84);
            v57 = v83 - v84;
            if (v78)
            {
              goto LABEL_162;
            }
          }

          else
          {
            if (!v55)
            {
              v57 = BYTE6(v51);
              if (v56 <= 1)
              {
                goto LABEL_63;
              }

LABEL_37:
              if (v56 == 2)
              {
                v77 = *(v53 + 16);
                v76 = *(v53 + 24);
                v78 = __OFSUB__(v76, v77);
                v79 = v76 - v77;
                if (v78)
                {
                  goto LABEL_157;
                }

LABEL_67:
                if (v57 == v79)
                {
                  if (v57 < 1)
                  {
                    goto LABEL_72;
                  }

                  v140 = v50;
                  if (v55 > 1)
                  {
                    if (v55 != 2)
                    {
                      memset(v159, 0, 14);
                      goto LABEL_105;
                    }

                    v138 = v53;
                    v139 = v54;
                    v89 = *(v140 + 16);
                    v137 = *(v140 + 24);
                    v90 = sub_21C581DDC();
                    if (v90)
                    {
                      v91 = v90;
                      v92 = sub_21C581DFC();
                      if (__OFSUB__(v89, v92))
                      {
                        goto LABEL_168;
                      }

                      v136 = v89 - v92 + v91;
                    }

                    else
                    {
                      v136 = 0;
                    }

                    if (__OFSUB__(v137, v89))
                    {
                      goto LABEL_166;
                    }

                    sub_21C581DEC();
                    v113 = v136;
                  }

                  else
                  {
                    if (!v55)
                    {
                      v159[0] = v50;
                      LOWORD(v159[1]) = v51;
                      BYTE2(v159[1]) = BYTE2(v51);
                      BYTE3(v159[1]) = BYTE3(v51);
                      BYTE4(v159[1]) = BYTE4(v51);
                      BYTE5(v159[1]) = BYTE5(v51);
LABEL_105:
                      v104 = v53;
                      v105 = v141;
                      sub_21C56D278(v159, v53, v54, &v158);
                      v141 = v105;
                      if (v105)
                      {
                        break;
                      }

                      sub_21C567950(v104, v54);
                      sub_21C567950(v140, v51);
                      v106 = v158;
                      sub_21C57D4E4(v154, type metadata accessor for DriverKitDriverApp);
LABEL_124:
                      v118 = v147;
                      goto LABEL_130;
                    }

                    v138 = v53;
                    v139 = v54;
                    v99 = v50;
                    v137 = (v50 >> 32) - v50;
                    if (v50 >> 32 < v50)
                    {
                      goto LABEL_165;
                    }

                    v100 = sub_21C581DDC();
                    if (v100)
                    {
                      v101 = v100;
                      v102 = sub_21C581DFC();
                      if (__OFSUB__(v99, v102))
                      {
                        goto LABEL_171;
                      }

                      v103 = v99 - v102 + v101;
                    }

                    else
                    {
                      v103 = 0;
                    }

                    sub_21C581DEC();
                    v113 = v103;
                  }

                  v115 = v138;
                  v116 = v139;
                  v117 = v141;
                  sub_21C56D278(v113, v138, v139, v159);
                  v141 = v117;
                  if (v117)
                  {
                    break;
                  }

                  sub_21C567950(v140, v51);
                  sub_21C567950(v115, v116);
                  sub_21C57D4E4(v154, type metadata accessor for DriverKitDriverApp);
                  v106 = v159[0];
                  goto LABEL_124;
                }

LABEL_150:
                sub_21C567950(v53, v54);
                sub_21C567950(v50, v51);
                v133 = type metadata accessor for DriverKitDriverApp;
                v134 = v48;
                goto LABEL_152;
              }

              if (v57)
              {
                goto LABEL_150;
              }

LABEL_72:
              sub_21C567950(v53, v54);
              v58 = v50;
              v59 = v51;
LABEL_73:
              sub_21C567950(v58, v59);
              v87 = type metadata accessor for DriverKitDriverApp;
              v88 = v48;
LABEL_91:
              sub_21C57D4E4(v88, v87);
              sub_21C57D4E4(v147, type metadata accessor for DriverKitDriverApp);
              goto LABEL_131;
            }

            LODWORD(v57) = HIDWORD(v50) - v50;
            if (__OFSUB__(HIDWORD(v50), v50))
            {
              goto LABEL_161;
            }

            v57 = v57;
          }
        }

        if (v56 <= 1)
        {
          goto LABEL_63;
        }

        goto LABEL_37;
      }

      sub_21C57D4E4(v48, type metadata accessor for DriverKitDriverApp);
      sub_21C567950(v50, v51);
      v132 = v52;
      v131 = type metadata accessor for DriverKitDriverApp;
LABEL_149:
      sub_21C57D4E4(v132, v131);
      v24 = v143;
      v32 = v144;
      goto LABEL_153;
    }

    v60 = v49;
    v61 = v142;
    sub_21C57D544(v60, v142, type metadata accessor for SettingsApplicationRecord);
    v62 = v48;
    v63 = v150;
    sub_21C57D47C(v62, v150, type metadata accessor for DriverKitDriverApp);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C57D4E4(v154, type metadata accessor for DriverKitDriverApp);
      sub_21C57D4E4(v63, type metadata accessor for DriverKitDriverApp);
      v131 = type metadata accessor for SettingsApplicationRecord;
      v132 = v61;
      goto LABEL_149;
    }

    v64 = v63;
    v65 = v152;
    sub_21C57D544(v64, v152, type metadata accessor for SettingsApplicationRecord);
    v66 = *(v148 + 32);
    v67 = *(v61 + v66);
    v68 = *(v61 + v66 + 8);
    v69 = (v65 + v66);
    v70 = *v69;
    v71 = v69[1];
    v72 = v68 >> 62;
    v73 = v71 >> 62;
    v24 = v143;
    if (v68 >> 62 == 3)
    {
      v74 = 0;
      v75 = v154;
      v25 = v146;
      v32 = v144;
      if (!v67 && v68 == 0xC000000000000000 && v71 >> 62 == 3)
      {
        v74 = 0;
        if (!v70 && v71 == 0xC000000000000000)
        {
          goto LABEL_90;
        }
      }

LABEL_80:
      if (v73 <= 1)
      {
        goto LABEL_81;
      }

      goto LABEL_44;
    }

    v75 = v154;
    v25 = v146;
    v32 = v144;
    if (v72 <= 1)
    {
      if (!v72)
      {
        v74 = BYTE6(v68);
        if (v73 <= 1)
        {
          goto LABEL_81;
        }

        goto LABEL_44;
      }

      LODWORD(v74) = HIDWORD(v67) - v67;
      if (__OFSUB__(HIDWORD(v67), v67))
      {
        goto LABEL_163;
      }

      v74 = v74;
      goto LABEL_80;
    }

    if (v72 == 2)
    {
      v86 = *(v67 + 16);
      v85 = *(v67 + 24);
      v78 = __OFSUB__(v85, v86);
      v74 = v85 - v86;
      if (v78)
      {
        goto LABEL_160;
      }

      goto LABEL_80;
    }

    v74 = 0;
    if (v73 <= 1)
    {
LABEL_81:
      if (v73)
      {
        LODWORD(v82) = HIDWORD(v70) - v70;
        if (__OFSUB__(HIDWORD(v70), v70))
        {
          goto LABEL_158;
        }

        v82 = v82;
      }

      else
      {
        v82 = BYTE6(v71);
      }

      goto LABEL_85;
    }

LABEL_44:
    if (v73 != 2)
    {
      if (v74)
      {
        goto LABEL_151;
      }

LABEL_90:
      sub_21C57D4E4(v75, type metadata accessor for DriverKitDriverApp);
      sub_21C57D4E4(v152, type metadata accessor for SettingsApplicationRecord);
      v88 = v142;
      v87 = type metadata accessor for SettingsApplicationRecord;
      goto LABEL_91;
    }

    v81 = *(v70 + 16);
    v80 = *(v70 + 24);
    v78 = __OFSUB__(v80, v81);
    v82 = v80 - v81;
    if (v78)
    {
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
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
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
    }

LABEL_85:
    if (v74 != v82)
    {
LABEL_151:
      sub_21C57D4E4(v75, type metadata accessor for DriverKitDriverApp);
      sub_21C57D4E4(v152, type metadata accessor for SettingsApplicationRecord);
      v134 = v142;
      v133 = type metadata accessor for SettingsApplicationRecord;
LABEL_152:
      sub_21C57D4E4(v134, v133);
LABEL_153:
      sub_21C57D4E4(v147, type metadata accessor for DriverKitDriverApp);
LABEL_154:
      sub_21C57D4E4(v24, type metadata accessor for DriverKitDriverSource);
      goto LABEL_155;
    }

    if (v74 < 1)
    {
      goto LABEL_90;
    }

    if (v72 > 1)
    {
      if (v72 != 2)
      {
        memset(v159, 0, 14);
        goto LABEL_112;
      }

      v140 = v70;
      v94 = *(v67 + 16);
      v93 = *(v67 + 24);
      v139 = v94;
      v138 = v93;
      v95 = sub_21C581DDC();
      if (v95)
      {
        v96 = v95;
        v97 = sub_21C581DFC();
        v98 = v139;
        if (__OFSUB__(v139, v97))
        {
          goto LABEL_169;
        }

        v137 = v139 - v97 + v96;
      }

      else
      {
        v137 = 0;
        v98 = v139;
      }

      if (__OFSUB__(v138, v98))
      {
        goto LABEL_167;
      }

      sub_21C581DEC();
      v114 = v137;
    }

    else
    {
      if (!v72)
      {
        v159[0] = v67;
        LOWORD(v159[1]) = v68;
        BYTE2(v159[1]) = BYTE2(v68);
        BYTE3(v159[1]) = BYTE3(v68);
        BYTE4(v159[1]) = BYTE4(v68);
        BYTE5(v159[1]) = BYTE5(v68);
LABEL_112:
        v112 = v141;
        sub_21C56D278(v159, v70, v71, &v158);
        v141 = v112;
        if (v112)
        {
          break;
        }

        v106 = v158;
        sub_21C57D4E4(v154, type metadata accessor for DriverKitDriverApp);
        goto LABEL_129;
      }

      v140 = v70;
      v107 = v67;
      v108 = v67 >> 32;
      v139 = v108 - v107;
      if (v108 < v107)
      {
        goto LABEL_164;
      }

      v109 = sub_21C581DDC();
      if (v109)
      {
        v138 = v109;
        v110 = sub_21C581DFC();
        if (__OFSUB__(v107, v110))
        {
          goto LABEL_170;
        }

        v111 = v107 - v110 + v138;
      }

      else
      {
        v111 = 0;
      }

      sub_21C581DEC();
      v114 = v111;
    }

    v119 = v141;
    sub_21C56D278(v114, v140, v71, v159);
    v141 = v119;
    if (v119)
    {
      break;
    }

    sub_21C57D4E4(v154, type metadata accessor for DriverKitDriverApp);
    v106 = v159[0];
LABEL_129:
    sub_21C57D4E4(v152, type metadata accessor for SettingsApplicationRecord);
    sub_21C57D4E4(v142, type metadata accessor for SettingsApplicationRecord);
    v118 = v147;
LABEL_130:
    sub_21C57D4E4(v118, type metadata accessor for DriverKitDriverApp);
    if ((v106 & 1) == 0)
    {
      goto LABEL_154;
    }

LABEL_131:
    sub_21C57D4E4(v24, type metadata accessor for DriverKitDriverSource);
    v120 = v25[6];
    v121 = (v32 + v120);
    v122 = *(v32 + v120 + 8);
    v123 = (v29 + v120);
    v124 = v123[1];
    if (v122)
    {
      if (!v124 || (*v121 != *v123 || v122 != v124) && (sub_21C5824AC() & 1) == 0)
      {
        goto LABEL_155;
      }
    }

    else if (v124)
    {
      goto LABEL_155;
    }

    v125 = v25[7];
    v126 = (v32 + v125);
    v127 = *(v32 + v125 + 8);
    v128 = (v29 + v125);
    v129 = v128[1];
    if (!v127)
    {
      if (v129)
      {
        goto LABEL_155;
      }

LABEL_6:
      sub_21C57D4E4(v29, type metadata accessor for DriverKitDriver);
      sub_21C57D4E4(v32, type metadata accessor for DriverKitDriver);
      goto LABEL_7;
    }

    if (!v129)
    {
      goto LABEL_155;
    }

    if (*v126 == *v128 && v127 == v129)
    {
      goto LABEL_6;
    }

    v130 = sub_21C5824AC();
    sub_21C57D4E4(v29, type metadata accessor for DriverKitDriver);
    sub_21C57D4E4(v32, type metadata accessor for DriverKitDriver);
    if ((v130 & 1) == 0)
    {
      goto LABEL_156;
    }

LABEL_7:
    v36 += v145;
    v35 = v155 + v145;
    if (!--v33)
    {
      goto LABEL_156;
    }
  }

  __break(1u);
}

void sub_21C5777E8(void *a1, char a2, char *a3)
{
  v6 = sub_21C581FEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21C58200C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_21C5821CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21C582F80;
    aBlock[0] = a1;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
    v19 = sub_21C58208C();
    v21 = v20;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21C57D07C();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
    v22 = sub_21C58224C();
    sub_21C581F2C();
  }

  else
  {
    v44 = v14;
    v45 = v13;
    v46 = v7;

    sub_21C5821BC();
    sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
    v23 = sub_21C58224C();
    v24 = MEMORY[0x277D84F90];
    sub_21C581F2C();

    v25 = sub_21C5821BC();
    v26 = sub_21C58224C();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v25;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136315138;
      v30 = ApprovalSettingsState.debugDescription.getter(a1);
      v32 = a1;
      v33 = v16;
      v34 = v10;
      v35 = v6;
      v36 = a3;
      v37 = sub_21C57A18C(v30, v31, aBlock);
      v24 = MEMORY[0x277D84F90];

      *(v27 + 4) = v37;
      a3 = v36;
      v6 = v35;
      v10 = v34;
      v16 = v33;
      a1 = v32;
      _os_log_impl(&dword_21C564000, v26, v43, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x21CF0CA30](v29, -1, -1);
      MEMORY[0x21CF0CA30](v27, -1, -1);
    }

    v38 = *&a3[OBJC_IVAR____SwiftDriverManager_launchServicesQueue];
    v39 = swift_allocObject();
    *(v39 + 16) = a3;
    *(v39 + 24) = a1;
    aBlock[4] = sub_21C57D3A8;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C57D650;
    aBlock[3] = &block_descriptor_31;
    v40 = _Block_copy(aBlock);
    v41 = a3;
    sub_21C581FFC();
    v47 = v24;
    sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
    sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440);
    sub_21C58228C();
    MEMORY[0x21CF0C180](0, v16, v10, v40);
    _Block_release(v40);
    (*(v46 + 8))(v10, v6);
    (*(v44 + 8))(v16, v45);
  }
}

uint64_t sub_21C577D04(void *a1, uint64_t a2)
{
  v119 = a2;
  v118 = a1;
  v157 = *MEMORY[0x277D85DE8];
  v125 = sub_21C581FEC();
  v124 = *(v125 - 8);
  v2 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_21C58200C();
  v121 = *(v123 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_21C581E8C();
  v6 = *(v133 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v133);
  v140 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for SettingsApplicationRecord();
  v137 = *(v145 - 8);
  v9 = *(v137 + 64);
  v10 = MEMORY[0x28223BE20](v145);
  v139 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v132 = (&v117 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA90, &unk_21C584580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v136 = &v117 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21C57FFA8(MEMORY[0x277D84F90]);
  v138 = [objc_opt_self() enumeratorWithOptions_];
  v17 = [v138 nextObject];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = v17;
  v135 = (v137 + 56);
  v131 = (v6 + 32);
  v127 = xmmword_21C5843E0;
  v147 = xmmword_21C582F80;
  v134 = v16;
LABEL_6:
  v19 = [v18 installSessionIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_21C581EAC();
    v23 = v22;

    v24 = *(v16 + 16);
    if (!*(v24 + 16) || (v25 = sub_21C56D7F8(v21, v23), (v26 & 1) == 0))
    {
      v39 = v136;
      (*v135)(v136, 1, 1, v145);
      sub_21C57D5B4(v39, &qword_27CDDEA90, &unk_21C584580);
      v40 = v18;
      v41 = [v40 bundleIdentifier];
      if (v41)
      {
        v42 = v41;
        v149 = sub_21C58206C();
        v44 = v43;
      }

      else
      {
        v149 = 0;
        v44 = 0;
      }

      v45 = [v40 URL];
      sub_21C581E7C();

      v46 = [v40 uniqueInstallIdentifier];
      if (v46)
      {
        v47 = v46;
        v48 = sub_21C581EAC();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0xF000000000000000;
      }

      v51 = [v40 driverExtensionPaths];
      if (v51)
      {
        v52 = v51;
        v53 = sub_21C58217C();
      }

      else
      {
        v53 = 0;
      }

      sub_21C568474(v21, v23);
      v54 = [v40 localizedName];

      v55 = sub_21C58206C();
      v57 = v56;

      v58 = v132;
      *v132 = v149;
      *(v58 + 8) = v44;
      v59 = v145;
      (*v131)(v58 + *(v145 + 20), v140, v133);
      v60 = (v58 + v59[6]);
      *v60 = v48;
      v60[1] = v50;
      *(v58 + v59[7]) = v53;
      v61 = (v58 + v59[8]);
      *v61 = v21;
      v61[1] = v23;
      v62 = (v58 + v59[9]);
      *v62 = v55;
      v62[1] = v57;
      sub_21C57D544(v58, v139, type metadata accessor for SettingsApplicationRecord);
      v16 = v134;
      v63 = *(v134 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v63;
      *(v16 + 16) = 0x8000000000000000;
      v65 = sub_21C56D7F8(v21, v23);
      v67 = v63[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (!v69)
      {
        v71 = v66;
        if (v63[3] < v70)
        {
          sub_21C57A6C0(v70, isUniquelyReferenced_nonNull_native);
          v65 = sub_21C56D7F8(v21, v23);
          if ((v71 & 1) != (v72 & 1))
          {
            result = sub_21C5824BC();
            __break(1u);
            return result;
          }

LABEL_27:
          v73 = aBlock;
          if ((v71 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_3:
          sub_21C57D418(v139, v73[7] + *(v137 + 72) * v65);
          sub_21C567950(v21, v23);

LABEL_4:
          *(v16 + 16) = v73;

          goto LABEL_5;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v105 = v65;
        sub_21C57C810();
        v65 = v105;
        v73 = aBlock;
        if (v71)
        {
          goto LABEL_3;
        }

LABEL_28:
        v73[(v65 >> 6) + 8] |= 1 << v65;
        v74 = (v73[6] + 16 * v65);
        *v74 = v21;
        v74[1] = v23;
        sub_21C57D544(v139, v73[7] + *(v137 + 72) * v65, type metadata accessor for SettingsApplicationRecord);

        v75 = v73[2];
        v69 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (!v69)
        {
          v73[2] = v76;
          goto LABEL_4;
        }

LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v27 = v137;
    v28 = *(v24 + 56) + *(v137 + 72) * v25;
    v29 = v136;
    sub_21C57D47C(v28, v136, type metadata accessor for SettingsApplicationRecord);
    (*(v27 + 56))(v29, 0, 1, v145);
    sub_21C57D5B4(v29, &qword_27CDDEA90, &unk_21C584580);
    v130 = sub_21C5821CC();
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v30 = swift_allocObject();
    *(v30 + 16) = v127;
    v31 = v18;
    v32 = [v31 description];
    v33 = sub_21C58206C();
    v35 = v34;

    *(v30 + 56) = MEMORY[0x277D837D0];
    v36 = sub_21C57D07C();
    *(v30 + 64) = v36;
    *(v30 + 32) = v33;
    *(v30 + 40) = v35;
    v129 = v30;
    v37 = v23 >> 62;
    v146 = HIDWORD(v21);
    v128 = v36;
    if ((v23 >> 62) > 1)
    {
      if (v37 != 2)
      {
        v81 = MEMORY[0x277D84F90];
        goto LABEL_65;
      }

      v78 = *(v21 + 16);
      v77 = *(v21 + 24);
      v38 = v77 - v78;
      if (__OFSUB__(v77, v78))
      {
        goto LABEL_81;
      }

      if (!v38)
      {
        goto LABEL_38;
      }
    }

    else if (v37)
    {
      v80 = v146 - v21;
      if (__OFSUB__(v146, v21))
      {
        goto LABEL_82;
      }

      v38 = v80;
      if (!v80)
      {
LABEL_38:
        v81 = MEMORY[0x277D84F90];
        v16 = v134;
        goto LABEL_65;
      }
    }

    else
    {
      v38 = BYTE6(v23);
      if (!BYTE6(v23))
      {
        goto LABEL_38;
      }
    }

    v150 = MEMORY[0x277D84F90];
    sub_21C56D4A8(0, v38 & ~(v38 >> 63), 0);
    v144 = v21;
    if (v37)
    {
      if (v37 == 2)
      {
        v79 = *(v21 + 16);
      }

      else
      {
        v79 = v144;
      }
    }

    else
    {
      v79 = 0;
    }

    v148 = v79;
    if (v38 < 0)
    {
      goto LABEL_80;
    }

    v126 = v31;
    v82 = 0;
    v81 = v150;
    v142 = v21 >> 32;
    v143 = BYTE6(v23);
    v141 = &aBlock + v148;
    while (1)
    {
      if (v82 >= v38)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        goto LABEL_71;
      }

      v84 = v148 + v82;
      if (v37 == 2)
      {
        if (v84 < *(v21 + 16))
        {
          goto LABEL_72;
        }

        if (v84 >= *(v21 + 24))
        {
          goto LABEL_75;
        }

        v89 = sub_21C581DDC();
        if (!v89)
        {
          goto LABEL_84;
        }

        v86 = v89;
        v90 = sub_21C581DFC();
        v88 = v84 - v90;
        if (__OFSUB__(v84, v90))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v37 != 1)
        {
          if (v84 >= v143)
          {
            goto LABEL_73;
          }

          LOWORD(aBlock) = v21;
          BYTE2(aBlock) = BYTE2(v21);
          BYTE3(aBlock) = BYTE3(v21);
          BYTE4(aBlock) = v146;
          BYTE5(aBlock) = BYTE5(v21);
          BYTE6(aBlock) = BYTE6(v21);
          HIBYTE(aBlock) = HIBYTE(v21);
          LOWORD(v152) = v23;
          BYTE2(v152) = BYTE2(v23);
          BYTE3(v152) = BYTE3(v23);
          BYTE4(v152) = BYTE4(v23);
          BYTE5(v152) = BYTE5(v23);
          v91 = v141[v82];
          goto LABEL_61;
        }

        if (v84 < v144 || v84 >= v142)
        {
          goto LABEL_74;
        }

        v85 = sub_21C581DDC();
        if (!v85)
        {
          goto LABEL_83;
        }

        v86 = v85;
        v87 = sub_21C581DFC();
        v88 = v84 - v87;
        if (__OFSUB__(v84, v87))
        {
          goto LABEL_76;
        }
      }

      v91 = *(v86 + v88);
LABEL_61:
      v92 = swift_allocObject();
      *(v92 + 16) = v147;
      *(v92 + 56) = MEMORY[0x277D84B78];
      *(v92 + 64) = MEMORY[0x277D84BC0];
      *(v92 + 32) = v91;
      v93 = sub_21C58207C();
      v150 = v81;
      v96 = v81[2];
      v95 = v81[3];
      if (v96 >= v95 >> 1)
      {
        v117 = v93;
        v98 = v94;
        sub_21C56D4A8((v95 > 1), v96 + 1, 1);
        v94 = v98;
        v93 = v117;
        v81 = v150;
      }

      v81[2] = v96 + 1;
      v97 = &v81[2 * v96];
      v97[4] = v93;
      v97[5] = v94;
      ++v82;
      if (v83 == v38)
      {
        v16 = v134;
        v31 = v126;
LABEL_65:
        aBlock = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE848, &qword_21C582F90);
        sub_21C5709BC(&qword_28120D210, &qword_27CDDE848, &qword_21C582F90);
        v99 = sub_21C58204C();
        v101 = v100;

        v102 = v129;
        v103 = v128;
        v129[12] = MEMORY[0x277D837D0];
        v102[13] = v103;
        v102[9] = v99;
        v102[10] = v101;
        sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
        v104 = sub_21C58224C();
        sub_21C581F2C();

        sub_21C567950(v21, v23);
LABEL_5:
        v18 = [v138 nextObject];
        if (!v18)
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_69:
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  v106 = sub_21C58220C();
  v107 = swift_allocObject();
  v108 = v118;
  v109 = v119;
  v107[2] = v118;
  v107[3] = v109;
  v107[4] = v16;
  v155 = sub_21C57D40C;
  v156 = v107;
  aBlock = MEMORY[0x277D85DD0];
  v152 = 1107296256;
  v153 = sub_21C57D650;
  v154 = &block_descriptor_40;
  v110 = _Block_copy(&aBlock);
  v111 = v108;

  v112 = v120;
  sub_21C581FFC();
  aBlock = MEMORY[0x277D84F90];
  sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
  sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440);
  v113 = v122;
  v114 = v125;
  sub_21C58228C();
  MEMORY[0x21CF0C180](0, v112, v113, v110);
  _Block_release(v110);

  (*(v124 + 8))(v113, v114);
  (*(v121 + 8))(v112, v123);

  v115 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21C578BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  sub_21C574FF4(a2, v5);
}

uint64_t sub_21C578C48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t DriverManager.setDriverState(_:approved:)(char *a1, char a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return DriverManager.setDriverState(driverApprovalState:state:)(a1, v2);
}

uint64_t DriverManager.setDriverState(driverApprovalState:state:)(char *a1, int a2)
{
  v37 = a2;
  v3 = sub_21C581EEC();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21C58201C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21C581F5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  v36[1] = sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v17 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v13 + 8))(v16, v12);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  *v11 = sub_21C58220C();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  LOBYTE(v16) = sub_21C58202C();
  result = (*(v8 + 8))(v11, v7);
  if (v16)
  {
    v20 = *&a1[OBJC_IVAR____SwiftDriverApprovalState_driver];
    v19 = *&a1[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
    v21 = *(type metadata accessor for DriverKitDriver() + 20);

    v22 = sub_21C57D6E0();
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    v26 = v37;
    *(v25 + 24) = v37;
    v27 = v38;
    *(v25 + 32) = v38;
    updated = type metadata accessor for ApprovalStateUpdateRequest();
    v29 = *(updated + 48);
    v30 = *(updated + 52);
    v31 = swift_allocObject();
    *(v31 + 16) = v20;
    *(v31 + 24) = v19;
    *(v31 + 32) = v22;
    *(v31 + 40) = v24;
    *(v31 + 48) = v26;
    *(v31 + 56) = sub_21C57D068;
    *(v31 + 64) = v25;
    v32 = a1;
    v33 = v27;
    sub_21C581EDC();
    (*(v39 + 32))(v31 + OBJC_IVAR____TtC16DriverManagement26ApprovalStateUpdateRequest_timestamp, v6, v40);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v31;
    v34 = v32;

    sub_21C581FCC();
    v35 = *&v33[OBJC_IVAR____SwiftDriverManager_client];
    DriverKitDaemonClient.enqueueApprovalStateUpdate(request:)(v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C579200(void *a1, char a2, void *a3, char a4, void *a5)
{
  v10 = sub_21C581FEC();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21C58200C();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  v25 = sub_21C58220C();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2 & 1;
  *(v18 + 33) = a4;
  *(v18 + 40) = a5;
  aBlock[4] = sub_21C57D620;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C57D650;
  aBlock[3] = &block_descriptor_52;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  sub_21C57D634(a1, a2 & 1);
  v21 = a5;

  sub_21C581FFC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
  sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440);
  sub_21C58228C();
  v22 = v25;
  MEMORY[0x21CF0C180](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_21C579524(void *a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  result = sub_21C581FCC();
  if (a3)
  {
    sub_21C5821CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21C5843E0;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_21C58206C();
    v12 = v11;

    v13 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v14 = sub_21C57D07C();
    *(v7 + 64) = v14;
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    if (qword_28120D3B8 != -1)
    {
      swift_once();
    }

    v15 = MEMORY[0x28223BE20](off_28120D3C0);
    v16 = sub_21C56EB88(v15, sub_21C57D654);
    v17 = sub_21C568624(v16);
    v19 = v18;

    if (v19)
    {
      *(v7 + 96) = v13;
      *(v7 + 104) = v14;
      *(v7 + 72) = v17;
      *(v7 + 80) = v19;
      sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
      v20 = sub_21C58224C();
      sub_21C581F2C();

      return sub_21C574284();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *DriverManager.driverApprovalStatesForThirdPartyApp(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v36 = a1;
  v4 = type metadata accessor for SettingsApplicationRecord();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DriverKitDriverApp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for DriverKitDriverSource();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v3 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
  [v33 lock];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  v19 = v42;
  v42 = MEMORY[0x277D84F90];
  v38 = v19;
  if (v19 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21C58238C())
  {
    v21 = 0;
    v40 = v38 & 0xFFFFFFFFFFFFFF8;
    v41 = v38 & 0xC000000000000001;
    v22 = (v9 + 48);
    v39 = v14;
    v14 = v38;
    v34 = v8;
    while (1)
    {
      if (v41)
      {
        v23 = MEMORY[0x21CF0C250](v21, v14);
      }

      else
      {
        if (v21 >= *(v40 + 16))
        {
          goto LABEL_23;
        }

        v23 = *&v14[8 * v21 + 32];
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v9 = OBJC_IVAR____SwiftDriverApprovalState_driver;
      v26 = type metadata accessor for DriverKitDriver();
      sub_21C57D47C(v24 + *(v26 + 20) + v9, v18, type metadata accessor for DriverKitDriverSource);
      if ((*v22)(v18, 1, v8) != 1)
      {
        v27 = v39;
        sub_21C57D544(v18, v39, type metadata accessor for DriverKitDriverApp);
        v9 = v37;
        sub_21C57D47C(v27, v37, type metadata accessor for DriverKitDriverApp);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v28 = v9;
          v9 = type metadata accessor for DriverKitDriverApp;
          sub_21C57D4E4(v27, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v28, type metadata accessor for DriverKitDriverApp);
          v14 = v38;
          goto LABEL_6;
        }

        sub_21C57D544(v9, v7, type metadata accessor for SettingsApplicationRecord);
        v29 = v7[1];
        if (v29)
        {
          v14 = v38;
          if (*v7 == v36 && v29 == v35)
          {
            sub_21C57D4E4(v39, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v7, type metadata accessor for SettingsApplicationRecord);
LABEL_19:
            v9 = &v42;
            sub_21C58233C();
            v30 = *(v42 + 2);
            sub_21C58235C();
            v14 = v38;
            v8 = v34;
            sub_21C58236C();
            sub_21C58234C();
            goto LABEL_6;
          }

          v9 = sub_21C5824AC();
          sub_21C57D4E4(v39, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v7, type metadata accessor for SettingsApplicationRecord);
          if (v9)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_21C57D4E4(v39, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v7, type metadata accessor for SettingsApplicationRecord);
          v14 = v38;
        }
      }

LABEL_6:
      ++v21;
      if (v25 == i)
      {
        v31 = v42;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_26:

  [v33 unlock];
  return v31;
}

uint64_t sub_21C579CD8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_21C581F6C();
  *a1 = result;
  return result;
}

uint64_t sub_21C579D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  *a2 = v5;
  return result;
}

uint64_t sub_21C579D98(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21C581FCC();
}

uint64_t sub_21C579E10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  *a2 = v5;
  return result;
}

uint64_t sub_21C579E90(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21C581FCC();
}

void *sub_21C579F08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA88, &qword_21C584578);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21C579F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAB8, &qword_21C5845F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C57A088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAA0, &qword_21C5845E0);
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

uint64_t sub_21C57A18C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C57A258(v11, 0, 0, 1, a1, a2);
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
    sub_21C57D3B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21C57A258(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21C57A364(a5, a6);
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
    result = sub_21C58232C();
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

uint64_t sub_21C57A364(uint64_t a1, unint64_t a2)
{
  v4 = sub_21C57A3B0(a1, a2);
  sub_21C57A4E0(&unk_282E306A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21C57A3B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_21C579F08(v5, 0);
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

  result = sub_21C58232C();
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
        v10 = sub_21C5820EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C579F08(v10, 0);
        result = sub_21C5822AC();
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

uint64_t sub_21C57A4E0(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21C57A5CC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21C57A5CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA88, &qword_21C584578);
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

uint64_t sub_21C57A6C0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SettingsApplicationRecord();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA98, &qword_21C584590);
  v42 = a2;
  result = sub_21C5823AC();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v26;
      v43 = *(*(v10 + 48) + 16 * v26);
      v29 = *(&v43 + 1);
      if (v42)
      {
        sub_21C57D544(v28, v9, type metadata accessor for SettingsApplicationRecord);
      }

      else
      {
        sub_21C57D47C(v28, v9, type metadata accessor for SettingsApplicationRecord);
        sub_21C568474(v43, v29);
      }

      v30 = *(v13 + 40);
      sub_21C58250C();
      sub_21C581EBC();
      result = sub_21C58253C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v22 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v22 = v43;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v22;
      result = sub_21C57D544(v9, *(v13 + 56) + v27 * v21, type metadata accessor for SettingsApplicationRecord);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_21C57AA44(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_21C58238C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_21C5822FC();
    *v1 = result;
  }

  return result;
}

void sub_21C57AB00(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21C58248C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DriverApprovalState();
        v6 = sub_21C58219C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21C57B294(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C57AC04(0, v2, 1, a1);
  }
}

void sub_21C57AC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = type metadata accessor for SettingsApplicationRecord();
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v57 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE838, &qword_21C582F68);
  v12 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v57 - v13;
  v72 = type metadata accessor for DriverKitDriverApp();
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v72);
  v68 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v57 - v18;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v19 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v21 = &v57 - v20;
  v58 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v70 = (v14 + 48);
    v73 = sub_21C566F98();
    v23 = v22 + 8 * a3 - 8;
    v24 = a1 - a3;
    v67 = v22;
LABEL_7:
    v60 = v23;
    v61 = a3;
    v27 = *(v22 + 8 * a3);
    v59 = v24;
    v28 = v23;
    while (1)
    {
      v29 = *v28;
      v30 = &v27[OBJC_IVAR____SwiftDriverApprovalState_driver];
      v31 = (*v28 + OBJC_IVAR____SwiftDriverApprovalState_driver);
      v32 = *&v27[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
      v78 = *&v27[OBJC_IVAR____SwiftDriverApprovalState_driver];
      v79 = v32;
      v33 = v31[1];
      v76 = *v31;
      v77 = v33;
      v75 = v27;
      v80 = v29;
      v74 = sub_21C58226C();
      v34 = *(type metadata accessor for DriverKitDriver() + 20);
      v35 = *(v71 + 48);
      sub_21C57D47C(&v30[v34], v21, type metadata accessor for DriverKitDriverSource);
      sub_21C57D47C(v31 + v34, &v21[v35], type metadata accessor for DriverKitDriverSource);
      v36 = *v70;
      v37 = v72;
      LODWORD(v29) = (*v70)(v21, 1, v72);
      v38 = v36(&v21[v35], 1, v37);
      if (v29 == 1)
      {
        if (v38 != 1)
        {
          sub_21C57D4E4(&v21[v35], type metadata accessor for DriverKitDriverSource);

          goto LABEL_21;
        }

        v39 = v74;
      }

      else
      {
        v40 = v69;
        if (v38 == 1)
        {
          v25 = type metadata accessor for DriverKitDriverApp;
          v26 = v21;
LABEL_5:
          sub_21C57D4E4(v26, v25);
          v22 = v67;

LABEL_6:
          a3 = v61 + 1;
          v23 = v60 + 8;
          v24 = v59 - 1;
          if (v61 + 1 == v58)
          {
            return;
          }

          goto LABEL_7;
        }

        sub_21C57D544(v21, v69, type metadata accessor for DriverKitDriverApp);
        v41 = v68;
        sub_21C57D544(&v21[v35], v68, type metadata accessor for DriverKitDriverApp);
        v42 = v65;
        v43 = *(v66 + 48);
        sub_21C57D47C(v40, v65, type metadata accessor for DriverKitDriverApp);
        sub_21C57D47C(v41, v42 + v43, type metadata accessor for DriverKitDriverApp);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C57D4E4(v41, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v40, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v42, type metadata accessor for DriverKitDriverApp);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v45 = v42;
          v46 = EnumCaseMultiPayload;
          sub_21C57D4E4(v45 + v43, type metadata accessor for DriverKitDriverApp);

          v22 = v67;
          v39 = v74;
          if (v46 != 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C57D4E4(v41, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v69, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v42 + v43, type metadata accessor for DriverKitDriverApp);
            v25 = type metadata accessor for SettingsApplicationRecord;
            v26 = v42;
            goto LABEL_5;
          }

          v47 = v62;
          sub_21C57D544(v42, v62, type metadata accessor for SettingsApplicationRecord);
          v48 = v63;
          sub_21C57D544(v42 + v43, v63, type metadata accessor for SettingsApplicationRecord);
          v49 = *(v64 + 36);
          v50 = *(v47 + v49 + 8);
          v78 = *(v47 + v49);
          v79 = v50;
          v51 = (v48 + v49);
          v53 = *v51;
          v52 = v51[1];
          v76 = v53;
          v77 = v52;
          v54 = sub_21C58226C();
          sub_21C57D4E4(v48, type metadata accessor for SettingsApplicationRecord);
          sub_21C57D4E4(v47, type metadata accessor for SettingsApplicationRecord);
          sub_21C57D4E4(v68, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v69, type metadata accessor for DriverKitDriverApp);

          v39 = v74;
          if (v54)
          {
            v39 = v54;
          }

          v22 = v67;
        }
      }

      if (v39 != -1)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (!v22)
      {
        __break(1u);
        return;
      }

      v55 = *v28;
      v27 = *(v28 + 8);
      *v28 = v27;
      *(v28 + 8) = v55;
      v28 -= 8;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_21C57B294(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v182 = a4;
  v183 = a1;
  v194 = type metadata accessor for SettingsApplicationRecord();
  v7 = *(*(v194 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v194);
  v193 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v192 = &v177 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v178 = &v177 - v13;
  MEMORY[0x28223BE20](v12);
  v177 = &v177 - v14;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE838, &qword_21C582F68);
  v15 = *(*(v198 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v198);
  v18 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v177 - v19;
  v204 = type metadata accessor for DriverKitDriverApp();
  v21 = *(v204 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v204);
  v25 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v177 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v177 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v177 - v32;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v34 = *(*(v203 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v203);
  v199 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v189 = &v177 - v37;
  v38 = a3[1];
  if (v38 < 1)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_125:
    v41 = *v183;
    if (!*v183)
    {
      goto LABEL_164;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_127:
      v173 = v5;
      v212 = v39;
      v174 = *(v39 + 2);
      if (v174 >= 2)
      {
        while (*a3)
        {
          v175 = *&v39[16 * v174];
          v5 = *&v39[16 * v174 + 24];
          sub_21C57C484((*a3 + 8 * v175), (*a3 + 8 * *&v39[16 * v174 + 16]), (*a3 + 8 * v5), v41);
          if (v173)
          {
            goto LABEL_135;
          }

          if (v5 < v175)
          {
            goto LABEL_151;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21C57C7FC(v39);
          }

          if (v174 - 2 >= *(v39 + 2))
          {
            goto LABEL_152;
          }

          v176 = &v39[16 * v174];
          *v176 = v175;
          *(v176 + 1) = v5;
          v212 = v39;
          sub_21C57C770(v174 - 1);
          v39 = v212;
          v174 = *(v212 + 2);
          if (v174 <= 1)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_162;
      }

LABEL_135:

      return;
    }

LABEL_158:
    v39 = sub_21C57C7FC(v39);
    goto LABEL_127;
  }

  v184 = v31;
  v181 = v20;
  v202 = (v21 + 48);
  v39 = MEMORY[0x277D84F90];
  v196 = v25;
  v197 = v18;
  v200 = v28;
  v186 = v33;
  v40 = 0;
  v179 = a3;
  while (1)
  {
    v41 = v40++;
    v188 = v39;
    v185 = v41;
    if (v40 >= v38)
    {
      v89 = v182;
      v50 = v199;
    }

    else
    {
      v180 = v5;
      v42 = v41;
      v43 = *a3;
      v44 = *(*a3 + 8 * v40);
      v45 = *(*a3 + 8 * v41);
      v46 = OBJC_IVAR____SwiftDriverApprovalState_driver;
      v205 = v38;
      v47 = v44;
      v48 = v45;
      LODWORD(v201) = _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(&v44[v46], &v45[v46]);

      v40 = v42 + 2;
      if (v42 + 2 < v205)
      {
        v191 = sub_21C566F98();
        v49 = (v43 + 8 * v42 + 16);
        v50 = v199;
        while (1)
        {
          v195 = v40;
          v54 = *(v49 - 1);
          v53 = *v49;
          v55 = (*v49 + OBJC_IVAR____SwiftDriverApprovalState_driver);
          v56 = &v54[OBJC_IVAR____SwiftDriverApprovalState_driver];
          v57 = v55[1];
          v210 = *v55;
          v211 = v57;
          v58 = *&v54[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
          v208 = *&v54[OBJC_IVAR____SwiftDriverApprovalState_driver];
          v209 = v58;
          v59 = v53;
          v207 = v54;
          v206 = sub_21C58226C();
          v60 = *(type metadata accessor for DriverKitDriver() + 20);
          v61 = *(v203 + 48);
          v62 = v189;
          sub_21C57D47C(v55 + v60, v189, type metadata accessor for DriverKitDriverSource);
          sub_21C57D47C(&v56[v60], v62 + v61, type metadata accessor for DriverKitDriverSource);
          v63 = *v202;
          v64 = v204;
          LODWORD(v54) = (*v202)(v62, 1, v204);
          v65 = v63(v62 + v61, 1, v64);
          if (v54 == 1)
          {
            if (v65 != 1)
            {
              sub_21C57D4E4(v189 + v61, type metadata accessor for DriverKitDriverSource);

              v39 = v188;
              v40 = v195;
LABEL_13:
              v52 = v205;
              if ((v201 & 1) == 0)
              {
                v5 = v180;
                a3 = v179;
                v89 = v182;
                v41 = v185;
                goto LABEL_39;
              }

              goto LABEL_9;
            }

            v39 = v188;
            v40 = v195;
            v51 = v206;
            goto LABEL_8;
          }

          v66 = v186;
          if (v65 == 1)
          {
            sub_21C57D4E4(v189, type metadata accessor for DriverKitDriverApp);

            v39 = v188;
            v50 = v199;
          }

          else
          {
            v67 = v189;
            sub_21C57D544(v189, v186, type metadata accessor for DriverKitDriverApp);
            v68 = v184;
            sub_21C57D544(v67 + v61, v184, type metadata accessor for DriverKitDriverApp);
            v69 = *(v198 + 48);
            v70 = v181;
            sub_21C57D47C(v66, v181, type metadata accessor for DriverKitDriverApp);
            sub_21C57D47C(v68, v70 + v69, type metadata accessor for DriverKitDriverApp);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_21C57D4E4(v68, type metadata accessor for DriverKitDriverApp);
              sub_21C57D4E4(v66, type metadata accessor for DriverKitDriverApp);
              sub_21C57D4E4(v70, type metadata accessor for DriverKitDriverApp);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              sub_21C57D4E4(v70 + v69, type metadata accessor for DriverKitDriverApp);

              v72 = EnumCaseMultiPayload == 1;
              v39 = v188;
              v50 = v199;
              v40 = v195;
              v51 = v206;
              if (!v72)
              {
                goto LABEL_13;
              }

              goto LABEL_8;
            }

            v73 = swift_getEnumCaseMultiPayload();
            v50 = v199;
            if (v73 != 1)
            {
              v74 = v177;
              sub_21C57D544(v70, v177, type metadata accessor for SettingsApplicationRecord);
              v75 = v70 + v69;
              v76 = v178;
              sub_21C57D544(v75, v178, type metadata accessor for SettingsApplicationRecord);
              v77 = *(v194 + 36);
              v78 = *(v74 + v77 + 8);
              v210 = *(v74 + v77);
              v211 = v78;
              v79 = (v76 + v77);
              v81 = *v79;
              v80 = v79[1];
              v208 = v81;
              v209 = v80;
              v82 = sub_21C58226C();
              sub_21C57D4E4(v76, type metadata accessor for SettingsApplicationRecord);
              sub_21C57D4E4(v74, type metadata accessor for SettingsApplicationRecord);
              sub_21C57D4E4(v184, type metadata accessor for DriverKitDriverApp);
              sub_21C57D4E4(v186, type metadata accessor for DriverKitDriverApp);

              v51 = v206;
              if (v82)
              {
                v51 = v82;
              }

              v39 = v188;
              v40 = v195;
LABEL_8:
              v52 = v205;
              if ((v201 ^ (v51 == -1)))
              {
                goto LABEL_30;
              }

              goto LABEL_9;
            }

            sub_21C57D4E4(v184, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v186, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v70 + v69, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v70, type metadata accessor for SettingsApplicationRecord);

            v39 = v188;
          }

          v40 = v195;
          v52 = v205;
          if (v201)
          {
            v5 = v180;
            a3 = v179;
            v89 = v182;
            v41 = v185;
            if (v195 < v185)
            {
              goto LABEL_155;
            }

            goto LABEL_32;
          }

LABEL_9:
          ++v40;
          ++v49;
          if (v52 == v40)
          {
            v40 = v205;
            goto LABEL_30;
          }
        }
      }

      v50 = v199;
LABEL_30:
      v5 = v180;
      a3 = v179;
      v89 = v182;
      v41 = v185;
      if (v201)
      {
        if (v40 < v185)
        {
          goto LABEL_155;
        }

LABEL_32:
        if (v41 < v40)
        {
          v83 = 8 * v40 - 8;
          v84 = 8 * v41;
          v85 = v40;
          v86 = v41;
          do
          {
            if (v86 != --v85)
            {
              v88 = *a3;
              if (!*a3)
              {
                goto LABEL_161;
              }

              v87 = *(v88 + v84);
              *(v88 + v84) = *(v88 + v83);
              *(v88 + v83) = v87;
            }

            v86 = (v86 + 1);
            v83 -= 8;
            v84 += 8;
          }

          while (v86 < v85);
        }
      }
    }

LABEL_39:
    v90 = a3[1];
    if (v40 < v90)
    {
      if (__OFSUB__(v40, v41))
      {
        goto LABEL_154;
      }

      if (v40 - v41 < v89)
      {
        break;
      }
    }

LABEL_72:
    if (v40 < v41)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_21C57A088(0, *(v39 + 2) + 1, 1, v39);
    }

    v128 = *(v39 + 2);
    v127 = *(v39 + 3);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      v39 = sub_21C57A088((v127 > 1), v128 + 1, 1, v39);
    }

    *(v39 + 2) = v129;
    v130 = &v39[16 * v128];
    *(v130 + 4) = v185;
    *(v130 + 5) = v40;
    v41 = *v183;
    if (!*v183)
    {
      goto LABEL_163;
    }

    if (v128)
    {
      while (1)
      {
        v131 = v129 - 1;
        if (v129 >= 4)
        {
          break;
        }

        if (v129 == 3)
        {
          v132 = *(v39 + 4);
          v133 = *(v39 + 5);
          v142 = __OFSUB__(v133, v132);
          v134 = v133 - v132;
          v135 = v142;
LABEL_92:
          if (v135)
          {
            goto LABEL_142;
          }

          v148 = &v39[16 * v129];
          v150 = *v148;
          v149 = *(v148 + 1);
          v151 = __OFSUB__(v149, v150);
          v152 = v149 - v150;
          v153 = v151;
          if (v151)
          {
            goto LABEL_145;
          }

          v154 = &v39[16 * v131 + 32];
          v156 = *v154;
          v155 = *(v154 + 1);
          v142 = __OFSUB__(v155, v156);
          v157 = v155 - v156;
          if (v142)
          {
            goto LABEL_148;
          }

          if (__OFADD__(v152, v157))
          {
            goto LABEL_149;
          }

          if (v152 + v157 >= v134)
          {
            if (v134 < v157)
            {
              v131 = v129 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        v158 = &v39[16 * v129];
        v160 = *v158;
        v159 = *(v158 + 1);
        v142 = __OFSUB__(v159, v160);
        v152 = v159 - v160;
        v153 = v142;
LABEL_106:
        if (v153)
        {
          goto LABEL_144;
        }

        v161 = &v39[16 * v131];
        v163 = *(v161 + 4);
        v162 = *(v161 + 5);
        v142 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v142)
        {
          goto LABEL_147;
        }

        if (v164 < v152)
        {
          goto LABEL_3;
        }

LABEL_113:
        v169 = v131 - 1;
        if (v131 - 1 >= v129)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!*a3)
        {
          goto LABEL_160;
        }

        v170 = *&v39[16 * v169 + 32];
        v171 = *&v39[16 * v131 + 40];
        sub_21C57C484((*a3 + 8 * v170), (*a3 + 8 * *&v39[16 * v131 + 32]), (*a3 + 8 * v171), v41);
        if (v5)
        {
          goto LABEL_135;
        }

        if (v171 < v170)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_21C57C7FC(v39);
        }

        if (v169 >= *(v39 + 2))
        {
          goto LABEL_139;
        }

        v172 = &v39[16 * v169];
        *(v172 + 4) = v170;
        *(v172 + 5) = v171;
        v212 = v39;
        sub_21C57C770(v131);
        v39 = v212;
        v129 = *(v212 + 2);
        if (v129 <= 1)
        {
          goto LABEL_3;
        }
      }

      v136 = &v39[16 * v129 + 32];
      v137 = *(v136 - 64);
      v138 = *(v136 - 56);
      v142 = __OFSUB__(v138, v137);
      v139 = v138 - v137;
      if (v142)
      {
        goto LABEL_140;
      }

      v141 = *(v136 - 48);
      v140 = *(v136 - 40);
      v142 = __OFSUB__(v140, v141);
      v134 = v140 - v141;
      v135 = v142;
      if (v142)
      {
        goto LABEL_141;
      }

      v143 = &v39[16 * v129];
      v145 = *v143;
      v144 = *(v143 + 1);
      v142 = __OFSUB__(v144, v145);
      v146 = v144 - v145;
      if (v142)
      {
        goto LABEL_143;
      }

      v142 = __OFADD__(v134, v146);
      v147 = v134 + v146;
      if (v142)
      {
        goto LABEL_146;
      }

      if (v147 >= v139)
      {
        v165 = &v39[16 * v131 + 32];
        v167 = *v165;
        v166 = *(v165 + 1);
        v142 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v142)
        {
          goto LABEL_150;
        }

        if (v134 < v168)
        {
          v131 = v129 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_92;
    }

LABEL_3:
    v38 = a3[1];
    if (v40 >= v38)
    {
      goto LABEL_125;
    }
  }

  if (__OFADD__(v41, v89))
  {
    goto LABEL_156;
  }

  if (v41 + v89 >= v90)
  {
    v91 = a3[1];
  }

  else
  {
    v91 = (v41 + v89);
  }

  if (v91 < v41)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (v40 == v91)
  {
    goto LABEL_72;
  }

  v180 = v5;
  v92 = *a3;
  v205 = sub_21C566F98();
  v201 = v92;
  v93 = v92 + 8 * v40 - 8;
  v94 = (v41 - v40);
  v187 = v91;
LABEL_52:
  v195 = v40;
  v95 = *(v201 + 8 * v40);
  v190 = v94;
  v191 = v93;
  while (1)
  {
    v96 = *v93;
    v97 = &v95[OBJC_IVAR____SwiftDriverApprovalState_driver];
    v98 = (*v93 + OBJC_IVAR____SwiftDriverApprovalState_driver);
    v99 = *&v95[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
    v210 = *&v95[OBJC_IVAR____SwiftDriverApprovalState_driver];
    v211 = v99;
    v100 = v98[1];
    v208 = *v98;
    v209 = v100;
    v206 = v95;
    v207 = v96;
    v101 = sub_21C58226C();
    v102 = *(type metadata accessor for DriverKitDriver() + 20);
    v103 = *(v203 + 48);
    sub_21C57D47C(&v97[v102], v50, type metadata accessor for DriverKitDriverSource);
    sub_21C57D47C(v98 + v102, v50 + v103, type metadata accessor for DriverKitDriverSource);
    v104 = *v202;
    v105 = v204;
    v106 = (*v202)(v50, 1, v204);
    v107 = v104(v50 + v103, 1, v105);
    if (v106 == 1)
    {
      if (v107 != 1)
      {
        sub_21C57D4E4(v50 + v103, type metadata accessor for DriverKitDriverSource);

        goto LABEL_66;
      }
    }

    else
    {
      if (v107 == 1)
      {
        sub_21C57D4E4(v50, type metadata accessor for DriverKitDriverApp);
LABEL_50:

LABEL_51:
        v40 = v195 + 1;
        v93 = v191 + 8;
        v94 = v190 - 1;
        if ((v195 + 1) == v187)
        {
          v40 = v187;
          v5 = v180;
          a3 = v179;
          v39 = v188;
          v41 = v185;
          goto LABEL_72;
        }

        goto LABEL_52;
      }

      v108 = v50;
      v109 = v50;
      v110 = v200;
      sub_21C57D544(v108, v200, type metadata accessor for DriverKitDriverApp);
      v111 = v109 + v103;
      v112 = v196;
      sub_21C57D544(v111, v196, type metadata accessor for DriverKitDriverApp);
      v113 = v197;
      v114 = *(v198 + 48);
      sub_21C57D47C(v110, v197, type metadata accessor for DriverKitDriverApp);
      sub_21C57D47C(v112, v113 + v114, type metadata accessor for DriverKitDriverApp);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C57D4E4(v112, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v110, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v113, type metadata accessor for DriverKitDriverApp);
        v115 = swift_getEnumCaseMultiPayload();
        sub_21C57D4E4(v113 + v114, type metadata accessor for DriverKitDriverApp);

        v50 = v199;
        if (v115 != 1)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C57D4E4(v112, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v200, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v113 + v114, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v113, type metadata accessor for SettingsApplicationRecord);
        v50 = v199;
        goto LABEL_50;
      }

      v116 = v192;
      sub_21C57D544(v113, v192, type metadata accessor for SettingsApplicationRecord);
      v117 = v113 + v114;
      v118 = v193;
      sub_21C57D544(v117, v193, type metadata accessor for SettingsApplicationRecord);
      v119 = *(v194 + 36);
      v120 = *(v116 + v119 + 8);
      v210 = *(v116 + v119);
      v211 = v120;
      v121 = (v118 + v119);
      v123 = *v121;
      v122 = v121[1];
      v208 = v123;
      v209 = v122;
      v124 = sub_21C58226C();
      sub_21C57D4E4(v118, type metadata accessor for SettingsApplicationRecord);
      sub_21C57D4E4(v116, type metadata accessor for SettingsApplicationRecord);
      sub_21C57D4E4(v112, type metadata accessor for DriverKitDriverApp);
      sub_21C57D4E4(v200, type metadata accessor for DriverKitDriverApp);

      if (v124)
      {
        v101 = v124;
      }

      v50 = v199;
    }

LABEL_65:
    if (v101 != -1)
    {
      goto LABEL_51;
    }

LABEL_66:
    if (!v201)
    {
      break;
    }

    v125 = *v93;
    v95 = *(v93 + 8);
    *v93 = v95;
    *(v93 + 8) = v125;
    v93 -= 8;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
}

uint64_t sub_21C57C484(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v42 = &v15[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v39 = v6;
LABEL_27:
      v40 = v5;
      v26 = v5 - 1;
      v27 = v4 - 1;
      v28 = v42;
      do
      {
        v29 = v15;
        v30 = v27;
        v31 = (v27 + 1);
        v32 = *(v28 - 1);
        v28 -= 8;
        v33 = v26;
        v34 = *v26;
        v35 = OBJC_IVAR____SwiftDriverApprovalState_driver;
        v41 = v32;
        v36 = v34;
        v37 = _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(&v32[v35], &v34[v35]);

        if (v37)
        {
          v15 = v29;
          v4 = v30;
          if (v31 != v40)
          {
            *v30 = *v33;
          }

          if (v42 <= v29 || (v5 = v33, v33 <= v39))
          {
            v5 = v33;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v15 = v29;
        if (v31 != v42)
        {
          *v30 = *v28;
        }

        v27 = v30 - 1;
        v42 = v28;
        v26 = v33;
      }

      while (v28 > v29);
      v42 = v28;
      v5 = v40;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v14;
      v5 = __src;
    }

    v42 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = v6;
        v18 = *v5;
        v19 = *v15;
        v20 = OBJC_IVAR____SwiftDriverApprovalState_driver;
        v21 = *v5;
        v22 = v19;
        LOBYTE(v19) = _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(&v18[v20], &v19[v20]);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v23 = v5;
        v24 = v17;
        v25 = v17 == v5++;
        if (!v25)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v24 + 1;
        if (v15 < v42)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v23 = v15;
      v24 = v17;
      v25 = v17 == v15++;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v24 = *v23;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= (v15 + ((v42 - v15 + (v42 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * ((v42 - v15) / 8));
  }

  return 1;
}

uint64_t sub_21C57C770(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C57C7FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_21C57C810()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsApplicationRecord();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA98, &qword_21C584590);
  v5 = *v0;
  v6 = sub_21C58239C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21C57D47C(*(v5 + 56) + v27, v31, type metadata accessor for SettingsApplicationRecord);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21C57D544(v26, *(v28 + 56) + v27, type metadata accessor for SettingsApplicationRecord);
        result = sub_21C568474(v24, v25);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_21C57CA6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21C58238C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21C5822FC();
}

unint64_t sub_21C57CAD0(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_21C58238C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CF0C250](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_21C57CBB8(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_21C57CAD0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_21C58238C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_21C58238C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CF0C250](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x21CF0C250](v10, v7);
          v16 = MEMORY[0x21CF0C250](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_21C57CA6C(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_21C57CA6C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
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
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_21C58238C();
}

uint64_t sub_21C57CE00(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAB0, &qword_21C5845F0);
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
  result = sub_21C58238C();
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
    result = sub_21C58238C();
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

uint64_t sub_21C57CF0C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21C58238C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_21C58238C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_21C57AA44(result);

  return sub_21C57CE00(v4, v2, 0);
}

uint64_t sub_21C57CFE4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21C57D07C()
{
  result = qword_28120D228;
  if (!qword_28120D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D228);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16DriverManagement0A17KitSettingsFilterO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C57D0F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C57D148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21C57D1A4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DriverManager()
{
  result = qword_28120D418;
  if (!qword_28120D418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C57D228()
{
  sub_21C57D2E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C57D2E8()
{
  if (!qword_28120D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDEA40, &qword_21C5843F0);
    v0 = sub_21C581FDC();
    if (!v1)
    {
      atomic_store(v0, &qword_28120D240);
    }
  }
}

uint64_t sub_21C57D34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C57D3B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21C57D418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C57D47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C57D4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C57D544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C57D5B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21C57D614(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_21C57D620()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 33);
  return sub_21C579524(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

id sub_21C57D634(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_21C57D6E0()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsApplicationRecord();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DriverKitDriverApp();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DriverKitDriverSource();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C57DDCC(v1, v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    return 0;
  }

  sub_21C57DEB0(v14, v10, type metadata accessor for DriverKitDriverApp);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v10;
    v16 = v10[1];
  }

  else
  {
    sub_21C57DEB0(v10, v5, type metadata accessor for SettingsApplicationRecord);
    v17 = &v5[*(v2 + 32)];
    v18 = *v17;
    sub_21C568474(*v17, *(v17 + 1));
    sub_21C57DF18(v5, type metadata accessor for SettingsApplicationRecord);
    return v18;
  }

  return result;
}

uint64_t DriverKitDriverSource.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DriverKitDriverApp();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DriverKitDriverSource();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C57DDCC(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0x6150207473726946;
  }

  sub_21C57DEB0(v10, v6, type metadata accessor for DriverKitDriverApp);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_21C5822DC();

  v14 = 0xD000000000000014;
  v15 = 0x800000021C586750;
  v12 = DriverKitDriverApp.description.getter();
  MEMORY[0x21CF0C040](v12);

  v11 = v14;
  sub_21C57DF18(v6, type metadata accessor for DriverKitDriverApp);
  return v11;
}

uint64_t _s16DriverManagement0a3KitA6SourceO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriverApp();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DriverKitDriverSource();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_21C57DDCC(a1, &v22 - v16);
  sub_21C57DDCC(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21C57DDCC(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_21C57DEB0(&v17[v18], v8, type metadata accessor for DriverKitDriverApp);
      v20 = _s16DriverManagement0a3KitA3AppO2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_21C57DF18(v8, type metadata accessor for DriverKitDriverApp);
      sub_21C57DF18(v12, type metadata accessor for DriverKitDriverApp);
      sub_21C57DF18(v17, type metadata accessor for DriverKitDriverSource);
      return v20 & 1;
    }

    sub_21C57DF18(v12, type metadata accessor for DriverKitDriverApp);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C56711C(v17);
    v20 = 0;
    return v20 & 1;
  }

  sub_21C57DF18(v17, type metadata accessor for DriverKitDriverSource);
  v20 = 1;
  return v20 & 1;
}

uint64_t type metadata accessor for DriverKitDriverSource()
{
  result = qword_28120D3E8;
  if (!qword_28120D3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C57DDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriverSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C57DE58()
{
  v0 = type metadata accessor for DriverKitDriverApp();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21C57DEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C57DF18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DriverKitDaemonClient.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t DriverKitDaemonClient.registerForApprovalsChangeNotification(_:)(uint64_t a1, uint64_t a2)
{
  sub_21C57FDB8(MEMORY[0x277D84F90]);
  v4 = sub_21C58203C();

  _CFXPCCreateXPCObjectFromCFObject();

  sub_21C57EA14();
  sub_21C58209C();
  sub_21C58209C();

  xpc_set_event();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_21C57FECC;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21C57FBF4;
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);

  v7 = sub_21C58209C();
  xpc_set_event_stream_handler((v7 + 32), 0, v6);

  _Block_release(v6);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DriverKitDaemonClient.unregisterForApprovalsChangeNotification()()
{
  sub_21C57EA14();
  sub_21C58209C();
  sub_21C58209C();

  xpc_set_event();
}

uint64_t DriverKitDaemonClient.getApprovalStateForSettings(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C57E6C0();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v16 = sub_21C57FEEC;
  v17 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21C57EEBC;
  v15 = &block_descriptor_6;
  v6 = _Block_copy(&aBlock);

  v7 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  swift_dynamicCast();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v16 = sub_21C57FEF4;
  v17 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21C57F7A4;
  v15 = &block_descriptor_12;
  v9 = _Block_copy(&aBlock);

  [v11 getApprovalStateForSettingsWithReplyBlock_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t DriverKitDaemonClient.enqueueApprovalStateUpdate(request:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C57E6C0();
  v30 = sub_21C57FEFC;
  v31 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21C57EEBC;
  v29 = &block_descriptor_15;
  v5 = _Block_copy(&aBlock);

  v6 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  swift_dynamicCast();
  v7 = sub_21C581E5C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_21C581E4C();
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  aBlock = *(a1 + 16);
  v27 = v10;
  v28 = v12;
  v29 = v11;
  LOBYTE(v30) = v13;

  sub_21C57029C(v12, v11);
  sub_21C571B20();
  v14 = sub_21C581E3C();
  if (v2)
  {
    v16 = v28;
    v17 = v29;

    sub_21C565BD8(v16, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v28;
    v20 = v29;
    v21 = v14;
    v22 = v15;

    sub_21C565BD8(v19, v20);

    v23 = sub_21C581E9C();
    v30 = sub_21C57FF04;
    v31 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_21C57F9E8;
    v29 = &block_descriptor_18;
    v24 = _Block_copy(&aBlock);

    [v25 enqueueApprovalStateUpdateWithEntry:v23 replyBlock:v24];
    _Block_release(v24);

    sub_21C567950(v21, v22);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_21C57E6C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
LABEL_5:
    v11 = v1;
    return v2;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_21C58205C();
  v5 = [v3 initWithMachServiceName:v4 options:4096];

  v17 = sub_21C580300;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21C57D650;
  v16 = &block_descriptor_48;
  v6 = _Block_copy(&aBlock);
  [v5 setInterruptionHandler_];
  _Block_release(v6);
  v17 = sub_21C580300;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21C57D650;
  v16 = &block_descriptor_51;
  v7 = _Block_copy(&aBlock);
  [v5 setInvalidationHandler_];
  _Block_release(v7);
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v9 = [v5 remoteObjectInterface];
  if (v9)
  {

    [v5 resume];
    v10 = *(v0 + 16);
    *(v0 + 16) = v5;
    v2 = v5;

    v1 = 0;
    goto LABEL_5;
  }

  result = sub_21C58237C();
  __break(1u);
  return result;
}

void sub_21C57E934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21C582F80;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21C57D07C();
  *(v0 + 32) = 0xD000000000000022;
  *(v0 + 40) = 0x800000021C586720;
  sub_21C5801D4();
  v1 = sub_21C58224C();
  sub_21C5821DC();
  sub_21C581F1C();
}

unint64_t sub_21C57EA14()
{
  v1 = v0;
  v2 = sub_21C581F0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v7 = *(v0 + 24);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_21C5822DC();

    v12 = 0xD00000000000002BLL;
    v13 = 0x800000021C586980;
    sub_21C581EFC();
    sub_21C580280();
    v8 = sub_21C58249C();
    MEMORY[0x21CF0C040](v8);

    (*(v3 + 8))(v6, v2);
    v7 = v12;
    v9 = v13;
    v10 = *(v1 + 32);
    *(v1 + 24) = v12;
    *(v1 + 32) = v9;
  }

  return v7;
}

void *DriverKitDaemonClient.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DriverKitDaemonClient.dumpState()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = sub_21C57E6C0();
  v19 = sub_21C580330;
  v20 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_21C57EEBC;
  v18 = &block_descriptor_27;
  v4 = _Block_copy(&aBlock);

  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v4);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  if (swift_dynamicCast())
  {
    v3 = v14;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    *(v6 + 24) = v2;
    v19 = sub_21C580334;
    v20 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21C57EF24;
    v18 = &block_descriptor_33;
    v7 = _Block_copy(&aBlock);

    [v14 dumpStateWithReplyBlock_];
    _Block_release(v7);
    swift_beginAccess();
    v1 = *(v0 + 16);
    if (v1)
    {
      v8 = *(v0 + 16);
      swift_willThrow();
      v1;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_beginAccess();
      v3 = *(v2 + 16);
      v1 = *(v2 + 24);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *v1;
    if (*v1)
    {
      v10 = *v1;
      swift_willThrow();
      v9;
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      swift_willThrow();
    }
  }

  v11 = v3;
  v12 = v1;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

void sub_21C57EEBC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_21C57EF24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_21C58206C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DriverKitDaemonClient.launchDriver(bundleID:userServerName:tag:)(Swift::String bundleID, Swift::String userServerName, Swift::String_optional tag)
{
  object = tag.value._object;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = sub_21C57E6C0();
  v25 = sub_21C57FF0C;
  v26 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_21C57EEBC;
  v24 = &block_descriptor_38;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  if (swift_dynamicCast())
  {
    v7 = v20;
    v10 = sub_21C58205C();
    v11 = sub_21C58205C();
    if (object)
    {
      object = sub_21C58205C();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v6;
    v25 = sub_21C57FF68;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_21C57EF24;
    v24 = &block_descriptor_44;
    v13 = _Block_copy(&aBlock);

    [v20 launchDriverWithBundleID:v10 userServerName:v11 tag:object replyBlock:v13];
    _Block_release(v13);

    swift_beginAccess();
    v14 = *(v4 + 16);
    if (v14)
    {
      v15 = *(v4 + 16);
      swift_willThrow();
      v14;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_beginAccess();
      v14 = *(v6 + 16);
      v7 = *(v6 + 24);
    }
  }

  else
  {
    swift_beginAccess();
    v14 = *v5;
    if (*v5)
    {
      v16 = *v5;
      swift_willThrow();
      v14;
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      swift_willThrow();
    }
  }

  v17 = v14;
  v18 = v7;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

void sub_21C57F348(void *a1, uint64_t a2)
{
  sub_21C5821CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21C582F80;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
  v6 = sub_21C58208C();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21C57D07C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_21C5801D4();
  v9 = sub_21C58224C();
  sub_21C581F2C();

  v10 = sub_21C581E6C();
  swift_beginAccess();
  v11 = *(a2 + 16);
  *(a2 + 16) = v10;
}

uint64_t sub_21C57F47C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a3;
  v11 = a3;

  swift_beginAccess();
  v12 = *(a5 + 24);
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
}

uint64_t sub_21C57F514(void *a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_21C5821CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21C582F80;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
  v6 = sub_21C58208C();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21C57D07C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_21C5801D4();
  v9 = sub_21C58224C();
  sub_21C581F2C();

  return a2(a1, 1);
}

void sub_21C57F63C(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      a3 = 0;
      v12 = v10;
    }

    v11 = a3;
    a4(v12, 1);
  }

  else
  {
    v7 = sub_21C581E2C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_21C568474(a1, a2);
    sub_21C581E1C();
    sub_21C580220();
    sub_21C581E0C();

    a4(v13, 0);
    sub_21C565BD8(a1, a2);
    sub_21C580274(v13, 0);
  }
}

uint64_t sub_21C57F7A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_21C581EAC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_21C565BD8(v4, v9);
}

void sub_21C57F850(void *a1, uint64_t a2)
{
  sub_21C5821CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21C582F80;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
  v6 = sub_21C58208C();
  v8 = v7;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21C57D07C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_21C5801D4();
  v9 = sub_21C58224C();
  sub_21C581F2C();

  v11 = *(a2 + 56);
  v10 = *(a2 + 64);
  v12 = sub_21C581E6C();
  v11(v12, 1);
}

void sub_21C57F978(void *a1, uint64_t a2)
{
  v3 = a1 != 0;
  v5 = *(a2 + 56);
  v4 = *(a2 + 64);
  v6 = a1;
  v5(a1, v3);
  sub_21C57D614(a1, v3);

  sub_21C57D614(a1, v3);
}

void sub_21C57F9E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_21C57FA54(void *a1, void (*a2)(uint64_t))
{
  v4 = sub_21C58209C();
  v5 = xpc_dictionary_get_BOOL(a1, (v4 + 32));

  if (v5)
  {
    a2(v6);
  }

  else if (xpc_dictionary_create_reply(a1))
  {
    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_21C5821CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21C582F80;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_21C57D07C();
    *(v7 + 32) = 0xD00000000000002BLL;
    *(v7 + 40) = 0x800000021C5862A0;
    sub_21C5801D4();
    v8 = sub_21C58224C();
    sub_21C581F2C();
  }
}

uint64_t sub_21C57FBF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t DriverKitDaemonClient.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t DriverKitDaemonClient.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21C57FCBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA18, &unk_21C584780);
    v3 = sub_21C5823BC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21C56D7CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_21C57FDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAD0, &qword_21C584778);
    v3 = sub_21C5823BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21C56D7CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_21C57FFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC8, &qword_21C584768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA98, &qword_21C584590);
    v8 = sub_21C5823BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21C580164(v10, v6);
      result = sub_21C56D7F8(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for SettingsApplicationRecord();
      result = sub_21C5679A4(v6 + v9, v15 + *(*(v16 - 8) + 72) * v14);
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

uint64_t sub_21C580164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC8, &qword_21C584768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C5801D4()
{
  result = qword_28120D1E0;
  if (!qword_28120D1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120D1E0);
  }

  return result;
}

unint64_t sub_21C580220()
{
  result = qword_28120D340;
  if (!qword_28120D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D340);
  }

  return result;
}

void sub_21C580274(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_21C580280()
{
  result = qword_28120D4D8;
  if (!qword_28120D4D8)
  {
    sub_21C581F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D4D8);
  }

  return result;
}

uint64_t DriverApprovalState.approvalState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  return v1;
}

uint64_t DriverApprovalState.approvalState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21C581FCC();
}

uint64_t DriverApprovalState.updateStatus.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21C581FCC();
}

uint64_t sub_21C5804C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  *a2 = v5;
  return result;
}

uint64_t sub_21C580548(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21C581FCC();
}

uint64_t (*DriverApprovalState.approvalState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_21C581FAC();
  return sub_21C58065C;
}

uint64_t DriverApprovalState.$approvalState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE0, &qword_21C584828);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAD8, &qword_21C584820);
  sub_21C581F9C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DriverApprovalState.$approvalState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE0, &qword_21C584828);
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

  v10 = OBJC_IVAR____SwiftDriverApprovalState__approvalState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAD8, &qword_21C584820);
  sub_21C581F8C();
  swift_endAccess();
  return sub_21C580924;
}

uint64_t DriverApprovalState.updateStatus.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  return v1;
}

uint64_t sub_21C5809CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*DriverApprovalState.updateStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_21C581FAC();
  return sub_21C581938;
}

void sub_21C580AD4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21C580B58(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21C581F8C();
  return swift_endAccess();
}

uint64_t DriverApprovalState.$updateStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDEAF0, &qword_21C584838);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE8, &qword_21C584830);
  sub_21C581F9C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DriverApprovalState.$updateStatus.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDEAF0, &qword_21C584838);
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

  v10 = OBJC_IVAR____SwiftDriverApprovalState__updateStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE8, &qword_21C584830);
  sub_21C581F8C();
  swift_endAccess();
  return sub_21C58193C;
}

void sub_21C580E78(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_21C581F9C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_21C581F9C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t DriverApprovalState.displayName.getter()
{
  v1 = (v0 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v2 = (v1 + *(type metadata accessor for DriverKitDriver() + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = *v1;
    v5 = v1[1];
  }

  return v3;
}

uint64_t DriverApprovalState.usageText.getter()
{
  v1 = v0 + OBJC_IVAR____SwiftDriverApprovalState_driver;
  v2 = (v1 + *(type metadata accessor for DriverKitDriver() + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

Swift::Bool __swiftcall DriverApprovalState.updatePending()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Bool __swiftcall DriverApprovalState.driverIsApproved()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC();

  if (v3)
  {
    v0 = *(v3 + 48);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C581FBC();

    v0 = v2;
  }

  return v0 == 1;
}

Swift::String __swiftcall DriverApprovalState.bundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v2 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id DriverApprovalState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DriverApprovalState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DriverApprovalState.id.getter()
{
  v1 = v0 + OBJC_IVAR____SwiftDriverApprovalState_driver;
  v5 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v6 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver + 8);

  MEMORY[0x21CF0C040](2108704, 0xE300000000000000);
  v2 = v1 + *(type metadata accessor for DriverKitDriver() + 20);
  v3 = DriverKitDriverSource.description.getter();
  MEMORY[0x21CF0C040](v3);

  return v5;
}

uint64_t sub_21C581688@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v7 = *v3;
  v8 = v3[1];

  MEMORY[0x21CF0C040](2108704, 0xE300000000000000);
  v4 = v3 + *(type metadata accessor for DriverKitDriver() + 20);
  v5 = DriverKitDriverSource.description.getter();
  MEMORY[0x21CF0C040](v5);

  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t type metadata accessor for DriverApprovalState()
{
  result = qword_28120D4B8;
  if (!qword_28120D4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C58176C()
{
  v0 = type metadata accessor for DriverKitDriver();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C581890(319, qword_28120D250);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21C581890(319, &qword_28120D248);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C581890(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21C581FDC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21C5818DC(uint64_t a1)
{
  v2 = type metadata accessor for DriverKitDriver();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SettingsApplicationRecord.init(bundleIdentifier:url:uniqueInstallIdentifier:driverExtensionPaths:installSessionIdentifier:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for SettingsApplicationRecord();
  v18 = v17[5];
  v19 = sub_21C581E8C();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  *&a9[v17[7]] = a6;
  v22 = &a9[v17[8]];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &a9[v17[9]];
  *v23 = a10;
  *(v23 + 1) = a11;
  return result;
}

uint64_t type metadata accessor for SettingsApplicationRecord()
{
  result = qword_28120D330;
  if (!qword_28120D330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsApplicationRecord.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsApplicationRecord.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsApplicationRecord() + 20);
  v4 = sub_21C581E8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsApplicationRecord.uniqueInstallIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for SettingsApplicationRecord() + 24);
  v2 = *v1;
  sub_21C57029C(*v1, *(v1 + 8));
  return v2;
}

uint64_t SettingsApplicationRecord.driverExtensionPaths.getter()
{
  v1 = *(v0 + *(type metadata accessor for SettingsApplicationRecord() + 28));
}

uint64_t SettingsApplicationRecord.installSessionIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for SettingsApplicationRecord() + 32);
  v2 = *v1;
  sub_21C568474(*v1, *(v1 + 8));
  return v2;
}

uint64_t SettingsApplicationRecord.localizedName.getter()
{
  v1 = (v0 + *(type metadata accessor for SettingsApplicationRecord() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_21C581C40()
{
  sub_21C581D2C(319, &qword_28120D220);
  if (v0 <= 0x3F)
  {
    sub_21C581E8C();
    if (v1 <= 0x3F)
    {
      sub_21C581D2C(319, &qword_28120D4E0);
      if (v2 <= 0x3F)
      {
        sub_21C581D78();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C581D2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21C58225C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21C581D78()
{
  if (!qword_28120D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDE848, &qword_21C582F90);
    v0 = sub_21C58225C();
    if (!v1)
    {
      atomic_store(v0, &qword_28120D208);
    }
  }
}