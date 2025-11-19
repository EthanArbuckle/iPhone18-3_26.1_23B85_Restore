uint64_t sub_1B4A16B30(uint64_t a1, uint64_t a2)
{
  v131 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v4 = *(v131 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v132 = (&v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v133 = (&v115 - v9);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE0, &qword_1B4D202D0);
  v10 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v12 = &v115 - v11;
  v130 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v13 = *(v130 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v126 = &v115 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v19 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v21 = &v115 - v20;
  v22 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v115 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_99:
    v102 = 0;
    return v102 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v102 = 1;
    return v102 & 1;
  }

  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v122 = v21;
  v123 = a2 + v31;
  v33 = (v13 + 48);
  v119 = (v4 + 48);
  v34 = 0;
  v35 = *(v27 + 72);
  v117 = v32;
  v124 = v25;
  v127 = &v115 - v28;
  v116 = v35;
  v120 = v12;
  v121 = v30;
  while (1)
  {
    v36 = v35 * v34;
    result = sub_1B4A1F5E8(v32 + v35 * v34, v29, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    if (v34 == v30)
    {
      goto LABEL_112;
    }

    sub_1B4A1F5E8(v123 + v36, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    v38 = *(v22 + 28);
    v39 = *(v129 + 48);
    v40 = v122;
    v41 = v25;
    v42 = v22;
    sub_1B4974FBC(&v29[v38], v122, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    sub_1B4974FBC(v41 + v38, v40 + v39, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    v43 = *v33;
    v44 = v130;
    v45 = (*v33)(v40, 1, v130);
    v118 = v34;
    if (v45 == 1)
    {
      if (v43(v40 + v39, 1, v44) != 1)
      {
        goto LABEL_104;
      }

      sub_1B4975024(v40, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      v46 = v120;
      v47 = v121;
      v48 = v42;
      v25 = v41;
    }

    else
    {
      v49 = v33;
      v50 = v126;
      sub_1B4974FBC(v40, v126, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      if (v43(v40 + v39, 1, v44) == 1)
      {
        sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
        v41 = v124;
LABEL_104:
        sub_1B4975024(v40, &qword_1EB8A7DE8, &qword_1B4D202D8);
        v25 = v41;
        goto LABEL_98;
      }

      v51 = v125;
      sub_1B4A1F750(v40 + v39, v125, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      v52 = *v50;
      v53 = *(v50 + 8);
      v54 = *v51;
      v55 = *(v51 + 8);
      v136 = *v50;
      v137 = v53;
      v138 = v54;
      v139 = v55;
      if (v53 == 255)
      {
        if (v55 != 255)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v134 = v52;
        v135 = v53;
        if (v55 == 255 || (_s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(&v134, &v138) & 1) == 0)
        {
LABEL_102:
          sub_1B4A1F650(v51, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          v112 = &qword_1EB8A7BE8;
          v113 = &qword_1B4D1FE98;
          v114 = v40;
          goto LABEL_107;
        }
      }

      v56 = *(v44 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v57 = sub_1B4D1816C();
      sub_1B4A1F650(v51, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4A1F650(v50, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4975024(v40, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      v33 = v49;
      v48 = v42;
      v46 = v120;
      v47 = v121;
      v25 = v124;
      if ((v57 & 1) == 0)
      {
        goto LABEL_98;
      }
    }

    v58 = v25;
    v59 = v48;
    v60 = *(v48 + 32);
    v61 = *(v128 + 48);
    sub_1B4974FBC(&v127[v60], v46, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    sub_1B4974FBC(v58 + v60, v46 + v61, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    v62 = *v119;
    v63 = v131;
    if ((*v119)(v46, 1, v131) == 1)
    {
      if (v62(v46 + v61, 1, v63) != 1)
      {
        goto LABEL_106;
      }

      result = sub_1B4975024(v46, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      v22 = v59;
      v25 = v124;
      v30 = v47;
      goto LABEL_54;
    }

    v115 = v33;
    v64 = v133;
    sub_1B4974FBC(v46, v133, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    if (v62(v46 + v61, 1, v63) == 1)
    {
      sub_1B4A1F650(v64, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
LABEL_106:
      v112 = &qword_1EB8A7DE0;
      v113 = &qword_1B4D202D0;
      v114 = v46;
LABEL_107:
      sub_1B4975024(v114, v112, v113);
      v25 = v124;
LABEL_98:
      sub_1B4A1F650(v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      sub_1B4A1F650(v127, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      goto LABEL_99;
    }

    v65 = v46 + v61;
    v66 = v132;
    result = sub_1B4A1F750(v65, v132, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    v67 = *v64;
    v68 = *v66;
    v69 = *(*v64 + 16);
    v22 = v59;
    v25 = v124;
    if (v69 != *(v68 + 16))
    {
      goto LABEL_97;
    }

    v30 = v47;
    if (v69 && v67 != v68)
    {
      v70 = (v67 + 40);
      v71 = (v68 + 40);
      while (1)
      {
        result = *(v70 - 1);
        if (result != *(v71 - 1) || *v70 != *v71)
        {
          result = sub_1B4D18DCC();
          v64 = v133;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v70 += 2;
        v71 += 2;
        if (!--v69)
        {
          goto LABEL_31;
        }
      }

LABEL_97:
      sub_1B4A1F650(v132, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4A1F650(v64, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4975024(v46, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      goto LABEL_98;
    }

LABEL_31:
    v73 = v64[1];
    v74 = v132[1];
    v75 = *(v73 + 16);
    if (v75 != *(v74 + 16))
    {
      goto LABEL_97;
    }

    if (v75 && v73 != v74)
    {
      break;
    }

LABEL_37:
    v77 = v64[2];
    v78 = v132[2];
    v79 = *(v77 + 16);
    if (v79 != *(v78 + 16))
    {
      goto LABEL_97;
    }

    if (v79)
    {
      v80 = v77 == v78;
    }

    else
    {
      v80 = 1;
    }

    if (!v80)
    {
      v81 = (v77 + 32);
      v82 = (v78 + 32);
      while (v79)
      {
        if (*v81 != *v82)
        {
          goto LABEL_97;
        }

        ++v81;
        ++v82;
        if (!--v79)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_111;
    }

LABEL_46:
    v83 = v64[3];
    v84 = v132[3];
    v85 = *(v83 + 16);
    if (v85 != *(v84 + 16))
    {
      goto LABEL_97;
    }

    if (v85)
    {
      v86 = v83 == v84;
    }

    else
    {
      v86 = 1;
    }

    if (!v86)
    {
      v109 = (v83 + 40);
      v110 = (v84 + 40);
      while (v85)
      {
        result = *(v109 - 1);
        if (result != *(v110 - 1) || *v109 != *v110)
        {
          result = sub_1B4D18DCC();
          v64 = v133;
          if ((result & 1) == 0)
          {
            goto LABEL_97;
          }
        }

        v109 += 2;
        v110 += 2;
        if (!--v85)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_110;
    }

LABEL_52:
    v87 = sub_1B4A0E6CC(v64[4], v132[4]);
    v64 = v133;
    if ((v87 & 1) == 0)
    {
      goto LABEL_97;
    }

    v88 = *(v131 + 36);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v89 = v132;
    v90 = sub_1B4D1816C();
    sub_1B4A1F650(v89, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    sub_1B4A1F650(v64, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    result = sub_1B4975024(v46, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    v33 = v115;
    if ((v90 & 1) == 0)
    {
      goto LABEL_98;
    }

LABEL_54:
    v91 = *v127;
    v92 = *v25;
    v93 = *(*v127 + 16);
    if (v93 != *(*v25 + 16))
    {
      goto LABEL_98;
    }

    if (v93 && v91 != v92)
    {
      v94 = (v91 + 40);
      v95 = (v92 + 40);
      do
      {
        result = *(v94 - 1);
        if (result != *(v95 - 1) || *v94 != *v95)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_98;
          }
        }

        v94 += 2;
        v95 += 2;
      }

      while (--v93);
    }

    v97 = *(v127 + 1);
    v98 = v25[1];
    v99 = *(v97 + 16);
    if (v99 != *(v98 + 16))
    {
      goto LABEL_98;
    }

    if (v99)
    {
      v100 = v97 == v98;
    }

    else
    {
      v100 = 1;
    }

    if (!v100)
    {
      v103 = (v97 + 40);
      v104 = (v98 + 40);
      while (v99)
      {
        result = *(v103 - 1);
        if (result != *(v104 - 1) || *v103 != *v104)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_98;
          }
        }

        v103 += 2;
        v104 += 2;
        if (!--v99)
        {
          goto LABEL_71;
        }
      }

      __break(1u);
      __break(1u);
      goto LABEL_109;
    }

LABEL_71:
    v101 = *(v22 + 24);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v29 = v127;
    v102 = sub_1B4D1816C();
    sub_1B4A1F650(v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4A1F650(v29, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    if (v102)
    {
      v34 = v118 + 1;
      v32 = v117;
      v35 = v116;
      if (v118 + 1 != v30)
      {
        continue;
      }
    }

    return v102 & 1;
  }

  v106 = (v73 + 40);
  v107 = (v74 + 40);
  while (v75)
  {
    result = *(v106 - 1);
    if (result != *(v107 - 1) || *v106 != *v107)
    {
      result = sub_1B4D18DCC();
      v64 = v133;
      if ((result & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    v106 += 2;
    v107 += 2;
    if (!--v75)
    {
      goto LABEL_37;
    }
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_1B4A177EC(uint64_t a1, uint64_t a2)
{
  v140 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v4 = *(v140 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v142 = (&v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v143 = (&v125 - v9);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF8, &qword_1B4D202E8);
  v10 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v141 = &v125 - v11;
  v139 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v12 = *(v139 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = &v125 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v18 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v20 = &v125 - v19;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v125 - v28);
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_122:
    v109 = 0;
    return v109 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v109 = 1;
    return v109 & 1;
  }

  v134 = v26;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v132 = a2 + v31;
  v33 = (v12 + 48);
  v131 = (v4 + 48);
  v34 = 0;
  v35 = *(v27 + 72);
  v128 = v32;
  v133 = &v125 - v28;
  v127 = v35;
  v129 = v30;
  while (1)
  {
    v36 = v35 * v34;
    result = sub_1B4A1F5E8(v32 + v35 * v34, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    if (v34 == v30)
    {
      goto LABEL_136;
    }

    sub_1B4A1F5E8(v132 + v36, v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v38 = v134[7];
    v39 = *(v138 + 48);
    sub_1B4974FBC(v29 + v38, v20, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    sub_1B4974FBC(v24 + v38, &v20[v39], &qword_1EB8A7BE8, &qword_1B4D1FE98);
    v40 = *v33;
    v41 = v20;
    v42 = v20;
    v43 = v139;
    v44 = (*v33)(v41, 1, v139);
    v130 = v34;
    if (v44 == 1)
    {
      if (v40((v42 + v39), 1, v43) != 1)
      {
        goto LABEL_127;
      }

      sub_1B4975024(v42, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }

    else
    {
      v126 = v24;
      v45 = v33;
      v46 = v136;
      sub_1B4974FBC(v42, v136, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      if (v40((v42 + v39), 1, v43) == 1)
      {
        sub_1B4A1F650(v46, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
        v24 = v126;
        v29 = v133;
LABEL_127:
        v122 = &qword_1EB8A7DE8;
        v123 = &qword_1B4D202D8;
        v124 = v42;
LABEL_120:
        sub_1B4975024(v124, v122, v123);
        goto LABEL_121;
      }

      v47 = v135;
      sub_1B4A1F750(v42 + v39, v135, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      v48 = *v46;
      v49 = *(v46 + 8);
      v50 = *v47;
      v51 = *(v47 + 8);
      v146 = *v46;
      v147 = v49;
      v148 = v50;
      v149 = v51;
      if (v49 == 255)
      {
        if (v51 != 255)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v144 = v48;
        v145 = v49;
        if (v51 == 255 || (_s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(&v144, &v148) & 1) == 0)
        {
LABEL_125:
          sub_1B4A1F650(v47, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          sub_1B4A1F650(v46, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
          sub_1B4975024(v42, &qword_1EB8A7BE8, &qword_1B4D1FE98);
          v24 = v126;
          v29 = v133;
          goto LABEL_121;
        }
      }

      v52 = *(v43 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v53 = sub_1B4D1816C();
      sub_1B4A1F650(v47, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4A1F650(v46, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
      sub_1B4975024(v42, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      v33 = v45;
      v24 = v126;
      v29 = v133;
      if ((v53 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    v54 = v134[8];
    v55 = *(v137 + 48);
    v56 = v29 + v54;
    v57 = v141;
    sub_1B4974FBC(v56, v141, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v58 = v24;
    sub_1B4974FBC(v24 + v54, v57 + v55, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v59 = *v131;
    v60 = v140;
    if ((*v131)(v57, 1, v140) == 1)
    {
      v61 = v59(v57 + v55, 1, v60);
      v24 = v58;
      if (v61 != 1)
      {
        goto LABEL_129;
      }

      result = sub_1B4975024(v57, &qword_1EB8A7DF0, &qword_1B4D202E0);
      v20 = v42;
      v29 = v133;
      goto LABEL_68;
    }

    v126 = v33;
    v62 = v143;
    sub_1B4974FBC(v57, v143, &qword_1EB8A7DF0, &qword_1B4D202E0);
    if (v59(v57 + v55, 1, v60) == 1)
    {
      sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      v24 = v58;
LABEL_129:
      sub_1B4975024(v57, &qword_1EB8A7DF8, &qword_1B4D202E8);
      v29 = v133;
LABEL_121:
      sub_1B4A1F650(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4A1F650(v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      goto LABEL_122;
    }

    v63 = v57 + v55;
    v64 = v142;
    result = sub_1B4A1F750(v63, v142, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    v65 = *v62;
    v66 = *v64;
    v67 = *(*v62 + 16);
    v20 = v42;
    v24 = v58;
    v29 = v133;
    if (v67 != *(v66 + 16))
    {
      goto LABEL_119;
    }

    if (v67 && v65 != v66)
    {
      v68 = (v65 + 40);
      v69 = (v66 + 40);
      while (1)
      {
        result = *(v68 - 1);
        if (result != *(v69 - 1) || *v68 != *v69)
        {
          result = sub_1B4D18DCC();
          v62 = v143;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v68 += 2;
        v69 += 2;
        if (!--v67)
        {
          goto LABEL_31;
        }
      }

LABEL_119:
      sub_1B4A1F650(v142, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      v122 = &qword_1EB8A7DF0;
      v123 = &qword_1B4D202E0;
      v124 = v141;
      goto LABEL_120;
    }

LABEL_31:
    v71 = v62[1];
    v72 = v142[1];
    v73 = *(v71 + 16);
    if (v73 != *(v72 + 16))
    {
      goto LABEL_119;
    }

    if (v73)
    {
      v74 = v71 == v72;
    }

    else
    {
      v74 = 1;
    }

    if (!v74)
    {
      v113 = (v71 + 40);
      v114 = (v72 + 40);
      while (v73)
      {
        result = *(v113 - 1);
        if (result != *(v114 - 1) || *v113 != *v114)
        {
          result = sub_1B4D18DCC();
          v62 = v143;
          if ((result & 1) == 0)
          {
            goto LABEL_119;
          }
        }

        v113 += 2;
        v114 += 2;
        if (!--v73)
        {
          goto LABEL_37;
        }
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

LABEL_37:
    v75 = v62[2];
    v76 = v142[2];
    v77 = *(v75 + 16);
    if (v77 != *(v76 + 16))
    {
      goto LABEL_119;
    }

    if (v77)
    {
      v78 = v75 == v76;
    }

    else
    {
      v78 = 1;
    }

    if (!v78)
    {
      v79 = (v75 + 32);
      v80 = (v76 + 32);
      while (v77)
      {
        if (*v79 != *v80)
        {
          goto LABEL_119;
        }

        ++v79;
        ++v80;
        if (!--v77)
        {
          goto LABEL_46;
        }
      }

LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_46:
    v81 = v62[3];
    v82 = v142[3];
    v83 = *(v81 + 16);
    if (v83 != *(v82 + 16))
    {
      goto LABEL_119;
    }

    if (v83)
    {
      v84 = v81 == v82;
    }

    else
    {
      v84 = 1;
    }

    if (!v84)
    {
      v85 = (v81 + 32);
      v86 = (v82 + 32);
      while (v83)
      {
        if (*v85 != *v86)
        {
          goto LABEL_119;
        }

        ++v85;
        ++v86;
        if (!--v83)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_134;
    }

LABEL_55:
    v87 = v62[4];
    v88 = v142[4];
    v89 = *(v87 + 16);
    if (v89 != *(v88 + 16))
    {
      goto LABEL_119;
    }

    if (v89 && v87 != v88)
    {
      break;
    }

LABEL_61:
    v91 = v62[5];
    v92 = v142[5];
    v93 = *(v91 + 16);
    if (v93 != *(v92 + 16))
    {
      goto LABEL_119;
    }

    if (v93)
    {
      v94 = v91 == v92;
    }

    else
    {
      v94 = 1;
    }

    if (!v94)
    {
      v119 = (v91 + 40);
      v120 = (v92 + 40);
      while (v93)
      {
        result = *(v119 - 1);
        if (result != *(v120 - 1) || *v119 != *v120)
        {
          result = sub_1B4D18DCC();
          v62 = v143;
          if ((result & 1) == 0)
          {
            goto LABEL_119;
          }
        }

        v119 += 2;
        v120 += 2;
        if (!--v93)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_135;
    }

LABEL_67:
    v95 = *(v140 + 40);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v96 = v142;
    v97 = sub_1B4D1816C();
    sub_1B4A1F650(v96, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    sub_1B4A1F650(v62, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    result = sub_1B4975024(v141, &qword_1EB8A7DF0, &qword_1B4D202E0);
    v33 = v126;
    if ((v97 & 1) == 0)
    {
      goto LABEL_121;
    }

LABEL_68:
    v98 = *v29;
    v99 = *v24;
    v100 = *(*v29 + 16);
    if (v100 != *(*v24 + 2))
    {
      goto LABEL_121;
    }

    if (v100 && v98 != v99)
    {
      v101 = (v98 + 40);
      v102 = (v99 + 40);
      do
      {
        result = *(v101 - 1);
        if (result != *(v102 - 1) || *v101 != *v102)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        v101 += 2;
        v102 += 2;
      }

      while (--v100);
    }

    v104 = v29[1];
    v105 = v24[1];
    v106 = *(v104 + 2);
    if (v106 != *(v105 + 2))
    {
      goto LABEL_121;
    }

    if (v106)
    {
      v107 = v104 == v105;
    }

    else
    {
      v107 = 1;
    }

    if (!v107)
    {
      v110 = (v104 + 40);
      v111 = (v105 + 40);
      while (v106)
      {
        result = *(v110 - 1);
        if (result != *(v111 - 1) || *v110 != *v111)
        {
          result = sub_1B4D18DCC();
          if ((result & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        v110 += 2;
        v111 += 2;
        if (!--v106)
        {
          goto LABEL_85;
        }
      }

      __break(1u);
      __break(1u);
      goto LABEL_131;
    }

LABEL_85:
    v108 = v134[6];
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v109 = sub_1B4D1816C();
    sub_1B4A1F650(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4A1F650(v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v30 = v129;
    if (v109)
    {
      v34 = v130 + 1;
      v32 = v128;
      v35 = v127;
      if (v130 + 1 != v129)
      {
        continue;
      }
    }

    return v109 & 1;
  }

  v116 = (v87 + 40);
  v117 = (v88 + 40);
  while (v89)
  {
    result = *(v116 - 1);
    if (result != *(v117 - 1) || *v116 != *v117)
    {
      result = sub_1B4D18DCC();
      v62 = v143;
      if ((result & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    v116 += 2;
    v117 += 2;
    if (!--v89)
    {
      goto LABEL_61;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1B4A185B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v79 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD0, &qword_1B4D20188);
  v11 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v79 - v12;
  v100 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v13 = *(v100 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v88 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v79 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE0, &unk_1B4D27AD0);
  v19 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v21 = &v79 - v20;
  v97 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v22 = *(v97 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v102 = &v79 - v27;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CF0, &qword_1B4D201A8);
  v28 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v30 = &v79 - v29;
  v103 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v31 = *(*(v103 - 1) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v79 - v35);
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_36:
    v76 = 0;
    return v76 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v84 = v30;
  v80 = v4;
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v85 = (v22 + 48);
  v79 = (v5 + 48);
  v81 = *(v34 + 72);
  v41 = v88;
  v42 = v102;
  v43 = v99;
  v91 = v21;
  v83 = (v13 + 48);
  v82 = &v79 - v35;
  while (1)
  {
    v101 = v37;
    v94 = v39;
    result = sub_1B4A1F5E8(v39, v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    if (!v101)
    {
      break;
    }

    v93 = v40;
    sub_1B4A1F5E8(v40, v43, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    if (*v36 != *v43 || v36[1] != v43[1])
    {
      goto LABEL_35;
    }

    v45 = v42;
    v46 = v103[7];
    v47 = *(v96 + 48);
    v48 = v43;
    v49 = v84;
    sub_1B4974FBC(v36 + v46, v84, &qword_1EB8A7CE8, &qword_1B4D201A0);
    sub_1B4974FBC(v48 + v46, v49 + v47, &qword_1EB8A7CE8, &qword_1B4D201A0);
    v50 = *v85;
    v51 = v97;
    if ((*v85)(v49, 1, v97) == 1)
    {
      if (v50(v49 + v47, 1, v51) != 1)
      {
        goto LABEL_28;
      }

      sub_1B4975024(v49, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v52 = v83;
      v43 = v99;
      v53 = v91;
    }

    else
    {
      sub_1B4974FBC(v49, v45, &qword_1EB8A7CE8, &qword_1B4D201A0);
      if (v50(v49 + v47, 1, v51) == 1)
      {
        sub_1B4A1F650(v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
LABEL_28:
        sub_1B4975024(v49, &qword_1EB8A7CF0, &qword_1B4D201A8);
        v43 = v99;
        goto LABEL_35;
      }

      v54 = v90;
      sub_1B4A1F750(v49 + v47, v90, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v55 = _s19FitnessIntelligence06Apple_a1_B26_WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v102, v54);
      sub_1B4A1F650(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4A1F650(v102, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4975024(v49, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v52 = v83;
      v43 = v99;
      v53 = v91;
      if ((v55 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v56 = v103[8];
    v57 = *(v95 + 48);
    sub_1B4974FBC(v36 + v56, v53, &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4974FBC(v43 + v56, v53 + v57, &qword_1EB8A7CD8, &unk_1B4D20190);
    v58 = *v52;
    v59 = v100;
    if ((*v52)(v53, 1, v100) == 1)
    {
      v60 = v58(v53 + v57, 1, v59);
      v36 = v82;
      if (v60 != 1)
      {
        goto LABEL_30;
      }

      sub_1B4975024(v53, &qword_1EB8A7CD8, &unk_1B4D20190);
      v42 = v102;
    }

    else
    {
      v61 = v92;
      sub_1B4974FBC(v53, v92, &qword_1EB8A7CD8, &unk_1B4D20190);
      if (v58(v53 + v57, 1, v59) == 1)
      {
        sub_1B4A1F650(v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
        v36 = v82;
LABEL_30:
        v77 = &qword_1EB8A7CE0;
        v78 = &unk_1B4D27AD0;
        goto LABEL_34;
      }

      sub_1B4A1F750(v53 + v57, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      v62 = *(v89 + 48);
      v63 = v98;
      sub_1B4974FBC(v61, v98, &qword_1EB8A7CC8, &qword_1B4D20180);
      sub_1B4974FBC(v41, v63 + v62, &qword_1EB8A7CC8, &qword_1B4D20180);
      v64 = *v79;
      v65 = v63;
      v66 = v80;
      v67 = (*v79)(v65, 1, v80);
      v36 = v82;
      if (v67 == 1)
      {
        v68 = v61;
        v69 = v41;
        if (v64(v98 + v62, 1, v66) != 1)
        {
          goto LABEL_32;
        }

        sub_1B4975024(v98, &qword_1EB8A7CC8, &qword_1B4D20180);
        v53 = v91;
      }

      else
      {
        v70 = v98;
        v71 = v87;
        sub_1B4974FBC(v98, v87, &qword_1EB8A7CC8, &qword_1B4D20180);
        if (v64(v70 + v62, 1, v66) == 1)
        {
          sub_1B4A1F650(v71, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
          v69 = v88;
          v68 = v92;
LABEL_32:
          sub_1B4975024(v98, &qword_1EB8A7CD0, &qword_1B4D20188);
          v53 = v91;
LABEL_33:
          sub_1B4A1F650(v69, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
          sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
          v77 = &qword_1EB8A7CD8;
          v78 = &unk_1B4D20190;
LABEL_34:
          sub_1B4975024(v53, v77, v78);
LABEL_35:
          sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
          sub_1B4A1F650(v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
          goto LABEL_36;
        }

        v72 = v86;
        sub_1B4A1F750(v70 + v62, v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        v73 = static Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType.== infix(_:_:)(v71, v72);
        sub_1B4A1F650(v72, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        sub_1B4A1F650(v71, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        sub_1B4975024(v70, &qword_1EB8A7CC8, &qword_1B4D20180);
        v69 = v88;
        v53 = v91;
        v68 = v92;
        if ((v73 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v74 = *(v100 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      LOBYTE(v74) = sub_1B4D1816C();
      v41 = v69;
      sub_1B4A1F650(v69, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      sub_1B4A1F650(v68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      sub_1B4975024(v53, &qword_1EB8A7CD8, &unk_1B4D20190);
      v42 = v102;
      if ((v74 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v75 = v103[6];
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v76 = sub_1B4D1816C();
    sub_1B4A1F650(v43, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    sub_1B4A1F650(v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
    if (v76)
    {
      v37 = v101 - 1;
      v40 = v93 + v81;
      v39 = v94 + v81;
      if (v101 != 1)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A191CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = &v121 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E88, &unk_1B4D203A0);
  v12 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v144 = &v121 - v13;
  v143 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v14 = *(v143 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v134 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v136 = &v121 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E98, &unk_1B4D203B0);
  v20 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v145 = &v121 - v21;
  v22 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v138 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v139 = &v121 - v28;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA8, &qword_1B4D203C0);
  v29 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v31 = &v121 - v30;
  v147 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v32 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v149 = &v121 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
    goto LABEL_65;
  }

  if (!v37 || a1 == a2)
  {
    v100 = 1;
    return v100 & 1;
  }

  v135 = v31;
  v124 = v8;
  v127 = v4;
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v131 = (v23 + 48);
  v126 = (v5 + 48);
  v128 = *(v35 + 72);
  v41 = v143;
  v133 = v22;
  v130 = (v14 + 48);
  while (1)
  {
    sub_1B4A1F5E8(v39, v149, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v146 = v37;
    v140 = v40;
    v141 = v39;
    v42 = v40;
    v43 = v148;
    sub_1B4A1F5E8(v42, v148, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    v44 = *(v147 + 20);
    v45 = *(v142 + 48);
    v46 = v135;
    sub_1B4974FBC(v149 + v44, v135, &qword_1EB8A7EA0, &unk_1B4D42260);
    v47 = v43 + v44;
    v48 = v46;
    sub_1B4974FBC(v47, v46 + v45, &qword_1EB8A7EA0, &unk_1B4D42260);
    v49 = *v131;
    if ((*v131)(v46, 1, v22) != 1)
    {
      break;
    }

    if (v49(v46 + v45, 1, v22) != 1)
    {
      goto LABEL_51;
    }

    sub_1B4975024(v46, &qword_1EB8A7EA0, &unk_1B4D42260);
    v50 = v130;
    v51 = v146;
LABEL_34:
    v81 = *(v147 + 24);
    v82 = *(v137 + 48);
    v83 = v145;
    sub_1B4974FBC(v149 + v81, v145, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4974FBC(v148 + v81, v83 + v82, &qword_1EB8A7E90, &unk_1B4D25C60);
    v84 = *v50;
    if ((*v50)(v83, 1, v41) == 1)
    {
      if (v84(v83 + v82, 1, v41) != 1)
      {
        goto LABEL_53;
      }

      sub_1B4975024(v83, &qword_1EB8A7E90, &unk_1B4D25C60);
      v22 = v133;
    }

    else
    {
      v85 = v136;
      sub_1B4974FBC(v83, v136, &qword_1EB8A7E90, &unk_1B4D25C60);
      if (v84(v83 + v82, 1, v41) == 1)
      {
        sub_1B4A1F650(v85, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
LABEL_53:
        v104 = &qword_1EB8A7E98;
        v105 = &unk_1B4D203B0;
        v106 = v83;
        goto LABEL_63;
      }

      v86 = v134;
      sub_1B4A1F750(v83 + v82, v134, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      v87 = *(v132 + 48);
      v88 = v144;
      sub_1B4974FBC(v85, v144, &qword_1EB8A7E80, &unk_1B4D25C50);
      sub_1B4974FBC(v86, v88 + v87, &qword_1EB8A7E80, &unk_1B4D25C50);
      v89 = *v126;
      v90 = v127;
      if ((*v126)(v88, 1, v127) == 1)
      {
        if (v89(v144 + v87, 1, v90) != 1)
        {
          goto LABEL_57;
        }

        sub_1B4975024(v144, &qword_1EB8A7E80, &unk_1B4D25C50);
      }

      else
      {
        v91 = v144;
        v92 = v129;
        sub_1B4974FBC(v144, v129, &qword_1EB8A7E80, &unk_1B4D25C50);
        if (v89(v91 + v87, 1, v90) == 1)
        {
          sub_1B4A1F650(v92, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
          v86 = v134;
LABEL_57:
          sub_1B4975024(v144, &qword_1EB8A7E88, &unk_1B4D203A0);
LABEL_58:
          sub_1B4A1F650(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
          sub_1B4A1F650(v136, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
          v104 = &qword_1EB8A7E90;
          v105 = &unk_1B4D25C60;
          v106 = v145;
          goto LABEL_63;
        }

        v93 = v124;
        sub_1B4A1F750(v91 + v87, v124, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
        v94 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(v92, v93);
        sub_1B4A1F650(v93, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4A1F650(v92, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
        sub_1B4975024(v91, &qword_1EB8A7E80, &unk_1B4D25C50);
        v86 = v134;
        if ((v94 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      v41 = v143;
      v95 = *(v143 + 20);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v96 = v136;
      v97 = sub_1B4D1816C();
      sub_1B4A1F650(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      sub_1B4A1F650(v96, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      sub_1B4975024(v145, &qword_1EB8A7E90, &unk_1B4D25C60);
      v22 = v133;
      v51 = v146;
      if ((v97 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v98 = v148;
    v99 = v149;
    v100 = sub_1B4D1816C();
    sub_1B4A1F650(v98, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    sub_1B4A1F650(v99, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    if (v100)
    {
      v40 = v140 + v128;
      v39 = v141 + v128;
      v37 = v51 - 1;
      if (v37)
      {
        continue;
      }
    }

    return v100 & 1;
  }

  v52 = v139;
  sub_1B4974FBC(v46, v139, &qword_1EB8A7EA0, &unk_1B4D42260);
  if (v49(v46 + v45, 1, v22) == 1)
  {
    sub_1B4A1F650(v52, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v48 = v46;
LABEL_51:
    v104 = &qword_1EB8A7EA8;
    v105 = &qword_1B4D203C0;
    v106 = v48;
    goto LABEL_63;
  }

  v53 = v138;
  sub_1B4A1F750(v46 + v45, v138, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v54 = *v52;
  v55 = *(v52 + 8);
  v56 = *(v52 + 16);
  v57 = *v53;
  v58 = *(v53 + 8);
  v59 = *(v53 + 16);
  if (v56 == 255)
  {
    v70 = v58;
    v50 = v130;
    if (v59 != 255)
    {
      goto LABEL_55;
    }

    v66 = v54;
    v65 = v55;
    sub_1B4A1F598(v54, v55, 255);
    sub_1B4A1F598(v57, v70, 255);
    v71 = -1;
    v51 = v146;
    v61 = v133;
    goto LABEL_33;
  }

  v50 = v130;
  if (v59 != 255)
  {
    v125 = *(v52 + 16);
    if (v56 <= 1)
    {
      v60 = v55;
      if (!v56)
      {
        v51 = v146;
        if (v59)
        {
          v112 = v54;
          v113 = v55;
          v114 = v55;
          v115 = v56;
          sub_1B4A1F598(v54, v114, 0);

          v60 = v113;
          v54 = v112;
          LOBYTE(v56) = v115;
LABEL_60:
          v116 = v54;
          v117 = v60;
          v118 = v57;
          v119 = v56;
          sub_1B4A1F598(v54, v60, v56);
          sub_1B4A1F598(v118, v58, v59);
          sub_1B4A1F5D4(v116, v117, v119);
          sub_1B4A1F5D4(v118, v58, v59);
          v66 = v116;
          v65 = v117;
          sub_1B4A1F5C0(v116, v117, v119);
LABEL_61:
          v109 = v66;
          v110 = v65;
          v111 = v125;
          goto LABEL_62;
        }

        if (v54 == v57 && v55 == v58)
        {
          v66 = v54;
          v65 = v55;
          sub_1B4A1F598(v54, v55, 0);
          sub_1B4A1F598(v66, v55, 0);
          sub_1B4A1F598(v66, v55, 0);
          sub_1B4A1F5D4(v66, v55, 0);
          sub_1B4A1F5D4(v66, v55, 0);
          v61 = v133;
        }

        else
        {
          v101 = v54;
          v102 = v57;
          v122 = v57;
          v103 = v58;
          v123 = sub_1B4D18DCC();
          sub_1B4A1F598(v101, v55, 0);
          sub_1B4A1F598(v101, v55, 0);
          sub_1B4A1F598(v102, v58, 0);
          v66 = v101;
          v65 = v55;
          sub_1B4A1F5D4(v101, v55, 0);
          sub_1B4A1F5D4(v122, v103, 0);
          v61 = v133;
          if ((v123 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_32;
      }

      v51 = v146;
      v61 = v133;
      if (v59 != 1)
      {
        goto LABEL_60;
      }

      v72 = v54;
      v65 = v60;
      sub_1B4A1F598(v54, v60, 1);
      sub_1B4A1F598(v57, v58, 1);
      sub_1B4A1F5D4(v72, v65, 1);
      sub_1B4A1F5D4(v57, v58, 1);
      v73 = v72;
      v74 = v65;
      v75 = 1;
    }

    else
    {
      v60 = v55;
      if (v56 != 2)
      {
        v51 = v146;
        if (v56 == 3)
        {
          v61 = v133;
          if (v59 != 3)
          {
            goto LABEL_60;
          }

          v62 = *&v54;
          v63 = *&v57;
          v64 = v54;
          v65 = v60;
          sub_1B4A1F598(v54, v60, 3);
          sub_1B4A1F598(v57, v58, 3);
          sub_1B4A1F5D4(v64, v65, 3);
          sub_1B4A1F5D4(v57, v58, 3);
          v66 = v64;
          v67 = v64;
          v68 = v65;
          v69 = 3;
        }

        else
        {
          v61 = v133;
          if (v59 != 4)
          {
            goto LABEL_60;
          }

          v62 = *&v54;
          v63 = *&v57;
          v76 = v54;
          v65 = v60;
          sub_1B4A1F598(v54, v60, 4);
          sub_1B4A1F598(v57, v58, 4);
          sub_1B4A1F5D4(v76, v65, 4);
          sub_1B4A1F5D4(v57, v58, 4);
          v66 = v76;
          v67 = v76;
          v68 = v65;
          v69 = 4;
        }

        sub_1B4A1F5C0(v67, v68, v69);
        if (v62 != v63)
        {
          goto LABEL_61;
        }

        goto LABEL_32;
      }

      v51 = v146;
      v61 = v133;
      if (v59 != 2)
      {
        goto LABEL_60;
      }

      v72 = v54;
      v65 = v60;
      sub_1B4A1F598(v54, v60, 2);
      sub_1B4A1F598(v57, v58, 2);
      sub_1B4A1F5D4(v72, v65, 2);
      sub_1B4A1F5D4(v57, v58, 2);
      v73 = v72;
      v74 = v65;
      v75 = 2;
    }

    sub_1B4A1F5C0(v73, v74, v75);
    v66 = v72;
    if (v72 != v57)
    {
      goto LABEL_61;
    }

LABEL_32:
    v71 = v125;
LABEL_33:
    sub_1B4A1F5C0(v66, v65, v71);
    v77 = *(v61 + 20);
    sub_1B4D17BCC();
    sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v79 = v138;
    v78 = v139;
    v80 = sub_1B4D1816C();
    sub_1B4A1F650(v79, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    sub_1B4A1F650(v78, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    sub_1B4975024(v135, &qword_1EB8A7EA0, &unk_1B4D42260);
    v41 = v143;
    if ((v80 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v70 = v58;
LABEL_55:
  v107 = v54;
  v108 = v56;
  sub_1B4A1F598(v54, v55, v56);
  sub_1B4A1F598(v57, v70, v59);
  sub_1B4A1F5C0(v107, v55, v108);
  v109 = v57;
  v110 = v70;
  v111 = v59;
LABEL_62:
  sub_1B4A1F5C0(v109, v110, v111);
  sub_1B4A1F650(v138, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  sub_1B4A1F650(v139, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v104 = &qword_1EB8A7EA0;
  v105 = &unk_1B4D42260;
  v106 = v135;
LABEL_63:
  sub_1B4975024(v106, v104, v105);
LABEL_64:
  sub_1B4A1F650(v148, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
  sub_1B4A1F650(v149, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
LABEL_65:
  v100 = 0;
  return v100 & 1;
}

uint64_t sub_1B4A1A2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v7[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = sub_1B4AC9E88(v18, v19);

          if (!v21)
          {
            break;
          }
        }

        sub_1B4D17BCC();
        sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v22 = sub_1B4D1816C();
        sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1B4A1A554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      if (*v11 != *v7 || v11[1] != v7[1])
      {
        break;
      }

      v17 = *(v4 + 24);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v18 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B4A1A80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_15:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B4A1F5E8(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A1F5E8(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      if (*v11 != *v7 || v11[1] != v7[1])
      {
        break;
      }

      if ((v11[2] != v7[2] || v11[3] != v7[3]) && (sub_1B4D18DCC() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 28);
      sub_1B4D17BCC();
      sub_1B4A1F7D4(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v18 = sub_1B4D1816C();
      sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    sub_1B4A1F650(v11, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    goto LABEL_15;
  }

  v18 = 1;
  return v18 & 1;
}

int *RingsPropertiesQuery.init(range:filters:groupBy:propertyKinds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  sub_1B4A1F5E8(a1, a5, type metadata accessor for DateRangeDescriptor);
  sub_1B4A1F650(a1, type metadata accessor for DateRangeDescriptor);
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (!v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E7CC0];
  }

  result = type metadata accessor for RingsPropertiesQuery();
  v14 = (a5 + result[5]);
  *v14 = v9;
  v14[1] = v10;
  v14[2] = v12;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

void static RingsPropertyDimensionsFilters.empty()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

FitnessIntelligence::RingsPropertyDimensionsFilters __swiftcall RingsPropertyDimensionsFilters.init(monthOfYear:dayOfWeek:paused:)(Swift::OpaquePointer monthOfYear, Swift::OpaquePointer dayOfWeek, Swift::OpaquePointer paused)
{
  v3->_rawValue = monthOfYear._rawValue;
  v3[1]._rawValue = dayOfWeek._rawValue;
  v3[2]._rawValue = paused._rawValue;
  result.paused = paused;
  result.dayOfWeek = dayOfWeek;
  result.monthOfYear = monthOfYear;
  return result;
}

uint64_t static RingsPropertyDimensionsFilters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0A7D0(v3, v5);
}

uint64_t RingsPropertyDimensionsFilters.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B49C28E8(a1, v3);
  sub_1B49C27B8(a1, v4);

  return sub_1B49C2A9C(a1, v5);
}

uint64_t RingsPropertyDimensionsFilters.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  sub_1B49C28E8(v5, v1);
  sub_1B49C27B8(v5, v2);
  sub_1B49C2A9C(v5, v3);
  return sub_1B4D18EDC();
}

void sub_1B4A1ACD4(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

uint64_t sub_1B4A1ACE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  sub_1B49C28E8(v5, v1);
  sub_1B49C27B8(v5, v2);
  sub_1B49C2A9C(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1AD54(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B49C28E8(a1, v3);
  sub_1B49C27B8(a1, v4);

  return sub_1B49C2A9C(a1, v5);
}

uint64_t sub_1B4A1ADAC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  sub_1B49C28E8(v5, v1);
  sub_1B49C27B8(v5, v2);
  sub_1B49C2A9C(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1AE14(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0A7D0(v3, v5);
}

void RingsPropertyDimensionsFilters.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v45 = a1;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = (*a1 + 40);
  v46 = v10;
  v47 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = &v10[16 * v7];
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    ++v7;
    v12 = v11 + 16;
    v13 = *(v11 - 1);
    v14 = *v11;

    v15 = sub_1B4D18B1C();

    v11 = v12;
    if (v15 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1B4A1EDC0(0, *(v47 + 2) + 1, 1, v47, &qword_1EB8A7ED0, &qword_1B4D203D8);
      }

      v17 = *(v47 + 2);
      v16 = *(v47 + 3);
      if (v17 >= v16 >> 1)
      {
        v47 = sub_1B4A1EDC0((v16 > 1), v17 + 1, 1, v47, &qword_1EB8A7ED0, &qword_1B4D203D8);
      }

      v10 = v46;
      v18 = v47;
      *(v47 + 2) = v17 + 1;
      v18[v17 + 32] = v15;
      goto LABEL_2;
    }
  }

  v19 = 0;
  v20 = *(v45 + 8);
  v21 = *(v20 + 16);
  v22 = v20 + 40;
  v46 = MEMORY[0x1E69E7CC0];
  v43 = v20 + 40;
LABEL_12:
  v23 = (v22 + 16 * v19);
  while (v21 != v19)
  {
    if (v19 >= *(v20 + 16))
    {
      goto LABEL_28;
    }

    ++v19;
    v24 = v23 + 2;
    v25 = *(v23 - 1);
    v26 = *v23;

    v27 = sub_1B4D18B1C();

    v23 = v24;
    if (v27 < 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1B4A1EDC0(0, *(v46 + 2) + 1, 1, v46, &qword_1EB8A7EC8, &qword_1B4D203D0);
      }

      v29 = *(v46 + 2);
      v28 = *(v46 + 3);
      if (v29 >= v28 >> 1)
      {
        v46 = sub_1B4A1EDC0((v28 > 1), v29 + 1, 1, v46, &qword_1EB8A7EC8, &qword_1B4D203D0);
      }

      v30 = v46;
      *(v46 + 2) = v29 + 1;
      v30[v29 + 32] = v27;
      v22 = v43;
      goto LABEL_12;
    }
  }

  v31 = *(v45 + 16);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEB68(0, v32, 0);
    v33 = v48;
    v34 = v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v35 = *(v42 + 72);
    do
    {
      sub_1B4A1F5E8(v34, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
      v36 = v6[*(v3 + 20)];
      sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
      v48 = v33;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B4BCEB68((v37 > 1), v38 + 1, 1);
        v33 = v48;
      }

      *(v33 + 16) = v38 + 1;
      *(v33 + v38 + 32) = v36;
      v34 += v35;
      --v32;
    }

    while (v32);
  }

  sub_1B4A1F650(v45, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v39 = v44;
  v40 = v46;
  *v44 = v47;
  v39[1] = v40;
  v39[2] = v33;
}

uint64_t RingsPropertyDimensionsFilters.protobuf()()
{
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v3 = *v0;
  sub_1B4A1F7D4(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A1B350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v59 = v4;
  v60 = a1;
  v63 = v11;
  if (v12)
  {
    v57 = a3;
    v64 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v12, 0);
    v14 = (a2 + 32);
    v13 = v64;
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (v16 > 5)
      {
        if (v15 == 10)
        {
          v17 = 0x7265626D65766F6ELL;
        }

        else
        {
          v17 = 0x7265626D65636564;
        }

        v18 = 0xE800000000000000;
        if (v15 == 9)
        {
          v17 = 0x7265626F74636FLL;
          v18 = 0xE700000000000000;
        }

        v19 = 0x747375677561;
        if (v15 == 7)
        {
          v20 = 0xE600000000000000;
        }

        else
        {
          v19 = 0x65626D6574706573;
          v20 = 0xE900000000000072;
        }

        if (v15 == 6)
        {
          v19 = 2037151082;
          v20 = 0xE400000000000000;
        }

        v21 = v15 <= 8;
      }

      else
      {
        if (v15 == 4)
        {
          v17 = 7954797;
        }

        else
        {
          v17 = 1701737834;
        }

        if (v15 == 4)
        {
          v18 = 0xE300000000000000;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        if (v15 == 3)
        {
          v17 = 0x6C69727061;
          v18 = 0xE500000000000000;
        }

        if (v15 == 1)
        {
          v19 = 0x7972617572626566;
        }

        else
        {
          v19 = 0x686372616DLL;
        }

        if (v15 == 1)
        {
          v20 = 0xE800000000000000;
        }

        else
        {
          v20 = 0xE500000000000000;
        }

        if (!v15)
        {
          v19 = 0x797261756E616ALL;
          v20 = 0xE700000000000000;
        }

        v21 = v15 <= 2;
      }

      if (v21)
      {
        v22 = v19;
      }

      else
      {
        v22 = v17;
      }

      if (v21)
      {
        v23 = v20;
      }

      else
      {
        v23 = v18;
      }

      v64 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B4BCF43C((v24 > 1), v25 + 1, 1);
        v13 = v64;
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      --v12;
      v11 = v63;
    }

    while (v12);
    a1 = v60;
    a3 = v57;
  }

  v27 = *a1;

  *a1 = v13;
  v28 = *(a3 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v28, 0);
    v30 = (a3 + 32);
    v29 = v64;
    do
    {
      v32 = *v30++;
      v31 = v32;
      v33 = 0x7961646E7573;
      if (v32 == 5)
      {
        v33 = 0x7961647275746173;
        v34 = 0xE800000000000000;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      if (v31 == 3)
      {
        v35 = 0x7961647372756874;
      }

      else
      {
        v35 = 0x796164697266;
      }

      if (v31 == 3)
      {
        v36 = 0xE800000000000000;
      }

      else
      {
        v36 = 0xE600000000000000;
      }

      if (v31 <= 4)
      {
        v33 = v35;
        v34 = v36;
      }

      v37 = 0xE900000000000079;
      if (v31 == 1)
      {
        v38 = 0x79616473657574;
      }

      else
      {
        v38 = 0x616473656E646577;
      }

      if (v31 == 1)
      {
        v37 = 0xE700000000000000;
      }

      if (!v31)
      {
        v38 = 0x7961646E6F6DLL;
        v37 = 0xE600000000000000;
      }

      if (v31 <= 2)
      {
        v39 = v38;
      }

      else
      {
        v39 = v33;
      }

      if (v31 <= 2)
      {
        v40 = v37;
      }

      else
      {
        v40 = v34;
      }

      v64 = v29;
      v42 = *(v29 + 16);
      v41 = *(v29 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1B4BCF43C((v41 > 1), v42 + 1, 1);
        v29 = v64;
      }

      *(v29 + 16) = v42 + 1;
      v43 = v29 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      --v28;
    }

    while (v28);
    a1 = v60;
    v11 = v63;
  }

  v44 = a1[1];

  a1[1] = v29;
  v45 = v58;
  v46 = *(v58 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  if (v46)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF49C(0, v46, 0);
    v47 = v64;
    v48 = (v45 + 32);
    v49 = sub_1B4A1F7D4(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
    do
    {
      v50 = *v48++;
      MEMORY[0x1EEE9AC00](v49);
      *(&v56 - 16) = v51;
      sub_1B4D17DAC();
      v64 = v47;
      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1B4BCF49C(v52 > 1, v53 + 1, 1);
        v47 = v64;
      }

      *(v47 + 16) = v53 + 1;
      v49 = sub_1B4A1F750(v11, v47 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v53, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
      --v46;
    }

    while (v46);
    a1 = v60;
  }

  v54 = a1[2];

  a1[2] = v47;
  return result;
}

uint64_t sub_1B4A1B9A4()
{
  v1 = *(v0 + 2);
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v3 = *v0;
  sub_1B4A1F7D4(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t RingsPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RingsPropertiesQuery() + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t RingsPropertiesQuery.groupBy.getter()
{
  v1 = *(v0 + *(type metadata accessor for RingsPropertiesQuery() + 24));
}

uint64_t RingsPropertiesQuery.propertyKinds.getter()
{
  v1 = *(v0 + *(type metadata accessor for RingsPropertiesQuery() + 28));
}

uint64_t RingsPropertiesQuery.hash(into:)(uint64_t a1)
{
  DateRangeDescriptor.hash(into:)();
  v3 = type metadata accessor for RingsPropertiesQuery();
  v4 = (v1 + v3[5]);
  v5 = v4[1];
  v6 = v4[2];
  sub_1B49C28E8(a1, *v4);
  sub_1B49C27B8(a1, v5);
  sub_1B49C2A9C(a1, v6);
  sub_1B49C4F70(a1, *(v1 + v3[6]));
  v7 = *(v1 + v3[7]);

  return sub_1B49C4BA0(a1, v7);
}

uint64_t RingsPropertiesQuery.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v1 = type metadata accessor for RingsPropertiesQuery();
  v2 = (v0 + v1[5]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1B49C28E8(v6, *v2);
  sub_1B49C27B8(v6, v3);
  sub_1B49C2A9C(v6, v4);
  sub_1B49C4F70(v6, *(v0 + v1[6]));
  sub_1B49C4BA0(v6, *(v0 + v1[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1BCFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_1B4A1BD68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_1B4A1F5E8(a1, a6, type metadata accessor for DateRangeDescriptor);
  result = sub_1B4A1F650(a1, type metadata accessor for DateRangeDescriptor);
  v15 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    v17 = v12;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    v15 = v11;
  }

  v18 = a5[6];
  v19 = (a6 + a5[5]);
  *v19 = v15;
  v19[1] = v17;
  v19[2] = v16;
  *(a6 + v18) = a3;
  *(a6 + a5[7]) = a4;
  return result;
}

uint64_t sub_1B4A1BE24(int *a1)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v3 = (v1 + a1[5]);
  v4 = v3[1];
  v5 = v3[2];
  sub_1B49C28E8(v7, *v3);
  sub_1B49C27B8(v7, v4);
  sub_1B49C2A9C(v7, v5);
  sub_1B49C4F70(v7, *(v1 + a1[6]));
  sub_1B49C4BA0(v7, *(v1 + a1[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1BEC0(uint64_t a1, int *a2)
{
  DateRangeDescriptor.hash(into:)();
  v5 = (v2 + a2[5]);
  v6 = v5[1];
  v7 = v5[2];
  sub_1B49C28E8(a1, *v5);
  sub_1B49C27B8(a1, v6);
  sub_1B49C2A9C(a1, v7);
  sub_1B49C4F70(a1, *(v2 + a2[6]));
  v8 = *(v2 + a2[7]);

  return sub_1B49C4BA0(a1, v8);
}

uint64_t sub_1B4A1BF54(uint64_t a1, int *a2)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = v4[1];
  v6 = v4[2];
  sub_1B49C28E8(v8, *v4);
  sub_1B49C27B8(v8, v5);
  sub_1B49C2A9C(v8, v6);
  sub_1B49C4F70(v8, *(v2 + a2[6]));
  sub_1B49C4BA0(v8, *(v2 + a2[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1BFEC(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4A1F7D4(&qword_1EDC39538, type metadata accessor for RingsPropertiesQuery);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4A1F7D4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v1 = sub_1B4D17D6C();
    sub_1B4A1F650(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  return v1;
}

uint64_t sub_1B4A1C170(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v88 = *(v5 - 8);
  v6 = *(v88 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a2;
  sub_1B4A1F7D4(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4D17DAC();
  v87 = v2;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v15 = *(v14 + 28);
  sub_1B4975024(&a1[v15], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4A1F750(v13, &a1[v15], type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  (*(v10 + 56))(&a1[v15], 0, 1, v9);
  v16 = type metadata accessor for RingsPropertiesQuery();
  v17 = a2 + v16[5];
  v18 = *(v17 + 16);
  v89 = *v17;
  v90 = v18;
  sub_1B4A1F7D4(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v19 = v87;
  sub_1B4D17DAC();
  v87 = v19;
  v20 = *(v14 + 32);
  sub_1B4975024(&a1[v20], &qword_1EB8A7BE0, &qword_1B4D1FE90);
  sub_1B4A1F750(v8, &a1[v20], type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v21 = *(v88 + 7);
  v88 = a1;
  v21(&a1[v20], 0, 1, v5);
  v22 = v16[6];
  v86 = a2;
  v23 = *(a2 + v22);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v16;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v24, 0);
    v26 = (v23 + 32);
    v25 = v92;
    do
    {
      v28 = *v26++;
      v27 = v28;
      v29 = v28 == 1;
      if (v28 == 1)
      {
        v30 = 0x656557664F796164;
      }

      else
      {
        v30 = 0x646573756170;
      }

      if (v29)
      {
        v31 = 0xE90000000000006BLL;
      }

      else
      {
        v31 = 0xE600000000000000;
      }

      if (v27)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0x59664F68746E6F6DLL;
      }

      if (v27)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xEB00000000726165;
      }

      v92 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1B4BCF43C((v34 > 1), v35 + 1, 1);
        v25 = v92;
      }

      *(v25 + 16) = v35 + 1;
      v36 = v25 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      --v24;
    }

    while (v24);
    v16 = v85;
  }

  v37 = v88;
  v38 = *v88;

  *v37 = v25;
  v39 = *(v86 + v16[7]);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v40, 0);
    v42 = (v39 + 32);
    v41 = v92;
    v43 = 0x80000001B4D48A80;
    v44 = 0x80000001B4D48A60;
    v45 = 0x80000001B4D48A40;
    v46 = 0x80000001B4D48A20;
    v47 = 0x80000001B4D48A00;
    v48 = 0x80000001B4D489E0;
    v49 = 0x80000001B4D489B0;
    v50 = 0x80000001B4D48990;
    v51 = 0x80000001B4D48970;
    v52 = 0x80000001B4D48950;
    v53 = 0x80000001B4D48930;
    v54 = 0x80000001B4D48910;
    v55 = 0x80000001B4D488F0;
    v56 = 0x80000001B4D488D0;
    v57 = 0x80000001B4D488B0;
    v86 = 0x80000001B4D48880;
    v85 = 0x80000001B4D48860;
    v83 = 0x80000001B4D48820;
    v84 = 0x80000001B4D48840;
    v82 = 0x80000001B4D48800;
    do
    {
      v58 = *v42++;
      v59 = 0xEA00000000006B61;
      v60 = 0x6572745365766F6DLL;
      switch(v58)
      {
        case 1:
          v59 = 0xEE006B6165727453;
          v60 = 0x6573696372657865;
          break;
        case 2:
          v60 = 0x727453646E617473;
          v59 = 0xEB000000006B6165;
          break;
        case 3:
          v60 = 0xD000000000000013;
          v59 = v82;
          break;
        case 4:
          v60 = 0xD000000000000012;
          v59 = v83;
          break;
        case 5:
          v60 = 0xD000000000000018;
          v59 = v84;
          break;
        case 6:
          v60 = 0xD000000000000016;
          v59 = v85;
          break;
        case 7:
          v60 = 0xD000000000000013;
          v59 = v86;
          break;
        case 8:
          v59 = 0xEF73636974736974;
          v60 = 0x6174537370657473;
          break;
        case 9:
          v60 = 0xD000000000000011;
          v59 = v57;
          break;
        case 10:
          v60 = 0xD000000000000012;
          v59 = v56;
          break;
        case 11:
          v60 = 0xD000000000000015;
          v59 = v55;
          break;
        case 12:
          v60 = 0xD000000000000019;
          v59 = v54;
          break;
        case 13:
          v60 = 0xD000000000000016;
          v59 = v53;
          break;
        case 14:
          v60 = 0xD00000000000001ELL;
          v59 = v52;
          break;
        case 15:
          v60 = 0xD000000000000011;
          v59 = v51;
          break;
        case 16:
          v60 = 0xD000000000000014;
          v59 = v50;
          break;
        case 17:
          v60 = 0xD000000000000011;
          v59 = v49;
          break;
        case 18:
          v59 = 0xEE0061746C65446CLL;
          v60 = 0x616F47646E617473;
          break;
        case 19:
          v60 = 0xD000000000000011;
          v59 = v48;
          break;
        case 20:
          v60 = 0xD000000000000015;
          v59 = v47;
          break;
        case 21:
          v60 = 0xD000000000000012;
          v59 = v46;
          break;
        case 22:
          v60 = 0xD000000000000016;
          v59 = v45;
          break;
        case 23:
          v60 = 0xD000000000000015;
          v59 = v44;
          break;
        case 24:
          v60 = 0xD000000000000014;
          v59 = v43;
          break;
        case 25:
          v59 = 0xEA0000000000746ELL;
          v60 = 0x756F436C61746F74;
          break;
        default:
          break;
      }

      v92 = v41;
      v62 = *(v41 + 16);
      v61 = *(v41 + 24);
      if (v62 >= v61 >> 1)
      {
        v75 = v49;
        v74 = v50;
        v73 = v51;
        v80 = v44;
        v81 = v43;
        v78 = v46;
        v79 = v45;
        v77 = v47;
        v76 = v48;
        v72 = v52;
        v71 = v53;
        v70 = v54;
        v69 = v55;
        v68 = v56;
        v67 = v57;
        sub_1B4BCF43C((v61 > 1), v62 + 1, 1);
        v57 = v67;
        v56 = v68;
        v55 = v69;
        v54 = v70;
        v53 = v71;
        v52 = v72;
        v51 = v73;
        v50 = v74;
        v49 = v75;
        v48 = v76;
        v47 = v77;
        v46 = v78;
        v45 = v79;
        v44 = v80;
        v43 = v81;
        v41 = v92;
      }

      *(v41 + 16) = v62 + 1;
      v63 = v41 + 16 * v62;
      *(v63 + 32) = v60;
      *(v63 + 40) = v59;
      --v40;
    }

    while (v40);
  }

  v64 = v88;
  v65 = *(v88 + 1);

  *(v64 + 1) = v41;
  return result;
}

uint64_t sub_1B4A1CA54()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4A1F7D4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A1CB14@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B4D1750C();
    if (v10)
    {
      v11 = sub_1B4D1752C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B4D1751C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B4D1750C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B4D1752C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B4D1751C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B4A1CD44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B4A1EECC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B49DDD2C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1B4A1CB14(v14, a3, a4, &v13);
  v10 = v4;
  sub_1B49DDD2C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t type metadata accessor for RingsPropertiesQuery()
{
  result = qword_1EDC3CEE8;
  if (!qword_1EDC3CEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1B4A1CF84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E10, &qword_1B4D20300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B4A1D0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E00, &qword_1B4D202F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1D21C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7888, &unk_1B4D20440);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B4A1D320(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F08, &qword_1B4D20430);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F10, &qword_1B4D20438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1D490(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1B4A1D58C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C10, &unk_1B4D200B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4A1D690(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4A1D7C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C88, &qword_1B4D1BBC8);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B4A1D8C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1B4A1DA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E18, &qword_1B4D20308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1DC00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C50, &qword_1B4D20100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1DD0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4A1DE7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B4A1E0B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D68, &qword_1B4D20240);
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

char *sub_1B4A1E1FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7ED8, &qword_1B4D203E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4A1E330(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C88, &qword_1B4D20140);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C90, &qword_1B4D20148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B4A1E4FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B4A1E6E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C18, &qword_1B4D2F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B4A1E7E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C20, &qword_1B4D200C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4A1E914(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

size_t sub_1B4A1EA88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_1B4A1EC78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C70, &qword_1B4D20128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1EDC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_1B4A1EECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B4D1750C();
  v11 = result;
  if (result)
  {
    result = sub_1B4D1752C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B4D1751C();
  sub_1B4A1CB14(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t _s19FitnessIntelligence20RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RingsPropertiesQuery();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  if ((sub_1B4A0A1C0(v6, v10) & 1) == 0 || (sub_1B4A0A568(v7, v11) & 1) == 0)
  {

    return 0;
  }

  v13 = sub_1B4A0A7D0(v8, v12);

  if ((v13 & 1) == 0 || (sub_1B4A0D340(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v14 = v4[7];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_1B4A0D49C(v15, v16);
}

unint64_t sub_1B4A1F10C(uint64_t a1)
{
  result = sub_1B4A1F134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A1F134()
{
  result = qword_1EDC383C8;
  if (!qword_1EDC383C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383C8);
  }

  return result;
}

unint64_t sub_1B4A1F18C()
{
  result = qword_1EDC383C0;
  if (!qword_1EDC383C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383C0);
  }

  return result;
}

unint64_t sub_1B4A1F278()
{
  result = qword_1EB8A7BF8;
  if (!qword_1EB8A7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BF8);
  }

  return result;
}

uint64_t sub_1B4A1F2CC(void *a1)
{
  a1[1] = sub_1B4A1F7D4(&qword_1EDC39550, type metadata accessor for RingsPropertiesQuery);
  a1[2] = sub_1B4A1F7D4(&qword_1EDC39538, type metadata accessor for RingsPropertiesQuery);
  result = sub_1B4A1F7D4(&qword_1EDC39548, type metadata accessor for RingsPropertiesQuery);
  a1[3] = result;
  return result;
}

void sub_1B4A1F488()
{
  type metadata accessor for DateRangeDescriptor();
  if (v0 <= 0x3F)
  {
    sub_1B4A1F54C(319, &qword_1EDC3CB90);
    if (v1 <= 0x3F)
    {
      sub_1B4A1F54C(319, &qword_1EDC3CBA0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A1F54C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B4D184BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B4A1F598(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B4A1F5AC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B4A1F5AC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1B4A1F5C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B4A1F5D4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B4A1F5D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1B4A1F5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A1F650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A1F6B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4A1F704(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != 2)
  {
    v3 = result;
    result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
    *(v3 + *(result + 20)) = v2;
  }

  return result;
}

uint64_t sub_1B4A1F750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A1F7D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A1F858()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1F92C()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4A1F9EC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1FABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B4A2141C();
  *a2 = result;
  return result;
}

void sub_1B4A1FAEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE400000000000000;
  v6 = 1701669236;
  v7 = 0xE600000000000000;
  v8 = 0x796772656E65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001B4D4AB70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65636E6174736964;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B4A1FB7C()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 1701669236;
  v4 = 0x796772656E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6174736964;
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

uint64_t sub_1B4A1FC08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B4A2141C();
  *a1 = result;
  return result;
}

uint64_t sub_1B4A1FC30(uint64_t a1)
{
  v2 = sub_1B4A20770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4A1FC6C(uint64_t a1)
{
  v2 = sub_1B4A20770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutGoal.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v58 - v17;
  v18 = sub_1B4D179EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F58, &qword_1B4D20498);
  v71 = *(v23 - 8);
  v24 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A20770();
  sub_1B4D18EFC();
  (*(v19 + 16))(v22, v2, v18);
  v28 = (*(v19 + 88))(v22, v18);
  if (v28 == *MEMORY[0x1E6985B50])
  {
    (*(v19 + 96))(v22, v18);
    v29 = *v22;
    v30 = *(v22 + 1);
    v72 = 1;
    sub_1B4D18C4C();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v31 = v30;
    v32 = v67;
    sub_1B4D1741C();
    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v33 = v70;
    sub_1B4D18D9C();
    v34 = v23;
    if (v33)
    {

      v35 = v68;
      v36 = v69;
LABEL_4:
      (*(v36 + 8))(v32, v35);
LABEL_13:
      (*(v71 + 8))(v26, v34);
      return __swift_destroy_boxed_opaque_existential_1Tm(v73);
    }

    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    v48 = v68;
    sub_1B4D18DAC();

    v49 = v69;
    goto LABEL_12;
  }

  v37 = v70;
  v38 = v26;
  if (v28 == *MEMORY[0x1E6985B40])
  {
    (*(v19 + 96))(v22, v18);
    v39 = *v22;
    v40 = *(v22 + 1);
    v72 = 2;
    v41 = v23;
    v42 = v38;
    sub_1B4D18C4C();
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v43 = v40;
    v44 = v64;
    sub_1B4D1741C();
    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    sub_1B4D18D9C();
    if (v37)
    {

      (*(v65 + 8))(v44, v66);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
      v53 = v66;
      sub_1B4D18DAC();
      v54 = v65;

      (*(v54 + 8))(v44, v53);
    }

    (*(v71 + 8))(v42, v41);
    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  if (v28 == *MEMORY[0x1E6985B48])
  {
    (*(v19 + 96))(v22, v18);
    v45 = *v22;
    v46 = *(v22 + 1);
    v72 = 3;
    v34 = v23;
    sub_1B4D18C4C();
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v47 = v46;
    v32 = v61;
    sub_1B4D1741C();
    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    sub_1B4D18D9C();
    if (v37)
    {

      v36 = v62;
      v35 = v63;
      goto LABEL_4;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
    v48 = v63;
    sub_1B4D18DAC();

    v49 = v62;
LABEL_12:
    (*(v49 + 8))(v32, v48);
    goto LABEL_13;
  }

  if (v28 == *MEMORY[0x1E6985B30])
  {
    (*(v19 + 96))(v22, v18);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
    v51 = v68;
    (*(v69 + 32))(v59, v22, v68);
    v52 = v65;
    (*(v65 + 32))(v60, &v22[v50], v66);
    v72 = 4;
    sub_1B4D18C4C();
    __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18DAC();
    if (v37)
    {
      (*(v52 + 8))(v60, v66);
      (*(v69 + 8))(v59, v51);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
      v56 = v60;
      v57 = v66;
      sub_1B4D18DAC();
      (*(v65 + 8))(v56, v57);
      (*(v69 + 8))(v59, v68);
    }

    (*(v71 + 8))(v38, v23);
    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  if (v28 == *MEMORY[0x1E6985B38])
  {
    LOBYTE(v73[0]) = 0;
    sub_1B4D18CCC();
    return (*(v71 + 8))(v26, v23);
  }

  else
  {
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000036, 0x80000001B4D5FA10);
    sub_1B4D18A8C();
    result = sub_1B4D18A9C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4A20770()
{
  result = qword_1EB8A7F60;
  if (!qword_1EB8A7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F60);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t WorkoutGoal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v60 = *(v65 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v61 = *(v67 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v57 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v66 = *(v71 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F70, &qword_1B4D204A8);
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  v19 = sub_1B4D179EC();
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1B4A20770();
  v25 = v72;
  sub_1B4D18EEC();
  if (!v25)
  {
    v58 = v14;
    v59 = v11;
    v27 = v70;
    v26 = v71;
    v72 = v22;
    v28 = sub_1B4D18C2C();
    if (*(v28 + 16))
    {
      v29 = *(v28 + 32);

      if (v29 <= 1)
      {
        if (!v29)
        {
          (*(v27 + 8))(v18, v15);
          v37 = v69;
          v53 = v72;
          (*(v69 + 104))(v72, *MEMORY[0x1E6985B38], v19);
LABEL_10:
          (*(v37 + 32))(v68, v53, v19);
          return __swift_destroy_boxed_opaque_existential_1Tm(v73);
        }

        v45 = v26;
        v74 = 1;
        sub_1B4D18B3C();
        v46 = v27;
        v65 = v18;
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B4D18D7C();
        v48 = v47;
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
        v49 = v58;
        sub_1B4D18D8C();
        v56 = sub_1B4D1740C();
        (*(v66 + 8))(v49, v45);
        (*(v46 + 8))(v65, v15);
        v53 = v72;
        *v72 = v48;
        *(v53 + 1) = v56;
        v54 = MEMORY[0x1E6985B50];
      }

      else if (v29 == 2)
      {
        v74 = 2;
        sub_1B4D18B3C();
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B4D18D7C();
        v38 = v27;
        v40 = v39;
        v71 = v77;
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
        v41 = v62;
        v42 = v67;
        sub_1B4D18D8C();
        v51 = sub_1B4D1740C();
        (*(v61 + 8))(v41, v42);
        (*(v38 + 8))(v18, v15);
        v53 = v72;
        *v72 = v40;
        *(v53 + 1) = v51;
        v54 = MEMORY[0x1E6985B40];
      }

      else if (v29 == 3)
      {
        v74 = 3;
        sub_1B4D18B3C();
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B4D18D7C();
        v31 = v30;
        v71 = v77;
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
        v32 = v63;
        v33 = v65;
        sub_1B4D18D8C();
        v52 = sub_1B4D1740C();
        (*(v60 + 8))(v32, v33);
        (*(v27 + 8))(v18, v15);
        v53 = v72;
        *v72 = v31;
        *(v53 + 1) = v52;
        v54 = MEMORY[0x1E6985B48];
      }

      else
      {
        v74 = 4;
        sub_1B4D18B3C();
        v65 = v18;
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
        sub_1B4D18D8C();
        v63 = v77;
        __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
        v43 = v64;
        v44 = v67;
        sub_1B4D18D8C();
        (*(v27 + 8))(v65, v15);
        v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
        v53 = v72;
        (*(v66 + 32))(v72, v59, v26);
        (*(v61 + 32))(&v53[v55], v43, v44);
        v54 = MEMORY[0x1E6985B30];
      }

      v37 = v69;
      (*(v69 + 104))(v53, *v54, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      goto LABEL_10;
    }

    v34 = sub_1B4D189BC();
    swift_allocError();
    v36 = v35;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6B00], v34);
    swift_willThrow();
    (*(v27 + 8))(v18, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

unint64_t sub_1B4A21318()
{
  result = qword_1EB8A7F78;
  if (!qword_1EB8A7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F78);
  }

  return result;
}

unint64_t sub_1B4A21370()
{
  result = qword_1EB8A7F80;
  if (!qword_1EB8A7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F80);
  }

  return result;
}

unint64_t sub_1B4A213C8()
{
  result = qword_1EB8A7F88;
  if (!qword_1EB8A7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F88);
  }

  return result;
}

uint64_t sub_1B4A2141C()
{
  v0 = sub_1B4D18B1C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B4A215D0()
{
  v0 = type metadata accessor for LogSystem();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D17F6C();
  __swift_allocate_value_buffer(v5, qword_1EB8A7FA8);
  v6 = __swift_project_value_buffer(v5, qword_1EB8A7FA8);
  sub_1B49552AC();
  v7 = sub_1B4D187EC();
  *v4 = v7;
  v8 = *(v1 + 28);
  v9 = v7;
  sub_1B4D17F7C();
  (*(*(v5 - 8) + 16))(v6, &v4[v8], v5);
  return sub_1B4955394(v4);
}

uint64_t sub_1B4A21798()
{
  v0 = sub_1B4D17F6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D17EFC();
  __swift_allocate_value_buffer(v5, qword_1EDC36F40);
  __swift_project_value_buffer(v5, qword_1EDC36F40);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDC3CED0);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1B4D17EDC();
}

void __swiftcall WorkoutMediaDetails.init(title:artistName:genreName:isFavorited:isPlaying:)(FitnessIntelligence::WorkoutMediaDetails *__return_ptr retstr, Swift::String_optional title, Swift::String_optional artistName, Swift::String_optional genreName, Swift::Bool isFavorited, Swift::Bool isPlaying)
{
  retstr->title = title;
  retstr->artistName = artistName;
  retstr->genreName = genreName;
  retstr->isFavorited = isFavorited;
  retstr->isPlaying = isPlaying;
  *(&retstr->elapsedTime.value + 6) = 0.0;
  BYTE5(retstr->duration.value) = 1;
  retstr[1].title.value._countAndFlagsBits = 0;
  LOBYTE(retstr[1].title.value._object) = 1;
}

uint64_t sub_1B4A219E4()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x5464657370616C65;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461727564;
  }

  v4 = 0x69726F7661467369;
  if (v1 != 3)
  {
    v4 = 0x6E6979616C507369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E747369747261;
  if (v1 != 1)
  {
    v5 = 0x6D614E65726E6567;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4A21ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4A228EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4A21B10(uint64_t a1)
{
  v2 = sub_1B4A224DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4A21B4C(uint64_t a1)
{
  v2 = sub_1B4A224DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMediaDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7FF0, &qword_1B4D20680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  LODWORD(v11) = *(v1 + 48);
  v19 = *(v1 + 49);
  v20 = v11;
  v18 = v1[7];
  LODWORD(v11) = *(v1 + 64);
  v15[1] = v1[9];
  v16 = *(v1 + 80);
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A224DC();
  sub_1B4D18EFC();
  v32 = 0;
  v13 = v25;
  sub_1B4D18C6C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v31 = 1;
  sub_1B4D18C6C();
  v30 = 2;
  sub_1B4D18C6C();
  v29 = 3;
  sub_1B4D18CCC();
  v28 = 4;
  sub_1B4D18CCC();
  v27 = 5;
  sub_1B4D18C8C();
  v26 = 6;
  sub_1B4D18C8C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkoutMediaDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8000, &qword_1B4D20688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A224DC();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v46[0]) = 0;
  v11 = sub_1B4D18B6C();
  v13 = v12;
  v14 = v11;
  LOBYTE(v46[0]) = 1;
  v15 = sub_1B4D18B6C();
  *(&v39 + 1) = v16;
  *&v39 = v15;
  LOBYTE(v46[0]) = 2;
  v17 = sub_1B4D18B6C();
  v19 = v18;
  v38 = v17;
  LOBYTE(v46[0]) = 3;
  v37 = sub_1B4D18BCC();
  LOBYTE(v46[0]) = 4;
  v36 = sub_1B4D18BCC();
  LOBYTE(v46[0]) = 5;
  v20 = sub_1B4D18B8C();
  v34 = a2;
  v35 = v20;
  v57 = v21 & 1;
  v58 = 6;
  v22 = sub_1B4D18B8C();
  v24 = v23;
  v37 &= 1u;
  v36 &= 1u;
  v25 = *(v6 + 8);
  v33 = v22;
  v25(v9, v5);
  v24 &= 1u;
  v56 = v24;
  *&v40 = v14;
  *(&v40 + 1) = v13;
  v26 = v39;
  v41 = v39;
  *&v42 = v38;
  *(&v42 + 1) = v19;
  LOBYTE(v43) = v37;
  BYTE1(v43) = v36;
  v27 = v35;
  *(&v43 + 1) = v35;
  HIDWORD(v32) = v57;
  LOBYTE(v44) = v57;
  *(&v44 + 1) = v33;
  v45 = v24;
  v28 = v43;
  v29 = v34;
  *(v34 + 32) = v42;
  *(v29 + 48) = v28;
  v30 = v41;
  *v29 = v40;
  *(v29 + 16) = v30;
  *(v29 + 64) = v44;
  *(v29 + 80) = v24;
  sub_1B4A22530(&v40, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v46[0] = v14;
  v46[1] = v13;
  v47 = v26;
  v48 = v38;
  v49 = v19;
  v50 = v37;
  v51 = v36;
  v52 = v27;
  v53 = BYTE4(v32);
  v54 = v33;
  v55 = v24;
  return sub_1B4A22568(v46);
}

BOOL _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 49);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v47 = *(a1 + 48);
      v49 = *(a2 + 49);
      v45 = *(a2 + 64);
      v46 = *(a1 + 49);
      v43 = *(a2 + 80);
      v44 = *(a1 + 64);
      v25 = *(a1 + 80);
      v26 = *(a1 + 40);
      v27 = *(a1 + 32);
      v28 = *(a2 + 40);
      v29 = *(a2 + 32);
      v30 = *(a2 + 16);
      v31 = sub_1B4D18DCC();
      v15 = v30;
      v16 = v29;
      v18 = v28;
      v5 = v27;
      v7 = v26;
      v13 = v25;
      v24 = v43;
      v11 = v44;
      v22 = v45;
      v9 = v46;
      v8 = v47;
      v20 = v49;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v48 = v13;
      v32 = v19;
      v33 = v7;
      v34 = v5;
      v50 = v18;
      v35 = v16;
      v36 = sub_1B4D18DCC();
      v16 = v35;
      v18 = v50;
      v5 = v34;
      v7 = v33;
      v19 = v32;
      v13 = v48;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v18)
    {
      return 0;
    }

    if (v5 == v16 && v7 == v18)
    {
      result = 0;
      if (v8 != v19)
      {
        return result;
      }

LABEL_23:
      if ((v9 ^ v20))
      {
        return result;
      }

      goto LABEL_28;
    }

    v38 = v19;
    v39 = v13;
    v40 = sub_1B4D18DCC();
    result = 0;
    if ((v40 & 1) != 0 && ((v8 ^ v38) & 1) == 0)
    {
      v13 = v39;
      if (((v9 ^ v20) & 1) == 0)
      {
LABEL_28:
        if (v11)
        {
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          if (v10 == v21)
          {
            v41 = v22;
          }

          else
          {
            v41 = 1;
          }

          if (v41)
          {
            return 0;
          }
        }

        if ((v13 & 1) == 0)
        {
          if (v12 == v23)
          {
            v42 = v24;
          }

          else
          {
            v42 = 1;
          }

          return (v42 & 1) == 0;
        }

        return (v24 & 1) != 0;
      }
    }
  }

  else
  {
    result = 0;
    if (!v18 && ((v8 ^ v19) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return result;
}

unint64_t sub_1B4A224DC()
{
  result = qword_1EB8A7FF8;
  if (!qword_1EB8A7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7FF8);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B4A225BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B4A22618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DayOfWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DayOfWeek(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4A227E8()
{
  result = qword_1EB8A8008;
  if (!qword_1EB8A8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8008);
  }

  return result;
}

unint64_t sub_1B4A22840()
{
  result = qword_1EB8A8010;
  if (!qword_1EB8A8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8010);
  }

  return result;
}

unint64_t sub_1B4A22898()
{
  result = qword_1EB8A8018;
  if (!qword_1EB8A8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8018);
  }

  return result;
}

uint64_t sub_1B4A228EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEB00000000646574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 FitnessContextQueryResult.init(identifiers:queryDescriptor:component:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for FitnessContextQueryResult();
  sub_1B4A22C1C(a2, a5 + v9[5]);
  v10 = a5 + v9[6];
  v11 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v11;
  *(v10 + 4) = *(a3 + 32);
  v12 = (a5 + v9[7]);
  result = *a4;
  v14 = *(a4 + 16);
  *v12 = *a4;
  v12[1] = v14;
  return result;
}

uint64_t type metadata accessor for FitnessContextQueryResult()
{
  result = qword_1EB8A8020;
  if (!qword_1EB8A8020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4A22C1C(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  (*(*(Descriptor - 8) + 32))(a2, a1, Descriptor);
  return a2;
}

uint64_t FitnessContextQueryResult.queryDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryResult() + 20);

  return sub_1B49EEFF0(v3, a1);
}

uint64_t FitnessContextQueryResult.component.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryResult() + 24);

  return sub_1B4A22D10(v3, a1);
}

uint64_t sub_1B4A22D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E68, &qword_1B4D20870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 FitnessContextQueryResult.metrics.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryResult() + 28);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

void sub_1B4A22DE0()
{
  sub_1B4A22E94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FitnessContextQueryDescriptor();
    if (v1 <= 0x3F)
    {
      sub_1B4A22EEC();
      if (v2 <= 0x3F)
      {
        sub_1B4A22F50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A22E94()
{
  if (!qword_1EDC36E08)
  {
    v0 = sub_1B4D1861C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC36E08);
    }
  }
}

void sub_1B4A22EEC()
{
  if (!qword_1EB8A8030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6E70, &qword_1B4D1C1A0);
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A8030);
    }
  }
}

void sub_1B4A22F50()
{
  if (!qword_1EB8A8038)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A8038);
    }
  }
}

void *FitnessPlusCountByTrainerProperty.init(value:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B4A23068(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B49EF0C0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A23170(uint64_t a1, uint64_t a2)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v51 = *(v56 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D0, &qword_1B4D20E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = v46 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v49 = v12;
    v15 = 0;
    v47 = a1;
    v18 = *(a1 + 64);
    v17 = a1 + 64;
    v16 = v18;
    v19 = 1 << *(v17 - 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v22 = (v19 + 63) >> 6;
    v46[0] = v17;
    v46[1] = v51 + 16;
    v53 = v46 - v11;
    v54 = (v51 + 32);
    v48 = (v51 + 8);
    while (v21)
    {
      v55 = (v21 - 1) & v21;
      v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
      v28 = v47;
      v29 = v50;
      v30 = v51;
      v31 = v56;
      (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v23, v56, v13);
      v32 = *(*(v28 + 56) + 8 * v23);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      v34 = *(v33 + 48);
      v35 = *(v30 + 32);
      v36 = v49;
      v35(v49, v29, v31);
      *(v36 + v34) = v32;
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
      v14 = v53;
LABEL_17:
      sub_1B498B270(v36, v14, &qword_1EB8A81D0, &qword_1B4D20E40);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      if ((*(*(v37 - 8) + 48))(v14, 1, v37) != 1)
      {
        v38 = *(v37 + 48);
        v39 = v52;
        v40 = v56;
        (*v54)(v52, v14, v56);
        v41 = *&v14[v38];
        v42 = sub_1B49E9B90(v39);
        LOBYTE(v38) = v43;
        (*v48)(v39, v40);
        if (v38)
        {
          v44 = *(*(a2 + 56) + 8 * v42) == v41;
          v14 = v53;
          v21 = v55;
          if (v44)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v22 <= v15 + 1)
    {
      v24 = v15 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    while (1)
    {
      v26 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
        v36 = v49;
        (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
        v55 = 0;
        v15 = v25;
        goto LABEL_17;
      }

      v27 = *(v46[0] + 8 * v26);
      ++v15;
      if (v27)
      {
        v55 = (v27 - 1) & v27;
        v23 = __clz(__rbit64(v27)) | (v26 << 6);
        v15 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1B4A235DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C0, &unk_1B4D47300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v56 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v56 + 16))
  {
    v48 = (&v45 - v12);
    v49 = v13;
    v15 = 0;
    v46 = a1;
    v16 = *(a1 + 64);
    v45 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v50 = v54 + 16;
    v51 = (v54 + 32);
    v47 = (v54 + 8);
    while (1)
    {
      v21 = v49;
      if (!v19)
      {
        break;
      }

      v52 = (v19 - 1) & v19;
      v22 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_16:
      v27 = *(*(v46 + 48) + 8 * v22);
      v29 = v53;
      v28 = v54;
      (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v22, v4, v14);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      v31 = *(v30 + 48);
      *v21 = v27;
      (*(v28 + 32))(&v21[v31], v29, v4);
      (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
LABEL_17:
      v32 = v21;
      v33 = v48;
      sub_1B498B270(v32, v48, &qword_1EB8A81C0, &unk_1B4D47300);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = *(v34 + 48);
      v36 = *v33;
      (*v51)(v55, v33 + v35, v4);
      v37 = sub_1B49E9C38(v36);
      if ((v38 & 1) == 0)
      {
        (*v47)(v55, v4);
        return;
      }

      v39 = v53;
      v40 = v54;
      (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
      sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
      v41 = v55;
      v42 = sub_1B4D1816C();
      v43 = *(v40 + 8);
      v43(v39, v4);
      v43(v41, v4);
      v19 = v52;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    if (v20 <= v15 + 1)
    {
      v23 = v15 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    while (1)
    {
      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
        (*(*(v44 - 8) + 56))(v21, 1, 1, v44);
        v52 = 0;
        v15 = v24;
        goto LABEL_17;
      }

      v26 = *(v45 + 8 * v25);
      ++v15;
      if (v26)
      {
        v52 = (v26 - 1) & v26;
        v22 = __clz(__rbit64(v26)) | (v25 << 6);
        v15 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4A23AD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B49EF0B0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A23BDC(uint64_t a1, uint64_t a2)
{
  v94 = sub_1B4D179BC();
  v4 = *(v94 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v74 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  v12 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v14 = &v74 - v13;
  v15 = type metadata accessor for WorkoutMilestoneEntry();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v93 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v74 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v74 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B8, &unk_1B4D46FD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v91 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v74 - v28);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v92 = v16;
    v86 = v15;
    v30 = 0;
    v31 = *(a1 + 64);
    v80 = a1 + 64;
    v32 = 1 << *(a1 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v78 = v11;
    v79 = (v32 + 63) >> 6;
    v83 = a2;
    v84 = (v4 + 48);
    v75 = (v4 + 32);
    v76 = v7;
    v77 = (v4 + 8);
    v35 = v14;
    v36 = v93;
    v90 = &v74 - v28;
    v82 = a1;
    while (1)
    {
      while (1)
      {
        if (!v34)
        {
          if (v79 <= v30 + 1)
          {
            v39 = v30 + 1;
          }

          else
          {
            v39 = v79;
          }

          v40 = v39 - 1;
          v38 = v92;
          while (1)
          {
            v41 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v41 >= v79)
            {
              v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
              v72 = v91;
              (*(*(v71 - 8) + 56))(v91, 1, 1, v71);
              v89 = 0;
              v30 = v40;
              v48 = v72;
              v49 = v86;
              goto LABEL_17;
            }

            v42 = *(v80 + 8 * v41);
            ++v30;
            if (v42)
            {
              v89 = (v42 - 1) & v42;
              v37 = __clz(__rbit64(v42)) | (v41 << 6);
              v30 = v41;
              goto LABEL_16;
            }
          }

          __break(1u);
          return;
        }

        v89 = (v34 - 1) & v34;
        v37 = __clz(__rbit64(v34)) | (v30 << 6);
        v38 = v92;
LABEL_16:
        v43 = *(*(a1 + 48) + 8 * v37);
        v44 = v88;
        sub_1B4A290F8(*(a1 + 56) + *(v38 + 72) * v37, v88, type metadata accessor for WorkoutMilestoneEntry);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
        v46 = *(v45 + 48);
        v47 = v91;
        *v91 = v43;
        v48 = v47;
        sub_1B4A29160(v44, v47 + v46, type metadata accessor for WorkoutMilestoneEntry);
        (*(*(v45 - 8) + 56))(v48, 0, 1, v45);
        v49 = v86;
        v29 = v90;
LABEL_17:
        sub_1B498B270(v48, v29, &qword_1EB8A81B8, &unk_1B4D46FD0);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
        v51 = (*(*(v50 - 8) + 48))(v29, 1, v50);
        v52 = v51 == 1;
        if (v51 == 1)
        {
          return;
        }

        v53 = *(v50 + 48);
        v54 = *v29;
        sub_1B4A29160(v29 + v53, v21, type metadata accessor for WorkoutMilestoneEntry);
        v55 = sub_1B49EF0B0(v54);
        if ((v56 & 1) == 0)
        {
          v73 = v21;
          goto LABEL_36;
        }

        sub_1B4A290F8(*(a2 + 56) + *(v92 + 72) * v55, v36, type metadata accessor for WorkoutMilestoneEntry);
        if (*v36 != *v21 || (v57 = *(v49 + 20), (sub_1B4D177AC() & 1) == 0))
        {
          sub_1B4A291C8(v36, type metadata accessor for WorkoutMilestoneEntry);
          v73 = v21;
          goto LABEL_36;
        }

        v85 = v52;
        v58 = *(v49 + 24);
        v59 = (v36 + v58);
        v60 = v21;
        v61 = (v21 + v58);
        if (*v59 != *v61 || v59[1] != v61[1] || v59[2] != v61[2] || v59[3] != v61[3] || v59[4] != v61[4])
        {
          sub_1B4A291C8(v93, type metadata accessor for WorkoutMilestoneEntry);
          v73 = v60;
LABEL_36:
          sub_1B4A291C8(v73, type metadata accessor for WorkoutMilestoneEntry);
          return;
        }

        v62 = *(type metadata accessor for LocalizedDate() + 36);
        v63 = *(v87 + 48);
        sub_1B4974FBC(v59 + v62, v35, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        sub_1B4974FBC(v61 + v62, v35 + v63, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        v64 = *v84;
        if ((*v84)(v35, 1, v94) != 1)
        {
          break;
        }

        sub_1B4A291C8(v93, type metadata accessor for WorkoutMilestoneEntry);
        v21 = v60;
        sub_1B4A291C8(v60, type metadata accessor for WorkoutMilestoneEntry);
        if (v64(v35 + v63, 1, v94) != 1)
        {
          goto LABEL_40;
        }

        sub_1B4975024(v35, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        a1 = v82;
        a2 = v83;
        v36 = v93;
        v34 = v89;
        v29 = v90;
      }

      v65 = v78;
      sub_1B4974FBC(v35, v78, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v66 = v64(v35 + v63, 1, v94);
      v67 = v60;
      if (v66 == 1)
      {
        break;
      }

      v68 = v35 + v63;
      v69 = v76;
      (*v75)(v76, v68, v94);
      sub_1B4A28364(&qword_1EB8A7080, MEMORY[0x1E6969BC0]);
      v81 = sub_1B4D1816C();
      v70 = *v77;
      (*v77)(v69, v94);
      v36 = v93;
      sub_1B4A291C8(v93, type metadata accessor for WorkoutMilestoneEntry);
      sub_1B4A291C8(v67, type metadata accessor for WorkoutMilestoneEntry);
      v70(v65, v94);
      sub_1B4975024(v35, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      a1 = v82;
      a2 = v83;
      v34 = v89;
      v29 = v90;
      v21 = v67;
      if ((v81 & 1) == 0)
      {
        return;
      }
    }

    sub_1B4A291C8(v93, type metadata accessor for WorkoutMilestoneEntry);
    sub_1B4A291C8(v60, type metadata accessor for WorkoutMilestoneEntry);
    (*v77)(v65, v94);
LABEL_40:
    sub_1B4975024(v35, &qword_1EB8A7078, &qword_1B4D1CCB8);
  }
}

uint64_t sub_1B4A24508(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_1B49E9CA4(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v16);

    v20 = sub_1B4A0B674(v19, v14);

    if ((v20 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A24660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutRecord();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v11 = 0;
    v12 = *(a1 + 64);
    v36 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v37 = v16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = *(*(a1 + 56) + 8 * v20);
      v22 = *(*(a1 + 48) + 8 * v20);

      v23 = sub_1B49E9DFC(v22);
      v25 = v24;

      if ((v25 & 1) == 0 || (v26 = *(*(a2 + 56) + 8 * v23), v27 = *(v26 + 16), v27 != *(v21 + 16)))
      {
LABEL_26:

        return;
      }

      if (v27 && v26 != v21)
      {
        v34 = a1;
        v35 = a2;
        v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v39 = v26 + v28;
        v29 = v21 + v28;

        v30 = 0;
        while (v30 < *(v26 + 16))
        {
          v31 = *(v40 + 72) * v30;
          sub_1B4A290F8(v39 + v31, v10, type metadata accessor for WorkoutRecord);
          if (v30 >= *(v21 + 16))
          {
            goto LABEL_30;
          }

          sub_1B4A290F8(v29 + v31, v7, type metadata accessor for WorkoutRecord);
          v32 = _s19FitnessIntelligence13WorkoutRecordV2eeoiySbAC_ACtFZ_0(v10, v7);
          sub_1B4A291C8(v7, type metadata accessor for WorkoutRecord);
          sub_1B4A291C8(v10, type metadata accessor for WorkoutRecord);
          if (!v32)
          {

            goto LABEL_26;
          }

          if (v27 == ++v30)
          {

            a1 = v34;
            a2 = v35;
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v16 = v37;
      v15 = v38;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        return;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1B4A2495C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B49EF0B0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A24A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81A8, &unk_1B4D20E10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = (&v48 - v16);
    v17 = 0;
    v49 = a1;
    v18 = *(a1 + 64);
    v48 = a1 + 64;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v53 = (v21 - 1) & v21;
      v23 = __clz(__rbit64(v21)) | (v17 << 6);
      v24 = v52;
LABEL_16:
      v29 = (*(v49 + 48) + 16 * v23);
      v30 = *v29;
      v31 = v29[1];
      sub_1B4A290F8(*(v49 + 56) + *(v5 + 72) * v23, v11, type metadata accessor for WorkoutMetadata);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
      v33 = *(v32 + 48);
      *v24 = v30;
      v24[1] = v31;
      sub_1B4A29160(v11, v24 + v33, type metadata accessor for WorkoutMetadata);
      (*(*(v32 - 8) + 56))(v24, 0, 1, v32);

LABEL_17:
      v34 = v51;
      sub_1B498B270(v24, v51, &qword_1EB8A81A8, &unk_1B4D20E10);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = v11;
      v37 = v5;
      v38 = *(v35 + 48);
      v40 = *v34;
      v39 = v34[1];
      sub_1B4A29160(v34 + v38, v8, type metadata accessor for WorkoutMetadata);
      v41 = v50;
      v42 = sub_1B49E9EC4(v40, v39);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        sub_1B4A291C8(v8, type metadata accessor for WorkoutMetadata);
        return;
      }

      v45 = *(v41 + 56);
      v5 = v37;
      v11 = v36;
      sub_1B4A290F8(v45 + *(v37 + 72) * v42, v36, type metadata accessor for WorkoutMetadata);
      v46 = _s19FitnessIntelligence15WorkoutMetadataO2eeoiySbAC_ACtFZ_0(v36, v8);
      sub_1B4A291C8(v36, type metadata accessor for WorkoutMetadata);
      sub_1B4A291C8(v8, type metadata accessor for WorkoutMetadata);
      v21 = v53;
      if ((v46 & 1) == 0)
      {
        return;
      }
    }

    if (v22 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25 - 1;
    v24 = v52;
    while (1)
    {
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
        (*(*(v47 - 8) + 56))(v24, 1, 1, v47);
        v53 = 0;
        v17 = v26;
        goto LABEL_17;
      }

      v28 = *(v48 + 8 * v27);
      ++v17;
      if (v28)
      {
        v53 = (v28 - 1) & v28;
        v23 = __clz(__rbit64(v28)) | (v27 << 6);
        v17 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1B4A24EFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v44 = a1 + 64;
      v5 = 1 << *(a1 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(a1 + 64);
      v8 = (v5 + 63) >> 6;
      v45 = v8;
      if (v7)
      {
        while (1)
        {
          v9 = __clz(__rbit64(v7));
          v47 = (v7 - 1) & v7;
LABEL_12:
          v12 = v9 | (v4 << 6);
          v13 = *(*(v3 + 48) + 8 * v12);
          v14 = *(*(v3 + 56) + 8 * v12);
          v15 = v13;

          if (!v13)
          {
            break;
          }

          v16 = sub_1B49E9E4C(v15);
          v18 = v17;

          if ((v18 & 1) == 0 || (v19 = *(*(v2 + 56) + 8 * v16), v20 = *(v19 + 16), v20 != *(v14 + 16)))
          {
LABEL_33:

            return;
          }

          if (v20)
          {
            v21 = v19 == v14;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v43 = v2;

            v22 = 32;
            while (v20)
            {
              v26 = *(v19 + v22);
              v27 = *(v14 + v22);
              objc_opt_self();
              v28 = swift_dynamicCastObjCClass();
              if (v28 && (v29 = v28, objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
              {
                v31 = v30;
                v32 = v26;
                v33 = v27;
                v34 = v32;
                v35 = v33;
                [v29 coordinate];
                v37 = v36;
                [v31 coordinate];
                if (v37 != v38)
                {

                  return;
                }

                [v29 coordinate];
                v40 = v39;
                [v31 coordinate];
                v42 = v41;

                if (v40 != v42)
                {
LABEL_32:

                  goto LABEL_33;
                }
              }

              else
              {
                sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
                v23 = v26;
                v24 = v27;
                v25 = sub_1B4D187AC();

                if ((v25 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              v22 += 8;
              if (!--v20)
              {

                v2 = v43;
                goto LABEL_29;
              }
            }

            goto LABEL_37;
          }

LABEL_29:

          v8 = v45;
          v3 = a1;
          v7 = v47;
          if (!v47)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v10 = v4;
        while (1)
        {
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v4 >= v8)
          {
            return;
          }

          v11 = *(v44 + 8 * v4);
          ++v10;
          if (v11)
          {
            v9 = __clz(__rbit64(v11));
            v47 = (v11 - 1) & v11;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
      }
    }
  }
}

uint64_t sub_1B4A25200(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v13 == 0;

    if (v13)
    {
      v16 = sub_1B49E9F3C(v13);
      v18 = v17;

      if ((v18 & 1) != 0 && *(*(a2 + 56) + 8 * v16) == v14)
      {
        continue;
      }
    }

    return v15;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL static FitnessPlusBestWorkoutProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_1B4D18DCC() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FitnessPlusBestWorkoutProperty.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return sub_1B4D1820C();
}

uint64_t FitnessPlusBestWorkoutProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25644()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return sub_1B4D1820C();
}

uint64_t sub_1B4A257C0()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

BOOL sub_1B4A2587C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_1B4D18DCC() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL static FitnessPlusAverageHeartRateProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FitnessPlusAverageHeartRateProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t FitnessPlusAverageHeartRateProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25D84()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25EB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t sub_1B4A25FD4()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL sub_1B4A26104(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL static FitnessPlusCaloriesProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FitnessPlusCaloriesProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t FitnessPlusCaloriesProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static FitnessPlusDurationProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FitnessPlusDurationProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t FitnessPlusDurationProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t FitnessPlusCountByTrainerProperty.value.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static FitnessPlusCountByTrainerProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A25200(*a1, *a2) & (v2 == v3);
}

uint64_t FitnessPlusCountByTrainerProperty.hash(into:)(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A2809C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t FitnessPlusCountByTrainerProperty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D18E8C();
  sub_1B4A2809C(v4, v1);
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26AC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D18E8C();
  sub_1B4A2809C(v4, v1);
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26B1C(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A2809C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A26B50()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D18E8C();
  sub_1B4A2809C(v4, v1);
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26BA8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A25200(*a1, *a2) & (v2 == v3);
}

uint64_t FitnessPlusWorkoutCountProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26C84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  for (i = (v7 + 63) >> 6; v9; v4 ^= result)
  {
    v11 = v5;
LABEL_9:
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v13 = *(*(a2 + 56) + v12);
    v9 &= v9 - 1;
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 64);
    v14 = *v3;
    v15 = *(v3 + 16);
    MEMORY[0x1B8C7D290](*(*(a2 + 48) + v12));
    MEMORY[0x1B8C7D290](v13);
    result = sub_1B4D18EDC();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x1B8C7D290](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A26DA8(__int128 *a1, uint64_t a2)
{
  v47 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D0, &qword_1B4D20E40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = *(a2 + 64);
  v41[0] = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v41[1] = v3 + 16;
  v49 = (v3 + 32);
  v44 = v3;
  v45 = a2;
  v46 = (v3 + 8);

  v19 = 0;
  v42 = v12;
  v43 = v9;
  v51 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v44;
      v25 = v45;
      v27 = v48;
      v28 = v50;
      (*(v44 + 16))(v48, *(v45 + 48) + *(v44 + 72) * v24, v50);
      v29 = *(*(v25 + 56) + 8 * v24);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      v31 = *(v30 + 48);
      v32 = *(v26 + 32);
      v9 = v43;
      v32(v43, v27, v28);
      *&v9[v31] = v29;
      (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
      v22 = v20;
      v12 = v42;
LABEL_13:
      sub_1B498B270(v9, v12, &qword_1EB8A81D0, &qword_1B4D20E40);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      if ((*(*(v33 - 8) + 48))(v12, 1, v33) == 1)
      {
        break;
      }

      v34 = *(v33 + 48);
      v35 = v48;
      v36 = v50;
      (*v49)(v48, v12, v50);
      v37 = *&v12[v34];
      v38 = v47[3];
      v54 = v47[2];
      v55 = v38;
      v56 = *(v47 + 8);
      v39 = v47[1];
      v52 = *v47;
      v53 = v39;
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B4D1808C();
      (*v46)(v35, v36);
      MEMORY[0x1B8C7D290](v37);
      result = sub_1B4D18EDC();
      v19 = v22;
      v51 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1B8C7D290](v51);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
        (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v41[0] + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4A27218(__int128 *a1, uint64_t a2)
{
  v44 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v6 = v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C0, &unk_1B4D47300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v39[1] = v3 + 16;
  v45 = (v3 + 32);
  v41 = v3;
  v42 = a2;
  v43 = (v3 + 8);

  v20 = 0;
  v40 = v10;
  v39[0] = v13;
  v47 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v41;
      v27 = *(*(v42 + 48) + 8 * v25);
      v28 = v46;
      (*(v41 + 16))(v6, *(v42 + 56) + *(v41 + 72) * v25, v46);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      v30 = *(v29 + 48);
      v31 = v40;
      *v40 = v27;
      v32 = *(v26 + 32);
      v10 = v31;
      v32(&v31[v30], v6, v28);
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      v23 = v21;
      v13 = v39[0];
LABEL_13:
      sub_1B498B270(v10, v13, &qword_1EB8A81C0, &unk_1B4D47300);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      if ((*(*(v33 - 8) + 48))(v13, 1, v33) == 1)
      {
        break;
      }

      v34 = *v13;
      v35 = v46;
      (*v45)(v6, &v13[*(v33 + 48)], v46);
      v36 = v44[3];
      v50 = v44[2];
      v51 = v36;
      v52 = *(v44 + 8);
      v37 = v44[1];
      v48 = *v44;
      v49 = v37;
      MEMORY[0x1B8C7D2C0](v34);
      sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0);
      sub_1B4D1808C();
      (*v43)(v6, v35);
      result = sub_1B4D18EDC();
      v20 = v23;
      v47 ^= result;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1B8C7D290](v47);
  }

  else
  {
LABEL_5:
    if (v18 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
        (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4A27684(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  for (i = (v7 + 63) >> 6; v9; v4 ^= result)
  {
    v11 = v5;
LABEL_9:
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v13 = *(*(a2 + 56) + v12);
    v9 &= v9 - 1;
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 64);
    v14 = *v3;
    v15 = *(v3 + 16);
    MEMORY[0x1B8C7D290](*(*(a2 + 48) + v12));
    MEMORY[0x1B8C7D2C0](v13);
    result = sub_1B4D18EDC();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x1B8C7D290](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A277A8(__int128 *a1, uint64_t a2)
{
  v61 = sub_1B4D179BC();
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v54 - v9;
  v10 = type metadata accessor for WorkoutMilestoneEntry();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v66 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B8, &unk_1B4D46FD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v62 = (&v54 - v19);
  v20 = *(a2 + 64);
  v63 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v60 = (v4 + 48);
  v55 = (v4 + 32);
  v54 = (v4 + 8);
  v59 = a2;

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v67 = v26;
    if (!v23)
    {
      break;
    }

    v29 = v27;
LABEL_16:
    v33 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v34 = v33 | (v29 << 6);
    v35 = *(*(v59 + 48) + 8 * v34);
    v36 = v57;
    sub_1B4A290F8(*(v59 + 56) + *(v58 + 72) * v34, v57, type metadata accessor for WorkoutMilestoneEntry);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
    v38 = *(v37 + 48);
    v39 = v64;
    *v64 = v35;
    v32 = v39;
    sub_1B4A29160(v36, v39 + v38, type metadata accessor for WorkoutMilestoneEntry);
    (*(*(v37 - 8) + 56))(v32, 0, 1, v37);
LABEL_17:
    v40 = v32;
    v41 = v62;
    sub_1B498B270(v40, v62, &qword_1EB8A81B8, &unk_1B4D46FD0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {

      return MEMORY[0x1B8C7D290](v67);
    }

    v43 = v41;
    v44 = *v41;
    v45 = v66;
    sub_1B4A29160(v43 + *(v42 + 48), v66, type metadata accessor for WorkoutMilestoneEntry);
    v46 = a1[3];
    v70 = a1[2];
    v71 = v46;
    v72 = *(a1 + 8);
    v47 = a1[1];
    v68 = *a1;
    v69 = v47;
    MEMORY[0x1B8C7D290](v44);
    MEMORY[0x1B8C7D2C0](*v45);
    v48 = *(v10 + 20);
    sub_1B4D177CC();
    sub_1B4A28364(&qword_1EB8A72D8, MEMORY[0x1E69695A8]);
    sub_1B4D1808C();
    v49 = (v45 + *(v10 + 24));
    MEMORY[0x1B8C7D290](*v49);
    MEMORY[0x1B8C7D290](v49[1]);
    MEMORY[0x1B8C7D290](v49[2]);
    MEMORY[0x1B8C7D290](v49[3]);
    MEMORY[0x1B8C7D290](v49[4]);
    v50 = type metadata accessor for LocalizedDate();
    v51 = v65;
    sub_1B4974FBC(v49 + *(v50 + 36), v65, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v52 = v61;
    if ((*v60)(v51, 1, v61) == 1)
    {
      sub_1B4D18EAC();
    }

    else
    {
      v28 = v56;
      (*v55)(v56, v65, v52);
      sub_1B4D18EAC();
      sub_1B4A28364(&qword_1EB8A7040, MEMORY[0x1E6969BC0]);
      sub_1B4D1808C();
      (*v54)(v28, v52);
    }

    sub_1B4A291C8(v66, type metadata accessor for WorkoutMilestoneEntry);
    result = sub_1B4D18EDC();
    v26 = result ^ v67;
  }

  if (v24 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v24;
  }

  v31 = v30 - 1;
  v32 = v64;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
      (*(*(v53 - 8) + 56))(v32, 1, 1, v53);
      v23 = 0;
      v27 = v31;
      goto LABEL_17;
    }

    v23 = *(v63 + 8 * v29);
    ++v27;
    if (v23)
    {
      v27 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4A27E5C(uint64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v23 - v6;
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  v23 = (v5 + 8);
  v25 = a2;

  v14 = 0;
  v15 = 0;
  v16 = v24;
  if (v11)
  {
    while (1)
    {
      v17 = v15;
LABEL_8:
      v18 = __clz(__rbit64(v11)) | (v17 << 6);
      v19 = *(*(v25 + 48) + v18);
      v20 = *(*(v25 + 56) + 8 * v18);

      if (!v20)
      {
        break;
      }

      v11 &= v11 - 1;
      v21 = *(a1 + 48);
      v27[2] = *(a1 + 32);
      v27[3] = v21;
      v28 = *(a1 + 64);
      v22 = *(a1 + 16);
      v27[0] = *a1;
      v27[1] = v22;
      v26 = v19;
      DistanceReference.rawValue.getter();
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
      sub_1B4D1808C();
      (*v23)(v7, v16);
      sub_1B49C3E5C(v27, v20);

      result = sub_1B4D18EDC();
      v14 ^= result;
      v15 = v17;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1B8C7D290](v14);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_11;
      }

      v11 = *(v8 + 8 * v17);
      ++v15;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4A2809C(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v20 = v2;
  v21 = a1;
  while (v7)
  {
LABEL_10:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(v2 + 48) + v13);
    v15 = *(*(v2 + 56) + v13);

    if (!v14)
    {
LABEL_15:

      return MEMORY[0x1B8C7D290](v10);
    }

    v22 = v10;
    v25 = a1[2];
    v26 = a1[3];
    v27 = *(a1 + 8);
    v23 = *a1;
    v24 = a1[1];
    MEMORY[0x1B8C7D290](*(v14 + 16));
    v16 = *(v14 + 16);
    if (v16)
    {

      v17 = (v14 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        sub_1B4D1820C();

        v17 += 2;
        --v16;
      }

      while (v16);

      v2 = v20;
      a1 = v21;
    }

    v7 &= v7 - 1;

    MEMORY[0x1B8C7D290](v15);
    result = sub_1B4D18EDC();
    v10 = result ^ v22;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_15;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B4A28240()
{
  result = qword_1EB8A8050;
  if (!qword_1EB8A8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8050);
  }

  return result;
}

uint64_t sub_1B4A28294(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8058, type metadata accessor for FitnessPlusBestWorkoutProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28310()
{
  result = qword_1EB8A8060;
  if (!qword_1EB8A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8060);
  }

  return result;
}

uint64_t sub_1B4A28364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A283AC(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8070, type metadata accessor for FitnessPlusBestWorkoutProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A28490(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8090, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2854C(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80A0, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A28630(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80C0, type metadata accessor for FitnessPlusCaloriesProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A286EC(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80D0, type metadata accessor for FitnessPlusCaloriesProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A287D0(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80F0, type metadata accessor for FitnessPlusDurationProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2888C(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8100, type metadata accessor for FitnessPlusDurationProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28930()
{
  result = qword_1EB8A8110;
  if (!qword_1EB8A8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8110);
  }

  return result;
}

unint64_t sub_1B4A28984(uint64_t a1)
{
  result = sub_1B4A289AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A289AC()
{
  result = qword_1EB8A8118;
  if (!qword_1EB8A8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8118);
  }

  return result;
}

unint64_t sub_1B4A28A04()
{
  result = qword_1EB8A8120;
  if (!qword_1EB8A8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8120);
  }

  return result;
}

unint64_t sub_1B4A28A58(uint64_t a1)
{
  result = sub_1B4A28A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28A80()
{
  result = qword_1EB8A8128;
  if (!qword_1EB8A8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8128);
  }

  return result;
}

unint64_t sub_1B4A28AD8()
{
  result = qword_1EB8A8130;
  if (!qword_1EB8A8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8130);
  }

  return result;
}

unint64_t sub_1B4A28B30()
{
  result = qword_1EB8A8138;
  if (!qword_1EB8A8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8138);
  }

  return result;
}

unint64_t sub_1B4A28B84(uint64_t a1)
{
  result = sub_1B4A28BAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28BAC()
{
  result = qword_1EB8A8140;
  if (!qword_1EB8A8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8140);
  }

  return result;
}

unint64_t sub_1B4A28C04()
{
  result = qword_1EB8A8148;
  if (!qword_1EB8A8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8148);
  }

  return result;
}

unint64_t sub_1B4A28C58(uint64_t a1)
{
  result = sub_1B4A28C80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28C80()
{
  result = qword_1EB8A8150;
  if (!qword_1EB8A8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8150);
  }

  return result;
}

unint64_t sub_1B4A28CD8()
{
  result = qword_1EB8A8158;
  if (!qword_1EB8A8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8158);
  }

  return result;
}

void sub_1B4A28DDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B498AFB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1B4A28FD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_1B4A28DDC(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B4A29054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B4A2909C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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