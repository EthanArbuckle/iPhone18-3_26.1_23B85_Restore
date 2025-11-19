uint64_t sub_20D0D2790()
{
  v0 = sub_20D563818();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D948);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820F48);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_20D564368();
  v35 = v1;
  v16 = *(v1 + 56);
  v34 = v0;
  v16(v15, 0, 1, v0);
  type metadata accessor for HomeHubsSelectionListView(0);
  sub_20D563D28();
  v17 = sub_20D5643B8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_20CEF928C(v7, &qword_27C820F48);
    v19 = 1;
  }

  else
  {
    sub_20D564368();
    (*(v18 + 8))(v7, v17);
    v19 = 0;
  }

  v20 = v34;
  v16(v12, v19, 1, v34);
  v21 = *(v33 + 48);
  sub_20CEF9178(v15, v4, &qword_27C81C180);
  sub_20CEF9178(v12, &v4[v21], &qword_27C81C180);
  v22 = *(v35 + 48);
  if (v22(v4, 1, v20) != 1)
  {
    v24 = v32;
    sub_20CEF9178(v4, v32, &qword_27C81C180);
    if (v22(&v4[v21], 1, v20) != 1)
    {
      v25 = v35;
      v26 = &v4[v21];
      v27 = v31;
      (*(v35 + 32))(v31, v26, v20);
      sub_20D0D470C(qword_27C820680, MEMORY[0x277CC95F0]);
      v23 = sub_20D5677E8();
      v28 = *(v25 + 8);
      v28(v27, v20);
      sub_20CEF928C(v12, &qword_27C81C180);
      sub_20CEF928C(v15, &qword_27C81C180);
      v28(v32, v20);
      sub_20CEF928C(v4, &qword_27C81C180);
      return v23 & 1;
    }

    sub_20CEF928C(v12, &qword_27C81C180);
    sub_20CEF928C(v15, &qword_27C81C180);
    (*(v35 + 8))(v24, v20);
    goto LABEL_9;
  }

  sub_20CEF928C(v12, &qword_27C81C180);
  sub_20CEF928C(v15, &qword_27C81C180);
  if (v22(&v4[v21], 1, v20) != 1)
  {
LABEL_9:
    sub_20CEF928C(v4, &qword_27C81D948);
    v23 = 0;
    return v23 & 1;
  }

  sub_20CEF928C(v4, &qword_27C81C180);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_20D0D2CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D566AE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8210F8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20CEF9178(v2, &v14 - v9, &qword_27C8210F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D5667B8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D567EB8();
    v13 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20D0D2EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeHubsSelectionListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0D2F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeHubsSelectionListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D0D2FDC()
{
  result = qword_27C820F70;
  if (!qword_27C820F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F50);
    sub_20CF156D0(&qword_27C820F78, &qword_27C820F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820F70);
  }

  return result;
}

unint64_t sub_20D0D308C()
{
  result = qword_27C820F88;
  if (!qword_27C820F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F48);
    sub_20D0D470C(&qword_27C81D4C8, MEMORY[0x277D15CB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820F88);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for HomeHubsSelectionListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_20D563DA8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + *(v1 + 24);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418) + 32);
  v9 = sub_20D563818();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D0D3334(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HomeHubsSelectionListView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_20D0D33C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821158);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8 - 8];
  *v9 = sub_20D5675E8();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821160);
  sub_20D0D3618(a1, (v9 + *(v11 + 44)));
  v12 = sub_20D566BA8();
  LOBYTE(v26[0]) = 1;
  sub_20D0D3F10(v22);
  *&v21[23] = v22[1];
  *&v21[39] = v22[2];
  *&v21[55] = v22[3];
  v21[71] = v23;
  *&v21[7] = v22[0];
  v13 = v26[0];
  sub_20CEF9178(v9, v6, &qword_27C821158);
  sub_20CEF9178(v6, a2, &qword_27C821158);
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821168) + 48));
  v24[0] = v12;
  v24[1] = 0;
  LOBYTE(v25[0]) = v13;
  *(v25 + 1) = *v21;
  *(&v25[1] + 1) = *&v21[16];
  *(&v25[2] + 1) = *&v21[32];
  *(&v25[3] + 1) = *&v21[48];
  *(&v25[4] + 1) = *&v21[64];
  v15 = v25[0];
  *v14 = v12;
  v14[1] = v15;
  v16 = v25[1];
  v17 = v25[2];
  v18 = v25[3];
  *(v14 + 73) = *(&v25[3] + 9);
  v14[3] = v17;
  v14[4] = v18;
  v14[2] = v16;
  sub_20CEF9178(v24, v26, &qword_27C821170);
  sub_20CEF928C(v9, &qword_27C821158);
  v26[0] = v12;
  v26[1] = 0;
  v27 = v13;
  v29 = *&v21[16];
  v30 = *&v21[32];
  v31 = *&v21[48];
  v32 = *&v21[64];
  v28 = *v21;
  sub_20CEF928C(v26, &qword_27C821170);
  return sub_20CEF928C(v6, &qword_27C821158);
}

uint64_t sub_20D0D3618@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v70 = a1;
  v67 = a2;
  v66 = sub_20D564328();
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D564388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D688);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v57 - v12);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821178);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821180);
  MEMORY[0x28223BE20](v15 - 8);
  v63 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v57 - v18;
  v65 = sub_20D567328();
  sub_20D5675E8();
  sub_20D566848();
  *&v78[6] = v79;
  *&v78[22] = v80;
  *&v78[38] = v81;
  type metadata accessor for HomeHubsSelectionListView.ResidentInfoView(0);
  sub_20D564338();
  sub_20D5673E8();
  sub_20D566BB8();
  v19 = sub_20D566BD8();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  v20 = sub_20D5673F8();

  sub_20CEF928C(v9, &qword_27C81D680);
  v21 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D690) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D698) + 28);
  v23 = *MEMORY[0x277CE1048];
  v24 = sub_20D567408();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v13 = v20;
  *(v13 + *(v11 + 44)) = sub_20D567308();
  v25 = sub_20D564398();
  v26 = *(v4 + 104);
  v58 = *MEMORY[0x277D15C88];
  v57 = v26;
  v26(v6);
  LOBYTE(v21) = sub_20D048AB0(v6, v25);

  v27 = *(v4 + 8);
  v60 = v3;
  v59 = v4 + 8;
  v27(v6, v3);
  v28 = MEMORY[0x277D15C60];
  if ((v21 & 1) == 0 || (v29 = sub_20D564348(), v30 = *v28, v31 = v61, v32 = v62, v33 = v66, (*(v61 + 104))(v62, v30, v66), v34 = sub_20D048CC8(v32, v29), , v35 = v31, v28 = MEMORY[0x277D15C60], (*(v35 + 8))(v32, v33), v36 = 1.0, (v34 & 1) == 0))
  {
    v36 = 0.5;
  }

  v37 = v68;
  sub_20CF15584(v13, v68, &qword_27C81D688);
  *(v37 + *(v69 + 36)) = v36;
  v72 = 0;
  *v73 = 0xE000000000000000;
  sub_20D568858();

  v76 = 0xD00000000000001CLL;
  v77 = 0x800000020D5D9930;
  v38 = sub_20D564338();
  MEMORY[0x20F31CDB0](v38);

  v39 = sub_20D564398();
  v40 = v60;
  v57(v6, v58, v60);
  LOBYTE(v37) = sub_20D048AB0(v6, v39);

  v27(v6, v40);
  if (v37 & 1) != 0 && (v41 = sub_20D564348(), v42 = v61, v43 = v62, v44 = v66, (*(v61 + 104))(v62, *v28, v66), v45 = sub_20D048CC8(v43, v41), , (*(v42 + 8))(v43, v44), (v45))
  {
    v46 = 0;
    v47 = 0xE000000000000000;
  }

  else
  {
    v47 = 0xEC000000656C6261;
    v46 = 0x6C696176616E752ELL;
  }

  MEMORY[0x20F31CDB0](v46, v47);

  sub_20D0D5EF0();
  v48 = v64;
  v49 = v68;
  sub_20D567188();

  sub_20CEF928C(v49, &qword_27C821178);
  v50 = v63;
  sub_20CEF9178(v48, v63, &qword_27C821180);
  v51 = v65;
  *&v71[0] = v65;
  WORD4(v71[0]) = 256;
  *(v71 + 10) = *v78;
  *(&v71[1] + 10) = *&v78[16];
  *(&v71[2] + 10) = *&v78[32];
  *(&v71[3] + 1) = *&v78[46];
  v52 = v71[1];
  v53 = v67;
  *v67 = v71[0];
  v53[1] = v52;
  v54 = v71[3];
  v53[2] = v71[2];
  v53[3] = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8211A8);
  sub_20CEF9178(v50, v53 + *(v55 + 48), &qword_27C821180);
  sub_20CEF9178(v71, &v72, &qword_27C81D6A8);
  sub_20CEF928C(v48, &qword_27C821180);
  sub_20CEF928C(v50, &qword_27C821180);
  v72 = v51;
  *v73 = 256;
  *&v73[2] = *v78;
  v74 = *&v78[16];
  *v75 = *&v78[32];
  *&v75[14] = *&v78[46];
  return sub_20CEF928C(&v72, &qword_27C81D6A8);
}

uint64_t sub_20D0D3F10@<X0>(uint64_t *a1@<X8>)
{
  v91 = a1;
  v81 = sub_20D564328();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20D564388();
  v88 = *(v2 - 8);
  v89 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D5667B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v79 - v9;
  v86 = *(type metadata accessor for HomeHubsSelectionListView.ResidentInfoView(0) + 20);
  v97 = sub_20D0CAA28();
  v98 = v11;
  sub_20CEF44D8();
  v12 = sub_20D5670E8();
  v14 = v13;
  v16 = v15;
  sub_20D566F98();
  v84 = sub_20D5670C8();
  v83 = v17;
  v82 = v18;
  v85 = v19;

  sub_20CF13F34(v12, v14, v16 & 1);

  sub_20D0D2CF8(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3C0], v4);
  LOBYTE(v12) = sub_20D5667A8();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  if (v12)
  {
    v21 = sub_20D567348();
  }

  else
  {
    v21 = sub_20D567318();
  }

  v97 = v21;
  v22 = v82;
  v23 = v84;
  v24 = v83;
  v25 = sub_20D5670B8();
  v27 = v26;
  v90 = v28;
  v30 = v29;
  sub_20CF13F34(v23, v24, v22 & 1);

  v31 = sub_20D564398();
  v33 = v87;
  v32 = v88;
  v34 = v89;
  (*(v88 + 104))(v87, *MEMORY[0x277D15C88], v89);
  v35 = sub_20D048AB0(v33, v31);

  (*(v32 + 8))(v33, v34);
  if ((v35 & 1) == 0)
  {
    v46 = sub_20D5677F8();
    v47 = HFLocalizedString();

    sub_20D567838();
    sub_20D566F88();
    v48 = sub_20D5670C8();
    v50 = v49;
    v52 = v51;

    v97 = sub_20D567308();
    v53 = sub_20D5670B8();
    v88 = v27;
    v89 = v25;
    v54 = v30;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_20CF13F34(v48, v50, v52 & 1);

    v92 = v53;
    v93 = v56;
    v30 = v54;
    v94 = v58 & 1;
    v95 = v60;
    v27 = v88;
    v25 = v89;
    v96 = 0;
LABEL_9:
    sub_20D566D18();
    v41 = v97;
    v42 = v98;
    v43 = v99;
    v44 = v100;
    v45 = v101;
    sub_20D05AB38(v97, v98, v99);
    goto LABEL_10;
  }

  v36 = sub_20D564348();
  v37 = v80;
  v38 = v79;
  v39 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x277D15C60], v81);
  v40 = sub_20D048CC8(v38, v36);

  (*(v37 + 8))(v38, v39);
  if ((v40 & 1) == 0)
  {
    v61 = sub_20D5677F8();
    v62 = HFLocalizedString();

    sub_20D567838();
    sub_20D566F88();
    v63 = sub_20D5670C8();
    v65 = v64;
    v67 = v66;

    v97 = sub_20D567308();
    v68 = sub_20D5670B8();
    v88 = v27;
    v89 = v25;
    v69 = v30;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_20CF13F34(v63, v65, v67 & 1);

    v92 = v68;
    v93 = v71;
    v30 = v69;
    v94 = v73 & 1;
    v95 = v75;
    v27 = v88;
    v25 = v89;
    v96 = 1;
    goto LABEL_9;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = -1;
LABEL_10:
  v76 = v90 & 1;
  sub_20CF14B58(v25, v27, v90 & 1);
  sub_20D5663C8();
  sub_20D05AB20(v41, v42, v43, v44, v45);
  sub_20D05AB74(v41, v42, v43, v44, v45);
  LOBYTE(v97) = v76;
  v77 = v91;
  *v91 = v25;
  v77[1] = v27;
  *(v77 + 16) = v76;
  v77[3] = v30;
  v77[4] = v41;
  v77[5] = v42;
  v77[6] = v43;
  v77[7] = v44;
  *(v77 + 64) = v45;
  sub_20D05AB74(v41, v42, v43, v44, v45);
  sub_20CF13F34(v25, v27, v76);
}

uint64_t sub_20D0D46B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D566B38();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821150);
  return sub_20D0D33C0(v1, a1 + *(v3 + 44));
}

uint64_t sub_20D0D470C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0D4754(uint64_t a1)
{
  v4 = *(type metadata accessor for HomeHubsSelectionListView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20D0D22C4(a1, v6, v7, v1 + v5);
}

uint64_t sub_20D0D4864(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20D5643B8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HomeHubsSelectionListView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20CEF934C;

  return sub_20D0D1238(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_20D0D49BC()
{
  result = qword_27C820FE0;
  if (!qword_27C820FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820FD8);
    sub_20D0D4A74();
    sub_20CF156D0(&qword_27C820090, &unk_27C8202D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820FE0);
  }

  return result;
}

unint64_t sub_20D0D4A74()
{
  result = qword_27C820FE8;
  if (!qword_27C820FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820FF0);
    sub_20D0D470C(&qword_27C820FF8, type metadata accessor for HomeHubsSelectionListView.ResidentInfoView);
    sub_20CF156D0(&qword_27C81D628, &qword_27C8202B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820FE8);
  }

  return result;
}

unint64_t sub_20D0D4B84()
{
  result = qword_27C821000;
  if (!qword_27C821000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820FC8);
    sub_20D0D49BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821000);
  }

  return result;
}

unint64_t sub_20D0D4C1C()
{
  result = qword_27C821018;
  if (!qword_27C821018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821010);
    sub_20D0D4CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821018);
  }

  return result;
}

unint64_t sub_20D0D4CA0()
{
  result = qword_27C821020;
  if (!qword_27C821020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821028);
    sub_20CF156D0(&qword_27C821030, &qword_27C821038);
    sub_20CF156D0(&qword_27C81D628, &qword_27C8202B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821020);
  }

  return result;
}

unint64_t sub_20D0D4D8C()
{
  result = qword_27C821040;
  if (!qword_27C821040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F98);
    sub_20D0D4E44();
    sub_20CF156D0(&qword_27C820090, &unk_27C8202D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821040);
  }

  return result;
}

unint64_t sub_20D0D4E44()
{
  result = qword_27C821048;
  if (!qword_27C821048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821050);
    sub_20D0D4C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821048);
  }

  return result;
}

uint64_t sub_20D0D4EE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D0D4F90()
{
  result = qword_27C821098;
  if (!qword_27C821098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8210A0);
    sub_20D0D501C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821098);
  }

  return result;
}

unint64_t sub_20D0D501C()
{
  result = qword_27C8210A8;
  if (!qword_27C8210A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8210A8);
  }

  return result;
}

unint64_t sub_20D0D50A0()
{
  result = qword_27C8210B8;
  if (!qword_27C8210B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820FB0);
    sub_20D0D5158();
    sub_20CF156D0(&qword_27C820090, &unk_27C8202D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8210B8);
  }

  return result;
}

unint64_t sub_20D0D5158()
{
  result = qword_27C8210C0;
  if (!qword_27C8210C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8210C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821068);
    sub_20D566B08();
    sub_20CF156D0(&qword_27C821070, &qword_27C821068);
    sub_20D0D470C(&qword_27C821078, MEMORY[0x277CDDDF0]);
    swift_getOpaqueTypeConformance2();
    sub_20D0D4EE4(&qword_27C821080, &qword_27C821060, &unk_20D5C8980, sub_20D0D4F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8210C0);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = type metadata accessor for HomeHubsSelectionListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = *(v1 + 20);
  v6 = sub_20D563DA8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + *(v1 + 24);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418) + 32);
  v9 = sub_20D563818();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D0D54D8()
{
  type metadata accessor for HomeHubsSelectionListView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF934C;

  return sub_20D0CEAE0();
}

unint64_t sub_20D0D55C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_20D5678E8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_20D567998();
}

unint64_t sub_20D0D5678()
{
  result = qword_27C8210D0;
  if (!qword_27C8210D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8210D0);
  }

  return result;
}

uint64_t sub_20D0D56E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HomeHubsSelectionListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D0CEF54(a1, v6, a2);
}

uint64_t sub_20D0D5764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_20D5643B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for HomeHubsSelectionListView(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v16 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v6 + 20);
  v10 = sub_20D563DA8();
  (*(*(v10 - 8) + 8))(v0 + v8 + v9, v10);
  v11 = v0 + v8 + *(v6 + 24);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418) + 32);
  v13 = sub_20D563818();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v11 + v12, 1, v13))
  {
    (*(v14 + 8))(v11 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v16, v3 | v7 | 7);
}

uint64_t sub_20D0D5A6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20D5643B8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HomeHubsSelectionListView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20CEF5FFC;

  return sub_20D0CD40C(a1, v10, v11, v1 + v6, v1 + v9);
}

void sub_20D0D5BE4()
{
  sub_20D0D5C98(319, &qword_27C821120, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20D5643B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20D0D5C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20D0D5CFC()
{
  result = qword_27C821128;
  if (!qword_27C821128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F68);
    sub_20D0D5DB4();
    sub_20CF156D0(&qword_27C821140, &qword_27C821148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821128);
  }

  return result;
}

unint64_t sub_20D0D5DB4()
{
  result = qword_27C821130;
  if (!qword_27C821130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820F48);
    sub_20D0D2FDC();
    sub_20D0D308C();
    swift_getOpaqueTypeConformance2();
    sub_20CF156D0(&qword_27C821138, &qword_27C820F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821130);
  }

  return result;
}

unint64_t sub_20D0D5EF0()
{
  result = qword_27C821188;
  if (!qword_27C821188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821178);
    sub_20D0D5F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821188);
  }

  return result;
}

unint64_t sub_20D0D5F7C()
{
  result = qword_27C821190;
  if (!qword_27C821190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D688);
    sub_20D0D6034();
    sub_20CF156D0(&qword_27C81E110, &unk_27C8203A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821190);
  }

  return result;
}

unint64_t sub_20D0D6034()
{
  result = qword_27C821198;
  if (!qword_27C821198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D690);
    sub_20CF156D0(&qword_27C8211A0, &qword_27C81D698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821198);
  }

  return result;
}

uint64_t sub_20D0D6234(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D0D628C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id UtilityOnboardingErrorViewController.init(context:error:)(void *a1, void *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate] = 0;
  v6 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_error;
  v2[OBJC_IVAR___HUUtilityOnboardingErrorViewController_error] = 17;
  type metadata accessor for HomeEnergyManagerHelper();
  sub_20CF1FAAC(a2, &v25);
  v7 = v25;
  v2[v6] = v25;
  *&v2[OBJC_IVAR___HUUtilityOnboardingErrorViewController_onboardingContext] = a1;
  v8 = a1;
  v9 = sub_20D5677F8();
  v10 = HULocalizedString(v9);

  sub_20D567838();
  v11 = sub_20D5677F8();

  v26 = v7;
  swift_getKeyPath();
  v25 = v8;
  sub_20D0D65E0();
  sub_20D563908();

  v12 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v13 = *&v8[v12];
  if (v13)
  {
    v14 = v13;
    v15 = sub_20D564C08();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
    }

    else
    {
      v18 = sub_20D564BE8();
      v17 = v20;
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
    v17 = 0xE000000000000000;
  }

  sub_20CF2078C(v19, v17);

  v21 = sub_20D5677F8();

  v24.receiver = v3;
  v24.super_class = type metadata accessor for UtilityOnboardingErrorViewController();
  v22 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v11, v21, 0, 2);

  return v22;
}

unint64_t sub_20D0D65E0()
{
  result = qword_27C81D080;
  if (!qword_27C81D080)
  {
    type metadata accessor for UtilityOnboardingContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D080);
  }

  return result;
}

uint64_t sub_20D0D66A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_20D563BA8();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D565988();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UtilityOnboardingErrorViewController();
  v53.receiver = v0;
  v53.super_class = v10;
  objc_msgSendSuper2(&v53, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v11 = [v0 headerView];
  v12 = [v11 subviews];

  if (!v12)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v12 = sub_20D567A58();
  }

  v13 = objc_opt_self();
  v14 = sub_20D567738();

  [v13 setAccessibilityIDForViews:v12 withIDDictionary:v14];

  v44 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_onboardingContext;
  v15 = *&v0[OBJC_IVAR___HUUtilityOnboardingErrorViewController_onboardingContext];
  v16 = [v1 headerView];
  sub_20CEE70AC(v16);

  v17 = [v1 navigationItem];
  [v17 setHidesBackButton_];

  v18 = [objc_opt_self() boldButton];
  [v18 addTarget:v1 action:sel_finishOnboarding_ forControlEvents:64];
  v19 = sub_20D5677F8();
  v20 = HULocalizedString(v19);

  if (!v20)
  {
    sub_20D567838();
    v20 = sub_20D5677F8();
  }

  [v18 setTitle:v20 forState:0];

  v21 = v18;
  v22 = sub_20D5677F8();
  [v21 setAccessibilityIdentifier_];

  v23 = [v1 buttonTray];
  v43 = v21;
  [v23 addButton_];

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v24 = qword_27C838280;
  sub_20D565998();
  v25 = v1;
  v26 = sub_20D565968();
  v27 = sub_20D567EC8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v42 = v4;
    v29 = v28;
    v30 = swift_slowAlloc();
    v50 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_20CEE913C(0x4C64694477656976, 0xED0000292864616FLL, &v50);
    *(v29 + 12) = 2080;
    v31 = v25[OBJC_IVAR___HUUtilityOnboardingErrorViewController_error];
    v32 = v31 == 17;
    if (v31 == 17)
    {
      v33 = 0;
    }

    else
    {
      v33 = v25[OBJC_IVAR___HUUtilityOnboardingErrorViewController_error];
    }

    v51 = v33;
    v52 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8211D8);
    v34 = sub_20D567858();
    v36 = sub_20CEE913C(v34, v35, &v50);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_20CEB6000, v26, v27, "%s Error: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v30, -1, -1);
    v37 = v29;
    v4 = v42;
    MEMORY[0x20F31FC70](v37, -1, -1);
  }

  (*(v45 + 8))(v9, v46);
  (*(v47 + 104))(v49, *MEMORY[0x277D16FB8], v48);
  v38 = *&v1[v44];
  swift_getKeyPath();
  v51 = v38;
  sub_20D0D65E0();
  v39 = v38;
  sub_20D563908();

  swift_beginAccess();
  sub_20D5663C8();

  sub_20D563AE8();
  sub_20D563B78();
  v40 = sub_20D563B98();
  (*(*(v40 - 8) + 56))(v4, 0, 1, v40);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20D0D6EE0()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v6 = qword_281120C18;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5D9A60, v18);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s Finishing onboarding", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8211E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC410;
  *(inited + 32) = sub_20D567838();
  *(inited + 40) = v12;
  *(inited + 48) = 14;
  v13 = sub_20CEF5A94(inited);
  swift_setDeallocating();
  sub_20D0D7630(inited + 32);
  v14 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!v15)
  {
  }

  swift_unknownObjectRetain();
  sub_20CF28408(v13);

  v16 = sub_20D567738();

  [v15 viewController:v1 didFinishWithConfigurationResults:v16];

  return swift_unknownObjectRelease();
}

id UtilityOnboardingErrorViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingErrorViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingErrorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingErrorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D0D7630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8211E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ActionSetItemModule.init(home:itemUpdater:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle] = 0;
  v5 = &v2[OBJC_IVAR___HUActionSetItemModule_filter];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___HUActionSetItemModule_sortBlock];
  *v6 = sub_20D0D7EEC;
  v6[1] = 0;
  *&v2[OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider] = 0;
  *&v2[OBJC_IVAR___HUActionSetItemModule_home] = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ActionSetItemModule();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, sel_initWithItemUpdater_, a2);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_20D0D775C()
{
  v1 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D0D77A0(uint64_t a1)
{
  v3 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20D0D7850()
{
  v1 = (v0 + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  v2 = *v1;
  sub_20CEC81F4(*v1);
  return v2;
}

uint64_t sub_20D0D78AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_20CEC8164(v6);
}

uint64_t sub_20D0D796C()
{
  v1 = (v0 + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_20D0D79C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_20D0D7A84()
{
  v1 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_20D0D7D84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20CF879F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20CEC81F4(v4);
}

uint64_t sub_20D0D7E24(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20CF879B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20CEC81F4(v3);
  return sub_20CEC8164(v8);
}

BOOL sub_20D0D7EEC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultItemComparator];
  v5 = v4[2](v4, a1, a2);
  _Block_release(v4);
  return v5 != 1;
}

uint64_t sub_20D0D8054(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(v6, v7);

  return a2 & 1;
}

uint64_t sub_20D0D8164@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_20D0D9CB0;
  a2[1] = v6;
}

uint64_t sub_20D0D81F0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  swift_beginAccess();
  *v6 = sub_20D0D9C6C;
  v6[1] = v5;
}

void sub_20D0D8338(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ActionSetItemModule.__allocating_init(home:itemUpdater:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle] = 0;
  v6 = &v5[OBJC_IVAR___HUActionSetItemModule_filter];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR___HUActionSetItemModule_sortBlock];
  *v7 = sub_20D0D7EEC;
  v7[1] = 0;
  *&v5[OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider] = 0;
  *&v5[OBJC_IVAR___HUActionSetItemModule_home] = a1;
  v11.receiver = v5;
  v11.super_class = v2;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_initWithItemUpdater_, a2);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_20D0D8548()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = *(v0 + OBJC_IVAR___HUActionSetItemModule_home);
  v2 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D143A8]) initWithHome:v1 actionSetItemStyle:*(v0 + v2)];
  v4 = (v0 + OBJC_IVAR___HUActionSetItemModule_filter);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v15[4] = sub_20D0D8C44;
    v15[5] = v7;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20CF7F620;
    v15[3] = &block_descriptor_45;
    v8 = _Block_copy(v15);
    sub_20CEC81F4(v5);

    [v3 setFilter_];
    _Block_release(v8);
    sub_20CEC8164(v5);
  }

  v9 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(v0 + v9) = v3;
  v11 = v3;

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  sub_20CEEA3F4(&v16, v13);

  return v17;
}

uint64_t sub_20D0D8744(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();
    v5 = a2(v4);
    swift_unknownObjectRelease();
    return v5 & 1;
  }

  return result;
}

uint64_t sub_20D0D8840()
{
  v1 = v0;
  v18 = MEMORY[0x277D84F90];
  v2 = objc_allocWithZone(MEMORY[0x277D14850]);
  v3 = sub_20D5677F8();
  v4 = [v2 initWithIdentifier_];

  v5 = [v1 allItems];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v6 = sub_20D567D08();

  v7 = &v1[OBJC_IVAR___HUActionSetItemModule_sortBlock];
  swift_beginAccess();
  v8 = *v7;

  v17 = sub_20CF81C08(v6);
  sub_20D0D9978(&v17, v8);

  v9 = sub_20D567A58();

  [v4 setItems_];

  v10 = v4;
  MEMORY[0x20F31CEE0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v11 = objc_opt_self();
  sub_20CECF940(0, &unk_28111FFD0);
  v12 = sub_20D567A58();

  v13 = sub_20D567CD8();
  v14 = [v11 filterSections:v12 toDisplayedItems:v13];

  v15 = sub_20D567A78();
  return v15;
}

id ActionSetItemModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSetItemModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D0D8C64(void **__dst, id *__src, id *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v55 = &v16[v11];
    if (v9 < 8 || __src >= v7)
    {
LABEL_20:
      v27 = v8;
      goto LABEL_53;
    }

    v17 = __src;
    while (1)
    {
      v18 = v17;
      v19 = v6;
      v20 = v16;
      v21 = *v16;
      v22 = *v17;
      v23 = v21;
      v24 = a5(v22, v23);
      if (v19)
      {

        v41 = v20;
        v42 = v55 - v20 + 7;
        if (v55 - v20 >= 0)
        {
          v42 = v55 - v20;
        }

        v43 = v42 >> 3;
        if (v8 < v20 || v8 >= (v20 + (v42 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v20, 8 * v43);
        }

        else if (v8 != v20)
        {
          v44 = 8 * v43;
          v45 = v8;
          goto LABEL_59;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v18;
      v17 = v18 + 1;
      v16 = v20;
      if (v8 != v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v8;
      v6 = 0;
      if (v16 >= v55 || v17 >= v7)
      {
        goto LABEL_20;
      }
    }

    v26 = v20;
    v16 = v20 + 1;
    v17 = v18;
    if (v8 == v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v26;
    goto LABEL_18;
  }

  v27 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v28;
  }

  v52 = a4;
  v55 = (a4 + 8 * v14);
  if (v12 < 8 || v27 <= v8)
  {
    v16 = a4;
    goto LABEL_53;
  }

  v29 = -a4;
  v50 = -a4;
LABEL_27:
  v53 = v6;
  v51 = v27;
  v30 = v27 - 1;
  v31 = v55;
  v32 = v55 + v29;
  --v7;
  while (1)
  {
    v33 = *--v31;
    v34 = v30;
    v35 = *v30;
    v36 = v33;
    v37 = v35;
    v38 = a5(v36, v37);

    if (v53)
    {
      break;
    }

    v39 = v7 + 1;
    if (v38)
    {
      v40 = v34;
      if (v39 != v51)
      {
        *v7 = *v34;
      }

      v16 = v52;
      v6 = 0;
      if (v55 <= v52 || (v27 = v40, v29 = v50, v40 <= v8))
      {
        v27 = v40;
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    if (v39 != v55)
    {
      *v7 = *v31;
    }

    v32 -= 8;
    --v7;
    v55 = v31;
    v30 = v34;
    if (v31 <= v52)
    {
      v55 = v31;
      v27 = v51;
      v16 = v52;
LABEL_53:
      v48 = v55 - v16 + 7;
      if (v55 - v16 >= 0)
      {
        v48 = v55 - v16;
      }

      if (v27 >= v16 && v27 < (v16 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v16)
      {
        return 1;
      }

      v44 = 8 * (v48 >> 3);
      v45 = v27;
      v41 = v16;
LABEL_59:
      memmove(v45, v41, v44);
      return 1;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = v51;
  v41 = v52;
  if (v51 < v52 || v51 >= (v52 + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v47);
    return 1;
  }

  if (v51 != v52)
  {
    v44 = 8 * v47;
    goto LABEL_59;
  }

  return 1;
}

void sub_20D0D9030()
{
  *(v0 + OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle) = 0;
  v1 = (v0 + OBJC_IVAR___HUActionSetItemModule_filter);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___HUActionSetItemModule_sortBlock);
  *v2 = sub_20D0D7EEC;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider) = 0;
  sub_20D568A58();
  __break(1u);
}

void sub_20D0D90D4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_91;
    }

    goto LABEL_129;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v7)
    {
      goto LABEL_20;
    }

    v101 = v7;
    v13 = *v6;
    v14 = *(v13 + 8 * v9);
    v9 = *(v13 + 8 * v12);
    v15 = v14;
    v16 = a5(v9, v15);
    if (v5)
    {

      return;
    }

    v17 = v16;

    v18 = v11 + 2;
    v97 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (1)
    {
      v21 = v101;
      if (v101 == v18)
      {
        break;
      }

      v22 = *(v20 - 1);
      v9 = *v20;
      v23 = v22;
      LODWORD(v22) = a5(v9, v23);

      ++v18;
      ++v20;
      if ((v17 ^ v22))
      {
        v21 = v18 - 1;
        break;
      }
    }

    v6 = a3;
    v8 = a4;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v97;
    if (v21 < v97)
    {
      goto LABEL_123;
    }

    if (v97 < v21)
    {
      v25 = 8 * v21 - 8;
      v26 = v21;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_127;
          }

          v28 = *(v27 + v19);
          *(v27 + v19) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v19 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v12 = v21;
      v11 = v97;
      goto LABEL_20;
    }

    v12 = v21;
    v11 = v97;
LABEL_20:
    v29 = v6[1];
    if (v12 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_119;
    }

    if (v12 - v11 >= v8)
    {
      goto LABEL_132;
    }

    v30 = v11 + v8;
    if (__OFADD__(v11, v8))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v6[1];
    }

    if (v30 < v11)
    {
      goto LABEL_122;
    }

    if (v12 == v30)
    {
LABEL_132:
      if (v12 < v11)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v79 = *v6;
      v80 = v79 + 8 * v12 - 8;
      v98 = v11;
      v81 = v11 - v12;
      v94 = v30;
      do
      {
        v102 = v12;
        v82 = *(v79 + 8 * v12);
        v83 = v81;
        v95 = v80;
        do
        {
          v84 = *v80;
          v9 = v82;
          v85 = v84;
          v86 = a5(v9, v85);
          if (v5)
          {

            return;
          }

          v87 = v86;

          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_125;
          }

          v88 = *v80;
          v82 = *(v80 + 8);
          *v80 = v82;
          *(v80 + 8) = v88;
          v80 -= 8;
        }

        while (!__CFADD__(v83++, 1));
        v12 = v102 + 1;
        v80 = v95 + 8;
        --v81;
      }

      while (v102 + 1 != v94);
      v12 = v94;
      v6 = a3;
      v11 = v98;
      if (v94 < v98)
      {
        goto LABEL_118;
      }
    }

    v31 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_20CEE81E4(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_20CEE81E4((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v31;
    *(v35 + 5) = v12;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v9 = v12;
    if (v33)
    {
      break;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    if (v34 >= 4)
    {
      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_111;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_117;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v38 = *(v10 + 4);
      v39 = *(v10 + 5);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_48:
      if (v41)
      {
        goto LABEL_107;
      }

      v54 = &v10[16 * v34];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_110;
      }

      v60 = &v10[16 * v37 + 32];
      v62 = *v60;
      v61 = *(v60 + 1);
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_114;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v64 = &v10[16 * v34];
    v66 = *v64;
    v65 = *(v64 + 1);
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_62:
    if (v59)
    {
      goto LABEL_109;
    }

    v67 = &v10[16 * v37];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_112;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_69:
    v75 = v37 - 1;
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*v6)
    {
      goto LABEL_124;
    }

    v76 = *&v10[16 * v75 + 32];
    v77 = *&v10[16 * v37 + 40];
    sub_20D0D8C64((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36, a5);
    if (v5)
    {
      goto LABEL_99;
    }

    if (v77 < v76)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_20D057C88(v10);
    }

    if (v75 >= *(v10 + 2))
    {
      goto LABEL_104;
    }

    v78 = &v10[16 * v75];
    *(v78 + 4) = v76;
    *(v78 + 5) = v77;
    sub_20D057BFC(v37);
    v34 = *(v10 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  v10 = sub_20D057C88(v10);
LABEL_91:
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
LABEL_99:
  }

  else
  {
    while (*v6)
    {
      v91 = *&v10[16 * v90];
      v92 = *&v10[16 * v90 + 24];
      sub_20D0D8C64((*v6 + 8 * v91), (*v6 + 8 * *&v10[16 * v90 + 16]), (*v6 + 8 * v92), v9, a5);
      if (v5)
      {
        goto LABEL_99;
      }

      if (v92 < v91)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20D057C88(v10);
      }

      if (v90 - 2 >= *(v10 + 2))
      {
        goto LABEL_116;
      }

      v93 = &v10[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_20D057BFC(v90 - 1);
      v90 = *(v10 + 2);
      if (v90 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_20D0D974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_20D0D9844(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = a1[1];
  v5 = sub_20D568BA8();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CECF940(0, &qword_281120AC0);
        v8 = sub_20D567AE8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_20D0D90D4(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_20D0D974C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_20D0D9978(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_20D059BE4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_20D0D9844(v8, a2);
  return sub_20D5688D8();
}

uint64_t sub_20D0D9C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_20D0D9CB0@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20D0D9D58@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20D565798();
  swift_allocObject();
  swift_unknownObjectRetain();
  result = sub_20D565758();
  a1[3] = v2;
  a1[4] = &off_2823D84A0;
  *a1 = result;
  return result;
}

uint64_t sub_20D0D9DD0()
{
  v1 = v0;
  sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v2 = sub_20D568518();
  sub_20D565868();

  if (qword_28111FCE8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_28111FCF0);
  if (qword_28111FCF8 && qword_28111FCF8 == v1)
  {

    qword_28111FCF8 = 0;
  }

  os_unfair_lock_unlock(&dword_28111FCF0);

  return sub_20D0DA21C();
}

uint64_t sub_20D0D9ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = sub_20D0DC348(&unk_28111FCD8, a2, _s26NetworkDiagnosticsObserverCMa);
  v3(v13, v2, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = v14;
  v7 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  v8 = *(v7 + 32);
  swift_retain_n();
  v8(sub_20D0DC390, v5, v6, v7);
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  (*(v10 + 56))(sub_20D0DC390, v5, v9, v10);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_20D5657E8();
  sub_20D565748();

  sub_20CECF7A0(v13, v12);
  swift_beginAccess();
  sub_20D0DC2D8(v12, v2 + 112);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_20D0DA078()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_20D567C58();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_20CF18960(0, 0, v2, &unk_20D5C8E30, v6);
  }

  return result;
}

uint64_t sub_20D0DA1B8()
{
  v1 = sub_20D0DA21C();
  sub_20D0D9ECC(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20D0DA21C()
{
  swift_beginAccess();
  sub_20D0DC200(v0 + 112, &v3);
  if (*(&v4 + 1))
  {
    sub_20CECF7A0(&v3, v2);
    sub_20D0DC270(&v3);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_20D5657E8();
    sub_20D565768();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_20D0DC270(&v3);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_20D0DC2D8(&v3, v0 + 112);
  return swift_endAccess();
}

uint64_t sub_20D0DA2F8(uint64_t a1)
{
  v2 = sub_20D5657A8();
  v111 = *(v2 - 8);
  v112 = v2;
  MEMORY[0x28223BE20](v2);
  v110 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v109 = &v101 - v5;
  v6 = sub_20D565848();
  v113 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v101 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v101 - v12;
  MEMORY[0x28223BE20](v14);
  v114 = &v101 - v15;
  MEMORY[0x28223BE20](v16);
  v103 = &v101 - v17;
  v18 = sub_20D565808();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v108 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v118 = &v101 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v101 - v24;
  v26 = sub_20D567EC8();
  v116 = *(v19 + 16);
  v117 = a1;
  v116(v25, a1, v18);
  v115 = sub_20CECF940(0, &qword_28111FAB8);
  v27 = sub_20D568518();
  v28 = os_log_type_enabled(v27, v26);
  v102 = v8;
  v105 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v101 = v6;
    v30 = v29;
    v31 = swift_slowAlloc();
    v119[0] = v31;
    *v30 = 136315138;
    v32 = sub_20D5657F8();
    v34 = v33;
    v107 = *(v19 + 8);
    v107(v25, v18);
    v35 = sub_20CEE913C(v32, v34, v119);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_20CEB6000, v27, v26, "Network diagnostics event occurred: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x20F31FC70](v31, -1, -1);
    v36 = v30;
    v6 = v101;
    MEMORY[0x20F31FC70](v36, -1, -1);
  }

  else
  {

    v107 = *(v19 + 8);
    v107(v25, v18);
  }

  v37 = v117;
  v38 = v118;
  v39 = v116;
  v116(v118, v117, v18);
  if ((*(v19 + 88))(v38, v18) == *MEMORY[0x277D6B258])
  {
    (*(v19 + 96))(v38, v18);
    v41 = v113;
    v40 = v114;
    v118 = *(v113 + 32);
    (v118)(v114, v38, v6);
    v42 = v109;
    sub_20D565828();
    v44 = v110;
    v43 = v111;
    v45 = v112;
    (*(v111 + 104))(v110, *MEMORY[0x277D6B240], v112);
    sub_20D0DC348(&qword_281120970, 255, MEMORY[0x277D6B248]);
    v46 = sub_20D5677E8();
    v47 = *(v43 + 8);
    v47(v44, v45);
    v47(v42, v45);
    if (v46)
    {
      v48 = sub_20D567EC8();
      v49 = v106;
      (*(v41 + 16))(v106, v40, v6);
      v50 = sub_20D568518();
      if (os_log_type_enabled(v50, v48))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v119[0] = v52;
        *v51 = 136315138;
        v53 = sub_20D5657D8();
        v54 = v6;
        v56 = v55;
        v57 = v49;
        v58 = *(v41 + 8);
        v58(v57, v54);
        v59 = sub_20CEE913C(v53, v56, v119);

        *(v51 + 4) = v59;
        v60 = "Receive invalid event: %s";
LABEL_13:
        _os_log_impl(&dword_20CEB6000, v50, v48, v60, v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x20F31FC70](v52, -1, -1);
        MEMORY[0x20F31FC70](v51, -1, -1);

        return (v58)(v40, v54);
      }

LABEL_16:

      v79 = *(v41 + 8);
      v79(v49, v6);
      return (v79)(v40, v6);
    }

    if (sub_20D565818())
    {
      v48 = sub_20D567EC8();
      v49 = v105;
      (*(v41 + 16))(v105, v40, v6);
      v50 = sub_20D568518();
      if (os_log_type_enabled(v50, v48))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v119[0] = v52;
        *v51 = 136315138;
        v72 = sub_20D5657D8();
        v54 = v6;
        v74 = v73;
        v75 = v49;
        v58 = *(v41 + 8);
        v58(v75, v54);
        v76 = sub_20CEE913C(v72, v74, v119);

        *(v51 + 4) = v76;
        v60 = "Ignore synthetic event: %s";
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v80 = IDSCopyLocalDeviceUniqueID();
    if (v80)
    {
      v81 = v80;
      v82 = sub_20D567838();
      v84 = v83;

      v85 = sub_20D565838();
      if (v84)
      {
        if (v82 == v85 && v84 == v86)
        {

LABEL_26:
          v88 = sub_20D567EC8();
          v89 = v102;
          (*(v41 + 16))(v102, v40, v6);
          v90 = sub_20D568518();
          if (os_log_type_enabled(v90, v88))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v119[0] = v92;
            *v91 = 136315138;
            v93 = sub_20D565838();
            v94 = v89;
            v95 = v6;
            v97 = v96;
            v98 = *(v41 + 8);
            v98(v94, v95);
            v99 = sub_20CEE913C(v93, v97, v119);
            v6 = v95;

            *(v91 + 4) = v99;
            _os_log_impl(&dword_20CEB6000, v90, v88, "Internet outage found for current phone: %s", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v92);
            MEMORY[0x20F31FC70](v92, -1, -1);
            MEMORY[0x20F31FC70](v91, -1, -1);
          }

          else
          {

            v98 = *(v41 + 8);
            v98(v89, v6);
          }

          v100 = v103;
          (v118)(v103, v114, v6);
          sub_20D0DB858(v100, v104);
          return (v98)(v100, v6);
        }

        v87 = sub_20D568BF8();

        if (v87)
        {
          goto LABEL_26;
        }

        return (*(v41 + 8))(v40, v6);
      }
    }

    else
    {
      sub_20D565838();
    }

    return (*(v41 + 8))(v40, v6);
  }

  v61 = sub_20D567EC8();
  v62 = v108;
  v39(v108, v37, v18);
  v63 = sub_20D568518();
  if (os_log_type_enabled(v63, v61))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v119[0] = v65;
    *v64 = 136315138;
    v66 = sub_20D5657F8();
    v68 = v67;
    v69 = v62;
    v70 = v107;
    v107(v69, v18);
    v71 = sub_20CEE913C(v66, v68, v119);
    v38 = v118;

    *(v64 + 4) = v71;
    _os_log_impl(&dword_20CEB6000, v63, v61, "Unsupported payload type: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x20F31FC70](v65, -1, -1);
    MEMORY[0x20F31FC70](v64, -1, -1);
  }

  else
  {

    v78 = v62;
    v70 = v107;
    v107(v78, v18);
  }

  return v70(v38, v18);
}

uint64_t sub_20D0DAE50()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 16) + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(1, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20D0DAF10()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(*(v0 + 16) + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20D0DAFB0()
{
  sub_20D0DC270(v0 + 112);

  sub_20CEC8088(v0 + 176);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20D0DB03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_20D0DB05C, 0, 0);
}

uint64_t sub_20D0DB05C()
{
  v1 = *(v0 + 24);
  _s26NetworkDiagnosticsObserverCMa();
  v2 = swift_allocObject();
  v3 = v1;
  v4 = sub_20D0DBD98(v3, sub_20D0D9D58, 0, v2);
  *(v0 + 32) = v4;

  if (v4)
  {

    return MEMORY[0x2822009F8](sub_20D0DB150, v4, 0);
  }

  else
  {
    **(v0 + 16) = *(v0 + 32) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_20D0DB150()
{
  sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v1 = sub_20D568518();
  sub_20D565868();

  if (qword_28111FCE8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  os_unfair_lock_lock(&dword_28111FCF0);

  qword_28111FCF8 = v2;

  os_unfair_lock_unlock(&dword_28111FCF0);
  sub_20D0D9ECC(v3, v4);

  return MEMORY[0x2822009F8](sub_20D0DB278, 0, 0);
}

uint64_t sub_20D0DB420()
{
  if (qword_28111FCE8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_28111FCF0);
  v1 = qword_28111FCF8;
  *(v0 + 16) = qword_28111FCF8;

  os_unfair_lock_unlock(&dword_28111FCF0);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20D0DB518, v1, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_20D0DB518()
{
  sub_20D0D9DD0();

  return MEMORY[0x2822009F8](sub_20D0DB588, 0, 0);
}

uint64_t sub_20D0DB588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0DB6F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF5FFC;

  return sub_20D0DB404();
}

uint64_t sub_20D0DB7A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D0DB03C(a1, v4, v5, v6);
}

uint64_t sub_20D0DB858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_20D5657A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20D565848();
  v40[3] = v14;
  v40[4] = MEMORY[0x277D6B2A0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a1, v14);
  sub_20D5657C8();
  (*(v8 + 104))(v10, *MEMORY[0x277D6B238], v7);
  sub_20D0DC348(&qword_281120970, 255, MEMORY[0x277D6B248]);
  LOBYTE(a1) = sub_20D5677E8();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
  v17 = sub_20D567EC8();
  if (a1)
  {
    sub_20CECF7A0(v40, v38);
    sub_20CECF940(0, &qword_28111FAB8);
    v18 = sub_20D568518();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v21 = sub_20D5657B8();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v24 = sub_20CEE913C(v21, v23, &v37);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_20CEB6000, v18, v17, "Internet outage on phone ended: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x20F31FC70](v20, -1, -1);
      MEMORY[0x20F31FC70](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    v32 = &unk_20D5C8E18;
  }

  else
  {
    sub_20CECF7A0(v40, v38);
    sub_20CECF940(0, &qword_28111FAB8);
    v25 = sub_20D568518();
    if (os_log_type_enabled(v25, v17))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v28 = sub_20D5657B8();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v31 = sub_20CEE913C(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_20CEB6000, v25, v17, "Internet outage on phone started or in progress: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F31FC70](v27, -1, -1);
      MEMORY[0x20F31FC70](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    v32 = &unk_20D5C8E08;
  }

  v33 = sub_20D567C58();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = a2;

  sub_20CF18960(0, 0, v6, v32, v34);

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_20D0DBD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v13 = sub_20D567FB8();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D567F88();
  MEMORY[0x28223BE20](v8);
  v9 = sub_20D567678();
  MEMORY[0x28223BE20](v9 - 8);
  swift_defaultActor_initialize();
  sub_20CECF940(0, &qword_28111FF30);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  sub_20D567658();
  v17 = MEMORY[0x277D84F90];
  sub_20D0DC348(&qword_28111FF38, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821890);
  sub_20D0DC034();
  sub_20D5686B8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v13);
  *(a4 + 152) = sub_20D567FE8();
  *(a4 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 184) = &off_2823D84E8;
  swift_unknownObjectWeakAssign();
  v10 = v16;
  *(a4 + 160) = v15;
  *(a4 + 168) = v10;
  return a4;
}

unint64_t sub_20D0DC034()
{
  result = qword_281120030;
  if (!qword_281120030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C821890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120030);
  }

  return result;
}

uint64_t sub_20D0DC098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D0DAE30(a1, v4, v5, v6);
}

uint64_t sub_20D0DC14C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D0DAEF0(a1, v4, v5, v6);
}

uint64_t sub_20D0DC200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0DC270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D0DC2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821218);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0DC348(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D0DC3D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20D0DA198(a1, v4, v5, v6);
}

uint64_t sub_20D0DC4B0()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C838268 = result;
  return result;
}

uint64_t sub_20D0DC540()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C838270 = result;
  return result;
}

uint64_t sub_20D0DC5D0()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C838280 = result;
  return result;
}

uint64_t sub_20D0DC690()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C838290 = result;
  return result;
}

uint64_t sub_20D0DC750()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C8382A8 = result;
  return result;
}

uint64_t sub_20D0DC800()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C8382B8 = result;
  return result;
}

uint64_t sub_20D0DC868()
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  qword_27C8382C0 = result;
  return result;
}

unint64_t sub_20D0DC8D0()
{
  result = qword_28111FAB8;
  if (!qword_28111FAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FAB8);
  }

  return result;
}

uint64_t sub_20D0DC970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_20D0DC8D0();
  result = sub_20D568528();
  *a4 = result;
  return result;
}

uint64_t sub_20D0DCA40(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20D0DCAAC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20CEC8420;
}

uint64_t sub_20D0DCB4C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v4;
  v10 = *(v3 + 32);
  v5 = v10;
  v11 = *(v3 + 48);
  v6 = v11;
  *a1 = v9[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return sub_20CFE769C(v9, &v8);
}

void sub_20D0DCBC4(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig);
  swift_beginAccess();
  v4 = v3[1];
  v23[0] = *v3;
  v23[1] = v4;
  v23[2] = v3[2];
  v24 = *(v3 + 24);
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = a1[2];
  *(v3 + 24) = *(a1 + 24);
  sub_20CFE76F8(v23);
  v6 = *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v6)
  {
    v7 = v3[1];
    v17 = *v3;
    v18 = v7;
    v19 = v3[2];
    v20 = *(v3 + 24);
    v8 = &v6[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = *(v8 + 2);
    v22 = *(v8 + 24);
    v21[1] = v10;
    v21[2] = v11;
    v21[0] = v9;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    *(v8 + 24) = v20;
    *(v8 + 1) = v13;
    *(v8 + 2) = v14;
    *v8 = v12;
    v15 = v6;
    sub_20CFE769C(&v17, &v16);
    sub_20CFE76F8(v21);
  }
}

void (*sub_20D0DCCE8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  *(v3 + 192) = v1;
  *(v3 + 200) = v4;
  swift_beginAccess();
  return sub_20D0DCD70;
}

void sub_20D0DCD70(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
    if (v5)
    {
      v6 = v4 + *(v3 + 25);
      v8 = *(v6 + 16);
      v7 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(v3 + 56) = *v6;
      *(v3 + 52) = v9;
      *(v3 + 88) = v7;
      *(v3 + 72) = v8;
      v10 = &v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
      swift_beginAccess();
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      *(v3 + 24) = *(v10 + 24);
      *(v3 + 1) = v12;
      *(v3 + 2) = v13;
      *v3 = v11;
      v14 = *(v3 + 56);
      v15 = *(v3 + 72);
      v16 = *(v3 + 88);
      *(v10 + 24) = *(v3 + 52);
      *(v10 + 1) = v15;
      *(v10 + 2) = v16;
      *v10 = v14;
      v17 = v5;
      sub_20CFE769C((v3 + 56), (v3 + 112));
      sub_20CFE76F8(v3);
    }
  }

  free(v3);
}

uint64_t sub_20D0DCE6C()
{
  v1 = v0 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  return *(v1 + 16);
}

void sub_20D0DCEB4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig);
  swift_beginAccess();
  *(v3 + 16) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v4)
  {
    v5 = v3[1];
    v15 = *v3;
    v16 = v5;
    v17 = v3[2];
    v18 = *(v3 + 24);
    v6 = &v4[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v20 = *(v6 + 24);
    v19[1] = v8;
    v19[2] = v9;
    v19[0] = v7;
    v10 = v15;
    v11 = v16;
    v12 = v17;
    *(v6 + 24) = v18;
    *(v6 + 1) = v11;
    *(v6 + 2) = v12;
    *v6 = v10;
    v13 = v4;
    sub_20CFE769C(&v15, &v14);
    sub_20CFE76F8(v19);
  }
}

void (*sub_20D0DCFA4(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 50) = *(v6 + 16);
  return sub_20D0DD03C;
}

void sub_20D0DD03C(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[50];
  if (a2)
  {
    sub_20D0DCEB4(v3);
  }

  else
  {
    v4 = *(v2 + 27);
    *(v4 + *(v2 + 28) + 16) = v3;
    v5 = *(v4 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
    if (v5)
    {
      v6 = *(v2 + 27) + *(v2 + 28);
      v8 = *(v6 + 16);
      v7 = *(v6 + 32);
      v9 = *(v6 + 48);
      *(v2 + 56) = *v6;
      *(v2 + 52) = v9;
      *(v2 + 88) = v7;
      *(v2 + 72) = v8;
      v10 = &v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
      swift_beginAccess();
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      *(v2 + 24) = *(v10 + 24);
      *(v2 + 1) = v12;
      *(v2 + 2) = v13;
      *v2 = v11;
      v14 = *(v2 + 56);
      v15 = *(v2 + 72);
      v16 = *(v2 + 88);
      *(v10 + 24) = *(v2 + 52);
      *(v10 + 1) = v15;
      *(v10 + 2) = v16;
      *v10 = v14;
      v17 = v5;
      sub_20CFE769C((v2 + 56), (v2 + 112));
      sub_20CFE76F8(v2);
    }
  }

  free(v2);
}

void sub_20D0DD18C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig);
  swift_beginAccess();
  *v3 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v4)
  {
    v5 = v3[1];
    v15 = *v3;
    v16 = v5;
    v17 = v3[2];
    v18 = *(v3 + 24);
    v6 = &v4[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v20 = *(v6 + 24);
    v19[1] = v8;
    v19[2] = v9;
    v19[0] = v7;
    v10 = v15;
    v11 = v16;
    v12 = v17;
    *(v6 + 24) = v18;
    *(v6 + 1) = v11;
    *(v6 + 2) = v12;
    *v6 = v10;
    v13 = v4;
    sub_20CFE769C(&v15, &v14);
    sub_20CFE76F8(v19);
  }
}

void (*sub_20D0DD284(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  *(v3 + 224) = v1;
  *(v3 + 232) = v5;
  swift_beginAccess();
  *(v4 + 216) = *(v1 + v5);
  sub_20D5663C8();
  return sub_20D0DD320;
}

void sub_20D0DD320(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 27);
  if (a2)
  {
    v4 = sub_20D5663C8();
    sub_20D0DD18C(v4);
  }

  else
  {
    v5 = *(v2 + 28);
    *(v5 + *(v2 + 29)) = v3;

    v6 = *(v5 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
    if (v6)
    {
      v7 = *(v2 + 28) + *(v2 + 29);
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *(v7 + 48);
      *(v2 + 56) = *v7;
      *(v2 + 52) = v10;
      *(v2 + 88) = v8;
      *(v2 + 72) = v9;
      v11 = &v6[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      *(v2 + 24) = *(v11 + 24);
      *(v2 + 1) = v13;
      *(v2 + 2) = v14;
      *v2 = v12;
      v15 = *(v2 + 56);
      v16 = *(v2 + 72);
      v17 = *(v2 + 88);
      *(v11 + 24) = *(v2 + 52);
      *(v11 + 1) = v16;
      *(v11 + 2) = v17;
      *v11 = v15;
      v18 = v6;
      sub_20CFE769C((v2 + 56), (v2 + 112));
      sub_20CFE76F8(v2);
    }
  }

  free(v2);
}

void sub_20D0DD48C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig);
  swift_beginAccess();
  *(v3 + 1) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v4)
  {
    v5 = v3[1];
    v15 = *v3;
    v16 = v5;
    v17 = v3[2];
    v18 = *(v3 + 24);
    v6 = &v4[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v20 = *(v6 + 24);
    v19[1] = v8;
    v19[2] = v9;
    v19[0] = v7;
    v10 = v15;
    v11 = v16;
    v12 = v17;
    *(v6 + 24) = v18;
    *(v6 + 1) = v11;
    *(v6 + 2) = v12;
    *v6 = v10;
    v13 = v4;
    sub_20CFE769C(&v15, &v14);
    sub_20CFE76F8(v19);
  }
}

void (*sub_20D0DD584(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  *(v3 + 224) = v1;
  *(v3 + 232) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 216) = *(v6 + 8);
  sub_20D5663C8();
  return sub_20D0DD624;
}

void sub_20D0DD624(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 27);
  if (a2)
  {
    v4 = sub_20D5663C8();
    sub_20D0DD48C(v4);
  }

  else
  {
    v5 = *(v2 + 28);
    *(v5 + *(v2 + 29) + 8) = v3;

    v6 = *(v5 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
    if (v6)
    {
      v7 = *(v2 + 28) + *(v2 + 29);
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *(v7 + 48);
      *(v2 + 56) = *v7;
      *(v2 + 52) = v10;
      *(v2 + 88) = v8;
      *(v2 + 72) = v9;
      v11 = &v6[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      *(v2 + 24) = *(v11 + 24);
      *(v2 + 1) = v13;
      *(v2 + 2) = v14;
      *v2 = v12;
      v15 = *(v2 + 56);
      v16 = *(v2 + 72);
      v17 = *(v2 + 88);
      *(v11 + 24) = *(v2 + 52);
      *(v11 + 1) = v16;
      *(v11 + 2) = v17;
      *v11 = v15;
      v18 = v6;
      sub_20CFE769C((v2 + 56), (v2 + 112));
      sub_20CFE76F8(v2);
    }
  }

  free(v2);
}

uint64_t sub_20D0DD748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v4, a2, a3, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D060B20();
  sub_20D566628();
  sub_20D566638();
}

void sub_20D0DD82C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v1)
  {
    v2 = v0;
    sub_20CECF7A0(v1 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v8);
    sub_20CF02B6C(v8, v9);
    v3 = v0 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v6 = sub_20D565B38();
      v7 = sub_20CEF34B0(v6);

      (*(v4 + 8))(v2, v7, v9, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }
}

uint64_t sub_20D0DD954@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v11 = *(v3 + 48);
  v10[1] = v5;
  v10[2] = v6;
  v10[0] = v4;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = *(v3 + 48);
  return sub_20CFE769C(v10, &v9);
}

void sub_20D0DDBE0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
    v5 = sub_20D567A78();
  }

  v7 = a1;
  a4(v5);
}

uint64_t sub_20D0DDCA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_0(a1, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a3(v12, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

id sub_20D0DDDAC(uint64_t a1)
{
  v1 = [objc_opt_self() futureWithResult_];

  return v1;
}

double sub_20D0DDDFC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_20CECF7A0(a3, &v34);
  v5 = objc_allocWithZone(type metadata accessor for ActionGridItemModule());
  v6 = &v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = 1;
  v6[16] = 1;
  *(v6 + 24) = xmmword_20D5C3B50;
  *(v6 + 5) = 0;
  *(v6 + 24) = 1;
  *&v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(&v34, &v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer]);
  swift_getObjectType();
  v8 = a1;
  swift_unknownObjectRetain();
  v32 = sub_20CF86924(v8, a2, 0, 0, v5);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v34);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
    v11 = Strong;
    swift_beginAccess();
    v12 = *v10;
    v13 = *(v10 + 16);
    v14 = *(v10 + 32);
    v37 = *(v10 + 48);
    v36 = v14;
    v34 = v12;
    v35 = v13;
    sub_20CFE769C(&v34, v33);

    v31 = *(&v34 + 1);
    v15 = v34;
    v16 = v35;
    v38[0] = *(&v35 + 1);
    *(v38 + 3) = DWORD1(v35);
    v17 = *(&v35 + 1);
    v18 = *(&v36 + 1);
    v19 = v36;
    v7 = v37;
    v20 = HIBYTE(v37);
  }

  else
  {
    v20 = 0;
    v18 = 0;
    v31 = 0;
    v15 = 0;
    v33[56] = 1;
    v19 = 15;
    v17 = 1;
    v16 = 1;
  }

  v21 = &v32[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 2);
  v37 = *(v21 + 24);
  v36 = v24;
  v34 = v22;
  v35 = v23;
  *v21 = v15;
  *(v21 + 1) = v31;
  v21[16] = v16;
  *(v21 + 17) = v38[0];
  *(v21 + 5) = *(v38 + 3);
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  *(v21 + 5) = v18;
  v21[48] = v7;
  v21[49] = v20;
  sub_20CFE76F8(&v34);
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = *(v25 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
    *(v25 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule) = v32;
    v27 = v25;
    v28 = v32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v29 = swift_allocObject();
  *&result = 1;
  *(v29 + 16) = xmmword_20D5BA040;
  *(v29 + 32) = v32;
  return result;
}

id sub_20D0DE0D0(void *a1)
{
  type metadata accessor for ActionGridItemModule();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for ActionGridItemModuleController());
  v6 = a1;
  v7 = [v5 initWithModule_];
  v8 = &v7[OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate];
  swift_beginAccess();
  *(v8 + 1) = &protocol witness table for ActionGridViewController;
  swift_unknownObjectWeakAssign();
  v9 = *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController);
  *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController) = v7;
  v10 = v7;

  v11 = [v10 asGeneric];
  return v11;
}

__CFString *sub_20D0DE234(void *a1, double a2, double a3)
{
  v4 = v3;
  if (!*&v3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v9 containingItem];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_6:
    v13 = sub_20D563868();
    v15.receiver = v4;
    v15.super_class = type metadata accessor for ActionGridViewController();
    v12 = objc_msgSendSuper2(&v15, sel_tappableAreaForPoint_inItem_atIndexPath_, a1, v13, a2, a3);

    return v12;
  }

  v12 = @"HUTileCellTappableAreaGeneralToggleArea";
  return v12;
}

uint64_t sub_20D0DE48C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF1CFCC;

  return (sub_20D0DFB10)(a1);
}

uint64_t sub_20D0DE6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_20D567C18();
  v4[6] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0DE764, v6, v5);
}

uint64_t sub_20D0DE764()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20D02ABCC;
  v9 = v0[2];

  return sub_20D0DFB10(v9);
}

uint64_t sub_20D0DE848(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ActionGridViewController();
  objc_msgSendSuper2(&v8, sel_configureWithAccessoryControlViewController_, a1);
  v4 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_dataModelObserverCancelable;
  if (*&v2[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_dataModelObserverCancelable])
  {

    sub_20D566608();
  }

  type metadata accessor for ActionSetDeviceDataModel();
  sub_20D060B20();
  sub_20D566628();
  *(swift_allocObject() + 16) = v2;
  sub_20D566648();
  v5 = v2;
  v6 = sub_20D566698();

  *&v2[v4] = v6;
}

void sub_20D0DE96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v2)
  {
    sub_20CECF7A0(v2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v9);
    sub_20CF02B6C(v9, v10);
    v4 = a2 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v7 = sub_20D565B38();
      v8 = sub_20CEF34B0(v7);

      (*(v5 + 8))(a2, v8, v10, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

id sub_20D0DEC64(uint64_t a1, void *a2)
{
  v5 = *&v2[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [a2 item];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    return 0;
  }

  v9 = [v8 containingItem];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return 0;
  }

  v11 = [v6 module];
  v12 = &v11[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  LODWORD(v12) = v12[16];

  if (v12 != 1)
  {
    return 0;
  }

LABEL_7:
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ActionGridViewController();
  return objc_msgSendSuper2(&v13, sel_presentationCoordinator_shouldBeginPresentationWithContext_, a1, a2);
}

id ActionGridViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id ActionGridViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

void sub_20D0DF130()
{
  v1 = &v0[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig];
  swift_beginAccess();
  *(v1 + 4) = 4;
  v2 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule;
  v3 = *&v0[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule];
  if (v3)
  {
    v4 = *(v1 + 1);
    v46 = *v1;
    v47 = v4;
    v48 = *(v1 + 2);
    v49 = *(v1 + 24);
    v5 = &v3[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = *(v5 + 2);
    v53 = *(v5 + 24);
    v51 = v7;
    v52 = v8;
    v50 = v6;
    v9 = v46;
    v10 = v47;
    v11 = v48;
    *(v5 + 24) = v49;
    *(v5 + 1) = v10;
    *(v5 + 2) = v11;
    *v5 = v9;
    v12 = v3;
    sub_20CFE769C(&v46, v45);
    sub_20CFE76F8(&v50);
  }

  *(v1 + 5) = 2;
  v1[48] = 0;
  v13 = *&v0[v2];
  if (v13)
  {
    v14 = *(v1 + 1);
    v46 = *v1;
    v47 = v14;
    v48 = *(v1 + 2);
    v49 = *(v1 + 24);
    v15 = &v13[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 2);
    v53 = *(v15 + 24);
    v51 = v17;
    v52 = v18;
    v50 = v16;
    v19 = v46;
    v20 = v47;
    v21 = v48;
    *(v15 + 24) = v49;
    *(v15 + 1) = v20;
    *(v15 + 2) = v21;
    *v15 = v19;
    v22 = v13;
    sub_20CFE769C(&v46, v45);
    sub_20CFE76F8(&v50);
  }

  v1[49] = 1;
  v23 = *&v0[v2];
  if (v23)
  {
    v24 = *(v1 + 1);
    v46 = *v1;
    v47 = v24;
    v48 = *(v1 + 2);
    v49 = *(v1 + 24);
    v25 = &v23[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);
    v53 = *(v25 + 24);
    v51 = v27;
    v52 = v28;
    v50 = v26;
    v29 = v46;
    v30 = v47;
    v31 = v48;
    *(v25 + 24) = v49;
    *(v25 + 1) = v30;
    *(v25 + 2) = v31;
    *v25 = v29;
    v32 = v23;
    sub_20CFE769C(&v46, v45);
    sub_20CFE76F8(&v50);
  }

  v44.receiver = v0;
  v44.super_class = type metadata accessor for EmbeddedActionGridViewController();
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v33 = [v0 collectionView];
  if (!v33)
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = v33;
  [v33 _setShouldDeriveVisibleBoundsFromContainingScrollView_];

  v35 = [v0 collectionView];
  if (!v35)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v36 = v35;
  [v35 setScrollEnabled_];

  v37 = [v0 collectionView];
  if (!v37)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v39 clearColor];
  [v38 setBackgroundColor_];

  v41 = [v0 view];
  if (v41)
  {
    v42 = v41;
    v43 = [v39 clearColor];
    [v42 setBackgroundColor_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_20D0DF4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, id, uint64_t, uint64_t))
{
  v7 = objc_allocWithZone(v3);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_0(a1, v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3(v13, a2, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

id sub_20D0DF624(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20D0DF65C(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v9 + 32))(&v18 - v14, v13);
  (*(v9 + 16))(v11, v15, a4);
  v16 = sub_20D0DF7A8(v11, a2, a3, a4, a5);
  (*(v9 + 8))(v15, a4);
  return v16;
}

id sub_20D0DF7A8(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v29[3] = a4;
  v29[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *(v10 + 24) = xmmword_20D5C3B50;
  *(v10 + 5) = 0;
  *(v10 + 24) = 1;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_dataModelObserverCancelable] = 0;
  sub_20CECF7A0(v29, &v22);
  type metadata accessor for ActionSetDeviceDataModel();
  v11 = swift_allocObject();
  sub_20D563808();
  sub_20CF02B6C(&v22, v11 + 16);
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_accessoryControlDataModel] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v13 = type metadata accessor for ActionGridViewController();
  v28.receiver = a3;
  v28.super_class = v13;
  v14 = objc_msgSendSuper2(&v28, sel_initUsingCompositionalLayoutWithItemManager_, v12);
  [v12 setDelegate_];
  if (a2)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    v25 = sub_20D0E0688;
    v26 = v15;
    *&v22 = MEMORY[0x277D85DD0];
    *(&v22 + 1) = 1107296256;
    v23 = sub_20CF351D8;
    v24 = &block_descriptor_74;
    v16 = _Block_copy(&v22);
    v17 = a2;

    [v12 setHomeCreator_];
    _Block_release(v16);
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(v29, v27);
  v19 = swift_allocObject();
  sub_20CF02B6C(v27, v19 + 16);
  *(v19 + 56) = v18;
  v25 = sub_20CFE7CB4;
  v26 = v19;
  *&v22 = MEMORY[0x277D85DD0];
  *(&v22 + 1) = 1107296256;
  v23 = sub_20CF35658;
  v24 = &block_descriptor_46;
  v20 = _Block_copy(&v22);

  [v12 setItemModuleCreator_];
  _Block_release(v20);

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v14;
}

uint64_t sub_20D0DFB10(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_20D567C18();
  v2[10] = sub_20D567C08();
  v4 = sub_20D567BA8();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x2822009F8](sub_20D0DFBA8, v4, v3);
}

uint64_t sub_20D0DFBA8()
{
  v2 = v0[8];
  v1 = v0[9];
  type metadata accessor for ItemCollectionViewControlsTransitionHelper();
  v3 = swift_allocObject();
  v4 = v3 + qword_27C81D6C0;
  *(v3 + qword_27C81D6C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = v3 + qword_27C81D6D0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  v6 = qword_27C81D6D8;
  v7 = sub_20D5655D8();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
  swift_unknownObjectWeakAssign();
  *(v3 + qword_27C81D6C8) = v2;
  v8 = v2;
  v9 = sub_20D565658();
  v0[13] = v9;
  v10 = *(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_accessoryControlDataModel);
  v0[14] = v10;
  objc_allocWithZone(type metadata accessor for ActionSetAccessoryControlViewController(0));
  v11 = v8;

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_20D0DFD80;
  v13 = v0[8];

  return sub_20CFAC96C(v13, v10, v9);
}

uint64_t sub_20D0DFD80(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_20D0DFEA8, v4, v3);
}

uint64_t sub_20D0DFEA8()
{
  v1 = v0[16];

  if (!v1 || (v2 = *(v0[9] + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController)) == 0)
  {
LABEL_7:

    goto LABEL_9;
  }

  v3 = v0[16];
  v4 = v0[8];
  v5 = v2;
  if (sub_20CECAF8C(v4))
  {
    v6 = v0[8];
    v7 = v3;
    sub_20CECB338(v6);
    sub_20D565348();
    v8 = sub_20D565338();

    if (v8)
    {
      type metadata accessor for ContainedAccessoryElementsGridViewController();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = v0[14];
        v12 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
        swift_beginAccess();
        *(v10 + v12) = v11;
        swift_retain_n();

        sub_20D05D86C();

        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  v13 = v0[1];
  v14 = v0[16];

  return v13(v14);
}

void sub_20D0E0048()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule);
  if (v2)
  {
    sub_20CECF7A0(v2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v8);
    sub_20CF02B6C(v8, v9);
    v3 = v0 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v6 = sub_20D565B38();
      v7 = sub_20CEF34B0(v6);

      (*(v4 + 8))(v1, v7, v9, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  if (*(v1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_dataModelObserverCancelable))
  {

    sub_20D566608();
  }
}

uint64_t sub_20D0E05B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20CEF5FFC;

  return sub_20D0DE6C8(v2, v3, v5, v4);
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20D0E0688()
{
  v1 = [objc_opt_self() futureWithResult_];

  return v1;
}

id sub_20D0E06E0(unint64_t a1, void *a2, void *a3)
{
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  sub_20D0E0A98(a2, a3, v8 != 0, v40);
  if (a1 >> 62)
  {
    v9 = sub_20D568768();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = sub_20D048200(v9, v40);
  v11 = [objc_opt_self() sectionWithGroup_];
  [v11 _setClipsBackgroundDecorationsToContent_];
  [v11 _setClipsContentToBounds_];
  [v11 _setExcludesBoundarySupplementariesFromClipping_];
  [a3 cellCornerRadius];
  [v11 _setCornerRadius_];
  [v11 setOrthogonalScrollingBehavior_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20D5BA040;
  v13 = objc_opt_self();
  v14 = sub_20D5677F8();
  v15 = [v13 backgroundDecorationItemWithElementKind_];

  *(v12 + 32) = v15;
  sub_20CECF940(0, &qword_27C821258);
  v16 = sub_20D567A58();

  [v11 setDecorationItems_];

  v17 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v17)
  {
    v18 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  }

  else
  {
    swift_getObjectType();
    v41.is_nil = 0;
    NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(v19, v41);
    v18 = v20;
    v17 = 0;
  }

  v21 = v17;
  [v18 sectionTrailingMargin];
  v23 = v22;
  v24 = v10;
  v25 = [v24 layoutSize];
  v26 = [v25 widthDimension];

  [v26 dimension];
  v28 = v27;

  v29 = v40[0];
  if (v28 >= v40[0])
  {
  }

  else
  {
    v30 = [v24 layoutSize];

    v31 = [v30 widthDimension];
    [v31 dimension];
    v33 = v32;

    v23 = v23 + v29 - v33;
  }

  [v18 sectionTopMargin];
  v35 = v34;
  [v18 sectionLeadingMargin];
  v37 = v36;
  [v18 sectionBottomMargin];
  [v11 setContentInsets_];

  return v11;
}

double sub_20D0E0A98@<D0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v9)
  {
    v10 = *(v4 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  }

  else
  {
    swift_getObjectType();
    v31.is_nil = 0;
    NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(v11, v31);
    v10 = v12;
    v9 = 0;
  }

  v13 = v9;
  [v10 sectionLeadingMargin];
  v15 = v14;
  [v10 sectionTrailingMargin];
  v17 = v16;
  [objc_msgSend(a1 container)];
  v19 = v18;
  swift_unknownObjectRelease();
  [a2 mosaicInterItemSpacing];
  v21 = v20;
  [v10 pointWidthForNumberOfColumns_];
  v23 = v22;
  [v10 columnSpacing];
  v25 = floor(v23 + v24 * 0.5);
  if (a3)
  {
    [a2 expandedFormatAspectRatio];
    v29 = v28;

    v27 = v25 / v29;
  }

  else
  {
    [a2 cameraCellHeight];
    v27 = v26;
  }

  result = v19 - (v15 + v17);
  *a4 = result;
  *(a4 + 8) = floor(v27);
  *(a4 + 16) = v25;
  *(a4 + 24) = v21;
  *(a4 + 32) = a3 & 1;
  return result;
}

uint64_t sub_20D0E0C4C(unint64_t a1, void *a2, void *a3)
{
  v6 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  if (v6)
  {
    v7 = *(v3 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
  }

  else
  {
    swift_getObjectType();
    v68.is_nil = 0;
    NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(v8, v68);
    v7 = v9;
    v6 = 0;
  }

  v10 = v6;
  [v7 sectionLeadingMargin];
  v12 = v11;
  [v7 sectionTrailingMargin];
  v14 = v12 + v13;
  [a3 interItemSpacing];
  v16 = v15;
  [objc_msgSend(a2 container)];
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = v18 - v14;
  [a3 cameraCellWidth];
  v21 = v20;
  [a3 interItemSpacing];
  v23 = [a3 numColumnsForContainerWidth:v19 minimumCameraCellWidth:v21 padding:v22];
  v24 = objc_opt_self();
  v64 = v23;
  [v24 columnWidthForContainerWidth:v23 numberOfColumns:v19 padding:v16];
  [v24 heightForWidth_];
  v26 = v25;
  if (a1 >> 62)
  {
LABEL_40:
    v27 = sub_20D568768();
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = sub_20D0E15BC(v27, v26);
  v66 = 0;
  v67 = MEMORY[0x277D84F90];
  v29 = objc_opt_self();
  v30 = [v29 fractionalWidthDimension_];
  v31 = [v29 absoluteDimension_];
  v32 = objc_opt_self();
  v65 = [v32 sizeWithWidthDimension:v30 heightDimension:v31];

  if (v28 >> 62)
  {
    v33 = sub_20D568768();
  }

  else
  {
    v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  v61 = v29;
  v62 = v7;
  v60 = v32;
  if (!v33)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_31:

    goto LABEL_32;
  }

  if (v64)
  {
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    v7 = v64;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x20F31DD20](v35, v28);
      }

      else
      {
        if (v35 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v37 = *(v28 + 8 * v35 + 32);
      }

      v38 = v66;
      if (!v66)
      {
        v38 = v34;
      }

      v66 = v38;
      v39 = v37;
      MEMORY[0x20F31CEE0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      result = sub_20D567B08();
      if ((v35 + 1) % v7)
      {
      }

      else
      {
        if (!v66)
        {
          __break(1u);
          return result;
        }

        v41 = objc_opt_self();
        sub_20CECF940(0, &qword_28111FE40);
        v42 = sub_20D567A58();
        v43 = [v41 horizontalGroupWithLayoutSize:v65 subitems:v42];

        v44 = objc_opt_self();
        [a3 interItemSpacing];
        v45 = [v44 fixedSpacing_];
        [v43 setInterItemSpacing_];

        v46 = v43;
        MEMORY[0x20F31CEE0]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();

        v36 = v67;

        v66 = 0;
        v7 = v64;
      }

      if (v35 == 0x7FFFFFFFFFFFFFFELL)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      ++v35;
    }

    while (v33 != v35);
    if (!v66)
    {
      goto LABEL_31;
    }

    v47 = objc_opt_self();
    sub_20CECF940(0, &qword_28111FE40);
    v48 = sub_20D567A58();
    v49 = [v47 horizontalGroupWithLayoutSize:v65 subitems:v48];

    v30 = v49;
    MEMORY[0x20F31CEE0]();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  sub_20D567AB8();
LABEL_29:
  sub_20D567B08();

  v36 = v67;
LABEL_32:
  if (v36 >> 62)
  {
    v50 = sub_20D568768();
  }

  else
  {
    v50 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = (v16 + v26) * v50;
  v52 = [v61 fractionalWidthDimension_];
  v53 = [v61 estimatedDimension_];
  v54 = [v60 sizeWithWidthDimension:v52 heightDimension:v53];

  if (v36 >> 62)
  {
    sub_20CECF940(0, &qword_28111FE40);
    sub_20D5663C8();
    sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    sub_20D568C08();
    sub_20CECF940(0, &qword_28111FE40);
  }

  v55 = objc_opt_self();
  sub_20CECF940(0, &qword_28111FE40);
  v56 = sub_20D567A58();

  v57 = [v55 verticalGroupWithLayoutSize:v54 subitems:v56];

  v58 = [objc_opt_self() fixedSpacing_];
  [v57 setInterItemSpacing_];

  v59 = [objc_opt_self() sectionWithGroup_];

  return v59;
}

id sub_20D0E1430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, id))
{
  sub_20CECF940(0, &qword_281120AC0);
  v10 = sub_20D567A78();
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  v13 = a6(v10, a4, v11);
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_20D0E15BC(uint64_t a1, double a2)
{
  result = MEMORY[0x277D84F90];
  if (a1 >= 1)
  {
    v14 = MEMORY[0x277D84F90];
    v5 = objc_opt_self();
    v6 = objc_opt_self();
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    do
    {
      [v5 widthForHeight_];
      v9 = [v6 absoluteDimension_];
      v10 = [v6 absoluteDimension_];
      v11 = [v7 sizeWithWidthDimension:v9 heightDimension:v10];

      v12 = [v8 itemWithLayoutSize_];
      v13 = v12;
      MEMORY[0x20F31CEE0]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();

      --a1;
    }

    while (a1);
    return v14;
  }

  return result;
}

Swift::Bool __swiftcall HUServiceDetailsItemManager.isMatterAccessoryLikeItem()()
{
  v1 = [v0 sourceItem];
  if (v1)
  {
    v2 = v1;
    sub_20D565D18();
    v1 = swift_dynamicCastClass();
    if (!v1)
    {

      v1 = 0;
    }
  }

  v3 = v1 != 0;

  return v3;
}

HMAccessory_optional __swiftcall HUServiceDetailsItemManager.matterAccessory()()
{
  v1 = [v0 sourceItem];
  if (v1)
  {
    v3 = v1;
    sub_20D565D18();
    if (swift_dynamicCastClass())
    {
      v4 = sub_20D565CC8();
      v5 = sub_20D565E28();

      v1 = v5;
    }

    else
    {

      v1 = 0;
    }
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id HUProcessedWallpaperFactory.applyCustomFilter(for:image:)(void *a1, void *a2)
{
  v3 = [a1 type] == 6;

  return sub_20D0E1CD4(a2, v3);
}

id sub_20D0E1A48(uint64_t a1)
{
  v2 = sub_20D5677F8();
  v3 = [objc_opt_self() filterWithName_];

  if (v3)
  {
    [v3 setValue:a1 forKey:*MEMORY[0x277CBFAF0]];
    v4 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2823CE930 count:4];
    v5 = sub_20D5677F8();
    [v3 setValue:v4 forKey:v5];

    v6 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2823CE970 count:4];
    v7 = sub_20D5677F8();
    [v3 setValue:v6 forKey:v7];

    v8 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2823CE9B0 count:4];
    v9 = sub_20D5677F8();
    [v3 setValue:v8 forKey:v9];

    v10 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2823CE9F0 count:4];
    v11 = sub_20D5677F8();
    [v3 setValue:v10 forKey:v11];

    v12 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithValues:&unk_2823CEA30 count:4];
    v13 = sub_20D5677F8();
    [v3 setValue:v12 forKey:v13];
  }

  return v3;
}

id sub_20D0E1CD4(void *a1, char a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      [v3 extent];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [v4 imageByClampingToExtent];

      v14 = [v13 imageByApplyingGaussianBlurWithSigma_];
      v15 = v14;

      v4 = [v15 imageByCroppingToRect_];
    }

    else
    {
      v17 = sub_20D0E1A48(v3);
      if (!v17)
      {
LABEL_12:
        [a1 scale];
        v35 = v34;
        v36 = [a1 imageOrientation];
        v37 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
        [v4 extent];
        v38 = [v37 createCGImage:v4 fromRect:?];
        if (v38)
        {
          v39 = v38;
          v40 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v38 scale:v36 orientation:v35];
        }

        else
        {
          v40 = a1;
        }

        return v40;
      }

      v18 = v17;
      v19 = [v17 outputImage];
      if (v19)
      {
        v20 = v19;

        v4 = v20;
      }

      v21 = v4;
      v22 = [v21 imageByUnpremultiplyingAlpha];
      [v21 extent];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = [v22 imageBySettingAlphaOneInExtent_];
      v15 = v31;

      v32 = [objc_opt_self() redImage];
      [v15 extent];
      v33 = [v32 imageByCroppingToRect_];

      v4 = [v15 imageByCompositingOverImage_];
    }

    goto LABEL_12;
  }

  return a1;
}

void sub_20D0E2008(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_20D0E2060()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_20D0E20A4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ServiceGroupSelectionController.__allocating_init(serviceGroupBuilder:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_20D0E2194(uint64_t a1, void *a2, SEL *a3)
{
  v5 = v3;
  swift_getObjectType();
  v6 = sub_20D5681D8();
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CFADE3C();
    sub_20D0E29E8(&qword_27C81D290, 255, sub_20CFADE3C);
    sub_20D567D58();
    v8 = v25;
    v7 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v10 = 0;
    v8 = sub_20D5663C8();
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_18:
      sub_20CEC80DC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20D5BA040;
      *(inited + 32) = a2;
      v22 = a2;
      sub_20CEF302C(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }

    while (1)
    {
      swift_beginAccess();
      [*(v5 + 16) *a3];

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CFADE3C();
        swift_dynamicCast();
        v20 = v24;
        v18 = v10;
        v19 = v11;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_18;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20D0E2434()
{
  swift_getObjectType();
  v0 = sub_20D5681D8();
  v22 = v0;
  if ((v0 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CFADE3C();
    sub_20D0E29E8(&qword_27C81D290, 255, sub_20CFADE3C);
    result = sub_20D567D58();
    v2 = v27[4];
    v3 = v27[5];
    v4 = v27[6];
    v5 = v27[7];
    v6 = v27[8];
  }

  else
  {
    v7 = -1 << *(v0 + 32);
    v3 = v0 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v0 + 56);
    result = sub_20D5663C8();
    v5 = 0;
    v2 = result;
  }

  v21 = v4;
  v10 = (v4 + 64) >> 6;
  v23 = v3;
  while (v2 < 0)
  {
    v19 = sub_20D568798();
    if (!v19)
    {
LABEL_19:
      v11 = 0;
LABEL_20:
      sub_20CEC80DC();

      return v11;
    }

    v26 = v19;
    sub_20CFADE3C();
    swift_dynamicCast();
    v11 = v27[0];
    v25 = v6;
    if (!v27[0])
    {
      goto LABEL_20;
    }

LABEL_9:
    v12 = v2;
    v13 = v24;
    swift_beginAccess();
    v14 = [*(v13 + 16) services];
    sub_20CFADE3C();
    v15 = sub_20D567A78();

    v27[0] = v11;
    MEMORY[0x28223BE20](v16);
    v20[2] = v27;
    LOBYTE(v14) = sub_20CED44F8(sub_20D0E2948, v20, v15);

    v2 = v12;
    v3 = v23;

    v6 = v25;
    if (v14)
    {
      v11 = 1;
      goto LABEL_20;
    }
  }

  v17 = v5;
  v18 = v6;
  if (v6)
  {
LABEL_8:
    v25 = (v18 - 1) & v18;
    v11 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v5 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_19;
    }

    v18 = *(v3 + 8 * v5);
    ++v17;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServiceGroupSelectionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20D0E2880()
{
  swift_getWitnessTable();

  return sub_20D565ED8();
}

uint64_t sub_20D0E28E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28216DBA0](a1, a2, WitnessTable);
}

uint64_t sub_20D0E29E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_20D0E2B58(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager_triggerModule] = 0;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for AccessoryDetailsSuggestedAutomationsItemManager();
  v5 = objc_msgSendSuper2(&v16, sel_initWithDelegate_sourceItem_, 0, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20D5BA040;
  *(v6 + 32) = a1;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = a1;
  v10 = [v7 defaultContext];
  v11 = objc_allocWithZone(HUAvailableRelatedTriggerItemModule);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F630);
  v12 = sub_20D567A58();

  v13 = [v11 initWithItems:v12 itemUpdater:v8 home:a2 context:v10];

  v14 = *&v8[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager_triggerModule];
  *&v8[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager_triggerModule] = v13;

  return v8;
}

uint64_t sub_20D0E2D54()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager_triggerModule];
  if (v5)
  {
    v19 = MEMORY[0x277D84F90];
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF99B4();
    v6 = v5;
    v7 = sub_20D567CD8();
    v8 = [v6 buildSectionsWithDisplayedItems_];

    sub_20CECF940(0, &unk_28111FFD0);
    v9 = sub_20D567A78();

    sub_20CF6BF50(v9);
    return v19;
  }

  else
  {
    sub_20D565958();
    v11 = v0;
    v12 = sub_20D565968();
    v13 = sub_20D567EA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      v17 = v11;
      *(v14 + 14) = sub_20CEE913C(0xD000000000000023, 0x800000020D5DA010, &v19);
      _os_log_impl(&dword_20CEB6000, v12, v13, "%@ - %s cannot build sections without a trigger module.", v14, 0x16u);
      sub_20CF31DFC(v15);
      MEMORY[0x20F31FC70](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F31FC70](v16, -1, -1);
      MEMORY[0x20F31FC70](v14, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return MEMORY[0x277D84F90];
  }
}

void sub_20D0E30D4(uint64_t a1)
{
  v3 = sub_20D565988();
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager_triggerModule];
  if (v8)
  {
    v33 = v5;
    v34 = v4;
    v9 = v8;
    v10 = [v9 allItems];
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF99B4();
    v11 = sub_20D567D08();

    sub_20D5663C8();
    sub_20CF84068(v11, a1);

    v12 = sub_20D567CD8();
    v32 = v9;
    v13 = [v9 itemsToHideInSet_];

    sub_20D567D08();
    sub_20D565958();
    v14 = v1;

    sub_20D5663C8();
    v15 = sub_20D565968();
    v16 = sub_20D567E88();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      v31 = swift_slowAlloc();
      v35 = v31;
      *v17 = 138413058;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      v19 = v14;
      *(v17 + 14) = sub_20CEE913C(0xD000000000000011, 0x800000020D5DA040, &v35);
      *(v17 + 22) = 2080;
      v20 = sub_20D567D18();
      v22 = v21;

      v23 = sub_20CEE913C(v20, v22, &v35);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2080;
      v24 = sub_20D567D18();
      v26 = sub_20CEE913C(v24, v25, &v35);

      *(v17 + 34) = v26;
      _os_log_impl(&dword_20CEB6000, v15, v16, "%@ - %s moduleItems: %s, itemsToHide: %s", v17, 0x2Au);
      v27 = v30;
      sub_20CF31DFC(v30);
      MEMORY[0x20F31FC70](v27, -1, -1);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v28, -1, -1);
      MEMORY[0x20F31FC70](v17, -1, -1);
    }

    else
    {
    }

    (*(v33 + 8))(v7, v34);
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
  {
    v29 = MEMORY[0x277D84F90];

    sub_20CEF302C(v29);
  }
}

id AccessoryDetailsSuggestedAutomationsItemManager.__allocating_init(delegate:sourceItem:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithDelegate:a1 sourceItem:a2];
  swift_unknownObjectRelease();

  return v4;
}

id AccessoryDetailsSuggestedAutomationsItemManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDetailsSuggestedAutomationsItemManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D0E36A0()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC6HomeUI47AccessoryDetailsSuggestedAutomationsItemManager_triggerModule];
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20D5BA040;
    *(v6 + 32) = v5;
  }

  else
  {
    sub_20D565958();
    v7 = v0;
    v8 = sub_20D565968();
    v9 = sub_20D567EA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v8;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = v13;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v12 = v7;
      *(v10 + 12) = 2080;
      v14 = v7;
      *(v10 + 14) = sub_20CEE913C(0xD000000000000017, 0x800000020D5DA0F0, &v19);
      v15 = v18;
      _os_log_impl(&dword_20CEB6000, v18, v9, "%@ - %s cannot build item modules without a trigger module.", v10, 0x16u);
      sub_20CF31DFC(v12);
      MEMORY[0x20F31FC70](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x20F31FC70](v13, -1, -1);
      MEMORY[0x20F31FC70](v10, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    v6 = MEMORY[0x277D84F90];
  }

  v16 = v5;
  return v6;
}

uint64_t sub_20D0E3930(uint64_t a1)
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
  result = sub_20D5663C8();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v37 = v6;
  v34 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = v5;
    v12 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = v12 >> 62;
    v14 = v12;
    if (v12 >> 62)
    {
      v15 = sub_20D568768();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_20D568768();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_40;
    }

    sub_20D5663C8();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_20D568768();
      }

LABEL_22:
      result = sub_20D568888();
      v38 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v38 = v9;
LABEL_23:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v14;
    if (v13)
    {
      v24 = v19;
      result = sub_20D568768();
      v19 = v24;
      v22 = v14;
      v23 = result;
    }

    else
    {
      v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_42;
      }

      v25 = v19 + 8 * v20 + 32;
      v36 = v19;
      v41 = v22;
      if (v13)
      {
        if (v23 < 1)
        {
          goto LABEL_44;
        }

        sub_20D0EC21C();
        v26 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E330);
          v27 = v23;
          v28 = v25;
          v29 = sub_20CEFDF58(v40, v26, v41);
          v31 = *v30;
          (v29)(v40, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_20CECF940(0, &qword_281120AC0);
        swift_arrayInitWithCopy();
      }

      v9 = v38;
      v2 = v34;
      v1 = v35;
      v6 = v37;
      v5 = (v11 - 1) & v11;
      if (v39 >= 1)
      {
        v32 = *(v36 + 16);
        v17 = __OFADD__(v32, v39);
        v33 = v32 + v39;
        if (v17)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v9 = v38;
      v6 = v37;
      v5 = (v11 - 1) & v11;
      if (v39 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
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
LABEL_40:
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

uint64_t sub_20D0E3C80@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v8 = v7;
  v13 = result;
  v85 = result;
  if (a6)
  {
    v15 = *v7;
    if (*(*v8 + 16))
    {
      result = sub_20CEED6E0(result);
      if (v16)
      {
        v17 = *(v15 + 56) + 32 * result;
        a4 = *(v17 + 16);
        a5 = *(v17 + 24);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_5:
  v18 = floor(vcvtd_n_f64_s64(a3, 1uLL));
  v19 = v18 + v18;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v20 = *(v8[5] + 16);
  v21 = __OFSUB__(v20, a4);
  v22 = (v20 - a4);
  if (v21)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = v19;
  if (v22 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = v22;
  }

  v26 = *v8;
  v25 = v8[1];
  if (!*(*v8 + 16) || (v27 = sub_20CEED6E0(v13), (v28 & 1) == 0) || ((v29 = (*(v26 + 56) + 32 * v27), *v29 == v24) ? (v30 = v29[1] == v23) : (v30 = 0), !v30 || (v29[2] == a4 ? (v31 = v29[3] == a5) : (v31 = 0), !v31)))
  {
    v32 = MEMORY[0x277D84F90];
    *&v80 = sub_20CEF2F30(MEMORY[0x277D84F90]);
    v84 = v32;
    if ((v25 & 0x8000000000000000) == 0)
    {
      v73 = a7;
      v33 = MEMORY[0x277D84F90];
      if (v25)
      {
        v34 = sub_20D567AE8();
        *(v34 + 16) = v25;
        bzero((v34 + 32), 8 * v25);
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
      }

      *(&v80 + 1) = v25;
      v81 = v34;
      LOBYTE(v82) = 1;
      *(&v82 + 1) = v33;
      *&v83 = 0;
      BYTE8(v83) = 1;
      v35 = v13;
      sub_20CF94564(v13, v24, v23, a4, a5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86[0] = v80;
      a3 = v35;
      v37 = sub_20CEEF36C(v24, v23, a4, a5, v35, isUniquelyReferenced_nonNull_native);
      v38 = v8[8];
      MEMORY[0x28223BE20](v37);
      v66[2] = &v85;
      v66[3] = v8;
      sub_20D5663C8();
      v72 = v38;
      v39 = sub_20CF3F434(sub_20D0EC1C0, v66, v38);
      sub_20CEFB16C(v39, 0, 0, 1);

      v8 = *(&v82 + 1);
      v40 = *(*(&v82 + 1) + 16);
      if (!v40)
      {
LABEL_47:
        v86[1] = v81;
        v86[2] = v82;
        v86[3] = v83;
        v87 = v84;
        v88 = v84;
        v86[0] = v80;
        sub_20D0E42CC(v24, v23, a4, a5, &v76);
        v54 = v76;
        v55 = v77;
        v56 = v78;
        v57 = v79;
        sub_20CF94564(v13, v76, v77, v78, v79);

        v58 = v80;
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v76 = v58;
        sub_20CEEF36C(v54, v55, v56, v57, a3, v59);
        result = sub_20CEF928C(&v88, &unk_27C81E330);
        *&v80 = v76;
        v60 = v72;
        v84 = v72;
        v61 = v83;
        v62 = v73;
        *(v73 + 2) = v82;
        *(v62 + 3) = v61;
        v62[8] = v60;
        v63 = v81;
        *v62 = v80;
        *(v62 + 1) = v63;
        return result;
      }

      v75 = *(&v80 + 1);
      if ((*(&v80 + 1) & 0x8000000000000000) == 0)
      {
        v74 = v40;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v13;
        v70 = a4;
        v69 = a5;
        v68 = v23;
        v67 = v24;
        if (v41)
        {
          goto LABEL_30;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      v8 = sub_20CF3B7FC(v8);
LABEL_30:
      v42 = v74;
      v43 = 0;
      a7 = v8 + 4;
      do
      {
        if (v43 == v42)
        {
          goto LABEL_53;
        }

        if (v75)
        {
          v44 = 4;
          for (i = v75; i; --i)
          {
            if (v43 >= v8[2])
            {
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v47 = a7[v43];
            if ((v44 - 4) >= *(v47 + 16))
            {
              goto LABEL_49;
            }

            v48 = *(v47 + 8 * v44);
            if (v48)
            {
              sub_20CECF940(0, &qword_281120AC0);
              v49 = a3;
              v50 = v48;
              v51 = sub_20D5683F8();

              if (v51)
              {
                if (v43 >= v8[2])
                {
                  __break(1u);
LABEL_52:
                  __break(1u);
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                v52 = a7[v43];
                v53 = swift_isUniquelyReferenced_nonNull_native();
                a7[v43] = v52;
                if ((v53 & 1) == 0)
                {
                  v52 = sub_20CF3B7E8();
                  a7[v43] = v52;
                }

                if ((v44 - 4) >= *(v52 + 16))
                {
                  goto LABEL_52;
                }

                v46 = *(v52 + 8 * v44);
                *(v52 + 8 * v44) = 0;
              }
            }

            ++v44;
          }
        }

        ++v43;
        v42 = v74;
      }

      while (v43 != v74);
      *(&v82 + 1) = v8;
      v13 = v71;
      a4 = v70;
      a5 = v69;
      v23 = v68;
      v24 = v67;
      goto LABEL_47;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_50:
  v64 = *(v8 + 3);
  *(a7 + 2) = *(v8 + 2);
  *(a7 + 3) = v64;
  a7[8] = v8[8];
  v65 = *(v8 + 1);
  *a7 = *v8;
  *(a7 + 1) = v65;
  return sub_20CEF9178(v8, v86, &qword_27C81C370);
}

unint64_t sub_20D0E4220(void *a1, uint64_t a2, uint64_t a3)
{
  sub_20CECF940(0, &qword_281120AC0);
  v5 = sub_20D5683F8();
  result = 0;
  if ((v5 & 1) == 0)
  {
    if (*(*a3 + 16))
    {
      v7 = a1;
      result = sub_20CEED6E0(v7);
      if (v8)
      {
        return v7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D0E42CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_99:
    __break(1u);
  }

  else
  {
    v7 = *(v5 + 8);
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    v10 = *(v5 + 40);
    v11 = a2 + a4;
    v12 = __OFADD__(a2, a4);
    v13 = v10 + 32;
    while (1)
    {
      if ((v9 & 1) == 0)
      {
        if (!v8)
        {
          goto LABEL_107;
        }

        if (v8 == -1 && v6 == 0x8000000000000000)
        {
          goto LABEL_121;
        }

        result = v6 % v8 + a3;
        if (__OFADD__(v6 % v8, a3))
        {
          goto LABEL_108;
        }

        v14 = __OFSUB__(result--, 1);
        if (v14)
        {
          goto LABEL_109;
        }

        if (result >= v8)
        {
          break;
        }
      }

      if (v6 < 0 || a2 < 0)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_101;
      }

      if (v7 < v11)
      {
        break;
      }

      if ((v9 & 1) == 0)
      {
        if (!v8)
        {
          goto LABEL_110;
        }

        result = v6 % v8 + a3;
        if (__OFADD__(v6 % v8, a3))
        {
          goto LABEL_111;
        }

        v14 = __OFSUB__(result--, 1);
        if (v14)
        {
          goto LABEL_112;
        }

        if (result >= v8)
        {
          break;
        }
      }

      result = v6 + a3;
      if (__OFADD__(v6, a3))
      {
        goto LABEL_102;
      }

      if (result < v6)
      {
        goto LABEL_103;
      }

      if (v6 != result)
      {
        if (v11 < a2)
        {
          goto LABEL_113;
        }

        if (v6 < result)
        {
          v15 = v6;
          while (1)
          {
            v16 = v15 + 1;
            if (v11 != a2)
            {
              break;
            }

LABEL_30:
            if (v16 == result)
            {
              goto LABEL_6;
            }

            if (v16 >= v6)
            {
              ++v15;
              if (v16 < result)
              {
                continue;
              }
            }

            goto LABEL_97;
          }

          v17 = a4;
          v18 = a2;
          while (v18 < v11)
          {
            if (v15 < *(v10 + 16))
            {
              if (v15 < 0)
              {
                goto LABEL_91;
              }

              if ((v18 & 0x8000000000000000) != 0)
              {
                goto LABEL_92;
              }

              v19 = *(v13 + 8 * v15);
              if (v18 >= *(v19 + 16))
              {
                goto LABEL_93;
              }

              if (*(v19 + 8 * v18 + 32))
              {
                goto LABEL_42;
              }
            }

            ++v18;
            if (!--v17)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_6:
      v14 = __OFSUB__(v6--, 1);
      if (v14)
      {
        goto LABEL_99;
      }
    }

LABEL_42:
    v14 = __OFADD__(v6, 1);
    v20 = v6 + 1;
    if (v14)
    {
      goto LABEL_116;
    }

    v21 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      v23 = v8 == -1 && v20 == 0x8000000000000000;
      v24 = v20 + a3;
      result = __OFADD__(v20, a3);
      v25 = v20 % v8;
      while (1)
      {
        if ((v9 & 1) == 0)
        {
          if (v23)
          {
            goto LABEL_122;
          }

          v26 = v25 + a3;
          if (__OFADD__(v25, a3))
          {
            goto LABEL_114;
          }

          v14 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v14)
          {
            goto LABEL_115;
          }

          if (v27 >= v8)
          {
            goto LABEL_87;
          }
        }

        if (v20 < 0 || v21 < 0)
        {
          goto LABEL_87;
        }

        v28 = v21 + a4;
        if (__OFADD__(v21, a4))
        {
          goto LABEL_104;
        }

        if (v7 < v28)
        {
          goto LABEL_87;
        }

        if ((v9 & 1) == 0)
        {
          v29 = v25 + a3;
          if (__OFADD__(v25, a3))
          {
            goto LABEL_117;
          }

          v14 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v14)
          {
            goto LABEL_118;
          }

          if (v30 >= v8)
          {
LABEL_87:
            if (__OFADD__(v21, 1))
            {
              goto LABEL_120;
            }

            *a5 = v20;
            a5[1] = v21 + 1;
            a5[2] = a3;
            a5[3] = a4;
            return result;
          }
        }

        if (result)
        {
          goto LABEL_105;
        }

        if (v24 < v20)
        {
          goto LABEL_106;
        }

        if (v20 != v24)
        {
          break;
        }

LABEL_54:
        v14 = __OFSUB__(v21--, 1);
        if (v14)
        {
          goto LABEL_100;
        }
      }

      if (v28 < v21)
      {
        goto LABEL_119;
      }

      if (v20 < v24)
      {
        v31 = v20;
        while (1)
        {
          v32 = v31 + 1;
          if (v21 != v28)
          {
            break;
          }

LABEL_75:
          if (v32 == v24)
          {
            goto LABEL_54;
          }

          if (v32 >= v20)
          {
            ++v31;
            if (v32 < v24)
            {
              continue;
            }
          }

          goto LABEL_98;
        }

        v33 = a4;
        v34 = v21;
        while (v34 < v28)
        {
          if (v31 < *(v10 + 16))
          {
            if (v31 < 0)
            {
              goto LABEL_94;
            }

            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_95;
            }

            v35 = *(v13 + 8 * v31);
            if (v34 >= *(v35 + 16))
            {
              goto LABEL_96;
            }

            if (*(v35 + 8 * v34 + 32))
            {
              goto LABEL_87;
            }
          }

          ++v34;
          if (!--v33)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_90;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  return result;
}

uint64_t sub_20D0E460C()
{
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v79 = (v1 + 16);
  v3 = v0[1];
  v4 = v0[6];
  v82 = v0[5];
  v5 = *(v0 + 56);
  v6 = sub_20CEF4B04(v2);
  v7 = v3;
  *v102 = v6;
  v105 = v2;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  if (v7 < 0)
  {
    goto LABEL_83;
  }

  v9 = v6;
  v10 = MEMORY[0x277D84F90];
  v81 = v7;
  v78 = v1;
  if (v7)
  {
    v11 = sub_20D567AE8();
    *(v11 + 16) = v81;
    bzero((v11 + 32), 8 * v81);
    v7 = v81;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  *&v102[8] = v7;
  *&v102[16] = v11;
  *&v102[24] = v8;
  LOBYTE(v103) = v5 & 1;
  *(&v103 + 1) = v10;
  *&v104 = v4;
  BYTE8(v104) = v5;
  v88 = *v0;
  v89 = 0;
  v15 = 1;
  v16 = v10;
  v17 = v10;
  while (1)
  {
    if (v16 >> 62)
    {
      v18 = sub_20D568768();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18 >= *(v88 + 16))
    {
      v99 = v103;
      v100 = v104;
      v101 = v105;
      v97 = *v102;
      v98 = *&v102[16];
      sub_20CEF928C(&v97, &unk_27C81DDA0);
      sub_20D5663C8();
      goto LABEL_73;
    }

    v96 = v103;
    v95 = BYTE8(v104);
    v107 = *&v102[8];
    v106 = v9;
    v108 = *&v102[24];
    v109 = v103;
    v110 = *(&v103 + 1);
    v111 = v104;
    v112 = BYTE8(v104);
    v113 = v17;
    sub_20CF933C4(1, 1, &v92);
    if (v94)
    {
      goto LABEL_71;
    }

    v87 = v12;
    v83 = v14;
    v84 = v13;
    v19 = *(v82 + 16);
    v12 = *(&v92 + 1);
    v20 = v92;
    v91 = v93;
    v21 = *(&v93 + 1);
    v90 = *(&v93 + 1);
    if (v92 < v19 && *(&v92 + 1) < v81)
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      if ((*(&v92 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      v22 = *(v82 + 32 + 8 * v92);
      if (*(&v92 + 1) >= *(v22 + 16))
      {
        goto LABEL_77;
      }

      v23 = v22 + 8 * *(&v92 + 1);
      v24 = *(v23 + 32);
      if (v24)
      {
        *&v92 = *(v23 + 32);
        sub_20CECF940(0, &qword_281120AC0);
        sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
        v25 = v24;
        sub_20D5687F8();
        if (!*(v88 + 16))
        {
          goto LABEL_79;
        }

        v26 = sub_20CEED6E0(v25);
        if ((v27 & 1) == 0)
        {
          goto LABEL_80;
        }

        v28 = (*(v88 + 56) + 32 * v26);
        v85 = v28[1];
        v80 = *v28;
        sub_20CEF9064(&v97, &v92);
        sub_20CF94984(&v92, v80, *(&v80 + 1), v85, *(&v85 + 1));
        sub_20CEF928C(&v92, &unk_27C81C7A0);
        v29 = *v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v92 = v29;
        v32 = sub_20CEED894(&v97);
        v33 = *(v29 + 16);
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_81;
        }

        v36 = v31;
        if (*(v29 + 24) < v35)
        {
          sub_20CF98A04(v35, isUniquelyReferenced_nonNull_native);
          v37 = sub_20CEED894(&v97);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_84;
          }

          v32 = v37;
          v9 = v92;
          if ((v36 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_43:
          v55 = (v9[7] + 32 * v32);
          *v55 = v80;
          v55[1] = v85;
LABEL_56:
          *v102 = v9;
          sub_20CEF9064(&v97, &v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_20CEE83B0(0, *(v17 + 2) + 1, 1, v17);
          }

          v70 = *(v17 + 2);
          v69 = *(v17 + 3);
          if (v70 >= v69 >> 1)
          {
            v17 = sub_20CEE83B0((v69 > 1), v70 + 1, 1, v17);
          }

          sub_20CEF90C0(&v97);
          *(v17 + 2) = v70 + 1;
          v71 = &v17[40 * v70];
          v72 = v94;
          v73 = v93;
          *(v71 + 2) = v92;
          *(v71 + 3) = v73;
          *(v71 + 8) = v72;
          v105 = v17;
          v74 = v25;
          v75 = v79;
          MEMORY[0x20F31CEE0]();
          if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
            v75 = v79;
          }

          sub_20D567B08();

          v16 = *v75;
          goto LABEL_63;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v9 = v92;
          if (v31)
          {
            goto LABEL_43;
          }
        }

        else
        {
          sub_20CF9CD1C();
          v9 = v92;
          if (v36)
          {
            goto LABEL_43;
          }
        }

LABEL_54:
        v9[(v32 >> 6) + 8] |= 1 << v32;
        sub_20CEF9064(&v97, v9[6] + 40 * v32);
        v66 = (v9[7] + 32 * v32);
        *v66 = v80;
        v66[1] = v85;
        v67 = v9[2];
        v50 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v50)
        {
          goto LABEL_82;
        }

        v9[2] = v68;
        goto LABEL_56;
      }
    }

    v86 = v92;
    if (qword_27C81A2C8 != -1)
    {
      swift_once();
    }

    v39 = qword_27C838270;
    sub_20D567EA8();
    sub_20D565858();
    v40 = sub_20D567EC8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134218240;
      *(v41 + 4) = v20;
      *(v41 + 12) = 2048;
      *(v41 + 14) = v12;
      _os_log_impl(&dword_20CEB6000, v39, v40, "AdaptiveTileLayout: position %ld,%ld", v41, 0x16u);
      MEMORY[0x20F31FC70](v41, -1, -1);
    }

    v42 = sub_20D567EC8();
    if (os_log_type_enabled(v39, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20CEB6000, v39, v42, "AdaptiveTileLayout: filling space and continuing", v43, 2u);
      MEMORY[0x20F31FC70](v43, -1, -1);
    }

    *&v92 = 1;
    sub_20D5687F8();
    sub_20CEF9064(&v97, &v92);
    sub_20CF94984(&v92, v20, v12, v91, v21);
    sub_20CEF928C(&v92, &unk_27C81C7A0);
    v44 = *v102;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v44;
    v46 = sub_20CEED894(&v97);
    v48 = *(v44 + 16);
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      break;
    }

    v52 = v47;
    if (*(v44 + 24) < v51)
    {
      sub_20CF98A04(v51, v45);
      v46 = sub_20CEED894(&v97);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_84;
      }

LABEL_39:
      v9 = v92;
      if ((v52 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }

    if (v45)
    {
      goto LABEL_39;
    }

    v56 = v46;
    sub_20CF9CD1C();
    v46 = v56;
    v9 = v92;
    if ((v52 & 1) == 0)
    {
LABEL_46:
      v9[(v46 >> 6) + 8] |= 1 << v46;
      v57 = v46;
      sub_20CEF9064(&v97, v9[6] + 40 * v46);
      v58 = (v9[7] + 32 * v57);
      *v58 = v86;
      v58[1] = v91;
      v59 = v9[2];
      v50 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v50)
      {
        goto LABEL_78;
      }

      v9[2] = v60;
      goto LABEL_48;
    }

LABEL_40:
    v54 = (v9[7] + 32 * v46);
    *v54 = v86;
    v54[1] = v91;
LABEL_48:
    *v102 = v9;
    sub_20CEF9064(&v97, &v92);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_20CEE83B0(0, *(v17 + 2) + 1, 1, v17);
    }

    v62 = *(v17 + 2);
    v61 = *(v17 + 3);
    if (v62 >= v61 >> 1)
    {
      v17 = sub_20CEE83B0((v61 > 1), v62 + 1, 1, v17);
    }

    sub_20CEF90C0(&v97);
    *(v17 + 2) = v62 + 1;
    v63 = &v17[40 * v62];
    v64 = v94;
    v65 = v93;
    *(v63 + 2) = v92;
    *(v63 + 3) = v65;
    *(v63 + 8) = v64;
    v105 = v17;
LABEL_63:
    if ((v15 & 1) == 0 && v89 == v20 && v87 == v12)
    {
      v76 = v83 == v90 && v84 == v91;
      if (v76 || v19 < v89)
      {
LABEL_71:
        v99 = v103;
        v100 = v104;
        v101 = v105;
        v97 = *v102;
        v98 = *&v102[16];
        sub_20CEF928C(&v97, &unk_27C81DDA0);
        sub_20D0E4FAC(v78);
        v16 = sub_20D0E5218(v16);
LABEL_73:

        return v16;
      }
    }

    else if (v19 < v20)
    {
      goto LABEL_71;
    }

    v15 = 0;
    v13 = v91;
    v89 = v20;
    v14 = v90;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
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
  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t sub_20D0E4FAC(uint64_t a1)
{
  if (qword_27C81A2C8 != -1)
  {
    swift_once();
  }

  sub_20D567EA8();
  sub_20D565858();
  sub_20D567EA8();
  sub_20D565858();
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_20D567EA8();
    return sub_20D565858();
  }

  result = sub_20D568768();
  v4 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v4 >= 1)
  {
    sub_20D5663C8();
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F31DD20](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_20D567EA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_20D5BC410;
      v9 = [v7 description];
      v10 = sub_20D567838();
      v12 = v11;

      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_20CED4498();
      *(v8 + 32) = v10;
      *(v8 + 40) = v12;
      sub_20D565858();
    }

    while (v4 != v5);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D0E5218(unint64_t a1)
{
  v3 = v1[1];
  v4 = v1[5];
  v5 = sub_20D5663C8();
  v6 = sub_20CEF32E4(v5);

  v32 = a1;
  v33 = v6;
  if (v3 < 0)
  {
LABEL_35:
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v30 = *(v4 + 16);
      v28 = *v1;
      v29 = v4 + 32;
      result = sub_20D5663C8();
      v8 = 0;
      v26 = v3;
      while (!v30)
      {
LABEL_4:
        if (++v8 == v26)
        {
          goto LABEL_32;
        }
      }

      v9 = 0;
      v27 = v8;
      while (1)
      {
        v10 = *(v29 + 8 * v9);
        if (v8 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v11 = *(v10 + 8 * v8 + 32);
        if (v11)
        {
          break;
        }

LABEL_23:
        if (a1 >> 62)
        {
          result = sub_20D568768();
        }

        else
        {
          result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= *(v28 + 16))
        {

          sub_20D5663C8();
          goto LABEL_32;
        }

        if (++v9 == v30)
        {
          goto LABEL_4;
        }
      }

      v12 = v33;
      if ((v33 & 0xC000000000000001) != 0)
      {
        v13 = a1;
        v14 = v11;
        v15 = sub_20D5687A8();

        if (v15)
        {

          a1 = v13;
LABEL_22:
          v8 = v27;
          goto LABEL_23;
        }
      }

      else if (*(v33 + 16))
      {
        sub_20CECF940(0, &qword_281120AC0);
        v16 = v11;
        v17 = sub_20D5683E8();
        v18 = -1 << *(v12 + 32);
        v19 = v17 & ~v18;
        if ((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = *(*(v12 + 48) + 8 * v19);
            v22 = sub_20D5683F8();

            if (v22)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_22;
        }
      }

      else
      {
        v23 = v11;
      }

LABEL_19:
      v24 = v11;
      sub_20CEEA1BC(&v31, v24);

      v25 = v24;
      MEMORY[0x20F31CEE0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();

      a1 = v32;
      goto LABEL_22;
    }

    sub_20D5663C8();
LABEL_32:

    return a1;
  }

  return result;
}

UICollectionViewCompositionalLayoutConfiguration __swiftcall HUDashboardViewController.compositionalLayoutConfiguration(for:)(UITraitCollection a1)
{
  v2 = [objc_opt_self() defaultConfiguration];
  [v2 setContentInsetsReference_];
  [v2 setInterSectionSpacing_];
  return v2;
}

id HUDashboardViewController.layoutSection(forSection:layoutEnvironment:)(uint64_t a1, void *a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex_];

  v7 = [v2 layoutManager];
  if (v6)
  {
    v8 = [v2 context];
    v9 = sub_20CF02ECC(v6, v8, a2);
  }

  else
  {
    v12 = xmmword_20D5C0F70;
    v13 = 2;
    sub_20CEFA3C8(0, 0xE000000000000000, &v12, a2);
    v9 = v10;
  }

  return v9;
}

uint64_t HUDashboardViewController.displayedItems(inSection:)()
{
  v1 = [v0 itemManager];
  v2 = sub_20D5677F8();
  v3 = [v1 displayedItemsInSectionWithIdentifier_];

  sub_20CECF940(0, &qword_281120AC0);
  v4 = sub_20D567A78();

  return v4;
}

Swift::Bool __swiftcall HUDashboardViewController.shouldShowHeader(forSection:)(Swift::String forSection)
{
  object = forSection._object;
  countAndFlagsBits = forSection._countAndFlagsBits;
  v4 = [v1 context];
  if (!*(v4 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    v5 = v4;
    if (sub_20D567838() == countAndFlagsBits && v6 == object)
    {

      return 0;
    }

    v8 = sub_20D568BF8();

    if ((v8 & 1) == 0)
    {
      if (sub_20D567838() != countAndFlagsBits || v9 != object)
      {
        v11 = sub_20D568BF8();

        if (v11)
        {
          return 0;
        }

        goto LABEL_16;
      }
    }

    return 0;
  }

  if (*(v4 + OBJC_IVAR___HUDashboardContext_type + 8) == 1)
  {

    return 0;
  }

LABEL_16:
  v12 = [v1 itemManager];
  v13 = sub_20D5677F8();
  v14 = [v12 sectionIndexForDisplayedSectionIdentifier_];

  v15 = [v1 itemManager];
  v16 = [v15 titleForSection_];

  if (v16)
  {

    return 1;
  }

  return 0;
}

void __swiftcall HUDashboardViewController.transform(_:)(HUGridLayoutOptions *__return_ptr retstr, HUGridLayoutOptions *a2)
{
  [(HUGridLayoutOptions *)a2 setSectionLeadingMargin:0.0];
  [(HUGridLayoutOptions *)a2 setSectionTrailingMargin:0.0];

  v2 = a2;
}

Swift::Bool __swiftcall HUDashboardViewController.allowsCondensedAccessoryTiles()()
{
  if ([v0 isEditing])
  {
    return 0;
  }

  v1 = [v0 layoutManager];
  v2 = *&v1[OBJC_IVAR___HUCollectionLayoutManager_layoutOptions];
  v3 = v2;

  if (!v2)
  {
    return 0;
  }

  v4 = [v3 numberOfColumns];

  return v4 < 3;
}

uint64_t HUDashboardViewController.canReorderItem(at:)()
{
  v1 = v0;
  v2 = [v0 context];
  v3 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  LODWORD(v3) = v2[v3];

  if (v3 != 1)
  {
    goto LABEL_13;
  }

  v4 = [v1 itemManager];
  v5 = [v4 sourceItem];

  if (!v5)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_12;
  }

  MEMORY[0x20F31D7A0](&v28, *MEMORY[0x277D13D98]);

  if (!*(&v29 + 1))
  {
LABEL_12:
    sub_20CEF928C(&v28, &qword_27C81BF00);
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = [v1 context];
  v7 = *&v6[OBJC_IVAR___HUDashboardContext_home];

  LOBYTE(v6) = [v7 hf_shouldBlockCurrentUserFromHome];
  if (v6)
  {
    goto LABEL_13;
  }

  v8 = sub_20D5638B8();
  v9 = [v1 itemManager];
  v10 = [v9 displayedSectionIdentifierForSectionIndex_];

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = [v1 itemManager];
  v12 = sub_20D563868();
  v13 = [v11 displayedItemAtIndexPath_];

  if (!v13)
  {

    goto LABEL_13;
  }

  v14 = [v1 itemManager];
  v15 = [v14 itemModuleForSectionIdentifier_];

  if (v15)
  {
    v16 = [v15 supportsReorderingForItem_];

    return v16 & 1;
  }

  v18 = v10;
  v19 = [v1 context];
  v20 = *&v19[OBJC_IVAR___HUDashboardContext_home];

  v21 = HURoomForDashboardSectionIdentifier(v18, v20);
  if (v21)
  {

LABEL_20:
    v16 = 1;
    return v16 & 1;
  }

  v22 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v18);
  if (v22)
  {

    goto LABEL_20;
  }

  v23 = sub_20D567838();
  v25 = v24;
  if (v23 == sub_20D567838() && v25 == v26)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_20D568BF8();
  }

  return v16 & 1;
}

uint64_t sub_20D0E61A4(void *a1)
{
  v4 = v1;
  v42 = sub_20D5638C8();
  v6 = *(v42 - 8);
  *&v7 = MEMORY[0x28223BE20](v42).n128_u64[0];
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 items];
  sub_20CECF940(0, &unk_27C821288);
  v10 = sub_20D567A78();

  if (v10 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    v43 = v4;
    if (!i)
    {

      v13 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v50 = MEMORY[0x277D84F90];
    sub_20CEF0C58(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v13 = v50;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x20F31DD20](v12, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      if ([v15 localObject])
      {
        sub_20D568628();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48 = v46;
      v49 = v47;

      v50 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_20CEF0C58((v16 > 1), v17 + 1, 1);
        v13 = v50;
      }

      ++v12;
      *(v13 + 16) = v17 + 1;
      v18 = v13 + 32 * v17;
      v19 = v49;
      *(v18 + 32) = v48;
      *(v18 + 48) = v19;
    }

    while (i != v12);

    v4 = v43;
LABEL_17:
    v2 = sub_20CFAFEA4(v13);

    if (!v2)
    {
      sub_20D0EB850();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
      return v6;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_43;
    }

    v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_44;
    }

LABEL_20:
    v21 = 0;
    v40 = (v6 + 8);
    v41 = v2 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F98];
    v10 = &selRef_isUserScrubbing;
    v38 = v20;
    v39 = v2;
    while (1)
    {
      if (v41)
      {
        v22 = MEMORY[0x20F31DD20](v21, v2);
      }

      else
      {
        if (v21 >= *(v3 + 16))
        {
          goto LABEL_40;
        }

        v22 = *(v2 + 8 * v21 + 32);
      }

      v23 = v22;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v44 = v21 + 1;
      v24 = [v4 *(v10 + 232)];
      v25 = [v24 indexPathForItem_];

      if (!v25)
      {
        goto LABEL_38;
      }

      sub_20D563878();

      v26 = sub_20D5638B8();
      v27 = [v4 *(v10 + 232)];
      v28 = [v27 displayedSectionIdentifierForSectionIndex_];

      if (!v28)
      {
        (*v40)(v45, v42);
LABEL_38:

        sub_20D0EB850();
        swift_allocError();
        *v35 = 7;
        swift_willThrow();

        return v6;
      }

      if (*(v6 + 16) && (v29 = sub_20CEEDE4C(v26, v28), (v30 & 1) != 0))
      {
        *&v48 = *(*(v6 + 56) + 8 * v29);
        sub_20D5663C8();
      }

      else
      {
        *&v48 = MEMORY[0x277D84F90];
      }

      v31 = v23;
      MEMORY[0x20F31CEE0]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
      v32 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v6;
      sub_20CEF060C(v32, v26, v28, isUniquelyReferenced_nonNull_native);

      v6 = v46;
      (*v40)(v45, v42);
      ++v21;
      v2 = v39;
      v4 = v43;
      v10 = 0x277DD8000;
      if (v44 == v38)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  __break(1u);
LABEL_43:
  v20 = sub_20D568768();
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_44:
  v6 = MEMORY[0x277D84F98];
LABEL_45:

  return v6;
}

void HUDashboardViewController.collectionView(_:dragSessionWillBegin:)()
{
  [v0 setItemShowingSizeToggleButton:0 animated:1];
  v1 = [v0 itemManager];
  v2 = sub_20D5677F8();
  [v1 disableExternalUpdatesWithReason_];
}

void HUDashboardViewController.collectionView(_:dragSessionDidEnd:)()
{
  v1 = [v0 itemManager];
  v2 = sub_20D5677F8();
  [v1 endDisableExternalUpdatesWithReason_];
}

uint64_t HUDashboardViewController.collectionView(_:canHandle:)(int a1, id a2)
{
  if ([a2 localDragSession])
  {
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    sub_20CECF940(0, &unk_28111FB50);
    return [a2 canLoadObjectsOfClass_];
  }
}

void *HUDashboardViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v66 - v8;
  v10 = sub_20D5638C8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CECF940(0, &unk_28111FB50);
  if (![a2 canLoadObjectsOfClass_])
  {
    [a2 locationInView_];
    sub_20D0E741C(v16, v17);
    if (v19)
    {
      v72 = v18;
      v73 = v19;
      v67 = a3;
      v66 = v13;
      v69 = v11;
      v20 = [a2 items];
      sub_20CECF940(0, &unk_27C821288);
      v21 = sub_20D567A78();

      if (v21 >> 62)
      {
        v22 = sub_20D568768();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v70 = v10;
      v68 = v9;
      if (v22)
      {
        v71 = v3;
        v78 = MEMORY[0x277D84F90];
        result = sub_20CEF0C58(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          return result;
        }

        v23 = 0;
        v24 = v78;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x20F31DD20](v23, v21);
          }

          else
          {
            v25 = *(v21 + 8 * v23 + 32);
          }

          v26 = v25;
          if ([v26 localObject])
          {
            sub_20D568628();
            swift_unknownObjectRelease();
          }

          else
          {
            v74 = 0u;
            v75 = 0u;
          }

          v76 = v74;
          v77 = v75;

          v78 = v24;
          v28 = *(v24 + 16);
          v27 = *(v24 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_20CEF0C58((v27 > 1), v28 + 1, 1);
            v24 = v78;
          }

          ++v23;
          *(v24 + 16) = v28 + 1;
          v29 = v24 + 32 * v28;
          v30 = v77;
          *(v29 + 32) = v76;
          *(v29 + 48) = v30;
        }

        while (v22 != v23);

        v3 = v71;
      }

      else
      {

        v24 = MEMORY[0x277D84F90];
      }

      v31 = sub_20CFAFEA4(v24);

      if (v31)
      {
        v42 = sub_20D0EB8A4(v31, v72);

        if (v42)
        {

          v43 = v73;
          v44 = [v3 context];
          sub_20CF032D8(v44, &v76);
          v45 = v76;
          v46 = v77;
          v47 = v70;
          if (v77)
          {
            if (v77 == 1)
            {
              sub_20D5663C8();
            }

            else if (!(v76 ^ 3 | *(&v76 + 1)))
            {
              sub_20CEFF424(v76, *(&v76 + 1), 2);
              sub_20CEFF424(3, 0, 2);

              sub_20CEFF424(v45, *(&v45 + 1), 2);
              v49 = v72;
              if (sub_20D0E7578(a2, v72))
              {
                sub_20D0E7724(a2, v49, v43);
                v65 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
              }

              else
              {
                v65 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
              }

              goto LABEL_47;
            }
          }

          sub_20CEFF424(v45, *(&v45 + 1), v46);
          sub_20CEFF424(3, 0, 2);

          sub_20CEFF424(v45, *(&v45 + 1), v46);
          v50 = sub_20D567838();
          v52 = v51;
          if (v50 == sub_20D567838() && v52 == v53)
          {
          }

          else
          {
            v54 = sub_20D568BF8();

            if ((v54 & 1) == 0)
            {
LABEL_46:
              v57 = [v3 layoutManager];
              v58 = &v57[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
              v59 = *&v57[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
              *(v58 + 1) = 0;
              *(v58 + 2) = 0;
              *v58 = 0;

              v60 = [v3 layoutManager];
              *&v60[OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts] = 0;

              v65 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:3 intent:1];
LABEL_47:
              v41 = v65;
LABEL_48:

              return v41;
            }
          }

          v55 = v68;
          sub_20CEF9178(v67, v68, &qword_27C81D5C0);
          v56 = v69;
          if ((*(v69 + 48))(v55, 1, v47) != 1)
          {
            v61 = v66;
            (*(v56 + 32))(v66, v55, v47);
            v62 = a2;
            v63 = v56;
            sub_20D0E7C50(v62, v72, v43, v61);
            v41 = v64;
            (*(v63 + 8))(v61, v47);
            goto LABEL_48;
          }

          sub_20CEF928C(v55, &qword_27C81D5C0);
          goto LABEL_46;
        }

        sub_20D0EB850();
        v32 = swift_allocError();
        *v48 = 2;
        swift_willThrow();

LABEL_26:
        if (qword_27C81A2C8 != -1)
        {
          swift_once();
        }

        v34 = qword_27C838270;
        v35 = sub_20D567EC8();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v76 = v37;
          *v36 = 136315138;
          swift_getErrorValue();
          v38 = sub_20D568CC8();
          v40 = sub_20CEE913C(v38, v39, &v76);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_20CEB6000, v34, v35, "Drop session not allowed with error %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x20F31FC70](v37, -1, -1);
          MEMORY[0x20F31FC70](v36, -1, -1);
        }

        v41 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];

        return v41;
      }
    }

    sub_20D0EB850();
    v32 = swift_allocError();
    *v33 = 4;
    swift_willThrow();
    goto LABEL_26;
  }

  v14 = objc_allocWithZone(MEMORY[0x277D752E8]);

  return [v14 initWithDropOperation_];
}

void sub_20D0E741C(CGFloat a1, CGFloat a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 numberOfSections];

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
  }

  else
  {
    v7 = 0;
    while (v6 != v7)
    {
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_9;
      }

      v8 = [v2 collectionViewLayout];
      [v8 _layoutFrameForSection_];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v19.origin.x = v10;
      v19.origin.y = v12;
      v19.size.width = v14;
      v19.size.height = v16;
      v18.x = a1;
      v18.y = a2;
      ++v7;
      if (CGRectContainsPoint(v19, v18))
      {
        v17 = [v2 itemManager];
        [v17 displayedSectionIdentifierForSectionIndex_];

        return;
      }
    }
  }
}

BOOL sub_20D0E7578(void *a1, uint64_t a2)
{
  v4 = [a1 items];
  sub_20CECF940(0, &unk_27C821288);
  v5 = sub_20D567A78();

  if (v5 >> 62)
  {
    v6 = sub_20D568768();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != 1)
  {
    return 0;
  }

  v7 = sub_20D0E61A4(a1);
  v8 = sub_20D5663C8();
  v9 = sub_20CFAFB2C(v8);
  v11 = v10;

  if (!v11)
  {

    return 0;
  }

  v12 = *(v7 + 16);

  if (v12 != 1 || v9 != a2)
  {

    return 0;
  }

  v13 = sub_20D567838();
  v15 = v14;
  if (v13 == sub_20D567838() && v15 == v16)
  {

    return 1;
  }

  v18 = sub_20D568BF8();

  return (v18 & 1) != 0;
}

void sub_20D0E7724(void *a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;

  v10 = a3;
  v11 = [v6 context];
  sub_20CF032D8(v11, &v55);

  if (v56 < 2u || v55 ^ 3 | *(&v55 + 1))
  {
    sub_20CEFF424(v55, *(&v55 + 1), v56);
    sub_20CEFF424(3, 0, 2);

    sub_20D0EB850();
    swift_allocError();
    v24 = 6;
    goto LABEL_18;
  }

  sub_20CEFF424(v55, *(&v55 + 1), 2);
  sub_20CEFF424(3, 0, 2);
  v12 = [a1 items];
  sub_20CECF940(0, &unk_27C821288);
  v13 = sub_20D567A78();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_20:

    v16 = MEMORY[0x277D84F90];
LABEL_21:
    v25 = sub_20CFAFEA4(v16);

    if (v25)
    {
      sub_20D0EBE2C(a1, a2, v10);
      if (v5)
      {

LABEL_35:

        return;
      }

      v30 = v28;
      v31 = v29;
      v47 = v26;
      v50 = v27;
      v32 = [v6 layoutManager];
      v34 = *&v32[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
      v33 = *&v32[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition + 8];
      v45 = *&v32[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition + 16];
      v49 = v34;

      if (v34)
      {
        v52 = v6;
        v35 = sub_20D567838();
        v37 = v36;
        if (v35 == sub_20D567838() && v37 == v38)
        {

          v6 = v52;
          if (v33 != v30)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v39 = sub_20D568BF8();

          v6 = v52;
          if ((v39 & 1) == 0 || v33 != v30)
          {
            goto LABEL_34;
          }
        }

        if (v45 == v31)
        {

          goto LABEL_35;
        }
      }

LABEL_34:
      v40 = [v6 layoutManager];
      v41 = &v40[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
      v42 = *&v40[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
      *v41 = v10;
      *(v41 + 1) = v30;
      *(v41 + 2) = v31;

      v43 = [v6 layoutManager];
      v44 = sub_20D0EA59C(v25, v47, v50, v30, v31);

      *&v43[OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts] = v44;

      [v6 reloadLayoutAnimated:1 fastUpdate:1];

      return;
    }

    sub_20D0EB850();
    swift_allocError();
    v24 = 4;
LABEL_18:
    *v23 = v24;
    swift_willThrow();
    return;
  }

  v14 = sub_20D568768();
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_5:
  v46 = a1;
  v48 = a2;
  v51 = v6;
  v57 = MEMORY[0x277D84F90];
  sub_20CEF0C58(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v57;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F31DD20](v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      if ([v18 localObject])
      {
        sub_20D568628();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      v55 = v53;
      v56 = v54;

      v57 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_20CEF0C58((v19 > 1), v20 + 1, 1);
        v16 = v57;
      }

      ++v15;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 32 * v20;
      v22 = v56;
      *(v21 + 32) = v55;
      *(v21 + 48) = v22;
    }

    while (v14 != v15);

    v5 = v4;
    v6 = v51;
    a1 = v46;
    a2 = v48;
    goto LABEL_21;
  }

  __break(1u);
}

void sub_20D0E7C50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = sub_20D0E61A4(a1);
  if (v5)
  {

LABEL_10:
    sub_20D0EB850();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    return;
  }

  v11 = v10;
  if (*(v10 + 16) != 1 || (sub_20CEEDE4C(a2, a3), (v12 & 1) == 0))
  {

    goto LABEL_10;
  }

  v13 = [v6 itemManager];
  v14 = [v13 itemModuleForSectionIdentifier_];

  if (!v14)
  {

LABEL_13:
    [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_13;
  }

  v16 = v15;
  v42 = a4;
  v45 = v14;
  v48 = sub_20D0E3930(v11);

  v17 = [v16 predictedActionSetItems];
  sub_20CECF940(0, &qword_27C81DFD0);
  sub_20CEF7F74(&unk_27C820C80, &qword_27C81DFD0);
  v18 = sub_20D567D08();

  sub_20D09B2B4(v18);
  v20 = v19;

  v44 = v20;
  v41 = v6;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    v20 = v50;
    v46 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
  }

  else
  {
    v25 = -1 << *(v20 + 32);
    v26 = *(v20 + 56);
    v46 = v20 + 56;
    v21 = ~v25;
    v27 = -v25;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v23 = v28 & v26;
    sub_20D5663C8();
    v22 = 0;
  }

  v43 = v21;
  v47 = v20;
  while (v20 < 0)
  {
    v34 = sub_20D568798();
    if (!v34)
    {
      goto LABEL_29;
    }

    v49 = v34;
    sub_20CECF940(0, &qword_281120AC0);
    v29 = swift_dynamicCast();
    v30 = v55;
    if (!v55)
    {
      goto LABEL_29;
    }

LABEL_20:
    v55 = v30;
    MEMORY[0x28223BE20](v29);
    v40[2] = &v55;
    v31 = sub_20CED44F8(sub_20D0EC1FC, v40, v48);

    v20 = v47;
    if (v31)
    {

      sub_20CEC80DC();

      [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];

      return;
    }
  }

  v32 = v22;
  v33 = v23;
  if (!v23)
  {
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v22 >= ((v21 + 64) >> 6))
      {
        goto LABEL_29;
      }

      v33 = *(v46 + 8 * v22);
      ++v32;
      if (v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    return;
  }

LABEL_19:
  v23 = (v33 - 1) & v33;
  v29 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v33)))));
  v30 = v29;
  if (v29)
  {
    goto LABEL_20;
  }

LABEL_29:
  sub_20CEC80DC();

  v35 = [v41 itemManager];
  v36 = sub_20D563868();
  v37 = [v35 displayedItemAtIndexPath_];

  if (v37)
  {
    v38 = sub_20D04898C(v37, v44);

    v39 = v45;
    if (v38)
    {
      [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];

      return;
    }
  }

  else
  {

    v39 = v45;
  }

  [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:3 intent:1];
}

uint64_t HUDashboardViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v35 - v8;
  v40 = sub_20D5638C8();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_20D563868();
  v15 = sub_20D563868();
  v38 = a2;
  v16 = sub_20D563868();
  v41.receiver = v4;
  v41.super_class = HUDashboardViewController;
  v17 = objc_msgSendSuper2(&v41, sel_collectionView_targetIndexPathForMoveOfItemFromOriginalIndexPath_atCurrentIndexPath_toProposedIndexPath_, a1, v14, v15, v16);

  sub_20D563878();
  v18 = [v4 itemManager];
  v19 = sub_20D563868();
  v20 = [v18 displayedItemAtIndexPath_];

  if (v20)
  {
    v21 = sub_20D5638B8();
    v22 = [v4 itemManager];
    v23 = [v22 displayedSectionIdentifierForSectionIndex_];

    if (v23)
    {
      v24 = sub_20D567838();
      v26 = v25;
      if (v24 == sub_20D567838() && v26 == v27)
      {
      }

      else
      {
        v28 = sub_20D568BF8();

        if ((v28 & 1) == 0)
        {
LABEL_9:

          return (*(v9 + 32))(v39, v13, v40);
        }
      }

      sub_20D0A34E4();
      v29 = v40;
      if (sub_20D5677E8())
      {
        goto LABEL_9;
      }

      v30 = v37;
      sub_20D0E8778(v20, v21, v23, v37);

      v31 = *(v9 + 48);
      if (v31(v30, 1, v29) == 1)
      {
        v32 = *(v9 + 32);
        v33 = v36;
        v32(v36, v13, v29);
        if (v31(v30, 1, v29) != 1)
        {
          sub_20CEF928C(v30, &qword_27C81D5C0);
        }
      }

      else
      {
        (*(v9 + 8))(v13, v29);
        v32 = *(v9 + 32);
        v33 = v36;
        v32(v36, v30, v29);
      }

      v32(v13, v33, v29);
    }

    else
    {
    }
  }

  return (*(v9 + 32))(v39, v13, v40);
}

uint64_t sub_20D0E8778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  if (sub_20D5638B8() != a2)
  {
    if (sub_20D5638B8() <= a2)
    {
      v25 = 0;
    }

    else
    {
      v21 = [v4 itemManager];
      v22 = [v21 displayedItemsInSection_];

      sub_20CECF940(0, &qword_281120AC0);
      v23 = sub_20D567A78();

      if (v23 >> 62)
      {
        v24 = sub_20D568768();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 = v24;
    }

    MEMORY[0x20F318D50](v25, a2);
    goto LABEL_15;
  }

  v10 = [v4 itemManager];
  v11 = sub_20D563868();
  v12 = [v10 displayedItemAtIndexPath_];

  if (!v12)
  {
LABEL_19:
    v31 = sub_20D5638C8();
    v27 = *(*(v31 - 8) + 56);
    v28 = v31;
    v29 = a4;
    v30 = 1;
    goto LABEL_20;
  }

  v13 = [v5 itemManager];
  v14 = [v13 itemModuleForSectionIdentifier_];

  if (!v14)
  {
    v14 = v12;
LABEL_18:

    goto LABEL_19;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_18;
  }

  v16 = [v15 predictedActionSetItems];
  sub_20CECF940(0, &qword_27C81DFD0);
  sub_20CEF7F74(&unk_27C820C80, &qword_27C81DFD0);
  v17 = sub_20D567D08();

  sub_20D09B2B4(v17);
  v19 = v18;

  if (sub_20D04898C(a1, v19) & 1) != 0 || (sub_20D04898C(v12, v19))
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_20D568768();
    }

    else
    {
      v20 = *(v19 + 16);
    }

    MEMORY[0x20F318D50](v20, a2);

LABEL_15:
    v26 = sub_20D5638C8();
    v27 = *(*(v26 - 8) + 56);
    v28 = v26;
    v29 = a4;
    v30 = 0;
LABEL_20:

    return v27(v29, v30, 1, v28);
  }

  v33 = sub_20D5638C8();
  (*(*(v33 - 8) + 56))(a4, 1, 1, v33);
}

uint64_t HUDashboardViewController.collectionView(_:performDropWith:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v5 = [a2 session];
  sub_20CECF940(0, &unk_28111FB50);
  v6 = [v5 canLoadObjectsOfClass_];
  swift_unknownObjectRelease();
  v7 = [a2 session];
  if (v6)
  {
    sub_20D0E91A4(v7);

    return swift_unknownObjectRelease();
  }

  [v7 locationInView_];
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
  sub_20D0E741C(v10, v12);
  if (v14)
  {
    v15 = v14;
    v16 = v13;

    v17 = v15;
    v18 = [v2 context];
    sub_20CF032D8(v18, &v38);
    v19 = v38;
    v20 = v39;
    v21 = v40;
    if (v40)
    {
      if (v40 == 1)
      {
        sub_20D5663C8();
      }

      else if (!(v38 ^ 3 | v39))
      {
        sub_20CEFF424(v38, v39, 2);
        sub_20CEFF424(3, 0, 2);

        sub_20CEFF424(v19, v20, 2);
        sub_20D0E944C(a2, v16, v17);
LABEL_17:
        v34 = [v2 layoutManager];
        v35 = &v34[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
        v36 = *&v34[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
        *(v35 + 1) = 0;
        *(v35 + 2) = 0;
        *v35 = 0;

        v37 = [v2 layoutManager];
        *&v37[OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts] = 0;
      }
    }

    sub_20CEFF424(v19, v20, v21);
    sub_20CEFF424(3, 0, 2);

    sub_20CEFF424(v19, v20, v21);
    goto LABEL_17;
  }

  if (qword_27C81A2C8 != -1)
  {
    swift_once();
  }

  v22 = qword_27C838270;
  v23 = sub_20D567EC8();
  result = os_log_type_enabled(v22, v23);
  if (result)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315650;
    v26 = sub_20D568E18();
    v28 = sub_20CEE913C(v26, v27, &v38);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_20CEE913C(0xD000000000000022, 0x800000020D5DA140, &v38);
    *(v24 + 22) = 2080;
    v29 = [a2 description];
    v30 = sub_20D567838();
    v32 = v31;

    v33 = sub_20CEE913C(v30, v32, &v38);

    *(v24 + 24) = v33;
    _os_log_impl(&dword_20CEB6000, v22, v23, "%s %s: Failed to get the destination section %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v25, -1, -1);
    return MEMORY[0x20F31FC70](v24, -1, -1);
  }

  return result;
}

void sub_20D0E91A4(void *a1)
{
  v2 = [a1 items];
  sub_20CECF940(0, &unk_27C821288);
  v3 = sub_20D567A78();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sub_20D568768())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F31DD20](0, v3);
LABEL_6:
    v5 = v4;

    v6 = [v5 itemProvider];

    if (v6)
    {
      sub_20CECF940(0, &unk_28111FB50);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = swift_allocObject();
      *(v8 + 16) = v1;
      v15[4] = sub_20D0EBE0C;
      v15[5] = v8;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_20D0EB4F0;
      v15[3] = &block_descriptor_47;
      v9 = _Block_copy(v15);
      v10 = v1;

      v11 = [v6 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v9];
      _Block_release(v9);

      return;
    }

LABEL_10:
    if (qword_27C81A330 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_11:
  v12 = qword_27C8382C8;
  v13 = sub_20D567EC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20CEB6000, v12, v13, "Cannot found NSItemProvider for external image drop session", v14, 2u);

    JUMPOUT(0x20F31FC70);
  }
}

void sub_20D0E944C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v80 = sub_20D0E61A4([a1 session]);
  v76 = a3;
  v77 = v3;
  swift_unknownObjectRelease();
  v21 = [a1 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821300);
  v22 = sub_20D567A78();

  if (v22 >> 62)
  {
    v23 = sub_20D568768();
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_23:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_10:
  v83 = MEMORY[0x277D84F90];
  sub_20CEF0C58(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v24 = 0;
  v25 = v83;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F31DD20](v24, v22);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v26 = [swift_unknownObjectRetain() dragItem];
    if ([v26 localObject])
    {
      sub_20D568628();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v88 = v86;
    v89 = v87;
    swift_unknownObjectRelease_n();

    v82 = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_20CEF0C58((v27 > 1), v28 + 1, 1);
    }

    ++v24;
    *(v25 + 16) = v28 + 1;
    v29 = v25 + 32 * v28;
    v30 = v89;
    *(v29 + 32) = v88;
    *(v29 + 48) = v30;
  }

  while (v23 != v24);

LABEL_24:
  v31 = sub_20CFAFEA4(v25);

  if (!v31)
  {

    if (qword_27C81A2C8 != -1)
    {
      swift_once();
    }

    v7 = qword_27C838270;
    v8 = sub_20D567EC8();
    if (!os_log_type_enabled(v7, v8))
    {
      return;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v88 = v10;
    *v9 = 136315650;
    v11 = sub_20D568E18();
    v13 = sub_20CEE913C(v11, v12, &v88);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CEE913C(0xD000000000000026, 0x800000020D5DA1E0, &v88);
    *(v9 + 22) = 2080;
    v14 = [a1 items];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821300);
    v16 = sub_20D567A78();

    v17 = MEMORY[0x20F31CF30](v16, v15);
    v19 = v18;

    v20 = sub_20CEE913C(v17, v19, &v88);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s %s: Dropped items without HFItem local objects %s", v9, 0x20u);
LABEL_6:
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
    return;
  }

  v32 = sub_20D5663C8();
  v33 = sub_20CFAFB2C(v32);
  v35 = v34;

  if (!v35)
  {

LABEL_31:

    if (qword_27C81A2C8 == -1)
    {
LABEL_32:
      v37 = qword_27C838270;
      v38 = sub_20D567EC8();
      if (!os_log_type_enabled(v37, v38))
      {
        return;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v88 = v10;
      *v9 = 136315394;
      v39 = sub_20D568E18();
      v41 = sub_20CEE913C(v39, v40, &v88);

      *(v9 + 4) = v41;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_20CEE913C(0xD000000000000026, 0x800000020D5DA1E0, &v88);
      _os_log_impl(&dword_20CEB6000, v37, v38, "%s %s: Tried to drop items coming from multiple sections which is not supported", v9, 0x16u);
      goto LABEL_6;
    }

LABEL_63:
    swift_once();
    goto LABEL_32;
  }

  v36 = v80[2];

  if (v36 != 1)
  {
    goto LABEL_31;
  }

  if (v33 != a2)
  {

    return;
  }

  sub_20D0EBE2C([a1 session], a2, v76);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v81 = v48;
  swift_unknownObjectRelease();
  v49 = sub_20D0EA59C(v31, v43, v81, v45, v47);

  if (!*(v49 + 16) || (v50 = sub_20CEF9358(v76), (v51 & 1) == 0))
  {

    return;
  }

  v52 = *(v49 + 56) + 72 * v50;
  v88 = *v52;
  v54 = *(v52 + 32);
  v53 = *(v52 + 48);
  v55 = *(v52 + 64);
  v89 = *(v52 + 16);
  v90 = v54;
  v92 = v55;
  v91 = v53;
  sub_20CEF9178(&v88, &v86, &qword_27C81C370);

  v79 = sub_20D0E460C();
  sub_20CEF928C(&v88, &qword_27C81C370);
  if (qword_27C81A2C8 != -1)
  {
    swift_once();
  }

  v56 = qword_27C838270;
  v57 = sub_20D567EC8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_20CEB6000, v56, v57, "TILE REORDER: dropped item order:", v58, 2u);
    MEMORY[0x20F31FC70](v58, -1, -1);
  }

  if (v79 >> 62)
  {
    v59 = sub_20D568768();
    if (v59)
    {
      goto LABEL_45;
    }

LABEL_65:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    *(inited + 32) = sub_20D567838();
    *(inited + 40) = v73;
    *(inited + 48) = v79;
    sub_20CEF5B90(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &unk_27C821318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E330);
    v74 = sub_20D567738();

    [v77 didReorderItemWithSortedItemsBySectionID_];

    return;
  }

  v59 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v59)
  {
    goto LABEL_65;
  }

LABEL_45:
  if (v59 >= 1)
  {
    v60 = 0;
    v61 = v79 & 0xC000000000000001;
    v78 = *MEMORY[0x277D13F60];
    v75 = 136315138;
    while (1)
    {
      v62 = v61 ? MEMORY[0x20F31DD20](v60, v79) : *(v79 + 8 * v60 + 32);
      v63 = v62;
      v64 = sub_20D567EC8();
      if (os_log_type_enabled(v56, v64))
      {
        break;
      }

LABEL_48:
      if (v59 == ++v60)
      {
        goto LABEL_65;
      }
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v85 = v66;
    *v65 = v75;
    MEMORY[0x20F31D7A0](&v86, v78);
    if (*(&v87 + 1))
    {
      if (swift_dynamicCast())
      {
        v67 = v82;
        v68 = v84;
LABEL_58:
        v71 = sub_20CEE913C(v67, v68, &v85);

        *(v65 + 4) = v71;
        _os_log_impl(&dword_20CEB6000, v56, v64, "TILE REORDER:    %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x20F31FC70](v66, -1, -1);
        MEMORY[0x20F31FC70](v65, -1, -1);

        v61 = v79 & 0xC000000000000001;
        goto LABEL_48;
      }
    }

    else
    {
      sub_20CEF928C(&v86, &qword_27C81BF00);
    }

    v69 = [v63 description];
    v67 = sub_20D567838();
    v68 = v70;

    goto LABEL_58;
  }

  __break(1u);
}

void HUDashboardViewController.collectionView(_:dropSessionDidEnd:)(uint64_t a1, void *a2)
{
  v4 = [v2 layoutManager];
  v5 = &v4[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
  v6 = *&v4[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;

  v7 = [v2 layoutManager];
  *&v7[OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts] = 0;

  sub_20D0EA1AC(a2);
}

void sub_20D0EA1AC(void *a1)
{
  v2 = sub_20D0E61A4(a1);
  v3 = sub_20D5663C8();
  sub_20CFAFB2C(v3);
  v5 = v4;

  if (v5)
  {
    if (*(v2 + 16) != 1)
    {
      goto LABEL_10;
    }

    v6 = sub_20D5663C8();
    v7 = sub_20CFAFBA8(v6);

    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = v7 >> 62 ? sub_20D568768() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8 == 1)
    {

      v19 = v5;
      v9 = [v1 context];
      sub_20CF032D8(v9, &v20);
      v10 = v20;
      v11 = v21;
      v12 = v22;
      if (!v22)
      {
LABEL_24:
        sub_20CEFF424(v10, v11, v12);
        sub_20CEFF424(3, 0, 2);

        sub_20CEFF424(v10, v11, v12);

        goto LABEL_25;
      }

      if (v22 == 1)
      {
        sub_20D5663C8();
        goto LABEL_24;
      }

      if (v20 ^ 3 | v21)
      {
        goto LABEL_24;
      }

      sub_20CEFF424(v20, v21, 2);
      sub_20CEFF424(3, 0, 2);

      sub_20CEFF424(v10, v11, 2);
      v13 = sub_20CFAFBA8(v2);

      if (!v13)
      {
LABEL_25:

        return;
      }

      if (v13 >> 62)
      {
        v18 = sub_20D568768();
        v14 = v19;
        if (v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = v19;
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_18:
          if ((v13 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x20F31DD20](0, v13);
            goto LABEL_21;
          }

          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v15 = *(v13 + 32);
LABEL_21:
            v16 = v15;

            v17 = swift_dynamicCastObjCProtocolConditional();
            if (v17)
            {
              [v1 setItemShowingSizeToggleButton:v17 animated:1];
            }

            return;
          }

          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }
      }
    }

    else
    {
LABEL_10:
    }
  }
}

uint64_t sub_20D0EA59C(NSObject *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v90 = a5;
  v93 = a2;
  v94 = a4;
  v99 = a3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v86 - v13;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    *&v104 = MEMORY[0x277D84F90];
    result = sub_20CEF0C98(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_70;
    }

    v87 = v6;
    v6 = 0;
    v17 = a1;
    v97 = v10;
    v98 = a1 & 0xC000000000000001;
    result = v104;
    v91 = a1 & 0xFFFFFFFFFFFFFF8;
    v95 = i;
    v96 = a1;
    while (1)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v100 = result;
      if (v98)
      {
        v19 = MEMORY[0x20F31DD20](v6, v17);
      }

      else
      {
        if (v6 >= *(v91 + 16))
        {
          goto LABEL_23;
        }

        v19 = v17[v6 + 4].isa;
      }

      a1 = v19;
      v20 = [v114 itemManager];
      v21 = [v20 indexPathForItem_];

      if (v21)
      {
        v10 = v97;
        sub_20D563878();

        v22 = 0;
      }

      else
      {
        v22 = 1;
        v10 = v97;
      }

      v23 = sub_20D5638C8();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v10, v22, 1, v23);
      sub_20CF5E4EC(v10, v14);
      if ((*(v24 + 48))(v14, 1, v23) == 1)
      {
        sub_20CEF928C(v14, &qword_27C81D5C0);
        v31 = 7;
        goto LABEL_21;
      }

      v10 = sub_20D5638B8();
      (*(v24 + 8))(v14, v23);
      v25 = [v114 itemManager];
      v26 = [v25 displayedSectionIdentifierForSectionIndex_];

      if (!v26)
      {
        v31 = 5;
LABEL_21:
        sub_20D0EB850();
        swift_allocError();
        *v32 = v31;
        swift_willThrow();

        return v10;
      }

      result = v100;
      *&v104 = v100;
      v28 = *(v100 + 16);
      v27 = *(v100 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v92 = v28 + 1;
        sub_20CEF0C98((v27 > 1), v28 + 1, 1);
        v29 = v92;
        result = v104;
      }

      *(result + 16) = v29;
      v30 = (result + 24 * v28);
      v30[4] = v10;
      v30[5] = v26;
      v30[6] = a1;
      ++v6;
      v17 = v96;
      if (v18 == v95)
      {
        v109 = MEMORY[0x277D84F98];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  result = MEMORY[0x277D84F90];
  v29 = *(MEMORY[0x277D84F90] + 16);
  v10 = MEMORY[0x277D84F98];
  v109 = MEMORY[0x277D84F98];
  if (!v29)
  {
LABEL_62:

    return v10;
  }

  v87 = v6;
LABEL_27:
  v33 = 0;
  v34 = v90;
  v95 = (v94 | v90) >> 63;
  v91 = "ileDrop(with:section:)";
  v35 = (result + 48);
  v10 = MEMORY[0x277D84F98];
  v12.n128_u64[0] = 136315906;
  v88 = v12;
  v100 = result;
  v92 = v29;
  while (v33 < *(result + 16))
  {
    v98 = v33;
    v39 = *(v35 - 2);
    v40 = *v35;
    v41 = *(v35 - 1);
    v42 = v40;
    v43 = v114;

    v44 = v41;
    v45 = [v43 context];
    sub_20CF032D8(v45, &v104);

    v46 = v105;
    if (v105 < 2u || (v46 = 2, v104 ^ 3 | *(&v104 + 1)))
    {
      sub_20CEFF424(v104, *(&v104 + 1), v46);
      sub_20CEFF424(3, 0, 2);

      sub_20D0EB850();
      swift_allocError();
      v85 = 6;
LABEL_65:
      *v84 = v85;
      swift_willThrow();

      return v10;
    }

    sub_20CEFF424(v104, *(&v104 + 1), 2);
    sub_20CEFF424(3, 0, 2);
    if (v39 != v93)
    {

LABEL_64:
      sub_20D0EB850();
      swift_allocError();
      v85 = 2;
      goto LABEL_65;
    }

    v97 = v44;
    v47 = sub_20D567838();
    v49 = v48;
    if (v47 == sub_20D567838() && v49 == v50)
    {
      v51 = v99;
    }

    else
    {
      v52 = sub_20D568BF8();
      v53 = v99;

      if ((v52 & 1) == 0)
      {

        v44 = v97;
        goto LABEL_64;
      }
    }

    v54 = [v114 layoutManager];
    v55 = sub_20CEFC9BC(v42);
    v57 = v56;

    if (v10[2] && (v58 = sub_20CEF9358(v99), (v59 & 1) != 0))
    {
      v60 = v10[7] + 72 * v58;
      v102[0] = *v60;
      v62 = *(v60 + 32);
      v61 = *(v60 + 48);
      v63 = *(v60 + 64);
      v102[1] = *(v60 + 16);
      v102[2] = v62;
      v103 = v63;
      v102[3] = v61;
      v64 = *v60;
      v65 = *(v60 + 16);
      v66 = *(v60 + 32);
      v67 = *(v60 + 48);
      v108 = *(v60 + 64);
      v106 = v66;
      v107 = v67;
      v104 = v64;
      v105 = v65;
      result = sub_20CEF9178(v102, &v101, &qword_27C81C370);
    }

    else
    {
      v68 = v114;
      v69 = [v114 layoutManager];
      v70 = [v68 itemManager];
      v71 = [v70 displayedItemsInSection_];

      sub_20CECF940(0, &qword_281120AC0);
      v72 = sub_20D567A78();

      sub_20CEFAEA4(v72, 0, &v104);
    }

    if (v106)
    {
      v73 = v95;
      if (*(&v104 + 1) < v34)
      {
        v73 = 1;
      }

      v74 = v42;
      if (v73)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!*(&v105 + 1))
      {
        goto LABEL_68;
      }

      v74 = v42;
      if (v94 == 0x8000000000000000 && *(&v105 + 1) == -1)
      {
        goto LABEL_69;
      }

      if ((*(&v105 + 1) & 0x8000000000000000) != 0 || (v94 & 0x8000000000000000) != 0 || v34 < 0 || *(&v104 + 1) < v34)
      {
LABEL_54:
        if (qword_27C81A2C8 != -1)
        {
          swift_once();
        }

        v75 = qword_27C838270;
        v76 = v99;
        v77 = sub_20D567EC8();
        v96 = v75;
        if (os_log_type_enabled(v75, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *&v102[0] = v79;
          *v78 = v88.n128_u32[0];
          v80 = sub_20D568E18();
          v82 = sub_20CEE913C(v80, v81, v102);
          v34 = v90;

          *(v78 + 4) = v82;
          *(v78 + 12) = 2080;
          *(v78 + 14) = sub_20CEE913C(0xD000000000000029, v91 | 0x8000000000000000, v102);
          *(v78 + 22) = 2048;

          *(v78 + 24) = v94;
          *(v78 + 32) = 2048;

          *(v78 + 34) = v34;
          _os_log_impl(&dword_20CEB6000, v96, v77, "%s %s: Invalid (ignored) drop position: (row: %ld, column: %ld)", v78, 0x2Au);
          swift_arrayDestroy();
          v83 = v79;
          v74 = v42;
          MEMORY[0x20F31FC70](v83, -1, -1);
          MEMORY[0x20F31FC70](v78, -1, -1);
        }

        else
        {
        }

        v36 = v98;
        goto LABEL_29;
      }
    }

    v112[2] = v106;
    v112[3] = v107;
    v113 = v108;
    v112[0] = v104;
    v112[1] = v105;
    sub_20D0E3C80(v74, v94, v34, v55, v57, 0, &v104);
    sub_20CEF928C(v112, &qword_27C81C370);
    v36 = v98;
LABEL_29:
    v33 = v36 + 1;
    v110[2] = v106;
    v110[3] = v107;
    v111 = v108;
    v110[0] = v104;
    v110[1] = v105;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v109;
    v38 = v99;
    sub_20CEF0754(v110, v99, isUniquelyReferenced_nonNull_native);

    v10 = v101;
    v109 = v101;
    swift_endAccess();

    v35 += 3;
    result = v100;
    if (v92 == v33)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}