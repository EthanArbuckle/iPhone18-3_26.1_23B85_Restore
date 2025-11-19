uint64_t sub_22C57C7E8()
{
  sub_22C37B5C8();
  sub_22C4706F0();
  return sub_22C90B66C();
}

uint64_t sub_22C57C884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

uint64_t sub_22C57C914()
{
  v1 = *v0;
  sub_22C90B62C();
  sub_22C4706F0();
  return sub_22C90B66C();
}

uint64_t sub_22C57C958()
{
  sub_22C36986C();
  sub_22C3A5908(&qword_27D9BDED8, &qword_22C91C4B8);
  v2 = (type metadata accessor for SegmentedPrompt.Segment(0) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C90F800;
  v6 = (v5 + v4);

  sub_22C57A24C(MEMORY[0x277D84FA0], v1, v0);
  v8 = sub_22C3AD898(v7);
  *v6 = v1;
  v6[1] = v0;
  v6[2] = v8;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v2[7]) = MEMORY[0x277D84F90];
  return v5;
}

uint64_t sub_22C57CA94(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for SegmentedPrompt.Segment(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = (v11 - v10);

  sub_22C57A24C(MEMORY[0x277D84FA0], a1, a2);
  v14 = sub_22C3AD898(v13);
  *v12 = a1;
  v12[1] = a2;
  v12[2] = v14;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v6 + 28)) = MEMORY[0x277D84F90];

  sub_22C3D0F98();
  v15 = *(*v2 + 16);
  sub_22C3D115C(v15);
  v16 = v7;
  v17 = *v2;
  *(v17 + 16) = v15 + 1;
  v18 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v19 = *(v16 + 72);
  result = sub_22C57D698();
  *v2 = v17;
  return result;
}

uint64_t sub_22C57CC48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C57C958();
  *a2 = result;
  return result;
}

uint64_t sub_22C57CC78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_22C3A5908(&qword_27D9BDED8, &qword_22C91C4B8);
  v5 = *(type metadata accessor for SegmentedPrompt.Segment(0) - 8);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  v8 = swift_allocObject();
  v9 = sub_22C48010C(v8, 1);
  v11 = v10;
  v12 = sub_22C799FA0(0);
  sub_22C57A51C(v3, v4, v12, v11);
  result = nullsub_1(v9);
  *a2 = result;
  return result;
}

unint64_t sub_22C57CD64()
{
  result = qword_27D9BDEB8;
  if (!qword_27D9BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDEB8);
  }

  return result;
}

unint64_t sub_22C57CDBC()
{
  result = qword_27D9BDEC0;
  if (!qword_27D9BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDEC0);
  }

  return result;
}

unint64_t sub_22C57CE14()
{
  result = qword_27D9BDEC8;
  if (!qword_27D9BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDEC8);
  }

  return result;
}

unint64_t sub_22C57CE6C()
{
  result = qword_27D9BDED0;
  if (!qword_27D9BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDED0);
  }

  return result;
}

uint64_t sub_22C57CF00(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_22C90AE5C();
  v4 = *(a1 + 36);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SegmentedPrompt.SegmentTransformation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_22C57D070()
{
  if (!qword_27D9BDEF0)
  {
    type metadata accessor for SegmentedPrompt.DeferredReference(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BDEF0);
    }
  }
}

uint64_t sub_22C57D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22C57D198()
{
  if (!qword_27D9BDF08)
  {
    v0 = type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDF08);
    }
  }
}

uint64_t sub_22C57D200(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C57D240(uint64_t result, int a2, int a3)
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

void sub_22C57D2B4()
{
  sub_22C57D348();
  if (v0 <= 0x3F)
  {
    sub_22C90963C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C57D348()
{
  if (!qword_27D9BDF20)
  {
    sub_22C90430C();
    sub_22C57D554(&qword_27D9BC810, MEMORY[0x277D85578]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDF20);
    }
  }
}

void sub_22C57D40C()
{
  type metadata accessor for SegmentedPrompt.SegmentPayload(319);
  if (v0 <= 0x3F)
  {
    sub_22C57D490();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C57D490()
{
  if (!qword_27D9BDF38)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDF38);
    }
  }
}

unint64_t sub_22C57D500()
{
  result = qword_27D9BDF40;
  if (!qword_27D9BDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDF40);
  }

  return result;
}

uint64_t sub_22C57D554(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22C57D59C()
{
  result = qword_27D9BDF58;
  if (!qword_27D9BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDF58);
  }

  return result;
}

unint64_t sub_22C57D5F0()
{
  result = qword_27D9BDF70;
  if (!qword_27D9BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDF70);
  }

  return result;
}

uint64_t sub_22C57D644()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C57D698()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C57D6F0()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

uint64_t sub_22C57D76C()
{

  return sub_22C57D644();
}

uint64_t sub_22C57D7C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v179 = a2;
  v176 = a1;
  v151 = sub_22C9063DC();
  v4 = sub_22C369824(v151);
  v150 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = &v144 - v11;
  v177 = sub_22C3A5908(&qword_27D9BDF90, &qword_22C91CAC0);
  v12 = sub_22C36985C(v177);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v173 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v165 = v17;
  sub_22C369930();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v144 - v20;
  MEMORY[0x28223BE20](v19);
  sub_22C36BA58();
  v164 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v180 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v27 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v178 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  v153 = v31;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  v154 = &v144 - v33;
  v34 = sub_22C3A5908(&qword_27D9BDF98, &qword_22C91CAC8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v144 - v36;
  v38 = sub_22C90952C();
  v39 = sub_22C369824(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v46 = v45 - v44;
  v47 = *(v41 + 16);
  v48 = sub_22C37EF10();
  v49(v48);
  if ((*(v41 + 88))(v46, v38) != *MEMORY[0x277D72D28])
  {
    (*(v41 + 8))(v46, v38);
LABEL_12:
    v63 = sub_22C909A7C();
    v64 = a3;
    return sub_22C36C640(v64, 1, 1, v63);
  }

  (*(v41 + 96))(v46, v38);
  v50 = *(*v46 + 16);
  v51 = *(*v46 + 24);
  v52 = *(*v46 + 40);
  v148 = *(*v46 + 32);
  v152 = v52;
  v53 = v50 == 0xD00000000000001BLL && 0x800000022C932350 == v51;
  if (!v53 && (sub_22C90B4FC() & 1) == 0)
  {

    goto LABEL_12;
  }

  v147 = a3;

  v54 = sub_22C909A6C();
  sub_22C36C640(v37, 1, 1, v54);

  v55 = sub_22C90811C();

  sub_22C36DD28(v37, &qword_27D9BDF98, &qword_22C91CAC8);
  v56 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v55 + 64);
  if (v59)
  {
    v60 = 0;
    v61 = __clz(__rbit64(v59));
    v62 = (v59 - 1) & v59;
    v163 = (v57 + 63) >> 6;
    goto LABEL_18;
  }

  v66 = 0;
  v67 = (v57 + 63) >> 6;
  do
  {
    v60 = v66 + 1;
    if (v66 + 1 >= v67)
    {

      sub_22C903F7C();
      v137 = v152;

      v138 = sub_22C9063CC();
      v139 = sub_22C90AADC();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v181 = v141;
        *v140 = 136315138;
        v142 = sub_22C36F9F4(v148, v137, &v181);

        *(v140 + 4) = v142;
        _os_log_impl(&dword_22C366000, v138, v139, "Found no type schemas for kind %s", v140, 0xCu);
        sub_22C36FF94(v141);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {
      }

      (*(v150 + 8))(v10, v151);
      v143 = v147;
      v63 = sub_22C909A7C();
      v64 = v143;
      return sub_22C36C640(v64, 1, 1, v63);
    }

    v68 = *(v55 + 8 * v66 + 72);
    v59 += 64;
    ++v66;
  }

  while (!v68);
  v163 = v67;
  v62 = (v68 - 1) & v68;
  v61 = __clz(__rbit64(v68)) + v59;
LABEL_18:
  v69 = *(v55 + 48);
  v70 = sub_22C9099FC();
  sub_22C369824(v70);
  v72 = v71;
  v162 = *(v73 + 72);
  v75 = v73 + 16;
  v74 = *(v73 + 16);
  v176 = v76;
  v161 = v74;
  v160 = v75;
  (v74)(v27, v69 + v162 * v61);
  v77 = *(v55 + 56);
  v78 = sub_22C909A7C();
  sub_22C369824(v78);
  v80 = v79;
  v159 = *(v81 + 72);
  v82 = *(v79 + 16);
  v83 = v27 + *(v177 + 48);
  v179 = v84;
  v158 = v79 + 16;
  v157 = v82;
  (v82)(v83, v77 + v159 * v61);
  sub_22C57EAE4(v27, v178);
  v145 = v72;
  v175 = (v72 + 8);
  v146 = v80;
  v174 = (v80 + 8);

  v85 = v173;
  v155 = v55 + 64;
  v156 = v55;
  while (2)
  {
    if (v62)
    {
LABEL_24:
      v87 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v88 = v87 | (v60 << 6);
      v89 = v164;
      v90 = v176;
      v161(v164, *(v55 + 48) + v88 * v162, v176);
      v91 = *(v55 + 56) + v88 * v159;
      v92 = v177;
      v157(v89 + *(v177 + 48), v91, v179);
      sub_22C57EAE4(v89, v180);
      v93 = v178;
      sub_22C57EB54(v178, v21);
      v169 = *(v92 + 48);
      v94 = v92;
      v172 = sub_22C9099EC();
      v96 = v95;
      v97 = *v175;
      (*v175)(v21, v90);
      v98 = v93;
      v99 = v165;
      sub_22C57EB54(v98, v165);
      v168 = *(v94 + 48);
      v171 = sub_22C9099DC();
      v101 = v100;
      v97(v99, v90);
      v181 = v172;
      v182 = v96;

      MEMORY[0x2318B7850](v171, v101);

      v171 = v182;
      v172 = v181;
      v102 = *v174;
      v170 = v102;
      v103 = v179;
      v102(v99 + v168, v179);
      v102(&v21[v169], v103);
      sub_22C57EB54(v180, v21);
      v104 = v177;
      v169 = *(v177 + 48);
      v167 = sub_22C9099EC();
      v106 = v105;
      v107 = v176;
      v97(v21, v176);
      sub_22C57EB54(v178, v99);
      v168 = *(v104 + 48);
      v166 = sub_22C9099DC();
      v109 = v108;
      v97(v99, v107);
      v181 = v167;
      v182 = v106;

      MEMORY[0x2318B7850](v166, v109);

      v111 = v181;
      v110 = v182;
      v112 = v99 + v168;
      v114 = v170;
      v113 = v171;
      v115 = v179;
      v170(v112, v179);
      v114(&v21[v169], v115);
      if (v172 == v111 && v113 == v110)
      {
      }

      else
      {
        v117 = sub_22C90B4FC();

        if (v117)
        {
          v118 = v178;
          sub_22C36DD28(v178, &qword_27D9BDF90, &qword_22C91CAC0);
          result = sub_22C57EAE4(v180, v118);
LABEL_32:
          v85 = v173;
          v55 = v156;
          v56 = v155;
          continue;
        }
      }

      result = sub_22C36DD28(v180, &qword_27D9BDF90, &qword_22C91CAC0);
      goto LABEL_32;
    }

    break;
  }

  while (1)
  {
    v86 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      return result;
    }

    if (v86 >= v163)
    {
      break;
    }

    v62 = *(v56 + 8 * v86);
    ++v60;
    if (v62)
    {
      v60 = v86;
      goto LABEL_24;
    }
  }

  v119 = v153;
  sub_22C57EAE4(v178, v153);
  v120 = v154;
  sub_22C57EAE4(v119, v154);
  v121 = *(v55 + 16);

  if (v121 < 2)
  {

    v127 = v147;
  }

  else
  {
    v122 = v149;
    sub_22C903F7C();
    sub_22C57EB54(v120, v85);
    v123 = v152;

    v124 = sub_22C9063CC();
    v125 = sub_22C90AADC();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v147;
    if (v126)
    {
      v128 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v181 = v180;
      *v128 = 136315394;
      v129 = sub_22C36F9F4(v148, v123, &v181);

      *(v128 + 4) = v129;
      *(v128 + 12) = 2080;
      sub_22C57EB54(v85, v21);
      v130 = *(v177 + 48);
      v131 = v165;
      (*(v145 + 32))(v165, v21, v176);
      (*(v146 + 32))(v131 + v130, &v21[v130], v179);
      v132 = sub_22C90A1AC();
      v134 = v133;
      sub_22C36DD28(v173, &qword_27D9BDF90, &qword_22C91CAC0);
      v135 = sub_22C36F9F4(v132, v134, &v181);

      *(v128 + 14) = v135;
      _os_log_impl(&dword_22C366000, v124, v125, "Multiple type schema matches for kind %s. We have no way to tell them apart, so will arbitrarily pick to render %s!", v128, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      sub_22C36DD28(v85, &qword_27D9BDF90, &qword_22C91CAC0);
    }

    (*(v150 + 8))(v122, v151);
  }

  sub_22C57EAE4(v120, v21);
  v136 = v179;
  (*(v146 + 32))(v127, &v21[*(v177 + 48)], v179);
  sub_22C36C640(v127, 0, 1, v136);
  return (*v175)(v21, v176);
}

uint64_t sub_22C57E564()
{
  v1 = v0;
  v2 = sub_22C909ABC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C909A9C();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C909A7C();
  v21 = sub_22C369824(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v28 = v27 - v26;
  (*(v23 + 16))(v27 - v26, v1, v20);
  v29 = (*(v23 + 88))(v28, v20);
  if (v29 == *MEMORY[0x277D733D0])
  {
    (*(v23 + 96))(v28, v20);
    (*(v14 + 32))(v19, v28, v11);
    sub_22C909A8C();
    v30 = *(v14 + 8);
    v31 = sub_22C36D384();
    return v32(v31);
  }

  else if (v29 == *MEMORY[0x277D733C8])
  {
    (*(v23 + 96))(v28, v20);
    (*(v5 + 32))(v10, v28, v2);
    sub_22C909AAC();
    return (*(v5 + 8))(v10, v2);
  }

  else
  {
    result = sub_22C90B4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C57E808()
{
  v1 = v0;
  v2 = sub_22C90998C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C9095CC();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C90947C();
  v21 = sub_22C369824(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v28 = v27 - v26;
  (*(v23 + 16))(v27 - v26, v1, v20);
  v29 = *(v23 + 88);
  v30 = sub_22C36D384();
  v32 = v31(v30);
  if (v32 != *MEMORY[0x277D72B88])
  {
    if (v32 == *MEMORY[0x277D72B68])
    {
      v37 = *(v23 + 96);
      v38 = sub_22C36D384();
      v39(v38);
      v40 = (*(v14 + 32))(v19, v28, v11);
      v36 = MEMORY[0x2318B6A80](v40);
      (*(v14 + 8))(v19, v11);
      return v36;
    }

    if (v32 == *MEMORY[0x277D72B48])
    {
      v41 = *(v23 + 96);
      v42 = sub_22C36D384();
      v43(v42);
      (*(v5 + 32))(v10, v28, v2);
      v36 = sub_22C90995C();
      (*(v5 + 8))(v10, v2);
      return v36;
    }

    v45 = *MEMORY[0x277D72B50];
    *MEMORY[0x277D72B60];
  }

  v33 = *(v23 + 8);
  v34 = sub_22C36D384();
  v35(v34);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22C57EAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDF90, &qword_22C91CAC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C57EB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDF90, &qword_22C91CAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C57EBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9096DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a1, v4);
  v13 = *(v7 + 88);
  v14 = sub_22C37EF10();
  if (v15(v14) == *MEMORY[0x277D73010])
  {
    v16 = *(v7 + 96);
    v17 = sub_22C37EF10();
    v18(v17);
    v19 = sub_22C9099FC();
    sub_22C36985C(v19);
    (*(v20 + 32))(a2, v12, v19);
    v21 = a2;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = *(v7 + 8);
    v25 = sub_22C37EF10();
    v26(v25);
    v23 = sub_22C9099FC();
    v21 = a2;
    v22 = 1;
  }

  return sub_22C36C640(v21, v22, 1, v23);
}

uint64_t sub_22C57ED3C()
{
  v1 = sub_22C908D6C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v43 - v12;
  v13 = sub_22C908EAC();
  v14 = sub_22C369824(v13);
  v45 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v44 = v19 - v18;
  v20 = sub_22C9036EC();
  v21 = sub_22C369824(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v28 = v27 - v26;
  (*(v23 + 16))(v27 - v26, v0, v20);
  v29 = (*(v23 + 88))(v28, v20);
  v30 = *MEMORY[0x277D1ECE8];
  (*(v23 + 8))(v28, v20);
  if (v29 == v30)
  {
    return 0;
  }

  v31 = v46;
  sub_22C9036BC();
  if (sub_22C370B74(v31, 1, v13) == 1)
  {
    sub_22C3770B0(v31, &qword_27D9BC1E8, &qword_22C9123B0);
    return 0;
  }

  v33 = *(v45 + 32);
  v43 = v13;
  v33(v44, v31, v13);
  result = sub_22C908DEC();
  v34 = 0;
  v35 = *(result + 16);
  v46 = (v4 + 16);
  v36 = *MEMORY[0x277D72188];
  v37 = *MEMORY[0x277D72178];
  v38 = (v4 + 8);
  while (1)
  {
    if (v35 == v34)
    {
      v34 = v35;
      goto LABEL_14;
    }

    v39 = result;
    (*(v4 + 16))(v9, result + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v1);
    v40 = (*(v4 + 88))(v9, v1);
    if (v40 == v36)
    {
      break;
    }

    if (v40 == v37)
    {
      goto LABEL_13;
    }

    (*v38)(v9, v1);
    ++v34;
    result = v39;
  }

  (*v38)(v9, v1);
LABEL_13:
  result = v39;
LABEL_14:
  v41 = *(result + 16);
  if (v34 == v41)
  {

    (*(v45 + 8))(v44, v43);
    return 1;
  }

  if (v34 >= v41)
  {
    __break(1u);
  }

  else
  {
    v42 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34;
    result = sub_22C4AF1C0();
    if ((result & 1) == 0)
    {

      (*(v45 + 8))(v44, v43);
      return 2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C57F13C()
{
  v1 = sub_22C908D6C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C9099FC();
  v11 = sub_22C369824(v10);
  v74 = v12;
  v75 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v77 = v16 - v15;
  v17 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = &v62 - v19;
  v20 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v65 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v64 = &v62 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  MEMORY[0x28223BE20](v26);
  v66 = &v62 - v29;
  v30 = sub_22C9036EC();
  v31 = sub_22C369824(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v38 = v37 - v36;
  (*(v33 + 16))(v37 - v36, v0, v30);
  v39 = (*(v33 + 88))(v38, v30);
  v40 = *MEMORY[0x277D1ECE8];
  (*(v33 + 8))(v38, v30);
  if (v39 == v40)
  {
    return 1;
  }

  v42 = v67;
  sub_22C9036BC();
  v43 = sub_22C908EAC();
  if (sub_22C370B74(v42, 1, v43) == 1)
  {
    sub_22C3770B0(v42, &qword_27D9BC1E8, &qword_22C9123B0);
    v44 = v66;
    sub_22C36C640(v66, 1, 1, v75);
    goto LABEL_25;
  }

  v63 = v43;
  result = sub_22C908DEC();
  v46 = result;
  v47 = 0;
  v48 = *(result + 16);
  v76 = *MEMORY[0x277D72148];
  v70 = (v4 + 96);
  v71 = (v4 + 8);
  v49 = v74;
  v50 = v75;
  v73 = (v74 + 32);
  v74 = result;
  v68 = (v49 + 8);
  v69 = 0x800000022C932110;
  v72 = v4;
  while (v48 != v47)
  {
    sub_22C369FD4();
    (*(v4 + 16))(v9, v51 + v52 * v47, v1);
    v53 = (*(v4 + 88))(v9, v1);
    if (v53 == v76)
    {
      (*v70)(v9, v1);
      v54 = *v73;
      (*v73)(v77, v9, v50);
      if (sub_22C9099DC() == 0xD00000000000001CLL && v69 == v55)
      {
      }

      else
      {
        v57 = sub_22C90B4FC();

        if ((v57 & 1) == 0)
        {
          v50 = v75;
          v54(v28, v77, v75);
          sub_22C36C640(v28, 0, 1, v50);
          result = sub_22C3770B0(v28, &qword_27D9BDC50, &unk_22C91B470);
          v46 = v74;
          goto LABEL_19;
        }
      }

      v50 = v75;
      (*v68)(v77, v75);
      v46 = v74;
      v4 = v72;
    }

    else
    {
      (*v71)(v9, v1);
    }

    sub_22C36C640(v28, 1, 1, v50);
    result = sub_22C3770B0(v28, &qword_27D9BDC50, &unk_22C91B470);
    ++v47;
  }

  v47 = v48;
LABEL_19:
  v58 = *(v46 + 16);
  if (v47 == v58)
  {
    v59 = 1;
    v44 = v66;
    goto LABEL_24;
  }

  if (v47 >= v58)
  {
    __break(1u);
  }

  else
  {
    sub_22C369FD4();
    v60 = v64;
    sub_22C5791C0();
    v61 = v65;
    sub_22C57F7EC(v60, v65);
    result = sub_22C370B74(v61, 1, v50);
    if (result != 1)
    {
      v44 = v66;
      (*v73)(v66, v61, v50);
      sub_22C3770B0(v60, &qword_27D9BDC50, &unk_22C91B470);
      v59 = 0;
LABEL_24:
      v41 = 1;
      sub_22C36C640(v44, v59, 1, v50);

      (*(*(v63 - 8) + 8))(v67);
      if (sub_22C370B74(v44, 1, v50) != 1)
      {
LABEL_26:
        sub_22C3770B0(v44, &qword_27D9BDC50, &unk_22C91B470);
        return v41;
      }

LABEL_25:
      v41 = 0;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C57F7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ToolRenderingClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C57F93C()
{
  result = qword_27D9BDFA0;
  if (!qword_27D9BDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDFA0);
  }

  return result;
}

uint64_t sub_22C57F990@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C901FAC();
  v3 = sub_22C369824(v2);
  v51 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v56 = sub_22C9089DC();
  v10 = sub_22C369824(v56);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v55 = v14 - v13;
  v62 = sub_22C9079FC();
  v15 = sub_22C369824(v62);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v61 = v21 - v20;
  v22 = sub_22C908A0C();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v57 = v29 - v28;
  v30 = sub_22C9087DC();
  v31 = *(v30 + 16);
  if (v31)
  {
    v49 = a1;
    v60 = v30 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v59 = *MEMORY[0x277D1E808];
    v63 = v25;
    v58 = (v25 + 8);
    v50 = (v17 + 32);
    v32 = (v51 + 8);
    v52 = (v17 + 8);
    v53 = v30;
    v33 = v55;
    a1 = v56;
    v34 = v57;
    v35 = v30;
    v54 = v22;
    while (v31 <= *(v35 + 16))
    {
      --v31;
      (*(v63 + 16))(v34, v60 + *(v63 + 72) * v31, v22);
      sub_22C9089EC();
      v36 = sub_22C369E80();
      if (v37(v36) == v59)
      {
        v38 = sub_22C369E80();
        v39(v38);
        (*v50)(v61, v33, v62);
        v40 = sub_22C9079EC();
        v41 = 0;
        v42 = *(v40 + 16);
        while (v42 != v41)
        {
          v43 = *(sub_22C9081CC() - 8);
          v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41;
          sub_22C9068FC();
          LOBYTE(v44) = sub_22C901F6C();
          (*v32)(v9, v2);
          ++v41;
          if (v44)
          {

            (*v52)(v61, v62);

            a1 = v49;
            v22 = v54;
            (*(v63 + 32))(v49, v57, v54);
            v47 = 0;
            return sub_22C36C640(a1, v47, 1, v22);
          }
        }

        (*v52)(v61, v62);
        v34 = v57;
        v22 = v54;
        (*v58)(v57, v54);
        v33 = v55;
        a1 = v56;
        v35 = v53;
        if (!v31)
        {
LABEL_12:

          v47 = 1;
          a1 = v49;
          return sub_22C36C640(a1, v47, 1, v22);
        }
      }

      else
      {
        (*v58)(v34, v22);
        v45 = sub_22C369E80();
        v46(v45);
        if (!v31)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  v47 = 1;
  return sub_22C36C640(a1, v47, 1, v22);
}

id sub_22C57FE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C580120();

  return sub_22C7FE43C(a1, a2, 0);
}

uint64_t sub_22C58001C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9089DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C9089EC();
  v12 = sub_22C9089AC();
  (*(v6 + 8))(v11, v3);
  v15 = a2;
  LOBYTE(a2) = sub_22C5EC13C(sub_22C4F5E4C, v14, v12);

  return a2 & 1;
}

unint64_t sub_22C580120()
{
  result = qword_27D9BDFA8;
  if (!qword_27D9BDFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BDFA8);
  }

  return result;
}

uint64_t type metadata accessor for RouteRequestToSearch()
{
  result = qword_27D9BDFB0;
  if (!qword_27D9BDFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C5801D8(uint64_t a1)
{
  v80 = a1;
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v71 = v3;
  v72 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v70 - v11;
  v12 = sub_22C90700C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C369838();
  v14 = sub_22C90654C();
  v15 = sub_22C369824(v14);
  v74 = v16;
  v75 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = (v20 - v19);
  v73 = sub_22C901FAC();
  v22 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C369838();
  v23 = sub_22C9070DC();
  v24 = sub_22C369824(v23);
  v78 = v25;
  v79 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v76 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  v32 = sub_22C90880C();
  v33 = sub_22C369824(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  v40 = v39 - v38;
  v41 = *(type metadata accessor for FullPlannerPreferences() + 128);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v42 = 0;
  if (v84 == 1)
  {
    sub_22C90878C();
    v43 = sub_22C9087DC();
    (*(v35 + 8))(v40, v32);
    v83 = v43;
    sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C3AC13C();
    v44 = sub_22C907E9C();

    sub_22C3A5C94(v44);
    v46 = v45;
    v48 = v47;

    if (v48)
    {
      sub_22C9087AC();
      sub_22C90882C();

      *v21 = v46;
      v21[1] = v48;
      v49 = *MEMORY[0x277D1DEF8];
      v50 = sub_22C906F2C();
      (*(*(v50 - 8) + 104))(v21, v49, v50);
      v51 = *MEMORY[0x277D1DAA8];
      v52 = v75;
      v74 = *(v74 + 104);
      (v74)(v21, v51, v75);
      sub_22C9070BC();
      v82 = 0;
      sub_22C90708C();
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
      v53 = (sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8);
      v54 = *(*v53 + 72);
      v55 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_22C90F800;
      v57 = (v56 + v55);
      v58 = v53[14];
      *v57 = 0x7972657551776172;
      v57[1] = 0xE800000000000000;
      sub_22C9068FC();
      sub_22C909F0C();
      v59 = sub_22C90941C();
      sub_22C36C640(v77, 1, 1, v59);
      sub_22C9082AC();
      sub_22C90829C();
      (v74)(v21, *MEMORY[0x277D1DA48], v52);
      sub_22C9070BC();
      v81 = 0;
      v60 = v76;
      sub_22C90708C();
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v61 = v78;
      v62 = *(v78 + 72);
      v63 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_22C90F870;
      v64 = v42 + v63;
      v65 = v79;
      (*(v61 + 16))(v64, v31, v79);
      (*(v61 + 32))(v64 + v62, v60, v65);
      (*(v61 + 8))(v31, v65);
    }

    else
    {
      sub_22C903F7C();
      v66 = sub_22C9063CC();
      v67 = sub_22C90AACC();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_22C366000, v66, v67, "Running search bypass rule, but NOT triggering", v68, 2u);
        MEMORY[0x2318B9880](v68, -1, -1);
      }

      (*(v71 + 8))(v8, v72);
      return 0;
    }
  }

  return v42;
}

void sub_22C580908()
{
  sub_22C4DD758();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_22C5809B8()
{
  sub_22C36BA7C();
  sub_22C36D118();
  v5 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C381AB0();
  sub_22C58AA98();
  v9 = sub_22C90A75C();
  v10 = sub_22C3707B4();
  v12 = sub_22C370B74(v10, v11, v9);

  if (v12 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C58A9F8();
    (*(v13 + 8))(v1, v9);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C36A83C();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();
  sub_22C36A83C();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v0;

  swift_task_create();
  sub_22C36A024();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

void sub_22C580C40()
{
  sub_22C36BA7C();
  sub_22C36D118();
  v5 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C381AB0();
  sub_22C58AA98();
  v9 = sub_22C90A75C();
  v10 = sub_22C3707B4();
  v12 = sub_22C370B74(v10, v11, v9);

  if (v12 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C58A9F8();
    (*(v13 + 8))(v1, v9);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C36A83C();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v0;
    sub_22C9071BC();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();
  sub_22C36A83C();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v0;
  sub_22C9071BC();

  swift_task_create();
  sub_22C36A024();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

uint64_t sub_22C580ED4()
{
  sub_22C369980();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_22C9073DC();
  v1[12] = v6;
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[13] = sub_22C3699D4();
  v9 = sub_22C908A0C();
  v1[14] = v9;
  sub_22C3699B8(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = sub_22C3699D4();
  v13 = type metadata accessor for EndCheckpoint(0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  v1[17] = sub_22C3699D4();
  v16 = sub_22C9063DC();
  v1[18] = v16;
  sub_22C3699B8(v16);
  v1[19] = v17;
  v19 = *(v18 + 64);
  v1[20] = sub_22C36D0D4();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v20 = sub_22C9089DC();
  v1[23] = v20;
  sub_22C3699B8(v20);
  v1[24] = v21;
  v23 = *(v22 + 64);
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v24 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  v1[27] = sub_22C36D0D4();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v27 = sub_22C90880C();
  v1[31] = v27;
  sub_22C3699B8(v27);
  v1[32] = v28;
  v30 = *(v29 + 64);
  v1[33] = sub_22C36D0D4();
  v1[34] = swift_task_alloc();
  v31 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  v1[35] = sub_22C36D0D4();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v34 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  v1[38] = sub_22C3699D4();
  v37 = sub_22C587924(0);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  v1[39] = sub_22C3699D4();
  v40 = sub_22C587C84(0);
  v1[40] = v40;
  sub_22C369914(v40);
  v42 = *(v41 + 64);
  v1[41] = sub_22C36D0D4();
  v1[42] = swift_task_alloc();
  v43 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  v1[43] = sub_22C3699D4();
  v46 = sub_22C90069C();
  v1[44] = v46;
  sub_22C3699B8(v46);
  v1[45] = v47;
  v49 = *(v48 + 64);
  v1[46] = sub_22C36D0D4();
  v1[47] = swift_task_alloc();
  started = type metadata accessor for StartCheckpoint(0);
  sub_22C369914(started);
  v52 = *(v51 + 64);
  v1[48] = sub_22C3699D4();
  v53 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v53, v54, v55);
}

uint64_t sub_22C581C74()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  sub_22C589E50(v3, type metadata accessor for StartCheckpoint);
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C582708()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 424) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C582D48()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 432);
  v3 = *(v1 + 136);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  sub_22C589E50(v3, type metadata accessor for EndCheckpoint);
  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C583308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22C58A86C();
  sub_22C38B1C4();
  v30 = *(v28 + 424);
  v31 = *(v28 + 376);
  v32 = *(v28 + 352);
  v33 = *(v28 + 360);
  v34 = *(v28 + 336);
  v35 = *(v28 + 96);
  sub_22C36D264();
  sub_22C59C6A0();
  swift_willThrow();
  v36 = *(v33 + 8);
  v37 = sub_22C36BBCC();
  v36(v37);
  sub_22C36D0A8(v34, 1, v35);
  if (!v38)
  {
    v39 = sub_22C58A7A0();
    v36(v39);
  }

  v40 = *(v28 + 456);
  sub_22C38A030();
  v41 = *(v28 + 444);
  v43 = sub_22C373570(v42);
  v36(v43);
  sub_22C36DD28(v29 + v40, &qword_27D9BB7A0, &qword_22C9110D0);
  v44 = sub_22C58A794();
  v36(v44);
  v45 = sub_22C58A974();
  v36(v45);
  v46 = sub_22C58A788();
  v36(v46);
  v59 = *(v28 + 424);
  sub_22C58A8FC();
  v47 = *(v28 + 328);
  v49 = *(v28 + 304);
  v48 = *(v28 + 312);
  sub_22C58A58C();

  sub_22C369A24();
  sub_22C58A680();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v59, a25, a26, a27, a28);
}

uint64_t sub_22C5834F8()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_22C90363C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277D1EC10], v10);
  v15 = sub_22C90362C();
  (*(v11 + 8))(v14, v10);
  v16 = *(v1 + qword_27D9BDFC0);
  sub_22C586B68();
  v18 = v17;
  if (v15 & 1) != 0 && (v17)
  {
    sub_22C903F7C();
    v19 = sub_22C9063CC();
    v20 = sub_22C90AABC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22C366000, v19, v20, "Requesting imminent prewarm", v21, 2u);
      MEMORY[0x2318B9880](v21, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v22 = v1[10];
    v23 = v1[11];
    sub_22C374168(v1 + 7, v22);
    return (*(v23 + 24))(v22, v23);
  }

  else
  {
    sub_22C903F7C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AABC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109376;
      *(v27 + 4) = v15 & 1;
      *(v27 + 8) = 1024;
      *(v27 + 10) = v18 & 1;
      _os_log_impl(&dword_22C366000, v25, v26, "Not requesting imminent prewarm. FeatureFlag enabled: %{BOOL}d. Trial enabled: %{BOOL}d", v27, 0xEu);
      MEMORY[0x2318B9880](v27, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_22C583840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = *v4;
  v5[24] = *v4;
  v7 = sub_22C90883C();
  v5[25] = v7;
  v8 = *(v7 - 8);
  v5[26] = v8;
  v9 = *(v8 + 64) + 15;
  v5[27] = swift_task_alloc();
  v10 = *(*(sub_22C901E8C() - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v11 = sub_22C90885C();
  v5[29] = v11;
  v12 = *(v11 - 8);
  v5[30] = v12;
  v13 = *(v12 + 64) + 15;
  v5[31] = swift_task_alloc();
  v14 = *(*(sub_22C902D3C() - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v15 = sub_22C90888C();
  v5[33] = v15;
  v16 = *(v15 - 8);
  v5[34] = v16;
  v17 = *(v16 + 64) + 15;
  v5[35] = swift_task_alloc();
  v18 = sub_22C9064BC();
  v5[36] = v18;
  v19 = *(v18 - 8);
  v5[37] = v19;
  v20 = *(v19 + 64) + 15;
  v5[38] = swift_task_alloc();
  v21 = sub_22C90637C();
  v5[39] = v21;
  v22 = *(v21 - 8);
  v5[40] = v22;
  v23 = *(v22 + 64) + 15;
  v5[41] = swift_task_alloc();
  v24 = sub_22C90634C();
  v5[42] = v24;
  v25 = *(v24 - 8);
  v5[43] = v25;
  v26 = *(v25 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v27 = sub_22C90636C();
  v5[47] = v27;
  v28 = *(v27 - 8);
  v5[48] = v28;
  v29 = *(v28 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v30 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v31 = sub_22C9063DC();
  v5[53] = v31;
  v32 = *(v31 - 8);
  v5[54] = v32;
  v33 = *(v32 + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v34 = sub_22C90363C();
  v5[59] = v34;
  v35 = *(v34 - 8);
  v5[60] = v35;
  v36 = *(v35 + 64) + 15;
  v5[61] = swift_task_alloc();
  v37 = sub_22C90649C();
  v5[62] = v37;
  v38 = *(v37 - 8);
  v5[63] = v38;
  v39 = *(v38 + 64) + 15;
  v5[64] = swift_task_alloc();
  v40 = sub_22C90880C();
  v5[65] = v40;
  v41 = *(v40 - 8);
  v5[66] = v41;
  v42 = *(v41 + 64) + 15;
  v5[67] = swift_task_alloc();
  v5[68] = *(v6 + 80);
  v43 = type metadata accessor for PlannerPromptGeneratorOutput();
  v5[69] = v43;
  v44 = *(v43 - 8);
  v5[70] = v44;
  v45 = *(v44 + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C583E44, 0, 0);
}

uint64_t sub_22C583E44()
{
  sub_22C36D5EC();
  v1 = v0[23];
  v2 = v1[5];
  v3 = v1[6];
  sub_22C374168(v1 + 2, v2);
  v4 = *(v3 + 16);
  sub_22C36CCA8();
  v14 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[74] = v8;
  *v8 = v9;
  v8[1] = sub_22C583F68;
  v10 = v0[73];
  v11 = v0[20];
  v12 = v0[21];

  return v14(v10, v11, v12, v2, v3);
}

uint64_t sub_22C583F68()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 600) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C584064()
{
  sub_22C375EC8();
  v1 = v0[73];
  if (v0[22])
  {
    v2 = v0[73];
    (*(*(v0[24] + 88) + 8))(v0[68]);
    v0[76] = v3;
    v4 = sub_22C37BE48(&unk_22C91CCF0);
    v0[77] = v4;
    *v4 = v0;
    v4[1] = sub_22C5847B8;
    v5 = sub_22C37170C();

    return v180(v5);
  }

  else
  {
    v173 = v0[70];
    v181 = v0[68];
    v7 = v0[67];
    v8 = v0[66];
    v9 = v0[65];
    v10 = v0[64];
    v156 = v0[62];
    v161 = v0[63];
    v11 = v0[60];
    v165 = v0[59];
    v169 = v0[61];
    v12 = v0[24];
    v13 = v0[20];
    sub_22C90878C();
    sub_22C3A8E40();
    v15 = v14;
    v17 = v16;
    v0[78] = v14;
    v0[79] = v16;
    v18 = *(v8 + 8);
    v19 = sub_22C36BAFC();
    v20(v19);
    v175 = v15;
    if (v17)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v151 = v21;
    v22 = sub_22C900F8C();
    v0[80] = v22;
    v23 = *(v12 + 88);
    v0[81] = v23;
    v24 = *(v23 + 8);
    v0[82] = v24;
    sub_22C36D3C0(v23 + 8);
    v25 = v181;
    v182 = v23;
    v179 = v24;
    v24(v25, v23);
    sub_22C90648C();
    sub_22C58A704();
    sub_22C58A238(v26, v1);
    sub_22C58A71C(&qword_27D9BE000);
    sub_22C900F7C();

    v27 = (*(v161 + 8))(v10, v156);
    v34 = sub_22C3869FC(v27, *MEMORY[0x277D1EC40], v28, v29, v30, v31, v32, v33, v146, v151, v156, v161, v165, v169);
    v35(v34);
    sub_22C90362C();
    v36 = sub_22C38B438();
    v37(v36);
    sub_22C375CD8();
    if (v22)
    {
      v38 = v0[72];
      v39 = v0[58];
      sub_22C903F7C();
      v40 = sub_22C376780();
      v41(v40);
      v42 = sub_22C9063CC();
      v43 = sub_22C90AABC();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v0[72];
      v46 = v0[70];
      v47 = v0[69];
      if (v44)
      {
        v48 = v0[68];
        v166 = v0[54];
        v170 = v0[53];
        v173 = v0[58];
        LODWORD(v162) = v43;
        v49 = sub_22C36FB44();
        v50 = sub_22C370060();
        v184 = v50;
        *v49 = 136315138;
        v51 = v179(v48, v182);
        v53 = v52;
        v54 = *(v46 + 8);
        v55 = sub_22C37170C();
        v54(v55);
        sub_22C36F9F4(v51, v53, &v184);
        sub_22C36A024();

        *(v49 + 4) = v45;
        _os_log_impl(&dword_22C366000, v42, v162, "Full Planner Prompt:\n%s", v49, 0xCu);
        sub_22C36FF94(v50);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v166 + 8))(v173, v170);
      }

      else
      {
        v73 = v0[58];
        v74 = v0[53];
        v75 = v0[54];

        v76 = *(v46 + 8);
        v77 = sub_22C37170C();
        v76(v77);
        (*(v75 + 8))(v73, v74);
      }
    }

    else
    {
      v56 = v0[71];
      v57 = v0[57];
      sub_22C903F7C();
      v58 = sub_22C376780();
      v59(v58);
      v60 = sub_22C9063CC();
      v42 = sub_22C90AABC();
      v61 = os_log_type_enabled(v60, v42);
      v62 = v0[71];
      v63 = v0[70];
      v64 = v0[69];
      v65 = v0[53];
      v66 = v0[54];
      if (v61)
      {
        v173 = v0[57];
        v67 = sub_22C36FB44();
        v170 = v65;
        v68 = sub_22C370060();
        v184 = v68;
        *v67 = 136380675;
        v69 = (v62 + *(v64 + 28));
        v162 = *v69;
        LODWORD(v166) = v42;
        v42 = v69[1];
        v70 = *(v63 + 8);

        v71 = sub_22C36CC9C();
        v70(v71);
        v72 = sub_22C36F9F4(v162, v42, &v184);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_22C366000, v60, v166, "Full Planner Prompt:\n%{private}s", v67, 0xCu);
        sub_22C36FF94(v68);
        sub_22C372FB0();
        sub_22C3699EC();

        (*(v66 + 8))(v173, v170);
      }

      else
      {

        v78 = *(v66 + 8);
        v79 = sub_22C36BAFC();
        v78(v79);
        v80 = *(v63 + 8);
        v81 = sub_22C36CC9C();
        v80(v81);
      }
    }

    sub_22C58A8C0();
    sub_22C36A748();
    sub_22C36C640(v82, v83, v84, v85);
    v86 = swift_allocObject();
    sub_22C58A90C(v86, v87, v88, v89, v90, v91, v92, v93, v147, v152, v157, v162, v166, v170, v173, v175, v177);
    sub_22C58A6D0();

    sub_22C90364C();
    sub_22C90364C();
    sub_22C90635C();
    sub_22C90631C();
    v94 = sub_22C58A808();
    v95(v94);
    v96 = sub_22C90635C();
    sub_22C90AB6C();
    if (sub_22C3806D0())
    {
      v97 = v0[46];
      v98 = sub_22C36D240();
      v99 = sub_22C58AAD8(v98);
      sub_22C3721A8(&dword_22C366000, v100, v101, v99, "FullPlannerModelInterface.completion", "");
      sub_22C36D69C();
    }

    sub_22C58A69C();
    v103 = v0[42];
    v102 = v0[43];
    sub_22C58AA0C();

    v104 = *(v102 + 16);
    v105 = sub_22C37170C();
    v106(v105);
    v107 = sub_22C9063AC();
    sub_22C3856A0(v107);
    v0[92] = sub_22C36D704();
    v0[93] = *(v102 + 8);
    v108 = sub_22C3814D0();
    v109(v108);
    v176(v148, v42);
    sub_22C90878C();
    sub_22C3A909C();
    v112 = sub_22C58A8A4(v110, v111);
    v114 = v113(v112);
    v122 = sub_22C58A95C(v114, v115, v116, v117, v118, v119, v120, v121, v148, v153, v158);
    v124 = v123(v122);
    v126 = sub_22C58AA78(v124, v125);
    v134 = sub_22C58A934(v126, v127, v128, v129, v130, v131, v132, v133, v149, v154, v159, v163, v167, v171);
    sub_22C58A660(v134);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    sub_22C58A7AC();
    v135 = *(MEMORY[0x277D1DF90] + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[98] = v136;
    *v136 = v137;
    sub_22C383144(v136, v138, v139, v140, v141, v142, v143, v144, v150, v155, v160, v164, v168, v172, v174, v176, v178);
    sub_22C3744A8();
    sub_22C377448();

    return MEMORY[0x282177648]();
  }
}

uint64_t sub_22C5847B8()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 616);
  v3 = *(v1 + 608);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C5848B8()
{
  sub_22C375EC8();
  v171 = v0[73];
  v170 = v0[68];
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[64];
  v159 = v0[61];
  v163 = v0[70];
  v6 = v0[60];
  v151 = v0[62];
  v155 = v0[59];
  v7 = v0[24];
  v8 = v0[20];
  sub_22C90878C();
  sub_22C3A8E40();
  v10 = v9;
  v12 = v11;
  v0[78] = v9;
  v0[79] = v11;
  v13 = *(v2 + 8);
  v14 = sub_22C36BAFC();
  v15(v14);
  v165 = v10;
  if (v12)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v146 = v16;
  v17 = sub_22C900F8C();
  v0[80] = v17;
  v18 = *(v7 + 88);
  v0[81] = v18;
  v19 = *(v18 + 8);
  v0[82] = v19;
  sub_22C36D3C0(v18 + 8);
  v20 = v171;
  v172 = v18;
  v169 = v19;
  v19(v170, v18);
  sub_22C90648C();
  sub_22C58A704();
  sub_22C58A238(v21, v20);
  sub_22C58A71C(&qword_27D9BE000);
  sub_22C900F7C();

  v22 = (*(v4 + 8))(v5, v151);
  v29 = sub_22C3869FC(v22, *MEMORY[0x277D1EC40], v23, v24, v25, v26, v27, v28, v136, v141, v146, v151, v155, v159);
  v30(v29);
  sub_22C90362C();
  v31 = sub_22C38B438();
  v32(v31);
  sub_22C375CD8();
  if (v17)
  {
    v33 = v0[72];
    v34 = v0[58];
    sub_22C903F7C();
    v35 = sub_22C376780();
    v36(v35);
    v37 = sub_22C9063CC();
    v38 = sub_22C90AABC();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[72];
    v41 = v0[70];
    v42 = v0[69];
    if (v39)
    {
      LODWORD(v152) = v38;
      v43 = v0[68];
      v156 = v0[54];
      v160 = v0[53];
      v163 = v0[58];
      v44 = sub_22C36FB44();
      v45 = sub_22C370060();
      v173 = v45;
      *v44 = 136315138;
      v46 = v169(v43, v172);
      v48 = v47;
      v49 = *(v41 + 8);
      v50 = sub_22C36BBCC();
      v49(v50);
      sub_22C36F9F4(v46, v48, &v173);
      sub_22C36A024();

      *(v44 + 4) = v40;
      _os_log_impl(&dword_22C366000, v37, v152, "Full Planner Prompt:\n%s", v44, 0xCu);
      sub_22C36FF94(v45);
      sub_22C36D69C();
      sub_22C3699EC();

      (*(v156 + 8))(v163, v160);
    }

    else
    {
      v46 = v0[58];
      v66 = v0[53];
      v67 = v0[54];

      v68 = *(v41 + 8);
      v69 = sub_22C36BBCC();
      v68(v69);
      v70 = *(v67 + 8);
      v71 = sub_22C36D264();
      v70(v71);
    }
  }

  else
  {
    v51 = v0[71];
    v52 = v0[57];
    sub_22C903F7C();
    v53 = sub_22C376780();
    v54(v53);
    v55 = sub_22C9063CC();
    v56 = sub_22C90AABC();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[71];
    v59 = v0[70];
    v60 = v0[69];
    v46 = v0[57];
    v37 = v0[53];
    v61 = v0[54];
    if (v57)
    {
      v62 = sub_22C36FB44();
      v163 = v46;
      v46 = sub_22C370060();
      v173 = v46;
      *v62 = 136380675;
      v63 = (v58 + *(v60 + 28));
      v152 = *v63;
      v160 = v37;
      v37 = v63[1];
      LODWORD(v156) = v56;
      v64 = *(v59 + 8);

      v64(v58, v60);
      v65 = sub_22C36F9F4(v152, v37, &v173);

      *(v62 + 4) = v65;
      _os_log_impl(&dword_22C366000, v55, v56, "Full Planner Prompt:\n%{private}s", v62, 0xCu);
      sub_22C36FF94(v46);
      sub_22C372FB0();
      sub_22C3699EC();

      (*(v61 + 8))(v163, v160);
    }

    else
    {

      (*(v61 + 8))(v46, v37);
      (*(v59 + 8))(v58, v60);
    }
  }

  sub_22C58A8C0();
  sub_22C36A748();
  sub_22C36C640(v72, v73, v74, v75);
  v76 = swift_allocObject();
  sub_22C58A90C(v76, v77, v78, v79, v80, v81, v82, v83, v137, v142, v147, v152, v156, v160, v163, v165, v167);
  sub_22C58A6D0();

  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v84 = sub_22C58A808();
  v85(v84);
  v86 = sub_22C90635C();
  v87 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v88 = v0[46];
    v89 = sub_22C36D240();
    sub_22C36C890(v89);
    v90 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v86, v87, v90, "FullPlannerModelInterface.completion", "", v46, 2u);
    sub_22C372FB0();
  }

  sub_22C58A69C();
  v92 = v0[42];
  v91 = v0[43];
  sub_22C58AA0C();

  v93 = *(v91 + 16);
  v94 = sub_22C37170C();
  v95(v94);
  v96 = sub_22C9063AC();
  sub_22C3856A0(v96);
  v0[92] = sub_22C36D704();
  v0[93] = *(v91 + 8);
  v97 = sub_22C3814D0();
  v98(v97);
  v166(v138, v37);
  sub_22C90878C();
  sub_22C3A909C();
  v101 = sub_22C58A8A4(v99, v100);
  v103 = v102(v101);
  v111 = sub_22C58A95C(v103, v104, v105, v106, v107, v108, v109, v110, v138, v143, v148);
  v113 = v112(v111);
  v115 = sub_22C58AA78(v113, v114);
  v123 = sub_22C58A934(v115, v116, v117, v118, v119, v120, v121, v122, v139, v144, v149, v153, v157, v161);
  sub_22C58A660(v123);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C58A7AC();
  v124 = *(MEMORY[0x277D1DF90] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[98] = v125;
  *v125 = v126;
  sub_22C383144(v125, v127, v128, v129, v130, v131, v132, v133, v140, v145, v150, v154, v158, v162, v164, v166, v168);
  sub_22C3744A8();
  sub_22C377448();

  return MEMORY[0x282177648]();
}

uint64_t sub_22C584F7C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 784);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  sub_22C36DD28((v3 + 9), &qword_27D9BE008, &qword_22C91CCE8);
  if (v0)
  {
    v9 = v3[95];
    v10 = v3[79];
  }

  else
  {
    v11 = v3[97];
    v12 = v3[96];
    v13 = v3[95];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C5850C8()
{
  v67 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  *(v0 + 792) = v5;
  v64 = v4;
  *(v0 + 800) = v4;
  sub_22C90364C();
  v6 = sub_22C90635C();
  sub_22C90638C();
  v7 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v8 = *(v0 + 736);
    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    v11 = *(v0 + 312);

    sub_22C9063BC();

    v12 = *(v9 + 88);
    v13 = sub_22C36FC2C();
    if (v14(v13) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
      v15 = "";
    }

    v16 = *(v0 + 352);
    v17 = sub_22C36D240();
    *v17 = 0;
    v18 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v18, "FullPlannerModelInterface.completion", v15, v17, 2u);
    sub_22C3699EC();
  }

  v65 = v5;
  v19 = *(v0 + 752);
  v20 = *(v0 + 744);
  v21 = *(v0 + 728);
  v22 = v6;
  v23 = *(v0 + 720);
  v24 = *(v0 + 448);
  v25 = *(v0 + 392);
  v26 = *(v0 + 376);
  v27 = *(v0 + 352);
  v28 = *(v0 + 336);

  v20(v27, v28);
  v29 = sub_22C36CA88();
  v23(v29);
  sub_22C903F7C();

  v30 = sub_22C9063CC();
  v31 = sub_22C90AABC();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 704);
  v34 = *(v0 + 448);
  v36 = *(v0 + 424);
  v35 = *(v0 + 432);
  if (v32)
  {
    v62 = *(v0 + 704);
    v37 = sub_22C36FB44();
    v38 = sub_22C370060();
    v66 = v38;
    *v37 = 136380675;
    *(v37 + 4) = sub_22C36F9F4(v65, v64, &v66);
    _os_log_impl(&dword_22C366000, v30, v31, "Raw model response follows on next line:\n%{private}s", v37, 0xCu);
    sub_22C36FF94(v38);
    sub_22C3699EC();
    sub_22C3699EC();

    v39 = sub_22C36ECB4();
    v62(v39);
  }

  else
  {

    v40 = sub_22C36ECB4();
    v33(v40);
  }

  v41 = *(v0 + 640);
  v42 = *(v0 + 632);
  v43 = *(v0 + 624);
  v61 = *(v0 + 552);
  v63 = *(v0 + 584);
  v44 = *(v0 + 296);
  v45 = *(v0 + 304);
  v46 = *(v0 + 288);
  v47 = *(v0 + 184);

  sub_22C90648C();
  v48 = MEMORY[0x277D1D958];
  sub_22C58A238(&qword_27D9BE010, MEMORY[0x277D1D958]);
  sub_22C58A238(&qword_27D9BE018, v48);
  sub_22C900F7C();

  v49 = *(v44 + 8);
  v50 = sub_22C36ECB4();
  v51(v50);
  sub_22C374168((v47 + 96), *(v47 + 120));
  v52 = v63 + *(v61 + 32);
  v53 = *(v52 + 48);
  v55 = *(v52 + 16);
  v54 = *(v52 + 32);
  *(v0 + 16) = *v52;
  *(v0 + 32) = v55;
  *(v0 + 48) = v54;
  *(v0 + 64) = v53;
  v56 = *(v63 + *(v61 + 36));
  v57 = swift_task_alloc();
  *(v0 + 808) = v57;
  *v57 = v0;
  v57[1] = sub_22C5854F4;
  v58 = *(v0 + 160);
  v59 = *(v0 + 168);

  return sub_22C4211E0();
}

uint64_t sub_22C5854F4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 808);
  *v3 = *v1;
  v2[102] = v6;
  v2[103] = v7;
  v2[104] = v8;
  v2[105] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C585604()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  (*(v0 + 672))(*(v0 + 488), *(v0 + 848), *(v0 + 472));
  v4 = sub_22C90362C();
  v5 = sub_22C36BBCC();
  v2(v5);
  v6 = *(v0 + 832);
  v62 = *(v0 + 736);
  if (v4)
  {
    v57 = *(v0 + 800);
    v59 = *(v0 + 816);
    v7 = *(v0 + 664);
    v8 = *(v0 + 656);
    v9 = *(v0 + 648);
    v10 = *(v0 + 584);
    v11 = *(v0 + 544);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v51 = *(v0 + 264);
    v53 = *(v0 + 152);
    v55 = *(v0 + 792);

    v8(v11, v9);
    (*(v12 + 104))(v13, *MEMORY[0x277D1E6B8], v51);
    sub_22C9088AC();
  }

  else
  {
    v15 = *(v0 + 824);
    v60 = *(v0 + 816);
    v16 = *(v0 + 800);
    v17 = *(v0 + 584);
    v18 = *(v0 + 552);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v23 = *(v0 + 152);

    v24 = (v17 + *(v18 + 28));
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v19 + 104);
    v8 = (v19 + 104);
    v27(v20, *MEMORY[0x277D1E6B8], v21);

    sub_22C9088AC();
    sub_22C36CC9C();
  }

  sub_22C90889C();

  sub_22C388CD4();
  v38 = *(v0 + 488);
  v39 = *(v0 + 464);
  v40 = *(v0 + 456);
  v41 = *(v0 + 448);
  v42 = *(v0 + 440);
  v43 = *(v0 + 416);
  v44 = *(v0 + 408);
  v45 = *(v0 + 400);
  v46 = *(v0 + 392);
  v47 = *(v0 + 368);
  v48 = *(v0 + 360);
  v49 = *(v0 + 352);
  v50 = *(v0 + 328);
  v52 = *(v0 + 304);
  v54 = *(v0 + 280);
  v56 = *(v0 + 256);
  v58 = *(v0 + 248);
  v61 = *(v0 + 224);
  v63 = *(v0 + 216);
  v28 = *(v0 + 152);
  v29 = *MEMORY[0x277D1E6F8];
  v30 = sub_22C9089DC();
  sub_22C36985C(v30);
  (*(v31 + 104))(v28, v29, v30);
  sub_22C36BECC();
  sub_22C36C640(v32, v33, v34, v30);
  v35 = sub_22C36FC2C();
  (v8)(v35);

  sub_22C369C50();

  return v36();
}

uint64_t sub_22C585988()
{
  v2 = *(v0 + 840);
  v3 = *(v0 + 440);
  sub_22C903F7C();
  v4 = v2;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 840);
    sub_22C36FB44();
    v8 = sub_22C382768();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_22C36D2F4(v10);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C36D69C();
  }

  v11 = *(v0 + 704);
  v73 = *(v0 + 688);
  v76 = *(v0 + 696);
  v12 = v5;
  v13 = *(v0 + 680);
  v14 = *(v0 + 672);
  v15 = *(v0 + 848);
  v16 = *(v0 + 488);
  v17 = *(v0 + 472);
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  v20 = *(v0 + 424);

  v21 = sub_22C36CA88();
  v11(v21);
  v14(v16, v15, v17);
  LOBYTE(v13) = sub_22C90362C();
  v22 = sub_22C36D264();
  v73(v22);
  if (v13)
  {
    v23 = *(v0 + 664);
    v24 = *(v0 + 584);
    (*(v0 + 656))(*(v0 + 544), *(v0 + 648));
    v69 = *(v0 + 800);
    v25 = *(v0 + 792);
  }

  else
  {
    v26 = *(v0 + 800);
    v27 = (*(v0 + 584) + *(*(v0 + 552) + 28));
    v74 = v27[1];
    v77 = *v27;
  }

  v28 = *(v0 + 840);
  v29 = *(v0 + 736);
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v32 = *(v0 + 224);
  v33 = *(v0 + 232);
  v35 = *(v0 + 208);
  v34 = *(v0 + 216);
  v36 = *(v0 + 200);
  v71 = *(v0 + 152);
  v37 = v28;
  sub_22C901E9C();
  sub_22C90884C();

  v38 = *(v30 + 32);
  v39 = sub_22C380528();
  v40(v39);
  (*(v35 + 104))(v34, *MEMORY[0x277D1E6A0], v36);
  (*(v35 + 32))(v71, v34, v36);
  v41 = *MEMORY[0x277D1E640];
  v42 = sub_22C90881C();
  sub_22C36985C(v42);
  (*(v43 + 104))(v71, v41);
  sub_22C388CD4();
  v54 = *(v0 + 488);
  v55 = *(v0 + 464);
  v56 = *(v0 + 456);
  v57 = *(v0 + 448);
  v58 = *(v0 + 440);
  v59 = *(v0 + 416);
  v60 = *(v0 + 408);
  v61 = *(v0 + 400);
  v62 = *(v0 + 392);
  v63 = *(v0 + 368);
  v64 = *(v0 + 360);
  v65 = *(v0 + 352);
  v66 = *(v0 + 328);
  v67 = *(v0 + 304);
  v68 = *(v0 + 280);
  v70 = *(v0 + 256);
  v72 = *(v0 + 248);
  v75 = *(v0 + 224);
  v78 = *(v0 + 216);
  v44 = *(v0 + 152);
  v45 = *MEMORY[0x277D1E770];
  v46 = sub_22C9089DC();
  sub_22C36985C(v46);
  (*(v47 + 104))(v44, v45, v46);
  sub_22C36BECC();
  sub_22C36C640(v48, v49, v50, v46);
  v51 = sub_22C36FC2C();
  (v41)(v51);

  sub_22C369C50();

  return v52();
}

void sub_22C585E18()
{
  sub_22C375EC8();
  v3 = *(v0 + 600);
  sub_22C372300();

  sub_22C369A24();
  sub_22C377448();

  __asm { BRAA            X1, X16 }
}

void sub_22C585F44()
{
  sub_22C375EC8();
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[92];
  v4 = v0[89];
  v5 = v0[73];
  v6 = v0[70];
  v7 = v0[69];

  v11 = v0[18];

  v8 = sub_22C36D264();
  v4(v8);
  sub_22C372300();

  sub_22C369A24();
  sub_22C377448();

  __asm { BRAA            X1, X16 }
}

void sub_22C5860B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22C587924(0);
  v26 = sub_22C369914(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C374CE8();
  v31 = sub_22C37170C();
  sub_22C588FBC(v31, v32);
  v33 = sub_22C9073DC();
  sub_22C36D0A8(v30, 1, v33);
  if (v34)
  {
    sub_22C90068C();
  }

  else
  {
    sub_22C588FBC(v30, v24);
  }

  v35 = sub_22C587C84(0);
  v36 = v35[5];
  v37 = v35[6];
  v38 = v35[7];
  v39 = v35[8];
  v40 = v35[9];
  v41 = sub_22C90069C();
  sub_22C36985C(v41);
  v43 = *(v42 + 8);
  v43(v20 + v36, v41);
  sub_22C36DD28(v20 + v37, &qword_27D9BB7A0, &qword_22C9110D0);
  v43(v20 + v38, v41);
  v43(v20 + v39, v41);
  v43(v20 + v40, v41);
  sub_22C36CC48();
}

uint64_t sub_22C586218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = a5;
  return MEMORY[0x2822009F8](sub_22C586238, 0, 0);
}

uint64_t sub_22C586238()
{
  v2 = type metadata accessor for PreLaunchExecutor();
  swift_allocObject();
  v3 = sub_22C369A48();
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(v3);
  v5 = sub_22C3856A0(DecorationSignposter);

  sub_22C90B0FC();
  *(v1 + 152) = v5;
  *(v1 + 176) = DecorationSignposter;
  *(v1 + 184) = &off_283FC1370;
  *(v1 + 216) = v2;
  *(v1 + 224) = &off_283FC01E0;
  *(v1 + 192) = v0;
  type metadata accessor for AppPreLaunchHandler();
  inited = swift_initStackObject();
  *(v1 + 248) = inited;
  v7 = *(v1 + 216);
  v8 = sub_22C36CA88();
  v10 = sub_22C36D1E4(v8, v9);
  v11 = *(v7 - 8);
  v12 = *(v11 + 64);
  v13 = sub_22C3699D4();
  (*(v11 + 16))(v13, v10, v7);
  v14 = *v13;
  *(inited + 80) = v2;
  *(inited + 88) = &off_283FC01E0;
  *(inited + 48) = 0;
  *(inited + 56) = v14;
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  sub_22C36C730((v1 + 152), inited + 96);
  sub_22C36FF94((v1 + 192));

  v15 = swift_task_alloc();
  *(v1 + 256) = v15;
  *v15 = v1;
  v15[1] = sub_22C586428;
  v17 = *(v1 + 232);
  v16 = *(v1 + 240);

  return sub_22C7AED14();
}

uint64_t sub_22C586428()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  swift_setDeallocating();
  sub_22C7B1080();
  swift_deallocClassInstance();
  sub_22C369A24();

  return v6();
}

uint64_t sub_22C586534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = sub_22C90000C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5865F8, 0, 0);
}

uint64_t sub_22C5865F8()
{
  sub_22C36D5EC();
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  sub_22C374168(v1 + 7, v2);
  v4 = *(v3 + 32);
  sub_22C36CCA8();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_22C58671C;
  v10 = v0[5];
  v9 = v0[6];

  return v12(v10, v9, v2, v3);
}

uint64_t sub_22C58671C()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C369A30();
  *v8 = v7;
  v10 = *(v9 + 80);
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;

  if (v0)
  {
    v13 = v7[9];

    sub_22C58A8EC();

    return v14();
  }

  else
  {
    v7[11] = v3;
    v7[12] = v5;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_22C586860()
{
  sub_22C36D5EC();
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v0[2] = v0[12];
  v0[3] = v1;
  sub_22C8FFFDC();
  sub_22C3858B4();
  v5 = sub_22C90AD3C();
  v7 = v6;
  v8 = *(v3 + 8);
  v9 = sub_22C36D264();
  v10(v9);

  v11 = v0[1];

  return v11(v5, v7);
}

uint64_t sub_22C586934(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v6 = *a2;
  v7 = a2[1];
  v5[4] = v7;
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_22C586A38;

  return v11(v6, v7);
}

uint64_t sub_22C586A38()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C369A30();
  *v8 = v7;
  v10 = *(v9 + 40);
  v11 = *(v9 + 32);
  v12 = *v1;
  sub_22C369970();
  *v13 = v12;

  if (v0)
  {
    **(v7 + 24) = v0;
  }

  else
  {
    v15 = *(v7 + 16);
    *v15 = v5;
    v15[1] = v3;
  }

  sub_22C58A8EC();

  return v14();
}

void sub_22C586B68()
{
  sub_22C36BA7C();
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v53 = v10;
  v54 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C36993C();
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369824(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  sub_22C381AB0();
  v22 = v3 & 1;
  LOBYTE(v56) = v3 & 1;
  sub_22C901E6C();
  swift_bridgeObjectRetain_n();
  sub_22C3806B8();
  sub_22C901F0C();
  sub_22C901F1C();
  v23 = *(v18 + 8);
  v24 = sub_22C37170C();
  v25(v24);
  v26 = v56;
  if (v56 == 2)
  {
    if ((v3 & 0x100) != 0)
    {
      v38 = sub_22C5886C0(v52, v7, v5, v3 & 1);

      sub_22C90400C();

      v39 = sub_22C9063CC();
      v40 = sub_22C90AACC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = sub_22C370060();
        v56 = swift_slowAlloc();
        *v41 = 136315650;
        v42 = sub_22C3806B8();
        *(v41 + 4) = sub_22C36F9F4(v42, v43, v44);
        *(v41 + 12) = 2080;
        v55 = v38 & 1;
        v45 = sub_22C90A1AC();
        v47 = sub_22C36F9F4(v45, v46, &v56);

        *(v41 + 14) = v47;
        *(v41 + 22) = 2080;
        v55 = v22;
        v48 = sub_22C90A1AC();
        v50 = sub_22C36F9F4(v48, v49, &v56);

        *(v41 + 24) = v50;
        _os_log_impl(&dword_22C366000, v39, v40, "QueryDecorationFactor %s was returned as %s. Default is %s", v41, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v53 + 8))(v0, v54);
    }

    else
    {
    }
  }

  else
  {

    sub_22C90400C();

    v27 = sub_22C9063CC();
    v28 = sub_22C90AACC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_22C3806B8();
      *(v29 + 4) = sub_22C36F9F4(v30, v31, v32);
      *(v29 + 12) = 2080;
      v55 = v26 & 1;
      v33 = sub_22C90A1AC();
      v35 = sub_22C36F9F4(v33, v34, &v56);

      *(v29 + 14) = v35;
      sub_22C58AAB8(&dword_22C366000, v36, v37, "QueryDecorationFactor %s was set via UserDefaults to %s");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v53 + 8))(v15, v54);
  }

  sub_22C36CC48();
}

float sub_22C586FCC(uint64_t a1, unint64_t a2, char a3, void *a4, float a5)
{
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v44 = v13;
  v45 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = sub_22C3A5908(&qword_27D9BE040, &qword_22C91CD30);
  sub_22C369824(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  sub_22C381AB0();
  *&v47 = a5;
  sub_22C901E6C();
  swift_bridgeObjectRetain_n();
  sub_22C901F0C();
  sub_22C901F1C();
  (*(v23 + 8))(v5, v21);
  if ((v47 & 0x100000000) != 0)
  {
    if (a3)
    {
      v27 = sub_22C588ACC(a4, a1, a2, a5);

      sub_22C90400C();

      v28 = sub_22C9063CC();
      v29 = sub_22C90AACC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = sub_22C370060();
        v47 = swift_slowAlloc();
        *v30 = 136315650;
        *(v30 + 4) = sub_22C36F9F4(a1, a2, &v47);
        *(v30 + 12) = 2080;
        v46 = v27;
        v31 = sub_22C90A1AC();
        v33 = sub_22C36F9F4(v31, v32, &v47);

        *(v30 + 14) = v33;
        *(v30 + 22) = 2080;
        v46 = a5;
        v34 = sub_22C90A1AC();
        v36 = sub_22C36F9F4(v34, v35, &v47);

        *(v30 + 24) = v36;
        _os_log_impl(&dword_22C366000, v28, v29, "QueryDecorationFactor %s was returned as %s. Default is %s", v30, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C36BAE0();
      }

      (*(v44 + 8))(v18, v45);
      return v27;
    }

    else
    {
    }
  }

  else
  {
    a5 = *&v47;

    sub_22C90400C();

    v37 = sub_22C9063CC();
    v38 = sub_22C90AACC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_22C36F9F4(a1, a2, &v47);
      *(v39 + 12) = 2080;
      v46 = a5;
      v40 = sub_22C90A1AC();
      v42 = sub_22C36F9F4(v40, v41, &v47);

      *(v39 + 14) = v42;
      _os_log_impl(&dword_22C366000, v37, v38, "QueryDecorationFactor %s was set via UserDefaults to %s", v39, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372FB0();
    }

    (*(v44 + 8))(v20, v45);
  }

  return a5;
}

uint64_t *sub_22C587470()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);
  v1 = qword_281435588;
  v2 = sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_27D9BDFC0);

  sub_22C36FF94((v0 + qword_27D9BDFC8));
  return v0;
}

uint64_t sub_22C58750C()
{
  sub_22C587470();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C587580(uint64_t a1, int *a2)
{
  v4 = sub_22C9073DC();
  if (!sub_22C370B74(a1, 1, v4))
  {
    v5 = sub_22C90069C();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = a2[5];
  v7 = sub_22C90069C();
  v12 = *(*(v7 - 8) + 8);
  v12(a1 + v6, v7);
  v8 = a2[6];
  v9 = sub_22C90451C();
  if (!sub_22C370B74(a1 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(a1 + v8, v9);
  }

  v12(a1 + a2[7], v7);
  v12(a1 + a2[8], v7);
  v10 = a1 + a2[9];

  return (v12)(v10, v7);
}

char *sub_22C587708(char *a1, char *a2, int *a3)
{
  v6 = sub_22C9073DC();
  if (sub_22C370B74(a2, 1, v6))
  {
    v7 = sub_22C587924(0);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_22C90069C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    sub_22C36C640(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = sub_22C90069C();
  v11 = *(*(v10 - 8) + 32);
  v11(&a1[v9], &a2[v9], v10);
  v12 = a3[6];
  v13 = sub_22C90451C();
  if (sub_22C370B74(&a2[v12], 1, v13))
  {
    v14 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
    memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
    sub_22C36C640(&a1[v12], 0, 1, v13);
  }

  v11(&a1[a3[7]], &a2[a3[7]], v10);
  v11(&a1[a3[8]], &a2[a3[8]], v10);
  v11(&a1[a3[9]], &a2[a3[9]], v10);
  return a1;
}

char *sub_22C587944(char *a1, char *a2, int *a3)
{
  v6 = sub_22C9073DC();
  v7 = sub_22C370B74(a1, 1, v6);
  v8 = sub_22C370B74(a2, 1, v6);
  if (v7)
  {
    if (!v8)
    {
      v9 = sub_22C90069C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      sub_22C36C640(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v8)
  {
    sub_22C589E50(a1, MEMORY[0x277D1DFC0]);
LABEL_6:
    v10 = sub_22C587924(0);
    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_7;
  }

  v21 = sub_22C90069C();
  (*(*(v21 - 8) + 40))(a1, a2, v21);
LABEL_7:
  v11 = a3[5];
  v12 = sub_22C90069C();
  v13 = *(*(v12 - 8) + 40);
  v13(&a1[v11], &a2[v11], v12);
  v14 = a3[6];
  v15 = sub_22C90451C();
  v16 = sub_22C370B74(&a1[v14], 1, v15);
  v17 = sub_22C370B74(&a2[v14], 1, v15);
  if (!v16)
  {
    v18 = *(v15 - 8);
    if (!v17)
    {
      (*(v18 + 40))(&a1[v14], &a2[v14], v15);
      goto LABEL_13;
    }

    (*(v18 + 8))(&a1[v14], v15);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v19 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
    memcpy(&a1[v14], &a2[v14], *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
  sub_22C36C640(&a1[v14], 0, 1, v15);
LABEL_13:
  v13(&a1[a3[7]], &a2[a3[7]], v12);
  v13(&a1[a3[8]], &a2[a3[8]], v12);
  v13(&a1[a3[9]], &a2[a3[9]], v12);
  return a1;
}

void sub_22C587CA4()
{
  v0 = sub_22C587924(319);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    v2 = sub_22C90069C();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_22C587DAC();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_22C587DAC()
{
  if (!qword_27D9BDFE0)
  {
    sub_22C90451C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDFE0);
    }
  }
}

uint64_t sub_22C587E04(uint64_t a1)
{
  v2 = sub_22C9073DC();
  result = sub_22C370B74(a1, 1, v2);
  if (!result)
  {
    v4 = sub_22C90069C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_22C587E90(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_22C9073DC();
  if (sub_22C370B74(a2, 1, v6))
  {
    v7 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = sub_22C90069C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    sub_22C36C640(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_22C587F70(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_22C9073DC();
  v7 = sub_22C370B74(a1, 1, v6);
  v8 = sub_22C370B74(a2, 1, v6);
  if (v7)
  {
    if (!v8)
    {
      v9 = sub_22C90069C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      sub_22C36C640(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      v12 = sub_22C90069C();
      (*(*(v12 - 8) + 40))(a1, a2, v12);
      return a1;
    }

    sub_22C589E50(a1, MEMORY[0x277D1DFC0]);
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_22C5880FC(uint64_t a1)
{
  v2 = sub_22C9073DC();

  return sub_22C370B74(a1, 1, v2);
}

uint64_t sub_22C588140(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9073DC();

  return sub_22C36C640(a1, a2, 1, v4);
}

uint64_t sub_22C58818C()
{
  result = sub_22C9073DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_22C588204()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return sub_22C580ED4();
}

id sub_22C5882C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  swift_beginAccess();
  v16 = sub_22C633A20(a2, a3, a1[9]);
  swift_endAccess();
  if (v16)
  {
    v17 = v16;
    v18 = Int.init(level:)(v17);
    if (v19)
    {
      sub_22C9040BC();

      v20 = sub_22C9063CC();
      v21 = sub_22C90AADC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v40 = a4;
        v23 = v22;
        v39 = swift_slowAlloc();
        v42[0] = v39;
        *v23 = 136315650;
        v24 = sub_22C36F9F4(a2, a3, v42);

        *(v23 + 4) = v24;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_22C36F9F4(a1[2], a1[3], v42);
        *(v23 + 22) = 2080;
        v41 = MEMORY[0x277D83B88];
        sub_22C3A5908(&qword_27D9BE038, &qword_22C91CD28);
        v25 = sub_22C90A1AC();
        v27 = sub_22C36F9F4(v25, v26, v42);

        *(v23 + 24) = v27;
        _os_log_impl(&dword_22C366000, v20, v21, "Trial factor '%s' in namespace '%s' not convertable to type '%s'", v23, 0x20u);
        v28 = v39;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v28, -1, -1);
        v29 = v23;
        a4 = v40;
        MEMORY[0x2318B9880](v29, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v13, v8);
    }

    else
    {
      v37 = v18;

      return v37;
    }
  }

  else
  {
    sub_22C9040BC();

    v30 = sub_22C9063CC();
    v31 = sub_22C90AADC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = a4;
      v34 = v33;
      v42[0] = v33;
      *v32 = 136315394;
      v35 = sub_22C36F9F4(a2, a3, v42);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_22C36F9F4(a1[2], a1[3], v42);
      _os_log_impl(&dword_22C366000, v30, v31, "Trial factor '%s' not found in namespace '%s'", v32, 0x16u);
      swift_arrayDestroy();
      v36 = v34;
      a4 = v40;
      MEMORY[0x2318B9880](v36, -1, -1);
      MEMORY[0x2318B9880](v32, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v15, v8);
  }

  return a4;
}

uint64_t sub_22C5886C0(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  swift_beginAccess();
  v16 = sub_22C633A20(a2, a3, a1[9]);
  swift_endAccess();
  if (v16)
  {
    if ([v16 levelOneOfCase] == 10)
    {
      LOBYTE(v4) = [v16 BOOLeanValue];
    }

    else
    {
      sub_22C9040BC();

      v23 = sub_22C9063CC();
      v24 = sub_22C90AADC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v34 = v4;
        v4 = v25;
        v33 = swift_slowAlloc();
        v36[0] = v33;
        *v4 = 136315650;
        v26 = sub_22C36F9F4(a2, a3, v36);

        *(v4 + 4) = v26;
        *(v4 + 12) = 2080;
        *(v4 + 14) = sub_22C36F9F4(a1[2], a1[3], v36);
        *(v4 + 22) = 2080;
        v35 = MEMORY[0x277D839B0];
        sub_22C3A5908(&qword_27D9BE028, &qword_22C91CD18);
        v27 = sub_22C90A1AC();
        v29 = sub_22C36F9F4(v27, v28, v36);

        *(v4 + 24) = v29;
        _os_log_impl(&dword_22C366000, v23, v24, "Trial factor '%s' in namespace '%s' not convertable to type '%s'", v4, 0x20u);
        v30 = v33;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v30, -1, -1);
        v31 = v4;
        LOBYTE(v4) = v34;
        MEMORY[0x2318B9880](v31, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v13, v8);
    }
  }

  else
  {
    sub_22C9040BC();

    v17 = sub_22C9063CC();
    v18 = sub_22C90AADC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v4;
      v4 = v20;
      v36[0] = v20;
      *v19 = 136315394;
      v21 = sub_22C36F9F4(a2, a3, v36);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_22C36F9F4(a1[2], a1[3], v36);
      _os_log_impl(&dword_22C366000, v17, v18, "Trial factor '%s' not found in namespace '%s'", v19, 0x16u);
      swift_arrayDestroy();
      v22 = v4;
      LOBYTE(v4) = v34;
      MEMORY[0x2318B9880](v22, -1, -1);
      MEMORY[0x2318B9880](v19, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v15, v8);
  }

  return v4 & 1;
}

float sub_22C588ACC(void *a1, uint64_t a2, unint64_t a3, float a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  swift_beginAccess();
  v16 = sub_22C633A20(a2, a3, a1[9]);
  swift_endAccess();
  if (v16)
  {
    v17 = v16;
    v18 = Float.init(level:)(v17);
    if ((v18 & 0x100000000) != 0)
    {
      sub_22C9040BC();

      v25 = sub_22C9063CC();
      v26 = sub_22C90AADC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37[0] = v35;
        *v27 = 136315650;
        v28 = sub_22C36F9F4(a2, a3, v37);

        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_22C36F9F4(a1[2], a1[3], v37);
        *(v27 + 22) = 2080;
        v36 = MEMORY[0x277D83A90];
        sub_22C3A5908(&qword_27D9BE048, &unk_22C91CD38);
        v29 = sub_22C90A1AC();
        v31 = sub_22C36F9F4(v29, v30, v37);

        *(v27 + 24) = v31;
        _os_log_impl(&dword_22C366000, v25, v26, "Trial factor '%s' in namespace '%s' not convertable to type '%s'", v27, 0x20u);
        v32 = v35;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v32, -1, -1);
        MEMORY[0x2318B9880](v27, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v13, v8);
    }

    else
    {
      v19 = *&v18;

      return v19;
    }
  }

  else
  {
    sub_22C9040BC();

    v20 = sub_22C9063CC();
    v21 = sub_22C90AADC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315394;
      v24 = sub_22C36F9F4(a2, a3, v37);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_22C36F9F4(a1[2], a1[3], v37);
      _os_log_impl(&dword_22C366000, v20, v21, "Trial factor '%s' not found in namespace '%s'", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v23, -1, -1);
      MEMORY[0x2318B9880](v22, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v15, v8);
  }

  return a4;
}

uint64_t sub_22C588ED8()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C369C50();

  return v5();
}

uint64_t sub_22C588FBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C589014@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C3C0B2C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_22C589044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v6 = sub_22C90637C();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_22C90634C();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = sub_22C90636C();
  v3[16] = v12;
  v13 = *(v12 - 8);
  v3[17] = v13;
  v14 = *(v13 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[5] = &type metadata for EndPromptGenerationCheckpoint;
  v3[6] = &off_283FB2EB0;
  v3[2] = a1;
  v3[3] = a2;

  return MEMORY[0x2822009F8](sub_22C589220, 0, 0);
}

uint64_t sub_22C58939C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C58949C()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[13];
  sub_22C90364C();
  v4 = sub_22C90635C();
  sub_22C90638C();
  v5 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v6 = v0[23];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];

    sub_22C9063BC();

    v10 = *(v7 + 88);
    v11 = sub_22C36ECB4();
    if (v12(v11) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
      v13 = "";
    }

    v14 = v0[13];
    v15 = sub_22C36D240();
    *v15 = 0;
    v16 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v16, "MediatorControlChannel.publish(checkpoint:)", v13, v15, 2u);
    sub_22C36BAE0();
  }

  v18 = v0[24];
  v17 = v0[25];
  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];
  v22 = v0[18];
  v30 = v0[20];
  v31 = v0[19];
  v23 = v0[16];
  v24 = v0[13];
  v32 = v0[15];
  v33 = v0[14];
  v25 = v0[11];
  v34 = v0[10];

  v26 = sub_22C36CC9C();
  v18(v26);
  v27 = sub_22C36ECB4();
  v21(v27);
  sub_22C36FF94(v0 + 2);

  sub_22C369A24();

  return v28();
}

uint64_t sub_22C589688(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_22C90637C();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_22C90634C();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_22C90636C();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[5] = type metadata accessor for StartCheckpoint(0);
  v2[6] = &off_283FB2EC0;
  v13 = sub_22C36D548(v2 + 2);
  sub_22C589EB0(a1, v13);

  return MEMORY[0x2822009F8](sub_22C589870, 0, 0);
}

uint64_t sub_22C5899EC()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C589AEC(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_22C90637C();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_22C90634C();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_22C90636C();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[5] = type metadata accessor for EndCheckpoint(0);
  v2[6] = &off_283FB2EB8;
  v13 = sub_22C36D548(v2 + 2);
  sub_22C589EB0(a1, v13);

  return MEMORY[0x2822009F8](sub_22C589CD4, 0, 0);
}

uint64_t sub_22C589E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C589EB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C589F08()
{
  sub_22C36D5EC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C382AF4;

  return sub_22C586218(v2, v3, v4, v6, v5);
}

uint64_t sub_22C589FBC()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22C58A078;

  return sub_22C586534(v5, v3, v6, v7, v8);
}

uint64_t sub_22C58A078()
{
  sub_22C36FB38();
  v2 = v1;
  v4 = v3;
  sub_22C369A3C();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_22C369970();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_22C58A174()
{
  sub_22C36D5EC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  v10 = sub_22C36D860(v9);
  *v10 = v11;
  v10[1] = sub_22C46BC08;

  return sub_22C586934(v6, v4, v8, v7, v2);
}

uint64_t sub_22C58A238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C58A280(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22C58A374;

  return v6(v2 + 16);
}

uint64_t sub_22C58A374()
{
  sub_22C36FB38();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_22C58A498@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C588EBC();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22C58A4C8()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C58A560()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[27];
  result = v0[25];
  v9 = v0[23];
  v10 = v0[14];
  v11 = v0[8];
  v12 = *(v0[24] + 32);
  return result;
}

uint64_t sub_22C58A58C()
{
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[35];
  v7 = v0[34];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[29];
  v11 = v0[28];
  v12 = v0[27];
  v13 = v0[26];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  *(v1 - 96) = v0[13];
}

uint64_t sub_22C58A5E4()
{
  v2 = v0[46];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[39];
  v7 = v0[34];
  v8 = v0[32];
  v12 = v0[31];
  v13 = v0[37];
  v14 = v0[14];
  v9 = v0[12];
  v10 = v0[8];
  result = v0[47];
  *(v1 - 96) = *(v3 + 32);
  *(v1 - 88) = v3 + 32;
  return result;
}

uint64_t sub_22C58A62C(uint64_t a1)
{
  *(a1 + 8) = sub_22C582708;
  v2 = v1[42];
  result = v1[28];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[8];
  return result;
}

uint64_t sub_22C58A660(uint64_t result)
{
  *(v2 + 776) = result;
  *(result + 16) = &unk_22C91CCC8;
  *(result + 24) = v1;
  return result;
}

void sub_22C58A69C()
{
  v7 = v0[68];
  v8 = v0[73];
  v1 = v0[67];
  v2 = v0[51];
  v6 = v0[65];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[45];
}

void sub_22C58A6D0()
{

  sub_22C5809B8();
}

uint64_t sub_22C58A71C(unint64_t *a1)
{

  return sub_22C58A238(a1, v1);
}

uint64_t sub_22C58A744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 208) = result;
  *(result + 16) = a11;
  *(result + 24) = a10;
  return result;
}

uint64_t sub_22C58A7AC()
{

  return MEMORY[0x282177650](v1, v1, v0, v2, v3, v2, v3, v4);
}

uint64_t sub_22C58A808()
{
  *(v1 + 720) = *(v2 + 8);
  *(v1 + 728) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_22C58A82C()
{
  *(v0 + 400) = *(v2 + 8);
  *(v0 + 408) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t sub_22C58A84C()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];

  return sub_22C90364C();
}

uint64_t sub_22C58A888()
{
  v4 = *(v1 + 20);
  *(v0 + 452) = v4;
  result = v2 + v4;
  v7 = *(v3 - 96);
  v6 = *(v3 - 88);
  return result;
}

uint64_t sub_22C58A8C0()
{
  v1[89] = v2;
  v1[88] = v0;
  v5 = v1[51];
  v4 = v1[52];
  v6 = v1[50];
  v8 = v1[47];
  v7 = v1[48];
  v9 = v1[46];

  return sub_22C90A75C();
}

uint64_t sub_22C58A8EC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C58A8FC()
{
  v2 = v0[47];
  result = v0[48];
  v3 = v0[46];
  v4 = v0[42];
  v5 = v0[43];
  return result;
}

uint64_t sub_22C58A90C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a16;
  a1[5] = a17;
}

uint64_t sub_22C58A934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 768) = a1;
  a1[2] = a13;
  a1[3] = v14;
  a1[4] = a14;

  return swift_task_alloc();
}

uint64_t sub_22C58A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = a11;
  v13 = *(v11 - 88);
  return result;
}

uint64_t sub_22C58A980()
{

  return sub_22C3A5950(v0);
}

uint64_t sub_22C58A998(uint64_t a1)
{
  sub_22C36C640(v3, v4, 1, a1);
  *(v1 + 440) = *(v2 + 28);

  return sub_22C90068C();
}

uint64_t sub_22C58A9EC()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 96);
  return *(v1 - 88);
}

void sub_22C58AA0C()
{
  v2 = v0[23];
  v1 = v0[20];
  v3 = v0[21];
}

void sub_22C58AA38()
{
  v3 = v1[30];
  v4 = v1[26];
  v6 = v1[22];
  v5 = v1[23];
  v7 = v1[18];
  v8 = v1[19];
}

uint64_t sub_22C58AA58(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_22C901E8C();
}

uint64_t sub_22C58AA78(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return swift_task_alloc();
}

uint64_t sub_22C58AA98()
{

  return sub_22C4E719C(v1, v0, v2, v3);
}

void sub_22C58AAB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C58AAD8(_WORD *a1)
{
  *a1 = 0;

  return sub_22C90632C();
}

void sub_22C58AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_22C5860B4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_22C58AB08()
{
}

uint64_t FullPlannerError.errorCode.getter()
{
  v1 = type metadata accessor for FullPlannerError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C58ACB4(v0, v4);
  v5 = sub_22C901E8C();
  v6 = sub_22C370B74(v4, 15, v5);
  result = 0;
  switch(v6)
  {
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 12:
      result = 11;
      break;
    case 13:
      result = 12;
      break;
    case 14:
      result = 13;
      break;
    case 15:
      result = 15;
      break;
    default:
      sub_22C58AD18(v4);
      result = 14;
      break;
  }

  return result;
}

uint64_t type metadata accessor for FullPlannerError()
{
  result = qword_27D9BE050;
  if (!qword_27D9BE050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C58ACB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C58AD18(uint64_t a1)
{
  v2 = type metadata accessor for FullPlannerError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C58AD74(uint64_t a1)
{
  v2 = sub_22C58AEFC(&qword_27D9BE060);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C58ADCC(uint64_t a1)
{
  v2 = sub_22C58AEFC(&qword_27D9BE060);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C58AEA4()
{
  v0 = sub_22C901E8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22C58AEFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FullPlannerError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C58AF88(uint64_t a1)
{
  v2 = sub_22C57D74C(a1);
  v4 = v3;
  v6 = v5;
  result = sub_22C823680(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_8;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v2 == result)
  {
    return 0;
  }

  else
  {
    return sub_22C3AFBA4(v2, v4, 0, a1);
  }
}

void *sub_22C58B038@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result[2])
  {
    v4 = result[4];
    v3 = result[5];
    v5 = result[6];
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  return result;
}

uint64_t sub_22C58B0F8(uint64_t a1)
{
  v2 = sub_22C57D74C(a1);
  v4 = v3;
  v6 = v5;
  result = sub_22C823680(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_11;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 == result)
  {
    v10 = 1;
  }

  else
  {
    v11 = sub_22C38A03C();
    sub_22C3AFC20(v11, v12, v13, v14);
    v10 = 0;
  }

  sub_22C90952C();
  v15 = sub_22C598F54();

  return sub_22C36C640(v15, v10, 1, v16);
}

unint64_t sub_22C58B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C36985C(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  result = sub_22C6339F8(a1);
  if (v12)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v13 = sub_22C37B6A4();

    return sub_22C36C640(v13, v14, v15, v16);
  }

  else
  {
    v17 = *(v4 + 48);
    sub_22C6332FC(v9, &v9[v17], result, v11, 0, a1);
    v18 = sub_22C902C9C();
    sub_22C36985C(v18);
    (*(v19 + 32))(a2, v9);
    v20 = *(v4 + 48);
    v21 = sub_22C902D0C();
    sub_22C36985C(v21);
    (*(v22 + 32))(a2 + v20, &v9[v17]);
    v23 = sub_22C37049C();
    return sub_22C36C640(v23, v24, v25, v4);
  }
}

uint64_t sub_22C58B3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C5C9CB0();
  if (!result)
  {
    sub_22C908A0C();
    v8 = sub_22C598F54();
    v9 = 1;
    v10 = 1;
    goto LABEL_7;
  }

  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= *(a1 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = sub_22C908A0C();
  sub_22C36985C(v6);
  (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
  v8 = sub_22C37049C();
  v11 = v6;
LABEL_7:

  return sub_22C36C640(v8, v9, v10, v11);
}

uint64_t sub_22C58B498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  v9 = sub_22C3A5908(a2, a3);
  if (v8)
  {
    v10 = *(*(v9 - 8) + 80);
    sub_22C36BA94();
    sub_22C4E719C(a1 + v11, a4, a2, a3);
  }

  v12 = sub_22C382D24();

  return sub_22C36C640(v12, v13, v14, v15);
}

uint64_t sub_22C58B61C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = a2();
  v9 = v8;
  v11 = v10;
  result = a3(a1);
  if (v11 & 1) != 0 || (v14)
  {
    goto LABEL_8;
  }

  if (v9 != v13)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v7 == result)
  {
    return 0;
  }

  v15 = sub_22C38A03C();
  return a4(v15);
}

uint64_t sub_22C58B6D4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    v7 = *(*(v6 - 8) + 80);
    sub_22C36BA94();
    sub_22C597DD8(a1 + v8, a3);
  }

  v9 = sub_22C382D24();

  return sub_22C36C640(v9, v10, v11, v12);
}

unint64_t sub_22C58B7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BE230, &unk_22C928C50);
  sub_22C36985C(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  result = sub_22C6339F8(a1);
  if (v11)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v12 = sub_22C37B6A4();

    return sub_22C36C640(v12, v13, v14, v15);
  }

  else
  {
    v16 = v2 + *(v5 + 48);
    sub_22C6336E0(v2, v16, result, v10, 0, a1);
    sub_22C598048(v2, a2);
    v17 = a2 + *(v5 + 48);
    v18 = *(v16 + 16);
    *v17 = *v16;
    *(v17 + 16) = v18;
    *(v17 + 32) = *(v16 + 32);
    v19 = sub_22C37049C();
    return sub_22C36C640(v19, v20, v21, v5);
  }
}

uint64_t sub_22C58B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C4AAD90(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_22C598E0C(result, v5, a1, a2);
    v7 = 0;
  }

  type metadata accessor for CacheKeyHashableRepresentation(0);
  v8 = sub_22C598F54();

  return sub_22C36C640(v8, v7, 1, v9);
}

unint64_t sub_22C58B9B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  sub_22C36985C(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  result = sub_22C6339F8(a1);
  if (v11)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v12 = sub_22C37B6A4();

    return sub_22C36C640(v12, v13, v14, v15);
  }

  else
  {
    v16 = *(v5 + 48);
    sub_22C63323C(v2 + v16, result, v10, 0, a1);
    *a2 = v17;
    *(a2 + 1) = v18;
    v19 = *(v5 + 48);
    v20 = sub_22C9093BC();
    sub_22C36985C(v20);
    (*(v21 + 32))(&a2[v19], v2 + v16);
    v22 = sub_22C37049C();
    return sub_22C36C640(v22, v23, v24, v5);
  }
}

uint64_t sub_22C58BB54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = sub_22C382D24();

  return sub_22C36C640(v7, v8, v9, v10);
}

void FullPlannerService.setup(sessionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v134 = v21;
  v129 = v20;
  v133 = v24;
  v25 = sub_22C9063DC();
  v26 = sub_22C369824(v25);
  v135 = v27;
  v136 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  sub_22C36D234(v122 - v33);
  v34 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  sub_22C36D234(v38);
  v39 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v39);
  v41 = *(v40 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  sub_22C36D5B4();
  sub_22C36D234(v43);
  v44 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
  sub_22C369914(v44);
  v46 = *(v45 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  sub_22C36D5B4();
  sub_22C36D234(v48);
  v128 = sub_22C90077C();
  v49 = sub_22C369824(v128);
  v127 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C369838();
  sub_22C36D234(v54 - v53);
  v55 = sub_22C9021DC();
  v56 = sub_22C369824(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  v63 = v62 - v61;
  v64 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v65 = sub_22C36985C(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  v70 = v69 - v68;
  v131 = sub_22C9068CC();
  v71 = sub_22C369824(v131);
  v130 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22C369838();
  v77 = v76 - v75;
  v78 = type metadata accessor for FullPlannerPreferences();
  v79 = v78 - 8;
  v80 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  sub_22C369838();
  v83 = v82 - v81;
  FullPlannerPreferences.init()(v82 - v81);
  v84 = *(v79 + 28);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v137 = v83;
  sub_22C901EDC();
  if (LOBYTE(v138[0]) != 1)
  {
    sub_22C903F7C();
    v88 = sub_22C9063CC();
    v89 = sub_22C90AADC();
    if (os_log_type_enabled(v88, v89))
    {
      sub_22C3720F4();
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_22C366000, v88, v89, "FullPlannerPreferences asset is missing! Full Planner cannot proceed. Failing setup.", v90, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v135 + 8))(v32, v136);
    type metadata accessor for FullPlannerError();
    sub_22C380538();
    sub_22C597FAC(v91, 255, v92);
    swift_allocError();
    sub_22C901E8C();
    v93 = sub_22C598F54();
    sub_22C36C640(v93, 14, 15, v94);
    swift_willThrow();
    goto LABEL_7;
  }

  v85 = v134;
  sub_22C90877C();
  if (v85)
  {
LABEL_7:
    sub_22C36D8AC();
    sub_22C58FF40(v137, v95);
    goto LABEL_8;
  }

  sub_22C9068BC();
  sub_22C9021CC();
  (*(v58 + 8))(v63, v55);
  v86 = v129;
  v87 = *(v129 + 64);
  v96 = ToolboxResources.makeQueryableToolbox(toolkitCache:)(0);
  sub_22C57689C();
  v97 = v86;
  sub_22C58BB54(*(v86 + 112), MEMORY[0x277D1E600], v126);
  v98 = v124;
  sub_22C9068AC();
  v99 = sub_22C90212C();
  v100 = sub_22C370B74(v98, 1, v99);
  v122[1] = v77;
  if (v100 == 1)
  {
    sub_22C36DD28(v98, &qword_27D9BE068, &qword_22C91CE40);
    v134 = 0;
    v101 = 0;
  }

  else
  {
    v134 = sub_22C90211C();
    v101 = v102;
    (*(*(v99 - 8) + 8))(v98, v99);
  }

  v103 = v64[9];
  v104 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C36C640(v70 + v103, 1, 1, v104);
  v105 = v137;
  sub_22C597DD8(v137, v70 + v64[10]);
  (*(v127 + 32))(v70, v132, v128);
  *(v70 + v64[5]) = v96;
  sub_22C4E7208(v125, v70 + v64[6], &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4E7208(v126, v70 + v64[7], &qword_27D9BB728, &qword_22C911230);
  v106 = (v70 + v64[8]);
  *v106 = v134;
  v106[1] = v101;
  sub_22C4DE060(6u, v70, v141);
  sub_22C38620C();
  v107 = v142;
  v108 = v143;
  sub_22C36D1E4(v141, v142);
  (*(v108 + 80))(v138, v107, v108);
  if (v139)
  {
    a10 = *&v138[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_22C36C730(v138, v140);
    os_unfair_lock_lock(v97 + 4);
    sub_22C36DD28(&v97[6], &qword_27D9BE070, &qword_22C91CE48);
    sub_22C378A4C(v140, &v97[6]);
    os_unfair_lock_unlock(v97 + 4);
    v109 = v123;
    sub_22C903F7C();
    v110 = sub_22C9063CC();
    v111 = sub_22C90AABC();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      a10 = v113;
      *v112 = 136315138;
      swift_beginAccess();
      v114 = v142;
      v115 = v143;
      sub_22C374168(v141, v142);
      v116 = (*(v115 + 32))(v114, v115);
      v118 = sub_22C36F9F4(v116, v117, &a10);

      *(v112 + 4) = v118;
      _os_log_impl(&dword_22C366000, v110, v111, "FullPlannerService setup success. Prompt version: %s", v112, 0xCu);
      sub_22C36FF94(v113);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v135 + 8))(v123, v136);
    }

    else
    {

      (*(v135 + 8))(v109, v136);
    }

    sub_22C36FF94(v140);
  }

  v119 = sub_22C37EC3C();
  v120(v119);
  sub_22C36D8AC();
  sub_22C58FF40(v105, v121);
  sub_22C36FF94(v141);
LABEL_8:
  sub_22C36FB20();
}

uint64_t FullPlannerService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_22C9063DC();
  v1[25] = v4;
  sub_22C3699B8(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = sub_22C3699D4();
  v8 = sub_22C908A0C();
  v1[28] = v8;
  sub_22C3699B8(v8);
  v1[29] = v9;
  v11 = *(v10 + 64);
  v1[30] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C3699B8(v12);
  v1[31] = v13;
  v15 = *(v14 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v16 = type metadata accessor for PlannerServiceContext();
  sub_22C3699B8(v16);
  v1[34] = v17;
  v1[35] = *(v18 + 64);
  v1[36] = sub_22C3699D4();
  v19 = sub_22C9087BC();
  v1[37] = v19;
  sub_22C3699B8(v19);
  v1[38] = v20;
  v1[39] = *(v21 + 64);
  v1[40] = sub_22C3699D4();
  v22 = type metadata accessor for FullPlannerResponse(0);
  v1[41] = v22;
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  v1[42] = sub_22C3699D4();
  v25 = type metadata accessor for FullPlannerRequest(0);
  v1[43] = v25;
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v1[44] = sub_22C3699D4();
  v28 = sub_22C90634C();
  v1[45] = v28;
  sub_22C3699B8(v28);
  v1[46] = v29;
  v31 = *(v30 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v32 = sub_22C90636C();
  v1[49] = v32;
  sub_22C3699B8(v32);
  v1[50] = v33;
  v35 = *(v34 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C58C86C, 0, 0);
}

uint64_t sub_22C58C86C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 392);
  v4 = *(v0 + 400);
  v5 = *(v0 + 384);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v63 = *(v4 + 8);
  v63(v2, v3);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = *(v0 + 384);
    sub_22C3720F4();
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "FullPlannerService.handle", "", v9, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v11 = *(v0 + 416);
  v13 = *(v0 + 384);
  v12 = *(v0 + 392);
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v16 = *(v0 + 360);
  v17 = *(v0 + 192);

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 424) = sub_22C90639C();
  (*(v15 + 8))(v13, v16);
  v63(v11, v12);
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  os_unfair_lock_lock(v17 + 4);
  sub_22C36DD28(v0 + 16, &qword_27D9BE070, &qword_22C91CE48);
  sub_22C4E719C(&v17[6], v0 + 16, &qword_27D9BE070, &qword_22C91CE48);
  os_unfair_lock_unlock(v17 + 4);
  sub_22C4E719C(v0 + 16, v0 + 96, &qword_27D9BE070, &qword_22C91CE48);
  if (*(v0 + 120))
  {
    v21 = *(v0 + 352);
    v22 = *(v0 + 320);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 288);
    v55 = *(v0 + 280);
    v57 = *(v0 + 312);
    v54 = *(v0 + 272);
    v26 = *(v0 + 184);
    v59 = *(v0 + 192);
    v27 = *(v0 + 176);
    sub_22C36C730((v0 + 96), v0 + 56);
    type metadata accessor for Mediator();
    v28 = swift_allocObject();
    *(v0 + 432) = v28;
    *(v28 + 16) = MEMORY[0x277D84F90];
    sub_22C90878C();
    sub_22C3A909C();
    v61 = v30;
    v64 = v29;
    *(v0 + 440) = v30;
    sub_22C378A4C(v0 + 56, v0 + 136);
    (*(v23 + 16))(v22, v27, v24);
    sub_22C597DD8(v26, v25);
    v31 = (*(v23 + 80) + 64) & ~*(v23 + 80);
    v32 = (v57 + *(v54 + 80) + v31) & ~*(v54 + 80);
    v33 = swift_allocObject();
    *(v0 + 448) = v33;
    *(v33 + 16) = v28;
    sub_22C36C730((v0 + 136), v33 + 24);
    (*(v23 + 32))(v33 + v31, v22, v24);
    sub_22C598048(v25, v33 + v32);
    *(v33 + ((v55 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    v34 = *(MEMORY[0x277D08428] + 4);

    v35 = swift_task_alloc();
    *(v0 + 456) = v35;
    sub_22C597FAC(&qword_27D9BE078, 255, type metadata accessor for FullPlannerRequest);
    sub_22C597FAC(&qword_27D9BE080, 255, type metadata accessor for FullPlannerRequest);
    sub_22C597FAC(&qword_27D9BE088, 255, type metadata accessor for FullPlannerResponse);
    sub_22C597FAC(&qword_27D9BE090, 255, type metadata accessor for FullPlannerResponse);
    *v35 = v0;
    v35[1] = sub_22C58CF48;
    v37 = *(v0 + 344);
    v36 = *(v0 + 352);
    v38 = *(v0 + 328);
    v39 = *(v0 + 336);

    return MEMORY[0x28215E710](v39, v64, v61, v36, &unk_22C91CE68, v33, v37, v38);
  }

  else
  {
    v40 = *(v0 + 216);
    sub_22C36DD28(v0 + 96, &qword_27D9BE070, &qword_22C91CE48);
    sub_22C903F7C();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AADC();
    if (os_log_type_enabled(v41, v42))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C36BB14(&dword_22C366000, v43, v44, "Could not run full planner; setup() has not been called before handle(_:)");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v46 = *(v0 + 208);
    v45 = *(v0 + 216);
    v47 = *(v0 + 200);

    (*(v46 + 8))(v45, v47);
    type metadata accessor for FullPlannerError();
    sub_22C380538();
    sub_22C597FAC(v48, 255, v49);
    swift_allocError();
    sub_22C901E8C();
    v50 = sub_22C598F54();
    sub_22C36C640(v50, 10, 15, v51);
    swift_willThrow();
    sub_22C36DD28(v0 + 16, &qword_27D9BE070, &qword_22C91CE48);
    sub_22C598F24();
    v56 = *(v0 + 264);
    v58 = *(v0 + 256);
    v60 = *(v0 + 240);
    v62 = *(v0 + 216);
    sub_22C58D4F4();

    sub_22C369A24();

    return v52();
  }
}

uint64_t sub_22C58CF48()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 448);
  v6 = *(v2 + 440);
  if (v0)
  {

    v7 = sub_22C58D3B4;
  }

  else
  {

    v7 = sub_22C58D0AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C58D0AC()
{
  v1 = v0[42];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F800;
  sub_22C4E719C(v1, v8 + v7, &qword_27D9BA808, &qword_22C90C6E0);
  sub_22C4E719C(v8 + v7, v2, &qword_27D9BA808, &qword_22C90C6E0);
  sub_22C4E7208(v2, v3, &qword_27D9BA808, &qword_22C90C6E0);
  v9 = sub_22C370B74(v3, 1, v5);
  v10 = v0[32];
  if (v9 == 1)
  {
    sub_22C36DD28(v0[32], &qword_27D9BA808, &qword_22C90C6E0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(v0[29] + 32);
    v12(v0[30], v0[32], v0[28]);
    v11 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v11 + 16);
      sub_22C590488();
      v11 = v30;
    }

    v13 = *(v11 + 16);
    if (v13 >= *(v11 + 24) >> 1)
    {
      sub_22C590488();
      v11 = v31;
    }

    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    *(v11 + 16) = v13 + 1;
    v12(v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, v14, v16);
  }

  v18 = v0[53];
  v17 = v0[54];
  v19 = v0[51];
  v20 = v0[52];
  v21 = v0[47];
  v22 = v0[48];
  v23 = v0[44];
  v24 = v0[42];
  v32 = v0[40];
  v33 = v0[36];
  v34 = v0[33];
  v35 = v0[32];
  v36 = v0[30];
  v37 = v0[27];

  swift_setDeallocating();
  sub_22C5901B4(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C381AC0();
  sub_22C58FF40(v24, v25);
  sub_22C598EE0();
  sub_22C58FF40(v23, v26);
  sub_22C36FF94(v0 + 7);
  sub_22C36DD28((v0 + 2), &qword_27D9BE070, &qword_22C91CE48);
  sub_22C58D4F4();

  v27 = v0[1];

  return v27(v11);
}

uint64_t sub_22C58D3B4()
{
  v1 = v0[54];
  v2 = v0[44];

  sub_22C598EE0();
  sub_22C58FF40(v2, v3);
  sub_22C36FF94(v0 + 7);
  sub_22C36DD28((v0 + 2), &qword_27D9BE070, &qword_22C91CE48);
  v4 = v0[58];
  sub_22C598F24();
  v7 = v0[33];
  v8 = v0[32];
  v9 = v0[30];
  v10 = v0[27];
  sub_22C58D4F4();

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C58D4F4()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "FullPlannerService.handle", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t FullPlannerRequest.init(transcript:)()
{
  v0 = sub_22C90880C();
  sub_22C36985C(v0);
  v2 = *(v1 + 32);
  v3 = sub_22C36BBCC();

  return v4(v3);
}

uint64_t sub_22C58D840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a1;
  v8 = sub_22C9063DC();
  v7[5] = v8;
  v9 = *(v8 - 8);
  v7[6] = v9;
  v10 = *(v9 + 64) + 15;
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();
  v11 = sub_22C908A0C();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v14 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v7[13] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v16 = *(*(type metadata accessor for Mediator.Outcome(0) - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  v17 = swift_task_alloc();
  v7[19] = v17;
  *v17 = v7;
  v17[1] = sub_22C58DA78;

  return sub_22C3E3984();
}

uint64_t sub_22C58DA78()
{
  sub_22C369980();
  v2 = *(*v1 + 152);
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  *(v5 + 160) = v0;

  if (v0)
  {
    v6 = sub_22C58E104;
  }

  else
  {
    v6 = sub_22C58DB80;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C58DB80()
{
  v98 = v0;
  v1 = v0[17];
  v2 = v0[13];
  sub_22C597DD8(v0[18], v1);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[20];
    v4 = v0[18];
    v5 = v0[15];
    v7 = v0[3];
    v6 = v0[4];
    sub_22C58FF40(v0[17], type metadata accessor for Mediator.Outcome);
    sub_22C58E1D4();
    sub_22C58FF40(v4, type metadata accessor for Mediator.Outcome);
    if (v3)
    {
      v9 = v0[17];
      v8 = v0[18];
      v11 = v0[15];
      v10 = v0[16];
      v12 = v0[14];
      v14 = v0[11];
      v13 = v0[12];
      v16 = v0[7];
      v15 = v0[8];

      sub_22C369A24();
      goto LABEL_15;
    }

    v67 = v0[2];
    sub_22C36C640(v0[15], 0, 1, v0[9]);
    v68 = sub_22C36BBCC();
    sub_22C4E7208(v68, v69, v70, v71);
  }

  else
  {
    v18 = v0[14];
    v19 = v0[9];
    sub_22C4E7208(v0[17], v0[16], &qword_27D9BA808, &qword_22C90C6E0);
    v20 = sub_22C36BBCC();
    sub_22C4E719C(v20, v21, &qword_27D9BA808, &qword_22C90C6E0);
    v22 = sub_22C370B74(v18, 1, v19);
    v23 = v0[14];
    if (v22 == 1)
    {
      v24 = v0[8];
      sub_22C36DD28(v0[14], &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C903F7C();
      v25 = sub_22C9063CC();
      v26 = sub_22C90AADC();
      if (os_log_type_enabled(v25, v26))
      {
        sub_22C3720F4();
        *swift_slowAlloc() = 0;
        sub_22C36BB14(&dword_22C366000, v27, v28, "Could not run full planner. Returning empty response");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v29 = v0[18];
      v30 = v0[16];
      v32 = v0[8];
      v31 = v0[9];
      v33 = v0[5];
      v34 = v0[6];
      v35 = v0[2];

      (*(v34 + 8))(v32, v33);
      sub_22C36DD28(v30, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3707C0();
      sub_22C58FF40(v29, v36);
      sub_22C36C640(v35, 1, 1, v31);
      sub_22C598F9C();
      *(v35 + v37) = xmmword_22C9114A0;
      goto LABEL_14;
    }

    v38 = v0[11];
    v39 = v0[10];
    v40 = v0[7];
    v41 = *(v39 + 32);
    v41(v0[12], v0[14], v0[9]);
    sub_22C903F7C();
    v42 = *(v39 + 16);
    v43 = sub_22C36BA00();
    v44(v43);
    v45 = sub_22C9063CC();
    v94 = sub_22C90AACC();
    v46 = os_log_type_enabled(v45, v94);
    v47 = v0[18];
    v48 = v0[16];
    v50 = v0[10];
    v49 = v0[11];
    v51 = v0[9];
    v52 = v0[6];
    v53 = v0[5];
    v95 = v53;
    v96 = v0[7];
    if (v46)
    {
      v54 = swift_slowAlloc();
      v93 = v41;
      v55 = swift_slowAlloc();
      v97 = v55;
      *v54 = 136315138;
      sub_22C389084();
      sub_22C597FAC(v56, 255, v57);
      v91 = v48;
      v92 = v47;
      v58 = sub_22C90B47C();
      v60 = v59;
      v61 = *(v50 + 8);
      v62 = sub_22C36BBCC();
      v63(v62);
      v64 = sub_22C36F9F4(v58, v60, &v97);

      *(v54 + 4) = v64;
      _os_log_impl(&dword_22C366000, v45, v94, "Response: %s", v54, 0xCu);
      sub_22C36FF94(v55);
      v41 = v93;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v52 + 8))(v96, v95);
      sub_22C36DD28(v91, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3707C0();
      v66 = v92;
    }

    else
    {

      v72 = *(v50 + 8);
      v73 = sub_22C36BBCC();
      v74(v73);
      (*(v52 + 8))(v96, v95);
      sub_22C36DD28(v48, &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3707C0();
      v66 = v47;
    }

    sub_22C58FF40(v66, v65);
    v75 = v0[9];
    v67 = v0[2];
    v41(v67, v0[12], v75);
    v76 = sub_22C37049C();
    sub_22C36C640(v76, v77, v78, v75);
  }

  sub_22C598F9C();
  v80 = (v67 + v79);
  *v80 = 0;
  v80[1] = 0;
LABEL_14:
  v82 = v0[17];
  v81 = v0[18];
  v84 = v0[15];
  v83 = v0[16];
  v85 = v0[14];
  v87 = v0[11];
  v86 = v0[12];
  v89 = v0[7];
  v88 = v0[8];

  sub_22C369A24();
LABEL_15:

  return v17();
}

uint64_t sub_22C58E104()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[7];
  v9 = v0[8];

  sub_22C369A24();

  return v11();
}

uint64_t sub_22C58E1D4()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22C366000, v5, v6, "Hand off not yet supported!", v7, 2u);
    MEMORY[0x2318B9880](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for FullPlannerError();
  sub_22C597FAC(qword_27D9BB910, 255, type metadata accessor for FullPlannerError);
  swift_allocError();
  v9 = v8;
  v10 = sub_22C901E8C();
  sub_22C36C640(v9, 6, 15, v10);
  return swift_willThrow();
}

uint64_t FullPlannerResponse.init(event:status:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  sub_22C4E7208(a1, a3, &qword_27D9BA808, &qword_22C90C6E0);
  result = sub_22C598F9C();
  v8 = (a3 + v7);
  *v8 = v4;
  v8[1] = v5;
  return result;
}

uint64_t FullPlannerService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D920];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_22C58E4C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0B10;

  return FullPlannerService.handle(_:plannerServiceContext:)();
}

uint64_t FullPlannerRequest.transcript.getter()
{
  v0 = sub_22C90880C();
  sub_22C36985C(v0);
  v2 = *(v1 + 16);
  v3 = sub_22C36BA00();

  return v4(v3);
}

uint64_t sub_22C58E5E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C58E684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58E5E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C58E6B0(uint64_t a1)
{
  v2 = sub_22C597FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58E6EC(uint64_t a1)
{
  v2 = sub_22C597FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerRequest.encode(to:)(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BE0A0, &qword_22C91CE78);
  sub_22C369824(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C597FF4();
  sub_22C90B6CC();
  sub_22C90880C();
  sub_22C37B2EC();
  sub_22C597FAC(v11, 255, v12);
  sub_22C90B41C();
  return (*(v4 + 8))(v9, v2);
}

void FullPlannerRequest.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v32 = v3;
  v4 = sub_22C90880C();
  v5 = sub_22C369824(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v34 = v10 - v9;
  v11 = sub_22C3A5908(&qword_27D9BE0B8, &qword_22C91CE80);
  sub_22C369824(v11);
  v33 = v12;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for FullPlannerRequest(0);
  v19 = sub_22C369914(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C597FF4();
  sub_22C90B6BC();
  if (!v0)
  {
    v27 = v31;
    v26 = v32;
    sub_22C37B2EC();
    sub_22C597FAC(v28, 255, v29);
    sub_22C90B32C();
    (*(v33 + 8))(v17, v11);
    (*(v27 + 32))(v24, v34, v4);
    sub_22C598048(v24, v26);
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

uint64_t FullPlannerResponse.status.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_22C598F9C();
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  *a1 = *v4;
  a1[1] = v6;

  return sub_22C5980A0(v5, v6);
}

uint64_t sub_22C58EB70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000022C932640 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72456E776F726874 && a2 == 0xEB00000000726F72)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C58EC8C(char a1)
{
  if (!a1)
  {
    return 0x73736563637573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x72456E776F726874;
}

uint64_t sub_22C58ECF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022C932660 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C58ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58EB70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C58EDBC(uint64_t a1)
{
  v2 = sub_22C5980B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EDF8(uint64_t a1)
{
  v2 = sub_22C5980B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C58EE34(uint64_t a1)
{
  v2 = sub_22C59815C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EE70(uint64_t a1)
{
  v2 = sub_22C59815C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C58EEAC(uint64_t a1)
{
  v2 = sub_22C5981B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EEE8(uint64_t a1)
{
  v2 = sub_22C5981B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C58EF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58ECF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C58EF54(uint64_t a1)
{
  v2 = sub_22C598108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58EF90(uint64_t a1)
{
  v2 = sub_22C598108();

  return MEMORY[0x2821FE720](a1, v2);
}

void FullPlannerResponse.Status.encode(to:)()
{
  sub_22C370030();
  v47 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BE0C8, &qword_22C91CE88);
  v6 = sub_22C369824(v5);
  v45 = v7;
  v46 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C36D5B4();
  v44 = v11;
  v12 = sub_22C3A5908(&qword_27D9BE0D0, &qword_22C91CE90);
  v13 = sub_22C369824(v12);
  v42 = v14;
  v43 = v13;
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D5B4();
  v41 = v18;
  v19 = sub_22C3A5908(&qword_27D9BE0D8, &qword_22C91CE98);
  v20 = sub_22C369824(v19);
  v39 = v21;
  v40 = v20;
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C3717BC();
  v25 = sub_22C3A5908(&qword_27D9BE0E0, &qword_22C91CEA0);
  sub_22C369824(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  v32 = &v38 - v31;
  v33 = v0[1];
  v38 = *v0;
  v34 = v4[4];
  sub_22C374168(v4, v4[3]);
  sub_22C5980B4();
  sub_22C90B6CC();
  if (v33)
  {
    if (v33 != 1)
    {
      sub_22C598108();
      v36 = v44;
      sub_22C598F60();
      v37 = v46;
      sub_22C90B3CC();
      (*(v45 + 8))(v36, v37);
      (*(v27 + 8))(v32, v25);
      goto LABEL_7;
    }

    sub_22C59815C();
    v35 = v41;
    sub_22C598F60();
    (*(v42 + 8))(v35, v43);
  }

  else
  {
    sub_22C5981B0();
    sub_22C598F60();
    (*(v39 + 8))(v2, v40);
  }

  (*(v27 + 8))(v32, v25);
LABEL_7:
  sub_22C36FB20();
}

void FullPlannerResponse.Status.init(from:)()
{
  sub_22C370030();
  v72 = v0;
  v2 = v1;
  v69 = v3;
  v65 = sub_22C3A5908(&qword_27D9BE108, &qword_22C91CEA8);
  sub_22C369824(v65);
  v68 = v4;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v71 = v8;
  v9 = sub_22C3A5908(&qword_27D9BE110, &qword_22C91CEB0);
  v10 = sub_22C369824(v9);
  v66 = v11;
  v67 = v10;
  v13 = *(v12 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_22C3A5908(&qword_27D9BE118, &qword_22C91CEB8);
  sub_22C369824(v17);
  v64 = v18;
  v20 = *(v19 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = sub_22C3A5908(&qword_27D9BE120, &unk_22C91CEC0);
  sub_22C369824(v24);
  v70 = v25;
  v27 = *(v26 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  v31 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C5980B4();
  v32 = v72;
  sub_22C90B6BC();
  if (v32)
  {
    goto LABEL_10;
  }

  v62 = v17;
  v63 = v23;
  v72 = v2;
  v33 = v30;
  v34 = sub_22C90B34C();
  sub_22C3E1F24(v34, 0);
  if (v36 == v37 >> 1)
  {
LABEL_9:
    v48 = sub_22C90AFBC();
    swift_allocError();
    v50 = v49;
    v51 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v50 = &type metadata for FullPlannerResponse.Status;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v33, v24);
    v2 = v72;
LABEL_10:
    sub_22C36FF94(v2);
LABEL_11:
    sub_22C36FB20();
    return;
  }

  v61 = 0;
  if (v36 < (v37 >> 1))
  {
    v38 = v30;
    v39 = *(v35 + v36);
    sub_22C3E1F20(v36 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      if (v39)
      {
        if (v39 != 1)
        {
          sub_22C598108();
          sub_22C38C3A8();
          v53 = v69;
          v46 = sub_22C90B2DC();
          v47 = v56;
          swift_unknownObjectRelease();
          v57 = sub_22C598F7C();
          v58(v57);
          v59 = sub_22C598EF8();
          v60(v59);
LABEL_15:
          *v53 = v46;
          v53[1] = v47;
          sub_22C36FF94(v72);
          goto LABEL_11;
        }

        sub_22C59815C();
        sub_22C38C3A8();
        swift_unknownObjectRelease();
        (*(v66 + 8))(v16, v67);
        v44 = sub_22C598F44();
        v45(v44);
        v46 = 0;
        v47 = 1;
      }

      else
      {
        sub_22C5981B0();
        v52 = v63;
        sub_22C38C3A8();
        swift_unknownObjectRelease();
        (*(v64 + 8))(v52, v62);
        v54 = sub_22C598F44();
        v55(v54);
        v46 = 0;
        v47 = 0;
      }

      v53 = v69;
      goto LABEL_15;
    }

    v33 = v38;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22C58F8AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C58F96C(char a1)
{
  if (a1)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x746E657665;
  }
}

uint64_t sub_22C58F9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C58F8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C58F9FC(uint64_t a1)
{
  v2 = sub_22C598204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C58FA38(uint64_t a1)
{
  v2 = sub_22C598204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerResponse.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_22C3A5908(&qword_27D9BE128, &qword_22C91CED0);
  sub_22C369824(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C3717BC();
  v12 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C598204();
  sub_22C90B6CC();
  sub_22C908A0C();
  sub_22C389084();
  sub_22C597FAC(v13, 255, v14);
  sub_22C90B3AC();
  if (!v2)
  {
    v15 = (v4 + *(type metadata accessor for FullPlannerResponse(0) + 20));
    v17 = *v15;
    v18 = v15[1];
    sub_22C5980A0(*v15, v18);
    sub_22C598258();
    sub_22C90B41C();
    sub_22C5982AC(v17, v18);
  }

  return (*(v8 + 8))(v3, v6);
}

void FullPlannerResponse.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v34 = v3;
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_22C3A5908(&qword_27D9BE148, qword_22C91CED8);
  v11 = sub_22C369824(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for FullPlannerResponse(0);
  v19 = sub_22C36985C(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = v2[4];
  sub_22C374168(v2, v2[3]);
  sub_22C598204();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v2);
  }

  else
  {
    v33 = v18;
    v26 = v24;
    v27 = v35;
    sub_22C908A0C();
    LOBYTE(v37) = 0;
    sub_22C389084();
    sub_22C597FAC(v28, 255, v29);
    v30 = v36;
    sub_22C90B2BC();
    sub_22C4E7208(v9, v26, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C5982C0();
    sub_22C90B32C();
    (*(v27 + 8))(v17, v30);
    v31 = v34;
    *(v26 + *(v33 + 20)) = v37;
    sub_22C597DD8(v26, v31);
    sub_22C36FF94(v2);
    sub_22C381AC0();
    sub_22C58FF40(v26, v32);
  }

  sub_22C36FB20();
}

uint64_t sub_22C58FF40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C58FFC4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C5900D4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_22C3699C8(v2);
  v4 = *(v3 + 80);
  sub_22C36BA94();
  v5 = *(v1 + 16);
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C590158(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_22C3A5908(a1, a2);
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22C5901B4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22C3A5908(a1, a2);
  sub_22C3699C8(v3);
  v5 = *(v4 + 80);
  sub_22C36BA94();
  v6 = *(v2 + 16);
  swift_arrayDestroy();
  sub_22C36A8CC();

  return swift_deallocClassInstance();
}

void sub_22C5902F8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE328, &qword_22C91D8A8);
  sub_22C374410();
  v9 = sub_22C903B1C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6EA0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5903C0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BACF0, &unk_22C90D590);
  sub_22C374410();
  v9 = sub_22C9093BC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6EB8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590488()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAE10, &unk_22C91DB10);
  sub_22C374410();
  v9 = sub_22C908A0C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6ED0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590550()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE3B8, &qword_22C91D968);
  v9 = sub_22C374410();
  v10 = type metadata accessor for DependencyId(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D6EE8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590648()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE3C0, &qword_22C91D970);
  sub_22C374410();
  v9 = sub_22C90098C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6F20(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590710()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE3D0, &unk_22C91D980);
  sub_22C374410();
  v9 = sub_22C900ACC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6F38(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5907D8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE3C8, &qword_22C91D978);
  sub_22C374410();
  v9 = sub_22C900A9C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6F50(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5908A0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE4B0, &unk_22C9237B0);
  sub_22C374410();
  v9 = sub_22C9089DC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6F68(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590968()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAC90, &unk_22C90D530);
  sub_22C374410();
  v9 = sub_22C9037EC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6F80(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590A30()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE320, &qword_22C91D8A0);
  sub_22C374410();
  v9 = sub_22C906ECC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6FE0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590AF8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE318, &qword_22C91D898);
  v9 = sub_22C374410();
  v10 = type metadata accessor for DialogValue(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D6FF8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590BE8()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BE490, &qword_22C91DAF0);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BE498, &qword_22C91DAF8);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C590C9C()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BE4A0, &qword_22C91DB00);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BE4A8, &qword_22C91DB08);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C590D50()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAF68, &qword_22C90D810);
  sub_22C374410();
  v9 = sub_22C90133C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7010(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C590E40()
{
  sub_22C386510();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v8 == v9)
  {
LABEL_7:
    sub_22C3BD99C(v7);
    if (v4)
    {
      sub_22C386714(v10, v11, v12, v13, v14, v15);
      v16 = sub_22C3BD968();
      sub_22C373588(v16);
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_22C3BD9CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = sub_22C598F90();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v8)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C590EF0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BBCF0, &unk_22C91DC20);
  sub_22C374410();
  v9 = sub_22C9074AC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7068(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591078()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAE08, &unk_22C90D6B0);
  sub_22C374410();
  v9 = sub_22C9036EC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7098(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591170()
{
  sub_22C3765A0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v7 == v8)
  {
LABEL_7:
    sub_22C3BD81C(v6);
    if (v3)
    {
      sub_22C3A5908(&qword_27D9BAB20, &qword_22C90D3C0);
      v9 = sub_22C3815EC();
      sub_22C36BF48(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22C388528();
        sub_22C3D8758(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 24 * v2);
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v7)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C59122C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAED0, &unk_22C91DAA0);
  v9 = sub_22C374410();
  v10 = type metadata accessor for PromptTreeIdentifier(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D70C8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591324()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C5913D8()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BE468, &qword_22C91DAB8);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BE470, &qword_22C91DAC0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C59148C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAEF0, &qword_22C91DAB0);
  v9 = sub_22C374410();
  v10 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D710C(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591554()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAE98, &qword_22C90D740);
  v9 = sub_22C374410();
  v10 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D7124(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59161C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAF88, &unk_22C917A10);
  v9 = sub_22C374410();
  v10 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D7180(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5916E4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAC20, &unk_22C90D4C0);
  sub_22C374410();
  v9 = sub_22C9070DC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7198(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5917AC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAC88, &unk_22C91DAD0);
  sub_22C374410();
  v9 = sub_22C9084CC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D71B0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591874()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE478, &qword_22C91DAC8);
  v9 = sub_22C374410();
  v10 = type metadata accessor for DynamicEnumeration.Case(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D71C8(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59193C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAFE0, &qword_22C90D880);
  sub_22C374410();
  v9 = sub_22C9090BC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D71E0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591A04()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C37BAD8(v2, v5, &qword_27D9BB048, &qword_22C91B500);
  v9 = sub_22C37F864();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D71F8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591AD0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAFB0, &qword_22C90D850);
  sub_22C374410();
  v9 = sub_22C90952C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7230(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591B98()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BE4F0, &qword_22C91DB70);
      v8 = sub_22C375840();
      sub_22C36998C(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D874C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BE4F8, &unk_22C91DB78);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C591C4C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BABC0, &unk_22C90D460);
  sub_22C374410();
  v9 = sub_22C908EAC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7248(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591D14()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BB058, qword_22C919D00);
  v9 = sub_22C374410();
  v10 = type metadata accessor for _PromptToolData(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D7260(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591DDC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BB060, &qword_22C90D900);
  sub_22C374410();
  v9 = type metadata accessor for RenderableTool();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7278(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591EA4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE4E8, &qword_22C91DB68);
  sub_22C374410();
  v9 = sub_22C9099FC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7290(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C591F9C()
{
  sub_22C37FE44();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v8 == v9)
  {
LABEL_7:
    sub_22C372074(v7);
    if (v4)
    {
      sub_22C386714(v10, v11, v12, v13, v14, v15);
      v16 = sub_22C3BD968();
      sub_22C370238(v16);
      sub_22C372374();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_22C36FB10();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_22C3797A8();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v8)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C59204C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BACA0, &qword_22C90D540);
  sub_22C374410();
  v9 = sub_22C90822C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6F98(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592114()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAFD8, &qword_22C90D878);
  sub_22C374410();
  v9 = sub_22C909A3C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D72D8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5921DC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAD18, &unk_22C91D990);
  sub_22C374410();
  v9 = sub_22C90430C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D72F0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5922A4()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BAB10, &unk_22C90D3B0);
      v8 = sub_22C3815EC();
      sub_22C36BF48(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D8768(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BAB18, &qword_22C91D700);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C59238C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAC98, &qword_22C91DBD0);
  sub_22C374410();
  v9 = sub_22C9081CC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D6FB0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592484()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAE80, &qword_22C90D728);
  sub_22C374410();
  v9 = sub_22C902D0C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D72A8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5925A4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE2D8, &qword_22C91D850);
  sub_22C374410();
  v9 = sub_22C9088CC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7374(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59266C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAD28, &qword_22C91B1B0);
  sub_22C374410();
  v9 = sub_22C90981C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7168(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592734()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BBBA0, &qword_22C910FA0);
  v9 = sub_22C374410();
  v10 = type metadata accessor for CompletionPromptProperty(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D73A4(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5927FC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAE50, &unk_22C911F80);
  sub_22C374410();
  v9 = sub_22C90827C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D73D4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5928C4()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE460, &qword_22C91DA98);
  sub_22C374410();
  v9 = sub_22C90839C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D73EC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59298C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAC28, &unk_22C911F40);
  sub_22C374410();
  v9 = sub_22C901FAC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D735C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592A54()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C37BAD8(v2, v5, &qword_27D9BB0C8, &qword_22C90D968);
  v9 = sub_22C37F864();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7440(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592B20()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BC3A8, &qword_22C91DBE0);
  v9 = sub_22C374410();
  v10 = type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D7454(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592BE8()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE538, &qword_22C91DBE8);
  sub_22C374410();
  v9 = sub_22C90998C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D746C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592CB0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE518, &unk_22C91DBA0);
  sub_22C374410();
  v9 = sub_22C90993C();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7484(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592D78()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE570, &qword_22C91DC40);
  sub_22C374410();
  DecorationDynamicEnumerationQuery = type metadata accessor for QueryDecorationDynamicEnumerationQuery();
  sub_22C3699C8(DecorationDynamicEnumerationQuery);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D749C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592E40()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE578, &qword_22C91DC48);
  sub_22C374410();
  v9 = sub_22C908ABC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D74B4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592F08()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BAEF8, &unk_22C90D7A0);
  v9 = sub_22C374410();
  v10 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D74E4(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C592FD0()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C37BAD8(v2, v5, &qword_27D9BE548, &qword_22C91DC00);
  v9 = sub_22C37F864();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D74FC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59309C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE550, &qword_22C91DC08);
  v9 = sub_22C374410();
  v10 = type metadata accessor for DynamicEnumeration(v9);
  sub_22C3699C8(v10);
  v12 = *(v11 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v14 = sub_22C386F18(v13);
    sub_22C3D7510(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C593164()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C598F0C(v2, v5, &qword_27D9BE540, &unk_22C91DBF0);
  sub_22C374410();
  v9 = sub_22C9079FC();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7528(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59322C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22C37BAD8(v2, v5, &qword_27D9BE560, &qword_22C91DC30);
  v9 = sub_22C37F864();
  sub_22C3699C8(v9);
  v11 = *(v10 + 80);
  sub_22C36BA94();
  if (v1)
  {
    v13 = sub_22C386F18(v12);
    sub_22C3D7568(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5932F8()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BE4C0, &qword_22C91DB20);
      v8 = sub_22C3815EC();
      sub_22C36BF48(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D876C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BE4C8, &qword_22C91DB28);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C5933B8()
{
  sub_22C3765A0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22C37259C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22C3BD81C(v5);
    if (v2)
    {
      sub_22C3A5908(&qword_27D9BDA50, &qword_22C91A3A8);
      v8 = sub_22C3815EC();
      sub_22C36BF48(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_22C388528();
        sub_22C3D876C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22C3A5908(&qword_27D9BDA48, &qword_22C91A3A0);
    sub_22C388E30();
    goto LABEL_12;
  }

  sub_22C376594();
  if (!v6)
  {
    sub_22C388518();
    goto LABEL_7;
  }

  __break(1u);
}