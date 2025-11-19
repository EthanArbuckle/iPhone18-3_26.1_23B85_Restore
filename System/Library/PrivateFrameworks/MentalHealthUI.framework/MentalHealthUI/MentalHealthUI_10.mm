__n128 sub_258AAE8A8@<Q0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  sub_258A9C690();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AAEA20();
  *v7 = sub_258B024F4();
  v7[1] = v8;
  sub_258AAF9D0();
  sub_258AAEB50(a1, v7 + *(v9 + 44));
  sub_258B024F4();
  sub_258B00C94();
  sub_258AAFA68(v7, a2, sub_258A9C690);
  sub_258AB0190(0, &qword_27F970758, sub_258A9C690);
  v11 = a2 + *(v10 + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

id sub_258AAEA20()
{
  v1 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    v7 = [result isiPad];

    if ((v7 & 1) == 0)
    {
      *(v0 + 48);
    }

    sub_258B008C4();
    v8 = v0 + *(type metadata accessor for ConfirmationView() + 44);
    sub_258AC1B90(v4);
    return sub_258AAFFAC(v4, type metadata accessor for ValenceSelectionPhaseSpecs);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258AAEB50@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = sub_258B02554();
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v3);
  v127 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_258B006A4();
  v124 = *(v126 - 8);
  v6 = *(v124 + 64);
  v7 = MEMORY[0x28223BE20](v126);
  v122 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v121 = v100 - v9;
  sub_258AB01F4(0, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
  v11 = *(v10 - 8);
  v125 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = v100 - v13;
  v110 = sub_258B019F4();
  v14 = *(v110 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v110);
  v106 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = v100 - v18;
  v19 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v104 = v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED63C();
  v111 = v23;
  v109 = *(v23 - 8);
  v24 = *(v109 + 64);
  MEMORY[0x28223BE20](v23);
  v103 = v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9CB88(0);
  v27 = *(v26 - 8);
  v108 = v26 - 8;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v105 = v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB011C(0, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
  v31 = *(v30 - 8);
  v115 = v30 - 8;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v113 = v100 - v33;
  sub_258A9CA58();
  v35 = *(v34 - 8);
  v117 = v34 - 8;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v114 = v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AAF9A8(0);
  v116 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v112 = v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9C968();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v120 = v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v118 = v100 - v45;
  sub_258A9C828();
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v119 = v100 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v102 = v100 - v50;
  v51 = *a1;
  LOBYTE(v132[0]) = 1;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(v132, &v134, v51);
  v101 = v134;
  v52 = v135;
  sub_258B024F4();
  sub_258B00854();
  v54 = *(a1 + 1);
  v53 = *(a1 + 2);
  sub_258B025E4();
  v55 = *(a1 + 3);
  v134 = v101;
  *&v135 = v52;
  *(&v138 + 1) = v53;
  *&v139 = v54;
  *(&v139 + 1) = v54;
  *v140 = v56;
  *&v140[8] = v57;
  *&v140[16] = v55;
  v140[24] = 0;
  v132[4] = v138;
  v132[5] = v139;
  v133[0] = *v140;
  *(v133 + 9) = *&v140[9];
  v132[0] = v101;
  v132[1] = v135;
  v132[2] = v136;
  v132[3] = v137;
  v131 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5848);
  sub_258AAFAD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *&v101 = v58;
  v100[1] = sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5868);
  sub_258AAF980(0);
  sub_258AB000C(&qword_27F970B40, sub_258AAF980, sub_258AAFB20);
  sub_258B01DD4();
  sub_258AAFFAC(&v134, sub_258AAF980);

  v59 = v103;
  sub_258B020E4();
  v60 = type metadata accessor for ConfirmationView();
  v61 = a1 + *(v60 + 44);
  v62 = v104;
  sub_258AC1B90(v104);
  sub_258B01944();
  v63 = v62 + *(v20 + 28);
  v64 = sub_258B00A84();
  v65 = MEMORY[0x277CE0A10];
  if ((v64 & 1) == 0)
  {
    v65 = MEMORY[0x277CE0A18];
  }

  v66 = v106;
  v67 = v110;
  (*(v14 + 104))(v106, *v65, v110);
  v68 = v107;
  (*(v14 + 32))(v107, v66, v67);
  sub_258B01A14();

  (*(v14 + 8))(v68, v67);
  sub_258AAFFAC(v62, type metadata accessor for ValenceSelectionPhaseSpecs);
  v69 = sub_258B01924();

  KeyPath = swift_getKeyPath();
  v71 = v105;
  (*(v109 + 32))(v105, v59, v111);
  v72 = (v71 + *(v108 + 44));
  *v72 = KeyPath;
  v72[1] = v69;
  v73 = sub_258B014B4();
  v74 = a1 + *(v60 + 48);
  v75 = v121;
  sub_258AC14E8(v121);
  v76 = v124;
  v77 = v122;
  v78 = v126;
  (*(v124 + 104))(v122, *MEMORY[0x277CDF3C0], v126);
  LOBYTE(v74) = sub_258B00694();
  v79 = *(v76 + 8);
  v79(v77, v78);
  v79(v75, v78);
  v80 = MEMORY[0x277CE13B8];
  if ((v74 & 1) == 0)
  {
    v80 = MEMORY[0x277CE13B0];
  }

  v82 = v127;
  v81 = v128;
  v83 = v129;
  (*(v128 + 104))(v127, *v80, v129);
  v84 = v123;
  (*(v81 + 32))(&v123[*(v125 + 44)], v82, v83);
  *v84 = v73;
  v85 = v113;
  sub_258AAFB98(v84, &v113[*(v115 + 44)]);
  sub_258AAFA68(v71, v85, sub_258A9CB88);
  v86 = swift_getKeyPath();
  v87 = v85;
  v88 = v114;
  sub_258AAFC28(v87, v114);
  v89 = v88 + *(v117 + 44);
  *v89 = v86;
  *(v89 + 8) = 1;
  v90 = *(a1 + 5);
  v91 = v112;
  sub_258AAFA68(v88, v112, sub_258A9CA58);
  *(v91 + *(v116 + 36)) = v90;
  *&v132[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5878);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5898);
  sub_258AB000C(&qword_27F970B58, sub_258AAF9A8, sub_258AAFCBC);
  v92 = v118;
  sub_258B01DD4();

  sub_258AAFFAC(v91, sub_258AAF9A8);
  v93 = v102;
  v94 = v119;
  sub_258AAFF44(v102, v119, sub_258A9C828);
  v95 = v92;
  v96 = v120;
  sub_258AAFF44(v92, v120, sub_258A9C968);
  v97 = v130;
  sub_258AAFF44(v94, v130, sub_258A9C828);
  sub_258AAF910();
  sub_258AAFF44(v96, v97 + *(v98 + 48), sub_258A9C968);
  sub_258AAFFAC(v95, sub_258A9C968);
  sub_258AAFFAC(v93, sub_258A9C828);
  sub_258AAFFAC(v96, sub_258A9C968);
  return sub_258AAFFAC(v94, sub_258A9C828);
}

uint64_t sub_258AAF788@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  sub_258AFFD94();
  sub_2589BFF58();
  result = sub_258B01B44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_258AAF84C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B02084();
  *a1 = result;
  return result;
}

double sub_258AAF890@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_258AAE8A8(v4, a1).n128_u64[0];
  return result;
}

void sub_258AAF910()
{
  if (!qword_27F970770)
  {
    sub_258A9C828();
    sub_258A9C968();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970770);
    }
  }
}

void sub_258AAF9D0()
{
  if (!qword_27F970B38)
  {
    sub_258AAE46C(255, &qword_27F970768, sub_258AAF910, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970B38);
    }
  }
}

uint64_t sub_258AAFA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AAFAD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258AAFB98(uint64_t a1, uint64_t a2)
{
  sub_258AB01F4(0, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AAFC28(uint64_t a1, uint64_t a2)
{
  sub_258AB011C(0, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258AAFCBC()
{
  result = qword_27F970B60;
  if (!qword_27F970B60)
  {
    sub_258A9CA58();
    sub_258AAFD3C();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B60);
  }

  return result;
}

unint64_t sub_258AAFD3C()
{
  result = qword_27F970B68;
  if (!qword_27F970B68)
  {
    sub_258AB011C(255, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
    sub_258AAFE1C();
    sub_258AAFEFC(&qword_27F970B78, sub_258A9CBBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B68);
  }

  return result;
}

unint64_t sub_258AAFE1C()
{
  result = qword_27F970B70;
  if (!qword_27F970B70)
  {
    sub_258A9CB88(255);
    sub_258AAFEFC(&qword_27F96D6B8, sub_2589ED63C);
    sub_258AAFEFC(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B70);
  }

  return result;
}

uint64_t sub_258AAFEFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258AAFF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AAFFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AB000C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258AB008C()
{
  if (!qword_27F970B88)
  {
    sub_258AB011C(255, &qword_27F970740, sub_258A9C5E0, sub_258A005F0);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970B88);
    }
  }
}

void sub_258AB011C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AB0190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AB01F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AB0248()
{
  result = qword_27F970B90;
  if (!qword_27F970B90)
  {
    sub_258AB011C(255, &qword_27F970740, sub_258A9C5E0, sub_258A005F0);
    sub_258AB0328();
    sub_258AAFEFC(qword_27F96DBD0, sub_258A005F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B90);
  }

  return result;
}

unint64_t sub_258AB0328()
{
  result = qword_27F970B98;
  if (!qword_27F970B98)
  {
    sub_258A9C5E0(255);
    sub_258AAFEFC(&qword_27F970BA0, sub_258A9C608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B98);
  }

  return result;
}

void sub_258AB03EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ReflectiveIntervalSelectionHeaderText()
{
  result = qword_27F970BA8;
  if (!qword_27F970BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB04B0()
{
  sub_258B00084();
  if (v0 <= 0x3F)
  {
    sub_258AB03EC(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258AB03EC(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_258AB03EC(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258AB0620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a2;
  sub_258AB1D8C();
  v177 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v180 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1D2C();
  v179 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v178 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1CB8(0, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
  v206 = v9;
  v202 = *(v9 - 8);
  v10 = *(v202 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v175 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v176 = &v163 - v13;
  v14 = sub_258B00224();
  v198 = *(v14 - 8);
  v199 = v14;
  v15 = *(v198 + 64);
  MEMORY[0x28223BE20](v14);
  v197 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1C30();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v201 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v205 = &v163 - v21;
  v196 = sub_258B006A4();
  v195 = *(v196 - 8);
  v22 = *(v195 + 64);
  v23 = MEMORY[0x28223BE20](v196);
  v194 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v193 = &v163 - v25;
  v204 = sub_258B019F4();
  v26 = *(v204 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v204);
  v172 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v173 = &v163 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v163 - v33;
  MEMORY[0x28223BE20](v32);
  v185 = &v163 - v35;
  v36 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v171 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v163 - v40;
  v192 = sub_258AB1B88;
  v191 = type metadata accessor for LoggingFlowBlendMode;
  sub_258AB1CB8(0, &qword_27F970BE0, sub_258AB1B88, type metadata accessor for LoggingFlowBlendMode);
  v43 = *(v42 - 8);
  v186 = v42 - 8;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v46 = &v163 - v45;
  sub_258AB1AF8();
  v48 = *(v47 - 8);
  v190 = v47 - 8;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v188 = &v163 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1AC4(0);
  v52 = *(v51 - 8);
  v189 = v51 - 8;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8);
  v200 = &v163 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v187 = &v163 - v57;
  MEMORY[0x28223BE20](v56);
  v207 = &v163 - v58;
  v59 = a1;
  v60 = *a1;
  v61 = a1[1];
  v183 = v59;
  v208 = v60;
  v209 = v61;
  v62 = sub_2589BFF58();
  sub_258B003E4();
  v169 = v62;
  v63 = sub_258B01B44();
  v65 = v64;
  v67 = v66;
  v182 = v68;
  v184 = type metadata accessor for ReflectiveIntervalSelectionHeaderText();
  v166 = *(v184 + 32);
  sub_258AC1BC4(v41);
  sub_258B018E4();
  v170 = v36;
  v69 = &v41[*(v36 + 20)];
  v70 = sub_258B00A84();
  v71 = v26[13];
  v72 = MEMORY[0x277CE0A10];
  if ((v70 & 1) == 0)
  {
    v72 = MEMORY[0x277CE0A18];
  }

  v73 = *v72;
  v74 = v34;
  v75 = v204;
  v168 = v26 + 13;
  v167 = v71;
  v71(v34, v73, v204);
  v76 = v26[4];
  v77 = v185;
  v165 = v26 + 4;
  v164 = v76;
  v76(v185, v74, v75);
  sub_258B01A14();

  v78 = v26[1];
  v174 = v26 + 1;
  v163 = v78;
  v78(v77, v75);
  sub_258AB1F2C(v41, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v79 = sub_258B01AE4();
  v81 = v80;
  v83 = v82;
  sub_2589BFFAC(v63, v65, v67 & 1);

  sub_258B01994();
  v84 = sub_258B01A94();
  v86 = v85;
  v88 = v87;
  v89 = v79;
  v90 = v183;
  sub_2589BFFAC(v89, v81, v83 & 1);

  LODWORD(v208) = sub_258B014A4();
  v91 = sub_258B01AB4();
  v182 = v92;
  v181 = v93;
  v185 = v94;
  sub_2589BFFAC(v84, v86, v88 & 1);

  v95 = v184;
  v96 = v90 + *(v184 + 28);
  v97 = v193;
  sub_258AC14E8(v193);
  v98 = v195;
  v99 = v194;
  v100 = v196;
  (*(v195 + 104))(v194, *MEMORY[0x277CDF3C0], v196);
  v101 = sub_258B00694();
  v102 = *(v98 + 8);
  v102(v99, v100);
  v102(v97, v100);
  if (v101)
  {
    v103 = 1.0;
  }

  else
  {
    v103 = 0.8;
  }

  v104 = *(v186 + 44);
  *&v46[v104] = swift_getKeyPath();
  sub_258AB03EC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v106 = v105;
  swift_storeEnumTagMultiPayload();
  v107 = v182;
  *v46 = v91;
  *(v46 + 1) = v107;
  v46[16] = v181 & 1;
  *(v46 + 3) = v185;
  *(v46 + 4) = v103;
  v108 = v188;
  sub_258AB1E54(v46, v188, &qword_27F970BE0, v192, v191);
  *(v108 + *(v190 + 44)) = 256;
  KeyPath = swift_getKeyPath();
  v110 = v108;
  v111 = v187;
  sub_258AB1DEC(v110, v187, sub_258AB1AF8);
  v112 = v111 + *(v189 + 44);
  *v112 = KeyPath;
  v113 = 1;
  *(v112 + 8) = 1;
  sub_258AB1DEC(v111, v207, sub_258AB1AC4);
  v114 = v90 + *(v95 + 24);
  v115 = v197;
  sub_258AC1BF8(v197);
  v116 = *(v95 + 20);
  LOBYTE(v114) = sub_258B00124();
  (*(v198 + 8))(v115, v199);
  if ((v114 & 1) == 0)
  {
    v208 = sub_258AB1598();
    v209 = v117;
    v118 = sub_258B01B44();
    v120 = v119;
    v199 = v106;
    v122 = v121;
    v123 = v171;
    sub_258AC1BC4(v171);
    sub_258B018E4();
    v124 = v123 + *(v170 + 20);
    v125 = sub_258B00A84();
    v126 = MEMORY[0x277CE0A10];
    if ((v125 & 1) == 0)
    {
      v126 = MEMORY[0x277CE0A18];
    }

    v127 = v172;
    v128 = v204;
    v167(v172, *v126, v204);
    v129 = v173;
    v164(v173, v127, v128);
    sub_258B01A14();

    v163(v129, v128);
    sub_258AB1F2C(v123, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
    v130 = sub_258B01AE4();
    v132 = v131;
    v134 = v133;
    sub_2589BFFAC(v118, v120, v122 & 1);

    sub_258B01994();
    v135 = sub_258B01A94();
    v137 = v136;
    v139 = v138;
    sub_2589BFFAC(v130, v132, v134 & 1);

    LODWORD(v208) = sub_258B014B4();
    v140 = sub_258B01AB4();
    v142 = v141;
    LOBYTE(v130) = v143;
    v145 = v144;
    sub_2589BFFAC(v135, v137, v139 & 1);

    v146 = *(v177 + 36);
    v147 = swift_getKeyPath();
    v148 = v180;
    *&v180[v146] = v147;
    swift_storeEnumTagMultiPayload();
    *v148 = v140;
    *(v148 + 1) = v142;
    v148[16] = v130 & 1;
    *(v148 + 3) = v145;
    v149 = v148;
    v150 = v178;
    sub_258AB1DEC(v149, v178, sub_258AB1D8C);
    *(v150 + *(v179 + 36)) = 256;
    v151 = swift_getKeyPath();
    v152 = v175;
    sub_258AB1DEC(v150, v175, sub_258AB1D2C);
    v153 = v152 + *(v206 + 36);
    *v153 = v151;
    *(v153 + 8) = 1;
    v154 = v152;
    v155 = v176;
    sub_258AB1E54(v154, v176, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
    sub_258AB1E54(v155, v205, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
    v113 = 0;
  }

  v156 = v205;
  (*(v202 + 56))(v205, v113, 1, v206);
  v157 = v207;
  v158 = v200;
  sub_258AB1EC4(v207, v200, sub_258AB1AC4);
  v159 = v201;
  sub_258AB1EC4(v156, v201, sub_258AB1C30);
  v160 = v203;
  sub_258AB1EC4(v158, v203, sub_258AB1AC4);
  sub_258AB1A54();
  sub_258AB1EC4(v159, v160 + *(v161 + 48), sub_258AB1C30);
  sub_258AB1F2C(v156, sub_258AB1C30);
  sub_258AB1F2C(v157, sub_258AB1AC4);
  sub_258AB1F2C(v159, sub_258AB1C30);
  return sub_258AB1F2C(v158, sub_258AB1AC4);
}

uint64_t sub_258AB1598()
{
  v0 = sub_258AFFEF4();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v0);
  v32 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258AFFF54();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258AFFFA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258AFFFD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v29 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v29 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v29 - v24;
  v29[1] = *(type metadata accessor for ReflectiveIntervalSelectionHeaderText() + 20);
  MEMORY[0x259C90120]();
  sub_258AFFF94();
  sub_258AFFFC4();
  (*(v8 + 8))(v11, v7);
  v26 = *(v13 + 8);
  v26(v17, v12);
  sub_258AFFF44();
  sub_258AFFED4();
  (*(v30 + 8))(v6, v31);
  v26(v20, v12);
  v27 = v32;
  sub_258AFFEE4();
  sub_258AFFEB4();
  (*(v33 + 8))(v27, v34);
  v26(v23, v12);
  sub_258AB2020(&qword_27F9702C8, MEMORY[0x277CC9428]);
  sub_258B00064();
  v26(v25, v12);
  return v35;
}

uint64_t sub_258AB1970@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  sub_258AB19B8();
  return sub_258AB0620(v1, a1 + *(v3 + 44));
}

void sub_258AB19B8()
{
  if (!qword_27F970BB8)
  {
    sub_258AB1A20(255);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970BB8);
    }
  }
}

void sub_258AB1A54()
{
  if (!qword_27F970BC8)
  {
    sub_258AB1AC4(255);
    sub_258AB1C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970BC8);
    }
  }
}

void sub_258AB1AF8()
{
  if (!qword_27F970BD8)
  {
    sub_258AB1CB8(255, &qword_27F970BE0, sub_258AB1B88, type metadata accessor for LoggingFlowBlendMode);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970BD8);
    }
  }
}

void sub_258AB1B88()
{
  if (!qword_27F970BE8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970BE8);
    }
  }
}

void sub_258AB1BE0()
{
  if (!qword_27F96C8C0)
  {
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C8C0);
    }
  }
}

void sub_258AB1C30()
{
  if (!qword_27F970BF0)
  {
    sub_258AB1CB8(255, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970BF0);
    }
  }
}

void sub_258AB1CB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AB1D2C()
{
  if (!qword_27F970C00)
  {
    sub_258AB1D8C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970C00);
    }
  }
}

void sub_258AB1D8C()
{
  if (!qword_27F96FF48)
  {
    type metadata accessor for LoggingFlowBlendMode();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF48);
    }
  }
}

uint64_t sub_258AB1DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB1E54(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_258AB1CB8(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_258AB1EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB1F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AB1F8C()
{
  if (!qword_27F970C10)
  {
    sub_258AB1A20(255);
    sub_258AB2020(&qword_27F970C18, sub_258AB1A20);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970C10);
    }
  }
}

uint64_t sub_258AB2020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258AB2094(void (*a1)(uint64_t))
{
  sub_258AB22FC();

  v2 = sub_258B02124();
  if ((v4 & 1) == 0)
  {
    a1(v2);
    sub_258B02134();
  }
}

uint64_t sub_258AB2144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_258AB2240();
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_258AB229C();
  v12 = (a2 + *(v11 + 36));
  *v12 = sub_258AB2230;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = 0;
}

uint64_t sub_258AB2230()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_258AB2094(*(v0 + 16));
}

void sub_258AB2240()
{
  if (!qword_27F970C20)
  {
    sub_258A48FA4();
    v0 = sub_258B01464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970C20);
    }
  }
}

void sub_258AB229C()
{
  if (!qword_27F970C28)
  {
    sub_258AB2240();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970C28);
    }
  }
}

void sub_258AB22FC()
{
  if (!qword_27F96D310)
  {
    v0 = sub_258B02154();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D310);
    }
  }
}

unint64_t sub_258AB234C()
{
  result = qword_27F970C30;
  if (!qword_27F970C30)
  {
    sub_258AB229C();
    sub_258AB23CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970C30);
  }

  return result;
}

unint64_t sub_258AB23CC()
{
  result = qword_27F970C38;
  if (!qword_27F970C38)
  {
    sub_258AB2240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970C38);
  }

  return result;
}

uint64_t sub_258AB2424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_258B00154();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00184();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B00134();
  v11 = *(v10 - 8);
  v66 = v10;
  v67 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB2AEC(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v52 - v19;
  v20 = sub_258B00084();
  v21 = *(v20 - 8);
  v56 = v20;
  v57 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB2AEC(0, &qword_27F970C40, MEMORY[0x277CC9A70]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v52 - v27;
  sub_258AB2AEC(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v52 - v31;
  v33 = sub_258AFFD44();
  v54 = *(v33 - 8);
  v55 = v33;
  v34 = *(v54 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_258B00224();
  (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
  v38 = sub_258B00234();
  (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
  sub_258AFFD34();
  v52 = a1;
  v53 = v24;
  sub_258B00114();
  v39 = v14;
  (*(v67 + 104))(v14, *MEMORY[0x277CC9878], v66);
  v41 = v59;
  v40 = v60;
  v42 = v9;
  (*(v59 + 104))(v9, *MEMORY[0x277CC9900], v60);
  v44 = v61;
  v43 = v62;
  v45 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277CC98E8], v63);
  sub_258B001F4();
  (*(v43 + 8))(v44, v45);
  v46 = v41;
  v47 = v56;
  (*(v46 + 8))(v42, v40);
  v48 = v57;
  (*(v67 + 8))(v39, v66);
  v49 = v58;
  (*(v48 + 8))(v53, v47);
  (*(v54 + 8))(v36, v55);
  sub_258A784F0(v65, v49);
  v50 = *(v48 + 48);
  if (v50(v49, 1, v47) != 1)
  {
    return (*(v48 + 32))(v64, v49, v47);
  }

  (*(v48 + 16))(v64, v52, v47);
  result = (v50)(v49, 1, v47);
  if (result != 1)
  {
    return sub_258A2A66C(v49);
  }

  return result;
}

void sub_258AB2AEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s9ViewModelOMa()
{
  result = qword_27F970C48;
  if (!qword_27F970C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB2BDC()
{
  sub_258AB2CA8(319, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
  if (v0 <= 0x3F)
  {
    sub_258AB2CA8(319, &qword_27F970C58, sub_258AB2D18);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_258AB2CA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_258AB2D18()
{
  if (!qword_27F96CD80)
  {
    type metadata accessor for StateOfMindTimeline.DaySummary();
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CD80);
    }
  }
}

uint64_t sub_258AB2D70()
{
  v1 = v0;
  v2 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9ViewModelOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v1, v10, _s9ViewModelOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v13 = (v10 + *(v12 + 48));
    v14 = *v13;
    v15 = v13[1];
    v16 = sub_258B029C4();
    (*(*(v16 - 8) + 8))(v10, v16);
    return v14;
  }

  v17 = v10[1];
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = *v10;
    if (v17 < *(v18 + 16))
    {
      sub_258AB3558(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v6, type metadata accessor for StateOfMindTimeline.DaySummary);

      v19 = &v6[*(v2 + 24)];
      v14 = *v19;
      v20 = *(v19 + 1);
      sub_258B003E4();
      sub_258AB35C0(v6, type metadata accessor for StateOfMindTimeline.DaySummary);
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258AB2FA4(uint64_t *a1)
{
  v3 = _s9ViewModelOMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v1, v6, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v12 = *v6;
    v11 = v6[1];
    v13 = *a1;
    if (v11 == *a1)
    {
    }

    else
    {
      sub_258AB35C0(v1, _s9ViewModelOMa);
      *v1 = v12;
      v1[1] = v13;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v8 = *(v6 + *(v7 + 48) + 8);

    v9 = sub_258B029C4();
    return (*(*(v9 - 8) + 8))(v6, v9);
  }
}

uint64_t sub_258AB3128()
{
  v1 = _s9ViewModelOMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB3558(v0, v4, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = *(*v4 + 16);

    return v9 - 1;
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v6 = *&v4[*(v5 + 48) + 8];

    v7 = sub_258B029C4();
    (*(*(v7 - 8) + 8))(v4, v7);
    return 0;
  }
}

uint64_t sub_258AB3268()
{
  v1 = _s9ViewModelOMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v0, v4, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v10 = *v4;
    v9 = v4[1];
    if (v9 >= sub_258AB3128())
    {
    }

    else
    {
      sub_258AB35C0(v0, _s9ViewModelOMa);
      *v0 = v10;
      v0[1] = v9 + 1;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v6 = *(v4 + *(v5 + 48) + 8);

    v7 = sub_258B029C4();
    return (*(*(v7 - 8) + 8))(v4, v7);
  }
}

uint64_t sub_258AB33E4()
{
  v1 = _s9ViewModelOMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v0, v4, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v10 = *v4;
    v9 = v4[1];
    v11 = v9 - 1;
    if (v9 < 1)
    {
    }

    else
    {
      sub_258AB35C0(v0, _s9ViewModelOMa);
      *v0 = v10;
      v0[1] = v11;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v6 = *(v4 + *(v5 + 48) + 8);

    v7 = sub_258B029C4();
    return (*(*(v7 - 8) + 8))(v4, v7);
  }
}

uint64_t sub_258AB3558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB35C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AB3620(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_258B032B4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C937C0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_258AB3734(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for StateOfMindTimeline.DaySummary() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_258AB3820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9ViewModelOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_258B029C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB3558(v2, v12, _s9ViewModelOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v20 = *(v12 + *(v19 + 48) + 8);

    v21 = *(v14 + 32);
    v21(v17, v12, v13);
    return (v21)(a1, v17, v13);
  }

  v22 = v12[1];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v23 = *v12;
  if (v22 >= *(v23 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_258AB3558(v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v8, type metadata accessor for StateOfMindTimeline.DaySummary);

  (*(v14 + 16))(a1, &v8[*(v4 + 20)], v13);
  return sub_258AB35C0(v8, type metadata accessor for StateOfMindTimeline.DaySummary);
}

uint64_t sub_258AB3AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v49);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = sub_258B029C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s9ViewModelOMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(a1, v22, _s9ViewModelOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258AB35C0(a1, _s9ViewModelOMa);
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8]);
    v25 = *(v22 + *(v24 + 48) + 8);

    (*(v15 + 8))(v22, v14);
    v26 = *(a2 + 16) - 1;
LABEL_15:
    *a3 = a2;
    a3[1] = v26;
    return swift_storeEnumTagMultiPayload();
  }

  v46 = a1;
  v27 = v22[1];
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = *v22;
  if (v27 >= *(v28 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v45 = a3;
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v44 = *(v6 + 72);
  sub_258AB3558(v28 + v29 + v44 * v27, v13, type metadata accessor for StateOfMindTimeline.DaySummary);

  v30 = v49;
  (*(v15 + 16))(v18, &v13[*(v49 + 20)], v14);
  v31 = sub_258AB35C0(v13, type metadata accessor for StateOfMindTimeline.DaySummary);
  MEMORY[0x28223BE20](v31);
  *(&v43 - 2) = v18;
  v32 = sub_258AB3734(sub_258AB4088, (&v43 - 4), a2);
  if ((v33 & 1) == 0)
  {
    v26 = v32;
    v38 = _s9ViewModelOMa;
    v39 = v46;
LABEL_13:
    sub_258AB35C0(v39, v38);
    goto LABEL_14;
  }

  v34 = *(a2 + 16);
  if (!v34)
  {
    sub_258AB35C0(v46, _s9ViewModelOMa);
    v26 = -1;
    goto LABEL_14;
  }

  v35 = a2 + v29;
  v43 = a2 + v29;
  v36 = v48;
  sub_258AB3558(v35, v48, type metadata accessor for StateOfMindTimeline.DaySummary);
  v37 = *(v30 + 20);
  sub_258AB40A8(&qword_27F971480);
  LOBYTE(v37) = sub_258B02A54();
  result = sub_258AB35C0(v36, type metadata accessor for StateOfMindTimeline.DaySummary);
  if (v37)
  {
    sub_258AB35C0(v46, _s9ViewModelOMa);
    v26 = 0;
LABEL_14:
    (*(v15 + 8))(v18, v14);
    a3 = v45;
    goto LABEL_15;
  }

  v40 = v46;
  if (v34 <= *(a2 + 16))
  {
    v26 = v34 - 1;
    v41 = v47;
    sub_258AB3558(v43 + (v34 - 1) * v44, v47, type metadata accessor for StateOfMindTimeline.DaySummary);
    v42 = *(v30 + 20);
    sub_258B02934();
    sub_258AB35C0(v40, _s9ViewModelOMa);
    v39 = v41;
    v38 = type metadata accessor for StateOfMindTimeline.DaySummary;
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_258AB3FF0()
{
  v0 = *(type metadata accessor for StateOfMindTimeline.DaySummary() + 20);
  sub_258B029C4();
  sub_258AB40A8(&unk_27F9706C0);
  sub_258B030E4();
  return v2 == 0;
}

uint64_t sub_258AB40A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258B029C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_258AB40EC()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[2];
  v8 = sub_258B00014();
  v28[0] = 0;
  v9 = [v7 ageWithCurrentDate:v8 error:v28];

  v10 = v28[0];
  if (!v9)
  {
    v11 = v10;
    v12 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v13 = v12;
    v14 = sub_258B00374();
    v15 = sub_258B02E84();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136446466;
      v18 = sub_258B035A4();
      v20 = sub_2589F1F78(v18, v19, v28);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v27 = v12;
      v21 = v12;
      sub_2589F3AFC();
      v22 = sub_258B02B34();
      v24 = sub_2589F1F78(v22, v23, v28);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2589A1000, v14, v15, "[%{public}s] Could not fetch age from data source with error %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v17, -1, -1);
      MEMORY[0x259C945C0](v16, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    v9 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_258AB43D0()
{
  v1 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = sub_258B00384();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[2];
  v31[0] = 0;
  v9 = [v8 biologicalSexWithError_];
  if (v9)
  {
    v10 = v9;
    v11 = v31[0];
    v12 = HKAnalyticsPropertyValueForBiologicalSex();
    v13 = sub_258B02B14();
  }

  else
  {
    v14 = v31[0];
    v15 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v16 = v15;
    v17 = sub_258B00374();
    v18 = sub_258B02E84();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31[0] = v20;
      *v19 = 136446466;
      v21 = sub_258B035A4();
      v23 = sub_2589F1F78(v21, v22, v31);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v30 = v15;
      v24 = v15;
      sub_2589F3AFC();
      v25 = sub_258B02B34();
      v27 = sub_2589F1F78(v25, v26, v31);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v17, v18, "[%{public}s] Could not fetch age from data source with error %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v20, -1, -1);
      MEMORY[0x259C945C0](v19, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    v13 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_258AB46D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableInfoSectionHeader()
{
  result = qword_27F970C60;
  if (!qword_27F970C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB47A4()
{
  sub_258AB5FCC(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258AB6408(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258AB48A8@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v103 = sub_258B00FD4();
  v102 = *(v103 - 8);
  v2 = *(v102 + 64);
  v3 = MEMORY[0x28223BE20](v103);
  v100 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v101 = v99 - v5;
  v108 = sub_258B023A4();
  v107 = *(v108 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDF928];
  v106 = MEMORY[0x277CDF088];
  v10 = MEMORY[0x277CDFAB8];
  sub_258AB69CC(0, &qword_27F970958, MEMORY[0x277CDF088], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v12 = *(v11 - 8);
  v105 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v110 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v104 = v99 - v17;
  MEMORY[0x28223BE20](v16);
  v114 = v99 - v18;
  v19 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB69CC(0, &qword_27F970C70, sub_258AB5F18, v9, v10);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v113 = v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v99 - v28;
  *v29 = sub_258B01004();
  *(v29 + 1) = 0;
  v29[16] = 0;
  sub_258AB66C0();
  sub_258AB51EC(v1, &v29[*(v30 + 44)]);
  LOBYTE(v9) = sub_258B01894();
  v31 = type metadata accessor for ExpandableInfoSectionHeader();
  v32 = *(v31 + 24);
  sub_258AC1B28(v22);
  sub_258A25118(v22);
  sub_258B00654();
  v33 = *(v24 + 44);
  v112 = v29;
  v34 = &v29[v33];
  *v34 = v9;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_258B02394();
  LOBYTE(v9) = sub_258B01894();
  v39 = v1 + *(v31 + 28);
  v40 = *(v39 + 1);
  LOBYTE(v121) = *v39;
  LOBYTE(v31) = v121;
  v122 = v40;
  sub_258AB6408(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v109 = v1;
  v99[1] = v32;
  v41 = v22;
  sub_258AC1B28(v22);
  sub_258A25118(v22);
  sub_258B00654();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v104;
  (*(v107 + 32))(v104, v8, v108);
  v51 = v50 + *(v105 + 44);
  *v51 = v9;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  sub_258AB6DE0(v50, v114, &qword_27F970958, v106);
  LOBYTE(v121) = v31;
  v122 = v40;
  sub_258B02124();
  if (v115 == 1)
  {
    v52 = v109[3];
    v121 = v109[2];
    v122 = v52;
    sub_2589BFF58();
    sub_258B003E4();
    v53 = sub_258B01B44();
    v55 = v54;
    v57 = v56;
    sub_258B01914();
    v58 = sub_258B01AE4();
    v60 = v59;
    v62 = v61;

    sub_2589BFFAC(v53, v55, v57 & 1);

    sub_258B02044();
    v108 = sub_258B01AA4();
    v107 = v63;
    v65 = v64;
    v106 = v66;

    sub_2589BFFAC(v58, v60, v62 & 1);

    v67 = sub_258B01894();
    sub_258AC1B28(v41);
    sub_258A25118(v41);
    sub_258B00654();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    LOBYTE(v121) = v65 & 1;
    LOBYTE(v115) = 0;
    v76 = (v65 & 1);
    v109 = 0;
    v77 = v101;
    sub_258B00FC4();
    v78 = v102;
    v79 = v103;
    (*(v102 + 16))(v100, v77, v103);
    sub_258AB6BD0(&qword_27F96FCF0, MEMORY[0x277CE0068]);
    v105 = sub_258B00874();
    (*(v78 + 8))(v77, v79);
    v80 = v67;
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v106 = 0;
    v105 = 0;
    v109 = 0;
    v80 = 0;
    v76 = 0;
    v69 = 0;
    v71 = 0;
    v73 = 0;
    v75 = 0;
  }

  v104 = v76;
  v81 = v113;
  sub_258AB6758(v112, v113, &qword_27F970C70, sub_258AB5F18);
  v82 = MEMORY[0x277CDF088];
  v83 = v114;
  v84 = v110;
  sub_258AB6758(v114, v110, &qword_27F970958, MEMORY[0x277CDF088]);
  v85 = v81;
  v86 = v111;
  sub_258AB6758(v85, v111, &qword_27F970C70, sub_258AB5F18);
  sub_258AB67E4();
  v88 = v87;
  sub_258AB6758(v84, v86 + *(v87 + 48), &qword_27F970958, v82);
  v89 = v86 + *(v88 + 64);
  v90 = v108;
  *&v115 = v108;
  v91 = v107;
  *(&v115 + 1) = v107;
  *&v116 = v76;
  v92 = v106;
  *(&v116 + 1) = v106;
  *&v117 = v80;
  *(&v117 + 1) = v69;
  *&v118 = v71;
  *(&v118 + 1) = v73;
  *&v119 = v75;
  v93 = v80;
  v94 = v109;
  v95 = v105;
  *(&v119 + 1) = v109;
  v120 = v105;
  v96 = v118;
  *(v89 + 32) = v117;
  *(v89 + 48) = v96;
  *(v89 + 80) = v95;
  v97 = v116;
  *v89 = v115;
  *(v89 + 16) = v97;
  *(v89 + 64) = v119;
  sub_258AB6A38(&v115, &v121);
  sub_258AB6ACC(v83, &qword_27F970958, v82);
  sub_258AB6ACC(v112, &qword_27F970C70, sub_258AB5F18);
  v121 = v90;
  v122 = v91;
  v123 = v104;
  v124 = v92;
  v125 = v93;
  v126 = v69;
  v127 = v71;
  v128 = v73;
  v129 = v75;
  v130 = v94;
  v131 = v95;
  sub_258AB6B44(&v121);
  sub_258AB6ACC(v84, &qword_27F970958, v82);
  return sub_258AB6ACC(v113, &qword_27F970C70, sub_258AB5F18);
}

uint64_t sub_258AB51EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = type metadata accessor for ExpandableInfoSectionHeader();
  v4 = *(v3 - 8);
  v119 = v3 - 8;
  v123 = v4;
  v122 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v120 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDF928];
  v126 = sub_258AB621C;
  v7 = MEMORY[0x277CDFAB8];
  sub_258AB69CC(0, &qword_27F970CA8, sub_258AB621C, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v9 = *(v8 - 8);
  v124 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v125 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = &v107 - v13;
  v14 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258B019F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB63A4(0, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
  v23 = *(v22 - 8);
  v107 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v26 = &v107 - v25;
  sub_258AB6198();
  v28 = *(v27 - 8);
  v110 = v27 - 8;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v109 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB610C();
  v32 = *(v31 - 8);
  v114 = v31 - 8;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v111 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_258AB610C;
  sub_258AB69CC(0, &qword_27F970C90, sub_258AB610C, v6, v7);
  v36 = *(v35 - 8);
  v115 = v35 - 8;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8);
  v118 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v112 = &v107 - v41;
  MEMORY[0x28223BE20](v40);
  v113 = &v107 - v42;
  v108 = a1;
  v43 = *a1;
  v44 = a1[1];
  *&v128 = v43;
  *(&v128 + 1) = v44;
  sub_2589BFF58();
  sub_258B003E4();
  v45 = sub_258B01B44();
  v47 = v46;
  v49 = v48;
  sub_258B01A44();
  (*(v18 + 104))(v21, *MEMORY[0x277CE0A10], v17);
  sub_258B01A14();

  (*(v18 + 8))(v21, v17);
  v50 = sub_258B01AE4();
  v52 = v51;
  LOBYTE(v18) = v53;

  sub_2589BFFAC(v45, v47, v49 & 1);

  LODWORD(v128) = sub_258B014A4();
  DWORD1(v128) = 1059648963;
  sub_258AB6C18(0, &qword_27F96ED30, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE01D0]);
  sub_258AB6C6C();
  v54 = sub_258B01AB4();
  v56 = v55;
  LOBYTE(v45) = v57;
  v59 = v58;
  sub_2589BFFAC(v50, v52, v18 & 1);

  v60 = *(v107 + 44);
  *&v26[v60] = swift_getKeyPath();
  sub_258AB5FCC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v26 = v54;
  *(v26 + 1) = v56;
  v26[16] = v45 & 1;
  *(v26 + 3) = v59;
  sub_258B02504();
  sub_258B00C94();
  v61 = v109;
  sub_258AB6CF0(v26, v109);
  v62 = (v61 + *(v110 + 44));
  v63 = v133;
  v62[4] = v132;
  v62[5] = v63;
  v62[6] = v134;
  v64 = v129;
  *v62 = v128;
  v62[1] = v64;
  v65 = v131;
  v62[2] = v130;
  v62[3] = v65;
  KeyPath = swift_getKeyPath();
  v67 = v111;
  sub_258AB6D78(v61, v111, sub_258AB6198);
  v68 = v67 + *(v114 + 44);
  *v68 = KeyPath;
  *(v68 + 8) = 0;
  LOBYTE(KeyPath) = sub_258B018C4();
  v69 = *(v119 + 32);
  v70 = v108;
  v71 = v117;
  sub_258AC1B28(v117);
  sub_258A25118(v71);
  sub_258B00654();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v112;
  sub_258AB6D78(v67, v112, sub_258AB610C);
  v81 = v80 + *(v115 + 44);
  *v81 = KeyPath;
  *(v81 + 8) = v73;
  *(v81 + 16) = v75;
  *(v81 + 24) = v77;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0;
  v82 = v113;
  v83 = v116;
  sub_258AB6DE0(v80, v113, &qword_27F970C90, v116);
  v84 = v70;
  v85 = v120;
  sub_258AB6E6C(v84, v120);
  v86 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v87 = swift_allocObject();
  sub_258AB6D78(v85, v87 + v86, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258AB6280();
  sub_258AB6458();
  v88 = v121;
  sub_258B02174();
  LOBYTE(KeyPath) = sub_258B018C4();
  sub_258AC1B28(v71);
  sub_258A25118(v71);
  sub_258B00654();
  v89 = &v88[*(v124 + 44)];
  *v89 = KeyPath;
  *(v89 + 1) = v90;
  *(v89 + 2) = v91;
  *(v89 + 3) = v92;
  *(v89 + 4) = v93;
  v89[40] = 0;
  v94 = v82;
  v95 = v82;
  v96 = v118;
  v97 = v83;
  sub_258AB6758(v94, v118, &qword_27F970C90, v83);
  v98 = v88;
  v99 = v88;
  v100 = v125;
  v101 = v126;
  sub_258AB6758(v98, v125, &qword_27F970CA8, v126);
  v102 = v96;
  v103 = v96;
  v104 = v127;
  sub_258AB6758(v102, v127, &qword_27F970C90, v97);
  sub_258AB6030();
  sub_258AB6758(v100, v104 + *(v105 + 48), &qword_27F970CA8, v101);
  sub_258AB6ACC(v99, &qword_27F970CA8, v101);
  sub_258AB6ACC(v95, &qword_27F970C90, v97);
  sub_258AB6ACC(v100, &qword_27F970CA8, v101);
  return sub_258AB6ACC(v103, &qword_27F970C90, v97);
}

uint64_t sub_258AB5BBC()
{
  sub_258B02534();
  sub_258B009A4();
}

uint64_t sub_258AB5C28(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ExpandableInfoSectionHeader() + 28));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_258AB6408(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_258B02124();
  sub_258B02134();
}

void sub_258AB5D00(uint64_t *a1@<X8>)
{
  v2 = sub_258B019F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B02084();
  sub_258B01A44();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0A10], v2);
  v8 = sub_258B01A14();

  (*(v3 + 8))(v6, v2);
  KeyPath = swift_getKeyPath();
  sub_258AB62E8();
  v11 = (a1 + *(v10 + 36));
  sub_258AB5FCC(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v13 = *(v12 + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_258B020B4();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = swift_getKeyPath();
  *a1 = v7;
  a1[1] = KeyPath;
  a1[2] = v8;
  LODWORD(v7) = sub_258B014A4();
  LODWORD(v8) = sub_258B01494();
  sub_258AB6280();
  v17 = (a1 + *(v16 + 36));
  *v17 = v7;
  v17[1] = v8;
}

void sub_258AB5F18()
{
  if (!qword_27F970C78)
  {
    sub_258AB5FCC(255, &qword_27F970C80, sub_258AB6030, MEMORY[0x277CE14B8]);
    sub_258AB665C(&qword_27F970CE0, &qword_27F970C80, sub_258AB6030);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970C78);
    }
  }
}

void sub_258AB5FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AB6030()
{
  if (!qword_27F970C88)
  {
    v0 = MEMORY[0x277CDF928];
    v1 = MEMORY[0x277CDFAB8];
    sub_258AB69CC(255, &qword_27F970C90, sub_258AB610C, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258AB69CC(255, &qword_27F970CA8, sub_258AB621C, v0, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970C88);
    }
  }
}

void sub_258AB610C()
{
  if (!qword_27F970C98)
  {
    sub_258AB6198();
    sub_258AB6408(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970C98);
    }
  }
}

void sub_258AB6198()
{
  if (!qword_27F970CA0)
  {
    sub_258AB63A4(255, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970CA0);
    }
  }
}

void sub_258AB621C()
{
  if (!qword_27F970CB0)
  {
    sub_258AB6280();
    sub_258AB6458();
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970CB0);
    }
  }
}

void sub_258AB6280()
{
  if (!qword_27F970CB8)
  {
    sub_258AB62E8();
    sub_2589E2E5C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970CB8);
    }
  }
}

void sub_258AB62E8()
{
  if (!qword_27F970CC0)
  {
    sub_258AB63A4(255, &qword_27F970978, sub_2589BF83C);
    sub_258AB5FCC(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970CC0);
    }
  }
}

void sub_258AB63A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AB6408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258AB6458()
{
  result = qword_27F970CC8;
  if (!qword_27F970CC8)
  {
    sub_258AB6280();
    sub_258AB6508();
    sub_258AB6BD0(&qword_27F96D498, sub_2589E2E5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970CC8);
  }

  return result;
}

unint64_t sub_258AB6508()
{
  result = qword_27F970CD0;
  if (!qword_27F970CD0)
  {
    sub_258AB62E8();
    sub_258AB6588();
    sub_2589E0CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970CD0);
  }

  return result;
}

unint64_t sub_258AB6588()
{
  result = qword_27F970CD8;
  if (!qword_27F970CD8)
  {
    sub_258AB63A4(255, &qword_27F970978, sub_2589BF83C);
    sub_258AB6BD0(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970CD8);
  }

  return result;
}

uint64_t sub_258AB665C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258AB5FCC(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258AB66C0()
{
  if (!qword_27F970CE8)
  {
    sub_258AB5FCC(255, &qword_27F970C80, sub_258AB6030, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970CE8);
    }
  }
}

uint64_t sub_258AB6758(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258AB69CC(0, a3, a4, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258AB67E4()
{
  if (!qword_27F970CF0)
  {
    v0 = MEMORY[0x277CDF928];
    v1 = MEMORY[0x277CDFAB8];
    sub_258AB69CC(255, &qword_27F970C70, sub_258AB5F18, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258AB69CC(255, &qword_27F970958, MEMORY[0x277CDF088], v0, v1);
    sub_258AB5FCC(255, &qword_27F970CF8, sub_258AB6900, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970CF0);
    }
  }
}

void sub_258AB6900()
{
  if (!qword_27F970D00)
  {
    sub_258AB6C18(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258AB69CC(255, &qword_27F96FCC0, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D00);
    }
  }
}

void sub_258AB69CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_258AB6A38(uint64_t a1, uint64_t a2)
{
  sub_258AB5FCC(0, &qword_27F970CF8, sub_258AB6900, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AB6ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258AB69CC(0, a2, a3, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258AB6B44(uint64_t a1)
{
  sub_258AB5FCC(0, &qword_27F970CF8, sub_258AB6900, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258AB6BD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258AB6C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AB6C6C()
{
  result = qword_27F96ED38;
  if (!qword_27F96ED38)
  {
    sub_258AB6C18(255, &qword_27F96ED30, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE01D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96ED38);
  }

  return result;
}

uint64_t sub_258AB6CF0(uint64_t a1, uint64_t a2)
{
  sub_258AB63A4(0, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AB6D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB6DE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258AB69CC(0, a3, a4, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_258AB6E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandableInfoSectionHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AB6ED0()
{
  v0 = *(*(type metadata accessor for ExpandableInfoSectionHeader() - 8) + 80);

  return sub_258AB5BBC();
}

void sub_258AB6F60()
{
  if (!qword_27F96C788)
  {
    type metadata accessor for StateOfMindTimeline.Styles(255);
    v0 = sub_258B00724();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C788);
    }
  }
}

uint64_t _s20EntryPlaceholderViewVMa()
{
  result = qword_27F970D18;
  if (!qword_27F970D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB7018()
{
  sub_258AB6F60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_258AB70A8(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  sub_258AB7A58();
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_258B01194();
  v40 = sub_258B01874();
  v51 = 0;
  v50 = 1;
  sub_258AC1060(v14);
  sub_258A3CBB4(v14, type metadata accessor for StateOfMindTimeline.Styles);
  v20 = [objc_opt_self() sharedBehavior];
  if (v20)
  {
    v21 = v20;
    [v20 isiPad];

    sub_258B024F4();
    sub_258B00854();
    *&v52[7] = v53;
    *&v52[23] = v54;
    *&v52[39] = v55;
    sub_258AC1060(v12);
    sub_258A3CBB4(v12, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B024F4();
    sub_258B00C94();
    v22 = sub_258B024F4();
    v24 = v23;
    v25 = &v19[*(v16 + 36)];
    sub_258AB74A4(v1, v25);
    sub_258AB7B98();
    v27 = (v25 + *(v26 + 36));
    *v27 = v22;
    v27[1] = v24;
    *v19 = v41;
    *(v19 + 1) = 0;
    v19[16] = 0;
    v19[24] = v40;
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    v19[64] = 1;
    *(v19 + 14) = *&v52[47];
    v28 = *&v52[16];
    *(v19 + 97) = *&v52[32];
    v29 = *v52;
    *(v19 + 81) = v28;
    *(v19 + 65) = v29;
    v30 = v43;
    v31 = v44;
    v32 = v46;
    *(v19 + 152) = v45;
    *(v19 + 136) = v31;
    *(v19 + 120) = v30;
    v33 = v47;
    v34 = v48;
    *(v19 + 216) = v49;
    *(v19 + 200) = v34;
    *(v19 + 184) = v33;
    *(v19 + 168) = v32;
    sub_258AC1060(v9);
    sub_258A3CBB4(v9, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FF4();
    v35 = sub_258B02024();

    sub_258AC1060(v6);
    sub_258A3CBB4(v6, type metadata accessor for StateOfMindTimeline.Styles);
    v36 = v42;
    sub_258AB7E7C(v19, v42, sub_258AB7A58);
    sub_258AB7E18(0, &qword_27F970D78, sub_258AB7A58);
    v38 = (v36 + *(v37 + 36));
    *v38 = v35;
    v38[1] = 0x4028000000000000;
    v38[2] = 0;
    v38[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_258AB74A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00C34();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_258AC1060(&v27 - v14);
  sub_258A3CBB4(v15, type metadata accessor for StateOfMindTimeline.Styles);
  v16 = *(v5 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_258B010C4();
  (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
  __asm { FMOV            V0.2D, #26.0 }

  *v8 = _Q0;
  if (*(a1 + *(_s20EntryPlaceholderViewVMa() + 20)) == 1)
  {
    sub_258AB76D0(&v28);
  }

  else
  {
    sub_258AC1060(v13);
    sub_258A3CBB4(v13, type metadata accessor for StateOfMindTimeline.Styles);
    v24 = [objc_opt_self() systemGray5Color];
    *&v28 = sub_258B01F94();
  }

  v25 = sub_258B00864();
  sub_258AB7E7C(v8, a2, MEMORY[0x277CDFC08]);
  sub_258AB7BFC();
  *(a2 + *(v26 + 36)) = v25;
}

double sub_258AB76D0@<D0>(_OWORD *a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v2 = *(v1 - 8);
  v30 = v1 - 8;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  sub_258AB7EE4();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_258B2BE60;
  sub_258AC1060(v16);
  sub_258A3CBB4(v16, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01FE4();
  sub_258B02024();

  *(v17 + 32) = sub_258B02464();
  *(v17 + 40) = v18;
  sub_258AC1060(v14);
  sub_258A3CBB4(v14, type metadata accessor for StateOfMindTimeline.Styles);
  v19 = objc_opt_self();
  v20 = [v19 secondarySystemGroupedBackgroundColor];
  v21 = [v19 tertiarySystemGroupedBackgroundColor];
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = v21;
  v22[4] = 0;
  v22[5] = v20;
  v23 = objc_allocWithZone(MEMORY[0x277D75348]);
  v34 = sub_2589C69C4;
  v35 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_258A52B54;
  *(&v33 + 1) = &block_descriptor_15;
  v24 = _Block_copy(&aBlock);
  [v23 initWithDynamicProvider_];
  _Block_release(v24);

  sub_258B01F94();
  sub_258AC1060(v11);
  sub_2589F55B4(&v11[*(v7 + 56)], v5);
  sub_258A3CBB4(v11, type metadata accessor for StateOfMindTimeline.Styles);
  v25 = v5[*(v30 + 32)];
  sub_258A3CBB4(v5, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  *(v17 + 48) = sub_258B02464();
  *(v17 + 56) = v26;
  sub_258B02474();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  result = *&aBlock;
  v28 = v33;
  v29 = v31;
  *v31 = aBlock;
  v29[1] = v28;
  *(v29 + 4) = v34;
  return result;
}

void sub_258AB7A58()
{
  if (!qword_27F970D28)
  {
    sub_258AB7E18(255, &qword_27F970D30, sub_258AB7AE4);
    sub_258AB7B98();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D28);
    }
  }
}

void sub_258AB7B0C()
{
  if (!qword_27F970D40)
  {
    sub_258AB7C90(255, &qword_27F970D48, MEMORY[0x277CE1428], MEMORY[0x277CE1410], MEMORY[0x277CE1190]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D40);
    }
  }
}

void sub_258AB7B98()
{
  if (!qword_27F970D50)
  {
    sub_258AB7BFC();
    sub_258AB7CE4();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D50);
    }
  }
}

void sub_258AB7BFC()
{
  if (!qword_27F970D58)
  {
    sub_258B00C34();
    sub_258AB7C90(255, &qword_27F970D60, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D58);
    }
  }
}

void sub_258AB7C90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AB7CE4()
{
  result = qword_27F970D68;
  if (!qword_27F970D68)
  {
    sub_258AB7BFC();
    sub_258AB82BC(&qword_27F96CA88, MEMORY[0x277CDFC08]);
    sub_258AB7D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D68);
  }

  return result;
}

unint64_t sub_258AB7D94()
{
  result = qword_27F970D70;
  if (!qword_27F970D70)
  {
    sub_258AB7C90(255, &qword_27F970D60, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D70);
  }

  return result;
}

void sub_258AB7E18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258AB7E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AB7EE4()
{
  if (!qword_27F970D80)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D80);
    }
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258AB7F4C()
{
  result = qword_27F970D88;
  if (!qword_27F970D88)
  {
    sub_258AB7E18(255, &qword_27F970D78, sub_258AB7A58);
    sub_258AB7FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D88);
  }

  return result;
}

unint64_t sub_258AB7FF0()
{
  result = qword_27F970D90;
  if (!qword_27F970D90)
  {
    sub_258AB7A58();
    sub_258AB80A0();
    sub_258AB82BC(&qword_27F970DB8, sub_258AB7B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D90);
  }

  return result;
}

unint64_t sub_258AB80A0()
{
  result = qword_27F970D98;
  if (!qword_27F970D98)
  {
    sub_258AB7E18(255, &qword_27F970D30, sub_258AB7AE4);
    sub_258AB817C(&qword_27F970DA0, sub_258AB7AE4, sub_258AB81FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D98);
  }

  return result;
}

uint64_t sub_258AB817C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AB8238()
{
  result = qword_27F970DB0;
  if (!qword_27F970DB0)
  {
    sub_258AB7C90(255, &qword_27F970D48, MEMORY[0x277CE1428], MEMORY[0x277CE1410], MEMORY[0x277CE1190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970DB0);
  }

  return result;
}

uint64_t sub_258AB82BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NotificationsSetupPhaseContent()
{
  result = qword_27F970DC0;
  if (!qword_27F970DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB8378()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_258B008E4();
      if (v2 <= 0x3F)
      {
        sub_258AB979C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258AB8478@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v184 = a2;
  sub_258AB9A54(0);
  v180 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v181 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotificationsSetupPhaseContent();
  v7 = v6 - 8;
  v172 = *(v6 - 8);
  v8 = *(v172 + 64);
  MEMORY[0x28223BE20](v6);
  v173 = v9;
  v174 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB9AE0(0);
  v176 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v179 = (&v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB99AC(0);
  v177 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v183 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v158 - v18;
  MEMORY[0x28223BE20](v17);
  v182 = &v158 - v19;
  v189 = sub_258B019F4();
  v197 = *(v189 - 8);
  v20 = *(v197 + 64);
  v21 = MEMORY[0x28223BE20](v189);
  v170 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v171 = &v158 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v193 = &v158 - v26;
  MEMORY[0x28223BE20](v25);
  v194 = &v158 - v27;
  sub_258AB979C(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v158 - v30;
  sub_258AB9898(0);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v196 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v158 - v37;
  v188 = type metadata accessor for NotificationsSetupPhaseSpecs();
  v39 = *(*(v188 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v188);
  v169 = &v158 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v192 = &v158 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v158 - v44;
  v46 = a1 + *(v7 + 32);
  sub_258B008C4();
  v48 = v47;
  v49 = *(v7 + 36);
  v175 = a1;
  v50 = a1 + v49;
  sub_258AC1B5C(v45);
  sub_258AB9BC0(v45, type metadata accessor for NotificationsSetupPhaseSpecs);
  v195 = sub_258B02084();
  sub_258AC1B5C(v45);
  sub_258AB9BC0(v45, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B01984();
  v51 = sub_258B01954();
  (*(*(v51 - 8) + 56))(v31, 1, 1, v51);
  v52 = sub_258B019A4();
  sub_258A79290(v31);
  KeyPath = swift_getKeyPath();
  LODWORD(a1) = sub_258B014B4();
  v54 = *(v33 + 44);
  *&v38[v54] = swift_getKeyPath();
  sub_258AB979C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v38 = v195;
  *(v38 + 1) = KeyPath;
  *(v38 + 2) = v52;
  v195 = v38;
  *(v38 + 6) = a1;
  sub_258AC1B5C(v45);
  v187 = v45;
  sub_258AB9BC0(v45, type metadata accessor for NotificationsSetupPhaseSpecs);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v167 = qword_27F97AB98;
  v168 = qword_27F97AB90;
  v166 = qword_27F97ABA0;
  v223 = sub_258AFFD94();
  v224 = v55;
  v165 = sub_2589BFF58();
  v191 = sub_258B01B44();
  v57 = v56;
  v59 = v58;
  v60 = v192;
  sub_258AC1B5C(v192);
  sub_258B01944();
  v186 = v50;
  v61 = v60 + *(v188 + 20);
  v62 = sub_258B00A84();
  v63 = v197;
  v64 = *(v197 + 104);
  v160 = v64;
  v162 = v197 + 104;
  v65 = *MEMORY[0x277CE0A10];
  v159 = *MEMORY[0x277CE0A10];
  v66 = *MEMORY[0x277CE0A18];
  v161 = *MEMORY[0x277CE0A18];
  if (v62)
  {
    v67 = v65;
  }

  else
  {
    v67 = v66;
  }

  v68 = v193;
  v69 = v189;
  v64(v193, v67, v189);
  v70 = *(v63 + 32);
  v163 = v63 + 32;
  v164 = v70;
  v71 = v194;
  v70(v194, v68, v69);
  sub_258B01A14();

  v72 = *(v63 + 8);
  v197 = v63 + 8;
  v158 = v72;
  v72(v71, v69);
  v185 = type metadata accessor for NotificationsSetupPhaseSpecs;
  sub_258AB9BC0(v60, type metadata accessor for NotificationsSetupPhaseSpecs);
  v73 = v191;
  v74 = sub_258B01AE4();
  v76 = v75;
  v78 = v77;
  sub_2589BFFAC(v73, v57, v59 & 1);

  v79 = sub_258B01AD4();
  v192 = v80;
  v193 = v79;
  LOBYTE(v68) = v81;
  v194 = v82;
  sub_2589BFFAC(v74, v76, v78 & 1);

  v191 = swift_getKeyPath();
  v190 = v68 & 1;
  v249 = v68 & 1;
  sub_258B02504();
  sub_258B00C94();
  *(&v250[3] + 7) = *(&v250[10] + 8);
  *(&v250[4] + 7) = *(&v250[11] + 8);
  *(&v250[5] + 7) = *(&v250[12] + 8);
  *(&v250[6] + 7) = *(&v250[13] + 8);
  *(v250 + 7) = *(&v250[7] + 8);
  *(&v250[1] + 7) = *(&v250[8] + 8);
  *(&v250[2] + 7) = *(&v250[9] + 8);
  v83 = v187;
  sub_258AC1B5C(v187);
  sub_258AB9BC0(v83, v185);
  v223 = sub_258AFFD94();
  v224 = v84;
  v85 = sub_258B01B44();
  v87 = v86;
  v89 = v88;
  v90 = v169;
  sub_258AC1B5C(v169);
  sub_258B01914();
  v91 = v90 + *(v188 + 20);
  if (sub_258B00A84())
  {
    v92 = v159;
  }

  else
  {
    v92 = v161;
  }

  v93 = v170;
  v94 = v189;
  v160(v170, v92, v189);
  v95 = v171;
  v164(v171, v93, v94);
  sub_258B01A14();

  v158(v95, v94);
  v96 = v90;
  v97 = v185;
  sub_258AB9BC0(v96, v185);
  v197 = sub_258B01AE4();
  v189 = v98;
  v100 = v99;
  v171 = v101;
  sub_2589BFFAC(v85, v87, v89 & 1);

  v188 = swift_getKeyPath();
  v244 = v100 & 1;
  v102 = v100 & 1;
  LODWORD(v170) = v100 & 1;
  sub_258B02504();
  sub_258B00C94();
  *(&v245[3] + 7) = *(&v250[17] + 8);
  *(&v245[4] + 7) = *(&v250[18] + 8);
  *(&v245[5] + 7) = *(&v250[19] + 8);
  *(&v245[6] + 7) = *(&v250[20] + 8);
  *(v245 + 7) = *(&v250[14] + 8);
  *(&v245[1] + 7) = *(&v250[15] + 8);
  *(&v245[2] + 7) = *(&v250[16] + 8);
  v103 = v187;
  sub_258AC1B5C(v187);
  sub_258AB9BC0(v103, v97);
  v104 = v174;
  v105 = *(v175 + 8);
  sub_258AB9C88(v175, v174, type metadata accessor for NotificationsSetupPhaseContent);
  v106 = (*(v172 + 80) + 16) & ~*(v172 + 80);
  v107 = swift_allocObject();
  sub_258AB9C20(v104, v107 + v106, type metadata accessor for NotificationsSetupPhaseContent);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258AB9CF0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);

  v108 = sub_258B00A24();
  v109 = v179;
  *v179 = v108;
  v109[1] = v110;
  v109[2] = sub_258AB9B5C;
  v109[3] = v107;
  v109[4] = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  v111 = *(type metadata accessor for ReminderView(0) + 28);
  *(v109 + v111) = swift_getKeyPath();
  sub_258AB979C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v111) = sub_258B01874();
  sub_258B00654();
  v112 = v109 + *(v176 + 36);
  *v112 = v111;
  *(v112 + 1) = v113;
  *(v112 + 2) = v114;
  *(v112 + 3) = v115;
  *(v112 + 4) = v116;
  v112[40] = 0;
  sub_258B02504();
  sub_258B00C94();
  v117 = v181;
  sub_258AB9C88(v109, v181, sub_258AB9AE0);
  v118 = (v117 + *(v180 + 36));
  v119 = *(&v250[26] + 8);
  v118[4] = *(&v250[25] + 8);
  v118[5] = v119;
  v118[6] = *(&v250[27] + 8);
  v120 = *(&v250[22] + 8);
  *v118 = *(&v250[21] + 8);
  v118[1] = v120;
  v121 = *(&v250[24] + 8);
  v118[2] = *(&v250[23] + 8);
  v118[3] = v121;
  v122 = sub_258B024F4();
  v124 = v123;
  v125 = v178;
  v126 = &v178[*(v177 + 36)];
  sub_258A5615C(v126);
  sub_258AB9BC0(v109, sub_258AB9AE0);
  sub_258A58978();
  v128 = (v126 + *(v127 + 36));
  *v128 = v122;
  v128[1] = v124;
  sub_258AB9C20(v117, v125, sub_258AB9A54);
  v129 = v182;
  sub_258AB9C20(v125, v182, sub_258AB99AC);
  v130 = v196;
  sub_258AB9C88(v195, v196, sub_258AB9898);
  v131 = v183;
  sub_258AB9C88(v129, v183, sub_258AB99AC);
  v132 = v184;
  *v184 = v48 * 0.09;
  *(v132 + 8) = 0;
  sub_258AB9800();
  v134 = v133;
  sub_258AB9C88(v130, v132 + v133[12], sub_258AB9898);
  v135 = v132 + v134[16];
  *v135 = 0x4034000000000000;
  v135[8] = 0;
  v136 = v132 + v134[20];
  *&v198 = v193;
  *(&v198 + 1) = v192;
  LOBYTE(v199) = v190;
  *(&v199 + 1) = *v248;
  DWORD1(v199) = *&v248[3];
  *(&v199 + 1) = v194;
  LOWORD(v200) = 256;
  *(&v200 + 2) = v246;
  WORD3(v200) = v247;
  *(&v200 + 1) = v191;
  v201[0] = 0;
  *&v201[1] = v250[0];
  *&v201[49] = v250[3];
  *&v201[33] = v250[2];
  *&v201[17] = v250[1];
  *&v201[112] = *(&v250[6] + 15);
  *&v201[97] = v250[6];
  *&v201[81] = v250[5];
  *&v201[65] = v250[4];
  v137 = v199;
  *v136 = v198;
  *(v136 + 1) = v137;
  v138 = v200;
  v139 = *v201;
  v140 = *&v201[32];
  *(v136 + 4) = *&v201[16];
  *(v136 + 5) = v140;
  *(v136 + 2) = v138;
  *(v136 + 3) = v139;
  v141 = *&v201[48];
  v142 = *&v201[64];
  v143 = *&v201[80];
  v144 = *&v201[96];
  *(v136 + 20) = *&v201[112];
  *(v136 + 8) = v143;
  *(v136 + 9) = v144;
  *(v136 + 6) = v141;
  *(v136 + 7) = v142;
  v145 = v132 + v134[24];
  *v145 = 0x402E000000000000;
  v145[8] = 0;
  v146 = v132 + v134[28];
  *&v202 = v197;
  *(&v202 + 1) = v189;
  LOBYTE(v203) = v102;
  *(&v203 + 1) = *v243;
  DWORD1(v203) = *&v243[3];
  v147 = v171;
  *(&v203 + 1) = v171;
  LOWORD(v204) = 256;
  *(&v204 + 2) = v241;
  WORD3(v204) = v242;
  *(&v204 + 1) = v188;
  v205[0] = 0;
  *&v205[49] = v245[3];
  *&v205[33] = v245[2];
  *&v205[17] = v245[1];
  *&v205[1] = v245[0];
  *&v205[112] = *(&v245[6] + 15);
  *&v205[97] = v245[6];
  *&v205[81] = v245[5];
  *&v205[65] = v245[4];
  v148 = v203;
  *v146 = v202;
  *(v146 + 1) = v148;
  v149 = v204;
  v150 = *v205;
  v151 = *&v205[32];
  *(v146 + 4) = *&v205[16];
  *(v146 + 5) = v151;
  *(v146 + 2) = v149;
  *(v146 + 3) = v150;
  v152 = *&v205[48];
  v153 = *&v205[64];
  v154 = *&v205[80];
  v155 = *&v205[96];
  *(v146 + 20) = *&v205[112];
  *(v146 + 8) = v154;
  *(v146 + 9) = v155;
  *(v146 + 6) = v152;
  *(v146 + 7) = v153;
  v156 = v132 + v134[32];
  *v156 = 0x402E000000000000;
  v156[8] = 0;
  sub_258AB9C88(v131, v132 + v134[36], sub_258AB99AC);
  sub_258AB9C88(&v198, &v223, sub_258AB98CC);
  sub_258AB9C88(&v202, &v223, sub_258AB98CC);
  sub_258AB9BC0(v129, sub_258AB99AC);
  sub_258AB9BC0(v195, sub_258AB9898);
  sub_258AB9BC0(v131, sub_258AB99AC);
  v220 = v245[4];
  v221 = v245[5];
  *v222 = v245[6];
  v216 = v245[0];
  v217 = v245[1];
  v218 = v245[2];
  v206[0] = v197;
  v206[1] = v189;
  v207 = v170;
  *v208 = *v243;
  *&v208[3] = *&v243[3];
  v209 = v147;
  v210 = 0;
  v211 = 1;
  v212 = v241;
  v213 = v242;
  v214 = v188;
  v215 = 0;
  *&v222[15] = *(&v245[6] + 15);
  v219 = v245[3];
  sub_258AB9BC0(v206, sub_258AB98CC);
  v238 = v250[4];
  v239 = v250[5];
  *v240 = v250[6];
  v234 = v250[0];
  v235 = v250[1];
  v236 = v250[2];
  v223 = v193;
  v224 = v192;
  v225 = v190;
  *v226 = *v248;
  *&v226[3] = *&v248[3];
  v227 = v194;
  v228 = 0;
  v229 = 1;
  v230 = v246;
  v231 = v247;
  v232 = v191;
  v233 = 0;
  *&v240[15] = *(&v250[6] + 15);
  v237 = v250[3];
  sub_258AB9BC0(&v223, sub_258AB98CC);
  return sub_258AB9BC0(v196, sub_258AB9898);
}

uint64_t sub_258AB96C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258AB9704();
  return sub_258AB8478(v1, (a1 + *(v3 + 44)));
}

void sub_258AB9704()
{
  if (!qword_27F970DD0)
  {
    sub_258AB979C(255, &qword_27F970DD8, sub_258AB9800, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970DD0);
    }
  }
}

void sub_258AB979C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258AB9800()
{
  if (!qword_27F970DE0)
  {
    sub_258AB9898(255);
    sub_258AB98CC(255);
    sub_258AB99AC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F970DE0);
    }
  }
}

void sub_258AB98F4()
{
  if (!qword_27F970DF0)
  {
    sub_258AB9B08(255, &qword_27F96D1F8, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_2589BFC30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970DF0);
    }
  }
}

void sub_258AB99E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AB9A7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AB9B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258AB9B5C()
{
  v1 = *(type metadata accessor for NotificationsSetupPhaseContent() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 24);
  return (*(v2 + 16))();
}

uint64_t sub_258AB9BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AB9C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB9C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB9CF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258AB9D38()
{
  if (!qword_27F970E18)
  {
    sub_258AB979C(255, &qword_27F970DD8, sub_258AB9800, MEMORY[0x277CE14B8]);
    sub_258AB9DCC();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970E18);
    }
  }
}

unint64_t sub_258AB9DCC()
{
  result = qword_27F970E20;
  if (!qword_27F970E20)
  {
    sub_258AB979C(255, &qword_27F970DD8, sub_258AB9800, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970E20);
  }

  return result;
}

uint64_t _s5EntryVMa()
{
  result = qword_27F970E28;
  if (!qword_27F970E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258AB9EC8()
{
  result = sub_258B000C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

int *sub_258AB9F98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B000C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 UUID];
  sub_258B000B4();

  v10 = [a1 reflectiveInterval];
  v33 = v5;
  v34 = v4;
  if (v10 == 2)
  {
    [a1 valenceClassification];
    [a1 reflectiveInterval];
    v11 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
  }

  else
  {
    if (v10 != 1)
    {
      v32 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_7;
    }

    [a1 valenceClassification];
    v11 = HKUILocalizedStringForValenceClassification();
  }

  v12 = v11;
  v32 = sub_258B02B14();
  v14 = v13;

LABEL_7:
  v15 = sub_258ABA3E0();
  v17 = v16;
  v18 = sub_258ABA5F4();
  v20 = v19;
  v21 = sub_258ABA890();
  v23 = v22;
  [a1 valence];
  v25 = v24;

  (*(v33 + 32))(a2, v8, v34);
  result = _s5EntryVMa();
  v27 = (a2 + result[5]);
  *v27 = v32;
  v27[1] = v14;
  v28 = (a2 + result[6]);
  *v28 = v15;
  v28[1] = v17;
  v29 = (a2 + result[7]);
  *v29 = v18;
  v29[1] = v20;
  v30 = (a2 + result[8]);
  *v30 = v21;
  v30[1] = v23;
  *(a2 + result[9]) = v25;
  return result;
}

uint64_t sub_258ABA1B8()
{
  sub_258B000C4();
  sub_258ABB140(&qword_27F96EAB0, MEMORY[0x277CC95F0]);
  sub_258B02A24();
  v1 = _s5EntryVMa();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  sub_258B02B74();
  v5 = (v0 + v1[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_258B02B74();
  v8 = (v0 + v1[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_258B02B74();
  v11 = (v0 + v1[8]);
  v12 = *v11;
  v13 = v11[1];
  sub_258B02B74();
  v14 = *(v0 + v1[9]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  return MEMORY[0x259C93B40](*&v14);
}

uint64_t sub_258ABA2B0()
{
  sub_258B03514();
  sub_258ABA1B8();
  return sub_258B03554();
}

uint64_t sub_258ABA2F4()
{
  sub_258B03514();
  sub_258ABA1B8();
  return sub_258B03554();
}

uint64_t sub_258ABA330@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B000C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_258ABA3E0()
{
  v0 = sub_258B02E44();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_258AA91EC(0, v1, 0);
    v2 = 0;
    while (v2 < *(v0 + 16))
    {
      v3 = *(v0 + 8 * v2 + 32);
      v4 = HKUILocalizedStringForStateOfMindLabel();
      v5 = sub_258B02B14();
      v7 = v6;

      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258AA91EC((v8 > 1), v9 + 1, 1);
      }

      ++v2;
      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:

  if (qword_27F96C240 != -1)
  {
LABEL_10:
    swift_once();
  }

  sub_258AFFD94();
  sub_2589FCE08();
  sub_258ABB140(&qword_280DF8940, sub_2589FCE08);
  v11 = sub_258B02A34();

  return v11;
}

uint64_t sub_258ABA5F4()
{
  sub_258ABAFEC(0, &qword_27F9702D0, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = *(sub_258B02E54() + 16);

  v6 = [v0 context];
  if (!v6)
  {
    if (!v5)
    {
      return 0;
    }

    return sub_258ABACCC();
  }

  v7 = v6;
  v8 = sub_258B02B14();
  v10 = v9;

  if (!v5)
  {
    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  if (!v10)
  {
    return sub_258ABACCC();
  }

  v11 = sub_258B000E4();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_258ABAFEC(0, &qword_27F9702D8, sub_258ABB050, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_258B2BE60;
  v13 = sub_258ABACCC();
  v15 = v14;
  v16 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v17 = sub_258A829A4();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = v8;
  *(v12 + 80) = v10;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v18 = sub_258AFFD94();
  if (*(v12 + 16))
  {
    v19 = sub_258B02B24();
  }

  else
  {
    v19 = v18;
  }

  sub_258ABB0B4(v4);
  return v19;
}

uint64_t sub_258ABA890()
{
  v1 = v0;
  v2 = sub_258AFFF74();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258AFFF24();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_258AFFF34();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258AFFFD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v33 = sub_258B00084();
  v31 = *(v33 - 8);
  v24 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [v1 startDate];
  sub_258B00034();

  MEMORY[0x259C90120]();
  sub_258AFFF14();
  sub_258AFFF04();
  (*(v34 + 8))(v8, v35);
  sub_258AFFEC4();
  (*(v9 + 8))(v12, v32);
  v28 = *(v14 + 8);
  v28(v18, v13);
  v29 = v36;
  sub_258AFFF64();
  sub_258AFFFB4();
  (*(v37 + 8))(v29, v38);
  v28(v21, v13);
  sub_258ABB140(&qword_27F9702C8, MEMORY[0x277CC9428]);
  sub_258B00064();
  v28(v23, v13);
  (*(v31 + 8))(v26, v33);
  return v39;
}

uint64_t sub_258ABACCC()
{
  v0 = sub_258B02E54();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_258AA91EC(0, v1, 0);
    v2 = 0;
    while (v2 < *(v0 + 16))
    {
      v3 = *(v0 + 8 * v2 + 32);
      v4 = HKUILocalizedStringForStateOfMindDomain();
      v5 = sub_258B02B14();
      v7 = v6;

      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258AA91EC((v8 > 1), v9 + 1, 1);
      }

      ++v2;
      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:

  if (qword_27F96C240 != -1)
  {
LABEL_10:
    swift_once();
  }

  sub_258AFFD94();
  sub_2589FCE08();
  sub_258ABB140(&qword_280DF8940, sub_2589FCE08);
  v11 = sub_258B02A34();

  return v11;
}

BOOL sub_258ABAEE0(uint64_t a1, uint64_t a2)
{
  if ((sub_258B000A4() & 1) == 0)
  {
    return 0;
  }

  v4 = _s5EntryVMa();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_258B03454() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_258B03454() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (v19 || (sub_258B03454()) && ((v20 = v4[8], v21 = *(a1 + v20), v22 = *(a1 + v20 + 8), v23 = (a2 + v20), v21 == *v23) ? (v24 = v22 == v23[1]) : (v24 = 0), v24 || (sub_258B03454()))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

void sub_258ABAFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258ABB050()
{
  result = qword_27F9702E0;
  if (!qword_27F9702E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F9702E0);
  }

  return result;
}

uint64_t sub_258ABB0B4(uint64_t a1)
{
  sub_258ABAFEC(0, &qword_27F9702D0, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258ABB140(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258ABB19C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s16EntryMomentsViewVMa()
{
  result = qword_27F970E40;
  if (!qword_27F970E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ABB260()
{
  sub_258ABB19C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258ABB19C(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258ABB19C(319, &qword_27F96EAD0, _s5EntryVMa, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_258ABC584(319, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258ABB3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABB19C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2589DC538(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_258ABB5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  sub_258ABC694(0, &qword_27F970E98, _s20EntryMomentsDataViewVMa);
  v129 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v105 = (&v103 - v5);
  sub_258ABC5D4(0, &qword_27F970EA0, MEMORY[0x277CE0330]);
  v124 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v126 = &v103 - v8;
  sub_258ABC694(0, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa);
  v125 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v104 = (&v103 - v11);
  sub_258ABC5D4(0, &qword_27F970E88, MEMORY[0x277CE0338]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v128 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v103 - v16;
  v17 = sub_258B02554();
  v119 = *(v17 - 8);
  v120 = v17;
  v18 = *(v119 + 64);
  MEMORY[0x28223BE20](v17);
  v118 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_258B006A4();
  v113 = *(v117 - 8);
  v20 = *(v113 + 64);
  v21 = MEMORY[0x28223BE20](v117);
  v116 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v115 = &v103 - v23;
  v24 = sub_258B019F4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABC41C(0);
  v114 = v33;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABC3E8(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v123 = &v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v131 = &v103 - v41;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v132 = sub_258AFFD94();
  v133 = v42;
  sub_2589BFF58();
  v112 = sub_258B01B44();
  v111 = v43;
  v45 = v44;
  v110 = v46;
  KeyPath = swift_getKeyPath();
  v108 = v45 & 1;
  LOBYTE(v132) = v45 & 1;
  v47 = _s16EntryMomentsViewVMa();
  v48 = *(v47 + 20);
  sub_258AC1060(v32);
  sub_258ABCD3C(v32, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01A34();
  (*(v25 + 104))(v28, *MEMORY[0x277CE0A10], v24);
  v107 = sub_258B01A14();

  (*(v25 + 8))(v28, v24);
  v106 = swift_getKeyPath();
  v121 = v48;
  sub_258AC1060(v32);
  v122 = v32;
  sub_258ABCD3C(v32, type metadata accessor for StateOfMindTimeline.Styles);
  v49 = [objc_opt_self() secondaryLabelColor];
  v50 = sub_258B01F94();
  v51 = v115;
  sub_258ABB3E4(v115);
  v52 = v113;
  v54 = v116;
  v53 = v117;
  (*(v113 + 104))(v116, *MEMORY[0x277CDF3D0], v117);
  v55 = sub_258B00694();
  v56 = *(v52 + 8);
  v56(v54, v53);
  v56(v51, v53);
  v58 = v119;
  v57 = v120;
  v59 = MEMORY[0x277CE13B0];
  if ((v55 & 1) == 0)
  {
    v59 = MEMORY[0x277CE13B8];
  }

  v60 = v118;
  (*(v119 + 104))(v118, *v59, v120);
  (*(v58 + 32))(&v36[*(v114 + 36)], v60, v57);
  v61 = v111;
  *v36 = v112;
  *(v36 + 1) = v61;
  v36[16] = v108;
  v62 = KeyPath;
  *(v36 + 3) = v110;
  *(v36 + 4) = v62;
  *(v36 + 20) = 0;
  v36[42] = 1;
  v63 = v107;
  *(v36 + 6) = v106;
  *(v36 + 7) = v63;
  *(v36 + 8) = v50;
  v64 = v47;
  v65 = *(a1 + *(v47 + 28));
  sub_258B003E4();
  v66 = v65;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v66 = sub_258A74828(0, *(v65 + 16) + 1, 1, v65);
  }

  v68 = *(v66 + 2);
  v67 = *(v66 + 3);
  if (v68 >= v67 >> 1)
  {
    v66 = sub_258A74828((v67 > 1), v68 + 1, 1, v66);
  }

  *(v66 + 2) = v68 + 1;
  v69 = &v66[16 * v68];
  *(v69 + 4) = 0x6E6F6974706143;
  *(v69 + 5) = 0xE700000000000000;
  v132 = &unk_2869D4670;
  v70 = sub_258B003E4();
  sub_2589FC8C8(v70);
  sub_258ABC584(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  sub_258ABC750();
  sub_258B01DD4();

  sub_258ABCD3C(v36, sub_258ABC41C);
  v71 = *(a1 + *(v64 + 24));
  if (*(v71 + 16))
  {
    v72 = swift_getKeyPath();
    v73 = v105;
    *v105 = v72;
    sub_258ABB19C(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v74 = _s20EntryMomentsDataViewVMa();
    *(v73 + *(v74 + 20)) = v71;
    *(v73 + *(v74 + 24)) = v65;
    sub_258B003E4();
    sub_258B003E4();
    v75 = sub_258B01884();
    v76 = v122;
    sub_258AC1060(v122);
    sub_258ABCD3C(v76, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B00654();
    v77 = v73 + *(v129 + 36);
    *v77 = v75;
    *(v77 + 8) = v78;
    *(v77 + 16) = v79;
    *(v77 + 24) = v80;
    *(v77 + 32) = v81;
    *(v77 + 40) = 0;
    v82 = &qword_27F970E98;
    v83 = _s20EntryMomentsDataViewVMa;
    sub_258ABCD9C(v73, v126, &qword_27F970E98, _s20EntryMomentsDataViewVMa);
  }

  else
  {
    v85 = swift_getKeyPath();
    v73 = v104;
    *v104 = v85;
    v86 = MEMORY[0x277CDF458];
    sub_258ABB19C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v87 = _s21EntryMomentsEmptyViewVMa();
    v88 = *(v87 + 20);
    *(v73 + v88) = swift_getKeyPath();
    sub_258ABB19C(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v86);
    swift_storeEnumTagMultiPayload();
    *(v73 + *(v87 + 24)) = v65;
    sub_258B003E4();
    v89 = sub_258B01884();
    v90 = v122;
    sub_258AC1060(v122);
    sub_258ABCD3C(v90, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B00654();
    v91 = v126;
    v92 = v73 + *(v125 + 36);
    *v92 = v89;
    *(v92 + 8) = v93;
    *(v92 + 16) = v94;
    *(v92 + 24) = v95;
    *(v92 + 32) = v96;
    *(v92 + 40) = 0;
    v82 = &qword_27F970E90;
    v83 = _s21EntryMomentsEmptyViewVMa;
    sub_258ABCD9C(v73, v91, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa);
  }

  swift_storeEnumTagMultiPayload();
  sub_258ABC9D4();
  sub_258ABCAA8();
  v84 = v127;
  sub_258B012A4();
  sub_258ABCB7C(v73, v82, v83);
  v97 = v131;
  v98 = v123;
  sub_258ABCBE0(v131, v123);
  v99 = v128;
  sub_258ABCC44(v84, v128);
  v100 = v130;
  sub_258ABCBE0(v98, v130);
  sub_258ABC35C();
  sub_258ABCC44(v99, v100 + *(v101 + 48));
  sub_258ABCCC4(v84);
  sub_258ABCD3C(v97, sub_258ABC3E8);
  sub_258ABCCC4(v99);
  return sub_258ABCD3C(v98, sub_258ABC3E8);
}

uint64_t sub_258ABC280@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B011A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258ABC2C4();
  return sub_258ABB5F0(v1, a1 + *(v3 + 44));
}

void sub_258ABC2C4()
{
  if (!qword_27F970E50)
  {
    sub_258ABB19C(255, &qword_27F970E58, sub_258ABC35C, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970E50);
    }
  }
}

void sub_258ABC35C()
{
  if (!qword_27F970E60)
  {
    sub_258ABC3E8(255);
    sub_258ABC5D4(255, &qword_27F970E88, MEMORY[0x277CE0338]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970E60);
    }
  }
}

void sub_258ABC484(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258ABC4F8()
{
  if (!qword_27F970E80)
  {
    sub_258ABC694(255, &qword_27F96ECF8, sub_2589BFBAC);
    sub_2589BF83C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970E80);
    }
  }
}

void sub_258ABC584(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258ABC5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258ABC694(255, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa);
    v7 = v6;
    sub_258ABC694(255, &qword_27F970E98, _s20EntryMomentsDataViewVMa);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258ABC694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258ABC6F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00E84();
  *a1 = result;
  return result;
}

uint64_t sub_258ABC724(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B00E94();
}

unint64_t sub_258ABC750()
{
  result = qword_27F970EA8;
  if (!qword_27F970EA8)
  {
    sub_258ABC41C(255);
    sub_258ABC7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EA8);
  }

  return result;
}

unint64_t sub_258ABC7D0()
{
  result = qword_27F970EB0;
  if (!qword_27F970EB0)
  {
    sub_258ABC450(255);
    sub_258ABC880();
    sub_258ABCE14(&qword_27F96C930, sub_258A563B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EB0);
  }

  return result;
}

unint64_t sub_258ABC880()
{
  result = qword_27F970EB8;
  if (!qword_27F970EB8)
  {
    sub_258ABC4F8();
    sub_258ABC930();
    sub_258ABCE14(&qword_27F96C938, sub_2589BF83C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EB8);
  }

  return result;
}

unint64_t sub_258ABC930()
{
  result = qword_27F970EC0;
  if (!qword_27F970EC0)
  {
    sub_258ABC694(255, &qword_27F96ECF8, sub_2589BFBAC);
    sub_2589DC82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EC0);
  }

  return result;
}

unint64_t sub_258ABC9D4()
{
  result = qword_27F970EC8;
  if (!qword_27F970EC8)
  {
    sub_258ABC694(255, &qword_27F970E90, _s21EntryMomentsEmptyViewVMa);
    sub_258ABCE14(&qword_27F970ED0, _s21EntryMomentsEmptyViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EC8);
  }

  return result;
}

unint64_t sub_258ABCAA8()
{
  result = qword_27F970ED8;
  if (!qword_27F970ED8)
  {
    sub_258ABC694(255, &qword_27F970E98, _s20EntryMomentsDataViewVMa);
    sub_258ABCE14(&qword_27F970EE0, _s20EntryMomentsDataViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970ED8);
  }

  return result;
}

uint64_t sub_258ABCB7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_258ABC694(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258ABCBE0(uint64_t a1, uint64_t a2)
{
  sub_258ABC3E8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ABCC44(uint64_t a1, uint64_t a2)
{
  sub_258ABC5D4(0, &qword_27F970E88, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258ABCCC4(uint64_t a1)
{
  sub_258ABC5D4(0, &qword_27F970E88, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258ABCD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258ABCD9C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_258ABC694(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258ABCE14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258ABCE5C()
{
  if (!qword_27F970EF0)
  {
    sub_258ABB19C(255, &qword_27F970E58, sub_258ABC35C, MEMORY[0x277CE14B8]);
    sub_258ABCEF0();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970EF0);
    }
  }
}

unint64_t sub_258ABCEF0()
{
  result = qword_27F970EF8;
  if (!qword_27F970EF8)
  {
    sub_258ABB19C(255, &qword_27F970E58, sub_258ABC35C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970EF8);
  }

  return result;
}

uint64_t sub_258ABCF78(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
  swift_beginAccess();
  sub_258ABEFE8(a1, v3);
  swift_endAccess();
  v4 = type metadata accessor for StateOfMindCalendarDay();
  v5 = 0;
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v6 = (v3 + *(v4 + 44));
    v7 = *v6;
    v8 = v6[1];
    sub_258B003E4();
    v5 = sub_258B02AD4();
  }

  [v1 setAccessibilityIdentifier_];

  [v1 setNeedsUpdateConfiguration];
  return sub_258ABEF88(a1, sub_258ABE740);
}

uint64_t sub_258ABD260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258ABE77C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a3;
  sub_258ABE82C();
  sub_258ABEE6C(&qword_27F970F78, sub_258ABE82C);
  sub_258B014E4();
  sub_258B01874();
  v13[3] = v5;
  v13[4] = sub_258ABEE6C(&qword_27F970F80, sub_258ABE77C);
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_258B014D4();
  (*(v6 + 8))(v9, v5);
  return MEMORY[0x259C935E0](v13);
}

uint64_t sub_258ABD400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258ABEC08();
  return sub_258ABD448(a1, a2 + *(v4 + 44));
}

uint64_t sub_258ABD448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  sub_258ABEABC(0);
  v133 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v138 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = &v121 - v7;
  v124 = type metadata accessor for StateOfMindCalendarDateView();
  v8 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v10 = (&v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258ABEA80(0);
  v125 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v136 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v121 - v16;
  MEMORY[0x28223BE20](v15);
  v144 = &v121 - v17;
  sub_258ABE740(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v132 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v121 - v22;
  v24 = type metadata accessor for StateOfMindCalendarDay();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v121 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v121 - v29;
  v131 = sub_258B023A4();
  v142 = *(v131 - 8);
  v31 = *(v142 + 64);
  v32 = MEMORY[0x28223BE20](v131);
  v129 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v121 - v34;
  sub_258ABE9D8(0);
  v127 = v36;
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v135 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v126 = &v121 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v134 = &v121 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v121 - v44;
  sub_258ABE99C(0);
  v47 = v46;
  v48 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v139 = &v121 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v121 - v52;
  MEMORY[0x28223BE20](v51);
  v143 = &v121 - v54;
  sub_258B02394();
  v130 = a1;
  v55 = (a1 + OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day);
  swift_beginAccess();
  sub_258ABED9C(v55, v23, sub_258ABE740);
  v56 = *(v25 + 48);
  v128 = v25 + 48;
  v141 = v56;
  if (v56(v23, 1, v24) == 1)
  {
    sub_258ABEF88(v23, sub_258ABE740);
    v57 = v24;
  }

  else
  {
    sub_258ABEE04(v23, v30, type metadata accessor for StateOfMindCalendarDay);
    v58 = *&v30[*(v24 + 36)];
    sub_258ABEF88(v30, type metadata accessor for StateOfMindCalendarDay);
    v59 = 1.0;
    v57 = v24;
    if (v58 < 14)
    {
      goto LABEL_5;
    }
  }

  v59 = 0.0;
LABEL_5:
  v60 = *(v142 + 32);
  v61 = v35;
  v62 = v131;
  v142 += 32;
  v122 = v60;
  v60(v45, v61, v131);
  v63 = v127;
  *&v45[*(v127 + 36)] = v59;
  v64 = sub_258B01894();
  sub_258B00654();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_258ABEE04(v45, v53, sub_258ABE9D8);
  v73 = &v53[*(v47 + 36)];
  *v73 = v64;
  *(v73 + 1) = v66;
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
  *(v73 + 4) = v72;
  v73[40] = 0;
  sub_258ABEE04(v53, v143, sub_258ABE99C);
  if (v141(v55, 1, v57))
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    v76 = 2;
  }

  else
  {
    v76 = *(v55 + *(v57 + 32));
    v74 = v55[2];
    v75 = v55[3];
    sub_258B003E4();
  }

  v77 = v140;
  *v10 = swift_getKeyPath();
  sub_258ABED38(0, &qword_27F96D0B8, MEMORY[0x277CE02A8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v78 = v124;
  *(v10 + *(v124 + 20)) = v76;
  v79 = (v10 + *(v78 + 24));
  *v79 = v74;
  v79[1] = v75;
  v80 = sub_258B01894();
  sub_258B00654();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v10;
  v90 = v123;
  sub_258ABEE04(v89, v123, type metadata accessor for StateOfMindCalendarDateView);
  v91 = v90 + *(v125 + 36);
  *v91 = v80;
  *(v91 + 8) = v82;
  *(v91 + 16) = v84;
  *(v91 + 24) = v86;
  *(v91 + 32) = v88;
  *(v91 + 40) = 0;
  sub_258ABEE04(v90, v144, sub_258ABEA80);
  sub_258ABDFF8(v130, v77);
  sub_258B024F4();
  sub_258B00854();
  sub_258ABEAF8();
  v93 = (v77 + *(v92 + 36));
  v94 = v146;
  *v93 = v145;
  v93[1] = v94;
  v93[2] = v147;
  LOBYTE(v90) = sub_258B01894();
  sub_258B00654();
  v95 = v77 + *(v133 + 36);
  *v95 = v90;
  *(v95 + 8) = v96;
  *(v95 + 16) = v97;
  *(v95 + 24) = v98;
  *(v95 + 32) = v99;
  *(v95 + 40) = 0;
  v100 = v77;
  if (v141(v55, 1, v57))
  {
    v101 = MEMORY[0x277D84F90];
  }

  else
  {
    v101 = v55[1];
    sub_258B003E4();
  }

  v102 = v132;
  v103 = v129;
  sub_258B02394();
  sub_258ABED9C(v55, v102, sub_258ABE740);
  if (v141(v102, 1, v57) == 1)
  {
    sub_258ABEF88(v102, sub_258ABE740);
LABEL_14:
    v107 = 0.0;
    goto LABEL_15;
  }

  v104 = v102;
  v105 = v121;
  sub_258ABEE04(v104, v121, type metadata accessor for StateOfMindCalendarDay);
  v106 = *(v105 + *(v57 + 36));
  sub_258ABEF88(v105, type metadata accessor for StateOfMindCalendarDay);
  v107 = 1.0;
  if (v106 < 7)
  {
    goto LABEL_14;
  }

LABEL_15:
  v108 = v126;
  v122(v126, v103, v62);
  *&v108[*(v63 + 36)] = v107;
  v109 = v108;
  v110 = v134;
  sub_258ABEE04(v109, v134, sub_258ABE9D8);
  v111 = v139;
  sub_258ABED9C(v143, v139, sub_258ABE99C);
  v112 = v136;
  sub_258ABED9C(v144, v136, sub_258ABEA80);
  v113 = v138;
  sub_258ABED9C(v100, v138, sub_258ABEABC);
  v114 = v135;
  sub_258ABED9C(v110, v135, sub_258ABE9D8);
  v115 = v111;
  v116 = v137;
  sub_258ABED9C(v115, v137, sub_258ABE99C);
  sub_258ABE8F4();
  v118 = v117;
  sub_258ABED9C(v112, v116 + v117[12], sub_258ABEA80);
  sub_258ABED9C(v113, v116 + v118[16], sub_258ABEABC);
  *(v116 + v118[20]) = v101;
  v119 = v116 + v118[24];
  *v119 = 0;
  *(v119 + 8) = 1;
  sub_258ABED9C(v114, v116 + v118[28], sub_258ABE9D8);
  sub_258B003E4();
  sub_258ABEF88(v110, sub_258ABE9D8);
  sub_258ABEF88(v140, sub_258ABEABC);
  sub_258ABEF88(v144, sub_258ABEA80);
  sub_258ABEF88(v143, sub_258ABE99C);
  sub_258ABEF88(v114, sub_258ABE9D8);

  sub_258ABEF88(v113, sub_258ABEABC);
  sub_258ABEF88(v112, sub_258ABEA80);
  return sub_258ABEF88(v139, sub_258ABE99C);
}

uint64_t sub_258ABDFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41[5] = a2;
  v3 = MEMORY[0x277CE0330];
  sub_258ABEA14(0, &qword_27F970F90, sub_258ABEBC4, MEMORY[0x277CE1180], MEMORY[0x277CE0330]);
  v41[4] = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  sub_258ABEA14(0, &qword_27F970F98, sub_258A04CF4, &type metadata for StateOfMindCalendarPlaceholderView, v3);
  v41[2] = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  sub_258ABEBC4(0);
  v41[3] = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A04CF4();
  v41[1] = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258ABE740(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StateOfMindCalendarDay();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1 + OBJC_IVAR____TtC14MentalHealthUI26StateOfMindCalendarDayCell_day;
  swift_beginAccess();
  sub_258ABED9C(v29, v23, sub_258ABE740);
  v30 = *(v25 + 48);
  if (v30(v23, 1, v24) == 1)
  {
    v31 = sub_258ABE740;
    v32 = v23;
  }

  else
  {
    sub_258ABEE04(v23, v28, type metadata accessor for StateOfMindCalendarDay);
    if (*v28)
    {
      v33 = *v28;
      [v33 valence];
      LOBYTE(v42[0]) = 0;
      StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(v42, &v43, v34);
      v35 = (v28 + *(v24 + 40));
      v36 = v35[1];
      v42[0] = *v35;
      v42[1] = v36;
      sub_258B003E4();
      MEMORY[0x259C931B0](0x6567616D492ELL, 0xE600000000000000);
      sub_2589DC7D8();
      sub_258B01DD4();

      sub_258ABED9C(v19, v11, sub_258A04CF4);
      swift_storeEnumTagMultiPayload();
      sub_258A65E1C();
      sub_258ABEEB4();
      sub_258B012A4();
      sub_258ABED9C(v15, v7, sub_258ABEBC4);
      swift_storeEnumTagMultiPayload();
      sub_258ABEF08();
      sub_258B012A4();

      sub_258ABEF88(v15, sub_258ABEBC4);
      sub_258ABEF88(v19, sub_258A04CF4);
      v37 = type metadata accessor for StateOfMindCalendarDay;
      v38 = v28;
      return sub_258ABEF88(v38, v37);
    }

    v31 = type metadata accessor for StateOfMindCalendarDay;
    v32 = v28;
  }

  sub_258ABEF88(v32, v31);
  if (!v30(v29, 1, v24))
  {
    v39 = *(v29 + *(v24 + 32));
  }

  if (sub_258B002A4())
  {
    *v7 = 0;
    v7[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_258ABEF08();
    return sub_258B012A4();
  }

  swift_storeEnumTagMultiPayload();
  sub_258A65E1C();
  sub_258ABEEB4();
  sub_258B012A4();
  sub_258ABED9C(v15, v7, sub_258ABEBC4);
  swift_storeEnumTagMultiPayload();
  sub_258ABEF08();
  sub_258B012A4();
  v37 = sub_258ABEBC4;
  v38 = v15;
  return sub_258ABEF88(v38, v37);
}

uint64_t type metadata accessor for StateOfMindCalendarDayCell()
{
  result = qword_27F970F00;
  if (!qword_27F970F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ABE6B0()
{
  sub_258ABE740(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_258ABE77C()
{
  if (!qword_27F970F10)
  {
    sub_258ABE82C();
    sub_258ABEE6C(&qword_27F970F78, sub_258ABE82C);
    v0 = sub_258B014F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970F10);
    }
  }
}

void sub_258ABE82C()
{
  if (!qword_27F970F18)
  {
    sub_258ABE8C0(255);
    sub_258ABEE6C(&qword_27F970F70, sub_258ABE8C0);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970F18);
    }
  }
}

void sub_258ABE8F4()
{
  if (!qword_27F970F28)
  {
    sub_258ABE99C(255);
    sub_258ABEA80(255);
    sub_258ABEABC(255);
    sub_258ABE9D8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F970F28);
    }
  }
}

void sub_258ABEA14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_258ABEAF8()
{
  if (!qword_27F970F50)
  {
    sub_258ABED38(255, &qword_27F970F58, sub_258ABEB88, MEMORY[0x277CE0FA8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970F50);
    }
  }
}

void sub_258ABEC08()
{
  if (!qword_27F970F88)
  {
    sub_258ABE8C0(255);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970F88);
    }
  }
}

uint64_t sub_258ABEC70(uint64_t a1)
{
  v2 = sub_258B01184();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D74();
}

void sub_258ABED38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258ABED9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ABEE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258ABEE6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258ABEEB4()
{
  result = qword_27F970FA0;
  if (!qword_27F970FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FA0);
  }

  return result;
}

unint64_t sub_258ABEF08()
{
  result = qword_27F970FA8;
  if (!qword_27F970FA8)
  {
    sub_258ABEBC4(255);
    sub_258A65E1C();
    sub_258ABEEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FA8);
  }

  return result;
}

uint64_t sub_258ABEF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258ABEFE8(uint64_t a1, uint64_t a2)
{
  sub_258ABE740(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s13EntryBaseViewVMa()
{
  result = qword_27F970FB0;
  if (!qword_27F970FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258ABF0C0()
{
  sub_258AC1E98(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StateOfMindTimeline.DaySummary();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258ABF198()
{
  v1 = v0;
  v2 = sub_258B01504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2AE68();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CE0570];
  v12 = MEMORY[0x277D83D88];
  sub_258AC1E98(0, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  (*(v3 + 104))(&v29 - v18, *MEMORY[0x277CE0560], v2);
  (*(v3 + 56))(v19, 0, 1, v2);
  v20 = *(v7 + 56);
  sub_258AC12E8(v1, v10, &qword_27F96DE50, v11, v12);
  sub_258AC12E8(v19, &v10[v20], &qword_27F96DE50, v11, v12);
  v21 = *(v3 + 48);
  if (v21(v10, 1, v2) != 1)
  {
    sub_258AC12E8(v10, v17, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    if (v21(&v10[v20], 1, v2) != 1)
    {
      v23 = &v10[v20];
      v24 = v30;
      (*(v3 + 32))(v30, v23, v2);
      sub_258AC1AE0(&qword_27F96EAA8, MEMORY[0x277CE0570]);
      v22 = sub_258B02AA4();
      v25 = *(v3 + 8);
      v25(v24, v2);
      v26 = MEMORY[0x277CE0570];
      v27 = MEMORY[0x277D83D88];
      sub_258AC1358(v19, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
      v25(v17, v2);
      sub_258AC1358(v10, &qword_27F96DE50, v26, v27);
      return v22 & 1;
    }

    sub_258AC1358(v19, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
    (*(v3 + 8))(v17, v2);
    goto LABEL_6;
  }

  sub_258AC1358(v19, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  if (v21(&v10[v20], 1, v2) != 1)
  {
LABEL_6:
    sub_258AC1094(v10, sub_258A2AE68);
    v22 = 0;
    return v22 & 1;
  }

  sub_258AC1358(v10, &qword_27F96DE50, MEMORY[0x277CE0570], MEMORY[0x277D83D88]);
  v22 = 1;
  return v22 & 1;
}

__n128 sub_258ABF64C@<Q0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v118 = &v106[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v115 = &v106[-v7];
  MEMORY[0x28223BE20](v6);
  v9 = &v106[-v8];
  v10 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = &v106[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v106[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v106[-v17];
  sub_258AC0AA0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v106[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0CFC(0);
  v109 = v23;
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v106[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0D24(0);
  v110 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v113 = &v106[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0D4C(0);
  v112 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v116 = &v106[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0D74(0);
  v114 = v33;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v119 = &v106[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258AC0DA8(0, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
  v111 = v36;
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v120 = &v106[-v38];
  *v22 = sub_258B011A4();
  *(v22 + 1) = 0;
  v22[16] = 0;
  sub_258AC0FDC();
  sub_258AC0068(v1, &v22[*(v39 + 44)]);
  v40 = sub_258B01864();
  v122 = v1;
  sub_258AC1550(&qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, sub_2589FE604, v18);
  v41 = v10;
  sub_258AC115C(&v18[*(v10 + 48)], v9, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AC1094(v18, type metadata accessor for StateOfMindTimeline.Styles);
  if (v9[*(v2 + 24)])
  {
    v42 = &v9[*(v2 + 20)];
    v43 = v2;
    if ((sub_258B00A84() & 1) == 0)
    {
      sub_258ABF198();
    }

    sub_258AC1094(v9, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  }

  else
  {
    v43 = v2;
    sub_258AC1094(v9, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  }

  sub_258B00654();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_258AC10F4(v22, v26, sub_258AC0AA0);
  v52 = &v26[*(v109 + 9)];
  *v52 = v40;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v107 = sub_258B01884();
  v108 = sub_2589FE604;
  v109 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258AC1550(&qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, sub_2589FE604, v16);
  v53 = v115;
  sub_258AC115C(&v16[*(v41 + 48)], v115, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AC1094(v16, type metadata accessor for StateOfMindTimeline.Styles);
  v54 = v53[*(v43 + 24)];
  sub_258AC1094(v53, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258B00654();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v113;
  sub_258AC10F4(v26, v113, sub_258AC0CFC);
  v64 = &v63[*(v110 + 36)];
  *v64 = v107;
  *(v64 + 1) = v56;
  *(v64 + 2) = v58;
  *(v64 + 3) = v60;
  *(v64 + 4) = v62;
  v64[40] = 0;
  LODWORD(v115) = sub_258B01894();
  v65 = v117;
  sub_258AC1550(&qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v108, v117);
  v66 = v118;
  sub_258AC115C(&v65[*(v41 + 48)], v118, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258AC1094(v65, type metadata accessor for StateOfMindTimeline.Styles);
  v67 = v66[*(v43 + 24)];
  sub_258AC1094(v66, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  sub_258B00654();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v116;
  sub_258AC10F4(v63, v116, sub_258AC0D24);
  v77 = &v76[*(v112 + 36)];
  *v77 = v115;
  *(v77 + 1) = v69;
  *(v77 + 2) = v71;
  *(v77 + 3) = v73;
  *(v77 + 4) = v75;
  v77[40] = 0;
  sub_258B01884();
  v78 = _s13EntryBaseViewVMa();
  v79 = v122;
  v80 = *(v122 + *(v78 + 24));
  sub_258B00654();
  v130 = v81;
  v131 = v82;
  v132 = v83;
  v133 = v84;
  v134 = 0;
  v85 = v119;
  v86 = &v119[*(v114 + 36)];
  sub_258B01544();
  sub_258AC10F4(v76, v85, sub_258AC0D4C);
  v87 = *(v78 + 20);
  v88 = v120;
  v89 = &v120[*(v111 + 36)];
  v90 = _s22DaySummaryGradientViewVMa();
  sub_258AC115C(v79 + v87, v89 + *(v90 + 24), type metadata accessor for StateOfMindTimeline.DaySummary);
  *(v89 + *(v90 + 20)) = swift_getKeyPath();
  v91 = MEMORY[0x277CDF458];
  sub_258AC1E98(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v89 = swift_getKeyPath();
  sub_258AC1E98(0, &qword_27F96CC08, v109, v91);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v91) = sub_258B01884();
  v92 = sub_258B00B44();
  sub_258AC0EA4(0, &qword_27F971028, _s22DaySummaryGradientViewVMa);
  v94 = v89 + *(v93 + 36);
  *v94 = v92;
  v94[8] = v91;
  v95 = sub_258B024F4();
  v97 = v96;
  sub_258AC0E1C();
  v99 = (v89 + *(v98 + 36));
  *v99 = v95;
  v99[1] = v97;
  sub_258AC10F4(v85, v88, sub_258AC0D74);
  sub_258B024F4();
  sub_258B00C94();
  v100 = v121;
  sub_258AC11C4(v88, v121);
  sub_258AC1258();
  v102 = v100 + *(v101 + 36);
  v103 = v128;
  *(v102 + 64) = v127;
  *(v102 + 80) = v103;
  *(v102 + 96) = v129;
  v104 = v124;
  *v102 = v123;
  *(v102 + 16) = v104;
  result = v126;
  *(v102 + 32) = v125;
  *(v102 + 48) = result;
  return result;
}

uint64_t sub_258AC0068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  sub_258AC1E98(0, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
  v82 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v72 = v69 - v5;
  v74 = _s16EntryMomentsViewVMa();
  v6 = *(*(v74 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v74);
  v76 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = (v69 - v9);
  v10 = _s18EntrySeparatorViewVMa();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v75 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = (v69 - v14);
  v15 = MEMORY[0x277D83D88];
  sub_258AC1E98(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v69 - v18;
  v71 = _s12EntryDayViewVMa();
  v20 = *(*(v71 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v71);
  v73 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (v69 - v23);
  sub_258AC13B4(0, &qword_27F971050, MEMORY[0x277CE0330]);
  v79 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v81 = v69 - v27;
  v80 = _s14EntryEmptyViewVMa();
  v28 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v30 = (v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AC1E98(0, &qword_27F96D908, _s5EntryVMa, v15);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v69 - v33;
  v35 = a1 + *(_s13EntryBaseViewVMa() + 20);
  v36 = type metadata accessor for StateOfMindTimeline.DaySummary();
  sub_258AC12E8(v35 + v36[7], v34, &qword_27F96D908, _s5EntryVMa, v15);
  v37 = _s5EntryVMa();
  v38 = (*(*(v37 - 8) + 48))(v34, 1, v37);
  sub_258AC1358(v34, &qword_27F96D908, _s5EntryVMa, v15);
  if (v38 == 1 && !*(*(v35 + v36[8]) + 16))
  {
    v65 = *(v35 + v36[9]);
    *v30 = swift_getKeyPath();
    v66 = MEMORY[0x277CDF458];
    sub_258AC1E98(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v67 = v80;
    v68 = *(v80 + 20);
    *(v30 + v68) = swift_getKeyPath();
    sub_258AC1E98(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v66);
    swift_storeEnumTagMultiPayload();
    *(v30 + *(v67 + 24)) = v65;
    sub_258AC115C(v30, v81, _s14EntryEmptyViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_258AC1AE0(&qword_27F970FE8, _s14EntryEmptyViewVMa);
    sub_258AC0C74();
    sub_258B003E4();
    sub_258B012A4();
    v63 = _s14EntryEmptyViewVMa;
    v62 = v30;
  }

  else
  {
    sub_258AC115C(v35, v19, type metadata accessor for StateOfMindTimeline.DaySummary);
    v39 = *(*(v36 - 1) + 56);
    v39(v19, 0, 1, v36);
    v83 = *(v35 + v36[9]);
    v40 = v24;
    *v24 = swift_getKeyPath();
    v41 = MEMORY[0x277CDF458];
    sub_258AC1E98(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    v69[1] = v42;
    swift_storeEnumTagMultiPayload();
    v43 = v71;
    v44 = *(v71 + 20);
    *(v40 + v44) = swift_getKeyPath();
    sub_258AC1E98(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v41);
    swift_storeEnumTagMultiPayload();
    v45 = *(v43 + 24);
    v39((v40 + v45), 1, 1, v36);
    v46 = v83;
    sub_258B003E4();
    sub_258AC1454(v19, v40 + v45);
    v85 = v46;
    sub_2589FC8C8(&unk_2869D58A8);
    sub_258AC1358(v19, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
    *(v40 + *(v43 + 28)) = v85;
    v70 = v40;
    KeyPath = swift_getKeyPath();
    v48 = v84;
    *v84 = KeyPath;
    swift_storeEnumTagMultiPayload();
    v49 = *(v35 + v36[8]);
    v50 = swift_getKeyPath();
    v51 = v77;
    *v77 = v50;
    swift_storeEnumTagMultiPayload();
    v52 = v74;
    v53 = *(v74 + 20);
    *(v51 + v53) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v51 + *(v52 + 24)) = v49;
    v85 = v83;
    sub_258B003E4();
    sub_258B003E4();
    sub_2589FC8C8(&unk_2869D58D8);
    *(v51 + *(v52 + 28)) = v85;
    v54 = v73;
    sub_258AC115C(v40, v73, _s12EntryDayViewVMa);
    v55 = v48;
    v56 = v75;
    sub_258AC115C(v55, v75, _s18EntrySeparatorViewVMa);
    v57 = v76;
    sub_258AC115C(v51, v76, _s16EntryMomentsViewVMa);
    v58 = v72;
    sub_258AC115C(v54, v72, _s12EntryDayViewVMa);
    sub_258AC0B20();
    v60 = v59;
    sub_258AC115C(v56, v58 + *(v59 + 48), _s18EntrySeparatorViewVMa);
    sub_258AC115C(v57, v58 + *(v60 + 64), _s16EntryMomentsViewVMa);
    sub_258AC1094(v57, _s16EntryMomentsViewVMa);
    sub_258AC1094(v56, _s18EntrySeparatorViewVMa);
    sub_258AC1094(v54, _s12EntryDayViewVMa);
    v61 = MEMORY[0x277CE14B8];
    sub_258AC12E8(v58, v81, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
    swift_storeEnumTagMultiPayload();
    sub_258AC1AE0(&qword_27F970FE8, _s14EntryEmptyViewVMa);
    sub_258AC0C74();
    sub_258B012A4();
    sub_258AC1358(v58, &qword_27F970FD0, sub_258AC0B20, v61);
    sub_258AC1094(v51, _s16EntryMomentsViewVMa);
    sub_258AC1094(v84, _s18EntrySeparatorViewVMa);
    v62 = v70;
    v63 = _s12EntryDayViewVMa;
  }

  return sub_258AC1094(v62, v63);
}

void sub_258AC0AA0()
{
  if (!qword_27F970FC0)
  {
    sub_258AC13B4(255, &qword_27F970FC8, MEMORY[0x277CE0338]);
    sub_258AC0BA8();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970FC0);
    }
  }
}

void sub_258AC0B20()
{
  if (!qword_27F970FD8)
  {
    _s12EntryDayViewVMa();
    _s18EntrySeparatorViewVMa();
    _s16EntryMomentsViewVMa();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970FD8);
    }
  }
}

unint64_t sub_258AC0BA8()
{
  result = qword_27F970FE0;
  if (!qword_27F970FE0)
  {
    sub_258AC13B4(255, &qword_27F970FC8, MEMORY[0x277CE0338]);
    sub_258AC1AE0(&qword_27F970FE8, _s14EntryEmptyViewVMa);
    sub_258AC0C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FE0);
  }

  return result;
}

unint64_t sub_258AC0C74()
{
  result = qword_27F970FF0;
  if (!qword_27F970FF0)
  {
    sub_258AC1E98(255, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970FF0);
  }

  return result;
}

void sub_258AC0DA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AC0E1C()
{
  if (!qword_27F971020)
  {
    sub_258AC0EA4(255, &qword_27F971028, _s22DaySummaryGradientViewVMa);
    sub_258AC0F08();
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971020);
    }
  }
}

void sub_258AC0EA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258AC0F08()
{
  result = qword_27F971030;
  if (!qword_27F971030)
  {
    sub_258AC0EA4(255, &qword_27F971028, _s22DaySummaryGradientViewVMa);
    sub_258AC1AE0(&qword_27F971038, _s22DaySummaryGradientViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971030);
  }

  return result;
}

void sub_258AC0FDC()
{
  if (!qword_27F971040)
  {
    sub_258AC13B4(255, &qword_27F970FC8, MEMORY[0x277CE0338]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971040);
    }
  }
}

uint64_t sub_258AC1094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AC10F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AC115C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AC11C4(uint64_t a1, uint64_t a2)
{
  sub_258AC0DA8(0, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258AC1258()
{
  if (!qword_27F971048)
  {
    sub_258AC0DA8(255, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971048);
    }
  }
}

uint64_t sub_258AC12E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258AC1E98(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258AC1358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258AC1E98(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_258AC13B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s14EntryEmptyViewVMa();
    sub_258AC1E98(255, &qword_27F970FD0, sub_258AC0B20, MEMORY[0x277CE14B8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258AC1454(uint64_t a1, uint64_t a2)
{
  sub_258AC1E98(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AC1550@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v23 = a4;
  v9 = sub_258B00F84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CDF458];
  sub_258AC1E98(0, a1, a2, MEMORY[0x277CDF458]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v22 - v17);
  sub_258AC12E8(v8, &v22 - v17, a1, a2, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return a3(v18, v23);
  }

  v20 = *v18;
  sub_258B02E94();
  v21 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_258AC17AC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AC182C()
{
  result = qword_27F971060;
  if (!qword_27F971060)
  {
    sub_258AC0DA8(255, &qword_27F971018, sub_258AC0D74, sub_258AC0E1C);
    sub_258AC190C();
    sub_258AC1AE0(&qword_27F971090, sub_258AC0E1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971060);
  }

  return result;
}

unint64_t sub_258AC190C()
{
  result = qword_27F971068;
  if (!qword_27F971068)
  {
    sub_258AC0D74(255);
    sub_258AC17AC(&qword_27F971070, sub_258AC0D4C, sub_258AC19F4);
    sub_258AC1AE0(&qword_27F96CB68, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971068);
  }

  return result;
}

unint64_t sub_258AC1A30()
{
  result = qword_27F971080;
  if (!qword_27F971080)
  {
    sub_258AC0CFC(255);
    sub_258AC1AE0(&qword_27F971088, sub_258AC0AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971080);
  }

  return result;
}

uint64_t sub_258AC1AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258AC1C2C@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v24 = a4;
  v9 = sub_258B00F84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CDF458];
  sub_258AC1E98(0, a1, a2, MEMORY[0x277CDF458]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_258AC12E8(v8, &v23 - v17, a1, a2, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(v24, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_258B02E94();
    v22 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v13, v9);
  }
}

void sub_258AC1E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258AC1FC8(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_258B00384();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_258B00084();
  v11 = *(v103 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v103);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 healthDataSource];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for MentalHealthGenericFieldsProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    v18 = sub_258AD6068(MEMORY[0x277D84F90]);
    v19 = v3[16];
    v102[2] = inited;
    v102[3] = v2;
    if (v19 <= 1)
    {
      if (v19)
      {
        v20 = 0xEF6F72746E492064;
        v21 = 0x6574614720656741;
      }

      else
      {
        v20 = 0x8000000258B35DF0;
        v21 = 0xD000000000000010;
      }
    }

    else if (v19 == 2)
    {
      v20 = 0xE500000000000000;
      v21 = 0x6F72746E49;
    }

    else if (v19 == 3)
    {
      v20 = 0xE900000000000073;
      v21 = 0x6E6F697473657551;
    }

    else
    {
      v20 = 0xE600000000000000;
      v21 = 0x746C75736552;
    }

    v31 = MEMORY[0x277D837D0];
    v108 = MEMORY[0x277D837D0];
    *&v107 = v21;
    *(&v107 + 1) = v20;
    sub_258A2D784(&v107, v106);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v18;
    v33 = 0xE400000000000000;
    sub_258AC8BC0(v106, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v34 = v109;
    v35 = v3[17];
    if (v35 <= 4)
    {
      if (v3[17] <= 1u)
      {
        v33 = 0xE500000000000000;
        if (v3[17])
        {
          v36 = 0x65736F6C43;
        }

        else
        {
          v36 = 0x6E69676542;
        }
      }

      else if (v35 == 2)
      {
        v36 = 1954047310;
      }

      else if (v35 == 3)
      {
        v36 = 1701736260;
      }

      else
      {
        v33 = 0xE600000000000000;
        v36 = 0x74726F707845;
      }
    }

    else if (v3[17] > 7u)
    {
      if (v35 == 8)
      {
        v33 = 0x8000000258B35E80;
        v36 = 0xD000000000000017;
      }

      else if (v35 == 9)
      {
        v33 = 0x8000000258B35EA0;
        v36 = 0xD00000000000001ALL;
      }

      else
      {
        v33 = 0x8000000258B35EC0;
        v36 = 0xD000000000000025;
      }
    }

    else if (v35 == 5)
    {
      v33 = 0xED00006B63696C43;
      v36 = 0x20656C6369747241;
    }

    else if (v35 == 6)
    {
      v33 = 0xEA00000000006B63;
      v36 = 0x696C43206F666E49;
    }

    else
    {
      v33 = 0x8000000258B35E60;
      v36 = 0xD000000000000013;
    }

    v108 = v31;
    *&v107 = v36;
    *(&v107 + 1) = v33;
    sub_258A2D784(&v107, v106);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v34;
    sub_258AC8BC0(v106, 0x6E6F69746361, 0xE600000000000000, v37);
    v38 = v105;
    v109 = v105;
    if (v3[18] > 1u)
    {
      if (v3[18] != 2)
      {
        sub_258AC2CE4(0x656D737365737361, 0xEE0065707954746ELL, &v107);
        sub_258A3F0C0(&v107);
        v42 = v109;
LABEL_43:
        v104 = v3[19];
        v43 = MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
        v108 = v31;
        *&v107 = v43;
        *(&v107 + 1) = v44;
        sub_258A2D784(&v107, v106);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v42;
        sub_258AC8BC0(v106, 0x696F507972746E65, 0xEA0000000000746ELL, v45);
        v46 = v105;
        v47 = v3[20];
        if (v47 > 2)
        {
          if (v47 == 3)
          {
            v48 = 0x8000000258B360E0;
            v49 = 0xD000000000000012;
          }

          else if (v47 == 4)
          {
            v48 = 0xEC0000006E6F6974;
            v49 = 0x6163696669746F4ELL;
          }

          else
          {
            v49 = 0x6E694C2070656544;
            v48 = 0xE90000000000006BLL;
          }
        }

        else if (v3[20])
        {
          if (v47 == 1)
          {
            v48 = 0xEE006D6F6F522065;
            v49 = 0x7079542065746144;
          }

          else
          {
            v48 = 0xE700000000000000;
            v49 = 0x656C6369747241;
          }
        }

        else
        {
          v48 = 0xE700000000000000;
          v49 = 0x7972616D6D7553;
        }

        v108 = v31;
        *&v107 = v49;
        *(&v107 + 1) = v48;
        sub_258A2D784(&v107, v106);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v46;
        sub_258AC8BC0(v106, 0x6E616E65766F7270, 0xEA00000000006563, v50);
        v51 = v105;
        v52 = v3[21];
        v53 = MEMORY[0x277D839B0];
        v108 = MEMORY[0x277D839B0];
        LOBYTE(v107) = v52;
        sub_258A2D784(&v107, v106);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v51;
        sub_258AC8BC0(v106, 0xD000000000000016, 0x8000000258B37DC0, v54);
        v55 = v105;
        v109 = v105;
        v56 = v3[22];
        if (v56 == 2)
        {
          sub_258AC2CE4(0x7373417473726966, 0xEF746E656D737365, &v107);
          sub_258A3F0C0(&v107);
        }

        else
        {
          v108 = v53;
          LOBYTE(v107) = v56 & 1;
          sub_258A2D784(&v107, v106);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v105 = v55;
          sub_258AC8BC0(v106, 0x7373417473726966, 0xEF746E656D737365, v57);
          v109 = v105;
        }

        v58 = *MEMORY[0x277CCB7B8];
        v59 = sub_258B02B14();
        v61 = v60;
        v62 = HKMHUIActivePairedWatchProductType();
        if (v62)
        {
          v63 = v62;
          v64 = sub_258B02B14();
          v66 = v65;

          v108 = v31;
          if (v66)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v108 = v31;
        }

        v67 = *MEMORY[0x277CCB800];
        v64 = sub_258B02B14();
        v66 = v68;
LABEL_62:
        v102[1] = v16;
        *&v107 = v64;
        *(&v107 + 1) = v66;
        sub_258A2D784(&v107, v106);
        v69 = v109;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v105 = v69;
        sub_258AC8BC0(v106, v59, v61, v70);

        v71 = v105;
        v109 = v105;
        v72 = *MEMORY[0x277CCB7B0];
        v73 = sub_258B02B14();
        v75 = v74;
        v76 = HKMHUIActivePairedWatchBuildVersion();
        if (v76)
        {
          v77 = v76;
          v78 = v31;
          v79 = sub_258B02B14();
          v81 = v80;

          v108 = v78;
          if (v81)
          {
LABEL_67:
            *&v107 = v79;
            *(&v107 + 1) = v81;
            sub_258A2D784(&v107, v106);
            v84 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v71;
            sub_258AC8BC0(v106, v73, v75, v84);

            v109 = v105;
            v85 = *MEMORY[0x277CCB7C0];
            v86 = sub_258B02B14();
            v88 = v87;
            sub_258B00074();
            v89 = sub_258AB40EC();
            (*(v11 + 8))(v14, v103);
            if (v89)
            {
              v108 = sub_258A681B4();
              *&v107 = v89;
              sub_258A2D784(&v107, v106);
              v90 = v109;
              v91 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v90;
              sub_258AC8BC0(v106, v86, v88, v91);

              v109 = v105;
            }

            else
            {
              sub_258AC2CE4(v86, v88, &v107);

              sub_258A3F0C0(&v107);
            }

            v92 = MEMORY[0x277D837D0];
            v93 = *MEMORY[0x277CCB7D0];
            v94 = sub_258B02B14();
            v96 = v95;
            v97 = sub_258AB43D0();
            v108 = v92;
            if (!v98)
            {
              v99 = *MEMORY[0x277CCB800];
              v97 = sub_258B02B14();
            }

            *&v107 = v97;
            *(&v107 + 1) = v98;
            sub_258A2D784(&v107, v106);
            v100 = v109;
            v101 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v100;
            sub_258AC8BC0(v106, v94, v96, v101);

            swift_unknownObjectRelease();
            return v105;
          }
        }

        else
        {
          v108 = v31;
        }

        v82 = *MEMORY[0x277CCB800];
        v79 = sub_258B02B14();
        v81 = v83;
        goto LABEL_67;
      }

      v39 = 0xEB00000000395148;
      v40 = 0x50646E6137444147;
    }

    else
    {
      v39 = 0xE400000000000000;
      if (v3[18])
      {
        v40 = 927220039;
      }

      else
      {
        v40 = 961628240;
      }
    }

    v108 = v31;
    *&v107 = v40;
    *(&v107 + 1) = v39;
    sub_258A2D784(&v107, v106);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v38;
    sub_258AC8BC0(v106, 0x656D737365737361, 0xEE0065707954746ELL, v41);
    v42 = v105;
    v109 = v105;
    goto LABEL_43;
  }

  sub_258B00364();
  v22 = sub_258B00374();
  v23 = sub_258B02E94();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v107 = v25;
    *v24 = 136446210;
    v26 = sub_258B035A4();
    v28 = sub_2589F1F78(v26, v27, &v107);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2589A1000, v22, v23, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x259C945C0](v25, -1, -1);
    MEMORY[0x259C945C0](v24, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_258AC2C90();
  swift_allocError();
  *v29 = 0xD000000000000028;
  v29[1] = 0x8000000258B38E00;
  return swift_willThrow();
}

unint64_t sub_258AC2C90()
{
  result = qword_27F971098;
  if (!qword_27F971098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971098);
  }

  return result;
}

double sub_258AC2CE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_258AD5508(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258A99AA0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_258A2D784((*(v12 + 56) + 32 * v9), a3);
    sub_258AC86EC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_258AC2D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_258AC8A40(a1, a2, isUniquelyReferenced_nonNull_native, sub_258AD5580, sub_258A99918, sub_258A98C7C);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_258AD5580(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_258A99918();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);
      swift_unknownObjectRelease();
      result = sub_258AC84D8(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_258AC2ED4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000797274656DLL;
  v3 = 0x6F65675F64617571;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6F65675F64617571;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000258B362F0;
  }

  else
  {
    v6 = 0xED0000797274656DLL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000258B362D0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000258B362F0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000258B362D0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258B03454();
  }

  return v11 & 1;
}

uint64_t sub_258AC2FB8()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_258AC306C()
{
  *v0;
  *v0;
  sub_258B02B74();
}

uint64_t sub_258AC310C()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_258AC31BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258AC921C();
  *a2 = result;
  return result;
}

void sub_258AC31EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000797274656DLL;
  v4 = 0x6F65675F64617571;
  if (v2 == 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000258B362F0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000258B362D0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_258AC325C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = "compute_final_composite";
  if (v3 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = "compute_final_composite";
  }

  else
  {
    v6 = "compute_bg_composite";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ont";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v4 = "compute_bg_composite";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ont";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258B03454();
  }

  return v11 & 1;
}

uint64_t sub_258AC3338()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_258AC33D4()
{
  *v0;
  *v0;
  sub_258B02B74();
}

uint64_t sub_258AC345C()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_258AC34F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258AC9268();
  *a2 = result;
  return result;
}

void sub_258AC3524(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "compute_final_composite";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v3 = "compute_bg_composite";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000017;
    v4 = "ont";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void sub_258AC3580()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode);
  v2 = 80;
  if (v1 == 1)
  {
    v20 = &OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
    v19 = 4;
    goto LABEL_12;
  }

  if (!v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
    if (!v3)
    {
      v2 = 80;
      goto LABEL_13;
    }

    v4 = v3;
    v2 = [v4 pixelFormat];
    v5 = v4;
    [v5 bounds];
    Width = CGRectGetWidth(v22);
    v7 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling;
    v8 = Width * *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_superSampling);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -9.22337204e18)
    {
      if (v8 < 9.22337204e18)
      {
        *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth) = v8;
        [v5 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v23.origin.x = v10;
        v23.origin.y = v12;
        v23.size.width = v14;
        v23.size.height = v16;
        Height = CGRectGetHeight(v23);

        v18 = Height * *(v0 + v7);
        if (COERCE__INT64(fabs(v18)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v18 > -9.22337204e18)
          {
            if (v18 < 9.22337204e18)
            {
              v19 = v18;
              v20 = &OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight;
LABEL_12:
              *(v0 + *v20) = v19;
              goto LABEL_13;
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

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  sub_258AC3758();
  sub_258AC3910();
  sub_258AC4270();

  sub_258AC452C(v2);
}

uint64_t sub_258AC3758()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
  swift_beginAccess();
  *(v0 + v1) = 1;
  v2 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time;
  swift_beginAccess();
  *(v0 + v2) = 0;
  v3 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion;
  sub_258B003E4();
  if (v5)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C937C0](v7, v4);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v5 = sub_258B032B4();
          goto LABEL_3;
        }

        v8 = *(v4 + 8 * v7 + 32);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }
      }

      v11 = *(v9 + 24);
      v12 = v11 != 0;
      v13 = v11 - 1;
      if (!v12)
      {
        goto LABEL_22;
      }

      *(v9 + 28) = v13;
      v14 = *(v9 + 16);
      if (*(v0 + v6))
      {
        v14 = v14 * 1.8;
      }

      *(v9 + 36) = v14;
      *(v9 + 40) = v14;

      ++v7;
    }

    while (v10 != v5);
  }

  if (*(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
  {
    v16 = 1069379748;
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
  }

  *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale) = v16;
  return result;
}

void sub_258AC3910()
{
  v79 = *MEMORY[0x277D85DE8];
  v68 = sub_258B006A4();
  v1 = *(v68 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v68);
  v67 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  *&v63 = &v61 - v5;
  v66 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device;
  v6 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device);
  v7 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurSigma);
  v8 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
  v9 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
  v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_kernelCache);
  v65 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive;
  v11 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive);
  v64 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary;
  v12 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  MTLRegionMake2D(v8, v9, &v75);
  v13 = v77;
  v14 = v78;
  v62 = v75;
  v61 = v76;
  v15 = objc_allocWithZone(HKCVGaussianBlur);
  v75 = v62;
  v76 = v61;
  v77 = v13;
  v78 = v14;
  v16 = [v15 initWithSigma:&v75 clipRect:v10 kernelCache:v11 archive:v12 library:{COERCE_DOUBLE(__PAIR64__(DWORD1(v62), v7))}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline);
  *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline) = v16;

  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode;
  if (*(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
  {
    v20 = 80;
  }

  else
  {
    v21 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
    if (!v21)
    {
      goto LABEL_14;
    }

    v20 = [v21 pixelFormat];
  }

  *&v62 = v18;
  *(v18 + 16) = v20;
  v22 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
  v73 = *(v0 + v19);
  v23 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
  swift_beginAccess();
  v24 = v63;
  v25 = v68;
  (*(v1 + 16))(v63, v0 + v23, v68);
  v26 = v67;
  (*(v1 + 104))(v67, *MEMORY[0x277CDF3D0], v25);
  LOBYTE(v23) = sub_258B00694();
  v27 = *(v1 + 8);
  v27(v26, v25);
  v27(v24, v25);
  v72 = (v23 & 1) == 0;
  v68 = v0;
  v71 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion);
  [v22 setConstantValue:&v73 type:29 atIndex:0];
  [v22 setConstantValue:&v72 type:29 atIndex:1];
  [v22 setConstantValue:&v71 type:53 atIndex:2];
  v67 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
  *&v61 = v22;
  [v67 setConstantValues_];
  v28 = sub_258AD61A0(MEMORY[0x277D84F90]);
  v29 = 0;
  v63 = xmmword_258B2E600;
  do
  {
    v30 = byte_2869D51C8[v29++ + 32];
    v31 = [objc_allocWithZone(MEMORY[0x277CD6D30]) init];
    v32 = sub_258B02AD4();

    [v31 setLabel_];

    v33 = *(v68 + v65);
    if (v33)
    {
      sub_258AC9750(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v34 = swift_allocObject();
      *(v34 + 16) = v63;
      *(v34 + 32) = v33;
      sub_258AC97A0();
      swift_unknownObjectRetain_n();
      v35 = sub_258B02C64();

      [v31 setBinaryArchives_];
      swift_unknownObjectRelease();
    }

    v36 = sub_258B02AD4();

    v37 = v67;
    [v67 setName_];

    v38 = v68;
    v39 = *(v68 + v64);
    v74[0] = 0;
    v40 = [v39 newFunctionWithDescriptor:v37 error:v74];
    if (!v40)
    {
      v54 = v74[0];
      v55 = sub_258AFFDC4();

      swift_willThrow();
      while (1)
      {
LABEL_14:
        sub_258B03294();
        __break(1u);
      }
    }

    v41 = v40;
    v42 = v74[0];
    [v31 setComputeFunction_];
    v43 = *(v38 + v66);
    v74[0] = 0;
    v44 = [v43 newComputePipelineStateWithDescriptor:v31 options:0 reflection:0 error:v74];
    if (!v44)
    {
      v56 = v74[0];
      sub_258AFFDC4();

      swift_willThrow();
      sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_258B2C470;
      swift_getErrorValue();
      v58 = v69;
      v59 = v70;
      *(v57 + 56) = v70;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v57 + 32));
      (*(*(v59 - 8) + 16))(boxed_opaque_existential_1, v58, v59);
      sub_258B034F4();

      goto LABEL_14;
    }

    v45 = v44;
    v46 = v74[0];
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v28;
    sub_258AC8A40(v45, v30, isUniquelyReferenced_nonNull_native, sub_258AD5660, sub_258A99930, sub_258A98F7C);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v28 = v74[0];
  }

  while (v29 != 3);
  v48 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
  v49 = v68;
  swift_beginAccess();
  v50 = *(v49 + v48);
  *(v49 + v48) = v28;

  v51 = v67;
  v52 = v62;
  sub_258AC6988(0, v67, v49, v62);
  sub_258AC6988(1, v51, v49, v52);
  sub_258AC6F78(v51, v49, v52);

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t sub_258AC4270()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device;
  v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device);
  v4 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_meshQuality);
  type metadata accessor for DiscMesh();
  v5 = swift_allocObject();
  *(v5 + 24) = 1;
  *(v5 + 32) = 0x3DCCCCCD3F800000;
  *(v5 + 40) = 1097859072;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = v4;
  v6 = swift_unknownObjectRetain();
  sub_258AA2270(v6, v7);
  swift_unknownObjectRelease();
  v8 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc);
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc) = v5;

  v9 = *(v1 + v2);
  type metadata accessor for QuadMesh();
  v10 = swift_allocObject();
  *(v10 + 16) = vdupq_n_s64(0x10uLL);
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  v11 = swift_unknownObjectRetain();
  sub_258A380A0(v11);
  swift_unknownObjectRelease();
  v12 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad);
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad) = v10;

  v13 = *(v1 + v2);
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
  {
    v14 = [v13 newBufferWithLength:312 options:0];
    v15 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances;
    v16 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances);
    *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) = v14;
    swift_unknownObjectRelease();
    v17 = *(v1 + v15);
    if (v17)
    {
      v18 = [swift_unknownObjectRetain() contents];
      v19 = v17;
    }

    else
    {
      v18 = 0;
    }

    v22 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_thetaOffsetRange;
    v23 = v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator;
    swift_beginAccess();
    for (i = 20; i != 332; i += 52)
    {
      if (v18)
      {
        v30 = *(v1 + v22);
        v25 = *(v23 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v23, *(v23 + 24));
        sub_258AC938C();
        sub_258AC93E0();
        sub_258B029D4();
        *&v18[i] = v31;
      }
    }

    swift_endAccess();
  }

  else
  {
    v20 = [v13 newBufferWithLength:312 options:32];
    v21 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances);
    *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) = v20;
    swift_unknownObjectRelease();
  }

  v26 = *(v1 + v2);
  swift_unknownObjectRetain();
  v27 = sub_258AC8D7C(0x70614D746867694CLL, 0xEC000000676E702ELL, v26);
  swift_unknownObjectRelease();
  v28 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap);
  *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap) = v27;
  return swift_unknownObjectRelease();
}

void sub_258AC452C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
    if (v3)
    {
      v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a1 width:v2 height:v3 mipmapped:0];
      v5 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device;
      v6 = [*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device) supportsFamily_];
      v7 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
      if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount) >= 2)
      {
        if (v6)
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        [v4 setUsage_];
        [v4 setSampleCount_];
        [v4 setTextureType_];
        [v4 setStorageMode_];
        v9 = [*(v1 + v5) newTextureWithDescriptor_];
        v10 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo);
        *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo) = v9;
        swift_unknownObjectRelease();
        v11 = [*(v1 + v5) newTextureWithDescriptor_];
        v12 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaBackShape);
        *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaBackShape) = v11;
        swift_unknownObjectRelease();
      }

      [v4 setSampleCount_];
      [v4 setTextureType_];
      [v4 setStorageMode_];
      [v4 setUsage_];
      v13 = [*(v1 + v5) newTextureWithDescriptor_];
      v14 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo);
      *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo) = v13;
      swift_unknownObjectRelease();
      [v4 setUsage_];
      v15 = [*(v1 + v5) newTextureWithDescriptor_];
      v16 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background);
      *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) = v15;
      swift_unknownObjectRelease();
      [v4 setUsage_];
      v17 = [*(v1 + v5) newTextureWithDescriptor_];
      v18 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape;
      swift_beginAccess();
      v19 = *(v1 + v18);
      *(v1 + v18) = v17;
      swift_unknownObjectRelease();
      if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
      {
        [v4 setStorageMode_];
        [v4 setUsage_];
        v20 = [*(v1 + v5) newTextureWithDescriptor_];
        v21 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result);
        *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result) = v20;
        swift_unknownObjectRelease();
        v22 = [v4 width];
        if ((v22 - 0x2000000000000000) >> 62 == 3)
        {
          v23 = 4 * v22;
          v24 = [v4 height];
          if ((v23 * v24) >> 64 == (v23 * v24) >> 63)
          {
            v25 = [*(v1 + v5) newBufferWithLength_options_];
LABEL_13:
            v27 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_resultBuffer);
            *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_resultBuffer) = v25;
            swift_unknownObjectRelease();
            sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_258B326A0;
            *(v28 + 56) = MEMORY[0x277D837D0];
            *(v28 + 32) = 0xD00000000000001ALL;
            *(v28 + 40) = 0x8000000258B39140;
            v29 = [v4 width];
            v30 = MEMORY[0x277D83B88];
            *(v28 + 88) = MEMORY[0x277D83B88];
            *(v28 + 64) = v29;
            v31 = [v4 height];
            *(v28 + 120) = v30;
            *(v28 + 96) = v31;
            sub_258B034F4();

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v26 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result);
      *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result) = 0;
      swift_unknownObjectRelease();
      v25 = 0;
      goto LABEL_13;
    }
  }
}

uint64_t sub_258AC4958()
{
  v1 = v0;
  sub_258AC7738(v0, *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth) / *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight));
  v2 = *(MEMORY[0x277D860B8] + 16);
  v4 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  v5 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B8], COERCE_FLOAT(*MEMORY[0x277D860B8])), v2, *MEMORY[0x277D860B8], 1), v4, *MEMORY[0x277D860B8], 2), v3, *MEMORY[0x277D860B8], 3);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B8], v2.f32[0]), v2, *v2.f32, 1), v4, v2, 2), v3, v2, 3);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*MEMORY[0x277D860B8], v4.f32[0]), v2, *v4.f32, 1), v4, v4, 2), v3, v4, 3);
  __asm { FMOV            V17.4S, #1.5 }

  v13 = vmlaq_laneq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(*MEMORY[0x277D860B8], 0), 0, v2), _Q17, v4), v3, v3, 3);
  v14 = (v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
  v78 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 16);
  v79 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v79.f32[0]), v6, *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation), 1), v7, v79, 2), v13, v79, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v78.f32[0]), v6, *v78.f32, 1), v7, v78, 2), v13, v78, 3);
  v76 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 48);
  v77 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 32);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v77.f32[0]), v6, *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 32), 1), v7, v77, 2), v13, v77, 3);
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v76.f32[0]), v6, *v76.f32, 1), v7, v76, 2), v13, v76, 3);
  v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*MEMORY[0x277D860B8])), v16, *MEMORY[0x277D860B8], 1), v17, *MEMORY[0x277D860B8], 2), v18, *MEMORY[0x277D860B8], 3);
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v2.f32[0]), v16, *v2.f32, 1), v17, v2, 2), v18, v2, 3);
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v4.f32[0]), v16, *v4.f32, 1), v17, v4, 2), v18, v4, 3);
  __asm { FMOV            V6.4S, #-1.5 }

  v23 = vmlaq_laneq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v15, 0), 0, v16), _Q6, v17), v18, v3, 3);
  v24 = vmulq_f32(v19, 0);
  v82 = vmlaq_f32(vmlaq_f32(vaddq_f32(v20, v24), 0, v21), 0, v23);
  v83 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v19, 0, v20), 0, v21), 0, v23);
  v25 = vmlaq_f32(v24, 0, v20);
  v80 = vaddq_f32(v23, vmlaq_f32(v25, 0, v21));
  v81 = vmlaq_f32(vaddq_f32(v21, v25), 0, v23);
  v26 = (v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_model);
  swift_beginAccess();
  *v26 = v83;
  v26[1] = v82;
  v26[2] = v81;
  v26[3] = v80;
  if ((*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_isDragging) & 1) == 0)
  {
    v89.columns[1] = v78;
    v89.columns[0] = v79;
    v89.columns[3] = v76;
    v89.columns[2] = v77;
    *v27.i64 = simd_quaternion(v89);
    simd_slerp(v27, _PromotedConst, v28);
    *&v29 = MEMORY[0x259C934B0]();
    *v14 = v29;
    v14[1] = v30;
    v14[2] = v31;
    v14[3] = v32;
  }

  v33 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights;
  swift_beginAccess();
  v34 = *(v1 + v33);
  *(v1 + v33) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v35 = *(v1 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v33) = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    if (v38 >= v37 >> 1)
    {
      v35 = sub_258A7524C((v37 > 1), v38 + 1, 1, v35);
    }

    v39 = vrsqrte_f32(1107296256);
    v40 = vmul_f32(v39, vrsqrts_f32(1107296256, vmul_f32(v39, v39)));
    *(v35 + 2) = v38 + 1;
    v41 = &v35[48 * v38];
    *(v41 + 2) = xmmword_258B34000;
    *(v41 + 3) = vmulq_n_f32(xmmword_258B33FF0, vmul_f32(v40, vrsqrts_f32(1107296256, vmul_f32(v40, v40))).f32[0]);
    *(v41 + 16) = 1109393408;
    *(v1 + v33) = v35;
    v43 = *(v35 + 2);
    v42 = *(v35 + 3);
    if (v43 >= v42 >> 1)
    {
      v35 = sub_258A7524C((v42 > 1), v43 + 1, 1, v35);
    }

    v44 = vrsqrte_f32(1105723393);
    v45 = vmul_f32(v44, vrsqrts_f32(1105723393, vmul_f32(v44, v44)));
    *(v35 + 2) = v43 + 1;
    v46 = &v35[48 * v43];
    *(v46 + 2) = xmmword_258B34020;
    *(v46 + 3) = vmulq_n_f32(xmmword_258B34010, vmul_f32(v45, vrsqrts_f32(1105723393, vmul_f32(v45, v45))).f32[0]);
    *(v46 + 16) = 1101004800;
    *(v1 + v33) = v35;
    v48 = *(v35 + 2);
    v47 = *(v35 + 3);
    if (v48 >= v47 >> 1)
    {
      v35 = sub_258A7524C((v47 > 1), v48 + 1, 1, v35);
    }

    v49 = vrsqrte_f32(1105723391);
    v50 = vmul_f32(v49, vrsqrts_f32(1105723391, vmul_f32(v49, v49)));
    *(v35 + 2) = v48 + 1;
    v51 = &v35[48 * v48];
    *(v51 + 2) = xmmword_258B34040;
    *(v51 + 3) = vmulq_n_f32(xmmword_258B34030, vmul_f32(v50, vrsqrts_f32(1105723391, vmul_f32(v50, v50))).f32[0]);
    *(v51 + 16) = 1101004800;
    *(v1 + v33) = v35;
    swift_endAccess();
    v52 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1 ? 0.016667 : *(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta);
    v53 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time);
    swift_beginAccess();
    *v53 = v52 + *v53;
    v54 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
    swift_beginAccess();
    v35 = *(v1 + v54);
    v55 = v35 >> 62 ? sub_258B032B4() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_258B003E4();
    if (!v55)
    {
      break;
    }

    v33 = 0;
    while ((v35 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x259C937C0](v33, v35);
      v58 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v59 = *(v57 + 40);
      v60 = v52 + *(v57 + 36);
      *(v57 + 36) = v60;
      if (v59 > v60)
      {
        *(v57 + 32) = 0;
      }

      else
      {
        *(v57 + 36) = v60 - v59;
        v61 = *(v57 + 28);
        _CF = __CFADD__(v61, 1);
        v62 = v61 + 1;
        if (_CF)
        {
          goto LABEL_39;
        }

        *(v57 + 28) = v62;
        *(v57 + 32) = 1;
        if (v62 >= *(v57 + 24))
        {
          *(v57 + 28) = *(v57 + 20);
        }
      }

      ++v33;
      if (v58 == v55)
      {
        goto LABEL_29;
      }
    }

    if (v33 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = *&v35[8 * v33 + 32];

      v58 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v35 = sub_258A7524C(0, *(v35 + 2) + 1, 1, v35);
    *(v1 + v33) = v35;
  }

LABEL_29:

  v63 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
  swift_beginAccess();
  if (*(v1 + v63) == 1)
  {
    v64 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence);
    v65 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed);
    swift_beginAccess();
    *v65 = v64;
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_reduceMotion))
    {
      v66 = 0.02;
    }

    else
    {
      v66 = 0.1;
    }

    v67 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed);
    swift_beginAccess();
    *v67 = *v67 + (v66 * (*(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valence) - *v67));
  }

  v68 = v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence;
  v69 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence + 8);
  v70 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence + 16);
  v86 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence);
  v87 = v69;
  v88 = v70;
  sub_258AC9750(0, &unk_27F971190, MEMORY[0x277D83A90], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](v84);
  v71 = *v84;
  v72 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed);
  result = swift_beginAccess();
  if (vabds_f32(v71, *v72) > 0.001)
  {
    v74 = *(v68 + 8);
    v75 = *(v68 + 16);
    v84[0] = *v68;
    v84[1] = v74;
    v85 = v75;
    return sub_258B02314();
  }

  return result;
}

id sub_258AC5060(void *a1)
{
  v2 = v1;
  v48 = *MEMORY[0x277D85DE8];
  result = [a1 computeCommandEncoder];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (!*(v6 + 16) || (v7 = sub_258AD5660(2), (v8 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_37;
    }

    v41 = v4;
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    *&v46 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_thetaOffsetRange);
    v10 = v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator;
    swift_beginAccess();
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_258AC938C();
    sub_258AC93E0();
    v40 = v9;
    swift_unknownObjectRetain();
    v13 = MEMORY[0x277D83A90];
    sub_258B029D4();
    swift_endAccess();
    if (*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
    {
      v14 = 1015580987;
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_timeDelta);
    }

    v44 = v14;
    v15 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
    swift_beginAccess();
    v16 = *(v2 + v15);
    if (v16 >> 62)
    {
      goto LABEL_41;
    }

    v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
    v11 = MEMORY[0x277D84F90];
    if (v12)
    {
      v17 = 4;
      v13 = MEMORY[0x277D84F90];
      while (1)
      {
        v18 = v17 - 4;
        swift_beginAccess();
        v19 = *(v2 + v15);
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C937C0](v17 - 4);
        }

        else
        {
          if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            v38 = sub_258B032B4();
            if (v38 < 0)
            {
              __break(1u);
              goto LABEL_43;
            }

            v12 = v38;
            goto LABEL_10;
          }

          v20 = *(v19 + 8 * v17);
        }

        swift_endAccess();
        v4 = *(v20 + 28);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_258A74F10(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_258A74F10((v21 > 1), v22 + 1, 1, v11);
        }

        *(v11 + 2) = v22 + 1;
        *&v11[4 * v22 + 32] = v4;
        swift_beginAccess();
        v23 = *(v2 + v15);
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x259C937C0](v17 - 4);
        }

        else
        {
          if (v18 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v24 = *(v23 + 8 * v17);
        }

        swift_endAccess();
        v4 = *(v24 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_258A7538C(0, *(v13 + 2) + 1, 1, v13);
        }

        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          v13 = sub_258A7538C((v25 > 1), v26 + 1, 1, v13);
        }

        *(v13 + 2) = v26 + 1;
        v13[v26 + 32] = v4;
        ++v17;
        v12 = (v12 - 1);
        if (!v12)
        {
          goto LABEL_31;
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_31:
    v27 = sub_258B02AD4();
    v4 = v41;
    [v41 setLabel_];

    v12 = sub_258B02AD4();
    [v41 pushDebugGroup_];

    [v41 setComputePipelineState_];
    [v41 setBuffer:*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) offset:0 atIndex:0];
    v28 = *(v2 + v15);
    if (v28 >> 62)
    {
LABEL_43:
      v29 = sub_258B032B4();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((v29 - 0x2000000000000000) >> 62 == 3)
    {
      v12 = &property descriptor for StateOfMindEntryModel.valence;
      [v4 setBytes:v11 + 32 length:4 * v29 atIndex:1];

      v30 = *(v2 + v15);
      if (!(v30 >> 62))
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    v31 = sub_258B032B4();
LABEL_36:
    [v4 v12[471]];

    [v4 v12[471]];
    v32 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed;
    swift_beginAccess();
    [v4 v12[471]];
    swift_endAccess();
    v33 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
    swift_beginAccess();
    [v4 v12[471]];
    swift_endAccess();
    [v4 v12[471]];
    MTLSizeMake(2, 1, &v46);
    v39 = v46;
    v34 = v47;
    MTLSizeMake(4, 1, &v46);
    v35 = v47;
    v36 = v46;
    v46 = v39;
    v47 = v34;
    v42 = v36;
    v43 = v35;
    [v4 dispatchThreadgroups:&v46 threadsPerThreadgroup:&v42];
    [v4 popDebugGroup];
    [v4 endEncoding];
    swift_unknownObjectRelease();
LABEL_37:
    result = swift_unknownObjectRelease();
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258AC56BC(void *a1)
{
  v2 = v1;
  v25[4] = *MEMORY[0x277D85DE8];
  sub_258AC7D04();
  v5 = v4;
  v6 = [a1 renderCommandEncoderWithDescriptor_];

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines;
    swift_beginAccess();
    v9 = *(v2 + v8);
    v10 = *(v9 + 16);

    if (v10 && (v11 = sub_258AD5580(2u), (v12 & 1) != 0))
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      swift_endAccess();
      v14 = v7[7];
      if (v14)
      {
        v15 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(v15))
        {
          v16 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          if ((v16 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v16))
            {
              v25[0] = __PAIR64__(v16, v15);
              v17.i64[0] = v15;
              v17.i64[1] = v16;
              v24 = vdiv_f32(vadd_f32(*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset), *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset)), vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v17)), 0x3F0000003F000000));
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              [v6 setFrontFacingWinding_];
              [v6 setCullMode_];
              v18 = sub_258B02AD4();
              [v6 setLabel_];

              v19 = sub_258B02AD4();
              [v6 pushDebugGroup_];

              [v6 setRenderPipelineState_];
              [v6 setVertexBuffer:v7[6] offset:0 atIndex:0];
              v20 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time;
              swift_beginAccess();
              [v6 setVertexBytes:v2 + v20 length:4 atIndex:1];
              swift_endAccess();
              v21 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed;
              swift_beginAccess();
              [v6 setVertexBytes:v2 + v21 length:4 atIndex:2];
              swift_endAccess();
              [v6 setVertexBytes:v25 length:8 atIndex:3];
              [v6 setVertexBytes:&v24 length:8 atIndex:4];
              [v6 drawIndexedPrimitives:3 indexCount:v7[5] indexType:1 indexBuffer:v14 indexBufferOffset:0 instanceCount:1];
              [v6 popDebugGroup];
              [v6 endEncoding];
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
LABEL_13:
              v22 = *MEMORY[0x277D85DE8];
              return;
            }

LABEL_20:
            __break(1u);
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  v23 = *MEMORY[0x277D85DE8];

  swift_unknownObjectRelease();
}

void sub_258AC5A8C(void *a1, char *a2)
{
  v4 = v2;
  v5 = a2;
  v55 = *MEMORY[0x277D85DE8];
  v7 = a2 != 0;
  sub_258AC7A4C(a2);
  v9 = v8;
  v10 = [a1 renderCommandEncoderWithDescriptor_];

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines;
    swift_beginAccess();
    v13 = *(v4 + v12);
    v14 = *(v13 + 16);

    if (v14 && (v15 = sub_258AD5580(v7), (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v15);
      swift_endAccess();
      v18 = v11[9];
      if (v18)
      {
        if (v5)
        {
          v19 = "computePipelines";
        }

        else
        {
          v19 = "Render Front Instances";
        }

        v20 = 6;
        if (!v5)
        {
          v20 = 1;
        }

        v48 = v20;
        v54 = v5;
        v21 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers;
        swift_beginAccess();
        v22 = *(v4 + v21);
        if (v22 >> 62)
        {
LABEL_45:
          v35 = sub_258B032B4();
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          __break(1u);
        }

        else
        {
          for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v35)
          {
            v49 = v19;
            v50 = v17;
            swift_unknownObjectRetain();
            v47 = v18;
            swift_unknownObjectRetain();
            if (i)
            {
              v23 = 0;
              v5 = MEMORY[0x277D84F90];
              while (1)
              {
                swift_beginAccess();
                v24 = *(v4 + v21);
                if ((v24 & 0xC000000000000001) != 0)
                {
                  v25 = MEMORY[0x259C937C0](v23);
                }

                else
                {
                  if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_45;
                  }

                  v25 = *(v24 + 8 * v23 + 32);
                }

                swift_endAccess();
                v17 = *(v25 + 28);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v5 = sub_258A74F10(0, *(v5 + 2) + 1, 1, v5);
                }

                v19 = *(v5 + 2);
                v26 = *(v5 + 3);
                v18 = (v19 + 1);
                if (v19 >= v26 >> 1)
                {
                  v5 = sub_258A74F10((v26 > 1), (v19 + 1), 1, v5);
                }

                ++v23;
                *(v5 + 2) = v18;
                *&v5[4 * v19 + 32] = v17;
                if (i == v23)
                {
                  goto LABEL_32;
                }
              }
            }

            v5 = MEMORY[0x277D84F90];
LABEL_32:
            if (*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode) == 1)
            {
              v29.f32[0] = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
              v30 = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
              v31 = 0;
            }

            else
            {
              v32.i64[0] = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
              v32.i64[1] = *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
              v29 = vcvt_f32_f64(vcvtq_f64_s64(v32));
              v31 = vdiv_f32(*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset), vmul_f32(v29, 0x3F0000003F000000));
              v30 = v29.f32[1];
            }

            v53 = v31;
            v33 = v29.f32[0] / v30;
            v34 = v33 >= 1.0 ? *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale) : v33 * *(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
            v52 = v34;
            i = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights;
            swift_beginAccess();
            v51 = *(*(v4 + i) + 16);
            [v10 setFrontFacingWinding_];
            [v10 setCullMode_];
            v17 = v49;
            v18 = sub_258B02AD4();
            [v10 setLabel_];

            v35 = [v10 label];
            if (v35)
            {
              break;
            }

            __break(1u);
LABEL_51:
            ;
          }

          v36 = v35;

          [v10 pushDebugGroup_];

          [v10 setRenderPipelineState_];
          [v10 setVertexBuffer:v11[8] offset:0 atIndex:0];
          [v10 setVertexBuffer:*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances) offset:0 atIndex:1];
          v37 = *(v4 + v21);
          if (!(v37 >> 62))
          {
            v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_41;
          }
        }

        v38 = sub_258B032B4();
LABEL_41:
        if ((v38 - 0x2000000000000000) >> 62 == 3)
        {
          [v10 setVertexBytes:v5 + 32 length:4 * v38 atIndex:2];

          v39 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_model;
          swift_beginAccess();
          [v10 setVertexBytes:v4 + v39 length:64 atIndex:3];
          swift_endAccess();
          v40 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_camera;
          swift_beginAccess();
          [v10 setVertexBytes:v4 + v40 length:64 atIndex:4];
          swift_endAccess();
          v41 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_time;
          swift_beginAccess();
          [v10 setVertexBytes:v4 + v41 length:4 atIndex:5];
          swift_endAccess();
          v42 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_valenceSmoothed;
          swift_beginAccess();
          [v10 setVertexBytes:v4 + v42 length:4 atIndex:6];
          swift_endAccess();
          [v10 setVertexBytes:&v54 length:8 atIndex:7];
          [v10 setFragmentBytes:&v53 length:8 atIndex:0];
          [v10 setFragmentBytes:&v52 length:4 atIndex:1];
          swift_beginAccess();
          v43 = *(v4 + i);
          v44 = *(v43 + 16);
          v45 = 48 * v44;
          if ((v44 * 48) >> 64 == (48 * v44) >> 63)
          {
            v46 = *(v4 + i);
            sub_258B003E4();
            [v10 setFragmentBytes:v43 + 32 length:v45 atIndex:2];
            swift_endAccess();

            [v10 setFragmentBytes:&v51 length:8 atIndex:3];
            [v10 setFragmentBytes:&v54 length:8 atIndex:4];
            swift_beginAccess();
            [v10 setFragmentBytes:v4 + v41 length:4 atIndex:5];
            swift_endAccess();
            [v10 setFragmentTexture:*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) atIndex:0];
            [v10 setFragmentTexture:*(v4 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap) atIndex:1];
            [v10 drawIndexedPrimitives:3 indexCount:v11[7] indexType:1 indexBuffer:v47 indexBufferOffset:0 instanceCount:v48];
            [v10 popDebugGroup];
            [v10 endEncoding];
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_unknownObjectRelease();

LABEL_27:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  v28 = *MEMORY[0x277D85DE8];

  swift_unknownObjectRelease();
}

void sub_258AC6274(void *a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_blurPipeline);
  if (!v2)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape;
  swift_beginAccess();
  if (!*(v1 + v4))
  {
    goto LABEL_5;
  }

  v7[0] = *(v1 + v4);
  v5 = v2;
  [(HKCVGaussianBlur *)v5 encodeCommandBuffer:a1 inPlaceTexture:v7];
  *(v1 + v4) = v7[0];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_endAccess();

  v6 = *MEMORY[0x277D85DE8];
}

id sub_258AC634C(void *a1)
{
  v2 = v1;
  result = [a1 computeCommandEncoder];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16))
    {
      v7 = sub_258AD5660(1);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);
        swift_endAccess();
        swift_unknownObjectRetain();
        v10 = sub_258B02AD4();
        [v4 setLabel_];

        v11 = sub_258B02AD4();
        [v4 pushDebugGroup_];

        [v4 setComputePipelineState_];
        v12 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape;
        swift_beginAccess();
        [v4 setTexture:*(v2 + v12) atIndex:0];
        v13 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background;
        [v4 setTexture:*(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) atIndex:1];
        [v4 setTexture:*(v2 + v13) atIndex:2];
        v14 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        v15 = v14 + 3;
        if (v14 >= 0)
        {
          v15 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        }

        v16 = v15 >> 2;
        if ((v14 & 3) != 0)
        {
          result = (v16 + 1);
        }

        else
        {
          result = v16;
        }

        if ((result - 0x2000000000000000) >> 62 == 3)
        {
          v17 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          v18 = v17 + 3;
          if (v17 >= 0)
          {
            v18 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          }

          v19 = v18 >> 2;
          if ((v17 & 3) != 0)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v19;
          }

          if ((v20 - 0x2000000000000000) >> 62 == 3)
          {
            MTLSizeMake(result, v20, &v27);
            v24 = v27;
            v21 = v28;
            MTLSizeMake(4, 4, &v27);
            v22 = v28;
            v23 = v27;
            v27 = v24;
            v28 = v21;
            v25 = v23;
            v26 = v22;
            [v4 dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
            [v4 popDebugGroup];
            [v4 endEncoding];
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_258AC65E8(void *a1)
{
  v1 = [a1 commandBuffer];
  if (v1)
  {
    sub_258AC4958();
    sub_258AC5060(v1);
    sub_258AC56BC(v1);
    sub_258AC5A8C(v1, 0);
    sub_258AC6274(v1);
    sub_258AC634C(v1);
    sub_258AC5A8C(v1, 1);
    [v1 commit];
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_258AC667C(uint64_t a1, void *a2)
{
  sub_258AC66D8(a1, a2);
  [a2 commit];
  v4 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_firstRun;
  result = swift_beginAccess();
  *(v2 + v4) = 0;
  return result;
}

id sub_258AC66D8(uint64_t a1, id a2)
{
  v3 = v2;
  result = [a2 computeCommandEncoder];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (*(v8 + 16))
    {
      v9 = sub_258AD5660(0);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        swift_unknownObjectRetain();
        v12 = sub_258B02AD4();
        [v6 setLabel_];

        v13 = sub_258B02AD4();
        [v6 pushDebugGroup_];

        [v6 setComputePipelineState_];
        [v6 setTexture:*(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo) atIndex:0];
        [v6 setTexture:*(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background) atIndex:1];
        [v6 setTexture:*(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result) atIndex:2];
        [v6 setTexture:a1 atIndex:3];
        v14 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        v15 = v14 + 3;
        if (v14 >= 0)
        {
          v15 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth);
        }

        v16 = v15 >> 2;
        if ((v14 & 3) != 0)
        {
          result = (v16 + 1);
        }

        else
        {
          result = v16;
        }

        if ((result - 0x2000000000000000) >> 62 == 3)
        {
          v17 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          v18 = v17 + 3;
          if (v17 >= 0)
          {
            v18 = *(v3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight);
          }

          v19 = v18 >> 2;
          if ((v17 & 3) != 0)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v19;
          }

          if ((v20 - 0x2000000000000000) >> 62 == 3)
          {
            MTLSizeMake(result, v20, &v27);
            v24 = v27;
            v21 = v28;
            MTLSizeMake(4, 4, &v27);
            v22 = v28;
            v23 = v27;
            v27 = v24;
            v28 = v21;
            v25 = v23;
            v26 = v22;
            [v6 dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
            [v6 popDebugGroup];
            [v6 endEncoding];
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_258AC6988(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v8 = sub_258B02AD4();
  [a2 setName_];

  v9 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary;
  v10 = *(a3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary);
  v43[0] = 0;
  v11 = [v10 newFunctionWithDescriptor:a2 error:v43];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = v43[0];
  v14 = sub_258B02AD4();
  [a2 setName_];

  v15 = *(a3 + v9);
  v43[0] = 0;
  v16 = [v15 newFunctionWithDescriptor:a2 error:v43];
  v17 = v43[0];
  if (v16)
  {
    v18 = v16;
    v19 = objc_allocWithZone(MEMORY[0x277CD6F78]);
    v20 = v17;
    v21 = [v19 init];
    [v21 setVertexFunction_];
    [v21 setFragmentFunction_];
    if (*(a3 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc))
    {
      v22 = sub_258AA2BD8();
    }

    else
    {
      v22 = 0;
    }

    [v21 setVertexDescriptor_];

    [v21 setRasterSampleCount_];
    v23 = [v21 colorAttachments];
    v24 = [v23 objectAtIndexedSubscript_];

    if (!v24)
    {
      __break(1u);
    }

    swift_beginAccess();
    [v24 setPixelFormat_];

    v25 = sub_258B02AD4();

    [v21 setLabel_];

    v26 = *(a3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive);
    if (v26)
    {
      sub_258AC9750(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_258B2E600;
      *(v27 + 32) = v26;
      sub_258AC97A0();
      swift_unknownObjectRetain_n();
      v28 = sub_258B02C64();

      [v21 setBinaryArchives_];
      swift_unknownObjectRelease();
    }

    v29 = *(a3 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device);
    v42[0] = 0;
    v30 = [v29 newRenderPipelineStateWithDescriptor:v21 options:0 reflection:0 error:v42];
    v31 = v42[0];
    if (v30)
    {
      swift_beginAccess();
      v32 = v31;
      v33 = swift_unknownObjectRetain();
      sub_258AC2D9C(v33, a1 != 0);
      swift_endAccess();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v35 = *MEMORY[0x277D85DE8];
      return result;
    }

    v38 = v42[0];
    sub_258AFFDC4();

    swift_willThrow();
    sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_258B2C470;
    swift_getErrorValue();
    *(v39 + 56) = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1);
    sub_258B034F4();
  }

  else
  {
LABEL_12:
    v36 = v43[0];
    v37 = sub_258AFFDC4();

    swift_willThrow();
  }

  result = sub_258B03294();
  __break(1u);
  return result;
}

uint64_t sub_258AC6F78(void *a1, uint64_t a2, uint64_t a3)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v6 = sub_258B02AD4();
  [a1 setName_];

  v7 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary;
  v8 = *(a2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_defaultLibrary);
  v41[0] = 0;
  v9 = [v8 newFunctionWithDescriptor:a1 error:v41];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = v41[0];
  v12 = sub_258B02AD4();
  [a1 setName_];

  v13 = *(a2 + v7);
  v41[0] = 0;
  v14 = [v13 newFunctionWithDescriptor:a1 error:v41];
  v15 = v41[0];
  if (v14)
  {
    v16 = v14;
    v17 = objc_allocWithZone(MEMORY[0x277CD6F78]);
    v18 = v15;
    v19 = [v17 init];
    [v19 setVertexFunction_];
    [v19 setFragmentFunction_];
    if (*(a2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad))
    {
      v20 = sub_258A38418();
    }

    else
    {
      v20 = 0;
    }

    [v19 setVertexDescriptor_];

    [v19 setRasterSampleCount_];
    v21 = [v19 colorAttachments];
    v22 = [v21 objectAtIndexedSubscript_];

    if (!v22)
    {
      __break(1u);
    }

    swift_beginAccess();
    [v22 setPixelFormat_];

    v23 = sub_258B02AD4();
    [v19 setLabel_];

    v24 = *(a2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_metalArchive);
    if (v24)
    {
      sub_258AC9750(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_258B2E600;
      *(v25 + 32) = v24;
      sub_258AC97A0();
      swift_unknownObjectRetain_n();
      v26 = sub_258B02C64();

      [v19 setBinaryArchives_];
      swift_unknownObjectRelease();
    }

    v27 = *(a2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_device);
    v40[0] = 0;
    v28 = [v27 newRenderPipelineStateWithDescriptor:v19 options:0 reflection:0 error:v40];
    v29 = v40[0];
    if (v28)
    {
      swift_beginAccess();
      v30 = v29;
      v31 = swift_unknownObjectRetain();
      sub_258AC2D9C(v31, 2);
      swift_endAccess();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v33 = *MEMORY[0x277D85DE8];
      return result;
    }

    v36 = v40[0];
    sub_258AFFDC4();

    swift_willThrow();
    sub_258AC9750(0, &qword_27F96E3D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_258B2C470;
    swift_getErrorValue();
    *(v37 + 56) = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 32));
    (*(*(v39 - 8) + 16))(boxed_opaque_existential_1);
    sub_258B034F4();
  }

  else
  {
LABEL_12:
    v34 = v41[0];
    v35 = sub_258AFFDC4();

    swift_willThrow();
  }

  result = sub_258B03294();
  __break(1u);
  return result;
}

void sub_258AC753C(float a1, float a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_layer);
  if (v3)
  {
    v30 = v3;
    [v30 bounds];
    Width = CGRectGetWidth(v32);
    [v30 bounds];
    Height = CGRectGetHeight(v33);
    v8 = Width / Height;
    if ((~COERCE_INT(Width / Height) & 0x7F800000) != 0 || (COERCE_UNSIGNED_INT(Width / Height) & 0x7FFFFF) == 0)
    {
      v19 = sub_258AFABE8(((a1 / Width) * v8) * 3.0, xmmword_258B05770);
      v21 = v10;
      v23 = v11;
      v26 = v12;
      v13 = sub_258AFABE8(((a2 / Height) * v8) * 3.0, xmmword_258B057C0);
      v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v13.n128_f32[0]), v21, v13.n128_u64[0], 1), v23, v13, 2), v26, v13, 3);
      v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v14.f32[0]), v21, *v14.f32, 1), v23, v14, 2), v26, v14, 3);
      v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v15.f32[0]), v21, *v15.f32, 1), v23, v15, 2), v26, v15, 3);
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v16.f32[0]), v21, *v16.f32, 1), v23, v16, 2), v26, v16, 3);
      v17 = (v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
      v18 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation);
      v20 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 16);
      v24 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 32);
      v27 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_modelRotation + 48);

      *v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v18.f32[0]), v28, *v18.f32, 1), v25, v18, 2), v22, v18, 3);
      v17[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v20.f32[0]), v28, *v20.f32, 1), v25, v20, 2), v22, v20, 3);
      v17[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v24.f32[0]), v28, *v24.f32, 1), v25, v24, 2), v22, v24, 3);
      v17[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v27.f32[0]), v28, *v27.f32, 1), v25, v27, 2), v22, v27, 3);
    }

    else
    {
    }
  }
}

__n128 sub_258AC7738(uint64_t a1, float a2)
{
  v29 = *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
  LODWORD(v3) = 0;
  HIDWORD(v3) = *(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_scale);
  v31 = v3;
  v4.f32[0] = sub_258AFAE28(35.0, a2);
  if (a2 >= 1.0)
  {
    v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v4.f32[0]), v31, *v4.f32, 1), xmmword_258B05780, v4, 2), xmmword_258B34050, v4, 3);
    v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v5.f32[0]), v31, *v5.f32, 1), xmmword_258B05780, v5, 2), xmmword_258B34050, v5, 3);
    v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v6.f32[0]), v31, *v6.f32, 1), xmmword_258B05780, v6, 2), xmmword_258B34050, v6, 3);
    v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v7.f32[0]), v31, *v7.f32, 1), xmmword_258B05780, v7, 2), xmmword_258B34050, v7, 3);
  }

  else
  {
    v8 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v29, a2), 0, v31), 0);
    v9 = vmulq_f32(v29, 0);
    v10 = vaddq_f32(vmlaq_n_f32(v9, v31, a2), 0);
    v11 = vmlaq_f32(v9, 0, v31);
    v12 = vaddq_f32(v11, xmmword_258B05780);
    v13 = vaddq_f32(vaddq_f32(v11, 0), xmmword_258B34050);
    v35 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v4.f32[0]), vdupq_lane_s32(*v4.f32, 1), v10), vdupq_laneq_s32(v4, 2), v12), vdupq_laneq_s32(v4, 3), v13);
    v34 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v5.f32[0]), vdupq_lane_s32(*v5.f32, 1), v10), vdupq_laneq_s32(v5, 2), v12), vdupq_laneq_s32(v5, 3), v13);
    v33 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v6.f32[0]), vdupq_lane_s32(*v6.f32, 1), v10), vdupq_laneq_s32(v6, 2), v12), vdupq_laneq_s32(v6, 3), v13);
    v14 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v8, v7.f32[0]), vdupq_lane_s32(*v7.f32, 1), v10), vdupq_laneq_s32(v7, 2), v12), vdupq_laneq_s32(v7, 3), v13);
  }

  v32 = v14;
  if (*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_animationMode))
  {
    v15 = xmmword_258B34060;
  }

  else
  {
    v16 = 3.1416 - ((fmaxf(1.0 / a2, 1.0) * 0.61087) * (COERCE_FLOAT(HIDWORD(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset))) / vcvts_n_f32_s64(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureHeight), 1uLL)));
    v17 = __sincosf_stret(((fmaxf(a2, 1.0) * 0.61087) * (COERCE_FLOAT(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_offset)) / vcvts_n_f32_s64(*(a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_textureWidth), 1uLL))) + 3.1416);
    v18 = __sincosf_stret(v16);
    v15.i64[0] = __PAIR64__(LODWORD(v18.__sinval), LODWORD(v17.__sinval));
    v15.i64[1] = COERCE_UNSIGNED_INT(-(v17.__cosval * v18.__cosval));
  }

  *v19.f32 = sub_258AFAEB8(0.0, v15, xmmword_258B05770);
  v20 = (a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_projection);
  *v20 = v35;
  v20[1] = v34;
  v20[2] = v33;
  v20[3] = v32;
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v21.f32[0]), v34, *v21.f32, 1), v33, v21, 2), v32, v21, 3);
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v19.f32[0]), v34, *v19.f32, 1), v33, v19, 2), v32, v19, 3);
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v22.f32[0]), v34, *v22.f32, 1), v33, v22, 2), v32, v22, 3);
  v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v23.f32[0]), v34, *v23.f32, 1), v33, v23, 2), v32, v23, 3);
  v24 = (a1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_camera);
  swift_beginAccess();
  *v24 = v30;
  v24[1] = v28;
  result = v36;
  v24[2] = v26;
  v24[3] = v36;
  return result;
}

void sub_258AC7A4C(int a1)
{
  if (a1)
  {
    v2 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo);
  }

  else
  {
    v2 = (v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape);
    swift_beginAccess();
  }

  v3 = *v2;
  v4 = objc_allocWithZone(MEMORY[0x277CD6F50]);
  swift_unknownObjectRetain();
  v5 = [v4 init];
  v6 = [v5 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount;
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI13MetalRenderer_sampleCount) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v7 setStoreAction_];

  v10 = [v5 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    goto LABEL_19;
  }

  [v11 setLoadAction_];

  v12 = [v5 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v13 setClearColor_];

  v14 = [v5 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v16 = v3;
  if (*(v1 + v8) >= 2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo);
  }

  [v15 setTexture_];

  v17 = [v5 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
    goto LABEL_22;
  }

  if (*(v1 + v8) < 2)
  {
    v19 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v19 = v3;
  }

  [v18 setResolveTexture_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_258AC7D04()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 setStoreAction_];

  v4 = [v1 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript_];

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v5 setLoadAction_];

  v6 = [v1 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v7 setClearColor_];

  v8 = [v1 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript_];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background);
  swift_unknownObjectRetain();
  [v9 setTexture_];
  swift_unknownObjectRelease();

  v11 = [v1 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (v12)
  {
    [v12 setResolveTexture_];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_258AC7F20()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_colorScheme;
  v2 = sub_258B006A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_randomNumberGenerator));
  v4 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence);
  v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer__effectiveValence + 8);

  v5 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_ringBufferHelpers);

  v6 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_disc);

  v7 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_quad);

  v8 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_instances);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_lights);

  v10 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_background);
  swift_unknownObjectRelease();
  v11 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_environmentMap);
  swift_unknownObjectRelease();
  v12 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_albedo);
  swift_unknownObjectRelease();
  v13 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaAlbedo);
  swift_unknownObjectRelease();
  v14 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_backShape);
  swift_unknownObjectRelease();
  v15 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_msaaBackShape);
  swift_unknownObjectRelease();
  v16 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_result);
  swift_unknownObjectRelease();
  v17 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_resultBuffer);
  swift_unknownObjectRelease();

  v18 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_renderPipelines);

  v19 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI17ChamomileRenderer_computePipelines);
}

uint64_t type metadata accessor for ChamomileRenderer()
{
  result = qword_27F971160;
  if (!qword_27F971160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258AC82C0()
{
  result = sub_258B006A4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_258AC842C()
{
  result = qword_27F971170;
  if (!qword_27F971170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971170);
  }

  return result;
}

unint64_t sub_258AC8484()
{
  result = qword_27F971178;
  if (!qword_27F971178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F971178);
  }

  return result;
}

uint64_t sub_258AC84D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258B03124() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258AC86EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258B03124() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_258B03514();
      sub_258B003E4();
      sub_258B02B74();
      v14 = sub_258B03554();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_258AC889C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258B03124() + 1) & ~v5;
    do
    {
      sub_258A9A3FC(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_258B03134();
      result = sub_258A97AF8(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_258AC8A40(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  result = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      a6(v20, a3 & 1);
      v24 = *v10;
      result = a4(a2);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_258B03484();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v10;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + 8 * result) = a1;
    v29 = v26[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v26[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}