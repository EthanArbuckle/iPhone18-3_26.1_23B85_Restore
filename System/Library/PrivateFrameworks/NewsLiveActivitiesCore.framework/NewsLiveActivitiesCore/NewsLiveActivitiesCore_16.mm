BOOL _s22NewsLiveActivitiesCore32NationalElectionStaticAttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v117 = *(v4 - 8);
  v118 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v114 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v115 = &v113 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD998);
  MEMORY[0x28223BE20](v116, v10);
  v119 = &v113 - v11;
  v120 = a2;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = *a2;
  v16 = a2[1];
  v19 = a2[2];
  v18 = a2[3];

  if (!sub_219F75C08(v12, v17))
  {
    goto LABEL_20;
  }

  if (v13 == v16 && v14 == v19)
  {

    if (v15 != v18)
    {
      return 0;
    }
  }

  else
  {
    v20 = sub_21A0E6C5C();

    result = 0;
    if ((v20 & 1) == 0 || v15 != v18)
    {
      return result;
    }
  }

  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v27 = v120[4];
  v26 = v120[5];
  v29 = v120[6];
  v28 = v120[7];

  if (!sub_219F75C08(v22, v27))
  {
    goto LABEL_20;
  }

  if (v23 == v26 && v24 == v29)
  {

    if (v25 != v28)
    {
      return 0;
    }
  }

  else
  {
    v30 = sub_21A0E6C5C();

    result = 0;
    if ((v30 & 1) == 0 || v25 != v28)
    {
      return result;
    }
  }

  v31 = *(a1 + 64);
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v34 = *(a1 + 88);
  v36 = v120[8];
  v35 = v120[9];
  v38 = v120[10];
  v37 = v120[11];

  if (!sub_219F75C08(v31, v36))
  {
LABEL_20:

    return 0;
  }

  if (v32 == v35 && v33 == v38)
  {

    if (v34 != v37)
    {
      return 0;
    }

LABEL_25:
    v40 = *(a1 + 104);
    v41 = *(a1 + 112);
    v42 = *(a1 + 120);
    v43 = *(a1 + 128);
    v44 = *(a1 + 129);
    *&v143 = *(a1 + 96);
    *(&v143 + 1) = v40;
    *&v144 = v41;
    *(&v144 + 1) = v42;
    LOBYTE(v145) = v43;
    *(&v145 + 1) = v44;
    v45 = v120;
    v46 = v120[13];
    v47 = v120[14];
    v48 = v120[15];
    v49 = *(v120 + 128);
    v50 = *(v120 + 129);
    *&v172 = v120[12];
    *(&v172 + 1) = v46;
    *&v173 = v47;
    *(&v173 + 1) = v48;
    LOBYTE(v174) = v49;
    *(&v174 + 1) = v50;

    sub_219F79C1C();

    sub_219F79C1C();
    v51 = _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(&v143, &v172);

    sub_219F79CD8();

    sub_219F79CD8();
    if (!v51)
    {
      return 0;
    }

    v52 = type metadata accessor for NationalElectionTheme();
    v53 = v52[8];
    v54 = *(v116 + 48);
    v55 = v119;
    sub_219F45500(a1 + v53, v119, &qword_27CCD9628);
    sub_219F45500(v45 + v53, v55 + v54, &qword_27CCD9628);
    v56 = v118;
    v57 = *(v117 + 48);
    if (v57(v55, 1, v118) == 1)
    {
      if (v57(v55 + v54, 1, v56) == 1)
      {
        sub_219F6409C(v55, &qword_27CCD9628);
        goto LABEL_34;
      }
    }

    else
    {
      v58 = v115;
      sub_219F45500(v55, v115, &qword_27CCD9628);
      if (v57(v55 + v54, 1, v56) != 1)
      {
        v61 = v55 + v54;
        v62 = v114;
        sub_219F88A5C(v61, v114);
        v63 = static ActivityMinimalAppearanceTheme.== infix(_:_:)(v58, v62);
        sub_21A0A755C(v62, type metadata accessor for ActivityMinimalAppearanceTheme);
        sub_21A0A755C(v58, type metadata accessor for ActivityMinimalAppearanceTheme);
        sub_219F6409C(v55, &qword_27CCD9628);
        if ((v63 & 1) == 0)
        {
          return 0;
        }

LABEL_34:
        v64 = v52[9];
        v65 = (a1 + v64);
        v66 = *(a1 + v64 + 48);
        v67 = ~*(a1 + v64 + 48);
        v68 = *(a1 + v64 + 64) | (*(a1 + v64 + 68) << 32);
        v69 = (v45 + v64);
        v70 = *(v45 + v64 + 48);
        v71 = *(v45 + v64 + 64) | (*(v45 + v64 + 68) << 32);
        if ((v67 & 0xFFFFFFFE) != 0 || (v68 & 0xFE00000000) != 0x200000000)
        {
          v72 = *(v65 + 7);
          v73 = v65[1];
          v143 = *v65;
          v144 = v73;
          v145 = v65[2];
          *&v146 = v66;
          *(&v146 + 1) = v72;
          v147[4] = BYTE4(v68);
          *v147 = v68;
          if ((~v70 & 0xFFFFFFFE) == 0 && (v71 & 0xFE00000000) == 0x200000000)
          {
            return 0;
          }

          v74 = v69[1];
          v172 = *v69;
          v173 = v74;
          v174 = v69[2];
          v175 = v70;
          LODWORD(v176) = v71;
          BYTE4(v176) = BYTE4(v71);
          if ((_s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(&v143, &v172) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if ((~v70 & 0xFFFFFFFE) != 0 || (v71 & 0xFE00000000) != 0x200000000)
          {
            return result;
          }
        }

        v75 = (a1 + v52[10]);
        v76 = v75[1];
        v77 = v75[3];
        v155 = v75[2];
        v156 = v77;
        v157 = v75[4];
        v158 = *(v75 + 10);
        v78 = v75[1];
        v154[0] = *v75;
        v154[1] = v78;
        v79 = v120 + v52[10];
        v80 = *(v79 + 1);
        v159[0] = *v79;
        v159[1] = v80;
        v81 = *(v79 + 4);
        v160 = *(v79 + 3);
        v161 = v81;
        v159[2] = *(v79 + 2);
        v137 = v154[0];
        v138 = v76;
        v162 = *(v79 + 10);
        v139 = v155;
        v82 = v156;
        v83 = v157;
        v132[0] = *(v75 + 72);
        v85 = (~v160 & 0xFFFFFFFE) == 0 && (v81 & 0xFE00000000) == 0x200000000;
        if ((~v156 & 0xFFFFFFFE) != 0 || (v157 & 0xFE00000000) != 0x200000000)
        {
          if (!v85)
          {
            v91 = *(v79 + 1);
            v143 = *v79;
            v144 = v91;
            v145 = *(v79 + 2);
            v146 = v160;
            *v147 = v81;
            *&v147[8] = *(v79 + 72);
            v172 = v143;
            v173 = v91;
            v174 = v145;
            v175 = v160;
            v177 = *&v147[16];
            v176 = *v147;
            v92 = *v75;
            v93 = v75[2];
            v169[1] = v75[1];
            v169[2] = v93;
            v169[0] = v92;
            v171 = *(v75 + 72);
            v169[3] = v156;
            v170 = v157;
            sub_219F45500(v154, &v163, &qword_27CCDAB00);
            sub_219F45500(v159, &v163, &qword_27CCDAB00);
            v94 = sub_21A0D99E0(v169, &v172);
            sub_219F6409C(&v143, &qword_27CCDAB00);
            v163 = v137;
            v164 = v138;
            v165 = v139;
            v166 = v82;
            v167 = v83;
            v168 = v132[0];
            sub_219F6409C(&v163, &qword_27CCDAB00);
            if ((v94 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_55;
          }
        }

        else if (v85)
        {
          v86 = v75[1];
          v143 = *v75;
          v144 = v86;
          v145 = v75[2];
          v146 = v156;
          *v147 = v157;
          *&v147[8] = *(v75 + 72);
          sub_219F45500(v154, &v172, &qword_27CCDAB00);
          sub_219F45500(v159, &v172, &qword_27CCDAB00);
          sub_219F6409C(&v143, &qword_27CCDAB00);
LABEL_55:
          v95 = (a1 + v52[11]);
          v96 = v95[1];
          v97 = v95[3];
          v133 = v95[2];
          v134 = v97;
          v135 = v95[4];
          v136 = *(v95 + 10);
          v98 = v95[1];
          v132[0] = *v95;
          v132[1] = v98;
          v99 = v120 + v52[11];
          v100 = *(v99 + 1);
          v137 = *v99;
          v138 = v100;
          v101 = *(v99 + 4);
          v140 = *(v99 + 3);
          v141 = v101;
          v139 = *(v99 + 2);
          v129 = v132[0];
          v130 = v96;
          v142 = *(v99 + 10);
          v131 = v133;
          v102 = v134;
          v103 = v135;
          v128 = *(v95 + 72);
          v105 = (~v140 & 0xFFFFFFFE) == 0 && (v101 & 0xFE00000000) == 0x200000000;
          if ((~v134 & 0xFFFFFFFE) == 0 && (v135 & 0xFE00000000) == 0x200000000)
          {
            if (v105)
            {
              v106 = v95[1];
              v143 = *v95;
              v144 = v106;
              v145 = v95[2];
              v146 = v134;
              *v147 = v135;
              *&v147[8] = *(v95 + 72);
              sub_219F45500(v132, &v163, &qword_27CCDAB00);
              sub_219F45500(&v137, &v163, &qword_27CCDAB00);
              sub_219F6409C(&v143, &qword_27CCDAB00);
              return 1;
            }

            goto LABEL_66;
          }

          if (v105)
          {
LABEL_66:
            v107 = v95[1];
            v143 = *v95;
            v144 = v107;
            v145 = v95[2];
            *&v147[8] = *(v95 + 72);
            v108 = *(v99 + 1);
            v148 = *v99;
            v146 = v134;
            v149 = v108;
            v150 = *(v99 + 2);
            *v147 = v135;
            v151 = v140;
            v152 = v101;
            v153 = *(v99 + 72);
            sub_219F45500(v132, &v163, &qword_27CCDAB00);
            v89 = &v137;
            v90 = &v163;
            goto LABEL_67;
          }

          v109 = *(v99 + 1);
          v124[0] = *v99;
          v124[1] = v109;
          v125 = *(v99 + 2);
          v126 = v140;
          *&v127[0] = v101;
          *(v127 + 8) = *(v99 + 72);
          v143 = v124[0];
          v144 = v109;
          v145 = v125;
          v146 = v140;
          *&v147[16] = *&v127[1];
          *v147 = v127[0];
          v110 = *v95;
          v111 = v95[2];
          v164 = v95[1];
          v165 = v111;
          v163 = v110;
          v168 = *(v95 + 72);
          v166 = v134;
          v167 = v135;
          sub_219F45500(v132, v121, &qword_27CCDAB00);
          sub_219F45500(&v137, v121, &qword_27CCDAB00);
          v112 = sub_21A0D99E0(&v163, &v143);
          sub_219F6409C(v124, &qword_27CCDAB00);
          v121[0] = v129;
          v121[1] = v130;
          v121[2] = v131;
          v121[3] = v102;
          v122 = v103;
          v123 = v128;
          sub_219F6409C(v121, &qword_27CCDAB00);
          return (v112 & 1) != 0;
        }

        v87 = v75[1];
        v143 = *v75;
        v144 = v87;
        v145 = v75[2];
        *&v147[8] = *(v75 + 72);
        v88 = *(v79 + 1);
        v148 = *v79;
        v146 = v156;
        v149 = v88;
        v150 = *(v79 + 2);
        *v147 = v157;
        v151 = v160;
        v152 = v81;
        v153 = *(v79 + 72);
        sub_219F45500(v154, &v172, &qword_27CCDAB00);
        v89 = v159;
        v90 = &v172;
LABEL_67:
        sub_219F45500(v89, v90, &qword_27CCDAB00);
        v59 = &unk_27CCDD9A0;
        v60 = &v143;
        goto LABEL_32;
      }

      sub_21A0A755C(v58, type metadata accessor for ActivityMinimalAppearanceTheme);
    }

    v59 = &qword_27CCDD998;
    v60 = v55;
LABEL_32:
    sub_219F6409C(v60, v59);
    return 0;
  }

  v39 = sub_21A0E6C5C();

  result = 0;
  if ((v39 & 1) != 0 && v34 == v37)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_21A0A726C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0A72DC()
{
  result = qword_27CCDD928;
  if (!qword_27CCDD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD928);
  }

  return result;
}

unint64_t sub_21A0A7330()
{
  result = qword_27CCDD930;
  if (!qword_27CCDD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD930);
  }

  return result;
}

unint64_t sub_21A0A7384()
{
  result = qword_27CCDD938;
  if (!qword_27CCDD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD938);
  }

  return result;
}

unint64_t sub_21A0A73D8()
{
  result = qword_27CCDD958;
  if (!qword_27CCDD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD958);
  }

  return result;
}

unint64_t sub_21A0A742C()
{
  result = qword_27CCDD960;
  if (!qword_27CCDD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD960);
  }

  return result;
}

uint64_t sub_21A0A7480(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBAD0);
    sub_219F81E1C();
    sub_219F81DC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A0A74F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionTheme();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A755C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A0A7604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivityLinearGradient.UnitPoint.Named(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityLinearGradient.UnitPoint.Named(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A0A77C8()
{
  result = qword_27CCDD980;
  if (!qword_27CCDD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD980);
  }

  return result;
}

unint64_t sub_21A0A7820()
{
  result = qword_27CCDD988;
  if (!qword_27CCDD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD988);
  }

  return result;
}

unint64_t sub_21A0A7878()
{
  result = qword_27CCDD990;
  if (!qword_27CCDD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD990);
  }

  return result;
}

uint64_t sub_21A0A78CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646973657270 && a2 == 0xE900000000000074;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616E6573 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573756F68 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614272656E6E6977 && a2 == 0xEB00000000656764 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x546C616D696E696DLL && a2 == 0xEC000000656D6568 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54656E696C79656BLL && a2 == 0xEB00000000746E69 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEE00746E6954646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10B010 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_21A0A7BC4()
{
  sub_219F43FBC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21A0A7C70()
{
  result = type metadata accessor for NationalElectionUpdate.Hero(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A0A7CEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NationalElectionUpdate(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0A89A8(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A0A8A0C(v15, v11);
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
    sub_21A0E626C();
    v27 = v8;
    v16 = &v11[*(v8 + 28)];
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *&v16[*(v3 + 28)]);
    v17 = *&v16[*(v3 + 32)];
    MEMORY[0x21CED2490](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v20 = *(v4 + 72);
      do
      {
        sub_21A0A8A70(v19, v7);
        v21 = sub_219F73104();
        sub_219FC5A20(a1, v3, v21);
        sub_219F6409C(v7, &qword_27CCD98C8);
        v19 += v20;
        --v18;
      }

      while (v18);
    }

    v22 = &v11[*(v27 + 32)];
    v23 = *(v22 + 3);
    v30 = *(v22 + 2);
    v31[0] = v23;
    *(v31 + 13) = *(v22 + 61);
    v24 = *(v22 + 1);
    v28 = *v22;
    v29 = v24;
    ActivityFill.hash(into:)(a1);
    sub_21A0E626C();
    return sub_21A0A8AE0(v11, type metadata accessor for NationalElectionUpdate.Hero);
  }

  else
  {
    MEMORY[0x21CED2490](0);
    sub_21A0E626C();
    sub_21A0E626C();
  }
}

unint64_t sub_21A0A7FF8()
{
  result = qword_27CCDD9C8;
  if (!qword_27CCDD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD9C8);
  }

  return result;
}

uint64_t sub_21A0A804C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_219FAB16C(v1);
  ActivityFill.hash(into:)(v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A8108(uint64_t a1)
{
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_219FAB16C(a1);
  ActivityFill.hash(into:)(a1);

  return sub_21A0E626C();
}

uint64_t sub_21A0A81BC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_219FAB16C(v1);
  ActivityFill.hash(into:)(v1);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A8278()
{
  sub_21A0E6DAC();
  sub_21A0A7CEC(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A82BC()
{
  sub_21A0E6DAC();
  sub_21A0A7CEC(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A838C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A0A83D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NationalElectionUpdate(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v33 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD9E0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v33 - v19;
  v21 = (&v33 + *(v18 + 56) - v19);
  sub_21A0A89A8(a1, &v33 - v19);
  sub_21A0A89A8(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A0A89A8(v20, v15);
    v24 = *v15;
    v23 = v15[1];
    v26 = v15[2];
    v25 = v15[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

LABEL_7:
      sub_219F6409C(v20, &qword_27CCDD9E0);
LABEL_8:
      v22 = 0;
      return v22 & 1;
    }

    v29 = v21[2];
    v28 = v21[3];
    v30 = v24 == *v21 && v23 == v21[1];
    if (v30 || (sub_21A0E6C5C() & 1) != 0)
    {
      if (v26 == v29 && v25 == v28)
      {
      }

      else
      {
        v32 = sub_21A0E6C5C();

        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_21A0A8AE0(v20, type metadata accessor for NationalElectionUpdate);
      v22 = 1;
      return v22 & 1;
    }

LABEL_24:
    sub_21A0A8AE0(v20, type metadata accessor for NationalElectionUpdate);
    goto LABEL_8;
  }

  sub_21A0A89A8(v20, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A0A8AE0(v12, type metadata accessor for NationalElectionUpdate.Hero);
    goto LABEL_7;
  }

  sub_21A0A8A0C(v21, v7);
  v22 = sub_21A0A874C(v12, v7);
  sub_21A0A8AE0(v7, type metadata accessor for NationalElectionUpdate.Hero);
  sub_21A0A8AE0(v12, type metadata accessor for NationalElectionUpdate.Hero);
  sub_21A0A8AE0(v20, type metadata accessor for NationalElectionUpdate);
  return v22 & 1;
}

uint64_t sub_21A0A874C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21A0E6C5C()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_21A0E6C5C()) && (a1[4] == a2[4] && a1[5] == a2[5] || (sub_21A0E6C5C())) && (v6 = type metadata accessor for NationalElectionUpdate.Hero(0), v7 = *(v6 + 28), v8 = a1 + v7, v9 = a2 + v7, (static ActivityAsset.== infix(_:_:)(a1 + v7, a2 + v7)) && (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8), v11 = *(v10 + 28), v12 = *&v8[v11], v13 = *&v9[v11], , , v14 = sub_219FAAA00(v12, v13), , , (v14) && (sub_219F75DC0(*&v8[*(v10 + 32)], *&v9[*(v10 + 32)]))
  {
    v15 = a1 + *(v6 + 32);
    v16 = *(v15 + 3);
    v17 = *(v15 + 1);
    v40 = *(v15 + 2);
    v41 = v16;
    v18 = *(v15 + 3);
    v42 = *(v15 + 4);
    v43 = *(v15 + 10);
    v19 = *(v15 + 1);
    v39[0] = *v15;
    v39[1] = v19;
    v35 = v40;
    v36 = v18;
    v37 = *(v15 + 4);
    v38 = *(v15 + 10);
    v33 = v39[0];
    v34 = v17;
    v20 = a2 + *(v6 + 32);
    v21 = *(v20 + 3);
    v22 = *(v20 + 1);
    v45 = *(v20 + 2);
    v46 = v21;
    v23 = *(v20 + 3);
    v47 = *(v20 + 4);
    v24 = *(v20 + 1);
    v44[0] = *v20;
    v44[1] = v24;
    v29 = v45;
    v30 = v23;
    v31 = *(v20 + 4);
    v48 = *(v20 + 10);
    v32 = *(v20 + 10);
    v27 = v44[0];
    v28 = v22;
    sub_219FB63A4(v39, v51);
    sub_219FB63A4(v44, v51);
    v25 = _s22NewsLiveActivitiesCore19PoliticalPartyThemeV2eeoiySbAC_ACtFZ_0(&v33, &v27);
    v49[2] = v29;
    v49[3] = v30;
    v49[4] = v31;
    v50 = v32;
    v49[0] = v27;
    v49[1] = v28;
    sub_219FB63DC(v49);
    v51[2] = v35;
    v51[3] = v36;
    v51[4] = v37;
    v52 = v38;
    v51[0] = v33;
    v51[1] = v34;
    sub_219FB63DC(v51);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_21A0A89A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A8A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A8A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A8AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NationalElectionViewData()
{
  result = qword_27CCDD9F0;
  if (!qword_27CCDD9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A0A8C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0A8D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t NationalElectionViewData.hash(into:)(uint64_t a1)
{
  PresidentialElectionData.hash(into:)(a1);
  v27 = type metadata accessor for NationalElectionViewData();
  v3 = v1 + *(v27 + 20);
  sub_21A0E626C();
  v4 = type metadata accessor for BalanceOfPowerData(0);
  v5 = v3 + v4[5];
  MEMORY[0x21CED2490](*v5);
  v29 = v4;
  v28 = v3;
  if (*(v5 + 16))
  {
    v6 = *(v5 + 40);
    v7 = v6 >> 8;
    v8 = v6 & 0xFF00FFFF | (*(v5 + 42) << 16);
    v9 = *(v5 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v8 & 1);
    sub_21A0E626C();
    sub_21A0E6DCC();
    if (v7 != 9)
    {
      sub_219F7A96C(a1, v8 >> 8);
    }

    v4 = v29;
    sub_21A0E6DCC();
    if (v9 == 3)
    {
      v3 = v28;
    }

    else
    {
      v3 = v28;
      sub_21A0E626C();
    }
  }

  else
  {
    sub_21A0E6DCC();
  }

  MEMORY[0x21CED2490](*(v5 + 43));
  type metadata accessor for BalanceOfPowerData.Entity(0);
  ElectionEntityTheme.hash(into:)(a1);
  v10 = v3 + v4[6];
  MEMORY[0x21CED2490](*v10);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 40);
    v12 = v11 >> 8;
    v13 = v11 & 0xFF00FFFF | (*(v10 + 42) << 16);
    v14 = *(v10 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v13 & 1);
    sub_21A0E626C();
    sub_21A0E6DCC();
    if (v12 != 9)
    {
      sub_219F7A96C(a1, v13 >> 8);
    }

    v4 = v29;
    sub_21A0E6DCC();
    if (v14 == 3)
    {
      v3 = v28;
    }

    else
    {
      v3 = v28;
      sub_21A0E626C();
    }
  }

  else
  {
    sub_21A0E6DCC();
  }

  MEMORY[0x21CED2490](*(v10 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  MEMORY[0x21CED2490](*(v3 + v4[7]));
  v15 = v1 + *(v27 + 24);
  sub_21A0E626C();
  v16 = v15 + v4[5];
  MEMORY[0x21CED2490](*v16);
  if (*(v16 + 16))
  {
    v17 = *(v16 + 40);
    v18 = v17 >> 8;
    v19 = v17 & 0xFF00FFFF | (*(v16 + 42) << 16);
    v20 = *(v16 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v19 & 1);
    sub_21A0E626C();
    if (v18 == 9)
    {
      sub_21A0E6DCC();
      if (v20 != 3)
      {
LABEL_20:
        sub_21A0E6DCC();
        v4 = v29;
        sub_21A0E626C();

        goto LABEL_24;
      }
    }

    else
    {
      sub_21A0E6DCC();
      sub_219F7A96C(a1, v19 >> 8);
      if (v20 != 3)
      {
        goto LABEL_20;
      }
    }

    sub_21A0E6DCC();
    v4 = v29;
  }

  else
  {
    sub_21A0E6DCC();
  }

LABEL_24:
  MEMORY[0x21CED2490](*(v16 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  v21 = v15 + v4[6];
  MEMORY[0x21CED2490](*v21);
  if (!*(v21 + 16))
  {
    sub_21A0E6DCC();
    goto LABEL_31;
  }

  v22 = *(v21 + 40);
  v23 = v22 >> 8;
  v24 = v22 & 0xFF00FFFF | (*(v21 + 42) << 16);
  v25 = *(v21 + 42);
  sub_21A0E6DCC();
  sub_21A0E626C();
  MEMORY[0x21CED2490](v24 & 1);
  sub_21A0E626C();
  if (v23 != 9)
  {
    sub_21A0E6DCC();
    sub_219F7A96C(a1, v24 >> 8);
    if (v25 != 3)
    {
      goto LABEL_27;
    }

LABEL_30:
    sub_21A0E6DCC();
    v4 = v29;
    goto LABEL_31;
  }

  sub_21A0E6DCC();
  if (v25 == 3)
  {
    goto LABEL_30;
  }

LABEL_27:
  sub_21A0E6DCC();
  v4 = v29;
  sub_21A0E626C();

LABEL_31:
  MEMORY[0x21CED2490](*(v21 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  return MEMORY[0x21CED2490](*(v15 + v4[7]));
}

uint64_t NationalElectionViewData.hashValue.getter()
{
  sub_21A0E6DAC();
  NationalElectionViewData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A9510()
{
  sub_21A0E6DAC();
  NationalElectionViewData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A9554()
{
  sub_21A0E6DAC();
  NationalElectionViewData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore24NationalElectionViewDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = (v4 || (sub_21A0E6C5C() & 1) != 0) && (v5 = type metadata accessor for PresidentialElectionData(0), _s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(a1 + v5[5], a2 + v5[5])) && _s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(a1 + v5[6], a2 + v5[6]) && *(a1 + v5[7]) == *(a2 + v5[7]) && ((v6 = type metadata accessor for NationalElectionViewData(), v7 = *(v6 + 20), v8 = a1 + v7, v9 = a2 + v7, *(a1 + v7) == *(a2 + v7)) ? (v10 = *(a1 + v7 + 8) == *(a2 + v7 + 8)) : (v10 = 0), (v10 || (sub_21A0E6C5C() & 1) != 0) && (v11 = type metadata accessor for BalanceOfPowerData(0), static BalanceOfPowerData.Entity.== infix(_:_:)(&v8[v11[5]], &v9[v11[5]])) && static BalanceOfPowerData.Entity.== infix(_:_:)(&v8[v11[6]], &v9[v11[6]]) && *&v8[v11[7]] == *&v9[v11[7]] && ((v12 = *(v6 + 24), v13 = (a1 + v12), v14 = (a2 + v12), *v13 == *v14) && v13[1] == v14[1] || (sub_21A0E6C5C() & 1) != 0)) && static BalanceOfPowerData.Entity.== infix(_:_:)(v13 + v11[5], v14 + v11[5]) && static BalanceOfPowerData.Entity.== infix(_:_:)(v13 + v11[6], v14 + v11[6]) && *(v13 + v11[7]) == *(v14 + v11[7]);
  return result;
}

unint64_t sub_21A0A9730()
{
  result = qword_27CCDD9E8;
  if (!qword_27CCDD9E8)
  {
    type metadata accessor for NationalElectionViewData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD9E8);
  }

  return result;
}

uint64_t sub_21A0A97B0()
{
  result = type metadata accessor for PresidentialElectionData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BalanceOfPowerData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void PrimaryElectionTheme.apply(properties:data:)(uint64_t *a1, uint64_t a2)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v5);
  v56 = &v54 - v6;
  v64 = sub_21A0E468C();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v61 = *(v63 - 8);
  v13 = MEMORY[0x28223BE20](v63, v12);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v68 = &v54 - v16;
  v17 = *a1;
  v18 = a1[2];
  v67 = a1[1];
  v55 = v18;
  v65 = *(a1 + 24);
  v19 = *(a1 + 25);
  v20 = type metadata accessor for PrimaryElectionTheme();
  v21 = *(v20 + 32);
  v70 = v2;
  v22 = (v2 + v21);
  v23 = v22[1];
  if (!v23)
  {
    goto LABEL_15;
  }

  v69 = v19;
  v54 = *v22;
  v24 = *(a2 + *(type metadata accessor for PrimaryElectionData() + 20));
  v25 = *(v24 + 16);

  if (!v25)
  {
LABEL_11:

LABEL_14:
    LOBYTE(v19) = v69;
LABEL_15:
    v32 = v70 + *(v20 + 28);
    v28 = *(v32 + 88);
    if (!v28)
    {
      return;
    }

    v25 = (v32 + 80);
    v23 = *(v32 + 80);
    v75 = v23;
    v76 = v28;
    v74[0] = v23;
    v74[1] = v28;
    strcpy(v73, "{{reporting}}");
    HIWORD(v73[1]) = -4864;
    sub_219F3F130();

    if (sub_21A0E677C())
    {
      if (v19 & 1) != 0 || (v67)
      {
        if (qword_27CCD90D0 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_40;
      }

      strcpy(v74, "{{reporting}}");
      HIWORD(v74[1]) = -4864;
      v71 = v17;
      sub_21A0E499C();
      v70 = sub_21A021038();
      v47 = v59;
      sub_21A0E465C();
      v48 = v60;
      sub_21A0E467C();
      v49 = v63;
      MEMORY[0x21CECFD40](v48, v63);
      (*(v62 + 8))(v48, v64);
      v50 = *(v61 + 8);
      v50(v47, v49);
      sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8);
      v51 = v68;
      sub_21A0E60EC();
      v50(v51, v49);
      v71 = v73[0];
      v72 = v73[1];
      sub_21A0AF4DC();
      sub_21A0AF530();
      sub_21A0E666C();

      v23 = v75;
      v40 = v76;
    }

    else
    {
      v40 = v28;
    }

    v74[0] = v23;
    v74[1] = v40;
    strcpy(v73, "{{delegates}}");
    HIWORD(v73[1]) = -4864;
    if (sub_21A0E677C())
    {
      if (v19 & 1) != 0 || (v65)
      {
        if (qword_27CCD90D0 != -1)
        {
          swift_once();
        }

        v41 = sub_21A0E516C();
        __swift_project_value_buffer(v41, qword_27CCD97D8);

        v34 = sub_21A0E514C();
        v42 = sub_21A0E669C();

        if (!os_log_type_enabled(v34, v42))
        {

          goto LABEL_35;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v74[0] = v44;
        *v43 = 136315138;
        v45 = sub_219F50144(v23, v40, v74);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_219F39000, v34, v42, "Hiding excerpt due to missing value for {{delegates}}. Excerpt: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x21CED2D30](v44, -1, -1);
        v39 = v43;
LABEL_30:
        MEMORY[0x21CED2D30](v39, -1, -1);
LABEL_35:

        goto LABEL_36;
      }

      strcpy(v74, "{{delegates}}");
      HIWORD(v74[1]) = -4864;
      v71 = v55;
      sub_21A0E499C();
      sub_219F9DCCC();
      v52 = v56;
      sub_21A0E463C();
      sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
      v53 = v58;
      sub_21A0E678C();
      (*(v57 + 8))(v52, v53);
      v71 = v73[0];
      v72 = v73[1];
      sub_21A0AF4DC();
      sub_21A0AF530();
      sub_21A0E666C();
    }

    v46 = v76;
    *(v32 + 80) = v75;
    *(v32 + 88) = v46;
    return;
  }

  v26 = 0;
  v27 = (v24 + 64);
  v28 = 0x66666F6E7572;
  while (v26 < *(v24 + 16))
  {
    v29 = *v27;
    if (v29 <= 1 || v29 == 3)
    {
      v30 = sub_21A0E6C5C();

      if (v30)
      {
        goto LABEL_13;
      }
    }

    else if (v29 != 4)
    {
      swift_bridgeObjectRelease_n();
LABEL_13:
      v31 = v70 + *(v20 + 28);

      *(v31 + 80) = v54;
      *(v31 + 88) = v23;
      goto LABEL_14;
    }

    v26 = (v26 + 1);
    v27 += 40;
    if (v25 == v26)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_20:
  v33 = sub_21A0E516C();
  __swift_project_value_buffer(v33, qword_27CCD97D8);

  v34 = sub_21A0E514C();
  v35 = sub_21A0E669C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v74[0] = v37;
    *v36 = 136315138;
    v38 = sub_219F50144(v23, v28, v74);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_219F39000, v34, v35, "Hiding excerpt due to missing value for {{reporting}} Excerpt: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x21CED2D30](v37, -1, -1);
    v39 = v36;
    goto LABEL_30;
  }

  swift_bridgeObjectRelease_n();
LABEL_36:

  *v25 = 0;
  v25[1] = 0;
}

uint64_t sub_21A0AA1DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x6174537472616D73;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x6174537472616D73;
    }

    if (v4 == 2)
    {
      v5 = 0x800000021A1096B0;
    }

    else
    {
      v5 = 0xEA00000000006B63;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x800000021A109690;
    }

    else
    {
      v5 = 0x800000021A109670;
    }

    v6 = 0xD000000000000014;
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000021A1096B0;
  }

  v7 = 0x800000021A109690;
  if (!a2)
  {
    v7 = 0x800000021A109670;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v6 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21A0E6C5C();
  }

  return v10 & 1;
}

uint64_t sub_21A0AA2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696461654C706F74;
  v4 = a1;
  v5 = 0x6C69617254706F74;
  v6 = 0xEB00000000676E69;
  if (a1 != 6)
  {
    v5 = 7368564;
    v6 = 0xE300000000000000;
  }

  v7 = 0x72546D6F74746F62;
  v8 = 0xEE00676E696C6961;
  if (a1 != 4)
  {
    v7 = 0x676E696C69617274;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x654C6D6F74746F62;
  v10 = 0xED0000676E696461;
  if (a1 != 2)
  {
    v9 = 0x6D6F74746F62;
    v10 = 0xE600000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E696461656CLL;
  if (!a1)
  {
    v12 = 0x696461654C706F74;
    v11 = 0xEA0000000000676ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEB00000000676E69;
        if (v13 != 0x6C69617254706F74)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v13 != 7368564)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00676E696C6961;
      if (v13 != 0x72546D6F74746F62)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x676E696C69617274)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED0000676E696461;
        if (v13 != 0x654C6D6F74746F62)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE600000000000000;
      v3 = 0x6D6F74746F62;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x676E696461656CLL)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_21A0E6C5C();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_21A0AA588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746867696577;
    }

    else
    {
      v4 = 0x656C616373;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616E7265746E69;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xEC000000656D614ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x746867696577;
  if (a2 != 2)
  {
    v8 = 0x656C616373;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6C616E7265746E69;
    v6 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AA6C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006567;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x61746E6563726570;
    }

    else
    {
      v6 = 0x72656765746E69;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6C6F626D7973;
    }

    else
    {
      v6 = 1954047348;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x61746E6563726570;
  v10 = 0xEA00000000006567;
  if (a2 != 2)
  {
    v9 = 0x72656765746E69;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6F626D7973;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21A0E6C5C();
  }

  return v13 & 1;
}

uint64_t sub_21A0AA7FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E6E6977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x66666F6E7572;
    }

    else
    {
      v4 = 0x72676F72705F6E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000737365;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465737265766572;
    }

    else
    {
      v4 = 0x72656E6E6977;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x66666F6E7572;
  if (a2 != 2)
  {
    v8 = 0x72676F72705F6E69;
    v7 = 0xEB00000000737365;
  }

  if (a2)
  {
    v2 = 0x6465737265766572;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AA944(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657669746361;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465646E65;
    }

    else
    {
      v5 = 0x657669746361;
    }

    if (v3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x657373696D736964;
    v4 = 0xE900000000000064;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x656C617473;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x6465646E65;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x657373696D736964;
    v6 = 0xE900000000000064;
    v7 = 0xE500000000000000;
    v8 = 0x656C617473;
    if (a2 != 3)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21A0E6C5C();
  }

  return v12 & 1;
}

uint64_t sub_21A0AAAB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D65;
  v3 = 0x686353726F6C6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x5379616C70736964;
    }

    if (v4 == 2)
    {
      v6 = 0x800000021A1095E0;
    }

    else
    {
      v6 = 0xEC000000656C6163;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E656D6563616C70;
    }

    else
    {
      v5 = 0x686353726F6C6F63;
    }

    if (v4)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xEB00000000656D65;
    }
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000021A1095E0;
  if (a2 != 2)
  {
    v7 = 0x5379616C70736964;
    v8 = 0xEC000000656C6163;
  }

  if (a2)
  {
    v3 = 0x6E656D6563616C70;
    v2 = 0xE900000000000074;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AAC14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE600000000000000;
    v11 = 0x6C64616568627573;
    v12 = 0xEB00000000656E69;
    if (a1 != 2)
    {
      v11 = 2036625250;
      v12 = 0xE400000000000000;
    }

    v13 = 0x656E696C64616568;
    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x33656C746974;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x326E6F6974706163;
    v5 = 0xE800000000000000;
    v6 = 0x65746F6E746F6F66;
    if (a1 != 7)
    {
      v6 = 0x30326863746177;
      v5 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x74756F6C6C6163;
    if (a1 != 4)
    {
      v7 = 0x6E6F6974706163;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xEB00000000656E69;
        if (v8 != 0x6C64616568627573)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v8 != 2036625250)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x656E696C64616568)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v8 != 0x33656C746974)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v14 = 0xE700000000000000;
    if (a2 == 4)
    {
      if (v8 != 0x74756F6C6C6163)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x6E6F6974706163)
    {
LABEL_52:
      v15 = sub_21A0E6C5C();
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x326E6F6974706163)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x65746F6E746F6F66)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    if (v8 != 0x30326863746177)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_21A0AAEC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x756F437055746F6ELL;
    }

    else
    {
      v3 = 0x746C75736572;
    }

    if (v2 == 2)
    {
      v4 = 0xEA0000000000746ELL;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x61726F7463656C65;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE00746E756F436CLL;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x756F437055746F6ELL;
  v8 = 0xEA0000000000746ELL;
  if (a2 != 2)
  {
    v7 = 0x746C75736572;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x61726F7463656C65;
    v5 = 0xEE00746E756F436CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AB01C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7261646E6F636573;
    }

    else
    {
      v3 = 0x7972616D697270;
    }

    if (v2)
    {
      v4 = 0xE900000000000079;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x7972616974726574;
  }

  else if (a1 == 3)
  {
    v3 = 0x616E726574617571;
    v4 = 0xEA00000000007972;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x7972616E697571;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7261646E6F636573;
    }

    else
    {
      v9 = 0x7972616D697270;
    }

    if (a2)
    {
      v8 = 0xE900000000000079;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x616E726574617571;
    v6 = 0xEA00000000007972;
    if (a2 != 3)
    {
      v5 = 0x7972616E697571;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7972616974726574;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21A0E6C5C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21A0AB1B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6B6E696C70656564;
  if (a1 != 5)
  {
    v5 = 0x7974697669746361;
    v4 = 0xEB0000000074694BLL;
  }

  v6 = 0x6163696669746F6ELL;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 3)
  {
    v6 = 0x50676E69646E616CLL;
    v7 = 0xEB00000000656761;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6C69546F63736964;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x6465626D45626577;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000065;
        if (v10 != 0x6C69546F63736964)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6465626D45626577)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6B6E696C70656564)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x7974697669746361;
    v14 = 7629131;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x50676E69646E616CLL;
    v14 = 6645601;
  }

  v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v10 != v13)
  {
LABEL_39:
    v15 = sub_21A0E6C5C();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_21A0AB414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x61684364756F6C63;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE0044496C656E6ELL;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7461447472617473;
    v4 = 0xE900000000000065;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x74616E6974736564;
    }

    else
    {
      v3 = 0x7475626972747461;
    }

    if (v2 == 3)
    {
      v4 = 0xEE004C52556E6F69;
    }

    else
    {
      v4 = 0xEA00000000007365;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x61684364756F6C63;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEE0044496C656E6ELL;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000065;
    if (v3 != 0x7461447472617473)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE004C52556E6F69;
    if (v3 != 0x74616E6974736564)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEA00000000007365;
    if (v3 != 0x7475626972747461)
    {
LABEL_34:
      v7 = sub_21A0E6C5C();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_21A0AB5E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7976616568;
    if (a1 != 2)
    {
      v12 = 0x746867696CLL;
    }

    v13 = 1684828002;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v13 = 0x6B63616C62;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x646C6F62696D6573;
    v5 = 0xE400000000000000;
    v6 = 1852401780;
    if (a1 != 7)
    {
      v6 = 0x67694C6172746C75;
      v5 = 0xEA00000000007468;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v8 = 0x72616C75676572;
      v7 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v14 = 0xE500000000000000;
      if (a2 == 2)
      {
        if (v9 != 0x7976616568)
        {
          goto LABEL_52;
        }
      }

      else if (v9 != 0x746867696CLL)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1684828002)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x6B63616C62)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v9 != 0x6D756964656DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v9 != 0x72616C75676572)
      {
LABEL_52:
        v15 = sub_21A0E6C5C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v9 != 0x646C6F62696D6573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v9 != 1852401780)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xEA00000000007468;
    if (v9 != 0x67694C6172746C75)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_21A0AB870(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006574617473;
  v3 = 0x2D746E65746E6F63;
  v4 = a1;
  v5 = 0x636E6176656C6572;
  v6 = 0xEF65726F63732D65;
  v7 = 0xE500000000000000;
  v8 = 0x746E657665;
  if (a1 != 4)
  {
    v8 = 0x617373696D736964;
    v7 = 0xEE00657461642D6CLL;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6D617473656D6974;
  v10 = 0xE900000000000070;
  if (a1 != 1)
  {
    v9 = 0x61642D656C617473;
    v10 = 0xEA00000000006574;
  }

  if (!a1)
  {
    v9 = 0x2D746E65746E6F63;
    v10 = 0xED00006574617473;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF65726F63732D65;
      if (v11 != 0x636E6176656C6572)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x746E657665)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEE00657461642D6CLL;
      if (v11 != 0x617373696D736964)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000070;
        if (v11 != 0x6D617473656D6974)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x61642D656C617473;
      v2 = 0xEA00000000006574;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_21A0E6C5C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

__n128 PrimaryElectionTheme.keylineTint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 61) = *(v1 + 61);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 PrimaryElectionTheme.keylineTint.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 61) = *(a1 + 61);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t PrimaryElectionTheme.backgroundTint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 136);
  v10 = *(v1 + 120);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 152);
  v6 = *(v1 + 88);
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00);
}

__n128 PrimaryElectionTheme.backgroundTint.setter(uint64_t a1)
{
  v3 = *(v1 + 120);
  v8[2] = *(v1 + 104);
  v8[3] = v3;
  v8[4] = *(v1 + 136);
  v9 = *(v1 + 152);
  v4 = *(v1 + 88);
  v8[0] = *(v1 + 72);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00);
  v5 = *(a1 + 48);
  *(v1 + 104) = *(a1 + 32);
  *(v1 + 120) = v5;
  *(v1 + 136) = *(a1 + 64);
  *(v1 + 152) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v7;
  return result;
}

uint64_t PrimaryElectionTheme.systemActionForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v4 = *(v1 + 224);
  v10 = *(v1 + 208);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 240);
  v6 = *(v1 + 176);
  v9[0] = *(v1 + 160);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00);
}

__n128 PrimaryElectionTheme.systemActionForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 208);
  v8[2] = *(v1 + 192);
  v8[3] = v3;
  v8[4] = *(v1 + 224);
  v9 = *(v1 + 240);
  v4 = *(v1 + 176);
  v8[0] = *(v1 + 160);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00);
  v5 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v5;
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v7;
  return result;
}

uint64_t PrimaryElectionTheme.candidates.getter()
{
  type metadata accessor for PrimaryElectionTheme();
}

uint64_t PrimaryElectionTheme.candidates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrimaryElectionTheme() + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrimaryElectionTheme.winnerBadge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PrimaryElectionTheme() + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOWORD(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;

  return sub_219F79C1C();
}

__n128 PrimaryElectionTheme.winnerBadge.setter(uint64_t a1)
{
  v8 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = v1 + *(type metadata accessor for PrimaryElectionTheme() + 40);

  sub_219F79CD8();
  result = v8;
  *v6 = v8;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 33) = v5;
  return result;
}

unint64_t sub_21A0AC294(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x546C616D696E696DLL;
    v6 = 0xD000000000000013;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74616469646E6163;
    if (a1 != 5)
    {
      v7 = 0x614272656E6E6977;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54656E696C79656BLL;
    v2 = 0xD000000000000016;
    v3 = 0x726564616568;
    if (a1 != 3)
    {
      v3 = 0x784566666F6E7572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x756F72676B636162;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21A0AC410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0B07E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A0AC444(uint64_t a1)
{
  v2 = sub_21A0B02FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0AC480(uint64_t a1)
{
  v2 = sub_21A0B02FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionTheme.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0B02FC();
  sub_21A0E6EAC();
  v9 = v2[2];
  v10 = v2[3];
  v11 = *v2;
  v65 = v2[1];
  v66 = v9;
  v67[0] = v10;
  *(v67 + 13) = *(v2 + 61);
  v64 = v11;
  v63 = 0;
  sub_219F81DC8();
  v68 = v8;
  v12 = v30;
  sub_21A0E6B6C();
  if (v12)
  {
    return (*(v5 + 8))(v68, v4);
  }

  v13 = *(v2 + 120);
  v61[2] = *(v2 + 104);
  v61[3] = v13;
  v61[4] = *(v2 + 136);
  v62 = *(v2 + 19);
  v14 = *(v2 + 88);
  v61[0] = *(v2 + 72);
  v61[1] = v14;
  v15 = *(v2 + 120);
  v57 = *(v2 + 104);
  v58 = v15;
  v59 = *(v2 + 136);
  v60 = *(v2 + 19);
  v16 = *(v2 + 88);
  v55 = *(v2 + 72);
  v56 = v16;
  v54 = 1;
  sub_219F45500(v61, v49, &qword_27CCDAB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0);
  sub_21A0A7480(&qword_27CCDD948);
  sub_21A0E6B6C();
  v47[2] = v57;
  v47[3] = v58;
  v47[4] = v59;
  v48 = v60;
  v47[0] = v55;
  v47[1] = v56;
  sub_219F6409C(v47, &qword_27CCDAB00);
  v17 = v2[13];
  v18 = v2[11];
  v50 = v2[12];
  v51 = v17;
  v19 = v2[13];
  v52 = v2[14];
  v20 = v2[11];
  v49[0] = v2[10];
  v49[1] = v20;
  v43 = v50;
  v44 = v19;
  v45 = v2[14];
  v53 = *(v2 + 30);
  v46 = *(v2 + 30);
  v41 = v49[0];
  v42 = v18;
  v40 = 2;
  sub_219F45500(v49, v38, &qword_27CCDAB00);
  sub_21A0E6B6C();
  v38[2] = v43;
  v38[3] = v44;
  v38[4] = v45;
  v39 = v46;
  v38[0] = v41;
  v38[1] = v42;
  sub_219F6409C(v38, &qword_27CCDAB00);
  v21 = type metadata accessor for PrimaryElectionTheme();
  LOBYTE(v31) = 3;
  type metadata accessor for ActivityHeaderData();
  sub_21A0B0520(&qword_27CCDCEC0, type metadata accessor for ActivityHeaderData);
  sub_21A0E6BBC();
  LOBYTE(v31) = 4;
  sub_21A0E6B3C();
  v31 = *(v2 + *(v21 + 36));
  v37 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCC0);
  sub_21A0B040C(&qword_27CCDDCC8, sub_21A0B0350);
  sub_21A0E6BBC();
  v22 = (v2 + *(v21 + 40));
  v24 = *v22;
  v23 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v27 = *(v22 + 32);
  LOWORD(v22) = *(v22 + 33);
  v31 = v24;
  v32 = v23;
  v33 = v26;
  v34 = v25;
  v35 = v27;
  v36 = v22;
  v37 = 6;

  sub_219F79C1C();
  sub_21A0A7384();
  sub_21A0E6BBC();

  sub_219F79CD8();
  LOBYTE(v31) = 7;
  type metadata accessor for ActivityMinimalAppearanceTheme();
  sub_21A0B0520(&qword_27CCDD940, type metadata accessor for ActivityMinimalAppearanceTheme);
  sub_21A0E6B6C();
  LOBYTE(v31) = 8;
  sub_21A0E6BBC();
  LOBYTE(v31) = 9;
  v28 = v68;
  sub_21A0E6B6C();
  return (*(v5 + 8))(v28, v4);
}

uint64_t PrimaryElectionTheme.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v114 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v110 - v10;
  v12 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v119 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v116 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v117 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v115 = &v110 - v24;
  v25 = *(v2 + 6);
  v26 = ~*(v2 + 12);
  v27 = *(v2 + 16) | (v2[68] << 32);
  v113 = v8;
  v121 = v13;
  if ((v26 & 0xFFFFFFFE) != 0 || (v27 & 0xFE00000000) != 0x200000000)
  {
    v28 = *(v2 + 7);
    v29 = *(v2 + 1);
    v177 = *v2;
    v178 = v29;
    v179 = *(v2 + 2);
    *&v180 = v25;
    *(&v180 + 1) = v28;
    BYTE4(v181) = BYTE4(v27);
    LODWORD(v181) = v27;
    sub_21A0E6DCC();
    ActivityColor.hash(into:)();
  }

  else
  {
    sub_21A0E6DCC();
  }

  v30 = *(v2 + 15);
  v31 = ~*(v2 + 30);
  v32 = *(v2 + 17);
  v120 = v12;
  v118 = v4;
  if ((v31 & 0xFFFFFFFE) != 0 || (v32 & 0xFE00000000) != 0x200000000)
  {
    v34 = *(v2 + 18);
    v33 = *(v2 + 19);
    v35 = *(v2 + 16);
    v36 = *(v2 + 88);
    v177 = *(v2 + 72);
    v178 = v36;
    v179 = *(v2 + 104);
    sub_21A0E6DCC();
    *&v180 = v30;
    *(&v180 + 1) = v35;
    *&v181 = v32;
    *(&v181 + 1) = v34;
    *&v182 = v33;
    ActivityColor.hash(into:)();
    sub_219F91544(a1, v34);
    sub_219F70020(a1, v33);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v37 = *(v2 + 26);
  v38 = *(v2 + 28);
  if ((~*(v2 + 52) & 0xFFFFFFFE) != 0 || (v38 & 0xFE00000000) != 0x200000000)
  {
    v40 = *(v2 + 29);
    v39 = *(v2 + 30);
    v41 = *(v2 + 27);
    v42 = *(v2 + 11);
    v177 = *(v2 + 10);
    v178 = v42;
    v179 = *(v2 + 12);
    sub_21A0E6DCC();
    *&v180 = v37;
    *(&v180 + 1) = v41;
    *&v181 = v38;
    *(&v181 + 1) = v40;
    *&v182 = v39;
    ActivityColor.hash(into:)();
    sub_219F91544(a1, v40);
    sub_219F70020(a1, v39);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v43 = type metadata accessor for PrimaryElectionTheme();
  ActivityHeaderData.hash(into:)(a1);
  if (*&v2[v43[8] + 8])
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  sub_219F70178(a1, *&v2[v43[9]]);
  v44 = &v2[v43[10]];
  v45 = v44[32];
  v46 = v44[33];
  v47 = v44[34];
  sub_21A0E626C();
  MEMORY[0x21CED2490](v45);
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v46 != 9)
  {
    sub_219F7A96C(a1, v46);
  }

  v48 = v120;
  sub_21A0E6DCC();
  v49 = v121;
  if (v47 == 3)
  {
    v50 = v115;
  }

  else
  {
    v50 = v115;
    sub_21A0E626C();
  }

  sub_219F45500(&v2[v43[11]], v50, &qword_27CCD9628);
  v53 = *(v49 + 48);
  v51 = v49 + 48;
  v52 = v53;
  if (v53(v50, 1, v48) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v111 = v52;
    v112 = v43;
    v121 = v51;
    v115 = v2;
    v54 = v116;
    sub_21A0B03A4(v50, v116, type metadata accessor for ActivityMinimalAppearanceTheme);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    v55 = v118;
    sub_219F91544(a1, *(v54 + *(v118 + 28)));
    v56 = *(v54 + *(v55 + 32));
    MEMORY[0x21CED2490](*(v56 + 16));
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = v56 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
      v59 = *(v114 + 72);
      do
      {
        sub_219F45500(v58, v11, &qword_27CCD98C8);
        v60 = sub_219F73104();
        sub_219FC5A20(a1, v55, v60);
        sub_219F6409C(v11, &qword_27CCD98C8);
        v58 += v59;
        --v57;
      }

      while (v57);
    }

    v48 = v120;
    v61 = v116;
    v62 = (v116 + *(v120 + 20));
    v63 = v62[9];
    v185 = v62[8];
    v186 = v63;
    v187 = v62[10];
    v64 = v62[5];
    v181 = v62[4];
    v182 = v64;
    v65 = v62[6];
    v184 = v62[7];
    v183 = v65;
    v66 = v62[1];
    v177 = *v62;
    v178 = v66;
    v67 = v62[3];
    v179 = v62[2];
    v180 = v67;
    sub_21A02EB6C(a1);
    v68 = (v61 + *(v48 + 24));
    v69 = v68[9];
    v174 = v68[8];
    v175 = v69;
    v176 = v68[10];
    v70 = v68[5];
    v170 = v68[4];
    v171 = v70;
    v71 = v68[7];
    v172 = v68[6];
    v173 = v71;
    v72 = v68[1];
    v166 = *v68;
    v167 = v72;
    v73 = v68[3];
    v168 = v68[2];
    v169 = v73;
    sub_21A02EB6C(a1);
    sub_21A0B0EA8(v61, type metadata accessor for ActivityMinimalAppearanceTheme);
    v2 = v115;
    v52 = v111;
    v43 = v112;
  }

  v74 = &v2[v43[12]];
  sub_219FAB16C(a1);
  v75 = &v74[*(v48 + 20)];
  v76 = *(v75 + 9);
  v163 = *(v75 + 8);
  v164 = v76;
  v165 = *(v75 + 10);
  v77 = *(v75 + 5);
  v159 = *(v75 + 4);
  v160 = v77;
  v78 = *(v75 + 7);
  v161 = *(v75 + 6);
  v162 = v78;
  v79 = *(v75 + 1);
  v155 = *v75;
  v156 = v79;
  v80 = *(v75 + 3);
  v157 = *(v75 + 2);
  v158 = v80;
  sub_21A02EB6C(a1);
  v81 = &v74[*(v48 + 24)];
  v82 = *(v81 + 9);
  v152 = *(v81 + 8);
  v153 = v82;
  v154 = *(v81 + 10);
  v83 = *(v81 + 5);
  v148 = *(v81 + 4);
  v149 = v83;
  v84 = *(v81 + 7);
  v150 = *(v81 + 6);
  v151 = v84;
  v85 = *(v81 + 1);
  v144 = *v81;
  v145 = v85;
  v86 = *(v81 + 3);
  v146 = *(v81 + 2);
  v147 = v86;
  sub_21A02EB6C(a1);
  v87 = v117;
  sub_219F45500(&v2[v43[13]], v117, &qword_27CCD9628);
  if (v52(v87, 1, v48) == 1)
  {
    return sub_21A0E6DCC();
  }

  v89 = v119;
  sub_21A0B03A4(v87, v119, type metadata accessor for ActivityMinimalAppearanceTheme);
  sub_21A0E6DCC();
  ActivityAsset.hash(into:)(a1);
  v90 = v118;
  sub_219F91544(a1, *(v89 + *(v118 + 28)));
  v91 = *(v89 + *(v90 + 32));
  MEMORY[0x21CED2490](*(v91 + 16));
  v92 = *(v91 + 16);
  v93 = v113;
  if (v92)
  {
    v94 = v91 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v95 = *(v114 + 72);
    do
    {
      sub_219F45500(v94, v93, &qword_27CCD98C8);
      v96 = sub_219F73104();
      sub_219FC5A20(a1, v90, v96);
      sub_219F6409C(v93, &qword_27CCD98C8);
      v94 += v95;
      --v92;
    }

    while (v92);
  }

  v97 = v119;
  v98 = (v119 + *(v48 + 20));
  v99 = v98[9];
  v141 = v98[8];
  v142 = v99;
  v143 = v98[10];
  v100 = v98[5];
  v137 = v98[4];
  v138 = v100;
  v101 = v98[7];
  v139 = v98[6];
  v140 = v101;
  v102 = v98[1];
  v133 = *v98;
  v134 = v102;
  v103 = v98[3];
  v135 = v98[2];
  v136 = v103;
  sub_21A02EB6C(a1);
  v104 = (v97 + *(v48 + 24));
  v105 = v104[9];
  v130 = v104[8];
  v131 = v105;
  v132 = v104[10];
  v106 = v104[5];
  v126 = v104[4];
  v127 = v106;
  v107 = v104[7];
  v128 = v104[6];
  v129 = v107;
  v108 = v104[1];
  v122 = *v104;
  v123 = v108;
  v109 = v104[3];
  v124 = v104[2];
  v125 = v109;
  sub_21A02EB6C(a1);
  return sub_21A0B0EA8(v97, type metadata accessor for ActivityMinimalAppearanceTheme);
}

uint64_t PrimaryElectionTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v62 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v61 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v63 = v59 - v12;
  v67 = type metadata accessor for ActivityHeaderData();
  MEMORY[0x28223BE20](v67, v13);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCD8);
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v59 - v18;
  v20 = type metadata accessor for PrimaryElectionTheme();
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = xmmword_21A0EB370;
  v24[68] = 2;
  *(v24 + 16) = 0;
  *(v24 + 72) = 0u;
  v71 = v24 + 72;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0u;
  *(v24 + 120) = xmmword_21A0EB370;
  *(v24 + 17) = 0x200000000;
  *(v24 + 10) = 0u;
  *(v24 + 9) = 0u;
  *(v24 + 11) = 0u;
  *(v24 + 12) = 0u;
  *(v24 + 13) = xmmword_21A0EB370;
  *(v24 + 29) = 0;
  *(v24 + 30) = 0;
  *(v24 + 28) = 0x200000000;
  v25 = *(v22 + 44);
  v26 = *(v4 + 56);
  v72 = v24 + 160;
  v73 = v25;
  v26(&v24[v25], 1, 1, v3);
  v119 = v20;
  v69 = *(v20 + 52);
  v26(&v24[v69], 1, 1, v3);
  v27 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_21A0B02FC();
  v66 = v19;
  v28 = v68;
  sub_21A0E6E7C();
  if (v28)
  {
    v68 = v28;
    LODWORD(v65) = 0;
    LODWORD(v66) = 0;
    v67 = 0;
    v29 = v71;
    v30 = v72;
    __swift_destroy_boxed_opaque_existential_1(v70);
    v31 = *(v29 + 3);
    v109 = *(v29 + 2);
    v110 = v31;
    v111 = *(v29 + 4);
    v112 = *(v29 + 10);
    v32 = *(v29 + 1);
    v107 = *v29;
    v108 = v32;
    sub_219F6409C(&v107, &qword_27CCDAB00);
    v33 = *(v30 + 3);
    v115 = *(v30 + 2);
    v116 = v33;
    v117 = *(v30 + 4);
    v118 = *(v30 + 10);
    v34 = *(v30 + 1);
    v113 = *v30;
    v114 = v34;
    sub_219F6409C(&v113, &qword_27CCDAB00);
    v35 = v119;

    if (v65)
    {

      sub_219F79CD8();
    }

    sub_219F6409C(&v24[v73], &qword_27CCD9628);
    if (v66)
    {
      sub_21A0B0EA8(&v24[v35[12]], type metadata accessor for ActivityMinimalAppearanceTheme);
    }

    return sub_219F6409C(&v24[v69], &qword_27CCD9628);
  }

  else
  {
    v68 = v15;
    v59[2] = v3;
    v102 = 0;
    sub_219F81E1C();
    sub_21A0E6A8C();
    v36 = *v106;
    *(v24 + 2) = v105;
    *(v24 + 3) = v36;
    *(v24 + 61) = *&v106[13];
    v37 = v104;
    *v24 = v103;
    *(v24 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0);
    v101 = 1;
    v59[1] = sub_21A0A7480(&qword_27CCDD970);
    sub_21A0E6A8C();
    v38 = v71;
    v39 = v72;
    v97 = v115;
    v98 = v116;
    v99 = v117;
    v95 = v113;
    v96 = v114;
    v40 = *(v71 + 3);
    v109 = *(v71 + 2);
    v110 = v40;
    v111 = *(v71 + 4);
    v41 = *(v71 + 1);
    v107 = *v71;
    v100 = v118;
    v112 = *(v71 + 10);
    v108 = v41;
    sub_219F6409C(&v107, &qword_27CCDAB00);
    v42 = v98;
    *(v38 + 2) = v97;
    *(v38 + 3) = v42;
    *(v38 + 4) = v99;
    *(v38 + 10) = v100;
    v43 = v96;
    *v38 = v95;
    *(v38 + 1) = v43;
    v88 = 2;
    sub_21A0E6A8C();
    v82 = v91;
    v83 = v92;
    v84 = v93;
    v85 = v94;
    v80 = v89;
    v81 = v90;
    v44 = *(v39 + 3);
    v86[2] = *(v39 + 2);
    v86[3] = v44;
    v86[4] = *(v39 + 4);
    v87 = *(v39 + 10);
    v45 = *(v39 + 1);
    v86[0] = *v39;
    v86[1] = v45;
    sub_219F6409C(v86, &qword_27CCDAB00);
    v46 = v83;
    *(v39 + 2) = v82;
    *(v39 + 3) = v46;
    *(v39 + 4) = v84;
    *(v39 + 10) = v85;
    v47 = v81;
    *v39 = v80;
    *(v39 + 1) = v47;
    LOBYTE(v74) = 3;
    sub_21A0B0520(&qword_27CCDCEF8, type metadata accessor for ActivityHeaderData);
    v48 = v68;
    sub_21A0E6ADC();
    v49 = v119;
    sub_21A0B03A4(v48, &v24[v119[7]], type metadata accessor for ActivityHeaderData);
    LOBYTE(v74) = 4;
    v50 = sub_21A0E6A5C();
    v51 = &v24[v49[8]];
    *v51 = v50;
    v51[1] = v52;
    v67 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCC0);
    v79 = 5;
    sub_21A0B040C(&qword_27CCDDCE0, sub_21A0B0484);
    sub_21A0E6ADC();
    *&v24[v49[9]] = v74;
    v79 = 6;
    sub_21A0A742C();
    sub_21A0E6ADC();
    v53 = v75;
    v54 = v77;
    v55 = v78;
    v56 = &v24[v49[10]];
    *v56 = v74;
    *(v56 + 1) = v53;
    *(v56 + 1) = v76;
    v56[32] = v54;
    *(v56 + 33) = v55;
    LOBYTE(v74) = 7;
    sub_21A0B0520(&qword_27CCDD968, type metadata accessor for ActivityMinimalAppearanceTheme);
    v57 = v63;
    sub_21A0E6A8C();
    sub_219FF0668(v57, &v24[v73], &qword_27CCD9628);
    LOBYTE(v74) = 8;
    sub_21A0E6ADC();
    sub_21A0B03A4(v62, &v24[v119[12]], type metadata accessor for ActivityMinimalAppearanceTheme);
    LOBYTE(v74) = 9;
    sub_21A0E6A8C();
    v68 = 0;
    (*(v64 + 8))(v66, v65);
    sub_219FF0668(v61, &v24[v69], &qword_27CCD9628);
    sub_21A0B0E40(v24, v60, type metadata accessor for PrimaryElectionTheme);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return sub_21A0B0EA8(v24, type metadata accessor for PrimaryElectionTheme);
  }
}

uint64_t sub_21A0AE124()
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0AE168()
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0AE1D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v32 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for ActivityHeaderData();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrimaryElectionTheme();
  __swift_allocate_value_buffer(v12, qword_27CCDDA00);
  v13 = __swift_project_value_buffer(v12, qword_27CCDDA00);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  v16 = *(v8 + 48);
  v15(&v11[v16], 1, 1, v14);
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 1) = xmmword_21A1029E0;
  *(v11 + 4) = 0xD000000000000011;
  *(v11 + 5) = 0x800000021A10B0F0;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 10) = 0x100000000000003DLL;
  *(v11 + 11) = 0x800000021A10B090;
  sub_219FF0668(v6, &v11[v16], &qword_27CCD98D8);
  v31 = sub_21A0B0B3C();
  if (qword_27CCD91D0 != -1)
  {
    swift_once();
  }

  v17 = *algn_27CCFE708;
  v30 = qword_27CCFE700;
  v18 = qword_27CCFE710;
  v19 = unk_27CCFE718;
  v20 = byte_27CCFE720;
  v28 = byte_27CCFE722;
  v29 = byte_27CCFE721;
  v21 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v22 = *(*(v21 - 8) + 56);
  v22(v32, 1, 1, v21);

  sub_219F79C1C();
  if (qword_27CCD9230 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v21, qword_27CCFE728);
  sub_21A0B0E40(v23, v13 + v12[12], type metadata accessor for ActivityMinimalAppearanceTheme);
  v22(v13 + v12[13], 1, 1, v21);
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = xmmword_21A0EB370;
  *(v13 + 68) = 2;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = xmmword_21A0EB370;
  *(v13 + 136) = 0x200000000;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 208) = xmmword_21A0EB370;
  *(v13 + 232) = 0;
  *(v13 + 240) = 0;
  *(v13 + 224) = 0x200000000;
  sub_21A0B03A4(v11, v13 + v12[7], type metadata accessor for ActivityHeaderData);
  v24 = (v13 + v12[8]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v30;
  *(v13 + v12[9]) = v31;
  v26 = v13 + v12[10];
  *v26 = v25;
  *(v26 + 8) = v17;
  *(v26 + 16) = v18;
  *(v26 + 24) = v19;
  *(v26 + 32) = v20;
  LOBYTE(v25) = v28;
  *(v26 + 33) = v29;
  *(v26 + 34) = v25;
  return sub_219F4D494(v32, v13 + v12[11], &qword_27CCD9628);
}

uint64_t sub_21A0AE664@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PrimaryElectionTheme();
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_21A0B0E40(v6, a3, type metadata accessor for PrimaryElectionTheme);
}

uint64_t sub_21A0AE6E0(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ActivityHeaderData();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PrimaryElectionTheme();
  __swift_allocate_value_buffer(v16, a3);
  v17 = __swift_project_value_buffer(v16, a3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v20 = *(v12 + 48);
  v19(v15 + v20, 1, 1, v18);
  v15->n128_u64[0] = 0;
  v15->n128_u64[1] = 0;
  v15[1] = v35;
  v15[2].n128_u64[0] = 0xD000000000000012;
  v15[2].n128_u64[1] = 0x800000021A10B070;
  v15[3] = 0u;
  v15[4] = 0u;
  v15[5].n128_u64[0] = 0x100000000000003DLL;
  v15[5].n128_u64[1] = 0x800000021A10B090;
  sub_219FF0668(v10, v15 + v20, &qword_27CCD98D8);
  v35.n128_u64[0] = sub_21A0B0B3C();
  if (qword_27CCD91D0 != -1)
  {
    swift_once();
  }

  v21 = *algn_27CCFE708;
  v34 = qword_27CCFE700;
  v22 = qword_27CCFE710;
  v23 = unk_27CCFE718;
  v24 = byte_27CCFE720;
  v32 = byte_27CCFE722;
  v33 = byte_27CCFE721;
  v25 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v26 = *(*(v25 - 8) + 56);
  v26(v36, 1, 1, v25);

  sub_219F79C1C();
  if (qword_27CCD9230 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v25, qword_27CCFE728);
  sub_21A0B0E40(v27, v17 + v16[12], type metadata accessor for ActivityMinimalAppearanceTheme);
  v26(v17 + v16[13], 1, 1, v25);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = xmmword_21A0EB370;
  *(v17 + 68) = 2;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 120) = xmmword_21A0EB370;
  *(v17 + 136) = 0x200000000;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0u;
  *(v17 + 176) = 0u;
  *(v17 + 192) = 0u;
  *(v17 + 208) = xmmword_21A0EB370;
  *(v17 + 232) = 0;
  *(v17 + 240) = 0;
  *(v17 + 224) = 0x200000000;
  sub_21A0B03A4(v15, v17 + v16[7], type metadata accessor for ActivityHeaderData);
  v28 = (v17 + v16[8]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v34;
  *(v17 + v16[9]) = v35.n128_u64[0];
  v30 = v17 + v16[10];
  *v30 = v29;
  *(v30 + 8) = v21;
  *(v30 + 16) = v22;
  *(v30 + 24) = v23;
  *(v30 + 32) = v24;
  LOBYTE(v29) = v32;
  *(v30 + 33) = v33;
  *(v30 + 34) = v29;
  return sub_219F4D494(v36, v17 + v16[11], &qword_27CCD9628);
}

uint64_t sub_21A0AEB30()
{
  v0 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v69 - v6;
  v8 = type metadata accessor for ActivityMinimalAppearanceTheme();
  __swift_allocate_value_buffer(v8, qword_27CCFE728);
  v73 = __swift_project_value_buffer(v8, qword_27CCFE728);
  *v3 = 0xD000000000000010;
  *(v3 + 1) = 0x800000021A10B0D0;
  v3[16] = 0;
  *(v3 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  sub_21A0B0E40(v3, v7, type metadata accessor for ActivityAsset);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v9 = qword_27CCDBDB0;

  sub_21A0B0EA8(v3, type metadata accessor for ActivityAsset);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  *&v7[*(v10 + 28)] = v9;
  v11 = MEMORY[0x277D84F90];
  *&v7[*(v10 + 32)] = MEMORY[0x277D84F90];
  v12 = qword_27CCDBDB0;
  v13 = qword_27CCD9188;

  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
    v14 = qword_27CCDBDB0;
  }

  v15 = (dword_27CCDB788 | (byte_27CCDB78C << 32)) & 0xFFFFFFC1FFFFFFFFLL;
  memset(v74, 0, sizeof(v74));
  v75 = 0;

  v71 = xmmword_27CCDB768;
  v72 = xmmword_27CCDB748;
  v69 = *&qword_27CCDB778;
  v70 = unk_27CCDB758;
  sub_219F6409C(v74, &qword_27CCD9F78);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  sub_219F6409C(v76, &qword_27CCD9F78);
  *&v78[0] = 4;
  *&v79 = 0;
  BYTE4(v80) = 0x80;
  LODWORD(v80) = 0;
  *(&v80 + 1) = v12;
  *&v81[0] = v11;
  *(&v81[1] + 8) = v70;
  *(v81 + 8) = v72;
  *(&v81[3] + 8) = v69;
  *(&v81[2] + 8) = v71;
  BYTE12(v81[4]) = BYTE4(v15);
  DWORD2(v81[4]) = v15;
  *&v82 = v14;
  *(&v82 + 1) = v11;
  nullsub_1(v78, v16);
  sub_219F5EC1C(&v83);
  v17 = v73;
  v18 = (v73 + *(v8 + 20));
  sub_219F5EC1C(v94);
  v19 = v94[0];
  v20 = v94[2];
  v18[1] = v94[1];
  v18[2] = v20;
  *v18 = v19;
  v21 = v94[3];
  v22 = v94[4];
  v23 = v94[6];
  v18[5] = v94[5];
  v18[6] = v23;
  v18[3] = v21;
  v18[4] = v22;
  v24 = v94[7];
  v25 = v94[8];
  v26 = v94[10];
  v18[9] = v94[9];
  v18[10] = v26;
  v18[7] = v24;
  v18[8] = v25;
  v27 = (v17 + *(v8 + 24));
  v28 = v83;
  v29 = v85;
  v27[1] = v84;
  v27[2] = v29;
  *v27 = v28;
  v30 = v86;
  v31 = v87;
  v32 = v89;
  v27[5] = v88;
  v27[6] = v32;
  v27[3] = v30;
  v27[4] = v31;
  v33 = v90;
  v34 = v91;
  v35 = v93;
  v27[9] = v92;
  v27[10] = v35;
  v27[7] = v33;
  v27[8] = v34;
  sub_219F4D494(v7, v17, &qword_27CCD98D0);
  v37 = v18[1];
  v36 = v18[2];
  v95[0] = *v18;
  v95[1] = v37;
  v95[2] = v36;
  v38 = v18[6];
  v40 = v18[3];
  v39 = v18[4];
  v95[5] = v18[5];
  v95[6] = v38;
  v95[3] = v40;
  v95[4] = v39;
  v41 = v18[10];
  v43 = v18[7];
  v42 = v18[8];
  v95[9] = v18[9];
  v95[10] = v41;
  v95[7] = v43;
  v95[8] = v42;
  v44 = v78[0];
  v45 = v78[2];
  v18[1] = v78[1];
  v18[2] = v45;
  *v18 = v44;
  v46 = v79;
  v47 = v80;
  v48 = v81[1];
  v18[5] = v81[0];
  v18[6] = v48;
  v18[3] = v46;
  v18[4] = v47;
  v49 = v81[2];
  v50 = v81[3];
  v51 = v82;
  v18[9] = v81[4];
  v18[10] = v51;
  v18[7] = v49;
  v18[8] = v50;
  sub_219F6409C(v95, &qword_27CCD9B40);
  v53 = v27[1];
  v52 = v27[2];
  v96[0] = *v27;
  v96[1] = v53;
  v96[2] = v52;
  v54 = v27[5];
  v56 = v27[3];
  v55 = v27[4];
  v96[6] = v27[6];
  v96[5] = v54;
  v96[3] = v56;
  v96[4] = v55;
  v57 = v27[9];
  v59 = v27[7];
  v58 = v27[8];
  v96[10] = v27[10];
  v96[9] = v57;
  v96[7] = v59;
  v96[8] = v58;
  v60 = v83;
  v61 = v85;
  v27[1] = v84;
  v27[2] = v61;
  *v27 = v60;
  v62 = v86;
  v63 = v87;
  v64 = v89;
  v27[5] = v88;
  v27[6] = v64;
  v27[3] = v62;
  v27[4] = v63;
  v65 = v90;
  v66 = v91;
  v67 = v93;
  v27[9] = v92;
  v27[10] = v67;
  v27[7] = v65;
  v27[8] = v66;
  return sub_219F6409C(v96, &qword_27CCDA4A8);
}

double sub_21A0AEFE0()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  strcpy(&xmmword_27CCDDA48, "Donald Trump");
  BYTE13(xmmword_27CCDDA48) = 0;
  HIWORD(xmmword_27CCDDA48) = -5120;
  qword_27CCDDA58 = 0x706D757254;
  unk_27CCDDA60 = 0xE500000000000000;
  strcpy(&xmmword_27CCDDA68, "donald-trump");
  BYTE13(xmmword_27CCDDA68) = 0;
  HIWORD(xmmword_27CCDDA68) = -5120;
  xmmword_27CCDDA78 = xmmword_27CCDB790;
  xmmword_27CCDDA88 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDA98 = xmmword_27CCDB7B0;
  xmmword_27CCDDAA8 = *&qword_27CCDB7C0;
  dword_27CCDDAB8 = dword_27CCDB7D0;
  byte_27CCDDABC = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF0AC()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  *&xmmword_27CCDDAC0 = 0x614820696B6B694ELL;
  *(&xmmword_27CCDDAC0 + 1) = 0xEB0000000079656CLL;
  qword_27CCDDAD0 = 0x79656C6148;
  unk_27CCDDAD8 = 0xE500000000000000;
  *&xmmword_27CCDDAE0 = 0x61682D696B6B696ELL;
  *(&xmmword_27CCDDAE0 + 1) = 0xEB0000000079656CLL;
  xmmword_27CCDDAF0 = xmmword_27CCDB790;
  xmmword_27CCDDB00 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDB10 = xmmword_27CCDB7B0;
  xmmword_27CCDDB20 = *&qword_27CCDB7C0;
  dword_27CCDDB30 = dword_27CCDB7D0;
  byte_27CCDDB34 = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF178()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  strcpy(&xmmword_27CCDDB38, "Ron DeSantis");
  BYTE13(xmmword_27CCDDB38) = 0;
  HIWORD(xmmword_27CCDDB38) = -5120;
  qword_27CCDDB48 = 0x7369746E61536544;
  unk_27CCDDB50 = 0xE800000000000000;
  strcpy(&xmmword_27CCDDB58, "ron-desantis");
  BYTE13(xmmword_27CCDDB58) = 0;
  HIWORD(xmmword_27CCDDB58) = -5120;
  xmmword_27CCDDB68 = xmmword_27CCDB790;
  xmmword_27CCDDB78 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDB88 = xmmword_27CCDB7B0;
  xmmword_27CCDDB98 = *&qword_27CCDB7C0;
  dword_27CCDDBA8 = dword_27CCDB7D0;
  byte_27CCDDBAC = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF248()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  *&xmmword_27CCDDBB0 = 0x6152206B65766956;
  *(&xmmword_27CCDDBB0 + 1) = 0xEF796D617773616DLL;
  qword_27CCDDBC0 = 0x6D617773616D6152;
  unk_27CCDDBC8 = 0xE900000000000079;
  *&xmmword_27CCDDBD0 = 0x61722D6B65766976;
  *(&xmmword_27CCDDBD0 + 1) = 0xEF796D617773616DLL;
  xmmword_27CCDDBE0 = xmmword_27CCDB790;
  xmmword_27CCDDBF0 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDC00 = xmmword_27CCDB7B0;
  xmmword_27CCDDC10 = *&qword_27CCDB7C0;
  dword_27CCDDC20 = dword_27CCDB7D0;
  byte_27CCDDC24 = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF320()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  *&xmmword_27CCDDC28 = 0x6E655020656B694DLL;
  *(&xmmword_27CCDDC28 + 1) = 0xEA00000000006563;
  qword_27CCDDC38 = 0x65636E6550;
  unk_27CCDDC40 = 0xE500000000000000;
  *&xmmword_27CCDDC48 = 0x6E65702D656B696DLL;
  *(&xmmword_27CCDDC48 + 1) = 0xEA00000000006563;
  xmmword_27CCDDC58 = xmmword_27CCDB790;
  xmmword_27CCDDC68 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDC78 = xmmword_27CCDB7B0;
  xmmword_27CCDDC88 = *&qword_27CCDB7C0;
  dword_27CCDDC98 = dword_27CCDB7D0;
  byte_27CCDDC9C = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

char *sub_21A0AF3E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD18);
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

unint64_t sub_21A0AF4DC()
{
  result = qword_27CCDDCA0;
  if (!qword_27CCDDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCA0);
  }

  return result;
}

unint64_t sub_21A0AF530()
{
  result = qword_27CCDDCA8;
  if (!qword_27CCDDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCA8);
  }

  return result;
}

BOOL _s22NewsLiveActivitiesCore20PrimaryElectionThemeV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v111 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD998);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v111 - v24;
  v26 = *(a1 + 6);
  v27 = *(a1 + 16) | (*(a1 + 68) << 32);
  v28 = a2[3];
  v29 = *(a2 + 16) | (*(a2 + 68) << 32);
  if ((~*(a1 + 12) & 0xFFFFFFFE) != 0 || (v27 & 0xFE00000000) != 0x200000000)
  {
    v31 = *(a1 + 7);
    v32 = a1[1];
    v148 = *a1;
    v149 = v32;
    v150 = a1[2];
    *&v151 = v26;
    *(&v151 + 1) = v31;
    v152[4] = BYTE4(v27);
    *v152 = v27;
    if ((~v28 & 0xFFFFFFFE) == 0 && (v29 & 0xFE00000000) == 0x200000000)
    {
      return 0;
    }

    v33 = a2[1];
    v176 = *a2;
    v177 = v33;
    v178 = a2[2];
    v179 = v28;
    LODWORD(v180) = v29;
    BYTE4(v180) = BYTE4(v29);
    v121 = a1;
    v34 = a2;
    v35 = v8;
    v36 = v4;
    v37 = v5;
    v38 = &v111 - v24;
    v39 = v16;
    v40 = v23;
    v41 = _s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(&v148, &v176);
    v23 = v40;
    v16 = v39;
    v25 = v38;
    v5 = v37;
    v4 = v36;
    v8 = v35;
    a2 = v34;
    a1 = v121;
    if ((v41 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v120 = v13;
    v121 = v5;
    v119 = v21;
    v42 = *(a1 + 120);
    v159[2] = *(a1 + 104);
    v160 = v42;
    v161 = *(a1 + 136);
    v162 = *(a1 + 19);
    v43 = *(a1 + 88);
    v159[0] = *(a1 + 72);
    v159[1] = v43;
    v44 = *(a2 + 120);
    v163[2] = *(a2 + 104);
    v164 = v44;
    v165 = *(a2 + 136);
    v166 = *(a2 + 19);
    v45 = *(a2 + 88);
    v163[0] = *(a2 + 72);
    v163[1] = v45;
    v46 = *(a1 + 88);
    v142 = *(a1 + 72);
    v143 = v46;
    v144 = *(a1 + 104);
    v47 = v160;
    v48 = v161;
    v50 = (~v164 & 0xFFFFFFFE) == 0 && (v165 & 0xFE00000000) == 0x200000000;
    v137[0] = a1[9];
    if ((~v160 & 0xFFFFFFFE) != 0 || (v161 & 0xFE00000000) != 0x200000000)
    {
      if (!v50)
      {
        v115 = v8;
        v116 = v16;
        v117 = v23;
        v118 = v4;
        v55 = *(a2 + 88);
        v148 = *(a2 + 72);
        v149 = v55;
        v150 = *(a2 + 104);
        v151 = v164;
        *v152 = v165;
        *&v152[8] = a2[9];
        v176 = v148;
        v177 = v55;
        v178 = v150;
        v179 = v164;
        v181 = *&v152[16];
        v180 = *v152;
        v56 = *(a1 + 72);
        v57 = *(a1 + 104);
        v173[1] = *(a1 + 88);
        v173[2] = v57;
        v173[0] = v56;
        v175 = a1[9];
        v173[3] = v160;
        v174 = v161;
        sub_219F45500(v159, &v167, &qword_27CCDAB00);
        sub_219F45500(v163, &v167, &qword_27CCDAB00);
        v58 = sub_21A0D99E0(v173, &v176);
        sub_219F6409C(&v148, &qword_27CCDAB00);
        v167 = v142;
        v168 = v143;
        v169 = v144;
        v170 = v47;
        v171 = v48;
        v172 = v137[0];
        sub_219F6409C(&v167, &qword_27CCDAB00);
        if ((v58 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }

    else if (v50)
    {
      v115 = v8;
      v116 = v16;
      v117 = v23;
      v118 = v4;
      v51 = *(a1 + 88);
      v148 = *(a1 + 72);
      v149 = v51;
      v150 = *(a1 + 104);
      v151 = v160;
      *v152 = v161;
      *&v152[8] = a1[9];
      sub_219F45500(v159, &v176, &qword_27CCDAB00);
      sub_219F45500(v163, &v176, &qword_27CCDAB00);
      sub_219F6409C(&v148, &qword_27CCDAB00);
LABEL_22:
      v59 = a1[11];
      v60 = a1[13];
      v138 = a1[12];
      v139 = v60;
      v140 = a1[14];
      v61 = a1[11];
      v137[0] = a1[10];
      v137[1] = v61;
      v62 = a2[13];
      v144 = a2[12];
      v145 = v62;
      v146 = a2[14];
      v63 = a2[11];
      v142 = a2[10];
      v143 = v63;
      v134 = v137[0];
      v135 = v59;
      v141 = *(a1 + 30);
      v147 = *(a2 + 30);
      v136 = v138;
      v64 = v139;
      v65 = v140;
      v67 = (~v145 & 0xFFFFFFFE) == 0 && (v146 & 0xFE00000000) == 0x200000000;
      v133 = *(a1 + 232);
      if ((~v139 & 0xFFFFFFFE) != 0 || (v140 & 0xFE00000000) != 0x200000000)
      {
        if (!v67)
        {
          v75 = a2[11];
          v128 = a2[10];
          v129 = v75;
          v130 = a2[12];
          v131 = v145;
          *&v132[0] = v146;
          *(v132 + 8) = *(a2 + 232);
          v148 = v128;
          v149 = v75;
          v150 = v130;
          v151 = v145;
          *&v152[16] = *&v132[1];
          *v152 = v132[0];
          v76 = a1[10];
          v77 = a1[12];
          v168 = a1[11];
          v169 = v77;
          v167 = v76;
          v172 = *(a1 + 232);
          v170 = v139;
          v171 = v140;
          sub_219F45500(v137, &v122, &qword_27CCDAB00);
          sub_219F45500(&v142, &v122, &qword_27CCDAB00);
          v78 = sub_21A0D99E0(&v167, &v148);
          sub_219F6409C(&v128, &qword_27CCDAB00);
          v122 = v134;
          v123 = v135;
          v124 = v136;
          v125 = v64;
          v126 = v65;
          v127 = v133;
          v68 = v120;
          sub_219F6409C(&v122, &qword_27CCDAB00);
          if ((v78 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v68 = v120;
        if (v67)
        {
          v69 = a1[11];
          v148 = a1[10];
          v149 = v69;
          v150 = a1[12];
          v151 = v139;
          *v152 = v140;
          *&v152[8] = *(a1 + 232);
          sub_219F45500(v137, &v167, &qword_27CCDAB00);
          sub_219F45500(&v142, &v167, &qword_27CCDAB00);
          sub_219F6409C(&v148, &qword_27CCDAB00);
LABEL_39:
          v79 = type metadata accessor for PrimaryElectionTheme();
          if ((static ActivityHeaderData.== infix(_:_:)(a1 + v79[7], a2 + v79[7]) & 1) == 0)
          {
            return 0;
          }

          v80 = v79[8];
          v81 = (a1 + v80);
          v82 = *(a1 + v80 + 8);
          v83 = (a2 + v80);
          v84 = v83[1];
          if (v82)
          {
            if (!v84 || (*v81 != *v83 || v82 != v84) && (sub_21A0E6C5C() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v84)
          {
            return 0;
          }

          if ((sub_219F78CEC(*(a1 + v79[9]), *(a2 + v79[9])) & 1) == 0)
          {
            return 0;
          }

          v85 = v79[10];
          v87 = *(a1 + v85);
          v86 = *(a1 + v85 + 8);
          v88 = *(a1 + v85 + 16);
          v114 = *(a1 + v85 + 24);
          v89 = *(a1 + v85 + 32);
          v90 = *(a1 + v85 + 33);
          *&v128 = v87;
          *(&v128 + 1) = v86;
          *&v129 = v88;
          *(&v129 + 1) = v114;
          LOBYTE(v130) = v89;
          *(&v130 + 1) = v90;
          v91 = (a2 + v85);
          v92 = *v91;
          v93 = v91[1];
          v94 = v91[2];
          v95 = v91[3];
          v112 = *(v91 + 32);
          v113 = v89;
          LOWORD(v91) = *(v91 + 33);
          *&v122 = v92;
          *(&v122 + 1) = v93;
          *&v123 = v94;
          *(&v123 + 1) = v95;
          LOBYTE(v124) = v112;
          *(&v124 + 1) = v91;

          sub_219F79C1C();

          sub_219F79C1C();
          LOBYTE(v95) = _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(&v128, &v122);

          sub_219F79CD8();

          sub_219F79CD8();
          if ((v95 & 1) == 0)
          {
            return 0;
          }

          v96 = v79[11];
          v97 = *(v117 + 48);
          sub_219F45500(a1 + v96, v25, &qword_27CCD9628);
          sub_219F45500(a2 + v96, &v25[v97], &qword_27CCD9628);
          v98 = *(v121 + 48);
          v99 = v118;
          v100 = v98(v25, 1, v118);
          v118 = v99;
          if (v100 == 1)
          {
            if (v98(&v25[v97], 1, v99) == 1)
            {
              sub_219F6409C(v25, &qword_27CCD9628);
LABEL_56:
              if ((static ActivityMinimalAppearanceTheme.== infix(_:_:)(a1 + v79[12], a2 + v79[12]) & 1) == 0)
              {
                return 0;
              }

              v104 = v79[13];
              v105 = *(v117 + 48);
              v106 = a1 + v104;
              v107 = v119;
              sub_219F45500(v106, v119, &qword_27CCD9628);
              sub_219F45500(a2 + v104, v107 + v105, &qword_27CCD9628);
              v108 = v118;
              if (v98(v107, 1, v118) == 1)
              {
                if (v98((v107 + v105), 1, v108) == 1)
                {
                  sub_219F6409C(v107, &qword_27CCD9628);
                  return 1;
                }

                goto LABEL_62;
              }

              sub_219F45500(v107, v68, &qword_27CCD9628);
              if (v98((v107 + v105), 1, v108) == 1)
              {
                sub_21A0B0EA8(v68, type metadata accessor for ActivityMinimalAppearanceTheme);
LABEL_62:
                v72 = &qword_27CCDD998;
                v73 = v107;
                goto LABEL_35;
              }

              v109 = v115;
              sub_21A0B03A4(v107 + v105, v115, type metadata accessor for ActivityMinimalAppearanceTheme);
              v110 = static ActivityMinimalAppearanceTheme.== infix(_:_:)(v68, v109);
              sub_21A0B0EA8(v109, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_21A0B0EA8(v68, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_219F6409C(v107, &qword_27CCD9628);
              return (v110 & 1) != 0;
            }
          }

          else
          {
            v101 = v116;
            sub_219F45500(v25, v116, &qword_27CCD9628);
            if (v98(&v25[v97], 1, v99) != 1)
            {
              v102 = &v25[v97];
              v103 = v115;
              sub_21A0B03A4(v102, v115, type metadata accessor for ActivityMinimalAppearanceTheme);
              LODWORD(v121) = static ActivityMinimalAppearanceTheme.== infix(_:_:)(v101, v103);
              sub_21A0B0EA8(v103, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_21A0B0EA8(v101, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_219F6409C(v25, &qword_27CCD9628);
              v68 = v120;
              if ((v121 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_56;
            }

            sub_21A0B0EA8(v101, type metadata accessor for ActivityMinimalAppearanceTheme);
          }

          v72 = &qword_27CCDD998;
          v73 = v25;
LABEL_35:
          sub_219F6409C(v73, v72);
          return 0;
        }
      }

      v70 = a1[11];
      v148 = a1[10];
      v149 = v70;
      v150 = a1[12];
      *&v152[8] = *(a1 + 232);
      v71 = a2[11];
      v153 = a2[10];
      v151 = v139;
      v154 = v71;
      v155 = a2[12];
      *v152 = v140;
      v156 = v145;
      v157 = v146;
      v158 = *(a2 + 232);
      sub_219F45500(v137, &v167, &qword_27CCDAB00);
      v53 = &v142;
      v54 = &v167;
LABEL_34:
      sub_219F45500(v53, v54, &qword_27CCDAB00);
      v72 = &unk_27CCDD9A0;
      v73 = &v148;
      goto LABEL_35;
    }

    v52 = *(a1 + 88);
    v148 = *(a1 + 72);
    v149 = v52;
    v150 = *(a1 + 104);
    v151 = v160;
    *&v152[8] = a1[9];
    v153 = *(a2 + 72);
    v154 = *(a2 + 88);
    v155 = *(a2 + 104);
    *v152 = v161;
    v156 = v164;
    v157 = v165;
    v158 = a2[9];
    sub_219F45500(v159, &v176, &qword_27CCDAB00);
    v53 = v163;
    v54 = &v176;
    goto LABEL_34;
  }

  v30 = 0;
  if ((~v28 & 0xFFFFFFFE) == 0 && (v29 & 0xFE00000000) == 0x200000000)
  {
    goto LABEL_9;
  }

  return v30;
}

uint64_t sub_21A0B0294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A0B02FC()
{
  result = qword_27CCDDCB8;
  if (!qword_27CCDDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCB8);
  }

  return result;
}

unint64_t sub_21A0B0350()
{
  result = qword_27CCDDCD0;
  if (!qword_27CCDDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCD0);
  }

  return result;
}

uint64_t sub_21A0B03A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0B040C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDDCC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A0B0484()
{
  result = qword_27CCDDCE8;
  if (!qword_27CCDDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCE8);
  }

  return result;
}

uint64_t sub_21A0B0520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PrimaryElectionTheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrimaryElectionTheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A0B06E4()
{
  result = qword_27CCDDCF8;
  if (!qword_27CCDDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCF8);
  }

  return result;
}

unint64_t sub_21A0B073C()
{
  result = qword_27CCDDD00;
  if (!qword_27CCDDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD00);
  }

  return result;
}

unint64_t sub_21A0B0794()
{
  result = qword_27CCDDD08;
  if (!qword_27CCDDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD08);
  }

  return result;
}

uint64_t sub_21A0B07E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54656E696C79656BLL && a2 == 0xEB00000000746E69;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEE00746E6954646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10B010 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x784566666F6E7572 && a2 == 0xED00007470726563 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614272656E6E6977 && a2 == 0xEB00000000656764 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x546C616D696E696DLL && a2 == 0xEC000000656D6568 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A10B030 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021A10B050 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_21A0B0B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21A0FBCA0;
  if (qword_27CCD9238 != -1)
  {
    swift_once();
  }

  v1 = xmmword_27CCDDA88;
  v2 = xmmword_27CCDDA98;
  v3 = xmmword_27CCDDAA8;
  v38[5] = xmmword_27CCDDA98;
  v39[0] = xmmword_27CCDDAA8;
  v4 = *(&xmmword_27CCDDAA8 + 13);
  *(v39 + 13) = *(&xmmword_27CCDDAA8 + 13);
  v5 = *&qword_27CCDDA58;
  v38[0] = xmmword_27CCDDA48;
  v6 = xmmword_27CCDDA68;
  v7 = xmmword_27CCDDA78;
  v38[1] = *&qword_27CCDDA58;
  v38[2] = xmmword_27CCDDA68;
  v38[3] = xmmword_27CCDDA78;
  v38[4] = xmmword_27CCDDA88;
  *(v0 + 32) = xmmword_27CCDDA48;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  *(v0 + 96) = v1;
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  *(v0 + 141) = v4;
  sub_219F72ECC(v38, v46);
  if (qword_27CCD9240 != -1)
  {
    swift_once();
  }

  v8 = xmmword_27CCDDB00;
  v9 = xmmword_27CCDDB10;
  v40[4] = xmmword_27CCDDB00;
  v40[5] = xmmword_27CCDDB10;
  v10 = xmmword_27CCDDB20;
  v41[0] = xmmword_27CCDDB20;
  v11 = *(&xmmword_27CCDDB20 + 13);
  *(v41 + 13) = *(&xmmword_27CCDDB20 + 13);
  v12 = *&qword_27CCDDAD0;
  v40[0] = xmmword_27CCDDAC0;
  v40[1] = *&qword_27CCDDAD0;
  v13 = xmmword_27CCDDAE0;
  v14 = xmmword_27CCDDAF0;
  v40[2] = xmmword_27CCDDAE0;
  v40[3] = xmmword_27CCDDAF0;
  *(v0 + 152) = xmmword_27CCDDAC0;
  *(v0 + 168) = v12;
  *(v0 + 184) = v13;
  *(v0 + 200) = v14;
  *(v0 + 216) = v8;
  *(v0 + 232) = v9;
  *(v0 + 248) = v10;
  *(v0 + 261) = v11;
  sub_219F72ECC(v40, v46);
  if (qword_27CCD9248 != -1)
  {
    swift_once();
  }

  v15 = xmmword_27CCDDB78;
  v16 = xmmword_27CCDDB88;
  v42[4] = xmmword_27CCDDB78;
  v42[5] = xmmword_27CCDDB88;
  v17 = xmmword_27CCDDB98;
  v43[0] = xmmword_27CCDDB98;
  v18 = *(&xmmword_27CCDDB98 + 13);
  *(v43 + 13) = *(&xmmword_27CCDDB98 + 13);
  v19 = *&qword_27CCDDB48;
  v42[0] = xmmword_27CCDDB38;
  v42[1] = *&qword_27CCDDB48;
  v20 = xmmword_27CCDDB58;
  v21 = xmmword_27CCDDB68;
  v42[2] = xmmword_27CCDDB58;
  v42[3] = xmmword_27CCDDB68;
  *(v0 + 272) = xmmword_27CCDDB38;
  *(v0 + 288) = v19;
  *(v0 + 304) = v20;
  *(v0 + 320) = v21;
  *(v0 + 336) = v15;
  *(v0 + 352) = v16;
  *(v0 + 368) = v17;
  *(v0 + 381) = v18;
  sub_219F72ECC(v42, v46);
  if (qword_27CCD9250 != -1)
  {
    swift_once();
  }

  v22 = xmmword_27CCDDBF0;
  v23 = xmmword_27CCDDC00;
  v44[4] = xmmword_27CCDDBF0;
  v44[5] = xmmword_27CCDDC00;
  v24 = xmmword_27CCDDC10;
  v45[0] = xmmword_27CCDDC10;
  v25 = *(&xmmword_27CCDDC10 + 13);
  *(v45 + 13) = *(&xmmword_27CCDDC10 + 13);
  v26 = *&qword_27CCDDBC0;
  v44[0] = xmmword_27CCDDBB0;
  v44[1] = *&qword_27CCDDBC0;
  v27 = xmmword_27CCDDBD0;
  v28 = xmmword_27CCDDBE0;
  v44[2] = xmmword_27CCDDBD0;
  v44[3] = xmmword_27CCDDBE0;
  *(v0 + 392) = xmmword_27CCDDBB0;
  *(v0 + 408) = v26;
  *(v0 + 424) = v27;
  *(v0 + 440) = v28;
  *(v0 + 456) = v22;
  *(v0 + 472) = v23;
  *(v0 + 488) = v24;
  *(v0 + 501) = v25;
  sub_219F72ECC(v44, v46);
  if (qword_27CCD9258 != -1)
  {
    swift_once();
  }

  v29 = xmmword_27CCDDC68;
  v30 = xmmword_27CCDDC78;
  v46[4] = xmmword_27CCDDC68;
  v46[5] = xmmword_27CCDDC78;
  v31 = xmmword_27CCDDC88;
  v47[0] = xmmword_27CCDDC88;
  v32 = *(&xmmword_27CCDDC88 + 13);
  *(v47 + 13) = *(&xmmword_27CCDDC88 + 13);
  v33 = *&qword_27CCDDC38;
  v46[0] = xmmword_27CCDDC28;
  v46[1] = *&qword_27CCDDC38;
  v34 = xmmword_27CCDDC48;
  v35 = xmmword_27CCDDC58;
  v46[2] = xmmword_27CCDDC48;
  v46[3] = xmmword_27CCDDC58;
  *(v0 + 512) = xmmword_27CCDDC28;
  *(v0 + 528) = v33;
  *(v0 + 544) = v34;
  *(v0 + 560) = v35;
  *(v0 + 576) = v29;
  *(v0 + 592) = v30;
  *(v0 + 608) = v31;
  *(v0 + 621) = v32;
  sub_219F72ECC(v46, v37);
  return v0;
}

uint64_t sub_21A0B0E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0B0EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A0B0F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E524C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v24 - v11;
  sub_219F3F240(v27);
  v13 = v27[0];
  v25 = v27[1];
  v14 = v28;
  sub_21A0E541C();
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3C0], v4);
  v15 = sub_21A0E523C();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v12, v4);
  sub_219F9AE04();
  sub_21A0E555C();
  v17 = v26;
  v18 = sub_21A0E548C();
  result = sub_21A0E545C();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v20 < 9.22337204e18)
  {
    v21 = v20;
    v22 = sub_21A07ADFC(MEMORY[0x277D84F90]);
    v23 = sub_21A0E554C();
    result = (*(*(v23 - 8) + 8))(a1, v23);
    *a2 = v13;
    *(a2 + 1) = v25;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
    *(a2 + 17) = v17;
    *(a2 + 18) = v18 & 1;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21A0B1158@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A0E554C();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  return sub_21A0B0F0C(v6, a1);
}

uint64_t ScheduledLiveActivity.scheduleRequest.getter()
{
  v1 = sub_21A0E495C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v17 - v8;
  v10 = sub_21A0E4AEC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = *v0;
  v17[0] = *(v0 + 1);
  v17[1] = v12;
  v13 = type metadata accessor for ScheduledLiveActivity();
  v14 = *(v2 + 16);
  v14(v9, &v0[*(v13 + 20)], v1);
  v14(v6, &v0[*(v13 + 28)], v1);

  sub_21A0E4A6C();
  v15 = objc_allocWithZone(sub_21A0E49EC());
  return sub_21A0E49BC();
}

uint64_t ScheduledLiveActivity.init(activityID:scheduleDate:backgroundTaskID:originalScheduleDate:retryCount:scheduleDelay:randomInitialDelay:scheduleTimeWindow:retryInterval:retryScheduleTimeWindow:retryCountMax:expectedDownloadByteSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v24 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v24;
  v25 = type metadata accessor for ScheduledLiveActivity();
  v26 = v25[5];
  v27 = sub_21A0E495C();
  v28 = *(*(v27 - 8) + 32);
  v28(&a9[v26], a2, v27);
  v29 = &a9[v25[6]];
  *v29 = a3;
  *(v29 + 1) = a4;
  result = (v28)(&a9[v25[7]], a5, v27);
  *&a9[v25[8]] = a6;
  *&a9[v25[9]] = a10;
  *&a9[v25[10]] = a11;
  *&a9[v25[11]] = a12;
  *&a9[v25[12]] = a13;
  *&a9[v25[13]] = a14;
  *&a9[v25[14]] = a7;
  *&a9[v25[15]] = a8;
  return result;
}

uint64_t ScheduledLiveActivity.init(activityID:scheduleDate:backgroundTaskIDSuffix:originalScheduleDate:retryCount:scheduleDelay:randomInitialDelay:scheduleTimeWindow:retryInterval:retryScheduleTimeWindow:retryCountMax:expectedDownloadByteSize:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v23 = *a1;
  v24 = a1[1];
  v25 = type metadata accessor for ScheduledLiveActivity();
  v26 = v25[5];
  v27 = sub_21A0E495C();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&a9[v26], a2, v27);
  MEMORY[0x21CED1980](a3, a4);

  (*(v28 + 8))(a2, v27);
  *a9 = v23;
  *(a9 + 1) = v24;
  v29 = &a9[v25[6]];
  *v29 = 0xD000000000000013;
  *(v29 + 1) = 0x800000021A10AB90;
  result = (*(v28 + 32))(&a9[v25[7]], a5, v27);
  *&a9[v25[8]] = a6;
  *&a9[v25[9]] = a10;
  *&a9[v25[10]] = a11;
  *&a9[v25[11]] = a12;
  *&a9[v25[12]] = a13;
  *&a9[v25[13]] = a14;
  *&a9[v25[14]] = a7;
  *&a9[v25[15]] = a8;
  return result;
}

uint64_t ScheduledLiveActivity.activityID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ScheduledLiveActivity.scheduleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledLiveActivity() + 20);
  v4 = sub_21A0E495C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledLiveActivity.backgroundTaskID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduledLiveActivity() + 24));

  return v1;
}

uint64_t ScheduledLiveActivity.originalScheduleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledLiveActivity() + 28);
  v4 = sub_21A0E495C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledLiveActivity.with(backgroundTaskIDSuffix:scheduleDate:originalScheduleDate:retryCount:scheduleDelay:scheduleTimeWindow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, uint64_t a10, char a11)
{
  v12 = v11;
  v58 = a6;
  v59 = a8;
  v60 = a5;
  v54 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v53 - v24;
  v26 = sub_21A0E495C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26, a2);
  v63 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v61 = a7;
  v62 = &v53 - v31;
  if (a2)
  {
    v64 = 0xD000000000000013;
    v65 = 0x800000021A10AB90;
    MEMORY[0x21CED1980](a1);
    v56 = v65;
    v57 = v64;
  }

  else
  {
    v32 = &v12[*(type metadata accessor for ScheduledLiveActivity() + 24)];
    v33 = *v32;
    v56 = v32[1];
    v57 = v33;
  }

  v34 = *(v12 + 1);
  v55 = *v12;
  sub_21A02456C(a3, v25);
  v35 = *(v27 + 48);
  if (v35(v25, 1, v26) == 1)
  {
    v36 = type metadata accessor for ScheduledLiveActivity();
    (*(v27 + 16))(v62, &v12[*(v36 + 20)], v26);
    v37 = v35(v25, 1, v26);

    if (v37 != 1)
    {
      sub_21A04DDF4(v25);
    }
  }

  else
  {
    (*(v27 + 32))(v62, v25, v26);
  }

  sub_21A02456C(v54, v22);
  if (v35(v22, 1, v26) == 1)
  {
    v38 = type metadata accessor for ScheduledLiveActivity();
    (*(v27 + 16))(v63, &v12[*(v38 + 28)], v26);
    v39 = v35(v22, 1, v26);
    v41 = v60;
    v40 = v61;
    if (v39 != 1)
    {
      sub_21A04DDF4(v22);
    }
  }

  else
  {
    (*(v27 + 32))(v63, v22, v26);
    v41 = v60;
    v40 = v61;
  }

  if (v58)
  {
    v41 = *&v12[*(type metadata accessor for ScheduledLiveActivity() + 32)];
  }

  if (v59)
  {
    v40 = *&v12[*(type metadata accessor for ScheduledLiveActivity() + 36)];
  }

  v43 = type metadata accessor for ScheduledLiveActivity();
  v44 = v43;
  v45 = *&v12[v43[10]];
  if (a11)
  {
    a10 = *&v12[v43[11]];
  }

  v46 = *&v12[v43[12]];
  v47 = *&v12[v43[13]];
  v48 = *&v12[v43[14]];
  *a9 = v55;
  *(a9 + 1) = v34;
  v49 = *(v27 + 32);
  v49(&a9[v43[5]], v62, v26);
  v50 = &a9[v44[6]];
  v51 = v56;
  *v50 = v57;
  v50[1] = v51;
  result = (v49)(&a9[v44[7]], v63, v26);
  *&a9[v44[8]] = v41;
  *&a9[v44[9]] = v40;
  *&a9[v44[10]] = v45;
  *&a9[v44[11]] = a10;
  *&a9[v44[12]] = v46;
  *&a9[v44[13]] = v47;
  *&a9[v44[14]] = v48;
  *&a9[v44[15]] = 100000;
  return result;
}

uint64_t sub_21A0B1E68(uint64_t a1)
{
  v2 = sub_21A0B3400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0B1EA4(uint64_t a1)
{
  v2 = sub_21A0B3400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScheduledLiveActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0B3400();
  sub_21A0E6EAC();
  v10 = v3[1];
  v12[0] = *v3;
  v12[1] = v10;
  v13 = 0;
  sub_21A02C7FC();

  sub_21A0E6BBC();
  if (v2)
  {
  }

  else
  {

    type metadata accessor for ScheduledLiveActivity();
    LOBYTE(v12[0]) = 1;
    sub_21A0E495C();
    sub_219F45060(&qword_27CCD9808, MEMORY[0x277CC9578]);
    sub_21A0E6BBC();
    LOBYTE(v12[0]) = 2;
    sub_21A0E6B7C();
    LOBYTE(v12[0]) = 3;
    sub_21A0E6BBC();
    LOBYTE(v12[0]) = 4;
    sub_21A0E6BAC();
    LOBYTE(v12[0]) = 5;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 6;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 7;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 8;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 9;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 10;
    sub_21A0E6BCC();
    LOBYTE(v12[0]) = 11;
    sub_21A0E6BCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ScheduledLiveActivity.hash(into:)()
{
  sub_21A0E626C();
  v1 = type metadata accessor for ScheduledLiveActivity();
  sub_21A0E495C();
  sub_219F45060(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  sub_21A0E626C();
  sub_21A0E615C();
  MEMORY[0x21CED2490](*(v0 + v1[8]));
  v2 = *(v0 + v1[9]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v2);
  v3 = *(v0 + v1[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v3);
  v4 = *(v0 + v1[11]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v4);
  v5 = *(v0 + v1[12]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v5);
  v6 = *(v0 + v1[13]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v6);
  MEMORY[0x21CED24C0](*(v0 + v1[14]));
  return MEMORY[0x21CED24C0](*(v0 + v1[15]));
}

uint64_t ScheduledLiveActivity.hashValue.getter()
{
  sub_21A0E6DAC();
  ScheduledLiveActivity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t ScheduledLiveActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD30);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v42 - v14;
  v16 = type metadata accessor for ScheduledLiveActivity();
  MEMORY[0x28223BE20](v16, v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0B3400();
  v50 = v15;
  v20 = v51;
  sub_21A0E6E7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v8;
  v43 = v19;
  v44 = v16;
  v51 = a1;
  v54 = 0;
  sub_21A02C850();
  sub_21A0E6ADC();
  v22 = v53;
  v23 = v43;
  *v43 = v52;
  *(v23 + 1) = v22;
  LOBYTE(v52) = 1;
  v24 = sub_219F45060(&qword_27CCD9838, MEMORY[0x277CC9578]);
  v25 = v46;
  sub_21A0E6ADC();
  v42[1] = v24;
  v26 = v11;
  v27 = v25;
  v28 = *(v47 + 32);
  v28(&v23[v44[5]], v26, v27);
  LOBYTE(v52) = 2;
  v42[2] = 0;
  v29 = sub_21A0E6A9C();
  v30 = &v23[v44[6]];
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v52) = 3;
  sub_21A0E6ADC();
  v28(&v23[v44[7]], v21, v27);
  LOBYTE(v52) = 4;
  v32 = sub_21A0E6ACC();
  v33 = v44;
  *&v23[v44[8]] = v32;
  LOBYTE(v52) = 5;
  sub_21A0E6ABC();
  *&v23[v33[9]] = v34;
  LOBYTE(v52) = 6;
  sub_21A0E6ABC();
  *&v23[v33[10]] = v35;
  LOBYTE(v52) = 7;
  sub_21A0E6ABC();
  *&v23[v33[11]] = v36;
  LOBYTE(v52) = 8;
  sub_21A0E6ABC();
  *&v23[v33[12]] = v37;
  LOBYTE(v52) = 9;
  sub_21A0E6ABC();
  *&v43[v44[13]] = v38;
  LOBYTE(v52) = 10;
  *&v43[v44[14]] = sub_21A0E6AEC();
  LOBYTE(v52) = 11;
  v39 = sub_21A0E6AEC();
  (*(v48 + 8))(v50, v49);
  v40 = v43;
  *&v43[v44[15]] = v39;
  sub_21A0B3454(v40, v45);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_21A0B34B8(v40);
}

uint64_t sub_21A0B2B4C()
{
  sub_21A0E6DAC();
  ScheduledLiveActivity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B2B90()
{
  sub_21A0E6DAC();
  ScheduledLiveActivity.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t ScheduledLiveActivity.description.getter()
{
  v1 = v0;
  sub_21A0E686C();
  MEMORY[0x21CED1980](0xD000000000000021, 0x800000021A10B110);
  MEMORY[0x21CED1980](*v1, v1[1]);
  MEMORY[0x21CED1980](0x6C75646568637320, 0xEE003D6574614465);
  v2 = type metadata accessor for ScheduledLiveActivity();
  sub_21A0E495C();
  sub_219F45060(&qword_27CCDAFE8, MEMORY[0x277CC9578]);
  v3 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v3);

  MEMORY[0x21CED1980](0xD000000000000012, 0x800000021A10B140);
  MEMORY[0x21CED1980](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  MEMORY[0x21CED1980](0xD000000000000016, 0x800000021A10B160);
  v4 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v4);

  MEMORY[0x21CED1980](0xD000000000000014, 0x800000021A10B180);
  sub_21A0E65CC();
  MEMORY[0x21CED1980](93, 0xE100000000000000);
  return 0;
}

uint64_t LiveActivityScheduleRequest.scheduledActivity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A0E4AEC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v80 = &v70 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v79 = &v70 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v76 = &v70 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v75 = &v70 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v72 = &v70 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v71 = &v70 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v70 = &v70 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v70 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v70 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v70 - v37;
  v39 = sub_21A0E49CC();
  v77 = v40;
  v78 = v39;
  sub_21A0E49DC();
  v41 = type metadata accessor for ScheduledLiveActivity();
  sub_21A0E4A5C();
  v42 = *(v3 + 8);
  v42(v38, v2);
  sub_21A0E49DC();
  v43 = sub_21A0E4AAC();
  v73 = v44;
  v74 = v43;
  v42(v35, v2);
  sub_21A0E49DC();
  sub_21A0E4A3C();
  v42(v31, v2);
  v45 = v70;
  sub_21A0E49DC();
  v46 = sub_21A0E4A4C();
  v42(v45, v2);
  v47 = v71;
  sub_21A0E49DC();
  sub_21A0E4A9C();
  v49 = v48;
  v42(v47, v2);
  v50 = v72;
  sub_21A0E49DC();
  sub_21A0E4ABC();
  v52 = v51;
  v42(v50, v2);
  v53 = v75;
  sub_21A0E49DC();
  sub_21A0E4ACC();
  v55 = v54;
  v42(v53, v2);
  v56 = v76;
  sub_21A0E49DC();
  sub_21A0E4A8C();
  v58 = v57;
  v42(v56, v2);
  v59 = v79;
  sub_21A0E49DC();
  sub_21A0E4A2C();
  v61 = v60;
  v42(v59, v2);
  v62 = v80;
  sub_21A0E49DC();
  v63 = sub_21A0E4A7C();
  v42(v62, v2);
  v64 = v81;
  sub_21A0E49DC();
  v65 = sub_21A0E4ADC();
  result = (v42)(v64, v2);
  v67 = v77;
  *a1 = v78;
  a1[1] = v67;
  v68 = (a1 + v41[6]);
  v69 = v73;
  *v68 = v74;
  v68[1] = v69;
  *(a1 + v41[8]) = v46;
  *(a1 + v41[9]) = v49;
  *(a1 + v41[10]) = v52;
  *(a1 + v41[11]) = v55;
  *(a1 + v41[12]) = v58;
  *(a1 + v41[13]) = v61;
  *(a1 + v41[14]) = v63;
  *(a1 + v41[15]) = v65;
  return result;
}

BOOL _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21A0E6C5C()) && (v5 = type metadata accessor for ScheduledLiveActivity(), (sub_21A0E492C()) && ((v6 = v5[6], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (sub_21A0E6C5C()) && (sub_21A0E492C() & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]) && *(a1 + v5[13]) == *(a2 + v5[13]) && *(a1 + v5[14]) == *(a2 + v5[14])))
  {
    return *(a1 + v5[15]) == *(a2 + v5[15]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21A0B3400()
{
  result = qword_27CCDDD28;
  if (!qword_27CCDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD28);
  }

  return result;
}

uint64_t sub_21A0B3454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledLiveActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0B34B8(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledLiveActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A0B35A8()
{
  result = qword_27CCDDD40;
  if (!qword_27CCDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD40);
  }

  return result;
}

unint64_t sub_21A0B3600()
{
  result = qword_27CCDDD48;
  if (!qword_27CCDDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD48);
  }

  return result;
}

unint64_t sub_21A0B3658()
{
  result = qword_27CCDDD50;
  if (!qword_27CCDDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD50);
  }

  return result;
}

void *sub_21A0B36AC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  memcpy(v97, v2, 0x9E9uLL);
  memcpy(v98, v4, 0x9E9uLL);
  memcpy(v99, v5, 0x9E9uLL);
  if (sub_219F88A28(v99) != 1)
  {
    memcpy(v96, v98, 0x9E9uLL);
    v75 = v7;
    if (sub_219F88A28(v96) != 1)
    {
      memcpy(v95, v99, 0x320uLL);
      memcpy(v91, v96, 0x320uLL);
      sub_219F45500(v99, v90, &qword_27CCDB160);
      sub_219F45500(v96, v90, &qword_27CCDB160);
      sub_219FEB494(v95, v91);
      memcpy(v95, &v99[50], 0x3E8uLL);
      memcpy(v91, &v96[50], sizeof(v91));
      sub_219F45500(&v99[50], v90, &qword_27CCD9578);
      sub_219F45500(&v96[50], v90, &qword_27CCD9578);
      sub_219F93F40(v95, v91);
      memcpy(v95, &v99[112] + 8, 0x190uLL);
      memcpy(v91, &v96[112] + 8, 0x190uLL);
      sub_219F45500(&v99[112] + 8, v90, &qword_27CCDCE98);
      sub_219F45500(&v96[112] + 8, v90, &qword_27CCDCE98);
      sub_21A0CE27C(v95, v91, v94);
      v20 = *(&v96[140] + 1);
      if ((~DWORD2(v96[140]) & 0xFFFFFFFE) != 0 || ((DWORD2(v96[141]) | (BYTE12(v96[141]) << 32)) & 0xFE00000000) != 0x200000000)
      {
        v52 = DWORD2(v96[141]) | (BYTE12(v96[141]) << 32);
        v21 = *(&v96[137] + 1);
        v22 = v96[138];
        v23 = v96[139];
        v24 = *&v96[140];
        v25 = *&v96[141];
      }

      else
      {
        v21 = *(&v99[137] + 1);
        v22 = v99[138];
        v23 = v99[139];
        v20 = *(&v99[140] + 1);
        v24 = *&v99[140];
        v25 = *&v99[141];
        v52 = DWORD2(v99[141]) | (BYTE12(v99[141]) << 32);
      }

      v26 = *&v96[145];
      v73 = v21;
      v74 = v20;
      v71 = v23;
      v72 = v22;
      v69 = v25;
      v70 = v24;
      if ((~LODWORD(v96[145]) & 0xFFFFFFFE) != 0 || (*&v96[146] & 0xFE00000000) != 0x200000000)
      {
        v66 = *&v96[146];
        v27 = &v96[147];
        v32 = &v96[146] + 8;
        v28 = v96[142];
        v29 = v96[143];
        v30 = v96[144];
        v31 = *(&v96[145] + 1);
      }

      else
      {
        v27 = &v99[147];
        sub_219F45500(&v99[142], v95, &qword_27CCDAB00);
        v28 = v99[142];
        v29 = v99[143];
        v30 = v99[144];
        v31 = *(&v99[145] + 1);
        v26 = *&v99[145];
        v32 = &v99[146] + 8;
        v66 = *&v99[146];
      }

      v64 = v30;
      v65 = v29;
      v67 = v28;
      v33 = *v32;
      v13 = *v27;
      if (*&v96[152])
      {
        v50 = *&v96[152];
        v34 = &v96[152] + 8;
        v35 = *(&v96[147] + 1);
        v36 = v96[148];
        v37 = v96[149];
        v38 = v96[150];
        v39 = v96[151];
      }

      else
      {
        sub_219F45500(&v99[147] + 8, v95, &qword_27CCD9F78);
        v35 = *(&v99[147] + 1);
        v36 = v99[148];
        v37 = v99[149];
        v38 = v99[150];
        v39 = v99[151];
        v34 = &v99[152] + 8;
        v50 = *&v99[152];
      }

      v68 = v26;
      v63 = v31;
      v51 = v35;
      v61 = v37;
      v62 = v36;
      v59 = v39;
      v60 = v38;
      v49 = *v34;
      if ((~LODWORD(v96[156]) & 0xFFFFFFFE) != 0 || (*&v96[157] & 0xFE00000000) != 0x200000000)
      {
        v47 = *&v96[157];
        v48 = *&v96[156];
        v40 = &v96[158];
        v41 = &v96[157] + 8;
        v56 = v96[154];
        v57 = v96[153];
        v55 = v96[155];
        v46 = *(&v96[156] + 1);
      }

      else
      {
        v40 = &v99[158];
        sub_219F45500(&v99[153], v95, &qword_27CCDAB00);
        v56 = v99[154];
        v57 = v99[153];
        v55 = v99[155];
        v46 = *(&v99[156] + 1);
        v41 = &v99[157] + 8;
        v47 = *&v99[157];
        v48 = *&v99[156];
      }

      v53 = *v40;
      v54 = *v41;
      sub_219F45500(&v96[142], v95, &qword_27CCDAB00);
      sub_219F45500(&v96[147] + 8, v95, &qword_27CCD9F78);
      sub_219F45500(&v96[153], v95, &qword_27CCDAB00);
      sub_219F6409C(v98, &qword_27CCD9EB0);
      v42 = BYTE8(v96[158]);
      sub_219F6409C(v97, &qword_27CCD9EB0);
      v43 = BYTE8(v99[158]);
      if (v42 != 2)
      {
        v43 = v42;
      }

      v58 = v43;
      sub_219F65C20(__src);
      memcpy(v95, __src, 0x320uLL);
      sub_219F638CC(v90);
      memcpy(&v95[800], v90, 0x3E8uLL);
      sub_21A07DB18(v77);
      memcpy(&v95[1800], v77, 0x190uLL);
      memcpy(__dst, v95, sizeof(__dst));
      sub_219F6409C(__dst, &qword_27CCDB160);
      memcpy(v91, &v95[800], sizeof(v91));
      sub_219F6409C(v91, &qword_27CCD9578);
      memcpy(v79, &v95[1800], sizeof(v79));
      sub_219F6409C(v79, &qword_27CCDCE98);
      memset(v80, 0, 48);
      v80[3] = xmmword_21A0EB370;
      v83 = 0;
      v81 = 0x200000000;
      v82 = 0;
      sub_219F6409C(v80, &qword_27CCDAB00);
      memset(v84, 0, sizeof(v84));
      v85 = 0;
      sub_219F6409C(v84, &qword_27CCD9F78);
      memset(v86, 0, 48);
      v86[3] = xmmword_21A0EB370;
      v89 = 0;
      v87 = 0x200000000;
      v88 = 0;
      sub_219F6409C(v86, &qword_27CCDAB00);
      v11 = v33;
      v10 = v52;
      v12 = v51;
      v14 = v49;
      v15 = v50;
      v18 = v47;
      v16 = v48;
      v17 = v46;
      goto LABEL_26;
    }

    v58 = BYTE8(v99[158]);
    memcpy(v92, v99, sizeof(v92));
    memcpy(v93, &v99[50], sizeof(v93));
    memcpy(v94, &v99[112] + 8, sizeof(v94));
    v71 = v99[139];
    v72 = v99[138];
    v73 = *(&v99[137] + 1);
    v74 = *(&v99[140] + 1);
    v69 = *&v99[141];
    v70 = *&v99[140];
    v10 = DWORD2(v99[141]) | (BYTE12(v99[141]) << 32);
    v67 = v99[142];
    v64 = v99[144];
    v65 = v99[143];
    v63 = *(&v99[145] + 1);
    v68 = *&v99[145];
    v11 = *(&v99[146] + 1);
    v66 = *&v99[146];
    v12 = *(&v99[147] + 1);
    v13 = *&v99[147];
    v61 = v99[149];
    v62 = v99[148];
    v59 = v99[151];
    v60 = v99[150];
    v14 = *(&v99[152] + 1);
    v15 = *&v99[152];
    v56 = v99[154];
    v57 = v99[153];
    v55 = v99[155];
    v17 = *(&v99[156] + 1);
    v16 = *&v99[156];
    v54 = *(&v99[157] + 1);
    v18 = *&v99[157];
    v19 = *&v99[158];
LABEL_7:
    v53 = v19;
LABEL_26:
    memcpy(v95, v92, 0x320uLL);
    memcpy(&v95[800], v93, 0x3E8uLL);
    memcpy(&v95[1800], v94, 0x190uLL);
    memcpy(v96, v95, 0x898uLL);
    *(&v96[137] + 1) = v73;
    v96[138] = v72;
    v96[139] = v71;
    *&v96[140] = v70;
    *(&v96[140] + 1) = v74;
    *&v96[141] = v69;
    BYTE12(v96[141]) = BYTE4(v10);
    DWORD2(v96[141]) = v10;
    v96[142] = v67;
    v96[143] = v65;
    v96[144] = v64;
    *&v96[145] = v68;
    *(&v96[145] + 1) = v63;
    *&v96[146] = v66;
    *(&v96[146] + 1) = v11;
    *&v96[147] = v13;
    *(&v96[147] + 1) = v12;
    v96[148] = v62;
    v96[149] = v61;
    v96[150] = v60;
    v96[151] = v59;
    *&v96[152] = v15;
    *(&v96[152] + 1) = v14;
    v96[153] = v57;
    v96[154] = v56;
    v96[155] = v55;
    *&v96[156] = v16;
    *(&v96[156] + 1) = v17;
    *&v96[157] = v18;
    *(&v96[157] + 1) = v54;
    *&v96[158] = v53;
    BYTE8(v96[158]) = v58;
    nullsub_1(v96, v44);
    v8 = v96;
    v9 = v75;
    return memcpy(v9, v8, 0x9E9uLL);
  }

  memcpy(v96, v98, 0x9E9uLL);
  if (sub_219F88A28(v96) != 1)
  {
    v75 = v7;
    v58 = BYTE8(v96[158]);
    memcpy(v92, v96, sizeof(v92));
    memcpy(v93, &v96[50], sizeof(v93));
    memcpy(v94, &v96[112] + 8, sizeof(v94));
    v71 = v96[139];
    v72 = v96[138];
    v73 = *(&v96[137] + 1);
    v74 = *(&v96[140] + 1);
    v69 = *&v96[141];
    v70 = *&v96[140];
    v10 = DWORD2(v96[141]) | (BYTE12(v96[141]) << 32);
    v67 = v96[142];
    v64 = v96[144];
    v65 = v96[143];
    v63 = *(&v96[145] + 1);
    v68 = *&v96[145];
    v11 = *(&v96[146] + 1);
    v66 = *&v96[146];
    v12 = *(&v96[147] + 1);
    v13 = *&v96[147];
    v61 = v96[149];
    v62 = v96[148];
    v59 = v96[151];
    v60 = v96[150];
    v14 = *(&v96[152] + 1);
    v15 = *&v96[152];
    v56 = v96[154];
    v57 = v96[153];
    v55 = v96[155];
    v17 = *(&v96[156] + 1);
    v16 = *&v96[156];
    v54 = *(&v96[157] + 1);
    v18 = *&v96[157];
    v19 = *&v96[158];
    goto LABEL_7;
  }

  v8 = v98;
  v9 = v7;
  return memcpy(v9, v8, 0x9E9uLL);
}

uint64_t LiveBlogTheme.header.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x320uLL);
  memcpy(a1, v1, 0x320uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDB160);
}

void *LiveBlogTheme.header.setter(const void *a1)
{
  memcpy(__dst, v1, 0x320uLL);
  sub_219F6409C(__dst, &qword_27CCDB160);
  return memcpy(v1, a1, 0x320uLL);
}

uint64_t LiveBlogTheme.body.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 800), 0x3E8uLL);
  memcpy(a1, (v1 + 800), 0x3E8uLL);
  return sub_219F45500(__dst, v4, &qword_27CCD9578);
}

void *LiveBlogTheme.body.setter(const void *a1)
{
  memcpy(v4, (v1 + 800), 0x3E8uLL);
  sub_219F6409C(v4, &qword_27CCD9578);
  return memcpy((v1 + 800), a1, 0x3E8uLL);
}

uint64_t LiveBlogTheme.footer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1800), 0x190uLL);
  memcpy(a1, (v1 + 1800), 0x190uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDCE98);
}

void *LiveBlogTheme.footer.setter(const void *a1)
{
  memcpy(__dst, (v1 + 1800), 0x190uLL);
  sub_219F6409C(__dst, &qword_27CCDCE98);
  return memcpy((v1 + 1800), a1, 0x190uLL);
}

__n128 LiveBlogTheme.keylineTint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2248);
  *(a1 + 32) = *(v1 + 2232);
  *(a1 + 48) = v2;
  *(a1 + 61) = *(v1 + 2261);
  result = *(v1 + 2216);
  *a1 = *(v1 + 2200);
  *(a1 + 16) = result;
  return result;
}

__n128 LiveBlogTheme.keylineTint.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 2232) = *(a1 + 32);
  *(v1 + 2248) = v2;
  *(v1 + 2261) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 2200) = *a1;
  *(v1 + 2216) = result;
  return result;
}

uint64_t LiveBlogTheme.backgroundTint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2304);
  v4 = *(v1 + 2336);
  v10 = *(v1 + 2320);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 2352);
  v6 = *(v1 + 2288);
  v9[0] = *(v1 + 2272);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00);
}

__n128 LiveBlogTheme.backgroundTint.setter(uint64_t a1)
{
  v3 = *(v1 + 2320);
  v8[2] = *(v1 + 2304);
  v8[3] = v3;
  v8[4] = *(v1 + 2336);
  v9 = *(v1 + 2352);
  v4 = *(v1 + 2288);
  v8[0] = *(v1 + 2272);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00);
  v5 = *(a1 + 48);
  *(v1 + 2304) = *(a1 + 32);
  *(v1 + 2320) = v5;
  *(v1 + 2336) = *(a1 + 64);
  *(v1 + 2352) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 2272) = *a1;
  *(v1 + 2288) = v7;
  return result;
}

uint64_t LiveBlogTheme.background.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = *(v1 + 2440);
  v2 = *(v1 + 2392);
  v4 = *(v1 + 2424);
  v10 = *(v1 + 2408);
  v3 = v10;
  v11 = v4;
  v6 = *(v1 + 2376);
  v9[0] = *(v1 + 2360);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCD9F78);
}

__n128 LiveBlogTheme.background.setter(uint64_t a1)
{
  v9 = *(v1 + 2440);
  v3 = *(v1 + 2408);
  v8[2] = *(v1 + 2392);
  v8[3] = v3;
  v8[4] = *(v1 + 2424);
  v4 = *(v1 + 2376);
  v8[0] = *(v1 + 2360);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCD9F78);
  v5 = *(a1 + 48);
  *(v1 + 2392) = *(a1 + 32);
  *(v1 + 2408) = v5;
  *(v1 + 2424) = *(a1 + 64);
  *(v1 + 2440) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 2360) = *a1;
  *(v1 + 2376) = v7;
  return result;
}

uint64_t LiveBlogTheme.systemActionForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2480);
  v4 = *(v1 + 2512);
  v10 = *(v1 + 2496);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 2528);
  v6 = *(v1 + 2464);
  v9[0] = *(v1 + 2448);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00);
}

__n128 LiveBlogTheme.systemActionForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 2496);
  v8[2] = *(v1 + 2480);
  v8[3] = v3;
  v8[4] = *(v1 + 2512);
  v9 = *(v1 + 2528);
  v4 = *(v1 + 2464);
  v8[0] = *(v1 + 2448);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00);
  v5 = *(a1 + 48);
  *(v1 + 2480) = *(a1 + 32);
  *(v1 + 2496) = v5;
  *(v1 + 2512) = *(a1 + 64);
  *(v1 + 2528) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 2448) = *a1;
  *(v1 + 2464) = v7;
  return result;
}

__n128 LiveBlogTheme.init(header:body:footer:keylineTint:backgroundTint:background:systemActionForeground:colorScheme:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v2;
  v17 = v16;
  v34 = *v18;
  sub_219F65C20(__src);
  memcpy(v17, __src, 0x320uLL);
  sub_219F638CC(v36);
  memcpy((v17 + 800), v36, 0x3E8uLL);
  sub_21A07DB18(v37);
  memcpy((v17 + 1800), v37, 0x190uLL);
  *(v17 + 2272) = 0u;
  *(v17 + 2288) = 0u;
  *(v17 + 2304) = 0u;
  *(v17 + 2320) = xmmword_21A0EB370;
  *(v17 + 2336) = 0x200000000;
  *(v17 + 2344) = 0u;
  *(v17 + 2360) = 0u;
  *(v17 + 2376) = 0u;
  *(v17 + 2392) = 0u;
  *(v17 + 2408) = 0u;
  *(v17 + 2424) = 0u;
  *(v17 + 2440) = 0u;
  *(v17 + 2456) = 0u;
  *(v17 + 2472) = 0u;
  *(v17 + 2488) = 0;
  *(v17 + 2496) = xmmword_21A0EB370;
  *(v17 + 2512) = 0x200000000;
  *(v17 + 2520) = 0u;
  memcpy(__dst, v17, sizeof(__dst));
  sub_219F6409C(__dst, &qword_27CCDB160);
  memcpy(v17, v15, 0x320uLL);
  memcpy(v39, (v17 + 800), sizeof(v39));
  sub_219F6409C(v39, &qword_27CCD9578);
  memcpy((v17 + 800), v14, 0x3E8uLL);
  memcpy(v40, (v17 + 1800), sizeof(v40));
  sub_219F6409C(v40, &qword_27CCDCE98);
  memcpy((v17 + 1800), v12, 0x190uLL);
  v19 = *(v10 + 48);
  *(v17 + 2232) = *(v10 + 32);
  *(v17 + 2248) = v19;
  *(v17 + 2261) = *(v10 + 61);
  v20 = *(v10 + 16);
  *(v17 + 2200) = *v10;
  *(v17 + 2216) = v20;
  v21 = *(v17 + 2320);
  v41[2] = *(v17 + 2304);
  v41[3] = v21;
  v41[4] = *(v17 + 2336);
  v42 = *(v17 + 2352);
  v22 = *(v17 + 2288);
  v41[0] = *(v17 + 2272);
  v41[1] = v22;
  sub_219F6409C(v41, &qword_27CCDAB00);
  v23 = *(v8 + 48);
  *(v17 + 2304) = *(v8 + 32);
  *(v17 + 2320) = v23;
  *(v17 + 2336) = *(v8 + 64);
  *(v17 + 2352) = *(v8 + 80);
  v24 = *(v8 + 16);
  *(v17 + 2272) = *v8;
  *(v17 + 2288) = v24;
  v25 = *(v17 + 2408);
  v43[2] = *(v17 + 2392);
  v43[3] = v25;
  v43[4] = *(v17 + 2424);
  v44 = *(v17 + 2440);
  v26 = *(v17 + 2376);
  v43[0] = *(v17 + 2360);
  v43[1] = v26;
  sub_219F6409C(v43, &qword_27CCD9F78);
  v27 = *(v6 + 48);
  *(v17 + 2392) = *(v6 + 32);
  *(v17 + 2408) = v27;
  *(v17 + 2424) = *(v6 + 64);
  *(v17 + 2440) = *(v6 + 80);
  v28 = *(v6 + 16);
  *(v17 + 2360) = *v6;
  *(v17 + 2376) = v28;
  v29 = *(v17 + 2496);
  v45[2] = *(v17 + 2480);
  v45[3] = v29;
  v45[4] = *(v17 + 2512);
  v46 = *(v17 + 2528);
  v30 = *(v17 + 2464);
  v45[0] = *(v17 + 2448);
  v45[1] = v30;
  sub_219F6409C(v45, &qword_27CCDAB00);
  v31 = *(v4 + 48);
  *(v17 + 2480) = *(v4 + 32);
  *(v17 + 2496) = v31;
  *(v17 + 2512) = *(v4 + 64);
  *(v17 + 2528) = *(v4 + 80);
  result = *v4;
  v33 = *(v4 + 16);
  *(v17 + 2448) = *v4;
  *(v17 + 2464) = v33;
  *(v17 + 2536) = v34;
  return result;
}

unint64_t sub_21A0B4B80()
{
  v1 = *v0;
  v2 = 0x726564616568;
  v3 = 0xD000000000000016;
  if (v1 != 6)
  {
    v3 = 0x686353726F6C6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x756F72676B636162;
  }

  v4 = 0x7265746F6F66;
  if (v1 != 2)
  {
    v4 = 0x54656E696C79656BLL;
  }

  if (*v0)
  {
    v2 = 2036625250;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21A0B4C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0B8678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A0B4CB8(uint64_t a1)
{
  v2 = sub_21A0B7E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0B4CF4(uint64_t a1)
{
  v2 = sub_21A0B7E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveBlogTheme.encode(to:)(uint64_t a1, uint64_t a2)
{
  v77 = v3;
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - v9;
  memcpy(v56, v4, sizeof(v56));
  memcpy(v57, (v4 + 800), sizeof(v57));
  memcpy(v58, (v4 + 1800), sizeof(v58));
  v61 = *(v4 + 2304);
  v62 = *(v4 + 2320);
  v63 = *(v4 + 2336);
  v59 = *(v4 + 2272);
  v60 = *(v4 + 2288);
  v11 = *(v4 + 2408);
  v67 = *(v4 + 2392);
  v68 = v11;
  v69 = *(v4 + 2424);
  v12 = *(v4 + 2376);
  v65 = *(v4 + 2360);
  v64 = *(v4 + 2352);
  v70 = *(v4 + 2440);
  v66 = v12;
  v73 = *(v4 + 2480);
  v74 = *(v4 + 2496);
  v75 = *(v4 + 2512);
  v76 = *(v4 + 2528);
  v71 = *(v4 + 2448);
  v72 = *(v4 + 2464);
  v21 = *(v4 + 2536);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219F45500(v56, v53, &qword_27CCDB160);
  sub_21A0B7E48();
  sub_21A0E6EAC();
  memcpy(v55, v56, sizeof(v55));
  v54[807] = 0;
  sub_21A0B7E9C();
  v13 = v77;
  sub_21A0E6B6C();
  if (v13)
  {
    memcpy(v53, v55, 0x320uLL);
    sub_219F6409C(v53, &qword_27CCDB160);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    memcpy(v54, v55, 0x320uLL);
    sub_219F6409C(v54, &qword_27CCDB160);
    memcpy(v53, v57, sizeof(v53));
    v52[1007] = 1;
    sub_219F45500(v57, v52, &qword_27CCD9578);
    sub_21A0B7EF0();
    sub_21A0E6B6C();
    memcpy(v52, v53, 0x3E8uLL);
    sub_219F6409C(v52, &qword_27CCD9578);
    memcpy(v51, v58, sizeof(v51));
    v50[407] = 2;
    sub_219F45500(v58, v50, &qword_27CCDCE98);
    sub_21A0B7F44();
    sub_21A0E6B6C();
    memcpy(v50, v51, 0x190uLL);
    sub_219F6409C(v50, &qword_27CCDCE98);
    v15 = *(v4 + 2232);
    v16 = *(v4 + 2248);
    v17 = *(v4 + 2200);
    v46 = *(v4 + 2216);
    v47 = v15;
    v48[0] = v16;
    *(v48 + 13) = *(v4 + 2261);
    v45 = v17;
    LOBYTE(v42[0]) = 3;
    sub_219F81DC8();
    v18 = v10;
    sub_21A0E6B6C();
    v47 = v61;
    v48[0] = v62;
    v48[1] = v63;
    v49 = v64;
    v45 = v59;
    v46 = v60;
    v44 = 4;
    sub_219F45500(&v59, v42, &qword_27CCDAB00);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0);
    sub_21A0A7480(&qword_27CCDD948);
    sub_21A0E6B6C();
    v77 = v19;
    v42[2] = v47;
    v42[3] = v48[0];
    v42[4] = v48[1];
    v43 = v49;
    v42[0] = v45;
    v42[1] = v46;
    sub_219F6409C(v42, &qword_27CCDAB00);
    v38 = v67;
    v39 = v68;
    v40 = v69;
    v41 = v70;
    v36 = v65;
    v37 = v66;
    v35 = 5;
    sub_219F45500(&v65, v33, &qword_27CCD9F78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8);
    sub_21A081F7C(&qword_27CCDA4E0);
    sub_21A0E6B6C();
    v33[2] = v38;
    v33[3] = v39;
    v33[4] = v40;
    v34 = v41;
    v33[0] = v36;
    v33[1] = v37;
    sub_219F6409C(v33, &qword_27CCD9F78);
    v29 = v73;
    v30 = v74;
    v31 = v75;
    v32 = v76;
    v27 = v71;
    v28 = v72;
    v26 = 6;
    sub_219F45500(&v71, v24, &qword_27CCDAB00);
    sub_21A0E6B6C();
    v24[2] = v29;
    v24[3] = v30;
    v24[4] = v31;
    v25 = v32;
    v24[0] = v27;
    v24[1] = v28;
    sub_219F6409C(v24, &qword_27CCDAB00);
    v23 = v21;
    v22 = 7;
    sub_21A038C68();
    sub_21A0E6B6C();
    return (*(v7 + 8))(v18, 0);
  }
}

uint64_t LiveBlogTheme.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v4 = *(v2 + 2360);
  v33 = *(v2 + 2376);
  v5 = *(v2 + 2408);
  v34 = *(v2 + 2392);
  v35 = v5;
  v6 = *(v2 + 2248);
  v7 = *(v2 + 2268);
  v8 = *(v2 + 2264);
  v9 = *(v2 + 2320);
  v16 = *(v2 + 2256);
  v17 = *(v2 + 2328);
  v10 = *(v2 + 2336);
  v18 = *(v2 + 2344);
  v19 = *(v2 + 2352);
  v36 = *(v2 + 2424);
  v32 = v4;
  v11 = *(v2 + 2432);
  v23 = *(v2 + 2440);
  v24 = v10;
  v39 = *(v2 + 2480);
  v38 = *(v2 + 2464);
  v37 = *(v2 + 2448);
  v12 = *(v2 + 2496);
  v25 = *(v2 + 2512);
  v20 = *(v2 + 2504);
  v21 = *(v2 + 2520);
  v22 = *(v2 + 2528);
  v26 = *(v2 + 2536);
  memcpy(v40, v2, 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v40) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(__dst, v2, 0x320uLL);
    sub_21A0E6DCC();
    memcpy(v30, v2, 0x320uLL);
    sub_219FEEA7C(v30, v31);
    ActivityHeaderTheme.hash(into:)(v3);
    memcpy(v31, __dst, 0x320uLL);
    sub_219FEEA4C(v31);
  }

  memcpy(v31, (v2 + 800), sizeof(v31));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v31) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(__src, (v2 + 800), sizeof(__src));
    sub_21A0E6DCC();
    memcpy(__dst, (v2 + 800), 0x3E8uLL);
    sub_219F98538(__dst, v30);
    LiveBlogBodyTheme.hash(into:)(v3);
    memcpy(v30, __src, sizeof(v30));
    sub_219F98490(v30);
  }

  memcpy(v30, (v2 + 1800), 0x190uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v30) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(v27, (v2 + 1800), sizeof(v27));
    sub_21A0E6DCC();
    memcpy(__src, (v2 + 1800), 0x190uLL);
    sub_21A0B7F98(__src, __dst);
    ActivityFooterTheme.hash(into:)(v3);
    memcpy(__dst, v27, 0x190uLL);
    sub_21A0B7FF4(__dst);
  }

  if ((~v6 & 0xFFFFFFFE) != 0 || ((v8 | (v7 << 32)) & 0xFE00000000) != 0x200000000)
  {
    v13 = *(v2 + 2216);
    __dst[0] = *(v2 + 2200);
    __dst[1] = v13;
    __dst[2] = *(v2 + 2232);
    *&__dst[3] = v6;
    *(&__dst[3] + 1) = v16;
    LODWORD(__dst[4]) = v8;
    BYTE4(__dst[4]) = (v8 | (v7 << 32)) >> 32;
    sub_21A0E6DCC();
    ActivityColor.hash(into:)();
  }

  else
  {
    sub_21A0E6DCC();
  }

  if ((~v9 & 0xFFFFFFFE) != 0 || (v24 & 0xFE00000000) != 0x200000000)
  {
    v14 = *(v2 + 2288);
    __dst[0] = *(v2 + 2272);
    __dst[1] = v14;
    __dst[2] = *(v2 + 2304);
    sub_21A0E6DCC();
    *&__dst[3] = v9;
    *(&__dst[3] + 1) = v17;
    *&__dst[4] = v24;
    *(&__dst[4] + 1) = v18;
    *&__dst[5] = v19;
    ActivityColor.hash(into:)();
    sub_219F91544(v3, v18);
    sub_219F70020(v3, v19);
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_19:
    __dst[2] = v34;
    __dst[3] = v35;
    *&__dst[4] = v36;
    __dst[0] = v32;
    __dst[1] = v33;
    sub_21A0E6DCC();
    *(&__dst[4] + 1) = v11;
    *&__dst[5] = v23;
    ActivityFill.hash(into:)(v3);
    sub_219F91544(v3, v11);
    sub_219F6AB48(v3, v23);
    goto LABEL_20;
  }

  sub_21A0E6DCC();
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_21A0E6DCC();
LABEL_20:
  if ((~v12 & 0xFFFFFFFE) != 0 || (v25 & 0xFE00000000) != 0x200000000)
  {
    __dst[0] = v37;
    __dst[1] = v38;
    __dst[2] = v39;
    sub_21A0E6DCC();
    *&__dst[3] = v12;
    *(&__dst[3] + 1) = v20;
    *&__dst[4] = v25;
    *(&__dst[4] + 1) = v21;
    *&__dst[5] = v22;
    ActivityColor.hash(into:)();
    sub_219F91544(v3, v21);
    sub_219F70020(v3, v22);
  }

  else
  {
    sub_21A0E6DCC();
  }

  if (v26 == 2)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t LiveBlogTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  LiveBlogTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t LiveBlogTheme.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - v9;
  sub_219F65C20(v179);
  memcpy(v178, v179, 0x320uLL);
  sub_219F638CC(v180);
  memcpy(&v178[800], v180, 0x3E8uLL);
  sub_21A07DB18(v181);
  memcpy(&v178[1800], v181, 0x190uLL);
  v11 = v3[3];
  v37 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v11);
  sub_21A0B7E48();
  sub_21A0E6E7C();
  if (v2)
  {
    *&v41 = v2;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v36 = 0;
    v182 = 0;
    v42 = 0;
    v43 = 0;
    v39 = 0;
    v40 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v38 = 0;
    v52 = 0;
    v53 = 0;
    v59 = 0;
    v60 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v54 = 0u;
    v44 = 4294967294;
    v45 = 0x200000000;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    __swift_destroy_boxed_opaque_existential_1(v37);
    memcpy(v135, v178, sizeof(v135));
    v136 = 0;
    v137 = v59;
    v138 = v60;
    v139 = v62;
    v140 = v64;
    v141 = v66;
    v142 = 4294967294;
    v143 = v43;
    v145 = 2;
    v144 = 0;
    v146 = v176;
    v147 = v177;
    v148 = v36;
    v149 = v182;
    v150 = v42;
    v151 = v40;
    v152 = v39;
    v153 = v65;
    v154 = 4294967294;
    v155 = v63;
    v156 = 0x200000000;
    v157 = v61;
    v158 = v38;
    v159 = v53;
    v160 = v52;
    v161 = v51;
    v162 = v50;
    v163 = v49;
    v164 = v48;
    v165 = v47;
    v166 = v46;
    *&v168[16] = v34;
    *&v168[32] = v33;
    v167 = v54;
    *v168 = v35;
    v169 = v58;
    v170 = v44;
    v171 = v57;
    v172 = v45;
    v173 = v56;
    v174 = v55;
    v175 = 2;
  }

  else
  {
    *&v35 = v5;
    v133[807] = 0;
    sub_21A0B8048();
    sub_21A0E6A8C();
    memcpy(v132, v134, sizeof(v132));
    memcpy(v133, v178, 0x320uLL);
    sub_219F6409C(v133, &qword_27CCDB160);
    memcpy(v178, v132, 0x320uLL);
    v130[1007] = 1;
    sub_21A0B809C();
    sub_21A0E6A8C();
    memcpy(v129, v131, sizeof(v129));
    memcpy(v130, &v178[800], 0x3E8uLL);
    sub_219F6409C(v130, &qword_27CCD9578);
    memcpy(&v178[800], v129, 0x3E8uLL);
    v127[407] = 2;
    sub_21A0B80F0();
    sub_21A0E6A8C();
    memcpy(v126, v128, sizeof(v126));
    memcpy(v127, &v178[1800], 0x190uLL);
    sub_219F6409C(v127, &qword_27CCDCE98);
    memcpy(&v178[1800], v126, 0x190uLL);
    v115 = 3;
    sub_219F81E1C();
    sub_21A0E6A8C();
    v59 = v117;
    v60 = v118;
    v62 = v119;
    v64 = v120;
    v66 = v121;
    v31 = v122;
    v32 = v116;
    v43 = v123;
    v30 = v124 | (v125 << 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0);
    v103 = 4;
    sub_21A0A7480(&qword_27CCDD970);
    sub_21A0E6A8C();
    v36 = v104;
    v182 = v105;
    v42 = v106;
    v39 = v108;
    v40 = v107;
    v65 = v109;
    v63 = v111;
    v28 = v112;
    v29 = v110;
    v61 = v113;
    v13 = v114;
    memset(v98, 0, sizeof(v98));
    v41 = xmmword_21A0EB370;
    v99 = xmmword_21A0EB370;
    v102 = 0;
    v100 = 0x200000000;
    v101 = 0;
    sub_219F6409C(v98, &qword_27CCDAB00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8);
    v87 = 5;
    sub_21A081F7C(&qword_27CCDA580);
    sub_21A0E6A8C();
    v38 = v13;
    v52 = v89;
    v53 = v88;
    v50 = v91;
    v51 = v90;
    v48 = v93;
    v49 = v92;
    v46 = v95;
    v47 = v94;
    v54 = v96;
    v14 = v97;
    memset(v85, 0, sizeof(v85));
    v86 = 0;
    sub_219F6409C(v85, &qword_27CCD9F78);
    v75 = 6;
    sub_21A0E6A8C();
    *&v34 = v14;
    v33 = v77;
    v27 = v76;
    v15 = v78;
    v57 = v81;
    v58 = v79;
    v44 = v80;
    v45 = v82;
    v55 = v84;
    v56 = v83;
    memset(v70, 0, sizeof(v70));
    v71 = v41;
    v74 = 0;
    v72 = 0x200000000;
    v73 = 0;
    sub_219F6409C(v70, &qword_27CCDAB00);
    v68 = 7;
    sub_21A038B6C();
    sub_21A0E6A8C();
    *&v41 = 0;
    (*(v7 + 8))(v10, v6);
    v16 = v69;
    memcpy(v67, v178, 0x898uLL);
    *&v67[2200] = v32;
    *&v67[2208] = v59;
    *&v67[2216] = v60;
    *&v67[2224] = v62;
    *&v67[2232] = v64;
    *&v67[2240] = v66;
    v17 = v30;
    *&v67[2248] = v31;
    *&v67[2256] = v43;
    *&v67[2424] = v54;
    v18 = HIDWORD(v30);
    v67[2268] = BYTE4(v30);
    *&v67[2264] = v30;
    v19 = v36;
    *&v67[2272] = v36;
    *&v67[2280] = v182;
    v20 = v15;
    v26 = v15;
    v21 = v42;
    *&v67[2288] = v42;
    v22 = v39;
    v23 = v40;
    *&v67[2296] = v40;
    *&v67[2304] = v39;
    *&v67[2312] = v65;
    *&v67[2320] = v29;
    *&v67[2328] = v63;
    *&v67[2336] = v28;
    *&v67[2344] = v61;
    v24 = v38;
    *&v67[2352] = v38;
    *&v67[2360] = v53;
    *&v67[2368] = v52;
    *&v67[2376] = v51;
    *&v67[2384] = v50;
    *&v67[2392] = v49;
    *&v67[2400] = v48;
    *&v67[2408] = v47;
    *&v67[2416] = v46;
    *&v67[2440] = v34;
    *&v67[2448] = v27;
    *&v67[2464] = v33;
    *&v67[2480] = v20;
    *&v67[2488] = v58;
    *&v67[2496] = v44;
    *&v67[2504] = v57;
    *&v67[2512] = v45;
    *&v67[2520] = v56;
    *&v67[2528] = v55;
    v67[2536] = v69;
    memcpy(v35, v67, 0x9E9uLL);
    sub_21A080104(v67, v135);
    __swift_destroy_boxed_opaque_existential_1(v37);
    memcpy(v135, v178, sizeof(v135));
    v136 = v32;
    v137 = v59;
    v138 = v60;
    v139 = v62;
    v140 = v64;
    v141 = v66;
    v142 = v31;
    v143 = v43;
    v145 = v18;
    v144 = v17;
    v146 = v176;
    v147 = v177;
    v148 = v19;
    v149 = v182;
    v150 = v21;
    v151 = v23;
    v152 = v22;
    v153 = v65;
    v154 = v29;
    v155 = v63;
    v156 = v28;
    v157 = v61;
    v158 = v24;
    v159 = v53;
    v160 = v52;
    v161 = v51;
    v162 = v50;
    v163 = v49;
    v164 = v48;
    v165 = v47;
    v166 = v46;
    v167 = v54;
    *v168 = v34;
    *&v168[8] = v27;
    *&v168[24] = v33;
    *&v168[40] = v26;
    v169 = v58;
    v170 = v44;
    v171 = v57;
    v172 = v45;
    v173 = v56;
    v174 = v55;
    v175 = v16;
  }

  return sub_21A080160(v135);
}

uint64_t sub_21A0B6864()
{
  sub_21A0E6DAC();
  LiveBlogTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B68A8()
{
  sub_21A0E6DAC();
  LiveBlogTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore0B9BlogThemeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  memcpy(v76, v2, sizeof(v76));
  memcpy(v77, v5 + 800, sizeof(v77));
  memcpy(v78, v5 + 1800, sizeof(v78));
  v6 = *(v5 + 2216);
  v79 = *(v5 + 2200);
  v80 = v6;
  v81 = *(v5 + 2232);
  v7 = *(v5 + 281);
  v59 = *(v5 + 282);
  v8 = v5[2268];
  v9 = *(v5 + 566);
  v10 = *(v5 + 145);
  v84 = *(v5 + 144);
  v85 = v10;
  *v86 = *(v5 + 146);
  *&v86[16] = *(v5 + 294);
  v11 = *(v5 + 143);
  v82 = *(v5 + 142);
  v83 = v11;
  v92 = *(v5 + 305);
  v12 = *(v5 + 2408);
  v91 = *(v5 + 2424);
  v13 = *(v5 + 2392);
  v90 = v12;
  v89 = v13;
  v14 = *(v5 + 2360);
  v88 = *(v5 + 2376);
  v87 = v14;
  v15 = *(v5 + 156);
  v95 = *(v5 + 155);
  v96 = v15;
  *v97 = *(v5 + 157);
  *&v97[16] = *(v5 + 316);
  v16 = *(v5 + 153);
  v94 = *(v5 + 154);
  v93 = v16;
  v17 = v5[2536];
  memcpy(v98, v4, sizeof(v98));
  memcpy(v99, (v4 + 800), sizeof(v99));
  memcpy(v100, (v4 + 1800), sizeof(v100));
  v18 = *(v4 + 2216);
  v101 = *(v4 + 2200);
  v102 = v18;
  v103 = *(v4 + 2232);
  v19 = *(v4 + 2248);
  v58 = *(v4 + 2256);
  v20 = *(v4 + 2268);
  v21 = *(v4 + 2264);
  v22 = *(v4 + 2320);
  v106 = *(v4 + 2304);
  v107 = v22;
  *v108 = *(v4 + 2336);
  *&v108[16] = *(v4 + 2352);
  v23 = *(v4 + 2288);
  v104 = *(v4 + 2272);
  v105 = v23;
  v114 = *(v4 + 2440);
  v24 = *(v4 + 2408);
  v113 = *(v4 + 2424);
  v25 = *(v4 + 2392);
  v112 = v24;
  v111 = v25;
  v26 = *(v4 + 2360);
  v110 = *(v4 + 2376);
  v109 = v26;
  v27 = *(v4 + 2496);
  v117 = *(v4 + 2480);
  v118 = v27;
  *v119 = *(v4 + 2512);
  *&v119[16] = *(v4 + 2528);
  v28 = *(v4 + 2448);
  v116 = *(v4 + 2464);
  v115 = v28;
  v57 = *(v4 + 2536);
  memcpy(v74, v5, 0x320uLL);
  memcpy(&v74[50], v4, 0x320uLL);
  memcpy(v120, v5, 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v120) == 1)
  {
    memcpy(v72, v4, 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v72) == 1)
    {
      v56 = v17;
      memcpy(v75, v5, 0x320uLL);
      sub_219F45500(v76, v73, &qword_27CCDB160);
      sub_219F45500(v98, v73, &qword_27CCDB160);
      sub_219F6409C(v75, &qword_27CCDB160);
      goto LABEL_9;
    }

    sub_219F45500(v76, v75, &qword_27CCDB160);
    sub_219F45500(v98, v75, &qword_27CCDB160);
LABEL_7:
    memcpy(v72, v74, 0x640uLL);
    v29 = &unk_27CCDDDC0;
LABEL_24:
    v32 = v72;
LABEL_25:
    sub_219F6409C(v32, v29);
    return 0;
  }

  memcpy(v75, v5, 0x320uLL);
  memcpy(v73, v5, 0x320uLL);
  memcpy(v72, v4, 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v72) == 1)
  {
    memcpy(__dst, v5, 0x320uLL);
    sub_219F45500(v76, __src, &qword_27CCDB160);
    sub_219F45500(v98, __src, &qword_27CCDB160);
    sub_219F45500(v75, __src, &qword_27CCDB160);
    sub_219FEEA4C(__dst);
    goto LABEL_7;
  }

  v56 = v17;
  memcpy(__dst, v4, 0x320uLL);
  sub_219F45500(v76, __src, &qword_27CCDB160);
  sub_219F45500(v98, __src, &qword_27CCDB160);
  sub_219F45500(v75, __src, &qword_27CCDB160);
  v30 = _s22NewsLiveActivitiesCore19ActivityHeaderThemeV2eeoiySbAC_ACtFZ_0(v73, __dst);
  memcpy(v61, __dst, 0x320uLL);
  sub_219FEEA4C(v61);
  memcpy(__src, v73, 0x320uLL);
  sub_219FEEA4C(__src);
  memcpy(__dst, v5, 0x320uLL);
  sub_219F6409C(__dst, &qword_27CCDB160);
  if (!v30)
  {
    return 0;
  }

LABEL_9:
  memcpy(v74, v77, 0x3E8uLL);
  memcpy(&v74[62] + 8, v99, 0x3E8uLL);
  memcpy(v75, v77, sizeof(v75));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v75) == 1)
  {
    memcpy(v72, &v74[62] + 8, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v72) == 1)
    {
      memcpy(v73, v74, sizeof(v73));
      sub_219F45500(v77, __dst, &qword_27CCD9578);
      sub_219F45500(v99, __dst, &qword_27CCD9578);
      sub_219F6409C(v73, &qword_27CCD9578);
      goto LABEL_17;
    }

    sub_219F45500(v77, v73, &qword_27CCD9578);
    sub_219F45500(v99, v73, &qword_27CCD9578);
    goto LABEL_15;
  }

  memcpy(v73, v74, sizeof(v73));
  memcpy(__dst, v74, 0x3E8uLL);
  memcpy(v72, &v74[62] + 8, 0x3E8uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v72) == 1)
  {
    memcpy(__src, v74, 0x3E8uLL);
    sub_219F45500(v77, v61, &qword_27CCD9578);
    sub_219F45500(v99, v61, &qword_27CCD9578);
    sub_219F45500(v73, v61, &qword_27CCD9578);
    sub_219F98490(__src);
LABEL_15:
    memcpy(v72, v74, sizeof(v72));
    v29 = &unk_27CCDDDC8;
    goto LABEL_24;
  }

  memcpy(__src, &v74[62] + 8, 0x3E8uLL);
  sub_219F45500(v77, v61, &qword_27CCD9578);
  sub_219F45500(v99, v61, &qword_27CCD9578);
  sub_219F45500(v73, v61, &qword_27CCD9578);
  v31 = _s22NewsLiveActivitiesCore0B13BlogBodyThemeV2eeoiySbAC_ACtFZ_0(__dst, __src);
  memcpy(v60, __src, 0x3E8uLL);
  sub_219F98490(v60);
  memcpy(v61, __dst, 0x3E8uLL);
  sub_219F98490(v61);
  memcpy(__src, v74, 0x3E8uLL);
  sub_219F6409C(__src, &qword_27CCD9578);
  if (!v31)
  {
    return 0;
  }

LABEL_17:
  memcpy(v74, v78, 0x190uLL);
  memcpy(&v74[25], v100, 0x190uLL);
  memcpy(v73, v78, 0x190uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
  {
    memcpy(v72, &v74[25], 0x190uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v72) == 1)
    {
      memcpy(__dst, v74, 0x190uLL);
      sub_219F45500(v78, __src, &qword_27CCDCE98);
      sub_219F45500(v100, __src, &qword_27CCDCE98);
      sub_219F6409C(__dst, &qword_27CCDCE98);
      goto LABEL_28;
    }

    sub_219F45500(v78, __dst, &qword_27CCDCE98);
    sub_219F45500(v100, __dst, &qword_27CCDCE98);
    goto LABEL_23;
  }

  memcpy(__dst, v74, 0x190uLL);
  memcpy(__src, v74, 0x190uLL);
  memcpy(v72, &v74[25], 0x190uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v72) == 1)
  {
    memcpy(v61, v74, 0x190uLL);
    sub_219F45500(v78, v60, &qword_27CCDCE98);
    sub_219F45500(v100, v60, &qword_27CCDCE98);
    sub_219F45500(__dst, v60, &qword_27CCDCE98);
    sub_21A0B7FF4(v61);
LABEL_23:
    memcpy(v72, v74, 0x320uLL);
    v29 = &unk_27CCDDDD0;
    goto LABEL_24;
  }

  memcpy(v61, &v74[25], 0x190uLL);
  sub_219F45500(v78, v60, &qword_27CCDCE98);
  sub_219F45500(v100, v60, &qword_27CCDCE98);
  sub_219F45500(__dst, v60, &qword_27CCDCE98);
  v34 = _s22NewsLiveActivitiesCore19ActivityFooterThemeV2eeoiySbAC_ACtFZ_0(__src, v61);
  memcpy(v63, v61, sizeof(v63));
  sub_21A0B7FF4(v63);
  memcpy(v60, __src, 0x190uLL);
  sub_21A0B7FF4(v60);
  memcpy(v61, v74, 0x190uLL);
  sub_219F6409C(v61, &qword_27CCDCE98);
  if (!v34)
  {
    return 0;
  }

LABEL_28:
  v35 = v21 | (v20 << 32);
  if ((~v7 & 0xFFFFFFFE) != 0 || ((v9 | (v8 << 32)) & 0xFE00000000) != 0x200000000)
  {
    v74[0] = v79;
    v74[1] = v80;
    v74[2] = v81;
    *&v74[3] = v7;
    *(&v74[3] + 1) = v59;
    LODWORD(v74[4]) = v9;
    BYTE4(v74[4]) = (v9 | (v8 << 32)) >> 32;
    if ((~v19 & 0xFFFFFFFE) == 0 && (v35 & 0xFE00000000) == 0x200000000)
    {
      return 0;
    }

    v72[0] = v101;
    v72[1] = v102;
    v72[2] = v103;
    *&v72[3] = v19;
    *(&v72[3] + 1) = v58;
    LODWORD(v72[4]) = v21;
    BYTE4(v72[4]) = (v21 | (v20 << 32)) >> 32;
    if ((_s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(v74, v72) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((~v19 & 0xFFFFFFFE) != 0 || (v35 & 0xFE00000000) != 0x200000000)
  {
    return 0;
  }

  v61[0] = v82;
  v61[1] = v83;
  v61[2] = v84;
  v36 = v85;
  v37 = *v86;
  v60[0] = *&v86[8];
  v39 = (~v107 & 0xFFFFFFFE) == 0 && (*v108 & 0xFE00000000) == 0x200000000;
  if ((~v85 & 0xFFFFFFFE) == 0 && (*v86 & 0xFE00000000) == 0x200000000)
  {
    if (v39)
    {
      v74[0] = v82;
      v74[1] = v83;
      v74[2] = v84;
      v74[3] = v85;
      *&v74[4] = *v86;
      *(&v74[4] + 8) = *&v86[8];
      sub_219F45500(&v82, v72, &qword_27CCDAB00);
      sub_219F45500(&v104, v72, &qword_27CCDAB00);
      sub_219F6409C(v74, &qword_27CCDAB00);
      goto LABEL_50;
    }

LABEL_47:
    v74[0] = v82;
    v74[1] = v83;
    v74[2] = v84;
    *(&v74[4] + 8) = *&v86[8];
    *(&v74[5] + 8) = v104;
    v74[3] = v85;
    *(&v74[6] + 8) = v105;
    *(&v74[7] + 8) = v106;
    *&v74[4] = *v86;
    *(&v74[8] + 8) = v107;
    *(&v74[9] + 1) = *v108;
    v74[10] = *&v108[8];
    sub_219F45500(&v82, v72, &qword_27CCDAB00);
    v40 = &v104;
    v41 = v72;
LABEL_48:
    sub_219F45500(v40, v41, &qword_27CCDAB00);
    v29 = &unk_27CCDD9A0;
LABEL_56:
    v32 = v74;
    goto LABEL_25;
  }

  if (v39)
  {
    goto LABEL_47;
  }

  v74[0] = v104;
  v74[1] = v105;
  v74[2] = v106;
  v74[3] = v107;
  *&v74[4] = *v108;
  *(&v74[4] + 8) = *&v108[8];
  v72[0] = v104;
  v72[1] = v105;
  v72[2] = v106;
  v72[3] = v107;
  *&v72[5] = *&v108[16];
  v72[4] = v74[4];
  __dst[2] = v84;
  __dst[1] = v83;
  __dst[0] = v82;
  *(&__dst[4] + 8) = *&v86[8];
  __dst[3] = v85;
  *&__dst[4] = *v86;
  sub_219F45500(&v82, __src, &qword_27CCDAB00);
  sub_219F45500(&v104, __src, &qword_27CCDAB00);
  v42 = sub_21A0D99E0(__dst, v72);
  sub_219F6409C(v74, &qword_27CCDAB00);
  __src[0] = v61[0];
  __src[1] = v61[1];
  __src[2] = v61[2];
  __src[3] = v36;
  *&__src[4] = v37;
  *(&__src[4] + 8) = v60[0];
  sub_219F6409C(__src, &qword_27CCDAB00);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v63[2] = v89;
  v63[3] = v90;
  v43 = *(&v91 + 1);
  *&v63[4] = v91;
  v63[1] = v88;
  v63[0] = v87;
  v44 = v92;
  if (!*(&v91 + 1))
  {
    if (!*(&v113 + 1))
    {
      v74[2] = v89;
      v74[3] = v90;
      v74[1] = v88;
      v74[0] = v87;
      v74[4] = v91;
      *&v74[5] = v92;
      sub_219F45500(&v87, __src, &qword_27CCD9F78);
      sub_219F45500(&v109, __src, &qword_27CCD9F78);
      sub_219F6409C(v74, &qword_27CCD9F78);
      goto LABEL_58;
    }

LABEL_55:
    v74[2] = v89;
    v74[3] = v90;
    v74[1] = v88;
    v74[0] = v87;
    *(&v74[6] + 8) = v110;
    *(&v74[7] + 8) = v111;
    *(&v74[8] + 8) = v112;
    v74[4] = v91;
    *&v74[5] = v92;
    *(&v74[9] + 8) = v113;
    *(&v74[5] + 8) = v109;
    *(&v74[10] + 1) = v114;
    sub_219F45500(&v87, __src, &qword_27CCD9F78);
    sub_219F45500(&v109, __src, &qword_27CCD9F78);
    v29 = &qword_27CCDA668;
    goto LABEL_56;
  }

  if (!*(&v113 + 1))
  {
    goto LABEL_55;
  }

  v74[2] = v111;
  v74[3] = v112;
  v74[1] = v110;
  v74[0] = v109;
  v74[4] = v113;
  *&v74[5] = v114;
  *&__src[5] = v114;
  __src[3] = v112;
  __src[2] = v111;
  __src[0] = v109;
  __src[1] = v110;
  __src[4] = v113;
  v61[2] = v89;
  v61[3] = v90;
  v61[1] = v88;
  v61[0] = v87;
  v61[4] = v91;
  *&v61[5] = v92;
  sub_219F45500(&v87, v60, &qword_27CCD9F78);
  sub_219F45500(&v109, v60, &qword_27CCD9F78);
  v45 = sub_21A0D98E4(v61, __src);
  sub_219F6409C(v74, &qword_27CCD9F78);
  v60[2] = v63[2];
  v60[3] = v63[3];
  v60[0] = v63[0];
  v60[1] = v63[1];
  *&v60[4] = *&v63[4];
  *(&v60[4] + 1) = v43;
  *&v60[5] = v44;
  sub_219F6409C(v60, &qword_27CCD9F78);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v68 = v93;
  v69 = v94;
  v70 = v95;
  v46 = v96;
  v47 = *v97;
  v67 = *&v97[8];
  v49 = (~v118 & 0xFFFFFFFE) == 0 && (*v119 & 0xFE00000000) == 0x200000000;
  if ((~v96 & 0xFFFFFFFE) == 0 && (*v97 & 0xFE00000000) == 0x200000000)
  {
    if (v49)
    {
      v74[0] = v93;
      v74[1] = v94;
      v74[2] = v95;
      v74[3] = v96;
      *&v74[4] = *v97;
      *(&v74[4] + 8) = *&v97[8];
      sub_219F45500(&v93, v60, &qword_27CCDAB00);
      sub_219F45500(&v115, v60, &qword_27CCDAB00);
      sub_219F6409C(v74, &qword_27CCDAB00);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  if (v49)
  {
LABEL_69:
    v74[0] = v93;
    v74[1] = v94;
    v74[2] = v95;
    *(&v74[4] + 8) = *&v97[8];
    *(&v74[5] + 8) = v115;
    v74[3] = v96;
    *(&v74[6] + 8) = v116;
    *(&v74[7] + 8) = v117;
    *&v74[4] = *v97;
    *(&v74[8] + 8) = v118;
    *(&v74[9] + 1) = *v119;
    v74[10] = *&v119[8];
    sub_219F45500(&v93, v60, &qword_27CCDAB00);
    v40 = &v115;
    v41 = v60;
    goto LABEL_48;
  }

  v63[0] = v115;
  v63[1] = v116;
  v63[2] = v117;
  v63[3] = v118;
  *&v63[4] = *v119;
  *(&v63[4] + 8) = *&v119[8];
  v74[0] = v115;
  v74[1] = v116;
  v74[2] = v117;
  v74[3] = v118;
  *&v74[5] = *&v119[16];
  v74[4] = v63[4];
  v60[1] = v94;
  v60[2] = v95;
  v60[0] = v93;
  *(&v60[4] + 8) = *&v97[8];
  v60[3] = v96;
  *&v60[4] = *v97;
  sub_219F45500(&v93, v64, &qword_27CCDAB00);
  sub_219F45500(&v115, v64, &qword_27CCDAB00);
  v50 = sub_21A0D99E0(v60, v74);
  sub_219F6409C(v63, &qword_27CCDAB00);
  v64[0] = v68;
  v64[1] = v69;
  v64[2] = v70;
  v64[3] = v46;
  v65 = v47;
  v66 = v67;
  sub_219F6409C(v64, &qword_27CCDAB00);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  if (v56 == 2)
  {
    return v57 == 2;
  }

  if (v57 == 2)
  {
    return 0;
  }

  if (v56)
  {
    v51 = 1802658148;
  }

  else
  {
    v51 = 0x746867696CLL;
  }

  if (v56)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  if (v57)
  {
    v53 = 1802658148;
  }

  else
  {
    v53 = 0x746867696CLL;
  }

  if (v57)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  if (v51 != v53 || v52 != v54)
  {
    v55 = sub_21A0E6C5C();

    return (v55 & 1) != 0;
  }

  return 1;
}

unint64_t sub_21A0B7E48()
{
  result = qword_27CCDDD60;
  if (!qword_27CCDDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD60);
  }

  return result;
}

unint64_t sub_21A0B7E9C()
{
  result = qword_27CCDDD68;
  if (!qword_27CCDDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD68);
  }

  return result;
}

unint64_t sub_21A0B7EF0()
{
  result = qword_27CCDDD70;
  if (!qword_27CCDDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD70);
  }

  return result;
}

unint64_t sub_21A0B7F44()
{
  result = qword_27CCDDD78;
  if (!qword_27CCDDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD78);
  }

  return result;
}

unint64_t sub_21A0B8048()
{
  result = qword_27CCDDD88;
  if (!qword_27CCDDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD88);
  }

  return result;
}

unint64_t sub_21A0B809C()
{
  result = qword_27CCDDD90;
  if (!qword_27CCDDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD90);
  }

  return result;
}

unint64_t sub_21A0B80F0()
{
  result = qword_27CCDDD98;
  if (!qword_27CCDDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD98);
  }

  return result;
}

unint64_t sub_21A0B8148()
{
  result = qword_27CCDDDA0;
  if (!qword_27CCDDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA13ActivityColorOGSg(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | (*(a1 + 68) >> 1 << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A0B81C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 2537))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = (*(a1 + 2248) >> 1) & 0x7FFFFFFF | (*(a1 + 2268) >> 1 << 31);
  v4 = -2 - v3;
  if ((-2 - v3) < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_21A0B8238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 2536) = 0;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2537) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2537) = 0;
    }

    if (a2)
    {
      *(result + 2216) = 0u;
      *(result + 2232) = 0u;
      *(result + 2200) = 0u;
      *(result + 2248) = 2 * ~a2;
      *(result + 2256) = 0;
      *(result + 2264) = 0;
      *(result + 2268) = 2;
    }
  }

  return result;
}

unint64_t sub_21A0B8574()
{
  result = qword_27CCDDDA8;
  if (!qword_27CCDDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDA8);
  }

  return result;
}

unint64_t sub_21A0B85CC()
{
  result = qword_27CCDDDB0;
  if (!qword_27CCDDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDB0);
  }

  return result;
}

unint64_t sub_21A0B8624()
{
  result = qword_27CCDDDB8;
  if (!qword_27CCDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDB8);
  }

  return result;
}

uint64_t sub_21A0B8678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656E696C79656BLL && a2 == 0xEB00000000746E69 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEE00746E6954646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10B010 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x686353726F6C6F63 && a2 == 0xEB00000000656D65)
  {

    return 7;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21A0B892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v7[0] = *a4;
  v7[1] = v4;
  v8 = *(a4 + 32);
  if (a2)
  {
    v5 = sub_21A04E49C(a1, a2, a3, v7);

    sub_219F5ED9C(v7);
    return v5;
  }

  else
  {
    sub_219F5ED9C(v7);

    return 0;
  }
}

__n128 PrimaryElectionContentState.headerProperties.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  v4 = v1[1].n128_u8[9];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

__n128 PrimaryElectionContentState.headerProperties.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  v1[1].n128_u8[9] = v4;
  return result;
}

uint64_t PrimaryElectionContentState.data.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PrimaryElectionContentState() + 20);

  return sub_21A0BA0D0(a1, v3);
}

uint64_t PrimaryElectionContentState.hash(into:)(uint64_t a1)
{
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  if (*(v1 + 25) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v12 = *(v1 + 24);
    v13 = v1[2];
    v14 = *(v1 + 2);
    v18 = *v1;
    v19 = v14 & 1;
    v20 = v13;
    v21 = v12 & 1;
    sub_21A0E6DCC();
    PrimaryElectionHeaderTemplateProperties.hash(into:)();
  }

  v15 = v1 + *(type metadata accessor for PrimaryElectionContentState() + 20);
  sub_21A02456C(v15, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_21A0E6DCC();
    sub_219F448A0(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v16 = type metadata accessor for PrimaryElectionData();
  return sub_219F6AE3C(a1, *(v15 + *(v16 + 20)));
}

uint64_t PrimaryElectionContentState.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionContentState.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B8F44()
{
  sub_21A0E6DAC();
  PrimaryElectionContentState.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B8F88()
{
  sub_21A0E6DAC();
  PrimaryElectionContentState.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = type metadata accessor for PrimaryElectionData();
  MEMORY[0x28223BE20](v29, v4);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABA8);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDDD8);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PrimaryElectionContentState();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21A0BA134();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v25 = v16;
  v18 = v28;
  v37 = 0;
  sub_21A0BA188();
  sub_21A0E6A8C();
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v22 = v25;
  *v25 = v33;
  *(v22 + 2) = v19;
  *(v22 + 24) = v20;
  *(v22 + 25) = v21;
  LOBYTE(v33) = 1;
  sub_219FB7310();
  sub_21A0E6A1C();
  LOBYTE(v33) = 1;
  sub_219F448A0(&qword_27CCDDDF0, type metadata accessor for PrimaryElectionData);
  sub_21A0E6ADC();
  (*(v27 + 8))(v9, v6);
  (*(v18 + 8))(v12, v31);
  v23 = v25;
  sub_21A0BA1DC(v30, v25 + *(v13 + 20));
  sub_21A0BA240(v23, v26, type metadata accessor for PrimaryElectionContentState);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_21A0BA2A8(v23);
}

uint64_t PrimaryElectionContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABD8);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDDF8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0BA134();
  sub_21A0E6EAC();
  LOBYTE(v21) = 1;
  sub_219FB7310();
  sub_21A0E6B2C();
  v14 = *(v3 + 2);
  v15 = *(v3 + 24);
  v16 = *(v3 + 25);
  v21 = *v3;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDE00);
  sub_21A0BA304();
  sub_21A0E6BBC();
  if (v2)
  {
    (*(v19 + 8))(v8, v20);
  }

  else
  {
    type metadata accessor for PrimaryElectionContentState();
    LOBYTE(v21) = 1;
    type metadata accessor for PrimaryElectionData();
    sub_219F448A0(&qword_27CCDDE18, type metadata accessor for PrimaryElectionData);
    v17 = v20;
    sub_21A0E6BBC();
    (*(v19 + 8))(v8, v17);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21A0B96B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000021A109860;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0x800000021A109860;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_21A0B9758()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0B97D8()
{
  sub_21A0E626C();
}

uint64_t sub_21A0B9844()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0B98C0@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21A0B9920(unint64_t *a1@<X8>)
{
  v2 = 0x800000021A109860;
  v3 = 1635017060;
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21A0B995C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21A0B9994@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21A0B99F8(uint64_t a1)
{
  v2 = sub_21A0BA134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0B9A34(uint64_t a1)
{
  v2 = sub_21A0BA134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static PrimaryElectionContentState.random(candidates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDE20);
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v61 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v56 - v9;
  v58 = type metadata accessor for PrimaryElectionData();
  MEMORY[0x28223BE20](v58, v11);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219FBFCFC(0x3E9uLL);
  v14 = v13;
  v15 = sub_21A0E495C();
  v16 = *(*(v15 - 8) + 56);
  v60 = v10;
  v16(v10, 1, 1, v15);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v56 = v4;
    v57 = a2;
    v82 = MEMORY[0x277D84F90];
    result = sub_219FBE700(0, v17, 0);
    v20 = 0;
    v18 = v82;
    v65 = a1 + 32;
    v66 = v17;
    if (v17 <= 0x1F4)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    v64 = v21;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v75 = v20;
      v22 = v65 + 120 * v20;
      v23 = *(v22 + 8);
      v24 = *(v22 + 24);
      v78 = *(v22 + 32);
      v79 = v18;
      v26 = *(v22 + 40);
      v25 = *(v22 + 48);
      v28 = *(v22 + 56);
      v27 = *(v22 + 64);
      v29 = *(v22 + 80);
      v69 = *(v22 + 72);
      v70 = v27;
      v68 = v29;
      v30 = *(v22 + 96);
      v67 = *(v22 + 88);
      v31 = *(v22 + 104);
      v32 = v13;
      v33 = *(v22 + 112) | (*(v22 + 116) << 32);
      v34 = v32 + 1;
      v81 = 0;
      swift_bridgeObjectRetain_n();
      v74 = v23;

      v35 = v24;

      v73 = v33;
      v55 = v33;
      v36 = v32;
      v76 = v28;
      v77 = v25;
      v37 = v28;
      v38 = v69;
      v39 = v70;
      v40 = v31;
      v41 = v30;
      v43 = v67;
      v42 = v68;
      v71 = v41;
      v72 = v40;
      sub_21A0BA3DC(v25, v37, v70, v69, v68, v67, v41, v40, v55);
      MEMORY[0x21CED2D50](&v81, 8);
      v44 = (v81 * (v32 + 1)) >> 64;
      v45 = v81 * (v32 + 1);
      v80 = v26;
      if (v32 >= v45)
      {
        v63 = v35;
        v46 = ~v32 % v34;
        if (v46 > v45)
        {
          do
          {
            v81 = 0;
            MEMORY[0x21CED2D50](&v81, 8);
          }

          while (v46 > v81 * v34);
          v44 = (v81 * v34) >> 64;
        }
      }

      result = sub_219F63A60(v77, v76, v39, v38, v42, v43, v71, v72, v73);
      v18 = v79;
      v82 = v79;
      v48 = *(v79 + 16);
      v47 = *(v79 + 24);
      if (v48 >= v47 >> 1)
      {
        result = sub_219FBE700((v47 > 1), v48 + 1, 1);
        v18 = v82;
      }

      v20 = v75 + 1;
      v13 = v36 - v44;
      *(v18 + 16) = v48 + 1;
      v49 = v18 + 40 * v48;
      v50 = v80;
      *(v49 + 32) = v78;
      *(v49 + 40) = v50;
      *(v49 + 48) = v44;
      *(v49 + 56) = v44 / v14;
      *(v49 + 64) = v64;
      if (v20 == v66)
      {
        a2 = v57;
        v4 = v56;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v82 = v18;
    swift_getKeyPath();
    v51 = v61;
    sub_21A0E462C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9810);
    sub_219F3E490(&qword_27CCDDE28, &qword_27CCD9810);
    sub_219F3E490(&qword_27CCDDE30, &qword_27CCDDE20);
    v52 = sub_21A0E62FC();
    (*(v62 + 8))(v51, v4);

    v53 = v59;
    sub_219FC26CC(v60, v59);
    *(v53 + *(v58 + 20)) = v52;
    *a2 = v14 / 1000.0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    v54 = type metadata accessor for PrimaryElectionContentState();
    return sub_21A0BA1DC(v53, a2 + *(v54 + 20));
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore27PrimaryElectionContentStateV2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t *a2)
{
  v4 = *(a2 + 25);
  if (*(a1 + 25))
  {
    if ((*(a2 + 25) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = a2[2];
    v8 = *(a2 + 24);
    v9 = *(a1 + 24);
    v10 = *(a1 + 2);
    v17 = *a1;
    v18 = v10;
    v19 = v9;
    v20 = 0;
    if (v4)
    {
      return 0;
    }

    v13 = v6;
    v14 = v5 & 1;
    v15 = v7;
    v16 = v8 & 1;
    if (!_s22NewsLiveActivitiesCore39PrimaryElectionHeaderTemplatePropertiesV2eeoiySbAC_ACtFZ_0(&v17, &v13))
    {
      return 0;
    }
  }

  v11 = *(type metadata accessor for PrimaryElectionContentState() + 20);

  return static PrimaryElectionData.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t sub_21A0BA0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0BA134()
{
  result = qword_27CCDDDE0;
  if (!qword_27CCDDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDE0);
  }

  return result;
}

unint64_t sub_21A0BA188()
{
  result = qword_27CCDDDE8;
  if (!qword_27CCDDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDE8);
  }

  return result;
}

uint64_t sub_21A0BA1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0BA240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0BA2A8(uint64_t a1)
{
  v2 = type metadata accessor for PrimaryElectionContentState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A0BA304()
{
  result = qword_27CCDDE08;
  if (!qword_27CCDDE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDDE00);
    sub_21A0BA388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE08);
  }

  return result;
}

unint64_t sub_21A0BA388()
{
  result = qword_27CCDDE10;
  if (!qword_27CCDDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE10);
  }

  return result;
}

uint64_t sub_21A0BA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = (a9 >> 36) & 3;
  if (v9 == 2)
  {
  }

  if (v9 == 1)
  {
  }

  return result;
}

unint64_t sub_21A0BA488()
{
  result = qword_27CCDDE40;
  if (!qword_27CCDDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE40);
  }

  return result;
}

unint64_t sub_21A0BA4E0()
{
  result = qword_27CCDDE48;
  if (!qword_27CCDDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE48);
  }

  return result;
}

unint64_t sub_21A0BA538()
{
  result = qword_27CCDDE50;
  if (!qword_27CCDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE50);
  }

  return result;
}

void *LiveBlogStaticAttributes.assets.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v39 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  v6 = *(v40 - 8);
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v40, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9990);
  v19 = *(v6 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v38 = swift_allocObject();
  v21 = v38 + v20;
  v22 = type metadata accessor for LiveBlogStaticAttributes();
  sub_219F45500(v1 + *(v22 + 20), v21, &qword_27CCD98D0);
  v35 = v3;
  v23 = *(v3 + 56);
  v23(v21, 0, 1, v2);
  sub_219F45500(v1, v18, &qword_27CCD9608);
  v24 = type metadata accessor for ActivityHeaderData();
  v25 = (*(*(v24 - 8) + 48))(v18, 1, v24);
  v36 = v19;
  if (v25 == 1)
  {
    sub_219F6409C(v18, &qword_27CCD9608);
    v23(v21 + v19, 1, 1, v2);
  }

  else
  {
    sub_219F45500(&v18[*(v24 + 40)], v21 + v19, &qword_27CCD98D8);
    sub_21A0BE780(v18, type metadata accessor for ActivityHeaderData);
  }

  sub_219F45500(v21, v14, &qword_27CCD98D8);
  sub_219F4D494(v14, v11, &qword_27CCD98D8);
  v26 = v35;
  v27 = *(v35 + 48);
  v37 = v2;
  if (v27(v11, 1, v2) == 1)
  {
    sub_219F6409C(v11, &qword_27CCD98D8);
    v28 = MEMORY[0x277D84F90];
    v29 = v39;
  }

  else
  {
    v29 = v39;
    sub_219F4D494(v11, v39, &qword_27CCD98D0);
    v28 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_219FA17F8(0, v28[2] + 1, 1, v28);
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_219FA17F8(v30 > 1, v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    sub_219F4D494(v29, v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, &qword_27CCD98D0);
  }

  sub_219F45500(v21 + v36, v14, &qword_27CCD98D8);
  sub_219F4D494(v14, v11, &qword_27CCD98D8);
  if (v27(v11, 1, v37) == 1)
  {
    sub_219F6409C(v11, &qword_27CCD98D8);
  }

  else
  {
    sub_219F4D494(v11, v29, &qword_27CCD98D0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_219FA17F8(0, v28[2] + 1, 1, v28);
    }

    v33 = v28[2];
    v32 = v28[3];
    if (v33 >= v32 >> 1)
    {
      v28 = sub_219FA17F8(v32 > 1, v33 + 1, 1, v28);
    }

    v28[2] = v33 + 1;
    sub_219F4D494(v29, v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v33, &qword_27CCD98D0);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v28;
}