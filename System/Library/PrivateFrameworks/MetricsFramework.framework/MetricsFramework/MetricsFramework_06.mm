id _s16MetricsFramework13EventMetadataV07toBiomeC0016deviceExperimentA0So020BMSiriOnDeviceDigesthacD0CAA0khA0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AD8, &qword_258F114A8);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v174 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v173 = &v161 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v170 = &v161 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v169 = &v161 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v167 = &v161 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v161 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v161 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v161 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v162 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v172 = &v161 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v161 = &v161 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v168 = &v161 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v166 = &v161 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v164 = &v161 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v53 = &v161 - v52;
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v161 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v58 = *(*(v57 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v57 - 8, v59);
  v165 = &v161 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v65 = &v161 - v64;
  MEMORY[0x28223BE20](v63, v66);
  v68 = &v161 - v67;
  v176 = a1;
  sub_258DE20C0(a1, v29, &qword_27F989AD8, &qword_258F114A8);
  v69 = type metadata accessor for DeviceExperimentMetrics(0);
  v175 = *(*(v69 - 8) + 48);
  if (v175(v29, 1, v69) == 1)
  {
    v70 = &qword_27F989AD8;
    v71 = &qword_258F114A8;
    v72 = v29;
LABEL_7:
    sub_258DE2184(v72, v70, v71);
    v163 = 0;
    v171 = 0;
    goto LABEL_8;
  }

  sub_258DE20C0(v29, v56, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v29, type metadata accessor for DeviceExperimentMetrics);
  v73 = type metadata accessor for EventMetadata(0);
  if ((*(*(v73 - 8) + 48))(v56, 1, v73) == 1)
  {
    v70 = &qword_27F9894E0;
    v71 = &unk_258F106A0;
    v72 = v56;
    goto LABEL_7;
  }

  sub_258DE20C0(v56, v68, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v56, type metadata accessor for EventMetadata);
  v74 = sub_258F09A70();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v68, 1, v74) == 1)
  {
    v70 = &qword_27F988730;
    v71 = &unk_258F0F8E0;
    v72 = v68;
    goto LABEL_7;
  }

  v163 = sub_258F09A40();
  v171 = v88;
  (*(v75 + 8))(v68, v74);
LABEL_8:
  v76 = v176;
  v77 = v166;
  sub_258DE20C0(v176, v26, &qword_27F989AD8, &qword_258F114A8);
  v78 = v175;
  if (v175(v26, 1, v69) == 1)
  {
    v79 = &qword_27F989AD8;
    v80 = &qword_258F114A8;
    v81 = v26;
LABEL_12:
    sub_258DE2184(v81, v79, v80);
    v166 = 0;
    v83 = 0;
    v84 = v165;
    goto LABEL_18;
  }

  sub_258DE20C0(v26, v53, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v26, type metadata accessor for DeviceExperimentMetrics);
  v82 = type metadata accessor for EventMetadata(0);
  if ((*(*(v82 - 8) + 48))(v53, 1, v82) == 1)
  {
    v79 = &qword_27F9894E0;
    v80 = &unk_258F106A0;
    v81 = v53;
    goto LABEL_12;
  }

  sub_258DE20C0(&v53[*(v82 + 20)], v65, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v53, type metadata accessor for EventMetadata);
  v85 = sub_258F09A70();
  v86 = *(v85 - 8);
  v87 = (*(v86 + 48))(v65, 1, v85);
  v84 = v165;
  if (v87 == 1)
  {
    sub_258DE2184(v65, &qword_27F988730, &unk_258F0F8E0);
    v166 = 0;
    v83 = 0;
  }

  else
  {
    v166 = sub_258F09A40();
    v83 = v89;
    (*(v86 + 8))(v65, v85);
  }

  v78 = v175;
  v76 = v176;
LABEL_18:
  v90 = v164;
  sub_258DE20C0(v76, v22, &qword_27F989AD8, &qword_258F114A8);
  v91 = v78(v22, 1, v69);
  v92 = v168;
  if (v91 == 1)
  {
    v93 = &qword_27F989AD8;
    v94 = &qword_258F114A8;
    v95 = v22;
LABEL_22:
    sub_258DE2184(v95, v93, v94);
    v165 = 0;
    v97 = 0;
    goto LABEL_27;
  }

  sub_258DE20C0(v22, v90, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v22, type metadata accessor for DeviceExperimentMetrics);
  v96 = type metadata accessor for EventMetadata(0);
  if ((*(*(v96 - 8) + 48))(v90, 1, v96) == 1)
  {
    v93 = &qword_27F9894E0;
    v94 = &unk_258F106A0;
    v95 = v90;
    goto LABEL_22;
  }

  sub_258DE20C0(v90 + *(v96 + 24), v84, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v90, type metadata accessor for EventMetadata);
  v98 = sub_258F09A70();
  v99 = *(v98 - 8);
  if ((*(v99 + 48))(v84, 1, v98) == 1)
  {
    sub_258DE2184(v84, &qword_27F988730, &unk_258F0F8E0);
    v165 = 0;
    v97 = 0;
  }

  else
  {
    v165 = sub_258F09A40();
    v97 = v100;
    (*(v99 + 8))(v84, v98);
  }

  v76 = v176;
LABEL_27:
  v101 = v167;
  sub_258DE20C0(v76, v167, &qword_27F989AD8, &qword_258F114A8);
  if (v78(v101, 1, v69) == 1)
  {
    v102 = &qword_27F989AD8;
    v103 = &qword_258F114A8;
    v104 = v101;
LABEL_31:
    sub_258DE2184(v104, v102, v103);
    v167 = 0;
    v106 = 1;
    goto LABEL_33;
  }

  sub_258DE20C0(v101, v77, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v101, type metadata accessor for DeviceExperimentMetrics);
  v105 = type metadata accessor for EventMetadata(0);
  if ((*(*(v105 - 8) + 48))(v77, 1, v105) == 1)
  {
    v102 = &qword_27F9894E0;
    v103 = &unk_258F106A0;
    v104 = v77;
    goto LABEL_31;
  }

  v107 = v77 + *(v105 + 28);
  v167 = *v107;
  v106 = *(v107 + 8);
  sub_258E578F8(v77, type metadata accessor for EventMetadata);
LABEL_33:
  v108 = v169;
  sub_258DE20C0(v76, v169, &qword_27F989AD8, &qword_258F114A8);
  if (v78(v108, 1, v69) == 1)
  {
    v109 = &qword_27F989AD8;
    v110 = &qword_258F114A8;
    v111 = v108;
LABEL_37:
    sub_258DE2184(v111, v109, v110);
    v113 = 1;
    goto LABEL_42;
  }

  sub_258DE20C0(v108, v92, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v108, type metadata accessor for DeviceExperimentMetrics);
  v112 = type metadata accessor for EventMetadata(0);
  if ((*(*(v112 - 8) + 48))(v92, 1, v112) == 1)
  {
    v109 = &qword_27F9894E0;
    v110 = &unk_258F106A0;
    v111 = v92;
    goto LABEL_37;
  }

  v114 = *(v92 + *(v112 + 32));
  v115 = v114;
  sub_258E578F8(v92, type metadata accessor for EventMetadata);
  if (v114)
  {
    [v115 startTimestampInSecondsSince1970];

    v113 = 0;
  }

  else
  {
    v113 = 1;
  }

  v76 = v176;
LABEL_42:
  v116 = v76;
  v117 = v170;
  sub_258DE20C0(v116, v170, &qword_27F989AD8, &qword_258F114A8);
  if (v78(v117, 1, v69) == 1)
  {
    v118 = v83;
    v119 = &qword_27F989AD8;
    v120 = &qword_258F114A8;
    v121 = v117;
LABEL_46:
    sub_258DE2184(v121, v119, v120);
    goto LABEL_47;
  }

  v122 = v161;
  sub_258DE20C0(v117, v161, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v117, type metadata accessor for DeviceExperimentMetrics);
  v123 = type metadata accessor for EventMetadata(0);
  v118 = v83;
  if ((*(*(v123 - 8) + 48))(v122, 1, v123) == 1)
  {
    v119 = &qword_27F9894E0;
    v120 = &unk_258F106A0;
    v121 = v122;
    goto LABEL_46;
  }

  v128 = *(v122 + *(v123 + 32));
  v129 = v128;
  v130 = v122;
  v131 = v129;
  sub_258E578F8(v130, type metadata accessor for EventMetadata);
  if (!v128)
  {
LABEL_47:
    v124 = 1;
    if (v113)
    {
      goto LABEL_48;
    }

LABEL_52:
    v125 = sub_258F0AEC0();
    v126 = v172;
    if ((v124 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  [v131 numberOfSeconds];

  v124 = 0;
  if ((v113 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  v125 = 0;
  v126 = v172;
  if ((v124 & 1) == 0)
  {
LABEL_49:
    v127 = sub_258F0AEB0();
    goto LABEL_54;
  }

LABEL_53:
  v127 = 0;
LABEL_54:
  v132 = [objc_allocWithZone(MEMORY[0x277CF14D8]) initWithStartTimestampInSecondsSince1970:v125 numberOfSeconds:v127];

  v133 = v176;
  v134 = v173;
  sub_258DE20C0(v176, v173, &qword_27F989AD8, &qword_258F114A8);
  if (v175(v134, 1, v69) == 1)
  {
    sub_258DE2184(v134, &qword_27F989AD8, &qword_258F114A8);
    v135 = 1;
  }

  else
  {
    sub_258DE20C0(v134, v126, &qword_27F9894E0, &unk_258F106A0);
    sub_258E578F8(v134, type metadata accessor for DeviceExperimentMetrics);
    v136 = type metadata accessor for EventMetadata(0);
    if ((*(*(v136 - 8) + 48))(v126, 1, v136) == 1)
    {
      sub_258DE2184(v126, &qword_27F9894E0, &unk_258F106A0);
      v135 = 1;
    }

    else
    {
      v137 = v126 + *(v136 + 36);
      v138 = *v137;
      v135 = *(v137 + 8);
      sub_258E578F8(v126, type metadata accessor for EventMetadata);
    }

    v133 = v176;
  }

  v139 = v133;
  v140 = v174;
  sub_258DE20C0(v139, v174, &qword_27F989AD8, &qword_258F114A8);
  if (v175(v140, 1, v69) == 1)
  {
    v141 = &qword_27F989AD8;
    v142 = &qword_258F114A8;
    v143 = v140;
    goto LABEL_64;
  }

  v144 = v162;
  sub_258DE20C0(v140, v162, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v140, type metadata accessor for DeviceExperimentMetrics);
  v145 = type metadata accessor for EventMetadata(0);
  if ((*(*(v145 - 8) + 48))(v144, 1, v145) == 1)
  {
    v141 = &qword_27F9894E0;
    v142 = &unk_258F106A0;
    v143 = v144;
LABEL_64:
    sub_258DE2184(v143, v141, v142);
    v146 = 1;
    if (v106)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

  v156 = v144 + *(v145 + 40);
  v157 = *v156;
  v146 = *(v156 + 8);
  sub_258E578F8(v144, type metadata accessor for EventMetadata);
  if (v106)
  {
LABEL_65:
    v147 = 0;
    v148 = v171;
    if ((v135 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

LABEL_72:
  v147 = sub_258F0AEC0();
  v148 = v171;
  if ((v135 & 1) == 0)
  {
LABEL_66:
    v149 = sub_258F0AEC0();
    v150 = v118;
    if ((v146 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_74;
  }

LABEL_73:
  v149 = 0;
  v150 = v118;
  if ((v146 & 1) == 0)
  {
LABEL_67:
    v151 = sub_258F0AEC0();
    if (v148)
    {
      goto LABEL_68;
    }

    goto LABEL_75;
  }

LABEL_74:
  v151 = 0;
  if (v148)
  {
LABEL_68:
    v152 = v132;
    v153 = sub_258F0A4E0();

    if (v150)
    {
      goto LABEL_69;
    }

LABEL_76:
    v154 = 0;
    if (v97)
    {
      goto LABEL_70;
    }

LABEL_77:
    v155 = 0;
    goto LABEL_78;
  }

LABEL_75:
  v158 = v132;
  v153 = 0;
  if (!v150)
  {
    goto LABEL_76;
  }

LABEL_69:
  v154 = sub_258F0A4E0();

  if (!v97)
  {
    goto LABEL_77;
  }

LABEL_70:
  v155 = sub_258F0A4E0();

LABEL_78:
  v159 = [objc_allocWithZone(MEMORY[0x277CF14D0]) initWithOddIdUUID:v153 deviceAggregationId:v154 userAggregationId:v155 eventTimestampInMSSince1970:v147 timeInterval:v132 userAggregationIdRotationTimestampInMs:v149 userAggregationIdExpirationTimestampInMs:v151];

  return v159;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC009scorecardD0So015BMSiriScorecardacD0CACSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v106 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5, v7);
  v105 = &v95[-v9];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v95[-v12];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v102 = &v95[-v16];
  v18 = MEMORY[0x28223BE20](v15, v17);
  v101 = &v95[-v19];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v95[-v22];
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v95[-v26];
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v95[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v100 = &v95[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v95[-v38];
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v95[-v41];
  sub_258DE20C0(a1, v30, &qword_27F9894E0, &unk_258F106A0);
  v43 = type metadata accessor for EventMetadata(0);
  v44 = *(v43 - 1);
  v45 = *(v44 + 48);
  v46 = (v44 + 48);
  if (v45(v30, 1, v43) == 1)
  {
    sub_258DE2184(v30, &qword_27F9894E0, &unk_258F106A0);
    v99 = 0;
    v104 = 0;
  }

  else
  {
    v103 = v13;
    sub_258DE20C0(v30, v42, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v30, type metadata accessor for EventMetadata);
    v47 = sub_258F09A70();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v42, 1, v47) == 1)
    {
      sub_258DE2184(v42, &qword_27F988730, &unk_258F0F8E0);
      v99 = 0;
      v104 = 0;
    }

    else
    {
      v99 = sub_258F09A40();
      v104 = v49;
      (*(v48 + 8))(v42, v47);
    }

    v13 = v103;
  }

  sub_258DE20C0(a1, v27, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v27, 1, v43) == 1)
  {
    sub_258DE2184(v27, &qword_27F9894E0, &unk_258F106A0);
    v98 = 0;
    v103 = 0;
  }

  else
  {
    v50 = v13;
    sub_258DE20C0(&v27[v43[5]], v39, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v27, type metadata accessor for EventMetadata);
    v51 = sub_258F09A70();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v39, 1, v51) == 1)
    {
      sub_258DE2184(v39, &qword_27F988730, &unk_258F0F8E0);
      v98 = 0;
      v103 = 0;
    }

    else
    {
      v98 = sub_258F09A40();
      v103 = v53;
      (*(v52 + 8))(v39, v51);
    }

    v13 = v50;
  }

  v54 = v100;
  sub_258DE20C0(a1, v23, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v23, 1, v43) == 1)
  {
    v55 = &qword_27F9894E0;
    v56 = &unk_258F106A0;
    v57 = v23;
LABEL_17:
    sub_258DE2184(v57, v55, v56);
    v97 = 0;
    v100 = 0;
    goto LABEL_19;
  }

  sub_258DE20C0(&v23[v43[6]], v54, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v23, type metadata accessor for EventMetadata);
  v58 = sub_258F09A70();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v54, 1, v58) == 1)
  {
    v55 = &qword_27F988730;
    v56 = &unk_258F0F8E0;
    v57 = v54;
    goto LABEL_17;
  }

  v97 = sub_258F09A40();
  v100 = v60;
  (*(v59 + 8))(v54, v58);
LABEL_19:
  v62 = v101;
  v61 = v102;
  sub_258DE20C0(a1, v101, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v62, 1, v43) == 1)
  {
    sub_258DE2184(v62, &qword_27F9894E0, &unk_258F106A0);
    v63 = 1;
  }

  else
  {
    v64 = &v62[v43[9]];
    v65 = *v64;
    v63 = v64[8];
    sub_258E578F8(v62, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v61, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v61, 1, v43) == 1)
  {
    sub_258DE2184(v61, &qword_27F9894E0, &unk_258F106A0);
    LODWORD(v66) = 1;
  }

  else
  {
    v67 = v61 + v43[10];
    v68 = *v67;
    LODWORD(v66) = *(v67 + 8);
    sub_258E578F8(v61, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v13, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v13, 1, v43) == 1)
  {
    sub_258DE2184(v13, &qword_27F9894E0, &unk_258F106A0);
    v69 = sub_258E52D4C(a1, 0x277CF15C8);
    v102 = 0;
    if ((v63 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_33:
    v70 = 0;
    if ((v66 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  v96 = v66;
  v101 = v46;
  v66 = v45;
  v72 = &v13[v43[7]];
  v73 = *v72;
  v74 = v72[8];
  sub_258E578F8(v13, type metadata accessor for EventMetadata);
  v69 = sub_258E52D4C(a1, 0x277CF15C8);
  if (v74)
  {
    v102 = 0;
  }

  else
  {
    v102 = sub_258F0AEC0();
  }

  v45 = v66;
  LOBYTE(v66) = v96;
  if (v63)
  {
    goto LABEL_33;
  }

LABEL_27:
  v70 = sub_258F0AEC0();
  if ((v66 & 1) == 0)
  {
LABEL_28:
    v71 = sub_258F0AEC0();
    goto LABEL_35;
  }

LABEL_34:
  v71 = 0;
LABEL_35:
  v75 = v105;
  sub_258DE20C0(a1, v105, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v75, 1, v43) == 1)
  {
    sub_258DE2184(v75, &qword_27F9894E0, &unk_258F106A0);
    v76 = 0;
  }

  else
  {
    v77 = &v75[v43[11]];
    v78 = *v77;
    v79 = *(v77 + 4);
    sub_258E578F8(v75, type metadata accessor for EventMetadata);
    if (v79)
    {
      v76 = 0;
    }

    else
    {
      v76 = sub_258F0AE20();
    }
  }

  v80 = a1;
  v81 = v106;
  sub_258DE20C0(v80, v106, &qword_27F9894E0, &unk_258F106A0);
  if (v45(v81, 1, v43) == 1)
  {
    sub_258DE2184(v81, &qword_27F9894E0, &unk_258F106A0);
    v82 = 0;
    v83 = v103;
    if (v104)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v89 = v81[v43[12]];
    sub_258E578F8(v81, type metadata accessor for EventMetadata);
    v83 = v103;
    if (v89 == 2)
    {
      v82 = 0;
    }

    else
    {
      v82 = sub_258F0A730();
    }

    if (v104)
    {
LABEL_42:
      v84 = v69;
      v85 = sub_258F0A4E0();

      v86 = v100;
      if (v83)
      {
        goto LABEL_43;
      }

LABEL_50:
      v87 = 0;
      if (v86)
      {
        goto LABEL_44;
      }

LABEL_51:
      v88 = 0;
      goto LABEL_52;
    }
  }

  v90 = v69;
  v85 = 0;
  v86 = v100;
  if (!v83)
  {
    goto LABEL_50;
  }

LABEL_43:
  v87 = sub_258F0A4E0();

  if (!v86)
  {
    goto LABEL_51;
  }

LABEL_44:
  v88 = sub_258F0A4E0();

LABEL_52:
  v91 = objc_allocWithZone(MEMORY[0x277CF15C0]);
  v92 = v102;
  v93 = [v91 initWithOddId:v85 deviceAggregationId:v87 userAggregationId:v88 eventTimestampInMSSince1970:v102 timeInterval:v69 userAggregationIdRotationTimestampInMs:v70 userAggregationIdExpirationTimestampInMs:v71 eventOrigin:v76 isLongLivedIDUploadDisabled:v82];

  return v93;
}

uint64_t sub_258E563E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258E5642C()
{
  result = qword_27F989A88;
  if (!qword_27F989A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989A88);
  }

  return result;
}

void sub_258E5691C()
{
  sub_258E56AC4(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D58);
    if (v1 <= 0x3F)
    {
      sub_258E56A6C(319, &qword_27F989AA0, &qword_280CC49E0, 0x277D593F8);
      if (v2 <= 0x3F)
      {
        sub_258E56AC4(319, &qword_27F989AA8, type metadata accessor for ODDSiriSchemaODDEventOrigin);
        if (v3 <= 0x3F)
        {
          sub_258E0F074(319, &qword_27F989788);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258E56A6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_258DEB8C8(255, a3, a4);
    v5 = sub_258F0A920();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258E56AC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ISOLocale(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ISOLocale(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 13) = v3;
  return result;
}

void sub_258E56BC4()
{
  sub_258E56AC4(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v0 <= 0x3F)
  {
    sub_258E56AC4(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D40);
      if (v2 <= 0x3F)
      {
        sub_258E56AC4(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
        if (v3 <= 0x3F)
        {
          sub_258E0F074(319, &qword_27F989AC0);
          if (v4 <= 0x3F)
          {
            sub_258E56AC4(319, &qword_27F989698, type metadata accessor for SISchemaDataSharingOptInState);
            if (v5 <= 0x3F)
            {
              sub_258E56AC4(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
              if (v6 <= 0x3F)
              {
                sub_258E56AC4(319, &qword_27F9896A0, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
                if (v7 <= 0x3F)
                {
                  sub_258E56AC4(319, &qword_27F9896A8, type metadata accessor for ORCHSchemaORCHSiriNlMode);
                  if (v8 <= 0x3F)
                  {
                    sub_258E56A6C(319, &qword_27F9896B0, &qword_27F9896B8, 0x277D5A900);
                    if (v9 <= 0x3F)
                    {
                      sub_258E0F074(319, &qword_27F989718);
                      if (v10 <= 0x3F)
                      {
                        sub_258E56AC4(319, &qword_27F989778, type metadata accessor for SISchemaResponseCategory);
                        if (v11 <= 0x3F)
                        {
                          sub_258E3DC64(319, &qword_27F9896D0, &qword_27F9896D8, &unk_258F10780);
                          if (v12 <= 0x3F)
                          {
                            sub_258E0F074(319, &qword_27F989788);
                            if (v13 <= 0x3F)
                            {
                              sub_258E3DC64(319, &qword_27F989790, &qword_27F989798, &unk_258F113F0);
                              if (v14 <= 0x3F)
                              {
                                sub_258E56AC4(319, &qword_27F9897A0, type metadata accessor for SISchemaInvocationSource);
                                if (v15 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_258E56F90()
{
  sub_258E56AC4(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258E56AC4(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_258E578F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DictationDeviceExperimentMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  DictationDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t DictationDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v139 = a4;
  v130 = a3;
  v137 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v134 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v129 = v122 - v12;
  v128 = sub_258F09B00();
  v127 = *(v128 - 8);
  v13 = *(v127 + 64);
  MEMORY[0x28223BE20](v128, v14);
  v125 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_258F09A20();
  v124 = *(v126 - 1);
  v16 = *(v124 + 64);
  MEMORY[0x28223BE20](v126, v17);
  v123 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258F0A370();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v140 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v141 = v122 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = v122 - v29;
  v31 = sub_258F09A70();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v20;
  v37 = *(v20 + 16);
  v132 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger;
  v37(v4 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger, a2, v19);
  sub_258F09A60();
  v38 = *(v32 + 32);
  v143 = v4;
  v131 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId;
  v133 = v31;
  v38(v4 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId, v36, v31);
  v39 = sub_258F0A1F0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v137 = v137;
  v42 = sub_258F0A1E0();
  v154 = v39;
  v155 = MEMORY[0x277D04548];
  v153 = v42;
  v142 = a2;
  v136 = v20 + 16;
  v135 = v37;
  v37(v30, a2, v19);
  v43 = sub_258F09C20();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = v138;
  v47 = sub_258F09BE0();
  v138 = v46;
  if (v46)
  {
    v48 = *(v156 + 8);
    v48(v142, v19);

    v49 = v143;
    v48(&v132[v143], v19);
    (*(v32 + 8))(v49 + v131, v133);
    type metadata accessor for DictationDeviceExperimentMetrics();
    v50 = *(*v49 + 48);
    v51 = *(*v49 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v52 = v47;
    v53 = v123;
    sub_258F0A090();
    v54 = v125;
    sub_258F09AC0();
    v55 = v52;
    sub_258F09C10();
    (*(v127 + 8))(v54, v128);
    (*(v124 + 8))(v53, v126);
    v56 = v141;
    v57 = v142;
    v58 = v135;
    v135(v141, v142, v19);
    v59 = type metadata accessor for SiriDeviceExperimentMetricsDataProvider();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    v62 = swift_allocObject();
    v63 = *(v156 + 32);
    v131 = v156 + 32;
    v133 = v63;
    v63(v62 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger, v56, v19);
    *(v143 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider) = v62;
    v58(v56, v57, v19);
    v137 = v137;
    v122[1] = v55;

    v64 = v129;
    sub_258E5873C(v129);
    v58(v140, v56, v19);
    sub_258DECF90(v64, v134);
    type metadata accessor for BiomeResultsWrapperFactory();
    v128 = swift_allocObject();
    v65 = type metadata accessor for CAAnalyticsEventSubmitter();
    v66 = swift_allocObject();
    sub_258F09F30();
    v127 = sub_258F09F20();
    v154 = v43;
    v155 = &off_286A2FA30;
    v153 = v55;
    v151 = v65;
    v152 = &off_286A2C648;
    v150 = v66;
    v67 = type metadata accessor for DictationDeviceExperimentMetricsCalculator();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v70 = swift_allocObject();
    v71 = __swift_mutable_project_boxed_opaque_existential_1(&v153, v43);
    v126 = v122;
    v72 = *(*(v43 - 8) + 64);
    MEMORY[0x28223BE20](v71, v71);
    v74 = (v122 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74);
    v76 = v19;
    v77 = v151;
    v78 = __swift_mutable_project_boxed_opaque_existential_1(&v150, v151);
    v79 = *(*(v77 - 8) + 64);
    MEMORY[0x28223BE20](v78, v78);
    v81 = (v122 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = *v74;
    v84 = *v81;
    v148 = v43;
    v149 = &off_286A2FA30;
    *&v147 = v83;
    v145 = v65;
    v146 = &off_286A2C648;
    *&v144 = v84;
    sub_258DED000(v64);
    v85 = *(v156 + 8);
    v156 += 8;
    v132 = v85;
    v86 = v141;
    (v85)(v141, v76);
    v133(v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger, v140, v76);
    sub_258E25BDC(v134, v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL);
    sub_258DDA76C(&v147, v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService);
    *(v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_biomeResultsFactory) = v128;
    sub_258DDA76C(&v144, v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
    *(v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter) = v127;
    *(v70 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_defaults) = v137;
    __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    __swift_destroy_boxed_opaque_existential_1Tm(&v153);
    *(v143 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_dictationDeviceExperimentMetricsCalculator) = v70;
    v87 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v88 = [v87 Metrics];
    swift_unknownObjectRelease();
    v89 = [v88 OnDeviceDigestExperimentMetrics];
    swift_unknownObjectRelease();
    v90 = [v89 source];

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989480, &unk_258F0F6E8);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    swift_allocObject();
    v94 = sub_258F09B80();
    v95 = v142;
    v96 = v135;
    v135(v86, v142, v76);
    v97 = type metadata accessor for SiriDeviceExperimentMetricsBiomeReporter();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v100 = swift_allocObject();
    v129 = v100;
    *(v100 + 16) = v94;
    v134 = v94;
    v101 = v133;
    v133(v100 + OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger, v86, v76);
    v96(v86, v95, v76);

    v102 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v130, v139);
    v103 = v140;
    v96(v140, v95, v76);
    v104 = type metadata accessor for DeviceExperimentSELFEventConverter();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    v107 = swift_allocObject();
    v101(v107 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger, v103, v76);
    v108 = type metadata accessor for SiriDeviceExperimentMetricsSELFReporter();
    v109 = *(v108 + 48);
    v110 = *(v108 + 52);
    v111 = swift_allocObject();
    *(v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v101(v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger, v141, v76);
    *(v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = v102;
    v112 = (v111 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    *v112 = sub_258E58FB0;
    v112[1] = v107;
    v49 = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_258F0F6D0;
    *(v113 + 32) = v129;
    *(v113 + 40) = v111;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989488, &qword_258F0F6F8);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();

    v153 = sub_258F09BA0();
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989490, qword_258F0F700);
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    swift_allocObject();
    v120 = sub_258F09BC0();

    (v132)(v142, v76);
    *(v49 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter) = v120;
  }

  return v49;
}

uint64_t sub_258E5873C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DictationDeviceExperimentMetricsCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for DictationDeviceExperimentMetrics()
{
  result = qword_27F989B30;
  if (!qword_27F989B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E588C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E588E0, 0, 0);
}

uint64_t sub_258E588E0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EC0A40();
}

uint64_t sub_258E58984(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E589B4, 0, 0);
}

uint64_t sub_258E589B4()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258E58A80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E58AA0, 0, 0);
}

uint64_t sub_258E58AA0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_dictationDeviceExperimentMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258E599AC(v3);
}

uint64_t DictationDeviceExperimentMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_dictationDeviceExperimentMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);

  v6 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t DictationDeviceExperimentMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_dictationDeviceExperimentMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);

  v6 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E58D20(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E58D44, 0, 0);
}

uint64_t sub_258E58D44()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EC0A40();
}

uint64_t sub_258E58DE8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E58E0C, 0, 0);
}

uint64_t sub_258E58E0C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_dictationDeviceExperimentMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258E599AC(v3);
}

uint64_t sub_258E58EB0(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E58EE4, 0, 0);
}

uint64_t sub_258E58EE4()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t sub_258E59050(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DictationDeviceExperimentMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of DictationDeviceExperimentMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of DictationDeviceExperimentMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of DictationDeviceExperimentMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t DictationDeviceExperimentMetricsCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a2;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v41 - v10;
  v12 = sub_258F0A370();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a2, v12);
  sub_258DE20C0(a3, v11, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v45 = swift_allocObject();
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  sub_258F09F30();
  v42 = sub_258F09F20();
  v20 = sub_258F09C20();
  v50[3] = v20;
  v50[4] = &off_286A2FA30;
  v50[0] = a4;
  v48 = v18;
  v49 = &off_286A2C648;
  v47[0] = v19;
  v21 = type metadata accessor for DictationDeviceExperimentMetricsCalculator();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v50, v20);
  v26 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v25, v25);
  v28 = (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v48;
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v31, v31);
  v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v28;
  v37 = *v34;
  v38 = (v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService);
  v38[3] = v20;
  v38[4] = &off_286A2FA30;
  *v38 = v36;
  v39 = (v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
  v39[3] = v18;
  v39[4] = &off_286A2C648;
  *v39 = v37;
  sub_258DE2184(v43, &qword_27F988720, &qword_258F0B830);
  (*(v13 + 8))(v44, v12);
  (*(v13 + 32))(v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger, v17, v12);
  sub_258E2EAD8(v11, v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  *(v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_biomeResultsFactory) = v45;
  *(v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter) = v42;
  *(v24 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_defaults) = v46;
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v24;
}

uint64_t type metadata accessor for DictationDeviceExperimentMetricsCalculator()
{
  result = qword_27F989B60;
  if (!qword_27F989B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriDeviceExperimentMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriDeviceExperimentMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriDeviceExperimentMetricsResults.deviceExperimentMetrics.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_258E599AC(uint64_t a1)
{
  v2[273] = v1;
  v2[272] = a1;
  v3 = sub_258F09F40();
  v2[274] = v3;
  v4 = *(v3 - 8);
  v2[275] = v4;
  v5 = *(v4 + 64) + 15;
  v2[276] = swift_task_alloc();
  v6 = sub_258F09F50();
  v2[277] = v6;
  v7 = *(v6 - 8);
  v2[278] = v7;
  v8 = *(v7 + 64) + 15;
  v2[279] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B40, &unk_258F11670);
  v2[280] = v9;
  v10 = *(v9 - 8);
  v2[281] = v10;
  v11 = *(v10 + 64) + 15;
  v2[282] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[283] = swift_task_alloc();
  v2[284] = swift_task_alloc();
  v13 = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[285] = v13;
  v14 = *(v13 + 64) + 15;
  v2[286] = swift_task_alloc();
  v2[287] = swift_task_alloc();
  v15 = type metadata accessor for EventMetadata(0);
  v2[288] = v15;
  v16 = *(v15 - 8);
  v2[289] = v16;
  v17 = *(v16 + 64) + 15;
  v2[290] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[291] = swift_task_alloc();
  v2[292] = swift_task_alloc();
  v2[293] = swift_task_alloc();
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v2[297] = swift_task_alloc();
  v19 = type metadata accessor for CommonDigestElements();
  v2[298] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[299] = swift_task_alloc();
  v21 = sub_258F09B00();
  v2[300] = v21;
  v22 = *(v21 - 8);
  v2[301] = v22;
  v23 = *(v22 + 64) + 15;
  v2[302] = swift_task_alloc();
  v24 = sub_258F09A20();
  v2[303] = v24;
  v25 = *(v24 - 8);
  v2[304] = v25;
  v26 = *(v25 + 64) + 15;
  v2[305] = swift_task_alloc();
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v2[308] = swift_task_alloc();
  v27 = sub_258F0A2C0();
  v2[309] = v27;
  v28 = *(v27 - 8);
  v2[310] = v28;
  v29 = *(v28 + 64) + 15;
  v2[311] = swift_task_alloc();
  v2[312] = swift_task_alloc();
  v30 = sub_258F0A2F0();
  v2[313] = v30;
  v31 = *(v30 - 8);
  v2[314] = v31;
  v32 = *(v31 + 64) + 15;
  v2[315] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E59E88, 0, 0);
}

void sub_258E59E88()
{
  v416 = v0;
  v1 = v0;
  v2 = v0[315];
  v3 = v0[312];
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v4 = sub_258F0A2D0();
  v5 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v6 = v1[312];
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v4, v5, v8, "DictationDeviceExperimentMetricsCalculatorSP", "", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v9 = v1[312];
  v10 = v1[311];
  v11 = v1[310];
  v12 = v1[309];
  v13 = v1[273];

  (*(v11 + 16))(v10, v9, v12);
  v14 = sub_258F0A330();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_258F0A320();
  v17 = sub_258F0A350();
  v18 = sub_258F0A810();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_258DD8000, v17, v18, "SQL calculator invoked: DictationDeviceExperimentMetricsCalculator", v19, 2u);
    MEMORY[0x259C9EF40](v19, -1, -1);
  }

  v20 = v1[273];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v21 = *(sub_258F0A190() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  sub_258DE02C0();
  v24 = v1[273];
  v25 = sub_258DE0478();
  v26 = *(v1[273] + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_defaults);
  v27 = sub_258F0A4E0();
  v28 = [v26 BOOLForKey_];

  v29 = v1[308];
  v413 = v1;
  if (v28)
  {
    sub_258F09A10();
  }

  else
  {
    v30 = v1[302];
    v31 = v1[301];
    v32 = v413[300];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v31 + 8))(v30, v32);
    v1 = v413;
  }

  v33 = v1[308];
  v34 = v1[304];
  v35 = v1[303];
  v36 = sub_258F0A0E0();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  sub_258F0A0C0();

  v388 = *(v34 + 8);
  v388(v33, v35);
  v39 = v25;
  v40 = sub_258F0A4E0();
  LODWORD(v33) = [v26 BOOLForKey_];

  v41 = sub_258F0A350();
  v42 = sub_258F0A810();
  v43 = os_log_type_enabled(v41, v42);
  if (v33)
  {
    v44 = v39;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v415[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A850, v415);
      _os_log_impl(&dword_258DD8000, v41, v42, "%s: Include current date data for aggregation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x259C9EF40](v46, -1, -1);
      MEMORY[0x259C9EF40](v45, -1, -1);
    }
  }

  else
  {
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = v39;
      v49 = swift_slowAlloc();
      v415[0] = v49;
      *v47 = 136315138;
      *(v47 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A850, v415);
      _os_log_impl(&dword_258DD8000, v41, v42, "%s: current date data NOT included for aggregation.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      v50 = v49;
      v39 = v48;
      MEMORY[0x259C9EF40](v50, -1, -1);
      MEMORY[0x259C9EF40](v47, -1, -1);
    }

    v51 = v39;
    v44 = v39;
  }

  v52 = v1[307];
  v53 = v1;
  v54 = v1[306];
  v55 = v53[302];
  v56 = v53[301];
  v402 = v53[300];
  sub_258F0A050();

  v57 = sub_258F0A010();
  v58 = sub_258F0A040();

  v387 = v44;

  type metadata accessor for BiomeResultsWrapper();
  v389 = swift_allocObject();
  *(v389 + 16) = v58;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v365 = *(v56 + 8);
  v365(v55, v402);
  if ((sub_258F0A070() & 1) == 0)
  {
    v390 = 0;
    v392 = 0;
    v403 = MEMORY[0x277D84F90];
    v59 = v53;
LABEL_429:

    v266 = sub_258F0A350();
    v267 = sub_258F0A810();
    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      *v268 = 134217984;
      *(v268 + 4) = v403[2];

      _os_log_impl(&dword_258DD8000, v266, v267, "DictationDeviceExperimentMetricsCalculator query yielded %ld results", v268, 0xCu);
      MEMORY[0x259C9EF40](v268, -1, -1);
    }

    else
    {
    }

    v269 = v59[282];
    v270 = v59[281];
    v271 = v59[280];
    v272 = v59[278];
    v404 = v59[275];
    v382 = v59[273];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B48, &unk_258F11680);
    v273 = *(v270 + 72);
    v274 = (*(v270 + 80) + 32) & ~*(v270 + 80);
    v275 = (swift_allocObject() + v274);
    v276 = *(v271 + 48);
    *v275 = v390;
    v277 = *MEMORY[0x277D5D9A8];
    v278 = sub_258F09EE0();
    v279 = *(*(v278 - 8) + 104);
    v279(&v275[v276], v277, v278);
    v280 = &v275[v273];
    v281 = *(v271 + 48);
    *v280 = v392;
    v279(&v280[v281], *MEMORY[0x277D5D9B0], v278);
    v400 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter;
    v409 = *MEMORY[0x277D5D9D0];
    v407 = (v272 + 104);
    v411 = (v272 + 8);
    v393 = *MEMORY[0x277D5D9B8];
    v398 = (v404 + 104);
    v405 = (v404 + 8);
    v282 = v275;
    v283 = v271;
    sub_258DE20C0(v282, v269, &qword_27F989B40, &unk_258F11670);
    v284 = *v269;
    v285 = *(v271 + 48);
    v286 = sub_258F09EB0();
    if (v284 >= 1)
    {
      v288 = v413[273];
      sub_258E2CE6C(v284, v286, v287);
    }

    v289 = v413[279];
    v290 = v413[277];

    sub_258F09EB0();
    v379 = *v407;
    (*v407)(v289, v409, v290);
    if (v284 < 1)
    {

      v294 = v382;
    }

    else
    {
      v291 = v413[279];
      v292 = v413[276];
      v293 = v413[274];
      v294 = v382;
      v295 = *(v382 + v400);
      (*v398)(v292, v393, v293);
      sub_258F09F10();

      (*v405)(v292, v293);
    }

    v296 = v413[282];
    v297 = *v411;
    (*v411)(v413[279], v413[277]);
    sub_258DE2184(v296, &qword_27F989B40, &unk_258F11670);
    sub_258DE20C0(v280, v296, &qword_27F989B40, &unk_258F11670);
    v298 = *v296;
    v299 = *(v283 + 48);
    v300 = sub_258F09EB0();
    if (v298 >= 1)
    {
      v302 = v413[273];
      sub_258E2CE6C(v298, v300, v301);
    }

    v303 = v413[279];
    v304 = v413[277];

    sub_258F09EB0();
    v379(v303, v409, v304);
    if (v298 <= 0)
    {
    }

    else
    {
      v305 = v413[279];
      v306 = v413[276];
      v307 = v413[274];
      v308 = *(v294 + v400);
      (*v398)(v306, v393, v307);
      sub_258F09F10();

      (*v405)(v306, v307);
    }

    v309 = v413[282];
    v310 = v413[280];
    v311 = v413[273];
    v297(v413[279], v413[277]);
    sub_258DE2184(v309, &qword_27F989B40, &unk_258F11670);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258DFCF90(v389, 1);
    v312 = v413[315];
    v362 = v413[314];
    v364 = v413[313];
    v313 = v413;
    v354 = v413[310];
    v357 = v413[309];
    v359 = v413[312];
    v367 = v413[311];
    v369 = v413[308];
    v314 = v413[307];
    v315 = v413[306];
    v316 = v413[305];
    v317 = v413[303];
    v318 = v413[302];
    v319 = v413[300];
    v371 = v413[299];
    v373 = v413[297];
    v375 = v413[296];
    v377 = v413[295];
    v380 = v413[294];
    v383 = v413[293];
    v386 = v413[292];
    v391 = v413[291];
    v394 = v413[290];
    v399 = v413[287];
    v401 = v413[286];
    v406 = v413[284];
    v408 = v413[283];
    v410 = v413[282];
    v412 = v413[279];
    v414 = v413[276];
    v320 = v313[272];
    sub_258F0A0F0();
    sub_258F09AC0();
    sub_258F09BB0();
    v365(v318, v319);
    v321 = v316;
    v322 = sub_258F09B70();
    v388(v321, v317);

    v388(v315, v317);
    v388(v314, v317);
    *v320 = v322;
    v320[1] = MEMORY[0x277D84F90];
    v320[2] = v403;
    sub_258E5DD44(v312, "DictationDeviceExperimentMetricsCalculatorSP", 44, 2);

    (*(v354 + 8))(v359, v357);
    (*(v362 + 8))(v312, v364);

    v323 = v313[1];

    v323();
    return;
  }

  v390 = 0;
  v392 = 0;
  v376 = v53 + 147;
  v378 = v53 + 131;
  v372 = v53 + 171;
  v374 = v53 + 155;
  v370 = v53 + 183;
  v327 = v53 + 270;
  v328 = v53 + 269;
  v325 = (v53 + 316);
  v326 = v53 + 271;
  v324 = v53 + 633;
  v331 = v53[299];
  v366 = v53[298];
  v330 = (v53[289] + 56);
  v368 = v53[288];
  v403 = MEMORY[0x277D84F90];
  v329 = v53[285];
  v59 = v53;
  while (1)
  {
    v60 = sub_258F0A060();
    if (!v60)
    {
      goto LABEL_23;
    }

    v61 = v60;
    v62 = sub_258F0A350();
    v63 = sub_258F0A810();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v415[0] = v65;
      *v64 = 136315138;
      v66 = sub_258F0A420();
      v68 = sub_258DE3018(v66, v67, v415);

      *(v64 + 4) = v68;
      v59 = v413;
      _os_log_impl(&dword_258DD8000, v62, v63, "DictationDeviceExperimentMetrics row data: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x259C9EF40](v65, -1, -1);
      MEMORY[0x259C9EF40](v64, -1, -1);
    }

    v59[237] = 0x5F746375646F7270;
    v59[238] = 0xEA00000000006469;
    sub_258F0AA80();
    if (!*(v61 + 16) || (v69 = sub_258E2EA2C((v59 + 7)), (v70 & 1) == 0))
    {

      sub_258E0F590((v59 + 7));
LABEL_41:
      v78 = sub_258F0A350();
      v83 = sub_258F0A820();
      if (!os_log_type_enabled(v78, v83))
      {
        goto LABEL_22;
      }

      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_258DD8000, v78, v83, "row does not have product Id", v84, 2u);
      v85 = v84;
LABEL_43:
      MEMORY[0x259C9EF40](v85, -1, -1);
      goto LABEL_22;
    }

    sub_258DE4090(*(v61 + 56) + 32 * v69, (v59 + 107));
    sub_258E0F590((v59 + 7));
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_41;
    }

    v71 = v59[231];
    v72 = v59[232];
    if (v71 != 0x4F49544154434944 || v72 != 0xE90000000000004ELL)
    {
      v73 = v59[231];
      v74 = v59[232];
      if ((sub_258F0AD80() & 1) == 0)
      {

        v78 = sub_258F0A350();
        v87 = sub_258F0A810();

        if (!os_log_type_enabled(v78, v87))
        {

          goto LABEL_23;
        }

        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v415[0] = v89;
        *v88 = 136315138;
        v90 = sub_258DE3018(v71, v72, v415);

        *(v88 + 4) = v90;
        _os_log_impl(&dword_258DD8000, v78, v87, "productId of DICTATION is only supported from this extension - skipping row with productId: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x259C9EF40](v89, -1, -1);
        v85 = v88;
        goto LABEL_43;
      }
    }

    v75 = v59[273];
    v76 = sub_258E2A258(v61, v59[306], 0xD00000000000002ALL, 0x8000000258F1A590);
    v78 = v76;
    if ((v77 & 0x10000) != 0)
    {

LABEL_22:

      goto LABEL_23;
    }

    v360 = v76;
    if (v77)
    {
      if (__OFADD__(v392, 1))
      {
        goto LABEL_447;
      }

      ++v392;
    }

    v79 = v59[273];
    sub_258E2AD24(v61, v59[299]);
    v80 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
    v59[219] = 0xD000000000000015;
    v59[220] = 0x8000000258F1BA40;
    sub_258F0AA80();
    if (*(v61 + 16) && (v81 = sub_258E2EA2C((v59 + 27)), (v82 & 1) != 0))
    {
      sub_258DE4090(*(v61 + 56) + 32 * v81, v378);
    }

    else
    {
      *v378 = 0u;
      v378[1] = 0u;
    }

    sub_258E0F590((v59 + 27));
    if (v59[134])
    {
      if (swift_dynamicCast())
      {
        v86 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v59[241], v59[242]);

        v80 = v86;
      }
    }

    else
    {
      sub_258DE2184(v378, &qword_27F989868, &unk_258F12D70);
    }

    v59[207] = 0xD000000000000016;
    v59[208] = 0x8000000258F1BA60;
    sub_258F0AA80();
    if (*(v61 + 16) && (v91 = sub_258E2EA2C((v59 + 42)), (v92 & 1) != 0))
    {
      sub_258DE4090(*(v61 + 56) + 32 * v91, v376);
    }

    else
    {
      *v376 = 0u;
      v376[1] = 0u;
    }

    sub_258E0F590((v59 + 42));
    v352 = v80;
    if (v59[150])
    {
      if (swift_dynamicCast())
      {
        v93 = v59[243];
        v94 = v59[244];

        v95._countAndFlagsBits = v93;
        v95._object = v94;
        SiriReponseCategory.init(rawValue:)(v95);
        v96 = v415[0];
        if (LOBYTE(v415[0]) == 21)
        {

          v97 = sub_258F0A350();
          v98 = sub_258F0A800();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v415[0] = v100;
            *v99 = 136315138;
            v101 = sub_258DE3018(v93, v94, v415);

            *(v99 + 4) = v101;
            _os_log_impl(&dword_258DD8000, v97, v98, "Invalid response category found %s", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v100);
            v102 = v100;
            v59 = v413;
            MEMORY[0x259C9EF40](v102, -1, -1);
            MEMORY[0x259C9EF40](v99, -1, -1);
          }

          else
          {
          }

          v351 = 0;
          v350 = 1;
        }

        else
        {

          LOBYTE(v415[0]) = v96;
          v351 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(v415);
          v350 = 0;
        }

        goto LABEL_65;
      }
    }

    else
    {
      sub_258DE2184(v376, &qword_27F989868, &unk_258F12D70);
    }

    v103 = sub_258F0A350();
    v104 = sub_258F0A800();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_258DD8000, v103, v104, "no response category found", v105, 2u);
      MEMORY[0x259C9EF40](v105, -1, -1);
    }

    v351 = 0;
    v350 = 1;
LABEL_65:
    v59[213] = 0x6974756F725F6569;
    v59[214] = 0xEA0000000000676ELL;
    sub_258F0AA80();
    if (*(v61 + 16) && (v106 = sub_258E2EA2C((v59 + 57)), (v107 & 1) != 0))
    {
      sub_258DE4090(*(v61 + 56) + 32 * v106, v372);
    }

    else
    {
      *v372 = 0u;
      v372[1] = 0u;
    }

    sub_258E0F590((v59 + 57));
    if (v59[174])
    {
      if (swift_dynamicCast())
      {
        v108 = v59[245];
        v109 = v59[246];

        v110 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v108, v109);

        v363 = v110;
        if (v110)
        {
        }

        else
        {

          v121 = sub_258F0A350();
          v122 = sub_258F0A800();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v415[0] = v124;
            *v123 = 136315138;
            v125 = sub_258DE3018(v108, v109, v415);

            *(v123 + 4) = v125;
            _os_log_impl(&dword_258DD8000, v121, v122, "Invalid ieRouting found %s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v124);
            v126 = v124;
            v59 = v413;
            MEMORY[0x259C9EF40](v126, -1, -1);
            MEMORY[0x259C9EF40](v123, -1, -1);
          }

          else
          {
          }

          v363 = 0;
        }

        goto LABEL_77;
      }
    }

    else
    {
      sub_258DE2184(v372, &qword_27F989868, &unk_258F12D70);
    }

    v111 = sub_258F0A350();
    v112 = sub_258F0A800();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_258DD8000, v111, v112, "No ieRouting found", v113, 2u);
      MEMORY[0x259C9EF40](v113, -1, -1);
    }

    v363 = 0;
LABEL_77:
    v59[201] = 0xD000000000000011;
    v59[202] = 0x8000000258F1BA80;
    sub_258F0AA80();
    if (*(v61 + 16) && (v114 = sub_258E2EA2C((v59 + 72)), (v115 & 1) != 0))
    {
      sub_258DE4090(*(v61 + 56) + 32 * v114, v370);
    }

    else
    {
      *v370 = 0u;
      v370[1] = 0u;
    }

    sub_258E0F590((v59 + 72));
    if (!v59[186])
    {
      sub_258DE2184(v370, &qword_27F989868, &unk_258F12D70);
LABEL_86:
      v358 = 0;
      v356 = 1;
      goto LABEL_302;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_86;
    }

    v116 = v59[259];
    v117 = v59[260];
    v118 = sub_258F0A4E0();

    v119 = v118;
    if ([v119 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
    {
      v358 = 0;
    }

    else
    {
      if ([v119 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
      {
        v120 = 1;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
      {
        v120 = 2;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
      {
        v120 = 3;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
      {
        v120 = 4;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
      {
        v120 = 5;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
      {
        v120 = 6;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
      {
        v120 = 7;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
      {
        v120 = 8;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
      {
        v120 = 9;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
      {
        v120 = 10;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
      {
        v120 = 11;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
      {
        v120 = 12;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
      {
        v120 = 13;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
      {
        v120 = 14;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
      {
        v120 = 15;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
      {
        v120 = 16;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
      {
        v120 = 17;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
      {
        v120 = 18;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
      {
        v120 = 19;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
      {
        v120 = 20;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
      {
        v120 = 21;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
      {
        v120 = 22;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
      {
        v120 = 23;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
      {
        v120 = 24;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
      {
        v120 = 25;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
      {
        v120 = 26;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
      {
        v120 = 27;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
      {
        v120 = 28;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
      {
        v120 = 29;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
      {
        v120 = 30;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
      {
        v120 = 31;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
      {
        v120 = 32;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
      {
        v120 = 33;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
      {
        v120 = 34;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
      {
        v120 = 35;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
      {
        v120 = 36;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
      {
        v120 = 37;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
      {
        v120 = 38;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
      {
        v120 = 39;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
      {
        v120 = 40;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
      {
        v120 = 41;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
      {
        v120 = 42;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
      {
        v120 = 43;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
      {
        v120 = 44;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
      {
        v120 = 45;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
      {
        v120 = 46;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
      {
        v120 = 47;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
      {
        v120 = 48;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
      {
        v120 = 49;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
      {
        v120 = 50;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
      {
        v120 = 51;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
      {
        v120 = 52;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
      {
        v120 = 53;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
      {
        v120 = 54;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
      {
        v120 = 55;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
      {
        v120 = 56;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
      {
        v120 = 57;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
      {
        v120 = 58;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
      {
        v120 = 59;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
      {
        v120 = 60;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
      {
        v120 = 61;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
      {
        v120 = 62;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
      {
        v120 = 63;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
      {
        v120 = 64;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
      {
        v120 = 65;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
      {
        v120 = 66;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
      {
        v120 = 67;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
      {
        v120 = 68;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
      {
        v120 = 69;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
      {
        v120 = 70;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
      {
        v120 = 71;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
      {
        v120 = 72;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
      {
        v120 = 73;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
      {
        v120 = 74;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
      {
        v120 = 75;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
      {
        v120 = 76;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
      {
        v120 = 77;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
      {
        v120 = 78;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
      {
        v120 = 79;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
      {
        v120 = 80;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
      {
        v120 = 81;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
      {
        v120 = 82;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
      {
        v120 = 83;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
      {
        v120 = 84;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
      {
        v120 = 85;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
      {
        v120 = 87;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
      {
        v120 = 88;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
      {
        v120 = 89;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
      {
        v120 = 90;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
      {
        v120 = 91;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
      {
        v120 = 92;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
      {
        v120 = 93;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
      {
        v120 = 94;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
      {
        v120 = 95;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
      {
        v120 = 96;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
      {
        v120 = 97;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
      {
        v120 = 98;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
      {
        v120 = 99;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
      {
        v120 = 100;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
      {
        v120 = 101;
      }

      else if ([v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
      {
        v120 = 102;
      }

      else
      {
        v120 = [v119 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"] ? 103 : 0;
      }

      v358 = v120;
    }

    v356 = 0;
    v59 = v413;
LABEL_302:
    v59[223] = 0xD000000000000011;
    v59[224] = 0x8000000258F1A5C0;
    sub_258F0AA80();
    if (*(v61 + 16) && (v127 = sub_258E2EA2C((v59 + 87)), (v128 & 1) != 0))
    {
      sub_258DE4090(*(v61 + 56) + 32 * v127, v374);
    }

    else
    {
      *v374 = 0u;
      v374[1] = 0u;
    }

    sub_258E0F590((v59 + 87));
    if (!v59[158])
    {
      sub_258DE2184(v374, &qword_27F989868, &unk_258F12D70);
LABEL_311:
      v355 = 0;
      v353 = 1;
      goto LABEL_321;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_311;
    }

    v129 = v59[263];
    v130 = v59[264];
    v131 = sub_258F0A4E0();

    v132 = v131;
    if ([v132 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN"])
    {
      v355 = 0;
    }

    else
    {
      if ([v132 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ALLOCATED"])
      {
        v133 = 1;
      }

      else if ([v132 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ACTIVATED"])
      {
        v133 = 2;
      }

      else
      {
        v133 = [v132 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_DEACTIVATED"] ? 3 : 0;
      }

      v355 = v133;
    }

    v353 = 0;
LABEL_321:
    v134 = v59[297];
    v135 = sub_258F09A70();
    v136 = *(v135 - 8);
    v395 = v135;
    v384 = *(v136 + 56);
    v384(v134, 1, 1);
    v59[235] = 0xD000000000000015;
    v59[236] = 0x8000000258F189D0;
    sub_258F0AA80();
    sub_258E262F8((v59 + 102), v61, v59 + 127);
    sub_258E0F590((v59 + 102));
    if (v59[130])
    {
      if (swift_dynamicCast())
      {
        v137 = v59[297];
        v138 = v59[296];
        v139 = v59[265];
        v140 = v59[266];
        sub_258F09A30();

        sub_258DE2184(v137, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v138, v137, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258DE2184((v59 + 127), &qword_27F989868, &unk_258F12D70);
    }

    v141 = v59[295];
    sub_258DE20C0(v59[297], v141, &qword_27F988730, &unk_258F0F8E0);
    v142 = *(v136 + 48);
    v143 = v142(v141, 1, v395);
    sub_258DE2184(v141, &qword_27F988730, &unk_258F0F8E0);
    if (v143 == 1)
    {
      v144 = sub_258F0A350();
      v145 = sub_258F0A820();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&dword_258DD8000, v144, v145, "observed NilDeviceAggregationId", v146, 2u);
        MEMORY[0x259C9EF40](v146, -1, -1);
      }

      if (__OFADD__(v390, 1))
      {
        goto LABEL_448;
      }

      ++v390;
    }

    (v384)(v59[294], 1, 1, v395);
    v59[229] = 0xD000000000000013;
    v59[230] = 0x8000000258F1A5E0;
    sub_258F0AA80();
    sub_258E262F8((v59 + 2), v61, v59 + 187);
    sub_258E0F590((v59 + 2));
    if (v59[190])
    {
      if (swift_dynamicCast())
      {
        v147 = v59[296];
        v148 = v59[294];
        v149 = v59[199];
        v150 = v59[200];
        sub_258F09A30();

        sub_258DE2184(v148, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v147, v148, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258DE2184((v59 + 187), &qword_27F989868, &unk_258F12D70);
    }

    v151 = v59[293];
    sub_258DE20C0(v59[294], v151, &qword_27F988730, &unk_258F0F8E0);
    v152 = v142(v151, 1, v395);
    sub_258DE2184(v151, &qword_27F988730, &unk_258F0F8E0);
    if (v152 == 1)
    {
      v153 = sub_258F0A350();
      v154 = sub_258F0A820();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_258DD8000, v153, v154, "observed NilUserAggregationId", v155, 2u);
        MEMORY[0x259C9EF40](v155, -1, -1);
      }
    }

    v59[225] = 0xD000000000000029;
    v59[226] = 0x8000000258F18AC0;
    sub_258F0AA80();
    sub_258E262F8((v59 + 97), v61, v59 + 123);
    sub_258E0F590((v59 + 97));
    if (v59[126])
    {
      v156 = swift_dynamicCast();
      v157 = v156 ? *v328 : 0;
      v158 = v156 ^ 1;
    }

    else
    {
      sub_258DE2184((v59 + 123), &qword_27F989868, &unk_258F12D70);
      v157 = 0;
      v158 = 1;
    }

    v59[217] = 0xD00000000000002BLL;
    v59[218] = 0x8000000258F18AF0;
    sub_258F0AA80();
    sub_258E262F8((v59 + 92), v61, v59 + 135);
    sub_258E0F590((v59 + 92));
    if (v59[138])
    {
      v159 = swift_dynamicCast();
      v160 = v159 ? *v327 : 0;
      v161 = v159 ^ 1;
    }

    else
    {
      sub_258DE2184((v59 + 135), &qword_27F989868, &unk_258F12D70);
      v160 = 0;
      v161 = 1;
    }

    v347 = v161;
    v162 = v59[307];
    v163 = v59[297];
    v164 = v59[294];
    v165 = v59[292];
    v166 = v59;
    v167 = v59[290];
    v168 = v166[273];
    sub_258E2BAC0(v61, v165);
    sub_258F09A60();
    (v384)(v167, 0, 1, v395);
    sub_258DE20C0(v163, v167 + v368[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v164, v167 + v368[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v169 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v169 <= -1.0)
    {
      goto LABEL_444;
    }

    if (v169 >= 1.84467441e19)
    {
      goto LABEL_445;
    }

    if (!is_mul_ok(v169, 0x3E8uLL))
    {
      goto LABEL_446;
    }

    v170 = 1000 * v169;
    v171 = v413[290];
    v396 = v413[288];
    v172 = v413[284];
    v173 = v413[283];
    v174 = [objc_opt_self() sharedPreferences];
    v175 = [v174 longLivedIdentifierUploadingEnabled];

    v176 = v171 + v368[7];
    *v176 = v170;
    *(v176 + 8) = 0;
    *(v171 + v368[8]) = v360;
    v177 = v171 + v368[9];
    *v177 = v157;
    *(v177 + 8) = v158;
    v178 = v171 + v368[10];
    *v178 = v160;
    *(v178 + 8) = v347;
    v179 = v171 + v368[11];
    *v179 = 0;
    *(v179 + 4) = 1;
    *(v171 + v368[12]) = v175 ^ 1;
    v180 = type metadata accessor for DeviceExperimentMetricsBuilderImpl(0);
    v181 = *(v180 + 48);
    v182 = *(v180 + 52);
    swift_allocObject();
    v183 = sub_258E3C08C();
    sub_258E5E344(v171, v172, type metadata accessor for EventMetadata);
    (*v330)(v172, 0, 1, v396);
    sub_258E2EAD8(v172, v173, &qword_27F9894E0, &unk_258F106A0);
    v184 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
    swift_beginAccess();
    sub_258E2EA70(v173, v183 + v184, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    v185 = v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
    *v185 = 2;
    *(v185 + 4) = 0;
    strcpy(v413 + 1688, "experiment_id");
    *(v413 + 851) = -4864;
    sub_258F0AA80();
    sub_258E262F8((v413 + 82), v61, v413 + 151);
    sub_258E0F590((v413 + 82));
    if (v413[154])
    {
      v186 = swift_dynamicCast();
      v187 = v413[261];
      v188 = v413[262];
      if (!v186)
      {
        v187 = 0;
        v188 = 0;
      }
    }

    else
    {
      sub_258DE2184((v413 + 151), &qword_27F989868, &unk_258F12D70);
      v187 = 0;
      v188 = 0;
    }

    v189 = v413[296];
    v190 = v413[292];
    v191 = (v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
    v192 = *(v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);
    *v191 = v187;
    v191[1] = v188;

    sub_258DE20C0(v190, v189, &qword_27F988730, &unk_258F0F8E0);
    v193 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
    swift_beginAccess();
    sub_258E2EA70(v189, v183 + v193, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    strcpy(v413 + 2136, "deployment_id");
    *(v413 + 1075) = -4864;
    sub_258F0AA80();
    sub_258E262F8((v413 + 77), v61, v413 + 167);
    sub_258E0F590((v413 + 77));
    if (v413[170])
    {
      v194 = swift_dynamicCast();
      v195 = *v326;
      if (!v194)
      {
        v195 = 0;
      }

      v196 = v194 ^ 1;
    }

    else
    {
      sub_258DE2184((v413 + 167), &qword_27F989868, &unk_258F12D70);
      v195 = 0;
      v196 = 1;
    }

    v197 = v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
    *v197 = v195;
    *(v197 + 8) = v196;
    v413[197] = 0x745F656369766564;
    v413[198] = 0xEB00000000657079;
    sub_258F0AA80();
    sub_258E262F8((v413 + 67), v61, v413 + 179);
    sub_258E0F590((v413 + 67));
    if (v413[182])
    {
      v198 = swift_dynamicCast();
      v199 = v413[257];
      v200 = v413[258];
      if (!v198)
      {
        v199 = 0;
        v200 = 0;
      }
    }

    else
    {
      sub_258DE2184((v413 + 179), &qword_27F989868, &unk_258F12D70);
      v199 = 0;
      v200 = 0;
    }

    v201 = (v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
    v202 = *(v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);
    *v201 = v199;
    v201[1] = v200;

    v203 = *(v331 + 44);
    v204 = v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
    *v204 = *(v331 + 40);
    *(v204 + 4) = v203;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894F0, &qword_258F11690);
    v205 = type metadata accessor for ExperimentDigest(0);
    v206 = *(*(v205 - 1) + 72);
    v361 = (*(*(v205 - 1) + 80) + 32) & ~*(*(v205 - 1) + 80);
    v397 = swift_allocObject();
    *(v397 + 16) = xmmword_258F0B820;
    v413[205] = 0x5F746375646F7270;
    v413[206] = 0xEA00000000006469;
    sub_258F0AA80();
    sub_258E262F8((v413 + 62), v61, v413 + 111);
    sub_258E0F590((v413 + 62));
    if (v413[114])
    {
      v207 = swift_dynamicCast();
      v208 = v413[255];
      if (!v207)
      {
        v208 = 0;
      }

      v385 = v208;
      if (v207)
      {
        v209 = v413[256];
      }

      else
      {
        v209 = 0;
      }

      v381 = v209;
    }

    else
    {
      sub_258DE2184((v413 + 111), &qword_27F989868, &unk_258F12D70);
      v385 = 0;
      v381 = 0;
    }

    strcpy(v413 + 1624, "system_build");
    *(v413 + 1637) = 0;
    *(v413 + 819) = -5120;
    sub_258F0AA80();
    sub_258E262F8((v413 + 52), v61, v413 + 175);
    sub_258E0F590((v413 + 52));
    if (v413[178])
    {
      v210 = swift_dynamicCast();
      if (v210)
      {
        v211 = v413[253];
      }

      else
      {
        v211 = 0;
      }

      if (v210)
      {
        v212 = v413[254];
      }

      else
      {
        v212 = 0;
      }

      v346 = v212;
      v348 = v211;
    }

    else
    {
      sub_258DE2184((v413 + 175), &qword_27F989868, &unk_258F12D70);
      v346 = 0;
      v348 = 0;
    }

    v344 = *(v331 + 12);
    v345 = *(v331 + 8);
    v342 = *(v331 + 4);
    v343 = *v413[299];
    v413[209] = 0xD000000000000012;
    v413[210] = 0x8000000258F1A600;
    sub_258F0AA80();
    sub_258E262F8((v413 + 47), v61, v413 + 163);
    sub_258E0F590((v413 + 47));
    if (v413[166])
    {
      v213 = swift_dynamicCast();
      if (v213)
      {
        v214 = v413[251];
      }

      else
      {
        v214 = 0;
      }

      if (v213)
      {
        v215 = v413[252];
      }

      else
      {
        v215 = 0;
      }

      v340 = v215;
      v341 = v214;
    }

    else
    {
      sub_258DE2184((v413 + 163), &qword_27F989868, &unk_258F12D70);
      v340 = 0;
      v341 = 0;
    }

    v413[215] = 0xD000000000000013;
    v413[216] = 0x8000000258F1A620;
    sub_258F0AA80();
    sub_258E262F8((v413 + 37), v61, v413 + 159);
    sub_258E0F590((v413 + 37));
    if (v413[162])
    {
      v216 = swift_dynamicCast();
      v217 = v413[249];
      if (!v216)
      {
        v217 = 0;
      }

      v349 = v217;
      if (v216)
      {
        v218 = v413[250];
      }

      else
      {
        v218 = 0;
      }

      v339 = v218;
    }

    else
    {
      sub_258DE2184((v413 + 159), &qword_27F989868, &unk_258F12D70);
      v349 = 0;
      v339 = 0;
    }

    v337 = *(v331 + 20);
    v338 = *(v331 + 16);
    v335 = *(v331 + 28);
    v336 = *(v331 + 24);
    v219 = *(v331 + 32);
    v413[221] = 0x616D6F645F627573;
    v413[222] = 0xEA00000000006E69;
    v220 = v219;
    sub_258F0AA80();
    sub_258E262F8((v413 + 32), v61, v413 + 143);
    sub_258E0F590((v413 + 32));
    if (v413[146])
    {
      v221 = swift_dynamicCast();
      v222 = v413[247];
      if (!v221)
      {
        v222 = 0;
      }

      v334 = v222;
      if (v221)
      {
        v223 = v413[248];
      }

      else
      {
        v223 = 0;
      }
    }

    else
    {
      sub_258DE2184((v413 + 143), &qword_27F989868, &unk_258F12D70);
      v334 = 0;
      v223 = 0;
    }

    sub_258DE20C0(v413[299] + *(v366 + 40), v413[291], &qword_27F988730, &unk_258F0F8E0);
    v413[227] = 0xD00000000000001BLL;
    v413[228] = 0x8000000258F1BAA0;
    sub_258F0AA80();
    sub_258E262F8((v413 + 22), v61, v413 + 139);
    sub_258E0F590((v413 + 22));
    if (v413[142])
    {
      v224 = swift_dynamicCast();
      v225 = *(v413 + 2536);
      if (!v224)
      {
        v225 = 2;
      }
    }

    else
    {
      sub_258DE2184((v413 + 139), &qword_27F989868, &unk_258F12D70);
      v225 = 2;
    }

    v333 = v225;
    v413[233] = 0x746E635F6E727574;
    v413[234] = 0xE800000000000000;
    sub_258F0AA80();
    sub_258E262F8((v413 + 17), v61, v413 + 119);
    sub_258E0F590((v413 + 17));
    if (v413[122])
    {
      v226 = swift_dynamicCast();
      v227 = *v325;
      if (!v226)
      {
        v227 = 0;
      }

      v332 = v227;
      v228 = v226 ^ 1;
    }

    else
    {
      sub_258DE2184((v413 + 119), &qword_27F989868, &unk_258F12D70);
      v332 = 0;
      v228 = 1;
    }

    v229 = v397 + v361;
    strcpy(v413 + 1912, "user_turn_cnt");
    *(v413 + 963) = -4864;
    sub_258F0AA80();
    sub_258E262F8((v413 + 12), v61, v413 + 115);

    sub_258E0F590((v413 + 12));
    if (v413[118])
    {
      v230 = swift_dynamicCast();
      if (v230)
      {
        v231 = *v324;
      }

      else
      {
        v231 = 0;
      }

      v232 = v230 ^ 1;
    }

    else
    {
      sub_258DE2184((v413 + 115), &qword_27F989868, &unk_258F12D70);
      v231 = 0;
      v232 = 1;
    }

    v233 = *(v413[299] + *(v366 + 44));
    *v229 = v385;
    *(v229 + 8) = v381;
    *(v229 + 16) = v348;
    *(v229 + 24) = v346;
    *(v229 + 32) = v345;
    *(v229 + 36) = v344;
    *(v229 + 40) = v343;
    *(v229 + 44) = v342;
    *(v229 + 48) = v341;
    *(v229 + 56) = v340;
    *(v229 + 64) = v349;
    *(v229 + 72) = v339;
    *(v229 + 80) = v338;
    *(v229 + 84) = v337;
    *(v229 + 88) = v336;
    *(v229 + 92) = v335;
    *(v229 + 112) = v334;
    *(v229 + 120) = v223;
    *(v229 + 128) = v351;
    *(v229 + 132) = v350;
    v234 = v413[291];
    *(v229 + 136) = v355;
    v235 = v413[287];
    *(v229 + 96) = v219;
    v236 = v413[286];
    *(v229 + 104) = v352;
    *(v229 + 140) = v353;
    *(v229 + 141) = 514;
    sub_258E2EAD8(v234, v229 + v205[19], &qword_27F988730, &unk_258F0F8E0);
    *(v229 + v205[20]) = v333;
    *(v229 + v205[21]) = v363;
    v237 = v229 + v205[22];
    *v237 = v358;
    *(v237 + 4) = v356;
    v238 = v229 + v205[23];
    *v238 = v332;
    *(v238 + 4) = v228;
    v239 = v229 + v205[24];
    *v239 = v231;
    *(v239 + 4) = v232;
    v240 = v229 + v205[25];
    *v240 = 0;
    *(v240 + 4) = 1;
    v241 = v229 + v205[26];
    *v241 = 0;
    *(v241 + 4) = 1;
    v242 = v229 + v205[27];
    *v242 = 0;
    *(v242 + 4) = 1;
    v243 = v229 + v205[28];
    *v243 = 0;
    *(v243 + 4) = 1;
    v244 = v229 + v205[29];
    *v244 = 0;
    *(v244 + 4) = 1;
    v245 = v229 + v205[30];
    *v245 = 0;
    *(v245 + 4) = 1;
    v246 = v229 + v205[31];
    *v246 = 0;
    *(v246 + 4) = 1;
    v247 = v229 + v205[32];
    *v247 = 0;
    *(v247 + 4) = 1;
    v248 = v229 + v205[33];
    *v248 = 0;
    *(v248 + 4) = 1;
    v249 = v229 + v205[34];
    *v249 = 0;
    *(v249 + 4) = 1;
    v250 = v229 + v205[35];
    *v250 = 0;
    *(v250 + 4) = 1;
    v251 = v229 + v205[36];
    *v251 = 0;
    *(v251 + 4) = 1;
    v252 = v229 + v205[37];
    *v252 = 1;
    *(v252 + 8) = 0u;
    *(v252 + 24) = 0u;
    *(v229 + v205[38]) = v233;
    v253 = *(v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);
    *(v183 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = v397;

    v254 = v352;

    sub_258E3BDA4(v235);

    sub_258E5E344(v235, v236, type metadata accessor for DeviceExperimentMetrics);
    v255 = v403;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = sub_258DE26CC(0, v403[2] + 1, 1, v403);
    }

    v257 = v255[2];
    v256 = v255[3];
    v403 = v255;
    if (v257 >= v256 >> 1)
    {
      v403 = sub_258DE26CC(v256 > 1, v257 + 1, 1, v255);
    }

    v258 = v413[299];
    v259 = v413[297];
    v260 = v413[294];
    v261 = v413[292];
    v262 = v413[290];
    v263 = v413[287];
    v264 = v413[286];

    sub_258E5E3AC(v263, type metadata accessor for DeviceExperimentMetrics);
    v265 = v262;
    v59 = v413;
    sub_258E5E3AC(v265, type metadata accessor for EventMetadata);
    sub_258DE2184(v261, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v260, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v259, &qword_27F988730, &unk_258F0F8E0);
    sub_258E5E3AC(v258, type metadata accessor for CommonDigestElements);
    v403[2] = v257 + 1;
    sub_258E2EB40(v264, v403 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v257);
LABEL_23:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_429;
    }
  }

  __break(1u);
LABEL_444:
  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
}

uint64_t sub_258E5DD44(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v5 = sub_258F0A300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_258F0A2D0();
  sub_258F0A310();
  v24 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v11);
  }

  if ((a4 & 1) == 0)
  {
    v19 = v25;
    if (v25)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v5);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v17, v24, v22, v19, v20, v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v19 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t DictationDeviceExperimentMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_biomeResultsFactory);

  return v0;
}

uint64_t DictationDeviceExperimentMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter));
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_biomeResultsFactory);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258E5E220@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258E5E2A8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E599AC(a1);
}

uint64_t sub_258E5E344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E5E3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E5E40C(uint64_t a1)
{
  result = sub_258E5E494(&qword_27F989B50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E5E450(uint64_t a1)
{
  result = sub_258E5E494(&qword_27F989B58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E5E494(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DictationDeviceExperimentMetricsCalculator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258E5E4F0()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of DictationDeviceExperimentMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258E5E72C()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_280CC49F8);
  __swift_project_value_buffer(v0, qword_280CC49F8);
  return sub_258F0A360();
}

uint64_t ExperimentMetricsWorker.doWork(metricsExecutor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = sub_258F0A770();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E5E8AC, 0, 0);
}

uint64_t sub_258E5E8AC()
{
  v96 = v0;
  if (qword_280CC49F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_280CC49F8);
  v3 = v1;
  v4 = sub_258F0A350();
  v5 = sub_258F0A800();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v95[0] = v8;
    *v7 = 136315394;
    v9 = sub_258F09E80();
    v11 = sub_258DE3018(v9, v10, v95);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_258F09E90();
    v14 = sub_258DE3018(v12, v13, v95);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v4, v5, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v8, -1, -1);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  *v16 = 0;
  v17 = *MEMORY[0x277D81760];
  *(v0 + 328) = v17;
  v18 = sub_258F09E50();
  *(v0 + 192) = v18;
  v19 = *(v18 - 8);
  *(v0 + 200) = v19;
  v20 = *(v19 + 104);
  *(v0 + 208) = v20;
  *(v0 + 216) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v16, v17, v18);
  v21 = sub_258F09E80();
  v23 = v22;
  v24 = sub_258F09E90();
  sub_258E60CE8(v21, v23, v24, v25);
  v34 = *(v0 + 160);

  v35 = sub_258F09E00();
  *(v0 + 224) = v35;
  v36 = *(v35 - 8);
  v37 = v36;
  *(v0 + 232) = v36;
  v38 = *(v36 + 64) + 15;
  v39 = swift_task_alloc();
  *(v0 + 240) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = 60000;
  v41 = v34;
  sub_258DFBCE0(inited);
  swift_setDeallocating();
  sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
  sub_258F09DF0();
  v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v43 = sub_258F0A4E0();
  v44 = [v42 initWithSuiteName_];
  *(v0 + 248) = v44;

  if (v44)
  {
    v45 = *(v0 + 152);
    *(v0 + 256) = *(v19 + 64);
    v46 = swift_task_alloc();
    *(v0 + 264) = v46;
    v94 = (*(*v45 + 96) + **(*v45 + 96));
    v47 = *(*(*v45 + 96) + 4);
    v48 = swift_task_alloc();
    *(v0 + 272) = v48;
    *v48 = v0;
    v48[1] = sub_258E5F4B8;
    v49 = *(v0 + 152);

    return v94(v46, v44, v39, 0xD000000000000034, 0x8000000258F1BE00);
  }

  v57 = sub_258F0A350();
  v58 = sub_258F0A820();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_258DD8000, v57, v58, "Can't get user defaults initialized", v59, 2u);
    MEMORY[0x259C9EF40](v59, -1, -1);
  }

  sub_258DE403C();
  v32 = swift_allocError();
  *v60 = 5;
  swift_willThrow();
  (*(v37 + 8))(v39, v35);

  *(v0 + 96) = v32;
  v26 = sub_258F09E20();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v31 = (*(v27 + 88))(v29, v26);
    if (MEMORY[0x277D81740] && v31 == *MEMORY[0x277D81740])
    {

      v32 = *(v0 + 96);
      v33 = 3;
LABEL_41:

      v83 = *(v0 + 208);
      v82 = *(v0 + 216);
      v84 = *(v0 + 192);
      v85 = *(v0 + 200);
      v86 = *(v0 + 328);
      v87 = *(v0 + 144);
      v88 = *(v85 + 64) + 15;
      v89 = swift_task_alloc();
      sub_258DE403C();
      v90 = swift_allocError();
      *v91 = v33;
      (*(v85 + 8))(v87, v84);
      *v89 = v90;
      v83(v89, v86, v84);
      (*(v85 + 32))(v87, v89, v84);

      goto LABEL_42;
    }

    if (MEMORY[0x277D81748] && v31 == *MEMORY[0x277D81748])
    {

      v32 = *(v0 + 96);
      v33 = 4;
      goto LABEL_41;
    }

    (*(v27 + 8))(v29, v26);
  }

  *(v0 + 104) = v32;
  v51 = sub_258F0A1D0();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64) + 15;
  v54 = swift_task_alloc();
  v55 = v32;
  if (swift_dynamicCast())
  {
    v56 = (*(v52 + 88))(v54, v51);
    if (MEMORY[0x277D04530] && v56 == *MEMORY[0x277D04530])
    {

      v32 = *(v0 + 104);
      v33 = 6;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04538] && v56 == *MEMORY[0x277D04538])
    {

      v32 = *(v0 + 104);
      v33 = 7;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04540] && v56 == *MEMORY[0x277D04540])
    {

      v32 = *(v0 + 104);
      v33 = 8;
      goto LABEL_41;
    }

    (*(v52 + 8))(v54, v51);
  }

  *(v0 + 112) = v32;
  v61 = v32;
  if (swift_dynamicCast())
  {

    v33 = *(v0 + 332);
    v32 = *(v0 + 112);
    goto LABEL_41;
  }

  *(v0 + 120) = v32;
  v62 = sub_258F09E60();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64) + 15;
  v65 = swift_task_alloc();
  v66 = v32;
  if (swift_dynamicCast())
  {

    (*(v63 + 8))(v65, v62);

    v32 = *(v0 + 120);
    v33 = 2;
    goto LABEL_41;
  }

  *(v0 + 128) = v32;
  v67 = sub_258F09E10();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64) + 15;
  v70 = swift_task_alloc();
  v71 = v32;
  if (swift_dynamicCast())
  {

    (*(v68 + 8))(v70, v67);

    v33 = 0;
    v32 = *(v0 + 128);
    goto LABEL_41;
  }

  v72 = *(v0 + 184);
  v73 = *(v0 + 168);

  *(v0 + 136) = v32;
  v74 = v32;
  if (!swift_dynamicCast())
  {

    v33 = 1;
    goto LABEL_41;
  }

  v76 = *(v0 + 208);
  v75 = *(v0 + 216);
  v77 = *(v0 + 192);
  v79 = *(v0 + 176);
  v78 = *(v0 + 184);
  v80 = *(v0 + 168);
  v81 = *(v0 + 144);
  (*(*(v0 + 200) + 8))(v81, v77);

  v76(v81, *MEMORY[0x277D81770], v77);
  (*(v79 + 8))(v78, v80);

LABEL_42:
  v92 = *(v0 + 184);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_258E5F4B8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_258E5FF98;
  }

  else
  {
    v5 = v2[33];
    v6 = v2[24];
    v7 = v2[25];
    v8 = *(v7 + 8);
    v2[36] = v8;
    v2[37] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v4 = sub_258E5F5F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258E5F5F0()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[32] + 15;

  v4 = swift_task_alloc();
  v0[38] = v4;
  v11 = (*(*v2 + 88) + **(*v2 + 88));
  v5 = *(*(*v2 + 88) + 4);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_258E5F750;
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[19];

  return v11(v4, v7, v8, 0xD000000000000034, 0x8000000258F1BE40);
}

uint64_t sub_258E5F750()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_258E60640;
  }

  else
  {
    v3 = sub_258E5F864;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E5F864()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  (*(v0 + 288))(v7, v4);
  (*(v5 + 32))(v7, v3, v4);

  v8 = sub_258F09E80();
  v10 = v9;
  v11 = sub_258F09E90();
  sub_258E60CE8(v8, v10, v11, v12);
  v13 = *(v0 + 248);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  if (v1)
  {
    *(v0 + 96) = v1;
    v14 = sub_258F09E20();
    v15 = *(v14 - 8);
    v16 = *(v15 + 64) + 15;
    v17 = swift_task_alloc();
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v19 = (*(v15 + 88))(v17, v14);
      if (MEMORY[0x277D81740] && v19 == *MEMORY[0x277D81740])
      {

        v20 = 3;
LABEL_30:
        v49 = *(v0 + 208);
        v48 = *(v0 + 216);
        v50 = *(v0 + 192);
        v51 = *(v0 + 200);
        v52 = *(v0 + 328);
        v53 = *(v0 + 144);
        v54 = *(v51 + 64) + 15;
        v55 = swift_task_alloc();
        sub_258DE403C();
        v56 = swift_allocError();
        *v57 = v20;
        (*(v51 + 8))(v53, v50);
        *v55 = v56;
        v49(v55, v52, v50);
        (*(v51 + 32))(v53, v55, v50);

        goto LABEL_31;
      }

      if (MEMORY[0x277D81748] && v19 == *MEMORY[0x277D81748])
      {

        v20 = 4;
        goto LABEL_30;
      }

      (*(v15 + 8))(v17, v14);
    }

    *(v0 + 104) = v1;
    v21 = sub_258F0A1D0();
    v22 = *(v21 - 8);
    v23 = *(v22 + 64) + 15;
    v24 = swift_task_alloc();
    v25 = v1;
    if (swift_dynamicCast())
    {
      v26 = (*(v22 + 88))(v24, v21);
      if (MEMORY[0x277D04530] && v26 == *MEMORY[0x277D04530])
      {

        v20 = 6;
        goto LABEL_30;
      }

      if (MEMORY[0x277D04538] && v26 == *MEMORY[0x277D04538])
      {

        v20 = 7;
        goto LABEL_30;
      }

      if (MEMORY[0x277D04540] && v26 == *MEMORY[0x277D04540])
      {

        v20 = 8;
        goto LABEL_30;
      }

      (*(v22 + 8))(v24, v21);
    }

    *(v0 + 112) = v1;
    v27 = v1;
    if (swift_dynamicCast())
    {

      v20 = *(v0 + 332);
    }

    else
    {

      *(v0 + 120) = v1;
      v28 = sub_258F09E60();
      v29 = *(v28 - 8);
      v30 = *(v29 + 64) + 15;
      v31 = swift_task_alloc();
      v32 = v1;
      if (swift_dynamicCast())
      {

        (*(v29 + 8))(v31, v28);

        v20 = 2;
      }

      else
      {

        *(v0 + 128) = v1;
        v33 = sub_258F09E10();
        v34 = *(v33 - 8);
        v35 = *(v34 + 64) + 15;
        v36 = swift_task_alloc();
        v37 = v1;
        if (swift_dynamicCast())
        {

          (*(v34 + 8))(v36, v33);

          v20 = 0;
        }

        else
        {
          v38 = *(v0 + 184);
          v39 = *(v0 + 168);

          *(v0 + 136) = v1;
          v40 = v1;
          if (swift_dynamicCast())
          {
            v42 = *(v0 + 208);
            v41 = *(v0 + 216);
            v43 = *(v0 + 192);
            v45 = *(v0 + 176);
            v44 = *(v0 + 184);
            v46 = *(v0 + 168);
            v47 = *(v0 + 144);
            (*(*(v0 + 200) + 8))(v47, v43);

            v42(v47, *MEMORY[0x277D81770], v43);
            (*(v45 + 8))(v44, v46);

            goto LABEL_31;
          }

          v20 = 1;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_31:
  v58 = *(v0 + 184);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_258E5FF98()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 280);
  *(v0 + 96) = v5;
  v6 = (v0 + 96);
  v7 = sub_258F09E20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v12 = (*(v8 + 88))(v10, v7);
    if (MEMORY[0x277D81740] && v12 == *MEMORY[0x277D81740])
    {

      v5 = *v6;
      v13 = 3;
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v12 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v13 = 4;
      goto LABEL_29;
    }

    (*(v8 + 8))(v10, v7);
  }

  *(v0 + 104) = v5;
  v14 = sub_258F0A1D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v18 = v5;
  if (swift_dynamicCast())
  {
    v19 = (*(v15 + 88))(v17, v14);
    if (MEMORY[0x277D04530] && v19 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 104);
      v13 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v19 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 104);
      v13 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v19 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 104);
      v13 = 8;
      goto LABEL_29;
    }

    (*(v15 + 8))(v17, v14);
  }

  *(v0 + 112) = v5;
  v20 = v5;
  if (swift_dynamicCast())
  {

    v13 = *(v0 + 332);
    v5 = *(v0 + 112);
  }

  else
  {

    *(v0 + 120) = v5;
    v21 = sub_258F09E60();
    v22 = *(v21 - 8);
    v23 = *(v22 + 64) + 15;
    v24 = swift_task_alloc();
    v25 = v5;
    if (swift_dynamicCast())
    {

      (*(v22 + 8))(v24, v21);

      v5 = *(v0 + 120);
      v13 = 2;
    }

    else
    {

      *(v0 + 128) = v5;
      v26 = sub_258F09E10();
      v27 = *(v26 - 8);
      v28 = *(v27 + 64) + 15;
      v29 = swift_task_alloc();
      v30 = v5;
      if (swift_dynamicCast())
      {

        (*(v27 + 8))(v29, v26);

        v13 = 0;
        v5 = *(v0 + 128);
      }

      else
      {
        v31 = *(v0 + 184);
        v32 = *(v0 + 168);

        *(v0 + 136) = v5;
        v33 = v5;
        if (swift_dynamicCast())
        {
          v35 = *(v0 + 208);
          v34 = *(v0 + 216);
          v36 = *(v0 + 192);
          v38 = *(v0 + 176);
          v37 = *(v0 + 184);
          v39 = *(v0 + 168);
          v40 = *(v0 + 144);
          (*(*(v0 + 200) + 8))(v40, v36);

          v35(v40, *MEMORY[0x277D81770], v36);
          (*(v38 + 8))(v37, v39);

          goto LABEL_30;
        }

        v13 = 1;
      }
    }
  }

LABEL_29:

  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 192);
  v44 = *(v0 + 200);
  v45 = *(v0 + 328);
  v46 = *(v0 + 144);
  v47 = *(v44 + 64) + 15;
  v48 = swift_task_alloc();
  sub_258DE403C();
  v49 = swift_allocError();
  *v50 = v13;
  (*(v44 + 8))(v46, v43);
  *v48 = v49;
  v42(v48, v45, v43);
  (*(v44 + 32))(v46, v48, v43);

LABEL_30:
  v51 = *(v0 + 184);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_258E60640()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 320);
  *(v0 + 96) = v5;
  v6 = (v0 + 96);
  v7 = sub_258F09E20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v12 = (*(v8 + 88))(v10, v7);
    if (MEMORY[0x277D81740] && v12 == *MEMORY[0x277D81740])
    {

      v5 = *v6;
      v13 = 3;
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v12 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v13 = 4;
      goto LABEL_29;
    }

    (*(v8 + 8))(v10, v7);
  }

  *(v0 + 104) = v5;
  v14 = sub_258F0A1D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v18 = v5;
  if (swift_dynamicCast())
  {
    v19 = (*(v15 + 88))(v17, v14);
    if (MEMORY[0x277D04530] && v19 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 104);
      v13 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v19 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 104);
      v13 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v19 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 104);
      v13 = 8;
      goto LABEL_29;
    }

    (*(v15 + 8))(v17, v14);
  }

  *(v0 + 112) = v5;
  v20 = v5;
  if (swift_dynamicCast())
  {

    v13 = *(v0 + 332);
    v5 = *(v0 + 112);
  }

  else
  {

    *(v0 + 120) = v5;
    v21 = sub_258F09E60();
    v22 = *(v21 - 8);
    v23 = *(v22 + 64) + 15;
    v24 = swift_task_alloc();
    v25 = v5;
    if (swift_dynamicCast())
    {

      (*(v22 + 8))(v24, v21);

      v5 = *(v0 + 120);
      v13 = 2;
    }

    else
    {

      *(v0 + 128) = v5;
      v26 = sub_258F09E10();
      v27 = *(v26 - 8);
      v28 = *(v27 + 64) + 15;
      v29 = swift_task_alloc();
      v30 = v5;
      if (swift_dynamicCast())
      {

        (*(v27 + 8))(v29, v26);

        v13 = 0;
        v5 = *(v0 + 128);
      }

      else
      {
        v31 = *(v0 + 184);
        v32 = *(v0 + 168);

        *(v0 + 136) = v5;
        v33 = v5;
        if (swift_dynamicCast())
        {
          v35 = *(v0 + 208);
          v34 = *(v0 + 216);
          v36 = *(v0 + 192);
          v38 = *(v0 + 176);
          v37 = *(v0 + 184);
          v39 = *(v0 + 168);
          v40 = *(v0 + 144);
          (*(*(v0 + 200) + 8))(v40, v36);

          v35(v40, *MEMORY[0x277D81770], v36);
          (*(v38 + 8))(v37, v39);

          goto LABEL_30;
        }

        v13 = 1;
      }
    }
  }

LABEL_29:

  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 192);
  v44 = *(v0 + 200);
  v45 = *(v0 + 328);
  v46 = *(v0 + 144);
  v47 = *(v44 + 64) + 15;
  v48 = swift_task_alloc();
  sub_258DE403C();
  v49 = swift_allocError();
  *v50 = v13;
  (*(v44 + 8))(v46, v43);
  *v48 = v49;
  v42(v48, v45, v43);
  (*(v44 + 32))(v46, v48, v43);

LABEL_30:
  v51 = *(v0 + 184);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_258E60CE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    if (qword_280CC49F0 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_280CC49F8);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258E60EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_258F0A370();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E60FA4, 0, 0);
}

uint64_t sub_258E60FA4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[11] = v2;
  if (qword_280CC49F0 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[4];
  v9 = __swift_project_value_buffer(v5, qword_280CC49F8);
  (*(v4 + 16))(v3, v9, v5);
  v10 = type metadata accessor for DictationDeviceExperimentMetrics();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v0[2] = DictationDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(v8, v3, v7, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B70, qword_258F118B0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_258F09E40();
  v0[12] = v17;
  if (v17)
  {
    v18 = v0[5];
    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v20 = swift_task_alloc();
    v0[13] = v20;
    v21 = sub_258F09E00();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v20, v18, v21);
    (*(v22 + 56))(v20, 0, 1, v21);
    v23 = *(MEMORY[0x277D81750] + 4);
    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_258E6133C;

    return MEMORY[0x2821ED078](v2, v20);
  }

  else
  {
    v25 = v0[3];
    v26 = sub_258F09E50();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v2, 1, 1, v26);
    (*(v27 + 104))(v25, *MEMORY[0x277D81758], v26);
    v29 = v0[10];
    v28 = v0[11];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_258E6133C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  sub_258DE2184(*(v2 + 104), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258E61F10;
  }

  else
  {

    v6 = sub_258E61F14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E614A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_258F0A370();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E61570, 0, 0);
}

uint64_t sub_258E61570()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[11] = v2;
  if (qword_280CC49F0 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[4];
  v9 = __swift_project_value_buffer(v5, qword_280CC49F8);
  (*(v4 + 16))(v3, v9, v5);
  v10 = type metadata accessor for AssistantDeviceExperimentMetrics();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v0[2] = AssistantDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(v8, v3, v7, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B78, &qword_258F118C8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_258F09E40();
  v0[12] = v17;
  if (v17)
  {
    v18 = v0[5];
    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v20 = swift_task_alloc();
    v0[13] = v20;
    v21 = sub_258F09E00();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v20, v18, v21);
    (*(v22 + 56))(v20, 0, 1, v21);
    v23 = *(MEMORY[0x277D81750] + 4);
    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = sub_258E61908;

    return MEMORY[0x2821ED078](v2, v20);
  }

  else
  {
    v25 = v0[3];
    v26 = sub_258F09E50();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v2, 1, 1, v26);
    (*(v27 + 104))(v25, *MEMORY[0x277D81758], v26);
    v29 = v0[10];
    v28 = v0[11];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_258E61908()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  sub_258DE2184(*(v2 + 104), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258E61B7C;
  }

  else
  {

    v6 = sub_258E61A74;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E61A74()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_258E61B7C()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t dispatch thunk of ExperimentMetricsExecutor.executeDictationDeviceExperimentMetrics(defaults:pluginContext:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ExperimentMetricsExecutor.executeAssistantDeviceExperimentMetrics(defaults:pluginContext:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 96);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_258DE1DC4;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t static ExtensionsUtils.createExecutionMetadataClientEvent(extensionName:executionStatus:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258E6584C;

  return sub_258E6422C(a1, a2);
}

uint64_t static ExtensionsUtils.isAssistantOrDictationEnabled()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 sharedPreferences];
  v5 = [v4 dictationIsEnabled];

  return v5;
}

uint64_t sub_258E62074()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_27F989B80);
  __swift_project_value_buffer(v0, qword_27F989B80);
  return sub_258F0A360();
}

uint64_t static ExtensionsUtils.isMeDevice()()
{
  v1 = sub_258F09C70();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = sub_258F09C90();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v7 = sub_258F09C40();
  v0[10] = v7;
  v8 = *(v7 - 8);
  v0[11] = v8;
  v9 = *(v8 + 64) + 15;
  v0[12] = swift_task_alloc();
  v10 = *(*(sub_258F09C50() - 8) + 64) + 15;
  v0[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E622A4, 0, 0);
}

uint64_t sub_258E622A4()
{
  v1 = v0[13];
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D09060], v0[10]);
  sub_258F09C60();
  v2 = sub_258F09CB0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[14] = sub_258F09CC0();
  v5 = *(MEMORY[0x277D09410] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_258E623A0;
  v7 = v0[9];

  return MEMORY[0x28215FB40](v7, 1);
}

uint64_t sub_258E623A0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_258E62584;
  }

  else
  {
    v3 = sub_258E624B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E624B4()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_258F09C80();

  (*(v4 + 8))(v2, v3);
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[5];

  v11 = v0[1];

  return v11(v5 & 1);
}

uint64_t sub_258E62584()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = *(v0 + 112);

LABEL_13:
    v19 = *(v0 + 128);

    v13 = 0;
LABEL_14:
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 40);

    v25 = *(v0 + 8);

    return v25(v13);
  }

  if ((*(*(v0 + 32) + 88))(*(v0 + 40), *(v0 + 24)) != *MEMORY[0x277D090B0])
  {
    v15 = *(v0 + 112);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);

    (*(v17 + 8))(v16, v18);
    goto LABEL_13;
  }

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v5 = sub_258F0A370();
  __swift_project_value_buffer(v5, qword_27F989B80);
  v6 = sub_258F0A350();
  v7 = sub_258F0A820();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v6, v7, "#ExtensionUtils: Error getting cached location sharing device, trying not cached", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  if (sub_258E65688())
  {
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ExtensionUtils: return true for MeDevice if target is simulator or VM", v11, 2u);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    v12 = *(v0 + 112);

    v13 = 1;
    goto LABEL_14;
  }

  v27 = *(MEMORY[0x277D09410] + 4);
  v28 = swift_task_alloc();
  *(v0 + 136) = v28;
  *v28 = v0;
  v28[1] = sub_258E628A8;
  v29 = *(v0 + 112);
  v30 = *(v0 + 64);

  return MEMORY[0x28215FB40](v30, 0);
}

uint64_t sub_258E628A8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_258E62A94;
  }

  else
  {
    v3 = sub_258E629BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E629BC()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_258F09C80();

  (*(v3 + 8))(v2, v4);

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11(v5 & 1);
}

uint64_t sub_258E62A94()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8(0);
}

BOOL static ExtensionsUtils.isSiriDataSharingOptIn()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  return v1 == 1;
}

uint64_t static ExtensionsUtils.createClientEventMetadataEvent()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258E62C40;

  return sub_258E639F8();
}

uint64_t sub_258E62C40(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static ExtensionsUtils.fetchDeviceAggregationId()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258E6584C;

  return sub_258E62E94();
}

uint64_t static ExtensionsUtils.fetchUserAggregationId()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258E6584C;

  return sub_258E6344C();
}

uint64_t sub_258E62EB0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258E62FE8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B98, &qword_258F11A18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258E65850;
  v0[13] = &block_descriptor_15;
  v0[14] = v2;
  [v1 getODDDeviceAggregationId_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258E62FE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_258E6331C;
  }

  else
  {
    v3 = sub_258E630F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E630F8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v2 = sub_258F0A370();
    __swift_project_value_buffer(v2, qword_27F989B80);
    v3 = v1;
    v4 = sub_258F0A350();
    v5 = sub_258F0A810();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_258DD8000, v4, v5, "#ExtensionsUtils: Successfully fetched DeviceAggregationId - %@", v6, 0xCu);
      sub_258DE2184(v7, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v7, -1, -1);
LABEL_10:
      MEMORY[0x259C9EF40](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_27F989B80);
    v4 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v4, v10))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258DD8000, v4, v10, "#ExtensionsUtils: Unable to fetch DeviceAggregationId", v6, 2u);
      goto LABEL_10;
    }
  }

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_258E6331C()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v3 = sub_258F0A370();
  __swift_project_value_buffer(v3, qword_27F989B80);
  v4 = sub_258F0A350();
  v5 = sub_258F0A820();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258DD8000, v4, v5, "#ExtensionsUtils: Unable to fetch DeviceAggregationId", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_258E63468()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258E635A0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989890, &qword_258F11A10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258E65850;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 getODDDeviceProperties_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258E635A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_258E638C8;
  }

  else
  {
    v3 = sub_258E636B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E636B0()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v2 = sub_258F0A370();
    __swift_project_value_buffer(v2, qword_27F989B80);
    v3 = sub_258F0A350();
    v4 = sub_258F0A810();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_258DD8000, v3, v4, "#ExtensionsUtils: Successfully fetched DevicePropertiesEvent", v5, 2u);
      MEMORY[0x259C9EF40](v5, -1, -1);
    }

    v6 = [v1 eventMetadata];
    v7 = [v6 userAggregationId];
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v8 = sub_258F0A370();
    __swift_project_value_buffer(v8, qword_27F989B80);
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ExtensionsUtils: Unable to fetch DevicePropertiesEvent", v11, 2u);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    v7 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_258E638C8()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v3 = sub_258F0A370();
  __swift_project_value_buffer(v3, qword_27F989B80);
  v4 = sub_258F0A350();
  v5 = sub_258F0A820();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258DD8000, v4, v5, "#ExtensionsUtils: Unable to fetch DevicePropertiesEvent", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_258E639F8()
{
  v1 = sub_258F09A20();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_258F09A70();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E63B10, 0, 0);
}

uint64_t sub_258E63B10()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  v0[8] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_258E63CD8;

    return sub_258E62E94();
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v4 = sub_258F0A370();
    __swift_project_value_buffer(v4, qword_27F989B80);
    v5 = sub_258F0A350();
    v6 = sub_258F0A820();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_258DD8000, v5, v6, "#ExtensionsUtils: Failed to generate ODDSiriSchemaODDClientEventMetadata", v7, 2u);
      MEMORY[0x259C9EF40](v7, -1, -1);
    }

    v8 = v0[7];
    v9 = v0[4];

    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_258E63CD8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_258E63DD8, 0, 0);
}

uint64_t sub_258E63DD8()
{
  v1 = *(v0 + 80);
  [*(v0 + 64) setDeviceAggregationId_];

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_258E63E94;

  return sub_258E6344C();
}

uint64_t sub_258E63E94(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_258E63F94, 0, 0);
}

uint64_t sub_258E63F94()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  [v2 setUserAggregationId_];

  sub_258F09A60();
  v7 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v8 = sub_258F09A50();
  v9 = [v7 initWithNSUUID_];

  (*(v5 + 8))(v3, v4);
  [v2 setOddId_];

  sub_258F09B50();
  sub_258F099E0();
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (is_mul_ok(v10, 0x3E8uLL))
  {
    v11 = v0[8];
    v12 = v0[4];
    [v11 setEventTimestampInMsSince1970_];
    v13 = sub_258E47ECC();
    [v11 setAggregationInterval_];

    if (qword_27F988670 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_6:
  v14 = sub_258F0A370();
  __swift_project_value_buffer(v14, qword_27F989B80);
  v15 = sub_258F0A350();
  v16 = sub_258F0A810();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  if (v17)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_258DD8000, v15, v16, "#ExtensionsUtils: Successfully created ODDSiriSchemaODDClientEventMetadata", v21, 2u);
    MEMORY[0x259C9EF40](v21, -1, -1);
  }

  (*(v19 + 8))(v18, v20);
  v22 = v0[7];
  v23 = v0[8];
  v24 = v0[4];

  v25 = v0[1];

  return v25(v23);
}

uint64_t sub_258E6422C(int a1, int a2)
{
  *(v2 + 40) = a1;
  *(v2 + 44) = a2;
  return MEMORY[0x2822009F8](sub_258E6424C, 0, 0);
}

uint64_t sub_258E6424C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  v0[2] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_258E64400;

    return sub_258E639F8();
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v4 = sub_258F0A370();
    __swift_project_value_buffer(v4, qword_27F989B80);
    v5 = sub_258F0A350();
    v6 = sub_258F0A820();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_258DD8000, v5, v6, "#ExtensionsUtils: Failed to generate event for reporting Extension Execution Metadata", v7, 2u);
      MEMORY[0x259C9EF40](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_258E64400(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_258E64500, 0, 0);
}

uint64_t sub_258E64500()
{
  v27 = v0;
  v1 = *(v0 + 32);
  [*(v0 + 16) setEventMetadata_];

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_27F989B80);
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#ExtensionsUtils: Added ODDSiriSchemaODDClientEventMetadata to ODDSiriSchemaODDExecutionMetadataReported", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D59340]) init];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 44);
    [v6 setExtensionName:*(v0 + 40)];
    [v7 setExecutionStatus:v8];
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 40);
      v11 = *(v0 + 44);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315394;
      v15 = sub_258F0A8C0();
      v17 = sub_258DE3018(v15, v16, &v26);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_258F0A8D0();
      v20 = sub_258DE3018(v18, v19, &v26);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ExtensionsUtils: created executionMetadataEvent for %s with status %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v14, -1, -1);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    [*(v0 + 16) setExecutionMetadataReported_];
  }

  else
  {
    v7 = sub_258F0A350();
    v21 = sub_258F0A820();
    if (os_log_type_enabled(v7, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_258DD8000, v7, v21, "#ExtensionsUtils: Failed to generate ODDSiriSchemaODDExecutionMetadataReported event", v22, 2u);
      MEMORY[0x259C9EF40](v22, -1, -1);
    }
  }

  v23 = *(v0 + 16);
  v24 = *(v0 + 8);

  return v24(v23);
}

char *_s16MetricsFramework15ExtensionsUtilsC13decodeTurnIdsySay10Foundation4UUIDVGSgSSSgFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v60 = v53 - v6;
  v7 = sub_258F09A70();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v64 = v53 - v14;
  v15 = sub_258F0A540();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_258F0A530(), v21 = sub_258F0A500(), v23 = v22, (*(v16 + 8))(v20, v15), v23 >> 60 != 15))
  {
    v30 = sub_258F09840();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_258F09830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
    sub_258E657C8();
    sub_258F09820();
    v53[1] = v33;
    v54 = v21;
    v55 = v23;
    v35 = v65[2];
    v53[0] = v65;
    if (v35)
    {
      v28 = 0;
      v36 = v60;
      v62 = (v61 + 32);
      v63 = (v61 + 48);
      v58 = (v61 + 16);
      v59 = v12;
      v57 = v61 + 8;
      v37 = (v65 + 5);
      *&v34 = 136315138;
      v56 = v34;
      do
      {
        v43 = *(v37 - 1);
        v42 = *v37;

        sub_258F09A30();
        if ((*v63)(v36, 1, v7) == 1)
        {
          sub_258DE2184(v36, &qword_27F988730, &unk_258F0F8E0);
          if (qword_27F988670 != -1)
          {
            swift_once();
          }

          v44 = sub_258F0A370();
          __swift_project_value_buffer(v44, qword_27F989B80);

          v45 = sub_258F0A350();
          v46 = sub_258F0A820();

          if (os_log_type_enabled(v45, v46))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v65 = v39;
            *v38 = v56;
            v40 = sub_258DE3018(v43, v42, &v65);

            *(v38 + 4) = v40;
            _os_log_impl(&dword_258DD8000, v45, v46, "#ExtensionsUtils: Invalid UUID format for TurnId: %s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v39);
            v41 = v39;
            v36 = v60;
            MEMORY[0x259C9EF40](v41, -1, -1);
            MEMORY[0x259C9EF40](v38, -1, -1);
          }

          else
          {
          }
        }

        else
        {

          v47 = *v62;
          v48 = v64;
          (*v62)(v64, v36, v7);
          if (!v28)
          {
            v28 = MEMORY[0x277D84F90];
          }

          v49 = v59;
          (*v58)(v59, v48, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_258DE26A4(0, *(v28 + 2) + 1, 1, v28);
          }

          v51 = *(v28 + 2);
          v50 = *(v28 + 3);
          if (v51 >= v50 >> 1)
          {
            v28 = sub_258DE26A4(v50 > 1, v51 + 1, 1, v28);
          }

          v52 = v61;
          (*(v61 + 8))(v64, v7);
          *(v28 + 2) = v51 + 1;
          v47(&v28[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51], v49, v7);
        }

        v37 += 2;
        --v35;
      }

      while (v35);
    }

    else
    {
      v28 = 0;
    }

    sub_258DEB964(v54, v55);
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v24 = sub_258F0A370();
    __swift_project_value_buffer(v24, qword_27F989B80);
    v25 = sub_258F0A350();
    v26 = sub_258F0A810();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_258DD8000, v25, v26, "#ExtensionsUtils: turnIdsString is nil or its not utf8 encodable.", v27, 2u);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    return 0;
  }

  return v28;
}

char *_s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_258F0A540();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_258F0A530(), v9 = sub_258F0A500(), v11 = v10, (*(v4 + 8))(v8, v3), v11 >> 60 != 15))
  {
    v18 = sub_258F09840();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_258F09830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
    sub_258E657C8();
    sub_258F09820();
    v39 = v21;
    v40 = v9;
    v41 = v11;
    v23 = v43[2];
    v38 = v43;
    if (v23)
    {
      v24 = (v43 + 5);
      v16 = MEMORY[0x277D84F90];
      *&v22 = 136315138;
      v42 = v22;
      do
      {
        v26 = *(v24 - 1);
        v25 = *v24;
        v27 = qword_27F988670;

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_258F0A370();
        __swift_project_value_buffer(v28, qword_27F989B80);

        v29 = sub_258F0A350();
        v30 = sub_258F0A820();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v43 = v32;
          *v31 = v42;
          *(v31 + 4) = sub_258DE3018(v26, v25, &v43);
          _os_log_impl(&dword_258DD8000, v29, v30, "#ExtensionsUtils: ieRoutingString: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          MEMORY[0x259C9EF40](v32, -1, -1);
          MEMORY[0x259C9EF40](v31, -1, -1);
        }

        v33 = sub_258F0A4E0();

        v34 = v33;
        if ([v34 isEqualToString:{@"IEROUTING_UNKNOWN", v38, v39, v40, v41}])
        {
          v35 = 0;
        }

        else if ([v34 isEqualToString:@"IEROUTING_NL_ROUTER"])
        {
          v35 = 1;
        }

        else if ([v34 isEqualToString:@"IEROUTING_FAILURE"])
        {
          v35 = 2;
        }

        else if ([v34 isEqualToString:@"IEROUTING_SIRI_X_DIRECT"])
        {
          v35 = 3;
        }

        else if ([v34 isEqualToString:@"IEROUTING_SIRI_X_REWRITE"])
        {
          v35 = 4;
        }

        else if ([v34 isEqualToString:@"IEROUTING_PLANNER"])
        {
          v35 = 5;
        }

        else if ([v34 isEqualToString:@"IEROUTING_RESPONSE_GENERATION"])
        {
          v35 = 6;
        }

        else if ([v34 isEqualToString:@"IEROUTING_APP_INTENT"])
        {
          v35 = 7;
        }

        else if ([v34 isEqualToString:@"IEROUTING_SEARCH_TOOL"])
        {
          v35 = 8;
        }

        else if ([v34 isEqualToString:@"IEROUTING_SIRI_X"])
        {
          v35 = 9;
        }

        else if ([v34 isEqualToString:@"IEROUTING_QUERY_REWRITE"])
        {
          v35 = 10;
        }

        else if ([v34 isEqualToString:@"IEROUTING_GENERATIVE_AI"])
        {
          v35 = 11;
        }

        else
        {
          v35 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_258DE2864(0, *(v16 + 2) + 1, 1, v16);
        }

        v37 = *(v16 + 2);
        v36 = *(v16 + 3);
        if (v37 >= v36 >> 1)
        {
          v16 = sub_258DE2864((v36 > 1), v37 + 1, 1, v16);
        }

        *(v16 + 2) = v37 + 1;
        *&v16[4 * v37 + 32] = v35;
        v24 += 2;
        --v23;
      }

      while (v23);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    sub_258DEB964(v40, v41);
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v12 = sub_258F0A370();
    __swift_project_value_buffer(v12, qword_27F989B80);
    v13 = sub_258F0A350();
    v14 = sub_258F0A810();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "#ExtensionsUtils: ieRoutingString is nil or its not utf8 encodable.", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_258E65688()
{
  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v0 = sub_258F0A370();
  __swift_project_value_buffer(v0, qword_27F989B80);
  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#ExtensionsUtils: running on VM", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  return CSIsVirtualMachine();
}

unint64_t sub_258E657C8()
{
  result = qword_27F989BA0;
  if (!qword_27F989BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988DB0, &unk_258F13940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BA0);
  }

  return result;
}

const char *sub_258E6585C(char a1)
{
  result = "enableOnDeviceSiriMetrics";
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = "disablePersistentIDLogging";
      break;
    case 3:
      result = "od_deletion";
      break;
    case 4:
      result = "disablePersistentIDLoggingGM";
      break;
    case 5:
      result = "enableRPIOptInInternalSetting";
      break;
    case 6:
      result = "enableRPIInternalBuildRule";
      break;
    case 7:
      result = "disablePersistentIDLoggingIOSOptOut";
      break;
    case 8:
      result = "disablePersistentIDLoggingIOS";
      break;
    case 9:
      result = "disablePersistentIDLoggingMacOSOptOut";
      break;
    case 10:
      result = "disablePersistentIDLoggingVisionOSOptOut";
      break;
    case 11:
      result = "disablePersistentIDLoggingAppleTVOptOut";
      break;
    case 12:
      result = "disablePersistentIDLoggingHomePodOptOut";
      break;
    case 13:
      result = "disablePersistentIDLoggingMacOS";
      break;
    case 14:
      result = "disablePersistentIDLoggingVisionOS";
      break;
    case 15:
      result = "disablePersistentIDLoggingAppleTV";
      break;
    case 16:
      result = "disablePersistentIDLoggingHomePod";
      break;
    case 17:
      result = "disablePersistentIDLoggingSiriXUODOptOut";
      break;
    case 18:
      result = "disablePersistentIDLoggingSiriXHybridOptOut";
      break;
    case 19:
      result = "disablePersistentIDLoggingClassicOptOut";
      break;
    case 20:
      result = "disablePersistentIDLoggingSiriXUOD";
      break;
    case 21:
      result = "disablePersistentIDLoggingSiriXHybrid";
      break;
    case 22:
      result = "disablePersistentIDLoggingClassic";
      break;
    case 23:
      result = "disablePersistentIDLoggingOptIn";
      break;
    default:
      result = "enableFBFReporter";
      break;
  }

  return result;
}

uint64_t sub_258E65A58(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = sub_258E3FDD4();
  LOBYTE(v4[0]) = a1;
  v2 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E65C04()
{
  result = qword_27F989BA8;
  if (!qword_27F989BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989BB0, qword_258F11AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BA8);
  }

  return result;
}

unint64_t sub_258E65C6C()
{
  result = qword_27F989BB8;
  if (!qword_27F989BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BB8);
  }

  return result;
}

unint64_t SiriMetricsWorkerError.rawValue.getter()
{
  result = 0x74754F64656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x7463657078656E75;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 3:
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4E656C69466C7173;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x72576664556C7173;
      break;
    case 0xD:
      result = 0x78456664556C7173;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x12:
      result = 0xD000000000000019;
      break;
    case 0x13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E65F0C()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_280CC4A18);
  __swift_project_value_buffer(v0, qword_280CC4A18);
  return sub_258F0A360();
}

MetricsFramework::SiriMetricsWorkerError_optional __swiftcall SiriMetricsWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_258E660B0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SiriMetricsWorkerError.rawValue.getter();
  v4 = v3;
  if (v2 == SiriMetricsWorkerError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258F0AD80();
  }

  return v7 & 1;
}

uint64_t sub_258E6614C()
{
  v1 = *v0;
  sub_258F0AE40();
  SiriMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E661B4()
{
  v2 = *v0;
  SiriMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258E66218()
{
  v1 = *v0;
  sub_258F0AE40();
  SiriMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E66288@<X0>(unint64_t *a1@<X8>)
{
  result = SiriMetricsWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MetricsFramework::MetricsWorker::Subtask_optional __swiftcall MetricsWorker.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t MetricsWorker.Subtask.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_258E66350(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "bookmarkServiceNotSet";
  }

  else
  {
    v5 = "siriDigestMetrics";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "siriDigestMetrics";
  }

  else
  {
    v8 = "bookmarkServiceNotSet";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_258F0AD80();
  }

  return v10 & 1;
}

uint64_t sub_258E663FC()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E6647C()
{
  *v0;
  sub_258F0A5B0();
}

uint64_t sub_258E664E8()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E66564@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258F0ABE0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_258E665C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "siriDigestMetrics";
  }

  else
  {
    v3 = "bookmarkServiceNotSet";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t MetricsWorker.doWork(metricsExecutor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  v4 = sub_258F0A770();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E66704, 0, 0);
}

uint64_t sub_258E66704()
{
  v100 = v0;
  if (qword_280CC4A10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_280CC4A18);
  v3 = v1;
  v4 = sub_258F0A350();
  v5 = sub_258F0A800();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v99[0] = v8;
    *v7 = 136315394;
    v9 = sub_258F09E80();
    v11 = sub_258DE3018(v9, v10, v99);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_258F09E90();
    v14 = sub_258DE3018(v12, v13, v99);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v4, v5, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v8, -1, -1);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  *v16 = 0;
  v17 = *MEMORY[0x277D81760];
  *(v0 + 480) = v17;
  v18 = sub_258F09E50();
  *(v0 + 272) = v18;
  v19 = *(v18 - 8);
  *(v0 + 280) = v19;
  v20 = *(v19 + 104);
  *(v0 + 288) = v20;
  *(v0 + 296) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v16, v17, v18);
  v21 = sub_258F09E80();
  v23 = v22;
  v24 = sub_258F09E90();
  sub_258E68EB0(v21, v23, v24, v25);
  v34 = *(v0 + 240);

  sub_258F09E80();
  v99[0] = sub_258F09E90();
  v99[1] = v35;

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000011, 0x8000000258F18BC0);

  v36 = sub_258F09EA0();
  *(v0 + 304) = v36;
  v37 = objc_allocWithZone(v36);
  v38 = sub_258F09E70();
  *(v0 + 312) = v38;
  v39 = sub_258F09E00();
  *(v0 + 320) = v39;
  v40 = *(v39 - 8);
  v41 = v40;
  *(v0 + 328) = v40;
  *(v0 + 336) = *(v40 + 64);
  v42 = swift_task_alloc();
  *(v0 + 344) = v42;
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = 60000;
  v44 = v38;
  sub_258DFBCE0(inited);
  swift_setDeallocating();
  sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
  sub_258F09DF0();
  v45 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v46 = sub_258F0A4E0();
  v47 = [v45 initWithSuiteName_];
  *(v0 + 360) = v47;

  if (v47)
  {
    v48 = *(v0 + 232);
    *(v0 + 368) = *(v19 + 64);
    v49 = swift_task_alloc();
    *(v0 + 376) = v49;
    v50 = *(*v48 + 88);
    v98 = (v50 + *v50);
    v51 = v50[1];
    v52 = swift_task_alloc();
    *(v0 + 384) = v52;
    *v52 = v0;
    v52[1] = sub_258E673C4;
    v53 = *(v0 + 232);

    return v98(v49, v47, v42);
  }

  v61 = sub_258F0A350();
  v62 = sub_258F0A820();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_258DD8000, v61, v62, "Can't get user defaults initialized", v63, 2u);
    MEMORY[0x259C9EF40](v63, -1, -1);
  }

  sub_258DE403C();
  v32 = swift_allocError();
  *v64 = 5;
  swift_willThrow();

  (*(v41 + 8))(v42, v39);

  *(v0 + 176) = v32;
  v26 = sub_258F09E20();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v31 = (*(v27 + 88))(v29, v26);
    if (MEMORY[0x277D81740] && v31 == *MEMORY[0x277D81740])
    {

      v32 = *(v0 + 176);
      v33 = 3;
LABEL_41:

      v87 = *(v0 + 288);
      v86 = *(v0 + 296);
      v88 = *(v0 + 272);
      v89 = *(v0 + 280);
      v90 = *(v0 + 480);
      v91 = *(v0 + 224);
      v92 = *(v89 + 64) + 15;
      v93 = swift_task_alloc();
      sub_258DE403C();
      v94 = swift_allocError();
      *v95 = v33;
      (*(v89 + 8))(v91, v88);
      *v93 = v94;
      v87(v93, v90, v88);
      (*(v89 + 32))(v91, v93, v88);

      goto LABEL_42;
    }

    if (MEMORY[0x277D81748] && v31 == *MEMORY[0x277D81748])
    {

      v32 = *(v0 + 176);
      v33 = 4;
      goto LABEL_41;
    }

    (*(v27 + 8))(v29, v26);
  }

  *(v0 + 184) = v32;
  v55 = sub_258F0A1D0();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64) + 15;
  v58 = swift_task_alloc();
  v59 = v32;
  if (swift_dynamicCast())
  {
    v60 = (*(v56 + 88))(v58, v55);
    if (MEMORY[0x277D04530] && v60 == *MEMORY[0x277D04530])
    {

      v32 = *(v0 + 184);
      v33 = 6;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04538] && v60 == *MEMORY[0x277D04538])
    {

      v32 = *(v0 + 184);
      v33 = 7;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04540] && v60 == *MEMORY[0x277D04540])
    {

      v32 = *(v0 + 184);
      v33 = 8;
      goto LABEL_41;
    }

    (*(v56 + 8))(v58, v55);
  }

  *(v0 + 192) = v32;
  v65 = v32;
  if (swift_dynamicCast())
  {

    v33 = *(v0 + 484);
    v32 = *(v0 + 192);
    goto LABEL_41;
  }

  *(v0 + 200) = v32;
  v66 = sub_258F09E60();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64) + 15;
  v69 = swift_task_alloc();
  v70 = v32;
  if (swift_dynamicCast())
  {

    (*(v67 + 8))(v69, v66);

    v32 = *(v0 + 200);
    v33 = 2;
    goto LABEL_41;
  }

  *(v0 + 208) = v32;
  v71 = sub_258F09E10();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64) + 15;
  v74 = swift_task_alloc();
  v75 = v32;
  if (swift_dynamicCast())
  {

    (*(v72 + 8))(v74, v71);

    v33 = 0;
    v32 = *(v0 + 208);
    goto LABEL_41;
  }

  v76 = *(v0 + 264);
  v77 = *(v0 + 248);

  *(v0 + 216) = v32;
  v78 = v32;
  if (!swift_dynamicCast())
  {

    v33 = 1;
    goto LABEL_41;
  }

  v80 = *(v0 + 288);
  v79 = *(v0 + 296);
  v81 = *(v0 + 272);
  v83 = *(v0 + 256);
  v82 = *(v0 + 264);
  v84 = *(v0 + 248);
  v85 = *(v0 + 224);
  (*(*(v0 + 280) + 8))(v85, v81);

  v80(v85, *MEMORY[0x277D81770], v81);
  (*(v83 + 8))(v82, v84);

LABEL_42:
  v96 = *(v0 + 264);

  v97 = *(v0 + 8);

  return v97();
}

uint64_t sub_258E673C4()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_258E68154;
  }

  else
  {
    v3 = sub_258E674D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E674D8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v4 + 8);
  *(v0 + 400) = v7;
  *(v0 + 408) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v6, v3);
  v8 = *(v4 + 32);
  *(v0 + 416) = v8;
  *(v0 + 424) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v6, v2, v3);

  v9 = sub_258F09E80();
  v11 = v10;
  v12 = sub_258F09E90();
  sub_258E68EB0(v9, v11, v12, v13);
  if (v1)
  {
    v14 = *(v0 + 360);
    v15 = *(v0 + 312);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));

    *(v0 + 176) = v1;
    v16 = sub_258F09E20();
    v17 = *(v16 - 8);
    v18 = *(v17 + 64) + 15;
    v19 = swift_task_alloc();
    v20 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v21 = (*(v17 + 88))(v19, v16);
      if (MEMORY[0x277D81740] && v21 == *MEMORY[0x277D81740])
      {

        v22 = 3;
        goto LABEL_33;
      }

      if (MEMORY[0x277D81748] && v21 == *MEMORY[0x277D81748])
      {

        v22 = 4;
        goto LABEL_33;
      }

      (*(v17 + 8))(v19, v16);
    }

    *(v0 + 184) = v1;
    v43 = sub_258F0A1D0();
    v44 = *(v43 - 8);
    v45 = *(v44 + 64) + 15;
    v46 = swift_task_alloc();
    v47 = v1;
    if (swift_dynamicCast())
    {
      v48 = (*(v44 + 88))(v46, v43);
      if (MEMORY[0x277D04530] && v48 == *MEMORY[0x277D04530])
      {

        v22 = 6;
        goto LABEL_33;
      }

      if (MEMORY[0x277D04538] && v48 == *MEMORY[0x277D04538])
      {

        v22 = 7;
        goto LABEL_33;
      }

      if (MEMORY[0x277D04540] && v48 == *MEMORY[0x277D04540])
      {

        v22 = 8;
        goto LABEL_33;
      }

      (*(v44 + 8))(v46, v43);
    }

    *(v0 + 192) = v1;
    v49 = v1;
    if (swift_dynamicCast())
    {

      v22 = *(v0 + 484);
    }

    else
    {

      *(v0 + 200) = v1;
      v50 = sub_258F09E60();
      v51 = *(v50 - 8);
      v52 = *(v51 + 64) + 15;
      v53 = swift_task_alloc();
      v54 = v1;
      if (swift_dynamicCast())
      {

        (*(v51 + 8))(v53, v50);

        v22 = 2;
      }

      else
      {

        *(v0 + 208) = v1;
        v55 = sub_258F09E10();
        v56 = *(v55 - 8);
        v57 = *(v56 + 64) + 15;
        v58 = swift_task_alloc();
        v59 = v1;
        if (swift_dynamicCast())
        {

          (*(v56 + 8))(v58, v55);

          v22 = 0;
        }

        else
        {
          v60 = *(v0 + 264);
          v61 = *(v0 + 248);

          *(v0 + 216) = v1;
          v62 = v1;
          if (swift_dynamicCast())
          {
            v64 = *(v0 + 288);
            v63 = *(v0 + 296);
            v65 = *(v0 + 272);
            v67 = *(v0 + 256);
            v66 = *(v0 + 264);
            v68 = *(v0 + 248);
            v69 = *(v0 + 224);
            (*(*(v0 + 280) + 8))(v69, v65);

            v64(v69, *MEMORY[0x277D81770], v65);
            (*(v67 + 8))(v66, v68);

LABEL_34:
            v80 = *(v0 + 264);

            v81 = *(v0 + 8);

            return v81();
          }

          v22 = 1;
        }
      }
    }

LABEL_33:
    v71 = *(v0 + 288);
    v70 = *(v0 + 296);
    v72 = *(v0 + 272);
    v73 = *(v0 + 280);
    v74 = *(v0 + 480);
    v75 = *(v0 + 224);
    v76 = *(v73 + 64) + 15;
    v77 = swift_task_alloc();
    sub_258DE403C();
    v78 = swift_allocError();
    *v79 = v22;
    (*(v73 + 8))(v75, v72);
    *v77 = v78;
    v71(v77, v74, v72);
    (*(v73 + 32))(v75, v77, v72);

    goto LABEL_34;
  }

  v23 = *(v0 + 368);
  v84 = *(v0 + 344);
  v25 = *(v0 + 328);
  v24 = *(v0 + 336);
  v26 = *(v0 + 312);
  v82 = *(v0 + 352);
  v83 = *(v0 + 320);
  v27 = *(v0 + 304);
  v28 = *(v0 + 240);
  v85 = *(v0 + 232);

  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000018, 0x8000000258F18BE0);

  v29 = objc_allocWithZone(v27);
  v30 = sub_258F09E70();
  *(v0 + 432) = v30;

  v31 = swift_task_alloc();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = 60000;
  v33 = v30;
  sub_258DFBCE0(inited);
  swift_setDeallocating();
  sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
  sub_258F09DF0();
  v34 = *(v25 + 8);
  *(v0 + 440) = v34;
  *(v0 + 448) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v84, v83);
  (*(v25 + 32))(v84, v31, v83);

  v35 = swift_task_alloc();
  *(v0 + 456) = v35;
  v36 = *(*v85 + 96);
  v86 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 464) = v38;
  *v38 = v0;
  v38[1] = sub_258E67F48;
  v39 = *(v0 + 360);
  v40 = *(v0 + 344);
  v41 = *(v0 + 232);

  return v86(v35, v39, v40);
}

uint64_t sub_258E67F48()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_258E68808;
  }

  else
  {
    v3 = sub_258E6805C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E6805C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v15 = *(v0 + 424);
  v13 = *(v0 + 448);
  v14 = *(v0 + 416);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 320);
  v8 = *(v0 + 272);
  v9 = *(v0 + 224);

  v2(v6, v7);
  v4(v9, v8);
  v14(v9, v1, v8);

  v10 = *(v0 + 264);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_258E68154()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 392);
  *(v0 + 176) = v6;
  v7 = (v0 + 176);
  v8 = sub_258F09E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v13 = (*(v9 + 88))(v11, v8);
    if (MEMORY[0x277D81740] && v13 == *MEMORY[0x277D81740])
    {

      v6 = *v7;
      v14 = 3;
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v13 == *MEMORY[0x277D81748])
    {

      v6 = *v7;
      v14 = 4;
      goto LABEL_29;
    }

    (*(v9 + 8))(v11, v8);
  }

  *(v0 + 184) = v6;
  v15 = sub_258F0A1D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v19 = v6;
  if (swift_dynamicCast())
  {
    v20 = (*(v16 + 88))(v18, v15);
    if (MEMORY[0x277D04530] && v20 == *MEMORY[0x277D04530])
    {

      v6 = *(v0 + 184);
      v14 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v20 == *MEMORY[0x277D04538])
    {

      v6 = *(v0 + 184);
      v14 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v20 == *MEMORY[0x277D04540])
    {

      v6 = *(v0 + 184);
      v14 = 8;
      goto LABEL_29;
    }

    (*(v16 + 8))(v18, v15);
  }

  *(v0 + 192) = v6;
  v21 = v6;
  if (swift_dynamicCast())
  {

    v14 = *(v0 + 484);
    v6 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v6;
    v22 = sub_258F09E60();
    v23 = *(v22 - 8);
    v24 = *(v23 + 64) + 15;
    v25 = swift_task_alloc();
    v26 = v6;
    if (swift_dynamicCast())
    {

      (*(v23 + 8))(v25, v22);

      v6 = *(v0 + 200);
      v14 = 2;
    }

    else
    {

      *(v0 + 208) = v6;
      v27 = sub_258F09E10();
      v28 = *(v27 - 8);
      v29 = *(v28 + 64) + 15;
      v30 = swift_task_alloc();
      v31 = v6;
      if (swift_dynamicCast())
      {

        (*(v28 + 8))(v30, v27);

        v14 = 0;
        v6 = *(v0 + 208);
      }

      else
      {
        v32 = *(v0 + 264);
        v33 = *(v0 + 248);

        *(v0 + 216) = v6;
        v34 = v6;
        if (swift_dynamicCast())
        {
          v36 = *(v0 + 288);
          v35 = *(v0 + 296);
          v37 = *(v0 + 272);
          v39 = *(v0 + 256);
          v38 = *(v0 + 264);
          v40 = *(v0 + 248);
          v41 = *(v0 + 224);
          (*(*(v0 + 280) + 8))(v41, v37);

          v36(v41, *MEMORY[0x277D81770], v37);
          (*(v39 + 8))(v38, v40);

          goto LABEL_30;
        }

        v14 = 1;
      }
    }
  }

LABEL_29:

  v43 = *(v0 + 288);
  v42 = *(v0 + 296);
  v44 = *(v0 + 272);
  v45 = *(v0 + 280);
  v46 = *(v0 + 480);
  v47 = *(v0 + 224);
  v48 = *(v45 + 64) + 15;
  v49 = swift_task_alloc();
  sub_258DE403C();
  v50 = swift_allocError();
  *v51 = v14;
  (*(v45 + 8))(v47, v44);
  *v49 = v50;
  v43(v49, v46, v44);
  (*(v45 + 32))(v47, v49, v44);

LABEL_30:
  v52 = *(v0 + 264);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_258E68808()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 360);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);

  v3(v5, v6);

  v7 = *(v0 + 472);
  *(v0 + 176) = v7;
  v8 = (v0 + 176);
  v9 = sub_258F09E20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v14 = (*(v10 + 88))(v12, v9);
    if (MEMORY[0x277D81740] && v14 == *MEMORY[0x277D81740])
    {

      v7 = *v8;
      v15 = 3;
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v14 == *MEMORY[0x277D81748])
    {

      v7 = *v8;
      v15 = 4;
      goto LABEL_29;
    }

    (*(v10 + 8))(v12, v9);
  }

  *(v0 + 184) = v7;
  v16 = sub_258F0A1D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v20 = v7;
  if (swift_dynamicCast())
  {
    v21 = (*(v17 + 88))(v19, v16);
    if (MEMORY[0x277D04530] && v21 == *MEMORY[0x277D04530])
    {

      v7 = *(v0 + 184);
      v15 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v21 == *MEMORY[0x277D04538])
    {

      v7 = *(v0 + 184);
      v15 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v21 == *MEMORY[0x277D04540])
    {

      v7 = *(v0 + 184);
      v15 = 8;
      goto LABEL_29;
    }

    (*(v17 + 8))(v19, v16);
  }

  *(v0 + 192) = v7;
  v22 = v7;
  if (swift_dynamicCast())
  {

    v15 = *(v0 + 484);
    v7 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v7;
    v23 = sub_258F09E60();
    v24 = *(v23 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    v27 = v7;
    if (swift_dynamicCast())
    {

      (*(v24 + 8))(v26, v23);

      v7 = *(v0 + 200);
      v15 = 2;
    }

    else
    {

      *(v0 + 208) = v7;
      v28 = sub_258F09E10();
      v29 = *(v28 - 8);
      v30 = *(v29 + 64) + 15;
      v31 = swift_task_alloc();
      v32 = v7;
      if (swift_dynamicCast())
      {

        (*(v29 + 8))(v31, v28);

        v15 = 0;
        v7 = *(v0 + 208);
      }

      else
      {
        v33 = *(v0 + 264);
        v34 = *(v0 + 248);

        *(v0 + 216) = v7;
        v35 = v7;
        if (swift_dynamicCast())
        {
          v37 = *(v0 + 288);
          v36 = *(v0 + 296);
          v38 = *(v0 + 272);
          v40 = *(v0 + 256);
          v39 = *(v0 + 264);
          v41 = *(v0 + 248);
          v42 = *(v0 + 224);
          (*(*(v0 + 280) + 8))(v42, v38);

          v37(v42, *MEMORY[0x277D81770], v38);
          (*(v40 + 8))(v39, v41);

          goto LABEL_30;
        }

        v15 = 1;
      }
    }
  }

LABEL_29:

  v44 = *(v0 + 288);
  v43 = *(v0 + 296);
  v45 = *(v0 + 272);
  v46 = *(v0 + 280);
  v47 = *(v0 + 480);
  v48 = *(v0 + 224);
  v49 = *(v46 + 64) + 15;
  v50 = swift_task_alloc();
  sub_258DE403C();
  v51 = swift_allocError();
  *v52 = v15;
  (*(v46 + 8))(v48, v45);
  *v50 = v51;
  v44(v50, v47, v45);
  (*(v46 + 32))(v48, v50, v45);

LABEL_30:
  v53 = *(v0 + 264);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_258E68EB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    if (qword_280CC4A10 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_280CC4A18);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258E690A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_258F0A370();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E69168, 0, 0);
}

uint64_t sub_258E69168()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[9] = v2;
  if (qword_280CC4A10 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  v7 = __swift_project_value_buffer(v5, qword_280CC4A18);
  (*(v4 + 16))(v3, v7, v5);
  v8 = type metadata accessor for SiriDigestMetrics();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[2] = SiriDigestMetrics.init(defaults:logger:)(v6, v3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BC0, qword_258F11BA0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_258F09E40();
  v0[10] = v15;
  if (v15)
  {
    v16 = v0[5];
    v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v18 = swift_task_alloc();
    v0[11] = v18;
    v19 = sub_258F09E00();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v18, v16, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    v21 = *(MEMORY[0x277D81750] + 4);
    v22 = swift_task_alloc();
    v0[12] = v22;
    *v22 = v0;
    v22[1] = sub_258E694EC;

    return MEMORY[0x2821ED078](v2, v18);
  }

  else
  {
    v23 = v0[3];
    v24 = sub_258F09E50();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v2, 1, 1, v24);
    (*(v25 + 104))(v23, *MEMORY[0x277D81758], v24);
    v27 = v0[8];
    v26 = v0[9];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_258E694EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  sub_258DE2184(*(v2 + 88), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258E69760;
  }

  else
  {

    v6 = sub_258E69658;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_258E69658()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_258E69760()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_258E697D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_258F0A370();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E69898, 0, 0);
}

uint64_t sub_258E69898()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[9] = v2;
  if (qword_280CC4A10 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  v7 = __swift_project_value_buffer(v5, qword_280CC4A18);
  (*(v4 + 16))(v3, v7, v5);
  v8 = type metadata accessor for SiriSegmentCohortMetrics();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[2] = SiriSegmentCohortMetrics.init(defaults:logger:)(v6, v3);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BC8, &qword_258F11BB8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_258F09E40();
  v0[10] = v15;
  if (v15)
  {
    v16 = v0[5];
    v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v18 = swift_task_alloc();
    v0[11] = v18;
    v19 = sub_258F09E00();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v18, v16, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    v21 = *(MEMORY[0x277D81750] + 4);
    v22 = swift_task_alloc();
    v0[12] = v22;
    *v22 = v0;
    v22[1] = sub_258E69C1C;

    return MEMORY[0x2821ED078](v2, v18);
  }

  else
  {
    v23 = v0[3];
    v24 = sub_258F09E50();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v2, 1, 1, v24);
    (*(v25 + 104))(v23, *MEMORY[0x277D81758], v24);
    v27 = v0[8];
    v26 = v0[9];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_258E69C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  sub_258DE2184(*(v2 + 88), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v6 = sub_258E6A2E4;
  }

  else
  {

    v6 = sub_258E6A2E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

unint64_t sub_258E69DA4()
{
  result = qword_27F989BD0;
  if (!qword_27F989BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BD0);
  }

  return result;
}

unint64_t sub_258E69E00()
{
  result = qword_27F989BD8;
  if (!qword_27F989BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BD8);
  }

  return result;
}

unint64_t sub_258E69E58()
{
  result = qword_27F989BE0;
  if (!qword_27F989BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriMetricsWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriMetricsWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of MetricsExecutor.executeSiriDigestMetrics(defaults:pluginContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_258DE1DC4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MetricsExecutor.executeSiriSegmentCohortMetrics(defaults:pluginContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_258DEE37C;

  return v12(a1, a2, a3);
}

uint64_t sub_258E6A310(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E6A3AC, 0, 0);
}

uint64_t sub_258E6A3AC()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[5];
  if (v0[4])
  {
    v2 = v0[5];
    sub_258F0A0A0();
  }

  else
  {
    v3 = sub_258F09A20();
    (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  }

  v4 = v0[3];
  v0[6] = sub_258F0A050();
  v5 = sub_258F09DD0();
  v6 = *(MEMORY[0x277D04480] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_258E6A4F0;
  v8 = v0[5];

  return MEMORY[0x282159D80](v5, v4, 0xD000000000000011, 0x8000000258F1C4D0, v8);
}

uint64_t sub_258E6A4F0(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 64) = a1;

  sub_258E6A84C(v3);

  return MEMORY[0x2822009F8](sub_258E6A610, 0, 0);
}

uint64_t sub_258E6A610()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x259C9DF50]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    sub_258F0A700();

    v3 = v0[2];
  }

  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v8 = *(sub_258F0A190() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  v11 = objc_allocWithZone(v5);

  v12 = v7;
  v13 = sub_258F0A000();

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_258E6A84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ODDIExperimentationResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ODDIExperimentationResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ODDIExperimentationResults.experimentationResults.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ODDIExperimentationResults.init(eventStreamMetadata:conversationStreamMetadata:experimentationResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_258E6A9C0(uint64_t a1)
{
  v2[260] = v1;
  v2[259] = a1;
  v3 = sub_258F09F40();
  v2[261] = v3;
  v4 = *(v3 - 8);
  v2[262] = v4;
  v5 = *(v4 + 64) + 15;
  v2[263] = swift_task_alloc();
  v6 = sub_258F09F50();
  v2[264] = v6;
  v7 = *(v6 - 8);
  v2[265] = v7;
  v8 = *(v7 + 64) + 15;
  v2[266] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v10 = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[269] = v10;
  v11 = *(v10 + 64) + 15;
  v2[270] = swift_task_alloc();
  v2[271] = swift_task_alloc();
  v12 = type metadata accessor for EventMetadata(0);
  v2[272] = v12;
  v13 = *(v12 - 8);
  v2[273] = v13;
  v14 = *(v13 + 64) + 15;
  v2[274] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[275] = swift_task_alloc();
  v2[276] = swift_task_alloc();
  v2[277] = swift_task_alloc();
  v2[278] = swift_task_alloc();
  v2[279] = swift_task_alloc();
  v2[280] = swift_task_alloc();
  v16 = type metadata accessor for CommonDigestElements();
  v2[281] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[282] = swift_task_alloc();
  v18 = sub_258F09B00();
  v2[283] = v18;
  v19 = *(v18 - 8);
  v2[284] = v19;
  v20 = *(v19 + 64) + 15;
  v2[285] = swift_task_alloc();
  v21 = sub_258F09A20();
  v2[286] = v21;
  v22 = *(v21 - 8);
  v2[287] = v22;
  v23 = *(v22 + 64) + 15;
  v2[288] = swift_task_alloc();
  v2[289] = swift_task_alloc();
  v2[290] = swift_task_alloc();
  v2[291] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E6AD64, 0, 0);
}

uint64_t sub_258E6AD64()
{
  v1 = v0[260];
  v0[292] = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIExperimentationCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[260];

  v6 = *(v5 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_defaults);
  v7 = sub_258F0A4E0();
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDIExperimentationCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDIExperimentationCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v13 = v0[260];

  v0[293] = sub_258DE02E8();
  v0[294] = v14;
  v15 = sub_258F0A4E0();
  v16 = [v6 BOOLForKey_];

  v17 = v0[291];
  if (v16)
  {
    v18 = v0[291];
    sub_258F09A10();
  }

  else
  {
    v19 = v0[285];
    v20 = v0[284];
    v21 = v0[283];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[291];
  v23 = v0[260];
  v24 = sub_258F0A0E0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  v27 = sub_258F0A0B0();
  v0[295] = v27;

  v28 = sub_258DE04A0();
  v0[296] = v28;
  v29 = v28;

  v30 = swift_task_alloc();
  v0[297] = v30;
  *v30 = v0;
  v30[1] = sub_258E6B1DC;

  return sub_258E6F058(v29, v27);
}

uint64_t sub_258E6B1DC(uint64_t a1)
{
  v2 = *(*v1 + 2376);
  v3 = *(*v1 + 2360);
  v5 = *v1;
  *(*v1 + 2384) = a1;

  return MEMORY[0x2822009F8](sub_258E6B2FC, 0, 0);
}

void sub_258E6B2FC()
{
  v329 = v0;
  v1 = v0[298];
  v2 = v0[294];
  v3 = v0[293];
  v4 = v0[292];
  v5 = v0[260];
  sub_258F0A040();

  v6 = sub_258F0A350();
  v7 = sub_258F0A810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v6, v7, "#ODDIExperimentationCalculator: SQL query executed", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v9 = v315;
  v10 = *(v315 + 2320);
  v11 = *(v315 + 2312);
  v12 = *(v315 + 2280);
  v13 = *(v315 + 2272);
  v14 = *(v315 + 2264);

  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v252 = *(v13 + 8);
  v252(v12, v14);
  if ((sub_258F0A070() & 1) == 0)
  {
    v256 = 0;
    v257 = 0;
    v302 = MEMORY[0x277D84F90];
LABEL_420:
    v224 = *(v9 + 2336);
    v225 = *(v9 + 2080);

    v226 = sub_258F0A350();
    v227 = sub_258F0A810();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 134217984;
      *(v228 + 4) = v302[2];

      _os_log_impl(&dword_258DD8000, v226, v227, "#ODDIExperimentationCalculator: query yielded %ld results", v228, 0xCu);
      MEMORY[0x259C9EF40](v228, -1, -1);
    }

    else
    {
    }

    v229 = *(v315 + 2120);
    v230 = *(v315 + 2096);
    v313 = *(v315 + 2080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v231 = swift_allocObject();
    v232 = 0;
    *(v231 + 32) = v257;
    *(v231 + 40) = 0xD000000000000021;
    *(v231 + 48) = 0x8000000258F1C520;
    *(v231 + 56) = v256;
    *(v231 + 64) = 0xD00000000000001CLL;
    *(v231 + 72) = 0x8000000258F1C550;
    *(v231 + 80) = xmmword_258F11EE0;
    v326 = v231;
    *(v231 + 96) = 0x8000000258F1C570;
    v322 = *MEMORY[0x277D5D9E8];
    v317 = (v229 + 8);
    v319 = (v229 + 104);
    v307 = (v230 + 8);
    v310 = (v230 + 104);
    v304 = *MEMORY[0x277D5D9B8];
    do
    {
      v233 = *(v326 + v232 + 32);
      v234 = *(v326 + v232 + 40);
      v235 = *(v326 + v232 + 48);

      v236 = *(v315 + 2128);
      v237 = *(v315 + 2112);
      if (v233 < 1)
      {
        (*v319)(*(v315 + 2128), v322, *(v315 + 2112));
      }

      else
      {
        v238 = *(v315 + 2104);
        v239 = *(v315 + 2088);
        v240 = *(v315 + 2080);
        sub_258E2D0BC(v233, v234, v235);
        (*v319)(v236, v322, v237);
        v241 = *(v313 + 56);
        (*v310)(v238, v304, v239);
        sub_258F09F10();
        (*v307)(v238, v239);
      }

      (*v317)(*(v315 + 2128), *(v315 + 2112));

      v232 += 24;
    }

    while (v232 != 72);
    v242 = *(v315 + 2368);
    v277 = *(v315 + 2384);
    v279 = *(v315 + 2360);
    v243 = *(v315 + 2320);
    v281 = *(v315 + 2312);
    v283 = *(v315 + 2328);
    v244 = *(v315 + 2304);
    v245 = *(v315 + 2296);
    v246 = *(v315 + 2288);
    v247 = *(v315 + 2280);
    v248 = *(v315 + 2264);
    v286 = *(v315 + 2256);
    v289 = *(v315 + 2240);
    v291 = *(v315 + 2232);
    v293 = *(v315 + 2224);
    v296 = *(v315 + 2216);
    v298 = *(v315 + 2208);
    v300 = *(v315 + 2200);
    v305 = *(v315 + 2192);
    v308 = *(v315 + 2168);
    v311 = *(v315 + 2160);
    v314 = *(v315 + 2144);
    v318 = *(v315 + 2136);
    v320 = *(v315 + 2128);
    v323 = *(v315 + 2104);
    v249 = *(v315 + 2072);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258F0A0F0();
    sub_258F09AC0();
    sub_258F09BB0();
    v252(v247, v248);
    v327 = sub_258F09B60();
    v250 = *(v245 + 8);
    v250(v244, v246);

    v250(v281, v246);
    v250(v243, v246);
    v250(v283, v246);
    *v249 = MEMORY[0x277D84F90];
    v249[1] = v327;
    v249[2] = v302;

    v251 = *(v315 + 8);

    v251();
    return;
  }

  v256 = 0;
  v257 = 0;
  v316 = (v315 + 1104);
  v303 = (v315 + 1200);
  v306 = (v315 + 1072);
  v312 = (v315 + 1264);
  v299 = (v315 + 1424);
  v301 = (v315 + 1232);
  v255 = *(v315 + 2256);
  v297 = *(v315 + 2248);
  v309 = *(v315 + 2176);
  v254 = (*(v315 + 2184) + 56);
  v253 = *(v315 + 2152);
  v302 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = sub_258F0A060();
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v15;
    v17 = *(v9 + 2080) + *(v9 + 2336);
    v18 = sub_258F0A350();
    v19 = sub_258F0A810();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v328[0] = v21;
      *v20 = 136315138;
      v22 = sub_258F0A420();
      v24 = sub_258DE3018(v22, v23, v328);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_258DD8000, v18, v19, "#ODDIExperimentationCalculator row data: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x259C9EF40](v21, -1, -1);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v25 = *(v9 + 2080);
    v26 = sub_258E2A280(v16, *(v9 + 2312), 0xD00000000000002ELL, 0x8000000258F1C4F0);
    v28 = v26;
    if ((v27 & 0x10000) == 0)
    {
      break;
    }

LABEL_6:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_420;
    }
  }

  v294 = v26;
  if (v27)
  {
    if (__OFADD__(v257, 1))
    {
      goto LABEL_435;
    }

    ++v257;
  }

  v29 = *(v9 + 2080);
  sub_258E2BA60(v16, *(v9 + 2256));
  *(v9 + 1792) = 0xD000000000000011;
  *(v9 + 1800) = 0x8000000258F1A5C0;
  sub_258F0AA80();
  if (*(v16 + 16) && (v30 = sub_258E2EA2C(v9 + 56), (v31 & 1) != 0))
  {
    sub_258DE4090(*(v16 + 56) + 32 * v30, v9 + 816);
  }

  else
  {
    *(v9 + 816) = 0u;
    *(v9 + 832) = 0u;
  }

  sub_258E0F590(v9 + 56);
  if (*(v9 + 840))
  {
    if (swift_dynamicCast())
    {
      v32 = *(v9 + 2032);
      v33 = *(v9 + 2040);
      v34 = sub_258F0A4E0();

      v35 = v34;
      if ([v35 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN"])
      {
        v36 = 0;
      }

      else if ([v35 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ALLOCATED"])
      {
        v36 = 1;
      }

      else if ([v35 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ACTIVATED"])
      {
        v36 = 2;
      }

      else if ([v35 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_DEACTIVATED"])
      {
        v36 = 3;
      }

      else
      {
        v36 = 0;
      }

      v292 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    sub_258DE2184(v9 + 816, &qword_27F989868, &unk_258F12D70);
  }

  v36 = 0;
  v292 = 1;
LABEL_32:
  v37 = *(v9 + 2240);
  v38 = sub_258F09A70();
  v39 = *(v38 - 8);
  v324 = *(v39 + 56);
  v324(v37, 1, 1, v38);
  *(v9 + 1696) = 0xD000000000000015;
  *(v9 + 1704) = 0x8000000258F189D0;
  sub_258F0AA80();
  if (*(v16 + 16) && (v40 = sub_258E2EA2C(v9 + 176), (v41 & 1) != 0))
  {
    sub_258DE4090(*(v16 + 56) + 32 * v40, v9 + 912);
  }

  else
  {
    *(v9 + 912) = 0u;
    *(v9 + 928) = 0u;
  }

  sub_258E0F590(v9 + 176);
  if (*(v9 + 936))
  {
    if (swift_dynamicCast())
    {
      v42 = *(v9 + 2240);
      v43 = *(v9 + 2232);
      v44 = *(v9 + 1840);
      v45 = *(v9 + 1848);
      sub_258F09A30();

      sub_258DE2184(v42, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v43, v42, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258DE2184(v9 + 912, &qword_27F989868, &unk_258F12D70);
  }

  v46 = *(v9 + 2224);
  sub_258E3A540(*(v9 + 2240), v46);
  v47 = (*(v39 + 48))(v46, 1, v38);
  sub_258DE2184(v46, &qword_27F988730, &unk_258F0F8E0);
  if (v47 == 1)
  {
    v48 = *(v9 + 2080) + *(v9 + 2336);
    v49 = sub_258F0A350();
    v50 = sub_258F0A820();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_258DD8000, v49, v50, "observed NilDeviceAggregationId", v51, 2u);
      MEMORY[0x259C9EF40](v51, -1, -1);
    }

    if (__OFADD__(v256, 1))
    {
      goto LABEL_436;
    }

    ++v256;
  }

  v324(*(v9 + 2216), 1, 1, v38);
  *(v9 + 1600) = 0xD000000000000013;
  *(v9 + 1608) = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (*(v16 + 16) && (v52 = sub_258E2EA2C(v9 + 296), (v53 & 1) != 0))
  {
    sub_258DE4090(*(v16 + 56) + 32 * v52, v316);
  }

  else
  {
    *v316 = 0u;
    *(v315 + 1120) = 0u;
  }

  sub_258E0F590(v9 + 296);
  if (*(v9 + 1128))
  {
    if (swift_dynamicCast())
    {
      v54 = *(v9 + 2232);
      v55 = *(v9 + 2216);
      v56 = *(v9 + 1856);
      v57 = *(v9 + 1864);
      sub_258F09A30();

      sub_258DE2184(v55, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v54, v55, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258DE2184(v316, &qword_27F989868, &unk_258F12D70);
  }

  *(v9 + 1584) = 0xD000000000000029;
  *(v9 + 1592) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v16 + 16) && (v58 = sub_258E2EA2C(v9 + 416), (v59 & 1) != 0))
  {
    sub_258DE4090(*(v16 + 56) + 32 * v58, v312);
  }

  else
  {
    *v312 = 0u;
    *(v315 + 1280) = 0u;
  }

  sub_258E0F590(v9 + 416);
  if (*(v9 + 1288))
  {
    v60 = swift_dynamicCast();
    v61 = *(v315 + 2064);
    if (!v60)
    {
      v61 = 0;
    }

    v287 = v61;
    v62 = v60 ^ 1;
  }

  else
  {
    sub_258DE2184(v312, &qword_27F989868, &unk_258F12D70);
    v287 = 0;
    v62 = 1;
  }

  v284 = v62;
  *(v9 + 1536) = 0xD00000000000002BLL;
  *(v9 + 1544) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v16 + 16) && (v63 = sub_258E2EA2C(v9 + 536), (v64 & 1) != 0))
  {
    sub_258DE4090(*(v16 + 56) + 32 * v63, v9 + 848);
  }

  else
  {
    *(v9 + 848) = 0u;
    *(v9 + 864) = 0u;
  }

  sub_258E0F590(v9 + 536);
  v290 = v36;
  if (*(v9 + 872))
  {
    v65 = swift_dynamicCast();
    if (v65)
    {
      v66 = *(v315 + 2056);
    }

    else
    {
      v66 = 0;
    }

    v67 = v65 ^ 1;
  }

  else
  {
    sub_258DE2184(v9 + 848, &qword_27F989868, &unk_258F12D70);
    v66 = 0;
    v67 = 1;
  }

  v68 = *(v9 + 2320);
  v69 = *(v9 + 2240);
  v70 = *(v9 + 2216);
  v71 = *(v9 + 2192);
  v72 = *(v9 + 2080);
  sub_258E2BE88(v16, *(v9 + 2208));
  sub_258F09A60();
  v324(v71, 0, 1, v38);
  sub_258E3A540(v69, v71 + v309[5]);
  sub_258E3A540(v70, v71 + v309[6]);
  sub_258F099E0();
  if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v73 <= -1.0)
    {
      goto LABEL_432;
    }

    if (v73 >= 1.84467441e19)
    {
      goto LABEL_433;
    }

    if (!is_mul_ok(v73, 0x3E8uLL))
    {
      goto LABEL_434;
    }

    v74 = 1000 * v73;
    v75 = *(v315 + 2192);
    v76 = [objc_opt_self() sharedPreferences];
    v77 = [v76 longLivedIdentifierUploadingEnabled];

    v78 = v75 + v309[7];
    *v78 = v74;
    v79 = v315;
    *(v78 + 8) = 0;
    *(v75 + v309[8]) = v294;
    v80 = v75 + v309[9];
    *v80 = v287;
    *(v80 + 8) = v284;
    v81 = v75 + v309[10];
    *v81 = v66;
    *(v81 + 8) = v67;
    v82 = v75 + v309[11];
    *v82 = 3;
    *(v82 + 4) = 0;
    *(v75 + v309[12]) = v77 ^ 1;
    v83 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
    *(v315 + 1648) = 0xD000000000000015;
    *(v315 + 1656) = 0x8000000258F1BA40;
    sub_258F0AA80();
    if (*(v16 + 16))
    {
      v84 = sub_258E2EA2C(v315 + 656);
      if (v85)
      {
        sub_258DE4090(*(v16 + 56) + 32 * v84, v301);
      }

      else
      {
        *v301 = 0u;
        *(v315 + 1248) = 0u;
      }
    }

    else
    {
      *v301 = 0u;
      *(v315 + 1248) = 0u;
    }

    sub_258E0F590(v315 + 656);
    if (*(v315 + 1256))
    {
      if (swift_dynamicCast())
      {
        v86 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v315 + 1968), *(v315 + 1976));

        v83 = v86;
      }
    }

    else
    {
      sub_258DE2184(v301, &qword_27F989868, &unk_258F12D70);
    }

    *(v315 + 1776) = 0xD000000000000016;
    *(v315 + 1784) = 0x8000000258F1BA60;
    sub_258F0AA80();
    if (*(v16 + 16) && (v87 = sub_258E2EA2C(v315 + 776), (v88 & 1) != 0))
    {
      sub_258DE4090(*(v16 + 56) + 32 * v87, v315 + 976);
    }

    else
    {
      *(v315 + 976) = 0u;
      *(v315 + 992) = 0u;
    }

    sub_258E0F590(v315 + 776);
    v282 = v83;
    if (*(v315 + 1000))
    {
      if (swift_dynamicCast())
      {
        v89 = *(v315 + 1520);
        v90 = *(v315 + 1528);

        v91._countAndFlagsBits = v89;
        v91._object = v90;
        SiriReponseCategory.init(rawValue:)(v91);
        v92 = v328[0];
        if (LOBYTE(v328[0]) == 21)
        {
          v93 = *(v315 + 2336);
          v94 = *(v315 + 2080);

          v95 = sub_258F0A350();
          v96 = sub_258F0A800();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v328[0] = v98;
            *v97 = 136315138;
            v99 = sub_258DE3018(v89, v90, v328);

            *(v97 + 4) = v99;
            _os_log_impl(&dword_258DD8000, v95, v96, "Invalid response category found %s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v98);
            MEMORY[0x259C9EF40](v98, -1, -1);
            MEMORY[0x259C9EF40](v97, -1, -1);
          }

          else
          {
          }

          v321 = 0;
          v295 = 1;
          v79 = v315;
        }

        else
        {

          LOBYTE(v328[0]) = v92;
          v321 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(v328);
          v295 = 0;
        }

        goto LABEL_99;
      }
    }

    else
    {
      sub_258DE2184(v315 + 976, &qword_27F989868, &unk_258F12D70);
    }

    v100 = *(v315 + 2080) + *(v315 + 2336);
    v101 = sub_258F0A350();
    v102 = sub_258F0A800();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_258DD8000, v101, v102, "no response category found", v103, 2u);
      MEMORY[0x259C9EF40](v103, -1, -1);
    }

    v321 = 0;
    v295 = 1;
LABEL_99:
    *(v79 + 1744) = 0x6974756F725F6569;
    *(v79 + 1752) = 0xEA0000000000676ELL;
    sub_258F0AA80();
    if (*(v16 + 16) && (v104 = sub_258E2EA2C(v79 + 16), (v105 & 1) != 0))
    {
      sub_258DE4090(*(v16 + 56) + 32 * v104, v299);
    }

    else
    {
      *v299 = 0u;
      *(v315 + 1440) = 0u;
    }

    sub_258E0F590(v79 + 16);
    if (*(v79 + 1448))
    {
      if (swift_dynamicCast())
      {
        v106 = *(v79 + 2016);
        v107 = *(v79 + 2024);

        v108 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v106, v107);

        if (v108)
        {
        }

        else
        {
          v120 = *(v79 + 2336);
          v121 = *(v79 + 2080);

          v122 = sub_258F0A350();
          v123 = sub_258F0A800();

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v328[0] = v125;
            *v124 = 136315138;
            v126 = sub_258DE3018(v106, v107, v328);

            *(v124 + 4) = v126;
            _os_log_impl(&dword_258DD8000, v122, v123, "Invalid ieRouting found %s", v124, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v125);
            MEMORY[0x259C9EF40](v125, -1, -1);
            MEMORY[0x259C9EF40](v124, -1, -1);
          }

          else
          {
          }

          v108 = 0;
          v79 = v315;
        }

        goto LABEL_111;
      }
    }

    else
    {
      sub_258DE2184(v299, &qword_27F989868, &unk_258F12D70);
    }

    v109 = *(v79 + 2080) + *(v79 + 2336);
    v110 = sub_258F0A350();
    v111 = sub_258F0A800();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_258DD8000, v110, v111, "No ieRouting found", v112, 2u);
      MEMORY[0x259C9EF40](v112, -1, -1);
    }

    v108 = 0;
LABEL_111:
    *(v79 + 1728) = 0xD000000000000011;
    *(v79 + 1736) = 0x8000000258F1BA80;
    sub_258F0AA80();
    if (*(v16 + 16) && (v113 = sub_258E2EA2C(v79 + 736), (v114 & 1) != 0))
    {
      sub_258DE4090(*(v16 + 56) + 32 * v113, v79 + 944);
    }

    else
    {
      *(v79 + 944) = 0u;
      *(v79 + 960) = 0u;
    }

    sub_258E0F590(v79 + 736);
    v280 = v108;
    if (*(v79 + 968))
    {
      if (swift_dynamicCast())
      {
        v115 = *(v79 + 2000);
        v116 = *(v79 + 2008);
        v117 = sub_258F0A4E0();

        v118 = v117;
        if ([v118 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
        {
          v119 = 0;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
        {
          v119 = 1;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
        {
          v119 = 2;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
        {
          v119 = 3;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
        {
          v119 = 4;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
        {
          v119 = 5;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
        {
          v119 = 6;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
        {
          v119 = 7;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
        {
          v119 = 8;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
        {
          v119 = 9;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
        {
          v119 = 10;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
        {
          v119 = 11;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
        {
          v119 = 12;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
        {
          v119 = 13;
        }

        else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
        {
          v119 = 14;
        }

        else
        {
          if ([v118 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
          {
            v119 = 15;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
          {
            v119 = 16;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
          {
            v119 = 17;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
          {
            v119 = 18;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
          {
            v119 = 19;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
          {
            v119 = 20;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
          {
            v119 = 21;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
          {
            v119 = 22;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
          {
            v119 = 23;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
          {
            v119 = 24;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
          {
            v119 = 25;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
          {
            v119 = 26;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
          {
            v119 = 27;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
          {
            v119 = 28;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
          {
            v119 = 29;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
          {
            v119 = 30;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
          {
            v119 = 31;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
          {
            v119 = 32;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
          {
            v119 = 33;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
          {
            v119 = 34;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
          {
            v119 = 35;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
          {
            v119 = 36;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
          {
            v119 = 37;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
          {
            v119 = 38;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
          {
            v119 = 39;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
          {
            v119 = 40;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
          {
            v119 = 41;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
          {
            v119 = 42;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
          {
            v119 = 43;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
          {
            v119 = 44;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
          {
            v119 = 45;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
          {
            v119 = 46;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
          {
            v119 = 47;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
          {
            v119 = 48;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
          {
            v119 = 49;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
          {
            v119 = 50;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
          {
            v119 = 51;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
          {
            v119 = 52;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
          {
            v119 = 53;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
          {
            v119 = 54;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
          {
            v119 = 55;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
          {
            v119 = 56;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
          {
            v119 = 57;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
          {
            v119 = 58;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
          {
            v119 = 59;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
          {
            v119 = 60;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
          {
            v119 = 61;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
          {
            v119 = 62;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
          {
            v119 = 63;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
          {
            v119 = 64;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
          {
            v119 = 65;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
          {
            v119 = 66;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
          {
            v119 = 67;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
          {
            v119 = 68;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
          {
            v119 = 69;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
          {
            v119 = 70;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
          {
            v119 = 71;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
          {
            v119 = 72;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
          {
            v119 = 73;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
          {
            v119 = 74;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
          {
            v119 = 75;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
          {
            v119 = 76;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
          {
            v119 = 77;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
          {
            v119 = 78;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
          {
            v119 = 79;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
          {
            v119 = 80;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
          {
            v119 = 81;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
          {
            v119 = 82;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
          {
            v119 = 83;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
          {
            v119 = 84;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
          {
            v119 = 85;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
          {
            v119 = 87;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
          {
            v119 = 88;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
          {
            v119 = 89;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
          {
            v119 = 90;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
          {
            v119 = 91;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
          {
            v119 = 92;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
          {
            v119 = 93;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
          {
            v119 = 94;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
          {
            v119 = 95;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
          {
            v119 = 96;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
          {
            v119 = 97;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
          {
            v119 = 98;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
          {
            v119 = 99;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
          {
            v119 = 100;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
          {
            v119 = 101;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
          {
            v119 = 102;
          }

          else if ([v118 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
          {
            v119 = 103;
          }

          else
          {
            v119 = 0;
          }

          v79 = v315;
        }

        v288 = v119;

        v285 = 0;
        goto LABEL_334;
      }
    }

    else
    {
      sub_258DE2184(v79 + 944, &qword_27F989868, &unk_258F12D70);
    }

    v288 = 0;
    v285 = 1;
LABEL_334:
    v127 = *(v79 + 2192);
    v128 = *(v79 + 2176);
    v129 = *(v79 + 2144);
    v130 = *(v79 + 2136);
    v131 = type metadata accessor for DeviceExperimentMetricsBuilderImpl(0);
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    v134 = sub_258E3C08C();
    sub_258E5E344(v127, v129, type metadata accessor for EventMetadata);
    (*v254)(v129, 0, 1, v128);
    sub_258E2EAD8(v129, v130, &qword_27F9894E0, &unk_258F106A0);
    v135 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
    swift_beginAccess();
    sub_258E2EA70(v130, v134 + v135, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    v136 = v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
    *v136 = 2;
    *(v136 + 4) = 0;
    strcpy((v79 + 1632), "experiment_id");
    *(v79 + 1646) = -4864;
    sub_258F0AA80();
    if (*(v16 + 16))
    {
      v137 = sub_258E2EA2C(v79 + 696);
      v138 = v255;
      if (v139)
      {
        sub_258DE4090(*(v16 + 56) + 32 * v137, v306);
      }

      else
      {
        *v306 = 0u;
        *(v315 + 1088) = 0u;
      }
    }

    else
    {
      *v306 = 0u;
      *(v315 + 1088) = 0u;
      v138 = v255;
    }

    sub_258E0F590(v79 + 696);
    if (*(v79 + 1096))
    {
      v140 = swift_dynamicCast();
      v141 = *(v79 + 1984);
      v142 = *(v79 + 1992);
      if (!v140)
      {
        v141 = 0;
        v142 = 0;
      }
    }

    else
    {
      sub_258DE2184(v306, &qword_27F989868, &unk_258F12D70);
      v141 = 0;
      v142 = 0;
    }

    v143 = *(v79 + 2232);
    v144 = *(v79 + 2208);
    v145 = (v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
    v146 = *(v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);
    *v145 = v141;
    v145[1] = v142;

    sub_258E3A540(v144, v143);
    v147 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
    swift_beginAccess();
    sub_258E2EA70(v143, v134 + v147, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    strcpy((v315 + 1552), "deployment_id");
    *(v315 + 1566) = -4864;
    sub_258F0AA80();
    if (*(v16 + 16) && (v148 = sub_258E2EA2C(v315 + 616), (v149 & 1) != 0))
    {
      sub_258DE4090(*(v16 + 56) + 32 * v148, v303);
    }

    else
    {
      *v303 = 0u;
      *(v315 + 1216) = 0u;
    }

    sub_258E0F590(v315 + 616);
    if (*(v315 + 1224))
    {
      v150 = swift_dynamicCast();
      v151 = *(v315 + 2048);
      if (!v150)
      {
        v151 = 0;
      }

      v152 = v150 ^ 1;
    }

    else
    {
      sub_258DE2184(v303, &qword_27F989868, &unk_258F12D70);
      v151 = 0;
      v152 = 1;
    }

    v153 = v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
    *v153 = v151;
    *(v153 + 8) = v152;
    *(v315 + 1680) = 0x745F656369766564;
    *(v315 + 1688) = 0xEB00000000657079;
    sub_258F0AA80();
    sub_258E262F8(v315 + 576, v16, (v315 + 1296));
    sub_258E0F590(v315 + 576);
    if (*(v315 + 1320))
    {
      v154 = swift_dynamicCast();
      v155 = *(v315 + 1952);
      v156 = *(v315 + 1960);
      if (!v154)
      {
        v155 = 0;
        v156 = 0;
      }
    }

    else
    {
      sub_258DE2184(v315 + 1296, &qword_27F989868, &unk_258F12D70);
      v155 = 0;
      v156 = 0;
    }

    v157 = (v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
    v158 = *(v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);
    *v157 = v155;
    v157[1] = v156;

    v159 = *(v138 + 44);
    v160 = v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
    *v160 = *(v138 + 40);
    *(v160 + 4) = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894F0, &qword_258F11690);
    v161 = type metadata accessor for ExperimentDigest(0);
    v162 = *(*(v161 - 1) + 72);
    v163 = (*(*(v161 - 1) + 80) + 32) & ~*(*(v161 - 1) + 80);
    v325 = swift_allocObject();
    *(v325 + 16) = xmmword_258F0B820;
    *(v315 + 1504) = 0x5F746375646F7270;
    *(v315 + 1512) = 0xEA00000000006469;
    sub_258F0AA80();
    sub_258E262F8(v315 + 496, v16, (v315 + 1392));
    sub_258E0F590(v315 + 496);
    if (*(v315 + 1416))
    {
      v164 = swift_dynamicCast();
      if (v164)
      {
        v165 = *(v315 + 1936);
      }

      else
      {
        v165 = 0;
      }

      if (v164)
      {
        v166 = *(v315 + 1944);
      }

      else
      {
        v166 = 0;
      }

      v276 = v166;
      v278 = v165;
    }

    else
    {
      sub_258DE2184(v315 + 1392, &qword_27F989868, &unk_258F12D70);
      v276 = 0;
      v278 = 0;
    }

    strcpy((v315 + 1824), "system_build");
    *(v315 + 1837) = 0;
    *(v315 + 1838) = -5120;
    sub_258F0AA80();
    sub_258E262F8(v315 + 456, v16, (v315 + 1360));
    sub_258E0F590(v315 + 456);
    if (*(v315 + 1384))
    {
      v167 = swift_dynamicCast();
      if (v167)
      {
        v168 = *(v315 + 1920);
      }

      else
      {
        v168 = 0;
      }

      if (v167)
      {
        v169 = *(v315 + 1928);
      }

      else
      {
        v169 = 0;
      }

      v274 = v169;
      v275 = v168;
    }

    else
    {
      sub_258DE2184(v315 + 1360, &qword_27F989868, &unk_258F12D70);
      v274 = 0;
      v275 = 0;
    }

    v273 = *(v138 + 8);
    v272 = *(v138 + 12);
    v271 = **(v315 + 2256);
    v270 = *(v138 + 4);
    *(v315 + 1568) = 0xD000000000000012;
    *(v315 + 1576) = 0x8000000258F1A600;
    sub_258F0AA80();
    sub_258E262F8(v315 + 376, v16, (v315 + 1328));
    sub_258E0F590(v315 + 376);
    if (*(v315 + 1352))
    {
      v170 = swift_dynamicCast();
      if (v170)
      {
        v171 = *(v315 + 1904);
      }

      else
      {
        v171 = 0;
      }

      if (v170)
      {
        v172 = *(v315 + 1912);
      }

      else
      {
        v172 = 0;
      }

      v268 = v172;
      v269 = v171;
    }

    else
    {
      sub_258DE2184(v315 + 1328, &qword_27F989868, &unk_258F12D70);
      v268 = 0;
      v269 = 0;
    }

    *(v315 + 1616) = 0xD000000000000013;
    *(v315 + 1624) = 0x8000000258F1A620;
    sub_258F0AA80();
    sub_258E262F8(v315 + 336, v16, (v315 + 1168));
    sub_258E0F590(v315 + 336);
    if (*(v315 + 1192))
    {
      v173 = swift_dynamicCast();
      v174 = *(v315 + 1888);
      if (!v173)
      {
        v174 = 0;
      }

      v267 = v174;
      if (v173)
      {
        v175 = *(v315 + 1896);
      }

      else
      {
        v175 = 0;
      }

      v265 = v175;
    }

    else
    {
      sub_258DE2184(v315 + 1168, &qword_27F989868, &unk_258F12D70);
      v267 = 0;
      v265 = 0;
    }

    v264 = *(v138 + 16);
    v262 = *(v138 + 24);
    v263 = *(v138 + 20);
    v261 = *(v138 + 28);
    v176 = *(v138 + 32);
    *(v315 + 1664) = 0x616D6F645F627573;
    *(v315 + 1672) = 0xEA00000000006E69;
    v266 = v176;
    v177 = v176;
    sub_258F0AA80();
    sub_258E262F8(v315 + 256, v16, (v315 + 1136));
    sub_258E0F590(v315 + 256);
    if (*(v315 + 1160))
    {
      v178 = swift_dynamicCast();
      v179 = *(v315 + 1872);
      if (!v178)
      {
        v179 = 0;
      }

      v260 = v179;
      if (v178)
      {
        v180 = *(v315 + 1880);
      }

      else
      {
        v180 = 0;
      }
    }

    else
    {
      sub_258DE2184(v315 + 1136, &qword_27F989868, &unk_258F12D70);
      v260 = 0;
      v180 = 0;
    }

    sub_258E3A540(*(v315 + 2256) + *(v297 + 40), *(v315 + 2200));
    *(v315 + 1712) = 0xD00000000000001BLL;
    *(v315 + 1720) = 0x8000000258F1BAA0;
    sub_258F0AA80();
    sub_258E262F8(v315 + 216, v16, (v315 + 1040));
    sub_258E0F590(v315 + 216);
    if (*(v315 + 1064))
    {
      v181 = swift_dynamicCast();
      v182 = *(v315 + 2400);
      if (!v181)
      {
        v182 = 2;
      }
    }

    else
    {
      sub_258DE2184(v315 + 1040, &qword_27F989868, &unk_258F12D70);
      v182 = 2;
    }

    v259 = v182;
    *(v315 + 1760) = 0x746E635F6E727574;
    *(v315 + 1768) = 0xE800000000000000;
    sub_258F0AA80();
    sub_258E262F8(v315 + 136, v16, (v315 + 1008));
    sub_258E0F590(v315 + 136);
    if (*(v315 + 1032))
    {
      v183 = swift_dynamicCast();
      v184 = *(v315 + 2392);
      if (!v183)
      {
        v184 = 0;
      }

      v258 = v184;
      v185 = v183 ^ 1;
    }

    else
    {
      sub_258DE2184(v315 + 1008, &qword_27F989868, &unk_258F12D70);
      v258 = 0;
      v185 = 1;
    }

    v186 = v325 + v163;
    strcpy((v315 + 1808), "user_turn_cnt");
    *(v315 + 1822) = -4864;
    sub_258F0AA80();
    sub_258E262F8(v315 + 96, v16, (v315 + 880));

    sub_258E0F590(v315 + 96);
    if (*(v315 + 904))
    {
      v187 = swift_dynamicCast();
      v188 = v315;
      if (v187)
      {
        v189 = *(v315 + 2396);
      }

      else
      {
        v189 = 0;
      }

      v190 = v187 ^ 1;
    }

    else
    {
      sub_258DE2184(v315 + 880, &qword_27F989868, &unk_258F12D70);
      v188 = v315;
      v189 = 0;
      v190 = 1;
    }

    v191 = *(v188[282] + *(v297 + 44));
    *v186 = v278;
    *(v186 + 8) = v276;
    *(v186 + 16) = v275;
    *(v186 + 24) = v274;
    *(v186 + 32) = v273;
    *(v186 + 36) = v272;
    *(v186 + 40) = v271;
    *(v186 + 44) = v270;
    *(v186 + 48) = v269;
    *(v186 + 56) = v268;
    *(v186 + 64) = v267;
    *(v186 + 72) = v265;
    *(v186 + 80) = v264;
    *(v186 + 84) = v263;
    *(v186 + 88) = v262;
    *(v186 + 92) = v261;
    *(v186 + 112) = v260;
    *(v186 + 120) = v180;
    *(v186 + 128) = v321;
    *(v186 + 132) = v295;
    v192 = v188[275];
    *(v186 + 136) = v290;
    v193 = v188[271];
    v194 = v188[270];
    *(v186 + 96) = v266;
    *(v186 + 104) = v282;
    *(v186 + 140) = v292;
    *(v186 + 141) = 514;
    sub_258E2EAD8(v192, v186 + v161[19], &qword_27F988730, &unk_258F0F8E0);
    *(v186 + v161[20]) = v259;
    *(v186 + v161[21]) = v280;
    v195 = v186 + v161[22];
    *v195 = v288;
    *(v195 + 4) = v285;
    v196 = v186 + v161[23];
    *v196 = v258;
    *(v196 + 4) = v185;
    v197 = v186 + v161[24];
    *v197 = v189;
    *(v197 + 4) = v190;
    v198 = v186 + v161[25];
    *v198 = 0;
    *(v198 + 4) = 1;
    v199 = v186 + v161[26];
    *v199 = 0;
    *(v199 + 4) = 1;
    v200 = v186 + v161[27];
    *v200 = 0;
    *(v200 + 4) = 1;
    v201 = v186 + v161[28];
    *v201 = 0;
    *(v201 + 4) = 1;
    v202 = v186 + v161[29];
    *v202 = 0;
    *(v202 + 4) = 1;
    v203 = v186 + v161[30];
    *v203 = 0;
    *(v203 + 4) = 1;
    v204 = v186 + v161[31];
    *v204 = 0;
    *(v204 + 4) = 1;
    v205 = v186 + v161[32];
    *v205 = 0;
    *(v205 + 4) = 1;
    v206 = v186 + v161[33];
    *v206 = 0;
    *(v206 + 4) = 1;
    v207 = v186 + v161[34];
    *v207 = 0;
    *(v207 + 4) = 1;
    v208 = v186 + v161[35];
    *v208 = 0;
    *(v208 + 4) = 1;
    v209 = v186 + v161[36];
    *v209 = 0;
    *(v209 + 4) = 1;
    v210 = v186 + v161[37];
    *v210 = 1;
    *(v210 + 8) = 0u;
    *(v210 + 24) = 0u;
    *(v186 + v161[38]) = v191;
    v211 = *(v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);
    *(v134 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = v325;

    v212 = v282;

    sub_258E3BDA4(v193);

    sub_258E5E344(v193, v194, type metadata accessor for DeviceExperimentMetrics);
    v213 = v302;
    v214 = v212;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v213 = sub_258DE26CC(0, v302[2] + 1, 1, v302);
    }

    v216 = v213[2];
    v215 = v213[3];
    if (v216 >= v215 >> 1)
    {
      v302 = sub_258DE26CC(v215 > 1, v216 + 1, 1, v213);
    }

    else
    {
      v302 = v213;
    }

    v9 = v315;
    v217 = *(v315 + 2256);
    v218 = *(v315 + 2240);
    v219 = *(v315 + 2216);
    v220 = *(v315 + 2208);
    v221 = *(v315 + 2192);
    v222 = *(v315 + 2168);
    v223 = *(v315 + 2160);

    sub_258E5E3AC(v222, type metadata accessor for DeviceExperimentMetrics);
    sub_258E5E3AC(v221, type metadata accessor for EventMetadata);
    sub_258DE2184(v220, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v219, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v218, &qword_27F988730, &unk_258F0F8E0);
    sub_258E5E3AC(v217, type metadata accessor for CommonDigestElements);
    v302[2] = v216 + 1;
    sub_258E2EB40(v223, v302 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v216);
    goto LABEL_6;
  }

  __break(1u);
LABEL_432:
  __break(1u);
LABEL_433:
  __break(1u);
LABEL_434:
  __break(1u);
LABEL_435:
  __break(1u);
LABEL_436:
  __break(1u);
}