uint64_t sub_20D9560F4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20D956200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C460, &unk_20D97FE28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D7EB7E8(a1, &v6 - v4, &qword_27C83C460, &unk_20D97FE28);
  return sub_20D973F98();
}

uint64_t sub_20D956314(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D956390()
{
  result = qword_27C83C3B0;
  if (!qword_27C83C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C3B8, &qword_20D97FD38);
    sub_20D956448();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C3B0);
  }

  return result;
}

unint64_t sub_20D956448()
{
  result = qword_27C83C3C0;
  if (!qword_27C83C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C3C8, &qword_20D97FD40);
    sub_20D956500();
    sub_20D7EBC4C(&qword_27C83C3E8, &qword_27C83C3F0, &unk_20D97FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C3C0);
  }

  return result;
}

unint64_t sub_20D956500()
{
  result = qword_27C83C3D0;
  if (!qword_27C83C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C3D8, &qword_20D97FD48);
    sub_20D9502D0(&qword_27C83C3E0, type metadata accessor for UtilityPeakSquare);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C3D0);
  }

  return result;
}

uint64_t sub_20D9565DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UtilityPeaksGrid(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D94FD60(a1, v6, a2);
}

unint64_t sub_20D956688()
{
  result = qword_27C83C468;
  if (!qword_27C83C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA30, &unk_20D97E930);
    sub_20D7EBC4C(&qword_27C83C470, &qword_27C83C478, &unk_20D97FE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C468);
  }

  return result;
}

uint64_t sub_20D956740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D9567A0()
{
  result = qword_27C83C4C0;
  if (!qword_27C83C4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C4B8, &qword_20D97FEA0);
    sub_20D95682C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C4C0);
  }

  return result;
}

unint64_t sub_20D95682C()
{
  result = qword_27C83C4C8;
  if (!qword_27C83C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C4D0, &qword_20D97FEA8);
    sub_20D9568B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C4C8);
  }

  return result;
}

unint64_t sub_20D9568B8()
{
  result = qword_27C83C4D8;
  if (!qword_27C83C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C4D8);
  }

  return result;
}

void sub_20D956954()
{
  sub_20D94CBC8(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_20D956A30()
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20D956AB4()
{
  result = qword_27C83C508;
  if (!qword_27C83C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C510, &qword_20D97FF58);
    sub_20D956B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C508);
  }

  return result;
}

unint64_t sub_20D956B38()
{
  result = qword_27C83C518;
  if (!qword_27C83C518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C520, &qword_20D97FF60);
    sub_20D9500A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C518);
  }

  return result;
}

unint64_t sub_20D956BC4()
{
  result = qword_27C83C528;
  if (!qword_27C83C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C530, &qword_20D97FF68);
    sub_20D956C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C528);
  }

  return result;
}

unint64_t sub_20D956C48()
{
  result = qword_27C83C538;
  if (!qword_27C83C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C2E8, &qword_20D97FCA0);
    sub_20D956314(&qword_27C83C2F8, &qword_27C83C2E0, &qword_20D97FC98, sub_20D9500FC);
    sub_20D950338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C538);
  }

  return result;
}

unint64_t sub_20D956D00()
{
  result = qword_27C83C540;
  if (!qword_27C83C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C368, &qword_20D97FD08);
    sub_20D7EBC4C(&qword_27C83C548, &qword_27C83C550, &qword_20D97FF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C540);
  }

  return result;
}

unint64_t sub_20D956DB8()
{
  result = qword_27C83C558;
  if (!qword_27C83C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C560, &qword_20D97FF78);
    sub_20D7EBC4C(&qword_27C83C388, &qword_27C83C378, &qword_20D97FD18);
    sub_20D9502D0(&qword_281126F38, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C558);
  }

  return result;
}

unint64_t sub_20D956EA0()
{
  result = qword_27C83C568;
  if (!qword_27C83C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C570, &qword_20D97FF80);
    sub_20D7EBC4C(&qword_27C83C428, &qword_27C83C408, &qword_20D97FD70);
    sub_20D7EBC4C(&qword_27C83C430, &qword_27C83C3F8, &qword_20D97FD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C568);
  }

  return result;
}

unint64_t sub_20D956FF4()
{
  result = qword_27C83C5B8;
  if (!qword_27C83C5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C590, &qword_20D9800E0);
    sub_20D7EBC4C(&qword_27C83C5C0, &qword_27C83C5C8, &qword_20D980100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C5B8);
  }

  return result;
}

unint64_t sub_20D9570AC()
{
  result = qword_27C83C5F8;
  if (!qword_27C83C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C5F0, &qword_20D980158);
    sub_20D957164();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C5F8);
  }

  return result;
}

unint64_t sub_20D957164()
{
  result = qword_27C83C600;
  if (!qword_27C83C600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C608, &qword_20D980160);
    sub_20D95721C();
    sub_20D7EBC4C(&qword_27C83C630, &qword_27C83C638, &unk_20D980178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C600);
  }

  return result;
}

unint64_t sub_20D95721C()
{
  result = qword_27C83C610;
  if (!qword_27C83C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C618, &qword_20D980168);
    sub_20D9572A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C610);
  }

  return result;
}

unint64_t sub_20D9572A8()
{
  result = qword_27C83C620;
  if (!qword_27C83C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C628, &qword_20D980170);
    sub_20D7F0198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C620);
  }

  return result;
}

unint64_t sub_20D957334()
{
  result = qword_27C83C668;
  if (!qword_27C83C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C660, &qword_20D9801A8);
    sub_20D9573EC();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C668);
  }

  return result;
}

unint64_t sub_20D9573EC()
{
  result = qword_27C83C670;
  if (!qword_27C83C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C678, &unk_20D9801B0);
    sub_20D7EBC4C(&qword_27C83C630, &qword_27C83C638, &unk_20D980178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C670);
  }

  return result;
}

uint64_t sub_20D9574D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_20D957568()
{
  result = qword_27C83C6D0;
  if (!qword_27C83C6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C6A0, &qword_20D9801E8);
    sub_20D7EBC4C(&qword_27C83C6C8, &qword_27C83C6B8, &qword_20D980220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C6D0);
  }

  return result;
}

unint64_t sub_20D957618()
{
  result = qword_27C83C700;
  if (!qword_27C83C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C580, &qword_20D9800D0);
    sub_20D7EBC4C(&qword_27C83C708, &qword_27C83C710, &qword_20D980250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C700);
  }

  return result;
}

unint64_t sub_20D9576D0()
{
  result = qword_27C83C718;
  if (!qword_27C83C718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C720, &qword_20D980258);
    sub_20D7EBC4C(&qword_27C83C5B0, &qword_27C83C5A0, &qword_20D9800F0);
    sub_20D956FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C718);
  }

  return result;
}

unint64_t sub_20D957788()
{
  result = qword_27C83C728;
  if (!qword_27C83C728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C648, &qword_20D980190);
    sub_20D7EBC4C(&qword_27C83C730, &qword_27C83C738, &unk_20D980260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C728);
  }

  return result;
}

unint64_t sub_20D957840()
{
  result = qword_27C83C740;
  if (!qword_27C83C740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C698, &qword_20D9801E0);
    sub_20D7EBC4C(&qword_27C83C748, &qword_27C83C688, &qword_20D9801D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C740);
  }

  return result;
}

uint64_t HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v50 = a1;
  v45 = sub_20D972E88();
  v51 = *(v45 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v45);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v20 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - v21;
  v22 = type metadata accessor for HistoricalUsageSnapshot();
  v23 = a2 + *(v22 + 36);
  sub_20D971D78();
  v44 = v22;
  v24 = a2;
  v25 = a2 + *(v22 + 40);
  sub_20D971D48();
  sub_20D925CA0(&qword_281126E30);
  result = sub_20D974FC8();
  if (result)
  {
    v42 = v6;
    v27 = *(v13 + 32);
    v27(v11, v19, v12);
    v40 = v13;
    v41 = v19;
    v28 = v13;
    v29 = v48;
    v27(&v11[*(v48 + 48)], v17, v12);
    v30 = v47;
    sub_20D7EB7E8(v11, v47, &unk_27C83C750, &unk_20D978DD0);
    v31 = *(v29 + 48);
    v32 = v43;
    v27(v43, v30, v12);
    v39 = v24;
    v33 = *(v28 + 8);
    v33(v30 + v31, v12);
    sub_20D7EAF18(v11, v30, &unk_27C83C750, &unk_20D978DD0);
    v27((v32 + *(v46 + 36)), (v30 + *(v29 + 48)), v12);
    v33(v30, v12);
    v34 = v39;
    v35 = v42;
    (*(v51 + 16))(v42, v39 + *(v44 + 48), v45);
    v36 = v41;
    v37 = v50;
    (*(v40 + 16))(v41, v50, v12);
    HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v32, v35, v36, v49);
    sub_20D7FEF04(v34);
    return (v33)(v37, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v337 = a3;
  v330 = a1;
  v319 = sub_20D972AF8();
  v336 = *(v319 - 8);
  v6 = *(v336 + 64);
  v7 = MEMORY[0x28223BE20](v319);
  v314 = &v285 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v328 = (&v285 - v9);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v321 = *(v322 - 8);
  v10 = *(v321 + 8);
  v11 = MEMORY[0x28223BE20](v322);
  v309 = &v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v334 = &v285 - v14;
  MEMORY[0x28223BE20](v13);
  v304 = &v285 - v15;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v16 = *(*(v325 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v325);
  v324 = &v285 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v323 = &v285 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0C0, &qword_20D980270);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v290 = &v285 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C760, &unk_20D97D090);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v289 = &v285 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v311 = &v285 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v297 = &v285 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v305 = &v285 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v318 = &v285 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v329 = &v285 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v312 = (&v285 - v42);
  MEMORY[0x28223BE20](v41);
  v292 = &v285 - v43;
  v344 = sub_20D972C58();
  v340 = *(v344 - 1);
  v44 = *(v340 + 64);
  v45 = MEMORY[0x28223BE20](v344);
  v287 = &v285 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v293 = &v285 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v299 = &v285 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v288 = &v285 - v52;
  MEMORY[0x28223BE20](v51);
  v303 = &v285 - v53;
  v54 = sub_20D972628();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v307 = (&v285 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x28223BE20](v57);
  v296 = &v285 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v326 = &v285 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v294 = &v285 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v342 = &v285 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v285 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v291 = &v285 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v302 = &v285 - v72;
  MEMORY[0x28223BE20](v71);
  v295 = &v285 - v73;
  v74 = sub_20D9727B8();
  v75 = *(v74 - 8);
  v76 = v75[8];
  MEMORY[0x28223BE20](v74);
  v78 = &v285 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v80 = *(v79 + 44);
  v333 = v55;
  v81 = *(v55 + 56);
  v310 = v80;
  v327 = v55 + 56;
  v335 = v81;
  v81(a4 + v80, 1, 1, v54);
  v331 = v79;
  v82 = *(v79 + 60);
  v339 = a4;
  v308 = v82;
  *(a4 + v82) = 0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v320 = v24;
  v338 = v54;
  v306 = sub_20D9734F8();
  __swift_project_value_buffer(v306, qword_28112AB90);
  v83 = sub_20D9734D8();
  v84 = sub_20D975478();
  v85 = os_log_type_enabled(v83, v84);
  v343 = a2;
  if (v85)
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_20D7C9000, v83, v84, "Init HistoricalUsageSnapshotDerivedInfo", v86, 2u);
    MEMORY[0x20F324260](v86, -1, -1);
  }

  v87 = v339;
  sub_20D972E58();
  v88 = v331;
  v89 = v87 + v331[5];
  sub_20D972AB8();
  v332 = v87 + v88[16];
  sub_20D972E48();
  v316 = v87 + v88[7];
  sub_20D7EB7E8(v330, v316, &qword_27C839550, &qword_20D979C30);
  v90 = *MEMORY[0x277CC9968];
  v91 = v75[13];
  v91(v78, v90, v74);
  v315 = v89;
  v92 = sub_20D9727A8();
  v93 = v75[1];
  v93(v78, v74);
  if ((v92 & 1) == 0)
  {
    goto LABEL_10;
  }

  v94 = sub_20D972E38();
  v95 = *(v94 + 16);
  if (!v95)
  {

    v87 = v339;
    v88 = v331;
LABEL_10:
    v111 = 0;
    *(v87 + v88[9]) = 0;
    v112 = v319;
    v106 = v338;
    v114 = v329;
    goto LABEL_24;
  }

  v96 = v340;
  v317 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v313 = *(v340 + 72);
  v97 = *(v340 + 16);
  v301 = v74;
  v98 = v303;
  v99 = v344;
  v97(v303, v94 + v317 + v313 * (v95 - 1), v344);

  v101 = v302;
  MEMORY[0x20F320DF0](v100);
  (*(v96 + 8))(v98, v99);
  v102 = v333;
  v103 = v295;
  v104 = v101;
  v105 = (v333 + 32);
  v106 = v338;
  v303 = *(v333 + 32);
  (v303)(v295, v104, v338);
  v107 = v90;
  v108 = v301;
  v91(v78, v107, v301);
  v109 = v292;
  sub_20D972758();
  v93(v78, v108);
  v110 = v312;
  sub_20D7EB7E8(v109, v312, &qword_27C8389E8, &qword_20D9768D0);
  if ((*(v102 + 48))(v110, 1, v106) == 1)
  {
    sub_20D7E3944(v109, &qword_27C8389E8, &qword_20D9768D0);
    (*(v102 + 8))(v103, v106);
    sub_20D7E3944(v110, &qword_27C8389E8, &qword_20D9768D0);
    v111 = 0;
    v87 = v339;
    v112 = v319;
    v113 = v331;
    v114 = v329;
  }

  else
  {
    v115 = v291;
    (v303)(v291, v110, v106);
    v116 = v337;
    v117 = sub_20D972538();
    v87 = v339;
    v112 = v319;
    v114 = v329;
    if (v117)
    {
      v312 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
      v118 = v333;
      v119 = (*(v333 + 80) + 32) & ~*(v333 + 80);
      v302 = *(v333 + 72);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_20D979110;
      v121 = *(v118 + 16);
      v286 = v119;
      v121(v120 + v119, v115, v106);
      v346 = v120;
      sub_20D925CA0(&qword_281126E30);
      result = sub_20D974FC8();
      if ((result & 1) == 0)
      {
LABEL_96:
        __break(1u);
        return result;
      }

      v123 = v118;
      v124 = v116;
      v125 = v323;
      v121(v323, v115, v106);
      v126 = v325;
      v127 = v125 + *(v325 + 48);
      v301 = v118 + 16;
      v300 = v121;
      v121(v127, v124, v106);
      v128 = v324;
      sub_20D7EB7E8(v125, v324, &unk_27C83C750, &unk_20D978DD0);
      v298 = *(v126 + 48);
      v129 = v290;
      v130 = v303;
      (v303)(v290, v128, v106);
      v131 = *(v123 + 8);
      v131(&v298[v128], v106);
      v132 = v125;
      v133 = (v123 + 8);
      sub_20D7EAF18(v132, v128, &unk_27C83C750, &unk_20D978DD0);
      v134 = v322;
      v130(v129 + *(v322 + 36), v128 + *(v126 + 48), v106);
      v135 = v128;
      v136 = v131;
      v131(v135, v106);
      (*(v321 + 7))(v129, 0, 1, v134);
      v137 = v289;
      v138 = v291;
      sub_20D972768();
      sub_20D7E3944(v129, &qword_27C83B0C0, &qword_20D980270);
      sub_20D95A7B8(v137);
      v139 = v346;
      v140 = *(v346 + 16);
      v141 = v138;
      v142 = v288;
      if (v140)
      {
        v303 = v136;
        v312 = v133;
        v345 = MEMORY[0x277D84F90];
        sub_20D95D484(0, v140, 0);
        v111 = v345;
        v285 = v139;
        v143 = v139 + v286;
        v298 = (v340 + 32);
        do
        {
          v144 = v341;
          v145 = v106;
          v146 = v106;
          v147 = v300;
          v300(v341, v143, v145);
          v147(v342, v144, v146);
          sub_20D972C48();
          (v303)(v144, v146);
          v345 = v111;
          v149 = *(v111 + 16);
          v148 = *(v111 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_20D95D484(v148 > 1, v149 + 1, 1);
            v111 = v345;
          }

          *(v111 + 16) = v149 + 1;
          (*v298)(v111 + v317 + v149 * v313, v142, v344);
          v143 += v302;
          --v140;
          v106 = v146;
        }

        while (v140);
        v151 = v303;
        (v303)(v291, v146);
        sub_20D7E3944(v292, &qword_27C8389E8, &qword_20D9768D0);
        v151(v295, v146);

        v87 = v339;
      }

      else
      {

        (v136)(v141, v106);
        sub_20D7E3944(v292, &qword_27C8389E8, &qword_20D9768D0);
        (v136)(v295, v106);
        v111 = MEMORY[0x277D84F90];
      }

      v113 = v331;
      v112 = v319;
      v114 = v329;
      if (!*(v111 + 16))
      {

        v111 = 0;
      }
    }

    else
    {
      v150 = *(v333 + 8);
      v150(v115, v106);
      sub_20D7E3944(v109, &qword_27C8389E8, &qword_20D9768D0);
      v150(v295, v106);
      v111 = 0;
      v113 = v331;
    }
  }

  *(v87 + *(v113 + 36)) = v111;

LABEL_24:
  v152 = *(v336 + 16);
  v313 = v336 + 16;
  v312 = v152;
  (v152)(v328, v87, v112);
  v153 = sub_20D972E38();
  v154 = *(v153 + 16);
  if (v154)
  {
    v155 = v340;
    v156 = v299;
    v157 = v344;
    (*(v340 + 16))(v299, v153 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * (v154 - 1), v344);

    MEMORY[0x20F320DF0](v158);
    (*(v155 + 8))(v156, v157);
    v159 = 0;
  }

  else
  {

    v159 = 1;
  }

  v160 = 1;
  v335(v114, v159, 1, v106);
  if (v111)
  {
    v161 = *(v111 + 16);
    if (v161)
    {
      v162 = v87;
      v163 = v340;
      v164 = v293;
      v165 = v344;
      (*(v340 + 16))(v293, v111 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * (v161 - 1), v344);

      v167 = v318;
      MEMORY[0x20F320DF0](v166);
      (*(v163 + 8))(v164, v165);
      v160 = 0;
      goto LABEL_33;
    }

    v162 = v87;
  }

  else
  {
    v162 = v87;
  }

  v167 = v318;
LABEL_33:
  v168 = v335;
  v335(v167, v160, 1, v106);
  v169 = v320;
  v170 = v328;
  v171 = v329;
  sub_20D95B3C0(v328, v329, v167, v332, v320);
  sub_20D7E3944(v167, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v171, &qword_27C8389E8, &qword_20D9768D0);
  v172 = *(v336 + 8);
  v303 = (v336 + 8);
  v302 = v172;
  (v172)(v170, v112);
  v173 = v322;
  if ((*(v321 + 6))(v169, 1, v322) == 1)
  {
    sub_20D7E3944(v169, &qword_27C83B0C0, &qword_20D980270);
    v174 = 0;
    v175 = v331;
    v176 = v162;
    v177 = v333;
    goto LABEL_47;
  }

  v178 = v173;
  v179 = v304;
  sub_20D7EAF18(v169, v304, &qword_27C839550, &qword_20D979C30);
  v177 = v333;
  v180 = (v333 + 16);
  v181 = v305;
  v329 = *(v333 + 16);
  (v329)(v305, v179, v106);
  v168(v181, 0, 1, v106);
  v182 = v181;
  v183 = *(v178 + 36);
  v184 = v297;
  sub_20D7EB7E8(v182, v297, &qword_27C8389E8, &qword_20D9768D0);
  v176 = v162;
  if ((*(v177 + 48))(v184, 1, v106) == 1)
  {
    sub_20D7E3944(v182, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v179, &qword_27C839550, &qword_20D979C30);
    sub_20D7E3944(v184, &qword_27C8389E8, &qword_20D9768D0);
    v174 = 0;
    v112 = v319;
    v175 = v331;
LABEL_46:
    v173 = v322;
    goto LABEL_47;
  }

  v185 = *(v177 + 32);
  v186 = v184;
  v187 = v294;
  v185(v294, v186, v106);
  if ((sub_20D972538() & 1) == 0)
  {
    (*(v177 + 8))(v187, v106);
    sub_20D7E3944(v305, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v179, &qword_27C839550, &qword_20D979C30);
    v174 = 0;
    v112 = v319;
    v175 = v331;
    goto LABEL_46;
  }

  v328 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
  v188 = (*(v177 + 80) + 32) & ~*(v177 + 80);
  v320 = *(v177 + 72);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_20D979110;
  v317 = v188;
  v190 = v329;
  (v329)(v189 + v188, v187, v106);
  v346 = v189;
  sub_20D925CA0(&qword_281126E30);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v191 = v323;
  v190(v323, v187, v106);
  v192 = v190;
  v193 = v325;
  v192(v191 + *(v325 + 48), v304 + v183, v106);
  v194 = v324;
  sub_20D7EB7E8(v191, v324, &unk_27C83C750, &unk_20D978DD0);
  v318 = *(v193 + 48);
  v195 = v290;
  (v328)(v290, v194, v106);
  v197 = (v333 + 8);
  v196 = *(v333 + 8);
  v196(v194 + v318, v106);
  sub_20D7EAF18(v191, v194, &unk_27C83C750, &unk_20D978DD0);
  v198 = *(v193 + 48);
  v173 = v322;
  (v328)(v195 + *(v322 + 36), v194 + v198, v106);
  v199 = v294;
  v200 = v196;
  v328 = v197;
  v196(v194, v106);
  (*(v321 + 7))(v195, 0, 1, v173);
  v201 = v289;
  v202 = v199;
  sub_20D972768();
  sub_20D7E3944(v195, &qword_27C83B0C0, &qword_20D980270);
  sub_20D95A7B8(v201);
  v203 = v346;
  v204 = *(v346 + 16);
  if (v204)
  {
    v321 = v200;
    v318 = v180;
    v345 = MEMORY[0x277D84F90];
    sub_20D95D484(0, v204, 0);
    v174 = v345;
    v301 = v203;
    v205 = v203 + v317;
    v317 = v340 + 32;
    v206 = v287;
    do
    {
      v207 = v341;
      v208 = v338;
      v209 = v329;
      (v329)(v341, v205, v338);
      v209(v342, v207, v208);
      sub_20D972C48();
      v321(v207, v208);
      v345 = v174;
      v211 = *(v174 + 16);
      v210 = *(v174 + 24);
      if (v211 >= v210 >> 1)
      {
        sub_20D95D484(v210 > 1, v211 + 1, 1);
        v174 = v345;
      }

      *(v174 + 16) = v211 + 1;
      (*(v340 + 32))(v174 + ((*(v340 + 80) + 32) & ~*(v340 + 80)) + *(v340 + 72) * v211, v206, v344);
      v205 += v320;
      --v204;
    }

    while (v204);
    v106 = v338;
    v321(v294, v338);
    sub_20D7E3944(v305, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v304, &qword_27C839550, &qword_20D979C30);

    v176 = v339;
    v173 = v322;
  }

  else
  {

    v200(v202, v106);
    sub_20D7E3944(v305, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v304, &qword_27C839550, &qword_20D979C30);
    v174 = MEMORY[0x277D84F90];
  }

  v177 = v333;
  v112 = v319;
  v175 = v331;
  if (!*(v174 + 16))
  {

    v174 = 0;
  }

LABEL_47:
  *(v176 + v175[10]) = v174;
  v212 = sub_20D972E38();
  MEMORY[0x28223BE20](v212);
  v213 = v315;
  *(&v285 - 4) = v176;
  *(&v285 - 3) = v213;
  *(&v285 - 2) = v332;
  v214 = sub_20D95A3E8(sub_20D95D45C, (&v285 - 6), v212);

  *(v176 + v175[12]) = v214;
  v215 = v314;
  (v312)(v314, v176, v112);
  v216 = (*(v336 + 88))(v215, v112);
  if (v216 == *MEMORY[0x277D075B0])
  {
    sub_20D973018();
LABEL_57:
    *(v176 + v175[6]) = v217;
    goto LABEL_58;
  }

  if (v216 == *MEMORY[0x277D075B8])
  {
    sub_20D973058();
    goto LABEL_57;
  }

  if (v216 == *MEMORY[0x277D075C8])
  {
    sub_20D9730A8();
    goto LABEL_57;
  }

  if (v216 == *MEMORY[0x277D075D0])
  {
    sub_20D9730A8();
    v217 = v218 * 6.0;
    goto LABEL_57;
  }

  if (v216 == *MEMORY[0x277D075C0])
  {
    sub_20D973068();
    goto LABEL_57;
  }

  sub_20D973058();
  *(v176 + v175[6]) = v284;
  (v302)(v215, v112);
LABEL_58:
  sub_20D972CE8();
  v220 = fmin(-v219, 0.0);
  sub_20D972CF8();
  if (v220 > v221)
  {
    __break(1u);
    goto LABEL_86;
  }

  v222 = v221;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C770, &qword_20D980278);
  v223 = swift_allocObject();
  *(v223 + 16) = xmmword_20D977210;
  v224 = round(v220);
  if ((*&v224 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v224 <= -9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v224 >= 9.22337204e18)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  *(v223 + 32) = v224;
  v225 = round(v222);
  if ((*&v225 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v225 <= -9.22337204e18)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v225 >= 9.22337204e18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  *(v223 + 40) = v225;
  v226 = v176 + v175[14];
  *v226 = v220;
  *(v226 + 8) = v222;
  *(v226 + 16) = v223;
  sub_20D972E08();
  v227 = v334;
  sub_20D972DE8();
  sub_20D7EB7E8(v227, v176 + v175[13], &qword_27C839550, &qword_20D979C30);
  v228 = *(v173 + 36);
  v215 = sub_20D925CA0(&qword_281126E30);
  v229 = v316;
  if ((sub_20D974FC8() & 1) == 0)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v332 = v215;
  v230 = v177 + 16;
  v231 = *(v177 + 16);
  v232 = v177;
  v233 = v323;
  v231(v323, v229, v106);
  v234 = v325;
  v235 = v233 + *(v325 + 48);
  v340 = v230;
  v342 = v231;
  v231(v235, v229 + v228, v106);
  v236 = v324;
  sub_20D7EB7E8(v233, v324, &unk_27C83C750, &unk_20D978DD0);
  v237 = *(v234 + 48);
  v238 = v176 + v175[8];
  v239 = v232;
  v240 = *(v232 + 32);
  v240(v238, v236, v106);
  v241 = *(v232 + 8);
  v241(v236 + v237, v106);
  sub_20D7EAF18(v233, v236, &unk_27C83C750, &unk_20D978DD0);
  v242 = *(v234 + 48);
  v243 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80) + 36);
  v331 = v238;
  v329 = v243;
  v244 = v339;
  v336 = v232 + 32;
  v240(&v243[v238], v236 + v242, v106);
  v245 = v240;
  v341 = (v239 + 8);
  v344 = v241;
  v241(v236, v106);
  v246 = v310;
  sub_20D7E3944(v244 + v310, &qword_27C8389E8, &qword_20D9768D0);
  v247 = v335;
  v335(v244 + v246, 1, 1, v106);
  v248 = v311;
  sub_20D95C8A4(v311);
  if ((*(v333 + 48))(v248, 1, v106) == 1)
  {
    sub_20D7E3944(v248, &qword_27C8389E8, &qword_20D9768D0);
    goto LABEL_70;
  }

  v249 = v246;
  v250 = v296;
  v245(v296, v248, v106);
  sub_20D7E3944(v244 + v249, &qword_27C8389E8, &qword_20D9768D0);
  v251 = v342;
  (v342)(v244 + v249, v250, v106);
  v247(v244 + v249, 0, 1, v106);
  v252 = v316;
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  v253 = v323;
  v251(v323, v252, v106);
  v254 = v325;
  v245((v253 + *(v325 + 48)), v250, v106);
  v255 = v324;
  sub_20D7EB7E8(v253, v324, &unk_27C83C750, &unk_20D978DD0);
  v256 = *(v254 + 48);
  v257 = v331;
  sub_20D7E3944(v331, &qword_27C83A698, &qword_20D97CB80);
  v245(v257, v255, v106);
  v258 = v245;
  v259 = v344;
  (v344)(v255 + v256, v106);
  sub_20D7EAF18(v253, v255, &unk_27C83C750, &unk_20D978DD0);
  v258(&v329[v257], v255 + *(v254 + 48), v106);
  v259(v255, v106);
LABEL_70:
  v215 = v337;
  v177 = v309;
  v175 = v307;
  if (qword_281125088 != -1)
  {
LABEL_93:
    swift_once();
  }

  __swift_project_value_buffer(v306, qword_28112AB78);
  (v342)(v175, v215, v106);
  sub_20D7EB7E8(v334, v177, &qword_27C839550, &qword_20D979C30);
  v260 = sub_20D9734D8();
  v261 = sub_20D975478();
  if (os_log_type_enabled(v260, v261))
  {
    v262 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    v346 = v263;
    *v262 = 136315650;
    *(v262 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D98B620, &v346);
    *(v262 + 12) = 2080;
    sub_20D925CA0(&qword_281127730);
    v264 = sub_20D9757A8();
    v266 = v265;
    (v344)(v175, v106);
    v267 = sub_20D7F4DC8(v264, v266, &v346);

    *(v262 + 14) = v267;
    *(v262 + 22) = 2080;
    v268 = sub_20D975408();
    v270 = v269;
    sub_20D7E3944(v177, &qword_27C839550, &qword_20D979C30);
    v271 = sub_20D7F4DC8(v268, v270, &v346);

    *(v262 + 24) = v271;
    _os_log_impl(&dword_20D7C9000, v260, v261, "%s: requested date:%s ---> adjusted to view range:%s", v262, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v263, -1, -1);
    MEMORY[0x20F324260](v262, -1, -1);
  }

  else
  {

    sub_20D7E3944(v177, &qword_27C839550, &qword_20D979C30);
    (v344)(v175, v106);
  }

  v272 = v339;
  v273 = v330;
  v274 = v343;
  if (sub_20D972ED8())
  {
    v275 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v276 = sub_20D975078();
    v277 = [v275 initWithSuiteName_];

    if (v277)
    {
      v278 = sub_20D975078();
      v279 = [v277 BOOLForKey_];
    }

    else
    {
      v279 = 0;
    }

    v282 = v344;
    (v344)(v337, v106);
    v283 = sub_20D972E88();
    (*(*(v283 - 8) + 8))(v274, v283);
    sub_20D7E3944(v330, &qword_27C839550, &qword_20D979C30);
    sub_20D7E3944(v334, &qword_27C839550, &qword_20D979C30);
    result = v282(v326, v106);
  }

  else
  {
    v280 = v344;
    (v344)(v337, v106);
    v281 = sub_20D972E88();
    (*(*(v281 - 8) + 8))(v274, v281);
    sub_20D7E3944(v273, &qword_27C839550, &qword_20D979C30);
    sub_20D7E3944(v334, &qword_27C839550, &qword_20D979C30);
    result = v280(v326, v106);
    v279 = 0;
  }

  *(v272 + v308) = v279;
  return result;
}

uint64_t sub_20D95A3E8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for CenteredEnergyUsage(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_20D95D974(0, v11, 0);
  v12 = v22;
  v13 = *(sub_20D972C58() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_20D95D974(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_20D95E7F4(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for CenteredEnergyUsage);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D95A5E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for FeaturedInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_20D95DA18(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_20D95DA18(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_20D95E7F4(v10, v12 + v19 + v16 * v14, type metadata accessor for FeaturedInterval);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D95A7B8(uint64_t a1)
{
  v54 = sub_20D972628();
  v60 = *(v54 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v52 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = v47 - v10;
  MEMORY[0x28223BE20](v9);
  v56 = v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C760, &unk_20D97D090);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v47 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C810, &unk_20D97D080);
  v59 = *(v61 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v19 = v47 - v18;
  swift_getOpaqueTypeConformance2();
  v20 = sub_20D9751F8();
  v58 = v1;
  v21 = *v1;
  v22 = *(*v1 + 16);
  v23 = v22 + v20;
  if (__OFADD__(v22, v20))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v26 = v21[3] >> 1, v26 < v23))
  {
    if (v22 <= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v22;
    }

    v21 = sub_20D8D4264(isUniquelyReferenced_nonNull_native, v27, 1, v21);
    v26 = v21[3] >> 1;
  }

  v28 = *(v60 + 72);
  v29 = v26 - v21[2];
  v51 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v55 = v28;
  (*(v13 + 16))(v16, a1, v12);
  v30 = sub_20D9751E8();
  (*(v13 + 8))(a1, v12);
  if (v30 < v24)
  {
    goto LABEL_16;
  }

  if (v30 >= 1)
  {
    v31 = v21[2];
    v32 = __OFADD__(v31, v30);
    v33 = v31 + v30;
    if (v32)
    {
      __break(1u);
      goto LABEL_21;
    }

    v21[2] = v33;
  }

  if (v30 == v29)
  {
LABEL_17:
    if (v12 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C818, &unk_20D980370))
    {
      goto LABEL_13;
    }

    v16 = v21[2];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = v56;
    v47[1] = AssociatedConformanceWitness;
    sub_20D975518();
    v12 = v53;
    sub_20D7EB7E8(v36, v53, &qword_27C8389E8, &qword_20D9768D0);
    v24 = v60;
    v30 = v54;
    v49 = *(v60 + 48);
    v50 = v60 + 48;
    if (v49(v12, 1, v54) == 1)
    {
LABEL_19:
      sub_20D7E3944(v56, &qword_27C8389E8, &qword_20D9768D0);
      (*(v59 + 8))(v19, v61);
      result = sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
      goto LABEL_14;
    }

LABEL_21:
    v37 = (v24 + 32);
    v47[0] = v24 + 8;
    v38 = v52;
    do
    {
      sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
      v39 = v21[3];
      v40 = v39 >> 1;
      if ((v39 >> 1) < (v16 + 1))
      {
        v21 = sub_20D8D4264(v39 > 1, (v16 + 1), 1, v21);
        v40 = v21[3] >> 1;
      }

      sub_20D7EB7E8(v56, v38, &qword_27C8389E8, &qword_20D9768D0);
      if (v49(v38, 1, v30) == 1)
      {
        v38 = v52;
LABEL_34:
        sub_20D7E3944(v38, &qword_27C8389E8, &qword_20D9768D0);
        v41 = v16;
      }

      else
      {
        v60 = *v37;
        if (v16 <= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v16;
        }

        v38 = v52;
        v42 = v21 + v51 + v55 * v16;
        v48 = v41;
        while (1)
        {
          (v60)(v57, v38, v30);
          if (v41 == v16)
          {
            break;
          }

          v43 = v37;
          v44 = v56;
          sub_20D7E3944(v56, &qword_27C8389E8, &qword_20D9768D0);
          (v60)(v42, v57, v30);
          ++v16;
          sub_20D975518();
          v30 = v54;
          v45 = v44;
          v37 = v43;
          v41 = v48;
          sub_20D7EB7E8(v45, v38, &qword_27C8389E8, &qword_20D9768D0);
          v46 = v49(v38, 1, v30);
          v42 += v55;
          if (v46 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v47[0])(v57, v30);
        v16 = v41;
      }

      v21[2] = v41;
      v12 = v53;
      sub_20D7EB7E8(v56, v53, &qword_27C8389E8, &qword_20D9768D0);
    }

    while (v49(v12, 1, v30) != 1);
    goto LABEL_19;
  }

LABEL_13:
  result = (*(v59 + 8))(v19, v61);
LABEL_14:
  *v58 = v21;
  return result;
}

uint64_t sub_20D95AEB8(uint64_t result)
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

  result = sub_20D8D4130(result, v11, 1, v3);
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

uint64_t sub_20D95AFAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20D975748();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_20D975748();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_20D95E4DC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20D95E57C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_20D95B0F4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t HistoricalUsageSnapshotDerivedInfo.description.getter()
{
  v1 = v0;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000025, 0x800000020D98B660);
  sub_20D972AE8();
  v2 = sub_20D975128();
  v4 = v3;

  MEMORY[0x20F323340](v2, v4);

  MEMORY[0x20F323340](0xD000000000000011, 0x800000020D98B690);
  v5 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v6 = v0 + *(v5 + 28);
  v7 = sub_20D9725F8();
  MEMORY[0x20F323340](v7);

  MEMORY[0x20F323340](2108192, 0xE300000000000000);
  v8 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) + 36);
  v9 = sub_20D9725F8();
  MEMORY[0x20F323340](v9);

  MEMORY[0x20F323340](0xD000000000000010, 0x800000020D98B6B0);
  v10 = v1 + *(v5 + 52);
  v11 = sub_20D975408();
  MEMORY[0x20F323340](v11);

  return 0;
}

uint64_t sub_20D95B3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v187 = a4;
  v191 = a5;
  v192[0] = a3;
  v183 = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v6 = *(*(v169 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v169);
  v170 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v168 = v157 - v9;
  v10 = sub_20D9727B8();
  v185 = *(v10 - 8);
  v186 = v10;
  v11 = *(v185 + 64);
  MEMORY[0x28223BE20](v10);
  v184 = v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D972AF8();
  v189 = *(v13 - 8);
  v14 = *(v189 + 64);
  MEMORY[0x28223BE20](v13);
  v188 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v182 = v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v181 = v157 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v159 = v157 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v160 = v157 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v162 = v157 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v163 = v157 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v165 = v157 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v166 = v157 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v174 = v157 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v175 = v157 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v176 = v157 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v177 = v157 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v180 = v157 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v194 = v157 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = v157 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = v157 - v49;
  v51 = sub_20D972628();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v172 = v157 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v179 = v157 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v158 = v157 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v161 = v157 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v164 = v157 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v173 = v157 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v193 = v157 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = v157 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = v157 - v72;
  MEMORY[0x28223BE20](v71);
  v195 = v157 - v74;
  sub_20D7EB7E8(a2, v50, &qword_27C8389E8, &qword_20D9768D0);
  v75 = *(v52 + 48);
  if (v75(v50, 1, v51) == 1)
  {
    sub_20D972428();
    if (v75(v50, 1, v51) != 1)
    {
      sub_20D7E3944(v50, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v52 + 32))(v73, v50, v51);
  }

  sub_20D7EB7E8(v192[0], v48, &qword_27C8389E8, &qword_20D9768D0);
  v76 = v75(v48, 1, v51);
  v190 = v75;
  v192[1] = v52 + 48;
  v77 = v13;
  if (v76 == 1)
  {
    sub_20D972428();
    if (v75(v48, 1, v51) != 1)
    {
      sub_20D7E3944(v48, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v52 + 32))(v70, v48, v51);
  }

  v171 = sub_20D925CA0(&qword_281126E30);
  v78 = sub_20D974FB8();
  v79 = *(v52 + 8);
  v80 = (v78 & 1) == 0;
  if (v78)
  {
    v81 = v73;
  }

  else
  {
    v81 = v70;
  }

  if (v80)
  {
    v82 = v73;
  }

  else
  {
    v82 = v70;
  }

  v79(v81, v51);
  v83 = v195;
  v192[0] = *(v52 + 32);
  (v192[0])(v195, v82, v51);
  v84 = v193;
  sub_20D972428();
  sub_20D925CA0(&qword_281127740);
  v85 = sub_20D974FD8();
  v79(v84, v51);
  if (v85)
  {
    v79(v83, v51);
LABEL_48:
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
    return (*(*(v146 - 8) + 56))(v191, 1, 1, v146);
  }

  v157[1] = v52 + 32;
  v178 = v79;
  v87 = v188;
  v86 = v189;
  (*(v189 + 16))(v188, v183, v77);
  v88 = (*(v86 + 88))(v87, v77);
  v80 = v88 == *MEMORY[0x277D075B0];
  v167 = v52 + 8;
  if (!v80)
  {
    v100 = v186;
    v101 = v185;
    if (v88 == *MEMORY[0x277D075B8])
    {
      v102 = v173;
      sub_20D972F98();
      v103 = *MEMORY[0x277CC9968];
      v104 = v184;
      v189 = *(v101 + 104);
      (v189)(v184, v103, v100);
      v105 = v100;
      v106 = v194;
      sub_20D972758();
      v188 = *(v101 + 8);
      (v188)(v104, v105);
      v107 = v106;
      v108 = v174;
      sub_20D7EB7E8(v107, v174, &qword_27C8389E8, &qword_20D9768D0);
      if (v190(v108, 1, v51) == 1)
      {
        v99 = v178;
        v178(v102, v51);
        v109 = *(v52 + 56);
        v110 = &v197;
LABEL_36:
        v97 = *(v110 - 32);
        v109(v97, 1, 1, v51);
        goto LABEL_42;
      }

      v122 = v193;
      (v192[0])(v193, v108, v51);
      (v189)(v104, v103, v105);
      v123 = v175;
      sub_20D972758();
      (v188)(v104, v105);
      v99 = v178;
      v178(v122, v51);
      v124 = v102;
    }

    else
    {
      v112 = v184;
      if (v88 == *MEMORY[0x277D075C8])
      {
        v113 = v164;
        sub_20D972F98();
        v114 = *(v101 + 104);
        LODWORD(v189) = *MEMORY[0x277CC9968];
        v188 = v114;
        (v114)(v112);
        v115 = v100;
        v116 = v194;
        sub_20D972758();
        v117 = v112;
        v118 = *(v101 + 8);
        v118(v117, v115);
        v119 = v116;
        v120 = v165;
        sub_20D7EB7E8(v119, v165, &qword_27C8389E8, &qword_20D9768D0);
        if (v190(v120, 1, v51) == 1)
        {
          v121 = v113;
          v99 = v178;
          v178(v121, v51);
          v109 = *(v52 + 56);
          v110 = &v196;
          goto LABEL_36;
        }

        v130 = v193;
        (v192[0])(v193, v120, v51);
        (v188)(v117, v189, v115);
        v123 = v166;
      }

      else if (v88 == *MEMORY[0x277D075D0])
      {
        v113 = v161;
        sub_20D972FB8();
        v125 = *(v101 + 104);
        LODWORD(v189) = *MEMORY[0x277CC9940];
        v188 = v125;
        (v125)(v112);
        v115 = v100;
        v126 = v194;
        sub_20D972758();
        v117 = v112;
        v118 = *(v101 + 8);
        v118(v117, v115);
        v127 = v126;
        v128 = v162;
        sub_20D7EB7E8(v127, v162, &qword_27C8389E8, &qword_20D9768D0);
        if (v190(v128, 1, v51) == 1)
        {
          v129 = v113;
          v99 = v178;
          v178(v129, v51);
          v109 = *(v52 + 56);
          v110 = &v194;
          goto LABEL_36;
        }

        v130 = v193;
        (v192[0])(v193, v128, v51);
        (v188)(v117, v189, v115);
        v123 = v163;
      }

      else
      {
        if (v88 != *MEMORY[0x277D075C0])
        {
          v178(v83, v51);
          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
          (*(*(v136 - 8) + 56))(v191, 1, 1, v136);
          return (*(v189 + 8))(v188, v77);
        }

        v113 = v158;
        sub_20D972FF8();
        v131 = *(v101 + 104);
        LODWORD(v189) = *MEMORY[0x277CC9998];
        v188 = v131;
        (v131)(v112);
        v115 = v100;
        v132 = v194;
        sub_20D972758();
        v117 = v112;
        v118 = *(v101 + 8);
        v118(v117, v115);
        v133 = v132;
        v134 = v159;
        sub_20D7EB7E8(v133, v159, &qword_27C8389E8, &qword_20D9768D0);
        if (v190(v134, 1, v51) == 1)
        {
          v135 = v113;
          v99 = v178;
          v178(v135, v51);
          v109 = *(v52 + 56);
          v110 = v192;
          goto LABEL_36;
        }

        v130 = v193;
        (v192[0])(v193, v134, v51);
        (v188)(v117, v189, v115);
        v123 = v160;
      }

      sub_20D972758();
      v118(v117, v115);
      v138 = v113;
      v99 = v178;
      v178(v130, v51);
      v124 = v138;
    }

    v99(v124, v51);
    v97 = v123;
    goto LABEL_42;
  }

  v89 = *MEMORY[0x277CC9980];
  v91 = v184;
  v90 = v185;
  v92 = v186;
  v189 = *(v185 + 104);
  (v189)(v184, v89, v186);
  v93 = v194;
  sub_20D972758();
  v94 = *(v90 + 8);
  v94(v91, v92);
  v95 = v93;
  v96 = v176;
  sub_20D7EB7E8(v95, v176, &qword_27C8389E8, &qword_20D9768D0);
  if (v190(v96, 1, v51) == 1)
  {
    v97 = v177;
    (*(v52 + 56))(v177, 1, 1, v51);
    v98 = v182;
    v99 = v178;
    goto LABEL_43;
  }

  v111 = v193;
  (v192[0])(v193, v96, v51);
  (v189)(v91, v89, v92);
  v97 = v177;
  sub_20D972758();
  v94(v91, v92);
  v99 = v178;
  v178(v111, v51);
LABEL_42:
  v98 = v182;
LABEL_43:
  v139 = v180;
  sub_20D7EAF18(v97, v180, &qword_27C8389E8, &qword_20D9768D0);
  v140 = v181;
  sub_20D7EB7E8(v194, v181, &qword_27C8389E8, &qword_20D9768D0);
  v141 = v190;
  v142 = v190(v140, 1, v51);
  v143 = v195;
  if (v142 == 1)
  {
    v98 = v140;
LABEL_47:
    sub_20D7E3944(v139, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v194, &qword_27C8389E8, &qword_20D9768D0);
    v99(v143, v51);
    sub_20D7E3944(v98, &qword_27C8389E8, &qword_20D9768D0);
    goto LABEL_48;
  }

  v144 = v179;
  v145 = v192[0];
  (v192[0])(v179, v140, v51);
  sub_20D7EB7E8(v139, v98, &qword_27C8389E8, &qword_20D9768D0);
  if (v141(v98, 1, v51) == 1)
  {
    v99 = v178;
    v178(v144, v51);
    goto LABEL_47;
  }

  v147 = v172;
  v145(v172, v98, v51);
  v148 = sub_20D974FC8();
  sub_20D7E3944(v139, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v194, &qword_27C8389E8, &qword_20D9768D0);
  result = (v178)(v143, v51);
  if (v148)
  {
    v149 = v168;
    v145(v168, v179, v51);
    v150 = v169;
    v145((v149 + *(v169 + 48)), v147, v51);
    v151 = v170;
    sub_20D7EB7E8(v149, v170, &unk_27C83C750, &unk_20D978DD0);
    v152 = *(v150 + 48);
    v153 = v191;
    v145(v191, v151, v51);
    v154 = v178;
    v178((v151 + v152), v51);
    sub_20D7EAF18(v149, v151, &unk_27C83C750, &unk_20D978DD0);
    v155 = *(v150 + 48);
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
    v145(&v153[*(v156 + 36)], v151 + v155, v51);
    v154(v151, v51);
    return (*(*(v156 - 8) + 56))(v153, 0, 1, v156);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D95C8A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_20D972C58();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v74 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v72 = &v65 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v65 - v26;
  MEMORY[0x28223BE20](v25);
  v69 = &v65 - v28;
  v29 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v30 = *(v2 + *(v29 + 36));
  if (v30 && (v31 = *(v30 + 16)) != 0)
  {
    v32 = v66;
    v33 = v29;
    v34 = v2;
    v35 = v67;
    v36 = (*(v66 + 16))(v8, v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * (v31 - 1), v67);
    MEMORY[0x20F320DF0](v36);
    v37 = v35;
    v2 = v34;
    v29 = v33;
    (*(v32 + 8))(v8, v37);
    v38 = *(v16 + 56);
    v38(v14, 0, 1, v15);
    (*(v16 + 32))(v27, v14, v15);
  }

  else
  {
    v38 = *(v16 + 56);
    v38(v14, 1, 1, v15);
    sub_20D972428();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_20D7E3944(v14, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  v68 = v29;
  v39 = *(v2 + *(v29 + 40));
  v70 = v38;
  if (v39 && (v40 = *(v39 + 16)) != 0)
  {
    v41 = v65;
    v42 = v66;
    v43 = v2;
    v44 = v67;
    v45 = (*(v66 + 16))(v65, v39 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * (v40 - 1), v67);
    v46 = v74;
    MEMORY[0x20F320DF0](v45);
    v47 = v44;
    v2 = v43;
    (*(v42 + 8))(v41, v47);
    v38(v46, 0, 1, v15);
    (*(v16 + 32))(v24, v46, v15);
  }

  else
  {
    v48 = v74;
    v38(v74, 1, 1, v15);
    sub_20D972428();
    if ((*(v16 + 48))(v48, 1, v15) != 1)
    {
      sub_20D7E3944(v74, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  sub_20D925CA0(&qword_281126E30);
  v49 = sub_20D974FB8();
  v50 = *(v16 + 8);
  v51 = (v49 & 1) == 0;
  if (v49)
  {
    v52 = v27;
  }

  else
  {
    v52 = v24;
  }

  if (v51)
  {
    v24 = v27;
  }

  v50(v52, v15);
  v53 = v69;
  v67 = *(v16 + 32);
  v67(v69, v24, v15);
  v54 = v2 + *(v68 + 28);
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) + 36);
  v56 = sub_20D974FB8();
  v74 = v16;
  if (v56)
  {
    v57 = (v54 + v55);
    v58 = v72;
    v59 = v72;
  }

  else
  {
    v58 = v72;
    v59 = v72;
    v57 = v53;
  }

  (*(v16 + 16))(v59, v57, v15);
  v60 = v71;
  sub_20D972428();
  v61 = sub_20D972598();
  v50(v60, v15);
  v50(v53, v15);
  if (v61)
  {
    v50(v58, v15);
    v62 = 1;
    v63 = v73;
  }

  else
  {
    v63 = v73;
    v67(v73, v58, v15);
    v62 = 0;
  }

  return v70(v63, v62, 1, v15);
}

uint64_t sub_20D95CF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a5;
  v48 = a3;
  v49 = a4;
  v51 = a2;
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v52 = &v46 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v46 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v56 = &v46 - v28;
  v57 = a1;
  MEMORY[0x20F320DF0](v27);
  v53 = v12;
  v29 = v12 + 16;
  v30 = *(v12 + 16);
  v30(v23, v26, v11);
  v54 = v30;
  v55 = v29;
  v30(v20, v23, v11);
  (*(v7 + 16))(v10, v51, v6);
  v46 = v10;
  v47 = v7;
  v31 = *(v7 + 88);
  v51 = v6;
  v32 = v31(v10, v6);
  if (v32 != *MEMORY[0x277D075B0])
  {
    v38 = v32 == *MEMORY[0x277D075B8] || v32 == *MEMORY[0x277D075C8];
    v39 = v53;
    v37 = v11;
    if (!v38)
    {
      if (v32 == *MEMORY[0x277D075D0])
      {
        v40 = v52;
        sub_20D972F98();
        sub_20D973018();
        goto LABEL_11;
      }

      if (v32 != *MEMORY[0x277D075C0])
      {
        v35 = *(v53 + 8);
        v35(v20, v11);
        v35(v26, v11);
        v36 = *(v39 + 32);
        v36(v20, v23, v11);
        (*(v47 + 8))(v46, v51);
        goto LABEL_12;
      }
    }

    v40 = v52;
    sub_20D9730D8();
    sub_20D972458();
LABEL_11:
    sub_20D972498();
    v35 = *(v39 + 8);
    v35(v40, v37);
    v35(v20, v37);
    v35(v23, v37);
    v35(v26, v37);
    v36 = *(v39 + 32);
    v36(v20, v50, v37);
    goto LABEL_12;
  }

  sub_20D9730E8();
  v33 = v52;
  sub_20D972498();
  v34 = v53;
  v35 = *(v53 + 8);
  v35(v20, v11);
  v35(v23, v11);
  v35(v26, v11);
  v36 = *(v34 + 32);
  v36(v20, v33, v11);
  v37 = v11;
LABEL_12:
  v41 = v56;
  v36(v56, v20, v37);
  v42 = v58;
  v54(v58, v41, v37);
  sub_20D972BC8();
  v44 = v43;
  v35(v41, v37);
  result = type metadata accessor for CenteredEnergyUsage(0);
  *(v42 + *(result + 20)) = v44;
  return result;
}

size_t sub_20D95D484(size_t a1, int64_t a2, char a3)
{
  result = sub_20D95DABC(a1, a2, a3, *v3, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
  *v3 = result;
  return result;
}

void sub_20D95D4F0()
{
  sub_20D972AF8();
  if (v0 <= 0x3F)
  {
    sub_20D9727B8();
    if (v1 <= 0x3F)
    {
      sub_20D95D6BC(319, &qword_281124BC8, MEMORY[0x277D83D00]);
      if (v2 <= 0x3F)
      {
        sub_20D95D6BC(319, &qword_281124C40, MEMORY[0x277D83638]);
        if (v3 <= 0x3F)
        {
          sub_20D95D744();
          if (v4 <= 0x3F)
          {
            sub_20D95D7A8(319, &qword_281126E20, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20D95D7A8(319, &qword_281124C10, type metadata accessor for CenteredEnergyUsage, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_20D9727D8();
                if (v7 <= 0x3F)
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

void sub_20D95D6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_20D972628();
    v7 = sub_20D925CA0(&qword_281126E30);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20D95D744()
{
  if (!qword_281124BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C83C780, &qword_20D97E0C0);
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124BF8);
    }
  }
}

void sub_20D95D7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20D95D840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D95D888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D95D900()
{
  result = sub_20D972628();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_20D95D974(size_t a1, int64_t a2, char a3)
{
  result = sub_20D95DABC(a1, a2, a3, *v3, &unk_27C83C790, &qword_20D980328, type metadata accessor for CenteredEnergyUsage);
  *v3 = result;
  return result;
}

char *sub_20D95D9B8(char *a1, int64_t a2, char a3)
{
  result = sub_20D95DCC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20D95D9D8(char *a1, int64_t a2, char a3)
{
  result = sub_20D95DDDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20D95D9F8(void *a1, int64_t a2, char a3)
{
  result = sub_20D95DEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20D95DA18(size_t a1, int64_t a2, char a3)
{
  result = sub_20D95DABC(a1, a2, a3, *v3, &unk_27C83C7C0, &qword_20D97B4A8, type metadata accessor for FeaturedInterval);
  *v3 = result;
  return result;
}

void *sub_20D95DA5C(void *a1, int64_t a2, char a3)
{
  result = sub_20D95E01C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20D95DA7C(char *a1, int64_t a2, char a3)
{
  result = sub_20D95E18C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20D95DA9C(char *a1, int64_t a2, char a3)
{
  result = sub_20D95E290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20D95DABC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_20D95DCC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C800, &qword_20D980368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_20D95DDDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
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

void *sub_20D95DEE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A388, &qword_20D980360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D95E01C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B8, &unk_20D980340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20D95E18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A8, &unk_20D980330);
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

char *sub_20D95E290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C770, &qword_20D980278);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_20D95E394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A0, &qword_20D97B440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_20D95E4DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_20D975748();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_20D9756A8();
  *v1 = result;
  return result;
}

uint64_t sub_20D95E57C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D975748();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20D975748();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20D95E790();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D8, &qword_20D980358);
            v9 = sub_20D95E708(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20D95E708(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F323850](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_20D95E788;
  }

  __break(1u);
  return result;
}

unint64_t sub_20D95E790()
{
  result = qword_27C83C7E0;
  if (!qword_27C83C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C7D8, &qword_20D980358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C7E0);
  }

  return result;
}

uint64_t sub_20D95E7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HistoricalUsageWidgetView.init(widgetDate:usageSnapshot:homeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v31 = a3;
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D9726E8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_20D975058();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v32 = *(v13 + 16);
  v32(a5, a1, v12);
  v20 = type metadata accessor for HistoricalUsageWidgetView(0);
  sub_20D9631AC(a2, a5 + v20[5], type metadata accessor for HistoricalUsageSnapshot);
  v21 = a2 + *(v9 + 56);
  if (sub_20D972D68())
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v22 = qword_28112ABE8;
    sub_20D9726B8();
    v23 = sub_20D975108();
    v25 = v34;
    if (!v34)
    {
      goto LABEL_10;
    }

LABEL_9:

    v24 = v25;
    v23 = v31;
    goto LABEL_10;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v26 = qword_28112ABE8;
  sub_20D9726B8();
  v23 = sub_20D9750F8();
  v25 = v34;
  if (v34)
  {
    goto LABEL_9;
  }

LABEL_10:
  v27 = (a5 + v20[6]);
  *v27 = v23;
  v27[1] = v24;
  v28 = v33;
  v32(v33, a1, v12);
  v29 = v35;
  sub_20D9631AC(a2, v35, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v28, v29, a5 + v20[7]);
  sub_20D963214(a2, type metadata accessor for HistoricalUsageSnapshot);
  return (*(v13 + 8))(a1, v12);
}

uint64_t HistoricalUsageWidgetView.init(widgetDate:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v5 = sub_20D9726E8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D975058();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HistoricalUsageSnapshot();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = sub_20D972628();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - v23;
  v25 = v19[2];
  v44 = a1;
  v25(&v39 - v23, a1, v18);
  v43 = a2;
  v26 = a2;
  v27 = v39;
  sub_20D9631AC(v26, v17, type metadata accessor for HistoricalUsageSnapshot);
  v25(v27, v24, v18);
  v28 = type metadata accessor for HistoricalUsageWidgetView(0);
  sub_20D9631AC(v17, &v27[v28[5]], type metadata accessor for HistoricalUsageSnapshot);
  v29 = &v17[*(v12 + 56)];
  if (sub_20D972D68())
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v30 = qword_28112ABE8;
    sub_20D9726B8();
    v31 = sub_20D975108();
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v33 = qword_28112ABE8;
    sub_20D9726B8();
    v31 = sub_20D9750F8();
  }

  v34 = &v27[v28[6]];
  *v34 = v31;
  v34[1] = v32;
  v35 = v40;
  v25(v40, v24, v18);
  v36 = v42;
  sub_20D9631AC(v17, v42, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v35, v36, &v27[v28[7]]);
  sub_20D963214(v43, type metadata accessor for HistoricalUsageSnapshot);
  v37 = v19[1];
  v37(v44, v18);
  sub_20D963214(v17, type metadata accessor for HistoricalUsageSnapshot);
  return (v37)(v24, v18);
}

uint64_t HistoricalUsageWidgetView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C820, &qword_20D980380);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C828, &qword_20D980388);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = v0 + *(type metadata accessor for HistoricalUsageWidgetView(0) + 20);
  if (*(v9 + *(type metadata accessor for HistoricalUsageSnapshot() + 64)) == 6)
  {
    *v8 = sub_20D9742F8();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C830, &qword_20D980390);
    sub_20D95F424(v0, &v8[*(v10 + 44)]);
    sub_20D7EB7E8(v8, v4, &qword_27C83C828, &qword_20D980388);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C838, &qword_20D980398);
    sub_20D7EBC4C(&qword_281124FD8, &qword_27C83C828, &qword_20D980388);
    sub_20D9635A8(&qword_281124FC8, &qword_27C83C838, &qword_20D980398, sub_20D95FBCC);
    sub_20D9741B8();
    return sub_20D7E3944(v8, &qword_27C83C828, &qword_20D980388);
  }

  else
  {
    v12 = sub_20D962CB8();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = sub_20D974318();
    v20[8] = 1;
    *v4 = v12;
    *(v4 + 1) = v14;
    *(v4 + 2) = v16;
    *(v4 + 3) = v18;
    v4[32] = v19;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    v4[72] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C838, &qword_20D980398);
    sub_20D7EBC4C(&qword_281124FD8, &qword_27C83C828, &qword_20D980388);
    sub_20D9635A8(&qword_281124FC8, &qword_27C83C838, &qword_20D980398, sub_20D95FBCC);
    return sub_20D9741B8();
  }
}

uint64_t sub_20D95F424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8B0, &qword_20D9805B8);
  v3 = *(*(v118 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v118);
  v122 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v120 = &v113 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v113 - v9);
  MEMORY[0x28223BE20](v8);
  v127 = (&v113 - v11);
  v12 = type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v119 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v126 = &v113 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v128 = (&v113 - v19);
  MEMORY[0x28223BE20](v18);
  v21 = (&v113 - v20);
  v22 = type metadata accessor for HistoricalUsageWidgetView(0);
  v23 = (a1 + v22[6]);
  v25 = *v23;
  v24 = v23[1];
  v26 = v22[5];
  sub_20D9631AC(a1 + v26, v21 + v12[5], type metadata accessor for HistoricalUsageSnapshot);
  v27 = v22[7];
  sub_20D9631AC(a1 + v27, v21 + v12[6], type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v116 = v24;
  v117 = v25;
  *v21 = v25;
  v21[1] = v24;
  *(v21 + v12[7]) = 0;
  *(v21 + v12[8]) = 0;
  v28 = v21;
  *(v21 + v12[9]) = 0;
  v29 = v12[10];
  v30 = qword_281125B78;
  swift_bridgeObjectRetain_n();
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = unk_281125C10;
  v130[10] = xmmword_281125C20;
  v130[11] = xmmword_281125C30;
  v32 = xmmword_281125C30;
  v130[12] = xmmword_281125C40;
  v33 = xmmword_281125BD0;
  v34 = xmmword_281125BE0;
  v130[6] = xmmword_281125BE0;
  v130[7] = xmmword_281125BF0;
  v35 = xmmword_281125BF0;
  v36 = xmmword_281125C00;
  v130[8] = xmmword_281125C00;
  v130[9] = unk_281125C10;
  v37 = xmmword_281125B90;
  v38 = xmmword_281125BA0;
  v130[2] = xmmword_281125BA0;
  v130[3] = xmmword_281125BB0;
  v39 = xmmword_281125BB0;
  v40 = xmmword_281125BC0;
  v130[4] = xmmword_281125BC0;
  v130[5] = xmmword_281125BD0;
  v41 = xmmword_281125B80;
  v130[0] = xmmword_281125B80;
  v130[1] = xmmword_281125B90;
  v125 = v28;
  v42 = (v28 + v29);
  v42[10] = xmmword_281125C20;
  v42[11] = v32;
  v42[12] = xmmword_281125C40;
  v42[6] = v34;
  v42[7] = v35;
  v42[8] = v36;
  v42[9] = v31;
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v40;
  v42[5] = v33;
  *v42 = v41;
  v42[1] = v37;
  v43 = v12[5];
  v44 = a1 + v26;
  v45 = v26;
  v114 = type metadata accessor for HistoricalUsageSnapshot;
  v115 = v26;
  v46 = v128;
  sub_20D9631AC(v44, v128 + v43, type metadata accessor for HistoricalUsageSnapshot);
  v47 = v12[6];
  v123 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo;
  v124 = v27;
  sub_20D9631AC(a1 + v27, v46 + v47, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v49 = v116;
  v48 = v117;
  *v46 = v117;
  v46[1] = v49;
  *(v46 + v12[7]) = 1;
  *(v46 + v12[8]) = 0;
  *(v46 + v12[9]) = 0;
  v50 = v12[10];
  v131[0] = xmmword_281125B80;
  v131[1] = xmmword_281125B90;
  v52 = xmmword_281125B80;
  v51 = xmmword_281125B90;
  v131[2] = xmmword_281125BA0;
  v131[3] = xmmword_281125BB0;
  v53 = xmmword_281125BD0;
  v54 = xmmword_281125BE0;
  v131[6] = xmmword_281125BE0;
  v131[7] = xmmword_281125BF0;
  v55 = xmmword_281125BA0;
  v56 = xmmword_281125BB0;
  v57 = xmmword_281125BC0;
  v131[4] = xmmword_281125BC0;
  v131[5] = xmmword_281125BD0;
  v58 = xmmword_281125C30;
  v131[12] = xmmword_281125C40;
  v59 = unk_281125C10;
  v131[10] = xmmword_281125C20;
  v131[11] = xmmword_281125C30;
  v60 = xmmword_281125BF0;
  v61 = xmmword_281125C00;
  v131[8] = xmmword_281125C00;
  v131[9] = unk_281125C10;
  v62 = (v46 + v50);
  v62[10] = xmmword_281125C20;
  v62[11] = v58;
  v62[12] = xmmword_281125C40;
  v62[6] = v54;
  v62[7] = v60;
  v62[8] = v61;
  v62[9] = v59;
  v62[2] = v55;
  v62[3] = v56;
  v62[4] = v57;
  v62[5] = v53;
  *v62 = v52;
  v62[1] = v51;
  v63 = a1 + v45;
  v64 = v127;
  sub_20D9631AC(v63, v127 + v12[5], type metadata accessor for HistoricalUsageSnapshot);
  sub_20D9631AC(a1 + v124, v64 + v12[6], v123);
  v65 = v64;
  *v64 = v48;
  v64[1] = v49;
  *(v64 + v12[7]) = 0;
  *(v64 + v12[8]) = 1;
  *(v64 + v12[9]) = 0;
  v66 = v12[10];
  v132[0] = xmmword_281125B80;
  v132[1] = xmmword_281125B90;
  v68 = xmmword_281125B80;
  v67 = xmmword_281125B90;
  v132[2] = xmmword_281125BA0;
  v132[3] = xmmword_281125BB0;
  v69 = xmmword_281125BD0;
  v70 = xmmword_281125BE0;
  v132[6] = xmmword_281125BE0;
  v132[7] = xmmword_281125BF0;
  v71 = xmmword_281125BA0;
  v72 = xmmword_281125BB0;
  v73 = xmmword_281125BC0;
  v132[4] = xmmword_281125BC0;
  v132[5] = xmmword_281125BD0;
  v74 = xmmword_281125C30;
  v132[12] = xmmword_281125C40;
  v75 = unk_281125C10;
  v132[10] = xmmword_281125C20;
  v132[11] = xmmword_281125C30;
  v76 = xmmword_281125BF0;
  v77 = xmmword_281125C00;
  v132[8] = xmmword_281125C00;
  v132[9] = unk_281125C10;
  v78 = (v64 + v66);
  v78[10] = xmmword_281125C20;
  v78[11] = v74;
  v78[12] = xmmword_281125C40;
  v78[6] = v70;
  v78[7] = v76;
  v78[8] = v77;
  v78[9] = v75;
  v78[2] = v71;
  v78[3] = v72;
  v78[4] = v73;
  v78[5] = v69;
  *v78 = v68;
  v78[1] = v67;

  sub_20D85D690(v130, v133);
  sub_20D85D690(v131, v133);
  sub_20D85D690(v132, v133);
  LOBYTE(v64) = sub_20D974338();
  sub_20D973AD8();
  v79 = v118;
  v80 = v65 + *(v118 + 36);
  *v80 = v64;
  *(v80 + 8) = v81;
  *(v80 + 16) = v82;
  *(v80 + 24) = v83;
  *(v80 + 32) = v84;
  *(v80 + 40) = 0;
  sub_20D9631AC(a1 + v115, v10 + v12[5], v114);
  sub_20D9631AC(a1 + v124, v10 + v12[6], v123);
  *v10 = v48;
  v10[1] = v49;
  *(v10 + v12[7]) = 0;
  *(v10 + v12[8]) = 1;
  *(v10 + v12[9]) = 1;
  v85 = v12[10];
  v133[0] = xmmword_281125B80;
  v133[1] = xmmword_281125B90;
  v87 = xmmword_281125B80;
  v86 = xmmword_281125B90;
  v133[2] = xmmword_281125BA0;
  v133[3] = xmmword_281125BB0;
  v88 = xmmword_281125BD0;
  v89 = xmmword_281125BE0;
  v133[7] = xmmword_281125BF0;
  v133[6] = xmmword_281125BE0;
  v90 = xmmword_281125BA0;
  v91 = xmmword_281125BB0;
  v92 = xmmword_281125BC0;
  v133[4] = xmmword_281125BC0;
  v133[5] = xmmword_281125BD0;
  v93 = xmmword_281125C30;
  v133[12] = xmmword_281125C40;
  v94 = unk_281125C10;
  v133[11] = xmmword_281125C30;
  v133[10] = xmmword_281125C20;
  v95 = xmmword_281125BF0;
  v96 = xmmword_281125C00;
  v133[8] = xmmword_281125C00;
  v133[9] = unk_281125C10;
  v97 = (v10 + v85);
  v97[10] = xmmword_281125C20;
  v97[11] = v93;
  v97[12] = xmmword_281125C40;
  v97[6] = v89;
  v97[7] = v95;
  v97[8] = v96;
  v97[9] = v94;
  v97[2] = v90;
  v97[3] = v91;
  v97[4] = v92;
  v97[5] = v88;
  *v97 = v87;
  v97[1] = v86;
  sub_20D85D690(v133, &v129);
  v98 = sub_20D974338();
  sub_20D973AD8();
  v99 = v10 + *(v79 + 36);
  *v99 = v98;
  *(v99 + 1) = v100;
  *(v99 + 2) = v101;
  *(v99 + 3) = v102;
  *(v99 + 4) = v103;
  v99[40] = 0;
  v104 = v126;
  sub_20D9631AC(v125, v126, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  v105 = v119;
  sub_20D9631AC(v128, v119, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  v106 = v120;
  sub_20D7EB7E8(v65, v120, &qword_27C83C8B0, &qword_20D9805B8);
  v107 = v122;
  sub_20D7EB7E8(v10, v122, &qword_27C83C8B0, &qword_20D9805B8);
  v108 = v104;
  v109 = v105;
  v110 = v121;
  sub_20D9631AC(v108, v121, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8B8, &unk_20D9805C0);
  sub_20D9631AC(v109, v110 + v111[12], type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  sub_20D7EB7E8(v106, v110 + v111[16], &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7EB7E8(v107, v110 + v111[20], &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7E3944(v10, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7E3944(v127, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D963214(v128, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  sub_20D963214(v125, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  sub_20D7E3944(v107, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D7E3944(v106, &qword_27C83C8B0, &qword_20D9805B8);
  sub_20D963214(v109, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
  return sub_20D963214(v126, type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView);
}

unint64_t sub_20D95FBCC()
{
  result = qword_2811262F0;
  if (!qword_2811262F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811262F0);
  }

  return result;
}

uint64_t sub_20D95FC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v77 = a5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C850, &qword_20D980518);
  v7 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v86 = &v68[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C858, &unk_20D980520);
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v74 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v84 = &v68[-v13];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v14 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v16 = &v68[-v15];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v17 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v83 = &v68[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BC00, &qword_20D97ED90);
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v68[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v87 = &v68[-v23];
  v88 = a1;
  v89 = a2;
  v24 = sub_20D7E1EF8();

  v78 = v24;
  v25 = sub_20D9745C8();
  v27 = v26;
  v29 = v28;
  sub_20D9744A8();
  v30 = sub_20D974558();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_20D7EADC0(v25, v27, v29 & 1);

  v88 = v30;
  v89 = v32;
  LOBYTE(v27) = v34 & 1;
  v37 = v83;
  v90 = v27;
  v91 = v36;
  sub_20D9747D8();
  sub_20D7EADC0(v30, v32, v27);

  v38 = *MEMORY[0x277CDFA00];
  v39 = sub_20D973D58();
  v40 = *(*(v39 - 8) + 104);
  v40(v16, v38, v39);
  sub_20D963A7C(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    sub_20D809130();
    v69 = v38;
    v70 = v40;
    v79 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    sub_20D974778();
    sub_20D7E3944(v16, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v37, &qword_27C838F18, &unk_20D977860);
    v88 = v80;
    v89 = v81;

    v42 = sub_20D9745C8();
    v44 = v43;
    v88 = v42;
    v89 = v43;
    v46 = v45 & 1;
    v90 = v45 & 1;
    v91 = v47;
    v48 = v86;
    sub_20D9747D8();
    sub_20D7EADC0(v42, v44, v46);

    v49 = sub_20D974468();
    KeyPath = swift_getKeyPath();
    v51 = &v48[*(v82 + 36)];
    *v51 = KeyPath;
    v51[1] = v49;
    v70(v16, v69, v39);
    result = sub_20D974FD8();
    if (result)
    {
      sub_20D9630D4();
      v52 = v84;
      v53 = v86;
      sub_20D974778();
      sub_20D7E3944(v16, &qword_27C839080, &qword_20D977AC0);
      sub_20D7E3944(v53, &qword_27C83C850, &qword_20D980518);
      v54 = v72;
      v55 = v73;
      v56 = *(v72 + 16);
      v57 = v71;
      v56(v71, v87, v73);
      v59 = v74;
      v58 = v75;
      v86 = *(v75 + 16);
      v60 = v52;
      v61 = v76;
      (v86)(v74, v60, v76);
      v62 = v77;
      v56(v77, v57, v55);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C868, &qword_20D980568);
      v64 = &v62[v63[12]];
      *v64 = 0;
      v64[8] = 1;
      (v86)(&v62[v63[16]], v59, v61);
      v65 = &v62[v63[20]];
      *v65 = 0;
      v65[8] = 1;
      v66 = *(v58 + 8);
      v66(v84, v61);
      v67 = *(v54 + 8);
      v67(v87, v55);
      v66(v59, v61);
      return (v67)(v57, v55);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D96036C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_20D974168();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C848, &qword_20D980510);
  return sub_20D95FC20(v3, v4, v6, v5, (a1 + *(v7 + 44)));
}

uint64_t sub_20D9603E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C870, &qword_20D980570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C878, &qword_20D980578);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C880, &unk_20D980580);
  sub_20D960664(v1, &v6[*(v11 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v13 = sub_20D974348();
  *(inited + 32) = v13;
  v14 = sub_20D974368();
  *(inited + 33) = v14;
  v15 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v13)
  {
    v15 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v14)
  {
    v15 = sub_20D974358();
  }

  sub_20D7EAF18(v6, v10, &qword_27C83C870, &qword_20D980570);
  v16 = &v10[*(v7 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = sub_20D974328();
  v18 = *(v1 + *(type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView(0) + 40) + 80);
  sub_20D973AD8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_20D7EAF18(v10, a1, &qword_27C83C878, &qword_20D980578);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C888, &qword_20D980590);
  v28 = a1 + *(result + 36);
  *v28 = v17;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_20D960664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v79 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoricalUsageSummaryChart();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C890, &qword_20D980598);
  v95 = *(v91 - 8);
  v10 = *(v95 + 64);
  v11 = MEMORY[0x28223BE20](v91);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C898, &qword_20D9805A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v97 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v96 = &v77 - v18;
  v89 = sub_20D972628();
  v85 = *(v89 - 8);
  v19 = v85;
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HistoricalUsageSnapshot();
  v23 = *(v22 - 8);
  v90 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8A0, &qword_20D9805A8);
  v28 = *(v27 - 8);
  v92 = (v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v93 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v77 - v32;
  v34 = a1[1];
  v84 = *a1;
  v35 = type metadata accessor for HistoricalUsageWidgetView.WidgetWeekView(0);
  v78 = v35[5];
  sub_20D9631AC(a1 + v78, v26, type metadata accessor for HistoricalUsageSnapshot);
  v36 = v35[6];
  v86 = a1;
  v87 = v35;
  v37 = a1 + v36;
  v38 = *(v4 + 60);
  v39 = *(v19 + 16);
  v77 = v37;
  v40 = v88;
  v41 = v89;
  v39(v88, v37 + v38, v89);
  v82 = *(a1 + v35[9]);
  *v33 = v84;
  *(v33 + 1) = v34;
  v42 = type metadata accessor for HistoricalUsageWidgetView.UsageSummaryView(0);
  v43 = v83;
  sub_20D9631AC(v83, &v33[v42[5]], type metadata accessor for HistoricalUsageSnapshot);
  v39(&v33[v42[6]], v40, v41);
  v33[v42[8]] = v82;
  v44 = *(v90 + 56);

  LOBYTE(v44) = sub_20D972D68();
  (*(v85 + 8))(v40, v41);
  sub_20D963214(v43, type metadata accessor for HistoricalUsageSnapshot);
  v33[v42[7]] = v44 & 1;
  LOBYTE(v44) = sub_20D974338();
  v45 = v86;
  v46 = v87;
  v47 = *(v86 + v87[10] + 72);
  sub_20D973AD8();
  v48 = *(v92 + 11);
  v92 = v33;
  v49 = &v33[v48];
  *v49 = v44;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  if (*(v45 + v46[8]))
  {
    v54 = v96;
    (*(v95 + 56))(v96, 1, 1, v91);
  }

  else
  {
    v55 = v45;
    v56 = v91;
    sub_20D9631AC(v45 + v78, v43, type metadata accessor for HistoricalUsageSnapshot);
    v57 = v79;
    sub_20D9631AC(v77, v79, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    if (qword_281125B78 != -1)
    {
      swift_once();
    }

    v113[10] = xmmword_281125C20;
    v113[11] = xmmword_281125C30;
    v113[12] = xmmword_281125C40;
    v113[6] = xmmword_281125BE0;
    v113[7] = xmmword_281125BF0;
    v113[8] = xmmword_281125C00;
    v113[9] = unk_281125C10;
    v113[2] = xmmword_281125BA0;
    v113[3] = xmmword_281125BB0;
    v113[4] = xmmword_281125BC0;
    v113[5] = xmmword_281125BD0;
    v113[0] = xmmword_281125B80;
    v113[1] = xmmword_281125B90;
    v110 = xmmword_281125C20;
    v111 = xmmword_281125C30;
    v112 = xmmword_281125C40;
    v106 = xmmword_281125BE0;
    v107 = xmmword_281125BF0;
    v108 = xmmword_281125C00;
    v109 = unk_281125C10;
    v102 = xmmword_281125BA0;
    v103 = xmmword_281125BB0;
    v104 = xmmword_281125BC0;
    v105 = xmmword_281125BD0;
    v100 = xmmword_281125B80;
    v101 = xmmword_281125B90;
    sub_20D85D690(v113, &v99);
    sub_20D92046C(v43, v57, &v100, v94);
    v58 = *(v55 + v46[7]);
    sub_20D974C48();
    if (v58)
    {
      v59 = 40.0;
    }

    else
    {
      v59 = 0.0;
    }

    if (v58)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = 60.0;
    }

    v61 = v60;
    v62 = -INFINITY;
    if (v58)
    {
      v61 = v59;
    }

    else
    {
      v62 = v60;
    }

    if (v62 > v61)
    {
      sub_20D975468();
      v63 = sub_20D9742C8();
      sub_20D973408();
    }

    sub_20D973E08();
    v64 = v80;
    sub_20D925A14(v94, v80);
    v65 = (v64 + *(v56 + 36));
    v66 = v105;
    v65[4] = v104;
    v65[5] = v66;
    v65[6] = v106;
    v67 = v101;
    *v65 = v100;
    v65[1] = v67;
    v68 = v103;
    v65[2] = v102;
    v65[3] = v68;
    v69 = v64;
    v70 = v81;
    sub_20D7EAF18(v69, v81, &qword_27C83C890, &qword_20D980598);
    v54 = v96;
    sub_20D7EAF18(v70, v96, &qword_27C83C890, &qword_20D980598);
    (*(v95 + 56))(v54, 0, 1, v56);
  }

  v72 = v92;
  v71 = v93;
  sub_20D7EB7E8(v92, v93, &qword_27C83C8A0, &qword_20D9805A8);
  v73 = v97;
  sub_20D7EB7E8(v54, v97, &qword_27C83C898, &qword_20D9805A0);
  v74 = v98;
  sub_20D7EB7E8(v71, v98, &qword_27C83C8A0, &qword_20D9805A8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8A8, &qword_20D9805B0);
  sub_20D7EB7E8(v73, v74 + *(v75 + 48), &qword_27C83C898, &qword_20D9805A0);
  sub_20D7E3944(v54, &qword_27C83C898, &qword_20D9805A0);
  sub_20D7E3944(v72, &qword_27C83C8A0, &qword_20D9805A8);
  sub_20D7E3944(v73, &qword_27C83C898, &qword_20D9805A0);
  return sub_20D7E3944(v71, &qword_27C83C8A0, &qword_20D9805A8);
}

uint64_t sub_20D960EC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_20D971FC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v131 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8E0, &qword_20D980650);
  v6 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8E8, &qword_20D980658);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v117 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v104 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8F0, &qword_20D980660);
  v129 = *(v130 - 8);
  v13 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v105 = (&v104 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8F8, &qword_20D980668);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v115 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v135 = &v104 - v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  v20 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v136 = &v104 - v21;
  v22 = sub_20D974458();
  v23 = *(v22 - 8);
  v24 = v23[8];
  MEMORY[0x28223BE20](v22);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C900, &qword_20D980670);
  v120 = *(v121 - 8);
  v27 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v104 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C908, &qword_20D980678);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v112 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v134 = &v104 - v33;
  v34 = *a1;
  v35 = a1[1];
  v132 = a1;
  *&v142 = v34;
  *(&v142 + 1) = v35;
  sub_20D7E1EF8();

  v36 = sub_20D9745C8();
  v38 = v37;
  v40 = v39;
  sub_20D974498();
  v41 = v23[13];
  v124 = *MEMORY[0x277CE0A10];
  v125 = v23 + 13;
  v123 = v41;
  v41(v26);
  sub_20D974478();

  v42 = v23[1];
  v126 = v26;
  v128 = v22;
  v127 = v23 + 1;
  v122 = v42;
  v42(v26, v22);
  v43 = sub_20D974558();
  v45 = v44;
  LOBYTE(a1) = v46;
  v48 = v47;

  sub_20D7EADC0(v36, v38, v40 & 1);

  v49 = objc_opt_self();
  v50 = [v49 labelColor];
  v51 = sub_20D974888();
  KeyPath = swift_getKeyPath();
  LOBYTE(v137) = a1 & 1;
  *&v142 = v43;
  *(&v142 + 1) = v45;
  v53 = v136;
  LOBYTE(v143) = a1 & 1;
  *(&v143 + 1) = v48;
  LOWORD(v144) = 256;
  *(&v144 + 1) = KeyPath;
  *&v145 = v51;
  v54 = *MEMORY[0x277CDFA10];
  v55 = sub_20D973D58();
  v56 = *(v55 - 8);
  v57 = *(v56 + 104);
  v58 = v56 + 104;
  v57(v53, v54, v55);
  v59 = sub_20D963A7C(&qword_281127030, MEMORY[0x277CDFA28]);
  result = sub_20D974FD8();
  if (result)
  {
    v108 = v59;
    v109 = v58;
    v110 = v57;
    v111 = v54;
    v107 = v49;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C910, &qword_20D9806B0);
    v62 = sub_20D963700();
    v63 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    v64 = v119;
    v65 = v133;
    sub_20D974778();
    sub_20D7E3944(v53, &qword_27C839080, &qword_20D977AC0);
    v147[0] = v142;
    v147[1] = v143;
    v147[2] = v144;
    v148 = v145;
    sub_20D7E3944(v147, &qword_27C83C910, &qword_20D9806B0);
    *&v142 = v61;
    *(&v142 + 1) = v65;
    *&v143 = v62;
    *(&v143 + 1) = v63;
    v106 = v63;
    v66 = 1;
    swift_getOpaqueTypeConformance2();
    v67 = v121;
    sub_20D9747D8();
    (*(v120 + 8))(v64, v67);
    v68 = type metadata accessor for HistoricalUsageWidgetView.UsageSummaryView(0);
    v69 = v132;
    v70 = v135;
    if ((*(v132 + v68[8]) & 1) == 0)
    {
      v71 = sub_20D974088();
      v72 = v105;
      *v105 = v71;
      *(v72 + 8) = 0x4010000000000000;
      *(v72 + 16) = 0;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C918, &qword_20D9806B8);
      sub_20D961C3C(v69, v72 + *(v73 + 44));
      sub_20D7EAF18(v72, v70, &qword_27C83C8F0, &qword_20D980660);
      v66 = 0;
    }

    (*(v129 + 56))(v70, v66, 1, v130);
    v74 = v69 + v68[5];
    HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrend(_:)(v69 + v68[6], v131);
    v75 = sub_20D9745B8();
    v77 = v76;
    v79 = v78;
    sub_20D974488();
    v80 = v126;
    v81 = v128;
    v123(v126, v124, v128);
    sub_20D974478();

    v122(v80, v81);
    v82 = sub_20D974558();
    v84 = v83;
    LOBYTE(v80) = v85;
    v87 = v86;

    sub_20D7EADC0(v75, v77, v79 & 1);

    v88 = swift_getKeyPath();
    LOBYTE(v142) = v80 & 1;
    LOBYTE(v137) = 0;
    v89 = swift_getKeyPath();
    *&v137 = v82;
    *(&v137 + 1) = v84;
    LOBYTE(v138) = v80 & 1;
    *(&v138 + 1) = v87;
    LOWORD(v139) = 256;
    *(&v139 + 1) = v88;
    *&v140 = 2;
    BYTE8(v140) = 0;
    *&v141 = v89;
    *(&v141 + 1) = 0x3FE8000000000000;
    v90 = v136;
    v110(v136, v111, v55);
    result = sub_20D974FD8();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C920, &qword_20D980720);
      sub_20D9637B8();
      v91 = v113;
      sub_20D974778();
      sub_20D7E3944(v90, &qword_27C839080, &qword_20D977AC0);
      v145 = v140;
      v146 = v141;
      v143 = v138;
      v144 = v139;
      v142 = v137;
      sub_20D7E3944(&v142, &qword_27C83C920, &qword_20D980720);
      v92 = [v107 secondaryLabelColor];
      v93 = sub_20D974888();
      v94 = swift_getKeyPath();
      v95 = (v91 + *(v114 + 36));
      *v95 = v94;
      v95[1] = v93;
      sub_20D963928();
      v96 = v116;
      sub_20D9747D8();
      sub_20D7E3944(v91, &qword_27C83C8E0, &qword_20D980650);
      v97 = v134;
      v98 = v112;
      sub_20D7EB7E8(v134, v112, &qword_27C83C908, &qword_20D980678);
      v99 = v135;
      v100 = v115;
      sub_20D7EB7E8(v135, v115, &qword_27C83C8F8, &qword_20D980668);
      v101 = v117;
      sub_20D7EB7E8(v96, v117, &qword_27C83C8E8, &qword_20D980658);
      v102 = v118;
      sub_20D7EB7E8(v98, v118, &qword_27C83C908, &qword_20D980678);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C930, &qword_20D980740);
      sub_20D7EB7E8(v100, v102 + *(v103 + 48), &qword_27C83C8F8, &qword_20D980668);
      sub_20D7EB7E8(v101, v102 + *(v103 + 64), &qword_27C83C8E8, &qword_20D980658);
      sub_20D7E3944(v96, &qword_27C83C8E8, &qword_20D980658);
      sub_20D7E3944(v99, &qword_27C83C8F8, &qword_20D980668);
      sub_20D7E3944(v97, &qword_27C83C908, &qword_20D980678);
      sub_20D7E3944(v101, &qword_27C83C8E8, &qword_20D980658);
      sub_20D7E3944(v100, &qword_27C83C8F8, &qword_20D980668);
      return sub_20D7E3944(v98, &qword_27C83C908, &qword_20D980678);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D961C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v127 = sub_20D971F38();
  v3 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v5 = v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = v115 - v8;
  v9 = sub_20D975058();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_20D971F48();
  v117 = *(v119 - 8);
  v13 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D975038();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115[2] = v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v133 = v115 - v20;
  v21 = sub_20D974458();
  v129 = *(v21 - 8);
  v130 = v21;
  v22 = *(v129 + 64);
  MEMORY[0x28223BE20](v21);
  v128 = v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20D972AF8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v137 = v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v123 = v115 - v29;
  v120 = sub_20D971FC8();
  v118 = *(v120 - 8);
  v30 = *(v118 + 64);
  v31 = MEMORY[0x28223BE20](v120);
  v125 = v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v126 = v115 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v134 = v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v132 = v115 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B0, &qword_20D97C1D8);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = (v115 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B8, &qword_20D97C1E0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v131 = v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = v115 - v48;
  v50 = type metadata accessor for HistoricalUsageWidgetView.UsageSummaryView(0);
  v51 = v50[7];
  v124 = a1;
  v52 = *(a1 + v51) == 1;
  v136 = v49;
  v121 = v12;
  if (v52)
  {
    v115[1] = v5;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v53 = qword_27C840E88;
    v54 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v56 = *MEMORY[0x277CE1050];
    v57 = sub_20D9749F8();
    (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
    *v54 = swift_getKeyPath();
    *v43 = v53;

    *(v43 + *(v39 + 36)) = sub_20D974908();
    v58 = v136;
    sub_20D7EAF18(v43, v136, &qword_27C83A7B0, &qword_20D97C1D8);
    (*(v40 + 56))(v58, 0, 1, v39);
  }

  else
  {
    (*(v40 + 56))(v49, 1, 1, v39);
  }

  v59 = v50[6];
  v60 = v124 + v50[5];
  v61 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  sub_20D972DB8();
  v63 = v62;
  v64 = v123;
  sub_20D972E58();
  (*(v25 + 104))(v137, *MEMORY[0x277D075B0], v24);
  sub_20D963A7C(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  v65 = v125;
  if (v138 == v142 && v139 == v143)
  {
    v66 = *(v25 + 8);
    v66(v137, v24);
    v66(v64, v24);

LABEL_10:
    sub_20D88D380(0, v126, v63, COERCE__INT64(1.0));
    goto LABEL_14;
  }

  v67 = sub_20D9757C8();
  v68 = *(v25 + 8);
  v68(v137, v24);
  v68(v64, v24);

  if (v67)
  {
    goto LABEL_10;
  }

  sub_20D88D380(0, v65, v63, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  v69 = MEMORY[0x277D84F90];
  v138 = MEMORY[0x277D84F90];
  sub_20D963A7C(&qword_281126E58, MEMORY[0x277CC8B88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
  v70 = v116;
  v71 = v119;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v117 + 8))(v70, v71);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v72 = qword_28112ABE8;
  v73 = sub_20D9726E8();
  (*(*(v73 - 8) + 56))(v122, 1, 1, v73);
  v138 = v69;
  sub_20D963A7C(&qword_281126E60, MEMORY[0x277CC8B58]);
  v74 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
  sub_20D9755D8();
  sub_20D971FB8();
  (*(v118 + 8))(v65, v120);
LABEL_14:
  v75 = sub_20D9745B8();
  v77 = v76;
  v79 = v78;
  v80 = [objc_opt_self() labelColor];
  v138 = sub_20D974888();
  v81 = sub_20D974518();
  v83 = v82;
  v85 = v84;
  sub_20D7EADC0(v75, v77, v79 & 1);

  sub_20D974438();
  v87 = v129;
  v86 = v130;
  v88 = v128;
  (*(v129 + 104))(v128, *MEMORY[0x277CE0A10], v130);
  sub_20D974478();

  (*(v87 + 8))(v88, v86);
  v89 = sub_20D974558();
  v91 = v90;
  v93 = v92;

  sub_20D7EADC0(v81, v83, v85 & 1);

  v94 = *MEMORY[0x277CE09A0];
  v95 = sub_20D9743C8();
  v96 = *(v95 - 8);
  v97 = v133;
  (*(v96 + 104))(v133, v94, v95);
  (*(v96 + 56))(v97, 0, 1, v95);
  v98 = sub_20D9744E8();
  v100 = v99;
  LOBYTE(v96) = v101;
  sub_20D7EADC0(v89, v91, v93 & 1);

  sub_20D7E3944(v97, &qword_27C838C08, &qword_20D977450);
  sub_20D9743F8();
  v102 = sub_20D9744F8();
  v104 = v103;
  LOBYTE(v89) = v105;
  v107 = v106;
  sub_20D7EADC0(v98, v100, v96 & 1);

  v138 = v102;
  v139 = v104;
  v140 = v89 & 1;
  v141 = v107;
  v108 = v132;
  sub_20D9747D8();
  sub_20D7EADC0(v102, v104, v89 & 1);

  v109 = v136;
  v110 = v131;
  sub_20D7EB7E8(v136, v131, &qword_27C83A7B8, &qword_20D97C1E0);
  v111 = v134;
  sub_20D7EB7E8(v108, v134, &qword_27C838F18, &unk_20D977860);
  v112 = v135;
  sub_20D7EB7E8(v110, v135, &qword_27C83A7B8, &qword_20D97C1E0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C938, &qword_20D980748);
  sub_20D7EB7E8(v111, v112 + *(v113 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v108, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v109, &qword_27C83A7B8, &qword_20D97C1E0);
  sub_20D7E3944(v111, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v110, &qword_27C83A7B8, &qword_20D97C1E0);
}

uint64_t sub_20D962B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8D0, &qword_20D980640);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_20D974168();
  *(v4 + 1) = 0x3FF0000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C8D8, &qword_20D980648);
  sub_20D960EC8(v0, &v4[*(v5 + 44)]);
  sub_20D7EBC4C(&qword_281124D30, &qword_27C83C8D0, &qword_20D980640);
  sub_20D9746B8();
  return sub_20D7E3944(v4, &qword_27C83C8D0, &qword_20D980640);
}

uint64_t sub_20D962CB8()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  v5 = v4;
  v6 = sub_20D975108();
  sub_20D974FE8();
  sub_20D9726B8();
  sub_20D975108();
  return v6;
}

unint64_t sub_20D962EB0()
{
  result = qword_281124E20;
  if (!qword_281124E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C840, &qword_20D980420);
    sub_20D7EBC4C(&qword_281124FD8, &qword_27C83C828, &qword_20D980388);
    sub_20D9635A8(&qword_281124FC8, &qword_27C83C838, &qword_20D980398, sub_20D95FBCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E20);
  }

  return result;
}

uint64_t sub_20D962FEC()
{
  result = type metadata accessor for HistoricalUsageSnapshot();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D9630D4()
{
  result = qword_27C83C860;
  if (!qword_27C83C860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C850, &qword_20D980518);
    sub_20D809130();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C860);
  }

  return result;
}

uint64_t sub_20D9631AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D963214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v10 = type metadata accessor for HistoricalUsageSnapshot();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = a4(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_15Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = type metadata accessor for HistoricalUsageSnapshot();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v6 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = a5(0);
      v16 = *(*(v15 - 8) + 56);
      v17 = v6 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t sub_20D963504()
{
  result = type metadata accessor for HistoricalUsageSnapshot();
  if (v1 <= 0x3F)
  {
    result = sub_20D972628();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D9635A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D96362C()
{
  result = qword_281124F28;
  if (!qword_281124F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C878, &qword_20D980578);
    sub_20D7EBC4C(&qword_281124D38, &qword_27C83C870, &qword_20D980570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F28);
  }

  return result;
}

unint64_t sub_20D963700()
{
  result = qword_281124F08;
  if (!qword_281124F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C910, &qword_20D9806B0);
    sub_20D91F06C();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F08);
  }

  return result;
}

unint64_t sub_20D9637B8()
{
  result = qword_281124EA8;
  if (!qword_281124EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C920, &qword_20D980720);
    sub_20D963870();
    sub_20D7EBC4C(&qword_281124DC8, &qword_27C83A7A0, &unk_20D97C1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124EA8);
  }

  return result;
}

unint64_t sub_20D963870()
{
  result = qword_281124F00;
  if (!qword_281124F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C928, &qword_20D980728);
    sub_20D91F06C();
    sub_20D7EBC4C(&qword_281124DA8, &qword_27C83A798, &unk_20D980730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F00);
  }

  return result;
}

unint64_t sub_20D963928()
{
  result = qword_281124F80;
  if (!qword_281124F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C8E0, &qword_20D980650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C920, &qword_20D980720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
    sub_20D9637B8();
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F80);
  }

  return result;
}

uint64_t sub_20D963A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D963AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D963B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D963B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v5 = **a1;
  v4 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v48 = *(*a1 + 16);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 24);
  v11 = *(v8 + 16);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  v19 = v13[4];
  v20 = v14[1];
  v45 = *v14;
  v21 = v14[2];
  v22 = v14[3];
  v23 = v14[4];
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v26 = *v24;
  v27 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  v30 = v24[4];
  v31 = *v25;
  v47 = v25[1];
  v32 = v25[2];
  v34 = *(a1 + 64);
  v33 = *(a1 + 72);
  v46 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v48;
  *(a2 + 24) = v6;
  v37 = v3[1];
  *(a2 + 32) = *v3;
  *(a2 + 48) = v37;
  v38 = v3[3];
  *(a2 + 64) = v3[2];
  *(a2 + 80) = v38;
  *(a2 + 96) = v9;
  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  *(a2 + 120) = v12;
  v39 = *v7;
  v40 = v7[1];
  v41 = v7[3];
  *(a2 + 160) = v7[2];
  *(a2 + 176) = v41;
  *(a2 + 128) = v39;
  *(a2 + 144) = v40;
  *(a2 + 192) = v15;
  *(a2 + 200) = v16;
  *(a2 + 208) = v17;
  *(a2 + 216) = v18;
  *(a2 + 224) = v19;
  *(a2 + 232) = v45;
  *(a2 + 240) = v20;
  *(a2 + 248) = v21;
  *(a2 + 256) = v22;
  *(a2 + 264) = v23;
  *(a2 + 272) = v26;
  *(a2 + 280) = v27;
  *(a2 + 288) = v28;
  *(a2 + 296) = v29;
  *(a2 + 304) = v30;
  *(a2 + 312) = v31;
  *(a2 + 320) = v47;
  *(a2 + 328) = v32;
  v42 = v34[3];
  *(a2 + 368) = v34[2];
  *(a2 + 384) = v42;
  v43 = v34[1];
  *(a2 + 336) = *v34;
  *(a2 + 352) = v43;
  *(a2 + 400) = v46;
  *(a2 + 408) = v35;
  *(a2 + 416) = v36;
  sub_20D7DDC4C(v5, v4, v48);

  sub_20D7DDC4C(v9, v10, v11);
}

uint64_t sub_20D963D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v103 = a2;
  v2 = sub_20D9726E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D975058();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v10 = qword_28112ABE8;
  v11 = qword_28112ABE8;
  v106 = v10;
  v12 = v11;
  sub_20D9726B8();
  v13 = v12;
  v154 = sub_20D975108();
  v155 = v14;
  v94 = sub_20D7E1EF8();
  v15 = sub_20D9745C8();
  v17 = v16;
  v19 = v18;
  sub_20D974428();
  v20 = sub_20D974558();
  v104 = v5;
  v105 = v9;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_20D7EADC0(v15, v17, v19 & 1);

  v26 = sub_20D974548();
  v28 = v27;
  LOBYTE(v17) = v29;
  sub_20D7EADC0(v21, v23, v25 & 1);

  sub_20D974958();
  v30 = sub_20D974508();
  v100 = v31;
  v101 = v30;
  v102 = v32;
  v99 = v33;

  sub_20D7EADC0(v26, v28, v17 & 1);

  v74 = *(v107 + 16);
  v34 = v74;
  sub_20D974C48();
  sub_20D973C18();
  v97 = v166;
  v98 = v164;
  v95 = v169;
  v96 = v168;
  v187 = 1;
  v185 = v165;
  v183 = v167;
  sub_20D974FE8();
  sub_20D9726B8();
  v154 = sub_20D975108();
  v155 = v35;
  v36 = sub_20D9745C8();
  v38 = v37;
  LOBYTE(v10) = v39;
  sub_20D974398();
  v40 = sub_20D974558();
  v42 = v41;
  v44 = v43;

  sub_20D7EADC0(v36, v38, v10 & 1);

  sub_20D974968();
  v45 = sub_20D974508();
  v88 = v46;
  v89 = v45;
  LODWORD(v94) = v47;
  v87 = v48;

  sub_20D7EADC0(v40, v42, v44 & 1);

  sub_20D974C48();
  sub_20D973C18();
  v90 = v170;
  v91 = v172;
  v92 = v175;
  v93 = v174;
  v193 = 1;
  v191 = v171;
  v189 = v173;
  sub_20D974FE8();
  sub_20D9726B8();
  v49 = sub_20D975108();
  v85 = v50;
  v86 = v49;
  v51 = _s12HomeEnergyUI25UtilityIntegrationStringsV33howElectricityMeasuredDescriptionSSvgZ_0();
  v83 = v52;
  v84 = v51;
  sub_20D974FE8();
  sub_20D9726B8();
  v53 = sub_20D975108();
  v81 = v54;
  v82 = v53;
  sub_20D974FE8();
  sub_20D9726B8();
  v55 = sub_20D975108();
  v79 = v56;
  v80 = v55;
  sub_20D974FE8();
  sub_20D9726B8();
  v57 = sub_20D975108();
  v77 = v58;
  v78 = v57;
  sub_20D974FE8();
  sub_20D9726B8();
  v59 = sub_20D975108();
  v75 = v60;
  v76 = v59;
  sub_20D974FE8();
  sub_20D9726B8();
  v61 = sub_20D975108();
  v63 = v62;
  v64 = v107;
  v65 = *(v107 + 24);

  sub_20D974C48();
  sub_20D973C18();
  v66 = v176;
  v67 = v178;
  v73 = v181;
  v74 = v180;
  v199 = 1;
  v197 = v177;
  v195 = v179;
  sub_20D974FE8();
  sub_20D9726B8();
  v68 = sub_20D975108();
  v150 = v101;
  v151 = v100;
  v153 = v99;
  v142 = v98;
  v145 = v97;
  v148 = v96;
  v149 = v95;
  v135 = v89;
  v136 = v88;
  v138 = v87;
  v69 = *(v64 + 32);
  v152 = v102 & 1;
  v139 = 0;
  v140 = v187;
  *v141 = *v186;
  *&v141[3] = *&v186[3];
  v143 = v185;
  *v144 = *v184;
  *&v144[3] = *&v184[3];
  v146 = v183;
  *&v147[3] = *&v182[3];
  *v147 = *v182;
  v154 = &v150;
  v155 = &v139;
  v137 = v94 & 1;
  v124 = 0;
  v125 = v193;
  *v126 = *v192;
  *&v126[3] = *&v192[3];
  v127 = v90;
  v128 = v191;
  *v129 = *v190;
  *&v129[3] = *&v190[3];
  v130 = v91;
  v131 = v189;
  *&v132[3] = *&v188[3];
  *v132 = *v188;
  v133 = v93;
  v134 = v92;
  v156 = &v135;
  v157 = &v124;
  v123[0] = v86;
  v123[1] = v85;
  v123[2] = v84;
  v123[3] = v83;
  v123[4] = v34;
  v122[0] = v82;
  v122[1] = v81;
  v122[2] = v80;
  v122[3] = v79;
  v122[4] = v34;
  v158 = v123;
  v159 = v122;
  v121[0] = v78;
  v121[1] = v77;
  v121[2] = v76;
  v121[3] = v75;
  v121[4] = v34;
  v120[0] = v61;
  v120[1] = v63;
  v120[2] = v65;
  v160 = v121;
  v161 = v120;
  v109 = 0;
  v110 = v199;
  *v111 = *v198;
  *&v111[3] = *&v198[3];
  v112 = v66;
  v113 = v197;
  *v114 = *v196;
  *&v114[3] = *&v196[3];
  v115 = v67;
  v116 = v195;
  *&v117[3] = *&v194[3];
  *v117 = *v194;
  v118 = v74;
  v119 = v73;
  v108[0] = v68;
  v108[1] = v70;
  v108[2] = v69;
  v162 = &v109;
  v163 = v108;
  sub_20D963B80(&v154, v103);

  sub_20D7EADC0(v135, v136, v137);

  sub_20D7EADC0(v150, v151, v152);
}

uint64_t sub_20D964750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C958, &unk_20D980960);
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v11;
  v46 = a1;
  v47 = a2;
  sub_20D7E1EF8();

  v12 = sub_20D9745C8();
  v14 = v13;
  v16 = v15;
  v17 = sub_20D974548();
  v19 = v18;
  v21 = v20;
  sub_20D7EADC0(v12, v14, v16 & 1);

  sub_20D974958();
  v22 = sub_20D974508();
  v39 = v23;
  v40 = v24;
  v41 = v25;

  sub_20D7EADC0(v17, v19, v21 & 1);

  v46 = v42;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D7EBC4C(&qword_27C83C960, &qword_27C8398E8, &unk_20D97ABF0);
  sub_20D965810();
  v26 = v45;
  sub_20D974B98();
  v27 = v7;
  v28 = *(v7 + 16);
  v30 = v43;
  v29 = v44;
  v28(v43, v26, v44);
  v31 = a4;
  *a4 = v22;
  v32 = v39;
  v31[1] = v39;
  v33 = v40 & 1;
  *(v31 + 16) = v40 & 1;
  v31[3] = v41;
  v34 = v31;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C970, &qword_20D980990);
  v28(v34 + *(v35 + 48), v30, v29);
  sub_20D7DDC4C(v22, v32, v33);
  v36 = *(v27 + 8);

  v36(v45, v29);
  v36(v30, v29);
  sub_20D7EADC0(v22, v32, v33);
}

uint64_t sub_20D964AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_20D964AB8@<X0>(uint64_t a1@<X8>)
{
  v21 = *v1;
  v22 = v1[1];
  sub_20D7E1EF8();

  v3 = sub_20D9745C8();
  v5 = v4;
  v7 = v6;
  sub_20D974398();
  v8 = sub_20D974558();
  v10 = v9;
  v12 = v11;

  sub_20D7EADC0(v3, v5, v7 & 1);

  sub_20D974968();
  v13 = sub_20D974508();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_20D7EADC0(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_20D964BE4@<X0>(uint64_t a1@<X8>)
{
  v50 = *v1;
  v52 = v1[1];
  sub_20D7E1EF8();

  v3 = sub_20D9745C8();
  v5 = v4;
  v7 = v6;
  sub_20D974438();
  v8 = sub_20D974558();
  v10 = v9;
  v12 = v11;

  sub_20D7EADC0(v3, v5, v7 & 1);

  v13 = sub_20D974548();
  v15 = v14;
  v17 = v16;
  sub_20D7EADC0(v8, v10, v12 & 1);

  sub_20D974958();
  v18 = sub_20D974508();
  v41 = v19;
  v42 = v18;
  v40 = v20;
  v43 = v21;

  sub_20D7EADC0(v13, v15, v17 & 1);

  v38 = v39[4];
  sub_20D974C48();
  sub_20D973C18();
  v51 = v39[2];
  v53 = v39[3];

  v22 = sub_20D9745C8();
  v24 = v23;
  LOBYTE(v15) = v25;
  sub_20D974398();
  v26 = sub_20D974558();
  v28 = v27;
  LOBYTE(v13) = v29;

  sub_20D7EADC0(v22, v24, v15 & 1);

  sub_20D974968();
  v30 = sub_20D974508();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_20D7EADC0(v26, v28, v13 & 1);

  sub_20D974C48();
  sub_20D973C18();
  *a1 = v42;
  *(a1 + 8) = v41;
  *(a1 + 16) = v40 & 1;
  *(a1 + 24) = v43;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v44;
  *(a1 + 56) = v45;
  *(a1 + 64) = v46;
  *(a1 + 72) = v47;
  *(a1 + 80) = v48;
  *(a1 + 88) = v49;
  *(a1 + 96) = v30;
  *(a1 + 104) = v32;
  *(a1 + 112) = v34 & 1;
  *(a1 + 120) = v36;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = v51;
  *(a1 + 152) = v53;
  *(a1 + 160) = v54;
  *(a1 + 168) = v55;
  *(a1 + 176) = v56;
  sub_20D7DDC4C(v42, v41, v40 & 1);

  sub_20D7DDC4C(v30, v32, v34 & 1);

  sub_20D7EADC0(v30, v32, v34 & 1);

  sub_20D7EADC0(v42, v41, v40 & 1);
}

void *sub_20D964F94@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v12 = *(v1 + 32);
  v4 = sub_20D974168();
  v10 = 1;
  sub_20D963D58(v11, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_20D965058(__dst, v7);
  sub_20D9650C8(v14);
  memcpy(&v9[7], __dst, 0x1A8uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x1AFuLL);
}

uint64_t sub_20D965058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C940, &unk_20D980830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9650C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C940, &unk_20D980830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D965130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_20D9726E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_20D975058();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20D980780;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v11 = qword_28112ABE8;
  sub_20D9726B8();
  v12 = v11;
  *(v10 + 32) = sub_20D975108();
  *(v10 + 40) = v13;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v10 + 48) = sub_20D975108();
  *(v10 + 56) = v14;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v10 + 64) = sub_20D975108();
  *(v10 + 72) = v15;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v10 + 80) = sub_20D975108();
  *(v10 + 88) = v16;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v10 + 96) = sub_20D975108();
  *(v10 + 104) = v17;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v10 + 112) = sub_20D975108();
  *(v10 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20D980780;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v19 + 32) = sub_20D975108();
  *(v19 + 40) = v20;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v19 + 48) = sub_20D975108();
  *(v19 + 56) = v21;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v19 + 64) = sub_20D975108();
  *(v19 + 72) = v22;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v19 + 80) = sub_20D975108();
  *(v19 + 88) = v23;
  sub_20D974FE8();
  sub_20D9726B8();
  *(v19 + 96) = sub_20D975108();
  *(v19 + 104) = v24;
  sub_20D974FE8();
  sub_20D9726B8();
  result = sub_20D975108();
  *(v19 + 112) = result;
  *(v19 + 120) = v26;
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0x4024000000000000;
  a3[3] = v10;
  a3[4] = v19;
  return result;
}

uint64_t sub_20D9656A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20D9656E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D965738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20D965780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D965810()
{
  result = qword_27C83C968;
  if (!qword_27C83C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83C968);
  }

  return result;
}

uint64_t sub_20D965890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C10, &qword_20D977458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - v6);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C998, &qword_20D980A28);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v26 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C9A0, &qword_20D980A30);
  v12 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - v13;
  v15 = sub_20D9743B8();
  KeyPath = swift_getKeyPath();
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C20, &qword_20D977498) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C28, &qword_20D9774A0) + 28);

  sub_20D974198();
  v19 = sub_20D9741A8();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  *v17 = swift_getKeyPath();
  *v7 = a2;
  v7[1] = KeyPath;
  v7[2] = v15;
  if (qword_281126F30 != -1)
  {
    swift_once();
  }

  v20 = qword_28112ABF8;
  v21 = sub_20D974948();
  v22 = (v7 + *(v4 + 36));
  *v22 = v20;
  v22[1] = v21;
  v23 = sub_20D7EFE2C();

  sub_20D974768();
  sub_20D7E3944(v7, &qword_27C838C10, &qword_20D977458);
  v30 = v4;
  v31 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v26;
  sub_20D9747B8();
  (*(v8 + 8))(v11, v24);
  sub_20D973D98();
  return sub_20D7DD478(v14);
}

uint64_t sub_20D965BD0()
{
  result = sub_20D9749D8();
  qword_28112ABF0 = result;
  return result;
}

uint64_t sub_20D965C08()
{
  result = sub_20D9749D8();
  qword_28112AB68 = result;
  return result;
}

uint64_t sub_20D965C40()
{
  result = sub_20D9749B8();
  qword_27C840E70 = result;
  return result;
}

uint64_t sub_20D965C78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_20D9749D8();
  sub_20D974188();
  v4 = sub_20D9741A8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_20D9749E8();

  result = sub_20D7E3944(v3, &qword_27C838C48, &qword_20D977500);
  qword_28112AB60 = v5;
  return result;
}

uint64_t sub_20D965D94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_20D9749D8();
  sub_20D974188();
  v4 = sub_20D9741A8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_20D9749E8();

  result = sub_20D7E3944(v3, &qword_27C838C48, &qword_20D977500);
  qword_27C840E78 = v5;
  return result;
}

uint64_t sub_20D965EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C48, &qword_20D977500);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_20D9749B8();
  sub_20D974188();
  v4 = sub_20D9741A8();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_20D9749E8();

  result = sub_20D7E3944(v3, &qword_27C838C48, &qword_20D977500);
  qword_27C840E80 = v5;
  return result;
}

uint64_t sub_20D965FCC()
{
  result = sub_20D9749D8();
  qword_27C840E88 = result;
  return result;
}

uint64_t sub_20D966004(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_20D9757C8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20D966208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000020D981670;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000020D981690;
    }

    v5 = 0x800000020D981630;
    if (a1 != 3)
    {
      v5 = 0x800000020D981650;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_20D9757C8();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000020D981670;
    }

    else
    {
      v10 = 0x800000020D981690;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000020D981630;
    }

    else
    {
      v10 = 0x800000020D981650;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_20D9663E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_20D9757C8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_20D96659C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x726F707075736E75;
  v5 = 0xEB00000000646574;
  if (a1 != 5)
  {
    v4 = 0x676E6964616F6CLL;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1952541798;
  if (a1 != 3)
  {
    v7 = 0x6465786966;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7696244;
  if (a1 != 1)
  {
    v9 = 0x646572656974;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 7696244)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x646572656974)
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
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEB00000000646574;
      if (v10 != 0x726F707075736E75)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E6964616F6CLL)
      {
LABEL_39:
        v13 = sub_20D9757C8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1952541798)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6465786966)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_20D9667AC()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D9668C0()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D9669AC()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D966ABC()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t UtilityRateInfoSnapshot.peakUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v90 = sub_20D972488();
  v93 = *(v90 - 8);
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v88 = &v63 - v13;
  v14 = sub_20D972628();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v69 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v87 = &v63 - v19;
  v95 = sub_20D973158();
  v20 = *(v95 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v95);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v25);
  v94 = &v63 - v28;
  v29 = type metadata accessor for UtilityRateInfoSnapshot();
  v30 = v29;
  v31 = *(v2 + v29[14]);
  v32 = *(v31 + 16);
  v91 = v31;
  v83 = v32;
  if (v32)
  {
    v64 = v27;
    v82 = v12;
    v66 = v24;
    v67 = v9;
    v92 = v29[5];
    v84 = v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v65 = v29;
    v33 = v29[9];
    v85 = v20 + 16;
    v80 = (v93 + 8);
    v81 = v33;
    v93 = v15 + 56;
    v72 = "Home.Energy.EducationTip.Icon";
    v75 = (v15 + 32);
    v74 = (v15 + 16);
    v68 = v15;
    v78 = (v15 + 8);
    v86 = (v20 + 8);

    v35 = 0;
    *&v36 = 136315394;
    v71 = v36;
    v73 = v20;
    v79 = (v15 + 48);
    do
    {
      if (v35 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      v76 = *(v20 + 72);
      v77 = *(v20 + 16);
      v77(v94, v84 + v76 * v35, v95);
      sub_20D973148();
      v37 = v89;
      sub_20D972FD8();
      v38 = v82;
      sub_20D972468();
      (*v80)(v37, v90);
      v39 = *v93;
      (*v93)(v38, 0, 1, v14);
      v40 = v88;
      (*v75)(v88, v38, v14);
      v39(v40, 0, 1, v14);
      v41 = v87;

      v42 = *v79;
      if ((*v79)(v40, 1, v14) == 1)
      {
        (*v74)(v41, v2 + v92, v14);
        v43 = v42(v40, 1, v14);
        v31 = v91;
        if (v43 != 1)
        {
          sub_20D7E3944(v40, &qword_27C8389E8, &qword_20D9768D0);
        }
      }

      else
      {
        (*v75)(v41, v40, v14);
        v31 = v91;
      }

      v44 = sub_20D972538();
      (*v78)(v41, v14);
      if (v44)
      {

        v48 = v94;
        sub_20D973148();
        UtilityRateInfoSnapshot.stringToDate(stringDate:)(v70);

        return (*v86)(v48, v95);
      }

      ++v35;
      v45 = *v86;
      result = (*v86)(v94, v95);
    }

    while (v83 != v35);

    v49 = *(v31 + 16);
    if (v49)
    {
      v50 = v64;
      v51 = v95;
      v77(v64, v84 + v76 * (v49 - 1), v95);
      sub_20D973148();
      v45(v50, v51);
    }

    v46 = v70;
    v15 = v68;
    v9 = v67;
    v47 = v66;
    v30 = v65;
  }

  else
  {
    v46 = v70;
    v47 = v24;
  }

  UtilityRateInfoSnapshot.stringToDate(stringDate:)(v9);

  v52 = *(v15 + 48);
  if (v52(v9, 1, v14) == 1)
  {
    v53 = v2 + v30[5];
    v54 = v47;
    v55 = v30;
    v56 = v69;
    (*(v15 + 16))(v69, v53, v14);
    v57 = v52(v9, 1, v14);
    v58 = v56;
    v30 = v55;
    v47 = v54;
    v46 = v70;
    if (v57 != 1)
    {
      sub_20D7E3944(v9, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    v58 = v69;
    (*(v15 + 32))(v69, v9, v14);
  }

  v59 = v30[5];
  v60 = sub_20D972548();
  (*(v15 + 8))(v58, v14);
  if (v60)
  {
    (*(v15 + 16))(v46, v2 + v30[7], v14);
    return (*(v15 + 56))(v46, 0, 1, v14);
  }

  else
  {
    v61 = *(v91 + 16);
    if (v61)
    {
      v62 = v95;
      (*(v20 + 16))(v47, v91 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * (v61 - 1), v95);
      sub_20D973148();
      (*(v20 + 8))(v47, v62);
    }

    UtilityRateInfoSnapshot.stringToDate(stringDate:)(v46);
  }
}

uint64_t UtilityRateInfoSnapshot.description.getter()
{
  v1 = type metadata accessor for UtilityRateInfoSnapshot();
  if (*(v0 + *(v1 + 44)) <= 2u)
  {
    *(v0 + *(v1 + 44));
  }

  else if (*(v0 + *(v1 + 44)) > 4u)
  {
    v2 = 0;
    v3 = 0;
    if (*(v0 + *(v1 + 44)) != 5)
    {
      goto LABEL_7;
    }
  }

  sub_20D7E1EF8();
  v2 = sub_20D975538();
  v3 = v4;

LABEL_7:
  sub_20D975678();

  v9 = *v0;
  v10 = v0[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA30, &qword_20D976870);
  v5 = sub_20D975118();
  MEMORY[0x20F323340](v5);

  MEMORY[0x20F323340](0x616C506574617220, 0xEF203A656D614E6ELL);
  MEMORY[0x20F323340](*(v0 + *(v1 + 32)), *(v0 + *(v1 + 32) + 8));
  MEMORY[0x20F323340](673197344, 0xE400000000000000);
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0x7272456F6ELL;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x20F323340](v6, v7);

  MEMORY[0x20F323340](41, 0xE100000000000000);
  return 0x4449657469536B65;
}

uint64_t sub_20D9678F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_20D95DA5C(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_20D95DA5C((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_20D84E340();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_20D7EB734(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20D9679F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_20D9756F8();
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
      swift_dynamicCast();
      sub_20D9756D8();
      v5 = *(v8 + 16);
      sub_20D975708();
      sub_20D975718();
      sub_20D9756E8();
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t UtilityRateInfoSnapshot.peakSymbol.getter()
{
  UtilityRateInfoSnapshot.attributedPeak.getter(v2);
  if (v3 == 1)
  {
    return 0;
  }

  v1 = v4;
  sub_20D8EE800(v2[0], v2[1], v2[2], v3);
  if (v1 >= 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t UtilityRateInfoSnapshot.peakVariableValue.getter()
{
  result = UtilityRateInfoSnapshot.attributedPeak.getter(v5);
  v1 = v6;
  if (v6 != 1)
  {
    v3 = v5[1];
    v2 = v5[2];
    v4 = v5[0];
    PeakPeriodAttributes.variableValue.getter();
    return sub_20D8EE800(v4, v3, v2, v1);
  }

  return result;
}

uint64_t UtilityRateInfoSnapshot.peakName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot() + 56));
  v6 = *(v5 + 16);
  v7 = sub_20D973158();
  v8 = *(v7 - 8);
  v9 = v8;
  if (v6)
  {
    (*(v8 + 16))(v4, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    (*(v9 + 56))(v4, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v4, 1, 1, v7);
  }

  v10 = sub_20D96D7D4(v4);
  sub_20D7E3944(v4, &unk_27C83CA40, &qword_20D980AA0);
  return v10;
}

uint64_t sub_20D967D64()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v0;
  if (v5 <= 2)
  {
    if (*v0)
    {
      if (v5 == 1)
      {
        sub_20D974FE8();
        if (qword_281126E98 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_20D974FE8();
        if (qword_281126E98 == -1)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_21;
  }

  if (*v0 <= 4u)
  {
    if (v5 == 3)
    {
      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_21;
  }

  if (v5 == 5)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
LABEL_21:
    swift_once();
  }

LABEL_20:
  v6 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t UtilityRateInfoSnapshot.statusAndAdviceTextPlusSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D9726E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_20D975058();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for UtilityRateInfoSnapshot();
  if (*(v1 + *(v7 + 44)) != 6)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v8 = *(v7 + 40);
  v9 = *(v1 + v8);
  if (v9 == 7)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xE000000000000000;
    v13 = 0xE200000000000000;
    result = 11565;
    goto LABEL_7;
  }

  if ((sub_20D96659C(*(v1 + v8), 1u) & 1) == 0)
  {
    if ((sub_20D96659C(v9, 2u) & 1) == 0)
    {
      result = sub_20D967D64();
      goto LABEL_6;
    }

    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
LABEL_5:
      v15 = qword_28112ABE8;
      sub_20D9726B8();
      result = sub_20D975108();
LABEL_6:
      v10 = 0;
      v11 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_7;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  UtilityRateInfoSnapshot.peakName.getter();
  v12 = 0xE000000000000000;
  v17 = sub_20D9751B8();
  result = 11565;
  if (v17 == 11565 && v16 == 0xE200000000000000)
  {
    v10 = 0;
    v11 = 0;
    v13 = 0xE200000000000000;
  }

  else
  {
    v18 = v16;
    if (sub_20D9757C8())
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v11 = UtilityRateInfoSnapshot.energyPricing.getter();
      v12 = v19;
      v10 = 1;
    }

    result = v17;
    v13 = v18;
  }

LABEL_7:
  *a1 = v10;
  *(a1 + 8) = result;
  *(a1 + 16) = v13;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  return result;
}

unint64_t UtilityRateInfoSnapshot.currentDayPeaks.getter()
{
  v253 = type metadata accessor for UtilityRateInfoSnapshot();
  v0 = *(*(v253 - 1) + 64);
  v1 = MEMORY[0x28223BE20](v253);
  *&v259 = &v211 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v217 = &v211 - v3;
  v228 = sub_20D971D98();
  v224 = *(v228 - 8);
  v4 = *(v224 + 64);
  v5 = MEMORY[0x28223BE20](v228);
  v216 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v231 = &v211 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v226 = &v211 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v227 = &v211 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v237 = &v211 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v239 = &v211 - v20;
  MEMORY[0x28223BE20](v19);
  v256 = &v211 - v21;
  v251 = sub_20D972628();
  v22 = *(v251 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v251);
  v223 = &v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v225 = &v211 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v232 = &v211 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v236 = &v211 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v250 = (&v211 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v257 = &v211 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v260 = &v211 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v211 - v39;
  MEMORY[0x28223BE20](v38);
  v221 = &v211 - v41;
  v262 = sub_20D973158();
  v42 = *(v262 - 8);
  v43 = *(v42 + 8);
  v44 = MEMORY[0x28223BE20](v262);
  v46 = &v211 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v211 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v238 = &v211 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v229 = &v211 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v245 = &v211 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v261 = (&v211 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v211 - v59;
  MEMORY[0x28223BE20](v58);
  v263 = &v211 - v61;
  if (qword_27C838480 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v62 = sub_20D9734F8();
    v222 = __swift_project_value_buffer(v62, qword_27C840CE0);
    v63 = sub_20D9734D8();
    v64 = sub_20D975438();
    v65 = os_log_type_enabled(v63, v64);
    v230 = v22;
    v219 = v12;
    v218 = v49;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v264 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_20D7F4DC8(0x44746E6572727563, 0xEF736B6165507961, &v264);
      _os_log_impl(&dword_20D7C9000, v63, v64, "%s: converting UtilityPeakPeriods", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x20F324260](v67, -1, -1);
      MEMORY[0x20F324260](v66, -1, -1);
    }

    v265 = MEMORY[0x277D84F98];
    v247 = *&v254[v253[13]];
    v68 = *(v247 + 16);
    v69 = v262;
    if (!v68)
    {
      break;
    }

    v214 = v40;
    if (v68 == 1)
    {
      v70 = (v42[80] + 32) & ~v42[80];
      (*(v42 + 2))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A0, &qword_20D97B440);
      v71 = swift_allocObject();
      v259 = xmmword_20D979110;
      *(v71 + 16) = xmmword_20D979110;
      v261 = v42;
      v260 = sub_20D973128();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A348, &unk_20D97B430);
      v72 = *(v224 + 72);
      v73 = (*(v224 + 80) + 32) & ~*(v224 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = v259;
      v76 = v253;
      v75 = v254;
      v77 = *(v230 + 16);
      v78 = v251;
      v77(v221, &v254[v253[5]], v251);
      v77(v214, (v75 + v76[7]), v78);
      sub_20D971D58();
      v79 = UtilityRateInfoSnapshot.uniquePeakRanks.getter();
      v80 = v261;
      *(v71 + 32) = v260;
      *(v71 + 40) = v74;
      v60 = v71;
      *(v71 + 48) = v79;
      v80[1](v263, v69);
      return v60;
    }

    v213 = v68 - 1;
    v244 = v68;
    v211 = v46;
    v220 = (v42[80] + 32) & ~v42[80];
    v90 = v247;
    v91 = v247 + v220;
    v40 = v42 + 16;
    v49 = *(v42 + 2);
    (v49)(v60, v247 + v220, v262);
    v92 = v42;
    *&v259 = sub_20D973128();
    v22 = (v42 + 8);
    v42 = *(v42 + 1);
    (v42)(v60, v69);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A348, &unk_20D97B430);
    v94 = *(v224 + 80);
    v241 = *(v224 + 72);
    v252 = (v94 + 32) & ~v94;
    v234 = v94;
    v235 = v93;
    v95 = swift_allocObject();
    v233 = xmmword_20D979110;
    v249 = v95;
    *(v95 + 16) = xmmword_20D979110;
    v96 = v254;
    v97 = *(v230 + 16);
    v98 = &v254[v253[6]];
    v99 = v251;
    v243 = v230 + 16;
    v242 = v97;
    v97(v260, v98, v251);
    if (*(v90 + 16) < 2uLL)
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v258 = v92[9];
    v212 = v91;
    v100 = v258 + v91;
    v101 = v261;
    (v49)(v261, v100, v69);
    sub_20D973148();
    v263 = v22;
    (v42)(v101, v69);
    v102 = v256;
    UtilityRateInfoSnapshot.stringToDate(stringDate:)(v256);

    v103 = v230;
    v104 = (v230 + 48);
    v105 = *(v230 + 48);
    v106 = v105(v102, 1, v99);
    v255 = v104;
    v246 = v105;
    if (v106 == 1)
    {
      v242(v257, v96 + v253[5], v99);
      v107 = v105(v102, 1, v99);
      v108 = v213;
      v109 = v259;
      if (v107 != 1)
      {
        sub_20D7E3944(v102, &qword_27C8389E8, &qword_20D9768D0);
      }
    }

    else
    {
      (*(v103 + 32))(v257, v102, v99);
      v108 = v213;
      v109 = v259;
    }

    v22 = v249;
    sub_20D971D58();
    v110 = v265;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v264 = v110;
    v92 = &v264;
    sub_20D8D56D8(v22, v109, isUniquelyReferenced_nonNull_native);
    v265 = v264;
    v256 = v40;
    v260 = v49;
    *&v259 = v42;
    v112 = v244;
    if (v108 != 1)
    {
      v118 = *(v247 + 16);
      if (v118 >= 2 && v244 - 2 < v118)
      {
        v240 = (v230 + 32);
        v215 = (v224 + 32);
        v257 = (v247 + v220 + 2 * v258);
        v22 = v258 + v220 + v247;
        v60 = 2;
        while (1)
        {
          v122 = v245;
          (v49)(v245, v22, v69);
          v123 = sub_20D973128();
          (v42)(v122, v69);
          if (v265[2] && (sub_20D8D4AC0(v123), (v124 & 1) != 0))
          {
            v125 = v229;
            (v49)(v229, v22, v69);
            v126 = sub_20D973128();
            v127 = v259;
            (v259)(v125, v69);
            v92 = &v265;
            v128 = sub_20D96D710(&v264, v126);
            if (*v129)
            {
              v248 = v129;
              v249 = v128;
              v130 = v261;
              (v49)(v261, v22, v69);
              sub_20D973148();
              (v127)(v130, v69);
              v40 = v227;
              v131 = v254;
              UtilityRateInfoSnapshot.stringToDate(stringDate:)(v227);

              v132 = v251;
              v12 = v255;
              v49 = v246;
              v42 = v127;
              if ((v246)(v40, 1, v251) == 1)
              {
                v46 = v131;
                v242(v232, v131 + v253[5], v132);
                v133 = v132;
                if ((v49)(v40, 1, v132) != 1)
                {
                  sub_20D7E3944(v40, &qword_27C8389E8, &qword_20D9768D0);
                }
              }

              else
              {
                v46 = v131;
                (*v240)(v232, v40, v132);
                v133 = v132;
              }

              if ((v60 & 0x8000000000000000) != 0)
              {
                goto LABEL_105;
              }

              if (v60 >= *(v247 + 16))
              {
                goto LABEL_106;
              }

              v142 = v261;
              v143 = v262;
              (v260)(v261, v257, v262);
              sub_20D973148();
              (v42)(v142, v143);
              v144 = v226;
              UtilityRateInfoSnapshot.stringToDate(stringDate:)(v226);

              v145 = v246;
              if ((v246)(v144, 1, v133) == 1)
              {
                v242(v225, v46 + v253[7], v133);
                v146 = v145(v144, 1, v133);
                v147 = v249;
                if (v146 != 1)
                {
                  sub_20D7E3944(v144, &qword_27C8389E8, &qword_20D9768D0);
                }
              }

              else
              {
                (*v240)(v225, v144, v133);
                v147 = v249;
              }

              sub_20D971D58();
              v148 = v248;
              v92 = *v248;
              v149 = swift_isUniquelyReferenced_nonNull_native();
              *v148 = v92;
              v40 = v256;
              if ((v149 & 1) == 0)
              {
                v92 = sub_20D8D4844(0, v92[2] + 1, 1, v92);
                *v148 = v92;
              }

              v151 = v92[2];
              v150 = v92[3];
              if (v151 >= v150 >> 1)
              {
                v92 = sub_20D8D4844(v150 > 1, v151 + 1, 1, v92);
                *v148 = v92;
              }

              v69 = v262;
              v49 = v260;
              v92[2] = (v151 + 1);
              (*v215)(v92 + v252 + v151 * v241, v231, v228);
              v147(&v264, 0);
            }

            else
            {
              (v128)(&v264, 0);
              v42 = v127;
            }

            v99 = v251;
          }

          else
          {
            v134 = v238;
            (v49)(v238, v22, v69);
            v249 = sub_20D973128();
            v135 = v259;
            (v259)(v134, v69);
            v136 = v69;
            v137 = swift_allocObject();
            *(v137 + 16) = v233;
            v138 = v261;
            (v49)(v261, v22, v136);
            v40 = sub_20D973148();
            (v135)(v138, v136);
            v42 = v135;
            v46 = v239;
            v49 = v254;
            UtilityRateInfoSnapshot.stringToDate(stringDate:)(v239);

            v99 = v251;
            v12 = v246;
            if ((v246)(v46, 1, v251) == 1)
            {
              v242(v250, &v49[v253[5]], v99);
              if ((v12)(v46, 1, v99) != 1)
              {
                sub_20D7E3944(v46, &qword_27C8389E8, &qword_20D9768D0);
              }
            }

            else
            {
              (*v240)(v250, v46, v99);
            }

            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_103;
            }

            if (v60 >= *(v247 + 16))
            {
              goto LABEL_104;
            }

            v248 = v137;
            v139 = v261;
            v140 = v262;
            (v260)(v261, v257, v262);
            sub_20D973148();
            (v42)(v139, v140);
            v141 = v237;
            UtilityRateInfoSnapshot.stringToDate(stringDate:)(v237);

            if ((v12)(v141, 1, v99) == 1)
            {
              v242(v236, &v49[v253[7]], v99);
              if ((v12)(v141, 1, v99) != 1)
              {
                sub_20D7E3944(v141, &qword_27C8389E8, &qword_20D9768D0);
              }
            }

            else
            {
              (*v240)(v236, v141, v99);
            }

            v119 = v248;
            sub_20D971D58();
            v120 = v265;
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v264 = v120;
            v92 = &v264;
            sub_20D8D56D8(v119, v249, v121);
            v265 = v264;
            v69 = v262;
            v40 = v256;
            v49 = v260;
          }

          ++v60;
          v257 = v258 + v257;
          v22 += v258;
          v112 = v244;
          if (v244 == v60)
          {
            goto LABEL_17;
          }
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_17:
    if (v112 > *(v247 + 16))
    {
      goto LABEL_109;
    }

    v113 = v254;
    v114 = v99;
    v257 = (v258 * v213);
    v115 = v218;
    (v49)(v218, v212 + v258 * v213, v69);
    sub_20D973148();
    (v42)(v115, v69);
    v116 = v219;
    UtilityRateInfoSnapshot.stringToDate(stringDate:)(v219);

    v117 = v246;
    if ((v246)(v116, 1, v114) == 1)
    {
      v92 = v223;
      v242(v223, v113 + v253[7], v114);
      if (v117(v116, 1, v114) != 1)
      {
        sub_20D7E3944(v116, &qword_27C8389E8, &qword_20D9768D0);
      }
    }

    else
    {
      v92 = v223;
      (*(v230 + 32))(v223, v116, v114);
    }

    v22 = v253[7];
    if (sub_20D972548())
    {
      if (v244 <= *(v247 + 16))
      {
        v152 = v211;
        (v49)(v211, &v257[v212], v69);
        v153 = sub_20D973128();
        (v42)(v152, v69);
        v154 = sub_20D96D710(&v264, v153);
        if (!*v155)
        {
          (v154)(&v264, 0);
          goto LABEL_65;
        }

        v92 = v155;
        v257 = v154;
        v49 = v221;
        v156 = v251;
        v157 = v242;
        v242(v221, v223, v251);
        v157(v214, &v254[v22], v156);
        sub_20D971D58();
        v22 = *v92;
        v158 = swift_isUniquelyReferenced_nonNull_native();
        *v92 = v22;
        if (v158)
        {
          goto LABEL_61;
        }

        goto LABEL_112;
      }

LABEL_111:
      __break(1u);
LABEL_112:
      v22 = sub_20D8D4844(0, *(v22 + 16) + 1, 1, v22);
      *v92 = v22;
LABEL_61:
      v160 = *(v22 + 16);
      v159 = *(v22 + 24);
      if (v160 >= v159 >> 1)
      {
        v22 = sub_20D8D4844(v159 > 1, v160 + 1, 1, v22);
        *v92 = v22;
      }

      *(v22 + 16) = v160 + 1;
      (*(v224 + 32))(v22 + v252 + v160 * v241, v216, v228);
      (v257)(&v264, 0);
    }

LABEL_65:
    v12 = v265;
    v161 = (v265 + 8);
    v162 = 1 << *(v265 + 32);
    if (v162 < 64)
    {
      v163 = ~(-1 << v162);
    }

    else
    {
      v163 = -1;
    }

    v46 = v163 & v265[8];
    v22 = (v162 + 63) >> 6;

    v164 = 0;
    v60 = MEMORY[0x277D84F90];
    v249 = v161;
    v248 = v22;
    v250 = v12;
    if (v46)
    {
      goto LABEL_73;
    }

    while (1)
    {
      v165 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        break;
      }

      if (v165 >= v22)
      {

        v195 = v217;
        sub_20D815A38(v254, v217);
        v196 = sub_20D9734D8();
        v197 = sub_20D975438();
        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v264 = v199;
          *v198 = 136315650;
          *(v198 + 4) = sub_20D7F4DC8(0x44746E6572727563, 0xEF736B6165507961, &v264);
          *(v198 + 12) = 2080;

          v201 = MEMORY[0x20F323400](v200, &type metadata for PeakPeriodListing);
          v202 = v60;
          v204 = v203;

          v205 = sub_20D7F4DC8(v201, v204, &v264);

          *(v198 + 14) = v205;
          *(v198 + 22) = 2080;
          v206 = MEMORY[0x20F323400](*(v195 + v253[12]), v69);
          v208 = v207;
          sub_20D815AB8(v195);
          v209 = sub_20D7F4DC8(v206, v208, &v264);
          v60 = v202;

          *(v198 + 24) = v209;
          _os_log_impl(&dword_20D7C9000, v196, v197, "%s: made %s from %s", v198, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x20F324260](v199, -1, -1);
          MEMORY[0x20F324260](v198, -1, -1);
        }

        else
        {

          sub_20D815AB8(v195);
        }

        (*(v230 + 8))(v223, v251);

        return v60;
      }

      v46 = *(v161 + 8 * v165);
      ++v164;
      if (v46)
      {
        v164 = v165;
        do
        {
LABEL_73:
          v255 = v60;
          v166 = (v164 << 9) | (8 * __clz(__rbit64(v46)));
          v167 = v12[7];
          v252 = *(v12[6] + v166);
          v49 = *(v167 + v166);
          v168 = *&v254[v253[12]];
          v169 = *(v168 + 16);
          v257 = v49;
          if (v169)
          {
            v264 = MEMORY[0x277D84F90];
            swift_bridgeObjectRetain_n();
            sub_20D95DA9C(0, v169, 0);
            v170 = v264;
            v171 = v168 + v220;
            do
            {
              v172 = v261;
              v173 = v262;
              (v260)(v261, v171, v262);
              v174 = sub_20D973128();
              (v42)(v172, v173);
              v264 = v170;
              v176 = v170[2];
              v175 = v170[3];
              v177 = v176 + 1;
              if (v176 >= v175 >> 1)
              {
                sub_20D95DA9C((v175 > 1), v176 + 1, 1);
                v170 = v264;
              }

              v170[2] = v177;
              v170[v176 + 4] = v174;
              v42 = v259;
              v171 += v258;
              --v169;
            }

            while (v169);
            v49 = v257;
          }

          else
          {
            swift_bridgeObjectRetain_n();
            v170 = MEMORY[0x277D84F90];
            v177 = *(MEMORY[0x277D84F90] + 16);
          }

          v178 = MEMORY[0x20F323530](v177, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
          v179 = v178;
          v180 = v170[2];
          if (v180)
          {
            v181 = 0;
            v182 = (v178 + 56);
            do
            {
              while (1)
              {
                v183 = v170[v181++ + 4];
                v184 = v179[5];
                v185 = sub_20D975878();
                v186 = -1 << *(v179 + 32);
                v187 = v185 & ~v186;
                if ((*(v182 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187))
                {
                  break;
                }

LABEL_87:
                v189 = swift_isUniquelyReferenced_nonNull_native();
                v264 = v179;
                sub_20D96FF60(v183, v187, v189);
                v179 = v264;
                if (v181 == v180)
                {
                  goto LABEL_89;
                }

                v182 = v264 + 7;
              }

              v188 = ~v186;
              while (*(v179[6] + 8 * v187) != v183)
              {
                v187 = (v187 + 1) & v188;
                if (((*(v182 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
                {
                  goto LABEL_87;
                }
              }
            }

            while (v181 != v180);
LABEL_89:
            v49 = v257;

            v40 = v256;
            v42 = v259;
          }

          else
          {
          }

          v190 = v179[2];

          v60 = v255;
          v191 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v262;
          if ((v191 & 1) == 0)
          {
            v60 = sub_20D8D4724(0, *(v60 + 16) + 1, 1, v60);
          }

          v193 = *(v60 + 16);
          v192 = *(v60 + 24);
          if (v193 >= v192 >> 1)
          {
            v60 = sub_20D8D4724((v192 > 1), v193 + 1, 1, v60);
          }

          v46 &= v46 - 1;
          *(v60 + 16) = v193 + 1;
          v194 = (v60 + 24 * v193);
          v194[4] = v252;
          v194[5] = v49;
          v194[6] = v190;
          v161 = v249;
          v12 = v250;
          v22 = v248;
        }

        while (v46);
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
  }

  v81 = v259;
  sub_20D815A38(v254, v259);
  v82 = sub_20D9734D8();
  v83 = sub_20D975438();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v264 = v85;
    *v84 = 136315394;
    *(v84 + 4) = sub_20D7F4DC8(0x44746E6572727563, 0xEF736B6165507961, &v264);
    *(v84 + 12) = 2080;
    v86 = MEMORY[0x20F323400](*(v81 + v253[12]), v69);
    v88 = v87;
    sub_20D815AB8(v81);
    v89 = sub_20D7F4DC8(v86, v88, &v264);

    *(v84 + 14) = v89;
    _os_log_impl(&dword_20D7C9000, v82, v83, "%s: made no objects from %s", v84, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v85, -1, -1);
    MEMORY[0x20F324260](v84, -1, -1);
  }

  else
  {

    sub_20D815AB8(v81);
  }

  return MEMORY[0x277D84F90];
}

uint64_t UtilityRateInfoSnapshot.ratePlanTitle.getter()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_20D975038();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for UtilityRateInfoSnapshot();
  v8 = *(v0 + *(v7 + 40));
  if (v8 > 3)
  {
    if (*(v0 + *(v7 + 40)) > 5u && v8 == 6)
    {

      return 0;
    }
  }

  else
  {
    *(v0 + *(v7 + 40));
  }

  v9 = sub_20D9757C8();

  if (v9)
  {
    return 0;
  }

  v11 = (v0 + *(v7 + 32));
  v12 = *v11;
  v13 = v11[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return sub_20D967D64();
  }

  sub_20D975028();
  sub_20D975018();
  sub_20D975008();
  sub_20D975018();
  sub_20D967D64();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v15 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t sub_20D96A608()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  result = 0;
  v6 = *v0;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
LABEL_13:
        v7 = qword_28112ABE8;
        sub_20D9726B8();
        return sub_20D975108();
      }
    }

    else
    {
      if (v6 != 2)
      {
        return result;
      }

      sub_20D974FE8();
      if (qword_281126E98 == -1)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    swift_once();
    goto LABEL_13;
  }

  if (v6 == 3 || v6 == 4 || v6 == 5)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_20D96A8E8()
{
  v1 = sub_20D9726E8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_20D975058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  result = 0;
  v6 = *v0;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3u:
        sub_20D974FE8();
        if (qword_281126E98 == -1)
        {
          goto LABEL_16;
        }

        break;
      case 4u:
        sub_20D974FE8();
        if (qword_281126E98 == -1)
        {
          goto LABEL_16;
        }

        break;
      case 5u:
        sub_20D974FE8();
        if (qword_281126E98 == -1)
        {
          goto LABEL_16;
        }

        break;
      default:
        return result;
    }

    goto LABEL_18;
  }

  if (v6 == 1)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_16;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    goto LABEL_18;
  }

LABEL_16:
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t UtilityRateInfoSnapshot.dateToFormattedString(date:)(uint64_t a1)
{
  v78 = a1;
  v1 = sub_20D972398();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20D972308();
  v72 = *(v77 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20D972318();
  v71 = *(v76 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20D9726C8();
  v70 = *(v79 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v79);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972188();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = sub_20D972838();
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9727D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v64 = sub_20D9726E8();
  v17 = *(v64 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v64);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v59 - v28;
  v30 = sub_20D972408();
  v66 = *(v30 - 8);
  v31 = *(v66 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v60 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v69 = &v59 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v59 - v36;
  v38 = sub_20D972248();
  (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
  v39 = sub_20D972208();
  (*(*(v39 - 8) + 56))(v25, 1, 1, v39);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v40 = v68;
  sub_20D972268();
  v41 = type metadata accessor for UtilityRateInfoSnapshot();
  (*(v65 + 16))(v14, v73 + *(v41 + 36), v67);
  sub_20D9723F8();
  sub_20D9726B8();
  sub_20D9726D8();
  v42 = v21;
  v43 = v70;
  (*(v17 + 8))(v42, v64);
  v44 = (*(v43 + 88))(v40, v79);
  v45 = (v72 + 8);
  v46 = (v71 + 8);
  if (v44 == *MEMORY[0x277CC9760] || v44 == *MEMORY[0x277CC9758])
  {
    v54 = v75;
    sub_20D9722E8();
    v55 = v74;
    sub_20D9722D8();
    (*v45)(v54, v77);
    v56 = v69;
    sub_20D972278();
    (*v46)(v55, v76);
    v57 = v66;
    v53 = *(v66 + 8);
    v53(v37, v30);
    (*(v57 + 32))(v37, v56, v30);
  }

  else
  {
    v47 = v75;
    sub_20D9722F8();
    v48 = v74;
    sub_20D9722D8();
    (*v45)(v47, v77);
    v49 = v60;
    sub_20D972278();
    (*v46)(v48, v76);
    v50 = v61;
    sub_20D972388();
    v51 = v69;
    sub_20D9723D8();
    (*(v62 + 8))(v50, v63);
    v52 = v66;
    v53 = *(v66 + 8);
    v53(v49, v30);
    v53(v37, v30);
    (*(v52 + 32))(v37, v51, v30);
    (*(v43 + 8))(v40, v79);
  }

  sub_20D9716B8(&unk_281127750, MEMORY[0x277CC9428]);
  sub_20D972608();
  v53(v37, v30);
  return v80;
}

unint64_t PeakPeriodListing.peakPeriodSymbol.getter()
{
  v1 = *(v0 + 16);

  if (v1 >= 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000029;
  }
}

double PeakPeriodListing.peakVariableValue.getter()
{
  v3 = *v0;
  v4 = v0[2];
  v1 = PeakPeriodAttributes.variableValue.getter();

  return v1;
}

uint64_t sub_20D96B634(uint64_t (*a1)(void))
{
  v4 = *v1;
  v5 = v1[2];
  v2 = a1();

  return v2;
}

uint64_t static PeakPeriodListing.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_20D96B6FC(a1[1], a2[1]) & (v3 == v2);
}

uint64_t sub_20D96B6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D971D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_20D9716B8(&qword_27C83CAA8, MEMORY[0x277CC88A8]);
    v22 = sub_20D974FD8();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t PeakPeriodListing.hash(into:)()
{
  v1 = sub_20D971D98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v16 = v0[2];
  MEMORY[0x20F323A50](v6);
  MEMORY[0x20F323A50](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v1);
      sub_20D9716B8(&unk_27C83CA60, MEMORY[0x277CC88A8]);
      sub_20D974F88();
      (*(v9 - 8))(v5, v1);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return MEMORY[0x20F323A50](v16);
}

uint64_t PeakPeriodListing.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_20D975888();
  PeakPeriodListing.hash(into:)();
  return sub_20D9758A8();
}

uint64_t sub_20D96BAF4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_20D975888();
  PeakPeriodListing.hash(into:)();
  return sub_20D9758A8();
}

uint64_t sub_20D96BB4C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_20D975888();
  PeakPeriodListing.hash(into:)();
  return sub_20D9758A8();
}

uint64_t sub_20D96BB9C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_20D96B6FC(a1[1], a2[1]) & (v3 == v2);
}

HomeEnergyUI::RatePlanType_optional __swiftcall RatePlanType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RatePlanType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F707075736E75;
  if (v1 != 5)
  {
    v3 = 0x676E6964616F6CLL;
  }

  v4 = 1952541798;
  if (v1 != 3)
  {
    v4 = 0x6465786966;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7696244;
  if (v1 != 1)
  {
    v5 = 0x646572656974;
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

uint64_t sub_20D96BD2C()
{
  *v0;
  *v0;
  *v0;
  sub_20D975158();
}

void sub_20D96BE40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000646574;
  v6 = 0x726F707075736E75;
  if (v2 != 5)
  {
    v6 = 0x676E6964616F6CLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1952541798;
  if (v2 != 3)
  {
    v8 = 0x6465786966;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7696244;
  if (v2 != 1)
  {
    v10 = 0x646572656974;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t UtilityRateInfoSnapshot.ekSiteID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UtilityRateInfoSnapshot.ekSiteID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UtilityRateInfoSnapshot.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot() + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot() + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UtilityRateInfoSnapshot.startOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot() + 24);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot() + 28);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.ratePlanName.getter()
{
  v1 = (v0 + *(type metadata accessor for UtilityRateInfoSnapshot() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UtilityRateInfoSnapshot.ratePlanName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UtilityRateInfoSnapshot() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UtilityRateInfoSnapshot.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot() + 36);
  v4 = sub_20D972838();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateInfoSnapshot.timeZone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UtilityRateInfoSnapshot() + 36);
  v4 = sub_20D972838();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UtilityRateInfoSnapshot.ratePlanType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t UtilityRateInfoSnapshot.ratePlanType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UtilityRateInfoSnapshot();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t UtilityRateInfoSnapshot.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t UtilityRateInfoSnapshot.error.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UtilityRateInfoSnapshot();
  *(v1 + *(result + 44)) = v2;
  return result;
}

unint64_t UtilityRateInfoError.description.getter()
{
  v1 = *v0;
  v2 = 0x724520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t UtilityRateInfoSnapshot.sortedPeaks.getter()
{
  v1 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot() + 48));
}

uint64_t sub_20D96C640()
{
  v0 = type metadata accessor for UtilityRateInfoSnapshot();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20D972838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v59 = sub_20D972628();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v59);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = qword_27C83C9B0;
  __swift_allocate_value_buffer(v0, qword_27C83C9B0);
  v58 = v0;
  v55 = __swift_project_value_buffer(v0, qword_27C83C9B0);
  sub_20D972618();
  sub_20D9727E8();
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    v53 = v5;
    v56 = *(v5 + 16);
    v51 = v12;
    v56(v8, v12, v4);
    v49 = v19;
    v50 = v13;
    v21 = *(v13 + 16);
    v22 = v59;
    v21(v17, v19, v59);
    v23 = v58;
    v57 = v58[10];
    *(v3 + v57) = 7;
    v24 = v23[11];
    *(v3 + v24) = 6;
    *v3 = xmmword_20D977660;
    v25 = v3 + v23[9];
    v52 = v8;
    v54 = v4;
    (v56)(v25);
    v26 = v3 + v23[5];
    v56 = v17;
    v21(v26, v17, v22);
    v27 = (v3 + v23[8]);
    *v27 = 11565;
    v27[1] = 0xE200000000000000;
    *(v3 + v57) = 7;
    *(v3 + v24) = 6;
    v20 = MEMORY[0x277D84F90];
    v28 = sub_20D817948(MEMORY[0x277D84F90]);
    v29 = v28;
    v30 = *(v28 + 16);
    if (!v30 || (v20 = sub_20D815D18(*(v28 + 16), 0), v31 = *(sub_20D973158() - 8), v57 = sub_20D81754C(&v60, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v30, v29), , sub_20D817AE4(), v57 == v30))
    {
      v32 = v23;
      v60 = v20;
      sub_20D815E14(&v60);
      v33 = v59;
      v34 = v50;
      v35 = v56;

      v36 = v60;
      *(v3 + v32[12]) = v60;
      v37 = v32[6];

      v38 = v52;
      sub_20D972F88();
      v39 = v32[7];
      sub_20D9730F8();
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v3 + v37, v3 + v39, v36, v38);
      *(v3 + v32[13]) = v40;
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v35, v3 + v39, v36, v38);
      v42 = v41;

      v43 = *(v34 + 8);
      v43(v35, v33);
      v44 = *(v53 + 8);
      v45 = v38;
      v46 = v54;
      v44(v45, v54);
      v43(v49, v33);
      v44(v51, v46);
      *(v3 + v32[14]) = v42;
      return sub_20D817AEC(v3, v55);
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20D96CC54(uint64_t a1, uint64_t *a2, int a3)
{
  LODWORD(v57) = a3;
  v4 = type metadata accessor for UtilityRateInfoSnapshot();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_20D972838();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D972628();
  v58 = *(v17 - 8);
  v18 = v58[8];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  __swift_allocate_value_buffer(v4, a2);
  v56 = __swift_project_value_buffer(v4, a2);
  sub_20D9725C8();
  sub_20D9727F8();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v16, v11, v12);
    v24 = v13;
    v25 = v58[2];
    v51 = v23;
    v25(v21, v23, v17);
    v26 = v16;
    v27 = v4[10];
    *(v7 + v27) = 7;
    v28 = v4[11];
    *(v7 + v28) = 6;
    *v7 = 0;
    v7[1] = 0;
    v29 = v4[9];
    v53 = v26;
    v54 = v24;
    v30 = *(v24 + 16);
    v55 = v12;
    v30(v7 + v29);
    v31 = v7 + v4[5];
    v50 = v21;
    v52 = v17;
    v25(v31, v21, v17);
    v32 = (v7 + v4[8]);
    *v32 = 0;
    v32[1] = 0xE000000000000000;
    *(v7 + v27) = 7;
    *(v7 + v28) = v57;
    v21 = MEMORY[0x277D84F90];
    v33 = sub_20D817948(MEMORY[0x277D84F90]);
    v34 = v33;
    v35 = *(v33 + 16);
    if (!v35 || (v21 = sub_20D815D18(*(v33 + 16), 0), v36 = *(sub_20D973158() - 8), v57 = sub_20D81754C(&v59, &v21[(*(v36 + 80) + 32) & ~*(v36 + 80)], v35, v34), , sub_20D817AE4(), v57 == v35))
    {
      v59 = v21;
      sub_20D815E14(&v59);
      v38 = v52;
      v37 = v53;
      v40 = v50;
      v39 = v51;

      v41 = v59;
      *(v7 + v4[12]) = v59;
      v42 = v4[6];

      sub_20D972F88();
      v43 = v4[7];
      sub_20D9730F8();
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v7 + v42, v7 + v43, v41, v37);
      *(v7 + v4[13]) = v44;
      _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v40, v7 + v43, v41, v37);
      v46 = v45;

      v47 = v58[1];
      v47(v40, v38);
      (*(v54 + 8))(v37, v55);
      v47(v39, v38);
      *(v7 + v4[14]) = v46;
      return sub_20D817AEC(v7, v56);
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t UtilityRateInfoSnapshot.uniquePeakRanks.getter()
{
  v22 = sub_20D973158();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot() + 48));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v23 = MEMORY[0x277D84F90];
    sub_20D95DA9C(0, v6, 0);
    v7 = v23;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v20 = *(v8 + 56);
    v21 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v22;
      v13 = v8;
      v21(v4, v10, v22);
      v14 = sub_20D973128();
      (*v11)(v4, v12);
      v23 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_20D95DA9C((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v14;
      v10 += v20;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  v17 = sub_20D81A18C(v7);

  v18 = *(v17 + 16);

  return v18;
}

uint64_t UtilityRateInfoSnapshot.stringToDate(stringDate:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D972488();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v17 - v10;
  v12 = v1 + *(type metadata accessor for UtilityRateInfoSnapshot() + 36);
  sub_20D972FD8();
  sub_20D972468();
  (*(v4 + 8))(v7, v3);
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v11, 0, 1, v13);
  (*(v14 + 32))(a1, v11, v13);
  return (v15)(a1, 0, 1, v13);
}

void (*sub_20D96D710(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_20D970FF8(v4, a2);
  return sub_20D96D788;
}

void sub_20D96D788(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_20D96D7D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot() + 40));
  result = 11565;
  if (((1 << v10) & 0x3D) != 0)
  {
    LOBYTE(v19) = v10;
    return sub_20D967D64();
  }

  else if (((1 << v10) & 0xC0) == 0)
  {
    sub_20D97130C(a1, v9);
    v12 = UtilityRateInfoSnapshot.uniquePeakRanks.getter();
    sub_20D97130C(v9, v7);
    v13 = sub_20D973158();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v7, 1, v13);
    if (v15 == 1)
    {
      sub_20D7E3944(v9, &unk_27C83CA40, &qword_20D980AA0);
      sub_20D7E3944(v7, &unk_27C83CA40, &qword_20D980AA0);
      v16 = 0;
    }

    else
    {
      v16 = sub_20D973128();
      sub_20D7E3944(v9, &unk_27C83CA40, &qword_20D980AA0);
      (*(v14 + 8))(v7, v13);
    }

    v19 = v16;
    v20 = v15 == 1;
    v21 = 0;
    v22 = 0;
    v23 = v12;
    v17 = PeakPeriodAttributes.peakName.getter();

    return v17;
  }

  return result;
}

uint64_t UtilityRateInfoSnapshot.currentPeak.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot() + 56));
  v4 = *(v3 + 16);
  v5 = sub_20D973158();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a1, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v5);
}

uint64_t UtilityRateInfoSnapshot.selectedPeaks.getter()
{
  v1 = *(v0 + *(type metadata accessor for UtilityRateInfoSnapshot() + 56));
}

uint64_t type metadata accessor for UtilityRateInfoSnapshot()
{
  result = qword_281127258;
  if (!qword_281127258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UtilityRateInfoSnapshot.attributedPeak.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot() + 56));
  v11 = *(v10 + 16);
  v12 = sub_20D973158();
  v13 = *(v12 - 8);
  if (v11)
  {
    (*(v13 + 16))(v9, v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  v14 = UtilityRateInfoSnapshot.uniquePeakRanks.getter();
  sub_20D97130C(v9, v7);
  sub_20D973158();
  v15 = v13;
  v16 = (*(v13 + 48))(v7, 1, v12);
  if (v16 == 1)
  {
    sub_20D7E3944(v9, &unk_27C83CA40, &qword_20D980AA0);
    result = sub_20D7E3944(v7, &unk_27C83CA40, &qword_20D980AA0);
    v18 = 0;
  }

  else
  {
    v18 = sub_20D973128();
    sub_20D7E3944(v9, &unk_27C83CA40, &qword_20D980AA0);
    result = (*(v15 + 8))(v7, v12);
  }

  *a1 = v18;
  a1[1] = v16 == 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v14;
  return result;
}

uint64_t UtilityRateInfoSnapshot.peakLevel.getter()
{
  UtilityRateInfoSnapshot.attributedPeak.getter(v2);
  if (v3 == 1)
  {
    return 0;
  }

  v0 = v2[0];
  sub_20D8EE800(v2[0], v2[1], v2[2], v3);
  return v0;
}

uint64_t UtilityRateInfoSnapshot.energyPricing.getter()
{
  v1 = sub_20D972188();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v106 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v90 - v9;
  v10 = sub_20D972408();
  v107 = *(v10 - 8);
  v108 = v10;
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9726E8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v103 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D975058();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_20D971EA8();
  v97 = *(v96 - 8);
  v20 = *(v97 + 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20D972838();
  v110 = *(v22 - 8);
  v111 = v22;
  v23 = *(v110 + 64);
  MEMORY[0x28223BE20](v22);
  v109 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D9726F8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_20D9727D8();
  v95 = *(v94 - 8);
  v30 = *(v95 + 64);
  v31 = MEMORY[0x28223BE20](v94);
  v101 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v92 = &v90 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v90 - v36;
  v38 = sub_20D972628();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v90 - v44;
  UtilityRateInfoSnapshot.peakUntil.getter(v37);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_20D7E3944(v37, &qword_27C8389E8, &qword_20D9768D0);
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v46 = sub_20D9734F8();
    __swift_project_value_buffer(v46, qword_27C840CE0);
    v47 = sub_20D9734D8();
    v48 = sub_20D975458();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v112[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_20D7F4DC8(0x7250796772656E65, 0xED0000676E696369, v112);
      _os_log_impl(&dword_20D7C9000, v47, v48, "%s: nil peakUntil", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x20F324260](v50, -1, -1);
      MEMORY[0x20F324260](v49, -1, -1);
    }

    return 0;
  }

  v99 = v39;
  v52 = *(v39 + 32);
  v100 = v38;
  v52(v45, v37, v38);
  v53 = type metadata accessor for UtilityRateInfoSnapshot();
  v54 = *(v53 + 28);
  v55 = sub_20D972538();
  v98 = v0;
  if (v55)
  {
    v91 = v13;
    v90 = v53;
    v56 = *(v53 + 36);
    v57 = v43;
    sub_20D9730F8();
    v58 = v0;
    if (sub_20D972548())
    {
      v59 = 0x800000020D98BA00;
      v60 = 0xD000000000000014;
      v13 = v91;
      v61 = v100;
      v62 = v99;
LABEL_33:
      (*(v62 + 8))(v57, v61);
      v53 = v90;
      goto LABEL_34;
    }

    (*(v26 + 104))(v29, *MEMORY[0x277CC9830], v25);
    v63 = v92;
    sub_20D972708();
    (*(v26 + 8))(v29, v25);
    (*(v110 + 16))(v109, v0 + v56, v111);
    sub_20D972798();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CA70, &unk_20D97CC90);
    v64 = sub_20D9727B8();
    v65 = *(v64 - 8);
    v66 = *(v65 + 72);
    v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_20D979110;
    (*(v65 + 104))(v68 + v67, *MEMORY[0x277CC99B8], v64);
    sub_20D84CE2C(v68);
    swift_setDeallocating();
    (*(v65 + 8))(v68 + v67, v64);
    swift_deallocClassInstance();
    v69 = v93;
    sub_20D972728();

    v70 = sub_20D971E88();
    if (v71)
    {
      (*(v97 + 1))(v69, v96);
      (*(v95 + 8))(v63, v94);
      v59 = 0xE800000000000000;
      v58 = v98;
      v13 = v91;
      v61 = v100;
      v62 = v99;
LABEL_13:
      v60 = 0x4025206C69746E55;
      goto LABEL_33;
    }

    v13 = v91;
    v72 = v100;
    v62 = v99;
    if (v70 <= 3)
    {
      v58 = v98;
      switch(v70)
      {
        case 1:
          v74 = "Until Sunday at %@";
          break;
        case 2:
          v74 = "Until Monday at %@";
          break;
        case 3:
          v59 = 0x800000020D98B9A0;
          (*(v97 + 1))(v69, v96);
          (*(v95 + 8))(v63, v94);
          v60 = 0xD000000000000013;
LABEL_32:
          v61 = v72;
          goto LABEL_33;
        default:
          goto LABEL_27;
      }
    }

    else
    {
      v58 = v98;
      if (v70 <= 5)
      {
        if (v70 == 4)
        {
          v59 = 0x800000020D98B980;
          (*(v97 + 1))(v69, v96);
          (*(v95 + 8))(v63, v94);
          v60 = 0xD000000000000015;
          goto LABEL_32;
        }

        v73 = "Until Thursday at %@";
        goto LABEL_25;
      }

      if (v70 != 6)
      {
        if (v70 == 7)
        {
          v73 = "Until Saturday at %@";
LABEL_25:
          v59 = (v73 - 32) | 0x8000000000000000;
          (*(v97 + 1))(v69, v96);
          (*(v95 + 8))(v63, v94);
          v60 = 0xD000000000000014;
          goto LABEL_32;
        }

LABEL_27:
        (*(v97 + 1))(v69, v96);
        (*(v95 + 8))(v63, v94);
        v59 = 0xE800000000000000;
        v61 = v72;
        goto LABEL_13;
      }

      v74 = "Until Friday at %@";
    }

    v59 = (v74 - 32) | 0x8000000000000000;
    (*(v97 + 1))(v69, v96);
    v60 = 0xD000000000000012;
    (*(v95 + 8))(v63, v94);
    goto LABEL_32;
  }

  v59 = 0xE800000000000000;
  v58 = v0;
  v60 = 0x4025206C69746E55;
LABEL_34:
  v75 = *(v53 + 36);
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v76 = qword_28112ABE8;
  v97 = v45;
  v77 = sub_20D88F060(v45, v58 + v75);
  v78 = v13;
  if (v77 == 1)
  {
    v112[0] = v60;
    v112[1] = v59;

    MEMORY[0x20F323340](1701736227, 0xE400000000000000);
  }

  sub_20D975068();
  sub_20D9726B8();
  v79 = v76;
  sub_20D975108();
  v80 = sub_20D972248();
  (*(*(v80 - 8) + 56))(v104, 1, 1, v80);
  v81 = v105;
  sub_20D9721F8();
  v82 = sub_20D972208();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  sub_20D9726A8();
  sub_20D972738();
  v83 = v109;
  sub_20D972818();
  sub_20D972178();
  sub_20D972268();
  (*(v110 + 16))(v83, v98 + v75, v111);
  sub_20D9723F8();
  v84 = v97;
  v85 = sub_20D9723C8();
  v87 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D979110;
  *(inited + 32) = v85;
  *(inited + 40) = v87;
  v112[0] = inited;
  sub_20D95AEB8(MEMORY[0x277D84F90]);
  sub_20D9678F8(v112[0]);

  v89 = sub_20D9750B8();

  (*(v107 + 8))(v78, v108);
  (*(v99 + 8))(v84, v100);
  return v89;
}

uint64_t UtilityRateInfoError.tileText.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

HomeEnergyUI::UtilityRateInfoError_optional __swiftcall UtilityRateInfoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20D96EE98()
{
  v1 = *v0;
  v2 = 0x724520726568744FLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000013;
  v4 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20D96EF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D971664();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_20D96EFC0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20D973158();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAC0, &unk_20D980E30);
  result = sub_20D975648();
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
      sub_20D9716B8(&qword_27C839F40, MEMORY[0x277D180E0]);
      result = sub_20D974F78();
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

uint64_t sub_20D96F31C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
  result = sub_20D975648();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_20D975888();
      MEMORY[0x20F323A50](v18);
      result = sub_20D9758A8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D96F56C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
  result = sub_20D975648();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20D975888();
      sub_20D975158();
      result = sub_20D9758A8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D96F7CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAB0, &qword_20D980E28);
  result = sub_20D975648();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_20D975878();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20D96F9F0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20D973158();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D96EFC0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20D970080();
      goto LABEL_12;
    }

    sub_20D970694(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20D9716B8(&qword_27C839F40, MEMORY[0x277D180E0]);
  v15 = sub_20D974F78();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_20D9716B8(&qword_27C839F48, MEMORY[0x277D180E0]);
      v23 = sub_20D974FD8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20D9757E8();
  __break(1u);
  return result;
}

uint64_t sub_20D96FC94(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D96F31C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20D9702B8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20D9709B0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_20D975888();
  MEMORY[0x20F323A50](v4);
  result = sub_20D9758A8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20D9757E8();
  __break(1u);
  return result;
}

uint64_t sub_20D96FDE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20D96F56C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20D9703F8();
      goto LABEL_16;
    }

    sub_20D970BD0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20D975888();
  sub_20D975158();
  result = sub_20D9758A8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20D9757C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20D9757E8();
  __break(1u);
  return result;
}

uint64_t sub_20D96FF60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D96F7CC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20D970554();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20D970E08(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_20D975878();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20D9757E8();
  __break(1u);
  return result;
}

void *sub_20D970080()
{
  v1 = v0;
  v2 = sub_20D973158();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAC0, &unk_20D980E30);
  v7 = *v0;
  v8 = sub_20D975638();
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

void *sub_20D9702B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
  v2 = *v0;
  v3 = sub_20D975638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20D9703F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
  v2 = *v0;
  v3 = sub_20D975638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20D970554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAB0, &qword_20D980E28);
  v2 = *v0;
  v3 = sub_20D975638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20D970694(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20D973158();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAC0, &unk_20D980E30);
  v10 = sub_20D975648();
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
      sub_20D9716B8(&qword_27C839F40, MEMORY[0x277D180E0]);
      result = sub_20D974F78();
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

uint64_t sub_20D9709B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395F8, &qword_20D979400);
  result = sub_20D975648();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_20D975888();
      MEMORY[0x20F323A50](v17);
      result = sub_20D9758A8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20D970BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839628, &qword_20D9794D0);
  result = sub_20D975648();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20D975888();

      sub_20D975158();
      result = sub_20D9758A8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20D970E08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CAB0, &qword_20D980E28);
  result = sub_20D975648();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_20D975878();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

void (*sub_20D970FF8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_20D9712D8(v6);
  v6[9] = sub_20D9710FC(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_20D97109C;
}

void sub_20D97109C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_20D9710FC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_20D8D4AC0(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_20D8D65C4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_20D909670(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_20D8D4AC0(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_20D9757F8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_20D971244;
}

void sub_20D971244(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_20D8D5944(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_20D8D4E40(v1[3], *v1[2]);
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_20D9712D8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20D971300;
}

uint64_t sub_20D97130C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA40, &qword_20D980AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D97138C()
{
  result = qword_27C83CA78;
  if (!qword_27C83CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA78);
  }

  return result;
}

unint64_t sub_20D9713E4()
{
  result = qword_27C83CA80;
  if (!qword_27C83CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA80);
  }

  return result;
}

unint64_t sub_20D97143C()
{
  result = qword_27C83CA88;
  if (!qword_27C83CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA88);
  }

  return result;
}

void sub_20D9714D8()
{
  sub_20D7FBFB4(319, &qword_281124C28);
  if (v0 <= 0x3F)
  {
    sub_20D972628();
    if (v1 <= 0x3F)
    {
      sub_20D972838();
      if (v2 <= 0x3F)
      {
        sub_20D7FBFB4(319, &qword_281126A00);
        if (v3 <= 0x3F)
        {
          sub_20D7FBFB4(319, qword_281126738);
          if (v4 <= 0x3F)
          {
            sub_20D9715FC();
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

void sub_20D9715FC()
{
  if (!qword_281124BF0)
  {
    sub_20D973158();
    v0 = sub_20D975288();
    if (!v1)
    {
      atomic_store(v0, &qword_281124BF0);
    }
  }
}

unint64_t sub_20D971664()
{
  result = qword_27C83CA98;
  if (!qword_27C83CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83CA98);
  }

  return result;
}

uint64_t sub_20D9716B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27C840BB8 == -1)
  {
    if (qword_27C840BC0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27C840BC0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27C840BB0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27C840BA4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27C840BA4 >= a3)
      {
        result = dword_27C840BA8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27C840BC0;
  if (qword_27C840BC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27C840BC0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x20F323BE0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27C840BA4, &dword_27C840BA8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}