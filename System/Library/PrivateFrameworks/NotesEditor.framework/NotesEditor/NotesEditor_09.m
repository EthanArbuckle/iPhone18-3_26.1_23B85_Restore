uint64_t sub_21539FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21549FCFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v84 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21549FA0C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8B0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v70 - v10);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8A0);
  MEMORY[0x28223BE20](v73);
  v77 = &v70 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B890);
  MEMORY[0x28223BE20](v76);
  v79 = &v70 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B880);
  MEMORY[0x28223BE20](v78);
  v81 = &v70 - v14;
  *v11 = sub_2154A0FAC();
  v11[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B968);
  sub_2153A0618(a1, v11 + *(v16 + 44));
  sub_2154A0FAC();
  sub_21549FAFC();
  v17 = *(v9 + 44);
  v75 = v11;
  v18 = (v11 + v17);
  v19 = v88;
  *v18 = v87;
  v18[1] = v19;
  v18[2] = v89;
  v71 = type metadata accessor for ICRecordButton();
  v20 = *(v71 + 24);
  v85 = a1;
  v21 = *(a1 + v20);
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel___observationRegistrar;
  *&v90 = v21;
  v23 = sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (*(v21 + 16))
  {
    v24 = 160.0;
  }

  else
  {
    v24 = 60.0;
  }

  swift_getKeyPath();
  *&v90 = v21;
  v74 = v22;
  v72 = v23;
  sub_21549ED9C();

  v25 = *(v21 + 16);
  sub_2154A0FAC();
  if (v25)
  {
    *&v26 = 0.0;
  }

  else
  {
    *&v26 = 60.0;
  }

  v27 = *&v26;
  if (v25)
  {
    v27 = v24;
  }

  if (v27 < v24)
  {
    sub_2154A227C();
    v70 = v24;
    v28 = sub_2154A068C();
    sub_21549F07C();
  }

  sub_21549FE4C();
  v29 = v77;
  sub_21533FB7C(v75, v77, &qword_27CA5B8B0);
  v30 = (v29 + *(v73 + 36));
  v31 = v95;
  v32 = v96;
  v30[4] = v94;
  v30[5] = v31;
  v30[6] = v32;
  v33 = v91;
  *v30 = v90;
  v30[1] = v33;
  v34 = v93;
  v30[2] = v92;
  v30[3] = v34;
  v35 = v80;
  sub_215439E80(v80);
  v36 = v84;
  sub_215439EA8(v84);
  v37 = sub_2153A219C(v35, v36);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  (*(v5 + 8))(v36, v4);
  (*(v82 + 8))(v35, v83);
  v44 = sub_2154A06DC();
  v45 = v79;
  sub_21533FB7C(v29, v79, &qword_27CA5B8A0);
  v46 = v45 + *(v76 + 36);
  *v46 = v44;
  *(v46 + 8) = -v37;
  *(v46 + 16) = -v39;
  *(v46 + 24) = -v41;
  *(v46 + 32) = -v43;
  *(v46 + 40) = 0;
  v47 = sub_2154A073C();
  sub_21549F99C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v45;
  v57 = v81;
  sub_21533FB7C(v56, v81, &qword_27CA5B890);
  v58 = v57 + *(v78 + 36);
  *v58 = v47;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  v59 = sub_2154A06CC();
  swift_getKeyPath();
  v86 = v21;
  sub_21549ED9C();

  sub_21549F99C();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_21533FB7C(v57, a2, &qword_27CA5B880);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B868);
  v69 = a2 + *(result + 36);
  *v69 = v59;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  return result;
}

uint64_t sub_2153A0618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  sub_2153A0A64(&v36[-v8]);
  v10 = *(a1 + *(type metadata accessor for ICRecordButton() + 24));
  swift_getKeyPath();
  v47 = v10;
  sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (!*(v10 + 32))
  {
    v19 = 0;
    v21 = 0;
    v26 = 0;
    v25 = 0;
LABEL_8:
    sub_215324EEC(v9, v6, &qword_27CA5B970);
    sub_215324EEC(v6, a2, &qword_27CA5B970);
    v35 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B978) + 48));
    sub_2153A2484(v19, v21, v26, v25);
    sub_2153A24C8(v19, v21, v26, v25);
    *v35 = v19;
    v35[1] = v21;
    v35[2] = v26;
    v35[3] = v25;
    sub_2151ADCD8(v9, &qword_27CA5B970);
    sub_2153A24C8(v19, v21, v26, v25);
    return sub_2151ADCD8(v6, &qword_27CA5B970);
  }

  swift_getKeyPath();
  v47 = v10;
  sub_21549ED9C();

  v12 = *(v10 + 40);
  if (*(v12 + 16))
  {
    v44 = v9;
    v45 = a2;
    v46 = v6;
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    v15 = *(v12 + 48);
    v16 = *(v12 + 72);
    swift_getKeyPath();
    v47 = v10;
    v41 = v14;
    v42 = v15;
    sub_21539227C(v14, v13, v15);

    v43 = v16;

    sub_21549ED9C();

    v17 = v41;
    if (*(v10 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled) == 1)
    {
      v18 = v42;
      v19 = sub_2154A08FC();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      sub_215354880(v17, v13, v18);
    }

    else
    {
      v27 = v42;
      v28 = sub_2154A08FC();
      v38 = v29;
      v39 = v28;
      v37 = v30;
      v40 = v31;
      v47 = v43;

      v19 = sub_2154A08DC();
      v21 = v32;
      v23 = v33;
      v25 = v34;
      sub_215354880(v17, v13, v27);

      sub_215354880(v39, v38, v37 & 1);
    }

    v26 = v23 & 1;
    sub_21539227C(v19, v21, v23 & 1);

    a2 = v45;
    v6 = v46;
    v9 = v44;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2153A0A64@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B980);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v49 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B988) - 8;
  MEMORY[0x28223BE20](v58);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - v6;
  MEMORY[0x28223BE20](v7);
  v64 = &v49 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B990);
  MEMORY[0x28223BE20](v51);
  v52 = &v49 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B998) - 8;
  MEMORY[0x28223BE20](v54);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v49 - v12;
  MEMORY[0x28223BE20](v13);
  v63 = &v49 - v14;
  v15 = type metadata accessor for ICRecordButton();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9A0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9A8) - 8;
  MEMORY[0x28223BE20](v50);
  v62 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  MEMORY[0x28223BE20](v26);
  v61 = &v49 - v27;
  v28 = *(v1 + *(v16 + 56));
  *v21 = sub_2154A011C();
  *(v21 + 1) = v28;
  v21[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9B0);
  sub_2153A250C(v1, &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v30 = swift_allocObject();
  sub_2153A2760(&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for ICRecordButton);
  sub_2153A25F0();
  sub_2154A0F5C();
  v31 = *(v1 + *(v16 + 32));
  swift_getKeyPath();
  v65 = v31;
  sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  v32 = 0.0;
  if (*(v31 + 18) == 2)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  sub_21533FB7C(v21, v25, &qword_27CA5B9A0);
  *&v25[*(v50 + 44)] = v33;
  v34 = v61;
  sub_21533FB7C(v25, v61, &qword_27CA5B9A8);
  v35 = v52;
  sub_2153A11F0(v52);
  swift_getKeyPath();
  v65 = v31;
  sub_21549ED9C();

  if (*(v31 + 18) == 1)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = v53;
  sub_21533FB7C(v35, v53, &qword_27CA5B990);
  *(v37 + *(v54 + 44)) = v36;
  v38 = v63;
  sub_21533FB7C(v37, v63, &qword_27CA5B998);
  v39 = v56;
  sub_2153A13CC(v56);
  swift_getKeyPath();
  v65 = v31;
  sub_21549ED9C();

  if (!*(v31 + 18))
  {
    v32 = 1.0;
  }

  v40 = v57;
  sub_21533FB7C(v39, v57, &qword_27CA5B980);
  *(v40 + *(v58 + 44)) = v32;
  v41 = v64;
  sub_21533FB7C(v40, v64, &qword_27CA5B988);
  v42 = v34;
  v43 = v62;
  sub_215324EEC(v42, v62, &qword_27CA5B9A8);
  v44 = v55;
  sub_215324EEC(v38, v55, &qword_27CA5B998);
  v45 = v59;
  sub_215324EEC(v41, v59, &qword_27CA5B988);
  v46 = v60;
  sub_215324EEC(v43, v60, &qword_27CA5B9A8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9F0);
  sub_215324EEC(v44, v46 + *(v47 + 48), &qword_27CA5B998);
  sub_215324EEC(v45, v46 + *(v47 + 64), &qword_27CA5B988);
  sub_2151ADCD8(v64, &qword_27CA5B988);
  sub_2151ADCD8(v63, &qword_27CA5B998);
  sub_2151ADCD8(v61, &qword_27CA5B9A8);
  sub_2151ADCD8(v45, &qword_27CA5B988);
  sub_2151ADCD8(v44, &qword_27CA5B998);
  return sub_2151ADCD8(v62, &qword_27CA5B9A8);
}

__n128 sub_2153A11F0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ICRecordButton();
  v5 = *(v1 + *(v4 + 24));
  swift_getKeyPath();
  *&v14 = v5;
  sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (*(v5 + 24))
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = sub_2154A0D1C();
  }

  sub_2154A0FAC();
  sub_21549FAFC();
  *&v13[22] = v15;
  *&v13[38] = v16;
  *&v13[6] = v14;
  v7 = *(v2 + *(v4 + 40));
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B990) + 36));
  v9 = *(sub_21549FE2C() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_2154A01DC();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  *v8 = v7;
  *(v8 + 1) = v7;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9E8) + 36)] = 256;
  *a1 = v6;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v13;
  *(a1 + 26) = *&v13[16];
  result = *&v13[32];
  *(a1 + 42) = *&v13[32];
  *(a1 + 56) = *(&v16 + 1);
  return result;
}

double sub_2153A13CC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A0F1C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9F8);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_2154A01DC();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  v11 = *(v1 + *(type metadata accessor for ICRecordButton() + 24));
  swift_getKeyPath();
  *&v16[0] = v11;
  sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (*(v11 + 24))
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = sub_2154A0D1C();
  }

  sub_2153A2760(v5, v8, MEMORY[0x277CE1260]);
  *&v8[*(v6 + 52)] = v12;
  *&v8[*(v6 + 56)] = 256;

  sub_2154A0FAC();
  sub_21549FAFC();
  sub_21533FB7C(v8, a1, &qword_27CA5B9F8);
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B980) + 36));
  v14 = v16[1];
  *v13 = v16[0];
  v13[1] = v14;
  result = *&v17;
  v13[2] = v17;
  return result;
}

__n128 sub_2153A1628@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ICRecordButton();
  v5 = *(a1 + *(v4 + 24));
  swift_getKeyPath();
  *&v14 = v5;
  sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (*(v5 + 24))
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = sub_2154A0D1C();
  }

  sub_2154A0FAC();
  sub_21549FAFC();
  *&v13[22] = v15;
  *&v13[38] = v16;
  *&v13[6] = v14;
  v7 = *(a1 + *(v4 + 44));
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B990) + 36));
  v9 = *(sub_21549FE2C() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_2154A01DC();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  *v8 = v7;
  *(v8 + 1) = v7;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9E8) + 36)] = 256;
  *a2 = v6;
  *(a2 + 8) = 256;
  *(a2 + 10) = *v13;
  *(a2 + 26) = *&v13[16];
  result = *&v13[32];
  *(a2 + 42) = *&v13[32];
  *(a2 + 56) = *(&v16 + 1);
  return result;
}

uint64_t sub_2153A18BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_2153A1940()
{
  result = qword_27CA5B898;
  if (!qword_27CA5B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B8A0);
    sub_2153A19CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B898);
  }

  return result;
}

unint64_t sub_2153A19CC()
{
  result = qword_27CA5B8A8;
  if (!qword_27CA5B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B8B0);
    sub_2151ACC5C(&qword_27CA5B8B8, &qword_27CA5B8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B8A8);
  }

  return result;
}

unint64_t sub_2153A1A84()
{
  result = qword_27CA5B8C8;
  if (!qword_27CA5B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B820);
    sub_2151ACC5C(&qword_27CA5B8D0, &qword_27CA5B818);
    sub_2151ACC5C(&unk_27CA5CD00, &qword_27CA5B8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B8C8);
  }

  return result;
}

unint64_t sub_2153A1B70()
{
  result = qword_27CA5B8F0;
  if (!qword_27CA5B8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B850);
    sub_2153A1C28();
    sub_2151ACC5C(&qword_27CA5B940, &qword_27CA5B948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B8F0);
  }

  return result;
}

unint64_t sub_2153A1C28()
{
  result = qword_27CA5B8F8;
  if (!qword_27CA5B8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B848);
    sub_2153A1CE0();
    sub_2151ACC5C(&qword_27CA5B930, &qword_27CA5B938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B8F8);
  }

  return result;
}

unint64_t sub_2153A1CE0()
{
  result = qword_27CA5B900;
  if (!qword_27CA5B900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B840);
    sub_2153A1D98();
    sub_2151ACC5C(&qword_27CA5B920, &qword_27CA5B928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B900);
  }

  return result;
}

unint64_t sub_2153A1D98()
{
  result = qword_27CA5B908;
  if (!qword_27CA5B908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B838);
    sub_2153A1E50();
    sub_2151ACC5C(&unk_27CA5CD10, &qword_27CA5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B908);
  }

  return result;
}

unint64_t sub_2153A1E50()
{
  result = qword_27CA5B910;
  if (!qword_27CA5B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B820);
    sub_2154A055C();
    sub_2153A1A84();
    sub_2153A2100(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B910);
  }

  return result;
}

unint64_t sub_2153A1F94()
{
  result = qword_27CA5B950;
  if (!qword_27CA5B950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B860);
    sub_2153A204C(&qword_27CA5B958, &qword_27CA5B858, &unk_2154C0C00, sub_2153A1B70);
    sub_2153A2148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B950);
  }

  return result;
}

uint64_t sub_2153A204C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_2153A2100(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2153A2100(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2153A2148()
{
  result = qword_27CA5B960;
  if (!qword_27CA5B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B960);
  }

  return result;
}

double sub_2153A219C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21549FCFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21549FA0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277CDF418] || v13 == *MEMORY[0x277CDF438])
  {
    v15 = 5.0;
  }

  else
  {
    v15 = 7.0;
    if (v13 != *MEMORY[0x277CDF440])
    {
      if (v13 == *MEMORY[0x277CDF420] || v13 == *MEMORY[0x277CDF410])
      {
        v15 = 15.0;
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }
  }

  (*(v5 + 16))(v7, a2, v4);
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 != *MEMORY[0x277CDF988] && v17 != *MEMORY[0x277CDF998] && v17 != *MEMORY[0x277CDF9A8] && v17 != *MEMORY[0x277CDF9B8] && v17 != *MEMORY[0x277CDF9D0])
  {
    (*(v5 + 8))(v7, v4, 10.0);
  }

  return v15;
}

uint64_t sub_2153A2484(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21539227C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2153A24C8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_215354880(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2153A250C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICRecordButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2153A2570@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ICRecordButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_2153A1628(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_2153A25F0()
{
  result = qword_27CA5B9B8;
  if (!qword_27CA5B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B990);
    sub_2153A26A8();
    sub_2151ACC5C(&qword_27CA5B9E0, &qword_27CA5B9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B9B8);
  }

  return result;
}

unint64_t sub_2153A26A8()
{
  result = qword_27CA5B9C0;
  if (!qword_27CA5B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B9C8);
    sub_2151ACC5C(&qword_27CA5B9D0, &qword_27CA5B9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B9C0);
  }

  return result;
}

uint64_t sub_2153A2760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2153A27C8()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  return *(v0 + 16);
}

uint64_t sub_2153A2868@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2153A2938(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_2153A2A54()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  return *(v0 + 17);
}

uint64_t sub_2153A2AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_2153A2BC4(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_2153A2CDC()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  return *(v0 + 18);
}

uint64_t sub_2153A2D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_2153A2E4C(uint64_t result)
{
  v2 = *(v1 + 18);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
      sub_21549ED8C();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 18) = result;
  return result;
}

uint64_t sub_2153A2F74()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();
}

uint64_t sub_2153A3018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 24);
}

uint64_t sub_2153A30F0(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
    sub_21549ED8C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_2154A0CEC();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 24) = a1;
}

uint64_t sub_2153A3258()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();
}

uint64_t sub_2153A32FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 32);
}

uint64_t sub_2153A33D4(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
    sub_21549ED8C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_2154A0CEC();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t sub_2153A353C()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();
}

uint64_t sub_2153A35E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 40);
}

uint64_t sub_2153A368C()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED8C();
}

uint64_t sub_2153A3758(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

uint64_t sub_2153A3794()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  return *(v0 + 48);
}

uint64_t sub_2153A3838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2153A38E8(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED8C();
}

uint64_t sub_2153A3A1C()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (*(v0 + 58))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 57);
}

uint64_t sub_2153A3AD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  v5 = *(v3 + 58);
  *a2 = *(v3 + 57);
  a2[1] = v5;
  return result;
}

uint64_t sub_2153A3B80()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED8C();
}

uint64_t sub_2153A3C58(uint64_t result, __int16 a2)
{
  *(result + 57) = a2 & 1;
  *(result + 58) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_2153A3C6C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v4 = sub_21549E28C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_2153A3D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v5 = sub_21549E28C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2153A3E5C(uint64_t a1)
{
  v2 = sub_21549E28C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_2153A3F28(v5);
}

uint64_t sub_2153A3F28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21549E28C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_2153A4A4C(&qword_27CA5BA48, MEMORY[0x277CC8C40]);
  v14[0] = a1;
  LOBYTE(a1) = sub_2154A1D1C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
    sub_21549ED8C();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_2153A41C8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v5 = sub_21549E28C();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_2153A4264()
{
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  return *(v0 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled);
}

uint64_t sub_2153A430C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled);
  return result;
}

uint64_t sub_2153A43E4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2153A4A4C(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_2153A450C()
{

  v1 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel;
  v2 = sub_21549E28C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel___observationRegistrar;
  v4 = sub_21549EDDC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ICRecordButtonViewModel()
{
  result = qword_27CA5BA28;
  if (!qword_27CA5BA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2153A4654()
{
  result = sub_21549E28C();
  if (v1 <= 0x3F)
  {
    result = sub_21549EDDC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICRecordButtonViewModel.LabelAnimationConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ICRecordButtonViewModel.LabelAnimationConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_2153A48E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2153A4928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2153A4988()
{
  result = qword_27CA5BA38;
  if (!qword_27CA5BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BA38);
  }

  return result;
}

unint64_t sub_2153A49E0()
{
  result = qword_27CA5BA40;
  if (!qword_27CA5BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BA40);
  }

  return result;
}

uint64_t sub_2153A4A4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2153A4AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  *(v1 + 57) = *(v0 + 24);
  *(v1 + 58) = v2;
}

void sub_2153A4AC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_2153A4ADC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_2153A4B18()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_2153A4B88()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t getEnumTagSinglePayload for RecordingViewModel.MicrophoneState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecordingViewModel.MicrophoneState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2153A4D28()
{
  result = qword_27CA5BA50;
  if (!qword_27CA5BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BA50);
  }

  return result;
}

id sub_2153A4E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICRecordButtonRepository();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2153A4E90(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2154A1D2C();
  (*(a4 + 16))(a4, a1 & 1, v6);
}

uint64_t sub_2153A4F30(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, void *))
{
  v6 = a1;
  v5[0] = a2;
  v5[1] = a3;
  return a4(&v6, v5);
}

id TableActionMenu.__allocating_init(tableAttachmentViewController:presentingViewController:presentingBarButtonItem:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR___ICTableActionMenu_completion];
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  *&v11[OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v14 = *&v11[v13];
  *&v11[v13] = a3;
  v15 = a3;

  swift_beginAccess();
  v16 = *v12;
  *v12 = a4;
  v12[1] = a5;
  sub_2151BD748(a4);
  sub_2151AF750(v16);
  v21.receiver = v11;
  v21.super_class = v20;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  sub_2151AF750(a4);

  return v17;
}

id TableActionMenu.init(tableAttachmentViewController:presentingViewController:presentingBarButtonItem:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2153A6A9C(a1, a2, a3, a4, a5);
  sub_2151AF750(a4);

  return v9;
}

uint64_t sub_2153A5518()
{
  v1 = (v0 + OBJC_IVAR___ICTableActionMenu_completion);
  swift_beginAccess();
  v2 = *v1;
  sub_2151BD748(*v1);
  return v2;
}

uint64_t sub_2153A5634(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICTableActionMenu_completion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_2151AF750(v6);
}

uint64_t sub_2153A5694@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ICTableActionMenu_completion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2153A737C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2151BD748(v4);
}

uint64_t sub_2153A5734(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2153A733C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___ICTableActionMenu_completion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_2151BD748(v3);
  return sub_2151AF750(v8);
}

void sub_2153A5880(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_2153A58DC(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___ICTableActionMenu_presentingViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_215378298;
}

void *sub_2153A59C0()
{
  v1 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2153A5A6C(uint64_t a1)
{
  v3 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2153A5AC4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_2153A5B84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2154BDB20;
  *(v0 + 32) = sub_2153A5D30();
  return v0;
}

uint64_t sub_2153A5C7C()
{
  type metadata accessor for TableActionMenu();
  sub_2153A6F0C();

  return sub_21549F4FC();
}

id sub_2153A5D30()
{
  v7 = MEMORY[0x277D84F90];
  sub_2153A60FC();
  MEMORY[0x216068AC0]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  v6 = sub_2153A646C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DBF0);
  sub_2154A1F5C();

  v0 = sub_2153A5F10();
  MEMORY[0x216068AC0](v0);
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  v1 = sub_2153A5F50();
  MEMORY[0x216068AC0](v1);
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  v2 = objc_opt_self();
  sub_2153A7284();
  v3 = sub_2154A1F3C();

  v4 = [v2 ic:v3 inlineMenuWithChildren:v6];

  return v4;
}

id sub_2153A5F50()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  if (!v2)
  {
    sub_2154A1D6C();
    v2 = sub_2154A1D2C();
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_2153A7234;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2151B5B78;
  v8[3] = &block_descriptor_20_0;
  v5 = _Block_copy(v8);

  v6 = [v3 ic:v2 actionWithTitle:v5 handler:?];
  _Block_release(v5);

  [v6 setIc:1 destructive:?];
  return v6;
}

id sub_2153A6134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_2154A1D2C();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    sub_2154A1D6C();
    v8 = sub_2154A1D2C();
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = a3;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2151B5B78;
  v14[3] = a4;
  v11 = _Block_copy(v14);

  v12 = [v9 ic:v8 actionWithTitle:v11 handler:?];
  _Block_release(v11);

  return v12;
}

void sub_2153A62B8(void *a1, uint64_t a2, SEL *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BA90);
      v10 = sub_2154A2B4C();

      [v9 *a3];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = (v11 + OBJC_IVAR___ICTableActionMenu_completion);
    v13 = v11;
    swift_beginAccess();
    v14 = *v12;
    sub_2151BD748(*v12);

    if (v14)
    {
      v15 = [a1 identifier];
      v16 = sub_2154A1D6C();
      v18 = v17;

      v14(a4 & 1, v16, v18);
      sub_2151AF750(v14);
    }
  }
}

id sub_2153A646C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [result view];
    if (result)
    {
      v2 = result;
      v3 = [result ic_isInSecureWindow];

      if (v3)
      {

        return 0;
      }

      else
      {
        v4 = [objc_opt_self() mainBundle];
        v5 = sub_2154A1D2C();
        v6 = [v4 localizedStringForKey:v5 value:0 table:0];

        if (!v6)
        {
          sub_2154A1D6C();
          v6 = sub_2154A1D2C();
        }

        v7 = objc_opt_self();
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_2153A71FC;
        aBlock[5] = v8;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2151B5B78;
        aBlock[3] = &block_descriptor_18;
        v9 = _Block_copy(aBlock);

        v10 = [v7 ic:v6 actionWithTitle:v9 handler:?];

        _Block_release(v9);
        return v10;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2153A6680(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  aBlock[4] = sub_2153A7204;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_12;
  v5 = _Block_copy(aBlock);

  [v4 setCompletionBlock_];
  _Block_release(v5);
  [v4 commit];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = (Strong + OBJC_IVAR___ICTableActionMenu_completion);
    v8 = Strong;
    swift_beginAccess();
    v9 = *v7;
    sub_2151BD748(*v7);

    if (v9)
    {
      v10 = [a1 identifier];
      v11 = sub_2154A1D6C();
      v13 = v12;

      v9(0, v11, v13);
      sub_2151AF750(v9);
    }
  }
}

void sub_2153A682C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BA90);
      v3 = sub_2154A2B4C();

      [v2 shareTable_];
      swift_unknownObjectRelease();
    }
  }
}

id TableActionMenu.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TableActionMenu.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TableActionMenu();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2153A6A9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  v9 = &v5[OBJC_IVAR___ICTableActionMenu_completion];
  *v9 = 0;
  v9[1] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  *&v5[OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v11 = *&v5[v10];
  *&v5[v10] = a3;
  v12 = a3;

  swift_beginAccess();
  v13 = *v9;
  *v9 = a4;
  v9[1] = a5;
  sub_2151BD748(a4);
  sub_2151AF750(v13);
  v15.receiver = v5;
  v15.super_class = type metadata accessor for TableActionMenu();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t _s11NotesEditor15TableActionMenuC4menu29tableAttachmentViewController010presentingiJ00K13BarButtonItem16deferredChildren10completionSo6UIMenuCSo07ICTablehiJ0CSg_So06UIViewJ0CSo05UIBarmN0CSgSbySb_SStcSgtFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for TableActionMenu();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR___ICTableActionMenu_completion];
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  *&v10[OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = a3;
  v14 = a3;

  swift_beginAccess();
  v15 = *v11;
  *v11 = a5;
  v11[1] = a6;
  sub_2151BD748(a5);
  sub_2151AF750(v15);
  v19.receiver = v10;
  v19.super_class = v9;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_2153A6F0C();
  v17 = sub_21549F4FC();

  return v17;
}

uint64_t _s11NotesEditor15TableActionMenuC4menu29tableAttachmentViewController010presentingiJ00K13BarButtonItem10completionSo6UIMenuCSo07ICTablehiJ0CSg_So06UIViewJ0CSo05UIBarmN0CSgySb_SStcSgtFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TableActionMenu();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR___ICTableActionMenu_completion];
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  *&v9[OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v12 = *&v9[v11];
  *&v9[v11] = a3;
  v13 = a3;

  swift_beginAccess();
  v14 = *v10;
  *v10 = a4;
  v10[1] = a5;
  sub_2151BD748(a4);
  sub_2151AF750(v14);
  v18.receiver = v9;
  v18.super_class = v8;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  sub_2153A6F0C();
  v16 = sub_21549F4FC();

  return v16;
}

unint64_t sub_2153A6F0C()
{
  result = qword_27CA5BA88;
  if (!qword_27CA5BA88)
  {
    type metadata accessor for TableActionMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BA88);
  }

  return result;
}

unint64_t sub_2153A7284()
{
  result = qword_281199650;
  if (!qword_281199650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281199650);
  }

  return result;
}

void sub_2153A72D4(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_2154A1D2C();
  (*(v3 + 16))(v3, a1 & 1, v4);
}

uint64_t sub_2153A733C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a1;
  v6[0] = a2;
  v6[1] = a3;
  return v4(&v7, v6);
}

uint64_t LinkEditorView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BA98);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v45 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAA0);
  v5 = MEMORY[0x28223BE20](v46);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  LOBYTE(v49) = 0;
  sub_2154A0DDC();
  v16 = *(&v50[0] + 1);
  *(a2 + 208) = v50[0];
  *(a2 + 216) = v16;
  v17 = type metadata accessor for LinkEditorView();
  v18 = sub_21549E93C();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_215324EEC(v15, v13, &qword_27CA5B1A8);
  sub_2154A0DDC();
  sub_2151ADCD8(v15, &qword_27CA5B1A8);
  v19 = a2 + v17[7];
  *v19 = sub_21549F9DC() & 1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21 & 1;
  v22 = a2 + v17[8];
  *v22 = sub_21549F9DC() & 1;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24 & 1;
  v25 = sub_21549FB9C();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  sub_215324EEC(v9, v7, &qword_27CA5BAA0);
  sub_2154A0DDC();
  sub_2151ADCD8(v9, &qword_27CA5BAA0);
  v26 = (a2 + v17[11]);
  v49 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_2153A7920();
  sub_2154A0DDC();
  v27 = *(&v50[0] + 1);
  *v26 = *&v50[0];
  v26[1] = v27;
  v28 = v17[12];
  v29 = sub_21549F6BC();
  v30 = *(*(v29 - 8) + 56);
  v30(a2 + v28, 1, 1, v29);
  v31 = (a2 + v17[13]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (a2 + v17[14]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a2 + v17[15]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (a2 + v17[16]);
  *v34 = 0;
  v34[1] = 0;
  v35 = (a2 + v17[10]);
  sub_21549F69C();
  sub_2153AE24C(&unk_27CA5B010, MEMORY[0x277D36360]);

  *v35 = sub_21549FC0C();
  v35[1] = v36;
  sub_2153A8638(v50);
  v37 = v50[11];
  *(a2 + 160) = v50[10];
  *(a2 + 176) = v37;
  *(a2 + 192) = v50[12];
  v38 = v50[7];
  *(a2 + 96) = v50[6];
  *(a2 + 112) = v38;
  v39 = v50[9];
  *(a2 + 128) = v50[8];
  *(a2 + 144) = v39;
  v40 = v50[3];
  *(a2 + 32) = v50[2];
  *(a2 + 48) = v40;
  v41 = v50[5];
  *(a2 + 64) = v50[4];
  *(a2 + 80) = v41;
  v42 = v50[1];
  *a2 = v50[0];
  *(a2 + 16) = v42;
  v43 = v48;
  sub_21549F6AC();
  v30(v43, 0, 1, v29);
  return sub_2153A8B54(v43, a2 + v28);
}

uint64_t type metadata accessor for LinkEditorView()
{
  result = qword_27CA5BB10;
  if (!qword_27CA5BB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2153A7920()
{
  result = qword_2811994D0;
  if (!qword_2811994D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811994D0);
  }

  return result;
}

Swift::Void __swiftcall LinkEditorView.updateAcceleratorFrame()()
{
  type metadata accessor for LinkEditorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();
  sub_2154A0DEC();
  [*v20 frame];
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;

  [*v20 convertRect:0 toView:{v1, v3, v5, v7}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v23 = CGRectOffset(v22, 0.0, 8.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  sub_21549F59C();
  if ((v21 & 1) != 0 || (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, !CGRectEqualToRect(v24, *v20)))
  {
    sub_21549F5AC();
  }
}

uint64_t LinkEditorView.urlTextFieldAnchorView.getter()
{
  type metadata accessor for LinkEditorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();
  return v1;
}

uint64_t LinkEditorView.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[11];
  v30 = v1[10];
  v31 = v3;
  v4 = v1[11];
  v32 = v1[12];
  v5 = v1[5];
  v6 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v13 = v22;
  v23 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_2153A8BC4(v21, &v20);
}

uint64_t sub_2153A7BF0@<X0>(void *a1@<X8>)
{
  type metadata accessor for LinkEditorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  result = sub_2154A0DEC();
  *a1 = v3;
  return result;
}

uint64_t sub_2153A7C64(void **a1)
{
  v1 = *a1;
  type metadata accessor for LinkEditorView();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  return sub_2154A0DFC();
}

uint64_t LinkEditorView.urlTextFieldAnchorView.setter()
{
  type metadata accessor for LinkEditorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  return sub_2154A0DFC();
}

void (*LinkEditorView.urlTextFieldAnchorView.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for LinkEditorView() + 44);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v8 = v7;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();
  return sub_2153A7DF0;
}

void sub_2153A7DF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  *(v2 + 16) = v4;
  v5 = *(v2 + 32);
  *(v2 + 40) = v5;
  *(v2 + 24) = v3;
  if (a2)
  {
    v6 = v5;
    sub_2154A0DFC();
  }

  else
  {
    sub_2154A0DFC();
  }

  free(v2);
}

uint64_t LinkEditorView.$urlTextFieldAnchorView.getter()
{
  type metadata accessor for LinkEditorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0E0C();
  return v1;
}

uint64_t LinkEditorView.suggestionsView.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LinkEditorView() + 48);

  return sub_2153A8B54(a1, v3);
}

uint64_t sub_2153A7FD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v33[-v11];
  v13 = *a1;
  v14 = a1[1];
  v15 = sub_21549FB9C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = type metadata accessor for LinkEditorView();
  sub_215324EEC(v12, v9, &qword_27CA5BAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);
  sub_2154A0DFC();
  sub_2151ADCD8(v12, &qword_27CA5BAA0);
  v36 = 10;
  v37 = 0xE100000000000000;
  v34 = &v36;
  v17 = sub_2153ADF60(sub_2153AEDAC, v33, v13, v14);
  if (v18)
  {
    v36 = 9;
    v37 = 0xE100000000000000;
    MEMORY[0x28223BE20](v17);
    *&v33[-16] = &v36;
    sub_2153ADF60(sub_2153AEE30, &v33[-32], v13, v14);
    if (v19)
    {

      return sub_21549F66C();
    }

    else
    {
      v26 = (a5 + v16[7]);
      v27 = *v26;
      v28 = *(v26 + 1);
      LOBYTE(v26) = v26[16];
      LOBYTE(v36) = v27;
      v37 = v28;
      v38 = v26;
      v35 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
      sub_21549F9BC();
      v29 = (a5 + v16[8]);
      v30 = *v29;
      v31 = *(v29 + 1);
      LOBYTE(v29) = v29[16];
      LOBYTE(v36) = v30;
      v37 = v31;
      v38 = v29;
      v35 = 1;
      sub_21549F9BC();
      result = sub_21549F55C();
      v32 = (a5 + v16[16]);
      if (*v32)
      {
        return (*v32)(result);
      }
    }
  }

  else
  {
    v21 = (a5 + v16[7]);
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v21) = v21[16];
    LOBYTE(v36) = v22;
    v37 = v23;
    v38 = v21;
    v35 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
    sub_21549F9BC();
    v24 = sub_21549F55C();
    v25 = *(a5 + v16[16]);
    if (v25)
    {
      v25(v24);
    }

    return sub_2153A831C();
  }

  return result;
}

uint64_t sub_2153A831C()
{
  v0 = sub_21549E93C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  type metadata accessor for LinkEditorView();
  v13 = *(sub_21549F60C() + 16);

  if (v13 == 1)
  {
    v14 = *(sub_21549F5EC() + 16);

    if (!v14)
    {
      v15 = sub_21549F60C();
      if (*(v15 + 16))
      {
        (*(v1 + 16))(v9, v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

        (*(v1 + 32))(v12, v9, v0);
        sub_21549E8EC();
        if (!v16)
        {
LABEL_7:
          (*(v1 + 8))(v12, v0);
          goto LABEL_10;
        }

        sub_21549E90C();
        if (v17)
        {
          v18 = objc_allocWithZone(sub_21549F4DC());
          sub_21549F4AC();
          sub_21549F5CC();
          goto LABEL_7;
        }

        (*(v1 + 8))(v12, v0);
      }
    }
  }

LABEL_10:
  v19 = *(sub_21549F5EC() + 16);

  if (v19)
  {
    v21 = *(sub_21549F60C() + 16);

    if (!v21)
    {
      v22 = sub_21549F5EC();
      if (*(v22 + 16))
      {
        (*(v1 + 16))(v3, v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

        (*(v1 + 32))(v6, v3, v0);
        sub_21549E91C();
        sub_21549F66C();
        return (*(v1 + 8))(v6, v0);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_2153A8638(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  v5 = sub_2154A1D6C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  v8 = sub_2154A1D2C();
  v9 = [v2 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];

  v10 = sub_2154A1D6C();
  v12 = v11;

  a1[2] = v10;
  a1[3] = v12;
  v13 = sub_2154A1D2C();
  v14 = [v2 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:1];

  v15 = sub_2154A1D6C();
  v17 = v16;

  a1[4] = v15;
  a1[5] = v17;
  v18 = sub_2154A1D2C();
  v19 = [v2 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

  v20 = sub_2154A1D6C();
  v22 = v21;

  a1[6] = v20;
  a1[7] = v22;
  v23 = sub_2154A1D2C();
  v24 = [v2 localizedFrameworkStringForKey:v23 value:0 table:0 allowSiri:1];

  v25 = sub_2154A1D6C();
  v27 = v26;

  a1[8] = v25;
  a1[9] = v27;
  v28 = sub_2154A1D2C();
  v29 = [v2 localizedFrameworkStringForKey:v28 value:0 table:0 allowSiri:1];

  v30 = sub_2154A1D6C();
  v32 = v31;

  a1[10] = v30;
  a1[11] = v32;
  v33 = sub_2154A1D2C();
  v34 = [v2 localizedFrameworkStringForKey:v33 value:0 table:0 allowSiri:1];

  v35 = sub_2154A1D6C();
  v37 = v36;

  a1[12] = v35;
  a1[13] = v37;
  v38 = sub_2154A1D2C();
  v39 = [v2 localizedFrameworkStringForKey:v38 value:0 table:0 allowSiri:1];

  v40 = sub_2154A1D6C();
  v42 = v41;

  a1[14] = v40;
  a1[15] = v42;
  v43 = sub_2154A1D2C();
  v44 = [v2 localizedFrameworkStringForKey:v43 value:0 table:0 allowSiri:1];

  v45 = sub_2154A1D6C();
  v47 = v46;

  a1[16] = v45;
  a1[17] = v47;
  v48 = sub_2154A1D2C();
  v49 = [v2 localizedFrameworkStringForKey:v48 value:0 table:0 allowSiri:1];

  v50 = sub_2154A1D6C();
  v52 = v51;

  a1[18] = v50;
  a1[19] = v52;
  v53 = sub_2154A1D2C();
  v54 = [v2 localizedFrameworkStringForKey:v53 value:0 table:0 allowSiri:1];

  v55 = sub_2154A1D6C();
  v57 = v56;

  a1[20] = v55;
  a1[21] = v57;
  v58 = sub_2154A1D2C();
  v59 = [v2 localizedFrameworkStringForKey:v58 value:0 table:0 allowSiri:1];

  v60 = sub_2154A1D6C();
  v62 = v61;

  a1[22] = v60;
  a1[23] = v62;
  v63 = sub_2154A1D2C();
  v64 = [v2 localizedFrameworkStringForKey:v63 value:0 table:0 allowSiri:1];

  v65 = sub_2154A1D6C();
  v67 = v66;

  a1[24] = v65;
  a1[25] = v67;
}

uint64_t sub_2153A8B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BA98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LinkEditorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAA8);
  MEMORY[0x28223BE20](v2);
  v4 = v19 - v3;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAB0);
  MEMORY[0x28223BE20](v19[0]);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAB8);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = [objc_opt_self() ic_isiPhone];
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAC0);
  sub_2151ACC5C(&qword_27CA5BAC8, &qword_27CA5BAC0);
  sub_2154A086C();
  KeyPath = swift_getKeyPath();
  if (v10)
  {
    v12 = &v4[*(v2 + 36)];
    *v12 = KeyPath;
    v12[1] = 0x4024000000000000;
    v13 = &qword_27CA5BAA8;
    sub_215324EEC(v4, v6, &qword_27CA5BAA8);
    swift_storeEnumTagMultiPayload();
    sub_2153A9748();
    sub_2153A97D4();
    sub_2154A039C();
    v14 = v4;
  }

  else
  {
    v15 = &v9[*(v2 + 36)];
    *v15 = KeyPath;
    v15[1] = 0x4024000000000000;
    sub_2154A0FAC();
    sub_21549FAFC();
    v16 = &v9[*(v7 + 36)];
    v17 = v22;
    *v16 = v21;
    *(v16 + 1) = v17;
    *(v16 + 2) = v23;
    v13 = &qword_27CA5BAB8;
    sub_215324EEC(v9, v6, &qword_27CA5BAB8);
    swift_storeEnumTagMultiPayload();
    sub_2153A9748();
    sub_2153A97D4();
    sub_2154A039C();
    v14 = v9;
  }

  return sub_2151ADCD8(v14, v13);
}

uint64_t sub_2153A8F48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for LinkEditorView();
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = v4;
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB68);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB70);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB78);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB80);
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = a1[7];
  v77 = a1[6];
  v78 = v19;
  sub_215324954();

  v77 = sub_2154A092C();
  v78 = v20;
  v79 = v21 & 1;
  v80 = v22;
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB88);
  sub_2153ADDC0();
  v72 = v18;
  sub_2154A0F6C();
  v23 = a1[11];
  v77 = a1[10];
  v78 = v23;

  v77 = sub_2154A092C();
  v78 = v24;
  v79 = v25 & 1;
  v80 = v26;
  v75 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBA8);
  sub_2151ACC5C(&qword_27CA5BBB0, &qword_27CA5BBA8);
  v27 = v14;
  sub_2154A0F6C();
  if (sub_21549F52C())
  {
    v28 = v60;
    sub_21534EB8C(a1, v60);
    v29 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v30 = swift_allocObject();
    v31 = sub_2153ADE80(v28, v30 + v29);
    MEMORY[0x28223BE20](v31);
    *(&v57 - 2) = a1;
    v32 = v61;
    sub_2154A0E3C();
    v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBC0) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
    sub_21549FE5C();
    *v33 = swift_getKeyPath();
    v34 = v64;
    v35 = (v32 + *(v64 + 36));
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBC8) + 28);
    v37 = *MEMORY[0x277CDF420];
    v38 = sub_21549FA0C();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    sub_21533FB7C(v32, v10, &qword_27CA5BB68);
    v39 = 0;
    v40 = v34;
  }

  else
  {
    v39 = 1;
    v40 = v64;
  }

  (*(v66 + 56))(v10, v39, 1, v40);
  v41 = v65;
  v42 = *(v65 + 16);
  v43 = v73;
  v42(v73, v72, v74);
  v44 = v67;
  v45 = v68;
  v66 = *(v67 + 16);
  v63 = v27;
  v46 = v27;
  v47 = v69;
  (v66)(v68, v46, v69);
  v62 = v10;
  v48 = v10;
  v49 = v70;
  sub_215324EEC(v48, v70, &qword_27CA5BB70);
  v50 = v71;
  v51 = v43;
  v52 = v74;
  v42(v71, v51, v74);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBB8);
  (v66)(&v50[*(v53 + 48)], v45, v47);
  sub_215324EEC(v49, &v50[*(v53 + 64)], &qword_27CA5BB70);
  sub_2151ADCD8(v62, &qword_27CA5BB70);
  v54 = *(v44 + 8);
  v54(v63, v47);
  v55 = *(v41 + 8);
  v55(v72, v52);
  sub_2151ADCD8(v49, &qword_27CA5BB70);
  v54(v45, v47);
  return (v55)(v73, v52);
}

unint64_t sub_2153A9748()
{
  result = qword_27CA5BAD0;
  if (!qword_27CA5BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BAB8);
    sub_2153A97D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BAD0);
  }

  return result;
}

unint64_t sub_2153A97D4()
{
  result = qword_27CA5BAD8;
  if (!qword_27CA5BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BAA8);
    sub_2151ACC5C(&qword_27CA5BAE0, &qword_27CA5BAE8);
    sub_2151ACC5C(&qword_27CA5BAF0, &qword_27CA5BAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BAD8);
  }

  return result;
}

uint64_t sub_2153A98B8@<X0>(uint64_t a1@<X8>)
{
  sub_215324954();

  v2 = sub_2154A092C();
  v4 = v3;
  v6 = v5;
  sub_2154A0CFC();
  v7 = sub_2154A08CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_215354880(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2153A9998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v119 = sub_21549FE1C();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC18);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v113 - v4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC20);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v118 = &v113 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC28);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v145 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC98);
  MEMORY[0x28223BE20](v10 - 8);
  v148 = &v113 - v11;
  v12 = type metadata accessor for LinkEditorView();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v152 = v14;
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC30);
  v128 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v123 = &v113 - v16;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7F0);
  v129 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v124 = &v113 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCA0);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v125 = &v113 - v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCA8);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v127 = &v113 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCB0);
  MEMORY[0x28223BE20](v126);
  v135 = &v113 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCB8);
  MEMORY[0x28223BE20](v136);
  v137 = &v113 - v21;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCC0);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v151 = &v113 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCC8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCD0);
  MEMORY[0x28223BE20](v29 - 8);
  v150 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  v147 = v12;
  v120 = *(a1 + *(v12 + 40) + 8);
  v34 = sub_21549F5BC();
  v149 = v33;
  if (v34)
  {

    sub_2153AACE4(v28);
    *&v28[*(v25 + 36)] = 0x3FF0000000000000;
    sub_21533FB7C(v28, v33, &qword_27CA5BCC8);
    (*(v26 + 56))(v33, 0, 1, v25);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v25);
  }

  v35 = *(a1 + 152);
  v155 = *(a1 + 144);
  v156 = v35;
  sub_21534EB8C(a1, v15);
  sub_2154A1FFC();

  v36 = sub_2154A1FEC();
  v37 = *(v13 + 80);
  v38 = (v37 + 32) & ~v37;
  v153 = v15;
  v39 = swift_allocObject();
  v40 = a1;
  v41 = MEMORY[0x277D85700];
  *(v39 + 16) = v36;
  *(v39 + 24) = v41;
  sub_2153ADE80(v153, v39 + v38);
  sub_21534EB8C(v40, v153);
  v42 = sub_2154A1FEC();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v41;
  sub_2153ADE80(v153, v43 + v38);
  sub_2154A0EEC();
  v44 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);
  sub_2154A0E0C();
  sub_215324954();
  v45 = v123;
  sub_2154A103C();
  v46 = *(v44 + 28);
  v47 = v37;
  v48 = (v40 + v46);
  v122 = *v48;
  v147 = *(v48 + 1);
  LODWORD(v148) = v48[16];
  LOBYTE(v158) = v122;
  *(&v158 + 1) = v147;
  LOBYTE(v159) = v148;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  sub_21549F9CC();
  v49 = sub_2151ACC5C(&qword_27CA5D810, &qword_27CA5BC30);
  v50 = v124;
  v51 = v131;
  sub_2154A0BDC();

  (*(v128 + 8))(v45, v51);
  *&v158 = v51;
  *(&v158 + 1) = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v125;
  v54 = v146;
  sub_2154A0ABC();
  (*(v129 + 8))(v50, v54);
  *&v158 = v54;
  *(&v158 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v55 = v127;
  v56 = v132;
  sub_2154A0C3C();
  (*(v130 + 8))(v53, v56);
  sub_2154A0FAC();
  v146 = 1;
  sub_21549FE4C();
  v57 = v135;
  (*(v133 + 32))(v135, v55, v134);
  v58 = (v57 + *(v126 + 36));
  v59 = v163;
  v58[4] = v162;
  v58[5] = v59;
  v58[6] = v164;
  v60 = v159;
  *v58 = v158;
  v58[1] = v60;
  v61 = v161;
  v58[2] = v160;
  v58[3] = v61;
  sub_21534EB8C(v40, v153);
  v62 = (v47 + 16) & ~v47;
  v63 = swift_allocObject();
  sub_2153ADE80(v153, v63 + v62);
  v64 = v137;
  sub_21533FB7C(v57, v137, &qword_27CA5BCB0);
  v65 = (v64 + *(v136 + 36));
  *v65 = sub_2153AE29C;
  v65[1] = v63;
  v65[2] = 0;
  v65[3] = 0;
  LOBYTE(v37) = v122;
  LOBYTE(v155) = v122;
  v156 = v147;
  v157 = v148;
  sub_21549F9AC();
  LOBYTE(v155) = v154;
  v135 = v40;
  sub_21534EB8C(v40, v153);
  v66 = v153;
  v134 = v47;
  v67 = swift_allocObject();
  sub_2153ADE80(v66, v67 + v62);
  sub_2153AE334();
  sub_2154A0C0C();

  sub_2151ADCD8(v64, &qword_27CA5BCB8);
  LOBYTE(v155) = v37;
  v156 = v147;
  v157 = v148;
  sub_21549F9AC();
  v68 = v142;
  if ((v154 & 1) == 0)
  {
    v69 = sub_21549F5BC();
    if (v69)
    {
    }

    else
    {
      v70 = sub_21549F65C();
      v72 = v71;

      v73 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v73 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (!v73)
      {
        v146 = 1;
        goto LABEL_11;
      }
    }

    sub_21534EB8C(v135, v66);
    v74 = swift_allocObject();
    v75 = sub_2153ADE80(v66, v74 + ((v47 + 16) & ~v47));
    MEMORY[0x28223BE20](v75);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC40);
    sub_2153AE0DC();
    v76 = v113;
    sub_2154A0E3C();
    v77 = v116;
    sub_21549FE0C();
    sub_2151ACC5C(&qword_27CA5BC68, &qword_27CA5BC18);
    sub_2153AE24C(&qword_27CA5D310, MEMORY[0x277CDDB18]);
    v78 = v118;
    v79 = v115;
    v80 = v119;
    sub_2154A09DC();
    (*(v117 + 8))(v77, v80);
    (*(v114 + 8))(v76, v79);
    v81 = sub_2154A070C();
    sub_21549F99C();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC70) + 36);
    *v90 = v81;
    *(v90 + 8) = v83;
    *(v90 + 16) = v85;
    *(v90 + 24) = v87;
    *(v90 + 32) = v89;
    *(v90 + 40) = 0;
    v91 = sub_2154A073C();
    sub_21549F99C();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;

    v100 = v78 + *(v68 + 36);
    *v100 = v91;
    *(v100 + 8) = v93;
    *(v100 + 16) = v95;
    *(v100 + 24) = v97;
    *(v100 + 32) = v99;
    *(v100 + 40) = 0;
    sub_21533FB7C(v78, v145, &qword_27CA5BC20);
    v146 = 0;
  }

LABEL_11:
  v101 = v145;
  (*(v141 + 56))(v145, v146, 1, v68);
  v102 = v150;
  sub_215324EEC(v149, v150, &qword_27CA5BCD0);
  v103 = v139;
  v104 = *(v139 + 16);
  v105 = v138;
  v106 = v151;
  v107 = v140;
  v104(v138, v151, v140);
  v108 = v143;
  sub_215324EEC(v101, v143, &qword_27CA5BC28);
  v109 = v144;
  sub_215324EEC(v102, v144, &qword_27CA5BCD0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCE8);
  v104((v109 + *(v110 + 48)), v105, v107);
  sub_215324EEC(v108, v109 + *(v110 + 64), &qword_27CA5BC28);
  sub_2151ADCD8(v101, &qword_27CA5BC28);
  v111 = *(v103 + 8);
  v111(v106, v107);
  sub_2151ADCD8(v149, &qword_27CA5BCD0);
  sub_2151ADCD8(v108, &qword_27CA5BC28);
  v111(v105, v107);
  return sub_2151ADCD8(v150, &qword_27CA5BCD0);
}

uint64_t sub_2153AACE4@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = sub_2154A01AC();
  MEMORY[0x28223BE20](v2 - 8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCF0);
  MEMORY[0x28223BE20](v96);
  v4 = &v85 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BCF8);
  MEMORY[0x28223BE20](v97);
  v6 = &v85 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD00);
  MEMORY[0x28223BE20](v98);
  v99 = &v85 - v7;
  sub_2154A019C();
  sub_2154A018C();
  sub_2154A0D7C();
  sub_2154A016C();

  sub_2154A018C();
  v8 = type metadata accessor for LinkEditorView();
  v9 = sub_21549F5BC();
  if (v9)
  {
    v10 = v9;
    sub_21549F4CC();
  }

  sub_2154A017C();

  sub_2154A018C();
  sub_2154A01CC();
  v95 = sub_2154A090C();
  v94 = v11;
  v13 = v12;
  v93 = v14;
  v92 = sub_2154A073C();
  sub_21549F99C();
  v91 = v15;
  v90 = v16;
  v89 = v17;
  v88 = v18;
  v19 = v13 & 1;
  v106 = v13 & 1;
  v105 = 0;
  v87 = sub_2154A070C();
  sub_21549F99C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v107 = 0;
  v86 = sub_2154A072C();
  sub_21549F99C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v108 = 0;
  v36 = (v1 + *(v8 + 28));
  v37 = *v36;
  v38 = *(v36 + 1);
  v39 = v36[16];
  v102 = *v36;
  v103 = v38;
  v104 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  sub_21549F9AC();
  if (v101 == 1)
  {
    v40 = sub_2154A0D2C();
  }

  else
  {
    v40 = sub_2154A0D4C();
  }

  v41 = v40;
  KeyPath = swift_getKeyPath();
  v102 = v37;
  v103 = v38;
  v104 = v39;
  sub_21549F9AC();
  v43 = v101;
  v44 = objc_opt_self();
  v45 = &selRef_ICTintColor;
  if (!v43)
  {
    v45 = &selRef_secondarySystemBackgroundColor;
  }

  v46 = [v44 *v45];
  v47 = sub_2154A0C8C();
  v48 = sub_2154A06DC();
  v49 = &v4[*(v96 + 36)];
  v50 = *(sub_21549FE2C() + 20);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_2154A01DC();
  (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
  __asm { FMOV            V0.2D, #10.0 }

  *v49 = _Q0;
  *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9E8) + 36)] = 256;
  v58 = v94;
  *v4 = v95;
  *(v4 + 1) = v58;
  v4[16] = v19;
  *(v4 + 3) = v93;
  v4[32] = v92;
  v59 = v90;
  *(v4 + 5) = v91;
  *(v4 + 6) = v59;
  v60 = v88;
  *(v4 + 7) = v89;
  *(v4 + 8) = v60;
  v4[72] = 0;
  v4[80] = v87;
  *(v4 + 11) = v21;
  *(v4 + 12) = v23;
  *(v4 + 13) = v25;
  *(v4 + 14) = v27;
  v4[120] = 0;
  v4[128] = v86;
  *(v4 + 17) = v29;
  *(v4 + 18) = v31;
  *(v4 + 19) = v33;
  *(v4 + 20) = v35;
  v4[168] = 0;
  *(v4 + 22) = KeyPath;
  *(v4 + 23) = v41;
  *(v4 + 24) = v47;
  v4[200] = v48;
  LOBYTE(v49) = sub_2154A06CC();
  sub_21549F99C();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_21533FB7C(v4, v6, &qword_27CA5BCF0);
  v69 = &v6[*(v97 + 36)];
  *v69 = v49;
  *(v69 + 1) = v62;
  *(v69 + 2) = v64;
  *(v69 + 3) = v66;
  *(v69 + 4) = v68;
  v69[40] = 0;
  LOBYTE(v49) = sub_2154A073C();
  sub_21549F99C();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v99;
  sub_21533FB7C(v6, v99, &qword_27CA5BCF8);
  v79 = v78 + *(v98 + 36);
  *v79 = v49;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  v80 = swift_getKeyPath();
  v81 = v78;
  v82 = v100;
  sub_21533FB7C(v81, v100, &qword_27CA5BD00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD08);
  v84 = v82 + *(result + 36);
  *v84 = v80;
  *(v84 + 8) = 1;
  *(v84 + 16) = 0;
  return result;
}

uint64_t sub_2153AB330(uint64_t a1)
{
  v2 = type metadata accessor for LinkEditorView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = v2 - 8;
  v30[1] = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAA0);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30[0] = v30 - v9;
  v10 = a1 + *(v5 + 36);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v10) = *(v10 + 16);
  LOBYTE(v36) = v11;
  v37 = v12;
  LOBYTE(v38) = v10;
  LOBYTE(v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  sub_21549F9BC();
  v32 = a1;
  sub_21534EB8C(a1, v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2154A1FFC();
  v13 = sub_2154A1FEC();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  v17 = v16;
  sub_2153ADE80(v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_21534EB8C(a1, v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2154A1FEC();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_2153ADE80(v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v14);
  sub_2154A0EEC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD10);
  MEMORY[0x216067A50](&v35);

  v21 = v32;
  sub_21534EB8C(v32, v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2154A1FEC();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = MEMORY[0x277D85700];
  *(v23 + 24) = MEMORY[0x277D85700];
  sub_2153ADE80(v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v14);
  sub_21534EB8C(v21, v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_2154A1FEC();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  sub_2153ADE80(v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v14);
  sub_2154A0EEC();
  MEMORY[0x216067A50](&v33, v20);

  v27 = v30[0];
  sub_21549FB8C();
  v28 = sub_21549FB9C();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_215324EEC(v27, v31, &qword_27CA5BAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);
  sub_2154A0DFC();
  return sub_2151ADCD8(v27, &qword_27CA5BAA0);
}

void sub_2153AB7E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BAA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  v6 = sub_21549FB9C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for LinkEditorView();
  sub_215324EEC(v5, v2, &qword_27CA5BAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);
  sub_2154A0DFC();
  sub_2151ADCD8(v5, &qword_27CA5BAA0);
  LinkEditorView.updateAcceleratorFrame()();
}

uint64_t sub_2153AB930()
{
  type metadata accessor for LinkEditorView();
  sub_21549F5CC();
  return sub_21549F66C();
}

uint64_t sub_2153AB978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2154A010C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC80);
  sub_2153A9998(a1, a2 + *(v4 + 44));
  type metadata accessor for LinkEditorView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC88) + 36);
  sub_21549F49C();
  v6 = sub_2154A0FAC();
  v8 = v7;
  v9 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC90) + 36));
  *v9 = v6;
  v9[1] = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBA0) + 52));
  *v10 = 0x46747865546C7275;
  v10[1] = 0xEF776F52646C6569;
  v11 = sub_2154A024C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB88);
  v13 = (a2 + *(result + 36));
  *v13 = v11;
  v13[1] = sub_2153ABAEC;
  v13[2] = 0;
  return result;
}

uint64_t sub_2153ABAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBD0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBD8);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBE8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  type metadata accessor for LinkEditorView();
  v21 = sub_21549F5BC();
  v30 = a1;
  if (v21)
  {

    sub_2153ABF08(v14);
    (*(v12 + 32))(v20, v14, v11);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  v22 = sub_21549F5BC();
  if (v22 && (v22, (sub_21549F57C() & 1) != 0))
  {
    v23 = 1;
  }

  else
  {
    *v5 = sub_2154A011C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBF0);
    sub_2153AC240(v30, &v5[*(v24 + 44)]);
    sub_21533FB7C(v5, v10, &qword_27CA5BBD0);
    v23 = 0;
  }

  (*(v32 + 56))(v10, v23, 1, v33);
  sub_215324EEC(v20, v17, &qword_27CA5BBE8);
  v25 = v31;
  sub_215324EEC(v10, v31, &qword_27CA5BBD8);
  v26 = v34;
  sub_215324EEC(v17, v34, &qword_27CA5BBE8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBF8);
  sub_215324EEC(v25, v26 + *(v27 + 48), &qword_27CA5BBD8);
  sub_2151ADCD8(v10, &qword_27CA5BBD8);
  sub_2151ADCD8(v20, &qword_27CA5BBE8);
  sub_2151ADCD8(v25, &qword_27CA5BBD8);
  return sub_2151ADCD8(v17, &qword_27CA5BBE8);
}

uint64_t sub_2153ABF08@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v13 = sub_2154A00FC();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = *(v1 + 168);
  v21 = *(v1 + 160);
  v22 = v9;
  type metadata accessor for LinkEditorView();
  sub_21549F69C();
  sub_2153AE24C(&unk_27CA5B010, MEMORY[0x277D36360]);

  sub_21549FC1C();
  swift_getKeyPath();
  sub_21549FC2C();

  v15 = v18;
  v16 = v19;
  v17 = v20;
  sub_2154A0FDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
  sub_2154A0F0C();

  sub_215324954();
  sub_2154A0E9C();
  sub_2154A00EC();
  sub_2151ACC5C(&qword_27CA5BC08, &qword_27CA5BC00);
  sub_2153AE24C(&qword_27CA5BC10, MEMORY[0x277CDDDF0]);
  v10 = v13;
  sub_2154A0A0C();
  (*(v2 + 8))(v4, v10);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2153AC240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v88 = sub_21549FE1C();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC18);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v77 - v4;
  v5 = type metadata accessor for LinkEditorView();
  v6 = v5 - 8;
  v79 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = v7;
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC20);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v83 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC28);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v77 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC30);
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v14 = &v77 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7F0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v90 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC38);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v98 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v92 = &v77 - v20;
  MEMORY[0x28223BE20](v21);
  v94 = &v77 - v22;
  v24 = *(a1 + 112);
  v23 = *(a1 + 120);
  v91 = *(a1 + *(v6 + 48) + 8);
  sub_21549F69C();
  sub_2153AE24C(&unk_27CA5B010, MEMORY[0x277D36360]);

  sub_21549FC1C();
  swift_getKeyPath();
  sub_21549FC2C();

  v105 = v24;
  v106 = v23;
  sub_215324954();
  sub_2154A101C();
  v25 = *(v6 + 40);
  v78 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  LODWORD(v26) = v26[16];
  LOBYTE(v108) = v27;
  *(&v108 + 1) = v28;
  v89 = v26;
  LOBYTE(v109) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD90);
  sub_21549F9CC();
  sub_2151ACC5C(&qword_27CA5D810, &qword_27CA5BC30);
  v29 = v90;
  v30 = v93;
  sub_2154A0BDC();

  (*(v95 + 8))(v14, v30);
  sub_2154A0FAC();
  v31 = 1;
  sub_21549FE4C();
  v32 = v92;
  (*(v96 + 32))(v92, v29, v97);
  v33 = (v32 + *(v17 + 44));
  v34 = v113;
  v33[4] = v112;
  v33[5] = v34;
  v33[6] = v114;
  v35 = v109;
  *v33 = v108;
  v33[1] = v35;
  v36 = v111;
  v33[2] = v110;
  v33[3] = v36;
  v37 = v94;
  sub_21533FB7C(v32, v94, &qword_27CA5BC38);
  v38 = sub_21549F63C();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v41 && (LOBYTE(v105) = v27, v106 = v28, v107 = v89, sub_21549F9AC(), (v104 & 1) == 0))
  {
    v44 = v81;
    sub_21534EB8C(v78, v81);
    v45 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v46 = swift_allocObject();
    v47 = sub_2153ADE80(v44, v46 + v45);
    MEMORY[0x28223BE20](v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC40);
    sub_2153AE0DC();
    v48 = v82;
    sub_2154A0E3C();
    v49 = v86;
    sub_21549FE0C();
    sub_2151ACC5C(&qword_27CA5BC68, &qword_27CA5BC18);
    sub_2153AE24C(&qword_27CA5D310, MEMORY[0x277CDDB18]);
    v50 = v83;
    v51 = v85;
    v52 = v88;
    sub_2154A09DC();
    (*(v87 + 8))(v49, v52);
    (*(v84 + 8))(v48, v51);
    LOBYTE(v45) = sub_2154A070C();
    sub_21549F99C();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC70) + 36);
    *v61 = v45;
    *(v61 + 8) = v54;
    *(v61 + 16) = v56;
    *(v61 + 24) = v58;
    *(v61 + 32) = v60;
    *(v61 + 40) = 0;
    LOBYTE(v45) = sub_2154A073C();
    sub_21549F99C();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;

    v70 = v101;
    v71 = v50 + *(v101 + 36);
    *v71 = v45;
    *(v71 + 8) = v63;
    *(v71 + 16) = v65;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 0;
    v43 = v100;
    sub_21533FB7C(v50, v100, &qword_27CA5BC20);
    v42 = v70;
    v31 = 0;
  }

  else
  {
    v42 = v101;
    v43 = v100;
  }

  (*(v99 + 56))(v43, v31, 1, v42);
  v72 = v98;
  sub_215324EEC(v37, v98, &qword_27CA5BC38);
  v73 = v102;
  sub_215324EEC(v43, v102, &qword_27CA5BC28);
  v74 = v103;
  sub_215324EEC(v72, v103, &qword_27CA5BC38);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BC78);
  sub_215324EEC(v73, v74 + *(v75 + 48), &qword_27CA5BC28);
  sub_2151ADCD8(v43, &qword_27CA5BC28);
  sub_2151ADCD8(v37, &qword_27CA5BC38);
  sub_2151ADCD8(v73, &qword_27CA5BC28);
  return sub_2151ADCD8(v72, &qword_27CA5BC38);
}

uint64_t sub_2153ACE0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2154A0D7C();
  v6 = sub_2154A0CBC();
  KeyPath = swift_getKeyPath();
  v8 = sub_2154A078C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_2154A07DC();
  sub_2151ADCD8(v4, &qword_27CA5B310);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v6;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_2153ACF54@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LinkEditorView() + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2153AEE20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_2151BD748(v4);
}

uint64_t sub_2153ACFE8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2153AEE4C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for LinkEditorView() + 52));
  v8 = *v7;
  sub_2151BD748(v3);
  result = sub_2151AF750(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t LinkEditorView.doneAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkEditorView() + 52));
  sub_2151BD748(v1);
  return v1;
}

uint64_t LinkEditorView.doneAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkEditorView() + 52));
  result = sub_2151AF750(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2153AD168@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LinkEditorView() + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_215324CF4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_2151BD748(v4);
}

uint64_t sub_2153AD1FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2153ADD90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for LinkEditorView() + 56));
  v8 = *v7;
  sub_2151BD748(v3);
  result = sub_2151AF750(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t LinkEditorView.cancelAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkEditorView() + 56));
  sub_2151BD748(v1);
  return v1;
}

uint64_t LinkEditorView.cancelAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkEditorView() + 56));
  result = sub_2151AF750(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2153AD37C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LinkEditorView() + 60));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21539ADF0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_2151BD748(v4);
}

uint64_t sub_2153AD410(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2153AEE24;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for LinkEditorView() + 60));
  v8 = *v7;
  sub_2151BD748(v3);
  result = sub_2151AF750(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t LinkEditorView.removeLink.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkEditorView() + 60));
  sub_2151BD748(v1);
  return v1;
}

uint64_t LinkEditorView.removeLink.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkEditorView() + 60));
  result = sub_2151AF750(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2153AD590@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LinkEditorView() + 64));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2153252BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_2151BD748(v4);
}

uint64_t sub_2153AD624(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_215396D4C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for LinkEditorView() + 64));
  v8 = *v7;
  sub_2151BD748(v3);
  result = sub_2151AF750(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t LinkEditorView.hideAccelerator.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkEditorView() + 64));
  sub_2151BD748(v1);
  return v1;
}

uint64_t LinkEditorView.hideAccelerator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LinkEditorView() + 64));
  result = sub_2151AF750(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

void sub_2153AD7EC()
{
  sub_2153AD9F8();
  if (v0 <= 0x3F)
  {
    sub_2153ADB98(319, &qword_27CA5BB20, &qword_27CA5B1A8, &unk_2154C6800, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2153ADA48();
      if (v2 <= 0x3F)
      {
        sub_2153ADB98(319, &qword_27CA5BB30, &qword_27CA5BAA0, &unk_2154C1438, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2153ADAA0();
          if (v4 <= 0x3F)
          {
            sub_2153ADB34(319, &qword_27CA5C8E0, sub_2153A7920, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_2153ADB34(319, &qword_27CA5BB40, MEMORY[0x277D36368], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2153ADB98(319, &qword_27CA5BB48, &qword_27CA5BB50, &unk_2154C1528, MEMORY[0x277D83D88]);
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

void sub_2153AD9F8()
{
  if (!qword_27CA5B1F8)
  {
    v0 = sub_2154A0E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5B1F8);
    }
  }
}

void sub_2153ADA48()
{
  if (!qword_27CA5BB28)
  {
    v0 = sub_21549F9EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5BB28);
    }
  }
}

void sub_2153ADAA0()
{
  if (!qword_27CA5BB38)
  {
    sub_21549F69C();
    sub_2153AE24C(&unk_27CA5B010, MEMORY[0x277D36360]);
    v0 = sub_21549FC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5BB38);
    }
  }
}

void sub_2153ADB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2153ADB98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2153ADC38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_2153ADC80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2153ADD04()
{
  result = qword_27CA5BB58;
  if (!qword_27CA5BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BB60);
    sub_2153A9748();
    sub_2153A97D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BB58);
  }

  return result;
}

unint64_t sub_2153ADDC0()
{
  result = qword_27CA5BB90;
  if (!qword_27CA5BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BB88);
    sub_2151ACC5C(&qword_27CA5BB98, &qword_27CA5BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BB90);
  }

  return result;
}

uint64_t sub_2153ADE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkEditorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153ADEE4()
{
  v1 = type metadata accessor for LinkEditorView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 68) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_2153ADF60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_2154A1E2C();
    v13[0] = sub_2154A1EEC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_2153AE0DC()
{
  result = qword_27CA5BC48;
  if (!qword_27CA5BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BC40);
    sub_2153AE194();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BC48);
  }

  return result;
}

unint64_t sub_2153AE194()
{
  result = qword_27CA5BC50;
  if (!qword_27CA5BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BC58);
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BC50);
  }

  return result;
}

uint64_t sub_2153AE24C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2153AE2B4()
{
  type metadata accessor for LinkEditorView();

  sub_2153AB7E8();
}

unint64_t sub_2153AE334()
{
  result = qword_27CA5BCD8;
  if (!qword_27CA5BCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BCB8);
    sub_2153AE3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BCD8);
  }

  return result;
}

unint64_t sub_2153AE3C0()
{
  result = qword_27CA5BCE0;
  if (!qword_27CA5BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BC30);
    sub_2151ACC5C(&qword_27CA5D810, &qword_27CA5BC30);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BCE0);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{
  v1 = type metadata accessor for LinkEditorView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  v7 = sub_21549E93C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB00);

  v9 = v5 + v1[9];
  v10 = sub_21549FB9C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);

  v12 = v1[12];
  v13 = sub_21549F6BC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  if (*(v5 + v1[13]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  if (*(v5 + v1[15]))
  {
  }

  if (*(v5 + v1[16]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2153AE8C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LinkEditorView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2153AE93C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LinkEditorView();
  result = sub_21549F65C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t objectdestroy_77Tm()
{
  v1 = type metadata accessor for LinkEditorView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  v7 = sub_21549E93C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB00);

  v9 = v5 + v1[9];
  v10 = sub_21549FB9C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);

  v12 = v1[12];
  v13 = sub_21549F6BC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  if (*(v5 + v1[13]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  if (*(v5 + v1[15]))
  {
  }

  if (*(v5 + v1[16]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2153AED28(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LinkEditorView() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2153A7FD4(a1, a2, v6, v7, v8);
}

uint64_t sub_2153AEDC8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2154A2FAC() & 1;
  }
}

uint64_t ICEditingTextView.selection(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 TTTextStorage];
  if (v3 && (v4 = v3, v5 = [v3 mergeableString], v4, v5))
  {
    [v1 selectionAffinity];
    sub_2154A24FC();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_2154A24EC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

void ICEditingTextView.location(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 TTTextStorage];
  if (v6)
  {
    v16 = v6;
    v7 = [v6 ic:a1 rangeForAttachment:0 withTextAttachment:?];
    if (v7 == sub_21549E0EC())
    {
      v8 = sub_2154A24CC();
      (*(*(v8 - 8) + 56))(a2, 1, 1, v8);

      return;
    }

    v14 = [v16 mergeableString];
    sub_2154A24DC();

    v15 = sub_2154A24CC();
    v10 = *(*(v15 - 8) + 56);
    v11 = v15;
    v12 = a2;
    v13 = 0;
  }

  else
  {
    v9 = sub_2154A24CC();
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a2;
    v13 = 1;
  }

  v10(v12, v13, 1, v11);
}

char *ICTextView.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 ic_selectedRanges];
  sub_2151A6C9C(0, &qword_2811994C8);
  v4 = sub_2154A1F4C();

  if (v4 >> 62)
  {
    v5 = sub_2154A2C8C();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_21531B66C(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216069960](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 rangeValue];
    v12 = v11;

    v14 = *(v16 + 16);
    v13 = *(v16 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_21531B66C((v13 > 1), v14 + 1, 1);
    }

    ++v7;
    *(v16 + 16) = v14 + 1;
    v15 = v16 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
  }

  while (v5 != v7);
LABEL_13:

  ICEditingTextView.selection(for:)(a1);
}

uint64_t ICTableColumnTextView.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = *MEMORY[0x277D85DE8];
  v64 = sub_21549E70C();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v5 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v60 - v8;
  v69 = 0;
  v70 = 0;
  v10 = [v1 ic_selectedRanges];
  sub_2151A6C9C(0, &qword_2811994C8);
  v11 = sub_2154A1F4C();

  if (v11 >> 62)
  {
    v12 = sub_2154A2C8C();
    v62 = v5;
    v63 = v9;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v62 = v5;
  v63 = v9;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v68 = MEMORY[0x277D84F90];
  sub_21531B66C(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v65 = v1;
  v67 = a1;
  v13 = 0;
  v14 = v68;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x216069960](v13, v11);
    }

    else
    {
      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = [v15 rangeValue];
    v19 = v18;

    v68 = v14;
    v21 = v14[2];
    v20 = v14[3];
    if (v21 >= v20 >> 1)
    {
      sub_21531B66C((v20 > 1), v21 + 1, 1);
      v14 = v68;
    }

    ++v13;
    v14[2] = v21 + 1;
    v22 = &v14[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
  }

  while (v12 != v13);

  a1 = v67;
  v2 = v65;
LABEL_14:
  if (![v2 cellDelegate])
  {
LABEL_40:

LABEL_43:
    v59 = 1;
    goto LABEL_44;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v24 = v23;

  v25 = sub_2154A2B2C();
  if ((v27 & 1) != 0 || (v28 = v25, v65 = v26, v29 = [v2 columnTextStorage], v30 = objc_msgSend(v29, sel_rowAtIndex_rowRange_, v28, &v69), v29, !v30))
  {
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v61 = v28;
  v67 = a1;
  v31 = v63;
  sub_21549E6EC();

  v32 = [v24 table];
  v33 = v2;
  v34 = v32;
  v35 = [v33 columnID];
  v36 = v62;
  sub_21549E6EC();

  v37 = sub_21549E6CC();
  v39 = v66 + 8;
  v38 = *(v66 + 8);
  v40 = v64;
  v38(v36, v64);
  v41 = sub_21549E6CC();
  v42 = [v34 mergeableStringForColumnID:v37 rowID:v41];

  if (!v42)
  {
    v38(v31, v40);

    swift_unknownObjectRelease();
    v59 = 1;
    a1 = v67;
    goto LABEL_44;
  }

  v62 = v38;
  v66 = v39;
  v43 = v14[2];
  a1 = v67;
  if (!v43)
  {
    goto LABEL_46;
  }

  v44 = &v70[v69];
  if (__OFADD__(v69, v70))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (__OFADD__(v61, v65))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v44 <= &v65[v61])
  {
    v44 = &v65[v61];
  }

  if (v69 >= v61)
  {
    v45 = v61;
  }

  else
  {
    v45 = v69;
  }

  v46 = __OFSUB__(v44, v45);
  v47 = &v44[-v45];
  if (v46)
  {
LABEL_51:
    __break(1u);
  }

  if (v69 > v61 || v47 != v70)
  {
LABEL_46:
    v62(v63, v64);

    goto LABEL_42;
  }

  v65 = v42;
  v68 = MEMORY[0x277D84F90];
  sub_21531B66C(0, v43, 0);
  v48 = v68;
  v49 = v14 + 5;
  do
  {
    v50 = *(v49 - 1);
    v51 = v50 - v69;
    if (__OFSUB__(v50, v69))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v70 >= *v49)
    {
      v52 = *v49;
    }

    else
    {
      v52 = v70;
    }

    v68 = v48;
    v54 = v48[2];
    v53 = v48[3];
    if (v54 >= v53 >> 1)
    {
      sub_21531B66C((v53 > 1), v54 + 1, 1);
      v48 = v68;
    }

    v48[2] = v54 + 1;
    v55 = &v48[2 * v54];
    v55[4] = v51;
    v55[5] = v52;
    v49 += 2;
    --v43;
  }

  while (v43);

  a1 = v67;
  v58 = v65;
  sub_2154A24FC();

  swift_unknownObjectRelease();
  v62(v63, v64);
  v59 = 0;
LABEL_44:
  v56 = sub_2154A24EC();
  return (*(*(v56 - 8) + 56))(a1, v59, 1, v56);
}

uint64_t ICEditingTextView.collaboratorStatuses.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27CA5BD18);
  swift_endAccess();
  if (v1)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD20);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_21532C870(v6);
  }

  return MEMORY[0x277D84F90];
}

void sub_2153AF9B4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_2153AFAD4(*a1);
  type metadata accessor for ResolvedCollaboratorStatus(0);
  v3 = sub_2154A1F3C();
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_27CA5BD18, v3, 1);
  swift_endAccess();
}

void ICEditingTextView.collaboratorStatuses.setter(uint64_t a1)
{
  sub_2153AFAD4(a1);
  type metadata accessor for ResolvedCollaboratorStatus(0);
  v2 = sub_2154A1F3C();

  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_27CA5BD18, v2, 1);
  swift_endAccess();
}

uint64_t sub_2153AFAD4(uint64_t a1)
{
  v3 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v99 - v7;
  MEMORY[0x28223BE20](v8);
  v114 = &v99 - v9;
  v10 = sub_21549E70C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v110 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v16);
  v107 = &v99 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v99 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v99 - v22;
  v113 = v1;
  v24 = ICEditingTextView.collaboratorStatuses.getter();
  v25 = *(v24 + 16);
  v103 = v4;
  v102 = a1;
  v104 = v15;
  if (v25)
  {
    v109 = v20;
    *&v125 = MEMORY[0x277D84F90];
    sub_21531B68C(0, v25, 0);
    v26 = v125;
    v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v106 = v24;
    v28 = v24 + v27;
    v111 = *(v4 + 72);
    do
    {
      v29 = v114;
      sub_2153B1A10(v28, v114);
      (*(v11 + 16))(v23, v29, v10);
      sub_215384DA4(v29);
      *&v125 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_21531B68C(v30 > 1, v31 + 1, 1);
        v26 = v125;
      }

      *(v26 + 16) = v31 + 1;
      (*(v11 + 32))(v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, v23, v10);
      v28 += v111;
      --v25;
    }

    while (v25);

    v4 = v103;
    a1 = v102;
    v15 = v104;
    v20 = v109;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v32 = sub_215365564(v26);

  v33 = *(a1 + 16);
  v34 = MEMORY[0x277D84F90];
  v100 = v33;
  if (v33)
  {
    v109 = v32;
    *&v125 = MEMORY[0x277D84F90];
    sub_21531B68C(0, v33, 0);
    v34 = v125;
    v35 = v10;
    v36 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v111 = *(v4 + 72);
    do
    {
      v37 = v114;
      sub_2153B1A10(v36, v114);
      (*(v11 + 16))(v20, v37, v35);
      sub_215384DA4(v37);
      *&v125 = v34;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21531B68C(v38 > 1, v39 + 1, 1);
        v34 = v125;
      }

      *(v34 + 16) = v39 + 1;
      (*(v11 + 32))(v34 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v39, v20, v35);
      v36 += v111;
      --v33;
    }

    while (v33);
    v10 = v35;
    v15 = v104;
    v32 = v109;
  }

  v112 = v10;
  v40 = sub_215365564(v34);

  v41 = v110;
  if (*(v40 + 16) > *(v32 + 16) >> 3)
  {
    v42 = sub_215319DA0(v40, v32);

    result = v42;
  }

  else
  {
    *&v125 = v32;
    sub_2153194C8(v40);

    result = v125;
  }

  v44 = 0;
  v45 = result + 56;
  v46 = 1 << *(result + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(result + 56);
  v49 = (v46 + 63) >> 6;
  v109 = (v11 + 16);
  v105 = v11 + 32;
  v111 = (v11 + 8);
  v106 = result;
LABEL_21:
  if (v48)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v50 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      return result;
    }

    if (v50 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v50);
    ++v44;
    if (v48)
    {
      v44 = v50;
LABEL_26:
      v51 = *(v11 + 72);
      v52 = v107;
      v53 = v112;
      (*(v11 + 16))(v107, *(result + 48) + v51 * (__clz(__rbit64(v48)) | (v44 << 6)), v112);
      (*(v11 + 32))(v15, v52, v53);
      swift_beginAccess();
      v54 = objc_getAssociatedObject(v113, &unk_27CA5BD19);
      swift_endAccess();
      if (v54)
      {
        sub_2154A2BCC();
        swift_unknownObjectRelease();
      }

      else
      {
        v122 = 0u;
        v123 = 0u;
      }

      v125 = v122;
      v126 = v123;
      if (*(&v123 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD30);
        if (swift_dynamicCast())
        {
          v55 = v115;
          goto LABEL_34;
        }
      }

      else
      {
        sub_21532C870(&v125);
      }

      v55 = MEMORY[0x277D84F98];
LABEL_34:
      v56 = sub_2153B11FC(v15);
      if (v57)
      {
        v58 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v125 = v55;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2153DCF7C();
          v55 = v125;
        }

        (*v111)(*(v55 + 48) + v58 * v51, v112);
        v60 = *(*(v55 + 56) + 8 * v58);
        sub_21536D56C(v58, v55);
      }

      else
      {
        v60 = 0;
      }

      type metadata accessor for CollaboratorStatusView();
      sub_2153B1AD8(&qword_281199D00, MEMORY[0x277CC95F0]);
      v61 = sub_2154A1C7C();

      swift_beginAccess();
      objc_setAssociatedObject(v113, &unk_27CA5BD19, v61, 1);
      swift_endAccess();

      if (v60)
      {
        v62 = v60;
        sub_21537BA48(0, 0);
      }

      v48 &= v48 - 1;
      (*v111)(v15, v112);
      v41 = v110;
      result = v106;
      goto LABEL_21;
    }
  }

  v63 = v101;
  v64 = v100;
  if (v100)
  {
    v65 = v102 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v110 = *(v103 + 72);
    v66 = *MEMORY[0x277CBF398];
    v67 = *(MEMORY[0x277CBF398] + 8);
    v68 = *(MEMORY[0x277CBF398] + 16);
    v69 = *(MEMORY[0x277CBF398] + 24);
    do
    {
      sub_2153B1A10(v65, v63);
      swift_beginAccess();
      v74 = objc_getAssociatedObject(v113, &unk_27CA5BD19);
      swift_endAccess();
      if (v74)
      {
        sub_2154A2BCC();
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = 0u;
        v121 = 0u;
      }

      v116 = v121;
      v115 = v120;
      if (*(&v121 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD30);
        if (swift_dynamicCast())
        {
          v75 = v118;
          if (!*(v118 + 16))
          {
            goto LABEL_63;
          }

          goto LABEL_56;
        }
      }

      else
      {
        sub_21532C870(&v115);
      }

      v75 = MEMORY[0x277D84F98];
      if (!*(MEMORY[0x277D84F98] + 16))
      {
        goto LABEL_63;
      }

LABEL_56:
      v76 = sub_2153B11FC(v63);
      if (v77)
      {
        v78 = *(*(v75 + 56) + 8 * v76);

        v79 = v108;
        sub_2153B1A10(v63, v108);
        v80 = OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus;
        swift_beginAccess();
        sub_2153B1A74(v79, &v78[v80]);
        swift_endAccess();
        v81 = [v78 superview];
        if (v81)
        {
          v82 = v81;
          if ((v78[OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview] & 1) == 0)
          {
            v83 = [*&v78[OBJC_IVAR___ICCollaboratorStatusView_textView] TTTextStorage];
            if (v83)
            {
              v84 = v83;
              v85 = [v83 isEditing];

              if (!v85)
              {
                *&v120 = sub_21537D148();
                sub_21537BE70(&v122);
                v115 = v122;
                v116 = v123;
                v117 = v124;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B400);
                sub_2154A1F5C();
                sub_2154A286C();
                if (v127)
                {
                  v86 = v66;
                  v87 = v67;
                  v88 = v68;
                  v89 = v69;
                }

                else
                {
                  v87 = *(&v125 + 1);
                  v86 = *&v125;
                  v89 = *(&v126 + 1);
                  v88 = *&v126;
                }

                [v78 setFrame_];
                sub_215382B30();
                sub_215383214();
                if (([v82 ic:v78 isFrontSubview:?] & 1) == 0)
                {
                  [v82 bringSubviewToFront_];
                }
              }
            }
          }
        }

        else
        {
          v82 = v78;
        }

        sub_215384DA4(v108);
        goto LABEL_46;
      }

LABEL_63:

      v90 = v114;
      sub_2153B1A10(v63, v114);
      v91 = type metadata accessor for CollaboratorStatusView();
      v92 = objc_allocWithZone(v91);
      v92[OBJC_IVAR___ICCollaboratorStatusView_hasDisplayedInWindow] = 0;
      *&v92[OBJC_IVAR___ICCollaboratorStatusView_avatarView] = 0;
      v93 = OBJC_IVAR___ICCollaboratorStatusView_selectionViews;
      *&v92[v93] = sub_215328378(MEMORY[0x277D84F90]);
      v92[OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview] = 0;
      sub_2153B1A10(v90, &v92[OBJC_IVAR___ICCollaboratorStatusView_collaboratorStatus]);
      v94 = v113;
      *&v92[OBJC_IVAR___ICCollaboratorStatusView_textView] = v113;
      v119.receiver = v92;
      v119.super_class = v91;
      v95 = v94;
      v96 = objc_msgSendSuper2(&v119, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      [v96 setClipsToBounds_];
      [v96 setAlpha_];
      sub_215384DA4(v90);
      (*v109)(v41, v63, v112);
      swift_beginAccess();
      v97 = v96;
      v98 = objc_getAssociatedObject(v95, &unk_27CA5BD19);
      swift_endAccess();
      if (v98)
      {
        sub_2154A2BCC();
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = 0u;
        v121 = 0u;
      }

      v116 = v121;
      v115 = v120;
      if (*(&v121 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD30);
        if (swift_dynamicCast())
        {
          v70 = v118;
          goto LABEL_45;
        }
      }

      else
      {
        sub_21532C870(&v115);
      }

      v70 = sub_2153286A4(MEMORY[0x277D84F90]);
LABEL_45:
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *&v115 = v70;
      sub_2154729B4(v97, v41, v71);
      (*v111)(v41, v112);
      sub_2153B1AD8(&qword_281199D00, MEMORY[0x277CC95F0]);
      v72 = sub_2154A1C7C();

      swift_beginAccess();
      objc_setAssociatedObject(v95, &unk_27CA5BD19, v72, 1);
      swift_endAccess();

      v73 = [v95 containerViewForAttachments];
      [v73 addSubview_];

LABEL_46:
      result = sub_215384DA4(v63);
      v65 += v110;
      --v64;
    }

    while (v64);
  }

  return result;
}

void (*ICEditingTextView.collaboratorStatuses.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 24) = ICEditingTextView.collaboratorStatuses.getter();
  return sub_2153B0A30;
}

void sub_2153B0A30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {

    sub_2153AFAD4(v5);
    type metadata accessor for ResolvedCollaboratorStatus(0);
    v6 = sub_2154A1F3C();

    swift_beginAccess();
    objc_setAssociatedObject(v3, &unk_27CA5BD18, v6, 1);
    swift_endAccess();
  }

  else
  {
    sub_2153AFAD4(v4);
    type metadata accessor for ResolvedCollaboratorStatus(0);
    v7 = sub_2154A1F3C();

    swift_beginAccess();
    objc_setAssociatedObject(v3, &unk_27CA5BD18, v7, 1);
    swift_endAccess();
  }

  free(v2);
}

unint64_t sub_2153B0B50()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27CA5BD19);
  swift_endAccess();
  if (v1)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD30);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_21532C870(v6);
  }

  return sub_2153286A4(MEMORY[0x277D84F90]);
}

void ICEditingTextView.expandAvatar(for:animated:)(uint64_t a1)
{
  v2 = sub_2153B0B50();
  if (*(v2 + 16) && (v3 = sub_2153B11FC(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    sub_215384E00(1);
  }

  else
  {
  }
}

unint64_t sub_2153B0CD8(uint64_t a1)
{
  sub_2154A1D6C();
  sub_2154A30DC();
  sub_2154A1DFC();
  v2 = sub_2154A312C();

  return sub_2153B18B0(a1, v2);
}

unint64_t sub_2153B0D68(uint64_t a1, uint64_t a2)
{
  sub_2154A30DC();
  sub_2154A1DFC();
  v4 = sub_2154A312C();

  return sub_2153B1370(a1, a2, v4);
}

unint64_t sub_2153B0E6C(uint64_t a1, uint64_t a2)
{
  sub_2154A30DC();
  MEMORY[0x216069C80](a1);
  MEMORY[0x216069C80](a2);
  v4 = sub_2154A312C();

  return sub_2153B1428(a1, a2, v4);
}

unint64_t sub_2153B0F3C(uint64_t a1)
{
  sub_21549E56C();
  v2 = MEMORY[0x277CC9260];
  sub_2153B1AD8(&unk_27CA5B110, MEMORY[0x277CC9260]);
  v3 = sub_2154A1C9C();
  return sub_2153B1634(a1, v3, MEMORY[0x277CC9260], &qword_27CA5B3B0, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_2153B1010(uint64_t a1)
{
  v2 = sub_2154A2D1C();

  return sub_2153B156C(a1, v2);
}

unint64_t sub_2153B1054(uint64_t a1)
{
  sub_2154A22EC();
  v2 = MEMORY[0x277D36420];
  sub_2153B1AD8(&qword_27CA5BD28, MEMORY[0x277D36420]);
  v3 = sub_2154A1C9C();
  return sub_2153B1634(a1, v3, MEMORY[0x277D36420], &qword_27CA5AEE8, v2, MEMORY[0x277D36430]);
}

unint64_t sub_2153B1128(unsigned __int8 a1)
{
  sub_2154A30DC();
  MEMORY[0x216069C80](a1);
  v2 = sub_2154A312C();
  return sub_2153B17D4(a1, v2);
}

unint64_t sub_2153B1190(unsigned __int8 a1)
{
  sub_2154A30DC();
  MEMORY[0x216069C80](a1);
  v2 = sub_2154A312C();

  return sub_2153B17D4(a1, v2);
}

unint64_t sub_2153B11FC(uint64_t a1)
{
  sub_21549E70C();
  v2 = MEMORY[0x277CC95F0];
  sub_2153B1AD8(&qword_281199D00, MEMORY[0x277CC95F0]);
  v3 = sub_2154A1C9C();
  return sub_2153B1634(a1, v3, MEMORY[0x277CC95F0], &qword_27CA5DB90, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2153B1370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2154A2FAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2153B1428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2153B14A0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_2151A6C9C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_2154A291C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2153B156C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2153B19B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2160698C0](v9, a1);
      sub_21533FC34(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2153B1634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2153B1AD8(v23, v24);
      v19 = sub_2154A1D1C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_2153B17D4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2153B1844(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2153B18B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2154A1D6C();
      v8 = v7;
      if (v6 == sub_2154A1D6C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2154A2FAC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2153B1A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedCollaboratorStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153B1A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedCollaboratorStatus(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153B1AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2153B1B3C(uint64_t a1)
{
  v2 = sub_2154A2BFC();
  v3 = 1;
  if (v2 != 1 << *(a1 + 32))
  {
    v3 = sub_2153B3E8C(v2, *(a1 + 36), 0, a1);
    v4 = v3;
  }

  return v3;
}

uint64_t sub_2153B1BCC(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2154A2C2C();
    v7 = v6;
    v8 = sub_2154A2CFC();
    v10 = v9;
    v11 = MEMORY[0x2160697F0](v5, v7, v8, v9);
    sub_215384B50(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_215384B50(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_2154A2BFC();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2153B3BE0(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_215384B50(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_2153B1E00()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2153B1E60(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___ICNoteFormattingViewController_formattingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21536F150;
}

id NoteFormattingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void NoteFormattingViewController.init()()
{
  v1 = sub_21549E3FC();
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2154A27AC();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___ICNoteFormattingViewController_validNamedStylesForFormattingStyle;
  *&v0[v5] = sub_2153608F8(0x400000000uLL);
  v0[OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  inited = swift_initStackObject();
  v48 = xmmword_2154BFED0;
  *(inited + 16) = xmmword_2154BFED0;
  v8 = objc_opt_self();
  v9 = [v8 titleStyle];
  if (!v9)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(inited + 32) = v9;
  v10 = [v8 headingStyle];
  if (!v10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(inited + 40) = v10;
  v11 = [v8 subheadingStyle];
  if (!v11)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(inited + 48) = v11;
  v12 = [v8 bodyStyle];
  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v46 = v6;
  v47 = v0;
  *(inited + 56) = v12;
  v13 = [v8 fixedWidthStyle];
  if (v13)
  {
    *(inited + 64) = v13;
    v56 = MEMORY[0x277D84F90];
    v14 = &v56;
    sub_21531B6D0(0, 5, 0);
    v15 = 0;
    v16 = v56;
    v52 = inited & 0xC000000000000001;
    v49 = inited & 0xFFFFFFFFFFFFFF8;
    v50 = v53 + 32;
    do
    {
      if (v52)
      {
        v17 = MEMORY[0x216069960](v15, inited);
      }

      else
      {
        if (v15 >= *(v49 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:

          __break(1u);
          goto LABEL_29;
        }

        v17 = *(inited + 8 * v15 + 32);
      }

      v14 = v17;
      v18 = [v17 styleID];
      if (!v18)
      {
        goto LABEL_26;
      }

      v19 = v18;
      v20 = inited;
      v8 = sub_2154A1D6C();

      v21 = [v14 name];
      if (!v21)
      {
        goto LABEL_27;
      }

      v22 = v21;
      sub_2154A1D6C();

      sub_21549E3EC();
      v23 = [v14 attributes];
      if (!v23 || (v24 = v23, v25 = sub_2154A1C8C(), v24, v26 = sub_2153B26CC(v25), , !v26))
      {
      }

      inited = v20;
      sub_2154A279C();

      v56 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      v8 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        v14 = &v56;
        sub_21531B6D0(v27 > 1, v28 + 1, 1);
        v16 = v56;
      }

      ++v15;
      *(v16 + 16) = v8;
      (*(v53 + 32))(v16 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v28, v4, v51);
    }

    while (v15 != 5);
    swift_setDeallocating();
    swift_arrayDestroy();
    v56 = MEMORY[0x277D84F90];
    sub_2154A2E2C();
    v29 = 0;
    while (1)
    {
      v30 = ICEmphasisColorTypeKey();
      if (!v30)
      {
        break;
      }

      v8 = v30;
      v31 = NSStringForEmphasisColorType();
      if (!v31)
      {
        goto LABEL_30;
      }

      v14 = v31;
      v32 = ICColorForEmphasisColorType();
      if (!v32)
      {
        goto LABEL_28;
      }

      v33 = v32;
      [objc_allocWithZone(MEMORY[0x277D76368]) initWithStyleKey:v8 title:v14 color:v32];

      sub_2154A2E0C();
      v8 = *(v56 + 16);
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      v29 += 8;
      if (v29 == 40)
      {
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_2154BDB10;
        sub_2151A6C9C(0, &qword_27CA5BD50);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_2154BDB20;
        sub_2151A6C9C(0, &qword_27CA5BD58);
        *(v35 + 32) = sub_2154A282C();
        v36 = sub_2154A285C();

        *(v34 + 32) = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = v48;
        *(v37 + 32) = sub_2154A282C();
        *(v37 + 40) = sub_2154A282C();
        *(v37 + 48) = sub_2154A282C();
        *(v37 + 56) = sub_2154A282C();
        *(v37 + 64) = sub_2154A282C();
        v38 = sub_2154A285C();

        *(v34 + 40) = v38;
        v39 = objc_allocWithZone(MEMORY[0x277D75BD0]);
        v40 = sub_2154A1F3C();

        v41 = [v39 initWithGroups_];

        sub_2154A284C();
        sub_2154A283C();
        v42 = type metadata accessor for NoteFormattingViewController();
        v55.receiver = v47;
        v55.super_class = v42;
        v43 = objc_msgSendSuper2(&v55, sel_initWithConfiguration_, v41);
        sub_2153B3E44(&qword_27CA5BD60, v44, type metadata accessor for NoteFormattingViewController);
        v45 = v43;
        sub_2154A281C();

        return;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_2153B26CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A720);
    v1 = sub_2154A2F3C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    sub_2153B19B4(*(a1 + 48) + 40 * v11, v31);
    sub_21533FC88(*(a1 + 56) + 32 * v11, v32 + 8);
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v28[0] = v31[0];
    v28[1] = v31[1];
    sub_2153B19B4(v28, v25);
    type metadata accessor for Key(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v24;
    sub_21533FC88(v29 + 8, v26 + 8);
    sub_2151ADCD8(v28, &qword_27CA5BD98);
    sub_21531E8D0((v26 + 8), v23);
    v13 = v12;
    sub_21531E8D0(v23, v27);
    sub_21531E8D0(v27, v26);
    sub_2154A1D6C();
    sub_2154A30DC();
    sub_2154A1DFC();
    v14 = sub_2154A312C();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_21531E8D0(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  sub_2151ADCD8(v28, &qword_27CA5BD98);

  return 0;
}

id sub_2153B2A1C(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___ICNoteFormattingViewController_validNamedStylesForFormattingStyle;
  *&v1[v3] = sub_2153608F8(0x400000000uLL);
  v1[OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for NoteFormattingViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_2153B2AE0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NoteFormattingViewController();
  objc_msgSendSuper2(&v7, sel_viewIsAppearing_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong noteFormattingTintColor];
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    [v4 setTintColor_];

    *(v1 + OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish) = 0;
  }

  else
  {
    __break(1u);
  }
}

void *sub_2153B2C20(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NoteFormattingViewController();
  result = objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1 & 1);
  v4 = OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish;
  if ((*(v1 + OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish) & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result noteFormattingDidFinish_];
      result = swift_unknownObjectRelease();
    }

    *(v1 + v4) = 1;
  }

  return result;
}

uint64_t sub_2153B2D1C(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD68);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v85 - v5;
  v107 = sub_21549E78C();
  v6 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD70);
  MEMORY[0x28223BE20](v8);
  v103 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v89 = sub_2154A278C();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21549E7AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v85 - v21;
  v96 = [a1 currentBIUSForStyleSelector];
  v97 = a1;
  v23 = [a1 currentStylesForStyleSelectorIgnoreTypingAttributes_];
  sub_21549E79C();

  v101 = v14;
  sub_2154A277C();
  v87 = v16;
  v24 = *(v16 + 16);
  v100 = v22;
  v92 = v24;
  v93 = v16 + 16;
  v24(v18, v22, v15);
  v25 = MEMORY[0x277CC9A28];
  v26 = sub_2153B3E44(&qword_27CA5BD78, 255, MEMORY[0x277CC9A28]);
  v94 = v18;
  v91 = v26;
  sub_2154A1F1C();
  v95 = v8;
  sub_2153B3E44(&qword_27CA5BD80, 255, v25);
  v105 = (v6 + 8);
  for (i = MEMORY[0x277D84F90]; ; *&i[4 * v37 + 32] = v34)
  {
    v28 = v106;
    sub_2154A212C();
    sub_2153B3E44(&qword_27CA5BD88, 255, MEMORY[0x277CC9A08]);
    v29 = v107;
    v30 = sub_2154A1D1C();
    v31 = *v105;
    (*v105)(v28, v29);
    if (v30)
    {
      break;
    }

    v32 = sub_2154A214C();
    v34 = *v33;
    v32(v108, 0);
    result = sub_2154A213C();
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return result;
    }

    if (HIDWORD(v34))
    {
      goto LABEL_68;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_215318614(0, *(i + 2) + 1, 1, i);
    }

    v37 = *(i + 2);
    v36 = *(i + 3);
    if (v37 >= v36 >> 1)
    {
      i = sub_215318614((v36 > 1), v37 + 1, 1, i);
    }

    *(i + 2) = v37 + 1;
  }

  result = sub_2151ADCD8(v12, &qword_27CA5BD70);
  v38 = *(i + 2);
  v104 = v15;
  if (v38)
  {
    v39 = 0;
    v40 = *(v99 + OBJC_IVAR___ICNoteFormattingViewController_validNamedStylesForFormattingStyle);
    v102 = i + 32;
    v41 = v40 + 56;
    v42 = MEMORY[0x277D84F90];
    v98 = v38;
    do
    {
      if (v39 >= *(i + 2))
      {
        goto LABEL_71;
      }

      if (*(v40 + 16))
      {
        v47 = *(v102 + v39);
        result = MEMORY[0x216069C50](*(v40 + 40), v47, 4);
        v48 = -1 << *(v40 + 32);
        v49 = result & ~v48;
        if ((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          while (*(*(v40 + 48) + 4 * v49) != v47)
          {
            v49 = (v49 + 1) & v50;
            if (((*(v41 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v42;
          if ((result & 1) == 0)
          {
            result = sub_21531B714(0, *(v42 + 16) + 1, 1);
            v38 = v98;
            v42 = v108[0];
          }

          v43 = v42;
          v44 = *(v42 + 16);
          v45 = *(v43 + 24);
          v46 = v44 + 1;
          if (v44 >= v45 >> 1)
          {
            v86 = v44 + 1;
            result = sub_21531B714((v45 > 1), v44 + 1, 1);
            v46 = v86;
            v38 = v98;
            v43 = v108[0];
          }

          *(v43 + 16) = v46;
          *(v43 + 4 * v44 + 32) = v47;
          v42 = v43;
        }
      }

LABEL_15:
      ++v39;
    }

    while (v39 != v38);

    v15 = v104;
    v51 = *(v42 + 16);
    if (v51)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
    v51 = *(MEMORY[0x277D84F90] + 16);
    if (v51)
    {
LABEL_26:
      v108[0] = MEMORY[0x277D84F90];
      sub_2154A2E2C();
      v52 = objc_opt_self();
      v53 = 32;
      do
      {
        v54 = [v52 styleForNamedStyle_];
        sub_2154A2E0C();
        sub_2154A2E4C();
        sub_2154A2E5C();
        sub_2154A2E1C();
        v53 += 4;
        --v51;
      }

      while (v51);

      v55 = v108[0];
      v15 = v104;
      goto LABEL_31;
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_31:
  v56 = sub_215365764(v55);

  v57 = v96;
  if (*(v56 + 16) == 1)
  {
    v58 = sub_2153B1B3C(v56);

    if (v58 >= 2)
    {
      v59 = [v58 styleID];
      sub_2153B3EDC(v58);
      if (v59)
      {
        sub_2154A1D6C();

        v57 = v96;
      }
    }
  }

  else
  {
  }

  sub_2154A273C();
  if (v57)
  {
    v60 = 3;
  }

  else
  {
    v60 = 1;
  }

  if ((v57 & 2) != 0)
  {
    v61 = v60;
  }

  else
  {
    v61 = 2 * (v57 & 1u);
  }

  v62 = [objc_opt_self() systemFontOfSize_];
  v63 = [v62 ic:v61 fontByAddingSymbolicTraits:?];

  if (v63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_2154BDB20;
    *(v64 + 32) = v63;
  }

  v98 = v63;
  sub_2154A275C();
  sub_2154A271C();
  sub_2154A274C();
  if ((v57 & 0x10) != 0)
  {
    if ([v97 currentEmphasisType])
    {
      v65 = ICEmphasisColorTypeKey();
      if (v65)
      {
        v66 = v65;
        sub_2154A1D6C();
      }
    }

    sub_2154A272C();
  }

  v92(v94, v100, v15);
  sub_2154A1F1C();
  v96 = *MEMORY[0x277D771E0];
  v95 = *MEMORY[0x277D771F0];
  v94 = *MEMORY[0x277D771E8];
  v102 = MEMORY[0x277D84F90];
  v67 = v106;
  while (1)
  {
    v68 = v103;
    sub_2154A212C();
    v69 = v107;
    v70 = sub_2154A1D1C();
    v31(v67, v69);
    if (v70)
    {
      break;
    }

    v71 = sub_2154A214C();
    v73 = *v72;
    v71(v108, 0);
    result = sub_2154A213C();
    if ((v73 & 0x8000000000000000) != 0)
    {
      goto LABEL_69;
    }

    if (HIDWORD(v73))
    {
      goto LABEL_70;
    }

    switch(v73)
    {
      case 'f':
        v74 = v96;
        goto LABEL_59;
      case 'e':
        v74 = v95;
LABEL_59:
        v75 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_2153184EC(0, v102[2] + 1, 1, v102);
        }

        v77 = v102[2];
        v76 = v102[3];
        if (v77 >= v76 >> 1)
        {
          v102 = sub_2153184EC((v76 > 1), v77 + 1, 1, v102);
        }

        v78 = v102;
        v102[2] = v77 + 1;
        v78[v77 + 4] = v75;
        break;
      case 'd':
        v74 = v94;
        goto LABEL_59;
    }
  }

  sub_2151ADCD8(v68, &qword_27CA5BD70);
  v79 = sub_2153657FC(v102);

  if (*(v79 + 16) > 1uLL)
  {
  }

  v80 = v101;
  v81 = v104;
  sub_2154A276C();
  [v97 isBlockQuoteSet];
  sub_2154A270C();
  v82 = v88;
  v83 = v90;
  v84 = v89;
  (*(v88 + 16))(v90, v80, v89);
  (*(v82 + 56))(v83, 0, 1, v84);
  sub_2154A27CC();

  (*(v82 + 8))(v80, v84);
  return (*(v87 + 8))(v100, v81);
}

id NoteFormattingViewController.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfiguration_];

  return v3;
}

id NoteFormattingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoteFormattingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall NoteFormattingViewController.textFormattingDidFinish(_:)(UITextFormattingViewController *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong noteFormattingDidFinish_];
    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish) = 1;
}

void *sub_2153B3B5C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result noteFormattingDidFinish_];
    result = swift_unknownObjectRelease();
  }

  *(v0 + OBJC_IVAR___ICNoteFormattingViewController_didCallTextFormattingDidFinish) = 1;
  return result;
}

void sub_2153B3BE0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x216069850](a1, a2, v9);
      sub_2151A6C9C(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2151A6C9C(0, a5);
    if (sub_2154A2C6C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2154A2C7C();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_2154A290C();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_2154A291C();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_2153B3E44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2153B3E8C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2153B3EDC(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_2153B3EEC(uint64_t a1)
{
  v3 = sub_2154A27BC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D74F38])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_14;
    }

    [Strong toggleBIUS:1 sender:v1];
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x277D74F48])
  {
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      goto LABEL_14;
    }

    [v10 toggleBIUS:2 sender:v1];
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x277D74F70])
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      goto LABEL_14;
    }

    [v11 toggleBIUS:4 sender:v1];
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x277D74ED8])
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      goto LABEL_14;
    }

    [v12 toggleBIUS:8 sender:v1];
    goto LABEL_13;
  }

  if (v8 != *MEMORY[0x277D74F58])
  {
    if (v8 == *MEMORY[0x277D74EE8])
    {
      (*(v4 + 96))(v7, v3);
      v32 = objc_opt_self();
      v33 = sub_2154A1D2C();

      v34 = [v32 namedStyleFromStyleID_];

      swift_beginAccess();
      v35 = swift_unknownObjectWeakLoadStrong();
      if (!v35)
      {
        goto LABEL_14;
      }

      [v35 setTextStyle:v34 sender:v1];
    }

    else if (v8 == *MEMORY[0x277D74F00])
    {
      swift_beginAccess();
      v36 = swift_unknownObjectWeakLoadStrong();
      if (!v36)
      {
        goto LABEL_14;
      }

      [v36 toggleBlockQuote_];
    }

    else if (v8 == *MEMORY[0x277D74ED0])
    {
      (*(v4 + 96))(v7, v3);
      if (*(v7 + 1))
      {

        v38 = sub_2154A1D2C();
        v39 = ICEmphasisColorTypeForKey();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v39 = 0;
      }

      swift_beginAccess();
      v43 = swift_unknownObjectWeakLoadStrong();
      if (!v43)
      {
        goto LABEL_14;
      }

      [v43 setEmphasisType:v39 sender:v1];
    }

    else if (v8 == *MEMORY[0x277D74F20])
    {
      swift_beginAccess();
      v40 = swift_unknownObjectWeakLoadStrong();
      if (!v40)
      {
        goto LABEL_14;
      }

      [v40 changeIndentationByIncreasing:1 sender:v1];
    }

    else
    {
      if (v8 != *MEMORY[0x277D74F18])
      {
        (*(v4 + 8))(v7, v3);
        goto LABEL_14;
      }

      swift_beginAccess();
      v42 = swift_unknownObjectWeakLoadStrong();
      if (!v42)
      {
        goto LABEL_14;
      }

      [v42 changeIndentationByIncreasing:0 sender:v1];
    }

LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  (*(v4 + 96))(v7, v3);
  v14 = *v7;
  if (!*v7)
  {
    goto LABEL_14;
  }

  v15 = sub_2154A1D6C();
  v17 = v16;
  if (v15 == sub_2154A1D6C() && v17 == v18)
  {

    goto LABEL_40;
  }

  v20 = sub_2154A2FAC();

  if (v20)
  {
LABEL_40:
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {
LABEL_43:

      goto LABEL_14;
    }

    [v37 setTextStyle:100 sender:v1];
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v21 = sub_2154A1D6C();
  v23 = v22;
  if (v21 == sub_2154A1D6C() && v23 == v24)
  {

    goto LABEL_51;
  }

  v26 = sub_2154A2FAC();
  v27 = v14;

  if (v26)
  {
LABEL_51:
    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (!v41)
    {
      goto LABEL_43;
    }

    [v41 setTextStyle:101 sender:v1];
    goto LABEL_42;
  }

  v28 = sub_2154A1D6C();
  v30 = v29;
  if (v28 == sub_2154A1D6C() && v30 == v31)
  {
  }

  else
  {
    v44 = sub_2154A2FAC();
    v45 = v27;

    if ((v44 & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    [v46 setTextStyle:102 sender:v1];
    swift_unknownObjectRelease();
  }

LABEL_14:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result noteFormattingNeedsUpdate_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _s11NotesEditor28NoteFormattingViewControllerC026_disabledComponentsForTextdeF0yShySo06UITextdeF12ComponentKeyaGSo0kdeF0CF_0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = [Strong isOnlyBlockQuoteEnabled];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154C1890;
  v3 = *MEMORY[0x277D77118];
  *(inited + 32) = *MEMORY[0x277D77118];
  v4 = *MEMORY[0x277D770E0];
  v5 = *MEMORY[0x277D770D0];
  *(inited + 40) = *MEMORY[0x277D770E0];
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D77168];
  v7 = *MEMORY[0x277D771D8];
  *(inited + 56) = *MEMORY[0x277D77168];
  *(inited + 64) = v7;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = sub_2153658BC(inited);
  swift_setDeallocating();
  type metadata accessor for ComponentKey(0);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_2153B488C()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5BDA0);
  __swift_project_value_buffer(v0, qword_27CA5BDA0);
  return sub_21549F0BC();
}

void sub_2153B48D8()
{
  if (qword_27CA598A8 != -1)
  {
    swift_once();
  }

  v1 = sub_21549F11C();
  __swift_project_value_buffer(v1, qword_27CA5BDA0);
  v2 = sub_21549F0FC();
  v3 = sub_2154A225C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2151A1000, v2, v3, "SummaryViewModelObserver.delegate set", v4, 2u);
    MEMORY[0x21606B520](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 removeObserver_];

  v7 = v0 + OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate;
  v8 = *(v0 + OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate);
  if (v8)
  {
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = v8;

    v12 = v10;
    v13 = [v5 defaultCenter];
    v14 = sub_2154A1D2C();
    [v13 addObserver:v0 selector:sel_viewModelDidUpdate_ name:v14 object:v9];

    oslog = sub_21549F0FC();
    v15 = sub_2154A225C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2151A1000, oslog, v15, "SummaryViewModelObserver.delegate registered", v16, 2u);
      MEMORY[0x21606B520](v16, -1, -1);
    }
  }
}

void sub_2153B4B48()
{
  v1 = v0;
  if (qword_27CA598A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5BDA0);
  v3 = sub_21549F0FC();
  v4 = sub_2154A225C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2151A1000, v3, v4, "SummaryViewModelObserver.viewModelDidUpdate fired", v5, 2u);
    MEMORY[0x21606B520](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate;
  v7 = *(v1 + OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate);
  if (!v7)
  {
    goto LABEL_26;
  }

  v9 = *(v6 + 8);
  v8 = *(v6 + 16);
  v10 = v7;

  v11 = v8;
  sub_21549E17C();
  if (!v34[3])
  {

    sub_2151ADCD8(v34, &qword_27CA5ABC0);
    goto LABEL_26;
  }

  type metadata accessor for SummaryViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_25:

    goto LABEL_26;
  }

  swift_getKeyPath();
  v34[0] = v33;
  sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  v12 = [*(v33 + 16) attachment];
  if (!v12)
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12;
  v14 = [v12 identifier];

  if (!v14)
  {

LABEL_24:

    goto LABEL_25;
  }

  v31 = sub_2154A1D6C();
  v32 = v15;

  swift_getKeyPath();
  sub_21549ED9C();

  swift_beginAccess();
  v16 = [*(v9 + 16) attachment];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 identifier];

  if (v18)
  {
    v19 = sub_2154A1D6C();
    v21 = v20;

    if (v31 == v19 && v32 == v21)
    {

LABEL_20:

      v23 = v10;
      v24 = v11;
      sub_2153B5044(v23, v33, v24);

      v25 = sub_21549F0FC();
      v26 = sub_2154A225C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2151A1000, v25, v26, "SummaryViewModelObserver updated delegate", v27, 2u);
        MEMORY[0x21606B520](v27, -1, -1);
      }

      return;
    }

    v22 = sub_2154A2FAC();

    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_26:
  v28 = sub_21549F0FC();
  v29 = sub_2154A225C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2151A1000, v28, v29, "SummaryViewModelObserver.viewModelDidUpdate failed", v30, 2u);
    MEMORY[0x21606B520](v30, -1, -1);
  }
}

void sub_2153B5044(void *a1, uint64_t a2, _BYTE *a3)
{
  swift_getKeyPath();
  sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v6 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
  swift_beginAccess();
  if ((*(a2 + v6) & 1) != 0 || (swift_getKeyPath(), sub_21549ED9C(), , swift_beginAccess(), , v7 = sub_2154A1E0C(), , v7 >= 1))
  {
    if (qword_27CA598A8 != -1)
    {
      swift_once();
    }

    v8 = sub_21549F11C();
    __swift_project_value_buffer(v8, qword_27CA5BDA0);
    v9 = sub_21549F0FC();
    v10 = sub_2154A225C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2151A1000, v9, v10, "Setting summary string because we had something available", v11, 2u);
      MEMORY[0x21606B520](v11, -1, -1);
    }

    swift_getKeyPath();
    sub_21549ED9C();

    swift_beginAccess();
    v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);

    v13 = sub_2154A1D2C();

    v14 = [v12 initWithString_];
    goto LABEL_8;
  }

  if ((a3[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_isShowingPlaceholder] & 1) == 0)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v13 = sub_2154A1D2C();
    v14 = [v16 initWithString_];
LABEL_8:
    v15 = v14;

    sub_2153B54F0(v15, a1, a2, a3);
  }
}

void sub_2153B54F0(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v58 = a4;
  v55 = sub_21549EA1C();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v52 = &v50 - v10;
  v56 = [a1 length];
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  aBlock[0] = a3;
  sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  v57 = v11;
  sub_21549ED9C();

  swift_beginAccess();

  v12 = sub_2154A1E0C();

  v13 = [objc_opt_self() labelColor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BDB40;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 ic_preferredFontForBodyText];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2151A6C9C(0, &qword_27CA5A8E8);
    *(inited + 40) = v19;
    v21 = *MEMORY[0x277D740C0];
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    *(inited + 104) = sub_2151A6C9C(0, &qword_2811994C0);
    *(inited + 80) = v13;
    v22 = v21;
    v23 = v13;
    sub_215327E80(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A728);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_2153BAE40(&qword_27CA59D70, type metadata accessor for Key);
    v24 = sub_2154A1C7C();

    [a1 addAttributes:v24 range:{0, v12}];

    v25 = [a2 textStorage];
    v26 = [a2 window];
    if (v26)
    {
      v27 = a2;
      v28 = v23;
      v51 = a1;

      swift_getKeyPath();
      aBlock[0] = a3;
      sub_21549ED9C();

      v29 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
      swift_beginAccess();
      if ((*(a3 + v29) & 1) != 0 || v56 < 1 || (v30 = OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_isShowingPlaceholder, v58[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_isShowingPlaceholder] != 1))
      {
        swift_getKeyPath();
        aBlock[0] = a3;
        sub_21549ED9C();

        if (*(a3 + v29) == 1)
        {
          v32 = OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_isShowingPlaceholder;
          v33 = v28;
          if (v58[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_isShowingPlaceholder] != 1)
          {
            swift_getKeyPath();
            aBlock[0] = a3;
            sub_21549ED9C();

            v34 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
            swift_beginAccess();
            v35 = v54;
            v36 = v52;
            v37 = v55;
            (*(v54 + 16))(v52, a3 + v34, v55);
            v38 = v53;
            (*(v35 + 104))(v53, *MEMORY[0x277D35A38], v37);
            LOBYTE(v34) = sub_21549EA0C();
            v39 = *(v35 + 8);
            v39(v38, v37);
            v39(v36, v37);
            if (v34)
            {
              v58[v32] = 1;
              v40 = objc_allocWithZone(MEMORY[0x277CCA898]);
              v41 = sub_2154A1D2C();
              v42 = [v40 initWithString_];

              v43 = v51;
              [v51 appendAttributedString_];

              [v25 setAttributedString_];
              [v27 insertAnimatedTextPlaceholder];
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v31 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSettingTextEffects;
        swift_beginAccess();
        if (*(a3 + v31) == 1)
        {
          *(a3 + v31) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v50 - 2) = a3;
          *(&v50 - 8) = 1;
          aBlock[0] = a3;
          sub_21549ED8C();
        }

        v45 = v58;
        v58[v30] = 0;
        v46 = swift_allocObject();
        v46[2] = v27;
        v46[3] = a3;
        v46[4] = v45;
        aBlock[4] = sub_2153BAEA8;
        aBlock[5] = v46;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2151BD7E4;
        aBlock[3] = &block_descriptor_19;
        v47 = _Block_copy(aBlock);
        v48 = v27;

        v49 = v45;

        [v48 replaceAnimatedTextPlaceholderWith:v51 completion:v47];

        _Block_release(v47);
      }
    }

    else
    {
      [v25 setAttributedString_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2153B5D34(uint64_t a1, uint64_t a2)
{
  v3 = sub_21549EA1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSettingTextEffects;
  swift_beginAccess();
  if (*(a2 + v10))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18[-2] = a2;
    LOBYTE(v18[-1]) = 0;
    v19 = a2;
    sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(a2 + v10) = 0;
  }

  swift_getKeyPath();
  v19 = a2;
  sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v12 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
  swift_beginAccess();
  (*(v4 + 16))(v9, a2 + v12, v3);
  (*(v4 + 104))(v6, *MEMORY[0x277D35A38], v3);
  sub_2153BAE40(&qword_27CA5AE50, MEMORY[0x277D35A48]);
  LOBYTE(v12) = sub_2154A1D1C();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  v14 = (v12 ^ 1) & 1;
  v15 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showSummarizationErrorToggle;
  result = swift_beginAccess();
  if (v14 == *(a2 + v15))
  {
    *(a2 + v15) = v14;
  }

  else
  {
    v17 = swift_getKeyPath();
    MEMORY[0x28223BE20](v17);
    v18[-2] = a2;
    LOBYTE(v18[-1]) = v14;
    v18[2] = a2;
    sub_21549ED8C();
  }

  return result;
}

id sub_2153B6110()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = &v3[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate];
  v5 = *&v3[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate];
  v6 = *&v3[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate + 8];
  v7 = *&v3[OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate + 16];
  *v4 = v1;
  *(v4 + 1) = v2;
  *(v4 + 2) = v3;
  v10 = v1;

  v8 = v3;
  sub_2153BAED4(v5, v6, v7);
  sub_2153B48D8();

  return v10;
}

uint64_t sub_2153B620C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2153BAF28();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2153B6270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2153BAF28();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2153B62D4()
{
  sub_2153BAF28();
  sub_2154A036C();
  __break(1u);
}

id sub_2153B62FC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D74280]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D742A8]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  v4 = v1;
  [v4 addTextLayoutManager_];
  [v4 setPrimaryTextLayoutManager_];

  [v3 setWidthTracksTextView_];
  [v3 setHeightTracksTextView_];
  [v3 setLineFragmentPadding_];
  v5 = v3;
  [v2 setTextContainer_];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SummaryTextView();
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_textContainer_, v5, 0.0, 0.0, 0.0, 0.0);

  v7 = v6;
  [v7 setEditable_];
  [v7 setSelectable_];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAlwaysBounceVertical_];

  return v7;
}

id sub_2153B65B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2153B6614(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2153B665C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2153B66BC()
{
  result = qword_27CA5BDC8;
  if (!qword_27CA5BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BDC8);
  }

  return result;
}

double sub_2153B6710()
{
  v1 = sub_21549FCFC();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - v4;
  v37 = sub_2154A00DC();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = *(type metadata accessor for SummaryButtonStyle(0) + 24);
  v32 = v0;
  sub_215324EEC(v0 + v17, v10, &qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21533FB7C(v10, v16, &qword_27CA5BDE8);
  }

  else
  {
    sub_2154A227C();
    v18 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v37);
  }

  v19 = sub_2154A04CC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) != 1)
  {
    sub_215324EEC(v16, v13, &qword_27CA5BDE8);
    v24 = (*(v20 + 88))(v13, v19);
    if (v24 == *MEMORY[0x277CE0558])
    {
      v25 = v33;
      sub_215439EA8(v33);
      v27 = v34;
      v26 = v35;
      v28 = v36;
      (*(v35 + 104))(v34, *MEMORY[0x277CDF988], v36);
      sub_2153BAE40(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
      v29 = sub_2154A1CCC();
      v30 = *(v26 + 8);
      v30(v27, v28);
      v30(v25, v28);
      if ((v29 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BED8);
        sub_21549FA7C();
        v22 = v38;
        goto LABEL_7;
      }
    }

    else
    {
      if (v24 == *MEMORY[0x277CE0560])
      {
        *&v21 = 34.0;
        goto LABEL_6;
      }

      (*(v20 + 8))(v13, v19);
    }
  }

  *&v21 = 48.0;
LABEL_6:
  v22 = *&v21;
LABEL_7:
  sub_2151ADCD8(v16, &qword_27CA5BDE8);
  return v22;
}

double sub_2153B6C28()
{
  v1 = sub_2154A04CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v8 - 8);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  type metadata accessor for SummaryButtonStyle(0);
  v26 = v0;
  sub_21543A0D0();
  (*(v2 + 104))(v12, *MEMORY[0x277CE0560], v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_215324EEC(v15, v7, &qword_27CA5BDE8);
  sub_215324EEC(v12, &v7[v16], &qword_27CA5BDE8);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) != 1)
  {
    sub_215324EEC(v7, v27, &qword_27CA5BDE8);
    if (v17(&v7[v16], 1, v1) != 1)
    {
      v19 = &v7[v16];
      v20 = v25;
      (*(v2 + 32))(v25, v19, v1);
      sub_2153BAE40(&qword_27CA5CF70, MEMORY[0x277CE0570]);
      v21 = v27;
      v22 = sub_2154A1D1C();
      v23 = *(v2 + 8);
      v23(v20, v1);
      sub_2151ADCD8(v12, &qword_27CA5BDE8);
      sub_2151ADCD8(v15, &qword_27CA5BDE8);
      v23(v21, v1);
      sub_2151ADCD8(v7, &qword_27CA5BDE8);
      result = 8.0;
      if ((v22 & 1) == 0)
      {
        return result;
      }

      return sub_2153B6710() * 0.5;
    }

    sub_2151ADCD8(v12, &qword_27CA5BDE8);
    sub_2151ADCD8(v15, &qword_27CA5BDE8);
    (*(v2 + 8))(v27, v1);
LABEL_6:
    sub_2151ADCD8(v7, &qword_27CA5BE40);
    return 8.0;
  }

  sub_2151ADCD8(v12, &qword_27CA5BDE8);
  sub_2151ADCD8(v15, &qword_27CA5BDE8);
  if (v17(&v7[v16], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_2151ADCD8(v7, &qword_27CA5BDE8);
  return sub_2153B6710() * 0.5;
}

uint64_t sub_2153B709C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2154A011C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF20);
  sub_2153B7248(v1, a1 + *(v3 + 44));
  sub_2153B6710();
  sub_2154A0FAC();
  sub_21549FAFC();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF28) + 36));
  *v4 = v14;
  v4[1] = v15;
  v4[2] = v16;
  sub_2154A0CBC();
  v5 = sub_2154A0D3C();

  v6 = sub_2154A06DC();
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF30) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = sub_2153B6C28();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF38) + 36));
  v10 = *(sub_21549FE2C() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_2154A01DC();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = v8;
  v9[1] = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9E8);
  *(v9 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_2153B7248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a1;
  v149 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF40);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v135 = (&v114 - v2);
  v117 = sub_2154A00DC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2154A014C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v114 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF48);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v114 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF50);
  MEMORY[0x28223BE20](v129);
  v128 = &v114 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF58);
  MEMORY[0x28223BE20](v127);
  v134 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = &v114 - v10;
  MEMORY[0x28223BE20](v11);
  v131 = &v114 - v12;
  v136 = sub_2154A04CC();
  v139 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v118 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40) - 8;
  MEMORY[0x28223BE20](v138);
  v15 = &v114 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v16 - 8);
  v140 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v151 = &v114 - v19;
  MEMORY[0x28223BE20](v20);
  v137 = &v114 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF60);
  MEMORY[0x28223BE20](v22 - 8);
  v146 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v145 = &v114 - v25;
  v26 = sub_2154A01AC();
  MEMORY[0x28223BE20](v26 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF68);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v153 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  v33 = sub_2154A0D8C();
  v34 = sub_2154A070C();
  v35 = sub_2154A06EC();
  sub_21549F99C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v154) = 1;
  LOBYTE(v173[0]) = 0;
  v44 = sub_2154A072C();
  sub_21549F99C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  LOBYTE(v157) = 0;
  v53 = &v32[*(v28 + 44)];
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v55 = *MEMORY[0x277CE1050];
  v56 = sub_2154A0D9C();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = swift_getKeyPath();
  v57 = v136;
  *v32 = v33;
  v32[8] = v34;
  *(v32 + 9) = v173[0];
  *(v32 + 3) = *(v173 + 3);
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  v32[48] = 1;
  *(v32 + 49) = *v172;
  *(v32 + 13) = *&v172[3];
  v32[56] = v35;
  *(v32 + 57) = *v171;
  *(v32 + 15) = *&v171[3];
  *(v32 + 8) = v37;
  *(v32 + 9) = v39;
  *(v32 + 10) = v41;
  *(v32 + 11) = v43;
  v32[96] = 0;
  *(v32 + 25) = *&v170[3];
  *(v32 + 97) = *v170;
  v32[104] = v44;
  *(v32 + 27) = *&v169[3];
  *(v32 + 105) = *v169;
  *(v32 + 14) = v46;
  *(v32 + 15) = v48;
  *(v32 + 16) = v50;
  *(v32 + 17) = v52;
  v32[144] = 0;
  sub_2154A019C();
  sub_2154A018C();
  v119 = objc_opt_self();
  v58 = [v119 mainBundle];
  v59 = sub_2154A1D2C();
  v60 = [v58 localizedStringForKey:v59 value:0 table:0];

  sub_2154A1D6C();
  sub_2154A017C();

  sub_2154A018C();
  sub_2154A01CC();
  v152 = sub_2154A090C();
  v143 = v61;
  LOBYTE(v58) = v62;
  v144 = v63;
  v142 = sub_2154A072C();
  v64 = v58 & 1;
  v65 = v151;
  v66 = v137;
  v141 = v64;
  LOBYTE(v157) = v64;
  LOBYTE(v154) = 1;
  type metadata accessor for SummaryButtonStyle(0);
  sub_21543A0D0();
  v67 = v139;
  (*(v139 + 104))(v65, *MEMORY[0x277CE0558], v57);
  (*(v67 + 56))(v65, 0, 1, v57);
  v68 = *(v138 + 56);
  sub_215324EEC(v66, v15, &qword_27CA5BDE8);
  sub_215324EEC(v65, &v15[v68], &qword_27CA5BDE8);
  v69 = *(v67 + 48);
  if (v69(v15, 1, v57) == 1)
  {
    sub_2151ADCD8(v65, &qword_27CA5BDE8);
    sub_2151ADCD8(v66, &qword_27CA5BDE8);
    v70 = v69(&v15[v68], 1, v57);
    v71 = v145;
    if (v70 == 1)
    {
      sub_2151ADCD8(v15, &qword_27CA5BDE8);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_215324EEC(v15, v140, &qword_27CA5BDE8);
  if (v69(&v15[v68], 1, v57) == 1)
  {
    sub_2151ADCD8(v151, &qword_27CA5BDE8);
    sub_2151ADCD8(v66, &qword_27CA5BDE8);
    (*(v67 + 8))(v140, v57);
    v71 = v145;
LABEL_6:
    sub_2151ADCD8(v15, &qword_27CA5BE40);
    goto LABEL_7;
  }

  v73 = &v15[v68];
  v74 = v118;
  (*(v67 + 32))(v118, v73, v57);
  sub_2153BAE40(&qword_27CA5CF70, MEMORY[0x277CE0570]);
  v75 = v140;
  v76 = sub_2154A1D1C();
  v77 = *(v67 + 8);
  v77(v74, v57);
  sub_2151ADCD8(v151, &qword_27CA5BDE8);
  sub_2151ADCD8(v66, &qword_27CA5BDE8);
  v77(v75, v57);
  sub_2151ADCD8(v15, &qword_27CA5BDE8);
  v71 = v145;
  if (v76)
  {
LABEL_9:
    v78 = [v119 mainBundle];
    v79 = sub_2154A1D2C();
    v80 = [v78 localizedStringForKey:v79 value:0 table:0];

    v81 = sub_2154A1D6C();
    v83 = v82;

    v157 = v81;
    v158 = v83;
    sub_215324954();
    v84 = v120;
    sub_2154A0DCC();
    v85 = v123;
    sub_2154A013C();
    sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
    sub_2153BAE40(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    v86 = v130;
    v87 = v122;
    v88 = v125;
    sub_2154A09CC();
    (*(v124 + 8))(v85, v88);
    (*(v121 + 8))(v84, v87);
    v89 = *(v150 + 8);
    if (*(v150 + 16) == 1)
    {
      if ((v89 & 1) == 0)
      {
LABEL_11:
        v90 = sub_2154A0D5C();
LABEL_14:
        v93 = v90;
        KeyPath = swift_getKeyPath();
        v95 = v128;
        (*(v132 + 32))(v128, v86, v133);
        v96 = (v95 + *(v129 + 36));
        *v96 = KeyPath;
        v96[1] = v93;
        LOBYTE(v93) = sub_2154A06CC();
        v97 = v126;
        sub_21533FB7C(v95, v126, &qword_27CA5BF50);
        v98 = v97 + *(v127 + 36);
        *v98 = v93;
        *(v98 + 8) = 0u;
        *(v98 + 24) = 0u;
        *(v98 + 40) = 1;
        v99 = v131;
        sub_21533FB7C(v97, v131, &qword_27CA5BF58);
        v100 = v134;
        sub_215324EEC(v99, v134, &qword_27CA5BF58);
        v101 = v135;
        *v135 = 0;
        *(v101 + 8) = 1;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF88);
        sub_215324EEC(v100, v101 + *(v102 + 48), &qword_27CA5BF58);
        sub_2151ADCD8(v99, &qword_27CA5BF58);
        sub_2151ADCD8(v100, &qword_27CA5BF58);
        sub_21533FB7C(v101, v71, &qword_27CA5BF40);
        v72 = 0;
        goto LABEL_15;
      }
    }

    else
    {

      sub_2154A227C();
      v91 = sub_2154A068C();
      sub_21549F07C();

      v92 = v115;
      sub_2154A00CC();
      swift_getAtKeyPath();
      sub_21537702C(v89, 0);
      (*(v116 + 8))(v92, v117);
      if (v157 != 1)
      {
        goto LABEL_11;
      }
    }

    v90 = sub_2154A0D4C();
    goto LABEL_14;
  }

LABEL_7:
  v72 = 1;
LABEL_15:
  (*(v147 + 56))(v71, v72, 1, v148);
  v103 = v153;
  sub_215324EEC(v32, v153, &qword_27CA5BF68);
  v104 = v146;
  sub_215324EEC(v71, v146, &qword_27CA5BF60);
  v105 = v149;
  sub_215324EEC(v103, v149, &qword_27CA5BF68);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF78);
  v107 = (v105 + *(v106 + 48));
  *&v154 = v152;
  v108 = v143;
  *(&v154 + 1) = v143;
  v109 = v141;
  LOBYTE(v155) = v141;
  *(&v155 + 1) = *v168;
  DWORD1(v155) = *&v168[3];
  v110 = v144;
  *(&v155 + 1) = v144;
  LOBYTE(v103) = v142;
  v156[0] = v142;
  *&v156[1] = *v167;
  *&v156[4] = *&v167[3];
  memset(&v156[8], 0, 32);
  v156[40] = 1;
  v111 = v155;
  *v107 = v154;
  v107[1] = v111;
  v112 = *&v156[16];
  v107[2] = *v156;
  v107[3] = v112;
  *(v107 + 57) = *&v156[25];
  sub_215324EEC(v104, v105 + *(v106 + 64), &qword_27CA5BF60);
  sub_215324EEC(&v154, &v157, &qword_27CA5BF80);
  sub_2151ADCD8(v71, &qword_27CA5BF60);
  sub_2151ADCD8(v32, &qword_27CA5BF68);
  sub_2151ADCD8(v104, &qword_27CA5BF60);
  v157 = v152;
  v158 = v108;
  v159 = v109;
  *v160 = *v168;
  *&v160[3] = *&v168[3];
  v161 = v110;
  v162 = v103;
  *v163 = *v167;
  *&v163[3] = *&v167[3];
  v164 = 0u;
  v165 = 0u;
  v166 = 1;
  sub_2151ADCD8(&v157, &qword_27CA5BF80);
  return sub_2151ADCD8(v153, &qword_27CA5BF68);
}

uint64_t sub_2153B85E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryViewLauncher(0);
  sub_215324EEC(v1 + *(v10 + 20), v9, &qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21533FB7C(v9, a1, &qword_27CA5BDE8);
  }

  sub_2154A227C();
  v12 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2153B87CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v119 = sub_2154A059C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2154A084C();
  v135 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for SummaryButtonStyle(0);
  MEMORY[0x28223BE20](v131);
  v120 = (&v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_21549E95C();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for SummaryViewLauncher(0);
  v98 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v107 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v7;
  MEMORY[0x28223BE20](v8);
  v128 = &v96 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE00);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v96 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE08);
  MEMORY[0x28223BE20](v127);
  v105 = (&v96 - v11);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE10);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v130 = &v96 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE18);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v96 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE20);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v96 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE28);
  MEMORY[0x28223BE20](v125);
  v116 = &v96 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE30);
  MEMORY[0x28223BE20](v122);
  v124 = &v96 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE38);
  MEMORY[0x28223BE20](v123);
  v97 = (&v96 - v17);
  v18 = sub_2154A04CC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v96 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v96 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8);
  MEMORY[0x28223BE20](v25 - 8);
  v121 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v96 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - v31;
  v134 = a1;
  sub_2153B85E0(&v96 - v31);
  (*(v19 + 104))(v29, *MEMORY[0x277CE0558], v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  v33 = *(v22 + 56);
  sub_215324EEC(v32, v24, &qword_27CA5BDE8);
  sub_215324EEC(v29, &v24[v33], &qword_27CA5BDE8);
  v34 = *(v19 + 48);
  if (v34(v24, 1, v18) == 1)
  {
    sub_2151ADCD8(v29, &qword_27CA5BDE8);
    sub_2151ADCD8(v32, &qword_27CA5BDE8);
    if (v34(&v24[v33], 1, v18) == 1)
    {
      sub_2151ADCD8(v24, &qword_27CA5BDE8);
LABEL_9:
      v90 = sub_2154A011C();
      v91 = v97;
      *v97 = v90;
      *(v91 + 8) = 0;
      *(v91 + 16) = 1;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE80);
      sub_2153B9C74(v134, (v91 + *(v92 + 44)));
      v84 = &qword_27CA5BE38;
      sub_215324EEC(v91, v124, &qword_27CA5BE38);
      swift_storeEnumTagMultiPayload();
      sub_2151ACC5C(&qword_27CA5BE70, &qword_27CA5BE38);
      sub_2153BB6D8();
      sub_2154A039C();
      v85 = v91;
      return sub_2151ADCD8(v85, v84);
    }

    goto LABEL_6;
  }

  sub_215324EEC(v24, v121, &qword_27CA5BDE8);
  if (v34(&v24[v33], 1, v18) == 1)
  {
    sub_2151ADCD8(v29, &qword_27CA5BDE8);
    sub_2151ADCD8(v32, &qword_27CA5BDE8);
    (*(v19 + 8))(v121, v18);
LABEL_6:
    sub_2151ADCD8(v24, &qword_27CA5BE40);
    goto LABEL_7;
  }

  v86 = v96;
  (*(v19 + 32))(v96, &v24[v33], v18);
  sub_2153BAE40(&qword_27CA5CF70, MEMORY[0x277CE0570]);
  v87 = v121;
  v88 = sub_2154A1D1C();
  v89 = *(v19 + 8);
  v89(v86, v18);
  sub_2151ADCD8(v29, &qword_27CA5BDE8);
  sub_2151ADCD8(v32, &qword_27CA5BDE8);
  v89(v87, v18);
  sub_2151ADCD8(v24, &qword_27CA5BDE8);
  if (v88)
  {
    goto LABEL_9;
  }

LABEL_7:
  v35 = v134;
  v36 = v128;
  sub_2153BB1AC(v134, v128);
  v98 = *(v98 + 80);
  v37 = (v98 + 16) & ~v98;
  v96 = v37;
  v38 = swift_allocObject();
  sub_2153BB210(v36, v38 + v37);
  v39 = v99;
  sub_2154A0E3C();
  v40 = *v35;
  swift_getKeyPath();
  v136 = v40;
  sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v41 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__recordingState;
  swift_beginAccess();
  v42 = v103;
  v43 = v40 + v41;
  v44 = v102;
  v45 = v104;
  (*(v103 + 16))(v102, v43, v104);
  LOBYTE(v37) = (*(v42 + 88))(v44, v45) == *MEMORY[0x277D359E8];
  (*(v42 + 8))(v44, v45);
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v37;
  v48 = v105;
  (*(v100 + 32))(v105, v39, v101);
  v49 = (v48 + *(v127 + 36));
  *v49 = KeyPath;
  v49[1] = sub_2153A1B68;
  v49[2] = v47;
  v50 = v120;
  v97 = v40;
  *v120 = v40;
  *(v50 + 8) = swift_getKeyPath();
  *(v50 + 16) = 0;
  v51 = v131;
  v52 = *(v131 + 24);
  *(v50 + v52) = swift_getKeyPath();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  v53 = *(v51 + 28);
  *(v50 + v53) = swift_getKeyPath();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  swift_storeEnumTagMultiPayload();
  v136 = 0x403C000000000000;
  LODWORD(v103) = *MEMORY[0x277CE0A68];
  v54 = *(v135 + 104);
  v135 += 104;
  v102 = v54;
  (v54)(v132);
  v101 = sub_2153BB28C();
  swift_retain_n();
  sub_21549FA6C();
  v100 = sub_2153BB2E0();
  v55 = sub_2153BAE40(&qword_27CA5BE60, type metadata accessor for SummaryButtonStyle);
  sub_2154A09EC();
  sub_2153BB3C4(v50);
  sub_2151ADCD8(v48, &qword_27CA5BE08);
  v56 = v134;
  v57 = v134 + *(v106 + 24);
  v58 = *v57;
  v59 = *(v57 + 1);
  LOBYTE(v140) = v58;
  v141 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0E0C();
  v105 = v137;
  LODWORD(v106) = v138;
  v60 = v128;
  sub_2153BB1AC(v56, v128);
  v61 = v96;
  v62 = swift_allocObject();
  sub_2153BB210(v60, &v61[v62]);
  v63 = v56;
  v64 = v107;
  sub_2153BB1AC(v63, v107);
  v65 = swift_allocObject();
  sub_2153BB210(v64, &v61[v65]);
  v134 = type metadata accessor for SummaryView(0);
  v136 = v127;
  v137 = v51;
  v138 = v100;
  v139 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = sub_2153BAE40(&qword_27CA5BE68, type metadata accessor for SummaryView);
  v66 = v109;
  v67 = v110;
  v68 = v130;
  sub_2154A0BCC();

  (*(v108 + 8))(v68, v67);
  v69 = v117;
  sub_2154A058C();
  v136 = v67;
  v137 = v134;
  v138 = OpaqueTypeConformance2;
  v139 = v95;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v112;
  v72 = v113;
  sub_2154A0B0C();
  (*(v118 + 8))(v69, v119);
  (*(v111 + 8))(v66, v72);
  *v50 = v97;
  *(v50 + 8) = swift_getKeyPath();
  *(v50 + 16) = 0;
  v73 = v131;
  v74 = *(v131 + 24);
  *(v50 + v74) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v75 = *(v73 + 28);
  *(v50 + v75) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v136 = 0x403C000000000000;
  (v102)(v132, v103, v133);
  sub_21549FA6C();
  v76 = [objc_opt_self() mainBundle];
  v77 = sub_2154A1D2C();
  v78 = [v76 localizedStringForKey:v77 value:0 table:0];

  v79 = sub_2154A1D6C();
  v81 = v80;

  sub_2153BB3C4(v50);
  v136 = v79;
  v137 = v81;
  v140 = v72;
  v141 = v70;
  swift_getOpaqueTypeConformance2();
  sub_215324954();
  v82 = v116;
  v83 = v115;
  sub_2154A0AAC();

  (*(v114 + 8))(v71, v83);
  v84 = &qword_27CA5BE28;
  sub_215324EEC(v82, v124, &qword_27CA5BE28);
  swift_storeEnumTagMultiPayload();
  sub_2151ACC5C(&qword_27CA5BE70, &qword_27CA5BE38);
  sub_2153BB6D8();
  sub_2154A039C();
  v85 = v82;
  return sub_2151ADCD8(v85, v84);
}

uint64_t sub_2153B9C74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v90 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88);
  MEMORY[0x28223BE20](v87);
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v76 - v5;
  v106 = sub_21549FCFC();
  v102 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v76 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90);
  MEMORY[0x28223BE20](v88);
  v84 = &v76 - v9;
  v10 = sub_21549E95C();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x28223BE20](v10);
  v101 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2154A084C();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v93 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SummaryButtonStyle(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SummaryView(0);
  MEMORY[0x28223BE20](v91);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE98);
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BEA0);
  v99 = *(v21 - 8);
  v100 = v21;
  MEMORY[0x28223BE20](v21);
  v92 = &v76 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BEA8);
  MEMORY[0x28223BE20](v107);
  v24 = &v76 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BEB0);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v76 - v25;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BEB8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v78 = &v76 - v28;
  sub_2154A01BC();
  v89 = a1;
  v29 = *a1;
  v30 = swift_retain_n();
  sub_215434CD0(v30, v18);
  sub_2153BAE40(&qword_27CA5BE68, type metadata accessor for SummaryView);
  v31 = v95;
  sub_21549FBFC();
  *v16 = v29;
  *(v16 + 1) = swift_getKeyPath();
  v16[16] = 0;
  v32 = *(v14 + 24);
  *&v16[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  v33 = *(v14 + 28);
  *&v16[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  swift_storeEnumTagMultiPayload();
  v108 = 0x403C000000000000;
  (*(v97 + 104))(v93, *MEMORY[0x277CE0A68], v98);
  sub_2153BB28C();
  sub_21549FA6C();
  sub_2151ACC5C(&qword_27CA5BEC0, &qword_27CA5BE98);
  sub_2153BAE40(&qword_27CA5BE60, type metadata accessor for SummaryButtonStyle);
  v34 = v92;
  v35 = v94;
  sub_2154A09EC();
  v36 = v102;
  sub_2153BB3C4(v16);
  (*(v96 + 8))(v20, v35);
  swift_getKeyPath();
  v108 = v29;
  sub_2153BAE40(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v37 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__recordingState;
  swift_beginAccess();
  v38 = v103;
  v39 = v29 + v37;
  v40 = v104;
  v41 = v105;
  v42 = v101;
  (*(v103 + 16))(v101, v39, v104);
  LOBYTE(v35) = (*(v38 + 88))(v42, v40) == *MEMORY[0x277D359E8];
  (*(v38 + 8))(v42, v40);
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v35;
  (*(v99 + 32))(v24, v34, v100);
  v45 = *(v107 + 36);
  v104 = v24;
  v46 = &v24[v45];
  *v46 = KeyPath;
  v46[1] = sub_2153BC05C;
  v46[2] = v44;
  v47 = v36;
  v48 = *(v36 + 104);
  v49 = v106;
  v48(v31, *MEMORY[0x277CDF9E8], v106);
  v48(v41, *MEMORY[0x277CDFA10], v49);
  sub_2153BAE40(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
  result = sub_2154A1CDC();
  if (result)
  {
    v51 = *(v47 + 32);
    v52 = v85;
    v51(v85, v31, v49);
    v53 = v87;
    v51((v52 + *(v87 + 48)), v41, v49);
    v54 = v86;
    sub_215324EEC(v52, v86, &qword_27CA5BE88);
    v55 = *(v53 + 48);
    v56 = v84;
    v51(v84, v54, v49);
    v57 = *(v47 + 8);
    v57(v54 + v55, v49);
    sub_21533FB7C(v52, v54, &qword_27CA5BE88);
    v58 = *(v53 + 48);
    v59 = v88;
    v51((v56 + *(v88 + 36)), (v54 + v58), v49);
    v57(v54, v49);
    v60 = sub_2153BB8F0();
    v61 = sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    v62 = v77;
    v63 = v107;
    v64 = v104;
    sub_2154A0A5C();
    sub_2151ADCD8(v56, &qword_27CA5BE90);
    v65 = sub_2151ADCD8(v64, &qword_27CA5BEA8);
    MEMORY[0x28223BE20](v65);
    *(&v76 - 2) = v89;
    v108 = v63;
    v109 = v59;
    v110 = v60;
    v111 = v61;
    swift_getOpaqueTypeConformance2();
    v66 = v78;
    v67 = v81;
    sub_2154A0B8C();
    (*(v79 + 8))(v62, v67);
    v68 = v82;
    v69 = *(v82 + 16);
    v70 = v80;
    v71 = v83;
    v69(v80, v66, v83);
    v72 = v90;
    *v90 = 0;
    *(v72 + 8) = 1;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BED0);
    v69(v72 + *(v73 + 48), v70, v71);
    v74 = v72 + *(v73 + 64);
    *v74 = 0;
    v74[8] = 1;
    v75 = *(v68 + 8);
    v75(v66, v71);
    return (v75)(v70, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153BA9F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2154A084C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummaryButtonStyle(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = *a1;
  *(v11 + 1) = swift_getKeyPath();
  v11[16] = 0;
  v12 = *(v9 + 32);
  *&v11[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v9 + 36);
  *&v11[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  swift_storeEnumTagMultiPayload();
  v24[0] = 0x403C000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A68], v4);
  sub_2153BB28C();

  sub_21549FA6C();
  v14 = [objc_opt_self() mainBundle];
  v15 = sub_2154A1D2C();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  v17 = sub_2154A1D6C();
  v19 = v18;

  sub_2153BB3C4(v11);
  v24[0] = v17;
  v24[1] = v19;
  sub_215324954();
  result = sub_2154A092C();
  *a2 = result;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v23;
  return result;
}

uint64_t sub_2153BAC94()
{
  type metadata accessor for SummaryViewLauncher(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  sub_2154A0DFC();
}

uint64_t sub_2153BAD40()
{
  v0 = sub_21549EA1C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D35A38], v0, v2);
  sub_21535D26C(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2153BAE40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2153BAED4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

unint64_t sub_2153BAF28()
{
  result = qword_27CA5BDD0;
  if (!qword_27CA5BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BDD0);
  }

  return result;
}

void sub_2153BAFC4()
{
  type metadata accessor for SummaryViewModel();
  if (v0 <= 0x3F)
  {
    sub_2153BB10C();
    if (v1 <= 0x3F)
    {
      sub_2153BBBB0(319, &qword_27CA5B1F8, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2153BBC04(319, &qword_27CA5BDF0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2153BBC04(319, &qword_27CA5BDF8, MEMORY[0x277D084A8], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2153BB10C()
{
  if (!qword_27CA5C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BDE8);
    v0 = sub_21549FA1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5C890);
    }
  }
}

uint64_t sub_2153BB1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryViewLauncher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2153BB210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryViewLauncher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2153BB28C()
{
  result = qword_27CA5BE48;
  if (!qword_27CA5BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BE48);
  }

  return result;
}

unint64_t sub_2153BB2E0()
{
  result = qword_27CA5BE50;
  if (!qword_27CA5BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE08);
    sub_2151ACC5C(&qword_27CA5BE58, &qword_27CA5BE00);
    sub_2151ACC5C(&unk_27CA5CD10, &qword_27CA5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BE50);
  }

  return result;
}

uint64_t sub_2153BB3C4(uint64_t a1)
{
  v2 = type metadata accessor for SummaryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for SummaryViewLauncher(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2154A04CC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2153BB5F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SummaryViewLauncher(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_2153BB664@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SummaryViewLauncher(0);

  return sub_215434CD0(v2, a1);
}

unint64_t sub_2153BB6D8()
{
  result = qword_27CA5BE78;
  if (!qword_27CA5BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE10);
    type metadata accessor for SummaryView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE08);
    type metadata accessor for SummaryButtonStyle(255);
    sub_2153BB2E0();
    sub_2153BAE40(&qword_27CA5BE60, type metadata accessor for SummaryButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_2153BAE40(&qword_27CA5BE68, type metadata accessor for SummaryView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2153BAE40(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BE78);
  }

  return result;
}

unint64_t sub_2153BB8F0()
{
  result = qword_27CA5BEC8;
  if (!qword_27CA5BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE98);
    type metadata accessor for SummaryButtonStyle(255);
    sub_2151ACC5C(&qword_27CA5BEC0, &qword_27CA5BE98);
    sub_2153BAE40(&qword_27CA5BE60, type metadata accessor for SummaryButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CD10, &qword_27CA5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BEC8);
  }

  return result;
}

void sub_2153BBA98()
{
  type metadata accessor for SummaryViewModel();
  if (v0 <= 0x3F)
  {
    sub_2153BBBB0(319, &qword_27CA5BEF0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2153BB10C();
      if (v2 <= 0x3F)
      {
        sub_2153BBC04(319, &unk_27CA5C8A0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2153BBC68();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2153BBBB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2153BBC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2153BBC68()
{
  if (!qword_27CA5BEF8)
  {
    sub_2153BB28C();
    v0 = sub_21549FA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5BEF8);
    }
  }
}

unint64_t sub_2153BBCC4()
{
  result = qword_27CA5BF00;
  if (!qword_27CA5BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BF08);
    sub_2153BBD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BF00);
  }

  return result;
}

unint64_t sub_2153BBD48()
{
  result = qword_27CA5BF10;
  if (!qword_27CA5BF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BF18);
    sub_2151ACC5C(&qword_27CA5BE70, &qword_27CA5BE38);
    sub_2153BB6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BF10);
  }

  return result;
}

unint64_t sub_2153BBE1C()
{
  result = qword_27CA5BF90;
  if (!qword_27CA5BF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BF38);
    sub_2153BBED4();
    sub_2151ACC5C(&qword_27CA5B9E0, &qword_27CA5B9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BF90);
  }

  return result;
}

unint64_t sub_2153BBED4()
{
  result = qword_27CA5BF98;
  if (!qword_27CA5BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BF30);
    sub_2153BBF8C();
    sub_2151ACC5C(&qword_27CA5BFB8, &qword_27CA5BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BF98);
  }

  return result;
}

unint64_t sub_2153BBF8C()
{
  result = qword_27CA5BFA0;
  if (!qword_27CA5BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BF28);
    sub_2151ACC5C(&qword_27CA5BFA8, &qword_27CA5BFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5BFA0);
  }

  return result;
}

void sub_2153BC0D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2153BC12C();
  }
}

uint64_t sub_2153BC12C()
{
  v1 = v0;
  v2 = sub_2154A182C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = [Strong calculateDocumentController], v13, v14))
  {
    sub_2154A26FC();

    (*(v3 + 32))(v11, v9, v2);
  }

  else
  {
    (*(v3 + 104))(v11, *MEMORY[0x277CD95B0], v2);
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = MEMORY[0x277D84F90];
  v38 = v3;
  if (v15)
  {
    v17 = v15;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18 && (v19 = v18, v20 = [v18 textStorage], v19, v20))
    {
      v40 = v16;
      v37 = *MEMORY[0x277D74060];
      v21 = [v20 ic_range];
      v35 = v22;
      v36 = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      *(v23 + 24) = 0;
      *(v23 + 32) = &v40;
      v24 = swift_allocObject();
      v24[2] = sub_2153BF3D4;
      v24[3] = v23;
      aBlock[4] = sub_21532B77C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21532C43C;
      aBlock[3] = &block_descriptor_20;
      v25 = _Block_copy(aBlock);
      v26 = v1;

      [v20 enumerateAttribute:v37 inRange:v36 options:v35 usingBlock:{0, v25}];

      _Block_release(v25);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v16 = v40;
    }

    else
    {
    }
  }

  v37 = v16;
  v29 = *(v16 + 16);
  if (v29)
  {
    v30 = *(v38 + 16);
    v31 = v37 + 48;
    do
    {
      v32 = *(v31 - 16);
      v31 += 24;
      v30(v6, v11, v2);
      swift_getObjectType();
      aBlock[0] = v32;
      v33 = v32;
      sub_2154A168C();

      --v29;
    }

    while (v29);
  }

  return (*(v38 + 8))(v11, v2);
}

void sub_2153BC53C(void *a1)
{
  if ([a1 object])
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2F8);
    if (swift_dynamicCast())
    {
      sub_2153BC610(v1, v2, v3);
    }
  }

  else
  {
    sub_2151ADCD8(v6, &qword_27CA5ABC0);
  }
}