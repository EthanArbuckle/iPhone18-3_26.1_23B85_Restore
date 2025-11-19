void sub_258840248()
{
  if (!qword_27F95FB60)
  {
    sub_2587916D4(255, &qword_280C0DE68, _s14OrderedElementVMa);
    sub_258791660();
    v0 = sub_2588BDDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FB60);
    }
  }
}

uint64_t sub_2588402C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25884031C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258840368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v15(v14);
  a5(v16);
  return sub_2588BD4F8();
}

uint64_t sub_258840494@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2588404A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = *(a1 + 16);
  v4 = *(a1 + 32);
  sub_2588BD518();
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v32 = *(a1 + 48);
  v33 = v5;
  v34 = v6;
  swift_getWitnessTable();
  v7 = sub_2588BCD08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  *&v12 = v4;
  *(&v12 + 1) = v5;
  v21 = v12;
  v20 = v18;
  v22 = v32;
  v23 = v6;
  v24 = v2;
  sub_2588BCCF8();
  WitnessTable = swift_getWitnessTable();
  sub_2587A6F28(v7, WitnessTable, &v28);
  (*(v8 + 8))(v11, v7);
  v27[0] = v28;
  v27[1] = v29;
  sub_258840D70(255, &qword_27F95D5F8, sub_2587AA704, MEMORY[0x277CE0860]);
  sub_2588BC1E8();
  v14 = sub_258840DD4();
  v25 = WitnessTable;
  v26 = v14;
  swift_getWitnessTable();
  v15 = sub_2588BC2C8();
  v16 = swift_getWitnessTable();
  sub_2587DCF7C(v27, v15, v16);

  v28 = v30;
  v29 = v31;
  sub_2587DCF7C(&v28, v15, v16);
}

uint64_t sub_258840754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a8;
  v15 = sub_2588BD518();
  v27 = *(v15 - 8);
  v16 = *(v27 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v26 = &v25 - v20;
  v31[2] = a2;
  v31[3] = a3;
  v31[4] = a4;
  v31[5] = a5;
  v31[6] = a6;
  v31[7] = a7;
  v31[8] = a1;
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  v30[5] = a5;
  v30[6] = a6;
  v30[7] = a7;
  v30[8] = a1;
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  v29[5] = a5;
  v29[6] = a6;
  v29[7] = a7;
  v29[8] = a1;
  sub_258840368(sub_258840E5C, v31, sub_258840E74, v30, sub_258840E8C, v29, a3, a2, a4);
  v31[10] = a6;
  v31[11] = a5;
  v31[12] = a7;
  WitnessTable = swift_getWitnessTable();
  v22 = v26;
  sub_2587DCF7C(v19, v15, WitnessTable);
  v23 = *(v27 + 8);
  v23(v19, v15);
  sub_2587DCF7C(v22, v15, WitnessTable);
  return (v23)(v22, v15);
}

uint64_t sub_258840980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  v15 = *(v12 + 8);
  (*v12)();
  sub_2587DCF7C(v11, a2, a5);
  v16 = *(v7 + 8);
  v16(v11, a2);
  sub_2587DCF7C(v14, a2, a5);
  return (v16)(v14, a2);
}

uint64_t sub_258840AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19 - v14;
  v16 = *(v13 + 24);
  (*(v13 + 16))();
  sub_2587DCF7C(v12, a3, a6);
  v17 = *(v8 + 8);
  v17(v12, a3);
  sub_2587DCF7C(v15, a3, a6);
  return (v17)(v15, a3);
}

uint64_t sub_258840BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  v17 = *(v14 + 40);
  (*(v14 + 32))();
  sub_2587DCF7C(v13, a4, a7);
  v18 = *(v9 + 8);
  v18(v13, a4);
  sub_2587DCF7C(v16, a4, a7);
  return (v18)(v16, a4);
}

uint64_t sub_258840D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_2588404A4(a1, a2);
}

void sub_258840D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258840DD4()
{
  result = qword_27F95D620;
  if (!qword_27F95D620)
  {
    sub_258840D70(255, &qword_27F95D5F8, sub_2587AA704, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D620);
  }

  return result;
}

uint64_t type metadata accessor for HealthDemographicData()
{
  result = qword_27F95FBF0;
  if (!qword_27F95FBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258840F34()
{
  sub_2588BB818();
  if (v0 <= 0x3F)
  {
    sub_25878E130(319, &qword_27F95E748, 0x277CCD7E8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKBloodType(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_258840FF4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for HealthDemographicData();
  if ((MEMORY[0x259C8A8E0](a1 + v6[6], a2 + v6[6]) & 1) == 0)
  {
    return 0;
  }

  sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
  v7 = v6[7];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (sub_2588BDCD8() & 1) != 0 && (v10 = v6[8], v11 = *(a1 + v10), v12 = *(a2 + v10), (sub_2588BDCD8()))
  {
    return *(a1 + v6[9]) == *(a2 + v6[9]);
  }

  else
  {
    return 0;
  }
}

void sub_2588410EC()
{
  sub_258847458(319, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2588BB9B8();
    if (v1 <= 0x3F)
    {
      sub_2587AFFC8(319);
      if (v2 <= 0x3F)
      {
        sub_258847458(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2587B2F78();
          if (v4 <= 0x3F)
          {
            sub_258847458(319, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_258847674(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
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

uint64_t sub_25884132C(uint64_t a1)
{
  sub_2587AFFC8(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588476C4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  return sub_258847974(a1, sub_2587AFFC8);
}

void sub_25884141C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v91 = a1;
  v94 = *(a1 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](a1);
  v93 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588465CC();
  v92 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258846548();
  v85 = v8;
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2588BB9B8();
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 68);
  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v16 = sub_2588BB948();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB938();
  v21 = sub_2588BB928();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB918();
  v26 = sub_2588BB998();
  v28 = v27;
  (*(v22 + 8))(v25, v21);
  (*(v17 + 8))(v20, v16);
  (*(v87 + 8))(v14, v88);
  v96 = v26;
  v97 = v28;
  sub_25878F648();
  v29 = sub_2588BCDF8();
  v87 = v30;
  v88 = v29;
  v32 = v31;
  LOBYTE(v16) = v33;
  LOBYTE(v21) = sub_2588BCB78();
  sub_2588BBE38();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v22) = v16 & 1;
  v99 = v16 & 1;
  v98 = 0;
  LOBYTE(v16) = sub_2588BCBE8();
  sub_2588BBE38();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  LOBYTE(v96) = 0;
  v50 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  v51 = sub_2588BD148();
  LOBYTE(v25) = sub_2588BCB88();
  sub_258846690(0);
  v53 = &v7[*(v52 + 36)];
  v54 = *(sub_2588BC2A8() + 20);
  v55 = *MEMORY[0x277CE0118];
  v56 = sub_2588BC6B8();
  (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
  __asm { FMOV            V0.2D, #20.0 }

  *v53 = _Q0;
  sub_258846858();
  *&v53[*(v62 + 36)] = 256;
  v63 = v87;
  *v7 = v88;
  *(v7 + 1) = v32;
  v7[16] = v22;
  *(v7 + 3) = v63;
  v7[32] = v21;
  *(v7 + 5) = v35;
  *(v7 + 6) = v37;
  *(v7 + 7) = v39;
  *(v7 + 8) = v41;
  v7[72] = 0;
  v7[80] = v16;
  v64 = v92;
  *(v7 + 11) = v43;
  *(v7 + 12) = v45;
  *(v7 + 13) = v47;
  *(v7 + 14) = v49;
  v7[120] = 0;
  *(v7 + 16) = v51;
  v65 = v90;
  v7[136] = v25;
  v66 = sub_2588BCC08();
  KeyPath = swift_getKeyPath();
  sub_2588466C4(0, &qword_27F95FCD8, sub_258846690, sub_2587B1964);
  v69 = &v7[*(v68 + 36)];
  *v69 = KeyPath;
  v69[1] = v66;
  *&v7[*(v64 + 36)] = sub_2588BD158();
  v71 = v93;
  v70 = v94;
  v72 = v89;
  v73 = v91;
  (*(v94 + 16))(v93, v89, v91);
  v74 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = *(v73 + 16);
  (*(v70 + 32))(v75 + v74, v71, v73);
  v76 = sub_258846940();
  sub_2588BCED8();

  sub_258847974(v7, sub_2588465CC);
  sub_258847674(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_2588BFF50;
  v78 = (v72 + *(v73 + 64));
  v79 = v78[1];
  *(v77 + 32) = *v78;
  *(v77 + 40) = v79;
  *(v77 + 48) = 1702125892;
  *(v77 + 56) = 0xE400000000000000;

  v80 = sub_2588BD9A8();

  v81 = HKUIJoinStringsForAutomationIdentifier();

  if (v81)
  {
    sub_2588BD8A8();

    v96 = v64;
    v97 = v76;
    swift_getOpaqueTypeConformance2();
    v82 = v85;
    sub_2588BCFB8();

    (*(v84 + 8))(v65, v82);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258841BC0(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + *(a1 + 56);
  if (*v3)
  {
    v4 = *(v3 + 8);
    a1 = (*v3)();
  }

  MEMORY[0x28223BE20](a1);
  v6 = *(v2 + 16);
  sub_2588BD5F8();
  sub_2588BC0D8();
}

uint64_t sub_258841C78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](a1);
  if (*(v2 + *(v9 + 60)) == 1 && (v10 = (v2 + *(a1 + 72)), v11 = *v10, v12 = *(v10 + 1), v19[16] = v11, v20 = v12, sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]), result = sub_2588BD2C8(), v19[15] == 1))
  {
    v13 = (v2 + *(a1 + 64));
    v15 = *v13;
    v14 = v13[1];
    (*(v6 + 16))(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a1);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = *(a1 + 16);
    (*(v6 + 32))(v17 + v16, &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);

    v18 = sub_258847864;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v18 = 0;
    v17 = 0;
  }

  *a2 = v15;
  a2[1] = v14;
  a2[2] = v18;
  a2[3] = v17;
  return result;
}

uint64_t sub_258841E48(uint64_t a1)
{
  v2 = type metadata accessor for DatePickerEditView();
  v3 = a1 + *(v2 + 56);
  if (*v3)
  {
    v4 = *(v3 + 8);
    (*v3)();
  }

  sub_2587AFFC8(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2588BB9B8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_25884132C(v8);
  v10 = (a1 + *(v2 + 72));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[16] = v11;
  v15 = v12;
  v14[15] = 0;
  sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_258841F90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v134 = sub_2588BC908();
  v133 = *(v134 - 8);
  v3 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588468EC(0, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
  v131 = v5;
  v130 = *(v5 - 8);
  v6 = *(v130 + 64);
  MEMORY[0x28223BE20](v5);
  v129 = &v127 - v7;
  sub_258846258();
  v170 = v8;
  v171 = *(v8 - 8);
  v9 = *(v171 + 64);
  MEMORY[0x28223BE20](v8);
  v128 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588463DC(0);
  v166 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v167 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v169 = &v127 - v16;
  v184 = *(a1 - 1);
  v183 = *(v184 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DFBD0();
  sub_258846410(255);
  v19 = *(a1 + 2);
  sub_2588BC788();
  swift_getTupleTypeMetadata3();
  sub_2588BD658();
  swift_getWitnessTable();
  v20 = sub_2588BD368();
  sub_258846D18(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v21 = sub_2588BD408();
  v156 = v21;
  v157 = v20;
  WitnessTable = swift_getWitnessTable();
  v155 = WitnessTable;
  v154 = swift_getWitnessTable();
  v189 = v20;
  v190 = v21;
  v191 = WitnessTable;
  v192 = v154;
  v23 = type metadata accessor for MedicalIDAXLayoutView();
  v158 = *(v23 - 8);
  v24 = *(v158 + 64);
  MEMORY[0x28223BE20](v23);
  v149 = (&v127 - v25);
  v141 = v23;
  v26 = sub_2588BC1E8();
  v153 = *(v26 - 8);
  v27 = *(v153 + 64);
  MEMORY[0x28223BE20](v26);
  v147 = &v127 - v28;
  sub_258837EEC();
  v142 = v26;
  v29 = sub_2588BC1E8();
  v159 = *(v29 - 8);
  v30 = *(v159 + 64);
  MEMORY[0x28223BE20](v29);
  v143 = &v127 - v31;
  v140 = swift_getWitnessTable();
  v188[4] = v140;
  v188[5] = MEMORY[0x277CE03F0];
  v32 = swift_getWitnessTable();
  v139 = v32;
  v33 = sub_25884772C(qword_27F95FA28, sub_258837EEC);
  v188[2] = v32;
  v188[3] = v33;
  v34 = swift_getWitnessTable();
  v189 = v29;
  v190 = v34;
  v137 = v29;
  v35 = v34;
  v138 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v160 = *(OpaqueTypeMetadata2 - 8);
  v37 = *(v160 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v174 = &v127 - v38;
  sub_2587AFFC8(255);
  v40 = v39;
  v189 = v29;
  v190 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_258846EB8();
  v43 = OpaqueTypeMetadata2;
  v144 = OpaqueTypeMetadata2;
  v189 = OpaqueTypeMetadata2;
  v190 = v40;
  v44 = v40;
  v136 = v40;
  v191 = OpaqueTypeConformance2;
  v192 = v42;
  v146 = OpaqueTypeConformance2;
  v145 = v42;
  v45 = MEMORY[0x277CE0E40];
  v46 = swift_getOpaqueTypeMetadata2();
  v47 = sub_2588BB9B8();
  v148 = v47;
  v189 = v43;
  v190 = v44;
  v191 = OpaqueTypeConformance2;
  v192 = v42;
  v163 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v162 = v48;
  v161 = sub_258847538(&qword_27F95E768);
  v189 = v46;
  v190 = v47;
  v191 = v48;
  v192 = v161;
  v176 = swift_getOpaqueTypeMetadata2();
  v177 = *(v176 - 8);
  v49 = *(v177 + 64);
  v50 = MEMORY[0x28223BE20](v176);
  v178 = &v127 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v51;
  MEMORY[0x28223BE20](v50);
  v164 = v52;
  v151 = &v127 - v52;
  v150 = swift_checkMetadataState();
  v152 = *(v150 - 8);
  v53 = *(v152 + 64);
  MEMORY[0x28223BE20](v150);
  v175 = &v127 - v54;
  v56 = v184;
  v55 = v185;
  v57 = *(v184 + 16);
  v180 = v184 + 16;
  v57(v18, v185, a1);
  v58 = *(v56 + 80);
  v181 = v57;
  v182 = v58;
  v59 = (v58 + 32) & ~v58;
  v179 = v59;
  v60 = swift_allocObject();
  v172 = *(a1 + 3);
  v61 = v172;
  v173 = v19;
  *(v60 + 16) = v19;
  *(v60 + 24) = v61;
  v62 = *(v56 + 32);
  v62(v60 + v59, v18, a1);
  v184 = v56 + 32;
  v57(v18, v55, a1);
  v63 = v179;
  v64 = swift_allocObject();
  v65 = v172;
  *(v64 + 16) = v19;
  *(v64 + 24) = v65;
  v66 = a1;
  v62(v64 + v63, v18, a1);
  v67 = v149;
  sub_258855170(sub_258846F40, v60, sub_258847214, v64, v149);
  v68 = v147;
  v69 = v141;
  sub_2588BCEA8();
  (*(v158 + 8))(v67, v69);
  sub_2587A7B40();
  v70 = v143;
  v71 = v142;
  sub_2588BCEB8();
  (*(v153 + 8))(v68, v71);
  v135 = v18;
  v72 = v66;
  v181(v18, v185, v66);
  v73 = v179;
  v74 = swift_allocObject();
  v75 = v173;
  *(v74 + 16) = v173;
  *(v74 + 24) = v65;
  v76 = v72;
  v62(v74 + v73, v18, v72);
  v77 = v137;
  sub_2588BCED8();

  (*(v159 + 8))(v70, v77);
  v78 = swift_checkMetadataState();
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v127 - v80;
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v82 = v185;
  MEMORY[0x259C8C5A0]();
  v83 = v135;
  v181(v135, v82, v76);
  v84 = v179;
  v85 = swift_allocObject();
  *(v85 + 16) = v75;
  *(v85 + 24) = v65;
  v86 = v84;
  v87 = v83;
  v62(v85 + v84, v83, v76);
  v88 = v144;
  v89 = v174;
  sub_2588BD118();

  sub_258847974(v81, sub_2587AFFC8);
  (*(v160 + 8))(v89, v88);
  v90 = swift_checkMetadataState();
  v174 = *(v90 - 8);
  v91 = *(v174 + 8);
  MEMORY[0x28223BE20](v90);
  v93 = &v127 - v92;
  v94 = v76[17];
  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v95 = v185;
  sub_2588BD2C8();
  v181(v87, v95, v76);
  v96 = swift_allocObject();
  v97 = v172;
  *(v96 + 16) = v173;
  *(v96 + 24) = v97;
  v98 = v96 + v86;
  v99 = v76;
  v100 = v176;
  v62(v98, v87, v76);
  v101 = v151;
  v102 = v150;
  v103 = v162;
  v104 = v161;
  v105 = v175;
  sub_2588BD118();

  (*(v174 + 1))(v93, v90);
  (*(v152 + 8))(v105, v102);
  v189 = v102;
  v190 = v90;
  v191 = v103;
  v192 = v104;
  v106 = swift_getOpaqueTypeConformance2();
  sub_2587DCF7C(v101, v100, v106);
  v107 = *(v177 + 8);
  v107(v101, v100);
  v108 = v185;
  v109 = (v185 + v99[18]);
  v110 = *v109;
  v111 = *(v109 + 1);
  LOBYTE(v189) = v110;
  v190 = v111;
  sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v112 = 1;
  if (LOBYTE(v188[0]) == 1)
  {
    v113 = v106;
    v114 = v129;
    sub_258844FC4(v108 + v99[11], v108 + v99[12], v99, v129);
    v115 = v132;
    sub_2588BC8F8();
    sub_258846358();
    sub_25884772C(&qword_27F95FC98, MEMORY[0x277CDE290]);
    v116 = v128;
    v117 = v131;
    v118 = v134;
    sub_2588BCEF8();
    (*(v133 + 8))(v115, v118);
    v119 = v114;
    v106 = v113;
    (*(v130 + 8))(v119, v117);
    (*(v171 + 32))(v169, v116, v170);
    v112 = 0;
  }

  v120 = v169;
  v121 = (*(v171 + 56))(v169, v112, 1, v170);
  MEMORY[0x28223BE20](v121);
  v122 = &v127 - v164;
  v123 = v178;
  v124 = v176;
  (*(v177 + 16))(&v127 - v164, v178, v176);
  v189 = v122;
  v125 = v167;
  sub_258847774(v120, v167, sub_2588463DC);
  v190 = v125;
  v188[0] = v124;
  v188[1] = v166;
  v186 = v106;
  v187 = sub_258847300();
  sub_25881C7E0(&v189, 2uLL, v188);
  sub_258847A44(v120, sub_2588463DC);
  v107(v123, v124);
  sub_258847A44(v125, sub_2588463DC);
  return (v107)(v122, v124);
}

uint64_t sub_2588432CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587DFBD0();
  sub_258846410(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata3();
  sub_2588BD658();
  swift_getWitnessTable();
  v6 = sub_2588BD368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  v18 = a2;
  v19 = a3;
  v20 = a1;
  sub_2588BC608();
  sub_2588BD358();
  WitnessTable = swift_getWitnessTable();
  sub_2587DCF7C(v11, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v11, v6);
  sub_2587DCF7C(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

void sub_2588434E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v72 = *(a2 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v69 - v10;
  sub_258846410(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v15;
  v16 = sub_2588BC788();
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v69 - v20;
  sub_2587DFBD0();
  v78 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  v75 = a2;
  v84 = a3;
  v27 = type metadata accessor for DatePickerEditView();
  v28 = (a1 + *(v27 + 36));
  v29 = v28[1];
  v94 = *v28;
  v95 = v29;
  sub_25878F648();

  v30 = MEMORY[0x277D837D0];
  v31 = sub_2588BCDF8();
  v33 = v32;
  v94 = v31;
  v95 = v32;
  v35 = v34 & 1;
  LOBYTE(v96) = v34 & 1;
  v97 = v36;
  sub_258847674(0, &qword_280C0DDD0, v30, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2588BFF50;
  v73 = v27;
  v38 = *(v27 + 64);
  v76 = a1;
  v39 = (a1 + v38);
  v40 = v39[1];
  *(v37 + 32) = *v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = 0x656C746954;
  *(v37 + 56) = 0xE500000000000000;

  v41 = sub_2588BD9A8();

  v42 = HKUIJoinStringsForAutomationIdentifier();

  if (v42)
  {
    sub_2588BD8A8();

    v74 = v26;
    sub_2588BCFB8();

    sub_2587B1CF8(v31, v33, v35);

    sub_2587AFFC8(0);
    v44 = *(*(v43 - 8) + 64);
    MEMORY[0x28223BE20](v43 - 8);
    v46 = &v69 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v47 = v76;
    MEMORY[0x259C8C5A0]();
    v48 = sub_2588BB9B8();
    v49 = (*(*(v48 - 8) + 48))(v46, 1, v48);
    sub_258847974(v46, sub_2587AFFC8);
    if (v49 == 1 && (v50 = (v47 + *(v73 + 72)), v51 = *v50, v52 = *(v50 + 1), LOBYTE(v94) = v51, v95 = v52, sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]), v53 = sub_2588BD2C8(), LOBYTE(v91[0]) != 1))
    {
      v57 = v47 + *(v73 + 60);
      v58 = *(v57 + 8);
      v59 = v71;
      (*v57)(v53);
      v60 = v70;
      v61 = v75;
      v55 = v84;
      sub_2587DCF7C(v59, v75, v84);
      v62 = *(v72 + 8);
      v62(v59, v61);
      sub_2587DCF7C(v60, v61, v55);
      sub_25884772C(&qword_27F95FDE0, sub_258846410);
      v56 = v80;
      sub_2587D7A98(v59, v77, v61);
      v62(v59, v61);
      v62(v60, v61);
    }

    else
    {
      *v14 = sub_2588BC608();
      *(v14 + 1) = 0;
      v14[16] = 1;
      sub_2588479E0(0, qword_27F95FDE8, sub_25884644C);
      v55 = v84;
      sub_258843D5C(&v14[*(v54 + 44)]);
      sub_25884772C(&qword_27F95FDE0, sub_258846410);
      v56 = v80;
      sub_2587D79A0(v14, v77);
      sub_258847A44(v14, sub_258846410);
    }

    v63 = v74;
    v64 = v79;
    sub_2588476C4(v74, v79, sub_2587DFBD0);
    v92 = 0;
    v93 = 1;
    v94 = v64;
    v95 = &v92;
    v66 = v81;
    v65 = v82;
    v67 = v83;
    (*(v82 + 16))(v81, v56, v83);
    v96 = v66;
    v91[0] = v78;
    v91[1] = MEMORY[0x277CE1180];
    v91[2] = v67;
    v88 = sub_2587DFB50();
    v89 = MEMORY[0x277CE1170];
    v86 = sub_25884772C(&qword_27F95FDE0, sub_258846410);
    v87 = v55;
    WitnessTable = swift_getWitnessTable();
    sub_25881C7E0(&v94, 3uLL, v91);
    v68 = *(v65 + 8);
    v68(v56, v67);
    sub_258847974(v63, sub_2587DFBD0);
    v68(v66, v67);
    sub_258847974(v64, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258843D5C@<X0>(uint64_t a1@<X8>)
{
  sub_258846514(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = type metadata accessor for DatePickerEditView();
  sub_25884141C(v9, v8);
  sub_258841C78(v9, v17);
  v10 = v17[0];
  v11 = v17[1];
  v12 = v17[2];
  v13 = v17[3];
  sub_258847774(v8, v6, sub_258846514);
  sub_258847774(v6, a1, sub_258846514);
  sub_258846480();
  v15 = (a1 + *(v14 + 48));
  *v15 = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  sub_2588477DC(v10, v11);
  sub_258847A44(v8, sub_258846514);
  sub_258847820(v10, v11);
  return sub_258847A44(v6, sub_258846514);
}

uint64_t sub_258843EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587DFBD0();
  sub_258846D18(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v6 = sub_2588BD408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  sub_2588BC6F8();
  v18 = a2;
  v19 = a3;
  v20 = a1;
  sub_2588BD3F8();
  WitnessTable = swift_getWitnessTable();
  sub_2587DCF7C(v11, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v11, v6);
  sub_2587DCF7C(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

void sub_2588440EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v72 = *(a2 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v69 - v10;
  sub_258846D18(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v15;
  v16 = sub_2588BC788();
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v69 - v20;
  sub_2587DFBD0();
  v77 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - v25;
  v75 = a2;
  v84 = a3;
  v27 = type metadata accessor for DatePickerEditView();
  v28 = (a1 + *(v27 + 36));
  v29 = v28[1];
  v91 = *v28;
  v92 = v29;
  sub_25878F648();

  v30 = MEMORY[0x277D837D0];
  v31 = sub_2588BCDF8();
  v33 = v32;
  v91 = v31;
  v92 = v32;
  v35 = v34 & 1;
  v93 = v34 & 1;
  v94 = v36;
  sub_258847674(0, &qword_280C0DDD0, v30, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2588BFF50;
  v73 = v27;
  v38 = *(v27 + 64);
  v76 = a1;
  v39 = (a1 + v38);
  v40 = v39[1];
  *(v37 + 32) = *v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = 0x656C746954;
  *(v37 + 56) = 0xE500000000000000;

  v41 = sub_2588BD9A8();

  v42 = HKUIJoinStringsForAutomationIdentifier();

  if (v42)
  {
    sub_2588BD8A8();

    v74 = v26;
    sub_2588BCFB8();

    sub_2587B1CF8(v31, v33, v35);

    sub_2587AFFC8(0);
    v44 = *(*(v43 - 8) + 64);
    MEMORY[0x28223BE20](v43 - 8);
    v46 = &v69 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v47 = v76;
    MEMORY[0x259C8C5A0]();
    v48 = sub_2588BB9B8();
    v49 = (*(*(v48 - 8) + 48))(v46, 1, v48);
    sub_258847974(v46, sub_2587AFFC8);
    if (v49 == 1 && (v50 = (v47 + *(v73 + 72)), v51 = *v50, v52 = *(v50 + 1), LOBYTE(v91) = v51, v92 = v52, sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]), v53 = sub_2588BD2C8(), LOBYTE(v90[0]) != 1))
    {
      v57 = v47 + *(v73 + 60);
      v58 = *(v57 + 8);
      v59 = v71;
      (*v57)(v53);
      v60 = v70;
      v61 = v75;
      v55 = v84;
      sub_2587DCF7C(v59, v75, v84);
      v62 = *(v72 + 8);
      v62(v59, v61);
      sub_2587DCF7C(v60, v61, v55);
      sub_25884772C(&qword_27F95FDD0, sub_258846D18);
      v56 = v80;
      sub_2587D7A98(v59, v78, v61);
      v62(v59, v61);
      v62(v60, v61);
    }

    else
    {
      *v14 = sub_2588BC608();
      *(v14 + 1) = 0;
      v14[16] = 1;
      sub_2588479E0(0, &qword_27F95FDD8, sub_258846DE8);
      v55 = v84;
      sub_258844918(&v14[*(v54 + 44)]);
      sub_25884772C(&qword_27F95FDD0, sub_258846D18);
      v56 = v80;
      sub_2587D79A0(v14, v78);
      sub_258847A44(v14, sub_258846D18);
    }

    v63 = v74;
    v64 = v79;
    sub_2588476C4(v74, v79, sub_2587DFBD0);
    v91 = v64;
    v66 = v81;
    v65 = v82;
    v67 = v83;
    (*(v82 + 16))(v81, v56, v83);
    v92 = v66;
    v90[0] = v77;
    v90[1] = v67;
    v88 = sub_2587DFB50();
    v86 = sub_25884772C(&qword_27F95FDD0, sub_258846D18);
    v87 = v55;
    WitnessTable = swift_getWitnessTable();
    sub_25881C7E0(&v91, 2uLL, v90);
    v68 = *(v65 + 8);
    v68(v56, v67);
    sub_258847974(v63, sub_2587DFBD0);
    v68(v66, v67);
    sub_258847974(v64, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258844918@<X0>(uint64_t a1@<X8>)
{
  sub_258846514(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = type metadata accessor for DatePickerEditView();
  sub_25884141C(v9, v8);
  sub_258841C78(v9, v18);
  v10 = v18[0];
  v11 = v18[1];
  v12 = v18[2];
  v13 = v18[3];
  sub_258847774(v8, v6, sub_258846514);
  sub_258847774(v6, a1, sub_258846514);
  sub_258846E1C();
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (a1 + *(v14 + 64));
  *v16 = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  sub_2588477DC(v10, v11);
  sub_258847A44(v8, sub_258846514);
  sub_258847820(v10, v11);
  return sub_258847A44(v6, sub_258846514);
}

uint64_t sub_258844AD4(uint64_t a1)
{
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2587AFFC8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DatePickerEditView();
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    v11 = sub_258847974(v9, sub_2587AFFC8);
    v12 = *(v10 + 40);
    v13 = *(v10 + 68);
    MEMORY[0x28223BE20](v11);
    (*(v3 + 16))(&v18 - v5, a1 + v14, v2);
    sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
    return sub_2588BD2D8();
  }

  else
  {
    v16 = (*(v3 + 32))(&v18 - v5, v9, v2);
    v17 = *(v10 + 68);
    MEMORY[0x28223BE20](v16);
    (*(v3 + 16))(&v18 - v5, &v18 - v5, v2);
    sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
    sub_2588BD2D8();
    return (*(v3 + 8))(&v18 - v5, v2);
  }
}

uint64_t sub_258844DBC(uint64_t a1)
{
  v2 = type metadata accessor for DatePickerEditView();
  v3 = a1 + *(v2 + 56);
  if (*v3)
  {
    v4 = *(v3 + 8);
    (*v3)();
  }

  sub_2587AFFC8(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(&v13 - v7, 1, v8);
  result = sub_258847974(&v13 - v7, sub_2587AFFC8);
  if (v10 != 1)
  {
    MEMORY[0x28223BE20](result);
    v12 = *(v2 + 68);
    sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    (*(v9 + 56))(&v13 - v7, 0, 1, v8);
    return sub_25884132C(&v13 - v7);
  }

  return result;
}

uint64_t sub_258844FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v109 = a3;
  v108 = a4;
  v6 = sub_2588BC7A8();
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = v105[8];
  MEMORY[0x28223BE20](v6);
  v107 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2588BB9B8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v91 - v12;
  sub_2587AFFC8(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588476C4(a1, v91 - v15, sub_2587AFFC8);
  v16 = v10[6];
  v17 = v16(v91 - v15, 1, v9);
  v104 = v10;
  if (v17 == 1)
  {
    v18 = sub_258847974(v91 - v15, sub_2587AFFC8);
    v19 = MEMORY[0x28223BE20](v18);
    v20 = v91 - v12;
    MEMORY[0x28223BE20](v19);
    sub_2588476C4(a2, v91 - v15, sub_2587AFFC8);
    if (v16(v91 - v15, 1, v9) == 1)
    {
      sub_258847974(v91 - v15, sub_2587AFFC8);
      sub_2588BC688();
      v21 = MEMORY[0x28220BF88];
      sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
      v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v22 - 8);
      v24 = *(v109 + 68);
      sub_258847458(0, &qword_27F95E7E8, v21, MEMORY[0x277CE10B8]);
      sub_2588BD2E8();
      sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
      v25 = v105[9];
      v26 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2588C00B0;
      sub_2588BC798();
      v112 = v27;
      sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8]);
      sub_258847424(0);
      sub_25884772C(&qword_27F95FDA8, sub_258847424);
      sub_2588BDD48();
      return sub_2588BBDF8();
    }

    v45 = v104;
    (v104[4])(v20, v91 - v15, v9);
    sub_2588BC688();
    v111 = v46;
    LODWORD(v101) = v47;
    v103 = v48;
    v49 = MEMORY[0x28220BF88];
    sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
    v102 = v91;
    v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v50 - 8);
    v52 = *(v109 + 68);
    sub_258847458(0, &qword_27F95E7E8, v49, MEMORY[0x277CE10B8]);
    sub_2588BD2E8();
    sub_2588474BC(0, &qword_27F95FDB0, MEMORY[0x277D84468]);
    v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v53 - 8);
    v56 = v91 - v55;
    sub_258847538(&qword_27F95E768);
    result = sub_2588BD7D8();
    if (result)
    {
      (v45[2])(v56, v20, v9);
      sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
      v57 = v105[9];
      v58 = *(v105 + 80);
      v110 = v56;
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2588C00B0;
      sub_2588BC798();
      v112 = v59;
      sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8]);
      sub_258847424(0);
      sub_25884772C(&qword_27F95FDA8, sub_258847424);
      sub_2588BDD48();
      sub_2588BBE28();
      return (v45[1])(v20, v9);
    }

    goto LABEL_13;
  }

  v102 = v10[4];
  v103 = v10 + 4;
  v29 = v102(v111, v91 - v15, v9);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = v91 - v12;
  MEMORY[0x28223BE20](v30);
  sub_2588476C4(a2, v91 - v15, sub_2587AFFC8);
  if (v16(v91 - v15, 1, v9) == 1)
  {
    sub_258847974(v91 - v15, sub_2587AFFC8);
    v32 = sub_2588BC688();
    v33 = MEMORY[0x28220BF88];
    sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
    v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v34 - 8);
    v36 = *(v109 + 68);
    sub_258847458(0, &qword_27F95E7E8, v33, MEMORY[0x277CE10B8]);
    sub_2588BD2E8();
    sub_2588474BC(0, &qword_27F95FDB8, MEMORY[0x277D84328]);
    v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v37 - 8);
    v40 = v91 - v39;
    sub_258847538(&qword_27F95E768);
    result = sub_2588BD7D8();
    if (result)
    {
      v109 = v32;
      v110 = v91;
      v41 = v104;
      (v104[2])(v40, v111, v9);
      sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
      v42 = v105[9];
      v43 = *(v105 + 80);
      v105 = v91;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_2588C00B0;
      sub_2588BC798();
      v112 = v44;
      sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8]);
      sub_258847424(0);
      sub_25884772C(&qword_27F95FDA8, sub_258847424);
      sub_2588BDD48();
      sub_2588BBE18();
      return (v41[1])(v111, v9);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v101 = v91;
  v102(v31, v91 - v15, v9);
  v60 = sub_2588BC688();
  v99 = v62;
  v100 = v61;
  v64 = v63;
  v65 = MEMORY[0x28220BF88];
  sub_258847458(0, &qword_27F95FD88, MEMORY[0x28220BF88], MEMORY[0x277CE11F8]);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66 - 8);
  v69 = v91 - v68;
  v70 = *(v109 + 68);
  sub_258847458(0, &qword_27F95E7E8, v65, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_2588474BC(0, &qword_27F95FDC0, MEMORY[0x277D83638]);
  v109 = v71;
  v110 = v91;
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v74 = v91 - v73;
  sub_258847538(&qword_27F95D888);
  result = sub_2588BD7C8();
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_25884757C();
  v93 = v91;
  v77 = v75 - 8;
  v76 = *(v75 - 8);
  v98 = v91;
  v78 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  v96 = v60;
  v97 = v69;
  v94 = v31;
  v79 = v91 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = v64;
  v80 = v104;
  v81 = v104[2];
  v81(v79, v111, v9);
  v82 = (v81)(&v79[*(v77 + 56)], v31, v9);
  v91[1] = v91;
  MEMORY[0x28223BE20](v82);
  sub_2588476C4(v79, v79, sub_25884757C);
  v83 = *(v77 + 56);
  v91[0] = v74;
  v84 = v102;
  v102(v74, v79, v9);
  v85 = v80[1];
  v86 = v85(&v79[v83], v9);
  MEMORY[0x28223BE20](v86);
  v87 = v91 - v92;
  sub_2588475E4(v79, v91 - v92);
  v84((v91[0] + *(v109 + 36)), &v87[*(v77 + 56)], v9);
  v85(v87, v9);
  sub_258847458(0, &qword_27F95FD90, MEMORY[0x277CDDFC8], MEMORY[0x277D84560]);
  v88 = v105[9];
  v89 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_2588C00B0;
  sub_2588BC798();
  v112 = v90;
  sub_25884772C(&qword_27F95FD98, MEMORY[0x277CDDFC8]);
  sub_258847424(0);
  sub_25884772C(&qword_27F95FDA8, sub_258847424);
  sub_2588BDD48();
  sub_2588BBE08();
  v85(v94, v9);
  return v85(v111, v9);
}

uint64_t sub_258845FE4(uint64_t a1)
{
  sub_2587AFFC8(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = type metadata accessor for DatePickerEditView();
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  v6 = sub_2588BB9B8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(&v14[-v4], 1, v6);
  v9 = sub_258847974(&v14[-v4], sub_2587AFFC8);
  if (v8 == 1)
  {
    MEMORY[0x28223BE20](v9);
    (*(v7 + 16))(&v14[-v4], a1 + *(v5 + 40), v6);
    (*(v7 + 56))(&v14[-v4], 0, 1, v6);
    sub_25884132C(&v14[-v4]);
  }

  v10 = (a1 + *(v5 + 72));
  v12 = *(v10 + 1);
  v16 = *v10;
  v11 = v16;
  v17 = v12;
  sub_258847674(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_2588BD2C8();
  v14[0] = v11;
  v15 = v12;
  v18 = (v19 & 1) == 0;
  sub_2588BD2D8();
}

void sub_258846258()
{
  if (!qword_27F95FC88)
  {
    sub_2588468EC(255, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_2588BC908();
    sub_258846358();
    sub_25884772C(&qword_27F95FC98, MEMORY[0x277CDE290]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FC88);
    }
  }
}

unint64_t sub_258846358()
{
  result = qword_27F95FC90;
  if (!qword_27F95FC90)
  {
    sub_2588468EC(255, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FC90);
  }

  return result;
}

void sub_258846480()
{
  if (!qword_27F95FCB8)
  {
    sub_258846514(255);
    sub_258847674(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FCB8);
    }
  }
}

void sub_258846548()
{
  if (!qword_27F95FCC8)
  {
    sub_2588465CC();
    sub_258846940();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FCC8);
    }
  }
}

void sub_2588465CC()
{
  if (!qword_27F95FCD0)
  {
    sub_2588466C4(255, &qword_27F95FCD8, sub_258846690, sub_2587B1964);
    sub_2588468EC(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FCD0);
    }
  }
}

void sub_2588466C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258846738()
{
  if (!qword_27F95FCE8)
  {
    sub_2588467CC();
    sub_2588468EC(255, &qword_27F95FCF8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FCE8);
    }
  }
}

void sub_2588467CC()
{
  if (!qword_27F95FCF0)
  {
    sub_2588468EC(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FCF0);
    }
  }
}

void sub_258846858()
{
  if (!qword_27F95FD00)
  {
    sub_2588BC2A8();
    sub_25884772C(&qword_27F95FD08, MEMORY[0x277CDFC08]);
    v0 = sub_2588BBFB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FD00);
    }
  }
}

void sub_2588468EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_258846940()
{
  result = qword_27F95FD10;
  if (!qword_27F95FD10)
  {
    sub_2588465CC();
    sub_2588469F8();
    sub_258846CC0(&qword_27F95F8E0, &qword_27F95D950, MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD10);
  }

  return result;
}

unint64_t sub_2588469F8()
{
  result = qword_27F95FD18;
  if (!qword_27F95FD18)
  {
    sub_2588466C4(255, &qword_27F95FCD8, sub_258846690, sub_2587B1964);
    sub_258846AD8();
    sub_25884772C(&qword_27F95D9B8, sub_2587B1964);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD18);
  }

  return result;
}

unint64_t sub_258846AD8()
{
  result = qword_27F95FD20;
  if (!qword_27F95FD20)
  {
    sub_258846690(255);
    sub_258846B88();
    sub_25884772C(&qword_27F95FD40, sub_258846858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD20);
  }

  return result;
}

unint64_t sub_258846B88()
{
  result = qword_27F95FD28;
  if (!qword_27F95FD28)
  {
    sub_258846738();
    sub_258846C40();
    sub_258846CC0(&qword_27F95FD38, &qword_27F95FCF8, MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD28);
  }

  return result;
}

unint64_t sub_258846C40()
{
  result = qword_27F95FD30;
  if (!qword_27F95FD30)
  {
    sub_2588467CC();
    sub_2587C4C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD30);
  }

  return result;
}

uint64_t sub_258846CC0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2588468EC(255, a2, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258846D54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25884772C(a4, a5);
    v8 = sub_2588BD368();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258846E1C()
{
  if (!qword_27F95FD68)
  {
    sub_258846514(255);
    sub_258847674(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95FD68);
    }
  }
}

unint64_t sub_258846EB8()
{
  result = qword_27F95FD78;
  if (!qword_27F95FD78)
  {
    sub_2587AFFC8(255);
    sub_258847538(&qword_27F95E768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD78);
  }

  return result;
}

uint64_t objectdestroyTm_21()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for DatePickerEditView();
  v25 = *(*(v3 - 1) + 64);
  v4 = (v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80)));
  v5 = *v4;

  v6 = *(v4 + 1);

  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v8 = *(v7 + 32);
  v9 = sub_2588BB9B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(&v4[v8], 1, v9))
  {
    (*(v10 + 8))(&v4[v8], v9);
  }

  v12 = *&v4[v3[9] + 8];

  v13 = *(v10 + 8);
  v13(&v4[v3[10]], v9);
  v14 = v3[11];
  if (!v11(&v4[v14], 1, v9))
  {
    v13(&v4[v14], v9);
  }

  v15 = v3[12];
  if (!v11(&v4[v15], 1, v9))
  {
    v13(&v4[v15], v9);
  }

  v16 = &v4[v3[14]];
  if (*v16)
  {
    v17 = *(v16 + 1);
  }

  v18 = *&v4[v3[15] + 8];

  v19 = *&v4[v3[16] + 8];

  v20 = &v4[v3[17]];
  v13(v20, v9);
  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v22 = *&v20[*(v21 + 28)];

  v23 = *&v4[v3[18] + 8];

  return swift_deallocObject();
}

uint64_t sub_25884722C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for DatePickerEditView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_258847300()
{
  result = qword_27F95FD80;
  if (!qword_27F95FD80)
  {
    sub_2588463DC(255);
    sub_2588468EC(255, &qword_27F95FC80, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_2588BC908();
    sub_258846358();
    sub_25884772C(&qword_27F95FC98, MEMORY[0x277CDE290]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD80);
  }

  return result;
}

void sub_258847458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588474BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2588BB9B8();
    v7 = sub_258847538(&qword_27F95D888);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258847538(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2588BB9B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25884757C()
{
  if (!qword_27F95FDC8)
  {
    sub_2588BB9B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FDC8);
    }
  }
}

uint64_t sub_2588475E4(uint64_t a1, uint64_t a2)
{
  sub_25884757C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258847648()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_258845FE4(v0[4]);
}

void sub_258847674(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2588476C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25884772C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258847774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2588477DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_258847820(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25884787C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for DatePickerEditView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_258847914()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for DatePickerEditView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_258841BC0(v3);
}

uint64_t sub_258847974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2588479E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258847A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258847AC8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_258847B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258847BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 65) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 63) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_258847D50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 65) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 63) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_258848014(uint64_t a1)
{
  sub_258848A9C(255, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  v2 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v3 = sub_2588BD408();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_2588BC1E8();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  sub_2588BC6F8();
  v8 = *(v10 + 56);
  v11 = *(a1 + 24);
  sub_2588BD3F8();
  swift_getWitnessTable();
  sub_25885A310();
}

uint64_t sub_25884825C()
{
  (*(v7 + 8))(v1, v4);
  v9 = sub_258848828();
  *(v8 - 96) = v0;
  *(v8 - 88) = v9;
  WitnessTable = swift_getWitnessTable();
  sub_2587DCF7C(v6, v2, WitnessTable);
  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = *(v8 - 152);
  sub_2587DCF7C(v5, v2, WitnessTable);
  return (v11)(v5, v2);
}

uint64_t sub_258848314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for MedicalIDCellHeaderView();
  v46 = *(v14 - 1);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258848A9C(0, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  v47 = v18;
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v25 = &v41 - v23;
  if (*(v24 + 64) == 1)
  {
    v26 = v24[2];
    v50 = v24[1];
    v51 = v26;
    v52 = *(v24 + 6);
    v49 = *v24;
    v45 = a4;
    v27 = v14[5];
    v41 = v24;
    *&v17[v27] = swift_getKeyPath();
    sub_258848A9C(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v28 = v14[6];
    v43 = a3;
    v29 = &v17[v28];
    sub_2587EB238(&v49, v48);
    v42 = v13;
    v44 = v11;
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    *v29 = sub_2588BC358();
    v29[1] = v30;
    v31 = &v17[v14[7]];
    sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
    sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8);
    *v31 = sub_2588BC358();
    v31[1] = v32;
    v33 = &v17[v14[8]];
    sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
    v11 = v44;
    sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
    v13 = v42;
    *v33 = sub_2588BC358();
    v33[1] = v34;
    a3 = v43;
    *(v17 + 6) = v52;
    v35 = v51;
    *(v17 + 1) = v50;
    *(v17 + 2) = v35;
    *v17 = v49;
    v36 = v17;
    v37 = v41;
    sub_258848B00(v36, v25);
    (*(v46 + 56))(v25, 0, 1, v14);
  }

  else
  {
    v37 = v24;
    (*(v46 + 56))(&v41 - v23, 1, 1, v14);
  }

  v38 = type metadata accessor for MedicalIDCellView();
  sub_2587DCF7C(v37 + *(v38 + 44), a2, a3);
  sub_25884887C(v25, v22);
  *&v49 = v22;
  (*(v7 + 16))(v11, v13, a2);
  *(&v49 + 1) = v11;
  v48[0] = v47;
  v48[1] = a2;
  v53 = sub_258848910();
  v54 = a3;
  sub_25881C7E0(&v49, 2uLL, v48);
  v39 = *(v7 + 8);
  v39(v13, a2);
  sub_258848A10(v25);
  v39(v11, a2);
  return sub_258848A10(v22);
}

unint64_t sub_258848828()
{
  result = qword_27F95FE78;
  if (!qword_27F95FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FE78);
  }

  return result;
}

uint64_t sub_25884887C(uint64_t a1, uint64_t a2)
{
  sub_258848A9C(0, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258848910()
{
  result = qword_27F95FE80;
  if (!qword_27F95FE80)
  {
    sub_258848A9C(255, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
    sub_2588489B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FE80);
  }

  return result;
}

unint64_t sub_2588489B8()
{
  result = qword_27F95FE88;
  if (!qword_27F95FE88)
  {
    type metadata accessor for MedicalIDCellHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FE88);
  }

  return result;
}

uint64_t sub_258848A10(uint64_t a1)
{
  sub_258848A9C(0, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258848A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258848B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDCellHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MedicalIDEditMedicalNotesModalView()
{
  result = qword_27F95FE90;
  if (!qword_27F95FE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258848BD8()
{
  sub_258803250();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDMedicalInfoViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258848C78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MedicalIDEditMedicalNotesModalView();
  sub_258802C20(v1 + *(v7 + 20), v6);
  v8 = sub_2588BD858();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v10 = qword_27F95DA88;
  v11 = sub_2588BBAC8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v10;
  sub_2588BBAB8();
  v14 = sub_2588BD8B8();
  sub_25887C984(v6, v14, v15, v23);
  v22[3] = &type metadata for NotesConfiguration;
  v22[4] = &off_2869C19D0;
  v16 = swift_allocObject();
  v22[0] = v16;
  v17 = v23[3];
  v16[3] = v23[2];
  v16[4] = v17;
  v18 = v23[5];
  v16[5] = v23[4];
  v16[6] = v18;
  v19 = v23[1];
  v16[1] = v23[0];
  v16[2] = v19;
  return sub_25884E278(v22, sub_258803354, 0, a1);
}

uint64_t ImageProcessorError.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

void *_s11MedicalIDUI16UIImageProcessorV5scale5image2toSo0C0CSgAH_So6CGSizeVtAA05ImageD5ErrorOYKF(void *a1, _BYTE *a2, double a3, double a4)
{
  if (a3 <= 0.0 || a4 <= 0.0)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v19 = sub_2588BBC98();
    __swift_project_value_buffer(v19, qword_27F969938);
    v20 = sub_2588BBC78();
    v21 = sub_2588BDBD8();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_24;
    }

    v4 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v4 = 136315394;
    *(v4 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
    *(v4 + 12) = 2080;
    v23 = sub_2588BDC98();
    v25 = sub_258790224(v23, v24, &v43);

    *(v4 + 14) = v25;
    v26 = "[%s]: passed in an invalid size: %s";
    goto LABEL_23;
  }

  v4 = a1;
  [a1 size];
  if (v9 <= 0.0 || v8 <= 0.0)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v27 = sub_2588BBC98();
    __swift_project_value_buffer(v27, qword_27F969938);
    v28 = v4;
    v20 = sub_2588BBC78();
    v21 = sub_2588BDBD8();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_24;
    }

    v4 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v4 = 136315394;
    *(v4 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
    *(v4 + 12) = 2080;
    [v28 size];
    v29 = sub_2588BDC98();
    v31 = sub_258790224(v29, v30, &v43);

    *(v4 + 14) = v31;
    v26 = "[%s]: passed in an image with an invalid size: %s";
LABEL_23:
    _os_log_impl(&dword_25878B000, v20, v21, v26, v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v22, -1, -1);
    MEMORY[0x259C8DBE0](v4, -1, -1);
LABEL_24:

    *a2 = 0;
    LOBYTE(v43) = 0;
LABEL_25:
    sub_2588496F0();
    swift_willThrowTypedImpl();
    return v4;
  }

  [v4 size];
  if (v11 == a3 && v10 == a4)
  {
    v33 = v4;
    return v4;
  }

  v13 = sub_258849524(v4, a4 / a3);
  if (!v13)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v34 = sub_2588BBC98();
    __swift_project_value_buffer(v34, qword_27F969938);
    v35 = sub_2588BBC78();
    v4 = sub_2588BDBD8();
    if (os_log_type_enabled(v35, v4))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
      _os_log_impl(&dword_25878B000, v35, v4, "[%s]: Could not crop image", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x259C8DBE0](v37, -1, -1);
      MEMORY[0x259C8DBE0](v36, -1, -1);
    }

    *a2 = 2;
    LOBYTE(v43) = 2;
    goto LABEL_25;
  }

  v4 = v13;
  [v13 size];
  if (v14 <= a3)
  {
    return v4;
  }

  v15 = [v4 imageByPreparingThumbnailOfSize_];
  if (v15)
  {
    v16 = v15;
    [v15 size];
    if (v18 > 0.0 && v17 > 0.0)
    {

      return v16;
    }
  }

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v38 = sub_2588BBC98();
  __swift_project_value_buffer(v38, qword_27F969938);
  v39 = sub_2588BBC78();
  v40 = sub_2588BDBD8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_258790224(0xD000000000000010, 0x80000002588C4F90, &v43);
    _os_log_impl(&dword_25878B000, v39, v40, "[%s]: image scaling failed", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x259C8DBE0](v42, -1, -1);
    MEMORY[0x259C8DBE0](v41, -1, -1);
  }

  *a2 = 1;
  LOBYTE(v43) = 1;
  sub_2588496F0();
  swift_willThrowTypedImpl();

  return v4;
}

id sub_258849524(void *a1, double a2)
{
  v3 = a1;
  [a1 size];
  if (v5 / v4 != a2)
  {
    [v3 size];
    v8 = v7;
    v10 = v9;
    [v3 size];
    v12 = v11;
    [v3 size];
    v14 = v13;
    [v3 size];
    if (v14 >= v12)
    {
      v10 = floor(v15 * a2);
    }

    else
    {
      v8 = floor(v16 / a2);
    }

    [v3 size];
    v18 = v17;
    [v3 size];
    v20 = v19;
    v21 = [v3 CGImage];
    if (v21)
    {
      v22 = v21;
      v27.origin.y = floor(ceil(v20 * 0.5) - v10 * 0.5);
      v27.origin.x = floor(ceil(v18 * 0.5) - v8 * 0.5);
      v27.size.width = v8;
      v27.size.height = v10;
      v23 = CGImageCreateWithImageInRect(v21, v27);
      if (v23)
      {
        v24 = v23;
        v25 = [v3 imageOrientation];
        v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v24 scale:v25 orientation:1.0];

        return v3;
      }
    }

    return 0;
  }

  v6 = v3;
  return v3;
}

void *sub_2588496B8(void *a1, _BYTE *a2, double a3, double a4)
{
  result = _s11MedicalIDUI16UIImageProcessorV5scale5image2toSo0C0CSgAH_So6CGSizeVtAA05ImageD5ErrorOYKF(a1, &v7, a3, a4);
  if (v4)
  {
    *a2 = v7;
  }

  return result;
}

unint64_t sub_2588496F0()
{
  result = qword_27F95FEA0;
  if (!qword_27F95FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FEA0);
  }

  return result;
}

unint64_t sub_258849748()
{
  result = qword_27F95FEA8;
  if (!qword_27F95FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FEA8);
  }

  return result;
}

uint64_t type metadata accessor for EditPrimaryLanguageCellView()
{
  result = qword_27F95FEB0;
  if (!qword_27F95FEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258849858()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_25884C388(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25884C4F4(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25884997C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  sub_25884C694(0, &qword_27F95FF88, MEMORY[0x277CE0330]);
  v132 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v134 = &v118 - v5;
  sub_25884C388(0, &qword_27F95FF00, sub_25884BF54, MEMORY[0x277CE14B8]);
  v133 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v118 - v8;
  sub_25884C388(0, &qword_27F95E930, sub_2587DFBD0, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v129 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v118 - v14;
  sub_2587DFBD0();
  v131 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v128 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v126 = &v118 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v118 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v118 - v26;
  v28 = *(type metadata accessor for EditPrimaryLanguageCellView() + 28);
  v136 = a1;
  v29 = *(a1 + v28);
  swift_getKeyPath();
  v139.id._countAndFlagsBits = v29;
  sub_25884C0B4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  if (!v31)
  {
    sub_2588BC688();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v55 = qword_27F95DA88;
    v56 = sub_2588BCDE8();
    v58 = v57;
    v60 = v59;
    v139.id._countAndFlagsBits = sub_2588BD158();
    v61 = sub_2588BCD98();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_2587B1CF8(v56, v58, v60 & 1);

    v139.id._countAndFlagsBits = v61;
    v139.id._object = v63;
    LOBYTE(v139.languageInCurrentLocale._countAndFlagsBits) = v65 & 1;
    *&v130 = v67;
    v139.languageInCurrentLocale._object = v67;
    sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v68 = swift_allocObject();
    v137 = xmmword_2588BFF50;
    *(v68 + 16) = xmmword_2588BFF50;
    v69 = swift_allocObject();
    *(v69 + 16) = v137;
    v70 = (v136 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
    v71 = v70[1];
    *(v69 + 32) = *v70;
    *(v69 + 40) = v71;
    v72 = 0x4C7972616D697250;
    v73 = 0xEF65676175676E61;
    *(v69 + 48) = 0x4C7972616D697250;
    *(v69 + 56) = 0xEF65676175676E61;

    v74 = sub_2588BD9A8();

    v75 = HKUIJoinStringsForAutomationIdentifier();

    if (v75)
    {
      v72 = sub_2588BD8A8();
      v73 = v76;
    }

    *(v68 + 32) = v72;
    *(v68 + 40) = v73;
    *(v68 + 48) = 6579265;
    *(v68 + 56) = 0xE300000000000000;
    v77 = sub_2588BD9A8();

    v78 = HKUIJoinStringsForAutomationIdentifier();

    if (v78)
    {
      sub_2588BD8A8();

      sub_2588BCFB8();

      sub_2587B1CF8(v61, v63, v65 & 1);

      sub_25884C734(v27, v134, sub_2587DFBD0);
      swift_storeEnumTagMultiPayload();
      sub_25884C0FC(&qword_27F95FF18, &qword_27F95FF00, sub_25884BF54);
      sub_2587DFB50();
      sub_2588BC778();
      v79 = v27;
LABEL_19:
      sub_25884C79C(v79, sub_2587DFBD0);
      return;
    }

    goto LABEL_21;
  }

  v118 = v17;
  *&v137 = v25;
  v119 = v15;
  v120 = v9;
  swift_bridgeObjectRetain_n();
  v124 = v30;
  v32._countAndFlagsBits = v30;
  v127 = v31;
  v32._object = v31;
  MedicalIDSpokenLanguage.init(id:)(&v139, v32);
  countAndFlagsBits = v139.languageInCurrentLocale._countAndFlagsBits;
  object = v139.languageInCurrentLocale._object;

  v139.id._countAndFlagsBits = countAndFlagsBits;
  v139.id._object = object;
  v125 = sub_25878F648();
  v35 = sub_2588BCDF8();
  v37 = v36;
  LOBYTE(object) = v38;
  v139.id._countAndFlagsBits = sub_2588BD158();
  v39 = sub_2588BCD98();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_2587B1CF8(v35, v37, object & 1);

  v139.id._countAndFlagsBits = v39;
  v139.id._object = v41;
  v122 = v41;
  v121 = v43;
  LOBYTE(v139.languageInCurrentLocale._countAndFlagsBits) = v43 & 1;
  v123 = v45;
  v139.languageInCurrentLocale._object = v45;
  sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v46 = swift_allocObject();
  v130 = xmmword_2588BFF50;
  *(v46 + 16) = xmmword_2588BFF50;
  v47 = swift_allocObject();
  *(v47 + 16) = v130;
  v48 = (v136 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
  v49 = v48[1];
  v136 = *v48;
  *(v47 + 32) = v136;
  *(v47 + 40) = v49;
  *(v47 + 48) = 0x4C7972616D697250;
  *(v47 + 56) = 0xEF65676175676E61;

  v50 = sub_2588BD9A8();

  v51 = HKUIJoinStringsForAutomationIdentifier();

  if (v51)
  {
    v52 = sub_2588BD8A8();
    v54 = v53;
  }

  else
  {
    v52 = 0x4C7972616D697250;
    v54 = 0xEF65676175676E61;
  }

  *(v46 + 32) = v52;
  *(v46 + 40) = v54;
  *(v46 + 48) = 0xD000000000000012;
  *(v46 + 56) = 0x80000002588CA450;
  v80 = sub_2588BD9A8();

  v81 = HKUIJoinStringsForAutomationIdentifier();

  if (!v81)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_2588BD8A8();

  sub_2588BCFB8();

  sub_2587B1CF8(v39, v122, v121 & 1);

  v82 = v127;

  v83._countAndFlagsBits = v124;
  v83._object = v82;
  MedicalIDSpokenLanguage.init(id:)(&v139, v83);
  v84 = v139.languageInLanguageLocale._countAndFlagsBits;
  v85 = v139.languageInLanguageLocale._object;
  v139.id = v139.languageInCurrentLocale;
  languageInLanguageLocale = v139.languageInLanguageLocale;
  if (sub_2588BDD28())
  {

    v86 = 1;
    v87 = v119;
LABEL_18:
    v110 = v137;
    (*(v118 + 56))(v87, v86, 1, v131);
    v111 = v128;
    sub_25884C734(v110, v128, sub_2587DFBD0);
    v112 = MEMORY[0x277D83D88];
    v113 = v129;
    sub_25884C864(v87, v129, &qword_27F95E930, sub_2587DFBD0, MEMORY[0x277D83D88]);
    v114 = v120;
    sub_25884C734(v111, v120, sub_2587DFBD0);
    sub_25884BF54();
    sub_25884C864(v113, v114 + *(v115 + 48), &qword_27F95E930, sub_2587DFBD0, v112);
    sub_25884C8D4(v113, &qword_27F95E930, sub_2587DFBD0, v112);
    sub_25884C79C(v111, sub_2587DFBD0);
    v116 = MEMORY[0x277CE14B8];
    v117 = v87;
    sub_25884C864(v114, v134, &qword_27F95FF00, sub_25884BF54, MEMORY[0x277CE14B8]);
    swift_storeEnumTagMultiPayload();
    sub_25884C0FC(&qword_27F95FF18, &qword_27F95FF00, sub_25884BF54);
    sub_2587DFB50();
    sub_2588BC778();
    v79 = v137;
    sub_25884C8D4(v114, &qword_27F95FF00, sub_25884BF54, v116);
    sub_25884C8D4(v117, &qword_27F95E930, sub_2587DFBD0, v112);
    goto LABEL_19;
  }

  v139.id._countAndFlagsBits = v84;
  v139.id._object = v85;
  v124 = v85;

  v88 = sub_2588BCDF8();
  v90 = v89;
  v92 = v91;
  v139.id._countAndFlagsBits = sub_2588BD158();
  v93 = sub_2588BCD98();
  v95 = v94;
  v125 = v49;
  v97 = v96;
  v99 = v98;
  sub_2587B1CF8(v88, v90, v92 & 1);

  v100 = 0xEF65676175676E61;

  v122 = v93;
  v139.id._countAndFlagsBits = v93;
  v139.id._object = v95;
  LOBYTE(v139.languageInCurrentLocale._countAndFlagsBits) = v97 & 1;
  v123 = v99;
  v139.languageInCurrentLocale._object = v99;
  v101 = swift_allocObject();
  *(v101 + 16) = v130;
  v102 = 0x4C7972616D697250;
  v103 = swift_allocObject();
  *(v103 + 16) = v130;
  *(v103 + 32) = v136;
  *(v103 + 40) = v125;
  *(v103 + 48) = 0x4C7972616D697250;
  *(v103 + 56) = 0xEF65676175676E61;

  v104 = sub_2588BD9A8();

  v105 = HKUIJoinStringsForAutomationIdentifier();

  if (v105)
  {
    v102 = sub_2588BD8A8();
    v100 = v106;
  }

  *(v101 + 32) = v102;
  *(v101 + 40) = v100;
  *(v101 + 48) = 0xD000000000000014;
  *(v101 + 56) = 0x80000002588CA470;
  v107 = sub_2588BD9A8();

  v108 = HKUIJoinStringsForAutomationIdentifier();

  if (v108)
  {

    sub_2588BD8A8();

    v109 = v126;
    sub_2588BCFB8();

    sub_2587B1CF8(v122, v95, v97 & 1);

    v87 = v119;
    sub_25884C7FC(v109, v119, sub_2587DFBD0);
    v86 = 0;
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_25884A874(uint64_t a1)
{
  v2 = type metadata accessor for EditPrimaryLanguageCellView();
  v3 = a1 + *(v2 + 20);
  if (*v3)
  {
    v4 = *(v3 + 8);
    (*v3)();
  }

  v5 = (a1 + *(v2 + 24));
  v7 = *v5;
  v8 = *(v5 + 1);
  sub_25884C4F4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25884A928@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for EditPrimaryLanguageCellView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = v7;
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BB34();
  v29 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25884C734(v2, v8, type metadata accessor for EditPrimaryLanguageCellView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28[0] = swift_allocObject();
  sub_25884C7FC(v8, v28[0] + v13, type metadata accessor for EditPrimaryLanguageCellView);
  sub_25884C734(v2, v8, type metadata accessor for EditPrimaryLanguageCellView);
  v14 = swift_allocObject();
  sub_25884C7FC(v8, v14 + v13, type metadata accessor for EditPrimaryLanguageCellView);
  *v12 = swift_getKeyPath();
  sub_25884C388(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v15 = v29;
  v16 = *(v29 + 52);
  v17 = *MEMORY[0x277CDF988];
  v18 = sub_2588BC1C8();
  (*(*(v18 - 8) + 104))(v12 + v16, v17, v18);
  v19 = (v12 + *(v15 + 56));
  v20 = v28[0];
  v21 = v28[1];
  *v19 = sub_25884C27C;
  v19[1] = v20;
  v22 = (v12 + *(v15 + 60));
  *v22 = sub_25884C2BC;
  v22[1] = v14;
  v23 = v21 + *(v4 + 32);
  v24 = *v23;
  v25 = *(v23 + 8);
  v32 = v24;
  v33 = v25;
  sub_25884C4F4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_25884C734(v21, v8, type metadata accessor for EditPrimaryLanguageCellView);
  v26 = swift_allocObject();
  sub_25884C7FC(v8, v26 + v13, type metadata accessor for EditPrimaryLanguageCellView);
  type metadata accessor for MedicalIDSpokenLanguagePickerView();
  sub_25884C0B4(&qword_27F95FF60, sub_25884BB34);
  sub_25884C0B4(&qword_27F95FF68, type metadata accessor for MedicalIDSpokenLanguagePickerView);
  sub_2588BD068();

  return sub_25884C634(v12, sub_25884BB34);
}

void sub_25884AD40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for EditPrimaryLanguageCellView();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = v5;
  v57 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BED4();
  v58 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BD4C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v54 - v14;
  sub_2587DFBD0();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v60 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = v54 - v20;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v21 = 0x4C7972616D697250;
  v22 = qword_27F95DA88;
  v23 = sub_2588BCDE8();
  v25 = v24;
  v27 = v26;
  v54[0] = v23;
  v54[1] = v28;
  v64 = v23;
  v65 = v24;
  v66 = v26 & 1;
  v67 = v28;
  sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  v63 = xmmword_2588BFF50;
  *(v29 + 16) = xmmword_2588BFF50;
  v30 = swift_allocObject();
  *(v30 + 16) = v63;
  v31 = *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36);
  *&v63 = a1;
  v32 = (a1 + v31);
  v33 = v32[1];
  *(v30 + 32) = *v32;
  *(v30 + 40) = v33;
  v34 = 0xEF65676175676E61;
  *(v30 + 48) = 0x4C7972616D697250;
  *(v30 + 56) = 0xEF65676175676E61;

  v35 = sub_2588BD9A8();

  v36 = HKUIJoinStringsForAutomationIdentifier();

  if (v36)
  {
    v21 = sub_2588BD8A8();
    v34 = v37;
  }

  *(v29 + 32) = v21;
  *(v29 + 40) = v34;
  *(v29 + 48) = 0x656C746954;
  *(v29 + 56) = 0xE500000000000000;
  v38 = sub_2588BD9A8();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  if (v39)
  {
    sub_2588BD8A8();

    v40 = v59;
    sub_2588BCFB8();

    sub_2587B1CF8(v54[0], v25, v27 & 1);

    v41 = sub_2588BC708();
    *v15 = sub_2588BC608();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_25884C544();
    v43 = *(v42 + 44);
    *v9 = v41;
    *(v9 + 1) = 0;
    v9[16] = 1;
    sub_25884C5AC();
    v45 = v63;
    sub_25884997C(v63, &v9[*(v44 + 44)]);
    v46 = v57;
    sub_25884C734(v45, v57, type metadata accessor for EditPrimaryLanguageCellView);
    v47 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v48 = swift_allocObject();
    sub_25884C7FC(v46, v48 + v47, type metadata accessor for EditPrimaryLanguageCellView);
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4);
    sub_2588BCED8();

    sub_25884C79C(v9, sub_25884BED4);
    v49 = v60;
    sub_25884C734(v40, v60, sub_2587DFBD0);
    v50 = v61;
    sub_25879FDB4(v15, v61);
    v51 = v62;
    sub_25884C734(v49, v62, sub_2587DFBD0);
    sub_25884BCD4();
    v53 = v51 + *(v52 + 48);
    *v53 = 0;
    *(v53 + 8) = 1;
    sub_25879FDB4(v50, v51 + *(v52 + 64));
    sub_25884C634(v15, sub_25884BD4C);
    sub_25884C79C(v40, sub_2587DFBD0);
    sub_25884C634(v50, sub_25884BD4C);
    sub_25884C79C(v49, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25884B388@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v9 = a5 + *(a3(0) + 44);
  return a4(a1);
}

void sub_25884B3F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for EditPrimaryLanguageCellView();
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = v5;
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BED4();
  v64 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884BD4C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = (&v57 - v14);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v15 = 0x4C7972616D697250;
  v16 = qword_27F95DA88;
  v17 = sub_2588BCDE8();
  v58 = v18;
  v59 = v17;
  v20 = v19;
  v60 = v21;
  sub_25884C4F4(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  v67 = xmmword_2588BFF50;
  *(v22 + 16) = xmmword_2588BFF50;
  v23 = swift_allocObject();
  *(v23 + 16) = v67;
  v24 = (a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
  v25 = v24[1];
  *(v23 + 32) = *v24;
  *(v23 + 40) = v25;
  v26 = 0xEF65676175676E61;
  *(v23 + 48) = 0x4C7972616D697250;
  *(v23 + 56) = 0xEF65676175676E61;

  v27 = sub_2588BD9A8();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    v15 = sub_2588BD8A8();
    v26 = v29;
  }

  *(v22 + 32) = v15;
  *(v22 + 40) = v26;
  *(v22 + 48) = 0x656C746954;
  *(v22 + 56) = 0xE500000000000000;
  v30 = sub_2588BD9A8();

  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    v32 = a1;
    v33 = sub_2588BD8A8();
    v35 = v34;

    v68 = v33;
    v69 = v35;
    sub_25878F648();
    v36 = v59;
    v37 = v20;
    v38 = v58;
    v39 = sub_2588BCDA8();
    v41 = v40;
    LODWORD(v67) = v42;
    v44 = v43;
    sub_2587B1CF8(v36, v38, v37 & 1);

    v45 = sub_2588BC6F8();
    v46 = sub_2588BC608();
    v47 = v57;
    *v57 = v46;
    *(v47 + 8) = 0;
    *(v47 + 16) = 1;
    sub_25884C544();
    v49 = *(v48 + 44);
    *v9 = v45;
    *(v9 + 1) = 0;
    v9[16] = 1;
    sub_25884C5AC();
    sub_25884997C(v32, &v9[*(v50 + 44)]);
    v51 = v63;
    sub_25884C734(v32, v63, type metadata accessor for EditPrimaryLanguageCellView);
    v52 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v53 = swift_allocObject();
    sub_25884C7FC(v51, v53 + v52, type metadata accessor for EditPrimaryLanguageCellView);
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4);
    sub_2588BCED8();

    sub_25884C79C(v9, sub_25884BED4);
    v54 = v65;
    sub_25879FDB4(v47, v65);
    v55 = v66;
    *v66 = v39;
    v55[1] = v41;
    LOBYTE(v51) = v67 & 1;
    *(v55 + 16) = v67 & 1;
    v55[3] = v44;
    sub_25884C214();
    sub_25879FDB4(v54, v55 + *(v56 + 48));
    sub_2587A99B0(v39, v41, v51);

    sub_25884C634(v47, sub_25884BD4C);
    sub_25884C634(v54, sub_25884BD4C);
    sub_2587B1CF8(v39, v41, v51);
  }

  else
  {
    __break(1u);
  }
}

void sub_25884B9B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditPrimaryLanguageCellView();
  v5 = (a1 + *(v4 + 24));
  v18 = *v5;
  v19 = *(v5 + 1);
  sub_25884C4F4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v6 = *(a1 + *(v4 + 28));

  v7 = sub_2588BD9A8();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    v9 = type metadata accessor for MedicalIDSpokenLanguagePickerView();
    v10 = (a2 + *(v9 + 24));
    v11 = sub_2588BD8A8();
    v13 = v12;

    *v10 = v11;
    v10[1] = v13;
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    v14 = *(v9 + 20);
    type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
    sub_25884C0B4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
    sub_2588BD548();
  }

  else
  {
    __break(1u);
  }
}

void sub_25884BB34()
{
  if (!qword_27F95FEC0)
  {
    sub_25884BC20();
    sub_25884C160();
    sub_25884C0B4(&qword_27F95FF50, sub_25884BC20);
    sub_25884C0B4(&qword_27F95FF58, sub_25884C160);
    v0 = type metadata accessor for MedicalIDAXLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FEC0);
    }
  }
}

void sub_25884BC20()
{
  if (!qword_27F95FEC8)
  {
    sub_25884C388(255, &qword_27F95FED0, sub_25884BCD4, MEMORY[0x277CE14B8]);
    sub_25884C0FC(&qword_27F95FF28, &qword_27F95FED0, sub_25884BCD4);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FEC8);
    }
  }
}

void sub_25884BCD4()
{
  if (!qword_27F95FED8)
  {
    sub_2587DFBD0();
    sub_25884BD4C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95FED8);
    }
  }
}

void sub_25884BD4C()
{
  if (!qword_27F95FEE0)
  {
    sub_25884BE20();
    sub_25884BED4();
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FEE0);
    }
  }
}

void sub_25884BE20()
{
  if (!qword_27F95FEE8)
  {
    sub_25884BED4();
    sub_25884C0B4(&qword_27F95FF20, sub_25884BED4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95FEE8);
    }
  }
}

void sub_25884BED4()
{
  if (!qword_27F95FEF0)
  {
    sub_25884C694(255, &qword_27F95FEF8, MEMORY[0x277CE0338]);
    sub_25884BFF4();
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FEF0);
    }
  }
}

void sub_25884BF54()
{
  if (!qword_27F95FF08)
  {
    sub_2587DFBD0();
    sub_25884C388(255, &qword_27F95E930, sub_2587DFBD0, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FF08);
    }
  }
}

unint64_t sub_25884BFF4()
{
  result = qword_27F95FF10;
  if (!qword_27F95FF10)
  {
    sub_25884C694(255, &qword_27F95FEF8, MEMORY[0x277CE0338]);
    sub_25884C0FC(&qword_27F95FF18, &qword_27F95FF00, sub_25884BF54);
    sub_2587DFB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FF10);
  }

  return result;
}

uint64_t sub_25884C0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25884C0FC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25884C388(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25884C160()
{
  if (!qword_27F95FF30)
  {
    sub_25884C388(255, &qword_27F95FF38, sub_25884C214, MEMORY[0x277CE14B8]);
    sub_25884C0FC(&qword_27F95FF48, &qword_27F95FF38, sub_25884C214);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FF30);
    }
  }
}

void sub_25884C214()
{
  if (!qword_27F95FF40)
  {
    sub_25884BD4C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95FF40);
    }
  }
}

void sub_25884C388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25884C3EC(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditPrimaryLanguageCellView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_25884B9B0(v4, a1);
}

void sub_25884C45C()
{
  if (!qword_27F95FF70)
  {
    sub_25884C388(255, &qword_27F95FF38, sub_25884C214, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FF70);
    }
  }
}

void sub_25884C4F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25884C544()
{
  if (!qword_27F95FF78)
  {
    sub_25884BE20();
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FF78);
    }
  }
}

void sub_25884C5AC()
{
  if (!qword_27F95FF80)
  {
    sub_25884C694(255, &qword_27F95FEF8, MEMORY[0x277CE0338]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FF80);
    }
  }
}

uint64_t sub_25884C634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25884C694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25884C388(255, &qword_27F95FF00, sub_25884BF54, MEMORY[0x277CE14B8]);
    v7 = v6;
    sub_2587DFBD0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25884C734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25884C79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25884C7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25884C864(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_25884C388(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_25884C8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_25884C388(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_25884C930()
{
  if (!qword_27F95FF90)
  {
    sub_25884C388(255, &qword_27F95FED0, sub_25884BCD4, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FF90);
    }
  }
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for EditPrimaryLanguageCellView();
  v34 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v2 = v0 + ((v34 + 16) & ~v34);
  v3 = *(v2 + 8);

  v4 = *(v2 + 16);

  v5 = *(v2 + 32);

  v6 = *(v2 + 48);

  v7 = *(v2 + 64);

  v8 = *(v2 + 80);

  v9 = type metadata accessor for MedicalIDData();
  v10 = v9[13];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v14 = v9[14];
  if (!v13(v2 + v14, 1, v11))
  {
    (*(v12 + 8))(v2 + v14, v11);
  }

  v15 = *(v2 + v9[15] + 8);

  v16 = (v2 + v9[18]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v9[19];
  v19 = sub_2588BB818();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v9[21];
  if (!v13(v2 + v21, 1, v11))
  {
    (*(v12 + 8))(v2 + v21, v11);
  }

  v22 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v23 = v22[5];
  v24 = sub_2588BBB48();
  (*(*(v24 - 8) + 8))(v2 + v23, v24);
  v25 = v22[6];
  v26 = sub_2588BBAC8();
  (*(*(v26 - 8) + 8))(v2 + v25, v26);

  v27 = *(v2 + v22[9] + 8);

  v28 = (v2 + v1[5]);
  if (*v28)
  {
    v29 = v28[1];
  }

  v30 = *(v2 + v1[6] + 8);

  v31 = *(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_25884CD78()
{
  v1 = *(type metadata accessor for EditPrimaryLanguageCellView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25884A874(v2);
}

void sub_25884CE0C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1)
  {
    v39 = a2;
    v40 = a4;
    sub_25884E0E8(0, &qword_27F95FFB0, &qword_27F95FFB8, 0x277CCAD98, MEMORY[0x28220B520]);
    v41 = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v15 = v35 - v14;
    v16 = a1;
    v17 = [v16 _foundationMeasurement];
    if (v17)
    {
      v18 = v17;
      v36 = v16;
      v37 = v12;
      v35[0] = a6;
      v35[1] = v6;
      v38 = v35;
      sub_25878E130(0, &qword_27F95FFB8, 0x277CCAD98);
      sub_2588BB658();

      v19 = v40;
      sub_25884E0E8(0, a3, v40, a5, MEMORY[0x28220B520]);
      v21 = v20;
      v35[3] = v35;
      v22 = *(v20 - 8);
      v23 = *(v22 + 64);
      v24 = MEMORY[0x28223BE20](v20);
      v26 = v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35[2] = v35;
      MEMORY[0x28223BE20](v24);
      v28 = v35 - v27;
      v29 = sub_2588BB668();
      v30 = *a5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2588BB688();
        sub_25878E130(0, v19, a5);
        sub_2588BB678();
        (*(v22 + 32))(v26, v28, v21);
        v31 = v35[0];
        sub_2588BB6B8();

        (*(v22 + 8))(v26, v21);
        (*(v37 + 8))(v15, v41);
        (*(v22 + 56))(v31, 0, 1, v21);
      }

      else
      {

        sub_25884E150();
        swift_allocError();
        *v34 = 1;
        swift_willThrow();

        (*(v37 + 8))(v15, v41);
      }
    }

    else
    {
      sub_25884E150();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_25884E0E8(0, a3, a4, a5, MEMORY[0x28220B520]);
    (*(*(v32 - 8) + 56))(a6, 1, 1, v32);
  }
}

uint64_t MedicalIDWeightFormatter.init(locale:personWeightFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BBAC8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = type metadata accessor for MedicalIDWeightFormatter();
  *(a3 + *(v8 + 20)) = a2;
  v9 = sub_25884DC0C(a1, 2);
  result = (*(v7 + 8))(a1, v6);
  *(a3 + *(v8 + 24)) = v9;
  return result;
}

uint64_t type metadata accessor for MedicalIDWeightFormatter()
{
  result = qword_27F95FF98;
  if (!qword_27F95FF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall MedicalIDWeightFormatter.localizedDescription(for:)(HKQuantity_optional a1)
{
  isa = a1.value.super.isa;
  sub_25884E0E8(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B520]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v20 - v7;
  sub_25883AC00(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884D544(isa, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_25883CE64(v12);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = *(v1 + *(type metadata accessor for MedicalIDWeightFormatter() + 24));
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v16 = sub_2588BDC68();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v14 = v18;
    v13 = v16;
  }

  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

void sub_25884D544(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25884D888();
  sub_25884CE0C(a1, v4, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, a2);
}

Swift::String __swiftcall MedicalIDWeightFormatter.localizedUnitDescription()()
{
  v1 = sub_25884DC0C(v0, 1);
  v2 = sub_25884D888();
  v3 = [v1 stringFromUnit_];

  v4 = sub_2588BD8A8();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

id sub_25884D888()
{
  v1 = [*(v0 + *(type metadata accessor for MedicalIDWeightFormatter() + 20)) localWeightUnit];
  if (v1 <= 1536)
  {
    if (v1 == 11)
    {
      v2 = &selRef_grams;
      goto LABEL_12;
    }

    if (v1 == 14)
    {
      v2 = &selRef_kilograms;
      goto LABEL_12;
    }

LABEL_15:
    result = sub_2588BDED8();
    __break(1u);
    return result;
  }

  if (v1 == 1537)
  {
    v2 = &selRef_ounces;
    goto LABEL_12;
  }

  if (v1 != 1538)
  {
    if (v1 == 1539)
    {
      v2 = &selRef_stones;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v2 = &selRef_poundsMass;
LABEL_12:
  v3 = [objc_opt_self() *v2];

  return v3;
}

id MedicalIDWeightFormatter.formattedText(for:)(uint64_t a1)
{
  v2 = v1;
  sub_25884E0E8(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B520]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  sub_25883AC00(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25884DFA0(a1, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_25883CE64(v13);
    return 0;
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_2588BB688();
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  result = [*(v2 + *(type metadata accessor for MedicalIDWeightFormatter() + 24)) numberFormatter];
  if (result)
  {
    v17 = result;
    v18 = [result stringFromNumber_];

    if (v18)
    {
      v19 = sub_2588BD8A8();

      (*(v6 + 8))(v9, v5);
      return v19;
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  __break(1u);
  return result;
}

id sub_25884DC0C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v4 = sub_2588BBA88();
  [v3 setLocale_];

  [v3 setUnitOptions_];
  [v3 setUnitStyle_];
  v5 = sub_2588BBA58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_2588BBA68();
  MEMORY[0x28223BE20](v9);
  sub_2588BBA38();
  sub_2587BBA44();
  v10 = sub_2588BD7D8();
  v11 = *(v6 + 8);
  v12 = v11(&v21 - v8, v5);
  if (v10)
  {
    result = [v3 numberFormatter];
    if (result)
    {
      v14 = result;
      v11(&v21 - v8, v5);
      sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
      v15 = sub_2588BDCC8();
      [v14 setRoundingIncrement_];

      return v3;
    }

    __break(1u);
  }

  else
  {
    v22 = v3;
    MEMORY[0x28223BE20](v12);
    sub_2588BBA28();
    v16 = sub_2588BD7D8();
    v17 = v11(&v21 - v8, v5);
    if (v16)
    {
      v11(&v21 - v8, v5);
    }

    else
    {
      MEMORY[0x28223BE20](v17);
      sub_2588BBA48();
      v18 = sub_2588BD7D8();
      v11(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      v11(&v21 - v8, v5);
      if ((v18 & 1) == 0)
      {
        return v22;
      }
    }

    v3 = v22;
    result = [v22 numberFormatter];
    if (result)
    {
      v19 = result;
      sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
      v20 = sub_2588BDCB8();
      [v19 setRoundingIncrement_];

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25884DFA0(uint64_t a1, uint64_t a2)
{
  sub_25883AC00(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25884E02C()
{
  result = sub_2588BBAC8();
  if (v1 <= 0x3F)
  {
    result = sub_25878E130(319, &qword_27F95FFA8, 0x277D12A10);
    if (v2 <= 0x3F)
    {
      result = sub_25878E130(319, &qword_27F95E860, 0x277CCAB18);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_25884E0E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_25884E150()
{
  result = qword_27F95FFC0;
  if (!qword_27F95FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FFC0);
  }

  return result;
}

Swift::String __swiftcall MedicalIDEmergencyContactViewModel.removeSymbolsFromRelationship()()
{
  v1 = 0xE000000000000000;
  if (*(v0 + 88))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    sub_25878F648();
    v2 = sub_2588BDD08();
  }

  else
  {
    v2 = 0;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

__n128 MedicalIDEmergencyContactViewModel.init(contact:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_25884E278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDEditFreeformTextModalView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258850634(0, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_2588BD2B8();
  v13 = v33;
  *(v12 + 56) = v32;
  *(v12 + 72) = v13;
  v14 = v35;
  *(v12 + 88) = v34;
  *(v12 + 104) = v14;
  v15 = v9[9];
  *&v12[v15] = swift_getKeyPath();
  sub_25884E588(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v16 = &v12[v9[10]];
  type metadata accessor for MedicalIDDataManager();
  sub_2588501E0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v16 = sub_2588BBF58();
  v16[8] = v17 & 1;
  sub_2587B6C14(a1, v12);
  *(v12 + 5) = a2;
  *(v12 + 6) = a3;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 32))(v18, v19);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v21)
  {
    v23 = v21;
  }

  v24 = &v12[v9[11]];
  v27[0] = v22;
  v27[1] = v23;
  sub_2588BD2B8();
  v25 = v29;
  *v24 = v28;
  *(v24 + 2) = v25;
  sub_25884E510(v12, a4);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t type metadata accessor for MedicalIDEditFreeformTextModalView()
{
  result = qword_27F95FFC8;
  if (!qword_27F95FFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25884E510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDEditFreeformTextModalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25884E588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25884E600()
{
  sub_25884E768();
  if (v0 <= 0x3F)
  {
    sub_2587B2F78();
    if (v1 <= 0x3F)
    {
      sub_2587D2DD4();
      if (v2 <= 0x3F)
      {
        sub_25884E588(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_25884E588(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_258850634(319, &qword_27F95FB08, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_25884E768()
{
  result = qword_27F95FFD8;
  if (!qword_27F95FFD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95FFD8);
  }

  return result;
}

uint64_t sub_25884E7E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDEditFreeformTextModalView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v7);
  v31 = (*(v8 + 8))(v7, v8);
  v10 = v9;
  v32 = type metadata accessor for MedicalIDEditFreeformTextModalView;
  sub_258850704(v1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditFreeformTextModalView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = *(v1 + 72);
  v41 = *(v1 + 56);
  v42 = v13;
  v43 = *(v1 + 88);
  v44 = *(v1 + 104);
  sub_2587D2DD4();
  sub_2588BD2E8();
  v44 = v39;
  v45 = v40;
  v42 = v37;
  v43 = v38;
  v41 = v36;
  *a1 = swift_getKeyPath();
  sub_25884E588(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_25884FE54();
  v15 = v14;
  v16 = (a1 + v14[9]);
  *v16 = v31;
  v16[1] = v10;
  v17 = (a1 + v14[10]);
  *v17 = &unk_2588C5310;
  v17[1] = v12;
  v18 = a1 + v14[11];
  v30 = a1;
  v19 = v42;
  v20 = v44;
  *(v18 + 2) = v43;
  *(v18 + 3) = v20;
  *(v18 + 8) = v45;
  *v18 = v41;
  *(v18 + 1) = v19;
  v21 = (a1 + v14[12]);
  v22 = v32;
  sub_258850704(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v23 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v11);
  sub_258850704(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v24 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v11);
  sub_258850704(v2, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v25 = swift_allocObject();
  sub_25884E510(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v11);
  *v21 = sub_25885036C;
  v21[1] = v23;
  v21[2] = sub_258850384;
  v21[3] = v24;
  v21[4] = sub_258850598;
  v21[5] = v25;
  v26 = v30 + v15[13];
  v33 = 0;
  result = sub_2588BD2B8();
  v28 = v35;
  *v26 = v34;
  *(v26 + 1) = v28;
  return result;
}

uint64_t sub_25884EB80()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_25884EC2C();
}

uint64_t sub_25884EC2C()
{
  v1[18] = v0;
  v2 = sub_2588BC038();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v8 = type metadata accessor for MedicalIDEditFreeformTextModalView();
  v1[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v10 = sub_2588BC598();
  v1[26] = v10;
  v11 = *(v10 - 8);
  v1[27] = v11;
  v12 = *(v11 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = sub_2588BDA78();
  v1[30] = sub_2588BDA68();
  v14 = sub_2588BDA28();
  v1[31] = v14;
  v1[32] = v13;

  return MEMORY[0x2822009F8](sub_25884EE08, v14, v13);
}

uint64_t sub_25884EE08()
{
  v1 = v0[18];
  v2 = v1 + *(v0[24] + 32);
  v3 = *v2;
  v4 = *(v2 + 8);

  if ((v4 & 1) == 0)
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[26];
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = v0[15];
    v1 = v0[18];
  }

  v0[33] = v3;
  v9 = v0[29];
  sub_258850704(v1, v0[25], type metadata accessor for MedicalIDEditFreeformTextModalView);
  v0[34] = sub_2588BDA68();
  v11 = sub_2588BDA28();
  v0[35] = v11;
  v0[36] = v10;

  return MEMORY[0x2822009F8](sub_25884EF74, v11, v10);
}

uint64_t sub_25884EF74()
{
  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  swift_getKeyPath();
  v0[16] = v1;
  sub_2588501E0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258850704(v1 + v6, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v5);
  sub_25885076C(v4, sub_2587B63B8);
  v8 = *(v2 + 40);
  v7 = *(v2 + 48);
  v9 = (v2 + *(v3 + 36));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v0[5] = *v9;
  v0[6] = v11;
  v0[7] = v12;
  sub_258850634(0, &qword_27F95FB08, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v14 = v0[11];
  v13 = v0[12];

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v0[8] = v10;
    v0[9] = v11;
    v0[10] = v12;
    sub_2588BD2C8();
    v16 = v0[13];
    v17 = v0[14];
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v8(v0[23], v16, v17);

  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_25884F1C4;
  v19 = v0[33];
  v20 = v0[23];

  return sub_258880280(v20, (v0 + 17));
}

uint64_t sub_25884F1C4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;

  v4 = *(v2 + 280);
  v5 = *(v2 + 288);
  if (v0)
  {
    v6 = sub_25884F478;
  }

  else
  {
    v6 = sub_25884F2D4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25884F2D4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[25];
  v4 = v0[23];

  sub_25885076C(v4, type metadata accessor for MedicalIDData);
  sub_25885076C(v3, type metadata accessor for MedicalIDEditFreeformTextModalView);
  v5 = v0[31];
  v6 = v0[32];

  return MEMORY[0x2822009F8](sub_25884F388, v5, v6);
}

uint64_t sub_25884F388()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  v11 = v10 + *(v3 + 28);
  sub_25885269C(v7);
  sub_2588BC028();
  (*(v8 + 8))(v7, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_25884F478()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[25];
  v4 = v0[23];

  sub_25885076C(v4, type metadata accessor for MedicalIDData);
  v0[38] = v0[17];
  sub_25885076C(v3, type metadata accessor for MedicalIDEditFreeformTextModalView);
  v5 = v0[31];
  v6 = v0[32];

  return MEMORY[0x2822009F8](sub_25884F534, v5, v6);
}

uint64_t sub_25884F534()
{
  v1 = v0[38];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  sub_2587CE078();
  swift_allocError();
  *v8 = v1;

  v9 = v0[1];

  return v9();
}

void sub_25884F610(void *a1)
{
  sub_25884FFAC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v23 = (*(v9 + 16))(v8, v9);
  v24 = v10;
  v11 = a1 + *(type metadata accessor for MedicalIDEditFreeformTextModalView() + 36);
  v12 = *v11;
  v13 = *(v11 + 2);
  *&v21[40] = v12;
  v22 = v13;
  v14 = MEMORY[0x277D837D0];
  sub_258850634(0, &qword_27F95FB08, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_25878F648();
  sub_2588BD638();
  sub_258850634(0, &qword_280C0DDD0, v14, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2588BFF50;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *(v15 + 32) = (*(v17 + 48))(v16, v17);
  *(v15 + 40) = v18;
  *(v15 + 48) = 0x6C65694674786554;
  *(v15 + 56) = 0xE900000000000064;
  v19 = sub_2588BD9A8();

  v20 = HKUIJoinStringsForAutomationIdentifier();

  if (v20)
  {
    sub_2588BD8A8();

    sub_2588501E0(&qword_27F95F8C8, sub_25884FFAC);
    sub_2588BCFB8();

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25884F8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  result = (*(v15 + 48))(v14, v15);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = result;
  a2[5] = v17;
  return result;
}

void sub_25884F9D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258850078(0, &qword_27F95E5A8, sub_2587E5DE8);
  v5 = v4;
  v43 = *(v4 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 40))(v9, v10);
  if (v11)
  {
    v38 = v8;
    v41 = v5;
    v42 = a2;
    v12 = v11;

    v36[1] = v12;
    sub_2588BC688();
    v13 = sub_2588BCDE8();
    v15 = v14;
    v17 = v16;
    sub_2588BCCC8();
    v18 = sub_2588BCDD8();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_2587B1CF8(v13, v15, v17 & 1);

    KeyPath = swift_getKeyPath();
    v39 = v18;
    v40 = v24;
    v44 = v18;
    v45 = v20;
    v37 = v20;
    v26 = v22 & 1;
    v46 = v22 & 1;
    v47 = v24;
    v48 = KeyPath;
    v49 = 0;
    sub_258850634(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2588BFF50;
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    *(v27 + 32) = (*(v29 + 48))(v28, v29);
    *(v27 + 40) = v30;
    *(v27 + 48) = 0x7265746F6F46;
    *(v27 + 56) = 0xE600000000000000;
    v31 = sub_2588BD9A8();

    v32 = HKUIJoinStringsForAutomationIdentifier();

    if (v32)
    {

      sub_2588BD8A8();

      sub_2587E5DE8();
      sub_2587E65C8();
      v33 = v38;
      sub_2588BCFB8();

      sub_2587B1CF8(v39, v37, v26);

      v34 = v42;
      sub_258850684(v33, v42);
      (*(v43 + 56))(v34, 0, 1, v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v35 = *(v43 + 56);

    v35(a2, 1, 1, v5);
  }
}

uint64_t sub_25884FD88()
{
  v1 = *(type metadata accessor for MedicalIDEditFreeformTextModalView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AE310;

  return sub_25884EB80();
}

void sub_25884FE54()
{
  if (!qword_27F95FFE0)
  {
    sub_25884FEE8();
    sub_2588501E0(&qword_27F960010, sub_25884FEE8);
    v0 = type metadata accessor for MedicalIDEditModal();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FFE0);
    }
  }
}

void sub_25884FEE8()
{
  if (!qword_27F95FFE8)
  {
    sub_258850078(255, &qword_27F95FFF0, sub_25884FFAC);
    sub_258850004();
    sub_2588500E4();
    sub_2587D68A0();
    sub_258850228();
    v0 = type metadata accessor for EditingScrollView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FFE8);
    }
  }
}

void sub_25884FFAC()
{
  if (!qword_27F95F8C0)
  {
    v0 = sub_2588BD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F8C0);
    }
  }
}

void sub_258850004()
{
  if (!qword_27F95E5A0)
  {
    sub_258850078(255, &qword_27F95E5A8, sub_2587E5DE8);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5A0);
    }
  }
}

void sub_258850078(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2588BCA98();
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2588500E4()
{
  result = qword_27F95FFF8;
  if (!qword_27F95FFF8)
  {
    sub_258850078(255, &qword_27F95FFF0, sub_25884FFAC);
    sub_2588501E0(&qword_27F95F8C8, sub_25884FFAC);
    sub_2588501E0(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FFF8);
  }

  return result;
}

uint64_t sub_2588501E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258850228()
{
  result = qword_27F960000;
  if (!qword_27F960000)
  {
    sub_258850004();
    sub_2588502A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960000);
  }

  return result;
}

unint64_t sub_2588502A0()
{
  result = qword_27F960008;
  if (!qword_27F960008)
  {
    sub_258850078(255, &qword_27F95E5A8, sub_2587E5DE8);
    sub_2587E65C8();
    sub_2588501E0(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960008);
  }

  return result;
}

uint64_t sub_258850384@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDEditFreeformTextModalView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_25884F8E8(v4, a1);
}

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for MedicalIDEditFreeformTextModalView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = v3[6];

  if (v3[8])
  {

    v5 = v3[10];

    v6 = v3[11];

    v7 = v3[13];
  }

  v8 = v3[14];

  v9 = v1[7];
  sub_25884E588(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2588BC038();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
    v11 = *(v3 + v9);
  }

  v12 = *(v3 + v1[8]);

  v13 = v3 + v1[9];
  v14 = *(v13 + 1);

  v15 = *(v13 + 2);

  return swift_deallocObject();
}

uint64_t sub_2588505B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MedicalIDEditFreeformTextModalView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_258850634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258850684(uint64_t a1, uint64_t a2)
{
  sub_258850078(0, &qword_27F95E5A8, sub_2587E5DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258850704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25885076C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MedicalIDLearnMoreNavigationView()
{
  result = qword_27F960020;
  if (!qword_27F960020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258850840()
{
  sub_2588535A8(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2588508F8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64 = sub_2588BC5E8();
  v62 = *(v64 - 8);
  v1 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2588BC848();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258852C38();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258853054();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258853108();
  v21 = *(v20 - 8);
  v52 = v20;
  v53 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25885320C();
  v59 = v25;
  v56 = *(v25 - 8);
  v26 = *(v56 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258853348();
  v60 = v29;
  v58 = *(v29 - 8);
  v30 = *(v58 + 64);
  MEMORY[0x28223BE20](v29);
  v57 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258852CB8();
  sub_258852F74();
  sub_2588BCD48();
  v32 = sub_25885360C(&qword_27F9600C8, sub_258852C38);
  sub_2588BCF78();
  (*(v10 + 8))(v13, v9);
  sub_2588BC838();
  v65 = v9;
  v66 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CDE0D0];
  v35 = v54;
  sub_2588BD138();
  (*(v55 + 8))(v7, v35);
  (*(v16 + 8))(v19, v15);
  v65 = v15;
  v66 = v35;
  v67 = OpaqueTypeConformance2;
  v68 = v34;
  v36 = v52;
  v37 = swift_getOpaqueTypeConformance2();
  sub_2588BCE78();
  (*(v53 + 8))(v24, v36);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v38 = qword_27F95DA88;
  v39 = sub_2588BCDE8();
  v41 = v40;
  v43 = v42;
  v65 = v36;
  v66 = v37;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = v59;
  sub_2588BCF28();
  sub_2587B1CF8(v39, v41, v43 & 1);

  (*(v56 + 8))(v28, v46);
  v48 = v61;
  v47 = v62;
  v49 = v64;
  (*(v62 + 104))(v61, *MEMORY[0x277CDDDC0], v64);
  v65 = v46;
  v66 = v44;
  swift_getOpaqueTypeConformance2();
  v50 = v60;
  sub_2588BD008();
  (*(v47 + 8))(v48, v49);
  return (*(v58 + 8))(v45, v50);
}

__n128 sub_258850FFC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BC6E8();
  v24 = 0;
  sub_2588511D8(&v14);
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v25 = v14;
  v26 = v15;
  v34[5] = v19;
  v34[6] = v20;
  v34[7] = v21;
  v34[8] = v22;
  v34[1] = v15;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v33 = v22;
  v34[0] = v14;
  sub_2588534B4(&v25, &v13, sub_258852DB4);
  sub_25885351C(v34, sub_258852DB4);
  *&v23[103] = v31;
  *&v23[87] = v30;
  *&v23[39] = v27;
  *&v23[23] = v26;
  *&v23[119] = v32;
  *&v23[135] = v33;
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[7] = v25;
  v3 = *&v23[112];
  *(a1 + 113) = *&v23[96];
  *(a1 + 129) = v3;
  *(a1 + 145) = *&v23[128];
  v4 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  *(a1 + 65) = v4;
  v5 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v5;
  v6 = *&v23[16];
  *(a1 + 17) = *v23;
  v7 = v24;
  *a1 = v2;
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = v7;
  *(a1 + 160) = *&v23[143];
  *(a1 + 33) = v6;
  __asm { FMOV            V0.2D, #16.0 }

  *(a1 + 168) = result;
  *(a1 + 184) = result;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_2588511D8@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_2588BC6F8();
  sub_258851394(&v35);
  v3 = v35;
  v5 = v36;
  v4 = v37;
  v6 = v38;
  v7 = *(&v38 + 1);
  LOBYTE(v35) = v38;
  v8 = sub_2588BC6F8();
  sub_258851620(&v35);
  v9 = v35;
  v11 = v36;
  v10 = v37;
  v12 = v38;
  v13 = *(&v38 + 1);
  LOBYTE(v35) = v38;
  v18 = v2;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v3;
  v20 = v5;
  *&v21 = v4;
  BYTE8(v21) = v6;
  v22 = v7;
  v23[0] = v8;
  *v17 = v7;
  v23[1] = 0;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v9;
  v25 = v36;
  *&v26 = v37;
  BYTE8(v26) = v38;
  v27 = *(&v38 + 1);
  *&v17[8] = v8;
  *&v17[72] = *(&v38 + 1);
  *&v17[56] = v26;
  *&v17[40] = v36;
  *&v17[24] = v24;
  v14 = v19;
  v15 = v21;
  a1[2] = v5;
  a1[3] = v15;
  *a1 = v2;
  a1[1] = v14;
  a1[7] = *&v17[48];
  a1[8] = *&v17[64];
  a1[5] = *&v17[16];
  a1[6] = *&v17[32];
  a1[4] = *v17;
  v28[0] = v8;
  v28[1] = 0;
  v29 = 0;
  v30 = v9;
  v31 = v11;
  v32 = v10;
  v33 = v12;
  v34 = v13;
  sub_2588534B4(&v18, &v35, sub_258852E4C);
  sub_2588534B4(v23, &v35, sub_258852E4C);
  sub_25885351C(v28, sub_258852E4C);
  v35 = v2;
  *&v36 = 0;
  BYTE8(v36) = 0;
  v37 = v3;
  v38 = v5;
  v39 = v4;
  v40 = v6;
  v41 = v7;
  return sub_25885351C(&v35, sub_258852E4C);
}

uint64_t sub_258851394@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BD858();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v4;
  sub_2588BBAB8();
  v8 = v7;
  v9 = sub_2588BD8B8();
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v12);
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  v13 = sub_2588BCDF8();
  v15 = v14;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  LOBYTE(v9) = v16 & 1;
  *(a1 + 32) = v16 & 1;
  *(a1 + 40) = v17;

  sub_2587A99B0(v13, v15, v9);

  sub_2587B1CF8(v13, v15, v9);
}

uint64_t sub_258851620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BD858();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v4;
  sub_2588BBAB8();
  v8 = v7;
  v9 = sub_2588BD8B8();
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v12);
  sub_2588BBAB8();
  sub_2588BD8B8();
  sub_25878F648();
  v13 = sub_2588BCDF8();
  v15 = v14;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  LOBYTE(v9) = v16 & 1;
  *(a1 + 32) = v16 & 1;
  *(a1 + 40) = v17;

  sub_2587A99B0(v13, v15, v9);

  sub_2587B1CF8(v13, v15, v9);
}

uint64_t sub_2588518A8@<X0>(uint64_t a1@<X8>)
{
  sub_25878F648();

  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5;
  v7 = sub_2588BCDC8();
  v9 = v8;
  v11 = v10;
  sub_2587B1CF8(v2, v4, v6 & 1);

  sub_2588BCC58();
  v12 = sub_2588BCDD8();
  v14 = v13;
  v16 = v15;

  sub_2587B1CF8(v7, v9, v11 & 1);

  sub_2588BD1D8();
  v17 = sub_2588BCD88();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_2587B1CF8(v12, v14, v16 & 1);

  sub_2587E6008();
  v25 = (a1 + *(v24 + 36));
  sub_2587E6068(0);
  v27 = *(v26 + 28);
  v28 = sub_2588BCDB8();
  (*(*(v28 - 8) + 56))(v25 + v27, 1, 1, v28);
  result = swift_getKeyPath();
  *v25 = result;
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_258851A70@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2588518A8(a1);
}

uint64_t sub_258851A78()
{
  sub_25885251C();
  sub_2588525D0();
  sub_25883A41C();
  sub_25885360C(&qword_27F960048, sub_25883A41C);
  swift_getOpaqueTypeConformance2();
  return sub_2588BD0B8();
}

uint64_t sub_258851B58(uint64_t a1)
{
  v2 = sub_2588BC828();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25883A41C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC808();
  v13 = a1;
  sub_2588BD728();
  sub_25885360C(&qword_27F95FAD0, MEMORY[0x277D12688]);
  sub_2588BBF88();
  v10 = sub_25885360C(&qword_27F960048, sub_25883A41C);
  MEMORY[0x259C8B9F0](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258851D28(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDLearnMoreNavigationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588534B4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDLearnMoreNavigationView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_258852BA4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MedicalIDLearnMoreNavigationView);
  return sub_2588BD718();
}

uint64_t sub_258851E54(uint64_t a1)
{
  v20 = sub_2588BC598();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDD848];
  sub_2588535A8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = sub_2588BC038();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588526D0(a1, v10, &qword_27F95DB30, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    sub_2588BDBE8();
    v17 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_2588BC028();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2588520F4()
{
  sub_2588522EC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v0;
  sub_25885241C();
  sub_25885251C();
  v8 = v7;
  v9 = sub_2588525D0();
  sub_25883A41C();
  v11 = v10;
  v12 = sub_25885360C(&qword_27F960048, sub_25883A41C);
  v17 = v11;
  v18 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = &type metadata for MedicalIDLearnMoreView;
  v18 = v8;
  v19 = v9;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2588BC1F8();
  sub_25885360C(&qword_27F960058, sub_2588522EC);
  sub_2588BCF78();
  return (*(v3 + 8))(v6, v2);
}

void sub_2588522EC()
{
  if (!qword_27F960030)
  {
    sub_2588BC138();
    sub_25885241C();
    sub_25885251C();
    sub_2588525D0();
    sub_25883A41C();
    sub_25885360C(&qword_27F960048, sub_25883A41C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960030);
    }
  }
}

void sub_25885241C()
{
  if (!qword_27F960038)
  {
    sub_25885251C();
    sub_2588525D0();
    sub_25883A41C();
    sub_25885360C(&qword_27F960048, sub_25883A41C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960038);
    }
  }
}

void sub_25885251C()
{
  if (!qword_27F960040)
  {
    sub_25883A41C();
    sub_25885360C(&qword_27F960048, sub_25883A41C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960040);
    }
  }
}

unint64_t sub_2588525D0()
{
  result = qword_27F960050;
  if (!qword_27F960050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960050);
  }

  return result;
}

uint64_t sub_25885263C()
{
  v1 = *(type metadata accessor for MedicalIDLearnMoreNavigationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258851E54(v2);
}

uint64_t sub_2588526D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2588535A8(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258852784@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_2588BC598();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588535A8(0, a1, a2, MEMORY[0x277CDF458]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_2588526D0(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_2588BDBE8();
    v22 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_25885299C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588535A8(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_2588526D0(v2, &v16 - v11, &qword_27F95EBC0, sub_258804A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258852BA4(v12, a1, sub_258804A60);
  }

  v14 = *v12;
  sub_2588BDBE8();
  v15 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_258852BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258852C38()
{
  if (!qword_27F960060)
  {
    sub_258852CB8();
    sub_258852F74();
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960060);
    }
  }
}

void sub_258852CB8()
{
  if (!qword_27F960068)
  {
    sub_258852D20();
    sub_2587D5F94();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960068);
    }
  }
}

void sub_258852D20()
{
  if (!qword_27F960070)
  {
    sub_258852DB4(255);
    sub_25885360C(&qword_27F9600A8, sub_258852DB4);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960070);
    }
  }
}

void sub_258852DE8()
{
  if (!qword_27F960080)
  {
    sub_258852E4C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960080);
    }
  }
}

void sub_258852E4C()
{
  if (!qword_27F960088)
  {
    sub_258852EE0(255);
    sub_25885360C(&qword_27F9600A0, sub_258852EE0);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960088);
    }
  }
}

void sub_258852F14()
{
  if (!qword_27F960098)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960098);
    }
  }
}

unint64_t sub_258852F74()
{
  result = qword_27F9600B0;
  if (!qword_27F9600B0)
  {
    sub_258852CB8();
    sub_25885360C(&qword_27F9600B8, sub_258852D20);
    sub_25885360C(&qword_27F95E108, sub_2587D5F94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9600B0);
  }

  return result;
}

void sub_258853054()
{
  if (!qword_27F9600C0)
  {
    sub_258852C38();
    sub_25885360C(&qword_27F9600C8, sub_258852C38);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600C0);
    }
  }
}

void sub_258853108()
{
  if (!qword_27F9600D0)
  {
    sub_258853054();
    sub_2588BC848();
    sub_258852C38();
    sub_25885360C(&qword_27F9600C8, sub_258852C38);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600D0);
    }
  }
}

void sub_25885320C()
{
  if (!qword_27F9600D8)
  {
    sub_258853108();
    sub_258853054();
    sub_2588BC848();
    sub_258852C38();
    sub_25885360C(&qword_27F9600C8, sub_258852C38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600D8);
    }
  }
}

void sub_258853348()
{
  if (!qword_27F9600E0)
  {
    sub_25885320C();
    sub_258853108();
    sub_258853054();
    sub_2588BC848();
    sub_258852C38();
    sub_25885360C(&qword_27F9600C8, sub_258852C38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9600E0);
    }
  }
}

uint64_t sub_2588534B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25885351C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2588535A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25885360C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicalIDPregnancyCellView()
{
  result = qword_27F9600E8;
  if (!qword_27F9600E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588536C8()
{
  type metadata accessor for MedicalIDPregnancyViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587B2F78();
    if (v1 <= 0x3F)
    {
      sub_2587BC234();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258853780@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_27F9697F8 + 1);
  v30 = xmmword_27F9697F8;
  v4 = *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
  v32 = v1;
  v5 = v1 + v4;
  v27 = type metadata accessor for MedicalIDData();
  v6 = *(v27 + 52);
  v7 = MEMORY[0x28220BF90];
  sub_258854CCC(0, &qword_27F95D880, MEMORY[0x28220BF90], MEMORY[0x277D83D88]);
  v29 = &v27;
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v28 = v5;
  sub_258854E28(&v5[v6], &v27 - v9, &qword_27F95D880, v7);
  v10 = sub_2588BB9B8();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(&v27 - v9, 1, v10);
  v31 = v3;

  v13 = sub_258854EA8(&v27 - v9, &qword_27F95D880, v7);
  if (v12 == 1)
  {
    v14 = 0;
  }

  else
  {
    v15 = *(v27 + 56);
    MEMORY[0x28223BE20](v13);
    v16 = &v27 - v9;
    v17 = MEMORY[0x28220BF90];
    sub_258854E28(&v28[v18], v16, &qword_27F95D880, MEMORY[0x28220BF90]);
    v14 = v11(v16, 1, v10) != 1;
    sub_258854EA8(v16, &qword_27F95D880, v17);
  }

  v19 = v32;
  v21 = *v32;
  v20 = v32[1];
  v22 = (v19 + *(type metadata accessor for MedicalIDPregnancyCellView() + 20));
  v23 = *v22;
  v24 = v22[1];
  v25 = v31;
  *a1 = v30;
  *(a1 + 8) = v25;
  *(a1 + 16) = v14;
  *(a1 + 17) = 2;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v21;
  *(a1 + 48) = v20;
}

void sub_258853A08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_258854C48(0, &qword_27F960140, sub_258854880, sub_258854A34, MEMORY[0x277CE0330]);
  v45 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - v5;
  sub_258854880();
  v47 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258854A34(0);
  v46 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28220BF90];
  sub_258854CCC(0, &qword_27F95D880, MEMORY[0x28220BF90], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v43 - v17;
  v19 = sub_2588BB9B8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = sub_2588BE0A8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BE098();
  v25 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v18, v24);
  v27 = v26;
  (*(v21 + 8))(v24, v20);
  sub_258854EA8(v18, &qword_27F95D880, v14);
  if (v27)
  {
    *v9 = sub_2588BC6F8();
    *(v9 + 1) = 0x4010000000000000;
    v9[16] = 0;
    sub_258854D90();
    sub_258854034(v25, v27, a1, &v9[*(v28 + 44)]);

    sub_258854F18(v9, v48, sub_258854880);
    swift_storeEnumTagMultiPayload();
    sub_258854FE4(&qword_27F960138, sub_258854880);
    sub_25882845C();
    sub_2588BC778();
    v29 = sub_258854880;
    v30 = v9;
LABEL_7:
    sub_258854D30(v30, v29);
    return;
  }

  v44 = v13;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v31 = qword_27F95DA88;
  v32 = sub_2588BCDE8();
  v34 = v33;
  v50 = v32;
  v51 = v33;
  v36 = v35 & 1;
  v52 = v35 & 1;
  v53 = v37;
  sub_258790D88();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2588BFF50;
  v39 = a1[1];
  *(v38 + 32) = *a1;
  *(v38 + 40) = v39;
  strcpy((v38 + 48), "PregnancyState");
  *(v38 + 63) = -18;

  v40 = sub_2588BD9A8();

  v41 = HKUIJoinStringsForAutomationIdentifier();

  if (v41)
  {
    sub_2588BD8A8();

    sub_258854A7C();
    sub_258854BC8();
    v42 = v44;
    sub_2588BCFB8();

    sub_2587B1CF8(v32, v34, v36);

    sub_258854F18(v42, v48, sub_258854A34);
    swift_storeEnumTagMultiPayload();
    sub_258854FE4(&qword_27F960138, sub_258854880);
    sub_25882845C();
    sub_2588BC778();
    v29 = sub_258854A34;
    v30 = v42;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_258854034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = type metadata accessor for MedicalIDPregnancyStatusLabelView();
  v69 = *(v71 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258854CCC(0, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v58 - v14;
  v15 = sub_2588BD858();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v17 = qword_27F95DA88;
  v18 = sub_2588BBAC8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v17;
  sub_2588BBAB8();
  v21 = sub_2588BD8B8();
  v23 = v22;
  v24 = *a3;
  v25 = a3[1];
  v26 = a3 + *(type metadata accessor for MedicalIDPregnancyCellView() + 24);
  v27 = *v26;
  if (*v26)
  {
    v66 = v21;
    v67 = v24;
    v68 = v23;

    if ([v27 isLockScreen])
    {
      v28 = 1;
    }

    else
    {
      v63 = a1;
      v64 = a2;
      v29 = sub_2588BB9B8();
      v62 = &v58;
      v61 = *(v29 - 8);
      v30 = *(v61 + 64);
      MEMORY[0x28223BE20](v29);
      v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
      v59 = a3;
      v34 = a3 + v33;
      v35 = *(type metadata accessor for MedicalIDData() + 52);
      v36 = MEMORY[0x28220BF90];
      sub_258854CCC(0, &qword_27F95D880, MEMORY[0x28220BF90], MEMORY[0x277D83D88]);
      v60 = &v58;
      v58 = v37;
      v38 = *(*(v37 - 8) + 64);
      MEMORY[0x28223BE20](v37);
      v40 = &v58 - v39;
      v41 = &v34[v35];
      v42 = v61;
      sub_258854E28(v41, &v58 - v39, &qword_27F95D880, v36);
      if ((*(v42 + 48))(v40, 1, v29) != 1)
      {
        (*(v42 + 32))(v32, v40, v29);
        v50 = objc_opt_self();
        v51 = sub_2588BB958();
        LOBYTE(v50) = [v50 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate_];

        (*(v42 + 8))(v32, v29);
        a1 = v63;
        v44 = v70;
        if (v50)
        {
          v52 = v29;
          v53 = v65;
          v54 = sub_258854F18(v59, v65, type metadata accessor for MedicalIDPregnancyViewModel);
          MEMORY[0x28223BE20](v54);
          (*(v42 + 56))(&v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v52);
          v55 = v71;
          v56 = v53 + *(v71 + 24);
          sub_2588BD478();
          sub_258854EA8(&v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F95D880, MEMORY[0x28220BF90]);
          *(v53 + *(v55 + 20)) = 0;
          sub_258854F80(v53, v44);
          v43 = v55;
          v28 = 0;
          a2 = v64;
        }

        else
        {
          v28 = 1;
          a2 = v64;
          v43 = v71;
        }

        goto LABEL_9;
      }

      sub_258854EA8(v40, &qword_27F95D880, MEMORY[0x28220BF90]);
      v28 = 1;
      a1 = v63;
      a2 = v64;
    }

    v44 = v70;
    v43 = v71;
LABEL_9:
    (*(v69 + 56))(v44, v28, 1, v43);
    v45 = v72;
    sub_258854E28(v44, v72, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);
    v46 = v67;
    v47 = v68;
    *a4 = v66;
    a4[1] = v47;
    a4[2] = a1;
    a4[3] = a2;
    a4[4] = v46;
    a4[5] = v25;
    sub_258854914();
    sub_258854E28(v45, a4 + *(v48 + 48), &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);

    sub_258854EA8(v44, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);
    sub_258854EA8(v45, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView);
  }

  v57 = *(v26 + 1);
  sub_2587CEE98();
  sub_258854FE4(&qword_27F95DAE8, sub_2587CEE98);

  result = sub_2588BC348();
  __break(1u);
  return result;
}

void sub_258854768(uint64_t a1@<X8>)
{
  sub_258853780(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v6;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 64) = 1;
  sub_2588547D8();
  sub_258853A08(v1, a1 + *(v4 + 44));
}

void sub_2588547D8()
{
  if (!qword_27F9600F8)
  {
    sub_258854C48(255, &qword_27F960100, sub_258854880, sub_258854A34, MEMORY[0x277CE0338]);
    sub_258854AD4();
    v0 = type metadata accessor for MedicalIDCellView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9600F8);
    }
  }
}

void sub_258854880()
{
  if (!qword_27F960108)
  {
    sub_258854CCC(255, &qword_27F960110, sub_258854914, MEMORY[0x277CE14B8]);
    sub_2588549AC();
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960108);
    }
  }
}

void sub_258854914()
{
  if (!qword_27F960118)
  {
    sub_258854CCC(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960118);
    }
  }
}

unint64_t sub_2588549AC()
{
  result = qword_27F960128;
  if (!qword_27F960128)
  {
    sub_258854CCC(255, &qword_27F960110, sub_258854914, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960128);
  }

  return result;
}

void sub_258854A7C()
{
  if (!qword_27F95F620)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F620);
    }
  }
}

unint64_t sub_258854AD4()
{
  result = qword_27F960130;
  if (!qword_27F960130)
  {
    sub_258854C48(255, &qword_27F960100, sub_258854880, sub_258854A34, MEMORY[0x277CE0338]);
    sub_258854FE4(&qword_27F960138, sub_258854880);
    sub_25882845C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960130);
  }

  return result;
}

unint64_t sub_258854BC8()
{
  result = qword_27F95F628;
  if (!qword_27F95F628)
  {
    sub_258854A7C();
    sub_258828408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F628);
  }

  return result;
}

void sub_258854C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258854CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258854D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258854D90()
{
  if (!qword_27F960148)
  {
    sub_258854CCC(255, &qword_27F960110, sub_258854914, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960148);
    }
  }
}

uint64_t sub_258854E28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258854CCC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258854EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258854CCC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258854F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258854F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDPregnancyStatusLabelView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258854FE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258855034()
{
  sub_2588558E4(319, &qword_27F95E8B8, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2588BC1C8();
    if (v1 <= 0x3F)
    {
      sub_2587B2F78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25885512C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258855170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_2588558E4(0, &qword_27F95E160, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for MedicalIDAXLayoutView();
  v11 = v10[13];
  v12 = *MEMORY[0x277CDF988];
  v13 = sub_2588BC1C8();
  result = (*(*(v13 - 8) + 104))(a5 + v11, v12, v13);
  v15 = (a5 + v10[14]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a5 + v10[15]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_258855298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588558E4(0, &qword_27F95E160, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_258855944(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BC1C8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2588BDBE8();
    v16 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_258855490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 + 24);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v45 = &v43 - v10;
  v11 = *(v9 + 16);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v43 - v16;
  v17 = sub_2588BC1C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2588BC788();
  v48 = *(v22 - 8);
  v49 = v22;
  v23 = *(v48 + 64);
  MEMORY[0x28223BE20](v22);
  v47 = &v43 - v24;
  sub_258855298(v21);
  v25 = *(a1 + 52);
  v26 = sub_2588BC1B8();
  v27 = (*(v18 + 8))(v21, v17);
  if (v26)
  {
    v28 = v2 + *(a1 + 56);
    v29 = *(v28 + 8);
    (*v28)(v27);
    v30 = *(a1 + 32);
    v31 = v43;
    sub_2587DCF7C(v15, v11, v30);
    v32 = *(v44 + 8);
    v32(v15, v11);
    sub_2587DCF7C(v31, v11, v30);
    v33 = *(a1 + 40);
    v34 = v47;
    sub_2587D79A0(v15, v11);
    v32(v15, v11);
    v35 = v31;
    v36 = v11;
  }

  else
  {
    v37 = v2 + *(a1 + 60);
    v38 = *(v37 + 8);
    (*v37)(v27);
    v33 = *(a1 + 40);
    v39 = v45;
    sub_2587DCF7C(v8, v4, v33);
    v32 = *(v46 + 8);
    v32(v8, v4);
    sub_2587DCF7C(v39, v4, v33);
    v30 = *(a1 + 32);
    v34 = v47;
    sub_2587D7A98(v8, v11, v4);
    v32(v8, v4);
    v35 = v39;
    v36 = v4;
  }

  v32(v35, v36);
  v51 = v30;
  v52 = v33;
  v40 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_2587DCF7C(v34, v40, WitnessTable);
  return (*(v48 + 8))(v34, v40);
}

void sub_2588558E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2588BC1C8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258855944(uint64_t a1, uint64_t a2)
{
  sub_2588558E4(0, &qword_27F95E160, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2588559D8()
{
  result = qword_27F9601D8;
  if (!qword_27F9601D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9601D8);
  }

  return result;
}

void sub_258855A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for EditDateOfBirthCellView()
{
  result = qword_27F9601E0;
  if (!qword_27F9601E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258855B04()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587EE1A8(319);
    if (v1 <= 0x3F)
    {
      sub_258855A40(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_258855A40(319, &qword_27F95DAB8, MEMORY[0x28220C258], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258855C28()
{
  sub_258790D88();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588BFF50;
  v2 = (v0 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 36));
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = 0x6942664F65746144;
  *(v1 + 56) = 0xEB00000000687472;

  v5 = sub_2588BD9A8();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v3 = sub_2588BD8A8();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_258855D10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EditDateOfBirthCellView();
  v82 = *(v4 - 8);
  v5 = *(v82 + 8);
  MEMORY[0x28223BE20](v4);
  v78 = v6;
  v88 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587EE1A8(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v1 + *(v4 + 20);
  v81 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v9;
  sub_2588BD458();
  v12 = sub_2588BD858();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v14 = qword_27F95DA88;
  v15 = sub_2588BBAC8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v14;
  sub_2588BBAB8();
  v18 = sub_2588BD8B8();
  v76 = v19;
  v77 = v18;
  v20 = sub_2588BB9B8();
  v89 = &v69;
  v21 = *(v20 - 8);
  v79 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v80 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (&v69 - v80);
  MedicalIDPersonalInfoViewModel.defaultDateOfBirth()(&v69 - v80);
  sub_2587AFFC8(0);
  v86 = &v69;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = &v69 - v26;
  v74 = v25;
  v75 = v26;
  v27 = v21;
  v70 = v21;
  v28 = *(v21 + 56);
  v29 = v28();
  v85 = &v69;
  MEMORY[0x28223BE20](v29);
  v30 = &v69 - v26;
  sub_2588BB9A8();
  (v28)(&v69 - v26, 0, 1, v20);
  v31 = (v2 + *(v4 + 24));
  v32 = v31[1];
  v72 = *v31;
  v71 = v32;
  sub_2587B2344(v72);
  v33 = sub_258855C28();
  v83 = v34;
  v84 = v33;
  v35 = v2;
  v36 = v88;
  sub_2588567E0(v35, v88, type metadata accessor for EditDateOfBirthCellView);
  v37 = (v82[80] + 16) & ~v82[80];
  v38 = swift_allocObject();
  sub_2588566A8(v36, v38 + v37);
  sub_25885677C();
  v40 = v39;
  v41 = a1 + v39[18];
  v90 = 0;
  sub_2588BD2B8();
  v42 = v92;
  *v41 = v91;
  *(v41 + 8) = v42;
  v43 = v81;
  sub_2588567E0(v81, a1, sub_2587EE1A8);
  v44 = (a1 + v40[9]);
  v45 = v76;
  *v44 = v77;
  v44[1] = v45;
  v46 = *(v27 + 16);
  v47 = a1 + v40[10];
  v82 = v23;
  v48 = v23;
  v49 = v20;
  v46(v47, v48, v20);
  v50 = v73;
  sub_2588567E0(v73, a1 + v40[11], sub_2587AFFC8);
  v51 = sub_2588567E0(v30, a1 + v40[12], sub_2587AFFC8);
  v78 = &v69;
  *(a1 + v40[13]) = 1;
  v52 = (a1 + v40[14]);
  v53 = v71;
  *v52 = v72;
  v52[1] = v53;
  v54 = v40[15];
  v88 = a1;
  v55 = (a1 + v54);
  *v55 = sub_25885670C;
  v55[1] = v38;
  v56 = MEMORY[0x28223BE20](v51);
  v57 = (&v69 - v80);
  v80 = &v69;
  MEMORY[0x28223BE20](v56);
  v58 = &v69 - v75;
  MEMORY[0x259C8C5A0](v87);
  sub_258856848(v30, sub_2587AFFC8);
  sub_258856848(v50, sub_2587AFFC8);
  v59 = v43;
  v60 = v70;
  sub_258856848(v59, sub_2587EE1A8);
  v61 = *(v60 + 48);
  if (v61(v58, 1, v49) == 1)
  {
    v62 = *(v60 + 32);
    v62(v57, v82, v49);
    if (v61(v58, 1, v49) != 1)
    {
      sub_258856848(v58, sub_2587AFFC8);
    }
  }

  else
  {
    (*(v60 + 8))(v82, v49);
    v62 = *(v60 + 32);
    v62(v57, v58, v49);
  }

  v63 = v88;
  v64 = v88 + v40[17];
  sub_258855A40(0, &qword_27F95E7E8, MEMORY[0x28220BF70], MEMORY[0x277CE10B8]);
  *(v64 + *(v65 + 28)) = 0;
  result = (v62)(v64, v57, v49);
  v67 = (v63 + v40[16]);
  v68 = v83;
  *v67 = v84;
  v67[1] = v68;
  return result;
}

void sub_258856474()
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v0 = qword_27F95DA88;
  v1 = sub_2588BCDE8();
  v3 = v2;
  v5 = v4;
  sub_2588BD158();
  v6 = sub_2588BCD98();
  v8 = v7;
  v10 = v9;
  sub_2587B1CF8(v1, v3, v5 & 1);

  v11 = v10 & 1;
  sub_258790D88();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2588BFF50;
  *(v12 + 32) = sub_258855C28();
  *(v12 + 40) = v13;
  *(v12 + 48) = 6579265;
  *(v12 + 56) = 0xE300000000000000;
  v14 = sub_2588BD9A8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v6, v8, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588566A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditDateOfBirthCellView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25885670C()
{
  v0 = *(*(type metadata accessor for EditDateOfBirthCellView() - 8) + 80);

  sub_258856474();
}

void sub_25885677C()
{
  if (!qword_27F9601F0)
  {
    sub_2587DFBD0();
    sub_2587DFB50();
    v0 = type metadata accessor for DatePickerEditView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9601F0);
    }
  }
}

uint64_t sub_2588567E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258856848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588568A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ContactLabelView()
{
  result = qword_27F960200;
  if (!qword_27F960200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258856964()
{
  sub_258857954(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_258856A2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_258857A20();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  *v10 = sub_2588BC6F8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_258857E3C(0, &qword_27F960270, sub_258857AB4);
  sub_258856B8C(a1, &v10[*(v11 + 44)]);
  sub_258857EA8(v10, v8, sub_258857A20);
  sub_258857EA8(v8, a2, sub_258857A20);
  sub_2588579B8();
  v13 = a2 + *(v12 + 48);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_258857F10(v10, sub_258857A20);
  return sub_258857F10(v8, sub_258857A20);
}

void sub_258856B8C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  sub_258857D28();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](v3);
  v101 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258857CF4(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v111 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v96 - v10;
  sub_258857C90(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v12 = v11;
  v13 = *(v11 - 1);
  v14 = v13[8];
  MEMORY[0x28223BE20](v11);
  v104 = &v96 - v15;
  sub_2587F9F84();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v109 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v117 = &v96 - v20;
  sub_2587E6128(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2588BCCE8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 11);
  if (v30)
  {
    v106 = *(a1 + 10);
    v31 = *(a1 + 15);
    v115 = *(a1 + 14);
    (*(v26 + 104))(v29, *MEMORY[0x277CE0A58], v25);
    v32 = sub_2588BCC18();
    (*(*(v32 - 8) + 56))(v24, 1, 1, v32);

    v114 = v31;

    sub_2588BCC28();
    *(&v113 + 1) = sub_2588BCC48();
    sub_258857F10(v24, sub_2587E6128);
    (*(v26 + 8))(v29, v25);
    *&v113 = swift_getKeyPath();
    v33 = sub_2588BC8D8();
    v34 = sub_2588BCBA8();
    sub_2588BBE38();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    LOBYTE(v125) = 0;
    *&v112 = v33;
    *(&v112 + 1) = v34;
  }

  else
  {
    v106 = 0;
    v114 = 0;
    v115 = 0;
    v113 = 0uLL;
    v112 = 0uLL;
    v36 = 0;
    v38 = 0;
    v40 = 0;
    v42 = 0;
  }

  v43 = *(a1 + 1);
  v116 = v30;
  v44 = v117;
  if (!v43)
  {
    v57 = 1;
LABEL_8:
    (v13[7])(v44, v57, 1, v12);
    v58 = *(a1 + 7);
    if (v58)
    {
      v100 = *(a1 + 6);
      v104 = sub_2588BB8E8();
      v59 = *(v104 - 1);
      v60 = *(v59 + 64);
      MEMORY[0x28223BE20](v104);
      v99 = v61;
      v62 = &v96 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_258857F70(0);
      v103 = &v96;
      v64 = *(*(v63 - 8) + 64);
      MEMORY[0x28223BE20](v63 - 8);
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
      v66 = &v96 - v65;
      v67 = a1[5];
      v129 = a1[4];
      v130 = v67;
      v68 = a1[7];
      v131 = a1[6];
      v132 = v68;
      v69 = a1[1];
      v125 = *a1;
      v126 = v69;
      v70 = a1[3];
      v127 = a1[2];
      v128 = v70;
      if (*(&v70 + 1))
      {
        v97 = v62;
        v98 = v58;
        v102 = &v96;
        v71 = objc_opt_self();
        sub_2587914E8(&v125, &v118);
        v72 = sub_2588BD868();
        v73 = [v71 emergencyContactURL_];

        MEMORY[0x28223BE20](v74);
        if (v73)
        {
          sub_2588BB8C8();

          v75 = 0;
        }

        else
        {
          v75 = 1;
        }

        v30 = v116;
        v76 = v104;
        (*(v59 + 56))(&v96 - v65, v75, 1, v104);
        sub_258857F98(&v96 - v65, &v96 - v65);
        sub_2587C66FC(&v125);
        if ((*(v59 + 48))(&v96 - v65, 1, v76) != 1)
        {
          v87 = v97;
          v88 = v104;
          v89 = (*(v59 + 32))(v97, v66, v104);
          MEMORY[0x28223BE20](v89);
          v91 = (*(v59 + 16))(&v96 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0), v87, v88);
          MEMORY[0x28223BE20](v91);
          v92 = v98;
          *(&v96 - 4) = v100;
          *(&v96 - 3) = v92;
          *(&v96 - 2) = a1;
          sub_258857D8C();
          sub_2588502A0();
          v93 = v101;
          sub_2588BCD18();
          v30 = v116;
          (*(v59 + 8))(v87, v88);
          v95 = v107;
          v94 = v108;
          v77 = v110;
          (*(v107 + 32))(v110, v93, v108);
          (*(v95 + 56))(v77, 0, 1, v94);
          v44 = v117;
          goto LABEL_17;
        }
      }

      else
      {
        (*(v59 + 56))(&v96 - v65, 1, 1, v104);
        v30 = v116;
      }

      sub_258857F10(&v96 - v65, sub_258857F70);
      v44 = v117;
    }

    v77 = v110;
    (*(v107 + 56))(v110, 1, 1, v108);
LABEL_17:
    v78 = v109;
    sub_258857EA8(v44, v109, sub_2587F9F84);
    v79 = v111;
    sub_258857EA8(v77, v111, sub_258857CF4);
    v80 = v105;
    v81 = v106;
    *&v118 = v106;
    *(&v118 + 1) = v30;
    *&v119 = v115;
    *(&v119 + 1) = v114;
    v120 = v113;
    v121 = v112;
    *&v122 = v36;
    *(&v122 + 1) = v38;
    *&v123 = v40;
    *(&v123 + 1) = v42;
    v124 = 0;
    *(v105 + 96) = 0;
    v82 = v123;
    v80[4] = v122;
    v80[5] = v82;
    v83 = v119;
    *v80 = v118;
    v80[1] = v83;
    v84 = v121;
    v80[2] = v120;
    v80[3] = v84;
    sub_258857AE8();
    v86 = v85;
    sub_258857EA8(v78, v80 + *(v85 + 48), sub_2587F9F84);
    sub_258857EA8(v79, v80 + *(v86 + 64), sub_258857CF4);
    sub_258857EA8(&v118, &v125, sub_258857B70);
    sub_258857F10(v77, sub_258857CF4);
    sub_258857F10(v117, sub_2587F9F84);
    sub_258857F10(v79, sub_258857CF4);
    sub_258857F10(v78, sub_2587F9F84);
    *&v125 = v81;
    *(&v125 + 1) = v116;
    *&v126 = v115;
    *(&v126 + 1) = v114;
    v127 = v113;
    v128 = v112;
    *&v129 = v36;
    *(&v129 + 1) = v38;
    *&v130 = v40;
    *(&v130 + 1) = v42;
    LOBYTE(v131) = 0;
    sub_258857F10(&v125, sub_258857B70);
    return;
  }

  v102 = v13;
  v103 = v12;
  *&v125 = *a1;
  *(&v125 + 1) = v43;
  sub_25878F648();

  v45 = MEMORY[0x277D837D0];
  v46 = sub_2588BCDF8();
  v48 = v47;
  *&v125 = v46;
  *(&v125 + 1) = v47;
  v50 = v49 & 1;
  LOBYTE(v126) = v49 & 1;
  *(&v126 + 1) = v51;
  sub_2587E628C(0, &qword_280C0DDD0, v45, MEMORY[0x277D84560]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2588BFF50;
  v53 = *(a1 + 15);
  *(v52 + 32) = *(a1 + 14);
  *(v52 + 40) = v53;
  *(v52 + 48) = 1701667150;
  *(v52 + 56) = 0xE400000000000000;

  v54 = sub_2588BD9A8();

  v55 = HKUIJoinStringsForAutomationIdentifier();

  if (v55)
  {
    sub_2588BD8A8();

    v56 = v104;
    sub_2588BCFB8();

    sub_2587B1CF8(v46, v48, v50);

    v44 = v117;
    sub_2587FAF08(v56, v117);
    v57 = 0;
    v30 = v116;
    v13 = v102;
    v12 = v103;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_2588576FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25878F648();

  v4 = MEMORY[0x277D837D0];
  v5 = sub_2588BCDF8();
  v7 = v6;
  v9 = v8 & 1;
  swift_getKeyPath();
  sub_2587E628C(0, &qword_280C0DDD0, v4, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2588BFF50;
  v11 = *(a3 + 120);
  *(v10 + 32) = *(a3 + 112);
  *(v10 + 40) = v11;
  *(v10 + 48) = 0x7265626D754ELL;
  *(v10 + 56) = 0xE600000000000000;

  v12 = sub_2588BD9A8();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    sub_2588BD8A8();

    sub_2587E5DE8();
    sub_2587E65C8();
    sub_2588BCFB8();

    sub_2587B1CF8(v5, v7, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588578B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2588BC608();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258857E3C(0, &qword_27F960210, sub_258857920);
  return sub_258856A2C(v1, a1 + *(v3 + 44));
}

void sub_258857954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588579B8()
{
  if (!qword_27F960220)
  {
    sub_258857A20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960220);
    }
  }
}

void sub_258857A20()
{
  if (!qword_27F960228)
  {
    sub_258857AB4(255);
    sub_258857DF4(&qword_27F960268, sub_258857AB4);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960228);
    }
  }
}

void sub_258857AE8()
{
  if (!qword_27F960238)
  {
    sub_258857B70(255);
    sub_2587F9F84();
    sub_258857CF4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960238);
    }
  }
}

void sub_258857BA4()
{
  if (!qword_27F960248)
  {
    sub_258857C04();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960248);
    }
  }
}

void sub_258857C04()
{
  if (!qword_27F960250)
  {
    sub_258857C90(255, &qword_27F95E948, sub_2587B1964);
    sub_2587E60D0();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960250);
    }
  }
}

void sub_258857C90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258857D28()
{
  if (!qword_27F960260)
  {
    sub_258857D8C();
    sub_2588502A0();
    v0 = sub_2588BCD28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960260);
    }
  }
}

void sub_258857D8C()
{
  if (!qword_27F95E5A8)
  {
    sub_2587E5DE8();
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5A8);
    }
  }
}

uint64_t sub_258857DF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258857E3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258857EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258857F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258857F98(uint64_t a1, uint64_t a2)
{
  sub_258857F70(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258858008()
{
  if (!qword_27F960280)
  {
    sub_258857920(255);
    sub_258857DF4(&qword_27F960288, sub_258857920);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960280);
    }
  }
}

uint64_t sub_2588580EC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2588BDB38();
  if (!v26)
  {
    return sub_2588BD9D8();
  }

  v48 = v26;
  v52 = sub_2588BDEA8();
  v39 = sub_2588BDEB8();
  sub_2588BDE58();
  result = sub_2588BDB28();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2588BDB58();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2588BDE98();
      result = sub_2588BDB48();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.withoutDuplicates(preserveOrder:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_2588BDA08();
    WitnessTable = swift_getWitnessTable();
    v8 = MEMORY[0x259C8CAF0](&v27, v6, WitnessTable);
    v26 = v27;
    MEMORY[0x28223BE20](v8);
    v23 = a3;
    v24 = a4;
    v9 = sub_2588BDEE8();
    v10 = _s14OrderedElementVMa();
    v25 = swift_getWitnessTable();
    v11 = swift_getWitnessTable();
    sub_2588580EC(sub_2588589DC, v22, v9, v10, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);

    swift_getWitnessTable();
    v13 = sub_2588589FC();

    v27 = v13;
    MEMORY[0x28223BE20](v14);
    v23 = a3;
    v24 = a4;
    sub_2588BDAF8();
    swift_getWitnessTable();
    v15 = sub_2588BD988();

    v27 = v15;
    MEMORY[0x28223BE20](v16);
    v23 = a3;
    v24 = a4;
    v17 = sub_2588BDA08();
    v18 = swift_getWitnessTable();
    v20 = sub_2588580EC(sub_258858AD4, v22, v17, a3, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);

    return v20;
  }

  else
  {
    sub_2588BDA08();

    swift_getWitnessTable();
    sub_2588BDB08();
    sub_2588BDAF8();
    swift_getWitnessTable();
    return sub_2588BDA18();
  }
}

uint64_t sub_258858890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = v13 - v8;
  (*(v10 + 16))(v13 - v8, a1, TupleTypeMetadata2);
  v11 = *a1;
  (*(*(a2 - 8) + 32))(a3, &v9[*(TupleTypeMetadata2 + 48)], a2);
  result = _s14OrderedElementVMa();
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_2588589FC()
{
  sub_2588BDA08();

  swift_getWitnessTable();
  return sub_2588BDB08();
}

BOOL sub_258858A80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = _s14OrderedElementVMa();
  return *(a1 + *(v7 + 36)) < *(a2 + *(v7 + 36));
}

uint64_t sub_258858B2C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_258858C30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_258858DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_2588BD798();
}

BOOL sub_258858DC0()
{
  v0 = _s14OrderedElementVMa();
  v1 = sub_258858E1C(v0);
  return v1 == sub_258858E1C(v0);
}

uint64_t sub_258858E1C(uint64_t a1)
{
  sub_2588BE038();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_2588BD798();
  return sub_2588BE078();
}

uint64_t sub_258858E6C(uint64_t a1, uint64_t a2)
{
  sub_2588BE038();
  sub_258858DB4(v4, a2);
  return sub_2588BE078();
}

BOOL sub_258858EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_258858DC0();
}

uint64_t sub_258858EBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258858F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_258858F90(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BD268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588596A8();
  v56 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258859708();
  v57 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258859768(0);
  v55[1] = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v58 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588598D4(0);
  v55[2] = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v59 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v55[0] = a3;
    v25 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_2587CC634(a1, a2);
    sub_2587CC634(a1, a2);
    v26 = sub_2588BB8F8();
    v27 = [v25 initWithData_];

    sub_2587C4E98(a1, a2);
    if (v27)
    {
      sub_2588BD248();
      sub_2587C4E98(a1, a2);
      goto LABEL_6;
    }

    sub_2587C4E98(a1, a2);
  }

  sub_2588BD258();
LABEL_6:
  (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
  v28 = sub_2588BD288();

  (*(v7 + 8))(v10, v6);
  v29 = (v14 + *(v56 + 36));
  v30 = *(sub_2588BC2A8() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_2588BC6B8();
  (*(*(v32 - 8) + 104))(&v29->i8[v30], v31, v32);
  *v29 = vdupq_n_s64(0x4046000000000000uLL);
  sub_258846858();
  *(v29->i16 + *(v33 + 36)) = 256;
  *v14 = v28;
  sub_2588BD5C8();
  sub_2588BC018();
  sub_25885991C(v14, v18);
  v34 = &v18[*(v57 + 36)];
  v35 = v63;
  *v34 = v62;
  *(v34 + 1) = v35;
  *(v34 + 2) = v64;
  v36 = [objc_opt_self() secondarySystemFillColor];
  v37 = sub_2588BD148();
  v38 = v58;
  sub_258859980(v18, a2 >> 60 == 15, v37);

  sub_258859E20(v18, sub_258859708);
  sub_258790D88();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2588BFF50;
  v40 = sub_2588BD9A8();
  v41 = HKUIJoinStringsForAutomationIdentifier();

  if (v41)
  {
    v42 = sub_2588BD8A8();
    v44 = v43;
  }

  else
  {
    v44 = 0xEC0000006F666E49;
    v42 = 0x6C616E6F73726550;
  }

  v45 = v59;
  *(v39 + 32) = v42;
  *(v39 + 40) = v44;
  *(v39 + 48) = 0x6F746F6850;
  *(v39 + 56) = 0xE500000000000000;
  v46 = sub_2588BD9A8();

  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    sub_2588BD8A8();

    sub_258859BC0();
    sub_2588BCFB8();

    sub_258859E20(v38, sub_258859768);
    v48 = sub_2588BD858();
    v49 = *(*(v48 - 8) + 64);
    MEMORY[0x28223BE20](v48 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v50 = qword_27F95DA88;
    v51 = sub_2588BBAC8();
    v52 = *(*(v51 - 8) + 64);
    MEMORY[0x28223BE20](v51 - 8);
    v53 = v50;
    sub_2588BBAB8();
    v60 = sub_2588BD8B8();
    v61 = v54;
    sub_25878F648();
    sub_2588BC1D8();

    sub_258859E20(v45, sub_2588598D4);
  }

  else
  {
    __break(1u);
  }
}

void sub_2588596A8()
{
  if (!qword_27F960290)
  {
    sub_258846858();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960290);
    }
  }
}

void sub_258859708()
{
  if (!qword_27F960298)
  {
    sub_2588596A8();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960298);
    }
  }
}

void sub_2588597F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_25885987C()
{
  if (!qword_27F95D950)
  {
    v0 = sub_2588BC918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D950);
    }
  }
}

uint64_t sub_25885991C(uint64_t a1, uint64_t a2)
{
  sub_2588596A8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258859980(uint64_t a1, char a2, uint64_t a3)
{
  sub_2588597F8(0, &qword_27F9602D8, sub_2588597B0, sub_258859708, MEMORY[0x277CE0330]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_2588597B0(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v17 - v14;
  if (a2)
  {
    sub_258859E80(a1, &v17 - v14, sub_258859708);
    *&v15[*(v11 + 36)] = a3;
    sub_258859E80(v15, v9, sub_2588597B0);
    swift_storeEnumTagMultiPayload();
    sub_258859708();
    sub_258859C40();
    sub_258859CF0();

    sub_2588BC778();
    return sub_258859E20(v15, sub_2588597B0);
  }

  else
  {
    sub_258859E80(a1, v9, sub_258859708);
    swift_storeEnumTagMultiPayload();
    sub_258859708();
    sub_258859C40();
    sub_258859CF0();
    return sub_2588BC778();
  }
}

unint64_t sub_258859BC0()
{
  result = qword_27F9602B8;
  if (!qword_27F9602B8)
  {
    sub_258859768(255);
    sub_258859C40();
    sub_258859CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602B8);
  }

  return result;
}

unint64_t sub_258859C40()
{
  result = qword_27F9602C0;
  if (!qword_27F9602C0)
  {
    sub_2588597B0(255);
    sub_258859CF0();
    sub_258859F98(&qword_27F95F8E0, sub_25885987C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602C0);
  }

  return result;
}

unint64_t sub_258859CF0()
{
  result = qword_27F9602C8;
  if (!qword_27F9602C8)
  {
    sub_258859708();
    sub_258859D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602C8);
  }

  return result;
}

unint64_t sub_258859D70()
{
  result = qword_27F9602D0;
  if (!qword_27F9602D0)
  {
    sub_2588596A8();
    sub_258859F98(&qword_27F95FD40, sub_258846858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602D0);
  }

  return result;
}

uint64_t sub_258859E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258859E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258859EE8()
{
  result = qword_27F9602E0;
  if (!qword_27F9602E0)
  {
    sub_2588598D4(255);
    sub_258859BC0();
    sub_258859F98(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9602E0);
  }

  return result;
}

uint64_t sub_258859F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258859FE0@<X0>(uint64_t *a1@<X8>)
{
  sub_2587CEE98();
  result = sub_2588BBD18();
  *a1 = result;
  return result;
}

uint64_t MIUIMedicalIDAccessPoint.analyticsDisplayName.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      return 0xD000000000000016;
    }

    if (!a1)
    {
      return 0x64657473696C6E55;
    }

    if (a1 == 1)
    {
      return 0x502068746C616548;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 <= 5)
  {
    if (a1 != 4)
    {
      return 0xD00000000000001FLL;
    }

    return 0xD00000000000001CLL;
  }

  switch(a1)
  {
    case 6:
      return 0xD00000000000001CLL;
    case 7:
      return 0x532068746C616548;
    case 8:
      return 0x7041206863746157;
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_25885A230(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25885A280(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25885A280(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDA08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25885A324(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BCBE8();
  sub_2588BBE38();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_25885BEC4(0, &qword_27F960340, sub_258848828);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_25885AF0C();
  v15 = a2 + *(v14 + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
}

uint64_t sub_25885A400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BCCD8();
  KeyPath = swift_getKeyPath();
  sub_25885BEC4(0, &qword_27F960440, sub_25885BF24);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_25885B638(0, &qword_27F960450, &qword_27F960440, sub_25885BF24);
  v8 = (a2 + *(v7 + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  if (qword_27F95D160 != -1)
  {
    swift_once();
  }

  v9 = qword_27F969918;
  sub_25885BF78();
  *(a2 + *(v10 + 36)) = v9;
  v11 = swift_getKeyPath();
  sub_25885C024();
  v13 = a2 + *(v12 + 36);
  *v13 = v11;
  *(v13 + 8) = 0;
}

uint64_t sub_25885A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25885BEC4(0, &qword_27F960338, sub_2588281D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_25885A5FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25885BEC4(0, &qword_27F960308, sub_258828408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  LODWORD(a1) = sub_2588BC8D8();
  sub_25885A698();
  *(a2 + *(v5 + 36)) = a1;
}

void sub_25885A698()
{
  if (!qword_27F960310)
  {
    sub_25885A718();
    sub_25885B2AC(255, &qword_27F95E5F8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960310);
    }
  }
}

void sub_25885A718()
{
  if (!qword_27F960318)
  {
    sub_25885BEC4(255, &qword_27F960308, sub_258828408);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960318);
    }
  }
}

unint64_t sub_25885A824()
{
  result = qword_27F960330;
  if (!qword_27F960330)
  {
    sub_25885BEC4(255, &qword_27F960308, sub_258828408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960330);
  }

  return result;
}

unint64_t sub_25885A8A0()
{
  result = qword_27F95E628;
  if (!qword_27F95E628)
  {
    sub_25885B2AC(255, &qword_27F95E5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E628);
  }

  return result;
}

uint64_t sub_25885A92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_2588BBEC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25885B638(0, &qword_27F960350, &qword_27F960358, sub_25885AF90);
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  sub_25885AFE4();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2588BCC68();
  KeyPath = swift_getKeyPath();
  sub_25885BEC4(0, &qword_27F960358, sub_25885AF90);
  (*(*(v19 - 8) + 16))(v11, v29, v19);
  v20 = &v11[*(v8 + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  sub_2588BCC28();
  sub_25885B114();
  sub_2588BCE28();
  sub_25885B2FC(v11);
  v21 = [objc_opt_self() labelColor];
  *&v16[*(v13 + 36)] = sub_2588BD148();
  (*(v3 + 104))(v6, *MEMORY[0x277CDF350], v2);
  sub_25885B384();
  v22 = v30;
  sub_2588BCF48();
  (*(v3 + 8))(v6, v2);
  sub_2587A15C8(v16);
  sub_25885B460(0, &qword_27F960390, sub_25885B4FC);
  v24 = (v22 + *(v23 + 36));
  sub_25885B580(0, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
  v26 = *(v25 + 28);
  v27 = sub_2588BCDB8();
  (*(*(v27 - 8) + 56))(v24 + v26, 1, 1, v27);
  result = swift_getKeyPath();
  *v24 = result;
  return result;
}

uint64_t sub_25885ACA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BCBF8();
  KeyPath = swift_getKeyPath();
  sub_25885BEC4(0, &qword_27F9603A0, sub_25885B5E4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  sub_25885B638(0, &qword_27F9603B0, &qword_27F9603A0, sub_25885B5E4);
  v8 = (a2 + *(v7 + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = sub_2588BD148();
  sub_25885B6C4();
  *(a2 + *(v11 + 36)) = v10;
  v12 = swift_getKeyPath();
  sub_25885B770();
  v14 = a2 + *(v13 + 36);
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = swift_getKeyPath();
  sub_25885B85C();
  v17 = a2 + *(v16 + 36);
  *v17 = v15;
  *(v17 + 8) = 0;
  sub_25885B938(0);
  v19 = (a2 + *(v18 + 36));
  sub_25885B580(0, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
  v21 = *(v20 + 28);
  v22 = sub_2588BCDB8();
  (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
  result = swift_getKeyPath();
  *v19 = result;
  return result;
}

void sub_25885AF0C()
{
  if (!qword_27F960348)
  {
    sub_25885BEC4(255, &qword_27F960340, sub_258848828);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960348);
    }
  }
}

unint64_t sub_25885AF90()
{
  result = qword_27F960360;
  if (!qword_27F960360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960360);
  }

  return result;
}

void sub_25885AFE4()
{
  if (!qword_27F960368)
  {
    sub_25885B064();
    sub_25885B2AC(255, &qword_27F95D950);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960368);
    }
  }
}

void sub_25885B064()
{
  if (!qword_27F960370)
  {
    sub_25885B638(255, &qword_27F960350, &qword_27F960358, sub_25885AF90);
    sub_25885B114();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960370);
    }
  }
}

unint64_t sub_25885B114()
{
  result = qword_27F960378;
  if (!qword_27F960378)
  {
    sub_25885B638(255, &qword_27F960350, &qword_27F960358, sub_25885AF90);
    sub_25885B1E0();
    sub_25885B25C(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960378);
  }

  return result;
}

unint64_t sub_25885B1E0()
{
  result = qword_27F960380;
  if (!qword_27F960380)
  {
    sub_25885BEC4(255, &qword_27F960358, sub_25885AF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960380);
  }

  return result;
}

uint64_t sub_25885B25C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25885B7F0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25885B2AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2588BC918();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25885B2FC(uint64_t a1)
{
  sub_25885B638(0, &qword_27F960350, &qword_27F960358, sub_25885AF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25885B384()
{
  result = qword_27F960388;
  if (!qword_27F960388)
  {
    sub_25885AFE4();
    sub_25885B638(255, &qword_27F960350, &qword_27F960358, sub_25885AF90);
    sub_25885B114();
    swift_getOpaqueTypeConformance2();
    sub_258836894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960388);
  }

  return result;
}

void sub_25885B460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25885B580(255, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25885B4FC()
{
  if (!qword_27F960398)
  {
    sub_25885AFE4();
    sub_25885B384();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960398);
    }
  }
}

void sub_25885B580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25885B5E4()
{
  result = qword_27F9603A8;
  if (!qword_27F9603A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603A8);
  }

  return result;
}

void sub_25885B638(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    sub_25885BEC4(255, a3, a4);
    sub_25885B7F0(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25885B6C4()
{
  if (!qword_27F9603B8)
  {
    sub_25885B638(255, &qword_27F9603B0, &qword_27F9603A0, sub_25885B5E4);
    sub_25885B2AC(255, &qword_27F95D950);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9603B8);
    }
  }
}

void sub_25885B770()
{
  if (!qword_27F9603C0)
  {
    sub_25885B6C4();
    sub_25885B7F0(255, &qword_27F9603C8, &qword_27F9603D0, MEMORY[0x277D83B88]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9603C0);
    }
  }
}

void sub_25885B7F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25885B8E8(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25885B85C()
{
  if (!qword_27F9603D8)
  {
    sub_25885B770();
    sub_25885B8E8(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9603D8);
    }
  }
}

void sub_25885B8E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25885B968()
{
  result = qword_27F9603E8;
  if (!qword_27F9603E8)
  {
    sub_25885BEC4(255, &qword_27F960338, sub_2588281D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603E8);
  }

  return result;
}

unint64_t sub_25885B9E4()
{
  result = qword_27F9603F0;
  if (!qword_27F9603F0)
  {
    sub_25885AF0C();
    sub_25885BA64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603F0);
  }

  return result;
}

unint64_t sub_25885BA64()
{
  result = qword_27F9603F8;
  if (!qword_27F9603F8)
  {
    sub_25885BEC4(255, &qword_27F960340, sub_258848828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9603F8);
  }

  return result;
}

unint64_t sub_25885BAE0()
{
  result = qword_27F960400;
  if (!qword_27F960400)
  {
    sub_25885B460(255, &qword_27F960390, sub_25885B4FC);
    sub_25885AFE4();
    sub_25885B384();
    swift_getOpaqueTypeConformance2();
    sub_25885BBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960400);
  }

  return result;
}

unint64_t sub_25885BBAC()
{
  result = qword_27F95E620;
  if (!qword_27F95E620)
  {
    sub_25885B580(255, &qword_27F95E5E8, sub_2587E609C, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E620);
  }

  return result;
}

unint64_t sub_25885BC7C()
{
  result = qword_27F960418;
  if (!qword_27F960418)
  {
    sub_25885B770();
    sub_25885C0F8(&qword_27F960420, sub_25885B6C4, sub_25885BD60, sub_258836894);
    sub_25885B25C(&qword_27F960438, &qword_27F9603C8, &qword_27F9603D0, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960418);
  }

  return result;
}

unint64_t sub_25885BD60()
{
  result = qword_27F960428;
  if (!qword_27F960428)
  {
    sub_25885B638(255, &qword_27F9603B0, &qword_27F9603A0, sub_25885B5E4);
    sub_25885BE2C();
    sub_25885B25C(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960428);
  }

  return result;
}

unint64_t sub_25885BE2C()
{
  result = qword_27F960430;
  if (!qword_27F960430)
  {
    sub_25885BEC4(255, &qword_27F9603A0, sub_25885B5E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960430);
  }

  return result;
}

void sub_25885BEC4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_2588BC8B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25885BF24()
{
  result = qword_27F960448;
  if (!qword_27F960448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960448);
  }

  return result;
}

void sub_25885BF78()
{
  if (!qword_27F960458)
  {
    sub_25885B638(255, &qword_27F960450, &qword_27F960440, sub_25885BF24);
    sub_25885B2AC(255, &qword_27F95D950);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960458);
    }
  }
}

void sub_25885C024()
{
  if (!qword_27F960460)
  {
    sub_25885BF78();
    sub_25885B8E8(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960460);
    }
  }
}

uint64_t sub_25885C0F8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25885C184()
{
  result = qword_27F960478;
  if (!qword_27F960478)
  {
    sub_25885B638(255, &qword_27F960450, &qword_27F960440, sub_25885BF24);
    sub_25885C250();
    sub_25885B25C(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960478);
  }

  return result;
}

unint64_t sub_25885C250()
{
  result = qword_27F960480;
  if (!qword_27F960480)
  {
    sub_25885BEC4(255, &qword_27F960440, sub_25885BF24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960480);
  }

  return result;
}

uint64_t sub_25885C318@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v12[3] = &type metadata for AllergyConfiguration;
  v12[4] = &off_2869C1778;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_25885C3D0(v13, v11);
  return sub_25884E278(v12, sub_258802A78, 0, a1);
}

uint64_t type metadata accessor for MedicalIDEditSettingsView()
{
  result = qword_27F960498;
  if (!qword_27F960498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25885C4A0()
{
  type metadata accessor for MedicalIDSettingsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2588615C4(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_25885C5F0(319, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2587BC234();
        if (v3 <= 0x3F)
        {
          sub_25885C5F0(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25885C5F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25885C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditSettingsView();
  v5 = a2 + v4[5];
  sub_2588BD2B8();
  *v5 = v18;
  *(v5 + 8) = v19;
  v6 = (a2 + v4[8]);
  sub_2587CEE98();
  sub_25886084C(&qword_27F95DAE8, sub_2587CEE98);
  *v6 = sub_2588BC358();
  v6[1] = v7;
  v8 = a2 + v4[9];
  type metadata accessor for MedicalIDDataManager();
  sub_25886084C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v8 = sub_2588BBF58();
  *(v8 + 8) = v9 & 1;
  sub_258861F88(a1, a2, type metadata accessor for MedicalIDSettingsViewModel);
  v10 = type metadata accessor for MedicalIDData();
  LOBYTE(v8) = *(a1 + *(v10 + 68));
  v11 = a2 + v4[6];
  sub_2588BD2B8();
  *v11 = v18;
  *(v11 + 8) = v19;
  LOBYTE(v10) = *(a1 + *(v10 + 64));
  v12 = type metadata accessor for MedicalIDEditableSettingsViewModel(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_2588BBBC8();
  result = sub_258861290(a1, type metadata accessor for MedicalIDSettingsViewModel);
  *(v15 + 17) = (v10 & 1) == 0;
  *(v15 + 16) = v8;
  v17 = (a2 + v4[7]);
  *v17 = v15;
  v17[1] = 0;
  return result;
}

uint64_t sub_25885C878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel);
  sub_2588BBB98();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25885C948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel);
  sub_2588BBB98();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_25885CA3C(uint64_t a1)
{
  v2 = sub_2588BC088();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC4D8();
}

uint64_t sub_25885CB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_258861350(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258861F88(a3, v11, sub_258861350);
  v12 = sub_2588BDAA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_258861290(v11, sub_258861350);
  }

  else
  {
    sub_2588BDA98();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2588BDA28();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2588BD8E8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_258861290(a3, sub_258861350);

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

  sub_258861290(a3, sub_258861350);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25885CDB8()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MedicalIDEditSettingsView() + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_25885CF08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v53 = type metadata accessor for MedicalIDEditSettingsView();
  v56 = *(v53 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = v4;
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2588BC868();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2588BD588();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258860894();
  v52 = v12;
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588610DC(0);
  v60 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258861104();
  v55 = v20;
  v54 = *(v20 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v61 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25885C5F0(0, &qword_27F9605A0, MEMORY[0x277CDF110], MEMORY[0x277D84560]);
  v23 = *(sub_2588BD598() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_2588C00B0;
  *v11 = xmmword_2588C5F50;
  (*(v8 + 104))(v11, *MEMORY[0x277CDF108], v7);
  sub_2588BD5A8();
  sub_2588BC6F8();
  v62 = v1;
  LODWORD(v63) = 0;
  sub_25886084C(&qword_27F95DB70, MEMORY[0x277CE0428]);
  sub_2588BE0D8();
  sub_258860928(0);
  sub_25886084C(&qword_27F960578, sub_258860928);
  sub_2588BD608();
  sub_2588615C4(0, &qword_27F95E480, MEMORY[0x277CE0910], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2588C17A0;
  LOBYTE(v11) = sub_2588BCBB8();
  *(inited + 32) = v11;
  v27 = sub_2588BCBD8();
  *(inited + 33) = v27;
  v28 = sub_2588BCB98();
  *(inited + 34) = v28;
  v29 = sub_2588BCBC8();
  sub_2588BCBC8();
  if (sub_2588BCBC8() != v11)
  {
    v29 = sub_2588BCBC8();
  }

  sub_2588BCBC8();
  if (sub_2588BCBC8() != v27)
  {
    v29 = sub_2588BCBC8();
  }

  sub_2588BCBC8();
  if (sub_2588BCBC8() != v28)
  {
    v29 = sub_2588BCBC8();
  }

  (*(v51 + 32))(v19, v15, v52);
  v30 = &v19[*(v60 + 36)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = v53;
  v32 = v2 + *(v53 + 20);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v67) = v33;
  v68 = v34;
  v35 = MEMORY[0x277D839B0];
  sub_2588615C4(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v50 = type metadata accessor for MedicalIDLearnMoreNavigationView();
  v51 = sub_2588611D8();
  v52 = sub_25886084C(&qword_27F95E780, type metadata accessor for MedicalIDLearnMoreNavigationView);
  sub_2588BD068();

  sub_258861290(v19, sub_2588610DC);
  sub_2588615C4(0, &qword_27F95F4A0, v35, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2588BFF50;
  v37 = (v2 + *(v31 + 28));
  v38 = v37[1];
  v63 = *v37;
  v39 = v63;
  v64 = v38;
  sub_25885C5F0(0, &qword_27F9604A8, type metadata accessor for MedicalIDEditableSettingsViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v40 = v67;
  swift_getKeyPath();
  v63 = v40;
  sub_25886084C(&qword_27F95DC18, type metadata accessor for MedicalIDEditableSettingsViewModel);
  sub_2588BBB98();

  v41 = *(v40 + 16);

  *(v36 + 32) = v41;
  v63 = v39;
  v64 = v38;
  sub_2588BD2C8();
  v42 = v67;
  swift_getKeyPath();
  v63 = v42;
  sub_2588BBB98();

  v43 = *(v42 + 17);

  *(v36 + 33) = v43;
  v67 = v36;
  v44 = v58;
  sub_258861F88(v2, v58, type metadata accessor for MedicalIDEditSettingsView);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_2588618D4(v44, v46 + v45, type metadata accessor for MedicalIDEditSettingsView);
  sub_2588615C4(0, &qword_27F95F468, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
  v63 = v60;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  swift_getOpaqueTypeConformance2();
  sub_2588221D4();
  v47 = v55;
  v48 = v61;
  sub_2588BD118();

  return (*(v54 + 8))(v48, v47);
}